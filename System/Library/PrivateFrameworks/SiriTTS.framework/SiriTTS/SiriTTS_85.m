void *select_bet3_loc_VoiceClose_0(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 11792);
    if (v4 && *v4)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        *(a2 + 5432 + 8 * v5) = 0;
        v4 = *(a2 + 11792);
        v5 = v6;
      }

      while (v4[v6++]);
    }

    uselect_FreeRiffStringTable(result, v4);
    uselect_FreeRiffStringTable(v3, *(a2 + 11800));
    v8 = *(a2 + 12664);
    v9 = *(a2 + 12672);
    v10 = *(a2 + 12680);
    if (v8)
    {
      v11 = *v8;
      if (*v8)
      {
        v12 = 0;
        do
        {
          heap_Free(*(v3 + 8), v11);
          v11 = v8[++v12];
        }

        while (v11);
      }

      heap_Free(*(v3 + 8), v8);
    }

    if (v9)
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = 0;
        v15 = v9;
        do
        {
          v16 = *v13;
          if (*v13)
          {
            v17 = 0;
            do
            {
              heap_Free(*(v3 + 8), v16);
              ++v17;
              v13 = *v15;
              v16 = (*v15)[v17];
            }

            while (v16);
          }

          heap_Free(*(v3 + 8), v13);
          v15 = &v9[++v14];
          v13 = *v15;
        }

        while (*v15);
      }

      heap_Free(*(v3 + 8), v9);
    }

    if (v10)
    {
      v18 = *v10;
      if (*v10)
      {
        v19 = 0;
        do
        {
          heap_Free(*(v3 + 8), v18);
          v18 = v10[++v19];
        }

        while (v18);
      }

      heap_Free(*(v3 + 8), v10);
    }

    BET3FXD__DeInitVData(v3, a2 + 8112);
    BET3FLT__DeInitVParam(v3, (a2 + 128));
    if (*(a2 + 37936))
    {
      v27 = 0;
      do
      {
        ssftriff_reader_ReleaseChunkData(*(a2 + 37728 + 8 * v27++), v20, v21, v22, v23, v24, v25, v26);
      }

      while (v27 < *(a2 + 37936));
    }

    *(a2 + 37936) = 0;
    *a2 = 0;
    v28 = *(v3 + 8);

    return heap_Free(v28, a2);
  }

  return result;
}

uint64_t select_bet3_loc_SetSynthParamString(uint64_t a1, uint64_t a2, char *a3)
{
  v8 = paramc_ParamSetStr(*(a1 + 40), a2, a3);
  if ((v8 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%s%s%x", v4, v5, v6, v7, "parameter");
  }

  return v8;
}

uint64_t select_bet3_loc_SetSynthParamInt_0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = paramc_ParamSetInt(*(a1 + 40), a2, a3);
  if ((v8 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%d%s%x", v4, v5, v6, v7, "parameter");
  }

  return v8;
}

uint64_t select_bet3_loc_SetSynthParamArrayOfBet3_int32_0(uint64_t a1, void *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v8 = paramc_ParamSet(*(a1 + 40), "bet3cepstralequalizer", a2, (4 * a3));
  if ((v8 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%p%s%d%s%d", v4, v5, v6, v7, "parameter");
  }

  return v8;
}

uint64_t BET3FXD__ParamGenStart(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 632);
  if (v7)
  {
    heap_Free(*(v6 + 8), v7);
    *(a1 + 632) = 0;
  }

  v8 = *(a1 + 640);
  if (v8)
  {
    heap_Free(*(v6 + 8), v8);
    *(a1 + 640) = 0;
  }

  result = BET3FXD__InitUttModel(v6, (a1 + 56), a2, *(*(a1 + 8) + 10));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  *(a1 + 16) = *(a3 + 32);
  v15 = *(a3 + 28);
  if (v15 >= 1)
  {
    v16 = *(a1 + 620);
    if (v15 < v16)
    {
      v72 = *(a1 + 620);
      v75 = (*(a3 + 8) * v16 * *(a3 + 24) / *(a3 + 8));
      BET3FXD__log_select_Error(v6, 55018, "Specified length of generated speech is too short (this sentence is composed from %d states), specify more than %d milliseconds\n", v10, v11, v12, v13, v14);
      return 2229280775;
    }
  }

  if (*(a1 + 608) < 1)
  {
    goto LABEL_70;
  }

  v17 = 0;
  v82 = 0;
  v83 = 0;
  v79 = *(*(a1 + 8) + 1784);
  v88 = a3 + 344;
  v78 = a3 + 1304;
  v18 = a3 + 5304;
  v87 = a2 + 198;
  v84 = a3;
  v86 = a3 + 144;
  v19 = *(a1 + 32);
  v76 = -8388608;
  do
  {
    v80 = v17;
    v20 = (*(a1 + 600) + 528 * v17);
    if (v19 >= 1)
    {
      v21 = 0;
      v22 = v78;
      do
      {
        v23 = *(v88 + 4 * v21);
        if (v23 < 1)
        {
LABEL_20:
          LODWORD(v24) = 0;
        }

        else
        {
          v24 = 0;
          v25 = *(*(*(a1 + 8) + 248) + *v20);
          while (1)
          {
            v26 = *(v22 + 8 * v24);
            if (v26)
            {
              v27 = *(v18 + 8 * v25);
              if (v27)
              {
                if (!strcmp(v26, v27))
                {
                  break;
                }
              }
            }

            if (v23 == ++v24)
            {
              goto LABEL_20;
            }
          }
        }

        v20[v21++ + 8] = v24;
        v22 += 40;
      }

      while (v21 < *(a1 + 32));
    }

    v73 = *v20;
    BET3FXD__log_select_Diag(v6, 21, "[phoneme %d]\n");
    v33 = v80;
    if (v79)
    {
      if (v84[29])
      {
        v20[2] = BET3FLT__TreeSearch(*(a1 + 8), v80, (a2 + 152), 0, 0);
        BET3FXD__log_select_Diag(v6, 6, "DUR pdf id %d\n");
        v34 = v20[8];
        result = BET3FXD__FindDurPDF(v20, a2, *(a1 + 16), 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v35 = BET3FXD__div_int32_int32_to_Q8_24(*(*(*(a1 + 8) + 1784) + 2 * *v20), v84[6]);
        if (v35)
        {
          v36 = v35;
          if (*a2 < 1)
          {
            v37 = 0;
          }

          else
          {
            v37 = 0;
            v38 = 2;
            do
            {
              v37 += BET3FXD__int32_to_Q12_20(*(*(v20 + 2) + 4 * v38));
              v39 = v38++ <= *a2;
            }

            while (v39);
          }

          v41 = v36 + v76;
          v42 = BET3FXD__div_Q8_24_Q12_20_to_Q8_24(v41, v37);
          v20[6] = 0;
          if (*a2 < 1)
          {
            v49 = 0;
          }

          else
          {
            v43 = v42;
            v44 = *(v20 + 2);
            v45 = 2;
            do
            {
              v46 = BET3FXD__mul_int32_Q8_24_to_Q8_24(*(v44 + 4 * v45), v43);
              v47 = BET3FXD__Q8_24_to_int32(v46 + 0x7FFFFF);
              if (v47 <= 1)
              {
                v48 = 1;
              }

              else
              {
                v48 = v47;
              }

              v44 = *(v20 + 2);
              *(v44 + 4 * v45) = v48;
              v49 = v20[6] + v48;
              v20[6] = v49;
              v39 = v45++ <= *a2;
            }

            while (v39);
          }

          v76 = v41 - BET3FXD__int32_to_Q8_24(v49);
          v33 = v80;
        }

        goto LABEL_45;
      }

      if (v84[28])
      {
        BET3FXD__log_select_Error(v6, 55017, "State level segmentation is not currently supported\n", v28, v29, v30, v31, v32);
        goto LABEL_46;
      }
    }

    v20[2] = BET3FLT__TreeSearch(*(a1 + 8), v80, (a2 + 152), 0, 0);
    BET3FXD__log_select_Diag(v6, 6, "DUR pdf id %d\n");
    if (v84[7])
    {
      goto LABEL_46;
    }

    v40 = v20[8];
    result = BET3FXD__FindDurPDF(v20, a2, *(a1 + 16), 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    SetSilenceDuration_0(a1, a2, v84, v20);
LABEL_45:
    *(a1 + 624) += v20[6];
LABEL_46:
    v19 = *(a1 + 32);
    if (v19 >= 1)
    {
      v50 = 0;
      v81 = v20 + 38;
      v51 = v20 + 58;
      v85 = v20 + 8;
      do
      {
        v52 = *(a1 + 24) + 312 * v50;
        if (!*(v52 + 264))
        {
          if (*(v52 + 272))
          {
            v53 = *a2 * v33;
            v54 = *(*(a1 + 304 + 8 * v50) + 8 * v53);
            v82 = v54;
            v83 = *(*(a1 + 224 + 8 * v50) + 8 * v53);
          }

          if (*(v87 + v50))
          {
            v55 = 0;
            v56 = 0;
            while (1)
            {
              v57 = *(*&a2[2 * v50 + 178] + v55);
              *(*&v20[2 * v50 + 18] + 4 * v57) = BET3FLT__TreeSearch(*(a1 + 8), *v20, (a2 + 152), v50, v56);
              v74 = *(v86 + 8 * v50);
              BET3FXD__log_select_Diag(v6, 6, "%s pdf state %d id %d\n");
              v58 = *(a1 + 24) + 312 * v50;
              if (*(v58 + 272))
              {
                v59 = v57 - 2 + (v57 - 2) * a2[v50 + 1];
                *(*&v81[2 * v50] + 8 * v57) = v83 + 4 * v59;
                *(*&v81[2 * v50] + 8 * v57) -= 4;
                *(*&v51[2 * v50] + 8 * v57) = v82 + 4 * v59;
                *(*&v51[2 * v50] + 8 * v57) -= 4;
                v60 = v85[v50];
                result = BET3FXD__FindMsdPDF(v50, v57, v20, a2, v84);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              else if (*(v58 + 268))
              {
                v61 = *(a1 + 632);
                v62 = *(a1 + 640);
                if (!v61)
                {
                  if (v62)
                  {
                    v61 = 0;
                  }

                  else
                  {
                    v63 = *(a1 + 608) * *(v87 + v50) * *(a2 + 198);
                    v77 = v63 + v63 * *(a2 + 201);
                    v64 = heap_Calloc(*(v6 + 8), v77, 4);
                    *(a1 + 632) = v64;
                    if (!v64)
                    {
                      return 2229280778;
                    }

                    v65 = heap_Calloc(*(v6 + 8), v77, 4);
                    *(a1 + 640) = v65;
                    if (!v65)
                    {
                      return 2229280778;
                    }

                    v62 = v65;
                    *(a1 + 648) = 0;
                    v61 = *(a1 + 632);
                  }
                }

                result = BET3FXD__FindContPDF(v50, v57, v20, a2, v85[v50], v61, v62, (a1 + 648));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              ++v56;
              v55 += 16;
              if (v56 >= *(v87 + v50))
              {
                v19 = *(a1 + 32);
                v33 = v80;
                break;
              }
            }
          }
        }

        ++v50;
      }

      while (v50 < v19);
    }

    v17 = v33 + 1;
  }

  while (v17 < *(a1 + 608));
  a3 = v84;
  v15 = v84[7];
LABEL_70:
  if (v15 < 1 || (v66 = BET3FXD__int32_to_Q18_14(v15), v67 = BET3FXD__div_Q18_14_Q18_14_to_Q18_14(v66, 0), *(a1 + 16) = BET3FXD__Q18_14_to_Q1_15(v67), *(a1 + 608) < 1))
  {
LABEL_75:
    if (BET3FLT__log_select_GetLogLevel(*(v6 + 32)) >= 0x15)
    {
      OutLabel_0(a1);
    }

    BET3FXD__log_select_Diag(v6, 2, ">> tree search done\n");
    AddBreakMarks_0(a1, a2, a3);

    return ParamGenLT_0(a1, a2);
  }

  else
  {
    v68 = 0;
    v69 = 0;
    while (1)
    {
      v70 = (*(a1 + 600) + v68);
      v71 = v70[8];
      result = BET3FXD__FindDurPDF(v70, a2, *(a1 + 16), 0);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      SetSilenceDuration_0(a1, a2, a3, v70);
      *(a1 + 624) += v70[6];
      ++v69;
      v68 += 528;
      if (v69 >= *(a1 + 608))
      {
        goto LABEL_75;
      }
    }
  }

  return result;
}

uint64_t SetSilenceDuration_0(uint64_t result, int *a2, uint64_t a3, int *a4)
{
  v4 = *(result + 8);
  v5 = *a4;
  if (*(*(v4 + 32) + v5) == 1)
  {
    v8 = *(*(v4 + 1784) + 2 * v5) / *(a3 + 24);
    LODWORD(v4) = *a2;
    if (v8 <= *a2)
    {
      if (v4 >= 1)
      {
        v13 = (*(a4 + 2) + 8);
        v14 = 1;
        do
        {
          *v13++ = 1;
          ++v14;
        }

        while (v14 <= *a2);
        LODWORD(v4) = *a2;
      }

      a4[6] = v4;
    }

    else
    {
      if (v8 >= a4[6])
      {
        if (v4 < 1)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v12 = 0;
          v11 = 0;
          v15 = *(a4 + 2);
          v16 = 2;
          do
          {
            v17 = *(v15 + 4 * v16);
            if (v17 <= 0)
            {
              v17 = 1;
              *(v15 + 4 * v16) = 1;
              LODWORD(v4) = *a2;
            }

            v18 = v16 == 2 || v16 == v4 + 1;
            if (v18)
            {
              v19 = 0;
            }

            else
            {
              v19 = v17;
            }

            v11 += v19;
            if (!v18)
            {
              v17 = 0;
            }

            v12 += v17;
            v20 = v16++ <= v4;
          }

          while (v20);
        }
      }

      else
      {
        if (v4 >= 1)
        {
          v9 = (*(a4 + 2) + 8);
          v10 = 1;
          do
          {
            *v9++ = 1;
            v4 = *a2;
            ++v10;
          }

          while (v10 <= v4);
        }

        v11 = v4 - 2;
        v12 = 2;
      }

      result = BET3FXD__div_int32_int32_to_Q8_24(v8 - v12, v11);
      a4[6] = v12;
      LODWORD(v21) = *a2;
      if (*a2 >= 3)
      {
        v22 = result;
        v23 = 3;
        do
        {
          if (v23 >= v21)
          {
            result = (v8 - v12);
          }

          else
          {
            result = BET3FXD__mul_int32_Q8_24_to_int32(*(*(a4 + 2) + 4 * v23), v22);
          }

          if (result <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = result;
          }

          *(*(a4 + 2) + 4 * v23) = v24;
          v12 = a4[6] + v24;
          a4[6] = v12;
          v21 = *a2;
          v20 = v23++ < v21;
        }

        while (v20);
      }
    }
  }

  return result;
}

uint64_t OutLabel_0(uint64_t result)
{
  if (*(result + 608) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (*(v1 + 600) + v2);
      v7 = *v5;
      v8 = v5[1];
      v6 = v5[6] + v4;
      result = BET3FXD__log_select_Diag(*v1, 21, "%d %d %d [%d]\n");
      v4 += v5[6];
      ++v3;
      v2 += 528;
    }

    while (v3 < *(v1 + 608));
  }

  return result;
}

uint64_t AddBreakMarks_0(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a3 + 80);
  result = strcmp(v6, "PHRASE_TIME");
  if (result)
  {
    result = strcmp(v6, "PHRASE");
    if (result)
    {
      result = strcmp(v6, "WORD");
      if (result)
      {
        result = strcmp(v6, "SYLLABLE");
        if (result)
        {
          result = strcmp(v6, "TIME");
          if (result)
          {
            result = strcmp(v6, "NONE");
            if (result)
            {
              v13 = *a1;

              return BET3FXD__log_select_Error(v13, 55036, "valid breaker is required\n", v8, v9, v10, v11, v12);
            }
          }

          else
          {
            v38 = *(a1 + 608);
            if (v38 >= 1)
            {
              v39 = 0;
              v40 = 0;
              v41 = *(a3 + 88);
              v42 = *a2;
              v43 = *(a1 + 600);
              v44 = v41;
              v45 = 0;
              do
              {
                result = v43 + 528 * v39;
                if (v42 >= 1)
                {
                  v46 = (*(result + 16) + 8);
                  v47 = (v42 + 2) - 2;
                  v45 = v40;
                  do
                  {
                    v48 = *v46++;
                    v45 += v48;
                    --v47;
                  }

                  while (v47);
                }

                if (v45 > v44)
                {
                  v44 = v40 + v41;
                  *(result + 4) |= 2u;
                }

                ++v39;
                v40 = v45;
              }

              while (v39 != v38);
            }
          }
        }

        else
        {
          v34 = *(a1 + 608);
          if (v34 >= 3)
          {
            v35 = (v34 - 2);
            v36 = *(a1 + 600);
            v37 = *(*(a1 + 8) + 112);
            do
            {
              if (*(v37 + *v36))
              {
                v36[133] |= 2u;
              }

              v36 += 132;
              --v35;
            }

            while (v35);
          }
        }
      }

      else
      {
        v30 = *(a1 + 608);
        if (v30 >= 3)
        {
          v31 = (v30 - 2);
          v32 = *(a1 + 600);
          v33 = *(*(a1 + 8) + 112);
          do
          {
            if ((*(v33 + *v32) & 0xFE) == 2)
            {
              v32[133] |= 2u;
            }

            v32 += 132;
            --v31;
          }

          while (v31);
        }
      }
    }

    else
    {
      v26 = *(a1 + 608);
      if (v26 >= 3)
      {
        v27 = (v26 - 2);
        v28 = *(a1 + 600);
        v29 = *(*(a1 + 8) + 112);
        do
        {
          if (*(v29 + *v28) == 3)
          {
            v28[133] |= 2u;
          }

          v28 += 132;
          --v27;
        }

        while (v27);
      }
    }
  }

  else
  {
    v14 = *(a1 + 608);
    if (v14 >= 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = *(a1 + 600);
      v18 = *a2;
      v19 = *(a3 + 88);
      v20 = *(*(a1 + 8) + 112);
      do
      {
        result = v17 + 528 * v15;
        if (v18 < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = (*(result + 16) + 8);
          v23 = (v18 + 2) - 2;
          do
          {
            v24 = *v22++;
            v21 += v24;
            --v23;
          }

          while (v23);
        }

        v16 += v21;
        if (v16 > v19)
        {
          *(result + 4) |= 2u;
          v16 = v21;
        }

        if (*(v20 + *result) == 3 && v15 < v14 - 2)
        {
          v16 = 0;
          *(result + 532) |= 2u;
        }

        ++v15;
      }

      while (v15 != v14);
    }
  }

  return result;
}

uint64_t ParamGenLT_0(uint64_t a1, int *a2)
{
  v4 = *a1;
  v5 = 2229280778;
  memset(v53, 0, sizeof(v53));
  memset(v52, 0, sizeof(v52));
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  BET3FLT__InitSMatrices(v4, v53);
  BET3FLT__InitSMatrices(v4, v52);
  v6 = heap_Calloc(*(v4 + 8), (*(a1 + 624) + 1), 1);
  *(a1 + 48) = v6;
  if (!v6)
  {
    return v5;
  }

  v7 = heap_Calloc(*(v4 + 8), (*(a1 + 624) + 1), 4);
  *(a1 + 40) = v7;
  if (!v7)
  {
    return v5;
  }

  v8 = *(a1 + 608);
  if (v8 >= 1)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    LODWORD(v11) = *a2;
    do
    {
      if (v11 >= 1)
      {
        v12 = (*(a1 + 600) + 528 * v9);
        v13 = v12[2];
        v14 = 2;
        do
        {
          if (*(v13 + 4 * v14) >= 1)
          {
            v15 = 0;
            v10 = v10;
            do
            {
              *(*(a1 + 48) + v10) = *(v12[39] + v14);
              *(*(a1 + 40) + 4 * v10++) = *(v12[40] + 4 * v14);
              v13 = v12[2];
              ++v15;
            }

            while (v15 < *(v13 + 4 * v14));
          }

          v16 = *(a1 + 32);
          if (v16 >= 1)
          {
            v17 = *(a1 + 24);
            do
            {
              if (v17[68] && ((*(v12[39] + v14) >> v17[3]) & 1) != 0)
              {
                v17[11] += *(v13 + 4 * v14);
              }

              v17 += 78;
              --v16;
            }

            while (v16);
          }

          v11 = *a2;
          v18 = v14++ <= v11;
        }

        while (v18);
        v8 = *(a1 + 608);
      }

      ++v9;
    }

    while (v9 < v8);
  }

  if (*(a1 + 32) < 1)
  {
    v5 = 0;
    goto LABEL_60;
  }

  v19 = 0;
  v20 = 0;
  v5 = 0;
  while (1)
  {
    v21 = *(a1 + 24) + 312 * v19;
    if (*(v21 + 272))
    {
      break;
    }

LABEL_56:
    if (++v19 >= *(a1 + 32))
    {
      goto LABEL_60;
    }
  }

  if (!*(v21 + 44))
  {
LABEL_55:
    BET3FXD__DeInitMSDUttModel((a1 + 56), v19);
    goto LABEL_56;
  }

  inited = BET3FXD__InitPStreamParam((v21 + 24), 0);
  if ((inited & 0x80000000) == 0)
  {
    v5 = BET3FXD__InitPStreamSM((v21 + 24), v53);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

    v23 = *(a1 + 608);
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = *(a1 + 600);
      v28 = *a2;
      do
      {
        if (v28 >= 1)
        {
          v29 = v27 + 528 * v24;
          v30 = *(v29 + 16);
          v31 = v29 + 152;
          v32 = v29 + 232;
          v33 = 2;
          do
          {
            v34 = *(v30 + 4 * v33);
            if (v34 >= 1)
            {
              v35 = *(a1 + 24) + 312 * v19;
              v36 = *(a1 + 48);
              v37 = v26;
              LODWORD(v38) = *(v35 + 36);
              v39 = 1;
              do
              {
                if (v38 >= 1)
                {
                  v40 = 0;
                  v41 = *(*(v21 + 56) + 8);
                  do
                  {
                    v42 = 1 << *(v35 + 12);
                    v20 |= v42;
                    v43 = *(v41 + 8 * v40);
                    v45 = *v43;
                    v44 = v43[1];
                    if (v45 <= v44)
                    {
                      v46 = v44 - v45 + 1;
                      v47 = v26 + v45;
                      do
                      {
                        v48 = v42 ^ 0xFFLL;
                        if ((v47 & 0x80000000) == 0)
                        {
                          v48 = v42 ^ 0xFFLL;
                          if (*(a1 + 624) >= v47)
                          {
                            v48 = *(v36 + v47);
                          }
                        }

                        v20 &= v48;
                        ++v47;
                        --v46;
                      }

                      while (v46);
                    }

                    if ((v42 & *(v36 + v37)) != 0)
                    {
                      if (!v40 || (v49 = v42 & v20) != 0)
                      {
                        v50 = 4 * v40 + 4;
                        *(*(*(v21 + 96) + 8 * v25) + 4 * v40) = *(*(*(v31 + 8 * v19) + 8 * v33) + v50);
                        LODWORD(v49) = *(*(*(v32 + 8 * v19) + 8 * v33) + v50);
                      }

                      else
                      {
                        *(*(*(v21 + 96) + 8 * v25) + 4 * v40) = 0;
                      }

                      *(*(*(v21 + 104) + 8 * v25) + 4 * v40) = v49;
                    }

                    ++v40;
                    v38 = *(v35 + 36);
                  }

                  while (v40 < v38);
                  v34 = *(v30 + 4 * v33);
                }

                v25 += (*(v36 + v37++) >> *(v35 + 12)) & 1;
                ++v26;
                v18 = v39++ < v34;
              }

              while (v18);
              v28 = *a2;
              v26 = v37;
            }

            v18 = v33++ <= v28;
          }

          while (v18);
          v23 = *(a1 + 608);
        }

        ++v24;
      }

      while (v24 < v23);
      if (v25 >= 1)
      {
        (**(*(a1 + 24) + 312 * v19 + 288))(v21 + 24, 0);
      }
    }

    BET3FLT__FreePStreamSM(v21 + 24);
    goto LABEL_55;
  }

  v5 = inited;
LABEL_60:
  BET3FLT__FreePStreamParam(v54);
  BET3FLT__FreeSMatrices(v53);
  BET3FLT__FreeSMatrices(v52);
  return v5;
}

uint64_t BET3FXD__ParamGenFrames(uint64_t a1, int *a2, _DWORD *a3)
{
  v5 = *a1;
  memset(v91, 0, sizeof(v91));
  memset(v90, 0, sizeof(v90));
  *a3 = 0;
  memset(v92, 0, sizeof(v92));
  v93 = 0;
  BET3FLT__InitSMatrices(v5, v91);
  BET3FLT__InitSMatrices(v5, v90);
  v89 = a1;
  v6 = *(a1 + 612);
  v7 = *(a1 + 600) + 528 * v6;
  *(v7 + 4) &= ~2u;
  v8 = *(a1 + 608);
  v9 = __OFSUB__(v8, v6);
  v10 = v8 - v6;
  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
    LODWORD(v12) = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0;
    LODWORD(v12) = 0;
    while ((*(v7 + 4) & 2) == 0)
    {
      v13 = *a2;
      if (v13 >= 1)
      {
        v14 = (*(v7 + 16) + 8);
        do
        {
          v15 = *v14++;
          LODWORD(v12) = v15 + v12;
          --v13;
        }

        while (v13);
      }

      v7 += 528;
      if (++v11 == v10)
      {
        v11 = v10;
        break;
      }
    }
  }

  v16 = v11;
  BET3FXD__log_select_Diag(v5, 2, "| processing %d models %d frames <=> ");
  v17 = a1;
  if (*(a1 + 32) >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    inited = 0;
    v83 = -v16;
    v84 = v5;
    v23 = v16;
    v87 = v16;
    while (1)
    {
      v24 = *(v17 + 24);
      v25 = v24 + 312 * v18;
      if (*(v25 + 268))
      {
        if (*(v25 + 64))
        {
          v26 = v19;
          BET3FLT__FreePStreamParam((v25 + 24));
          v19 = v26;
          v23 = v87;
          v17 = v89;
          v24 = *(v89 + 24);
        }

        v27 = v24 + 312 * v18;
        v28 = *(v27 + 280);
        v29 = *(v27 + 284);
        v30 = *(v17 + 612);
        v31 = *(v17 + 608);
        v32 = (v19 + v23 + v30) < v31 && v20 < v28;
        if (v32)
        {
          v34 = *a2;
          v35 = v7;
          v33 = v84;
          do
          {
            if (v34 >= 1)
            {
              v36 = (*(v35 + 16) + 8);
              v37 = (v34 + 2) - 2;
              do
              {
                v38 = *v36++;
                v20 += v38;
                --v37;
              }

              while (v37);
            }

            v35 += 528;
            v19 = (v19 + 1);
          }

          while ((v19 + v23 + v30) < v31 && v20 < v28);
        }

        else
        {
          v33 = v84;
        }

        v88 = v29;
        if (v30 > v21 && v22 < v28)
        {
          v40 = v7 + 528 * v83;
          v41 = *a2;
          do
          {
            if (v41 >= 1)
            {
              v42 = (*(v40 - 512) + 8);
              v43 = (v41 + 2) - 2;
              do
              {
                v44 = *v42++;
                v22 += v44;
                --v43;
              }

              while (v43);
            }

            if (v30 <= ++v21)
            {
              break;
            }

            v40 -= 528;
          }

          while (v22 < v28);
        }

        v86 = v19;
        BET3FXD__log_select_Diag(v33, 3, "L: %d %d  R: %d %d\n");
        *(v25 + 164) = v88 + v12 + v20 + v22 + v88;
        *(v25 + 44) = v12;
        inited = BET3FXD__InitPStreamParam((v25 + 24), 0);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_84;
        }

        v45 = *(v25 + 40);
        if (v45 >= 1)
        {
          v46 = 0;
          v19 = v86;
          v23 = v87;
          v17 = v89;
          while (1)
          {
            if (*(*(*(v17 + 24) + 312 * v18 + 304) + 4 * v46) == 1)
            {
              v47 = BET3FXD__InitPStreamParam((v25 + 144), v92);
              if ((v47 & 0x80000000) != 0)
              {
                v49 = v47;
                goto LABEL_86;
              }

              v48 = BET3FXD__InitPStreamSM((v25 + 144), v90);
              v49 = v48;
              if ((v48 & 0x80000000) != 0)
              {
                goto LABEL_86;
              }

              inited = v48;
              if (v88 < 1)
              {
                LODWORD(v12) = 0;
                v50 = v89;
                v51 = v86 + v87 + v21;
              }

              else
              {
                v12 = 0;
                v50 = v89;
                v51 = v86 + v87 + v21;
                while (v12 < *(v25 + 164))
                {
                  v52 = *(v25 + 176);
                  if (*v52 >= 1)
                  {
                    v53 = 0;
                    v54 = *(*(v25 + 216) + 8 * v12);
                    v55 = *(*(v25 + 224) + 8 * v12);
                    do
                    {
                      *(v54 + 4 * v53) = 0;
                      *(v55 + 4 * v53++) = 4095;
                    }

                    while (v53 < *v52);
                  }

                  if (++v12 == v88)
                  {
                    LODWORD(v12) = v88;
                    break;
                  }
                }
              }

              if (v51 >= 1)
              {
                v56 = 0;
                v57 = *(v50 + 600);
                v58 = *a2;
                do
                {
                  v7 = v57 + 528 * (v56 - v21 + *(v50 + 612));
                  if (v58 >= 1)
                  {
                    v59 = *(v7 + 16);
                    v60 = 2;
                    do
                    {
                      v61 = *(v59 + 4 * v60);
                      if (v61 >= 1)
                      {
                        v62 = *(v25 + 176);
                        v12 = v12;
                        LODWORD(v63) = *v62;
                        v64 = 1;
                        do
                        {
                          if (v63 >= 1)
                          {
                            v65 = 0;
                            v66 = *(*(v7 + 152 + 8 * v18) + 8 * v60);
                            v67 = *(*(v25 + 216) + 8 * v12);
                            v68 = *(*(v7 + 232 + 8 * v18) + 8 * v60);
                            v69 = *(*(v25 + 224) + 8 * v12);
                            do
                            {
                              v70 = v46 + *(v25 + 40) * v65;
                              *(v67 + 4 * v65) = *(v66 + 4 * v70);
                              *(v69 + 4 * v65++) = *(v68 + 4 * v70);
                              v63 = *v62;
                            }

                            while (v65 < v63);
                            v61 = *(v59 + 4 * v60);
                          }

                          ++v12;
                          v32 = v64++ < v61;
                        }

                        while (v32);
                        v58 = *a2;
                      }

                      v32 = v60++ <= v58;
                    }

                    while (v32);
                  }

                  ++v56;
                }

                while (v56 != v51);
              }

              v71 = *(v25 + 164);
              if (v12 < v71)
              {
                v72 = *(v25 + 176);
                v12 = v12;
                LODWORD(v73) = *v72;
                do
                {
                  if (v73 >= 1)
                  {
                    v74 = 0;
                    v75 = *(*(v25 + 216) + 8 * v12);
                    v76 = *(*(v25 + 224) + 8 * v12);
                    do
                    {
                      *(v75 + 4 * v74) = 0;
                      *(v76 + 4 * v74++) = 4095;
                      v73 = *v72;
                    }

                    while (v74 < v73);
                    v71 = *(v25 + 164);
                  }

                  ++v12;
                }

                while (v12 < v71);
              }

              (*(*(*(v50 + 24) + 312 * v18 + 288) + 8 * v46))(v25 + 144, 0);
              if (*(v25 + 44) >= 1)
              {
                v77 = 0;
                v78 = *(v25 + 64);
                v79 = *(v25 + 184) + 8 * (v22 + v88);
                do
                {
                  *(*(v78 + 8 * v77) + 4 * v46) = **(v79 + 8 * v77);
                  ++v77;
                }

                while (v77 < *(v25 + 44));
              }

              BET3FLT__FreePStreamSM(v25 + 144);
              BET3FLT__FreePStreamParam((v25 + 144));
              v45 = *(v25 + 40);
              v17 = v89;
              v19 = v86;
              v23 = v87;
            }

            if (++v46 >= v45)
            {
              goto LABEL_79;
            }
          }
        }

        v17 = v89;
        v19 = v86;
        v23 = v87;
      }

LABEL_79:
      if (++v18 >= *(v17 + 32))
      {
        goto LABEL_82;
      }
    }
  }

  inited = 0;
  v23 = v16;
