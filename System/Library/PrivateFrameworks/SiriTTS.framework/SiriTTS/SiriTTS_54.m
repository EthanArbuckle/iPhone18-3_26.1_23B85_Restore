uint64_t nn_phrasing_UnLoad(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ssftmap_ObjClose(*(a3 + 24));
  v6 = *(a3 + 32);
  if (v6)
  {
    if (*(a3 + 10))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (*(v6 + v7))
        {
          heap_Free(*(a1 + 8), *(v6 + v7));
          v6 = *(a3 + 32);
          *(v6 + v7) = 0;
        }

        if (*(v6 + v7 + 16))
        {
          heap_Free(*(a1 + 8), *(v6 + v7 + 16));
          v6 = *(a3 + 32);
          *(v6 + v7 + 16) = 0;
        }

        ++v8;
        v7 += 32;
      }

      while (v8 < *(a3 + 10));
    }

    heap_Free(*(a1 + 8), v6);
    *(a3 + 32) = 0;
  }

  v9 = *(a3 + 120);
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    *(a3 + 120) = 0;
  }

  v10 = *(a3 + 72);
  if (v10)
  {
    (*(v10 + 24))(*(a3 + 96), *(a3 + 104));
    *(a3 + 72) = 0;
  }

  v11 = fi_deinit(a1, a2, *(a3 + 48));
  v12 = *(a3 + 128);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
  }

  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return v11;
}

uint64_t NNPausing_cleanLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = 0;
  if (!*(a5 + 136))
  {
    return 0;
  }

  v24 = 0;
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  result = (*(a2 + 104))(a3, a4, 1, 0, &v25);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a2 + 184))(a3, a4, v25, 0, &v25 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v25) == 1)
    {
      result = (*(a2 + 176))(a3, a4, v25, 0, &v19, &v24);
      if ((result & 0x80000000) == 0 && v24 >= 2u)
      {
        result = (*(a2 + 104))(a3, a4, 2, v25, &v24 + 2);
        if ((result & 0x80000000) == 0)
        {
          v11 = HIWORD(v24);
          if (HIWORD(v24))
          {
            v12 = 0;
            while (1)
            {
              result = (*(a2 + 168))(a3, a4, v11, 0, 1, &v22, &v24);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (v22 <= 0xA && ((1 << v22) & 0x610) != 0)
              {
                result = (*(a2 + 168))(a3, a4, HIWORD(v24), 1, 1, &v21, &v24);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a2 + 168))(a3, a4, HIWORD(v24), 2, 1, &v21 + 2, &v24);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v21 != HIWORD(v21))
                {
                  if (v12 + 1 >= *(a5 + 6))
                  {
                    return result;
                  }

                  result = getWordIdx(a1, *(a5 + 128), *(a5 + 136), v21, HIWORD(v21), &v20, v14, v15);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v12 = v20;
                  if (*(*(a5 + 128) + 12 * v20) == 1)
                  {
                    result = (*(a2 + 160))(a3, a4, HIWORD(v24), 18, 1, "", &v23);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "NN pausing : remove temp external label from  WordRecord[%d] word[%d] by setting to ", v16, v17, v18, HIWORD(v24));
                  }
                }
              }

              result = (*(a2 + 120))(a3, a4, HIWORD(v24), &v24 + 2);
              if ((result & 0x80000000) == 0)
              {
                v11 = HIWORD(v24);
                if (HIWORD(v24))
                {
                  continue;
                }
              }

              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getWordIdx(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, _WORD *a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = 0;
    v9 = (a2 + 8);
    while (*(v9 - 1) != a4 || *v9 != a5)
    {
      ++v8;
      v9 += 3;
      if (a3 == v8)
      {
        goto LABEL_6;
      }
    }

    result = 0;
    *a6 = v8;
  }

  else
  {
LABEL_6:
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "cant align lingdb word : no word found with at %d,%d", a6, a7, a8, a4);
    return 2315264000;
  }

  return result;
}

uint64_t NNPausing_UpdateLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  result = (*(a2 + 104))(a3, a4, 1, 0, &v34);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a2 + 184))(a3, a4, v34, 0, &v34 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v34) == 1)
    {
      result = (*(a2 + 176))(a3, a4, v34, 0, &v28, &v33);
      if ((result & 0x80000000) == 0 && v33 >= 2u)
      {
        result = (*(a2 + 104))(a3, a4, 2, v34, &v33 + 2);
        if ((result & 0x80000000) == 0)
        {
          v13 = HIWORD(v33);
          if (HIWORD(v33))
          {
            v14 = 0;
            while (1)
            {
              result = (*(a2 + 168))(a3, a4, v13, 0, 1, &v31, &v33);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v31 <= 0xA && ((1 << v31) & 0x610) != 0)
              {
                result = (*(a2 + 168))(a3, a4, HIWORD(v33), 1, 1, &v30, &v33);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a2 + 168))(a3, a4, HIWORD(v33), 2, 1, &v30 + 2, &v33);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v30 != HIWORD(v30))
                {
                  if (v14 + 1 >= *(a5 + 6))
                  {
                    return result;
                  }

                  result = getWordIdx(a1, *(a5 + 128), *(a5 + 136), v30, HIWORD(v30), &v29, v16, v17);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v26 = 0;
                  v14 = v29;
                  v18 = *(*a6 + 224 * v29 + 216);
                  v19 = a5;
                  if (v18 != 1)
                  {
                    if (v18 != 2)
                    {
                      goto LABEL_29;
                    }

                    v19 = (a5 + 2);
                  }

                  v26 = *v19;
                  if (v26)
                  {
                    result = checkForExternalSildur(a2, a3, a4, HIWORD(v33), &v27);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    if (v27)
                    {
                      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "NN pausing : clash with WordRecord[%d] word[%d] external pause has priority", v20, v21, v22, HIWORD(v33));
                    }

                    else
                    {
                      result = (*(a2 + 160))(a3, a4, HIWORD(v33), 8, 1, &v26, &v32);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a2 + 160))(a3, a4, HIWORD(v33), 18, 9, "external", &v32);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "NN pausing : updating WordRecord[%d] word[%d] set as ext pause with duration=%d", v23, v24, v25, HIWORD(v33));
                      *(*(a5 + 128) + 12 * v14) = 1;
                    }
                  }
                }
              }

LABEL_29:
              result = (*(a2 + 120))(a3, a4, HIWORD(v33), &v33 + 2);
              if ((result & 0x80000000) == 0)
              {
                v13 = HIWORD(v33);
                if (HIWORD(v33))
                {
                  continue;
                }
              }

              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t nn_phrasing_ProcessSent(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v10 = a9;
  v175 = 0;
  v11 = *(a5 + 8);
  v174 = 0;
  v171 = 0;
  __s2 = 0;
  v169 = 0;
  *(a7 + 136) = 0;
  *a9 = 1;
  if (!v11)
  {
    log_OutText(a1[4], "FE_PHRASING", 5, 0, "skip NN pausing, no words found", a6, a7, a8, 0);
    Str = 0;
    goto LABEL_34;
  }

  v12 = a8;
  v172 = 0;
  v18 = (*(a2 + 104))(a3, a4, 1, 0, &v172 + 2);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = (*(a2 + 176))(a3, a4, HIWORD(v172), 1, &v171, &v172);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  Str = paramc_ParamGetStr(a1[5], "langcode", &__s2);
  if ((Str & 0x80000000) == 0)
  {
    v167 = v12;
    v164 = a3;
    v165 = a2;
    if (v172)
    {
      v23 = 0;
      v24 = 24;
      while (1)
      {
        if (*(v171 + v24 - 24) == 36)
        {
          v25 = *(v171 + v24);
          if (strcmp(v25, __s2))
          {
            MarkerArgStr = marker_getMarkerArgStr(1u);
            if (strcmp(v25, MarkerArgStr))
            {
              v27 = *(v171 + v24);
              v28 = marker_getMarkerArgStr(9u);
              if (strcmp(v27, v28))
              {
                v29 = *(v171 + v24);
                v30 = marker_getMarkerArgStr(2u);
                if (strcmp(v29, v30))
                {
                  break;
                }
              }
            }
          }
        }

        ++v23;
        v24 += 32;
        if (v23 >= v172)
        {
          goto LABEL_13;
        }
      }

      v40 = a1[4];
      v31 = *(v171 + v24);
      v41 = "skip NN pausing, as language tag %s found";
      goto LABEL_31;
    }

LABEL_13:
    v31 = *(a7 + 16);
    if (v167 == -1)
    {
      v32 = *(a7 + 16);
    }

    else
    {
      v32 = v167;
    }

    v33 = v32;
    if (!v32 || (LODWORD(v34) = *(a5 + 8), !*(a5 + 8)))
    {
LABEL_30:
      v40 = a1[4];
      v41 = "skip NN pausing, no valid predictive range found (doLenVerification setting is %d, minWordSpan parameter is %d)";
LABEL_31:
      log_OutText(v40, "FE_PHRASING", 5, 0, v41, v19, v20, v21, v31);
LABEL_34:
      *v10 = 0;
      return Str;
    }

    v162 = a4;
    v35 = 0;
    v36 = -1;
    v37 = 208;
    while (1)
    {
      if (**(*a5 + v37) == 88 && v35 + 1 != v34)
      {
        goto LABEL_28;
      }

      if (!v35)
      {
        log_OutText(a1[4], "FE_PHRASING", 5, 0, "skip 1 word phrase at word %d", v19, v20, v21, 0);
        v36 = 0;
        goto LABEL_28;
      }

      v39 = a1[4];
      if (v35 - v36 >= v33)
      {
        break;
      }

      log_OutText(v39, "FE_PHRASING", 5, 0, "skip %d word phrase ending at word %d", v19, v20, v21, v35 + -v36);
      v36 = v35;
LABEL_28:
      ++v35;
      v34 = *(a5 + 8);
      v37 += 224;
      if (v35 >= v34)
      {
        v31 = *(a7 + 16);
        v10 = a9;
        goto LABEL_30;
      }
    }

    log_OutText(v39, "FE_PHRASING", 5, 0, "found valid predictive range of length %d (minimum setting is %d) ending on word %d - continue with NN pausing", v19, v20, v21, -v36 + v35);
    if (*(a5 + 8) <= *(a7 + 6))
    {
      v43 = v11;
    }

    else
    {
      v43 = *(a7 + 6);
    }

    if (*(a7 + 18))
    {
      v44 = v43;
    }

    else
    {
      v44 = *(a7 + 6);
    }

    v45 = (*(a7 + 112) + *(a7 + 4)) * v44;
    *(a7 + 56) = v45;
    v46 = heap_Alloc(a1[1], 4 * v45);
    v173 = v46;
    if (!v46)
    {
      Str = 2315264010;
      log_OutPublic(a1[4], "FE_PHRASING", 37000, 0, v47, v48, v49, v50, v152);
      return Str;
    }

    v161 = v43;
    v51 = v43;
    v52 = *(a7 + 56);
    if (v52)
    {
      v53 = 0;
      do
      {
        v46[v53++] = -1.0;
      }

      while (v52 > v53);
    }

    v156 = *(a7 + 4);
    v154 = *(a7 + 112);
    log_OutText(a1[4], "FE_PHRASING", 5, 0, "Dimensions:\nmaxWordsInSent=%d\nword2vecVecLength=%dnumAdditionalFields=%d", v48, v49, v50, *(a7 + 6));
    v55 = a9;
    v56 = v165;
    v57 = v167;
    v157 = v51;
    if (v51)
    {
      v58 = 0;
      v166 = 0;
      v160 = 0;
      v59 = 0;
      while (1)
      {
        v60 = *(a7 + 112) + *(a7 + 4);
        if (v60)
        {
          v61 = 0;
          v62 = v173;
          v63 = v58 * v60;
          do
          {
            v62[v63] = 0.0;
            ++v61;
            ++v63;
          }

          while (v60 > v61);
        }

        v64 = (*a5 + 224 * v166);
        v65 = *(v64[2] + 8 * *(a6 + 16));
        v66 = v64[21];
        v67 = v64[26];
        v68 = strlen(v65);
        v69 = (v68 & 0xFFC0) != 0 ? v68 : 64;
        if (!v59)
        {
          break;
        }

        if (v69 > v160)
        {
          v70 = heap_Realloc(a1[1], v59, v69 + 1);
          if (!v70)
          {
            goto LABEL_154;
          }

          v59 = v70;
LABEL_59:
          v160 = v69;
        }

        if (v66 && (*v66 != 45 || *(v66 + 1)))
        {
          strcpy(v59, v66);
        }

        else
        {
          if (*v67 == 88 && !v67[1])
          {
            v80 = v160;
          }

          else
          {
            v176[0] = 0;
            StartOfOrthPunc = getStartOfOrthPunc(v65, v176);
            v79 = v160;
            if (StartOfOrthPunc < v160)
            {
              v79 = StartOfOrthPunc;
            }

            if (v176[0] == 1)
            {
              v80 = v79;
            }

            else
            {
              v80 = v160;
            }
          }

          v81 = v80;
          strncpy(v59, v65, v80);
          v59[v81] = 0;
        }

        v155 = *(*(*a5 + 224 * v166 + 16) + 8 * *(a6 + 16));
        log_OutText(a1[4], "FE_PHRASING", 5, 0, "word [%d] %s lookup %s", v75, v76, v77, v58);
        v82 = (*(*(a7 + 72) + 56))(*(a7 + 96), *(a7 + 104), v59, *(a7 + 120));
        v57 = v167;
        v83 = "POS";
        if ((v82 & 0x1FFF) == 0x14)
        {
          if (((*(*(a7 + 72) + 56))(*(a7 + 96), *(a7 + 104), "$MEANW2V$", *(a7 + 120)) & 0x1FFF) == 0x14)
          {
            log_OutPublic(a1[4], "FE_PHRASING", 37004, "%s%s", v84, v85, v86, v87, "expected");
            Str = 2315264000;
            goto LABEL_150;
          }
        }

        else
        {
          Str = v82;
          if ((v82 & 0x80000000) != 0)
          {
            goto LABEL_150;
          }
        }

        v158 = v58;
        v159 = v59;
        v163 = v60 * v58;
        memcpy(&v173[v60 * v58], *(a7 + 120), 4 * *(a7 + 112));
        if (*(a7 + 10))
        {
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          while (1)
          {
            v92 = *(*(a7 + 32) + v88);
            if (!strcmp(v92, "POS"))
            {
              break;
            }

            v83 = "PHR";
            if (!strcmp(v92, "PHR"))
            {
              v96 = *(*a5 + 224 * v166 + 80);
              goto LABEL_94;
            }

            v83 = "TOK";
            if (!strcmp(v92, "TOK"))
            {
              v96 = *(*a5 + 224 * v166 + 168);
              goto LABEL_94;
            }

            v83 = "COMP";
            if (!strcmp(v92, "COMP"))
            {
              v96 = *(*a5 + 224 * v166 + 176);
              goto LABEL_94;
            }

            v83 = "SPUNC";
            if (!strcmp(v92, "SPUNC"))
            {
              v96 = *(*a5 + 224 * v166 + 184);
              goto LABEL_94;
            }

            v83 = "EPUNC";
            if (!strcmp(v92, "EPUNC"))
            {
              v96 = *(*a5 + 224 * v166 + 192);
              goto LABEL_94;
            }

            v83 = "PUNC";
            if (!strcmp(v92, "PUNC"))
            {
              v96 = *(*a5 + 224 * v166 + 200);
              goto LABEL_94;
            }

            if (strcmp(v92, "ORTHPUNC"))
            {
              goto LABEL_96;
            }

            v96 = *(*a5 + 224 * v166 + 208);
            v97 = v89;
            v98 = a1;
            v99 = a7;
            v100 = "ORTHPUNC";
LABEL_95:
            IndexValue = getIndexValue(v98, v99, v97, v100, v96, &v175);
            if ((IndexValue & 0x80000000) != 0)
            {
              Str = IndexValue;
              v59 = v159;
              goto LABEL_150;
            }

LABEL_96:
            v175 -= v90;
            v102 = v175;
            log_OutText(a1[4], "FE_PHRASING", 5, 0, "translated thisFeatureIdx=%d", v93, v94, v95, v175);
            if (*(*(a7 + 32) + v88 + 8))
            {
              v106 = v102 + 1.0;
              v107 = *(a7 + 112);
              v173[v163 + v91 + v107] = v106;
              log_OutText(a1[4], "FE_PHRASING", 5, 0, "NUMERIC SET [%d] (%d + %d + %d) = %3.1lf + 1.0", v103, v104, v105, v163 + v91 + v107);
              v111 = *(a7 + 32);
              v112 = 1;
            }

            else
            {
              v113 = *(a7 + 112);
              v173[v163 + v91 + v102 + v113] = 1.0;
              log_OutText(a1[4], "FE_PHRASING", 5, 0, "ONEHOT SET [%d] (%d + %d + %d + %d) = 1.0", v103, v104, v105, v163 + v91 + v102 + v113);
              v111 = *(a7 + 32);
              v112 = *(v111 + v88 + 26);
            }

            v57 = v167;
            v91 += v112;
            v114 = v111 + v88;
            v90 += *(v114 + 26);
            log_OutText(a1[4], "FE_PHRASING", 5, 0, "increase featureValOffset by %s %d", v108, v109, v110, *v114);
            ++v89;
            v88 += 32;
            v83 = "POS";
            if (v89 >= *(a7 + 10))
            {
              goto LABEL_100;
            }
          }

          v96 = *(*(*a5 + 224 * v166 + 16) + 8 * *(a6 + 18));
LABEL_94:
          v97 = v89;
          v98 = a1;
          v99 = a7;
          v100 = v83;
          goto LABEL_95;
        }

LABEL_100:
        v56 = v165;
        v59 = v159;
        v58 = (v158 + 1);
        ++v166;
        v55 = a9;
        if (v166 == v161)
        {
          goto LABEL_107;
        }
      }

      v59 = heap_Calloc(a1[1], 1, v69 + 1);
      if (!v59)
      {
LABEL_154:
        Str = 2315264010;
        v150 = a1[4];
        v151 = 37000;
LABEL_149:
        log_OutPublic(v150, "FE_PHRASING", v151, 0, v71, v72, v73, v74, v153);
        goto LABEL_150;
      }

      goto LABEL_59;
    }

    v59 = 0;
LABEL_107:
    LOWORD(v54) = *(a7 + 8);
    *(**(a7 + 48) + 196) = v54 / 100.0;
    if ((paramc_ParamGetInt(a1[5], "nnpausingthresholdpercent", &v169) & 0x80000000) == 0)
    {
      v119 = v169 / 100.0;
      *(**(a7 + 48) + 196) = v119;
      log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN pausing threshold set to %f", v116, v117, v118, COERCE__INT64(v119));
    }

    v120 = v157;
    if (!*(a7 + 18))
    {
      v120 = *(a7 + 6);
    }

    Str = fi_predict(*(a7 + 48), &v173, v120, &v174, v115, v116, v117, v118);
    if ((Str & 0x80000000) != 0)
    {
      v150 = a1[4];
      v151 = 37002;
      goto LABEL_149;
    }

    v121 = *(a5 + 8);
    *(a7 + 136) = v121;
    if (*(a7 + 6))
    {
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v125 = v161;
      do
      {
        v126 = *(a7 + 128);
        *(v126 + v122) = 0;
        if (v124 < v125)
        {
          v127 = (*a5 + v123);
          v128 = v126 + v122;
          v129 = v127[1];
          v130 = *(v174 + 8 * v124);
          *(v128 + 4) = *v127;
          *(v128 + 8) = v129;
          v131 = a1[4];
          v132 = *(*(v127 + 2) + 8 * *(a6 + 16));
          if (v130)
          {
            log_OutText(v131, "FE_PHRASING", 5, 0, "Prediction [%d,%s]: %s", v72, v73, v74, v124);
          }

          else
          {
            log_OutText(v131, "FE_PHRASING", 5, 0, "Prediction via thresholding [%d,%s]: 0", v72, v73, v74, v124);
          }

          v133 = *(v174 + 8 * v124);
          if (v133 && *v133 == 49 && !v133[1])
          {
            v134 = *a5 + v123;
            if (**(v134 + 208) == 88)
            {
              *(v134 + 216) = 2;
              log_OutText(a1[4], "FE_PHRASING", 5, 0, "_RESPPAUSE", v72, v73, v74, 0);
            }

            else
            {
              *(v134 + 216) = 1;
              log_OutText(a1[4], "FE_PHRASING", 5, 0, "_PUNCPAUSE", v72, v73, v74, 0);
            }
          }

          else
          {
            *(*a5 + v123 + 216) = 0;
          }

          v125 = v161;
        }

        ++v124;
        v123 += 224;
        v122 += 12;
      }

      while (v124 < *(a7 + 6));
      v121 = *(a5 + 8);
      v55 = a9;
      v56 = v165;
      v57 = v167;
    }

    if (v161 < v121)
    {
      v135 = 0;
      v136 = v121 - v161;
      v137 = vdupq_n_s64(v136 - 1);
      v138 = (*a5 + 224 * v161);
      do
      {
        v139 = vdupq_n_s64(v135);
        v140 = vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_1C378AF00)));
        if (vuzp1_s16(v140, *v137.i8).u8[0])
        {
          v138[54] = 0;
        }

        if (vuzp1_s16(v140, *&v137).i8[2])
        {
          v138[110] = 0;
        }

        if (vuzp1_s16(*&v137, vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_1C378AEF0)))).i32[1])
        {
          v138[166] = 0;
          v138[222] = 0;
        }

        v135 += 4;
        v138 += 224;
      }

      while (((v136 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v135);
    }

    validatePauseLocations(a1, a7, a5, a6, v57, v72, v73, v74);
    *v55 = 0;
    if (*(a5 + 8))
    {
      v144 = 0;
      v145 = 0;
      v146 = -*(a5 + 8);
      v147 = *a5 + 216;
LABEL_139:
      v148 = (v147 + 224 * v145++);
      do
      {
        v149 = *v148;
        v148 += 56;
        if (v149)
        {
          v144 = 1;
          *v55 = 1;
          if (v146 + v145)
          {
            goto LABEL_139;
          }

          goto LABEL_146;
        }

        ++v145;
      }

      while (v146 + v145 != 1);
      if ((v144 & 1) == 0)
      {
        goto LABEL_147;
      }

LABEL_146:
      log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN_PAUSING has prediction(s)", v141, v142, v143, 0);
      Str = NNPausing_UpdateLingdb(a1, v56, v164, v162, a7, a5);
    }

    else
    {
LABEL_147:
      log_OutText(a1[4], "FE_PHRASING", 5, 0, "NN_PAUSING has no prediction(s)", v141, v142, v143, 0);
    }

LABEL_150:
    if (v173)
    {
      heap_Free(a1[1], v173);
      v173 = 0;
    }

    if (v59)
    {
      heap_Free(a1[1], v59);
    }
  }

  return Str;
}