LABEL_82:
  v80 = *(v17 + 612) + v23;
  *(v17 + 612) = v80;
  if (v80 >= *(v17 + 608))
  {
    *a3 = 1;
  }

LABEL_84:
  v49 = inited;
LABEL_86:
  BET3FLT__FreePStreamParam(v92);
  BET3FLT__FreeSMatrices(v91);
  BET3FLT__FreeSMatrices(v90);
  return v49;
}

uint64_t BET3FXD__InitVData(uint64_t a1, void *a2, uint64_t a3)
{
  bzero(a2, 0x4C0uLL);
  result = BET3FXD__InitModelSet(a1, a2, a3);
  if ((result & 0x80000000) == 0)
  {
    result = BET3FLT__InitTreeSet(a1, a2 + 38);
    if ((result & 0x80000000) == 0)
    {

      return BET3FLT__InitDWinSet(a1, a2 + 51, a3);
    }
  }

  return result;
}

void BET3FXD__DeInitVData(uint64_t a1, uint64_t a2)
{
  BET3FXD__DeInitModelSet(a1, a2);
  BET3FLT__DeInitTreeSet(a1, (a2 + 608));
  BET3FLT__DeInitDWinSet(a1, (a2 + 816));

  bzero(a2, 0x4C0uLL);
}

uint64_t BET3FXD__LoadVData(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a2[150] < 1)
  {
    return 0;
  }

  v4 = a2;
  v6 = 0;
  v7 = a3 + 5064;
  v8 = a2 + 204;
  v9 = (a3 + 3864);
  do
  {
    ModelFile = BET3FXD__LoadModelFile(a1, v4, v6, (v9 - 300), v7, a3);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ModelFile = BET3FXD__LoadTreesFile(a1, (v4 + 152), v6, (v7 - 2640), a3, v11, v12, v13);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ModelFile = BET3FXD__LoadDWinFile(a1, v8, v6, v9);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ++v6;
    v19 = v4[150];
    v9 += 30;
    v7 += 24;
  }

  while (v6 < v19);
  if (v19 < 1)
  {
    return 0;
  }

  v20 = v4 + 178;
  v21 = (a3 + 144);
  while (1)
  {
    if (!*v20)
    {
      v22 = 2229280775;
      v27 = *v21;
      v24 = "%s tree is required\n";
      v25 = a1;
      v26 = 55032;
      goto LABEL_19;
    }

    if ((v4[130] || v4[140]) && v4[1] % *v8)
    {
      break;
    }

    ++v21;
    ++v20;
    v8 += 10;
    ++v4;
    if (!--v19)
    {
      return 0;
    }
  }

  v22 = 2229280775;
  v29 = v4[1];
  v30 = *v8;
  v28 = *v21;
  v24 = "The number of dynamic windows for %s is not correct %d %d\n";
  v25 = a1;
  v26 = 55035;
LABEL_19:
  BET3FXD__log_select_Error(v25, v26, v24, v14, v15, v16, v17, v18);
  return v22;
}

uint64_t BET3FXD__InitVStream(uint64_t a1, char *a2, _DWORD *a3)
{
  bzero(a2, 0x7A0uLL);
  *a2 = a1;
  v6 = a3[33];
  *(a2 + 8) = v6;
  v7 = heap_Calloc(*(a1 + 8), v6, 312);
  *(a2 + 3) = v7;
  if (!v7)
  {
    return 2229280778;
  }

  if (*(a2 + 8) >= 1)
  {
    v8 = 0;
    v9 = a2 + 672;
    do
    {
      *v9 = 0;
      v10 = *&a3[2 * v8 + 36];
      if (*v10)
      {
        v9 = strcpy(v9, v10);
      }

      ++v8;
      v11 = *(a2 + 8);
      v9 += 128;
    }

    while (v8 < v11);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = *(a2 + 3);
      v14 = a3[18];
      v15 = 312 * v11;
      do
      {
        v16 = v13 + v12;
        *(v16 + 12) = a3[56];
        *(v16 + 24) = a1;
        *(v16 + 144) = a1;
        if (v12)
        {
          if (a3[536])
          {
            *(v13 + v12 + 272) = 1;
          }

          else
          {
            *(v13 + v12 + 268) = 1;
          }
        }

        else
        {
          *(v13 + 264) = 1;
        }

        if (v14 == 1)
        {
          *(v13 + v12 + 276) = 1;
        }

        v12 += 312;
        ++a3;
      }

      while (v15 != v12);
    }
  }

  result = 0;
  *(a2 + 162) = 0;
  *(a2 + 632) = 0u;
  return result;
}

uint64_t BET3FXD__LoadVStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) < 1)
  {
    return 0;
  }

  v3 = a3;
  v5 = 0;
  v6 = 2229280775;
  v7 = a2 + 816;
  v8 = a2 + 4;
  v9 = a3 + 2184;
  v48 = a2 + 816;
  v49 = a3 + 2344;
  v45 = a2 + 128;
  v46 = a3 + 144;
  v10 = *(a1 + 24);
  v47 = a2 + 4;
  while (1)
  {
    v11 = (v7 + 40 * v5);
    v12 = v10 + 312 * v5;
    *(v12 + 56) = v11;
    v13 = *(v12 + 268);
    if (v13)
    {
      *(v12 + 176) = v11;
    }

    if (*(v12 + 264))
    {
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v15 = *(v8 + 4 * v5);
    *(v12 + 36) = v15;
    v16 = (v15 / *v11);
    v17 = v10 + 312 * v5;
    *(v17 + 40) = v16;
    *(v17 + 280) = *(v3 + 92);
    v18 = heap_Calloc(*(*a1 + 8), v16, 8);
    v19 = *(a1 + 24);
    *(v19 + 312 * v5 + 288) = v18;
    if (!v18)
    {
      return 2229280778;
    }

    LODWORD(v20) = *(v19 + 312 * v5 + 40);
    if (v20 >= 1)
    {
      break;
    }

LABEL_15:
    v27 = heap_Calloc(*(*a1 + 8), v20, 4);
    v28 = *(a1 + 24);
    *(v28 + 312 * v5 + 304) = v27;
    if (!v27)
    {
      return 2229280778;
    }

    v29 = v28 + 312 * v5;
    if (*(v29 + 40) >= 1)
    {
      v30 = v27;
      v44 = v3;
      v31 = 0;
      v32 = *(v49 + 8 * v5);
      while (1)
      {
        v33 = *(v32 + 8 * v31);
        if (!strcmp(v33, "OFF"))
        {
          v39 = 0;
        }

        else
        {
          if (*v33 != 79 || *(v33 + 1) != 78 || *(v33 + 2))
          {
            BET3FXD__log_select_Error(*a1, 55036, "valid breaker setting is required for stream %d\n", v34, v35, v36, v37, v38);
            return 2229280775;
          }

          v39 = 1;
        }

        *(v30 + 4 * v31++) = v39;
        if (v31 >= *(v29 + 40))
        {
          v6 = 2229280775;
          v3 = v44;
          break;
        }
      }
    }

    v43 = *(v45 + 4 * v5);
    v41 = *(v46 + 8 * v5);
    v42 = *(v29 + 36);
    BET3FXD__log_select_Diag(*a1, 1, "%s: vSize = %d, order = %d, nLayer = %d\n");
    v10 = *(a1 + 24);
    v8 = v47;
    v7 = v48;
    if (*(v10 + 312 * v5 + 268))
    {
LABEL_7:
      v14 = v10 + 312 * v5;
      *(v14 + 156) = *(v8 + 4 * v5);
      *(v14 + 160) = 1;
    }

LABEL_8:
    if (++v5 >= *(a1 + 32))
    {
      return 0;
    }
  }

  v21 = 0;
  while (!strcmp(*(*(v9 + 8 * v5) + 8 * v21), "MLPG2"))
  {
    *(*(v19 + 312 * v5 + 288) + 8 * v21++) = BET3FXD__mlpg2;
    v19 = *(a1 + 24);
    v20 = *(v19 + 312 * v5 + 40);
    if (v21 >= v20)
    {
      goto LABEL_15;
    }
  }

  BET3FXD__log_select_Error(*a1, 55036, "invalid solver for stream %d: %s\n", v22, v23, v24, v25, v26);
  return v6;
}

void BET3FXD__DeInitVStream(int *a1)
{
  if (a1 && *a1)
  {
    if (a1[8] >= 1)
    {
      v2 = 0;
      v3 = *(a1 + 3);
      v4 = 304;
      do
      {
        if (!v3)
        {
          break;
        }

        BET3FLT__FreePStreamSM(v3 + v4 - 280);
        BET3FLT__FreePStreamParam((*(a1 + 3) + v4 - 280));
        BET3FLT__FreePStreamSM(*(a1 + 3) + v4 - 160);
        BET3FLT__FreePStreamParam((*(a1 + 3) + v4 - 160));
        v3 = *(a1 + 3);
        v5 = *(v3 + v4 - 16);
        if (v5)
        {
          heap_Free(*(*a1 + 8), v5);
          v3 = *(a1 + 3);
          *(v3 + v4 - 16) = 0;
        }

        v6 = *(v3 + v4);
        if (v6)
        {
          heap_Free(*(*a1 + 8), v6);
          v3 = *(a1 + 3);
          *(v3 + v4) = 0;
        }

        ++v2;
        v4 += 312;
      }

      while (v2 < a1[8]);
    }

    v7 = *(a1 + 6);
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
      *(a1 + 6) = 0;
    }

    v8 = *(a1 + 5);
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
      *(a1 + 5) = 0;
    }

    v9 = *(a1 + 3);
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
      *(a1 + 3) = 0;
    }

    v10 = *(a1 + 79);
    if (v10)
    {
      heap_Free(*(*a1 + 8), v10);
      *(a1 + 79) = 0;
    }

    v11 = *(a1 + 80);
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
      *(a1 + 80) = 0;
    }

    BET3FXD__DeInitUttModel(a1 + 7);

    bzero(a1, 0x7A0uLL);
  }
}

uint64_t dequantDur(uint64_t a1, int a2, int a3, _DWORD *a4, _DWORD *a5, int a6)
{
  v10 = *(a1 + 4);
  v11 = *(a1 + 128) + *(a1 + 136) + (2 * a2 * *a1 * v10);
  if (*a1 == 1)
  {
    v12 = *(v11 + a3);
    v13 = *(v11 + v10 + a3);
  }

  else
  {
    v12 = *(v11 + 2 * a3);
    v13 = *(v11 + 2 * (v10 + a3));
  }

  *a4 = dequantValueToU32(v12, *(a1 + 12 + 4 * a3), *(a1 + 68), *(a1 + 70 + 2 * a3), *(a1 + 98 + 2 * a3), a6);
  *a5 = dequantValueToU32(v13, *(a1 + 12 + 4 * (*(a1 + 4) + a3)), *(a1 + 68), *(a1 + 70 + 2 * (*(a1 + 4) + a3)), *(a1 + 98 + 2 * (*(a1 + 4) + a3)), a6);
  return 0;
}

uint64_t dequantValueToU32(int a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v8 = a6 + 2 - a4;
  if (a6 + 2 > a4)
  {
    v9 = a6 + 2 - a4;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = (a6 - v8);
  v11 = a6 - v8 + 16 - a4;
  if (v10 + 16 <= a4)
  {
    v13 = a4 - v10;
    v12 = a5;
  }

  else
  {
    a1 <<= v11;
    v12 = a5;
    v13 = 16;
  }

  v14 = fxd_S32ShMultRndS32S32(a1, v12, v13);
  if (v10 >= a3)
  {
    v16 = 0x7FFFFFFFLL;
    if (0x7FFFFFFFu >> (v10 - a3) <= a2)
    {
      return v16;
    }

    v15 = a2 << (v10 - a3);
  }

  else
  {
    v15 = a2 >> (a3 - v10);
  }

  v17 = v15 + v14;
  if (v17 >= 0x7FFFFFFFu >> v9)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return v17 << v9;
  }
}

uint64_t dequantMsd(uint64_t a1, int a2, int a3, int a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, unsigned int a8)
{
  v12 = (*(a1 + 112) + *(*(a1 + 120) + 4 * a2) + *(a1 + 12) * a3 + 3 * a4 * *a1);
  if (*a1 == 1)
  {
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
  }

  else
  {
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
  }

  v16 = a1 + 12 * a4;
  v17 = (a1 + 6 * a4);
  *a5 = dequantValueToS32(v13, *(v16 + 64), *(a1 + 100), v17[14], v17[23], a8);
  *a6 = dequantValueToS32(v14, *(v16 + 68), *(a1 + 100), v17[15], v17[24], a8);
  *a7 = dequantValueToU32(v15, *(v16 + 72), *(a1 + 100), v17[16], v17[25], a8);
  return 0;
}

uint64_t dequantValueToS32(int a1, int a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6)
{
  if (a6 + 16 <= a4)
  {
    v10 = a4 - a6;
    v9 = a5;
  }

  else
  {
    a1 <<= a6 + 16 - a4;
    v9 = a5;
    v10 = 16;
  }

  v11 = fxd_S32ShMultRndS32S32(a1, v9, v10);
  v12 = v11 + (a2 << (a6 - a3));
  if ((0x7FFFFFFFu >> (a6 - a3)) <= a2)
  {
    v12 = 0x7FFFFFFF;
  }

  if (a3 > a6)
  {
    return (v11 + (a2 >> (a3 - a6)));
  }

  else
  {
    return v12;
  }
}

uint64_t dequantEnergy(unsigned __int16 *a1, int a2, int a3, __int16 a4, _DWORD *a5, _DWORD *a6, unsigned int a7)
{
  result = 2229280793;
  v11 = *(a1 + 16);
  if (v11)
  {
    if (v11 != 1)
    {
      return result;
    }

    v12 = *(a1 + 7) + 16 * a2;
    v13 = *v12 + *(v12 + 8);
    v14 = *a1;
    v15 = a1[1] + a1[2] * v14;
    v16 = 2 * a3 - 2;
  }

  else
  {
    v17 = *(a1 + 7) + 16 * a2;
    v13 = *v17 + *(v17 + 8);
    v15 = a3 - 1;
    v14 = *a1;
    v16 = a1[1] + 2 * v14 * a1[2];
  }

  v18 = v13 + (v16 * v15);
  if (v18)
  {
    v19 = 2 * a4;
    v20 = (2 * a4);
    if (v14 == 1)
    {
      v21 = *(v18 + v20);
    }

    else
    {
      v21 = *(v18 + 2 * v20);
    }

    v22 = *(a1 + 5) + 40 * (2 * a4);
    *a5 = dequantValueToS32(v21, **(v22 + 8), *(v22 + 16), **(v22 + 24), **(v22 + 32), a7);
    if (a6)
    {
      v23 = v19 | 1u;
      if (*a1 == 1)
      {
        v24 = *(v18 + v23);
      }

      else
      {
        v24 = *(v18 + 2 * v23);
      }

      v25 = *(a1 + 5) + 40 * (v19 | 1u);
      v26 = dequantValueToS32(v24, **(v25 + 8), *(v25 + 16), **(v25 + 24), **(v25 + 32), a7);
      result = 0;
      *a6 = v26;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t deVQSpectrum(unsigned __int16 *a1, uint64_t a2, int a3, int a4, int a5, int a6, __int16 a7, _DWORD *a8, _DWORD *a9, unsigned __int16 a10)
{
  v12 = a1[4];
  v13 = (v12 * a7);
  v14 = a1[2];
  v15 = (v14 + a7) * v12;
  v16 = *(a1 + 16);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = *(a1 + 7) + 16 * a3;
      v18 = *v17 + *(v17 + 8) + (2 * a4 - 2) * (*a1 * v14 + a1[1]) + 2 * *a1 * v14;
      v19 = v13 + a5;
      v20 = *(v18 + 2 * v19);
      v21 = v15 + a5;
      v22 = *(v18 + 2 * v21);
    }

    else
    {
      v20 = 0;
      v22 = 0;
      v19 = v13 + a5;
      v21 = a5 + v15;
    }
  }

  else
  {
    v23 = *(a1 + 7) + 16 * a3;
    v24 = *v23 + *(v23 + 8) + 2 * v14 * *a1 + (a1[1] + 2 * v14 * *a1) * (a4 - 1);
    v19 = v13 + a5;
    v20 = *(v24 + v19);
    v21 = v15 + a5;
    v22 = *(v24 + v21);
  }

  dequantCbkVectorElem((*(a2 + 8) + 168 * v19), v20, a6, a8, a10);
  dequantCbkVectorElem((*(a2 + 8) + 168 * v21), v22, a6, a9, a10);
  return 0;
}

uint64_t dequantCbkVectorElem(unsigned __int16 *a1, int a2, int a3, _DWORD *a4, unsigned int a5)
{
  v6 = a1[2];
  v7 = *(a1 + 18) + *(a1 + 38) + v6 * a2 * *a1;
  if (v6 == 1)
  {
    v8 = *(v7 + a3);
  }

  else
  {
    v8 = *(v7 + 2 * a3);
  }

  result = dequantValueToS32(v8, *&a1[2 * a3 + 38], a1[36], a1[a3 + 4], a1[a3 + 20], a5);
  *a4 = result;
  return result;
}

uint64_t loadQuantizedDurFile(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = 0;
  BET3FLT__xfread_BET3(&v34 + 2, 2u, 1, a3);
  if (HIWORD(v34) != 1)
  {
    v12 = 2229280772;
    v13 = *(a1 + 32);
    v14 = "LoadQuantizedDurFile: invalid quantization format";
    goto LABEL_5;
  }

  BET3FLT__xfread_BET3(&v34 + 2, 2u, 1, a3);
  BET3FLT__xfread_BET3(&v34 + 2, 2u, 1, a3);
  v11 = HIWORD(v34);
  *a2 = HIWORD(v34);
  if ((v11 - 3) <= 0xFFFFFFFD)
  {
    v12 = 2229280772;
    v13 = *(a1 + 32);
    v14 = "LoadQuantizedDurFile: invalid value for code length";
LABEL_5:
    log_OutText(v13, "SELECT_BET3", 3, 0, v14, v8, v9, v10, v33);
    goto LABEL_6;
  }

  BET3FLT__xfread_BET3(&v34 + 2, 2u, 1, a3);
  v17 = HIWORD(v34);
  *(a2 + 4) = HIWORD(v34);
  if ((v17 - 8) <= 0xFFFFFFF8)
  {
    v12 = 2229280772;
    v13 = *(a1 + 32);
    v14 = "LoadDurFile : the number of HMM states is illegal";
    goto LABEL_5;
  }

  v18 = 0;
  v19 = 4 - (*a3 & 3);
  if ((*a3 & 3) == 0)
  {
    v19 = 0;
  }

  v20 = v19 + *a3;
  if (v20 >= *(a3 + 16))
  {
    v20 = *(a3 + 16);
  }

  *a3 = v20;
  v21 = (a2 + 98);
  do
  {
    BET3FLT__xfread_BET3(v21 - 28, 2u, 1, a3);
    BET3FLT__xfread_BET3(v21, 2u, 1, a3);
    ++v18;
    v21 += 2;
  }

  while (v18 < 2 * *(a2 + 4));
  BET3FLT__xfread_BET3(&v34, 2u, 1, a3);
  v22 = 4 - (*a3 & 3);
  if ((*a3 & 3) == 0)
  {
    v22 = 0;
  }

  v23 = v22 + *a3;
  if (v23 >= *(a3 + 16))
  {
    v23 = *(a3 + 16);
  }

  *a3 = v23;
  if (*(a2 + 4) >= 1)
  {
    v24 = 0;
    v25 = (a2 + 12);
    v26 = &v35;
    do
    {
      BET3FLT__xfread_BET3(v26, 2u, 1, a3);
      v27 = *v26;
      v26 += 2;
      v28 = v27 >> (v34 - a4);
      v29 = v27 << (a4 - v34);
      if (v34 > a4)
      {
        v29 = v28;
      }

      *v25++ = v29;
      ++v24;
    }

    while (v24 < 2 * *(a2 + 4));
  }

  *(a2 + 68) = a4;
  BET3FLT__xfread_BET3(&v34 + 2, 2u, 1, a3);
  v12 = 0;
  v30 = *a3;
  v31 = 4 - (*a3 & 3);
  *(a2 + 8) = HIWORD(v34);
  if ((v30 & 3) == 0)
  {
    v31 = 0;
  }

  v32 = v31 + v30;
  if (v32 >= *(a3 + 16))
  {
    v32 = *(a3 + 16);
  }

  *a3 = v32;
  *(a2 + 128) = *(a3 + 8);
  *(a2 + 136) = v32;
LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t loadQuantizedMsdFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v50 = 0;
  v12 = 2229280772;
  v49 = 0;
  *(a2 + 4) = a3;
  BET3FLT__xfread_BET3(&v50 + 2, 2u, 1, a4);
  if (HIWORD(v50) != 1)
  {
    v17 = "LoadQuantizedFreqFile: invalid quantization format";
    goto LABEL_5;
  }

  BET3FLT__xfread_BET3(&v50 + 2, 2u, 1, a4);
  BET3FLT__xfread_BET3(&v50 + 2, 2u, 1, a4);
  v16 = HIWORD(v50);
  *(a2 + 8) = HIWORD(v50);
  if ((v16 - 4) < 0xFFFFFFFD)
  {
    v17 = "LoadQuantizedFreqFile: invalid value for number of streams";
LABEL_5:
    log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, v17, v13, v14, v15, v47);
    return v12;
  }

  BET3FLT__xfread_BET3(&v50 + 2, 2u, 1, a4);
  v19 = HIWORD(v50);
  *a2 = HIWORD(v50);
  if ((v19 - 3) < 0xFFFFFFFE)
  {
    v17 = "LoadQuantizedFreqFile: invalid value for code length";
    goto LABEL_5;
  }

  v48 = a6;
  v20 = 4 - (*a4 & 3);
  if ((*a4 & 3) == 0)
  {
    v20 = 0;
  }

  v21 = v20 + *a4;
  if (v21 >= *(a4 + 16))
  {
    v21 = *(a4 + 16);
  }

  *a4 = v21;
  BET3FLT__xfread_BET3((a2 + 14), 2u, a3, a4);
  v22 = 4 - (*a4 & 3);
  if ((*a4 & 3) == 0)
  {
    v22 = 0;
  }

  v23 = v22 + *a4;
  if (v23 >= *(a4 + 16))
  {
    v23 = *(a4 + 16);
  }

  *a4 = v23;
  if (*(a2 + 8) >= 1)
  {
    v24 = 0;
    v25 = a2 + 28;
    do
    {
      v26 = 3;
      v27 = v25;
      do
      {
        BET3FLT__xfread_BET3(v27, 2u, 1, a4);
        BET3FLT__xfread_BET3((v27 + 18), 2u, 1, a4);
        v27 += 2;
        --v26;
      }

      while (v26);
      ++v24;
      v25 += 6;
    }

    while (v24 < *(a2 + 8));
  }

  BET3FLT__xfread_BET3(&v49, 2u, 1, a4);
  v31 = 4 - (*a4 & 3);
  if ((*a4 & 3) == 0)
  {
    v31 = 0;
  }

  v32 = v31 + *a4;
  if (v32 >= *(a4 + 16))
  {
    v32 = *(a4 + 16);
  }

  *a4 = v32;
  if (*(a2 + 8) >= 1)
  {
    v33 = 0;
    v34 = a2 + 64;
    do
    {
      for (i = 0; i != 12; i += 4)
      {
        BET3FLT__xfread_BET3(&v50, 2u, 1, a4);
        if (v49 <= a5)
        {
          v36 = v50 << (a5 - v49);
        }

        else
        {
          v36 = v50 >> (v49 - a5);
        }

        *(v34 + i) = v36;
      }

      ++v33;
      v34 += 12;
    }

    while (v33 < *(a2 + 8));
  }

  *(a2 + 100) = a5;
  v37 = *(a2 + 64);
  v38 = v48;
  if (v37 >= v48)
  {
    v38 = (13 * (v37 >> 2)) >> 2;
  }

  else
  {
    log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "LoadQuantizedFreqFile : minimum Log pitch value is too small (%d in Q%d), clamping to minimum (%d)\n", v28, v29, v30, v37);
  }

  *(a2 + 104) = v38;
  *(a2 + 112) = *(a4 + 8);
  v39 = heap_Calloc(*(a1 + 8), a3, 4);
  *(a2 + 120) = v39;
  if (!v39)
  {
    return 2229280778;
  }

  v40 = *(a2 + 4);
  v41 = (-3 * *a2 * *(a2 + 8)) & 3;
  v42 = v41 + 3 * *a2 * *(a2 + 8);
  *(a2 + 12) = ((-3 * *a2 * *(a2 + 8)) & 3) + 3 * *a2 * *(a2 + 8);
  if (v40 >= 1)
  {
    v43 = 0;
    v44 = *a4;
    do
    {
      v45 = 4 - (v44 & 3);
      if ((v44 & 3) == 0)
      {
        v45 = 0;
      }

      v46 = v45 + v44;
      if (v46 >= *(a4 + 16))
      {
        v46 = *(a4 + 16);
      }

      *a4 = v46;
      *(v39 + 4 * v43) = v46;
      v44 = *a4 - v41 + v42 * *(a2 + 14 + 2 * v43);
      *a4 = v44;
      ++v43;
    }

    while (v43 < *(a2 + 4));
  }

  return 0;
}

uint64_t loadVQQuantizedCepFile(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v53 = 0;
  *(a2 + 16) = 0;
  BET3FLT__xfread_BET3(&v53, 2u, 1, a3);
  if (v53 != 1)
  {
    if (v53 != 2)
    {
      log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "LoadVQQuantizedCepFile: invalid quantization format", v6, v7, v8, v52);
      return 2229280772;
    }

    *(a2 + 16) = 1;
  }

  BET3FLT__xfread_BET3(&v53, 2u, 1, a3);
  BET3FLT__xfread_BET3(a2 + 3, 2u, 1, a3);
  BET3FLT__xfread_BET3(a2 + 2, 2u, 1, a3);
  v9 = a2[2];
  BET3FLT__xfread_BET3(a2 + 5, 2u, 1, a3);
  a2[6] = a2[5] + 1;
  *(a2 + 4) = 2;
  BET3FLT__xfread_BET3(&v53, 2u, 1, a3);
  v10 = 2229280772;
  if (v53 == 1)
  {
    v10 = 2229280778;
    v11 = 2 * v9;
    BET3FLT__xfread_BET3(a2 + 1, 2u, 1, a3);
    BET3FLT__xfread_BET3(a2, 2u, 1, a3);
    v12 = 4 - (*a3 & 3);
    if ((*a3 & 3) == 0)
    {
      v12 = 0;
    }

    v13 = v12 + *a3;
    if (v13 >= *(a3 + 16))
    {
      v13 = *(a3 + 16);
    }

    *a3 = v13;
    v14 = (2 * v9);
    v15 = heap_Calloc(*(a1 + 8), v11, 40);
    *(a2 + 5) = v15;
    if (v15)
    {
      if (v11)
      {
        v16 = 0;
        while (1)
        {
          v17 = *(a2 + 5) + 40 * v16;
          BET3FLT__xfread_BET3((v17 + 2), 2u, 1, a3);
          v18 = heap_Calloc(*(a1 + 8), *(v17 + 2), 4);
          *(v17 + 8) = v18;
          if (!v18)
          {
            break;
          }

          v19 = heap_Calloc(*(a1 + 8), *(v17 + 2), 2);
          *(v17 + 24) = v19;
          if (!v19)
          {
            break;
          }

          v20 = heap_Calloc(*(a1 + 8), *(v17 + 2), 2);
          *(v17 + 32) = v20;
          if (!v20)
          {
            break;
          }

          if (!*(v17 + 2))
          {
            log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "ReadQuantDescr: number of streams is wrong\n", v21, v22, v23, v52);
            return 2229280772;
          }

          v24 = 0;
          v25 = 0;
          v26 = 4 - (*a3 & 3);
          if ((*a3 & 3) == 0)
          {
            v26 = 0;
          }

          v27 = v26 + *a3;
          if (v27 >= *(a3 + 16))
          {
            v27 = *(a3 + 16);
          }

          *a3 = v27;
          do
          {
            BET3FLT__xfread_BET3((*(v17 + 24) + v24), 2u, 1, a3);
            BET3FLT__xfread_BET3((*(v17 + 32) + v24), 2u, 1, a3);
            ++v25;
            v24 += 2;
          }

          while (v25 < *(v17 + 2));
          BET3FLT__xfread_BET3((v17 + 16), 2u, 1, a3);
          v28 = 4 - (*a3 & 3);
          if ((*a3 & 3) == 0)
          {
            v28 = 0;
          }

          v29 = v28 + *a3;
          if (v29 >= *(a3 + 16))
          {
            v29 = *(a3 + 16);
          }

          *a3 = v29;
          BET3FLT__xfread_BET3(*(v17 + 8), 4u, *(v17 + 2), a3);
          if (++v16 == v14)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        BET3FLT__xfread_BET3(a2 + 4, 2u, 1, a3);
        v30 = heap_Calloc(*(a1 + 8), a2[4], 2);
        *(a2 + 3) = v30;
        if (v30)
        {
          v31 = 4 - (*a3 & 3);
          if ((*a3 & 3) == 0)
          {
            v31 = 0;
          }

          v32 = v31 + *a3;
          if (v32 >= *(a3 + 16))
          {
            v32 = *(a3 + 16);
          }

          *a3 = v32;
          BET3FLT__xfread_BET3(v30, 2u, a2[4], a3);
          v33 = a2[5];
          if (a2[5])
          {
            v34 = 0;
            v35 = a2[4];
            v36 = *(a2 + 4);
            v37 = 1;
            do
            {
              if (v34 + 1 < v35 && v37 > *(*(a2 + 3) + 2 * (v34 + 1)))
              {
                ++v34;
              }

              *v36++ = v34;
              ++v37;
              --v33;
            }

            while (v33);
          }

          v38 = 4 - (*a3 & 3);
          if ((*a3 & 3) == 0)
          {
            v38 = 0;
          }

          v39 = v38 + *a3;
          if (v39 >= *(a3 + 16))
          {
            v39 = *(a3 + 16);
          }

          *a3 = v39;
          BET3FLT__xfread2ptr_BET3(a2 + 6, 2u, a2[3], a3);
          *(a2 + 6) -= 4;
          v40 = heap_Calloc(*(a1 + 8), a2[3], 16);
          *(a2 + 7) = v40;
          if (v40)
          {
            v41 = *a3;
            v42 = 4 - (*a3 & 3);
            if ((*a3 & 3) == 0)
            {
              v42 = 0;
            }

            *(a2 + 7) = v40 - 32;
            v43 = v42 + v41;
            v44 = *(a3 + 16);
            if (v43 >= v44)
            {
              v43 = *(a3 + 16);
            }

            *a3 = v43;
            v45 = a2[3];
            if (a2[3])
            {
              v46 = *(a3 + 8);
              v47 = *(a2 + 16);
              v48 = (v40 + 8);
              v49 = 4;
              do
              {
                v50 = 4 - (v43 & 3);
                if ((v43 & 3) == 0)
                {
                  v50 = 0;
                }

                v43 += v50;
                if (v43 >= v44)
                {
                  v43 = v44;
                }

                *(v48 - 1) = v46;
                *v48 = v43;
                if (v47)
                {
                  if (v47 == 1)
                  {
                    v43 += 2 * *(*(a2 + 6) + v49) * (a2[1] + a2[2] * *a2);
                  }
                }

                else
                {
                  v43 += (a2[1] + 2 * *a2 * a2[2]) * *(*(a2 + 6) + v49);
                }

                v49 += 2;
                v48 += 4;
                --v45;
              }

              while (v45);
              v10 = 0;
              *a3 = v43;
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

  return v10;
}

uint64_t loadCodebookSet(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  memset(v42, 0, 512);
  v43[1] = 0;
  BET3FLT__xfread_BET3(&v43[1], 2u, 1, a3);
  if (v43[1] != 1)
  {
    v11 = "ReadQCodeBookSetHdr: invalid quantization format";
    goto LABEL_5;
  }

  BET3FLT__xfread_BET3(&v43[1], 2u, 1, a3);
  BET3FLT__xfread_BET3(v42, 2u, 1, a3);
  v10 = LOWORD(v42[0]);
  if (LOWORD(v42[0]) >= 0x97u)
  {
    v11 = "ReadQCodeBookSetHdr : Number of codebooks is too high, aborting\n";
LABEL_5:
    v12 = 2229280772;
    v13 = *(a1 + 32);
    goto LABEL_6;
  }

  v15 = 4 - (*a3 & 3);
  v12 = 2229280772;
  if ((*a3 & 3) == 0)
  {
    v15 = 0;
  }

  v16 = v15 + *a3;
  if (v16 >= *(a3 + 16))
  {
    v16 = *(a3 + 16);
  }

  *a3 = v16;
  BET3FLT__xfread_BET3(v42 + 4, 4u, v10, a3);
  v17 = v42[0];
  v18 = heap_Calloc(*(a1 + 8), LOWORD(v42[0]), 168);
  *(a2 + 8) = v18;
  if (!v18)
  {
    return 2229280778;
  }

  *(a2 + 2) = v17;
  *a2 = 0;
  v19 = v42[0];
  if (!LOWORD(v42[0]))
  {
LABEL_46:
    v12 = 0;
    *a2 = v19;
    return v12;
  }

  v40 = a1;
  v20 = 0;
  v21 = 40;
  v22 = 76;
  while (1)
  {
    v23 = *(a2 + 8);
    v24 = (v23 + 168 * v20);
    *v43 = 0;
    BET3FLT__xfread_BET3(v24, 2u, 1, a3);
    if (*v24 > 0x10u)
    {
      v11 = "LoadQuantizedCodebook: invalid value for codebook vector length\n";
      goto LABEL_50;
    }

    BET3FLT__xfread_BET3(v24 + 1, 2u, 1, a3);
    BET3FLT__xfread_BET3(v24 + 2, 2u, 1, a3);
    if (v24[2] - 3 < 0xFFFFFFFE)
    {
      break;
    }

    v25 = 4 - (*a3 & 3);
    if ((*a3 & 3) == 0)
    {
      v25 = 0;
    }

    v26 = v25 + *a3;
    if (v26 >= *(a3 + 16))
    {
      v26 = *(a3 + 16);
    }

    *a3 = v26;
    if (*v24)
    {
      v27 = 0;
      v28 = (v23 + v21);
      do
      {
        BET3FLT__xfread_BET3(v28 - 32, 2u, 1, a3);
        BET3FLT__xfread_BET3(v28, 2u, 1, a3);
        ++v27;
        v28 += 2;
      }

      while (v27 < *v24);
    }

    BET3FLT__xfread_BET3(&v43[1], 2u, 1, a3);
    v29 = 4 - (*a3 & 3);
    if ((*a3 & 3) == 0)
    {
      v29 = 0;
    }

    v30 = *(a3 + 16);
    if (v29 + *a3 >= v30)
    {
      v31 = *(a3 + 16);
    }

    else
    {
      v31 = v29 + *a3;
    }

    *a3 = v31;
    if (*v24)
    {
      v32 = 0;
      v33 = v23 + v22;
      v34 = a4;
      do
      {
        BET3FLT__xfread_BET3(v43, 2u, 1, a3);
        v35 = v43[1];
        if (v43[1] <= v34)
        {
          if (v43[1] + 16 < v34)
          {
            v34 = v43[1] + 16;
          }

          v36 = v43[0] << (v34 - LOBYTE(v43[1]));
        }

        else
        {
          v36 = v43[0];
        }

        *(v33 + 4 * v32++) = v36;
        v37 = *v24;
      }

      while (v32 < v37);
      v31 = *a3;
      v30 = *(a3 + 16);
    }

    else
    {
      LODWORD(v37) = 0;
      v35 = v43[1];
      v34 = a4;
    }

    v38 = 4 - (v31 & 3);
    if ((v31 & 3) == 0)
    {
      v38 = 0;
    }

    if (v35 <= v34)
    {
      LOWORD(v35) = v34;
    }

    v24[36] = v35;
    v39 = v38 + v31;
    if (v38 + v31 >= v30)
    {
      v39 = v30;
    }

    *(v24 + 18) = *(a3 + 8);
    *(v24 + 38) = v39;
    *a3 = v39 + v37 * v24[2] * v24[1];
    ++v20;
    v19 = v42[0];
    v21 += 168;
    v22 += 168;
    if (v20 >= LOWORD(v42[0]))
    {
      goto LABEL_46;
    }
  }

  v11 = "LoadQuantizedCodebook: invalid value for code length\n";
LABEL_50:
  v13 = *(v40 + 32);
LABEL_6:
  log_OutText(v13, "SELECT_BET3", 3, 0, v11, v7, v8, v9, v40);
  return v12;
}

uint64_t synth_bet3_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ISynth_Bet3_0;
  return result;
}

uint64_t synth_bet3_ObjOpen_0(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Object = 2164269063;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  __s1 = 0;
  v41 = xmmword_1F42D7388;
  v42 = off_1F42D7398;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v46);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    log_OutText(*(v46 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjOpen", v10, v11, v12, v38);
    v13 = heap_Calloc(*(v46 + 8), 1, 1344);
    if (!v13)
    {
      log_OutPublic(*(v46 + 32), "SYNTH_BET3", 56000, 0, v14, v15, v16, v17, v39);
      Object = 2164269066;
LABEL_27:
      log_OutText(*(v46 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjOpen: %x", v27, v28, v29, Object);
      log_OutEvent(*(v46 + 32), 22, "", v32, v33, v34, v35, v36, v40);
      return Object;
    }

    v18 = v13;
    *v13 = a3;
    v13[1] = a4;
    v19 = v46;
    v13[2] = v46;
    if ((critsec_ObjOpen(*(v19 + 16), *(v19 + 8), v13 + 3) & 0x80000000) == 0)
    {
      *&v41 = v18;
      if ((synth_bet3_loc_ParamGetListen_0(v18, "volume", 0, 100, 0x50u, &v41, &v44) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v18, "rate", 50, 400, 0x64u, &v41, &v44) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v18, "rate_baseline", 50, 400, 0x64u, &v41, &v44) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v18, "pitch", 50, 200, 0x64u, &v41, &v44) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v18, "pitch_baseline", 50, 200, 0x64u, &v41, &v44) & 0x80000000) == 0 && (synth_bet3_loc_ParamGetListen_0(v18, "audiooutputbufsamples", 1, 0x7FFFFFFF, 0x100u, &v41, &v44) & 0x80000000) == 0)
      {
        *(v18 + 40) = v44;
      }
    }

    if ((paramc_ParamGetStr(*(v46 + 40), "synth_type", &__s1) & 0x80000000) == 0)
    {
      v20 = __s1;
      if (!strcmp(__s1, "rcc"))
      {
        log_OutText(*(v46 + 32), "SYNTH_BET3", 4, 0, "Setting up MRCC synthesizer", v21, v22, v23, v39);
        *(v18 + 1036) = 1;
        v30 = synth_bet3_loc_SynthInit_MRCC(v18);
LABEL_22:
        Object = v30;
        if ((v30 & 0x80000000) == 0)
        {
          Object = objc_GetObject(*(v46 + 48), "SYNTHSTREAM", &v45);
          if ((Object & 0x80000000) == 0)
          {
            *(v18 + 32) = *(v45 + 8);
            *a5 = v18;
            *(a5 + 8) = 9346;
            goto LABEL_27;
          }

          log_OutPublic(*(*(v18 + 16) + 32), "SYNTH_BET3", 56001, 0, v31, v27, v28, v29, v39);
        }

        *a5 = v18;
        *(a5 + 8) = 9346;
        synth_bet3_ObjClose_0(v18, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
        goto LABEL_27;
      }

      if (strcmp(v20, "mlsa") && strcmp(v20, "mfs"))
      {
        log_OutText(*(v46 + 32), "SYNTH_BET3", 4, 0, "Unknown synthesizer: %s", v24, v25, v26, v20);
        return 7;
      }

      log_OutText(*(v46 + 32), "SYNTH_BET3", 4, 0, "Setting up MLSA synthesizer", v24, v25, v26, v39);
    }

    *(v18 + 1036) = 0;
    v30 = synth_bet3_loc_SynthInit_MLSA_0(v18);
    goto LABEL_22;
  }

  return Object;
}

uint64_t synth_bet3_ObjClose_0(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 9346, 1344);
  if (v3 < 0)
  {
    return 2164269064;
  }

  LODWORD(v7) = v3;
  v8 = *(a1 + 16);
  log_OutText(*(v8 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjClose", v4, v5, v6, v36);
  v9 = *(v8 + 40);
  v38 = a1;
  v37 = *(&xmmword_1F42D7388 + 8);
  v39 = *(&xmmword_1F42D7388 + 8);
  v10 = paramc_ListenerRemove(v9, "volume", &v38);
  v11 = *(v8 + 40);
  if (v10 < 0)
  {
    LODWORD(v7) = v10;
  }

  v38 = a1;
  v39 = v37;
  v12 = paramc_ListenerRemove(v11, "rate", &v38);
  v13 = *(v8 + 40);
  if (v12 < 0 && v7 > -1)
  {
    LODWORD(v7) = v12;
  }

  v38 = a1;
  v39 = v37;
  v15 = paramc_ListenerRemove(v13, "rate_baseline", &v38);
  v16 = *(v8 + 40);
  if (v15 < 0 && v7 > -1)
  {
    LODWORD(v7) = v15;
  }

  v38 = a1;
  v39 = v37;
  v18 = paramc_ListenerRemove(v16, "pitch", &v38);
  v19 = *(v8 + 40);
  if (v18 < 0 && v7 > -1)
  {
    LODWORD(v7) = v18;
  }

  v38 = a1;
  v39 = v37;
  v21 = paramc_ListenerRemove(v19, "pitch_baseline", &v38);
  v22 = *(v8 + 40);
  if (v21 < 0 && v7 > -1)
  {
    LODWORD(v7) = v21;
  }

  v38 = a1;
  v39 = v37;
  v24 = paramc_ListenerRemove(v22, "audiooutputbufsamples", &v38);
  if (v24 >= 0 || v7 <= -1)
  {
    v7 = v7;
  }

  else
  {
    v7 = v24;
  }

  if (*(a1 + 32))
  {
    v26 = objc_ReleaseObject(*(v8 + 48), "SYNTHSTREAM");
    if (v26 >= 0 || v7 <= -1)
    {
      v7 = v7;
    }

    else
    {
      v7 = v26;
    }
  }

  v28 = *(a1 + 1036);
  if (v28 == 1)
  {
    RccSyn__deinit_Synthesis(a1 + 1048);
  }

  else if (!v28)
  {
    MFVSyn__denit__MVF_Synthesis((a1 + 64));
  }

  v29 = *(a1 + 24);
  if (v29)
  {
    v30 = critsec_ObjClose(v29);
    if (v7 > -1 && v30 < 0)
    {
      v7 = v30;
    }

    else
    {
      v7 = v7;
    }
  }

  heap_Free(*(v8 + 8), a1);
  log_OutText(*(v8 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjClose: %x", v32, v33, v34, v7);
  return v7;
}

uint64_t synth_bet3_ObjReopen_0(uint64_t a1, int a2)
{
  __s1 = 0;
  if ((safeh_HandleCheck(a1, a2, 9346, 1344) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v6 = *(a1 + 16);
  log_OutText(*(v6 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjReopen", v3, v4, v5, v20);
  if ((paramc_ParamGetStr(*(v6 + 40), "synth_type", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  v7 = __s1;
  if (!strcmp(__s1, "rcc"))
  {
    log_OutText(*(v6 + 32), "SYNTH_BET3", 4, 0, "Setting up MRCC synthesizer", v8, v9, v10, v21);
    MFVSyn__denit__MVF_Synthesis((a1 + 64));
    *(a1 + 1036) = 1;
    inited = synth_bet3_loc_SynthInit_MRCC(a1);
    goto LABEL_11;
  }

  if (!strcmp(v7, "mlsa") || !strcmp(v7, "mfs"))
  {
    log_OutText(*(v6 + 32), "SYNTH_BET3", 4, 0, "Setting up MLSA synthesizer", v11, v12, v13, v21);
LABEL_9:
    RccSyn__deinit_Synthesis(a1 + 1048);
    *(a1 + 1036) = 0;
    inited = synth_bet3_loc_SynthInit_MLSA_0(a1);
LABEL_11:
    v14 = inited;
    log_OutText(*(v6 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjReopen: %x", v16, v17, v18, inited);
    return v14;
  }

  log_OutText(*(v6 + 32), "SYNTH_BET3", 4, 0, "Unknown synthesizer: %s", v11, v12, v13, v7);
  return 7;
}

uint64_t synth_bet3_ProcessStart_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 9346, 1344) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  synstrmaux_InitStreamOpener(a1 + 128, *(*(a1 + 16) + 32), "SYNTH_BET3");
  if (synstrmaux_BuildAudioContentType("audio/L16;rate=", *(a1 + 48), (a1 + 80), 0x30uLL) > 0x2F)
  {
    return 9;
  }

  synstrmaux_RegisterInStream((a1 + 128), "application/x-realspeak-bet3-speech-frames;version=5.0", 0, a1 + 952);
  synstrmaux_RegisterInStream((a1 + 128), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 968);
  synstrmaux_RegisterOutStream((a1 + 128), a1 + 80, a1 + 984);
  synstrmaux_RegisterOutStream((a1 + 128), "application/x-realspeak-markers-pp;version=4.0", a1 + 1000);
  v8 = synstrmaux_OpenStreams((a1 + 128), *(a1 + 32), a3, a4);
  if ((v8 & 0x80000000) != 0)
  {
    *(a1 + 1016) = 0;
    *(a1 + 1028) = 0;
LABEL_12:
    synth_bet3_ProcessEnd_0(a1, a2);
    return v8;
  }

  v9 = *(a1 + 1036);
  if (v9)
  {
    if (v9 != 1)
    {
      *(a1 + 1016) = 0;
      *(a1 + 1028) = 0;
      return v8;
    }

    RccSyn__reset_Synthesis(a1 + 1048);
    inited = synth_bet3_loc_SynthInit_MRCC(a1);
  }

  else
  {
    inited = BET3FXD__MFVSyn__reset__MVF_Synthesis((a1 + 64));
  }

  v8 = inited;
  *(a1 + 1016) = 0;
  *(a1 + 1028) = 0;
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  return v8;
}

uint64_t synth_bet3_Process_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v214[25] = *MEMORY[0x1E69E9840];
  v8 = -2130698234;
  v9 = safeh_HandleCheck(a1, a2, 9346, 1344);
  if (v9 < 0)
  {
    goto LABEL_13;
  }

  v10 = 1;
  if (v9 || !a1)
  {
    goto LABEL_14;
  }

  if (*(a1 + 1036) != 1)
  {
    __n = 0;
    v212 = 0;
    __dst = 0;
    __src = 0;
    v208 = 0;
    v209 = 0;
    if ((safeh_HandleCheck(a1, a2, 9346, 1344) & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    *a5 = 1;
    v13 = *(a1 + 40);
    v14 = *(a1 + 44);
    if (v13 >= v14)
    {
      if (v14)
      {
        v14 *= v13 / v14;
      }

      else
      {
        v14 = *(a1 + 40);
      }
    }

    v10 = (*(*(a1 + 32) + 144))(*(a1 + 952), *(a1 + 960), &__n + 4, &v212);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_250;
    }

    if (!HIDWORD(__n))
    {
      if (v212)
      {
        if (!*(a1 + 1000))
        {
          goto LABEL_283;
        }

        v10 = (*(*(a1 + 32) + 88))(*(a1 + 968), *(a1 + 976), &__dst, &__n);
        if ((v10 & 0x80000000) != 0)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x", v166, v167, v168, v169, "contentType");
        }

        else if (__n)
        {
          v10 = (*(*(a1 + 32) + 112))(*(a1 + 1000), *(a1 + 1008), &v209);
          if ((v10 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x", v170, v171, v172, v173, "stream");
          }
        }

        if ((v10 & 0x80000000) == 0 && __n && __dst && v209)
        {
          memcpy(v209, __dst, __n);
          v180 = __n;
          LODWORD(__n) = __n >> 5;
          if (v180 >= 0x20)
          {
            LODWORD(v176) = 0;
            v181 = 0;
            v182 = *(a1 + 1024);
            v183 = v209 + 16;
            do
            {
              *(v183 - 1) = v182;
              *v183 = 0;
              ++v181;
              v176 = (v176 + 32);
              v183 += 8;
            }

            while (v181 < __n);
            goto LABEL_281;
          }

          goto LABEL_276;
        }

LABEL_277:
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_14;
        }

        goto LABEL_283;
      }

LABEL_259:
      *a5 = 0;
      goto LABEL_14;
    }

    v21 = (*(*(a1 + 32) + 88))(*(a1 + 952), *(a1 + 960), &__src, &__n + 4);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_251;
    }

    v10 = (*(*(a1 + 32) + 88))(*(a1 + 968), *(a1 + 976), &__dst, &__n);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_258;
    }

    if (HIDWORD(__n) < 8)
    {
      goto LABEL_14;
    }

    v30 = (*(*(a1 + 32) + 112))(*(a1 + 984), *(a1 + 992), &v208, 2 * v14);
    if ((v30 & 0x80000000) != 0)
    {
LABEL_260:
      v10 = v30;
      v174 = *(*(a1 + 16) + 32);
LABEL_285:
      log_OutPublic(v174, "SYNTH_BET3", 56007, "%s%s%s%x", v31, v32, v33, v34, "stream");
      goto LABEL_14;
    }

    if (__n)
    {
      v35 = (*(*(a1 + 32) + 112))(*(a1 + 1000), *(a1 + 1008), &v209);
      if ((v35 & 0x80000000) != 0)
      {
        goto LABEL_284;
      }
    }

    v10 = critsec_Enter(*(a1 + 24));
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    v119 = *__src;
    v207 = 0;
    v206 = 0;
    v205 = 0;
    v202 = *(v119 + 48);
    if (__n && __dst && v209)
    {
      memcpy(v209, __dst, __n);
      LODWORD(__n) = __n >> 5;
    }

    v120 = *(v119 + 32);
    if (v120 < 1)
    {
      goto LABEL_314;
    }

    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = *(v119 + 24);
    do
    {
      v125 = v124[3];
      if (v125 == 1)
      {
        v126 = v124;
      }

      else
      {
        v126 = v123;
      }

      if (v125 == 2)
      {
        v126 = v123;
        v127 = v124;
      }

      else
      {
        v127 = v122;
      }

      if (v125 == 3)
      {
        v121 = v124;
      }

      else
      {
        v123 = v126;
        v122 = v127;
      }

      v124 += 78;
      --v120;
    }

    while (v120);
    if (!v123 || !v122 || !v121)
    {
      goto LABEL_314;
    }

    if (*(a1 + 1016) >= v123[11])
    {
      v110 = 0;
      LODWORD(v49) = 0;
      v8 = v10;
      goto LABEL_300;
    }

    v128 = 0;
    LODWORD(v49) = 0;
    v129 = (a1 + 1020);
    while (1)
    {
      if (*(a1 + 52) && *(a1 + 44) + v128 > v14)
      {
LABEL_246:
        if (v128)
        {
          v8 = v10;
          if ((v10 & 0x80000000) == 0)
          {
            v8 = (*(*(a1 + 32) + 120))(*(a1 + 984), *(a1 + 992), 2 * v128);
            if (v8 < 0)
            {
LABEL_249:
              v165 = *(*(a1 + 16) + 32);
LABEL_313:
              log_OutPublic(v165, "SYNTH_BET3", 56007, "%s%s%s%x", v106, v107, v108, v109, "stream");
              goto LABEL_314;
            }
          }
        }

        else
        {
          v8 = v10;
        }

        v110 = v49 != 0;
        if (v8 < 0 || !v49)
        {
          if (v8 < 0)
          {
            goto LABEL_314;
          }
        }

        else
        {
          v8 = (*(*(a1 + 32) + 120))(*(a1 + 1000), *(a1 + 1008), (32 * v49));
          if (v8 < 0)
          {
LABEL_312:
            v165 = *(*(a1 + 16) + 32);
            goto LABEL_313;
          }

          v110 = 1;
        }

LABEL_300:
        if (*(a1 + 1016) >= v123[11])
        {
          v8 = (*(*(a1 + 32) + 96))(*(a1 + 952), *(a1 + 960), 8);
          if ((v8 & 0x80000000) == 0)
          {
            *(a1 + 1016) = 0;
            v193 = HIDWORD(__n);
            goto LABEL_304;
          }

          goto LABEL_310;
        }

LABEL_301:
        v194 = 2;
        goto LABEL_307;
      }

      v130 = v209;
      if (v209)
      {
        v131 = v49 >= __n;
      }

      else
      {
        v131 = 1;
      }

      v204 = v128;
      if (!v131)
      {
        v49 = v49;
        v132 = (32 * v49) | 0x18;
        do
        {
          v133 = &v130[v132];
          if (*(v133 - 3) > *v129)
          {
            break;
          }

          v134 = *(v133 - 6);
          if (v134 > 17)
          {
            if (v134 == 18)
            {
              critsec_Leave(*(a1 + 24));
              v135 = *(*(a1 + 16) + 40);
              v136 = *(v209 + v132);
              v137 = "rate";
              goto LABEL_206;
            }

            if (v134 == 24)
            {
              critsec_Leave(*(a1 + 24));
              v135 = *(*(a1 + 16) + 40);
              v136 = *(v209 + v132);
              v137 = "volume";
              goto LABEL_206;
            }
          }

          else
          {
            if (v134 == 16)
            {
              critsec_Leave(*(a1 + 24));
              v135 = *(*(a1 + 16) + 40);
              v136 = *(v209 + v132);
              v137 = "pitch";
              goto LABEL_206;
            }

            if (v134 == 17)
            {
              critsec_Leave(*(a1 + 24));
              v135 = *(*(a1 + 16) + 40);
              v136 = *(v209 + v132);
              v137 = "timbre";
LABEL_206:
              paramc_ParamSetUInt(v135, v137, v136);
              critsec_Enter(*(a1 + 24));
            }
          }

          v130 = v209;
          v138 = v209 + v132;
          *(v138 - 3) = *(a1 + 1024);
          *(v138 - 2) *= (*(*(a1 + 64) + 40) * *(a1 + 44)) >> 14;
          ++v49;
          v132 += 32;
        }

        while (v49 < __n);
      }

      v206 = 0;
      v139 = *(v202 + *v123);
      if ((v139 & 4) != 0)
      {
        v141 = exp_S7_25(2 * **(*(v122 + 8) + 8 * *v122), &v205);
        v140 = v141 >> (25 - v205);
        ++*v122;
        v139 = *(v202 + *v123);
      }

      else
      {
        LOWORD(v140) = 0;
      }

      if ((v139 & 8) != 0)
      {
        v143 = exp_S7_25(2 * **(*(v121 + 8) + 8 * *v121), &v205);
        v142 = v143 >> ~v205;
        ++*v121;
      }

      else
      {
        LOWORD(v142) = 0;
      }

      v144 = *(a1 + 64);
      if ((*(v144 + 120) & 0x80000000) == 0)
      {
        v145 = 0;
        v146 = *(*(v123 + 8) + 8 * *(a1 + 1016));
        do
        {
          *(v214 + v145) = *(v146 + 4 * v145) >> 2;
          v147 = *(v144 + 120);
          v90 = v145++ < v147;
        }

        while (v90);
        if ((v147 & 0x80000000) == 0)
        {
          v148 = *(a1 + 72);
          if (v148)
          {
            v149 = 0;
            do
            {
              *(v214 + v149) += *(v148 + 4 * v149);
              v90 = v149++ < *(v144 + 120);
            }

            while (v90);
          }
        }
      }

      LODWORD(v10) = BET3FXD__MFVSyn__SynthesisOneFrame(v144, v140, v214, v142, &v206, &v207);
      v150 = 0;
      if ((v10 & 0x80000000) != 0)
      {
        v129 = (a1 + 1020);
        v128 = v204;
        goto LABEL_243;
      }

      v151 = v206;
      v129 = (a1 + 1020);
      v128 = v204;
      if (!v206)
      {
        goto LABEL_243;
      }

      v152.i32[0] = 1;
      v152.i32[1] = v206;
      *(a1 + 1020) = vadd_s32(*(a1 + 1020), v152);
      if (v151 + v204 <= v14)
      {
        break;
      }

      if (v204)
      {
        v153 = (*(*(a1 + 32) + 120))(*(a1 + 984), *(a1 + 992), 2 * v204);
        if (v153 < 0)
        {
          LODWORD(v10) = v153;
LABEL_241:
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x", v154, v155, v156, v157, "stream");
          v128 = 0;
          v150 = *(a1 + 52) != 0;
          goto LABEL_242;
        }

        v151 = v206;
      }

      if (v151 <= v14)
      {
        v158 = v14;
      }

      else
      {
        v158 = v151;
      }

      if (!*(a1 + 52))
      {
        v151 = v158;
      }

      LODWORD(v10) = (*(*(a1 + 32) + 112))(*(a1 + 984), *(a1 + 992), &v208, 2 * v151);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_241;
      }

      v128 = 0;
      v159 = 0;
      v160 = 0;
      v199 = *(a1 + 52) != 0;
      v151 = v206;
      v161 = v208;
      if (v206)
      {
        goto LABEL_237;
      }

LABEL_239:
      vol_ScaleToLevel((v161 + 2 * v159), v160, *(a1 + 60));
      v128 = v206 + v159;
      v129 = (a1 + 1020);
      v150 = v199;
LABEL_242:
      ++*v123;
      ++*(a1 + 1016);
LABEL_243:
      if (v150 || (v10 & 0x80000000) != 0 || *(a1 + 1016) >= v123[11])
      {
        goto LABEL_246;
      }
    }

    v199 = 0;
    v161 = v208;
LABEL_237:
    v162 = v128;
    v163 = 0;
    v159 = v162;
    v164 = v207;
    v160 = v151;
    do
    {
      *(v161 + 2 * (v159 + v163)) = *(v164 + 2 * v163);
      ++v163;
    }

    while (v151 != v163);
    goto LABEL_239;
  }

  LODWORD(v207) = 0;
  __n = 0;
  v214[0] = 0;
  __dst = 0;
  __src = 0;
  v209 = 0;
  if ((safeh_HandleCheck(a1, a2, 9346, 1344) & 0x80000000) != 0)
  {
LABEL_13:
    v10 = 2164269064;
    goto LABEL_14;
  }

  *a5 = 1;
  v11 = *(a1 + 40);
  v12 = *(a1 + 44);
  if (v11 >= v12)
  {
    if (v12)
    {
      v12 *= v11 / v12;
    }

    else
    {
      v12 = *(a1 + 40);
    }
  }

  v10 = (*(*(a1 + 32) + 144))(*(a1 + 952), *(a1 + 960), &v207, &__n);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_250:
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56004, "%s%x", v17, v18, v19, v20, "lhError");
    goto LABEL_14;
  }

  if (!v207)
  {
    if (__n)
    {
      if (!*(a1 + 1000))
      {
        goto LABEL_283;
      }

      v10 = (*(*(a1 + 32) + 88))(*(a1 + 968), *(a1 + 976), &__src, &__n + 4);
      if ((v10 & 0x80000000) != 0)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x", v111, v112, v113, v114, "contentType");
      }

      else if (HIDWORD(__n))
      {
        v10 = (*(*(a1 + 32) + 112))(*(a1 + 1000), *(a1 + 1008), &__dst);
        if ((v10 & 0x80000000) != 0)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x", v115, v116, v117, v118, "stream");
        }
      }

      if ((v10 & 0x80000000) == 0 && HIDWORD(__n) && __src && __dst)
      {
        memcpy(__dst, __src, HIDWORD(__n));
        v175 = HIDWORD(__n);
        HIDWORD(__n) >>= 5;
        if (v175 >= 0x20)
        {
          LODWORD(v176) = 0;
          v177 = 0;
          v178 = *(a1 + 1024);
          v179 = __dst + 16;
          do
          {
            *(v179 - 1) = v178;
            *v179 = 0;
            ++v177;
            v176 = (v176 + 32);
            v179 += 8;
          }

          while (v177 < HIDWORD(__n));
          goto LABEL_281;
        }

LABEL_276:
        v176 = 0;
LABEL_281:
        v35 = (*(*(a1 + 32) + 120))(*(a1 + 1000), *(a1 + 1008), v176);
        if ((v35 & 0x80000000) != 0)
        {
LABEL_284:
          v10 = v35;
          v174 = *(*(a1 + 16) + 32);
          goto LABEL_285;
        }

        v184 = (*(*(a1 + 32) + 96))(*(a1 + 968), *(a1 + 976), v176);
        if ((v184 & 0x80000000) != 0)
        {
          v10 = v184;
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56006, "%s%s%s%x", v185, v186, v187, v188, "contentType");
          goto LABEL_14;
        }

LABEL_283:
        v10 = synstrmaux_CloseOutStreamsOnly((a1 + 128), *(a1 + 32));
        goto LABEL_14;
      }

      goto LABEL_277;
    }

    goto LABEL_259;
  }

  v21 = (*(*(a1 + 32) + 88))(*(a1 + 952), *(a1 + 960), v214, &v207);
  if ((v21 & 0x80000000) != 0)
  {
LABEL_251:
    v10 = v21;
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x", v22, v23, v24, v25, "contentType");
    goto LABEL_14;
  }

  v10 = (*(*(a1 + 32) + 88))(*(a1 + 968), *(a1 + 976), &__src, &__n + 4);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_258:
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x", v26, v27, v28, v29, "contentType");
    goto LABEL_14;
  }

  if (v207 < 8)
  {
    goto LABEL_14;
  }

  v30 = (*(*(a1 + 32) + 112))(*(a1 + 984), *(a1 + 992), &v209, 2 * v12);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_260;
  }

  if (HIDWORD(__n))
  {
    v35 = (*(*(a1 + 32) + 112))(*(a1 + 1000), *(a1 + 1008), &__dst);
    if ((v35 & 0x80000000) != 0)
    {
      goto LABEL_284;
    }
  }

  v10 = critsec_Enter(*(a1 + 24));
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  v37 = *v214[0];
  v208 = 0;
  v212 = 0;
  v38 = *(v37 + 48);
  LOWORD(v206) = 0;
  if (HIDWORD(__n) && __src && __dst)
  {
    memcpy(__dst, __src, HIDWORD(__n));
    HIDWORD(__n) >>= 5;
  }

  v39 = *(v37 + 32);
  if (v39 < 1)
  {
    goto LABEL_314;
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  v200 = *(a1 + 1324);
  v43 = *(v37 + 24);
  do
  {
    v44 = v43[3];
    if (v44 == 1)
    {
      v45 = v43;
    }

    else
    {
      v45 = v42;
    }

    if (v44 == 2)
    {
      v45 = v42;
      v46 = v43;
    }

    else
    {
      v46 = v41;
    }

    if (v44 == 3)
    {
      v40 = v43;
    }

    else
    {
      v42 = v45;
      v41 = v46;
    }

    v43 += 78;
    --v39;
  }

  while (v39);
  if (!v42 || !v41 || !v40)
  {
    goto LABEL_314;
  }

  v47 = *(a1 + 1016);
  if (v47 >= v42[11])
  {
    v110 = 0;
    LODWORD(v49) = 0;
    *(a1 + 1028) = 0;
    v8 = v10;
    goto LABEL_288;
  }

  v198 = v38;
  v48 = 0;
  LODWORD(v49) = 0;
  v201 = (a1 + 1020);
  v8 = v10;
  while (!*(a1 + 52) || *(a1 + 44) + v48 <= v12)
  {
    v50 = __dst;
    v51 = HIDWORD(__n);
    if (__dst)
    {
      v52 = v49 >= HIDWORD(__n);
    }

    else
    {
      v52 = 1;
    }

    v203 = v48;
    if (!v52)
    {
      v49 = v49;
      v53 = (32 * v49) | 0x18;
      while (1)
      {
        if (*&v50[v53 - 12] > v201->i32[0])
        {
LABEL_68:
          v47 = *(a1 + 1016);
          break;
        }

        v54 = *&v50[v53 - 24];
        if (v54 > 17)
        {
          if (v54 == 18)
          {
            critsec_Leave(*(a1 + 24));
            v55 = *(*(a1 + 16) + 40);
            v56 = *(__dst + v53);
            v57 = "rate";
          }

          else
          {
            if (v54 != 24)
            {
              goto LABEL_64;
            }

            critsec_Leave(*(a1 + 24));
            v55 = *(*(a1 + 16) + 40);
            v56 = *(__dst + v53);
            v57 = "volume";
          }
        }

        else if (v54 == 16)
        {
          critsec_Leave(*(a1 + 24));
          v55 = *(*(a1 + 16) + 40);
          v56 = *(__dst + v53);
          v57 = "pitch";
        }

        else
        {
          if (v54 != 17)
          {
            goto LABEL_64;
          }

          critsec_Leave(*(a1 + 24));
          v55 = *(*(a1 + 16) + 40);
          v56 = *(__dst + v53);
          v57 = "timbre";
        }

        paramc_ParamSetUInt(v55, v57, v56);
        critsec_Enter(*(a1 + 24));
        v51 = HIDWORD(__n);
LABEL_64:
        v50 = __dst;
        if (v49 < v51 && *(__dst + v53 - 24) == 8)
        {
          v58 = *(a1 + 1016);
          *(a1 + 1028) = v58;
          *(a1 + 1032) = *&v50[v53 + 24] + v58;
        }

        v59 = &v50[v53];
        *(v59 - 3) = *(a1 + 1024);
        *(v59 - 2) = *(a1 + 44) * *&v50[v53 - 8] * *(a1 + 1340) / 0x64;
        ++v49;
        v51 = HIDWORD(__n);
        v53 += 32;
        if (v49 >= HIDWORD(__n))
        {
          goto LABEL_68;
        }
      }
    }

    v212 = 0;
    v60 = *(a1 + 1340);
    if (v47 >= *(a1 + 1028) && v47 <= *(a1 + 1032))
    {
      *(a1 + 1340) = 100;
    }

    v61 = *v42;
    v62 = *(v38 + *v42);
    if ((v62 & 4) != 0)
    {
      v65 = *v41;
      v66 = v41[11];
      if (*v41 >= v66)
      {
        v65 = v66 - 1;
        *v41 = v66 - 1;
      }

      v67 = exp_S7_25(2 * **(*(v41 + 8) + 8 * v65), &v206);
      v68 = 1374389535 * (v67 >> (24 - v206)) * *(a1 + 1328);
      v63 = (v68 >> 37) + (v68 >> 63);
      ++*v41;
      v61 = *v42;
      v64 = *v42;
      v62 = *(v38 + v64);
    }

    else
    {
      v63 = 0;
      v64 = v61;
    }

    if ((v62 & 8) != 0)
    {
      v70 = *v40;
      v71 = v40[11];
      if (*v40 >= v71)
      {
        v70 = v71 - 1;
        *v40 = v71 - 1;
      }

      v72 = exp_S7_25(2 * **(*(v40 + 8) + 8 * v70), &v206);
      v69 = *(a1 + 1056);
      if (v69)
      {
        v73 = v72 >> ~v206;
        if (v73)
        {
          v74 = v69[1];
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          if (v76 < 0 != v75)
          {
            LODWORD(v69) = v69[3];
          }

          else if (v69[2] >= v73)
          {
            LODWORD(v69) = v69[3] + *v69 * v76;
          }

          else
          {
            LODWORD(v69) = v69[4];
          }
        }

        else
        {
          LODWORD(v69) = 0;
        }
      }

      ++*v40;
      v61 = *v42;
      v64 = *v42;
      v62 = *(v38 + v64);
    }

    else
    {
      LODWORD(v69) = 0;
    }

    if ((~v62 & 0xC) != 0)
    {
      v81 = 0;
      *(a1 + 1332) = 0;
    }

    else
    {
      v77 = v42[11];
      v78 = *(a1 + 1332) + 1;
      *(a1 + 1332) = v78;
      v79 = *(a1 + 1336);
      if (v79)
      {
        v80 = v79 - 1;
      }

      else
      {
        v75 = __OFSUB__(v77, v61);
        v80 = v77 - v61;
        if ((v80 < 0) ^ v75 | (v80 == 0))
        {
          v80 = 0;
        }

        else
        {
          v82 = 0;
          v83 = v38 + v64;
          while ((~*(v83 + v82) & 0xC) == 0)
          {
            if (v80 == ++v82)
            {
              goto LABEL_102;
            }
          }

          v80 = v82;
        }
      }

LABEL_102:
      *(a1 + 1336) = v80;
      if (v80 >= v78)
      {
        v81 = v78;
      }

      else
      {
        v81 = v80;
      }
    }

    if ((*(v38 + *v42) & 0xC) != 0xC)
    {
      v63 = 0;
      LODWORD(v69) = 0;
    }

    *(a1 + 1136) = v81;
    *(a1 + 1140) = 0;
    *(a1 + 1124) = v69;
    *(a1 + 1120) = 0;
    *(a1 + 1128) = (42949673 * (*(a1 + 1340) << 10)) >> 32;
    MrccInput_AllocateData(a1 + 1096, v42[10]);
    *(a1 + 1116) = v63;
    if (v200)
    {
      *(a1 + 1104) = *(*(v42 + 8) + 8 * *v42);
    }

    else
    {
      Data = MrccInput_AllocateData(a1 + 1096, v42[10]);
      if (Data < 0)
      {
        v8 = Data;
        goto LABEL_314;
      }

      v85 = *(a1 + 1112);
      if (v85 >= 1)
      {
        v86 = *(*(v42 + 8) + 8 * *(a1 + 1016));
        v87 = *(a1 + 1104);
        do
        {
          v89 = *v86++;
          v88 = v89;
          v90 = v89 < 0;
          if (v89 < 0)
          {
            v88 = -v88;
          }

          v91 = v88 + 14506 * (v88 >> 15) + ((14506 * (v88 & 0x7FFF) + 0x4000) >> 15);
          if (v90)
          {
            v91 = -v91;
          }

          *v87++ = v91;
          --v85;
        }

        while (v85);
      }
    }

    v8 = RccSyn__SynthesisOneFrame(a1 + 1048, &v212, &v208);
    if (v8 < 0)
    {
      goto LABEL_314;
    }

    v36.n128_f64[0] = RrInput_Reset(a1 + 1208);
    v47 = *(a1 + 1016);
    if (v47 >= *(a1 + 1028) && v47 <= *(a1 + 1032))
    {
      *(a1 + 1340) = v60;
    }

    v92 = v212;
    v48 = v203;
    if (!v212)
    {
      v102 = 0;
      goto LABEL_142;
    }

    v93.i32[0] = 1;
    v93.i32[1] = v212;
    *v201 = vadd_s32(*v201, v93);
    if (v92 + v203 <= v12)
    {
      v102 = 0;
      v103 = v209;
LABEL_136:
      v104 = 0;
      v100 = v48;
      v105 = v208;
      v101 = v92;
      do
      {
        v103[(v100 + v104)] = *(v105 + 2 * v104);
        ++v104;
      }

      while (v92 != v104);
      goto LABEL_138;
    }

    if (v203)
    {
      v94 = (*(*(a1 + 32) + 120))(*(a1 + 984), *(a1 + 992), (2 * v203));
      if (v94 < 0)
      {
        v8 = v94;
LABEL_140:
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x", v95, v96, v97, v98, "stream");
        v48 = 0;
        v102 = *(a1 + 52) != 0;
        goto LABEL_141;
      }

      v92 = v212;
    }

    if (v92 <= v12)
    {
      v99 = v12;
    }

    else
    {
      v99 = v92;
    }

    if (!*(a1 + 52))
    {
      v92 = v99;
    }

    v8 = (*(*(a1 + 32) + 112))(*(a1 + 984), *(a1 + 992), &v209, 2 * v92);
    if (v8 < 0)
    {
      goto LABEL_140;
    }

    v48 = 0;
    v100 = 0;
    v101 = 0;
    v102 = *(a1 + 52) != 0;
    v92 = v212;
    v103 = v209;
    if (v212)
    {
      goto LABEL_136;
    }

LABEL_138:
    vol_ScaleToLevel(&v103[v100], v101, *(a1 + 60));
    v48 = v212 + v100;
    v38 = v198;
LABEL_141:
    ++*v42;
    v47 = *(a1 + 1016) + 1;
    *(a1 + 1016) = v47;
LABEL_142:
    if (v102 || v8 < 0 || v47 >= v42[11])
    {
      break;
    }
  }

  *(a1 + 1028) = 0;
  if (v48)
  {
    if ((v8 & 0x80000000) == 0)
    {
      v8 = (*(*(a1 + 32) + 120))(*(a1 + 984), *(a1 + 992), (2 * v48), v36);
      if (v8 < 0)
      {
        goto LABEL_249;
      }
    }
  }

  v110 = v49 != 0;
  if (v8 < 0 || !v49)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_314;
  }

  v8 = (*(*(a1 + 32) + 120))(*(a1 + 1000), *(a1 + 1008), (32 * v49), v36);
  if (v8 < 0)
  {
    goto LABEL_312;
  }

  v110 = 1;
LABEL_288:
  if (*(a1 + 1016) < v42[11])
  {
    goto LABEL_301;
  }

  v8 = (*(*(a1 + 32) + 96))(*(a1 + 952), *(a1 + 960), 8);
  if ((v8 & 0x80000000) == 0)
  {
    *(a1 + 1016) = 0;
    v193 = v207;
LABEL_304:
    if (v193 <= 8)
    {
      v194 = 1;
    }

    else
    {
      v194 = 2;
    }

LABEL_307:
    *a5 = v194;
    if (v110)
    {
      v8 = (*(*(a1 + 32) + 96))(*(a1 + 968), *(a1 + 976), (32 * v49));
      if (v8 < 0)
      {
        v195 = *(*(a1 + 16) + 32);
        goto LABEL_311;
      }
    }

    goto LABEL_314;
  }

LABEL_310:
  v195 = *(*(a1 + 16) + 32);
LABEL_311:
  log_OutPublic(v195, "SYNTH_BET3", 56006, "%s%s%s%x", v189, v190, v191, v192, "contentType");
LABEL_314:
  v196 = critsec_Leave(*(a1 + 24));
  if (v196 >= 0 || v8 <= -1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v196;
  }

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t synth_bet3_ProcessEnd_0(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 9346, 1344) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  *(a1 + 1020) = 0;
  v3 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 128), v3);
}