uint64_t getIndexValue(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0;
  __strcpy_chk();
  __strncat_chk();
  ReadOnly = ssftmap_FindReadOnly(*(a2 + 24), v24, &v23);
  if ((ReadOnly & 0x1FFF) == 0x14)
  {
    v14 = *(a2 + 32) + 32 * a3;
    *a6 = *(v14 + 24);
    if (*(v14 + 8))
    {
      v15 = "NUMERIC";
    }

    else
    {
      v15 = "ONEHOT";
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s [%s] (default) convert %s to vector col %d", v11, v12, v13, v15);
    v16 = 0;
  }

  else
  {
    v16 = ReadOnly;
    *a6 = atoi(v23);
    if (*(*(a2 + 32) + 32 * a3 + 8))
    {
      v20 = "NUMERIC";
    }

    else
    {
      v20 = "ONEHOT";
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s [%s] convert %s to vector col %d", v17, v18, v19, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t validatePauseLocations(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 == -1)
  {
    v10 = a2[8];
  }

  else
  {
    v10 = a5;
  }

  v48 = a2[8];
  v42 = a2[7];
  result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "validatePauseLocations doCompVerification=%d doPHRVerification=%d doLenVerification=%d minWordSpan=%d", a6, a7, a8, a2[6]);
  LODWORD(v15) = *(a3 + 4);
  if (!*(a3 + 4))
  {
    return result;
  }

  v52 = v10;
  v16 = 0;
  v17 = 0;
  v18 = 208;
  v19 = *a3;
  do
  {
    v20 = v16 + 1;
    if (v16 + 1 >= v15 || (v21 = *(v19 + v18 + 96)) == 0)
    {
LABEL_13:
      v23 = 1;
      goto LABEL_14;
    }

    v22 = *v21;
    if (v22 == 79)
    {
      if (v21[1])
      {
        goto LABEL_13;
      }
    }

    else if (v22 != 66 || v21[1] != 45)
    {
      goto LABEL_13;
    }

    v23 = 0;
LABEL_14:
    v24 = (v19 + v18);
    v25 = *(v19 + v18 - 32);
    if (v25 && !strcmp(v25, "[COMP"))
    {
      v17 = 1;
    }

    v51 = *(v24 - 16);
    v49 = *(v24 + 2);
    v50 = *v24;
    v43 = *(*(v24 - 24) + 8 * *(a4 + 16));
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "[%d] %s bInCompoundWord=%d bPHRBnd=%d pause=%d orthPunc=%s    (%s %s)", v12, v13, v14, v16);
    v19 = *a3;
    if (*(*a3 + v18 + 8))
    {
      if (v17 == 1 && a2[6] == 1 && strcmp(*(v19 + v18 - 32), "COMP]"))
      {
        v44 = *(*(v19 + v18 - 192) + 8 * *(a4 + 16));
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside compound word", v12, v13, v14, v16);
LABEL_46:
        v19 = *a3;
        *(*a3 + v18 + 8) = 0;
        goto LABEL_47;
      }

      v26 = v23 ^ 1;
      if (a2[7] != 1)
      {
        v26 = 1;
      }

      if ((v26 & 1) == 0)
      {
        v45 = *(*(v19 + v18 - 192) + 8 * *(a4 + 16));
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside PHR", v12, v13, v14, v16);
        goto LABEL_46;
      }

      v27 = *(v19 + v18 - 40);
      v28 = *v27;
      if ((v28 != 45 || v27[1]) && v20 < *(a3 + 4))
      {
        v29 = *(v19 + v18 + 184);
        v30 = *v29;
        if ((v30 != 45 || v29[1]) && (v28 == 73 || v28 == 66) && v30 == 73)
        {
          v46 = *(*(v19 + v18 - 192) + 8 * *(a4 + 16));
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside TOK", v12, v13, v14, v16);
          goto LABEL_46;
        }
      }

      v31 = *(a4 + 16);
      v32 = *(*(v19 + v18 - 192) + 8 * v31);
      if (*v32 == 194 && v32[1] == 167)
      {
        v33 = *(a3 + 4);
        if (!v32[2] && v20 < v33)
        {
          v34 = *(*(v19 + v18 + 32) + 8 * v31);
          if (*v34 == 194 && v34[1] == 167 && !v34[2])
          {
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block inside DUMMYWORD sequence", v12, v13, v14, v16);
            goto LABEL_46;
          }
        }
      }

      else
      {
        v33 = *(a3 + 4);
      }

      if (v16 + 3 > v33)
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : block on last 2 words", v12, v13, v14, v16);
        goto LABEL_46;
      }
    }

LABEL_47:
    result = *(v19 + v18 - 32);
    if (result)
    {
      result = strcmp(result, "COMP]");
      if (!result)
      {
        v17 = 0;
      }
    }

    v15 = *(a3 + 4);
    v18 += 224;
    ++v16;
  }

  while (v20 < v15);
  if (v52 && *(a3 + 4))
  {
    v35 = 0;
    v36 = 0;
    v37 = *a3;
    v38 = -1;
    do
    {
      if (**(v37 + 224 * v35 + 208) != 88 || v36 + 1 == v15)
      {
        if (v35)
        {
          if (v36 - v38 >= v52)
          {
            goto LABEL_69;
          }

          if (v38 == 0xFFFF)
          {
            v38 = 0;
          }

          if (v35 <= v38)
          {
LABEL_69:
            v38 = v35;
          }

          else
          {
            v40 = v38;
            v41 = 224 * v38;
            do
            {
              if (*(v37 + v41 + 216) == 2)
              {
                v47 = *(*(v37 + v41 + 16) + 8 * *(a4 + 16));
                result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "BLOCK PAUSE : word[%d] %s : blocked via len constraints, span word %d to word %d < %d", v12, v13, v14, v40);
                v37 = *a3;
                *(*a3 + v41 + 216) = 0;
              }

              ++v40;
              v41 += 224;
            }

            while (v35 != v40);
            LODWORD(v15) = *(a3 + 4);
            v38 = v35;
          }
        }

        else
        {
          v38 = 0;
        }
      }

      v36 = ++v35;
    }

    while (v35 < v15);
  }

  return result;
}

uint64_t getNumericFeatureValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a5 = 0;
  v6 = (*(a1 + 96))(a2, a3, "fecfg", a4, &__c[3], &__c[1], __c);
  if ((v6 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v8 = **&__c[3];
    v9 = strchr(**&__c[3], __c[0]);
    if (v9)
    {
      *v9 = 0;
      v8 = **&__c[3];
    }

    *a5 = atoi(v8);
  }

  return v6;
}

uint64_t setStr(uint64_t a1, char **a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__s)
  {
    v11 = *(a1 + 8);
    v12 = strlen(__s);
    v13 = heap_Calloc(v11, 1, (v12 + 1));
    *a2 = v13;
    if (v13)
    {
      strcpy(v13, __s);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v20);
      return 2315264010;
    }
  }

  else
  {
    v18 = 2315264007;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, a5, a6, a7, a8, v20);
  }

  return v18;
}

uint64_t getPrecisionFactor(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2 >= 0xA)
  {
    v4 = 0;
    do
    {
      v5 = v4++;
      v6 = v2 > 0x63;
      v2 /= 0xAu;
    }

    while (v6);
    v3 = v5 + 2;
  }

  else
  {
    v3 = 1;
  }

  v7 = *(a2 + 2);
  if (v7 >= 0xA)
  {
    v9 = 0;
    do
    {
      v10 = v9++;
      v6 = v7 > 0x63;
      v7 /= 0xAu;
    }

    while (v6);
    v8 = v10 + 2;
  }

  else
  {
    v8 = 1;
  }

  if (v3 > v8)
  {
    v11 = vdupq_n_s32(v3 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v14.i64[0] = 0xA0000000ALL;
    v14.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v14);
      v13 -= 4;
    }

    while (((v3 + 3) & 0x1FFFC) + v13 != 4);
LABEL_22:
    v21 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v13), xmmword_1C37B17D0), v11), v15, v12);
    *v21.i8 = vmul_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
    return (v21.i32[0] * v21.i32[1]);
  }

  if (v8 > v3)
  {
    v16 = (v8 + 3) & 0x1FFFC;
    v11 = vdupq_n_s32(v8 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v17.i64[0] = 0xA0000000ALL;
    v17.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v17);
      v13 -= 4;
    }

    while (v16 + v13 != 4);
    goto LABEL_22;
  }

  if (v3)
  {
    v18 = v3;
    v19 = (v3 + 3) & 0x1FFFC;
    v11 = vdupq_n_s32(v18 - 1);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    v13 = 4;
    v20.i64[0] = 0xA0000000ALL;
    v20.i64[1] = 0xA0000000ALL;
    do
    {
      v15 = v12;
      v12 = vmulq_s32(v12, v20);
      v13 -= 4;
    }

    while (v19 + v13 != 4);
    goto LABEL_22;
  }

  return 1;
}

BOOL FLOATSUR_GT_INT(unsigned __int16 *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1;
  if (v3 > a2)
  {
    return 1;
  }

  if (v3 >= a2)
  {
    return a1[1] > a3;
  }

  return 0;
}

BOOL FLOATSUR_GT(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v3 > v2)
  {
    return 1;
  }

  if (v3 >= v2)
  {
    return a1[1] > a2[1];
  }

  return 0;
}

BOOL FLOATSUR_GTOREQUAL(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = a2[1];
  if (v3 == v2)
  {
    if (a1[1] == v4)
    {
      return 1;
    }
  }

  else if (v3 > v2)
  {
    return 1;
  }

  return v3 >= v2 && a1[1] > v4;
}

BOOL FLOATSUR_LT_INT(unsigned __int16 *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1;
  if (v3 < a2)
  {
    return 1;
  }

  if (v3 > a2)
  {
    return 0;
  }

  return a1[1] < a3;
}

BOOL FLOATSUR_LT(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v3 < v2)
  {
    return 1;
  }

  if (v3 > v2)
  {
    return 0;
  }

  return a1[1] < a2[1];
}