uint64_t synth_bet3_loc_ParamCheckChange_0(int a1, char *__s1, const char *a3, _DWORD *a4)
{
  if (!strcmp(__s1, "audiooutputbufsamples"))
  {
    if (LH_atoi(a3) <= 0)
    {
      result = 2164269071;
    }

    else
    {
      result = 0;
    }
  }

  else if (!strcmp(__s1, "volume"))
  {
    if (LH_atoi(a3) <= 0x64)
    {
      result = 0;
    }

    else
    {
      result = 2164269071;
    }
  }

  else
  {
    if (!strcmp(__s1, "rate"))
    {
      v8 = __CFADD__(LH_atoi(a3) - 401, 351);
    }

    else
    {
      if (!strcmp(__s1, "ratewpm"))
      {
        result = 2164269057;
        goto LABEL_19;
      }

      if (strcmp(__s1, "pitch"))
      {
        result = 0;
        goto LABEL_19;
      }

      v8 = __CFADD__(LH_atoi(a3) - 201, 151);
    }

    if (v8)
    {
      result = 0;
    }

    else
    {
      result = 2164269071;
    }
  }

LABEL_19:
  *a4 = result >= 0;
  return result;
}

uint64_t synth_bet3_loc_ParamLearnChange_0(uint64_t a1, char *__s1, const char *a3)
{
  if (strcmp(__s1, "audiooutputbufsamples") && strcmp(__s1, "volume") && strcmp(__s1, "rate") && strcmp(__s1, "rate_baseline") && strcmp(__s1, "pitch_baseline") && strcmp(__s1, "ratewpm") && strcmp(__s1, "pitch"))
  {
    return 0;
  }

  v7 = LH_atoi(a3);

  return synth_bet3_loc_ParamSet_0(a1, __s1, v7);
}

uint64_t synth_bet3_loc_ParamGetListen_0(uint64_t a1, _BYTE *a2, signed int a3, signed int a4, unsigned int a5, __int128 *a6, int *a7)
{
  if ((paramc_ParamGetInt(*(*(a1 + 16) + 40), a2, a7) & 0x80000000) != 0 || (a5 = a3, *a7 < a3) || (a5 = a4, *a7 > a4))
  {
    v14 = paramc_ParamSetInt(*(*(a1 + 16) + 40), a2, a5);
    *a7 = a5;
    if ((v14 & 0x80000000) != 0)
    {
      v20 = v14;
      v21 = *(*(a1 + 16) + 32);
      v25 = "parameter";
      v23 = "%s%s";
      v22 = 56009;
      goto LABEL_8;
    }
  }

  v19 = *(*(a1 + 16) + 40);
  v26 = *a6;
  v27 = *(a6 + 2);
  v20 = paramc_ListenerAdd(v19, a2, &v26);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = *(*(a1 + 16) + 32);
    v22 = 56010;
    v23 = 0;
LABEL_8:
    log_OutPublic(v21, "SYNTH_BET3", v22, v23, v15, v16, v17, v18, v25);
  }

  return v20;
}

uint64_t synth_bet3_loc_SynthInit_MRCC(uint64_t a1)
{
  v18 = 0;
  __s1 = 0;
  v2 = *(a1 + 16);
  *(a1 + 1332) = 0;
  *(a1 + 1340) = 100;
  RccSyn__deinit_Synthesis(a1 + 1048);
  v21 = 0;
  v20 = 0;
  inited = paramc_ParamGet(*(v2 + 40), "mrcc_synthparam_ref_ptr", &v20, &v21);
  if ((inited & 0x80000000) == 0)
  {
    v4 = *v20;
    *(v4 + 128) = 4000;
    *(v4 + 112) = xmmword_1C382FEA0;
    *(a1 + 1056) = v4 + 112;
    *(a1 + 1320) = 0;
    inited = RccSyn__init_Synthesis(v2, a1 + 1048, v4);
    if ((inited & 0x80000000) == 0)
    {
      v5 = *(v4 + 16);
      if (v5 == 22000)
      {
        v5 = 22050;
        *(v4 + 16) = 22050;
      }

      *(a1 + 48) = v5;
      v6 = (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && strcmp(__s1, "bet3") == 0;
      *(a1 + 52) = v6;
      Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceframesize", &v18);
      if ((Int & 0x80000000) != 0)
      {
        Str = Int;
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s", v8, v9, v10, v11, "parameter");
        return Str;
      }

      *(a1 + 44) = v18 * *(a1 + 48) / 0x3E8u;
      Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevol", &__s1);
      if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 26011, "%s%s", v12, v13, v14, v15, "parameter");
        return Str;
      }

      *(a1 + 56) = LH_atoi(__s1);
      paramc_ParamRelease(*(v2 + 40));
      inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "volume", &v18 + 1);
      if ((inited & 0x80000000) == 0)
      {
        inited = synth_bet3_loc_ParamSet_0(a1, "volume", HIDWORD(v18));
        if ((inited & 0x80000000) == 0)
        {
          inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v18 + 1);
          if ((inited & 0x80000000) == 0)
          {
            inited = synth_bet3_loc_ParamSet_0(a1, "rate", HIDWORD(v18));
            if ((inited & 0x80000000) == 0)
            {
              inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate_baseline", &v18 + 1);
              if ((inited & 0x80000000) == 0)
              {
                inited = synth_bet3_loc_ParamSet_0(a1, "rate_baseline", HIDWORD(v18));
                if ((inited & 0x80000000) == 0)
                {
                  inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch_baseline", &v18 + 1);
                  if ((inited & 0x80000000) == 0)
                  {
                    inited = synth_bet3_loc_ParamSet_0(a1, "pitch_baseline", HIDWORD(v18));
                    if ((inited & 0x80000000) == 0)
                    {
                      inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v18 + 1);
                      if ((inited & 0x80000000) == 0)
                      {
                        return synth_bet3_loc_ParamSet_0(a1, "pitch", HIDWORD(v18));
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

  return inited;
}

uint64_t synth_bet3_loc_SynthInit_MLSA_0(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v43 = 0;
  __s1 = 0;
  v2 = *(a1 + 16);
  v42 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  Int = paramc_ParamGetInt(*(v2 + 40), "frequencyhz", &v43 + 1);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  MFVSyn__denit__MVF_Synthesis((a1 + 64));
  *(a1 + 48) = HIDWORD(v43);
  v8 = (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && strcmp(__s1, "bet3") == 0;
  *(a1 + 52) = v8;
  HIDWORD(v40[0]) = 0;
  v41 = 0;
  v40[1] = xmmword_1C382FEB0;
  LODWORD(v40[0]) = wave_t__convertFromF0ToTp_SR(0xAF00u, SHIDWORD(v43)) >> 6;
  *(v40 + 4) = wave_t__convertFromF0ToTp_SR(0xA00u, SHIDWORD(v43)) >> 6;
  Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceframesize", &v42 + 1);
  if ((Int & 0x80000000) != 0)
  {
LABEL_33:
    Str = Int;
    v24 = *(*(a1 + 16) + 32);
LABEL_34:
    log_OutPublic(v24, "SYNTH_BET3", 56008, "%s%s", v4, v5, v6, v7, "parameter");
    goto LABEL_37;
  }

  *(a1 + 44) = HIDWORD(v42) * *(a1 + 48) / 0x3E8u;
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevol", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1 || (*(a1 + 56) = LH_atoi(__s1), paramc_ParamRelease(*(v2 + 40)), Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicemvfboost", &__s1), (Str & 0x80000000) != 0) || !__s1 || !*__s1)
  {
    v25 = *(*(a1 + 16) + 32);
LABEL_36:
    log_OutPublic(v25, "SYNTH_BET3", 26011, "%s%s", v9, v10, v11, v12, "parameter");
    goto LABEL_37;
  }

  v14 = LH_atoi(__s1);
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicealpha", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    v25 = *(*(a1 + 16) + 32);
    goto LABEL_36;
  }

  v15 = LH_atoi(__s1);
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevuvrelamp", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    v24 = *(*(a1 + 16) + 32);
    goto LABEL_34;
  }

  v16 = LH_atoi(__s1);
  paramc_ParamRelease(*(v2 + 40));
  v17 = paramc_ParamGetInt(*(v2 + 40), "bet2voiceorder", &v42);
  if ((v17 & 0x80000000) != 0 || (v17 = paramc_ParamGetStr(*(v2 + 40), "bet2voicevsynthinit", &v38), (v17 & 0x80000000) != 0))
  {
    Str = v17;
    v24 = *(*(a1 + 16) + 32);
    goto LABEL_34;
  }

  v18 = 1;
  if ((paramc_ParamGetStr(*(v2 + 40), "bet2cpupower", &__s1) & 0x80000000) == 0 && __s1 && *__s1)
  {
    v19 = LH_atoi(__s1);
    if (v19 >= 5)
    {
      v18 = 1;
    }

    else
    {
      v18 = v19;
    }

    paramc_ParamRelease(*(v2 + 40));
  }

  if (!paramc_ParamGet(*(v2 + 40), "bet3cepstralequalizer", (a1 + 72), &v39) && v42 + 1 != v39 >> 2)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s", v20, v21, v22, v23, "parameter");
    Str = 0;
    goto LABEL_37;
  }

  strcpy(__s, "synth");
  if ((paramc_ParamGetStr(*(v2 + 40), "bet2voicequality", &__s1) & 0x80000000) == 0 && __s1 && *__s1)
  {
    __strcat_chk();
    __strcat_chk();
    paramc_ParamRelease(*(v2 + 40));
  }

  else
  {
    __strcat_chk();
  }

  __strcat_chk();
  __strcat_chk();
  v28 = strlen(__s);
  LH_itoa(SHIDWORD(v43) / 1000, &__s[v28], 0xAu);
  v29 = ssftriff_reader_ObjOpen(*a1, *(a1 + 8), 0, __s, "HMEX", 1031, &v37);
  if ((v29 & 0x80000000) != 0)
  {
    goto LABEL_65;
  }

  Str = BET3FXD__MFVSyn__init__MVF_Synthesis((a1 + 64), *(a1 + 16), v40, v37, SHIDWORD(v42), v42, v15, HIDWORD(v43), v18, v38);
  if ((Str & 0x80000000) == 0)
  {
    if (!v37 || (Str = ssftriff_reader_ObjClose(v37, v30, v31, v32, v33, v34, v35, v36), (Str & 0x80000000) == 0))
    {
      if (MFVSyn__setRelativeUVBoost(*(a1 + 64), v16))
      {
        LODWORD(Str) = -2130698240;
      }

      if ((Str & 0x80000000) == 0 && BET3FXD__MFVSyn__setMVFBoost(*(a1 + 64), v14))
      {
        LODWORD(Str) = -2130698240;
      }

      Str = BET3FXD__MFVSyn__setVolumeBoost(*(a1 + 64), *(a1 + 56)) ? 2164269056 : Str;
      if ((Str & 0x80000000) == 0)
      {
        v29 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "volume", &v43);
        if ((v29 & 0x80000000) == 0)
        {
          v29 = synth_bet3_loc_ParamSet_0(a1, "volume", v43);
          if ((v29 & 0x80000000) == 0)
          {
            v29 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate_baseline", &v43);
            if ((v29 & 0x80000000) == 0)
            {
              v29 = synth_bet3_loc_ParamSet_0(a1, "rate_baseline", v43);
              if ((v29 & 0x80000000) == 0)
              {
                v29 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v43);
                if ((v29 & 0x80000000) == 0)
                {
                  v29 = synth_bet3_loc_ParamSet_0(a1, "rate", v43);
                  if ((v29 & 0x80000000) == 0)
                  {
                    v29 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch_baseline", &v43);
                    if ((v29 & 0x80000000) == 0)
                    {
                      v29 = synth_bet3_loc_ParamSet_0(a1, "pitch_baseline", v43);
                      if ((v29 & 0x80000000) == 0)
                      {
                        v29 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v43);
                        if ((v29 & 0x80000000) == 0)
                        {
                          v29 = synth_bet3_loc_ParamSet_0(a1, "pitch", v43);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_65:
        Str = v29;
      }
    }
  }

LABEL_37:
  v26 = *MEMORY[0x1E69E9840];
  return Str;
}

uint64_t synth_bet3_loc_ParamSet_0(uint64_t a1, const char *a2, unsigned int a3)
{
  if (!strcmp(a2, "audiooutputbufsamples"))
  {
    v6 = 0;
    if (a3 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = a3;
    }

    *(a1 + 40) = v15;
  }

  else
  {
    v6 = critsec_Enter(*(a1 + 24));
    if ((v6 & 0x80000000) == 0)
    {
      if (!strcmp(a2, "volume"))
      {
        v11 = 2164269071;
        if (a3 > 0x64)
        {
          goto LABEL_24;
        }

        *(a1 + 60) = a3;
        goto LABEL_23;
      }

      if (!strcmp(a2, "rate_baseline"))
      {
        v11 = 2164269071;
        if (a3 - 401 < 0xFFFFFEA1)
        {
          goto LABEL_24;
        }

        v29 = 0;
        *(a1 + 1040) = a3;
        v16 = "rate";
        paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v29);
        v17 = v29;
      }

      else
      {
        if (!strcmp(a2, "rate"))
        {
          v19 = MapProsodyValue_Scaling(50, 100, 400, *(a1 + 1040), a3);
          if (!v19 || (v23 = (v19 + 9999) / v19, v24 = v23, (v23 - 201) < 0xFFFFFF50))
          {
            v11 = 2164269071;
            goto LABEL_24;
          }

          log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set rate %d", v20, v21, v22, v19);
          v25 = *(a1 + 1036);
          if (v25 != 1)
          {
            v11 = v6;
            if (!v25)
            {
              v14 = BET3FXD__MFVSyn__setRate(*(a1 + 64), v24);
LABEL_35:
              if (v14)
              {
                v11 = 2164269071;
              }

              else
              {
                v11 = v6;
              }
            }

LABEL_24:
            critsec_Leave(*(a1 + 24));
            return v11;
          }

          v26 = v23;
          v27 = v23 - 25;
          v11 = 2164269071;
          if (v27 > 0xAF)
          {
            goto LABEL_24;
          }

          *(a1 + 1340) = v26;
LABEL_23:
          v11 = v6;
          goto LABEL_24;
        }

        if (!strcmp(a2, "ratewpm"))
        {
          v11 = 2164269057;
          goto LABEL_24;
        }

        if (strcmp(a2, "pitch_baseline"))
        {
          if (!strcmp(a2, "pitch"))
          {
            v7 = MapProsodyValue_Scaling(50, 100, 200, *(a1 + 1044), a3);
            v11 = 2164269071;
            if ((v7 - 201) < 0xFFFFFF69)
            {
              goto LABEL_24;
            }

            if (*(a1 + 52))
            {
              v12 = v7;
              log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set pitch %d (synth %d)", v8, v9, v10, v7);
              v13 = *(a1 + 1036);
              if (v13 != 1)
              {
                v11 = v6;
                if (!v13)
                {
                  v14 = BET3FXD__MFVSyn__setPitchLevelPercent(*(a1 + 64), v12);
                  goto LABEL_35;
                }

                goto LABEL_24;
              }

              *(a1 + 1328) = v12;
            }
          }

          goto LABEL_23;
        }

        v11 = 2164269071;
        if (a3 - 201 < 0xFFFFFF69)
        {
          goto LABEL_24;
        }

        v28 = 0;
        *(a1 + 1044) = a3;
        v16 = "pitch";
        paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v28);
        v17 = v28;
      }

      synth_bet3_loc_ParamSet_0(a1, v16, v17);
      goto LABEL_23;
    }
  }

  return v6;
}

unsigned int *rand_num_qs(unsigned int *result, _WORD *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = *result;
    v5 = a4;
    do
    {
      v6 = ((1101463552 * HIWORD(v4)) & 0x7FFF0000) + 16807 * v4 + ((16807 * HIWORD(v4)) >> 15);
      v4 = (v6 + (v6 >> 31)) & 0x7FFFFFFF;
      *a2++ = (((0x40000000 - v4) >> 16) * (a3 >> 2)) >> 14;
      --v5;
    }

    while (v5);
    *result = v4;
  }

  return result;
}

void BET3FXD__MFVSyn__constructExcitationShapingFilter(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 56) >= *(a1 + 384))
  {
    v3 = *(a1 + 368);
    if (a2)
    {
      v4 = *(a1 + 376);
      *(v3 + 2 * v4 - 2) = a2;
      memmove(v3, (v3 + 2), 2 * (v4 - 1));
      v5 = *(a1 + 368) + 2 * *(a1 + 376);
      v6 = *(v5 - 4);
      v7 = v6 <= 0;
      v8 = v6 > 0;
      v9 = 4 * v6;
      v10 = 4 * v8;
      if (v7)
      {
        v9 = 0;
      }

      v11 = *(v5 - 6);
      v12 = (4 * v8) | 2;
      v13 = 2 * v11;
      if (v11 <= 0)
      {
        v13 = 0;
      }

      else
      {
        v10 = v12;
      }

      v14 = v13 & 0xFFFE;
      v15 = *(v5 - 8);
      if (v15 > 0)
      {
        ++v10;
      }

      a2 = ((v9 + (v15 & ~(v15 >> 31)) + v14) * g_invDiv[v10]) >> 16;
    }

    else
    {
      bzero(v3, 2 * *(a1 + 380));
      a2 = 0;
    }
  }

  v16 = *(a1 + 12);
  if (v16 >= (*(a1 + 48) * a2) >> 14)
  {
    LOWORD(v16) = (*(a1 + 48) * a2) >> 14;
  }

  *(a1 + 352) = v16;
}

uint64_t MFVSyn__filterExcitationWithShapingFilter(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a1 + 16) * a3;
  if (v7 < 0x7AE149)
  {
    bzero(*(a4 + 8), 2 * *(a4 + 16));
    result = rand_num_qs((v6 + 60), *(v6 + 208), *(v6 + 32), a2);
    *(v6 + 508) = 0xFFFFFFFFLL;
    goto LABEL_46;
  }

  v8 = *(a1 + 472);
  if (v8 < 1)
  {
LABEL_6:
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = 0;
    v10 = (*(a1 + 480) + 16);
    while (1)
    {
      v11 = *v10;
      v10 += 6;
      if (v11 >= v7)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_6;
      }
    }
  }

  if (*(a1 + 504) == a2)
  {
    v12 = *(a1 + 500);
    LOWORD(a1) = *(a1 + 500);
  }

  else
  {
    LODWORD(a1) = fxd_U16SqrtS32(a2 << 6);
    v14 = *(v6 + 500);
    *(v6 + 504) = a2;
    v12 = a1;
    if (a1 != v14)
    {
      goto LABEL_16;
    }
  }

  if (v9 != *(v6 + 508))
  {
LABEL_16:
    v19 = *(v6 + 488);
    if (v19 >= 1)
    {
      v47 = a1;
      v20 = 0;
      v21 = *(v6 + 480) + 24 * v9;
      v22 = (((((*(v6 + 28) * *(v21 + 20)) >> 14) + 4 * *(v21 + 20) * HIWORD(*(v6 + 28))) * v12) >> 14) + 4 * v12 * ((((*(v6 + 28) * *(v21 + 20)) >> 14) + 4 * *(v21 + 20) * (*(v6 + 28) >> 16)) >> 16);
      v23 = *v21;
      v24 = 2 * v19;
      do
      {
        v25 = fxd_S32ShMultRndS32S16(v22, *(v23 + v20), 7);
        if (v25 <= -32768)
        {
          v26 = -32768;
        }

        else
        {
          v26 = v25;
        }

        if (v26 >= 0x7FFF)
        {
          LOWORD(v26) = 0x7FFF;
        }

        *(*(a4 + 8) + v20) = v26;
        *(*(v6 + 528) + v20) = v26;
        v20 += 2;
      }

      while (v24 != v20);
      LOWORD(a1) = v47;
    }

    goto LABEL_25;
  }

  v15 = *(v6 + 488);
  if (v15 >= 1)
  {
    v16 = *(v6 + 528);
    v17 = *(a4 + 8);
    do
    {
      v18 = *v16++;
      *v17++ = v18;
      --v15;
    }

    while (v15);
  }

LABEL_25:
  *(v6 + 500) = a1;
  v27 = *(v6 + 264);
  if (v27 >= 1)
  {
    if (v27 >= a2)
    {
      v28 = a2;
    }

    else
    {
      v28 = *(v6 + 264);
    }

    if (*(a4 + 16) >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(a4 + 16);
    }

    if (v29 >= 1)
    {
      v30 = 0;
      v31 = *(a4 + 8);
      do
      {
        v32 = fxd_S16SatAddS16S16(*(v31 + v30), *(*(v6 + 256) + v30));
        v31 = *(a4 + 8);
        *(v31 + v30) = v32;
        v30 += 2;
      }

      while (2 * v29 != v30);
      v27 = *(v6 + 264);
    }

    v33 = __OFSUB__(v27, v29);
    v34 = v27 - v29;
    if (!((v34 < 0) ^ v33 | (v34 == 0)))
    {
      memmove(*(v6 + 256), (*(v6 + 256) + 2 * v29), 2 * v34);
      *(v6 + 264) = (*(v6 + 264) - v29) & ~((*(v6 + 264) - v29) >> 31);
    }
  }

  bzero(*(v6 + 256), 2 * *(v6 + 268));
  v35 = *(v6 + 488);
  v33 = __OFSUB__(v35, a2);
  v36 = v35 - a2;
  if ((v36 < 0) ^ v33 | (v36 == 0))
  {
    v37 = a2;
  }

  else
  {
    v37 = a2;
    memmove(*(v6 + 256), (*(a4 + 8) + 2 * a2), 2 * v36);
    v38 = *(v6 + 488) - a2;
    if (v38 <= *(v6 + 264))
    {
      v38 = *(v6 + 264);
    }

    *(v6 + 264) = v38;
  }

  v39 = *(v6 + 492);
  v40 = *(*(v6 + 480) + 24 * v9 + 22);
  rand_num_qs((v6 + 60), (*(v6 + 208) + 2 * v39), ((*(v6 + 32) * v40) >> 14) + 4 * v40 * (*(v6 + 32) >> 16), a2);
  memmove(*(v6 + 208), *(v6 + 280), 2 * v39);
  memmove(*(v6 + 280), (*(v6 + 208) + 2 * v37), 2 * v39);
  zerflt_qs(*(v6 + 208) + 2 * v39, *(*(v6 + 480) + 24 * v9 + 8), *(v6 + 208) + 2 * v39, *(v6 + 492), a2);
  result = memmove(*(v6 + 208), (*(v6 + 208) + 2 * v39), 2 * a2);
  v41 = *(v6 + 512);
  v42 = *(v6 + 516);
  v33 = __OFSUB__(v41, v42);
  v43 = v41 - v42;
  if (!((v43 < 0) ^ v33 | (v43 == 0)))
  {
    *(v6 + 512) = v43;
  }

  *(v6 + 508) = v9;
LABEL_46:
  if (a2 >= 1)
  {
    v44 = 0;
    v45 = *(a4 + 8);
    v46 = 2 * a2;
    do
    {
      result = fxd_S16SatAddS16S16(*(v45 + v44), *(*(v6 + 208) + v44));
      v45 = *(a4 + 8);
      *(v45 + v44) = result;
      v44 += 2;
    }

    while (v46 != v44);
  }

  return result;
}

uint64_t MFVSyn__MVFExcitation_construct(uint64_t a1)
{
  *(a1 + 280) = 0;
  *(a1 + 256) = 0;
  *(a1 + 368) = 0;
  *(a1 + 480) = 0;
  *(a1 + 512) = 0;
  *(a1 + 504) = 0xFFFFFFFF00000004;
  *(a1 + 500) = 2;
  *(a1 + 528) = 0;
  *(a1 + 516) = BET3FXD__wave_t__convertFromMsecToTp((a1 + 8), 4);
  return 0;
}

uint64_t MFVSyn__createMVFExcitation_(uint64_t a1)
{
  if (*(a1 + 488) <= *(a1 + 492))
  {
    v2 = *(a1 + 492);
  }

  else
  {
    v2 = *(a1 + 488);
  }

  *(a1 + 68) = v2;
  if (vect_t__createVect_qs(*(*a1 + 8), a1 + 248, v2))
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 264) = 0;
  if (vect_t__createVect_qs(*(*a1 + 8), a1 + 272, *(a1 + 68)))
  {
    return 0xFFFFFFFFLL;
  }

  if (vect_t__createVect_qs(*(*a1 + 8), a1 + 520, *(a1 + 68)))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t MFVSyn__deleteMVFExcitation_(uint64_t a1)
{
  v2 = vect_t__deleteVect_qs(a1 + 248);
  v3 = vect_t__deleteVect_qs(a1 + 272);
  if (vect_t__deleteVect_qs(a1 + 520) | v3 | v2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t vect_t__createVect_qs(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  v5 = heap_Alloc(a1, 2 * a3);
  *(a2 + 8) = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 16) = a3;
  *(a2 + 20) = a3;
  bzero(v5, 2 * a3);
  return 0;
}

uint64_t vect_t__deleteVect_qs(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  heap_Free(*a1, v1);
  result = 0;
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t BET3FXD__vect_t__createVect(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  v5 = heap_Alloc(a1, 4 * a3);
  *(a2 + 8) = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 16) = a3;
  *(a2 + 20) = a3;
  bzero(v5, 4 * a3);
  return 0;
}

uint64_t exp_S7_25(int a1, _WORD *a2)
{
  v2 = a1 >> 10;
  result = 0x40000000;
  v4 = 1;
  for (i = 10; i != 32; ++i)
  {
    if (v2)
    {
      result = (exp_mantissa_lut[i] * ((result + 0x4000) >> 15));
      v4 += exp_scale_lut[i];
      if (result <= 1073733631)
      {
        result = (2 * result);
        --v4;
      }
    }

    v2 >>= 1;
  }

  if (result <= 0x3FFFFFFF)
  {
    do
    {
      result = (2 * result);
      LOWORD(v4) = v4 - 1;
    }

    while (result < 0x40000000);
  }

  *a2 = v4;
  return result;
}

uint64_t BET3FXD__MFVSyn__SynthesisOneFrame(uint64_t a1, int a2, void *__src, __int16 a4, int *a5, void *a6)
{
  *a5 = 0;
  *a6 = 0;
  v9 = *(a1 + 396);
  v10 = a2 == 0;
  if (v9 != 1)
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2 != 0;
  }

  *(a1 + 392) = v11 || v10;
  if (a2)
  {
    v12 = *(a1 + 36) * a2;
    v13 = v12 >> 25;
    v14 = HIWORD(v12);
    if (v13 < 5)
    {
      v14 = 2560;
    }
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 396) = v14 != 0;
  v15 = *(a1 + 296);
  v16 = *(a1 + 300);
  *a5 = v15;
  v17 = *(a1 + 40);
  if (v17 != 0x4000)
  {
    v15 = (v15 * v17 + 0x2000) >> 14;
    v16 = (0x10000u / v15);
    *a5 = v15;
  }

  if (!v14 || (v18 = (*(a1 + 8) << 12) / v14, (*(a1 + 400) = v18) == 0))
  {
    *(a1 + 400) = *(a1 + 344);
  }

  memmove(*(a1 + 416), __src, 4 * (*(a1 + 120) + 1));
  *(a1 + 402) = a4;
  BET3FXD__MFVSyn__mc2mlsa(a1, *(a1 + 416), *(a1 + 576));
  memmove(*(a1 + 416), *(a1 + 576), 4 * (*(a1 + 120) + 1));
  BET3FXD__MFVSyn__constructExcitationShapingFilter(a1, *(a1 + 402));
  v19 = *(a1 + 400);
  if (*(a1 + 392))
  {
    goto LABEL_20;
  }

  v20 = v19 - *(a1 + 432);
  if (v20 < 0)
  {
    v20 = *(a1 + 432) - v19;
  }

  if (v20 >= *(a1 + 340))
  {
LABEL_20:
    *(a1 + 432) = v19;
  }

  LODWORD(v21) = *(a1 + 120);
  if ((v21 & 0x80000000) != 0)
  {
    v24 = *(a1 + 448);
  }

  else
  {
    v22 = 0;
    v23 = *(a1 + 416);
    v24 = *(a1 + 448);
    v25 = *(a1 + 136);
    do
    {
      *(v25 + 4 * v22) = ((*(v23 + 4 * v22) - v24[v22]) >> 16) * v16 + (((*(v23 + 4 * v22) - LOWORD(v24[v22])) * v16 + 0x8000) >> 16);
      v21 = *(a1 + 120);
    }

    while (v22++ < v21);
  }

  memmove(*(a1 + 80), v24, 4 * (v21 + 1));
  v27 = 0;
  v28 = *(a1 + 448);
  v29 = *(a1 + 104);
  do
  {
    *(v29 + 2 * v27) = *(v28 + 4 * v27) >> 10;
    ++v27;
  }

  while (v27 != 5);
  for (i = 0; i != 6; ++i)
  {
    *(v29 + 10 + 2 * i) = *(v28 + 20 + 4 * i) >> 9;
  }

  v31 = *(a1 + 120);
  if (v31 >= 11)
  {
    v32 = (v28 + 44);
    v33 = (v29 + 22);
    v34 = (v31 - 10);
    do
    {
      v35 = *v32++;
      *v33++ = v35 >> 8;
      --v34;
    }

    while (v34);
  }

  v36 = *(a1 + 464);
  if (v36 >= 1)
  {
    v37 = *(a1 + 184);
    v38 = *(a1 + 160);
    if (v36 <= v15)
    {
      memmove(v37, v38, 2 * v36);
      BET3FXD__MFVSyn__mlsa_filter(a1, *(a1 + 184), *(a1 + 232), *(a1 + 464));
    }

    else
    {
      memmove(v37, v38, 2 * v15);
      BET3FXD__MFVSyn__mlsa_filter(a1, *(a1 + 184), *(a1 + 232), v15);
      memmove(*(a1 + 160), (*(a1 + 160) + 2 * v15), 2 * (*(a1 + 464) - v15));
    }
  }

  for (j = *(a1 + 464); j < v15; *(a1 + 464) = j)
  {
    v40 = j * v16;
    v41 = *(a1 + 400);
    if (*(a1 + 56) >= 3u)
    {
      v41 = (v40 * v41 + (0x10000 - v40) * *(a1 + 432)) >> 16;
    }

    v42 = v41 >> 6;
    if (v42 <= *(a1 + 20))
    {
      v42 = *(a1 + 20);
    }

    if (v42 >= *(a1 + 24))
    {
      v43 = *(a1 + 24);
    }

    else
    {
      v43 = v42;
    }

    v44 = *(a1 + 352);
    if (*(a1 + 352) && *(a1 + 354))
    {
      v44 = (v40 * v44 + (0x10000 - v40) * *(a1 + 354)) >> 16;
    }

    MFVSyn__filterExcitationWithShapingFilter(a1, v43, v44, a1 + 176);
    v45 = *(a1 + 464);
    v46 = v45 + v43;
    if (v45 + v43 >= v15)
    {
      v46 = v15;
    }

    BET3FXD__MFVSyn__mlsa_filter(a1, *(a1 + 184), *(a1 + 232) + 2 * v45, v46 - v45);
    v47 = *(a1 + 464);
    j = v47 + v43;
    if (v47 + v43 > v15)
    {
      memmove(*(a1 + 160), (*(a1 + 184) + 2 * (v15 - v47)), 2 * (v43 - (v15 - v47)));
      j = *(a1 + 464) + v43;
    }
  }

  *(a1 + 354) = *(a1 + 352);
  *(a1 + 432) = *(a1 + 400);
  memmove(*(a1 + 448), *(a1 + 416), 4 * (*(a1 + 120) + 1));
  *(a1 + 464) -= v15;
  *a6 = *(a1 + 232);
  return 0;
}

uint64_t BET3FXD__MFVSyn__setVolumeBoost(_DWORD *a1, unsigned int a2)
{
  if (a2 > 0xC8)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 100)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 164 * a2;
  }

  a1[7] = v3;
  v4 = fxd_S32ShMultRndS32S32(v3, 4 * a1[11], 16);
  result = 0;
  a1[8] = v4;
  return result;
}

uint64_t MFVSyn__setRelativeUVBoost(_DWORD *a1, unsigned int a2)
{
  if (a2 > 0xC8)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 164 * a2;
  if (a2 == 100)
  {
    v2 = 0x4000;
  }

  a1[11] = v2;
  BET3FXD__MFVSyn__setVolumeBoost(a1, (100 * a1[7]) >> 14);
  return 0;
}

uint64_t BET3FXD__MFVSyn__setMVFBoost(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xC8)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v4 = 164 * a2;
  if (a2 == 100)
  {
    v4 = 0x4000;
  }

  *(a1 + 48) = v4;
  return result;
}

uint64_t BET3FXD__MFVSyn__setPitchLevelPercent(uint64_t a1, int a2)
{
  if ((a2 - 50) > 0x96)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 36) = (a2 << 16) / 0x64u;
  return result;
}

uint64_t BET3FXD__MFVSyn__setRate(uint64_t a1, int a2)
{
  if ((a2 - 11) > 0xBD)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 100)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = fxd_S32ShMultRndS32S32(10737418, a2, 16);
  }

  result = 0;
  *(a1 + 40) = v3;
  return result;
}

uint64_t BET3FXD__MFVSyn__construct(uint64_t a1)
{
  *(a1 + 68) = 0;
  *(a1 + 396) = 0;
  *(a1 + 416) = 0;
  *(a1 + 448) = 0;
  *(a1 + 368) = 0;
  *(a1 + 312) = 0;
  *(a1 + 80) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  BET3FXD__rand_num_init((a1 + 60));
  MFVSyn__mlsa_filter_construct(a1);
  MFVSyn__MVFExcitation_construct(a1);
  *(a1 + 20) = BET3FXD__wave_t__convertFromF0ToTp((a1 + 8), 0xAF00u) >> 6;
  *(a1 + 24) = BET3FXD__wave_t__convertFromF0ToTp((a1 + 8), 0xA00u) >> 6;
  *(a1 + 52) = BET3FXD__wave_t__convertFromMsecToTp((a1 + 8), 4) >> 6;
  *(a1 + 480) = 0;
  *(a1 + 40) = 0x4000;
  *(a1 + 28) = 0x4000;
  *(a1 + 32) = fxd_S32ShMultRndS32S32(0x4000, 4 * *(a1 + 44), 16);
  *(a1 + 44) = 0x400000004000;
  BET3FXD__MFVSyn__setVolumeBoost(a1, (100 * *(a1 + 28)) >> 14);
  *(a1 + 36) = 0x10000;
  return 0;
}