_WORD *FLOATSUR_SET_INT(_WORD *result, __int16 a2, __int16 a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t FLOATSUR_PLUS(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v14 = 0;
  v13 = 0;
  result = getVals(a2, a3, &v14 + 1, &v14, &v13);
  v5 = v13 + v14;
  v6 = HIDWORD(v14);
  v7 = (v13 + v14) / HIDWORD(v14);
  *a1 = v7;
  v8 = v5 - v7 * v6;
  if (v8)
  {
    v9 = v8 % 0xA == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    do
    {
      v10 = v8;
      v8 /= 0xAu;
    }

    while (v10 >= 0xA && v8 == 10 * ((429496730 * v8) >> 32));
  }

  if (v8 < 0x10000)
  {
    LOWORD(v11) = v8;
  }

  else
  {
    do
    {
      v11 = v8 / 0xA;
      v12 = v8 >> 17;
      v8 /= 0xAu;
    }

    while (v12 > 4);
  }

  a1[1] = v11;
  return result;
}

uint64_t getVals(unsigned __int16 *a1, unsigned __int16 *a2, unsigned int *a3, uint64_t a4, unsigned int *a5)
{
  roundUpAndNormalize(a1);
  roundUpAndNormalize(a2);
  result = getPrecisionFactor(a1, a2);
  *a3 = result;
  v11 = *a1;
  v12 = a1[1];
  *a4 = v12 + result * v11;
  v13 = *a2;
  v14 = a2[1];
  v15 = v14 + *a3 * v13;
  *a5 = v15;
  if (*a4 >= 0x10000u && v15 >= 0x10000)
  {
    v16 = 1;
    do
    {
      if (v15 < 0x10000)
      {
        break;
      }

      v16 *= 10;
      v17 = *a3 / 0xA;
      *a3 = v17;
      *a4 = v12 / (v16 & 0xFFFEu) + v17 * v11;
      v15 = v14 / (v16 & 0xFFFEu) + *a3 * v13;
      *a5 = v15;
    }

    while (*(a4 + 2));
  }

  return result;
}

uint64_t FLOATSUR_PLUS_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_PLUS(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_MINUS(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14;
  v6 = v15;
  if (v15 >= v14)
  {
    v7 = HIDWORD(v15);
    v8 = (v15 - v14) / HIDWORD(v15);
    *a1 = v8;
    v9 = v6 - (v5 + v8 * v7);
    if (v9)
    {
      v10 = v9 % 0xA == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      do
      {
        v11 = v9;
        v9 /= 0xAu;
      }

      while (v11 >= 0xA && v9 == 10 * ((429496730 * v9) >> 32));
    }

    if (v9 < 0x10000)
    {
      LOWORD(v12) = v9;
    }

    else
    {
      do
      {
        v12 = v9 / 0xA;
        v13 = v9 >> 17;
        v9 /= 0xAu;
      }

      while (v13 > 4);
    }

    a1[1] = v12;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t roundUpAndNormalize(uint64_t result)
{
  v1 = *(result + 2);
  if (v1 >= 0x64)
  {
    do
    {
      v2 = v1;
      v1 /= 0xAu;
    }

    while (v2 >= 0x3E8);
    *(result + 2) = v1;
    if (v2 >= 0xA && v1 == 10 * ((429496730 * v1) >> 32))
    {
      do
      {
        v3 = v1;
        v1 /= 0xAu;
      }

      while (v3 >= 0xA && v1 == 10 * ((429496730 * v1) >> 32));
      *(result + 2) = v1;
    }
  }

  if (v1 <= 9)
  {
    *(result + 2) = 10 * v1;
  }

  return result;
}

uint64_t FLOATSUR_MINUS_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_MINUS(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_TIMES(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14 * v15;
  v6 = HIDWORD(v15) * HIDWORD(v15);
  v7 = v14 * v15 / (HIDWORD(v15) * HIDWORD(v15));
  if (v7 < 0x10000)
  {
    *a1 = v7;
    v8 = v7 * v6;
    if (v6 > v5)
    {
      v8 = 0;
    }

    v9 = v5 - v8;
    if (v9)
    {
      v10 = v6 / 0xA;
      if (v9 >= v10)
      {
        HIDWORD(v11) = -858993459 * v9;
        LODWORD(v11) = -858993459 * v9;
        if ((v11 >> 1) <= 0x19999999)
        {
          do
          {
            v12 = v9;
            v9 /= 0xAu;
          }

          while (v12 >= 0xA && v9 == 10 * ((429496730 * v9) >> 32));
        }

        if (v9 < 0x10000)
        {
          LOWORD(v10) = v9;
        }

        else
        {
          do
          {
            v10 = v9 / 0xA;
            v13 = v9 >> 17;
            v9 /= 0xAu;
          }

          while (v13 > 4);
        }
      }

      else
      {
        LOWORD(v10) = 10 * v9 / v10 > 5;
      }
    }

    else
    {
      LOWORD(v10) = 0;
    }

    a1[1] = v10;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0xFFFF;
  }

  return result;
}

uint64_t FLOATSUR_TIMES_INT(_DWORD *a1, unsigned __int16 *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = 0;
  v7[0] = a3;
  v7[1] = a4;
  result = FLOATSUR_TIMES(&v6, a2, v7);
  *a1 = v6;
  return result;
}

uint64_t FLOATSUR_DIV(_WORD *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v15 = 0;
  v14 = 0;
  result = getVals(a2, a3, &v15 + 1, &v15, &v14);
  v5 = v14;
  if (v14)
  {
    v6 = v15;
    v7 = v15 / v14;
    *a1 = v15 / v14;
    v8 = v6 - v7 * v5;
    if (v8)
    {
      v9 = HIDWORD(v15) * v8 * HIDWORD(v15);
      v10 = v9 / v5;
      if (v5 <= v9 && !(v10 % 0xA))
      {
        do
        {
          v11 = v10;
          v10 /= 0xAu;
        }

        while (v11 >= 0xA && v10 == 10 * ((429496730 * v10) >> 32));
      }

      if (v10 < 0x10000)
      {
        LOWORD(v12) = v10;
      }

      else
      {
        do
        {
          v12 = v10 / 0xA;
          v13 = v10 >> 17;
          v10 /= 0xAu;
        }

        while (v13 > 4);
      }
    }

    else
    {
      LOWORD(v12) = 0;
    }

    a1[1] = v12;

    return roundUpAndNormalize(a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t load_stress_models(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7, uint64_t a8, _DWORD *a9, void *a10, void *a11, uint64_t a12, void *a13, _OWORD *a14, _WORD *a15, _BOOL4 *a16)
{
  *&__c[3] = 0;
  v39 = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v36 = 0;
  v37 = 0;
  *&v35 = safeh_GetNullHandle();
  *(&v35 + 1) = v23;
  *a10 = 0;
  *a11 = 0;
  inited = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_stress", &v39, &__c[1], __c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v33 = a8;
  v25 = 1;
  if (*&__c[1] == 1 && v39)
  {
    (*v39)[strlen(*v39) - 1] = 0;
    v25 = strcmp(*v39, "yes") != 0;
  }

  *&__c[1] = 0;
  inited = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_stress_albert", &v39, &__c[1], __c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v26 = 0;
  if (*&__c[1] == 1 && v39)
  {
    (*v39)[strlen(*v39) - 1] = 0;
    v26 = strcmp(*v39, "yes") == 0;
  }

  if (v25)
  {
    goto LABEL_10;
  }

  v30 = v26;
  inited = fe_stress_tryLoading_STRESS_igModel(a1, a2, a3, &v37);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a10 = v37;
  inited = Init_stress_nn_model(a3, a1, a2, a7, v33, &v36);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a11 = v36;
  v31 = v30 ? "albert" : "char";
  inited = (*(a12 + 16))(*a13, a13[1], v31, a1, a2, &v35);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a14 = v35;
  *a9 = 1;
  *a16 = v30;
LABEL_10:
  *a15 = 20;
  __c[0] = 0;
  *&__c[1] = -1;
  v27 = (*(a6 + 96))(a4, a5, "fecfg", "statbnd_pos_dimension", &__c[3], &__c[1], __c);
  if ((v27 & 0x80000000) == 0 && *&__c[1])
  {
    v28 = **&__c[3];
    v29 = strchr(**&__c[3], __c[0]);
    if (v29)
    {
      *v29 = 0;
      v28 = **&__c[3];
    }

    *a15 = atoi(v28);
  }

  return v27;
}

uint64_t fe_stress_tryLoading_STRESS_igModel(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v28), (Str & 0x80000000) != 0) || (__strcat_chk(), __strcat_chk(), __strcat_chk(), __strcat_chk(), Str = brokeraux_ComposeBrokerString(a3, v31, 1, 1, *v29, 0, 0, v30, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v30, "IGTR", 1031, v27), (Str & 0x80000000) != 0))
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
      log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0, v17, v18, v19, v20, v26);
      v21 = 2315264010;
    }
  }

  if (*v27)
  {
    v22 = ssftriff_reader_ObjClose(*v27, v9, v10, v11, v12, v13, v14, v15);
    if ((v21 & 0x80000000) == 0)
    {
      v23 = v22;
      if ((v22 & 0x80000000) != 0)
      {
        if (*a4)
        {
          heap_Free(*(a3 + 8), *a4);
          *a4 = 0;
        }

        v21 = v23;
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t Init_stress_nn_model(uint64_t a1, _WORD *a2, uint64_t a3, _WORD *a4, uint64_t a5, void *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v22, 0, 240);
  v19 = 0;
  v20 = 0;
  *a6 = 0;
  *v21 = 0;
  memset(v23, 0, 128);
  v22[15] = 0u;
  if ((paramc_ParamGetStr(*(a1 + 40), "langcode", v21) & 0x80000000) == 0 && (paramc_ParamGetStr(*(a1 + 40), "fecfg", &v20) & 0x80000000) == 0)
  {
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    brokeraux_ComposeBrokerString(a1, v23, 1, 1, *v21, 0, 0, v22, 0x100uLL);
  }

  v15 = fi_init(a2, a3, a4, a5, &v19, 0, v22, "FINN", 1, 0);
  if ((v15 & 0x80000000) != 0)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Init Stress FI model failed", v12, v13, v14, v18);
  }

  else
  {
    *a6 = v19;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t *free_stress_model(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  if (a3)
  {
    igtree_Deinit(a1, a3, a3, a4, a5, a6, a7, a8);
    heap_Free(*(a1 + 8), a3);
  }

  if (v11)
  {
    v11 = fi_deinit(a1, a2, v11);
  }

  if (a5)
  {
    (*(a5 + 24))(a6, a7);
  }

  return v11;
}

uint64_t fe_stress_process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t ***a9, unsigned __int16 a10, int a11)
{
  v19 = heap_Calloc(a1[1], 1, 16);
  if (!v19)
  {
    UTF8Char = 2315264010;
    log_OutPublic(a1[4], "FE_PHRASING", 37000, 0, v20, v21, v22, v23, v273);
    return UTF8Char;
  }

  v24 = v19;
  v296 = a5;
  v324 = 0;
  v325 = 0;
  v326 = 0;
  v327 = 0;
  v323 = 0;
  v321 = 0;
  v322 = 0;
  v320 = 0;
  v318 = 0;
  *__s = 0;
  v317 = 0;
  *(v19 + 12) = 0;
  v25 = (*(a4 + 104))(a2, a3, 1, 0, &v325 + 2);
  if ((v25 & 0x80000000) != 0)
  {
    goto LABEL_423;
  }

  v299 = a8;
  UTF8Char = (*(a4 + 184))(a2, a3, HIWORD(v325), 0, &v324);
  v27 = 0;
  if ((UTF8Char & 0x80000000) != 0)
  {
    goto LABEL_125;
  }

  if (v324 != 1)
  {
    goto LABEL_125;
  }

  UTF8Char = (*(a4 + 176))(a2, a3, HIWORD(v325), 0, &v327, &v324 + 2);
  v27 = 0;
  if ((UTF8Char & 0x80000000) != 0 || HIWORD(v324) < 2u)
  {
    goto LABEL_125;
  }

  log_OutText(a1[4], "FE_PHRASING", 5, 0, "Stress: processing=%s", v28, v29, v30, v327);
  v31 = heap_Calloc(a1[1], 1, 1024);
  if (!v31)
  {
    goto LABEL_463;
  }

  v36 = v31;
  v37 = strlen(v327);
  v311 = heap_Calloc(a1[1], 1, (v37 + 1));
  if (!v311)
  {
    UTF8Char = 2315264010;
    log_OutPublic(a1[4], "FE_PHRASING", 37000, 0, v38, v39, v40, v41, v273);
    v92 = a1[1];
    v93 = v36;
    goto LABEL_220;
  }

  UTF8Char = (*(a4 + 104))(a2, a3, 2, HIWORD(v325), &v325);
  if ((UTF8Char & 0x80000000) != 0 || (v42 = v325) == 0)
  {
    heap_Free(a1[1], v36);
    v27 = 0;
    v69 = v311;
    goto LABEL_124;
  }

  v292 = v36;
  v307 = 0;
  v295 = 0;
  v27 = 0;
  v280 = a4;
  v283 = a3;
  v274 = a2;
  v304 = a6;
  while (1)
  {
    v43 = (*(a4 + 168))(a2, a3, v42, 0, 1, &v322, &v324 + 2);
    if ((v43 & 0x80000000) != 0)
    {
LABEL_100:
      UTF8Char = v43;
      goto LABEL_101;
    }

    v44 = v322;
    if (v322 == 15)
    {
      v43 = (*(a4 + 168))(a2, a3, v325, 1, 1, &v321 + 2, &v324 + 2);
      if ((v43 & 0x80000000) != 0)
      {
        goto LABEL_100;
      }

      v43 = (*(a4 + 168))(a2, a3, v325, 2, 1, &v321, &v324 + 2);
      if ((v43 & 0x80000000) != 0)
      {
        goto LABEL_100;
      }

      if (HIWORD(v321) > v321)
      {
        goto LABEL_104;
      }

      v44 = v322;
    }

    v45 = v44 > 0xA;
    v46 = (1 << v44) & 0x610;
    if (v45 || v46 == 0)
    {
      goto LABEL_92;
    }

    v48 = (*(a4 + 168))(a2, a3, v325, 1, 1, &v320 + 2, &v324 + 2);
    if ((v48 & 0x80000000) != 0 || (v48 = (*(a4 + 168))(a2, a3, v325, 2, 1, &v320, &v324 + 2), (v48 & 0x80000000) != 0))
    {
LABEL_99:
      UTF8Char = v48;
      v27 = 0;
LABEL_101:
      v69 = 0;
      v297 = 0;
      goto LABEL_119;
    }

    if (HIWORD(v320) > v320)
    {
      v27 = 0;
LABEL_104:
      v69 = 0;
      v297 = 0;
      v94 = 16049;
      goto LABEL_105;
    }

    v49 = strncpy(v311, &v327[HIWORD(v320)], v320 - HIWORD(v320));
    v49[v320 - HIWORD(v320)] = 0;
    v48 = (*(a4 + 184))(a2, a3, v325, 14, &v324);
    if ((v48 & 0x80000000) != 0)
    {
      goto LABEL_99;
    }

    if (v324 == 1)
    {
      v48 = (*(a4 + 176))(a2, a3, v325, 14, &v326, &v324 + 2);
      if ((v48 & 0x80000000) != 0)
      {
        goto LABEL_99;
      }

      hlp_NLUStrFind(v326, "POS", &v318, &v323);
    }

    v294 = v318;
    if (v318)
    {
      v27 = 0;
      goto LABEL_33;
    }

    v27 = 1;
    v50 = heap_Calloc(a1[1], 1, 2);
    v318 = v50;
    if (!v50)
    {
      v69 = 0;
      v297 = 0;
      v94 = 8202;
LABEL_105:
      UTF8Char = v94 | 0x8A000000;
      goto LABEL_119;
    }

    *v50 = 61;
    v318[1] = 0;
    v27 = 1;
LABEL_33:
    v51 = heap_Calloc(a1[1], 1, v323 + 1);
    v297 = v51;
    if (!v51)
    {
      goto LABEL_102;
    }

    v56 = strncpy(v51, v318, v323);
    v56[v323] = 0;
    a4 = v280;
    v57 = (*(v280 + 176))(a2, a3, v325, 9, __s, &v324 + 2);
    if ((v57 & 0x80000000) != 0)
    {
      UTF8Char = v57;
      v69 = 0;
      goto LABEL_119;
    }

    v58 = heap_Calloc(a1[1], 1, 16);
    if (!v58)
    {
LABEL_102:
      UTF8Char = 2315264010;
      log_OutPublic(a1[4], "FE_PHRASING", 37000, 0, v52, v53, v54, v55, v273);
      v69 = 0;
      goto LABEL_118;
    }

    v59 = v58;
    *(v58 + 8) = 655360;
    v60 = heap_Calloc(a1[1], 10, 16);
    *v59 = v60;
    if (!v60)
    {
      v69 = 0;
      goto LABEL_116;
    }

    v65 = (*(v280 + 176))(a2, a3, v325, 3, &v317, &v324 + 2);
    if ((v65 & 0x80000000) != 0)
    {
      break;
    }

    v66 = v317;
    if (strstr(v317, "[SVOX]"))
    {
      v66 += 6;
      v317 = v66;
    }

    v67 = strlen(v66);
    v68 = heap_Alloc(a1[1], v67 + 1);
    v69 = v68;
    if (!v68)
    {
      a3 = v283;
      goto LABEL_116;
    }

    strcpy(v68, v317);
    v70 = strlen(v317);
    a3 = v283;
    if (v70 >= v295)
    {
      if ((v70 + 1) <= 4u)
      {
        v72 = 4;
      }

      else
      {
        v72 = (v70 + 1);
      }

      v295 = v72;
      v71 = heap_Realloc(a1[1], v307, v72);
      if (!v71)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v71 = v307;
      if (!v307)
      {
        v307 = 0;
        goto LABEL_49;
      }
    }

    v307 = v71;
    *v71 = 0;
LABEL_49:
    if (strlen(v311))
    {
      v73 = 0;
      v74 = 0;
      v301 = a7;
      while ((utf8_getUTF8Char(v311, v74, &v316) & 0x80000000) == 0)
      {
        v75 = *(v59 + 10);
        if (*(v59 + 8) >= v75)
        {
          v76 = heap_Realloc(a1[1], *v59, 16 * v75 + 160);
          if (!v76)
          {
            a2 = v274;
            goto LABEL_116;
          }

          *v59 = v76;
          v77 = (v76 + 16 * *(v59 + 8));
          v77[8] = 0u;
          v77[9] = 0u;
          v77[6] = 0u;
          v77[7] = 0u;
          v77[4] = 0u;
          v77[5] = 0u;
          v77[2] = 0u;
          v77[3] = 0u;
          *v77 = 0u;
          v77[1] = 0u;
          *(v59 + 10) += 10;
        }

        v329[0] = v74;
        if (!v307)
        {
          goto LABEL_81;
        }

        v328 = 0;
        if (utf8_Utf8CharTo16bit(v311, &v328) && ((v328 + 24576) >> 9) <= 0x56u && (v328 > 0x3Eu || ((1 << v328) & 0x5000040000000000) == 0))
        {
          v82 = strcpy(v307, v69);
          v84 = 1;
        }

        else
        {
          utf8_GetPreviousValidUtf8Offset(v311, v329);
          v78 = v69;
          if (v329[0])
          {
            NextUtf8Offset = 0;
            v78 = v69;
            while (1)
            {
              NextUtf8Offset = utf8_GetNextUtf8Offset(v311, NextUtf8Offset);
              v80 = strchr(v78, 46);
              if (!v80)
              {
                break;
              }

              if (*v80 == 46)
              {
                v78 = v80 + 1;
              }

              else
              {
                v78 = v80;
              }

              if (NextUtf8Offset == v329[0])
              {
                goto LABEL_67;
              }
            }

            v307[NextUtf8Offset] = 0;
            a7 = v301;
            break;
          }

LABEL_67:
          LODWORD(v81) = 0;
          v82 = v307;
          while (1)
          {
            v83 = v78[v81];
            v81 = v81;
            if (!v78[v81] || v83 == 46)
            {
              break;
            }

            v307[v81] = v83;
            if (v81 && v83 == 125 && v307[(v81 - 1)] - 48 <= 9)
            {
              v78[v81] = 46;
              v81 = (v81 + 1);
              break;
            }

            LODWORD(v81) = v81 + 1;
          }

          v84 = 0;
          v307[v81] = 0;
        }

        v85 = v82;
        v86 = strlen(v82);
        v87 = heap_Alloc(a1[1], (v86 + 1));
        *(*v59 + 16 * *(v59 + 8)) = v87;
        if (!v87)
        {
          a3 = v283;
          a2 = v274;
          a7 = v301;
          goto LABEL_115;
        }

        strcpy(v87, v85);
        v73 += strlen(v85) + 1;
        v88 = *(v59 + 8) + 1;
        *(v59 + 8) = v88;
        a3 = v283;
        if (v84)
        {
          a7 = v301;
          goto LABEL_84;
        }

        v74 = utf8_GetNextUtf8Offset(v311, v74);
        a7 = v301;
        a6 = v304;
        if (v74 >= strlen(v311))
        {
          break;
        }
      }
    }

    else
    {
LABEL_81:
      v73 = 0;
    }

    v88 = *(v59 + 8);
LABEL_84:
    if (v88)
    {
      v89 = strlen(v317);
      if (v73 < v89 + 1)
      {
        v90 = strlen(*(*v59 + 16 * (v88 - 1)));
        v91 = heap_Realloc(a1[1], *(*v59 + 16 * (v88 - 1)), v89 - v73 + v90 + 2);
        if (v91)
        {
          *(*v59 + 16 * *(v59 + 8) - 16) = v91;
          strcat(v91, &v317[v73 - 1]);
          goto LABEL_88;
        }

        a3 = v283;
        a2 = v274;
LABEL_115:
        a6 = v304;
LABEL_116:
        UTF8Char = 2315264010;
        log_OutPublic(a1[4], "FE_PHRASING", 37000, 0, v61, v62, v63, v64, v273);
        goto LABEL_117;
      }
    }

LABEL_88:
    UTF8Char = stress_addWord(a1, v311, SHIWORD(v320), v320, v321, v297, v59, *__s, v24);
    stat_stress_freeCandidatePhons(a1, v59);
    heap_Free(a1[1], v59);
    heap_Free(a1[1], v69);
    heap_Free(a1[1], v297);
    a3 = v283;
    a2 = v274;
    if (!v294 && v318)
    {
      heap_Free(a1[1], v318);
      v318 = 0;
    }

    a4 = v280;
    a6 = v304;
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_101;
    }

LABEL_92:
    UTF8Char = (*(a4 + 120))(a2, a3, v325, &v325);
    v69 = 0;
    if ((UTF8Char & 0x80000000) != 0)
    {
      v297 = 0;
      goto LABEL_119;
    }

    v42 = v325;
    v297 = 0;
    if (!v325)
    {
      goto LABEL_119;
    }
  }

  UTF8Char = v65;
  v69 = 0;
LABEL_117:
  stat_stress_freeCandidatePhons(a1, v59);
  heap_Free(a1[1], v59);
LABEL_118:
  a4 = v280;
LABEL_119:
  if (v307)
  {
    heap_Free(a1[1], v307);
  }

  heap_Free(a1[1], v292);
  heap_Free(a1[1], v311);
  if (v297)
  {
    heap_Free(a1[1], v297);
  }

  if (v69)
  {
LABEL_124:
    heap_Free(a1[1], v69);
  }

LABEL_125:
  if ((UTF8Char & 0x80000000) != 0)
  {
    if (v27 != 1)
    {
      goto LABEL_464;
    }

    v93 = v318;
    if (!v318)
    {
      goto LABEL_464;
    }

LABEL_219:
    v92 = a1[1];
    goto LABEL_220;
  }

  if (!*(v24 + 12))
  {
    goto LABEL_464;
  }

  v326 = 0;
  v327 = 0;
  __s[4] = 0;
  *__s = 0;
  LODWORD(v318) = 0;
  UTF8Char = (*(a6 + 40))(a7, v299, &v318);
  if ((UTF8Char & 0x80000000) != 0)
  {
    goto LABEL_464;
  }

  v284 = a3;
  if (a11)
  {
    v95 = heap_Calloc(a1[1], (*(v24 + 12) + 2) * v318, 4);
    if (!v95)
    {
      goto LABEL_463;
    }

    *v95 = 1120534528;
    v96 = &v95[v318];
  }

  else
  {
    v95 = heap_Calloc(a1[1], *(v24 + 12) * (a10 + v318 + 14), 4);
    v96 = v95;
    if (!v95)
    {
      goto LABEL_463;
    }
  }

  v277 = v95;
  v281 = a4;
  v97 = *(v24 + 8);
  if (*(v24 + 8))
  {
    v302 = a7;
    v98 = 0;
    while (1)
    {
      v293 = v98;
      v99 = *v24 + (v98 << 6);
      v100 = *(v99 + 24);
      v288 = *(v99 + 32);
      v282 = *(v99 + 40);
      v287 = *(v99 + 48);
      v101 = *(v99 + 52);
      v102 = *(v99 + 54);
      v289 = *(v99 + 56);
      if (!strcmp(v100, "normal") || !strcmp(v100, "mnx"))
      {
        v103 = v101 >= v102;
        v104 = v287;
        if (v103 && v287 != 0)
        {
          break;
        }
      }

LABEL_144:
      v98 = v293 + 1;
      if (v293 + 1 >= v97)
      {
        goto LABEL_221;
      }
    }

    v305 = a6;
    v275 = a2;
    v106 = 0;
    v291 = 0;
    v278 = v102 - 1;
    v107 = v299;
    while (1)
    {
      v290 = v106;
      v108 = v282 + 40 * v106;
      v109 = *(v108 + 8);
      v308 = *(v108 + 24);
      v110 = Utf8_Utf8NbrOfSymbols(v308);
      if (v110 != 1)
      {
        break;
      }

LABEL_216:
      v106 = v290 + 1;
      v104 = v287;
      if (v290 + 1 == v287)
      {
        v97 = *(v24 + 8);
        a2 = v275;
        a6 = v305;
        goto LABEL_144;
      }
    }

    v111 = 0;
    v112 = 0;
    v113 = v104 == 1;
    v114 = (v110 - 1);
    if (v114 == 1)
    {
      v115 = 3;
    }

    else
    {
      v115 = 0;
    }

    v285 = v115;
    if (v114 != 1)
    {
      v113 = 0;
    }

    v279 = v113;
    v286 = v109;
    while (2)
    {
      v116 = v112;
      UTF8Char = utf8_getUTF8Char(v308, v112, __s);
      if ((UTF8Char & 0x80000000) != 0)
      {
        v93 = v277;
        goto LABEL_219;
      }

      v312 = strlen(__s);
      if (utf8_IsChineseLetter(__s))
      {
        if (a11)
        {
          v117 = (*(v305 + 72))(v302, v107, __s, v96);
          UTF8Char = v117;
          if (*v96 == 0.0 && v117 != 0)
          {
            v118.n128_u32[0] = *v96;
            UTF8Char = (*(v305 + 72))(v302, v107, "</s>", v96, v118);
          }

          v96 += v318;
          goto LABEL_215;
        }

        v120 = (*(v305 + 56))(v302, v107, __s, v96);
        LODWORD(UTF8Char) = v120;
        if (*v96 == 0.0 && v120 != 0)
        {
          v124.n128_u32[0] = *v96;
          LODWORD(UTF8Char) = (*(v305 + 56))(v302, v107, "</s>", v96, v124);
        }

        v126 = *(v289 + 32 * v291 + 8);
        v127 = *v126;
        if (v127 > 0x32)
        {
          v128 = a10;
          if (v127 == 51)
          {
            if (v126[1] == 53)
            {
              v129 = 1;
            }

            else
            {
              v129 = 5;
            }

            goto LABEL_181;
          }

          if (v127 == 53)
          {
            if (v126[1] == 53)
            {
              v129 = 0;
            }

            else
            {
              v129 = 3;
            }

            goto LABEL_181;
          }

          goto LABEL_176;
        }

        v128 = a10;
        if (v127 == 49)
        {
          v129 = 4;
        }

        else
        {
          if (v127 == 50)
          {
            v129 = 2;
            goto LABEL_181;
          }

LABEL_176:
          v129 = 0;
        }

LABEL_181:
        v130 = &v96[v318];
        v130[v129] = 1065353216;
        log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get tune %d", v121, v122, v123, __s);
        if (v109)
        {
          utf8_ToLower(v109, 0, &v317);
          if (v317 - 99 > 0x16)
          {
            v134 = 0;
          }

          else
          {
            v134 = word_1C37BDA0C[(v317 - 99)];
          }
        }

        else
        {
          v134 = 2;
        }

        v130[v134 + 6] = 1065353216;
        v135 = &v130[v128 + 6];
        log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get pos %d", v131, v132, v133, __s);
        if (v114 == 1)
        {
          v139 = 2;
        }

        else
        {
          v139 = 1;
        }

        if (!v111)
        {
          v139 = v285;
        }

        *(v135 + 4 * v139) = 1065353216;
        log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get word bmes tag %d", v136, v137, v138, __s);
        if (v290)
        {
          if (v290 == v287 - 1 && v114 == 1)
          {
            v144 = 2;
          }

          else
          {
            v144 = 1;
          }
        }

        else
        {
          if (v279 && v111 == 0)
          {
            v144 = 3;
          }

          else
          {
            v144 = 0;
          }

          if (v111)
          {
            if (v114 == 1 && v287 == 1)
            {
              v144 = 2;
            }

            else
            {
              v144 = 1;
            }
          }
        }

        UTF8Char = UTF8Char;
        v109 = v286;
        *(v135 + 16 + 4 * v144) = 1065353216;
        log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get pw bmes tag %d", v140, v141, v142, __s);
        if (v293)
        {
          *(*v24 + ((v293 - 1) << 6) + 32);
        }

        v107 = v299;
        v96 = (v135 + 32);
        log_OutText(a1[4], "FE_PHRASING", 4, 0, "NN STRESS: %s get phrase bmes tag %c", v146, v147, v148, __s);
        if (!isERphon(__s, *(v289 + 32 * v291)))
        {
          if (v278 <= v291)
          {
            v149 = v291;
          }

          else
          {
            v149 = v291 + 1;
          }

          v291 = v149;
        }
      }

LABEL_215:
      v112 = v116 + v312;
      --v111;
      if (!--v114)
      {
        goto LABEL_216;
      }

      continue;
    }
  }

LABEL_221:
  if (!a11)
  {
    v93 = v277;
    v327 = v277;
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_219;
    }

    v25 = fi_predict(a9, &v327, *(v24 + 12), &v326, v32, v33, v34, v35);
    if ((v25 & 0x80000000) == 0)
    {
      v309 = v326;
      goto LABEL_228;
    }

LABEL_423:
    UTF8Char = v25;
    goto LABEL_464;
  }

  v150 = *(v24 + 12);
  v93 = v277;
  *&v277[4 * v150 + 4] = 1120665600;
  v327 = v277;
  if ((UTF8Char & 0x80000000) != 0)
  {
    goto LABEL_219;
  }

  v25 = fi_predict(a9, &v327, (v150 + 2), &v326, v32, v33, v34, v35);
  if ((v25 & 0x80000000) != 0)
  {
    goto LABEL_423;
  }

  v309 = v326 + 8;
  v326 += 8;
LABEL_228:
  v154 = *(v24 + 8);
  if (!*(v24 + 8))
  {
    goto LABEL_272;
  }

  v155 = 0;
  v156 = 0;
  v157 = *v24;
  while (1)
  {
    v158 = v157 + (v155 << 6);
    v159 = *(v158 + 24);
    if ((!strcmp(v159, "normal") || !strcmp(v159, "mnx")) && *(v158 + 52) >= *(v158 + 54) && *(v157 + (v155 << 6) + 54))
    {
      break;
    }

LABEL_271:
    if (++v155 >= v154)
    {
      goto LABEL_272;
    }
  }

  v160 = 0;
  v313 = v155;
  while (2)
  {
    if (*(v24 + 12) <= v156)
    {
      v164 = a2;
      log_OutText(a1[4], "FE_PHRASING", 4, 0, "Not Severe Error: Stress label out of range. Skip some stress tag.", v151, v152, v153, v273);
      v161 = *v24;
      v162 = *(*v24 + (v155 << 6) + 56);
    }

    else
    {
      v161 = v157;
      v162 = *(v157 + (v155 << 6) + 56);
      v163 = v162 + 32 * v160;
      v164 = a2;
      *(v163 + 24) = **&v309[8 * v156] == 49;
    }

    v165 = *(v162 + 32 * v160);
    v166 = *v165;
    v167 = strlen(v165);
    v168 = v167;
    if (v167 < 2)
    {
      goto LABEL_247;
    }

    if (v167 >= 5 && !strcmp(&v165[v167 - 5], "%~r"))
    {
      v155 = v313;
      if (!((v166 > 0x3E) | (0x2FFFFBFFFFFFFFFFuLL >> v166) & 1))
      {
        goto LABEL_267;
      }

      goto LABEL_250;
    }

    v169 = &v165[v168 - 2];
    if (*v169 != 37)
    {
LABEL_247:
      a2 = v164;
      v157 = v161;
LABEL_248:
      v155 = v313;
LABEL_269:
      ++v160;
      ++v156;
      if (v160 >= *(v157 + (v155 << 6) + 54))
      {
        v154 = *(v24 + 8);
        goto LABEL_271;
      }

      continue;
    }

    break;
  }

  v155 = v313;
  if (v169[1] != 114 || (((v166 > 0x3E) | (0x2FFFFBFFFFFFFFFFuLL >> v166)) & (v169[2] == 0)) == 0)
  {
LABEL_267:
    a2 = v164;
    goto LABEL_268;
  }

LABEL_250:
  if (v166 == 36)
  {
    goto LABEL_267;
  }

  a2 = v164;
  if (v166 == 97)
  {
LABEL_268:
    v157 = v161;
    goto LABEL_269;
  }

  v170 = 0;
  v171 = 0;
  __s[4] = 0;
  *__s = 0;
  while ((utf8_getUTF8Char(*(*v24 + (v313 << 6)), v171, __s) & 0x80000000) == 0)
  {
    v172 = utf8_GetNextUtf8Offset(*(*v24 + (v313 << 6)), v171);
    if (v172 != v171)
    {
      v173 = v172;
      if (utf8_IsChineseLetter(__s))
      {
        ++v170;
      }

      v171 = v173;
      if ((v160 + 1) >= v170)
      {
        continue;
      }
    }

    if (__s[0] == 229 && __s[1] == 132 && __s[2] == 191)
    {
      ++v156;
    }

    v157 = *v24;
    goto LABEL_248;
  }

LABEL_272:
  BYTE4(v326) = 0;
  LODWORD(v326) = 0;
  v327 = 0;
  if (!v296)
  {
    log_OutText(a1[4], "FE_PHRASING", 0, 0, "IGTree model for stress does not exist. Skip processing IGTree.", v151, v152, v153, v273);
    v238 = v281;
    goto LABEL_429;
  }

  v176 = heap_Calloc(a1[1], 1, 8 * *(v296 + 1296) - 8);
  if (!v176)
  {
    UTF8Char = 2315264010;
    goto LABEL_464;
  }

  v177 = v176;
  UTF8Char = hlp_igtree_initFeatureVector(a1, v176, (*(v296 + 1296) - 1));
  if ((UTF8Char & 0x80000000) == 0)
  {
    v178 = *(v24 + 8);
    if (*(v24 + 8))
    {
      v179 = 0;
      while (1)
      {
        v180 = *v24 + (v179 << 6);
        v181 = *(v180 + 24);
        if (!strcmp(v181, "normal") || !strcmp(v181, "mnx"))
        {
          v182 = *(v180 + 54);
          v183 = *(v180 + 52);
          if (v182 == v183 || v182 + 1 == v183)
          {
            v185 = *(v180 + 48);
            if (v185)
            {
              break;
            }
          }
        }

LABEL_421:
        if (++v179 >= v178)
        {
          goto LABEL_428;
        }
      }

      v186 = 0;
      v306 = 0;
      v276 = a2;
      v314 = v177;
      *v298 = v180;
      while (1)
      {
        v187 = *(v180 + 40) + 40 * v186;
        if (*(v187 + 32))
        {
          break;
        }

LABEL_419:
        if (++v186 >= v185)
        {
          v178 = *(v24 + 8);
          goto LABEL_421;
        }
      }

      v300 = *(v180 + 40) + 40 * v186;
      v303 = v186;
      v188 = 0;
      v189 = 0;
      while (2)
      {
        UTF8Char = utf8_getUTF8Char(*(v187 + 24), v189, &v326);
        if ((UTF8Char & 0x80000000) != 0)
        {
          break;
        }

        if (utf8_IsChineseLetter(&v326))
        {
          v310 = v189;
          v190 = *(v296 + 1312);
          v191 = *(v296 + 1296);
          v192 = heap_Calloc(a1[1], 1, 2048);
          if (!v192)
          {
            UTF8Char = 2315264010;
            log_OutPublic(a1[4], "FE_PHRASING", 37000, 0, v193, v194, v195, v196, v273);
            a2 = v276;
            break;
          }

          v197 = v192;
          if (v191 > 1)
          {
            v198 = 0;
            while (strcmp(*(v190 + v198), "char0"))
            {
              v198 += 8;
              if (8 * (v191 - 1) == v198)
              {
                UTF8Char = 0;
                goto LABEL_299;
              }
            }

            v199 = fe_stress_feat_character(a1, v24, v179, v303, v310, 0, v197);
            if ((v199 & 0x80000000) != 0)
            {
LABEL_426:
              UTF8Char = v199;
              goto LABEL_427;
            }

            UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 0, v314, v197);
            if ((UTF8Char & 0x80000000) != 0)
            {
              goto LABEL_427;
            }

LABEL_299:
            v200 = 0;
            if (v191 - 1 <= 1)
            {
              v201 = 1;
            }

            else
            {
              v201 = v191 - 1;
            }

            v202 = 8 * v201;
            while (strcmp(*(v190 + v200), "lchar"))
            {
              v200 += 8;
              if (v202 == v200)
              {
                goto LABEL_308;
              }
            }

            v199 = fe_stress_feat_character(a1, v24, v179, v303, v310, -1, v197);
            if ((v199 & 0x80000000) != 0)
            {
              goto LABEL_426;
            }

            UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 1, v314, v197);
            if ((UTF8Char & 0x80000000) == 0)
            {
LABEL_308:
              v203 = 0;
              while (strcmp(*(v190 + v203), "llchar"))
              {
                v203 += 8;
                if (v202 == v203)
                {
                  goto LABEL_314;
                }
              }

              v199 = fe_stress_feat_character(a1, v24, v179, v303, v310, -2, v197);
              if ((v199 & 0x80000000) != 0)
              {
                goto LABEL_426;
              }

              UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 2, v314, v197);
              if ((UTF8Char & 0x80000000) == 0)
              {
LABEL_314:
                v204 = 0;
                while (strcmp(*(v190 + v204), "l3char"))
                {
                  v204 += 8;
                  if (v202 == v204)
                  {
                    goto LABEL_320;
                  }
                }

                v199 = fe_stress_feat_character(a1, v24, v179, v303, v310, -3, v197);
                if ((v199 & 0x80000000) != 0)
                {
                  goto LABEL_426;
                }

                UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 3, v314, v197);
                if ((UTF8Char & 0x80000000) == 0)
                {
LABEL_320:
                  v205 = 0;
                  while (strcmp(*(v190 + v205), "rchar"))
                  {
                    v205 += 8;
                    if (v202 == v205)
                    {
                      goto LABEL_326;
                    }
                  }

                  v199 = fe_stress_feat_character(a1, v24, v179, v303, v310, 1, v197);
                  if ((v199 & 0x80000000) != 0)
                  {
                    goto LABEL_426;
                  }

                  UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 4, v314, v197);
                  if ((UTF8Char & 0x80000000) == 0)
                  {
LABEL_326:
                    v206 = 0;
                    while (strcmp(*(v190 + v206), "rrchar"))
                    {
                      v206 += 8;
                      if (v202 == v206)
                      {
                        goto LABEL_332;
                      }
                    }

                    v199 = fe_stress_feat_character(a1, v24, v179, v303, v310, 2, v197);
                    if ((v199 & 0x80000000) != 0)
                    {
                      goto LABEL_426;
                    }

                    UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 5, v314, v197);
                    if ((UTF8Char & 0x80000000) == 0)
                    {
LABEL_332:
                      v207 = 0;
                      while (strcmp(*(v190 + v207), "r3char"))
                      {
                        v207 += 8;
                        if (v202 == v207)
                        {
                          goto LABEL_338;
                        }
                      }

                      v199 = fe_stress_feat_character(a1, v24, v179, v303, v310, 3, v197);
                      if ((v199 & 0x80000000) != 0)
                      {
                        goto LABEL_426;
                      }

                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 6, v314, v197);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_338:
                      v208 = 0;
                      while (strcmp(*(v190 + v208), "phon0"))
                      {
                        v208 += 8;
                        if (v202 == v208)
                        {
                          goto LABEL_343;
                        }
                      }

                      v209 = fe_stress_feat_phon(v24, v179, v306, 0);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 7, v314, v209);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_343:
                      v210 = 0;
                      while (strcmp(*(v190 + v210), "lphon"))
                      {
                        v210 += 8;
                        if (v202 == v210)
                        {
                          goto LABEL_348;
                        }
                      }

                      v211 = fe_stress_feat_phon(v24, v179, v306, -1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 8, v314, v211);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_348:
                      v212 = 0;
                      while (strcmp(*(v190 + v212), "rphon"))
                      {
                        v212 += 8;
                        if (v202 == v212)
                        {
                          goto LABEL_353;
                        }
                      }

                      v213 = fe_stress_feat_phon(v24, v179, v306, 1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 9, v314, v213);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_353:
                      v214 = 0;
                      while (strcmp(*(v190 + v214), "tone0"))
                      {
                        v214 += 8;
                        if (v202 == v214)
                        {
                          goto LABEL_358;
                        }
                      }

                      v215 = fe_stress_feat_tone(v24, v179, v306, 0);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 10, v314, v215);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_358:
                      v216 = 0;
                      while (strcmp(*(v190 + v216), "ltone"))
                      {
                        v216 += 8;
                        if (v202 == v216)
                        {
                          goto LABEL_363;
                        }
                      }

                      v217 = fe_stress_feat_tone(v24, v179, v306, -1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 11, v314, v217);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_363:
                      v218 = 0;
                      while (strcmp(*(v190 + v218), "rtone"))
                      {
                        v218 += 8;
                        if (v202 == v218)
                        {
                          goto LABEL_368;
                        }
                      }

                      v219 = fe_stress_feat_tone(v24, v179, v306, 1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 12, v314, v219);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_368:
                      v220 = 0;
                      while (strcmp(*(v190 + v220), "word0"))
                      {
                        v220 += 8;
                        if (v202 == v220)
                        {
                          goto LABEL_373;
                        }
                      }

                      v221 = fe_stress_feat_word(v24, v179, v303, 0);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 13, v314, v221);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_373:
                      v222 = 0;
                      while (strcmp(*(v190 + v222), "lword"))
                      {
                        v222 += 8;
                        if (v202 == v222)
                        {
                          goto LABEL_378;
                        }
                      }

                      v223 = fe_stress_feat_word(v24, v179, v303, -1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 14, v314, v223);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_378:
                      v224 = 0;
                      while (strcmp(*(v190 + v224), "rword"))
                      {
                        v224 += 8;
                        if (v202 == v224)
                        {
                          goto LABEL_383;
                        }
                      }

                      v225 = fe_stress_feat_word(v24, v179, v303, 1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 15, v314, v225);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_383:
                      v226 = 0;
                      while (strcmp(*(v190 + v226), "wordlen"))
                      {
                        v226 += 8;
                        if (v202 == v226)
                        {
                          goto LABEL_391;
                        }
                      }

                      *v197 = 0;
                      v227 = *v24 + (v179 << 6);
                      if (v303 >= *(v227 + 48))
                      {
                        *v197 = 61;
                      }

                      else
                      {
                        sprintf(v197, "%d", *(*(v227 + 40) + 40 * v303 + 32));
                      }

                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 16, v314, v197);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_391:
                      v228 = 0;
                      while (strcmp(*(v190 + v228), "pos0"))
                      {
                        v228 += 8;
                        if (v202 == v228)
                        {
                          goto LABEL_396;
                        }
                      }

                      v229 = fe_stress_feat_pos(v24, v179, v303, 0);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 17, v314, v229);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_396:
                      v230 = 0;
                      while (strcmp(*(v190 + v230), "lpos"))
                      {
                        v230 += 8;
                        if (v202 == v230)
                        {
                          goto LABEL_401;
                        }
                      }

                      v231 = fe_stress_feat_pos(v24, v179, v303, -1);
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 18, v314, v231);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_427;
                      }