uint64_t BET3FXD__MFVSyn__deconstruct(_DWORD *a1)
{
  v2 = vect_t__deleteVect_qs((a1 + 110));
  if (vect_t__deleteVect_qs((a1 + 102)) | v2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[14];
  if (v4 >= a1[84])
  {
    if (vect_t__deleteVect_qs((a1 + 76)))
    {
      v3 = -1;
    }

    v4 = a1[14];
  }

  if (v4 >= a1[96] && vect_t__deleteVect_qs((a1 + 90)))
  {
    v3 = -1;
  }

  v5 = BET3FXD__MFVSyn__mlsa_filter_deinit(a1);
  v6 = vect_t__deleteVect_qs((a1 + 18));
  v7 = vect_t__deleteVect_qs((a1 + 32));
  v8 = vect_t__deleteVect_qs((a1 + 38));
  v9 = vect_t__deleteVect_qs((a1 + 44));
  v10 = vect_t__deleteVect_qs((a1 + 50));
  v11 = vect_t__deleteVect_qs((a1 + 56));
  if (MFVSyn__deleteMVFExcitation(a1) | v11 | v10 | v9 | v8 | v7 | v6 | v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3;
  }
}

uint64_t BET3FXD__MFVSyn__reset__MVF_Synthesis(uint64_t *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  BET3FXD__rand_num_init((v1 + 60));
  *(v1 + 464) = 0;
  *(v1 + 396) = 0;
  *(v1 + 354) = 0;
  bzero(*(v1 + 552), 4 * *(v1 + 564));
  bzero(*(v1 + 576), 4 * *(v1 + 588));
  *(v1 + 432) = *(v1 + 344);
  *(v1 + 434) = 0;
  bzero(*(v1 + 448), 4 * *(v1 + 456));
  BET3FXD__MFVSyn__mc2mlsa(v1, *(v1 + 448), *(v1 + 448));
  bzero(*(v1 + 184), 2 * *(v1 + 196));
  bzero(*(v1 + 160), 2 * *(v1 + 172));
  bzero(*(v1 + 256), 2 * *(v1 + 268));
  bzero(*(v1 + 280), 2 * *(v1 + 292));
  bzero(*(v1 + 208), 2 * *(v1 + 220));
  bzero(*(v1 + 528), 2 * *(v1 + 540));
  *(v1 + 512) = 0;
  *(v1 + 504) = 0xFFFFFFFF00000004;
  *(v1 + 500) = 2;
  bzero(*(v1 + 136), 4 * *(v1 + 148));
  v_set_qs(*(v1 + 312), *(v1 + 344), *(v1 + 324));
  result = 0;
  if (*(v1 + 56) >= *(v1 + 384))
  {
    bzero(*(v1 + 368), 2 * *(v1 + 380));
    return 0;
  }

  return result;
}

uint64_t BET3FXD__MFVSyn__init__MVF_Synthesis(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, int a9, _BYTE *a10)
{
  v18 = heap_Calloc(*(a2 + 8), 1, 704);
  v39 = v18;
  *a1 = v18;
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v18;
  v37 = 0uLL;
  v38 = 0;
  *v18 = a2;
  v20 = *a3;
  v21 = *(a3 + 8);
  *(v18 + 36) = a3[1];
  *(v18 + 20) = v20;
  *(v18 + 52) = v21;
  *(v18 + 56) = a9;
  *(v18 + 120) = a6;
  *(v18 + 124) = a6;
  if (a8 > 15999)
  {
    if (a8 == 22050)
    {
      goto LABEL_8;
    }

    v22 = 16000;
  }

  else
  {
    if (a8 == 8000)
    {
      goto LABEL_8;
    }

    v22 = 11025;
  }

  if (a8 != v22)
  {
    goto LABEL_16;
  }

LABEL_8:
  BET3FXD__wave_t__setSampleRateHz((v18 + 8), a8);
  if (BET3FXD__MFVSyn__construct(v19))
  {
    goto LABEL_16;
  }

  *(v19 + 28) = 0x4000;
  *(v19 + 32) = fxd_S32ShMultRndS32S32(0x4000, 4 * *(v19 + 44), 16);
  *(v19 + 40) = 0x4000;
  if (a8 > 15999)
  {
    if (a8 != 22050)
    {
      v23 = 16000;
LABEL_14:
      if (a8 != v23)
      {
        goto LABEL_16;
      }
    }
  }

  else if (a8 != 8000)
  {
    v23 = 11025;
    goto LABEL_14;
  }

  *(v19 + 52) = BET3FXD__wave_t__convertFromMsecToTp((v19 + 8), a5) >> 6;
  if (!BET3FXD__MFVSyn__loadExcTable(v19, a4, v24, v25, v26, v27, v28, v29))
  {
    *(v19 + 392) = 0;
    *(v19 + 344) = BET3FXD__wave_t__convertFromF0ToTp((v19 + 8), 0x3E80u);
    *(v19 + 340) = BET3FXD__wave_t__convertFromF0ToTp((v19 + 8), 0xF00u);
    *(v19 + 336) = 3;
    if (*(v19 + 56) >= 3u)
    {
      if (vect_t__createVect_qs(*(*v19 + 8), v19 + 304, 4u))
      {
        goto LABEL_16;
      }

      v_set_qs(*(v19 + 312), *(v19 + 344), *(v19 + 324));
      *(v19 + 332) = 0x10000 / *(v19 + 320);
      *(v19 + 328) = 0;
    }

    *(v19 + 64) = kaldi::QuantizedMatrixBase<short>::NumRows((v19 + 8));
    *(v19 + 384) = 3;
    if ((*(v19 + 56) < 3u || !vect_t__createVect_qs(*(*v19 + 8), v19 + 360, 5u)) && !MFVSyn__createMVFExcitation(v19) && !BET3FXD__vect_t__createVect(*(*v19 + 8), v19 + 72, *(v19 + 120) + 1))
    {
      *(v19 + 354) = 0;
      *(v19 + 464) = 0;
      v31 = *(v19 + 52);
      *(v19 + 296) = v31;
      v32 = (0x10000 / v31);
      *(v19 + 300) = v32;
      if (v32)
      {
        v33 = *(v19 + 56);
        if (v33 <= 4)
        {
          v34 = dword_1C383008C[v33];
          if (!BET3FXD__vect_t__createVect(*(*v19 + 8), v19 + 128, *(v19 + 120) + 1))
          {
            *(v19 + 516) = BET3FXD__wave_t__convertFromMsecToTp((v19 + 8), v34) >> 6;
            if (!MFVSyn__mlsa_filter_consult(v19, *(v19 + 56), a8, a7, a10, &v37))
            {
              v35 = v37;
              v36 = v38;
              if (!BET3FXD__MFVSyn__mlsa_filter_init(v19, &v35) && !vect_t__createVect_qs(*(*v19 + 8), v19 + 176, *(v19 + 296) + *(v19 + 68) + *(v19 + 24) + 1) && !vect_t__createVect_qs(*(*v19 + 8), v19 + 152, *(v19 + 296) + *(v19 + 68) + *(v19 + 24) + 1) && !vect_t__createVect_qs(*(*v19 + 8), v19 + 200, *(v19 + 296) + *(v19 + 68) + *(v19 + 24) + 1) && !vect_t__createVect_qs(*(*v19 + 8), v19 + 224, 2 * *(v19 + 296)))
              {
                *(v19 + 432) = *(v19 + 344);
                *(v19 + 434) = 0;
                if (!BET3FXD__vect_t__createVect(*(*v19 + 8), v19 + 440, *(v19 + 120) + 1) && !BET3FXD__vect_t__createVect(*(*v19 + 8), v19 + 408, *(v19 + 120) + 1))
                {
                  BET3FXD__MFVSyn__mc2mlsa(v19, *(v19 + 448), *(v19 + 448));
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_16:
  MFVSyn__denit__MVF_Synthesis(&v39);
  *a1 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t MFVSyn__denit__MVF_Synthesis(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = BET3FXD__MFVSyn__releaseExcTable(*a1);
  if (BET3FXD__MFVSyn__deconstruct(v2) | v3)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  if (*v2)
  {
    heap_Free(*(*v2 + 8), v2);
  }

  *a1 = 0;
  return v4;
}

uint64_t getAlpha(int a1)
{
  if (a1 > 11999)
  {
    if (a1 == 12000)
    {
      return 6207570;
    }

    if (a1 != 22050)
    {
      if (a1 == 16000)
      {
        return 7046431;
      }

      return 0;
    }

    return 7381975;
  }

  else
  {
    if (a1 == 8000)
    {
      return 5200937;
    }

    if (a1 != 10000)
    {
      if (a1 == 11025)
      {
        return 6039798;
      }

      return 0;
    }

    return 5872026;
  }
}

uint64_t BET3FXD__MFVSyn__mc2mlsa(uint64_t result, uint64_t a2, int *a3)
{
  v3 = *(result + 120);
  v4 = *(result + 608);
  a3[v3] = *(a2 + 4 * v3);
  if (v3 >= 1)
  {
    v5 = (v4 >> 8);
    v6 = a3[v3];
    v7 = v3 - 1;
    do
    {
      v6 = *(a2 + 4 * v7) - (v5 * (v6 >> 16) + ((v6 * v5 + 0x8000) >> 16));
      a3[v7] = v6;
      v8 = v7-- + 1;
    }

    while (v8 > 1);
  }

  v9 = a3[1];
  v10 = *a3 & ~(*a3 >> 31);
  if (v9 <= -16148070)
  {
    v9 = -16148070;
  }

  if (v9 >= 16148070)
  {
    v9 = 16148070;
  }

  if (v10 >= 33135002)
  {
    v10 = 33135002;
  }

  *a3 = v10;
  a3[1] = v9;
  return result;
}

uint64_t MFVSyn__mlsadf_fxd(uint64_t a1, int a2, __int16 *a3)
{
  v5 = 0;
  v131 = *(a1 + 120);
  v6 = *(a1 + 616);
  v137 = *(a1 + 618);
  v7 = *(a1 + 600);
  v129 = *(a1 + 552);
  v8 = *(a1 + 621);
  v9 = (v129 + 4 * v8);
  v10 = (v129 + 8 * v8 + 4);
  do
  {
    v11 = fxd_S32ShMultRndS32S16(*(v10 - 1), v137, 14);
    v12 = fxd_S32ShMultRndS32S16(*(v129 + 4 * v8), v6, 14);
    *(v129 + 4 * v8) = v12 + v11;
    v13 = (((v12 + v11) >> 12) & 0xFFFFFFF0) * a3[1] + (((v12 + v11) * a3[1]) >> 12);
    *v10 = v13;
    if (v8 == 3)
    {
      v14 = (v9[4] * v7[3]) >> 16;
    }

    else
    {
      v14 = (v13 * v7[v8]) >> 18;
    }

    if (v8)
    {
      v15 = v14;
    }

    else
    {
      v15 = -v14;
    }

    a2 += 2 * v15;
    v5 += v14;
    --v10;
    v16 = v8-- > 3;
  }

  while (v16);
  v17 = fxd_S32ShMultRndS32S16(v9[2], v137, 14);
  v18 = fxd_S32ShMultRndS32S16(*(v129 + 8), v6, 14);
  *(v129 + 8) = v18 + v17;
  v19 = (((v18 + v17) >> 12) & 0xFFFFFFF0) * a3[1] + (((v18 + v17) * a3[1]) >> 12);
  v9[3] = v19;
  v20 = fxd_S32ShMultRndS32S16(v19, v7[2], 15);
  v21 = a2 - 2 * v20;
  v134 = v20 + v5;
  v22 = (v9[1] >> 14) & 0xFFFFFFFC;
  v23 = v9[1] * v137 + 0x2000;
  v24 = fxd_S32ShMultRndS32S16(*(v129 + 4), v6, 14);
  v25 = v24 + v22 * v137 + (v23 >> 14);
  *(v129 + 4) = v25;
  v26 = (((v24 + v22 * v137 + (v23 >> 14)) * a3[1]) >> 12) + 16 * a3[1] * (v25 >> 16);
  v9[2] = v26;
  v27 = fxd_S32ShMultRndS32S16(v26, v7[1], 15);
  v136 = 0;
  v28 = v27 + (v21 >> 1);
  v29 = *(a1 + 642);
  v30 = v129 + 4 * v29;
  v31 = *(a1 + 620);
  v32 = (v30 + 4 * *(a1 + 622 + 2 * v31 + 2));
  v135 = v134 + v27 + v28;
  v33 = a3 + 2;
  v9[1] = v28;
  v34 = 4 * v131;
  v127 = v30;
  v128 = a3 + 5;
  v122 = v30 + 20;
  v123 = v32 - 1;
  v121 = v129 + 4 + 4 * v29;
  v119 = v29;
  v120 = v30 + 44;
  v124 = v32;
  v125 = a3 + 2;
  v126 = a3 + 11;
  do
  {
    v132 = *(a1 + 622 + 2 * v31);
    v35 = (v127 + 4 * v132);
    v36 = v123[v31];
    *v35 = v36;
    v37 = fxd_S32ShMultRndS32S16(v36, v137, 14);
    v38 = 0;
    v35[1] = fxd_S32ShMultRndS32S16(v35[1], v6, 14) + v37;
    v39 = v121;
    v40 = 8;
    do
    {
      v41 = v39;
      v42 = v35[v40 / 4];
      v43 = fxd_S32ShMultRndS32S16(v35[v40 / 4 + 1] - v35[v40 / 4 - 1], v6, 14);
      v44 = *v33++;
      v35[v40 / 4] = v43 + v42;
      v38 += (((v43 + v42) >> 12) & 0xFFFFFFF0) * v44 + (((v43 + v42) * v44 + 2048) >> 12);
      v39 = v41 + 4;
      v45 = v40 >= 0xD;
      v40 += 4;
    }

    while (!v45);
    v46 = 4 * v132;
    v47 = v122;
    v48 = 16;
    v49 = v128;
    do
    {
      v50 = *(v47 + 4 * v132) + (((*(v41 + 4 * v132 + 12) - *(v41 + 4 * v132 + 4)) * v6) >> 14);
      *(v47 + 4 * v132) = v50;
      v51 = *v49++;
      v38 += ((v50 >> 13) & 0xFFFFFFF8) * v51 + ((v50 * v51 + 4096) >> 13);
      v48 += 4;
      v47 += 4;
      v41 += 4;
    }

    while (v48 < 0x25);
    v52 = (v41 + v46 + 12);
    v53 = (v120 + v46);
    v54 = 44;
    v55 = v126;
    do
    {
      v56 = *v53 + (((*v52 - *(v52 - 2)) * v6) >> 14);
      *v53++ = v56;
      v57 = *v55++;
      v38 += fxd_S32ShMultRndS32S16(v56, v57, 14);
      v54 += 4;
      ++v52;
    }

    while (v54 <= v34);
    v58 = v52 - 2;
    do
    {
      v59 = *v58--;
      v35[v54 / 4] = v59;
      v16 = v54 <= 8;
      v54 -= 4;
    }

    while (!v16);
    v33 = v125;
    v124[v31] = v38;
    if (v31 == 3)
    {
      v60 = v124[3];
      v61 = *(*(a1 + 592) + 6);
      v62 = 16;
    }

    else
    {
      v61 = *(*(a1 + 592) + 2 * v31);
      v60 = v38;
      v62 = 18;
    }

    v63 = fxd_S32ShMultRndS32S16(v60, v61, v62);
    if (v31)
    {
      v64 = v63;
    }

    else
    {
      v64 = -v63;
    }

    v135 += v64;
    v136 += v63;
    v16 = v31-- <= 3;
  }

  while (!v16);
  v65 = *(a1 + 626);
  v66 = (v127 + 4 * v65);
  v67 = v124[1];
  *v66 = v67;
  v68 = v66 + 3;
  v133 = fxd_S32ShMultRndS32S16(v67, v137, 14);
  v69 = v66 + 1;
  v70 = 0;
  v71 = fxd_S32ShMultRndS32S16(v66[1], v6, 14) + v133;
  v66[1] = v71;
  v72 = 8;
  v73 = v125;
  do
  {
    v74 = *v68++;
    v71 = v66[v72 / 4] + (((v74 - v71) * v6) >> 14);
    v66[v72 / 4] = v71;
    v75 = *v73++;
    v70 += (v71 * v75) >> 12;
    ++v69;
    v45 = v72 >= 0xD;
    v72 += 4;
  }

  while (!v45);
  v76 = 16;
  v77 = v128;
  do
  {
    v78 = v66[v76 / 4 + 1] + (((v68[v76 / 4 - 4] - v69[v76 / 4 - 4]) * v6) >> 14);
    v66[v76 / 4 + 1] = v78;
    v79 = *v77++;
    v70 += (v78 * v79) >> 13;
    v76 += 4;
  }

  while (v76 < 0x25);
  v80 = 0;
  v81 = v129 + 4 * v119 + 4 * v65;
  v82 = &v68[v76 / 4 - 4];
  v83 = v126;
  do
  {
    v84 = *(v81 + v80 + 44) + (((*v82 - *(v82 - 2)) * v6) >> 14);
    *(v81 + v80 + 44) = v84;
    v85 = *v83++;
    v70 += fxd_S32ShMultRndS32S16(v84, v85, 14);
    ++v82;
    v86 = v80 + 4;
    v87 = v80 + 48;
    v80 += 4;
  }

  while (v87 <= v34);
  v88 = v86 + 40;
  v89 = v82 - 2;
  do
  {
    v90 = (v66 + v88);
    v90[1] = *v89;
    *v90 = *(v89 - 1);
    v91 = v88 + 4;
    v88 -= 8;
    v89 -= 2;
  }

  while (v91 > 12);
  v124[2] = v70;
  v92 = fxd_S32ShMultRndS32S16(v70, *(*(a1 + 592) + 4), 15);
  v93 = *(a1 + 624);
  v94 = (v127 + 4 * v93);
  v95 = *v124;
  *v94 = *v124;
  v96 = v94 + 3;
  v97 = fxd_S32ShMultRndS32S16(v95, v137, 14);
  v98 = v94 + 1;
  v99 = 0;
  v100 = fxd_S32ShMultRndS32S16(v94[1], v6, 14) + v97;
  v94[1] = v100;
  v101 = 8;
  v102 = v125;
  do
  {
    v103 = *v96++;
    v100 = v94[v101 / 4] + (((v103 - v100) * v6) >> 14);
    v94[v101 / 4] = v100;
    v104 = *v102++;
    v99 += (v100 * v104) >> 12;
    ++v98;
    v45 = v101 >= 0xD;
    v101 += 4;
  }

  while (!v45);
  v105 = 16;
  v106 = v128;
  do
  {
    v107 = v94[v105 / 4 + 1] + (((v96[v105 / 4 - 4] - v98[v105 / 4 - 4]) * v6) >> 14);
    v94[v105 / 4 + 1] = v107;
    v108 = *v106++;
    v99 += (v107 * v108) >> 13;
    v105 += 4;
  }

  while (v105 < 0x25);
  v109 = (4 * v93 + 4 * v119 + v129 + 44);
  v110 = &v96[v105 / 4 - 4];
  v111 = 44;
  v112 = v126;
  do
  {
    v113 = *v109 + (((*v110 - *(v110 - 2)) * v6) >> 14);
    *v109++ = v113;
    v114 = *v112++;
    v99 += fxd_S32ShMultRndS32S16(v113, v114, 14);
    v111 += 4;
    ++v110;
  }

  while (v111 <= v34);
  v115 = v110 - 2;
  do
  {
    v116 = *v115--;
    v94[v111 / 4] = v116;
    v16 = v111 <= 8;
    v111 -= 4;
  }

  while (!v16);
  v124[1] = v99;
  v117 = fxd_S32ShMultRndS32S16(v99, *(*(a1 + 592) + 2), 15);
  *v124 = v117 + v135 - v92;
  return (v136 + v117 + v117 + v135);
}

void *BET3FXD__MFVSyn__mlsa_filter(void *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = result[17];
    v9 = result[13];
    v10 = result[10];
    v11 = v10 + 20;
    do
    {
      v12 = *(a2 + 2 * v7);
      result = MFVSyn__mlsadf_fxd(v6, (((g_expTable[**(v6 + 104) >> 7] * v12) >> 12) + 16 * v12 * (g_expTable[**(v6 + 104) >> 7] >> 16)) >> 14, v9);
      for (i = 0; i != 5; ++i)
      {
        v14 = *(v8 + 4 * i) + *(v10 + 4 * i);
        *(v10 + 4 * i) = v14;
        v9[i] = v14 >> 10;
      }

      if (*v9 < 0)
      {
        *v9 = 0;
      }

      for (j = 0; j != 6; ++j)
      {
        v16 = *(v8 + 20 + 4 * j) + *(v11 + 4 * j);
        *(v11 + 4 * j) = v16;
        v9[j + 5] = v16 >> 9;
      }

      v17 = 11;
      do
      {
        v18 = *(v8 + 4 * v17) + *(v10 + 4 * v17);
        *(v10 + 4 * v17) = v18;
        v9[v17] = v18 >> 8;
        v19 = v17++ < *(v6 + 120);
      }

      while (v19);
      if ((result + 62258) > 0x1E664)
      {
        v20 = (result + 59638 + ((result + 59638) >> 2)) >> 1;
        v21 = v20 - 59638;
        v19 = (v20 != -2622) & __CFADD__(v20, 2622);
        v22 = ((v20 + 2621 + ((v20 + 2621) >> 2)) >> 2) - 62259;
        if (!v19)
        {
          v21 = v22;
        }

        if (v21 <= 0xFFFF0000)
        {
          v21 = -65536;
        }

        v23 = result - 59638 + ((result - 59638) >> 2);
        if (v23 >> 2 >= 0x51F)
        {
          v24 = (((v23 >> 1) - 2621 + (((v23 >> 1) - 2621) >> 2)) >> 2) + 62259;
        }

        else
        {
          v24 = (v23 >> 1) + 59638;
        }

        if (v24 >= 0xFFFF)
        {
          v24 = 0xFFFF;
        }

        if (result >= 59639)
        {
          v21 = v24;
        }

        *(a3 + 2 * v7) = v21 >> 1;
      }

      else
      {
        *(a3 + 2 * v7++) = result >> 1;
        if (v7 < a4)
        {
          continue;
        }
      }

      ++v7;
    }

    while (v7 < a4);
  }

  return result;
}

void *MFVSyn__mlsa_filter_construct(void *result)
{
  result[69] = 0;
  result[72] = 0;
  result[13] = 0;
  return result;
}

uint64_t BET3FXD__MFVSyn__mlsa_filter_init(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 120))
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 608) = *a2;
  v4 = kaldi::QuantizedMatrixBase<short>::NumRows((a1 + 8));
  Alpha = getAlpha(v4);
  *(a1 + 608) = Alpha;
  v6 = fxd_S32ShMultRndS32S32(Alpha, Alpha, 24);
  *(a1 + 612) = 0x1000000 - v6;
  v7 = *(a1 + 608);
  *(a1 + 616) = v7 >> 10;
  *(a1 + 618) = (0x1000000 - v6) >> 10;
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (vect_t__createVect_qs(*(*a1 + 8), a1 + 96, *(a1 + 120) + 1))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 120) < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 4);
  *(a1 + 621) = v8;
  *(a1 + 620) = *(a2 + 5);
  *(a1 + 642) = 2 * v8 + 2;
  if (MFVSyn__mlsa_pickPadeApproximation(a1, *(a2 + 8), v8, *(a2 + 16), (a1 + 600)) || MFVSyn__mlsa_pickPadeApproximation(a1, *(a2 + 12), *(a1 + 620), *(a2 + 17), (a1 + 592)) || BET3FXD__vect_t__createVect(*(*a1 + 8), a1 + 544, *(a1 + 620) + 2 * *(a1 + 621) + (*(a1 + 120) + 2) * *(a1 + 620) + 3) || BET3FXD__vect_t__createVect(*(*a1 + 8), a1 + 568, *(a1 + 120) + 1))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 0;
  v11 = 0;
  v12 = *(a1 + 120);
  v13 = v12 + 2;
  v14 = *(a1 + 620);
  v15 = (v14 - 7) * (v12 + 2);
  v16 = vdupq_n_s64(v14 + 1);
  v17 = -16 - 8 * v12;
  v18 = (v14 - 6) * v13;
  v19 = (v14 - 5) * v13;
  v20 = (v14 - 4) * v13;
  v21 = (v14 - 3) * v13;
  v22 = (v14 - 2) * v13;
  v23 = (v14 - 1) * v13;
  v24 = v14 * v13;
  v25 = (v14 + 9) & 0x1F8;
  v26 = (a1 + 2 * *(a1 + 620) + 624);
  do
  {
    v27 = vdupq_n_s64(v11);
    v28 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v27, xmmword_1C378AF00)));
    if (vuzp1_s8(vuzp1_s16(v28, *v16.i8), *v16.i8).u8[0])
    {
      *v26 = v24 + v10;
    }

    if (vuzp1_s8(vuzp1_s16(v28, *&v16), *&v16).i8[1])
    {
      *(v26 - 1) = v23 + v10;
    }

    if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v27, xmmword_1C378AEF0)))), *&v16).i8[2])
    {
      *(v26 - 2) = v22 + v10;
      *(v26 - 3) = v21 + v10;
    }

    v29 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v27, xmmword_1C37BDD90)));
    if (vuzp1_s8(*&v16, vuzp1_s16(v29, *&v16)).i32[1])
    {
      *(v26 - 4) = v20 + v10;
    }

    if (vuzp1_s8(*&v16, vuzp1_s16(v29, *&v16)).i8[5])
    {
      *(v26 - 5) = v19 + v10;
    }

    if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v27, xmmword_1C37BDD80))))).i8[6])
    {
      *(v26 - 6) = v18 + v10;
      *(v26 - 7) = v15 + v10;
    }

    result = 0;
    v11 += 8;
    v10 += v17;
    v26 -= 8;
  }

  while (v25 != v11);
  return result;
}

uint64_t BET3FXD__MFVSyn__mlsa_filter_deinit(uint64_t a1)
{
  v2 = vect_t__deleteVect_qs(a1 + 96);
  v3 = vect_t__deleteVect_qs(a1 + 544);
  if (vect_t__deleteVect_qs(a1 + 568) | v3 | v2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t MFVSyn__mlsa_pickPadeApproximation(uint64_t a1, int a2, unsigned int a3, int a4, char **a5)
{
  if (a2 == 1)
  {
    if (a3 - 2 > 5)
    {
      return 0;
    }

    result = 0xFFFFFFFFLL;
    if (a4 > 4)
    {
      switch(a4)
      {
        case 5:
          v7 = &g_ChebyPade_R5;
          break;
        case 6:
          v7 = &g_ChebyPade_R6;
          break;
        case 8:
          v7 = &g_ChebyPade_R8;
          break;
        default:
          return result;
      }
    }

    else
    {
      switch(a4)
      {
        case 2:
          v7 = &g_ChebyPade_R2;
          break;
        case 3:
          v7 = &g_ChebyPade_R3;
          break;
        case 4:
          v7 = &g_ChebyPade_R4;
          break;
        default:
          return result;
      }
    }

    v5 = &v7[16 * a3];
  }

  else
  {
    if (a2 || a3 - 3 > 2)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = &g_pade_0 + 12 * a3;
  }

  result = 0;
  *a5 = v5;
  return result;
}

uint64_t MFVSyn__mlsa_filter_mlp_fill(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v18 = *MEMORY[0x1E69E9840];
  do
  {
    v8 = *(a5 + v7);
    v17[v7++] = v8;
  }

  while (v8);
  qmemcpy(v16, "XLMHU", 5);
  *a6 = a4;
  if (!v17[0])
  {
    goto LABEL_11;
  }

  v9 = 1;
    ;
  }

  if (v9 == 81)
  {
    v11 = 0;
    while (v17[v11] != *(v16 + a2))
    {
      v11 += 16;
      if (v11 == 80)
      {
        result = 0;
        goto LABEL_12;
      }
    }

    v14 = &v17[v11];
    *(v14 + 14) = 0;
    *(v14 + 12) = 0;
    *(v14 + 10) = 0;
    *(v14 + 8) = 0;
    *(v14 + 6) = 0;
    *(v14 + 4) = 0;
    *(v14 + 2) = 0;
    *(a6 + 8) = LH_atoi(&v17[v11 + 7]);
    *(a6 + 12) = LH_atoi(v14 + 13);
    *(a6 + 4) = LH_atoi(v14 + 3);
    *(a6 + 5) = LH_atoi(v14 + 9);
    *(a6 + 16) = LH_atoi(v14 + 5);
    v15 = LH_atoi(v14 + 11);
    result = 0;
    *(a6 + 17) = v15;
  }

  else
  {
LABEL_11:
    result = 0xFFFFFFFFLL;
  }

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MFVSyn__mlsa_filter_consult(uint64_t a1, signed int a2, uint64_t a3, int a4, _BYTE *a5, uint64_t a6)
{
  if (!a1 || !*(a1 + 120))
  {
    return 0xFFFFFFFFLL;
  }

  if (a5 && *a5)
  {
    return MFVSyn__mlsa_filter_mlp_fill(a1, a2, a3, a4, a5, a6);
  }

  v7 = 0;
  v8 = 1;
  v9 = 3;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v10 = 5;
      goto LABEL_24;
    }

    if (a2 == 4)
    {
      result = 0;
      *a6 = a4;
      *(a6 + 8) = 0x100000001;
      *(a6 + 4) = 1795;
      v11 = 1284;
LABEL_25:
      *(a6 + 16) = v11;
      return result;
    }
  }

  else if (a2)
  {
    if (a2 == 2)
    {
      v10 = 4;
LABEL_24:
      result = 0;
      *a6 = a4;
      *(a6 + 8) = 0;
      *(a6 + 4) = 3;
      *(a6 + 5) = v10;
      v11 = 2056;
      goto LABEL_25;
    }
  }

  else
  {
    v8 = 0;
    v7 = 1;
    v9 = 2;
  }

  *a6 = a4;
  if (a3 == 8000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 5;
  }

  *(a6 + 8) = 0x100000001;
  *(a6 + 4) = 3;
  *(a6 + 5) = v9;
  result = 0;
  if (v8)
  {
    *(a6 + 16) = 4;
  }

  else
  {
    if (!v7)
    {
      return result;
    }

    *(a6 + 16) = 4;
  }

  *(a6 + 17) = v12;
  return result;
}

unint64_t zerflt_qs(unint64_t result, __int16 *a2, uint64_t a3, int a4, int a5)
{
  v5 = 2 * a5 - 2;
  v6 = (a3 + v5);
  v7 = result + v5;
  do
  {
    v8 = 0;
    LOWORD(v9) = 0;
    v10 = a2;
    do
    {
      v11 = *v10++;
      v9 = ((*(v7 + v8) * v11) >> 16) + v9;
      v8 -= 2;
    }

    while (v10 < &a2[a4]);
    v7 -= 2;
    *v6-- = v9;
  }

  while (v7 >= result);
  return result;
}

uint64_t v_set_qs(uint64_t result, __int16 a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = (a3 + 7) & 0xFFFFFFF8;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = xmmword_1C37BDD80;
    v6 = xmmword_1C37BDD90;
    v7 = xmmword_1C378AEF0;
    v8 = xmmword_1C378AF00;
    v9 = (result + 8);
    v10 = vdupq_n_s64(8uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v4, v8));
      if (vuzp1_s8(vuzp1_s16(v11, *v4.i8), *v4.i8).u8[0])
      {
        *(v9 - 4) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(v11, *&v4), *&v4).i8[1])
      {
        *(v9 - 3) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v7))), *&v4).i8[2])
      {
        *(v9 - 2) = a2;
        *(v9 - 1) = a2;
      }

      v12 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s8(*&v4, vuzp1_s16(v12, *&v4)).i32[1])
      {
        *v9 = a2;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(v12, *&v4)).i8[5])
      {
        v9[1] = a2;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5)))).i8[6])
      {
        v9[2] = a2;
        v9[3] = a2;
      }

      v6 = vaddq_s64(v6, v10);
      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 8;
      v5 = vaddq_s64(v5, v10);
      v3 -= 8;
    }

    while (v3);
  }

  return result;
}