LABEL_401:
                      v232 = 0;
                      while (strcmp(*(v190 + v232), "rpos"))
                      {
                        v232 += 8;
                        if (v202 == v232)
                        {
                          v177 = v314;
                          goto LABEL_406;
                        }
                      }

                      v233 = fe_stress_feat_pos(v24, v179, v303, 1);
                      v177 = v314;
                      UTF8Char = fe_stress_igtr_setFeature(a1, v190, v191, 19, v314, v233);
LABEL_406:
                      heap_Free(a1[1], v197);
                      a2 = v276;
                      v180 = *v298;
                      v187 = v300;
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        break;
                      }

                      goto LABEL_407;
                    }
                  }
                }
              }
            }

LABEL_427:
            heap_Free(a1[1], v197);
            a2 = v276;
            v177 = v314;
            break;
          }

          heap_Free(a1[1], v192);
          UTF8Char = 0;
          a2 = v276;
          v180 = *v298;
          v187 = v300;
LABEL_407:
          igtree_Process(v296, v177, &v327);
          v234 = v327;
          if (strcmp(v327, "NOMATCH"))
          {
            v235 = atoi(v234);
            if (v235 <= 1)
            {
              *(*(v180 + 56) + 32 * v306 + 24) = v235;
            }
          }

          v189 = utf8_GetNextUtf8Offset(*(v187 + 24), v310);
          v236 = *(v180 + 54);
          if (v236 + 1 == *(v180 + 52))
          {
            if (!isERphon(&v326, *(*(v180 + 56) + 32 * v306)))
            {
              v236 = *(v180 + 54);
              goto LABEL_413;
            }
          }

          else
          {
LABEL_413:
            if (v236 <= (v306 + 1))
            {
              v237 = v306;
            }

            else
            {
              v237 = v306 + 1;
            }

            v306 = v237;
          }
        }

        if (++v188 >= *(v187 + 32))
        {
          v185 = *(v180 + 48);
          v186 = v303;
          goto LABEL_419;
        }

        continue;
      }
    }
  }

LABEL_428:
  hlp_igtree_freeFeatureVector(a1, v177, (*(v296 + 1296) - 1));
  heap_Free(a1[1], v177);
  v238 = v281;
  if ((UTF8Char & 0x80000000) == 0)
  {
LABEL_429:
    LOWORD(v318) = 0;
    LOWORD(v317) = 0;
    v316 = 0;
    LOWORD(v329[0]) = 0;
    v326 = 0;
    v327 = 0;
    v239 = heap_Calloc(a1[1], 1, 2048);
    if (v239)
    {
      v240 = v239;
      *__s = 0;
      *v239 = 0;
      v241 = (*(v238 + 104))(a2, v284, 1, 0, &v318);
      if ((v241 & 0x80000000) != 0)
      {
        goto LABEL_502;
      }

      UTF8Char = (*(v238 + 104))(a2, v284, 2, v318, &v317);
      if ((UTF8Char & 0x80000000) == 0)
      {
        v242 = v317;
        if (v317)
        {
          v243 = 0;
          v315 = 2048;
          while (1)
          {
            v241 = (*(v281 + 168))(a2, v284, v242, 0, 1, __s, &v316);
            if ((v241 & 0x80000000) != 0)
            {
              break;
            }

            if (*__s <= 0xAu && ((1 << __s[0]) & 0x610) != 0)
            {
              v241 = (*(v281 + 176))(a2, v284, v317, 9, &v327, &v316);
              if ((v241 & 0x80000000) != 0)
              {
                break;
              }

              v245 = a2;
              v241 = (*(v281 + 176))(a2, v284, v317, 3, &v326, &v316);
              if ((v241 & 0x80000000) != 0)
              {
                break;
              }

              v246 = v327;
              if (!strcmp(v327, "normal") || !strcmp(v246, "mnx"))
              {
                v247 = *v24;
                v248 = *v24 + (v243 << 6);
                v249 = *(v248 + 54);
                if (v249 <= *(v248 + 52))
                {
                  v250 = v249 + strlen(v326);
                  if (v250 >= v315)
                  {
                    v315 = v250 + 1;
                    v251 = heap_Realloc(a1[1], v240, (v250 + 1));
                    if (!v251)
                    {
                      UTF8Char = 2315264010;
                      log_OutPublic(a1[4], "FE_PHRASING", 37000, 0, v252, v253, v254, v255, v273);
                      goto LABEL_503;
                    }

                    v247 = *v24;
                    v240 = v251;
                  }

                  if (*(v247 + (v243 << 6) + 54))
                  {
                    v256 = 0;
                    v257 = 0;
                    do
                    {
                      if (v256)
                      {
                        *&v240[strlen(v240)] = 46;
                      }

                      else if (strstr(v326, "[SVOX]"))
                      {
                        strcpy(v240, "[SVOX]");
                      }

                      v258 = *(*v24 + (v243 << 6) + 56);
                      if (*(v258 + v256 + 24) == 1)
                      {
                        *&v240[strlen(v240)] = 39;
                        v258 = *(*v24 + (v243 << 6) + 56);
                      }

                      strcat(v240, *(v258 + v256));
                      ++v257;
                      v256 += 32;
                    }

                    while (v257 < *(*v24 + (v243 << 6) + 54));
                  }

                  v259 = strlen(v240);
                  a2 = v245;
                  v241 = (*(v281 + 160))(v245, v284, v317, 3, (v259 + 1), v240, v329);
                  if ((v241 & 0x80000000) != 0)
                  {
                    break;
                  }

                  *v240 = 0;
                }

                else
                {
                  a2 = v245;
                }
              }

              ++v243;
            }

            UTF8Char = (*(v281 + 120))(a2, v284, v317, &v317);
            if ((UTF8Char & 0x80000000) == 0)
            {
              v242 = v317;
              if (v317)
              {
                continue;
              }
            }

            goto LABEL_503;
          }

LABEL_502:
          UTF8Char = v241;
        }
      }

LABEL_503:
      v92 = a1[1];
      v93 = v240;
LABEL_220:
      heap_Free(v92, v93);
      goto LABEL_464;
    }

LABEL_463:
    UTF8Char = 2315264010;
    log_OutPublic(a1[4], "FE_PHRASING", 37000, 0, v32, v33, v34, v35, v273);
  }

LABEL_464:
  if (*(v24 + 8))
  {
    v260 = 0;
    do
    {
      if (*v24)
      {
        v261 = *v24 + (v260 << 6);
        if (*v261)
        {
          heap_Free(a1[1], *v261);
          *v261 = 0;
        }

        v262 = *(v261 + 16);
        if (v262)
        {
          heap_Free(a1[1], v262);
          *(v261 + 16) = 0;
        }

        v263 = *(v261 + 24);
        if (v263)
        {
          heap_Free(a1[1], v263);
          *(v261 + 24) = 0;
        }

        v264 = *(v261 + 56);
        if (v264)
        {
          if (*(v261 + 54))
          {
            v265 = 0;
            v266 = 0;
            v267 = *(v261 + 56);
            do
            {
              if (v267)
              {
                if (*(v267 + v265))
                {
                  heap_Free(a1[1], *(v267 + v265));
                  v264 = *(v261 + 56);
                  *(v264 + v265) = 0;
                }

                if (*(v264 + v265 + 16))
                {
                  heap_Free(a1[1], *(v264 + v265 + 16));
                  v264 = *(v261 + 56);
                  *(v264 + v265 + 16) = 0;
                }

                v267 = v264;
                if (*(v264 + v265 + 8))
                {
                  heap_Free(a1[1], *(v264 + v265 + 8));
                  v264 = *(v261 + 56);
                  *(v264 + v265 + 8) = 0;
                  v267 = v264;
                }
              }

              ++v266;
              v265 += 32;
            }

            while (v266 < *(v261 + 54));
          }

          heap_Free(a1[1], v264);
          *(v261 + 56) = 0;
        }

        v268 = *(v261 + 40);
        if (v268)
        {
          if (*(v261 + 50))
          {
            v269 = 0;
            v270 = 0;
            v271 = *(v261 + 40);
            do
            {
              if (v271)
              {
                if (*(v271 + v269))
                {
                  heap_Free(a1[1], *(v271 + v269));
                  v268 = *(v261 + 40);
                  *(v268 + v269) = 0;
                }

                if (*(v268 + v269 + 8))
                {
                  heap_Free(a1[1], *(v268 + v269 + 8));
                  v268 = *(v261 + 40);
                  *(v268 + v269 + 8) = 0;
                }

                v271 = v268;
                if (*(v268 + v269 + 24))
                {
                  heap_Free(a1[1], *(v268 + v269 + 24));
                  v268 = *(v261 + 40);
                  *(v268 + v269 + 24) = 0;
                  v271 = v268;
                }
              }

              ++v270;
              v269 += 40;
            }

            while (v270 < *(v261 + 50));
          }

          heap_Free(a1[1], v268);
          *(v261 + 40) = 0;
        }
      }

      ++v260;
    }

    while (v260 < *(v24 + 8));
  }

  if (*v24)
  {
    heap_Free(a1[1], *v24);
  }

  *v24 = 0;
  *(v24 + 8) = 0;
  heap_Free(a1[1], v24);
  return UTF8Char;
}

uint64_t stress_addWord(uint64_t a1, char *__s, __int16 a3, int a4, int a5, const char *a6, uint64_t a7, const char *a8, uint64_t a9)
{
  v17 = *(a9 + 10);
  if (!*(a9 + 10))
  {
    v21 = heap_Calloc(*(a1 + 8), 1, 3201);
    *a9 = v21;
    if (v21)
    {
      v18 = v21;
      v146 = a3;
      v147 = a4;
      v19 = a5;
      v20 = a8;
      *(a9 + 10) = 50;
      goto LABEL_8;
    }

LABEL_69:
    v59 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v22, v23, v24, v25, v134);
    return v59;
  }

  v18 = *a9;
  if (*(a9 + 8) < v17)
  {
    v146 = a3;
    v147 = a4;
    v19 = a5;
    v20 = a8;
    goto LABEL_8;
  }

  v26 = heap_Realloc(*(a1 + 8), *a9, (v17 << 6) + 1280);
  if (!v26)
  {
    goto LABEL_69;
  }

  v146 = a3;
  v147 = a4;
  v19 = a5;
  v20 = a8;
  *a9 = v26;
  bzero((v26 + (*(a9 + 8) << 6)), 0x500uLL);
  *(a9 + 10) += 20;
  v18 = *a9;
LABEL_8:
  v27 = v18 + (*(a9 + 8) << 6);
  v28 = strlen(__s);
  v29 = heap_Calloc(*(a1 + 8), 1, (v28 + 4));
  *v27 = v29;
  if (!v29)
  {
    goto LABEL_38;
  }

  strcpy(v29, __s);
  v34 = strlen(a6);
  v35 = heap_Calloc(*(a1 + 8), 1, (v34 + 1));
  *(v27 + 16) = v35;
  if (!v35)
  {
    goto LABEL_38;
  }

  strcpy(v35, a6);
  v36 = v20;
  v37 = strlen(v20);
  v38 = heap_Calloc(*(a1 + 8), 1, (v37 + 1));
  *(v27 + 24) = v38;
  if (!v38)
  {
    goto LABEL_38;
  }

  strcpy(v38, v20);
  v39 = *(a7 + 8);
  *(v27 + 54) = v39;
  v40 = heap_Calloc(*(a1 + 8), v39, 32);
  *(v27 + 56) = v40;
  if (!v40)
  {
    goto LABEL_38;
  }

  v139 = v19;
  if (*(a7 + 8))
  {
    v41 = 0;
    v144 = v20;
    while (1)
    {
      v42 = strlen(*(*a7 + 16 * v41));
      v43 = heap_Calloc(*(a1 + 8), 1, (v42 + 1));
      *(*(v27 + 56) + 32 * v41) = v43;
      if (!v43)
      {
        break;
      }

      strcpy(v43, *(*a7 + 16 * v41));
      v44 = strlen(v36);
      v45 = heap_Calloc(*(a1 + 8), 1, (v44 + 1));
      *(*(v27 + 56) + 32 * v41 + 16) = v45;
      if (!v45)
      {
        break;
      }

      strcpy(v45, v36);
      v46 = heap_Calloc(*(a1 + 8), 1, 4);
      v47 = *(v27 + 56) + 32 * v41;
      *(v47 + 8) = v46;
      if (!v46)
      {
        break;
      }

      v48 = v46;
      v49 = *(v47 + 16);
      if (!strcmp(v49, "normal") || !strcmp(v49, "mnx"))
      {
        v153 = 0;
        *__sa = 0;
        if (!*v48)
        {
          v51 = Utf8_Utf8NbrOfSymbols(*v47);
          if (v51 != 1)
          {
            v52 = 0;
            v53 = 0;
            v54 = (v51 - 1);
            do
            {
              v55 = v52;
              UTF8Char = utf8_getUTF8Char(*v47, v52, __sa);
              if ((UTF8Char & 0x80000000) != 0)
              {
                v59 = UTF8Char;
                if (v18)
                {
                  goto LABEL_39;
                }

                return v59;
              }

              if (__sa[0] == 46)
              {
                break;
              }

              v57 = strlen(__sa);
              v58 = __sa[0] - 54 < 0xFFFFFFFA || v57 > 1;
              if (!v58 && strlen(*(v47 + 8)) <= 2)
              {
                strcat(*(v47 + 8), __sa);
              }

              v52 = v55 + strlen(__sa);
              ++v53;
            }

            while (v53 < v54);
          }
        }

        v50 = *(v47 + 8);
        if (!*v50)
        {
          *v50 = 61;
        }

        v36 = v144;
      }

      else
      {
        *v48 = 61;
        v36 = v144;
      }

      *(*(v27 + 56) + 32 * v41++ + 24) = 0;
      if (v41 >= *(a7 + 8))
      {
        goto LABEL_71;
      }
    }

LABEL_38:
    v59 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v30, v31, v32, v33, v134);
    goto LABEL_39;
  }

LABEL_71:
  v151 = 0;
  *v150 = 0;
  v149 = 0;
  *v148 = 0;
  v71 = heap_Calloc(*(a1 + 8), 5, 40);
  *(v27 + 40) = v71;
  if (!v71)
  {
LABEL_136:
    v59 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v72, v73, v74, v75, v134);
    goto LABEL_137;
  }

  v76 = Utf8_Utf8NbrOfSymbols(*v27);
  v77 = 0;
  v78 = 0;
  v142 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = v76 - 1;
  v83 = (v76 - 1);
  v138 = 5;
  v136 = v83;
  v137 = v76 - 1;
  do
  {
    v84 = v78;
    v85 = utf8_getUTF8Char(*v27, v78, v150);
    if ((v85 & 0x80000000) != 0)
    {
      goto LABEL_118;
    }

    if (v83 != v77 && v150[0] != 45)
    {
      goto LABEL_111;
    }

    v86 = heap_Calloc(*(a1 + 8), 1, (v84 - v142 + 1));
    v87 = v81;
    *(*(v27 + 40) + 40 * v81) = v86;
    if (!v86)
    {
      goto LABEL_136;
    }

    v140 = v79;
    v141 = v81;
    strncpy(v86, (*v27 + v142), (v84 - v142));
    *(*(*(v27 + 40) + 40 * v81) + (v84 - v142)) = 0;
    v145 = 5 * v81;
    v88 = *(v27 + 40) + 40 * v81;
    v153 = 0;
    *__sa = 0;
    v89 = Utf8_Utf8NbrOfSymbols(*v88);
    v90 = v89 - 1;
    if (v89 != 1)
    {
      v135 = v80;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      while (1)
      {
        v94 = v91;
        v85 = utf8_getUTF8Char(*v88, v91, __sa);
        if ((v85 & 0x80000000) != 0)
        {
          goto LABEL_118;
        }

        IsChineseLetter = utf8_IsChineseLetter(__sa);
        v96 = isPunc(__sa);
        if (!v92 && !IsChineseLetter && !v96)
        {
          v90 = 1;
LABEL_87:
          v97 = v90 - v93;
          v80 = v135;
          goto LABEL_88;
        }

        v93 += v96;
        v91 = v94 + strlen(__sa);
        if (++v92 >= v90)
        {
          goto LABEL_87;
        }
      }
    }

    v97 = 0;
LABEL_88:
    *(v88 + 32) = v97;
    v98 = *(v27 + 40);
    v99 = v98 + 40 * v87;
    v100 = *(v99 + 32);
    v101 = *v99;
    v103 = 0;
    if (*v99)
    {
      v102 = strlen(*v99);
      if (v102)
      {
        if (strstr("',.:?!;()<>[]#$+-=^_|", &v101[v102 - 1]) || strstr("',.:?!;()<>[]#$+-=^_|", v101))
        {
          v103 = 1;
        }
      }
    }

    *(v98 + 8 * v145 + 16) = v103;
    v104 = strlen(v101);
    v105 = heap_Calloc(*(a1 + 8), 1, (v104 + 4));
    *(*(v27 + 40) + 8 * v145 + 24) = v105;
    if (!v105)
    {
      goto LABEL_136;
    }

    *v105 = 0;
    v106 = *(v27 + 40) + 40 * v87;
    if (*(v106 + 16) == 1)
    {
      v153 = 0;
      *__sa = 0;
      v107 = Utf8_Utf8NbrOfSymbols(*v106);
      if (v107 != 1)
      {
        v108 = 0;
        v109 = 0;
        v110 = (v107 - 1);
        while (1)
        {
          v111 = v108;
          v85 = utf8_getUTF8Char(*v106, v108, __sa);
          if ((v85 & 0x80000000) != 0)
          {
            break;
          }

          v112 = isPunc(__sa);
          v113 = utf8_IsChineseLetter(__sa);
          if (!v109 && !v113 && !v112)
          {
            v117 = strlen(*v106);
            strncpy(*(v106 + 24), *v106, (v117 - 1));
            goto LABEL_107;
          }

          if (!v112)
          {
            strcat(*(v106 + 24), __sa);
          }

          v108 = v111 + strlen(__sa);
          if (++v109 >= v110)
          {
            goto LABEL_107;
          }
        }

LABEL_118:
        v59 = v85;
        goto LABEL_137;
      }
    }

    else
    {
      strcpy(*(v106 + 24), *v106);
    }

LABEL_107:
    v80 += v100;
    v83 = v136;
    if (v150[0] != 45)
    {
      v81 = v141;
      v79 = v140;
      v82 = v137;
LABEL_111:
      v78 = v84 + strlen(v150);
      goto LABEL_112;
    }

    v81 = (v141 + 1);
    v114 = v138;
    v79 = v140;
    v82 = v137;
    if (v138 > (v141 + 1))
    {
      v78 = v84 + strlen(v150);
LABEL_116:
      v138 = v114;
      v142 = v78;
      goto LABEL_112;
    }

    v114 = (v138 + 3);
    v115 = heap_Realloc(*(a1 + 8), *(v27 + 40), 40 * (v138 + 3));
    if (!v115)
    {
      goto LABEL_136;
    }

    *(v27 + 40) = v115;
    v116 = v115 + 40 * (v141 + 1);
    *(v116 + 112) = 0;
    *(v116 + 80) = 0u;
    *(v116 + 96) = 0u;
    *(v116 + 48) = 0u;
    *(v116 + 64) = 0u;
    *(v116 + 16) = 0u;
    *(v116 + 32) = 0u;
    *v116 = 0u;
    v138 = (v138 + 3);
    v78 = v84 + strlen(v150);
    if (v150[0] == 45)
    {
      goto LABEL_116;
    }

LABEL_112:
    v77 = ++v79;
  }

  while (v79 <= v82);
  *(v27 + 50) = v138;
  *(v27 + 48) = v81 + 1;
  *(v27 + 52) = v80;
  v118 = Utf8_Utf8NbrOfSymbols(*(v27 + 16));
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = v118 - 1;
  v125 = (v118 - 1);
  v143 = v125;
  while (1)
  {
    v126 = v120;
    v59 = utf8_getUTF8Char(*(v27 + 16), v120, v148);
    if ((v59 & 0x80000000) != 0)
    {
      break;
    }

    if (v125 == v119 || v148[0] == 45)
    {
      v127 = heap_Calloc(*(a1 + 8), 1, (v126 - v121 + 1));
      *(*(v27 + 40) + 40 * v123 + 8) = v127;
      if (!v127)
      {
        goto LABEL_136;
      }

      strncpy(v127, (*(v27 + 16) + v121), (v126 - v121));
      *(*(*(v27 + 40) + 40 * v123 + 8) + (v126 - v121)) = 0;
      v128 = strlen(v148);
      if (v148[0] == 45)
      {
        ++v123;
      }

      v120 = v126 + v128;
      if (v148[0] == 45)
      {
        v121 = v126 + v128;
      }

      v125 = v143;
    }

    else
    {
      v120 = v126 + strlen(v148);
    }

    v119 = ++v122;
    if (v122 > v124)
    {
      v129 = *(v27 + 24);
      if (!strcmp(v129, "normal") || !strcmp(v129, "mnx"))
      {
        *(a9 + 12) += *(v27 + 52);
      }

      *(v27 + 8) = v146;
      *(v27 + 10) = v147;
      *(v27 + 32) = v147 == v139;
      ++*(a9 + 8);
      return v59;
    }
  }

LABEL_137:
  v130 = *(v27 + 40);
  if (v130)
  {
    if (*(v27 + 50))
    {
      v131 = 0;
      v132 = 0;
      v133 = *(v27 + 40);
      do
      {
        if (v133)
        {
          if (*(v133 + v131))
          {
            heap_Free(*(a1 + 8), *(v133 + v131));
            v130 = *(v27 + 40);
            *(v130 + v131) = 0;
          }

          if (*(v130 + v131 + 8))
          {
            heap_Free(*(a1 + 8), *(v130 + v131 + 8));
            v130 = *(v27 + 40);
            *(v130 + v131 + 8) = 0;
          }

          v133 = v130;
          if (*(v130 + v131 + 24))
          {
            heap_Free(*(a1 + 8), *(v130 + v131 + 24));
            v130 = *(v27 + 40);
            *(v130 + v131 + 24) = 0;
            v133 = v130;
          }
        }

        ++v132;
        v131 += 40;
      }

      while (v132 < *(v27 + 50));
    }

    heap_Free(*(a1 + 8), v130);
    *(v27 + 40) = 0;
  }

LABEL_39:
  if (*v27)
  {
    heap_Free(*(a1 + 8), *v27);
    *v27 = 0;
  }

  v60 = *(v27 + 16);
  if (v60)
  {
    heap_Free(*(a1 + 8), v60);
    *(v27 + 16) = 0;
  }

  v61 = *(v27 + 24);
  if (v61)
  {
    heap_Free(*(a1 + 8), v61);
    *(v27 + 24) = 0;
  }

  v62 = *(v27 + 56);
  if (v62)
  {
    if (*(v27 + 54))
    {
      v63 = 0;
      v64 = 0;
      v65 = *(v27 + 56);
      do
      {
        if (v65)
        {
          if (*(v65 + v63))
          {
            heap_Free(*(a1 + 8), *(v65 + v63));
            v62 = *(v27 + 56);
            *(v62 + v63) = 0;
          }

          if (*(v62 + v63 + 16))
          {
            heap_Free(*(a1 + 8), *(v62 + v63 + 16));
            v62 = *(v27 + 56);
            *(v62 + v63 + 16) = 0;
          }

          v65 = v62;
          if (*(v62 + v63 + 8))
          {
            heap_Free(*(a1 + 8), *(v62 + v63 + 8));
            v62 = *(v27 + 56);
            *(v62 + v63 + 8) = 0;
            v65 = v62;
          }
        }

        ++v64;
        v63 += 32;
      }

      while (v64 < *(v27 + 54));
    }

    heap_Free(*(a1 + 8), v62);
    *(v27 + 56) = 0;
  }

  v66 = *(v27 + 40);
  if (v66)
  {
    if (*(v27 + 50))
    {
      v67 = 0;
      v68 = 0;
      v69 = *(v27 + 40);
      do
      {
        if (v69)
        {
          if (*(v69 + v67))
          {
            heap_Free(*(a1 + 8), *(v69 + v67));
            v66 = *(v27 + 40);
            *(v66 + v67) = 0;
          }

          if (*(v66 + v67 + 8))
          {
            heap_Free(*(a1 + 8), *(v66 + v67 + 8));
            v66 = *(v27 + 40);
            *(v66 + v67 + 8) = 0;
          }

          v69 = v66;
          if (*(v66 + v67 + 24))
          {
            heap_Free(*(a1 + 8), *(v66 + v67 + 24));
            v66 = *(v27 + 40);
            *(v66 + v67 + 24) = 0;
            v69 = v66;
          }
        }

        ++v68;
        v67 += 40;
      }

      while (v68 < *(v27 + 50));
    }

    heap_Free(*(a1 + 8), v66);
    *(v27 + 40) = 0;
  }

  return v59;
}

void *stat_stress_freeCandidatePhons(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v4 = result;
    v5 = *(a2 + 8);
    if (*(a2 + 8))
    {
      v6 = 0;
      v7 = 0;
      v8 = v3;
      do
      {
        if (v8)
        {
          if (*(v8 + v6))
          {
            heap_Free(v4[1], *(v8 + v6));
            v3 = *a2;
            *(v3 + v6) = 0;
            v5 = *(a2 + 8);
            v8 = v3;
          }
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < v5);
    }

    result = heap_Free(v4[1], v3);
    *a2 = 0;
  }

  return result;
}