uint64_t BET3FXD__wave_t__convertFromF0ToTp(_DWORD *a1, unsigned int a2)
{
  if (a2)
  {
    return ((*a1 << 12) / a2);
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

uint64_t wave_t__convertFromF0ToTp_SR(unsigned int a1, int a2)
{
  if (a1)
  {
    return ((a2 << 12) / a1);
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

uint64_t BET3FXD__wave_t__setSampleRateHz(_DWORD *a1, uint64_t a2)
{
  if (!a1 || a2 < 1)
  {
    return a2;
  }

  *a1 = a2;
  a1[1] = a2 >> 1;
  if (a2 <= 11999)
  {
    if (a2 == 8000)
    {
      v2 = 268435;
      goto LABEL_15;
    }

    if (a2 != 11025)
    {
      return a2;
    }

    v3 = -1825;
LABEL_13:
    v2 = v3 | 0x20000;
    goto LABEL_15;
  }

  switch(a2)
  {
    case 0x2EE0:
      v3 = -17651;
      goto LABEL_13;
    case 0x3E80:
      v3 = 3146;
      goto LABEL_13;
    case 0x5622:
      v2 = 97392;
LABEL_15:
      a1[2] = v2;
      break;
  }

  return a2;
}

uint64_t BET3FXD__MFVSyn__loadExcTable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v49 = 0;
  v50 = 0;
  memset(__dst, 0, sizeof(__dst));
  __src = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    if ((ssftriff_reader_OpenChunk(a2, &v50, &v49, &__src, a5, a6, a7, a8) & 0x80000000) == 0 && !(v50 ^ 0x44485845 | v51))
    {
      v48 = 64;
      if ((ssftriff_reader_ReadStringZ(a2, __src, v49, 0, __dst, &v48) & 0x80000000) == 0 && v48 + 16 >= v49)
      {
        v12 = __src + v48;
        __src = v12;
        *(a1 + 472) = *v12;
        __src = v12 + 4;
        *(a1 + 488) = *(v12 + 2);
        __src = v12 + 6;
        *(a1 + 490) = *(v12 + 3);
        __src = v12 + 8;
        *(a1 + 492) = *(v12 + 4);
        __src = v12 + 10;
        *(a1 + 494) = *(v12 + 5);
        __src = v12 + 12;
        *(a1 + 496) = *(v12 + 6);
        __src = v12 + 14;
        *(a1 + 498) = *(v12 + 7);
        __src = v12 + 16;
        if ((ssftriff_reader_CloseChunk(a2) & 0x80000000) == 0 && (ssftriff_reader_OpenChunk(a2, &v50, &v49, &__src, v13, v14, v15, v16) & 0x80000000) == 0 && !(v50 ^ 0x54445845 | v51))
        {
          if (*(a1 + 498))
          {
            v18 = heap_Calloc(*(*a1 + 8), *(a1 + 472), 24);
            *(a1 + 480) = v18;
            if (v18)
            {
              v19 = heap_Calloc(*(*a1 + 8), ((*(a1 + 492) + *(a1 + 488)) * *(a1 + 472)), 2);
              v20 = *(a1 + 480);
              *v20 = v19;
              if (v19)
              {
                v21 = *(a1 + 472);
                if (v21 > 1)
                {
                  v22 = 2 * *(a1 + 488);
                  v23 = v19 + v22;
                  v24 = v20 + 3;
                  v25 = v21 - 1;
                  do
                  {
                    *v24 = v23;
                    v24 += 3;
                    v23 += v22;
                    --v25;
                  }

                  while (v25);
                }

                if (v21 < 1)
                {
LABEL_37:
                  result = (ssftriff_reader_CloseChunk(a2) >> 31);
                  goto LABEL_6;
                }

                v26 = v20[3 * v21 - 3] + 2 * *(a1 + 488);
                v27 = 2 * *(a1 + 492);
                v28 = v20 + 1;
                do
                {
                  *v28 = v26;
                  v28 += 3;
                  v26 += v27;
                  --v21;
                }

                while (v21);
                v29 = 0;
                v30 = __src;
LABEL_24:
                memmove(*(*(a1 + 480) + 24 * v29), v30, 2 * (*(a1 + 488) & 0x7FFF));
                v31 = *(a1 + 488);
                v32 = __src + 2 * (v31 & 0x7FFF);
                __src = v32;
                v33 = v31 & 0x7FFF;
                v34 = *(a1 + 480);
                while (1)
                {
                  v35 = v33 - 1;
                  if (v33 == 1)
                  {
                    v37 = 0;
                    v36 = *(v34 + 24 * v29);
                  }

                  else
                  {
                    if (!v33)
                    {
                      memmove(*(v34 + 24 * v29 + 8), v32, 2 * (*(a1 + 492) & 0x7FFF));
                      v38 = *(a1 + 492);
                      v39 = __src + 2 * (v38 & 0x7FFF);
                      __src = v39;
                      for (i = v38 & 0x7FFF; ; i = v41)
                      {
                        v41 = i - 1;
                        if (i == 1)
                        {
                          v43 = 0;
                          v42 = *(*(a1 + 480) + 24 * v29 + 8);
                        }

                        else
                        {
                          if (!i)
                          {
                            v44 = *v39;
                            __src = v39 + 4;
                            v45 = *(a1 + 480) + 24 * v29;
                            *(v45 + 16) = v44;
                            *(v45 + 20) = *(v39 + 2);
                            v46 = __src;
                            __src = __src + 2;
                            *(*(a1 + 480) + 24 * v29 + 22) = v46[1];
                            v30 = __src + 2;
                            __src = __src + 2;
                            if (++v29 >= *(a1 + 472))
                            {
                              goto LABEL_37;
                            }

                            goto LABEL_24;
                          }

                          v42 = *(*(a1 + 480) + 24 * v29 + 8);
                          v43 = *(v42 + 2 * i - 4);
                        }

                        *(v42 + 2 * v41) ^= v43;
                      }
                    }

                    v36 = *(v34 + 24 * v29);
                    v37 = *(v36 + 2 * v33 - 4);
                  }

                  *(v36 + 2 * v35) ^= v37;
                  v33 = v35;
                }
              }
            }
          }

          else
          {
            v17 = **(a1 + 480);
            if (v17)
            {
              heap_Free(0, v17);
              heap_Free(0, *(a1 + 480));
            }
          }
        }
      }
    }

    result = 0xFFFFFFFFLL;
  }

LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BET3FXD__MFVSyn__releaseExcTable(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1[60];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v2)
  {
    heap_Free(*(*a1 + 8), *v2);
    v2 = a1[60];
  }

  heap_Free(*(*a1 + 8), v2);
  return 0;
}

uint64_t RccSyn__init_Synthesis(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = 2164269062;
  v13 = xmmword_1F42D73B0;
  v14 = xmmword_1F42D73A0;
  *a2 = a1;
  if (!PRMBLK_CreateFromMRCC_Param(a1, 2, (a2 + 32), &v14, &v13, 0, a3, 1))
  {
    v6 = *(a2 + 32);
    v7 = *(a2 + 40);
    *v7 = a1;
    *v6 = a1;
    v8 = v7[1];
    if (!Mrcc2Rr_InitByProps(0, v6) && !Rr2Pcm_InitByProps(0, v7))
    {
      MrccInput_Init(a1, a2 + 48);
      v9 = *(v8 + 24);
      if (v9 <= *(v8 + 28))
      {
        v9 = *(v8 + 28);
      }

      *(a2 + 260) = v9;
      RrInput_Init(a1, a2 + 160);
      *(a2 + 256) = *(v8 + 24);
      v10 = heap_Alloc(*(a1 + 8), 2 * *(a2 + 260));
      *(a2 + 264) = v10;
      if (v10)
      {
        v5 = 0;
      }

      else
      {
        v5 = 2164269062;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t RccSyn__SynthesisOneFrame(uint64_t a1, _DWORD *a2, void *a3)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  v8 = v6[1];
  RrInput_Reset(a1 + 160);
  if (Mrcc2Rr_ProcessFrame(v7, a1 + 48, a1 + 160))
  {
    return 7;
  }

  *(a1 + 256) = *(v8 + 24);
  if (Rr2Pcm_ProcessFrame(v6, a1 + 160, a1 + 248))
  {
    return 10;
  }

  result = 2164269062;
  if (a2)
  {
    if (a3)
    {
      result = 0;
      *a2 = *(a1 + 256);
      *a3 = *(a1 + 264);
    }
  }

  return result;
}

void *RccSyn__deinit_Synthesis(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Mrcc2Rr_Deallocate(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    Rr2Pcm_Deallocate(v3);
    *(a1 + 40) = 0;
  }

  RrInput_DeallocateData((a1 + 160));
  MrccInput_DeallocateData((a1 + 48));
  result = MrccInput_DeallocateData((a1 + 104));
  v5 = *(a1 + 264);
  if (v5)
  {
    result = heap_Free(*(*a1 + 8), v5);
    *(a1 + 264) = 0;
  }

  return result;
}

double RccSyn__reset_Synthesis(uint64_t a1)
{
  v1 = *(a1 + 32);
  Rr2Pcm_Reset(*(a1 + 40));

  *&result = kaldi::CuMatrixBase<float>::~CuMatrixBase(v1).n128_u64[0];
  return result;
}

uint64_t PRMBLK_ReadParameters(uint64_t a1, void *a2, int a3, _DWORD *a4)
{
  if (a3 != 2)
  {
    return 3;
  }

  v82 = v4;
  v83 = v5;
  v9 = *(*a2 + 8);
  v10 = a4[4];
  if ((v10 & 0x80000000) == 0)
  {
    result = 1;
    if (v10 <= 11024)
    {
      if (!v10)
      {
        v9[2] = 0;
        v9[4] = 0;
        goto LABEL_22;
      }

      if (v10 == 8000)
      {
LABEL_13:
        v10 = v9[4];
        if (v10 <= 0)
        {
          v10 = 256;
LABEL_20:
          v9[4] = v10;
        }

LABEL_22:
        v9[5] = (v10 >> 1) + 1;
        goto LABEL_23;
      }

      if (v10 != 11000)
      {
        return result;
      }
    }

    else
    {
      if (v10 > 21999)
      {
        if (v10 != 22050 && v10 != 22000)
        {
          return result;
        }

        v9[2] = 22000;
LABEL_18:
        v10 = v9[4];
        if (v10 <= 0)
        {
          v10 = 512;
          goto LABEL_20;
        }

        goto LABEL_22;
      }

      if (v10 != 11025)
      {
        if (v10 != 16000)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    v9[2] = 11000;
    goto LABEL_13;
  }

LABEL_23:
  v12 = a4[73];
  if ((v12 & 0x80000000) == 0 && Mrcc2Rr_SetSampleRateDependentParams(v9, v9[2], v12))
  {
    return 1;
  }

  v13 = a4[6];
  if ((v13 & 0x80000000) == 0)
  {
    v9[3] = v13;
  }

  v14 = a4[43];
  if ((v14 & 0x80000000) == 0)
  {
    v9[14] = v14;
  }

  v15 = a4[44];
  if ((v15 & 0x80000000) == 0)
  {
    v9[6] = v15;
  }

  v16 = a4[45];
  if ((v16 & 0x80000000) == 0)
  {
    v9[7] = v16;
  }

  v17 = a4[5];
  if ((v17 & 0x80000000) == 0)
  {
    v9[8] = v17;
  }

  v18 = a4[46];
  if ((v18 & 0x80000000) == 0)
  {
    v9[15] = v18;
  }

  v19 = a4[8];
  if ((v19 & 0x80000000) == 0)
  {
    v9[9] = v19;
  }

  v20 = a4[9];
  if ((v20 & 0x80000000) == 0)
  {
    v9[10] = v20;
  }

  v21 = a4[47];
  if ((v21 & 0x80000000) == 0)
  {
    v9[11] = v21;
  }

  v22 = a4[26];
  if ((v22 & 0x80000000) == 0)
  {
    v9[12] = v22;
  }

  v23 = a4[7];
  if ((v23 & 0x80000000) == 0)
  {
    v9[13] = v23;
  }

  v24 = *(a2[1] + 8);
  v25 = a4[4];
  if (v25 < 0)
  {
    goto LABEL_79;
  }

  result = 1;
  if (v25 > 15999)
  {
    v26 = 16000;
    if (v25 == 16000)
    {
      *(v24 + 8) = 16000;
      v27 = *(v24 + 12);
      v28 = 512;
      if (v27 > 0)
      {
        v29 = 0;
        v30 = 160;
        v31 = 80;
        goto LABEL_70;
      }

      v29 = 0;
      *(v24 + 12) = 512;
      v30 = 160;
      v31 = 80;
    }

    else
    {
      if (v25 != 22050 && v25 != 22000)
      {
        return result;
      }

      v26 = 22000;
      *(v24 + 8) = 22000;
      v27 = *(v24 + 12);
      v28 = 512;
      if (v27 > 0)
      {
        v29 = 1;
        v30 = 220;
        v31 = 110;
        goto LABEL_70;
      }

      *(v24 + 12) = 512;
      v29 = 1;
      v30 = 220;
      v31 = 110;
    }

    v27 = 512;
    goto LABEL_70;
  }

  v26 = 8000;
  if (v25 == 8000)
  {
    *(v24 + 8) = 8000;
    v27 = *(v24 + 12);
    v28 = 256;
    if (v27 > 0)
    {
      v29 = 0;
      v30 = 80;
      v31 = 40;
      goto LABEL_70;
    }

    v29 = 0;
    *(v24 + 12) = 256;
    v30 = 80;
    v31 = 40;
LABEL_67:
    v27 = 256;
    goto LABEL_70;
  }

  v26 = 11000;
  if (v25 != 11000 && v25 != 11025)
  {
    return result;
  }

  *(v24 + 8) = 11000;
  v27 = *(v24 + 12);
  v28 = 256;
  if (v27 <= 0)
  {
    v29 = 0;
    *(v24 + 12) = 256;
    v30 = 110;
    v31 = 55;
    goto LABEL_67;
  }

  v29 = 0;
  v30 = 110;
  v31 = 55;
LABEL_70:
  *(v24 + 20) = v28;
  *(v24 + 24) = v31;
  *(v24 + 44) = v30;
  v32.i32[0] = v27 >> 1;
  v32.i32[1] = v31;
  *(v24 + 28) = vmin_s32(*(v24 + 28), v32);
  if (*(v24 + 16) < v27)
  {
    v27 = *(v24 + 16);
  }

  *(v24 + 16) = v27;
  if (v29)
  {
    v33 = 4;
  }

  else
  {
    v33 = 0;
  }

  if (v29)
  {
    v34 = 968;
  }

  else
  {
    v34 = 1024;
  }

  *(v24 + 168) = v33;
  *(v24 + 172) = v34;
  Rr2Pcm_ProcessMvf_SetHbThr(v24 + 200, *(v24 + 136), v26);
LABEL_79:
  v35 = *(v24 + 12);
  *(v24 + 168) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*(v24 + 8) == 22000), 0x1FuLL)), 0x3C800000004, 0x40000000000);
  *(v24 + 44) = 2 * *(v24 + 24);
  *(v24 + 288) = v35 / 2;
  *(v24 + 284) = PositiveShortLog2(v35);
  v36 = *(v24 + 12);
  *(v24 + 292) = v36;
  *(v24 + 296) = 440 * v36 / *(v24 + 44) / 256;
  Rr2Pcm_SetDerivedParams(v24);
  v37 = *(v24 + 8);
  v38 = *(v24 + 12);
  *(v24 + 300) = 32 * v37 / v38;
  *(v24 + 304) = (v38 << 20) / (32 * v37);
  *(v24 + 308) = (v37 + 860160 * *(v24 + 24)) / (2 * v37);
  Rr2Pcm_ProcessMvf_SetHbThr(v24 + 200, *(v24 + 136), v37);
  v39 = a4[10];
  if ((v39 & 0x80000000) == 0)
  {
    *(v24 + 24) = v39;
    Rr2Pcm_SetDerivedParams(v24);
  }

  v40 = a4[72];
  if ((v40 & 0x80000000) == 0)
  {
    *(v24 + 20) = v40;
  }

  v41 = a4[11];
  if ((v41 & 0x80000000) == 0)
  {
    *(v24 + 184) = v41;
  }

  v42 = a4[25];
  if ((v42 & 0x80000000) == 0)
  {
    *(v24 + 196) = v42;
    if (v42)
    {
      if (!*(v24 + 248))
      {
        __sprintf_chk(v81, 0, 3uLL, "%d", 3);
        if (Rr2Pcm_ProcessMvf_SetProperty(a1, v24 + 200, "SYN_DEBUZZ_PROCESS_MVF_SMOOTH_WIN", v81))
        {
          return 2;
        }
      }
    }
  }

  v43 = a4[74];
  if ((v43 & 0x80000000) == 0)
  {
    *(v24 + 64) = v43;
  }

  v44 = a4[13];
  if ((v44 & 0x80000000) == 0)
  {
    *(v24 + 76) = v44;
  }

  v45 = a4[18];
  if ((v45 & 0x80000000) == 0)
  {
    *(v24 + 80) = v45;
  }

  v46 = a4[17];
  if ((v46 & 0x80000000) == 0)
  {
    *(v24 + 84) = v46;
  }

  v47 = a4[14];
  if ((v47 & 0x80000000) == 0)
  {
    *(v24 + 96) = v47;
  }

  v48 = a4[19];
  if ((v48 & 0x80000000) == 0)
  {
    *(v24 + 100) = v48;
  }

  v49 = a4[22];
  if ((v49 & 0x80000000) == 0)
  {
    *(v24 + 104) = 32 * v49;
  }

  v50 = a4[23];
  if ((v50 & 0x80000000) == 0)
  {
    *(v24 + 108) = 32 * v50;
  }

  v51 = a4[20];
  if ((v51 & 0x80000000) == 0)
  {
    *(v24 + 112) = 32 * (v51 & 0x3FFFFF);
  }

  v52 = a4[21];
  if ((v52 & 0x80000000) == 0)
  {
    *(v24 + 116) = 32 * (v52 & 0x3FFFFF);
  }

  v53 = a4[48];
  if ((v53 & 0x80000000) == 0)
  {
    *(v24 + 120) = v53;
    *(v24 + 124) = v53;
  }

  v54 = a4[49];
  if ((v54 & 0x80000000) == 0)
  {
    *(v24 + 120) = v54;
  }

  v55 = a4[50];
  if ((v55 & 0x80000000) == 0)
  {
    *(v24 + 124) = v55;
  }

  v56 = a4[15];
  if ((v56 & 0x80000000) == 0)
  {
    *(v24 + 128) = v56;
  }

  v57 = a4[16];
  if ((v57 & 0x80000000) == 0)
  {
    *(v24 + 132) = v57;
  }

  v58 = a4[12];
  if ((v58 & 0x80000000) == 0)
  {
    *(v24 + 136) = v58;
    Rr2Pcm_ProcessMvf_SetHbThr(v24 + 200, v58, *(v24 + 8));
  }

  v59 = a4[51];
  if ((v59 & 0x80000000) == 0)
  {
    *(v24 + 156) = v59;
    if (v59)
    {
      *(v24 + 164) = 31785;
    }
  }

  v60 = a4[52];
  if ((v60 & 0x80000000) == 0)
  {
    *(v24 + 268) = v60;
  }

  v61 = a4[53];
  if ((v61 & 0x80000000) == 0)
  {
    *(v24 + 272) = v61;
  }

  v62 = a4[46];
  if ((v62 & 0x80000000) == 0)
  {
    *(v24 + 280) = v62;
  }

  v63 = a4[54];
  if ((v63 & 0x80000000) == 0)
  {
    *(v24 + 160) = v63;
  }

  v64 = a4[55];
  if ((v64 & 0x80000000) == 0)
  {
    *(v24 + 144) = *(v24 + 12) * v64 / (32 * *(v24 + 8));
  }

  v65 = a4[56];
  if ((v65 & 0x80000000) == 0)
  {
    *(v24 + 148) = *(v24 + 12) * v65 / (32 * *(v24 + 8));
  }

  v66 = a4[57];
  if ((v66 & 0x80000000) == 0)
  {
    *(v24 + 140) = *(v24 + 12) * v66 / (32 * *(v24 + 8));
  }

  v67 = a4[24];
  if ((v67 & 0x80000000) == 0)
  {
    *(v24 + 60) = v67;
  }

  v68 = a4[27];
  if ((v68 & 0x80000000) == 0)
  {
    *(v24 + 276) = v68;
  }

  if ((a4[33] & 0x80000000) == 0)
  {
    v69 = *(v24 + 232);
    if (v69)
    {
      heap_Free(*(a1 + 8), v69);
      *(v24 + 232) = 0;
    }

    v70 = heap_Alloc(*(a1 + 8), 12);
    *(v24 + 232) = v70;
    if (!v70)
    {
      return 2;
    }

    *(v70 + 8) = 0;
    *v70 = 0;
    *(v24 + 248) = 3;
  }

  v71 = a4[34];
  if ((v71 & 0x80000000) == 0)
  {
    *(v24 + 220) = v71;
  }

  v72 = a4[35];
  if ((v72 & 0x80000000) == 0)
  {
    *(v24 + 216) = v72;
  }

  v73 = a4[36];
  if ((v73 & 0x80000000) == 0)
  {
    *(v24 + 208) = v73;
  }

  v74 = a4[37];
  if ((v74 & 0x80000000) == 0)
  {
    *(v24 + 252) = v74;
  }

  v75 = a4[38];
  if ((v75 & 0x80000000) == 0)
  {
    *(v24 + 256) = v75;
  }

  v76 = a4[67];
  if ((v76 & 0x80000000) == 0)
  {
    *(v24 + 28) = v76;
  }

  v77 = a4[68];
  if ((v77 & 0x80000000) == 0)
  {
    *(v24 + 32) = v77;
  }

  v78 = a4[69];
  if ((v78 & 0x80000000) == 0)
  {
    *(v24 + 16) = v78;
  }

  v79 = a4[70];
  if ((v79 & 0x80000000) == 0)
  {
    *(v24 + 36) = v79;
  }

  v80 = a4[71];
  result = 0;
  if ((v80 & 0x80000000) == 0)
  {
    *(v24 + 40) = v80;
  }

  return result;
}

uint64_t PRMBLK_CreateFromMRCC_Param(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(void, _DWORD *), _DWORD *a7, int a8)
{
  v9 = a3;
  if (a2 <= 0)
  {

    return PRMBLK_ReadParameters(a1, a3, a2, a7);
  }

  else
  {
    v15 = 0;
    v16 = 8 * a2;
    v17 = a2;
    do
    {
      v18 = (*(a4 + v15))(a1, a7);
      v9[v15 / 8] = v18;
      if (!v18)
      {
        return 4;
      }

      v15 += 8;
    }

    while (v16 != v15);
    result = PRMBLK_ReadParameters(a1, v9, a2, a7);
    if (a6)
    {
      do
      {
        v20 = (*a6)(*v9, a7);
        if (v20)
        {
          v21 = a8 == 0;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          return 3;
        }

        ++v9;
        ++a6;
        --v17;
      }

      while (v17);
      if (v20)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t Mrcc2Rr_SetProperty(_DWORD *a1, char *__s1, const char *a3, _BYTE *a4)
{
  if (!strcmp(__s1, "PROD_CODE"))
  {
    v8 = atoi(a3);
    if (Mrcc2Rr_SetSampleRateDependentParams(a1, v8, a1[4]))
    {
      return 1;
    }
  }

  result = 0;
  *a4 = 0;
  return result;
}

uint64_t Mrcc2Rr_SetSampleRateDependentParams(_DWORD *a1, int a2, unsigned int a3)
{
  v3 = 1;
  if (a2 <= 11024)
  {
    if (!a2)
    {
      v7 = 0;
      a1[2] = 0;
LABEL_20:
      v3 = 0;
      a1[4] = v7;
      a1[5] = (v7 >> 1) + 1;
      return v3;
    }

    if (a2 == 8000)
    {
      a1[2] = 8000;
      goto LABEL_16;
    }

    if (a2 != 11000)
    {
      return v3;
    }

LABEL_9:
    a1[2] = 11000;
LABEL_16:
    v5 = __OFSUB__(a3, 1);
    v4 = (a3 - 1) < 0;
    v6 = 256;
LABEL_17:
    if (v4 != v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = a3;
    }

    goto LABEL_20;
  }

  if (a2 <= 21999)
  {
    if (a2 != 11025)
    {
      if (a2 == 16000)
      {
        a1[2] = 16000;
LABEL_13:
        v5 = __OFSUB__(a3, 1);
        v4 = (a3 - 1) < 0;
        v6 = 512;
        goto LABEL_17;
      }

      return v3;
    }

    goto LABEL_9;
  }

  if (a2 == 22050 || a2 == 22000)
  {
    a1[2] = 22000;
    goto LABEL_13;
  }

  return v3;
}

uint64_t *Mrcc2Rr_AllocateAndInit(uint64_t a1, uint64_t a2, int a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 32);
  if (v6)
  {
    Mrcc2Rr_Init(a1, a2, v6, a3);
    if (v7)
    {
      heap_Free(*(a1 + 8), v6);
      return 0;
    }
  }

  return v6;
}

void Mrcc2Rr_Init(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  *a3 = a1;
  v8 = heap_Alloc(*(a1 + 8), 64);
  a3[1] = v8;
  if (v8)
  {
    v8[2] = 0u;
    v8[3] = 0u;
    *v8 = 0u;
    v8[1] = 0u;
    v9 = heap_Alloc(*(a1 + 8), 64);
    a3[2] = v9;
    if (v9)
    {
      v9[2] = 0u;
      v9[3] = 0u;
      *v9 = 0u;
      v9[1] = 0u;
      v10 = heap_Alloc(*(a1 + 8), 176);
      a3[3] = v10;
      if (v10)
      {
        v10[9] = 0u;
        v10[10] = 0u;
        v10[7] = 0u;
        v10[8] = 0u;
        v10[5] = 0u;
        v10[6] = 0u;
        v10[3] = 0u;
        v10[4] = 0u;
        v10[1] = 0u;
        v10[2] = 0u;
        *v10 = 0u;
        Mrcc2Rr_InitProps(v10, a2, a3[1]);
        if (!(v11 | a4))
        {
          v12 = a3[1];

          Mrcc2Rr_InitByProps(v12, a3);
        }
      }
    }
  }
}

double Mrcc2Rr_InitProps(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    LODWORD(a2) = *(a2 + 16);
  }

  if (!Mrcc2Rr_SetSampleRateDependentParams(a3, a2, 0))
  {
    *(a3 + 12) = -1;
    *(a3 + 24) = xmmword_1C3830910;
    *(a3 + 40) = xmmword_1C3830920;
    *&result = 0x100000018;
    *(a3 + 56) = 0x100000018;
  }

  return result;
}

uint64_t Mrcc2Rr_InitByProps(int *a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = a1;
    a2[1] = a1;
  }

  else
  {
    v3 = a2[1];
  }

  v4 = a2[2];
  v5 = a2[3];
  if (!v3[7] && !v3[6])
  {
    return 1;
  }

  if (!Init_SinTable(*a2, a2[2], 0))
  {
    Init_MelTable(*a2, v4 + 32, 0, v3[2]);
  }

  if (!v3[7])
  {
    return 0;
  }

  result = Mrcc_InitByProps(*a2, v5, v4, v3, 0);
  if (!result)
  {
    return 0;
  }

  return result;
}

double MrccInput_Init(uint64_t a1, uint64_t a2)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  result = 0.0;
  *(a2 + 48) = 0;
  *(a2 + 16) = xmmword_1C378AF00;
  *(a2 + 32) = xmmword_1C3830930;
  return result;
}

uint64_t MrccInput_AllocateData(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 < a2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
    *(a1 + 8) = 0;
  }

  v7 = heap_Alloc(*(*a1 + 8), 4 * a2);
  *(a1 + 8) = v7;
  if (!v7)
  {
    return 2;
  }

  bzero(v7, 4 * a2);
  result = 0;
  *(a1 + 48) = 1;
  *(a1 + 16) = a2;
  return result;
}

void *MrccInput_DeallocateData(void *result)
{
  if (*(result + 12))
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      result = heap_Free(*(*result + 8), v2);
      v1[1] = 0;
    }
  }

  return result;
}

uint64_t Mrcc2Rr_ProcessFrame(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v7 = a1[3];
  v8 = v6[7];
  v9 = v6[3];
  if (v9 < 1)
  {
    if (v8)
    {
      goto LABEL_12;
    }

    return 1;
  }

  v10 = *(a2 + 16);
  if (v10 != v9 && v10 > 0 || v8 == 0)
  {
    return 1;
  }

LABEL_12:
  v14 = *(a2 + 40);
  *(a3 + 76) = v14;
  *(a3 + 64) = -1;
  v15 = *(a2 + 20);
  *(a3 + 44) = v15;
  *(a3 + 48) = v15;
  v16 = *(a2 + 24);
  *(a3 + 56) = v16;
  *(a3 + 80) = *(a2 + 32);
  if (v15)
  {
    v17 = v6[6];
    *(a3 + 8) = 1;
    *(a3 + 12) = v17;
    if (v16)
    {
      v18 = v6[2];
      v19 = v18 + (((v15 + 2097152000) / (2 * v15)) << 6);
LABEL_18:
      v20 = v19 / (2 * v18);
      goto LABEL_19;
    }

LABEL_17:
    v18 = v6[2];
    v19 = v18 + (v15 << 9);
    goto LABEL_18;
  }

  v17 = v6[6] & *(a2 + 44);
  *(a3 + 8) = 1;
  *(a3 + 12) = v17;
  if (!v16)
  {
    goto LABEL_17;
  }

  v20 = 0;
LABEL_19:
  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  v23 = *(a2 + 36);
  v7[7] = v14;
  v7[8] = v23;
  result = Mrcc_PutHarmFrqs(v7, v20, 0x4000, v6[13]);
  if (result)
  {
    return result;
  }

  result = Mrcc_PutCoefs(v7, v21, v22, 0);
  if (result)
  {
    return result;
  }

  v24 = *(a3 + 24);
  if (v24)
  {
    if (*(a3 + 72) >= v7[26])
    {
      goto LABEL_27;
    }

    heap_Free(*(*a1 + 8), v24);
    *(a3 + 24) = 0;
  }

  v25 = heap_Alloc(*(*a1 + 8), 4 * v7[23]);
  *(a3 + 24) = v25;
  if (!v25)
  {
    return 2;
  }

  bzero(v25, 4 * v7[23]);
  *(a3 + 72) = v7[23];
LABEL_27:
  if (!v17)
  {
    *(a3 + 40) = v7[26];
    Mrcc_Enhance(v7);
    goto LABEL_37;
  }

  v26 = *(a3 + 32);
  if (v26)
  {
    v27 = v7[26];
    if (*(a3 + 68) >= v27)
    {
      goto LABEL_33;
    }

    heap_Free(*(*a1 + 8), v26);
    *(a3 + 32) = 0;
  }

  v28 = heap_Alloc(*(*a1 + 8), 4 * v7[23]);
  *(a3 + 32) = v28;
  if (!v28)
  {
    return 2;
  }

  bzero(v28, 4 * v7[23]);
  *(a3 + 68) = v7[23];
  v27 = v7[26];
LABEL_33:
  *(a3 + 40) = v27;
  Mrcc_Enhance(v7);
  if (*(a2 + 44))
  {
LABEL_37:
    v29 = 0;
    goto LABEL_38;
  }

  v29 = 2;
LABEL_38:

  return Mrcc_Solve_AmpPhase(v7, a3, v29, 1);
}

void Mrcc2Rr_Deallocate(void *a1)
{
  Mrcc2Rr_Clear(a1);
  if (a1)
  {
    v2 = *(*a1 + 8);

    heap_Free(v2, a1);
  }
}

void Mrcc2Rr_Clear(void *a1)
{
  if (*(a1[1] + 28))
  {
    Mrcc_Clear(*a1, a1[3]);
  }

  v2 = a1[2];
  kaldi::CuMatrixBase<float>::~CuMatrixBase(*a1);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(*a1);
  v3 = a1[1];
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
    a1[1] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    heap_Free(*(*a1 + 8), v4);
    a1[2] = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    heap_Free(*(*a1 + 8), v5);
    a1[3] = 0;
  }
}

uint64_t Init_MelTable(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *(a2 + 24) = 0;
  if (a3)
  {
    v4 = a3 + 1;
  }

  else
  {
    v4 = 1025;
  }

  *(a2 + 16) = v4;
  v5 = a3 & 0xFFFFFBFF;
  if ((a3 & 0xFFFFFBFF) == 0 && a4 == 22000)
  {
    v6 = &alMelFrq_Q15_22000_1024;
LABEL_16:
    result = 0;
    *a2 = v6;
    *(a2 + 8) = &alNrmFrq_Q15_1024;
    *(a2 + 20) = 16;
    return result;
  }

  if (!v5 && a4 == 11000)
  {
    v6 = &alMelFrq_Q15_11000_1024;
    goto LABEL_16;
  }

  if (!v5 && a4 == 16000)
  {
    v6 = &alMelFrq_Q15_16000_1024;
    goto LABEL_16;
  }

  result = 7;
  if (!v5 && a4 == 8000)
  {
    v6 = &alMelFrq_Q15_8000_1024;
    goto LABEL_16;
  }

  return result;
}

uint64_t Get_MelValues(uint64_t result, int *a2, _DWORD *a3, int a4)
{
  *(result + 24) = 0;
  v4 = (result + 24);
  if (a4 >= 1)
  {
    v7 = result;
    v8 = a4;
    do
    {
      v9 = *a2++;
      result = GetInterpolatedValue(*(v7 + 8), *v7, *(v7 + 16), v9, v4, 0);
      *a3++ = result;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t Mrcc_InitByProps(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5)
{
  a2[40] = *(a4 + 60);
  if (a5)
  {
    return 1;
  }

  v7 = *(a4 + 32);
  v8 = *(a4 + 52);
  a2[42] = *(a4 + 56);
  v9 = *(a4 + 36);
  v10 = *(a4 + 20);
  v12 = *(a4 + 8);
  v11 = *(a4 + 12);
  *(a2 + 16) = a3;
  *(a2 + 17) = a3 + 32;
  *a2 = v11;
  v13 = v11 - 1;
  if (v11 < 1)
  {
    return 8;
  }

  if (v7 == 3)
  {
    v13 = v11 - 2;
  }

  if (v7)
  {
    v11 = v13;
    v15 = v7 == 3;
  }

  else
  {
    v15 = -1;
  }

  a2[1] = v11;
  a2[2] = v15;
  a2[6] = v7;
  *(a2 + 9) = v9;
  a2[13] = 5;
  v16 = 2 * v10 - 2;
  a2[23] = v10;
  a2[24] = v16;
  a2[25] = PositiveShortLog2((2 * v10 - 2));
  v17 = heap_Alloc(*(a1 + 8), 4 * *a2);
  *(a2 + 2) = v17;
  if (!v17)
  {
    return 2;
  }

  bzero(v17, 4 * *a2);
  v18 = heap_Alloc(*(a1 + 8), 4 * v10);
  *(a2 + 7) = v18;
  if (!v18)
  {
    return 2;
  }

  bzero(v18, 4 * v10);
  v19 = heap_Alloc(*(a1 + 8), 4 * v10);
  *(a2 + 8) = v19;
  if (!v19)
  {
    return 2;
  }

  bzero(v19, 4 * v10);
  v20 = heap_Alloc(*(a1 + 8), 4 * v10);
  *(a2 + 9) = v20;
  if (!v20)
  {
    return 2;
  }

  bzero(v20, 4 * v10);
  v21 = heap_Alloc(*(a1 + 8), 4 * v10);
  *(a2 + 10) = v21;
  if (!v21)
  {
    return 2;
  }

  bzero(v21, 4 * v10);
  v22 = heap_Alloc(*(a1 + 8), 4 * (a2[24] + 2));
  *(a2 + 18) = v22;
  if (!v22)
  {
    return 2;
  }

  bzero(v22, 4 * (a2[24] + 2));
  v23 = heap_Alloc(*(a1 + 8), 4 * (a2[24] + 2));
  *(a2 + 19) = v23;
  if (!v23)
  {
    return 2;
  }

  bzero(v23, 4 * (a2[24] + 2));
  a2[28] = v12;
  a2[29] = 0x4000;
  a2[30] = v8;
  a2[31] = 0x8000;
  v24 = *(a2 + 10);
  if (v10 >= 1)
  {
    v25 = 0;
    v26 = (v10 + 0x7FFF) / v16;
    v27 = vdupq_n_s64(v10 - 1);
    v28 = (v10 + 3) & 0xFFFFFFFC;
    v29 = v24 + 2;
    v30 = xmmword_1C378AEF0;
    v31 = xmmword_1C378AF00;
    v32 = vdupq_n_s64(4uLL);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v27, v31));
      if (vuzp1_s16(v33, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v33, *&v27).i8[2])
      {
        *(v29 - 1) = v26 + v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v30))).i32[1])
      {
        *v29 = 2 * v26 + v25;
        v29[1] = 3 * v26 + v25;
      }

      v30 = vaddq_s64(v30, v32);
      v31 = vaddq_s64(v31, v32);
      v25 += 4 * v26;
      v29 += 4;
      v28 -= 4;
    }

    while (v28);
  }

  warpFreqs(a2, v24, *(a2 + 9), v10, a2 + 22);
  return 0;
}