BOOL isPunc(const char *a1)
{
  if (strlen(a1) > 1)
  {
    return 0;
  }

  v3 = *a1;
  result = 1;
  if ((v3 - 33) > 0x3E || ((1 << (v3 - 33)) & 0x740000007E003FCFLL) == 0)
  {
    return v3 == 124;
  }

  return result;
}

BOOL isERphon(unsigned __int8 *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = v4;
  if (v4 >= 2 && (v4 >= 5 && !strcmp(&__s[v4 - 5], "%~r") || !strcmp(&__s[v5 - 2], "%r")))
  {
    v7 = *__s;
    v6 = v7 != 97 && v7 != 36;
  }

  else
  {
    v6 = 0;
  }

  v10 = 0;
  utf8_Utf8CharTo16bit(a1, &v10);
  return v10 != 20799 && v6;
}

uint64_t fe_stress_igtr_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_1[a3];
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

uint64_t fe_stress_feat_character(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, _BYTE *a7)
{
  v10 = *a2;
  v11 = a3;
  v55 = *a2 + (a3 << 6);
  v12 = *(v55 + 40);
  v54 = a4;
  v56 = strlen(v12[5 * a4]);
  if (a3)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v10 + (v13 << 6);
      v16 = *(v15 + 48);
      if (*(v15 + 48))
      {
        v17 = *(v15 + 40);
        do
        {
          v18 = *v17;
          v17 += 5;
          v14 += strlen(v18);
          --v16;
        }

        while (v16);
      }

      ++v13;
    }

    while (v13 != v11);
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v19 = v54;
    do
    {
      v20 = *v12;
      v12 += 5;
      v14 += strlen(v20);
      --v19;
    }

    while (v19);
  }

  v21 = *(a2 + 4);
  v22 = a3 + 1;
  if (v21 <= (a3 + 1))
  {
    v23 = 0;
  }

  else
  {
    v23 = 0;
    v24 = v22;
    do
    {
      v25 = v10 + (v24 << 6);
      v26 = *(v25 + 48);
      if (*(v25 + 48))
      {
        v27 = *(v25 + 40);
        do
        {
          v28 = *v27;
          v27 += 5;
          v23 += strlen(v28);
          --v26;
        }

        while (v26);
      }

      ++v24;
    }

    while (v21 != v24);
  }

  v29 = *(v55 + 48);
  if (v29 <= (a4 + 1))
  {
    v32 = a1;
  }

  else
  {
    v30 = (*(v55 + 40) + 40 * (a4 + 1));
    v31 = (a4 + 1) + 1;
    v32 = a1;
    do
    {
      v33 = *v30;
      v30 += 5;
      v23 += strlen(v33);
      v34 = v29 == v31++;
    }

    while (!v34);
  }

  v35 = heap_Calloc(*(v32 + 8), 1, (v56 + v14 + v23 + 1));
  if (!v35)
  {
    log_OutPublic(*(v32 + 32), "FE_PHRASING", 37000, 0, v36, v37, v38, v39, v51);
    return 2315264010;
  }

  v40 = v35;
  v41 = *(a2 + 4);
  v42 = *a2;
  if (*(a2 + 4))
  {
    v43 = 0;
    do
    {
      if (*(v42 + (v43 << 6) + 48))
      {
        v44 = 0;
        v45 = 0;
        do
        {
          strcat(v40, *(*(v42 + (v43 << 6) + 40) + v44));
          ++v45;
          v42 = *a2;
          v44 += 40;
        }

        while (v45 < *(*a2 + (v43 << 6) + 48));
        v41 = *(a2 + 4);
      }

      ++v43;
    }

    while (v43 < v41);
  }

  v46 = v42 + (v11 << 6);
  if (*(v46 + 48) <= a4 || strlen(*(*(v46 + 40) + 40 * v54)) <= a5)
  {
    goto LABEL_47;
  }

  NextUtf8Offset = v14 + a5;
  if (a6 < 0)
  {
    if (!NextUtf8Offset)
    {
      goto LABEL_47;
    }

    do
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v40, NextUtf8Offset);
      NextUtf8Offset = PreviousUtf8Offset;
      v34 = ~a6 == 0;
      LOWORD(a6) = a6 + 1;
    }

    while (!v34 && PreviousUtf8Offset);
    if (a6)
    {
      goto LABEL_47;
    }
  }

  else if (a6)
  {
    while (NextUtf8Offset != strlen(v40))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(v40, NextUtf8Offset);
      v48 = a6--;
      if (v48 <= 1)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_47;
  }

LABEL_46:
  if ((utf8_getUTF8Char(v40, NextUtf8Offset, a7) & 0x80000000) != 0)
  {
LABEL_47:
    *a7 = 61;
  }

  heap_Free(*(v32 + 8), v40);
  return 0;
}

uint64_t fe_stress_igtr_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, char *a6)
{
  v12 = -1;
  if (!fe_stress_igtr_isFeatureRequired(a2, a3, a4, &v12))
  {
    return 0;
  }

  if (*a6)
  {
    v9 = v12;
    if (strlen(a6) < 0x41)
    {
      v10 = 0;
    }

    else
    {
      v10 = hlp_resizeFeature(a1, (a5 + 8 * v12), a6);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }
    }

    strcpy(*(a5 + 8 * v9), a6);
  }

  else
  {
    v10 = 0;
    **(a5 + 8 * v12) = 61;
  }

  return v10;
}

const char *fe_stress_feat_phon(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 54);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 54);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 10);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 54))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 56) + 32 * v5);
  }
}

const char *fe_stress_feat_tone(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 54);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 54);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 10);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 54))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 56) + 32 * v5 + 8);
  }
}

const char *fe_stress_feat_word(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 48);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 48);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 16);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 48))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 40) + 40 * v5 + 24);
  }
}

const char *fe_stress_feat_pos(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 48);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 48);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 16);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  result = "=";
  if (v5 < *(v9 + 48))
  {
    v11 = *(*(v9 + 40) + 40 * v5 + 8);
    if (v11)
    {
      return v11;
    }
  }

  return result;
}

uint64_t last_POSNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, unsigned int a5)
{
  if (!result)
  {
    return result;
  }

  v6 = 0;
  for (i = *(*(a2 + 1064) + 184 * a3 + 48) + 1; *(i - 1) == 45; ++i)
  {
    v6 = i;
LABEL_7:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(*(a2 + 1064) + 184 * a3 + 48);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a5;
  while (strcmp(*a4, v8))
  {
    ++a4;
    if (!--v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t first_POSNN(uint64_t a1, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  LODWORD(v5) = a5;
  v10 = *(a1 + 8);
  v11 = strlen(*(*(a2 + 1064) + 184 * a3 + 48));
  v12 = heap_Alloc(v10, (v11 + 1));
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  for (i = *(*(a2 + 1064) + 184 * a3 + 48); ; ++i)
  {
    v16 = *i;
    if (!*i || v16 == 45)
    {
      break;
    }

    v17 = v14++;
    *(v12 + v17) = v16;
  }

  *(v12 + v14) = 0;
  if (v5)
  {
    v5 = v5;
    while (strcmp(v13, *a4))
    {
      ++a4;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_10:
    v18 = 0;
  }

  heap_Free(*(a1 + 8), v13);
  return v18;
}

uint64_t has_POSNN(uint64_t a1, uint64_t a2, unsigned int a3, const char **a4, unsigned int a5)
{
  result = 0;
  if (a1 && a5)
  {
    v8 = *(*(a2 + 1064) + 184 * a3 + 48);
    v9 = a5;
    while (!strstr(v8, *a4))
    {
      ++a4;
      if (!--v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t first_characterNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  if (result)
  {
    LODWORD(v5) = a5;
    utf8_getUTF8Char(*(*(a2 + 1064) + 184 * a3 + 48), 0, __s2);
    if (v5)
    {
      v5 = v5;
      while (strcmp(*a4, __s2))
      {
        ++a4;
        if (!--v5)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t last_characterNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  v15 = 0;
  *__s2 = 0;
  if (result)
  {
    LODWORD(v5) = a5;
    v7 = *(*(a2 + 1064) + 184 * a3 + 48);
    v8 = strlen(v7);
    v9 = v8 - utf8_GetCurrentUtf8Offset(v7, v8 - 1);
    v10 = strlen(v7);
    CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v7, v10 - 1);
    if (v9 >= Utf8_LengthInBytes(&v7[CurrentUtf8Offset], 1))
    {
      v12 = strlen(v7);
      v13 = utf8_GetCurrentUtf8Offset(v7, v12 - 1);
      utf8_getUTF8Char(v7, v13, __s2);
    }

    if (v5)
    {
      v5 = v5;
      while (strcmp(*a4, __s2))
      {
        ++a4;
        if (!--v5)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t addPhrasingRuleNN(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = 1;
  for (i = a3; *i == 94; ++i)
  {
    ++v6;
LABEL_6:
    ;
  }

  if (*i)
  {
    goto LABEL_6;
  }

  v8 = heap_Calloc(*(a1 + 8), v6, 40);
  v9 = *a2 + 16 * *(a2 + 8);
  *v9 = v8;
  if (!v8)
  {
    return 2315264010;
  }

  *(v9 + 8) = v6;
  result = parseOneRuleNN(a1, v8, v6, a3);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    ++*(a2 + 8);
  }

  return result;
}

uint64_t parseOneRuleNN(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  for (i = 0; ; ++i)
  {
    v7 = &a4[i];
    if (*v7 == 45 && v7[1] == 45 && v7[2] == 62)
    {
      break;
    }
  }

  *v7 = 0;
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  v9 = a3;
  while (2)
  {
    v10 = a4 - 1;
    do
    {
      v12 = *++v10;
      v11 = v12;
    }

    while (v12 == 32);
    v13 = v10;
    while (v11 != 95)
    {
      v14 = *++v13;
      v11 = v14;
    }

    *v13 = 0;
    v15 = a2 + 40 * v8;
    *(v15 + 8) = atoi(v10);
    do
    {
      v17 = *++v13;
      v16 = v17;
    }

    while (v17 == 32);
    v18 = v13;
    while (v16 != 40)
    {
      v19 = *++v18;
      v16 = v19;
    }

    *v18 = 0;
    if (!strcmp(v13, "last-pos"))
    {
      *v15 = last_POSNN;
    }

    if (!strcmp(v13, "first-pos"))
    {
      *v15 = first_POSNN;
    }

    if (!strcmp(v13, "has-pos"))
    {
      *v15 = has_POSNN;
    }

    if (!strcmp(v13, "first-character"))
    {
      *v15 = first_characterNN;
    }

    if (!strcmp(v13, "last-character"))
    {
      *v15 = last_characterNN;
    }

    *(v15 + 32) = 1;
    do
    {
      v21 = *++v18;
      v20 = v21;
    }

    while (v21 == 32);
    v22 = 0;
    v23 = 1;
    while (v20 == 124)
    {
      *(v15 + 32) = ++v23;
LABEL_35:
      v20 = v18[++v22];
    }

    if (v20 != 41)
    {
      goto LABEL_35;
    }

    v18[v22] = 0;
    v24 = &v18[v22 + 1];
    v25 = heap_Alloc(*(a1 + 8), (v22 + 2));
    *(v15 + 16) = v25;
    if (v25)
    {
      strcpy(v25, v18);
      v26 = heap_Alloc(*(a1 + 8), 8 * *(v15 + 32));
      *(v15 + 24) = v26;
      if (v26)
      {
        *v26 = *(v15 + 16);
        if (*(v15 + 32) >= 2u)
        {
          v27 = 1;
          do
          {
            v28 = (*(v15 + 24) + 8 * v27);
            for (j = *(v28 - 1); ; j = v30 + 1)
            {
              *v28 = j;
              v28 = (*(v15 + 24) + 8 * v27);
              v30 = *v28;
              if (**v28 == 124)
              {
                break;
              }
            }

            *v28 = v30 + 1;
            *v30 = 0;
            ++v27;
          }

          while (v27 < *(v15 + 32));
        }

        while (1)
        {
          v31 = *v24;
          if (!*v24 || v31 == 94)
          {
            break;
          }

          ++v24;
        }

        if (v31 == 94)
        {
          a4 = v24 + 1;
        }

        else
        {
          a4 = v24;
        }

        if (++v8 == v9)
        {
          return 0;
        }

        continue;
      }
    }

    return 2315264010;
  }
}

uint64_t releasePhrasingRuleStructNN(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v5 = *(a2 + 10);
    if (*(a2 + 10))
    {
      v6 = 0;
      do
      {
        v7 = v3 + 16 * v6;
        v8 = *v7;
        if (*v7)
        {
          if (*(v7 + 8))
          {
            v9 = 0;
            v10 = 0;
            do
            {
              if (*(*v7 + v9 + 16))
              {
                heap_Free(*(a1 + 8), *(*v7 + v9 + 16));
                v3 = *a2;
              }

              if (*(*(v3 + 16 * v6) + v9 + 24))
              {
                heap_Free(*(a1 + 8), *(*(v3 + 16 * v6) + v9 + 24));
                v3 = *a2;
              }

              ++v10;
              v7 = v3 + 16 * v6;
              v9 += 40;
            }

            while (v10 < *(v7 + 8));
            v8 = *v7;
          }

          heap_Free(*(a1 + 8), v8);
          v3 = *a2;
          *(*a2 + 16 * v6) = 0;
          v5 = *(a2 + 10);
        }

        ++v6;
      }

      while (v6 < v5);
    }

    heap_Free(*(a1 + 8), v3);
  }

  *(a2 + 10) = 0;
  *a2 = 0;
  return 0;
}

uint64_t com_IncludeCRF(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  __s1 = 0;
  CfgParamVal = com_mosynt_GetCfgParamVal(a1, a2, a3, "statbnd_include", "NO", &__s1);
  if ((CfgParamVal & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = __s1;
    v7 = !strcmp(__s1, "CRF") || strcmp(v6, "crf") == 0;
  }

  *a4 = v7;
  return CfgParamVal;
}

uint64_t pandpCrfInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v107[4] = *MEMORY[0x1E69E9840];
  *(a11 + 224) = 0;
  v17 = (a11 + 224);
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v18 = hlp_BrokerString(a5, &v91);
  if (v18 < 0)
  {
    v30 = v18;
    v23 = a5;
    log_OutText(*(a5 + 32), "FE_PHRASING", 0, 0, "Could not assemble broker string for CRF phrasing model %s", v19, v20, v21, "crfphrase");
    goto LABEL_7;
  }

  v22 = a1;
  v23 = a5;
  v24 = v22;
  Only_ReferenceCnt = crf_Init_ReadOnly_ReferenceCnt(v22, a2, a3, a4, v17, 2, &v91, "CRPH", 1031, 0, 0);
  if (Only_ReferenceCnt < 0)
  {
    v30 = Only_ReferenceCnt;
    log_OutText(*(v23 + 32), "FE_PHRASING", 5, 0, "no CRF Phrasing model found", v26, v27, v28, &v91);
LABEL_7:
    v31 = v30 | 0x8A002000;
    if (*v17)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(v23, a6, *v17);
      *v17 = 0;
    }

    goto LABEL_82;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v88 = 0;
  __c = 0;
  v85 = 0;
  *v86 = 0;
  v107[0] = 0;
  v89 = 0;
  v90 = 0;
  if ((com_mosynt_GetCfgParamVal(a9, a10, a7, "fephrase_max_rule", "1024", &v85) & 0x80000000) != 0)
  {
    v29 = 1024;
  }

  else
  {
    v29 = atoi(v85);
  }

  v32 = a11;
  v33 = v23;
  v34 = heap_Calloc(*(v23 + 8), 1, v29);
  if (v34)
  {
    v39 = v34;
    v43 = hlp_BrokerString(v23, &v91);
    v44 = *(v23 + 32);
    if (v43 < 0)
    {
      log_OutText(v44, "FE_PHRASING", 0, 0, "Could not assemble broker string for SP rules %s", v40, v41, v42, "sprules");
      v65 = v43 | 0x8A002000;
    }

    else
    {
      log_OutText(v44, "FE_PHRASING", 5, 0, "looking for SP rules %s at %s", v40, v41, v42, "sprules");
      v45 = ssftriff_reader_ObjOpen(v24, a2, 2, &v91, "SPDT", 1031, &v89);
      if (v45 < 0)
      {
        v65 = v45;
        log_OutText(*(v23 + 32), "FE_PHRASING", 0, 0, "no sp rules", v47, v48, v49, v83);
        *(a11 + 242) = 0;
        *(a11 + 232) = 0;
      }

      else
      {
        while (1)
        {
          v50 = ssftriff_reader_OpenChunk(v89, &__c, &v86[1], v107, v46, v47, v48, v49);
          if (v50 < 0)
          {
            break;
          }

          if (!(__c ^ 0x52545344 | v88))
          {
            ChunkData = ssftriff_reader_GetChunkData(v89, v86[1], &v90, v53, v46, v47, v48, v49);
            if (ChunkData < 0)
            {
              goto LABEL_41;
            }

            v86[0] = 0;
            ssftriff_reader_ReadStringZ(v89, v90, v86[1], 0, 0, v86);
            ssftriff_reader_ReadStringZ(v89, v90, v86[1], 0, v39, v86);
            v55 = strchr(v39, 10);
            if (v55)
            {
              *v55 = 0;
            }

            v56 = strchr(v39, 58);
            v57 = v56 ? atoi(v56 + 2) : 0;
            v58 = v86[0];
            ChunkData = initPhrasingRuleStruct(v33, a11 + 232, v57);
            if (ChunkData < 0)
            {
              goto LABEL_41;
            }

            if (v57)
            {
              v59 = v57;
              v60 = 0;
              while (1)
              {
                do
                {
                  v86[0] = 0;
                  ssftriff_reader_ReadStringZ(v89, v90, v86[1], v58, 0, v86);
                  ssftriff_reader_ReadStringZ(v89, v90, v86[1], v58, v39, v86);
                  v58 += v86[0];
                  v61 = v39 + 1;
                  for (i = v39; ; ++i)
                  {
                    v63 = *i;
                    if (v63 > 0x23)
                    {
                      goto LABEL_33;
                    }

                    if (((1 << v63) & 0x100000200) == 0)
                    {
                      break;
                    }

                    ++v61;
                  }
                }

                while (((1 << v63) & 0x800002401) != 0);
LABEL_33:
                while (v63)
                {
                  if (v63 == 35)
                  {
                    *(v61 - 1) = 0;
                    break;
                  }

                  v64 = *v61++;
                  LOBYTE(v63) = v64;
                }

                ChunkData = addPhrasingRule(v33, a11 + 232, v39);
                if (ChunkData < 0)
                {
                  break;
                }

                if (++v60 >= v59)
                {
                  goto LABEL_15;
                }
              }

LABEL_41:
              v65 = ChunkData;
              goto LABEL_42;
            }
          }

LABEL_15:
          ChunkData = ssftriff_reader_CloseChunk(v89);
          if (ChunkData < 0)
          {
            goto LABEL_41;
          }
        }

        if ((v50 & 0x1FFF) == 0x14)
        {
          v65 = 0;
        }

        else
        {
          v65 = v50;
        }

LABEL_42:
        v32 = a11;
      }
    }

    if (v89)
    {
      v66 = ssftriff_reader_ObjClose(v89, v51, v52, v53, v46, v47, v48, v49);
      if (v66 < 0 && v65 > -1)
      {
        v65 = v66;
      }
    }

    heap_Free(*(v33 + 8), v39);
    if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    log_OutPublic(*(v23 + 32), "FE_PHRASING", 37000, 0, v35, v36, v37, v38, v82);
  }

  releasePhrasingRuleStruct(v33, v32 + 232);
LABEL_52:
  v68 = 0;
  v89 = 0;
  v90 = 0;
  LOWORD(v85) = -1;
  LOBYTE(__c) = 0;
  *(v32 + 250) = 0u;
  *(v32 + 266) = 0u;
  *(v32 + 282) = 0u;
  *(v32 + 298) = 0u;
  *(v32 + 314) = 0u;
  v107[0] = "JOY_KEYS";
  v107[1] = "DID_KEYS";
  v107[2] = "NEU_KEYS";
  v107[3] = "COM_KEYS";
  while (1)
  {
    strcpy(&v91, "statbnd_");
    v69 = v107[v68];
    __strcat_chk();
    LOWORD(v85) = 0;
    if (((*(a7 + 96))(a9, a10, "fecfg", &v91, &v90, &v85, &__c) & 0x80000000) != 0 || !v85)
    {
      goto LABEL_80;
    }

    v70 = *v90;
    v71 = strchr(*v90, __c);
    if (v71)
    {
      *v71 = 0;
      v70 = *v90;
    }

    v72 = *v70;
    if (*v70)
    {
      break;
    }

    v73 = 0;
LABEL_78:
    if (++v68 == 4)
    {
      *(a11 + 248) = v73;
LABEL_80:
      v31 = 0;
      goto LABEL_82;
    }
  }

  v73 = 0;
  while (1)
  {
    for (j = 0; v72; v72 = v70[++j])
    {
      if (v72 == 44)
      {
        break;
      }
    }

    strcpy(&v91, "statbnd_");
    __strncat_chk();
    LOWORD(v85) = 0;
    v75 = (*(a7 + 96))(a9, a10, "fecfg", &v91, &v89, &v85, &__c);
    if ((v75 & 0x80000000) != 0)
    {
      break;
    }

    if (v85)
    {
      v76 = *v89;
      v77 = strchr(*v89, __c);
      if (v77)
      {
        *v77 = 0;
        v76 = *v89;
      }

      v78 = atoi(v76);
      v79 = v32 + 250;
      if (v68)
      {
        v79 = v32 + 270;
        if (v68 != 1)
        {
          v79 = v32 + 310;
        }

        if (v68 == 2)
        {
          v79 = v32 + 290;
        }
      }

      *(v79 + 2 * v73) = v78;
    }

    if (v70[j] == 44)
    {
      v70 += j + 1;
    }

    else
    {
      v70 += j;
    }

    ++v73;
    v72 = *v70;
    if (!*v70)
    {
      goto LABEL_78;
    }
  }

  v31 = v75;
LABEL_82:
  v80 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t pandpCrfDeinit(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(a3 + 224);
    if (v5)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(result, a2, v5);
      *(a3 + 224) = 0;
    }

    return releasePhrasingRuleStruct(v4, a3 + 232);
  }

  return result;
}

uint64_t crfWeakPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v157 = 0;
  v156 = 0;
  v155 = 0;
  if ((com_mosynt_GetCfgParamVal(a2, a3, a1, "fephrase_max_char", "6", &v155) & 0x80000000) != 0)
  {
    v15 = 6;
  }

  else
  {
    v15 = atoi(v155);
  }

  if ((com_mosynt_GetCfgParamVal(a2, a3, a1, "fephrase_max_pos", "6", &v155) & 0x80000000) != 0)
  {
    v16 = 6;
  }

  else
  {
    v16 = atoi(v155);
  }

  v147 = a6;
  if ((com_mosynt_GetCfgParamVal(a2, a3, a1, "fephrase_max_obs", "1024", &v155) & 0x80000000) != 0)
  {
    v17 = 1024;
  }

  else
  {
    v17 = atoi(v155);
  }

  v148 = v17;
  v18 = heap_Calloc(*(a4 + 8), 1, v15);
  v19 = heap_Calloc(*(a4 + 8), 1, v15);
  v20 = heap_Calloc(*(a4 + 8), 2, v15);
  v21 = heap_Calloc(*(a4 + 8), 1, v15);
  v22 = heap_Calloc(*(a4 + 8), 1, v15);
  v23 = v15;
  v24 = v22;
  v25 = heap_Calloc(*(a4 + 8), 2, v23);
  v149 = heap_Calloc(*(a4 + 8), 1, v16);
  v151 = heap_Calloc(*(a4 + 8), 1, v16);
  if (!v18 || !v19 || !v20 || !v21 || !v24 || !v25 || !v149 || !v151)
  {
    goto LABEL_102;
  }

  v143 = v18;
  *v18 = 0;
  *v19 = 0;
  *v20 = 0;
  *v21 = 0;
  *v24 = 0;
  *v25 = 0;
  if (a5 | a7)
  {
    log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Parameter errors: %s %s\n", v27, v28, v29, "level0");
  }

  v30 = v147;
  v31 = heap_Calloc(*(a4 + 8), *(v147 + 8), 8);
  if (v31 && (v32 = v31, v138 = v19, (v33 = heap_Calloc(*(a4 + 8), *(v147 + 8), 8)) != 0) && (v34 = v33, (v35 = heap_Calloc(*(a4 + 8), *(v147 + 8), 4)) != 0))
  {
    v36 = v35;
    v142 = v20;
    v137 = v21;
    v135 = v24;
    if (*(v147 + 8))
    {
      v132 = v32;
      v37 = 0;
      v128 = 0;
      v144 = v25;
      while (1)
      {
        v153 = 0;
        __lasts = 0;
        v152 = 0;
        v38 = strlen(*(*v30 + 224 * v37 + 8));
        v145 = heap_Alloc(*(a4 + 8), (v38 + 2));
        if (!v145)
        {
          goto LABEL_102;
        }

        extractAndConvertTones(a4, *(*v30 + 224 * v37 + 8), v145, v39, v26, v27, v28, v29);
        v40 = strlen(v145);
        if (v40)
        {
          v133 = v145[v40 - 1];
          v134 = *v145;
        }

        else
        {
          v133 = 48;
          v134 = 48;
        }

        v25 = v144;
        v146 = v37;
        v41 = *(*(*v30 + 224 * v37 + 16) + 8);
        if (!strcmp(v41, "{T:comma}"))
        {
          *v41 = 103;
        }

        __dst = heap_Alloc(*(a4 + 8), v148);
        if (!__dst || (v46 = heap_Alloc(*(a4 + 8), v148)) == 0)
        {
LABEL_104:
          v105 = 2315264010;
          log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v42, v43, v44, v45, v126);
          LODWORD(v107) = *(v30 + 8);
LABEL_118:
          v20 = v142;
          v32 = v132;
          goto LABEL_119;
        }

        v47 = v46;
        v48 = *(*v30 + 224 * v37 + 16);
        if (**v48 == 45 && !(*v48)[1])
        {
          v70 = a8;
          if (*(*(a8 + 224) + 32))
          {
            v71 = __dst;
            sprintf(__dst, "%s %d %s %s %s %s %s %s %s %s %s %s %s %s %d %d %s %s %d", "-", 1, v48[1], v145, "-", "-", "-", "-", "NULL", "NULL", "-", "-", v48[1], v48[1], 1, 1, v145, v145, 1);
            v72 = strtok_r(__dst, " ", &v152);
            *v47 = 0;
            v20 = v142;
            if (v72)
            {
              v73 = v72;
              v74 = 0;
              do
              {
                v75 = *(*(*(a8 + 224) + 32) + 8);
                if (v75[v74] == 49)
                {
                  v76 = strlen(v75) - 1;
                  *&v47[strlen(v47)] = 32;
                  strcat(v47, v73);
                  v77 = v76 == v74;
                  v20 = v142;
                  if (!v77)
                  {
                    *&v47[strlen(v47)] = 32;
                  }
                }

                ++v74;
                v73 = strtok_r(0, " ", &v152);
              }

              while (v73);
            }

            strcpy(__dst, v47);
            v37 = v146;
          }

          else
          {
            v71 = __dst;
            strcpy(__dst, "- 1 ");
            v99 = strcat(__dst, *(*(*v30 + 224 * v37 + 16) + 8));
            *&__dst[strlen(v99)] = 32;
            v100 = strcat(__dst, v145);
            strcpy(&__dst[strlen(v100)], " 1 - - NULL NULL");
            v20 = v142;
          }

          v101 = strlen(v71);
          v102 = heap_Alloc(*(a4 + 8), (v101 + 1));
          v132[v37] = v102;
          if (!v102)
          {
            goto LABEL_102;
          }

          strcpy(v102, v71);
          v140 = v145;
          goto LABEL_96;
        }

        v49 = heap_Alloc(*(a4 + 8), v148);
        if (!v49)
        {
          goto LABEL_104;
        }

        v50 = v49;
        v51 = strlen(*(*(*v30 + 224 * v146 + 16) + 8));
        v140 = heap_Alloc(*(a4 + 8), (v51 + 2));
        if (!v140)
        {
          goto LABEL_104;
        }

        *v50 = 0;
        strcpy(v140, *(*(*v30 + 224 * v146 + 16) + 8));
        v52 = strtok_r(**(*v30 + 224 * v146 + 16), "-", &__lasts);
        v53 = strtok_r(*(*(*v30 + 224 * v146 + 16) + 8), "-", &v153);
        v54 = strlen(v52);
        v141 = heap_Alloc(*(a4 + 8), (v54 + 2));
        if (!v141)
        {
          goto LABEL_104;
        }

        v55 = heap_Alloc(*(a4 + 8), v148);
        if (!v55)
        {
          goto LABEL_104;
        }

        v56 = v55;
        strcpy(v141, v52);
        if (v53)
        {
          strcpy(v149, v53);
        }

        else
        {
          strcpy(v149, "NULL");
        }

        v57 = strlen(v141);
        v130 = Utf8_LengthInUtf8chars(v141, v57);
        if (v52)
        {
          v58 = 0;
          do
          {
            strcat(v50, v52);
            strcpy(v56, v52);
            v52 = strtok_r(0, "-", &__lasts);
            if (v53)
            {
              strcpy(v151, v53);
            }

            else
            {
              strcpy(v151, "NULL");
            }

            if (v153)
            {
              v53 = strtok_r(0, "-", &v153);
            }

            ++v58;
          }

          while (v52);
          v131 = v58;
        }

        else
        {
          v131 = 0;
        }

        v59 = v144;
        v60 = strlen(v56);
        v129 = Utf8_LengthInUtf8chars(v56, v60);
        strcpy(**(*v147 + 224 * v146 + 16), v50);
        v61 = strlen(v50);
        v62 = Utf8_LengthInUtf8chars(v50, v61);
        utf8_getUTF8Char(v50, 0, v143);
        v63 = strlen(v50);
        CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v50, v63 - 1);
        utf8_getUTF8Char(v50, CurrentUtf8Offset, v137);
        v65 = v62;
        v136 = v62;
        if (v62 >= 3u)
        {
          break;
        }

        if (v62 == 2)
        {
          v69 = v142;
          strcpy(v142, v50);
          strcpy(v144, v50);
          goto LABEL_56;
        }

        v69 = v142;
        strcpy(v142, "NULL");
        strcpy(v144, "NULL");
LABEL_66:
        v30 = v147;
        v70 = a8;
        if (*(*(a8 + 224) + 32))
        {
          sprintf(__dst, "%s %d %s %s %s %s %s %s %s %s %s %s %s %s %d %d %c %c %d", v50, v65, v140, v145, v143, v137, v138, v135, v69, v59, v141, v56, v149, v151, v130, v129, v134, v133, v131);
          v78 = strtok_r(__dst, " ", &v152);
          *v47 = 0;
          if (v78)
          {
            v79 = v78;
            v80 = 0;
            do
            {
              v81 = *(*(*(v70 + 224) + 32) + 8);
              if (v81[v80] == 49)
              {
                v82 = strlen(v81) - 1;
                *&v47[strlen(v47)] = 32;
                strcat(v47, v79);
                v77 = v82 == v80;
                v70 = a8;
                if (!v77)
                {
                  *&v47[strlen(v47)] = 32;
                }
              }

              ++v80;
              v79 = strtok_r(0, " ", &v152);
            }

            while (v79);
          }

          v83 = __dst;
          strcpy(__dst, v47);
        }

        else
        {
          v127 = v59;
          v83 = __dst;
          sprintf(__dst, "%s %d %s %s %d %s %s %s %s", v50, v65, v140, v145, v131, v143, v137, v69, v127);
        }

        log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Crf Phrasing Obversation: %s", v84, v85, v86, v83);
        v87 = strlen(v83);
        v88 = heap_Alloc(*(a4 + 8), (v87 + 1));
        v132[v146] = v88;
        v20 = v142;
        if (!v88)
        {
          goto LABEL_102;
        }

        strcpy(v88, v83);
        v89 = *(*v147 + 224 * v146 + 136);
        if (v89)
        {
          v90 = *v89;
          if (v90 == 83)
          {
            v91 = v136;
            if (v89[1])
            {
              goto LABEL_90;
            }

            v92 = v146;
            *(v36 + 4 * v146) = 1;
            v104 = heap_Calloc(*(a4 + 8), 1, 8);
            *(v34 + 8 * v146) = v104;
            if (!v104)
            {
              goto LABEL_102;
            }

            **(v34 + 8 * v146) = heap_Calloc(*(a4 + 8), 2, 1);
            v94 = **(v34 + 8 * v146);
            if (!v94)
            {
              goto LABEL_102;
            }

            v95 = 83;
LABEL_101:
            *v94 = v95;
            v98 = v136;
          }

          else
          {
            v91 = v136;
            if (v90 == 69)
            {
              if (v89[1])
              {
                goto LABEL_90;
              }

              v92 = v146;
              *(v36 + 4 * v146) = 1;
              v96 = heap_Calloc(*(a4 + 8), 1, 8);
              *(v34 + 8 * v146) = v96;
              if (!v96)
              {
                goto LABEL_102;
              }

              **(v34 + 8 * v146) = heap_Calloc(*(a4 + 8), 2, 1);
              v97 = **(v34 + 8 * v146);
              if (!v97)
              {
                goto LABEL_102;
              }

              v98 = v136 + v128;
              *v97 = 69;
            }

            else
            {
              if (v90 == 66 && !v89[1])
              {
                v92 = v146;
                *(v36 + 4 * v146) = 1;
                v93 = heap_Calloc(*(a4 + 8), 1, 8);
                *(v34 + 8 * v146) = v93;
                if (!v93)
                {
                  goto LABEL_102;
                }

                **(v34 + 8 * v146) = heap_Calloc(*(a4 + 8), 2, 1);
                v94 = **(v34 + 8 * v146);
                if (!v94)
                {
                  goto LABEL_102;
                }

                v95 = 66;
                goto LABEL_101;
              }

LABEL_90:
              v98 = v91 + v128;
              v92 = v146;
              *(v36 + 4 * v146) = 0;
              *(v34 + 8 * v146) = 0;
            }
          }

          *(*v147 + 224 * v92 + 144) = v98;
          v128 = v98;
          goto LABEL_92;
        }

        *(v36 + 4 * v146) = 0;
        *(v34 + 8 * v146) = 0;
LABEL_92:
        heap_Free(*(a4 + 8), v145);
        heap_Free(*(a4 + 8), v50);
        heap_Free(*(a4 + 8), v141);
        heap_Free(*(a4 + 8), v56);
        heap_Free(*(a4 + 8), __dst);
        heap_Free(*(a4 + 8), v47);
LABEL_96:
        v25 = v144;
        heap_Free(*(a4 + 8), v140);
        v37 = v146 + 1;
        v103 = *(v30 + 8);
        if (v146 + 1 >= v103)
        {
          v32 = v132;
          goto LABEL_106;
        }
      }

      v66 = strlen(v143);
      utf8_getUTF8Char(v50, v66, v138);
      v67 = strlen(v50);
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v50, v67 - 1);
      utf8_getUTF8Char(v50, PreviousUtf8Offset, v135);
      v69 = strcpy(v142, v143);
      strcat(v69, v138);
      v59 = v144;
      strcpy(v144, v135);
      strcat(v144, v137);
LABEL_56:
      v65 = v136;
      goto LABEL_66;
    }

    LODWORD(v103) = 0;
    v70 = a8;
LABEL_106:
    v105 = crf_Process_Constrained(*(v70 + 224), v32, v103, &v157, &v156, v34, v36);
    LODWORD(v107) = *(v30 + 8);
    if ((v105 & 0x80000000) != 0)
    {
LABEL_119:
      if (v107)
      {
        v116 = 0;
        do
        {
          v117 = v32[v116];
          if (v117)
          {
            heap_Free(*(a4 + 8), v117);
            LODWORD(v107) = *(v30 + 8);
          }

          ++v116;
        }

        while (v116 < v107);
      }
    }

    else if (*(v30 + 8))
    {
      v132 = v32;
      v111 = 0;
      v112 = v157;
      v113 = 73;
      while (1)
      {
        log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "returned labels: %s\n", v108, v109, v110, *(v112 + 8 * v111));
        v112 = v157;
        v114 = **(v157 + 8 * v111);
        v115 = 1;
        if (v114 <= 0x4C)
        {
          break;
        }

        if (v114 == 77)
        {
          goto LABEL_116;
        }

        if (v114 == 83)
        {
          goto LABEL_115;
        }

LABEL_117:
        ++v111;
        v107 = *(v30 + 8);
        v113 += 224;
        if (v111 >= v107)
        {
          goto LABEL_118;
        }
      }

      if (v114 != 66)
      {
        if (v114 != 69)
        {
          goto LABEL_117;
        }

LABEL_115:
        v115 = 3;
      }

LABEL_116:
      *(*v30 + v113) = v115;
      goto LABEL_117;
    }

    heap_Free(*(a4 + 8), v32);
    v118 = *(v30 + 8);
    if (*(v30 + 8))
    {
      v119 = 0;
      do
      {
        v120 = *(v34 + 8 * v119);
        if (v120)
        {
          if (*(v36 + 4 * v119))
          {
            v121 = 0;
            do
            {
              heap_Free(*(a4 + 8), *(*(v34 + 8 * v119) + 8 * v121++));
            }

            while (*(v36 + 4 * v119) > v121);
            v120 = *(v34 + 8 * v119);
          }

          heap_Free(*(a4 + 8), v120);
          v118 = *(v30 + 8);
        }

        ++v119;
      }

      while (v119 < v118);
    }

    heap_Free(*(a4 + 8), v34);
    heap_Free(*(a4 + 8), v36);
    v122 = v157;
    if (v157)
    {
      v123 = v156;
      if (v156)
      {
        v124 = 0;
        do
        {
          v125 = *(v157 + 8 * v124);
          if (v125)
          {
            heap_Free(*(a4 + 8), v125);
            v123 = v156;
          }

          ++v124;
        }

        while (v123 > v124);
        v122 = v157;
      }

      heap_Free(*(a4 + 8), v122);
    }

    heap_Free(*(a4 + 8), v143);
    heap_Free(*(a4 + 8), v138);
    heap_Free(*(a4 + 8), v20);
    heap_Free(*(a4 + 8), v137);
    heap_Free(*(a4 + 8), v135);
    heap_Free(*(a4 + 8), v25);
    heap_Free(*(a4 + 8), v149);
    heap_Free(*(a4 + 8), v151);
  }

  else
  {
LABEL_102:
    v105 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v26, v27, v28, v29, v126);
  }

  return v105;
}

uint64_t extractAndConvertTones(uint64_t a1, _BYTE *a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v17 = 2315264006;
    v18 = *(a1 + 32);
    v19 = "szSourcePron";
    v20 = "invalid input parameter: %s\n";
LABEL_23:
    log_OutText(v18, "FE_PHRASING", 0, 0, v20, a6, a7, a8, v19);
    return v17;
  }

  if (!__s)
  {
    v17 = 2315264006;
    v18 = *(a1 + 32);
    v19 = "szTargetTone";
    v20 = "invalid input prone: %s\n";
    goto LABEL_23;
  }

  *__s = 0;
  v10 = *a2;
  if (*a2)
  {
    do
    {
      v11 = a2 + 1;
      if ((v10 - 48) - 1 <= 8)
      {
        v12 = *v11;
        if (v12 == 125)
        {
          v11 = a2 + 2;
        }

        else
        {
          __s1[0] = v10;
          if (v12)
          {
            v13 = 0;
            v14 = 1;
            while (1)
            {
              if ((v12 - 48) - 1 > 4)
              {
                v14 = (v13 + 1);
                v11 = &a2[v13 + 1];
                goto LABEL_17;
              }

              v15 = &a2[v13];
              __s1[v13 + 1] = v12;
              if (v13 == 1)
              {
                break;
              }

              ++v14;
              LOWORD(v12) = v15[2];
              ++v13;
              if (!v15[2])
              {
                goto LABEL_16;
              }
            }

            v14 = 3;
LABEL_16:
            v11 = v15 + 2;
          }

          else
          {
            v14 = 1;
          }

LABEL_17:
          __s1[v14] = 0;
          convertTones(a1, __s1, __s);
        }
      }

      v10 = *v11;
      a2 = v11;
    }

    while (*v11);
  }

  v16 = strlen(__s);
  v17 = 0;
  if (v16)
  {
    __s[v16 - 1] = 0;
  }

  else
  {
    *__s = 48;
  }

  return v17;
}

uint64_t recursiveFindSplit(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, _WORD *a6, unsigned int a7)
{
  v9 = result;
  if (a2 <= a3)
  {
    v10 = 0;
    v11 = a2;
    do
    {
      v10 += *(result + 2 * v11);
      if (a4 >> 1 <= v10)
      {
        break;
      }

      ++v11;
    }

    while (a3 >= v11);
  }

  else
  {
    v10 = 0;
    v11 = a2;
  }

  if (a7 <= v10 && (a4 - v10) >= a7)
  {
    recursiveFindSplit(result);
    result = recursiveFindSplit(v9);
    *(a5 + 2 * (*a6)++) = v11;
  }

  return result;
}

uint64_t getDocumentClass(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    return 0;
  }

  v2 = 0;
  v3 = *a1;
  while (1)
  {
    v4 = v3 + 224 * v2;
    v5 = *(v4 + 152);
    if (v5)
    {
      if (strstr(*(v4 + 152), "joyfulstyle"))
      {
        return 1;
      }

      if (strstr(v5, "didacticstyle"))
      {
        return 2;
      }

      if (strstr(v5, "neutralstyle"))
      {
        break;
      }
    }

    if (v1 <= ++v2)
    {
      return 0;
    }
  }

  return 3;
}

uint64_t puncPhrasing(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (!a2)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "%s\n", a6, a7, a8, "input parameter: sent is NULL");
    return v8;
  }

  if (!a3)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s\n", a6, a7, a8, "input parameter: rules is NULL, but it is ok");
    return 0;
  }

  v10 = (a3 + 270);
  v11 = *(a3 + 242);
  DocumentClass = getDocumentClass(a2);
  v171 = v11;
  if (DocumentClass > 1)
  {
    if (DocumentClass == 2)
    {
      v168 = vbsl_s8(vceqz_s16(*v10), 0x6001400030009, *v10);
      v94 = *(a3 + 278);
      if (!*(a3 + 278))
      {
        v94 = 9;
      }

      v172 = v94;
      v95 = *(a3 + 280);
      if (!*(a3 + 280))
      {
        v95 = 21;
      }

      v169 = v95;
      v96 = *(a3 + 282);
      if (!*(a3 + 282))
      {
        v96 = 6;
      }

      v175 = v96;
      v22 = *(a3 + 284);
      if (!v22)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v168 = vbsl_s8(vceqz_s16(*(a3 + 290)), 0x6001400030009, *(a3 + 290));
      v142 = *(a3 + 298);
      if (!*(a3 + 298))
      {
        v142 = 9;
      }

      v172 = v142;
      v143 = *(a3 + 300);
      if (!*(a3 + 300))
      {
        v143 = 21;
      }

      v169 = v143;
      v144 = *(a3 + 302);
      if (!*(a3 + 302))
      {
        v144 = 6;
      }

      v175 = v144;
      v22 = *(a3 + 304);
      if (!v22)
      {
        goto LABEL_13;
      }
    }
  }

  else if (DocumentClass)
  {
    v168 = vbsl_s8(vceqz_s16(*(a3 + 250)), 0x6001400030009, *(a3 + 250));
    v139 = *(a3 + 258);
    if (!*(a3 + 258))
    {
      v139 = 9;
    }

    v172 = v139;
    v140 = *(a3 + 260);
    if (!*(a3 + 260))
    {
      v140 = 21;
    }

    v169 = v140;
    v141 = *(a3 + 262);
    if (!*(a3 + 262))
    {
      v141 = 6;
    }

    v175 = v141;
    v22 = *(a3 + 264);
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v168 = vbsl_s8(vceqz_s16(*(a3 + 310)), 0x6001400030009, *(a3 + 310));
    v19 = *(a3 + 318);
    if (!*(a3 + 318))
    {
      v19 = 9;
    }

    v172 = v19;
    v20 = *(a3 + 320);
    if (!*(a3 + 320))
    {
      v20 = 21;
    }

    v169 = v20;
    v21 = *(a3 + 322);
    if (!*(a3 + 322))
    {
      v21 = 6;
    }

    v175 = v21;
    v22 = *(a3 + 324);
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  *(a3 + 242) = v22;
LABEL_13:
  v176 = a3;
  v181 = 0;
  v180 = 0;
  v23 = *(v8 + 8);
  if (*(v8 + 8))
  {
    v24 = 0;
    v25 = *v8;
    v26 = 1;
    while (1)
    {
      v27 = *(v25 + v24 + 16);
      v28 = *v27;
      if (*v27)
      {
        v29 = strlen(*v27);
        if (v29)
        {
          v30 = v28[v29 - 1];
          v31 = v30 > 0x3B;
          v32 = (1 << v30) & 0xC00500000000000;
          v33 = v31 || v32 == 0;
          if (!v33 && v26 < v23)
          {
            *(v25 + v24 + 73) = 4;
          }
        }
      }

      v35 = *(v25 + v24 + 136);
      if (!v35)
      {
        goto LABEL_37;
      }

      v36 = *v35;
      if (v36 == 83)
      {
        break;
      }

      if (v36 == 69)
      {
        if (v35[1] || *(v25 + v24 + 144) < v172)
        {
          goto LABEL_37;
        }

        v38 = 73;
        goto LABEL_34;
      }

      if (v36 == 66)
      {
        break;
      }

LABEL_37:
      v24 += 224;
      ++v26;
      if (224 * v23 == v24)
      {
        goto LABEL_40;
      }
    }

    if (v35[1])
    {
      v37 = 1;
    }

    else
    {
      v37 = v24 == 0;
    }

    if (v37)
    {
      goto LABEL_37;
    }

    v38 = -151;
LABEL_34:
    *(v25 + v38 + v24) = 4;
    goto LABEL_37;
  }

LABEL_40:
  v39 = a1;
  printPhrases(a1, v8, v13, v14, v15, v16, v17, v18);
  v40 = heap_Calloc(*(a1 + 8), 1024, 2);
  if (!v40)
  {
    v8 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v43, v44, v45, v46, v166);
    v137 = v176;
    v138 = v171;
    goto LABEL_200;
  }

  v47 = v40;
  if (!*(v8 + 8))
  {
LABEL_108:
    v177 = v47;
    printPhrases(v39, v8, v41, v42, v43, v44, v45, v46);
    v103 = *(v8 + 8);
    if (*(v8 + 8))
    {
      v104 = 0;
      do
      {
        v105 = *v8;
        if (*(*v8 + 224 * v104 + 73) != 3)
        {
          goto LABEL_147;
        }

        v106 = v104 + 1;
        if ((v104 + 1) < v103)
        {
          v107 = 1;
          LODWORD(v108) = v104 + 1;
          while (1)
          {
            v109 = *(v105 + 224 * v108 + 73);
            if (v109 == 3)
            {
              ++v107;
            }

            else if (v109 == 4)
            {
              goto LABEL_119;
            }

            LODWORD(v108) = v108 + 1;
            if (v108 >= v103)
            {
              LODWORD(v108) = v103;
LABEL_119:
              if (v107 == 1)
              {
                v106 = v108;
                break;
              }

              v110 = v104 + 1;
              if ((v104 & 0x8000) == 0)
              {
                do
                {
                  if (*(v105 + 224 * v104 + 73) == 4)
                  {
                    goto LABEL_125;
                  }

                  v111 = v104;
                  LOWORD(v104) = v104 - 1;
                }

                while (v111 > 0);
                LOWORD(v104) = -1;
LABEL_125:
                v110 = v104 + 1;
              }

              if (v107 < 9u)
              {
                v112 = v107;
              }

              else
              {
                LODWORD(v108) = v106;
                v112 = 8;
              }

              if (v107 < 9u || v106 >= v103)
              {
                goto LABEL_140;
              }

              v113 = 0;
              v108 = v106;
              v114 = (v105 + 224 * v106 + 73);
              while (1)
              {
                v115 = *v114;
                if (v115 == 3)
                {
                  if (++v113 >= 8u)
                  {
                    *v114 = 4;
LABEL_139:
                    v112 = 8;
LABEL_140:
                    v116 = v108 == v103;
                    v104 = v108 - v116;
                    if (v110 <= (v108 - v116))
                    {
                      v117 = 0;
                      v118 = v110;
                      do
                      {
                        v119 = **(*v8 + 224 * v118 + 16);
                        if (!strstr(v119, "comma"))
                        {
                          v120 = strlen(v119);
                          v117 += Utf8_LengthInUtf8chars(v119, v120);
                        }

                        ++v118;
                      }

                      while (v118 <= v104);
                      if (v169 <= v117)
                      {
                        LOWORD(v180) = v117;
                        HIWORD(v180) = v112;
                        astar_search(a1, v8, v110, v104, &v180, (v176 + 232));
                      }
                    }

LABEL_147:
                    v106 = v104 + 1;
                    v103 = *(v8 + 8);
                    goto LABEL_148;
                  }
                }

                else if (v115 == 4)
                {
                  goto LABEL_139;
                }

                ++v108;
                v114 += 224;
                if (v103 == v108)
                {
                  v112 = 8;
                  LODWORD(v108) = v103;
                  goto LABEL_140;
                }
              }
            }
          }
        }

LABEL_148:
        v104 = v106;
      }

      while (v106 < v103);
    }

    printPhrases(a1, v8, v97, v98, v99, v100, v101, v102);
    v127 = *(v8 + 8);
    v128 = v127 - 2;
    v129 = v127 + 1;
    while (1)
    {
      v130 = v128;
      v131 = (v129 - 2);
      if (v131 < 1)
      {
        break;
      }

      v132 = *v8;
      v133 = *v8 + 224 * ((v129 - 2) & 0x7FFF);
      --v128;
      --v129;
      if (*(v133 + 136))
      {
        *(v133 + 73) = 4;
        if (((v129 - 2) & 0x8000) == 0)
        {
          v134 = v130;
          while (1)
          {
            v135 = v132 + 224 * v134;
            if (*(v135 + 136))
            {
              if (*(v135 + 73) == 4)
              {
                break;
              }
            }

            v136 = v134--;
            if (v136 <= 0)
            {
              goto LABEL_178;
            }
          }

          if ((v131 - v134) <= v168.u16[1])
          {
            *(v135 + 73) = 3;
          }
        }

        break;
      }
    }

LABEL_178:
    printPhrases(a1, v8, v121, v122, v123, v124, v125, v126);
    if (*(v8 + 8))
    {
      v151 = 0;
      v152 = *v8;
      do
      {
        v153 = v151;
        v154 = v152 + 224 * v151;
        if (*(v154 + 73) == 4 && ((v155 = *(v154 + 16), (v156 = *v155) == 0) || (v157 = strlen(*v155)) == 0 || ((v158 = v156[v157 - 1], v31 = v158 > 0x3B, v159 = (1 << v158) & 0xC00500000000000, !v31) ? (v160 = v159 == 0) : (v160 = 1), v160)))
        {
          ++v151;
          if (*(v8 + 8) <= (v153 + 1))
          {
            LOWORD(v161) = 0;
          }

          else
          {
            v161 = 0;
            do
            {
              v162 = 224 * v151;
              v163 = strlen(**(v152 + v162 + 16));
              v161 += Utf8_LengthInUtf8chars(**(v152 + v162 + 16), v163);
              v152 = *v8;
              if (*(*v8 + v162 + 73) == 4)
              {
                break;
              }

              ++v151;
            }

            while (*(v8 + 8) > v151);
          }

          if (v175 > v161)
          {
            *(v152 + 224 * v153 + 73) = 3;
          }
        }

        else
        {
          ++v151;
        }
      }

      while (*(v8 + 8) > v151);
    }

    printPhrases(a1, v8, v145, v146, v147, v148, v149, v150);
    v8 = 0;
LABEL_198:
    v137 = v176;
    v47 = v177;
    goto LABEL_199;
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  v173 = 0;
  v174 = 1024;
  v170 = 0;
  while (1)
  {
    v51 = *(*v8 + 224 * v50 + 73);
    if (v51 == 4)
    {
      goto LABEL_93;
    }

    if (v51 == 3)
    {
      break;
    }

LABEL_94:
    v48 = ++v50;
    if (v50 >= *(v8 + 8))
    {
      goto LABEL_108;
    }
  }

  v52 = v49;
  v53 = **(*v8 + 224 * v49 + 16);
  if (strstr(v53, "comma"))
  {
    v54 = 0;
  }

  else
  {
    v55 = strlen(v53);
    v54 = Utf8_LengthInUtf8chars(v53, v55);
  }

  v177 = v47;
  v178 = v49;
  v56 = v49 + 1;
  if ((v49 + 1) <= v50)
  {
    v57 = v49 + 1;
    do
    {
      v58 = **(*v8 + 224 * v57 + 16);
      if (!strstr(v58, "comma"))
      {
        v59 = strlen(v58);
        v54 += Utf8_LengthInUtf8chars(v58, v59);
      }

      ++v57;
    }

    while (v57 <= v50);
  }

  v60 = heap_Alloc(*(a1 + 8), (4 * v54) | 2);
  if (!v60)
  {
    v8 = 2315264010;
    goto LABEL_198;
  }

  v61 = v60;
  v62 = **(*v8 + 224 * v52 + 16);
  v47 = v177;
  if (strstr(v62, "comma"))
  {
    v66 = 0;
    *v61 = 0;
  }

  else
  {
    v67 = strlen(v62);
    *v177 = Utf8_LengthInUtf8chars(v62, v67);
    strcpy(v61, **(*v8 + 224 * v52 + 16));
    v66 = 1;
  }

  v68 = v48 - v178 + v66;
  if (v68 > v174)
  {
    v69 = 2 * v68;
    if (v69 > 0x1000)
    {
      v165 = a1;
      log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "Memory exceeds upper boundary: %d/%d", v63, v64, v65, 2 * v68);
      v8 = 2315264015;
    }

    else
    {
      v70 = heap_Realloc(*(a1 + 8), v177, v69);
      if (v70)
      {
        v174 = v68;
        v47 = v70;
        goto LABEL_64;
      }

      v8 = 2315264010;
      v165 = a1;
    }

    heap_Free(*(v165 + 8), v61);
    goto LABEL_205;
  }

LABEL_64:
  while (v56 <= v50)
  {
    v71 = **(*v8 + 224 * v56 + 16);
    if (!strstr(v71, "comma"))
    {
      strcat(v61, v71);
      v72 = strlen(**(*v8 + 224 * v56 + 16));
      *(v47 + 2 * v66) = Utf8_LengthInUtf8chars(**(*v8 + 224 * v56 + 16), v72);
      LOWORD(v66) = v66 + 1;
    }

    ++v56;
  }

  v73 = strlen(v61);
  v74 = Utf8_LengthInUtf8chars(v61, v73);
  v39 = a1;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "WEAK PHRASE:%s %d\n", v75, v76, v77, v61);
  v78 = strlen(v61);
  CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v61, v78 - 1);
  utf8_getUTF8Char(v61, CurrentUtf8Offset, v182);
  heap_Free(*(a1 + 8), v61);
  if (v74 && applyRules(a1, v8, v50, (v176 + 232)) == 1)
  {
    v173 += v74;
    v170 = v50;
    v49 = v178;
    goto LABEL_94;
  }

  if (v74 < v168.u16[0])
  {
LABEL_93:
    v49 = (v50 + 1);
    goto LABEL_94;
  }

  if (v74 - v173 <= v168.u16[3] && v173)
  {
    v173 = 0;
    v170 = 0;
    goto LABEL_72;
  }

  if (v173)
  {
    v173 = 0;
    v50 = v170 + 1;
    v49 = (v170 + 1);
    v170 = 0;
    goto LABEL_94;
  }

  if (v74 < v168.u16[2] && applyRules(a1, v8, v50, (v176 + 232)) != 1)
  {
LABEL_72:
    *(*v8 + 224 * v50 + 73) = 4;
    goto LABEL_93;
  }

  if (v66 >= 0x801u)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "Memory exceeds upper boundary: %d/%d", v44, v45, v46, 2 * v66);
    v8 = 2315264015;
    goto LABEL_205;
  }

  v80 = heap_Calloc(*(a1 + 8), 1, 2 * v66);
  if (v80)
  {
    v85 = v80;
    v181 = 0;
    recursiveFindSplit(v47, 0, v66, v74, v80, &v181, v172);
    if (v178 <= v50)
    {
      v86 = 0;
      v87 = v178;
      do
      {
        v88 = v87;
        v89 = v87;
        if (strstr(**(*v8 + 224 * v87 + 16), "comma"))
        {
          v90 = 1;
        }

        else
        {
          v90 = v89 == v178;
        }

        if (!v90)
        {
          ++v86;
        }

        v91 = v181;
        v92 = v85;
        if (v181)
        {
          while (1)
          {
            v93 = *v92++;
            if (v93 == v86)
            {
              break;
            }

            if (!--v91)
            {
              goto LABEL_91;
            }
          }

          if (applyRules(a1, v8, v88, (v176 + 232)) != 1)
          {
            *(*v8 + 224 * v88 + 73) = 4;
          }
        }

LABEL_91:
        v87 = v88 + 1;
      }

      while ((v88 + 1) <= v50);
    }

    v39 = a1;
    heap_Free(*(a1 + 8), v85);
    goto LABEL_93;
  }

  v8 = 2315264010;
  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v81, v82, v83, v84, v167);