uint64_t Mrcc_PutCoefs(int *a1, _DWORD *a2, int a3, int a4)
{
  result = 6;
  if (a2 && a3 >= 1)
  {
    v6 = *a1;
    if (*a1 < 1 || v6 == a3)
    {
      if (a4)
      {
        if (v6 >= 1)
        {
          v8 = 0;
          v9 = *(a1 + 2);
          do
          {
            *(v9 + 4 * v8) = -a2[v8];
            ++v8;
          }

          while (v8 < *a1);
        }
      }

      else
      {
        memcpy(*(a1 + 2), a2, 4 * v6);
      }

      v19 = 0;
      v10 = a1[42];
      LODWORD(v11) = a1[2];
      v12 = v10 - 13;
      if (v10 >= 13 && (v11 & 0x80000000) == 0)
      {
        v13 = v10 - 12;
        v14 = *(a1 + 2);
        v15 = 1 << v12;
        v16 = -1;
        do
        {
          v17 = *v14;
          if ((v15 & v17) != 0)
          {
            v18 = (v17 >> v13) + 1;
          }

          else
          {
            v18 = v17 >> v13;
          }

          *v14++ = v18;
          v11 = a1[2];
          ++v16;
        }

        while (v16 < v11);
      }

      ScaleTo16BitSignedRange((*(a1 + 2) + 4 * v11 + 4), a1[1], &v19 + 1, &v19, 0, 0);
      result = 0;
      a1[41] = v19 - HIDWORD(v19);
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t warpFreqs(uint64_t result, int *a2, _DWORD *a3, unsigned int a4, _DWORD *a5)
{
  v6 = result;
  v7 = *(result + 92);
  if (v7 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v7;
  }

  if (a2)
  {
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    a2 = *(result + 56);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  a3 = *(result + 64);
LABEL_6:
  if (*(result + 120) == 1)
  {
    v9 = *(result + 136);
    v10 = *(v6 + 116);
    if (v10 < 0x4000)
    {
      if (v8 < 1)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        v11 = 0;
        while (a2[v11] <= v10)
        {
          if (v8 == ++v11)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v8) = v11;
      }
    }

LABEL_19:
    result = Get_MelValues(v9, a2, a3, v8);
    if (a5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    LODWORD(v8) = 0;
    if (a5)
    {
LABEL_20:
      *a5 = v8;
    }
  }

  return result;
}

uint64_t Mrcc_PutHarmFrqs(uint64_t a1, int a2, int a3, int a4)
{
  if (a2)
  {
    v5 = *(a1 + 92) - 1;
    if (v5 >= a3 / a2 + 1)
    {
      v6 = a3 / a2 + 1;
    }

    else
    {
      v6 = *(a1 + 92) - 1;
    }

    *(a1 + 108) = v6;
    if (v5 >= 0x4000 / a2 + 1)
    {
      v5 = 0x4000 / a2 + 1;
    }

    *(a1 + 104) = v5;
    *(a1 + 116) = a3;
    *(a1 + 120) = a4;
    v7 = *(a1 + 56);
    *v7 = 0;
    LODWORD(v8) = *(a1 + 104);
    if (v8 >= 2)
    {
      v9 = *v7 + a2;
      v10 = 1;
      do
      {
        v7[v10++] = v9;
        v8 = *(a1 + 104);
        v9 += a2;
      }

      while (v10 < v8);
    }

    warpFreqs(a1, 0, 0, v8, (a1 + 108));
  }

  else
  {
    if (a3 == 0x4000)
    {
      v11 = *(a1 + 92);
      v12 = v11;
    }

    else
    {
      v11 = *(a1 + 92);
      v13 = 2 * a3 * (v11 - 1) + 0x7FFF;
      if (((a3 * (v11 - 1)) & 0x40000000) == 0)
      {
        v13 = 2 * a3 * (v11 - 1);
      }

      v12 = (v13 >> 15) + 1;
    }

    *(a1 + 104) = v11;
    *(a1 + 108) = v12;
    *(a1 + 116) = a3;
    *(a1 + 120) = a4;
    memcpy(*(a1 + 56), *(a1 + 80), 4 * v11);
    memcpy(*(a1 + 64), *(a1 + 72), 4 * *(a1 + 88));
  }

  return 0;
}

void *Mrcc_Clear(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = a2[2];
    if (v4)
    {
      result = heap_Free(result[1], v4);
      a2[2] = 0;
    }

    v5 = a2[8];
    if (v5)
    {
      result = heap_Free(v3[1], v5);
      a2[8] = 0;
    }

    v6 = a2[9];
    if (v6)
    {
      result = heap_Free(v3[1], v6);
      a2[9] = 0;
    }

    v7 = a2[10];
    if (v7)
    {
      result = heap_Free(v3[1], v7);
      a2[10] = 0;
    }

    v8 = a2[7];
    if (v8)
    {
      result = heap_Free(v3[1], v8);
      a2[7] = 0;
    }

    v9 = a2[18];
    if (v9)
    {
      result = heap_Free(v3[1], v9);
      a2[18] = 0;
    }

    v10 = a2[19];
    if (v10)
    {
      result = heap_Free(v3[1], v10);
      a2[19] = 0;
    }
  }

  return result;
}

uint64_t Mrcc_Enhance(uint64_t result)
{
  if (*(result + 104) >= *(result + 92))
  {
    v1 = 40;
  }

  else
  {
    v1 = 36;
  }

  if (*(result + 24))
  {
    v2 = *(result + 8);
    if (*(result + 36) == 0x8000 || *(result + 4) < 1)
    {
      goto LABEL_51;
    }

    v3 = 0;
    v4 = *(result + v1);
    v5 = v4 >= 0 ? v4 : -v4;
    v6 = v5 & 0x7FFF;
    v7 = v5 >> 15;
    v8 = *(result + 16) + 4 * v2 + 4;
    v9 = 0x8000;
    do
    {
      if (v9 >= 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = -v9;
      }

      v11 = (v9 >> 31) | 1;
      if (v4 < 0)
      {
        v11 = -v11;
      }

      v9 = ((v10 >> 15) * v6 + (((v10 & 0x7FFF) * v6 + 0x4000) >> 15) + v10 * v7) * v11;
      v12 = *(v8 + 4 * v3);
      if (v12 >= 0)
      {
        v13 = *(v8 + 4 * v3);
      }

      else
      {
        v13 = -v12;
      }

      v14 = (v12 >> 31) | 1;
      if (v9 >= 0)
      {
        v15 = v9;
      }

      else
      {
        v15 = -v9;
      }

      if (v9 < 0)
      {
        v14 = -v14;
      }

      *(v8 + 4 * v3++) = ((v13 >> 15) * (v15 & 0x7FFF) + (((v13 & 0x7FFF) * (v15 & 0x7FFF) + 0x4000) >> 15) + v13 * (v15 >> 15)) * v14;
    }

    while (v3 < *(result + 4));
    if (*(result + 24))
    {
LABEL_51:
      if (*(result + 44) == 0x8000 || *(result + 4) < 1)
      {
        goto LABEL_38;
      }

      v16 = 0;
      v17 = *(result + 16) + 4 * v2 + 4;
      do
      {
        v18 = *(v17 + 4 * v16);
        if (v18 >= 0)
        {
          v19 = *(v17 + 4 * v16);
        }

        else
        {
          v19 = -v18;
        }

        v20 = (v18 >> 31) | 1;
        v21 = *(result + 44);
        v22 = v21 < 0;
        if (v21 < 0)
        {
          v21 = -v21;
        }

        if (v22)
        {
          v20 = -v20;
        }

        *(v17 + 4 * v16++) = ((v21 & 0x7FFF) * (v19 >> 15) + (((v21 & 0x7FFF) * (v19 & 0x7FFF) + 0x4000) >> 15) + v19 * (v21 >> 15)) * v20;
      }

      while (v16 < *(result + 4));
      if (*(result + 24))
      {
LABEL_38:
        v23 = *(result + 48);
        if (v23 != 0x8000)
        {
          v24 = *(result + 104);
          v25 = *(result + 92);
          v26 = *(result + 28);
          if (v26 < 1 || (v27 = *(result + 52), v26 > v27) || v24 == v25)
          {
            if (v24 != v25)
            {
              v23 = 0x8000;
            }
          }

          else
          {
            if (v27 >= v26)
            {
              v28 = *(result + 28);
            }

            else
            {
              v28 = *(result + 52);
            }

            v23 += v28 * (0x8000 - v23) / (v27 + 1);
          }

          *(result + 32) = v23;
        }
      }
    }
  }

  return result;
}

uint64_t Mrcc_Solve_AmpPhase(uint64_t a1, void **a2, int a3, int a4)
{
  v7 = *(a2 + 10);
  if (a3 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v9 = *(a1 + 108);
  if (v9 >= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  result = 1;
  if (a4 && (v8 & 0xFFFFFFFD) == 1)
  {
    v12 = a2[3];
    v14 = *(a1 + 4);
    v13 = *(a1 + 8);
    if (*(a1 + 104) < v7)
    {
      v7 = *(a1 + 104);
    }

    v15 = 4 * v7;
    if (!a3 || (bzero(a2[4], 4 * v7), a3 != 1))
    {
      bzero(v12, v15);
    }

    result = 1;
    *(a2 + 4) = 1;
    if (v8 != 2)
    {
      v16 = ipow2(**(a1 + 16) / 2);
      if (v16 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = -v16;
      }

      v18 = *(a1 + 32);
      v19 = v18 < 0;
      if (v18 < 0)
      {
        v18 = -v18;
      }

      if (v19)
      {
        v20 = -((v16 >> 31) | 1);
      }

      else
      {
        v20 = (v16 >> 31) | 1;
      }

      *(a2 + 16) = ((v18 & 0x7FFF) * (v17 >> 15) + (((v18 & 0x7FFF) * (v17 & 0x7FFF) + 0x4000) >> 15) + v17 * (v18 >> 15)) * v20;
      if (*(a1 + 104) == *(a1 + 92))
      {
        v21 = *(a1 + 144);
        *v21 = 0;
        memcpy(v21 + 1, (*(a1 + 16) + 4 * v13 + 4), 4 * *(a1 + 4));
        bzero((*(a1 + 144) + 4 * (v14 + 1)), 4 * (*(a1 + 96) - (v14 + 1)));
        v22 = call_cfsv_construct(*a2, *(a1 + 144), *(a1 + 96), 15);
        if (v22)
        {
          v23 = v22;
          call_cfsv_rfft(v22, *(a1 + 96));
          call_cfsv_changeOutputSampleOrder(v23, *(a1 + 152));
          call_cfsv_destruct(*a2, v23);
        }

        v24 = *(a1 + 144);
        *(v24 + 4 * *(a1 + 96)) = *(v24 + 4);
        if (v10 < 1)
        {
          return 0;
        }

        v25 = *(a1 + 64);
        v26 = v10;
        v27 = v12;
        do
        {
          v28 = *v25++;
          *v27++ = 2 * *(v24 + 4 * (2 * (((1 << (14 - *(a1 + 100))) + v28) >> (15 - *(a1 + 100)))));
          --v26;
        }

        while (v26);
        v29 = *(a1 + 168) + *(a1 + 164) - 12;
        if (v29 >= 1)
        {
          v30 = 1 << (*(a1 + 168) + *(a1 + 164) - 13);
          do
          {
            *v12 = (v30 + *v12) >> v29;
            ++v12;
            --v10;
          }

          while (v10);
          return 0;
        }

        v74 = 12 - (*(a1 + 168) + *(a1 + 164));
        result = 0;
        do
        {
          *v12++ <<= v74;
          --v10;
        }

        while (v10);
      }

      else
      {
        v31 = *(a1 + 8);
        LODWORD(v32) = *(a2 + 10);
        v34 = a2[3];
        v33 = a2[4];
        v35 = *(a1 + 108);
        if (v35 >= v32)
        {
          v32 = v32;
        }

        else
        {
          v32 = v35;
        }

        v36 = *(a1 + 164) + *(a1 + 168);
        v37 = v36 - 12;
        if (a3 == 2)
        {
          if (v32 >= 1)
          {
            v52 = 0;
            v53 = *(a1 + 64);
            v54 = 4 * v31 + 4;
            do
            {
              v34[v52] = 0;
              if (*(a1 + 4) >= 1)
              {
                v55 = 0;
                v56 = *(v53 + 4 * v52);
                v57 = *(a1 + 128);
                v58 = *(a1 + 16) + v54;
                v59 = v56;
                do
                {
                  v60 = (((v59 >> 5) & 1) + (v59 >> 6)) & *(v57 + 24);
                  v61 = *(v57 + 16);
                  v62 = v60 - v61;
                  if (v60 >= v61)
                  {
                    v63 = -*(*v57 + 2 * v62);
                    v64 = -*(*(v57 + 8) + 2 * v62);
                  }

                  else
                  {
                    v63 = *(*v57 + 2 * v60);
                    v64 = *(*(v57 + 8) + 2 * v60);
                  }

                  if (v63 == 0x7FFF)
                  {
                    v63 = 0x8000;
                  }

                  if (v64 == 0x7FFF)
                  {
                    v64 = 0x8000;
                  }

                  v33[v52] -= (*(v58 + 4 * v55) * v63) >> 14;
                  v34[v52] += (*(v58 + 4 * v55) * v64) >> 14;
                  v59 += v56;
                  ++v55;
                }

                while (v55 < *(a1 + 4));
              }

              ++v52;
            }

            while (v52 != v32);
          }
        }

        else if (!a3 && v32 >= 1)
        {
          v38 = 0;
          v39 = *(a1 + 64);
          v40 = 4 * v31 + 4;
          do
          {
            v34[v38] = 0;
            if (*(a1 + 4) >= 1)
            {
              v41 = 0;
              v42 = 0;
              v43 = *(v39 + 4 * v38);
              v44 = *(a1 + 128);
              v45 = *(a1 + 16) + v40;
              v46 = v43;
              do
              {
                v47 = (((v46 >> 5) & 1) + (v46 >> 6)) & *(v44 + 24);
                v48 = *(v44 + 16);
                v49 = __OFSUB__(v47, v48);
                v50 = v47 - v48;
                if (v50 < 0 != v49)
                {
                  v51 = *(*(v44 + 8) + 2 * v47);
                }

                else
                {
                  v51 = -*(*(v44 + 8) + 2 * v50);
                }

                v42 += (*(v45 + 4 * v41) * v51) >> 14;
                v34[v38] = v42;
                v46 += v43;
                ++v41;
              }

              while (v41 < *(a1 + 4));
            }

            ++v38;
          }

          while (v38 != v32);
        }

        v65 = v36 - 9;
        if (v37 < 1)
        {
          if (v32 >= 1)
          {
            v67 = v32;
            do
            {
              *v34++ <<= 12 - v36;
              --v67;
            }

            while (v67);
          }
        }

        else if (v32 >= 1)
        {
          v66 = v32;
          do
          {
            *v34 = ((1 << (v36 - 13)) + *v34) >> v37;
            ++v34;
            --v66;
          }

          while (v66);
        }

        if (v65 >= 1)
        {
          if (v32 >= 1)
          {
            v68 = 1 << (v36 - 10);
            do
            {
              v69 = *v33;
              if ((*v33 & 0x80000000) != 0)
              {
                v69 = -v69;
              }

              v70 = 3615 * (v69 >> 15) + ((3615 * (v69 & 0x7FFF) + 0x4000) >> 15);
              if ((*v33 & 0x80000000) != 0)
              {
                v70 = -v70;
              }

              *v33++ = (v68 + v70) >> v65;
              --v32;
            }

            while (v32);
          }

          return 0;
        }

        if (v32 < 1)
        {
          return 0;
        }

        v71 = 9 - v36;
        do
        {
          result = 0;
          v72 = *v33;
          if ((*v33 & 0x80000000) != 0)
          {
            v72 = -v72;
          }

          v73 = 3615 * (v72 >> 15) + ((3615 * (v72 & 0x7FFF) + 0x4000) >> 15);
          if ((*v33 & 0x80000000) != 0)
          {
            v73 = -v73;
          }

          *v33++ = v73 << v71;
          --v32;
        }

        while (v32);
      }
    }
  }

  return result;
}

uint64_t Rr2Pcm_SetHarmonicInfo(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  v6 = a4;
  v8 = a2;
  v10 = *(a3 + 48);
  v11 = *(a3 + 248);
  if (a5 && v11)
  {
    v12 = *(a3 + 16);
    v13 = *(a3 + 40);
    v14 = a1[3] / **(a4 + 64);
  }

  else
  {
    v12 = *(a3 + 8);
    v13 = *(a3 + 32);
    if (v11)
    {
      if (!*v11)
      {
        return 1;
      }

      v14 = a1[3] / *v11;
    }

    else
    {
      v14 = 1;
    }
  }

  v15 = *(a3 + 64);
  v16 = *(v15 + 64);
  v17 = *(v15 + 40);
  if (v10)
  {
    v118 = 0;
    if (a1[25])
    {
      v18 = (a3 + 56);
    }

    else
    {
      v18 = a1 + 34;
    }

    v19 = *(v15 + 16);
    v20 = a1[17];
    if (v19)
    {
      v21 = v20 == 1;
    }

    else
    {
      v21 = 0;
    }

    v23 = v21 || v20 == 0;
    if (a5)
    {
      v24 = *(a3 + 16);
      v26 = *(a3 + 40);
      v25 = *(a3 + 44);
      v27 = (*(a4 + 64) + 36);
      if (!v23)
      {
        return 1;
      }
    }

    else
    {
      v24 = *(a3 + 8);
      v26 = *(a3 + 32);
      v25 = *(a3 + 36);
      if (v11)
      {
        v27 = v11 + 9;
      }

      else
      {
        v27 = a1 + 75;
      }

      if (!v23)
      {
        return 1;
      }
    }

    if (!*(a3 + 50) || !v19 || !*(v15 + 8) || !a1[70])
    {
      return 1;
    }

    v105 = *v18;
    v107 = *(a3 + 72);
    v115 = *v27;
    v108 = *(a3 + 50);
    v110 = v25;
    if (*(a3 + 100))
    {
      LODWORD(v40) = 0;
      if (v26 >= 1 && v17 >= 2)
      {
        v40 = 0;
        v41 = 1;
        v42 = v24;
        do
        {
          if (*v42)
          {
            v43 = *(v15 + 12);
            v44 = *(*(a3 + 152) + 4 * v41 - 4);
            v42[1] = v44;
            if (v43)
            {
              v43 = *(*(v15 + 32) + 4 * v41);
              v45 = 8;
            }

            else
            {
              v42[3] = v44;
              v45 = 4;
            }

            v42[v45] = v43;
            ++v41;
          }

          if (++v40 >= v26)
          {
            break;
          }

          v42 += 9;
        }

        while (v41 < v17);
      }
    }

    else if (v26 < 1)
    {
      LODWORD(v40) = 0;
    }

    else
    {
      v46 = 0;
      v47 = 1;
      v48 = v24;
      while (1)
      {
        v49 = *(a3 + 64);
        if (v47 >= *(v49 + 40))
        {
          break;
        }

        if (*v48)
        {
          v50 = v24;
          v51 = v16;
          v52 = *(v49 + 12);
          v53 = *(*(v49 + 24) + 4 * v47) + (*(a3 + 196) << 12);
          v48[2] = v53;
          v54 = ipow2(v53);
          v48[1] = v54;
          if (v52)
          {
            v55 = *(*(*(a3 + 64) + 32) + 4 * v47);
            v56 = 8;
          }

          else
          {
            v55 = 0;
            v48[3] = v54;
            v56 = 4;
          }

          v16 = v51;
          v24 = v50;
          v48[v56] = v55;
          ++v47;
          v5 = a5;
          v8 = a2;
        }

        ++v46;
        v48 += 9;
        if (v26 == v46)
        {
          goto LABEL_76;
        }
      }

      LODWORD(v40) = v46;
    }

    if (v40 < v26)
    {
      v57 = &v24[9 * v40 + 1];
      do
      {
        if (*(v57 - 1))
        {
          *v57 = 0;
          v57[1] = 0;
        }

        LODWORD(v40) = v40 + 1;
        v57 = (v57 + 36);
      }

      while (v26 > v40);
    }

LABEL_76:
    if (v26 != v110)
    {
      if (a1[17] != 1 || a1[23])
      {
        return 1;
      }

      v85 = (13440 * v108) >> 15;
      if (v17 > 1)
      {
        v86 = 0;
        v87 = 0;
        v88 = vdupq_n_s64(v17 - 2);
        v89 = 4 * v85;
        v90 = (v107 + 8);
        do
        {
          v91 = vdupq_n_s64(v87);
          v92 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v91, xmmword_1C378AF00)));
          if (vuzp1_s16(v92, *v88.i8).u8[0])
          {
            *(v90 - 2) = v85 + v86;
          }

          if (vuzp1_s16(v92, *&v88).i8[2])
          {
            *(v90 - 1) = 2 * v85 + v86;
          }

          if (vuzp1_s16(*&v88, vmovn_s64(vcgeq_u64(v88, vorrq_s8(v91, xmmword_1C378AEF0)))).i32[1])
          {
            *v90 = 3 * v85 + v86;
            v90[1] = v89 + v86;
          }

          v87 += 4;
          v86 += v89;
          v90 += 4;
        }

        while (((v17 + 2) & 0xFFFFFFFC) != v87);
      }

      v109 = (13440 * v108) >> 15;
      if (v26 >= 1)
      {
        v93 = 32 * v105;
        v106 = v17 - 1;
        v94 = v26;
        do
        {
          v95 = v24[7] * v115 / 16;
          if (v95 >= v93)
          {
            v96 = v16;
            VoicedAmpAttenuation = GetVoicedAmpAttenuation(a1, v93, v24[7] * v115 / 16);
            v98 = VoicedAmpAttenuation;
            if (*v24)
            {
              v24[1] = (v24[1] * VoicedAmpAttenuation) >> 10;
              v16 = v96;
            }

            else
            {
              InterpolatedValue = GetInterpolatedValue(v107, (*(*(a3 + 64) + 24) + 4), v106, v95, &v118, 0);
              v111 = ipow2(InterpolatedValue + (*(a3 + 196) << 12));
              v24[2] = v111;
              AuxUvHarmResolution = GetAuxUvHarmResolution(a1, v93, v95);
              if (AuxUvHarmResolution >= v109)
              {
                v102 = 1024;
              }

              else
              {
                if (a1[21])
                {
                  v101 = 0;
                }

                else
                {
                  v101 = AuxUvHarmResolution;
                }

                v102 = (AuxUvHarmResolution << 10) / (v109 - v101);
              }

              NoiseAttenuation = GetNoiseAttenuation(a1, v93, v95);
              if (NoiseAttenuation * NoiseAttenuation <= (v98 * v98))
              {
                v104 = 0;
              }

              else
              {
                v104 = (sqroot5((a3 + 220), ((NoiseAttenuation * NoiseAttenuation - v98 * v98) / 4 * v102 / 256) >> 8) * v111) >> 10;
              }

              v16 = v96;
              v5 = a5;
              v24[1] = v104;
            }
          }

          v24 += 9;
          --v94;
        }

        while (v94);
      }
    }

    scaleHarmEnergy(a3, a4, v16, 1, v5);
    v59 = *(a3 + 8);
    v60 = *(a3 + 32);
    if (*(a3 + 48))
    {
      if (v60)
      {
        v61 = 36 * v60;
        do
        {
          if (*v59)
          {
            v62 = *(v8 + 32) & *(v59 + 32);
            v63 = *(v8 + 24);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            if (v65 < 0 != v64)
            {
              v58.i16[0] = *(*(v8 + 16) + 2 * v62);
              v58.i16[2] = *(*(v8 + 8) + 2 * v62);
              v66 = vshr_n_s32(vshl_n_s32(v58, 0x10uLL), 0x10uLL);
            }

            else
            {
              v58.i16[0] = *(*(v8 + 16) + 2 * v65);
              v58.i16[2] = *(*(v8 + 8) + 2 * v65);
              v66 = vneg_s32(vshr_n_s32(vshl_n_s32(v58, 0x10uLL), 0x10uLL));
            }

            v67 = *(v59 + 4);
            if (v67 >= 0)
            {
              v68 = *(v59 + 4);
            }

            else
            {
              v68 = -v67;
            }

            if (v67 >= 0)
            {
              v69 = -1;
            }

            else
            {
              v69 = 1;
            }

            v70 = vabs_s32(v66);
            v71 = vand_s8(v70, 0x7F0000007FLL);
            v58 = vmul_s32(vsra_n_u32(vmla_s32(vmul_s32(vdup_n_s32(v68), vshr_n_u32(v70, 0xFuLL)), vdup_n_s32(v68 >> 15), v71), vmla_s32(0x400000004000, vdup_n_s32(v68 & 0x7FFF), v71), 0xFuLL), vbsl_s8(vcltz_s32(v66), vdup_n_s32(v69), vdup_n_s32((v67 >> 31) | 1u)));
            *(v59 + 12) = v58;
          }

          v59 += 36;
          v61 -= 36;
        }

        while (v61);
      }
    }

    else if (v60)
    {
      v73 = *(v8 + 32);
      v74 = *(v8 + 24);
      v75 = 36 * v60;
      v76 = (v59 + 32);
      do
      {
        v77 = *v76 & v73;
        v78 = v77 - v74;
        if (v77 >= v74)
        {
          v58.i16[0] = *(*(v8 + 16) + 2 * v78);
          v58.i16[2] = *(*(v8 + 8) + 2 * v78);
          v79 = vneg_s32(vshr_n_s32(vshl_n_s32(v58, 0x10uLL), 0x10uLL));
        }

        else
        {
          v58.i16[0] = *(*(v8 + 16) + 2 * v77);
          v58.i16[2] = *(*(v8 + 8) + 2 * v77);
          v79 = vshr_n_s32(vshl_n_s32(v58, 0x10uLL), 0x10uLL);
        }

        v80 = *(v76 - 7);
        if (v80 >= 0)
        {
          v81 = *(v76 - 7);
        }

        else
        {
          v81 = -v80;
        }

        if (v80 >= 0)
        {
          v82 = -1;
        }

        else
        {
          v82 = 1;
        }

        v83 = vabs_s32(v79);
        v84 = vand_s8(v83, 0x7F0000007FLL);
        v58 = vmul_s32(vsra_n_u32(vmla_s32(vmul_s32(vdup_n_s32(v81), vshr_n_u32(v83, 0xFuLL)), vdup_n_s32(v81 >> 15), v84), vmla_s32(0x400000004000, vdup_n_s32(v81 & 0x7FFF), v84), 0xFuLL), vbsl_s8(vcltz_s32(v79), vdup_n_s32(v82), vdup_n_s32((v80 >> 31) | 1u)));
        *(v76 - 5) = v58;
        v76 += 9;
        v75 -= 36;
      }

      while (v75);
    }

    v37 = a1;
    v38 = a3;
    v39 = a4;
  }

  else
  {
    if ((v17 - 1) / v14 >= v13)
    {
      v28 = v13;
    }

    else
    {
      v28 = (v17 - 1) / v14;
    }

    if (!*(v15 + 8) || *(v15 + 12) || !*(v15 + 16))
    {
      return 1;
    }

    v29 = 0;
    if (a1[70] && v28 >= 1)
    {
      v117 = *(v15 + 64);
      v30 = 4 * v14;
      v31 = (*(v15 + 24) + v30);
      v32 = (*(a3 + 8) + 8);
      v33 = v28;
      do
      {
        v34 = *v31 + (*(a3 + 196) << 12);
        *v32 = v34;
        v35 = ipow2(v34);
        *(v32 - 1) = v35;
        v32[1] = v35;
        v32[2] = 0;
        v31 = (v31 + v30);
        v32 += 9;
        --v33;
      }

      while (v33);
      v29 = v28;
      v6 = a4;
      LODWORD(v16) = v117;
    }

    if (v29 < v13)
    {
      v36 = (v12 + 36 * v29 + 4);
      do
      {
        *v36 = 0;
        v36[1] = 0;
        v36 = (v36 + 36);
        ++v29;
      }

      while (v13 > v29);
    }

    scaleHarmEnergy(a3, v6, v16, 0, v5);
    v37 = a1;
    v38 = a3;
    v39 = v6;
  }

  FilterHarmonics(v37, v38, v39, v5);
  return 0;
}