LABEL_205:
  v137 = v176;
LABEL_199:
  v138 = v171;
  heap_Free(*(a1 + 8), v47);
LABEL_200:
  *(v137 + 242) = v138;
  return v8;
}

uint64_t printPhrases(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *a2 + v10;
      v13 = (&off_1E81A4308)[*(v12 + 73)];
      result = log_OutText(*(v9 + 32), "FE_PHRASING", 5, 0, "%s\t\t%s\n", a6, a7, a8, **(v12 + 16));
      ++v11;
      v10 += 224;
    }

    while (v11 < *(a2 + 8));
  }

  return result;
}

uint64_t convertTones(uint64_t a1, char *__s1, char *__s)
{
  v6 = *__s1;
  if (v6 != 53)
  {
    if (v6 == 51)
    {
      if (__s1[1] == 53 && !__s1[2])
      {
        v7 = &__s[strlen(__s)];
        v8 = 11570;
        goto LABEL_19;
      }

      v9 = 1;
LABEL_10:
      if (!strcmp(__s1, "214") || v9 && __s1[1] == 51 && !__s1[2])
      {
        v7 = &__s[strlen(__s)];
        v8 = 11571;
        goto LABEL_19;
      }

      switch(v6)
      {
        case '5':
          if (__s1[1] == 49 && !__s1[2])
          {
LABEL_39:
            v7 = &__s[strlen(__s)];
            v8 = 11572;
            goto LABEL_19;
          }

          break;
        case '1':
          if (__s1[1] == 49 && !__s1[2] || __s1[1] == 51 && !__s1[2])
          {
            v7 = &__s[strlen(__s)];
            v8 = 11573;
            goto LABEL_19;
          }

          break;
        case '2':
          if (__s1[1] == 49 && !__s1[2])
          {
            goto LABEL_39;
          }

          v13 = 1;
          if (!v9)
          {
            goto LABEL_33;
          }

LABEL_31:
          if (__s1[1] == 52 && !__s1[2])
          {
LABEL_38:
            v7 = &__s[strlen(__s)];
            v8 = 11574;
            goto LABEL_19;
          }

LABEL_33:
          if (!v13 || __s1[1] != 50 || __s1[2])
          {
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "invalid input prone: %s\n", v10, v11, v12, __s1);
            return 0;
          }

          goto LABEL_38;
      }

      v13 = 0;
      if (!v9)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (__s1[1] != 53 || __s1[2])
  {
    goto LABEL_9;
  }

  v7 = &__s[strlen(__s)];
  v8 = 11569;
LABEL_19:
  *v7 = v8;
  v7[2] = 0;
  return 0;
}

uint64_t hlp_BrokerString(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  *v7 = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v7);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v6);
    if ((result & 0x80000000) == 0)
    {
      __strcpy_chk();
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

uint64_t getTokenRuleset(uint64_t a1, __int16 a2, _DWORD *a3, _WORD *a4)
{
  v15 = 0;
  *a3 = 0;
  v12 = a2;
  v10 = 0;
  v11 = 2;
  v13 = 0;
  v14 = 0;
  if (!*(a1 + 192))
  {
    return 0;
  }

  v7 = 0;
  for (i = 0; i < *(a1 + 192); ++i)
  {
    result = matchPANDPRULE_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(*(a1 + 184) + v7), &v11, &v10);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (v10)
    {
      if (v10 == 1)
      {
        *a3 = 1;
        *a4 = i;
      }

      return result;
    }

    v7 += 40;
  }

  return result;
}

uint64_t handleTokenWord(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4, unsigned __int16 *a5, uint64_t a6)
{
  *&v55[2] = 0;
  v51 = 0;
  v50 = 0;
  FLOATSUR_SET_INT(&v51 + 2, 0, 0);
  FLOATSUR_SET_INT(&v51, *(*(a1 + 672) + 224 * a2 + 24), 0);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    [1] apply word weight rules", v11, v12, v13, 0);
  v48 = a2;
  v54 = a2;
  v52 = 0;
  v53 = 1;
  *v55 = 0;
  v14 = a6;
  v15 = *(a1 + 184);
  v49 = a6;
  if (*(v15 + 40 * a6 + 32))
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      matched = matchMAPRULE2NUMANDOPERATOR_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(v15 + 40 * v14 + 24) + v16, &v53, &v52, &v51 + 2);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v22 = v52;
      if (v52 == 1)
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    wordwweight : rulset %d, idx %d FIRED wordWeight=%d.%d", v18, v19, v20, v49);
        v22 = v52;
      }

      if (!v22)
      {
        ++v17;
        v15 = *(a1 + 184);
        v16 += 32;
        if (v17 < *(v15 + 40 * v14 + 32))
        {
          continue;
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    matched = 0;
LABEL_10:
    FLOATSUR_PLUS(&v50, &v51 + 2, &v51);
    FLOATSUR_PLUS(a4, a4, &v50);
    v42 = a4[1];
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    runningPhraseWeight=%d.%d (wordWeight=%d.%d pronWeight=%d.%d)", v23, v24, v25, *a4);
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    [2] apply token rules", v26, v27, v28, 0);
    v54 = v48;
    v52 = 0;
    v53 = 1;
    *v55 = 0;
    v32 = *(a1 + 184);
    if (*(v32 + 40 * v14 + 16))
    {
      v33 = 0;
      v34 = 8;
      while (1)
      {
        matched = matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, (*(v32 + 40 * v14 + 8) + v34 - 8), &v53, &v52, a5);
        if ((matched & 0x80000000) != 0)
        {
          break;
        }

        if (v52 == 1)
        {
          matched = logPANDPRULE_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), (a1 + 8), (*(*(a1 + 184) + 40 * v14 + 8) + v34));
          if ((matched & 0x80000000) == 0)
          {
            v45 = *a5;
            v46 = a5[1];
            v44 = *(a1 + 1088);
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    FIRED : ruleset %d, idx %d <%s> bndWeight=%d.%d", v38, v39, v40, v49);
            **(a1 + 1088) = 0;
          }

          return matched;
        }

        ++v33;
        v32 = *(a1 + 184);
        v34 += 32;
        if (v33 >= *(v32 + 40 * v14 + 16))
        {
          if (v52)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    no token rules fire.", v29, v30, v31, 0);
LABEL_17:
      if (v48 + 1 == a3)
      {
        FLOATSUR_SET_INT(a5, *(a1 + 176), 0);
        v43 = a5[1];
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    END token word; set TOKENENDWORDBNDWEIGHT bndWeight=%d.%d", v35, v36, v37, *a5);
      }

      else
      {
        FLOATSUR_SET_INT(a5, 0, 0);
      }
    }
  }

  return matched;
}

uint64_t getPhrasingForToken(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v6 = *(a1[84] + 224 * a3 + 56) + 32 * *(a1 + 15);
  v7 = *(v6 + 16);
  v8 = *(v6 + 10);
  FLOATSUR_SET_INT(&v28 + 2, 0, 0);
  FLOATSUR_SET_INT(&v28, 0, 0);
  TokenRuleset = getTokenRuleset(a1, v3, &v27, &v26);
  if ((TokenRuleset & 0x80000000) != 0)
  {
    return TokenRuleset;
  }

  v13 = *(*a1 + 32);
  if (v27 == 1)
  {
    v14 = v8 + 1;
    v15 = v26;
    log_OutText(v13, "FE_PHRASING", 5, 0, "  using token rule set %d (for %s)", v10, v11, v12, v26);
    v19 = v14 - v3;
    v20 = v3;
    do
    {
      v21 = v3;
      v25 = *(*(a1[84] + 224 * v3 + 16) + 8 * *(a1 + 12));
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  doing token word[%d]=%s", v16, v17, v18, v3);
      v22 = handleTokenWord(a1, v3, v14, &v28 + 2, &v28, v15);
      if ((v22 & 0x80000000) != 0)
      {
        break;
      }

      if (FLOATSUR_GT_INT(&v28, 0, 0))
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add token node %d,%d", v16, v17, v18, v20);
        v22 = addNode(*a1, a2, v20, v3 + 1, 2, v19);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        *(*a2 + 32 * *(a2 + 8) - 24) = HIDWORD(v28);
        v23 = *a2 + 32 * *(a2 + 8);
        *(v23 - 12) = 1;
        *(v23 - 20) = v28;
        FLOATSUR_SET_INT(&v28 + 2, 0, 0);
        FLOATSUR_SET_INT(&v28, 0, 0);
        v20 = v3 + 1;
      }

      ++v3;
    }

    while ((v21 + 1) < v14);
  }

  else
  {
    log_OutText(v13, "FE_PHRASING", 5, 0, "  no rules match for token type =%s", v10, v11, v12, v7);
    return 2315264000;
  }

  return v22;
}

uint64_t assignTokenPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = 0;
  v8 = *(a1 + 680);
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  matched = 0;
  memset(v36, 0, sizeof(v36));
  v12 = *(a1 + 672);
  while (1)
  {
    v13 = *(v12 + 224 * v10 + 56);
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 30);
    if (*(v13 + 32 * v14) != 1)
    {
      goto LABEL_7;
    }

    v15 = *(*(v12 + 224 * v10 + 56) + 32 * v14 + 10);
    if (v15 >= v10)
    {
      break;
    }

LABEL_6:
    v10 = v15;
LABEL_7:
    if (++v10 >= v8)
    {
      return matched;
    }
  }

  v35 = v10;
  while (1)
  {
    v37 = 0;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get token POS for %s", a6, a7, a8, *(*(v12 + 224 * v10 + 16) + 8 * *(a1 + 24)));
    if (!v37)
    {
      if (*(a1 + 128))
      {
        break;
      }
    }

LABEL_11:
    ++v10;
    v12 = *(a1 + 672);
    v15 = *(*(v12 + 224 * v35 + 56) + 32 * *(a1 + 30) + 10);
    if (v15 < v10)
    {
      v8 = *(a1 + 680);
      goto LABEL_6;
    }
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    *&v36[4] = v10;
    *v36 = 1;
    *&v36[6] = 0;
    matched = matchMAPRULE2STR_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(a1 + 120) + v16, v36, &v37);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v18 = v37;
    if (v37 == 1)
    {
      v33 = *(*(*(a1 + 672) + 224 * v10 + 16) + 8 * *(a1 + 26));
      v34 = *(a1 + 536) + *(*(a1 + 544) + 4 * *(*(a1 + 120) + v16));
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "POS tagging rule %d FIRED (word %d) %s -> %s", a6, a7, a8, v17);
      v19 = *(a1 + 672);
      v20 = v19 + 224 * v10;
      v21 = *(a1 + 536);
      v22 = *(a1 + 544);
      v23 = *(a1 + 120);
      if (!*(v20 + 88) && !strcmp("UNK", (v21 + *(v22 + 4 * *(v23 + v16)))))
      {
        v24 = strlen(*(*(v20 + 16) + 8 * *(a1 + 26)));
        v25 = heap_Calloc(*(*a1 + 8), 1, v24 + 1);
        v30 = *(a1 + 672);
        *(v30 + 224 * v10 + 88) = v25;
        if (!v25)
        {
          log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v26, v27, v28, v29, v32);
          return 2315264010;
        }

        strcpy(v25, *(*(v30 + 224 * v10 + 16) + 8 * *(a1 + 26)));
        v19 = *(a1 + 672);
        v21 = *(a1 + 536);
        v22 = *(a1 + 544);
        v23 = *(a1 + 120);
      }

      matched = doMapStr(*a1, (*(v19 + 224 * v10 + 16) + 8 * *(a1 + 26)), (v21 + *(v22 + 4 * *(v23 + v16))));
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      v18 = v37;
    }

    if (!v18)
    {
      ++v17;
      v16 += 32;
      if (v17 < *(a1 + 128))
      {
        continue;
      }
    }

    goto LABEL_11;
  }
}

uint64_t assignTokenTags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = 0;
  v32 = 0;
  v8 = *(a1 + 680);
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  memset(v31, 0, 12);
  v12 = *(a1 + 672);
  while (1)
  {
    v13 = v10;
    v14 = *(v12 + 224 * v10 + 56);
    if (!v14)
    {
      goto LABEL_7;
    }

    v15 = *(a1 + 30);
    if (*(v14 + 32 * v15) != 1)
    {
      goto LABEL_7;
    }

    v16 = *(*(v12 + 224 * v10 + 56) + 32 * v15 + 10);
    if (v16 >= v10)
    {
      break;
    }

LABEL_6:
    v10 = v16;
LABEL_7:
    if (++v10 >= v8)
    {
      return v11;
    }
  }

  while (1)
  {
    v33 = 0;
    v27 = *(*(v12 + 224 * v10 + 16) + 8 * *(a1 + 24));
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get token tag for word %d %s", a6, a7, a8, v10);
    if (!v33)
    {
      v17 = 0;
      while (v17 < *(a1 + 152))
      {
        if (*(*(a1 + 144) + 4 * v17) == 1)
        {
          WORD2(v31[0]) = v10;
          LODWORD(v31[0]) = 1;
          *(v31 + 6) = 0;
          matched = matchMMAPREGEX2STR_TRule((a1 + 8), a1 + 672, *(*(a1 + 136) + 8 * v17), v31, &v33, &v32, a7, a8);
        }

        else
        {
          matched = matchMAPSTRSTR_TRule(a1 + 8, (a1 + 672), *(*(a1 + 136) + 8 * v17), v31, &v33, a6, a7, a8);
        }

        v11 = matched;
        if ((matched & 0x80000000) != 0)
        {
          return v11;
        }

        v19 = v33;
        if (v33 == 1)
        {
          v20 = *(*a1 + 32);
          if (*(*(a1 + 144) + 4 * v17) == 1)
          {
            v28 = *(*(*(a1 + 672) + 224 * v10 + 16) + 8 * *(a1 + 24));
            v30 = *(a1 + 536) + *(*(a1 + 544) + 4 * *(*(*(a1 + 136) + 8 * v17) + 8));
            log_OutText(v20, "FE_PHRASING", 5, 0, "regex rule %d FIRED %s -> %s", a6, a7, a8, v32);
            v21 = *a1;
            v22 = *(a1 + 536);
            v23 = *(a1 + 544);
            v24 = *(*(*(a1 + 136) + 8 * v17) + 8);
          }

          else
          {
            v29 = *(a1 + 536) + *(*(a1 + 544) + 4 * *(*(*(a1 + 136) + 8 * v17) + 4));
            log_OutText(v20, "FE_PHRASING", 5, 0, "normal rule FIRED %s -> %s", a6, a7, a8, *(*(*(a1 + 672) + 224 * v10 + 16) + 8 * *(a1 + 24)));
            v21 = *a1;
            v22 = *(a1 + 536);
            v23 = *(a1 + 544);
            v24 = *(*(*(a1 + 136) + 8 * v17) + 4);
          }

          v11 = addTokenTag(v21, v10, (v22 + *(v23 + 4 * v24)), a1 + 8, (a1 + 672));
          if ((v11 & 0x80000000) != 0)
          {
            return v11;
          }

          v19 = v33;
        }

        ++v17;
        if (v19)
        {
          goto LABEL_10;
        }
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "no matches found", a6, a7, a8, v26);
      v11 = addTokenTag(*a1, v10, "UNK", a1 + 8, (a1 + 672));
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }
    }

LABEL_10:
    ++v10;
    v12 = *(a1 + 672);
    v16 = *(*(v12 + 224 * v13 + 56) + 32 * *(a1 + 30) + 10);
    if (v16 < v10)
    {
      v8 = *(a1 + 680);
      goto LABEL_6;
    }
  }
}

uint64_t extendPHRContainingTokenTags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 680))
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  LODWORD(v13) = 0;
  v14 = 0;
  v15 = *(a1 + 672);
  while (1)
  {
    v16 = *(v15 + 224 * v9 + 56);
    if (!v16)
    {
      goto LABEL_47;
    }

    v17 = v16 + 32 * *(a1 + 32);
    if (*v17 == 1)
    {
      v13 = *(v17 + 10);
      v18 = *(v17 + 8);
      v14 = v9;
      if (v18 >= v13)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        v19 = (v15 + 224 * v18 + 56);
        v20 = v13 - v18;
        do
        {
          if (*v19 && *(*v19 + 32 * *(a1 + 30)) == 1)
          {
            ++v12;
          }

          v19 += 28;
          --v20;
        }

        while (v20);
      }

      v11 = 0;
    }

    v21 = *(a1 + 30);
    v22 = v16 + 32 * v21;
    if (!*(v22 + 16))
    {
      goto LABEL_47;
    }

    v23 = v11 + 1;
    v24 = v11 || v9 == v14;
    v25 = !v24;
    v26 = *(v22 + 10);
    v27 = *(v15 + 224 * *(v22 + 10) + 56);
    if (!v27)
    {
      break;
    }

    v29 = *(v27 + 32 * v21 + 4) != 1 || v23 != v12 || v26 >= v13;
    v30 = !v29;
    if (!v29 && v25)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Left and Right", a6, a7, a8, v10);
      v32 = *(a1 + 672);
      v33 = *(a1 + 30);
      v34 = *(v32 + 224 * v9 + 56) + 32 * v33;
      *v34 = 0;
      *(*(v32 + 224 * v26 + 56) + 32 * v33 + 4) = 0;
      v35 = *(v32 + 224 * v14 + 56) + 32 * v33;
      *v35 = 1;
      *(v35 + 8) = v14;
      *(v35 + 10) = v13;
      *(v35 + 24) = 1;
      v36 = strlen(*(v34 + 16));
      v37 = heap_Calloc(*(*a1 + 8), 1, (v36 + 1));
      v42 = *(a1 + 672);
      v43 = *(a1 + 30);
      *(*(v42 + 224 * v14 + 56) + 32 * v43 + 16) = v37;
      if (!v37)
      {
        goto LABEL_50;
      }

      strcpy(v37, *(*(v42 + 224 * v9 + 56) + 32 * v43 + 16));
      heap_Free(*(*a1 + 8), *(*(*(a1 + 672) + 224 * v9 + 56) + 32 * *(a1 + 30) + 16));
      v15 = *(a1 + 672);
      v44 = *(a1 + 30);
      *(*(v15 + 224 * v9 + 56) + 32 * v44 + 16) = 0;
      v45 = *(v15 + 224 * v13 + 56) + 32 * v44;
      v11 = 1;
      *(v45 + 4) = 1;
      *(v45 + 8) = v14;
    }

    else
    {
      if (v25)
      {
        goto LABEL_40;
      }

      if (!v30)
      {
LABEL_46:
        v11 = v23;
        goto LABEL_47;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Right", a6, a7, a8, v10);
      v15 = *(a1 + 672);
      v55 = *(a1 + 30);
      *(*(v15 + 224 * v26 + 56) + 32 * v55 + 4) = 0;
      v56 = *(v15 + 224 * v9 + 56) + 32 * v55;
      *(v56 + 10) = v13;
      *(v56 + 24) = 1;
      v57 = *(v15 + 224 * v13 + 56) + 32 * v55;
      *(v57 + 4) = 1;
      *(v57 + 8) = *(v56 + 8);
      v11 = v12;
    }

LABEL_47:
    v10 = ++v9;
    if (v9 >= *(a1 + 680))
    {
      return 0;
    }
  }

  if (!v25)
  {
    goto LABEL_46;
  }

LABEL_40:
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Left", a6, a7, a8, v10);
  v15 = *(a1 + 672);
  v46 = *(v15 + 224 * v9 + 56);
  v47 = *(a1 + 30);
  *(v46 + 32 * v47) = 0;
  v48 = *(v15 + 224 * v14 + 56);
  if (!v48)
  {
LABEL_43:
    *(*(v15 + 224 * *(v46 + 32 * v47 + 10) + 56) + 32 * v47 + 8) = v14;
    v11 = 1;
    goto LABEL_47;
  }

  v49 = v48 + 32 * v47;
  *v49 = 1;
  *(v49 + 8) = v14;
  v50 = v46 + 32 * v47;
  *(v49 + 10) = *(v50 + 10);
  *(v49 + 24) = 1;
  v51 = strlen(*(v50 + 16));
  v52 = heap_Calloc(*(*a1 + 8), 1, (v51 + 1));
  v53 = *(a1 + 672);
  v54 = *(a1 + 30);
  *(*(v53 + 224 * v14 + 56) + 32 * v54 + 16) = v52;
  if (v52)
  {
    strcpy(v52, *(*(v53 + 224 * v9 + 56) + 32 * v54 + 16));
    heap_Free(*(*a1 + 8), *(*(*(a1 + 672) + 224 * v9 + 56) + 32 * *(a1 + 30) + 16));
    v15 = *(a1 + 672);
    v46 = *(v15 + 224 * v9 + 56);
    v47 = *(a1 + 30);
    *(v46 + 32 * v47 + 16) = 0;
    goto LABEL_43;
  }

LABEL_50:
  log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v38, v39, v40, v41, v59);
  return 2315264010;
}

uint64_t annotateTokenTypeOnEachWord(uint64_t a1)
{
  v1 = *(a1 + 680);
  if (*(a1 + 680))
  {
    v2 = 0;
    v3 = (*(a1 + 672) + 104);
    do
    {
      v4 = *(v3 - 6);
      if (v4)
      {
        v5 = v4 + 32 * *(a1 + 30);
        if (*v5 == 1)
        {
          v2 = *(v5 + 16);
        }

        *v3 = v2;
        if (*(v5 + 4) == 1)
        {
          v2 = 0;
        }
      }

      else
      {
        *v3 = v2;
      }

      v3 += 28;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t load_pw_igtree_cfg(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v9 = 0;
  v8 = -1;
  v7 = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "statbnd_pw_igtree", &v9, &v8, &v7);
  if ((v5 & 0x80000000) == 0 && v8 == 1)
  {
    (*v9)[strlen(*v9) - 1] = 0;
    if (!strcmp(*v9, "yes"))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t load_pw_igtree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(v28, 0, sizeof(v28));
  *v27 = 0;
  *a4 = 0;
  BrokerString = nn_model_getBrokerString(a3, v28, "pwigtree_", 0x100uLL);
  if ((BrokerString & 0x80000000) != 0 || (BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v28, "IGTR", 1031, v27), (BrokerString & 0x80000000) != 0))
  {
    v21 = BrokerString;
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
      log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0, v17, v18, v19, v20, v26);
      v21 = 2315264010;
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

uint64_t hlp_igtree_initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
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

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v7, v8, v9, v10, v12);
  return 2315264010;
}

uint64_t hlp_igtree_freeFeatureVector(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      if (*a2)
      {
        heap_Free(*(a1 + 8), *a2);
        *a2 = 0;
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t hlp_resizeFeature(uint64_t a1, uint64_t *a2, char *__s)
{
  v5 = strlen(__s);
  v6 = heap_Realloc(*(a1 + 8), *a2, (v5 + 1));
  if (v6)
  {
    v11 = v6;
    result = 0;
    *a2 = v11;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v7, v8, v9, v10, v13);
    return 2315264010;
  }

  return result;
}

uint64_t hlp_igtree_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, char *a6)
{
  v11 = -1;
  result = hlp_igtree_isFeatureRequired(a2, a3, a4, &v11);
  if (result)
  {
    if (*a6)
    {
      v10 = v11;
      if (strlen(a6) < 0x41 || (result = hlp_resizeFeature(a1, (a5 + 8 * v11), a6), (result & 0x80000000) == 0))
      {
        strcpy(*(a5 + 8 * v10), a6);
        return 0;
      }
    }

    else
    {
      result = 0;
      **(a5 + 8 * v11) = 61;
    }
  }

  return result;
}

uint64_t hlp_igtree_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_2[a3];
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

char *feat_wordlength(uint64_t a1, unsigned int a2, int a3, int a4, char *__src, char *__dst)
{
  *__dst = 0;
  if (a4 + a3 < a2)
  {
    return sprintf(__dst, "%d", *(a1 + 40 * (a4 + a3) + 26));
  }

  return strcpy(__dst, __src);
}

uint64_t hlp_igtree_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v85 = 0;
  v14 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v14)
  {
    v19 = v14;
    v84 = a6;
    if (a4 < 2)
    {
      goto LABEL_101;
    }

    v20 = 0;
    v21 = (a4 - 1);
    while (strcmp(*(a3 + 8 * v20), "word"))
    {
      if (v21 == ++v20)
      {
        goto LABEL_12;
      }
    }

    v85 = v20;
    if (a7 >= v84)
    {
      v23 = "=";
    }

    else
    {
      v23 = *(a5 + 40 * a7);
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 0, a2, v23);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_12:
    v25 = 0;
    v26 = v21 <= 1 ? 1 : (a4 - 1);
    while (strcmp(*(a3 + 8 * v25), "lword"))
    {
      if (v26 == ++v25)
      {
        goto LABEL_22;
      }
    }

    v85 = v25;
    if (a7 - 1 >= v84)
    {
      v27 = "=";
    }

    else
    {
      v27 = *(a5 + 40 * (a7 - 1));
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 1, a2, v27);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_22:
    v28 = 0;
    while (strcmp(*(a3 + 8 * v28), "llword"))
    {
      if (v26 == ++v28)
      {
        goto LABEL_30;
      }
    }

    v85 = v28;
    if (a7 - 2 >= v84)
    {
      v29 = "=";
    }

    else
    {
      v29 = *(a5 + 40 * (a7 - 2));
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 2, a2, v29);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_30:
    v30 = 0;
    while (strcmp(*(a3 + 8 * v30), "rword"))
    {
      if (v26 == ++v30)
      {
        goto LABEL_38;
      }
    }

    v85 = v30;
    if (a7 + 1 >= v84)
    {
      v31 = "=";
    }

    else
    {
      v31 = *(a5 + 40 * (a7 + 1));
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 3, a2, v31);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_38:
    v32 = 0;
    while (strcmp(*(a3 + 8 * v32), "rrword"))
    {
      if (v26 == ++v32)
      {
        goto LABEL_46;
      }
    }

    v85 = v32;
    if (a7 + 2 >= v84)
    {
      v33 = "=";
    }

    else
    {
      v33 = *(a5 + 40 * (a7 + 2));
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 4, a2, v33);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_46:
    v34 = 0;
    while (strcmp(*(a3 + 8 * v34), "wordlen"))
    {
      if (v26 == ++v34)
      {
        goto LABEL_51;
      }
    }

    v85 = v34;
    feat_wordlength(a5, v84, a7, 0, "=", v19);
    v24 = hlp_igtree_setFeature(a1, a3, a4, 5, a2, v19);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_51:
    v35 = 0;
    while (strcmp(*(a3 + 8 * v35), "lwordlen"))
    {
      if (v26 == ++v35)
      {
        goto LABEL_56;
      }
    }

    v85 = v35;
    feat_wordlength(a5, v84, a7, -1, "=", v19);
    v24 = hlp_igtree_setFeature(a1, a3, a4, 6, a2, v19);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_56:
    v36 = 0;
    while (strcmp(*(a3 + 8 * v36), "rwordlen"))
    {
      if (v26 == ++v36)
      {
        goto LABEL_61;
      }
    }

    v85 = v36;
    feat_wordlength(a5, v84, a7, 1, "=", v19);
    v24 = hlp_igtree_setFeature(a1, a3, a4, 7, a2, v19);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_61:
    v37 = 0;
    while (strcmp(*(a3 + 8 * v37), "pos"))
    {
      if (v26 == ++v37)
      {
        goto LABEL_69;
      }
    }

    v85 = v37;
    if (a7 >= v84)
    {
      v38 = "=";
    }

    else
    {
      v38 = *(a5 + 40 * a7 + 8);
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 8, a2, v38);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_69:
    v39 = 0;
    while (strcmp(*(a3 + 8 * v39), "lpos"))
    {
      if (v26 == ++v39)
      {
        goto LABEL_77;
      }
    }

    v85 = v39;
    if (a7 - 1 >= v84)
    {
      v40 = "=";
    }

    else
    {
      v40 = *(a5 + 40 * (a7 - 1) + 8);
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 9, a2, v40);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_77:
    v41 = 0;
    while (strcmp(*(a3 + 8 * v41), "llpos"))
    {
      if (v26 == ++v41)
      {
        goto LABEL_85;
      }
    }

    v85 = v41;
    if (a7 - 2 >= v84)
    {
      v42 = "=";
    }

    else
    {
      v42 = *(a5 + 40 * (a7 - 2) + 8);
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 10, a2, v42);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_85:
    v43 = 0;
    while (strcmp(*(a3 + 8 * v43), "rpos"))
    {
      if (v26 == ++v43)
      {
        goto LABEL_93;
      }
    }

    v85 = v43;
    if (a7 + 1 >= v84)
    {
      v44 = "=";
    }

    else
    {
      v44 = *(a5 + 40 * (a7 + 1) + 8);
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 11, a2, v44);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_188;
    }

LABEL_93:
    v45 = 0;
    while (strcmp(*(a3 + 8 * v45), "rrpos"))
    {
      if (v26 == ++v45)
      {
        goto LABEL_101;
      }
    }

    v85 = v45;
    v46 = a7 + 2 >= v84 ? "=" : *(a5 + 40 * (a7 + 2) + 8);
    v24 = hlp_igtree_setFeature(a1, a3, a4, 12, a2, v46);
    if ((v24 & 0x80000000) == 0)
    {
LABEL_101:
      if (!hlp_igtree_isFeatureRequired(a3, a4, 13, &v85) || (v47 = feat_char(a5, a7, 0, v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 13, a2, v47), (v24 & 0x80000000) == 0))
      {
        if (!hlp_igtree_isFeatureRequired(a3, a4, 15, &v85) || (v48 = feat_char(a5, a7, 1, v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 15, a2, v48), (v24 & 0x80000000) == 0))
        {
          if (!hlp_igtree_isFeatureRequired(a3, a4, 14, &v85) || (v49 = feat_char(a5, a7, -1, v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 14, a2, v49), (v24 & 0x80000000) == 0))
          {
            if (!hlp_igtree_isFeatureRequired(a3, a4, 16, &v85) || (v50 = feat_char(a5, a7, -2, v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 16, a2, v50), (v24 & 0x80000000) == 0))
            {
              if (!hlp_igtree_isFeatureRequired(a3, a4, 17, &v85))
              {
                goto LABEL_196;
              }

              if (a7)
              {
                v51 = a7 + 4294967294;
                v52 = a7 - 1;
                v53 = "=";
                while (v52)
                {
                  v54 = (a5 + 40 * v51--);
                  --v52;
                  if (*v54[1] == 110)
                  {
                    v53 = *v54;
                    break;
                  }
                }
              }

              else
              {
                v53 = "=";
              }

              v24 = hlp_igtree_setFeature(a1, a3, a4, 17, a2, v53);
              if ((v24 & 0x80000000) == 0)
              {
LABEL_196:
                if (!hlp_igtree_isFeatureRequired(a3, a4, 18, &v85))
                {
                  goto LABEL_193;
                }

                if (a7)
                {
                  v55 = a7 + 4294967294;
                  v56 = a7 - 1;
                  v57 = "=";
                  while (v56)
                  {
                    v58 = (a5 + 40 * v55--);
                    --v56;
                    if (*v58[1] == 118)
                    {
                      v57 = *v58;
                      break;
                    }
                  }
                }

                else
                {
                  v57 = "=";
                }

                v24 = hlp_igtree_setFeature(a1, a3, a4, 18, a2, v57);
                if ((v24 & 0x80000000) == 0)
                {
LABEL_193:
                  if (!hlp_igtree_isFeatureRequired(a3, a4, 19, &v85))
                  {
                    goto LABEL_194;
                  }

                  v59 = "=";
                  v60 = a7;
                  while (v84 > ++v60)
                  {
                    v61 = (a5 + 40 * v60);
                    if (*v61[1] == 110)
                    {
                      v59 = *v61;
                      break;
                    }
                  }

                  v24 = hlp_igtree_setFeature(a1, a3, a4, 19, a2, v59);
                  if ((v24 & 0x80000000) == 0)
                  {
LABEL_194:
                    if (!hlp_igtree_isFeatureRequired(a3, a4, 19, &v85))
                    {
                      goto LABEL_195;
                    }

                    v62 = "=";
                    v63 = a7;
                    while (v84 > ++v63)
                    {
                      v64 = (a5 + 40 * v63);
                      if (*v64[1] == 118)
                      {
                        v62 = *v64;
                        break;
                      }
                    }

                    v24 = hlp_igtree_setFeature(a1, a3, a4, 20, a2, v62);
                    if ((v24 & 0x80000000) == 0)
                    {
LABEL_195:
                      if (!hlp_igtree_isFeatureRequired(a3, a4, 21, &v85) || (a7 >= v84 ? (v66 = "=") : ((v19[1] = 0, *(a5 + 40 * a7 + 26) > 5u) ? (v65 = 48) : (v65 = 49), *v19 = v65, v66 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 21, a2, v66), (v24 & 0x80000000) == 0))
                      {
                        if (!hlp_igtree_isFeatureRequired(a3, a4, 22, &v85) || (a7 >= v84 ? (v68 = "=") : ((v19[1] = 0, *(a5 + 40 * a7 + 26) < 2u) ? (v67 = 48) : (v67 = 49), *v19 = v67, v68 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 22, a2, v68), (v24 & 0x80000000) == 0))
                        {
                          if (!hlp_igtree_isFeatureRequired(a3, a4, 23, &v85) || (a7 - 1 >= v84 ? (v70 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 - 1) + 26) > 5u) ? (v69 = 48) : (v69 = 49), *v19 = v69, v70 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 23, a2, v70), (v24 & 0x80000000) == 0))
                          {
                            if (!hlp_igtree_isFeatureRequired(a3, a4, 24, &v85) || (a7 - 1 >= v84 ? (v72 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 - 1) + 26) < 2u) ? (v71 = 48) : (v71 = 49), *v19 = v71, v72 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 24, a2, v72), (v24 & 0x80000000) == 0))
                            {
                              if (!hlp_igtree_isFeatureRequired(a3, a4, 25, &v85) || (a7 + 1 >= v84 ? (v74 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 + 1) + 26) > 5u) ? (v73 = 48) : (v73 = 49), *v19 = v73, v74 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 25, a2, v74), (v24 & 0x80000000) == 0))
                              {
                                if (!hlp_igtree_isFeatureRequired(a3, a4, 26, &v85) || (a7 + 1 >= v84 ? (v79 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 + 1) + 26) < 2u) ? (v78 = 48) : (v78 = 49), *v19 = v78, v79 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 26, a2, v79), (v24 & 0x80000000) == 0))
                                {
                                  v80 = 0;
                                  v81 = v85;
                                  do
                                  {
                                    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "igtree feature %s", v75, v76, v77, *(a2 + 8 * v80));
                                    v22 = 0;
                                    ++v80;
                                  }

                                  while (v81 >= v80);
                                  goto LABEL_189;
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

LABEL_188:
    v22 = v24;
LABEL_189:
    heap_Free(*(a1 + 8), v19);
    return v22;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v15, v16, v17, v18, v83);
  return 2315264010;
}

const char *feat_char(uint64_t a1, unsigned int a2, int a3, char *a4)
{
  v5 = a3;
  v6 = *(a1 + 40 * a2 + 26);
  if (a3 < 0)
  {
    if (((v6 + a3) & 0x8000) != 0)
    {
      return "=";
    }

    v5 = (v6 + a3);
  }

  if (v6 <= v5)
  {
    return "=";
  }

  v7 = 0;
  v8 = (a1 + 40 * a2);
  do
  {
    utf8_getUTF8Char(*v8, v7, a4);
    v7 += strlen(a4);
  }

  while (v5-- != 0);
  return a4;
}

uint64_t pandpIgtreeInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = IgtreeContextInit(a1, a2, a3, a4, a5, a6, (a7 + 7), "igtree2ps");
  if (v14 < 0)
  {
    goto LABEL_5;
  }

  if (a7[8])
  {
    v14 = IgtreeContextInit(a1, a2, a3, a4, a5, a6, (a7 + 14), "igtree2pw");
    if ((v14 & 0x80000000) == 0)
    {
      v15 = "igtreexsh";
      v16 = (a7 + 21);
      v17 = a1;
      v18 = a2;
      v19 = a3;
      v20 = a4;
      v21 = a5;
      v22 = a6;
      goto LABEL_7;
    }

LABEL_5:
    v23 = v14;
    pandpIgtreeDeinit(a5, a6, a7);
    return v23 | 0x8A002000;
  }

  v15 = "igtree1p";
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v16 = a7;
LABEL_7:
  v24 = IgtreeContextInit(v17, v18, v19, v20, v21, v22, v16, v15);
  if ((v24 & 0x80000000) != 0)
  {
    pandpIgtreeDeinit(a5, a6, a7);
    return v24 | 0x8A002000;
  }

  return v24;
}

uint64_t IgtreeContextInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *__s1)
{
  __s1a = 0;
  *a7 = __s1;
  *(a7 + 24) = 0;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  if (!strcmp(__s1, "igtree2ps"))
  {
    v16 = 1;
    if ((paramc_ParamGetStr(*(a5 + 40), "compatstrongbnd", &__s1a) & 0x80000000) == 0 && __s1a && !strcmp(__s1a, "yes"))
    {
      log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "<%s> disables voice-dependent strong BND model", v21, v22, v23, "compatstrongbnd");
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  if ((paramc_ParamGetStr(*(a5 + 40), "basicclcprosody", &__s1a) & 0x80000000) == 0 && __s1a && !strcmp(__s1a, "yes"))
  {
    log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "<%s> disables voice-dependent %s", v17, v18, v19, "basicclcprosody");
  }

  else if (v16)
  {
    v20 = tryLoadingIgtreeModel(a1, a2, a3, a4, a5, a7, __s1, 1);
    if (v20 < 0)
    {
      return v20 | 0x8A002000;
    }
  }

  v24 = *(a7 + 8);
  if (v24)
  {
    goto LABEL_15;
  }

  v20 = tryLoadingIgtreeModel(a1, a2, a3, a4, a5, a7, __s1, 0);
  if (v20 < 0)
  {
    return v20 | 0x8A002000;
  }

  v24 = *(a7 + 8);
  if (v24)
  {
LABEL_15:
    *(a7 + 16) = 0;
    v25 = *(v24 + 1312);
    v26 = *(v24 + 1296);
    v27 = v26 - 1;
    v28 = heap_Calloc(*(a5 + 8), (v26 - 1), 8);
    *(a7 + 16) = v28;
    if (v28)
    {
      v60 = a6;
      if (!v27)
      {
LABEL_25:
        *(a7 + 24) = "";
        *(a7 + 32) = 1;
        v42 = *(a7 + 8);
        if (v42 && *(v42 + 1328) && *(v42 + 1336))
        {
          v43 = 0;
          do
          {
            v44 = v43;
            v45 = (*(v42 + 1328) + 16 * v43);
            v46 = *v45;
            if (!strcmp("orth_top200", *v45))
            {
              *(a7 + 24) = v45[1];
            }

            else if (!strcmp("bnd1_dist_min", v46))
            {
              v47 = strtol(v45[1], 0, 10);
              if (v47 < 1)
              {
                log_OutText(*(a5 + 32), "FE_PHRASING", 1, 0, "readIgtreeParams: ignore invalid bnd1_dist_min value %s", v48, v49, v50, *(*(*(a7 + 8) + 1328) + 16 * v44 + 8));
              }

              else
              {
                *(a7 + 32) = v47;
              }
            }

            v43 = v44 + 1;
            v42 = *(a7 + 8);
          }

          while (*(v42 + 1336) > (v44 + 1));
        }

        return 0;
      }

      v33 = 0;
      while (1)
      {
        v34 = v33;
        *(v28 + 8 * v33) = 0;
        v35 = *(v25 + 8 * v33);
        v36 = &off_1F42D2EA0;
        v37 = "pos_current";
        while (strcmp(v37, v35))
        {
          v41 = *v36;
          v36 += 2;
          v37 = v41;
          if (!v41)
          {
            goto LABEL_23;
          }
        }

        log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "traceFeatureMap %s [%d] => %s", v38, v39, v40, *a7);
        *(*(a7 + 16) + 8 * v34) = *(v36 - 1);
LABEL_23:
        v28 = *(a7 + 16);
        if (!*(v28 + 8 * v34))
        {
          break;
        }

        v33 = (v34 + 1);
        if (v33 >= v27)
        {
          goto LABEL_25;
        }
      }

      v58 = *(v25 + 8 * v34);
      log_OutText(*(a5 + 32), "FE_PHRASING", 0, 0, "no implementation for feature[%d] => %s", v38, v39, v40, v34);
      v59 = *(v25 + 8 * v34);
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37001, "%s%s", v52, v53, v54, v55, "unimplemented feature");
      heap_Free(*(a5 + 8), *(a7 + 16));
      *(a7 + 16) = 0;
      v51 = 2315264025;
      a6 = v60;
    }

    else
    {
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v29, v30, v31, v32, v57);
      v51 = 2315264010;
    }

    IgtreeContextDeinit(a5, a6, a7);
    return v51;
  }

  return 0;
}

uint64_t pandpIgtreeDeinit(uint64_t a1, uint64_t a2, void *a3)
{
  IgtreeContextDeinit(a1, a2, a3);
  IgtreeContextDeinit(a1, a2, a3 + 7);
  IgtreeContextDeinit(a1, a2, a3 + 14);

  return IgtreeContextDeinit(a1, a2, a3 + 21);
}

uint64_t IgtreeContextDeinit(uint64_t result, uint64_t a2, void *a3)
{
  v4 = result;
  *a3 = 0;
  a3[3] = 0;
  v5 = a3[1];
  if (v5)
  {
    result = igtree_Deinit_ReadOnly_DereferenceCnt(result, a2, v5);
    a3[1] = 0;
  }

  v6 = a3[2];
  if (v6)
  {
    result = heap_Free(*(v4 + 8), v6);
    a3[2] = 0;
  }

  a3[3] = 0;
  a3[5] = 0;
  a3[6] = 0;
  return result;
}

uint64_t singlePassIgtreePhrasing(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v27 = 0;
  v5 = *(a5[1] + 1296);
  v28 = 0;
  if (*(a2 + 8) < 2u)
  {
    return 0;
  }

  v29 = 0;
  v25 = v5 - 1;
  v11 = allocateFeatureVector(a1, (v5 - 1), &v29, &v28);
  if (v11 < 0)
  {
    return v11 | 0x8A002000;
  }

  a5[5] = a3;
  a5[6] = a4;
  v12 = v29;
  if (*(a2 + 8) >= 2u)
  {
    v6 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *a2 + 32 * v13;
      if (*(v14 + 4) == 2 && *(v14 + 36) == 2)
      {
        goto LABEL_29;
      }

      v15 = *(v14 + 2) - 1;
      if (v25)
      {
        v16 = 0;
        do
        {
          (*(a5[2] + v16 * 8))(a5, v15, v12[v16], 128);
          ++v16;
        }

        while (v25 != v16);
      }

      v6 = igtree_Process(a5[1], v12, &v27);
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      v19 = "?";
      if ((*(*a3 + 224 * v15 + 75) - 1) <= 3u)
      {
        v19 = off_1E81A4408[(*(*a3 + 224 * v15 + 75) - 1)];
      }

      v20 = v27;
      traceFeatureVector(a1, a5, v15, v12, v27, v19, v17, v18);
      if (*(*a3 + 224 * v15 + 75))
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

      v22 = *v21;
      if (v22 == 50)
      {
        if (!v21[1])
        {
          v23 = 3;
          goto LABEL_28;
        }
      }

      else if (v22 == 49)
      {
        if (!v21[1])
        {
          v23 = 4;
LABEL_28:
          *(*a3 + 224 * v15 + 73) = v23;
        }
      }

      else if (v22 == 46)
      {
        if (!v21[1])
        {
          goto LABEL_27;
        }
      }

      else if (46 == v22)
      {
LABEL_27:
        v23 = 2;
        goto LABEL_28;
      }

LABEL_29:
      if (*(a2 + 8) - 1 <= ++v13)
      {
        goto LABEL_33;
      }
    }
  }

  v6 = 0;
LABEL_33:
  heap_Free(*(a1 + 8), v12);
  heap_Free(*(a1 + 8), v28);
  return v6;
}

uint64_t allocateFeatureVector(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a2;
  v9 = heap_Calloc(*(a1 + 8), a2, 128);
  *a4 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v14 = heap_Calloc(*(a1 + 8), v8, 8);
  *a3 = v14;
  if (!v14)
  {
    heap_Free(*(a1 + 8), *a4);
    *a4 = 0;
LABEL_8:
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v10, v11, v12, v13, v17);
    return 2315264010;
  }

  if (a2)
  {
    v15 = 0;
    do
    {
      *(*a3 + 8 * v15) = *a4 + (v15 << 7);
      ++v15;
    }

    while (v15 != v8);
  }

  return 0;
}

uint64_t traceFeatureVector(uint64_t a1, uint64_t a2, unsigned int a3, const char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (*(*(a2 + 8) + 1296) - 1);
  if (v12 >= 2)
  {
    v13 = 8 * v12;
    v14 = 8;
    do
    {
      *&(*a4)[strlen(*a4)] = 32;
      strcat(*a4, a4[v14 / 8]);
      v14 += 8;
    }

    while (v13 != v14);
  }

  v16 = *(*(**(a2 + 40) + 224 * a3 + 16) + 8 * *(*(a2 + 48) + 16));
  v17 = *a4;
  return log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "traceFeatureVector %s [%02d] %-16s | %-44s | %s %s", a6, a7, a8, *a2);
}