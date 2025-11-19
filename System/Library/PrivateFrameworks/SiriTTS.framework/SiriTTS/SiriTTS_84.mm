void *select_bet3_loc_VoiceClose(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 11648);
    if (v4 && *v4)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        *(a2 + 5432 + 8 * v5) = 0;
        v4 = *(a2 + 11648);
        v5 = v6;
      }

      while (v4[v6++]);
    }

    uselect_FreeRiffStringTable(result, v4);
    uselect_FreeRiffStringTable(v3, *(a2 + 11656));
    v8 = *(a2 + 12520);
    v9 = *(a2 + 12528);
    v10 = *(a2 + 12536);
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

    BET3FLT__DeInitVData(v3, (a2 + 8112));
    BET3FLT__DeInitVParam(v3, (a2 + 128));
    if (*(a2 + 37792))
    {
      v27 = 0;
      do
      {
        ssftriff_reader_ReleaseChunkData(*(a2 + 37584 + 8 * v27++), v20, v21, v22, v23, v24, v25, v26);
      }

      while (v27 < *(a2 + 37792));
    }

    *(a2 + 37792) = 0;
    *a2 = 0;
    v28 = *(v3 + 8);

    return heap_Free(v28, a2);
  }

  return result;
}

uint64_t select_bet3_LoadRiffGenericFeatureMap(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v11 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v12 = *a3;
  v13 = heap_Calloc(*(a1 + 8), v12 + 1, 8);
  *a5 = v13;
  if (v13)
  {
    v14 = heap_Calloc(*(v11 + 8), v12 + 1, 8);
    *a6 = v14;
    if (v14)
    {
      v15 = heap_Calloc(*(v11 + 8), v12 + 1, 8);
      *a7 = v15;
      if (v15)
      {
        if (!v12)
        {
          v18 = 0;
          goto LABEL_19;
        }

        v32 = v12;
        v33 = a3;
        v16 = 0;
        v17 = 2;
        v30 = a5;
        v31 = a7;
        while (1)
        {
          __dst[0] = 0;
          v36 = 256;
          v18 = ssftriff_reader_ReadStringZ(a2, v33, a4, v17, __dst, &v36);
          v19 = v36;
          *(*a5 + 8 * v16) = BET3FLT__heap_StrDup(*(v11 + 8), __dst);
          if (!*(*a5 + 8 * v16))
          {
            break;
          }

          v20 = v16;
          v21 = v19 + v17;
          v22 = *(v33 + v21);
          *(*a6 + 8 * v20) = heap_Calloc(*(v11 + 8), v22 + 1, 8);
          if (!*(*a6 + 8 * v20))
          {
            break;
          }

          *(*a7 + 8 * v20) = heap_Calloc(*(v11 + 8), v22 + 1, 1);
          if (!*(*a7 + 8 * v20))
          {
            break;
          }

          v17 = v21 + 2;
          if (v22)
          {
            v23 = v11;
            v24 = 0;
            while (1)
            {
              v25 = v17;
              __dst[0] = 0;
              v36 = 256;
              v18 = ssftriff_reader_ReadStringZ(a2, v33, a4, v17, __dst, &v36);
              v26 = v36;
              *(*(*a6 + 8 * v20) + v24) = BET3FLT__heap_StrDup(*(v23 + 8), __dst);
              if (!*(*(*a6 + 8 * v20) + v24))
              {
                goto LABEL_18;
              }

              v17 += v26;
              v24 += 8;
              if (8 * v22 == v24)
              {
                a5 = v30;
                a7 = v31;
                for (i = 0; i != v22; ++i)
                {
                  *(*(*v31 + 8 * v20) + i) = *(v33 + v25 + v26 + i);
                }

                v17 = v25 + v26 + i;
                v11 = v23;
                break;
              }
            }
          }

          v16 = v20 + 1;
          if (v20 + 1 >= v32)
          {
            goto LABEL_19;
          }
        }
      }
    }
  }

LABEL_18:
  v18 = 2229280778;
LABEL_19:
  v28 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t select_bet3_loc_SetSynthParamFloat(uint64_t a1, uint64_t a2, float a3)
{
  v13 = *MEMORY[0x1E69E9840];
  __sprintf_chk(v12, 0, 0x20uLL, "%f", a3);
  v9 = paramc_ParamSetStr(*(a1 + 40), a2, v12);
  if ((v9 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%f%s%x", v5, v6, v7, v8, "parameter");
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t select_bet3_loc_SetSynthParamInt(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = paramc_ParamSetInt(*(a1 + 40), a2, a3);
  if ((v8 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%d%s%x", v4, v5, v6, v7, "parameter");
  }

  return v8;
}

uint64_t select_bet3_loc_SetSynthParamArrayOfBet3_int32(uint64_t a1, void *a2, int a3)
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

uint64_t BET3FLT__ParamGenStart(uint64_t a1, int *a2, _DWORD *a3)
{
  v4 = a2;
  v84 = *a1;
  result = BET3FLT__InitUttModel(*a1, (a1 + 56), a2, *(*(a1 + 8) + 10));
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 16) = a3[8];
    v12 = a3[7];
    if (v12 >= 1)
    {
      v13 = *(a1 + 620);
      if (v12 < v13)
      {
        v68 = *(a1 + 620);
        v71 = (a3[2] * v13 * a3[6] / a3[2]);
        BET3FLT__log_select_Error(v84, 55018, "Specified length of generated speech is too short (this sentence is composed from %d states), specify more than %d milliseconds\n", v7, v8, v9, v10, v11);
        return 2229280775;
      }
    }

    if (*(a1 + 608) >= 1)
    {
      v14 = 0;
      v77 = 0;
      v78 = 0;
      v72 = a3 + 326;
      v73 = *(*(a1 + 8) + 1784);
      v15 = a3 + 1326;
      v82 = v4 + 162;
      v83 = a3 + 86;
      v80 = a3 + 36;
      v81 = v4 + 142;
      v75 = v4 + 1;
      v76 = a3;
      v16 = *(a1 + 32);
      v17 = -0.5;
      v18 = 0.0;
      v19 = 0.0;
      v85 = v4;
      while (1)
      {
        v74 = v14;
        v20 = (*(a1 + 600) + 528 * v14);
        if (v16 >= 1)
        {
          v21 = 0;
          v22 = v72;
          do
          {
            v23 = v83[v21];
            if (v23 < 1)
            {
LABEL_16:
              LODWORD(v24) = 0;
            }

            else
            {
              v24 = 0;
              v25 = *(*(*(a1 + 8) + 248) + v20->i32[0]);
              while (1)
              {
                v26 = *&v22[2 * v24];
                if (v26)
                {
                  v27 = *&v15[2 * v25];
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
                  goto LABEL_16;
                }
              }
            }

            v20[4].i32[v21++] = v24;
            v22 += 10;
          }

          while (v21 < *(a1 + 32));
        }

        v69 = v20->u32[0];
        BET3FLT__log_select_Diag(v84, 21, "[phoneme %d]\n");
        v4 = v85;
        if (!v73)
        {
          break;
        }

        if (a3[29])
        {
          v20[1].i32[0] = BET3FLT__TreeSearch(*(a1 + 8), v14, (v85 + 116), 0, 0);
          BET3FLT__log_select_Diag(v84, 6, "DUR pdf id %d\n");
          result = BET3FLT__FindDurPDF(v20, v85, 0, v20[4].i32[0], 0, *(a1 + 16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LOWORD(v33) = *(*(*(a1 + 8) + 1784) + 2 * v20->i32[0]);
          v34 = BET3FLT__div_int32_int32_to_Q8_24(v33, a3[6]);
          if (v34 != 0.0)
          {
            v35 = v34;
            v36 = 0.0;
            if (*v85 >= 1)
            {
              v37 = 2;
              do
              {
                v38 = *(*&v20[2] + 4 * v37);
                v36 = v36 + kaldi::CuMatrixBase<float>::~CuMatrixBase(result).n128_f32[0];
                v39 = v37++ <= *v85;
              }

              while (v39);
            }

            v40 = v17 + v35;
            v42 = BET3FLT__div_int32_int32_to_Q8_24(v40, v36);
            v20[3].i32[0] = 0;
            if (*v85 >= 1)
            {
              v43 = v42;
              v44 = v20[2];
              v45 = 2;
              do
              {
                BET3FLT__mul_int32_Q8_24_to_int32(*(*&v44 + 4 * v45), v43);
                v47 = kaldi::CuMatrixBase<float>::~CuMatrixBase(v46).n128_f32[0];
                if (v47 <= 1)
                {
                  v48 = 1;
                }

                else
                {
                  v48 = v47;
                }

                v44 = v20[2];
                *(*&v44 + 4 * v45) = v48;
                v20[3].i32[0] += v48;
                v39 = v45++ <= *v85;
              }

              while (v39);
            }

            v17 = v40 - kaldi::CuMatrixBase<float>::~CuMatrixBase(v41).n128_f32[0];
          }

LABEL_41:
          *(a1 + 624) += v20[3].i32[0];
          goto LABEL_42;
        }

        if (!a3[28])
        {
          break;
        }

        result = BET3FLT__log_select_Error(v84, 55017, "State level segmentation is not currently supported\n", v28, v29, v30, v31, v32);
LABEL_42:
        v16 = *(a1 + 32);
        if (v16 >= 1)
        {
          v52 = 0;
          v53 = v20 + 19;
          v54 = v20 + 29;
          v79 = v20 + 4;
          do
          {
            v55 = *(a1 + 24) + 1528 * v52;
            if (!*(v55 + 1480))
            {
              if (*(v55 + 1488))
              {
                v56 = *v4 * v14;
                v57 = *(*(a1 + 304 + 8 * v52) + 8 * v56);
                v77 = v57;
                v78 = *(*(a1 + 224 + 8 * v52) + 8 * v56);
              }

              if (*(v82 + v52))
              {
                v58 = 0;
                v59 = 0;
                do
                {
                  v60 = *(*&v81[2 * v52] + v58);
                  *(*&v20[v52 + 9] + 4 * v60) = BET3FLT__TreeSearch(*(a1 + 8), v20->i32[0], (v85 + 116), v52, v59);
                  v70 = *&v80[2 * v52];
                  result = BET3FLT__log_select_Diag(v84, 6, "%s pdf state %d id %d\n");
                  v61 = *(a1 + 24) + 1528 * v52;
                  if (*(v61 + 1488))
                  {
                    v62 = v60 - 2 + (v60 - 2) * v75[v52];
                    *(*&v53[v52] + 8 * v60) = v78 + 4 * v62;
                    *(*&v53[v52] + 8 * v60) -= 4;
                    *(*&v54[v52] + 8 * v60) = v77 + 4 * v62;
                    *(*&v54[v52] + 8 * v60) -= 4;
                    result = BET3FLT__FindMsdPDF(v52, v60, v20, v85, v76, v79->i32[v52]);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }
                  }

                  else if (*(v61 + 1484))
                  {
                    result = BET3FLT__FindContPDF(v52, v60, v20, v85, v79->i32[v52]);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }
                  }

                  ++v59;
                  v58 += 16;
                }

                while (v59 < *(v82 + v52));
                v16 = *(a1 + 32);
                v4 = v85;
                v14 = v74;
              }
            }

            ++v52;
          }

          while (v52 < v16);
        }

        ++v14;
        a3 = v76;
        if (v14 >= *(a1 + 608))
        {
          v12 = *(v76 + 28);
          goto LABEL_61;
        }
      }

      v20[1].i32[0] = BET3FLT__TreeSearch(*(a1 + 8), v14, (v85 + 116), 0, 0);
      result = BET3FLT__log_select_Diag(v84, 6, "DUR pdf id %d\n");
      if (a3[7])
      {
        v49 = *v85;
        if (v49 >= 1)
        {
          v50 = (*(*(*(v85 + 21) + 8 * v20[4].i32[0]) + 8 * v20[1].i32[0]) + 8);
          v51 = (v49 + 2) - 2;
          do
          {
            v19 = v19 + *v50;
            v18 = v18 + v50[v49];
            ++v50;
            --v51;
          }

          while (v51);
        }

        goto LABEL_42;
      }

      result = BET3FLT__FindDurPDF(v20, v85, 0, v20[4].i32[0], 0, *(a1 + 16));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      SetSilenceDuration(a1, v85, a3, v20);
      goto LABEL_41;
    }

    v19 = 0.0;
    v18 = 0.0;
LABEL_61:
    if (v12 < 1 || (v63 = kaldi::CuMatrixBase<float>::~CuMatrixBase(result).n128_f32[0], BET3FLT__div_int32_int32_to_Q8_24(v63 - v19, v18), *(a1 + 16) = kaldi::CuMatrixBase<float>::~CuMatrixBase(v64).n128_u32[0], *(a1 + 608) < 1))
    {
LABEL_66:
      if (BET3FLT__log_select_GetLogLevel(*(v84 + 32)) >= 0x15)
      {
        OutLabel(a1);
      }

      BET3FLT__log_select_Diag(v84, 2, ">> tree search done\n");
      AddBreakMarks(a1, v4, a3);

      return ParamGenLT(a1, v4);
    }

    else
    {
      v65 = 0;
      v66 = 0;
      while (1)
      {
        v67 = (*(a1 + 600) + v65);
        result = BET3FLT__FindDurPDF(v67, v4, 0, v67[4].i32[0], 0, *(a1 + 16));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        SetSilenceDuration(a1, v4, a3, v67);
        *(a1 + 624) += v67[3].i32[0];
        ++v66;
        v65 += 528;
        if (v66 >= *(a1 + 608))
        {
          goto LABEL_66;
        }
      }
    }
  }

  return result;
}

void SetSilenceDuration(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  v4 = *(a1 + 8);
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

      v21 = BET3FLT__div_int32_int32_to_Q8_24((v8 - v12), v11);
      a4[6] = v12;
      LODWORD(v22) = *a2;
      if (*a2 >= 3)
      {
        v23 = v21;
        v24 = 3;
        do
        {
          if (v24 >= v22)
          {
            v25 = v8 - v12;
          }

          else
          {
            v25 = BET3FLT__mul_int32_Q8_24_to_int32(*(*(a4 + 2) + 4 * v24), v23);
          }

          if (v25 <= 1)
          {
            v25 = 1;
          }

          *(*(a4 + 2) + 4 * v24) = v25;
          v12 = a4[6] + v25;
          a4[6] = v12;
          v22 = *a2;
          v20 = v24++ < v22;
        }

        while (v20);
      }
    }
  }
}

uint64_t OutLabel(uint64_t result)
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
      result = BET3FLT__log_select_Diag(*v1, 21, "%d %d %d [%d]\n");
      v4 += v5[6];
      ++v3;
      v2 += 528;
    }

    while (v3 < *(v1 + 608));
  }

  return result;
}

uint64_t AddBreakMarks(uint64_t a1, int *a2, uint64_t a3)
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

              return BET3FLT__log_select_Error(v13, 55036, "valid breaker is required\n", v8, v9, v10, v11, v12);
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

uint64_t ParamGenLT(uint64_t a1, int *a2)
{
  v3 = *a1;
  v4 = 2229280778;
  memset(v59, 0, sizeof(v59));
  memset(v58, 0, sizeof(v58));
  bzero(v60, 0x2D8uLL);
  BET3FLT__InitSMatrices(v3, v59);
  BET3FLT__InitSMatrices(v3, v58);
  v5 = heap_Calloc(*(v3 + 8), (*(a1 + 624) + 1), 1);
  *(a1 + 48) = v5;
  if (!v5)
  {
    return v4;
  }

  v6 = heap_Calloc(*(v3 + 8), (*(a1 + 624) + 1), 4);
  *(a1 + 40) = v6;
  if (!v6)
  {
    return v4;
  }

  v7 = *(a1 + 608);
  if (v7 >= 1)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    LODWORD(v10) = *a2;
    do
    {
      if (v10 >= 1)
      {
        v11 = (*(a1 + 600) + 528 * v8);
        v12 = v11[2];
        v13 = 2;
        do
        {
          if (*(v12 + 4 * v13) >= 1)
          {
            v14 = 0;
            v9 = v9;
            do
            {
              *(*(a1 + 48) + v9) = *(v11[39] + v13);
              *(*(a1 + 40) + 4 * v9++) = *(v11[40] + 4 * v13);
              v12 = v11[2];
              ++v14;
            }

            while (v14 < *(v12 + 4 * v13));
          }

          v15 = *(a1 + 32);
          if (v15 >= 1)
          {
            v16 = *(a1 + 24);
            do
            {
              if (v16[372] && ((*(v11[39] + v13) >> v16[3]) & 1) != 0)
              {
                v16[11] += *(v12 + 4 * v13);
              }

              v16 += 382;
              --v15;
            }

            while (v15);
          }

          v10 = *a2;
          v17 = v13++ <= v10;
        }

        while (v17);
        v7 = *(a1 + 608);
      }

      ++v8;
    }

    while (v8 < v7);
  }

  if (*(a1 + 32) < 1)
  {
    v4 = 0;
    goto LABEL_62;
  }

  v18 = 0;
  v19 = 0;
  v4 = 0;
  while (1)
  {
    v20 = *(a1 + 24) + 1528 * v18;
    if (*(v20 + 1488))
    {
      break;
    }

LABEL_58:
    if (++v18 >= *(a1 + 32))
    {
      goto LABEL_62;
    }
  }

  if (!*(v20 + 44))
  {
LABEL_57:
    BET3FLT__DeInitMSDUttModel((a1 + 56), v18);
    goto LABEL_58;
  }

  inited = BET3FLT__InitPStreamParam((v20 + 24), 0);
  if ((inited & 0x80000000) == 0)
  {
    v22 = BET3FLT__InitPStreamSM((v20 + 24), v59);
    v4 = v22;
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_62;
    }

    v23 = *(a1 + 608);
    if (v23 >= 1)
    {
      v52 = v22;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = *a2;
      v57 = v18;
      do
      {
        if (v27 >= 1)
        {
          v53 = v24;
          v28 = *(a1 + 600) + 528 * v24;
          v29 = v28 + 152;
          v30 = v28 + 232;
          v55 = v28;
          v31 = *(v28 + 16);
          v32 = 2;
          do
          {
            if (*(v31 + 4 * v32) >= 1)
            {
              v33 = v26;
              v34 = *(a1 + 24);
              v35 = 1;
              do
              {
                if (*(v34 + 1528 * v18 + 36) >= 1)
                {
                  v56 = v35;
                  v36 = 0;
                  do
                  {
                    v37 = 1 << *(v34 + 1528 * v18 + 12);
                    v19 |= v37;
                    v38 = *(*(*(v20 + 56) + 8) + 8 * v36);
                    v40 = *v38;
                    v39 = v38[1];
                    if (v40 <= v39)
                    {
                      v41 = v39 - v40 + 1;
                      v42 = v26 + v40;
                      do
                      {
                        v43 = v37 ^ 0xFFLL;
                        if ((v42 & 0x80000000) == 0)
                        {
                          v43 = v37 ^ 0xFFLL;
                          if (*(a1 + 624) >= v42)
                          {
                            v43 = *(*(a1 + 48) + v42);
                          }
                        }

                        v19 &= v43;
                        ++v42;
                        --v41;
                      }

                      while (v41);
                    }

                    if ((v37 & *(*(a1 + 48) + v33)) != 0)
                    {
                      if (!v36 || (v37 & v19) != 0)
                      {
                        v45 = 4 * v36 + 4;
                        *(*(*(v20 + 96) + 8 * v25) + 4 * v36) = *(*(*(v29 + 8 * v18) + 8 * v32) + v45);
                        v46 = *(*(*(v30 + 8 * v18) + 8 * v32) + v45);
                        if (*(v34 + 1528 * v18 + 1492))
                        {
                          *(*(*(v20 + 104) + 8 * v25) + 4 * v36) = v46;
                        }

                        else
                        {
                          v47 = v20;
                          v48 = v29;
                          v49 = v26;
                          v50 = BET3FLT__bet3_finv(v46);
                          v26 = v49;
                          v29 = v48;
                          v20 = v47;
                          v18 = v57;
                          *(*(*(v20 + 104) + 8 * v25) + 4 * v36) = v50;
                          v34 = *(a1 + 24);
                        }
                      }

                      else
                      {
                        v44 = *(v20 + 104);
                        *(*(*(v20 + 96) + 8 * v25) + 4 * v36) = 0;
                        *(*(v44 + 8 * v25) + 4 * v36) = 0;
                      }
                    }

                    ++v36;
                  }

                  while (v36 < *(v34 + 1528 * v18 + 36));
                  v31 = *(v55 + 16);
                  v35 = v56;
                }

                v25 += (*(*(a1 + 48) + v33++) >> *(v34 + 1528 * v18 + 12)) & 1;
                v26 = (v26 + 1);
                v17 = v35++ < *(v31 + 4 * v32);
              }

              while (v17);
              v27 = *a2;
              v26 = v33;
            }

            v17 = v32++ <= v27;
          }

          while (v17);
          v23 = *(a1 + 608);
          v24 = v53;
        }

        ++v24;
      }

      while (v24 < v23);
      if (v25 >= 1)
      {
        (**(*(a1 + 24) + 1528 * v18 + 1504))(v20 + 24, 0);
      }

      v4 = v52;
    }

    BET3FLT__FreePStreamSM(v20 + 24);
    goto LABEL_57;
  }

  v4 = inited;
LABEL_62:
  BET3FLT__FreePStreamParam(v60);
  BET3FLT__FreeSMatrices(v59);
  BET3FLT__FreeSMatrices(v58);
  return v4;
}

uint64_t BET3FLT__ParamGenFrames(uint64_t *a1, int *a2, _DWORD *a3)
{
  v4 = a1;
  v5 = *a1;
  memset(v102, 0, sizeof(v102));
  memset(v101, 0, sizeof(v101));
  *a3 = 0;
  bzero(v103, 0x2D8uLL);
  BET3FLT__InitSMatrices(v5, v102);
  BET3FLT__InitSMatrices(v5, v101);
  v6 = *(v4 + 153);
  v7 = v4[75] + 528 * v6;
  *(v7 + 4) &= ~2u;
  v8 = *(v4 + 152);
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

  BET3FLT__log_select_Diag(v5, 2, "| processing %d models %d frames <=> ");
  if (*(v4 + 8) >= 1)
  {
    v93 = a2;
    v94 = v11;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    inited = 0;
    v91 = -v11;
    v99 = v4;
    while (1)
    {
      v21 = v4[3];
      v22 = v21 + 1528 * v16;
      if (*(v22 + 1484))
      {
        if (*(v22 + 64))
        {
          v23 = v19;
          BET3FLT__FreePStreamParam((v22 + 24));
          v19 = v23;
          v4 = v99;
          v21 = v99[3];
        }

        v24 = v21 + 1528 * v16;
        v25 = *(v24 + 1496);
        v96 = *(v24 + 1500);
        v26 = *(v4 + 153);
        v27 = *(v4 + 152);
        if ((v17 + v11 + v26) < v27 && v18 < v25)
        {
          v29 = *v93;
          v30 = v7;
          do
          {
            if (v29 >= 1)
            {
              v31 = (*(v30 + 16) + 8);
              v32 = (v29 + 2) - 2;
              do
              {
                v33 = *v31++;
                v18 += v33;
                --v32;
              }

              while (v32);
            }

            v30 += 528;
            v17 = (v17 + 1);
          }

          while ((v17 + v11 + v26) < v27 && v18 < v25);
        }

        if (v26 > v19 && v20 < v25)
        {
          v35 = v7 + 528 * v91;
          v36 = *v93;
          do
          {
            if (v36 >= 1)
            {
              v37 = (*(v35 - 512) + 8);
              v38 = (v36 + 2) - 2;
              do
              {
                v39 = *v37++;
                v20 += v39;
                --v38;
              }

              while (v38);
            }

            v19 = (v19 + 1);
            if (v26 <= v19)
            {
              break;
            }

            v35 -= 528;
          }

          while (v20 < v25);
        }

        v92 = v17;
        v98 = v19;
        BET3FLT__log_select_Diag(v5, 3, "L: %d %d  R: %d %d\n");
        *(v22 + 772) = v96 + v12 + v18 + v20 + v96;
        *(v22 + 44) = v12;
        inited = BET3FLT__InitPStreamParam((v22 + 24), 0);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        v40 = *(v22 + 40);
        if (v40 >= 1)
        {
          v41 = 0;
          v19 = v98;
          v100 = v17 + v11 + v98;
          v42 = 0;
          while (1)
          {
            if (*(*(v99[3] + 1528 * v16 + 1520) + 4 * v42) == 1)
            {
              v97 = v42;
              v43 = BET3FLT__InitPStreamParam((v22 + 752), v103);
              if ((v43 & 0x80000000) != 0)
              {
                v45 = v43;
                goto LABEL_97;
              }

              v44 = BET3FLT__InitPStreamSM((v22 + 752), v101);
              v45 = v44;
              if ((v44 & 0x80000000) != 0)
              {
                goto LABEL_97;
              }

              inited = v44;
              if (v96 < 1)
              {
                LODWORD(v46) = 0;
                v48 = v98;
              }

              else
              {
                v46 = 0;
                v47 = *(v22 + 772) & ~(*(v22 + 772) >> 31);
                v48 = v98;
                do
                {
                  if (v46 == v47)
                  {
                    break;
                  }

                  v49 = **(v22 + 784);
                  if (v49 >= 1)
                  {
                    v50 = *(*(v22 + 824) + 8 * v46);
                    v51 = *(*(v22 + 832) + 8 * v46);
                    do
                    {
                      *v50++ = 0;
                      *v51++ = 1065353216;
                      --v49;
                    }

                    while (v49);
                  }

                  ++v46;
                }

                while (v46 != v96);
              }

              LODWORD(v12) = v46;
              if (v100 >= 1)
              {
                v52 = 0;
                v53 = v99[75];
                v54 = *(v99 + 153);
                v55 = *v93;
                v56 = (*v93 + 2);
                LODWORD(v12) = v46;
                do
                {
                  v7 = v53 + 528 * (v52 - v48 + v54);
                  if (v55 >= 1)
                  {
                    v57 = *(v7 + 16);
                    v58 = 2;
                    do
                    {
                      v59 = *(v57 + 4 * v58);
                      if (v59 >= 1)
                      {
                        v60 = **(v22 + 784);
                        v12 = v12;
                        v61 = 1;
                        do
                        {
                          if (v60 >= 1)
                          {
                            v62 = *(*(v7 + 152 + 8 * v16) + 8 * v58);
                            v63 = *(*(v22 + 824) + 8 * v12);
                            v64 = *(*(v7 + 232 + 8 * v16) + 8 * v58);
                            v65 = *(*(v22 + 832) + 8 * v12);
                            v66 = 4 * *(v22 + 40);
                            v67 = v60;
                            v68 = v41;
                            do
                            {
                              *v63++ = *(v62 + v68);
                              *v65++ = *(v64 + v68);
                              v68 += v66;
                              --v67;
                            }

                            while (v67);
                          }

                          ++v12;
                        }

                        while (v61++ != v59);
                      }

                      ++v58;
                    }

                    while (v58 != v56);
                  }

                  ++v52;
                }

                while (v52 != v100);
              }

              if (*(v99[3] + 1528 * v16 + 1492))
              {
                v70 = 0;
              }

              else
              {
                v70 = v46 < v12;
              }

              if (v70)
              {
                v71 = v46;
                LODWORD(v46) = **(v22 + 784);
                do
                {
                  if (v46 >= 1)
                  {
                    v72 = v7;
                    v73 = 0;
                    v74 = *(*(v22 + 832) + 8 * v71);
                    do
                    {
                      v75 = BET3FLT__bet3_finv(*(v74 + 4 * v73));
                      v74 = *(*(v22 + 832) + 8 * v71);
                      *(v74 + 4 * v73++) = v75;
                      v46 = **(v22 + 784);
                    }

                    while (v73 < v46);
                    v7 = v72;
                  }

                  ++v71;
                }

                while (v71 != v12);
              }

              v76 = *(v22 + 772);
              if (v12 >= v76)
              {
                v11 = v94;
                v42 = v97;
              }

              else
              {
                v77 = **(v22 + 784);
                v78 = v12;
                v11 = v94;
                v42 = v97;
                do
                {
                  if (v77 >= 1)
                  {
                    v79 = *(*(v22 + 824) + 8 * v78);
                    v80 = *(*(v22 + 832) + 8 * v78);
                    v81 = v77;
                    do
                    {
                      *v79++ = 0;
                      *v80++ = 1065353216;
                      --v81;
                    }

                    while (v81);
                  }

                  ++v78;
                }

                while (v78 != v76);
                LODWORD(v12) = v76;
              }

              (*(*(v99[3] + 1528 * v16 + 1504) + 8 * v42))(v22 + 752, 0);
              v82 = *(v22 + 44);
              if (v82 >= 1)
              {
                v83 = *(v22 + 64);
                v84 = (*(v22 + 792) + 8 * (v20 + v96));
                do
                {
                  v85 = *v84++;
                  v86 = *v85;
                  v87 = *v83++;
                  *(v87 + 4 * v42) = v86;
                  --v82;
                }

                while (v82);
              }

              BET3FLT__FreePStreamSM(v22 + 752);
              BET3FLT__FreePStreamParam((v22 + 752));
              v40 = *(v22 + 40);
              v19 = v98;
            }

            ++v42;
            v41 += 4;
            if (v42 >= v40)
            {
              v4 = v99;
              v17 = v92;
              goto LABEL_90;
            }
          }
        }

        v19 = v98;
      }

LABEL_90:
      if (++v16 >= *(v4 + 8))
      {
        goto LABEL_93;
      }
    }
  }

  inited = 0;
LABEL_93:
  v88 = *(v4 + 153) + v11;
  *(v4 + 153) = v88;
  if (v88 >= *(v4 + 152))
  {
    *a3 = 1;
  }

LABEL_95:
  v45 = inited;
LABEL_97:
  BET3FLT__FreePStreamParam(v103);
  BET3FLT__FreeSMatrices(v102);
  BET3FLT__FreeSMatrices(v101);
  return v45;
}

uint64_t BET3FLT__InitVData(uint64_t a1, void *a2, uint64_t a3)
{
  bzero(a2, 0x430uLL);
  result = BET3FLT__InitModelSet(a1, a2, a3);
  if ((result & 0x80000000) == 0)
  {
    result = BET3FLT__InitTreeSet(a1, a2 + 29);
    if ((result & 0x80000000) == 0)
    {

      return BET3FLT__InitDWinSet(a1, a2 + 42, a3);
    }
  }

  return result;
}

void BET3FLT__DeInitVData(uint64_t a1, _OWORD *a2)
{
  BET3FLT__DeInitModelSet(a1, a2);
  BET3FLT__DeInitTreeSet(a1, a2 + 29);
  BET3FLT__DeInitDWinSet(a1, a2 + 42);

  bzero(a2, 0x430uLL);
}

uint64_t BET3FLT__LoadVData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 456) < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a3 + 2424);
  v8 = a2 + 672;
  v9 = (a3 + 3864);
  do
  {
    ModelFile = BET3FLT__LoadModelFile(a1, a2, v6, (v9 - 300), a3);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ModelFile = BET3FLT__LoadTreesFile(a1, a2 + 464, v6, v7, a3, v11, v12, v13);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ModelFile = BET3FLT__LoadDWinFile(a1, v8, v6, v9);
    if ((ModelFile & 0x80000000) != 0)
    {
      return ModelFile;
    }

    ++v6;
    v19 = *(a2 + 456);
    v9 += 30;
    v7 += 6;
  }

  while (v6 < v19);
  if (v19 < 1)
  {
    return 0;
  }

  v20 = 0;
  v21 = a2 + 176;
  v22 = a2 + 416;
  v23 = a2 + 256;
  while (1)
  {
    if (!*(a2 + 568 + 8 * v20))
    {
      v27 = 2229280775;
      v34 = *(a3 + 8 * v20 + 144);
      v29 = "%s tree is required\n";
      v30 = a1;
      v31 = 55032;
      goto LABEL_37;
    }

    if (*(a2 + 336 + 4 * v20) && !*(a2 + 168))
    {
LABEL_38:
      v27 = 2229280775;
      v33 = *(a3 + 8 * v20 + 144);
      v29 = "%s PDF is required\n";
      v30 = a1;
      v31 = 55033;
      goto LABEL_37;
    }

    v24 = *(a2 + 376 + 4 * v20);
    if (v24)
    {
      if (!*(v21 + 8 * v20))
      {
        goto LABEL_38;
      }

      if (!*(v22 + 4 * v20))
      {
        v25 = 1;
        goto LABEL_19;
      }
    }

    else if (!*(v22 + 4 * v20))
    {
      goto LABEL_31;
    }

    if (!*(v23 + 8 * v20))
    {
      goto LABEL_38;
    }

    v25 = 0;
LABEL_19:
    v14 = *(a2 + 128 + 4 * v20);
    if (v14 >= 1)
    {
      break;
    }

LABEL_26:
    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    if ((v26 & 1) == 0)
    {
      v14 = (*(a2 + 4 + 4 * v20) % *(v8 + 40 * v20));
      if (v14)
      {
        v27 = 2229280775;
        v36 = *(a2 + 4 + 4 * v20);
        v37 = *(v8 + 40 * v20);
        v35 = *(a3 + 8 * v20 + 144);
        v29 = "The number of dynamic windows for %s is not correct %d %d\n";
        v30 = a1;
        v31 = 55035;
        goto LABEL_37;
      }
    }

LABEL_31:
    v27 = 0;
    if (++v20 == v19)
    {
      return v27;
    }
  }

  v15 = 0;
  while (1)
  {
    if (v24)
    {
      v16 = *(*(v21 + 8 * v20) + 8 * v15);
      if (!v16)
      {
        break;
      }
    }

    if ((v25 & 1) == 0)
    {
      v16 = *(*(v23 + 8 * v20) + 8 * v15);
      if (!v16)
      {
        break;
      }
    }

    if (v14 == ++v15)
    {
      goto LABEL_26;
    }
  }

  v27 = 2229280775;
  v32 = *(a3 + 8 * v20 + 144);
  v29 = "%s PDF layer %d is required\n";
  v30 = a1;
  v31 = 55034;
LABEL_37:
  BET3FLT__log_select_Error(v30, v31, v29, v14, v15, v16, v17, v18);
  return v27;
}

uint64_t BET3FLT__InitVStream(uint64_t a1, char *a2, _DWORD *a3)
{
  bzero(a2, 0x788uLL);
  *a2 = a1;
  v6 = a3[33];
  *(a2 + 8) = v6;
  v7 = heap_Calloc(*(a1 + 8), v6, 1528);
  *(a2 + 3) = v7;
  if (!v7)
  {
    return 2229280778;
  }

  if (*(a2 + 8) >= 1)
  {
    v8 = 0;
    v9 = a2 + 648;
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
      v15 = 1528 * v11;
      do
      {
        v16 = v13 + v12;
        *(v16 + 12) = a3[56];
        *(v16 + 24) = a1;
        *(v16 + 752) = a1;
        if (v12)
        {
          if (a3[536])
          {
            *(v13 + v12 + 1488) = 1;
          }

          else
          {
            *(v13 + v12 + 1484) = 1;
          }
        }

        else
        {
          *(v13 + 1480) = 1;
        }

        if (v14 == 1)
        {
          *(v13 + v12 + 1492) = 1;
        }

        v12 += 1528;
        ++a3;
      }

      while (v15 != v12);
    }
  }

  return 0;
}

uint64_t BET3FLT__LoadVStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) < 1)
  {
    return 0;
  }

  v3 = a3;
  v5 = 0;
  v6 = 2229280775;
  v7 = a2 + 672;
  v8 = a2 + 4;
  v9 = a3 + 2184;
  v48 = a2 + 672;
  v49 = a3 + 2344;
  v45 = a2 + 128;
  v46 = a3 + 144;
  v10 = *(a1 + 24);
  v47 = a2 + 4;
  while (1)
  {
    v11 = (v7 + 40 * v5);
    v12 = v10 + 1528 * v5;
    *(v12 + 56) = v11;
    v13 = *(v12 + 1484);
    if (v13)
    {
      *(v12 + 784) = v11;
    }

    if (*(v12 + 1480))
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
    v17 = v10 + 1528 * v5;
    *(v17 + 40) = v16;
    *(v17 + 1496) = *(v3 + 92);
    v18 = heap_Calloc(*(*a1 + 8), v16, 8);
    v19 = *(a1 + 24);
    *(v19 + 1528 * v5 + 1504) = v18;
    if (!v18)
    {
      return 2229280778;
    }

    LODWORD(v20) = *(v19 + 1528 * v5 + 40);
    if (v20 >= 1)
    {
      break;
    }

LABEL_15:
    v27 = heap_Calloc(*(*a1 + 8), v20, 4);
    v28 = *(a1 + 24);
    *(v28 + 1528 * v5 + 1520) = v27;
    if (!v27)
    {
      return 2229280778;
    }

    v29 = v28 + 1528 * v5;
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
            BET3FLT__log_select_Error(*a1, 55036, "valid breaker setting is required for stream %d\n", v34, v35, v36, v37, v38);
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
    BET3FLT__log_select_Diag(*a1, 1, "%s: vSize = %d, order = %d, nLayer = %d\n");
    v10 = *(a1 + 24);
    v8 = v47;
    v7 = v48;
    if (*(v10 + 1528 * v5 + 1484))
    {
LABEL_7:
      v14 = v10 + 1528 * v5;
      *(v14 + 764) = *(v8 + 4 * v5);
      *(v14 + 768) = 1;
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
    *(*(v19 + 1528 * v5 + 1504) + 8 * v21++) = BET3FLT__mlpg2;
    v19 = *(a1 + 24);
    v20 = *(v19 + 1528 * v5 + 40);
    if (v21 >= v20)
    {
      goto LABEL_15;
    }
  }

  BET3FLT__log_select_Error(*a1, 55036, "invalid solver for stream %d: %s\n", v22, v23, v24, v25, v26);
  return v6;
}

void BET3FLT__DeInitVStream(int *a1)
{
  if (a1 && *a1)
  {
    if (a1[8] >= 1)
    {
      v2 = 0;
      v3 = *(a1 + 3);
      v4 = 1520;
      do
      {
        if (!v3)
        {
          break;
        }

        BET3FLT__FreePStreamSM(v3 + v4 - 1496);
        BET3FLT__FreePStreamParam((*(a1 + 3) + v4 - 1496));
        BET3FLT__FreePStreamSM(*(a1 + 3) + v4 - 768);
        BET3FLT__FreePStreamParam((*(a1 + 3) + v4 - 768));
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
        v4 += 1528;
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

    BET3FLT__DeInitUttModel(a1 + 7);

    bzero(a1, 0x788uLL);
  }
}

void BET3FLT__DeInitVParam(uint64_t a1, void *a2)
{
  if (a2[954])
  {
    for (i = 0; i != 20; ++i)
    {
      if (*(a2[954] + 8 * i))
      {
        for (j = 0; j != 800; j += 8)
        {
          v6 = *(*(a2[954] + 8 * i) + j);
          if (v6)
          {
            heap_Free(*(a1 + 8), v6);
            *(*(a2[954] + 8 * i) + j) = 0;
          }
        }

        v7 = *(a2[954] + 8 * i);
        if (v7)
        {
          heap_Free(*(a1 + 8), v7);
          *(a2[954] + 8 * i) = 0;
        }
      }

      v8 = *(a2[955] + 8 * i);
      if (v8)
      {
        heap_Free(*(a1 + 8), v8);
        *(a2[955] + 8 * i) = 0;
      }

      v9 = *(a2[953] + 8 * i);
      if (v9)
      {
        heap_Free(*(a1 + 8), v9);
        *(a2[953] + 8 * i) = 0;
      }
    }

    v10 = a2[954];
    if (v10)
    {
      heap_Free(*(a1 + 8), v10);
      a2[954] = 0;
    }

    v11 = a2[955];
    if (v11)
    {
      heap_Free(*(a1 + 8), v11);
      a2[955] = 0;
    }

    v12 = a2[953];
    if (v12)
    {
      heap_Free(*(a1 + 8), v12);
      a2[953] = 0;
    }
  }

  v13 = a2[10];
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
    a2[10] = 0;
  }

  v14 = a2[15];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    a2[15] = 0;
  }

  v15 = a2[956];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    a2[956] = 0;
  }

  v16 = 0;
  v17 = (a2 + 18);
  v18 = (a2 + 53);
  v19 = (a2 + 33);
  v20 = (a2 + 293);
  v21 = (a2 + 273);
  v22 = (a2 + 283);
  v23 = a2;
  do
  {
    v24 = *&v17[8 * v16];
    if (v24)
    {
      heap_Free(*(a1 + 8), v24);
      *&v17[8 * v16] = 0;
    }

    v25 = *&v18[8 * v16];
    if (v25)
    {
      heap_Free(*(a1 + 8), v25);
      *&v18[8 * v16] = 0;
    }

    v26 = 5;
    v27 = v23;
    do
    {
      v28 = v27[63];
      if (v28)
      {
        heap_Free(*(a1 + 8), v28);
        v27[63] = 0;
      }

      v29 = v27[163];
      if (v29)
      {
        heap_Free(*(a1 + 8), v29);
        v27[163] = 0;
      }

      ++v27;
      --v26;
    }

    while (v26);
    v30 = 213;
    v18 = (a2 + 53);
    do
    {
      v31 = v23[v30];
      if (v31)
      {
        heap_Free(*(a1 + 8), v31);
        v23[v30] = 0;
      }

      ++v30;
    }

    while (v30 != 218);
    if (*&v19[4 * v16])
    {
      v32 = 0;
      do
      {
        v33 = *&v20[8 * v16];
        if (v33)
        {
          v34 = *(v33 + 8 * v32);
          if (v34)
          {
            heap_Free(*(a1 + 8), v34);
            *(*&v20[8 * v16] + 8 * v32) = 0;
          }
        }

        v35 = *&v21[8 * v16];
        if (v35)
        {
          v36 = *(v35 + 8 * v32);
          if (v36)
          {
            heap_Free(*(a1 + 8), v36);
            *(*&v21[8 * v16] + 8 * v32) = 0;
          }
        }

        v37 = *&v22[8 * v16];
        if (v37)
        {
          v38 = *(v37 + 8 * v32);
          if (v38)
          {
            heap_Free(*(a1 + 8), v38);
            *(*&v22[8 * v16] + 8 * v32) = 0;
          }
        }

        ++v32;
      }

      while (v32 < *&v19[4 * v16]);
    }

    v39 = *&v20[8 * v16];
    if (v39)
    {
      heap_Free(*(a1 + 8), v39);
      *&v20[8 * v16] = 0;
    }

    v40 = *&v21[8 * v16];
    v17 = (a2 + 18);
    if (v40)
    {
      heap_Free(*(a1 + 8), v40);
      *&v21[8 * v16] = 0;
    }

    v41 = *&v22[8 * v16];
    if (v41)
    {
      heap_Free(*(a1 + 8), v41);
      *&v22[8 * v16] = 0;
    }

    ++v16;
    v23 += 5;
  }

  while (v16 != 10);
  for (k = 663; k != 919; ++k)
  {
    v43 = a2[k];
    if (v43)
    {
      heap_Free(*(a1 + 8), v43);
      a2[k] = 0;
    }
  }

  if (a2[952])
  {
    for (m = 0; m != 2048; m += 8)
    {
      v45 = *(a2[952] + m);
      if (v45)
      {
        heap_Free(*(a1 + 8), v45);
        *(a2[952] + m) = 0;
      }
    }

    heap_Free(*(a1 + 8), a2[952]);
  }

  bzero(a2, 0x1F30uLL);
}

uint64_t synth_float_bet3_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ISynth_Bet3;
  return result;
}

uint64_t synth_bet3_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Object = 2164269063;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  __s1 = 0;
  v38 = xmmword_1F42D7268;
  v39 = off_1F42D7278;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v43);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    log_OutText(*(v43 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjOpen", v10, v11, v12, v35);
    v13 = heap_Calloc(*(v43 + 8), 1, 1904);
    if (v13)
    {
      v18 = v13;
      *v13 = a3;
      v13[1] = a4;
      v19 = v43;
      v13[2] = v43;
      Listen = critsec_ObjOpen(*(v19 + 16), *(v19 + 8), v13 + 3);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      *&v38 = v18;
      Listen = synth_bet3_loc_ParamGetListen(v18, "volume", 0, 100, 0x50u, &v38, &v41);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v18, "rate", 50, 400, 0x64u, &v38, &v41);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v18, "pitch", 50, 200, 0x64u, &v38, &v41);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v18, "rate_baseline", 50, 400, 0x64u, &v38, &v41);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v18, "pitch_baseline", 50, 200, 0x64u, &v38, &v41);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v18, "audiooutputbufsamples", 1, 0x7FFFFFFF, 0x100u, &v38, &v41);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      *(v18 + 40) = v41;
      if ((paramc_ParamGetStr(*(v43 + 40), "synth_type", &__s1) & 0x80000000) == 0)
      {
        v21 = __s1;
        if (strcmp(__s1, "mlsa") && strcmp(v21, "mfs"))
        {
          log_OutText(*(v43 + 32), "SYNTH_BET3", 4, 0, "Unknown synthesizer: %s", v22, v23, v24, v21);
          return 7;
        }

        log_OutText(*(v43 + 32), "SYNTH_BET3", 4, 0, "Setting up MLSA synthesizer", v22, v23, v24, v36);
      }

      *(v18 + 1896) = 0;
      Listen = synth_bet3_loc_SynthInit_MLSA(v18);
      if ((Listen & 0x80000000) != 0)
      {
LABEL_21:
        Object = Listen;
      }

      else
      {
        Object = objc_GetObject(*(v43 + 48), "SYNTHSTREAM", &v42);
        if ((Object & 0x80000000) == 0)
        {
          *(v18 + 32) = *(v42 + 8);
          *a5 = v18;
          *(a5 + 8) = 9346;
          goto LABEL_23;
        }

        log_OutPublic(*(*(v18 + 16) + 32), "SYNTH_BET3", 56001, 0, v28, v25, v26, v27, v36);
      }

      *a5 = v18;
      *(a5 + 8) = 9346;
      synth_bet3_ObjClose(v18, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
      goto LABEL_23;
    }

    log_OutPublic(*(v43 + 32), "SYNTH_BET3", 56000, 0, v14, v15, v16, v17, v36);
    Object = 2164269066;
LABEL_23:
    log_OutText(*(v43 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjOpen: %x", v25, v26, v27, Object);
    log_OutEvent(*(v43 + 32), 22, "", v29, v30, v31, v32, v33, v37);
  }

  return Object;
}

uint64_t synth_bet3_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 9346, 1904);
  if (v3 < 0)
  {
    return 2164269064;
  }

  LODWORD(v7) = v3;
  v8 = *(a1 + 16);
  log_OutText(*(v8 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjClose", v4, v5, v6, v35);
  v9 = *(v8 + 40);
  v37 = a1;
  v36 = *(&xmmword_1F42D7268 + 8);
  v38 = *(&xmmword_1F42D7268 + 8);
  v10 = paramc_ListenerRemove(v9, "volume", &v37);
  v11 = *(v8 + 40);
  if (v10 < 0)
  {
    LODWORD(v7) = v10;
  }

  v37 = a1;
  v38 = v36;
  v12 = paramc_ListenerRemove(v11, "rate", &v37);
  v13 = *(v8 + 40);
  if (v12 < 0 && v7 > -1)
  {
    LODWORD(v7) = v12;
  }

  v37 = a1;
  v38 = v36;
  v15 = paramc_ListenerRemove(v13, "pitch", &v37);
  v16 = *(v8 + 40);
  if (v15 < 0 && v7 > -1)
  {
    LODWORD(v7) = v15;
  }

  v37 = a1;
  v38 = v36;
  v18 = paramc_ListenerRemove(v16, "rate_baseline", &v37);
  v19 = *(v8 + 40);
  if (v18 < 0 && v7 > -1)
  {
    LODWORD(v7) = v18;
  }

  v37 = a1;
  v38 = v36;
  v21 = paramc_ListenerRemove(v19, "pitch_baseline", &v37);
  v22 = *(v8 + 40);
  if (v21 < 0 && v7 > -1)
  {
    LODWORD(v7) = v21;
  }

  v37 = a1;
  v38 = v36;
  v24 = paramc_ListenerRemove(v22, "audiooutputbufsamples", &v37);
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

  if (!*(a1 + 1896))
  {
    MFVSyn__deinit__MVF_Synthesis((a1 + 72));
  }

  v28 = *(a1 + 24);
  if (v28)
  {
    v29 = critsec_ObjClose(v28);
    if (v7 > -1 && v29 < 0)
    {
      v7 = v29;
    }

    else
    {
      v7 = v7;
    }
  }

  heap_Free(*(v8 + 8), a1);
  log_OutText(*(v8 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjClose: %x", v31, v32, v33, v7);
  return v7;
}

uint64_t synth_bet3_ObjReopen(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 9346, 1904) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v6 = *(a1 + 16);
  log_OutText(*(v6 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjReopen", v3, v4, v5, v12);
  inited = synth_bet3_loc_SynthInit_MLSA(a1);
  log_OutText(*(v6 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjReopen: %x", v8, v9, v10, inited);
  return inited;
}

uint64_t synth_bet3_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((safeh_HandleCheck(a1, a2, 9346, 1904) & 0x80000000) != 0)
  {
    v22 = 2164269064;
    goto LABEL_14;
  }

  strcpy(__s, "audio/L16;rate=");
  v8 = strlen(__s);
  LH_itoa(*(a1 + 48), &__s[v8], 0xAu);
  v9 = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-bet3-speech-frames;version=5.0", 0, 0, a1 + 1792);
  if ((v9 & 0x80000000) != 0 || (v9 = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", 0, 0, a1 + 1808), (v9 & 0x80000000) != 0))
  {
    v22 = v9;
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56002, "%s%s", v10, v11, v12, v13, "contentType");
LABEL_12:
    *(a1 + 1856) = 0;
LABEL_13:
    synth_bet3_ProcessEnd(a1, a2);
    goto LABEL_14;
  }

  v14 = (*(*(a1 + 32) + 64))(a3, a4, 16, __s, 0, 1, a1 + 1824);
  if ((v14 & 0x80000000) != 0)
  {
    v22 = v14;
    goto LABEL_11;
  }

  v19 = *(a1 + 32);
  v20 = *(v19 + 64);
  v21 = (*(v19 + 152))();
  v22 = v20(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", v21, 1, a1 + 1840);
  if ((v22 & 0x80000000) != 0)
  {
LABEL_11:
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56003, "%s%s", v15, v16, v17, v18, "contentType");
    goto LABEL_12;
  }

  if (!*(a1 + 1896))
  {
    v22 = BET3FLT__MFVSyn__reset__MVF_Synthesis(a1 + 72);
    *(a1 + 1856) = 0;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(a1 + 1856) = 0;
LABEL_14:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t synth_bet3_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v161 = *MEMORY[0x1E69E9840];
  v8 = -2130698234;
  v9 = safeh_HandleCheck(a1, a2, 9346, 1904);
  if (v9 < 0)
  {
    goto LABEL_8;
  }

  v10 = 1;
  if (v9 || !a1)
  {
    goto LABEL_9;
  }

  __n = 0;
  v158 = 0;
  __src = 0;
  v157 = 0;
  v154 = 0;
  __dst = 0;
  if ((safeh_HandleCheck(a1, a2, 9346, 1904) & 0x80000000) != 0)
  {
LABEL_8:
    v10 = 2164269064;
    goto LABEL_9;
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

  v10 = (*(*(a1 + 32) + 144))(*(a1 + 1792), *(a1 + 1800), &__n + 4, &v158);
  if ((v10 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56004, "%s%x", v15, v16, v17, v18, "lhError");
    goto LABEL_9;
  }

  if (HIDWORD(__n))
  {
    v19 = (*(*(a1 + 32) + 88))(*(a1 + 1792), *(a1 + 1800), &v157, &__n + 4);
    if ((v19 & 0x80000000) != 0)
    {
      v10 = v19;
      log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x", v20, v21, v22, v23, "contentType");
      goto LABEL_9;
    }

    v10 = (*(*(a1 + 32) + 88))(*(a1 + 1808), *(a1 + 1816), &__src, &__n);
    if ((v10 & 0x80000000) != 0)
    {
      log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x", v24, v25, v26, v27, "contentType");
      goto LABEL_9;
    }

    if (HIDWORD(__n) >= 8)
    {
      v28 = (*(*(a1 + 32) + 112))(*(a1 + 1824), *(a1 + 1832), &v154, 2 * v12);
      if ((v28 & 0x80000000) != 0)
      {
        v10 = v28;
        v126 = *(*(a1 + 16) + 32);
LABEL_189:
        log_OutPublic(v126, "SYNTH_BET3", 56007, "%s%s%s%x", v29, v30, v31, v32, "stream");
        goto LABEL_9;
      }

      if (!__n || (v33 = (*(*(a1 + 32) + 112))(*(a1 + 1840), *(a1 + 1848), &__dst), (v33 & 0x80000000) == 0))
      {
        v10 = critsec_Enter(*(a1 + 24));
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_9;
        }

        v34 = *v157;
        v153 = 0;
        v152 = 0;
        v148 = *(v34 + 40);
        v149 = *(v34 + 48);
        if (__n && __src && __dst)
        {
          memcpy(__dst, __src, __n);
          LODWORD(__n) = __n >> 5;
        }

        v35 = *(v34 + 32);
        if (v35 < 1)
        {
          goto LABEL_206;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = *(v34 + 24);
        do
        {
          v40 = v39[3];
          if (v40 == 1)
          {
            v41 = v39;
          }

          else
          {
            v41 = v38;
          }

          if (v40 == 2)
          {
            v41 = v38;
            v42 = v39;
          }

          else
          {
            v42 = v37;
          }

          if (v40 == 3)
          {
            v36 = v39;
          }

          else
          {
            v38 = v41;
            v37 = v42;
          }

          v39 += 382;
          --v35;
        }

        while (v35);
        if (!v38 || !v37)
        {
          goto LABEL_206;
        }

        v43 = heap_Calloc(*(*(a1 + 16) + 8), v38[11], 1);
        if (!v43)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56000, 0, v44, v45, v46, v47, v146);
          v8 = -2130698230;
          goto LABEL_206;
        }

        v48 = v43;
        v150 = 0;
        v151 = 0;
        LODWORD(i) = 0;
        v50 = *(a1 + 1856);
        v8 = v10;
        while (1)
        {
          if (v50 >= v38[11] || *(a1 + 52) && *(a1 + 44) + HIDWORD(v150) > v12)
          {
LABEL_154:
            heap_Free(*(*(a1 + 16) + 8), v48);
            if (HIDWORD(v150) && (v8 & 0x80000000) == 0 && (v8 = (*(*(a1 + 32) + 120))(*(a1 + 1824), *(a1 + 1832), (2 * HIDWORD(v150))), v8 < 0))
            {
              v115 = *(*(a1 + 16) + 32);
LABEL_203:
              log_OutPublic(v115, "SYNTH_BET3", 56007, "%s%s%s%x", v111, v112, v113, v114, "stream");
            }

            else if (v8 < 0 || !i)
            {
              if ((v8 & 0x80000000) == 0)
              {
                goto LABEL_193;
              }
            }

            else
            {
              v8 = (*(*(a1 + 32) + 120))(*(a1 + 1840), *(a1 + 1848), (32 * i));
              if (v8 < 0)
              {
                v115 = *(*(a1 + 16) + 32);
                goto LABEL_203;
              }

LABEL_193:
              if (*(a1 + 1856) < v38[11])
              {
                v138 = 2;
                goto LABEL_199;
              }

              v8 = (*(*(a1 + 32) + 96))(*(a1 + 1792), *(a1 + 1800), 8);
              if (v8 < 0)
              {
                v143 = *(*(a1 + 16) + 32);
LABEL_205:
                log_OutPublic(v143, "SYNTH_BET3", 56006, "%s%s%s%x", v139, v140, v141, v142, "contentType");
              }

              else
              {
                *(a1 + 1856) = 0;
                if (HIDWORD(__n) <= 8)
                {
                  v138 = 1;
                }

                else
                {
                  v138 = 2;
                }

LABEL_199:
                *a5 = v138;
                if (i)
                {
                  v8 = (*(*(a1 + 32) + 96))(*(a1 + 1808), *(a1 + 1816), (32 * i));
                  if (v8 < 0)
                  {
                    v143 = *(*(a1 + 16) + 32);
                    goto LABEL_205;
                  }
                }
              }
            }

LABEL_206:
            v144 = critsec_Leave(*(a1 + 24));
            if (v144 >= 0 || v8 <= -1)
            {
              v10 = v8;
            }

            else
            {
              v10 = v144;
            }

            goto LABEL_9;
          }

          v51 = __dst;
          if (__dst)
          {
            v52 = i >= __n;
          }

          else
          {
            v52 = 1;
          }

          if (!v52)
          {
            for (i = i; v51 && i < __n; ++i)
            {
              v53 = &v51[8 * i];
              v54 = v53[3];
              v55 = *(a1 + 52);
              if (v54 > *(a1 + 1860))
              {
                if (v55)
                {
                  break;
                }

LABEL_58:
                v61 = v51[3];
                v62 = v54 - v61;
                v63 = *v53;
                if (*v53 == 8 || v63 == 26)
                {
                  if (v62 < v38[11])
                  {
                    *(v48 + v62) = 1;
                    v51 = __dst;
                  }
                }

                else if (v63 == 33)
                {
                  v65 = &v51[8 * v151];
                  v66 = *(v65 + 3) - v61;
                  if (v53[6] == 35)
                  {
                    v151 = i;
                    if ((v54 == v61 || v62 < v38[11] && *(v48 + v62) || *(v65 + 4) + v66 == v62) && v53[4])
                    {
                      v67 = 0;
                      do
                      {
                        if (v62 + v67 < v38[11])
                        {
                          *(v48 + v62 + v67) = 2;
                          v51 = __dst;
                        }

                        ++v67;
                      }

                      while (v67 < v51[8 * i + 4]);
                    }
                  }

                  else if (v62 < v38[11] && !*(v48 + v62))
                  {
                    v68 = *(v65 + 4);
                    if (v68)
                    {
                      if (v68 + v66 == v62)
                      {
                        v69 = 0;
                        do
                        {
                          if (v66 + v69 < v38[11])
                          {
                            *(v48 + (v66 + v69)) = 0;
                            v51 = __dst;
                          }

                          ++v69;
                        }

                        while (v69 < v51[8 * v151 + 4]);
                      }
                    }
                  }
                }

                continue;
              }

              if (!v55)
              {
                goto LABEL_58;
              }

              if (!i)
              {
                LODWORD(v150) = v51[3];
              }

              HIDWORD(v56) = 0;
              *(a1 + 1880) = 0;
              v57 = v51[8 * i];
              if (v57 > 17)
              {
                if (v57 == 18)
                {
                  critsec_Leave(*(a1 + 24));
                  v58 = *(*(a1 + 16) + 40);
                  v59 = *(__dst + 8 * i + 6);
                  v60 = "rate";
                }

                else
                {
                  if (v57 != 24)
                  {
                    goto LABEL_92;
                  }

                  critsec_Leave(*(a1 + 24));
                  v58 = *(*(a1 + 16) + 40);
                  v59 = *(__dst + 8 * i + 6);
                  v60 = "volume";
                }
              }

              else if (v57 == 16)
              {
                critsec_Leave(*(a1 + 24));
                v58 = *(*(a1 + 16) + 40);
                v59 = *(__dst + 8 * i + 6);
                v60 = "pitch";
              }

              else
              {
                if (v57 != 17)
                {
                  goto LABEL_92;
                }

                critsec_Leave(*(a1 + 24));
                v58 = *(*(a1 + 16) + 40);
                v59 = *(__dst + 8 * i + 6);
                v60 = "timbre";
              }

              paramc_ParamSetUInt(v58, v60, v59);
              critsec_Enter(*(a1 + 24));
LABEL_92:
              v51 = __dst;
              v70 = __dst + 32 * i;
              *(v70 + 3) = *(a1 + 1864);
              if (i + 1 >= __n)
              {
                v71 = *(a1 + 44);
LABEL_96:
                LODWORD(v56) = *(v70 + 4);
                v73 = v56;
                v74 = ceil(v71 * *(a1 + 132));
                goto LABEL_97;
              }

              v71 = *(a1 + 44);
              if (v51[8 * i + 8] != 8)
              {
                goto LABEL_96;
              }

              *(a1 + 1880) = v54 - v150;
              v72 = *(v70 + 4);
              *(a1 + 1884) = v72 + v54 - v150;
              v73 = v72;
              v74 = v71;
LABEL_97:
              *(v70 + 4) = (v73 * v74 + 0.5);
            }
          }

          v75 = 0.0;
          v76 = 0.0;
          if ((*(v149 + *v38) & 4) != 0)
          {
            v77 = *(a1 + 64);
            v78 = *v37;
            v79 = exp(**(*(v37 + 8) + 8 * v78));
            v76 = *(a1 + 68) + (v77 * v79);
            *v37 = v78 + 1;
          }

          if (v36 && ((*(v149 + *v38) >> v36[3]) & 1) != 0)
          {
            v80 = *v36;
            v75 = exp(**(*(v36 + 8) + 8 * v80));
            *v36 = v80 + 1;
          }

          v81 = *(a1 + 272);
          v50 = *(a1 + 1856);
          if ((v81 & 0x80000000) == 0)
          {
            v82 = *(*(v38 + 8) + 8 * v50);
            v83 = v81 + 1;
            v84 = v160;
            v85 = v83;
            do
            {
              v86 = *v82++;
              *v84++ = v86;
              --v85;
            }

            while (v85);
            v87 = *(a1 + 1872);
            if (v87)
            {
              v88 = v160;
              do
              {
                v89 = *v87++;
                *v88 = *v88 + v89;
                ++v88;
                --v83;
              }

              while (v83);
            }
          }

          v153 = 0;
          v90 = *(a1 + 52);
          if (!v90 && (**(*(v38 + 8) + 8 * v50) == 0.0 || v50 >= v38[11] || *(v48 + v50) == 2))
          {
            v152 = vcvtps_u32_f32(*(a1 + 132) * *(a1 + 552));
          }

          else
          {
            v91 = *(a1 + 132);
            v92 = *(a1 + 1880);
            if (v92 <= v50 && *(a1 + 1884) > v50)
            {
              *(a1 + 132) = 1065353216;
            }

            if (v90 || !v50 || !*(a1 + 56))
            {
              v8 = BET3FLT__MFVSyn__SynthesisOneFrame(a1 + 72, v160, &v152, &v153, v76, 0.0, *(v148 + 4 * *v38), v75);
              v92 = *(a1 + 1880);
              v50 = *(a1 + 1856);
            }

            if (v92 <= v50 && *(a1 + 1884) > v50)
            {
              *(a1 + 132) = v91;
            }
          }

          v93 = 0;
          if ((v8 & 0x80000000) == 0)
          {
            v94 = v152;
            if (v152)
            {
              break;
            }
          }

LABEL_152:
          if (v93 || v8 < 0)
          {
            goto LABEL_154;
          }
        }

        v95.i32[0] = 1;
        v95.i32[1] = v152;
        *(a1 + 1860) = vadd_s32(*(a1 + 1860), v95);
        if (v94 + HIDWORD(v150) <= v12)
        {
          v103 = 0;
          goto LABEL_142;
        }

        if (HIDWORD(v150))
        {
          v96 = (*(*(a1 + 32) + 120))(*(a1 + 1824), *(a1 + 1832), (2 * HIDWORD(v150)));
          if (v96 < 0)
          {
            v8 = v96;
            goto LABEL_150;
          }

          v94 = v152;
        }

        if (v94 <= v12)
        {
          v101 = v12;
        }

        else
        {
          v101 = v94;
        }

        if (*(a1 + 52))
        {
          v102 = v94;
        }

        else
        {
          v102 = v101;
        }

        v8 = (*(*(a1 + 32) + 112))(*(a1 + 1824), *(a1 + 1832), &v154, 2 * v102);
        if ((v8 & 0x80000000) == 0)
        {
          HIDWORD(v150) = 0;
          v103 = *(a1 + 52) != 0;
LABEL_142:
          v104 = v153;
          if (v153)
          {
            v105 = v152;
            if (v152)
            {
              v106 = v154;
              v107 = HIDWORD(v150);
              v108 = v152;
              do
              {
                v109 = *v104++;
                *(v106 + 2 * v107++) = v109;
                --v108;
              }

              while (v108);
            }

            v110 = HIDWORD(v150);
          }

          else
          {
            v110 = HIDWORD(v150);
            v147 = v103;
            bzero((v154 + 2 * HIDWORD(v150)), v152 + 2);
            v103 = v147;
            v105 = v152;
          }

          HIDWORD(v150) = v105 + v110;
          goto LABEL_151;
        }

LABEL_150:
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x", v97, v98, v99, v100, "stream");
        HIDWORD(v150) = 0;
        v103 = *(a1 + 52);
LABEL_151:
        v93 = v103 != 0;
        ++*v38;
        v50 = *(a1 + 1856) + 1;
        *(a1 + 1856) = v50;
        goto LABEL_152;
      }

LABEL_188:
      v10 = v33;
      v126 = *(*(a1 + 16) + 32);
      goto LABEL_189;
    }
  }

  else
  {
    if (!v158)
    {
      *a5 = 0;
      goto LABEL_9;
    }

    v116 = *(a1 + 1824);
    if (!v116 || (v10 = (*(*(a1 + 32) + 72))(v116, *(a1 + 1832)), *(a1 + 1824) = safeh_GetNullHandle(), *(a1 + 1832) = v117, (v10 & 0x80000000) == 0))
    {
      if (*(a1 + 1840))
      {
        v10 = (*(*(a1 + 32) + 88))(*(a1 + 1808), *(a1 + 1816), &__src, &__n);
        if ((v10 & 0x80000000) != 0)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x", v118, v119, v120, v121, "contentType");
        }

        else if (__n)
        {
          v10 = (*(*(a1 + 32) + 112))(*(a1 + 1840), *(a1 + 1848), &__dst);
          if ((v10 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x", v122, v123, v124, v125, "stream");
          }
        }

        if ((v10 & 0x80000000) == 0 && __n && __src && __dst)
        {
          memcpy(__dst, __src, __n);
          v127 = __n;
          LODWORD(__n) = __n >> 5;
          if (v127 >= 0x20)
          {
            LODWORD(v128) = 0;
            v129 = 0;
            v130 = *(a1 + 1864);
            v131 = __dst + 16;
            do
            {
              *(v131 - 1) = v130;
              *v131 = 0;
              ++v129;
              v128 = (v128 + 32);
              v131 += 8;
            }

            while (v129 < __n);
          }

          else
          {
            v128 = 0;
          }

          v33 = (*(*(a1 + 32) + 120))(*(a1 + 1840), *(a1 + 1848), v128);
          if ((v33 & 0x80000000) != 0)
          {
            goto LABEL_188;
          }

          v132 = (*(*(a1 + 32) + 96))(*(a1 + 1808), *(a1 + 1816), v128);
          if ((v132 & 0x80000000) != 0)
          {
            v10 = v132;
            log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56006, "%s%s%s%x", v133, v134, v135, v136, "contentType");
            goto LABEL_9;
          }
        }

        else if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_9;
        }

        v10 = (*(*(a1 + 32) + 72))(*(a1 + 1840), *(a1 + 1848));
        *(a1 + 1840) = safeh_GetNullHandle();
        *(a1 + 1848) = v137;
      }
    }
  }

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t synth_bet3_ProcessEnd(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 9346, 1904);
  if ((v3 & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v4 = v3;
  *(a1 + 1860) = 0;
  v5 = a1[224];
  if (v5)
  {
    v4 = (*(a1[4] + 72))(v5, a1[225]);
    a1[224] = safeh_GetNullHandle();
    a1[225] = v6;
  }

  v7 = a1[226];
  if (v7)
  {
    v8 = (*(a1[4] + 72))(v7, a1[227]);
    if (v4 > -1 && v8 < 0)
    {
      v4 = v8;
    }

    else
    {
      v4 = v4;
    }

    a1[226] = safeh_GetNullHandle();
    a1[227] = v10;
  }

  v11 = a1[228];
  if (v11)
  {
    v12 = (*(a1[4] + 72))(v11, a1[229]);
    if (v4 > -1 && v12 < 0)
    {
      v4 = v12;
    }

    else
    {
      v4 = v4;
    }

    a1[228] = safeh_GetNullHandle();
    a1[229] = v14;
  }

  v15 = a1[230];
  if (v15)
  {
    v16 = (*(a1[4] + 72))(v15, a1[231]);
    if (v4 > -1 && v16 < 0)
    {
      v4 = v16;
    }

    else
    {
      v4 = v4;
    }

    a1[230] = safeh_GetNullHandle();
    a1[231] = v18;
  }

  return v4;
}

uint64_t synth_bet3_loc_ParamCheckChange(int a1, char *__s1, const char *a3, _DWORD *a4)
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
    if (!strcmp(__s1, "rate") || !strcmp(__s1, "rate_baseline"))
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

      if (strcmp(__s1, "pitch") && strcmp(__s1, "pitch_baseline"))
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

uint64_t synth_bet3_loc_ParamLearnChange(uint64_t a1, char *__s1, const char *a3)
{
  if (strcmp(__s1, "audiooutputbufsamples") && strcmp(__s1, "volume") && strcmp(__s1, "rate") && strcmp(__s1, "rate_baseline") && strcmp(__s1, "ratewpm") && strcmp(__s1, "pitch") && strcmp(__s1, "pitch_baseline"))
  {
    return 0;
  }

  v7 = LH_atoi(a3);

  return synth_bet3_loc_ParamSet(a1, __s1, v7);
}

uint64_t synth_bet3_loc_ParamGetListen(uint64_t a1, _BYTE *a2, signed int a3, signed int a4, unsigned int a5, __int128 *a6, int *a7)
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

uint64_t synth_bet3_loc_SynthInit_MLSA(uint64_t a1)
{
  v34 = 0;
  __s1 = 0;
  v2 = *(a1 + 16);
  v33 = 0;
  v26 = 0;
  Int = paramc_ParamGetInt(*(v2 + 40), "frequencyhz", &v34 + 1);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  MFVSyn__deinit__MVF_Synthesis((a1 + 72));
  *(a1 + 48) = HIDWORD(v34);
  v8 = (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && strcmp(__s1, "bet3") == 0;
  *(a1 + 52) = v8;
  v9 = (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && !strcmp(__s1, "bet4") && (paramc_ParamGetStr(*(v2 + 40), "bet4suppressbet3pcm", &__s1) & 0x80000000) == 0 && strcmp(__s1, "yes") == 0;
  *(a1 + 56) = v9;
  v28 = 0.0;
  v31 = 0x100000000;
  v32 = 0;
  v29 = xmmword_1C382F310;
  v30 = 1065353216;
  BYTE5(v31) = *(a1 + 52) != 0;
  LODWORD(v32) = 4;
  v27[0] = vcvtps_s32_f32(COERCE_FLOAT(COERCE_UNSIGNED_INT64(wave_t__convertFromF0ToTp__SR(SHIDWORD(v34), 700.0))));
  v27[1] = vcvtms_s32_f32(COERCE_FLOAT(COERCE_UNSIGNED_INT64(wave_t__convertFromF0ToTp__SR(SHIDWORD(v34), 40.0))));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicealpha", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!__s1)
  {
    goto LABEL_50;
  }

  if (!*__s1)
  {
    goto LABEL_50;
  }

  v11 = atof(__s1);
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicebeta", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    goto LABEL_50;
  }

  v12 = atof(__s1);
  paramc_ParamRelease(*(v2 + 40));
  Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceframesize", &v33 + 1);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  *(a1 + 44) = HIDWORD(v33) * *(a1 + 48) / 0x3E8u;
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevol", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!__s1)
  {
    goto LABEL_50;
  }

  if (!*__s1)
  {
    goto LABEL_50;
  }

  v13 = atof(__s1);
  *(a1 + 60) = v13;
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevuvrelamp", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!__s1)
  {
    goto LABEL_50;
  }

  if (!*__s1)
  {
    goto LABEL_50;
  }

  v14 = atof(__s1);
  v28 = v14;
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicemvfboost", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    goto LABEL_50;
  }

  v15 = atof(__s1);
  paramc_ParamRelease(*(v2 + 40));
  Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceorder", &v33);
  if ((Int & 0x80000000) != 0)
  {
LABEL_49:
    Str = Int;
LABEL_50:
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s", v4, v5, v6, v7, "parameter");
    return Str;
  }

  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicef0std", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!__s1)
  {
    goto LABEL_50;
  }

  if (!*__s1)
  {
    goto LABEL_50;
  }

  v16 = atof(__s1);
  *(a1 + 64) = v16;
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicef0mean", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    goto LABEL_50;
  }

  v17 = atof(__s1);
  *(a1 + 68) = v17;
  paramc_ParamRelease(*(v2 + 40));
  if ((paramc_ParamGetInt(*(v2 + 40), "bet2cpupower", &v34) & 0x80000000) == 0 && (v34 - 1) < 4)
  {
    LODWORD(v32) = v34;
  }

  if (paramc_ParamGet(*(v2 + 40), "bet3cepstralequalizer", (a1 + 1872), &v26) || v33 + 1 == v26 >> 2)
  {
    v21 = v11;
    v22 = v12;
    inited = BET3FLT__MFVSyn__init__MVF_Synthesis(*(a1 + 16), a1 + 72, v27, 0, SHIDWORD(v33), v33, v21, v22, SHIDWORD(v34));
    if ((inited & 0x80000000) == 0)
    {
      v24 = v15;
      inited = BET3FLT__MFVSyn__setMVFBoost(a1 + 72, v24);
      if ((inited & 0x80000000) == 0)
      {
        inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "volume", &v34);
        if ((inited & 0x80000000) == 0)
        {
          inited = synth_bet3_loc_ParamSet(a1, "volume", v34);
          if ((inited & 0x80000000) == 0)
          {
            inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate_baseline", &v34);
            if ((inited & 0x80000000) == 0)
            {
              inited = synth_bet3_loc_ParamSet(a1, "rate_baseline", v34);
              if ((inited & 0x80000000) == 0)
              {
                inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch_baseline", &v34);
                if ((inited & 0x80000000) == 0)
                {
                  inited = synth_bet3_loc_ParamSet(a1, "pitch_baseline", v34);
                  if ((inited & 0x80000000) == 0)
                  {
                    inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v34);
                    if ((inited & 0x80000000) == 0)
                    {
                      inited = synth_bet3_loc_ParamSet(a1, "rate", v34);
                      if ((inited & 0x80000000) == 0)
                      {
                        inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v34);
                        if ((inited & 0x80000000) == 0)
                        {
                          return synth_bet3_loc_ParamSet(a1, "pitch", v34);
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

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s", v18, v33, v19, v20, "parameter");
    return 0;
  }
}

uint64_t synth_bet3_loc_ParamSet(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!strcmp(a2, "audiooutputbufsamples"))
  {
    v6 = 0;
    if (a3 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a3;
    }

    *(a1 + 40) = v16;
  }

  else
  {
    v6 = critsec_Enter(*(a1 + 24));
    if ((v6 & 0x80000000) == 0)
    {
      if (!strcmp(a2, "volume"))
      {
        if (a3 <= 0x64)
        {
          v10 = v6;
          if (!*(a1 + 1896))
          {
            if (a3 > 0x50)
            {
              v17 = *(a1 + 60) + (((2.0 - *(a1 + 60)) * (a3 - 80)) / 20.0);
            }

            else
            {
              v17 = (*(a1 + 60) * a3) / 80.0;
            }

            log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set volume %d (synth %f)", v7, v8, v9, a3);
            v10 = BET3FLT__MFVSyn__setVolumeBoost(a1 + 72, v17);
          }

          goto LABEL_38;
        }
      }

      else
      {
        if (strcmp(a2, "rate_baseline"))
        {
          if (!strcmp(a2, "rate"))
          {
            v18 = MapProsodyValue_Scaling(50, 100, 400, *(a1 + 1892), a3);
            log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set rate %d", v19, v20, v21, a3);
            if (!*(a1 + 1896))
            {
              v10 = v6;
              if (*(a1 + 52))
              {
                if (MFVSyn__setRateTtsEg(a1 + 72, v18))
                {
                  v10 = 2164269071;
                }

                else
                {
                  v10 = v6;
                }
              }

              goto LABEL_38;
            }

            goto LABEL_26;
          }

          if (!strcmp(a2, "ratewpm"))
          {
            v10 = 2164269057;
            goto LABEL_38;
          }

          if (strcmp(a2, "pitch_baseline"))
          {
            if (!strcmp(a2, "pitch"))
            {
              v10 = 2164269071;
              if ((a3 - 201) >= 0xFFFFFF69)
              {
                if (*(a1 + 52))
                {
                  v11 = MapProsodyValue_Scaling(50, 100, 200, *(a1 + 1888), a3);
                  log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set pitch %d (synth %f)", v12, v13, v14, a3);
                  v10 = v6;
                  if (!*(a1 + 1896))
                  {
                    BET3FLT__MFVSyn__setPitchLevelPercent(a1 + 72, v11);
                    if (v15)
                    {
                      v10 = 2164269071;
                    }

                    else
                    {
                      v10 = v6;
                    }
                  }

                  goto LABEL_38;
                }

                goto LABEL_26;
              }

LABEL_38:
              critsec_Leave(*(a1 + 24));
              return v10;
            }

LABEL_26:
            v10 = v6;
            goto LABEL_38;
          }

          v10 = 2164269071;
          if ((a3 - 201) < 0xFFFFFF69)
          {
            goto LABEL_38;
          }

          v26 = 0;
          *(a1 + 1888) = a3;
          v22 = "pitch";
          paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v26);
          v23 = v26;
LABEL_28:
          synth_bet3_loc_ParamSet(a1, v22, v23);
          v10 = 0;
          goto LABEL_38;
        }

        if ((a3 - 401) >= 0xFFFFFEA1)
        {
          v25 = 0;
          *(a1 + 1892) = a3;
          v22 = "rate";
          paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v25);
          v23 = v25;
          goto LABEL_28;
        }
      }

      v10 = 2164269071;
      goto LABEL_38;
    }
  }

  return v6;
}

void rand_num(unint64_t *a1, float *a2, int a3, float a4)
{
  if (a3 >= 1)
  {
    v6 = a4 + a4;
    v7 = a3;
    do
    {
      *a2++ = v6 * ((rand31pmc_ranf(a1) * 4.6566e-10) + -0.5);
      --v7;
    }

    while (v7);
  }
}

void BET3FLT__MFVSyn__constructExcitationShapingFilter(uint64_t a1, float a2)
{
  v2 = a2;
  if (a2 <= 0.0)
  {
    vect_t__fillZero(a1 + 576);
  }

  else
  {
    v14 = 0.0;
    rand_num((a1 + 88), &v14, 1, 1.0);
    v4 = *(a1 + 584);
    v5 = *(a1 + 592);
    *(v4 + 4 * v5 - 4) = ((v14 * 25.0) + 25.0) + v2;
    v_equ(v4, (v4 + 4), v5 - 1);
    v14 = 0.0;
    v6 = *(a1 + 584) + 4 * *(a1 + 592);
    v7 = *(v6 - 8);
    if (v7 <= 0.0)
    {
      v9 = 0;
      v8 = 0.0;
    }

    else
    {
      v8 = (v7 * 4.0) + 0.0;
      v14 = v8;
      v9 = 4;
    }

    v10 = *(v6 - 12);
    if (v10 > 0.0)
    {
      v9 |= 2u;
      v8 = v8 + (v10 * 2.0);
      v14 = v8;
    }

    v11 = *(v6 - 16);
    if (v11 <= 0.0)
    {
      v12 = v9;
    }

    else
    {
      v8 = v11 + v8;
      v12 = v9 + 1;
    }

    v2 = v8 * invDiv[v12];
  }

  v13 = *(a1 + 168) * 0.5;
  if (v13 >= (v2 * *(a1 + 52)))
  {
    v13 = v2 * *(a1 + 52);
  }

  *(a1 + 552) = v13;
}

float MFVSyn__filterExcitationWithShapingFilterFast(uint64_t a1, int a2, uint64_t a3, float a4)
{
  v7 = *(a1 + 552);
  if (v7 > 0.0)
  {
    v8 = *(a1 + 556);
    if (v8 > 0.0)
    {
      v7 = ((1.0 - a4) * v8) + (a4 * v7);
    }
  }

  v9 = *(a1 + 792);
  if (v9 < 1)
  {
LABEL_8:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (a1 + 824);
    while (*v11 < (v7 / *(a1 + 168)))
    {
      ++v10;
      v11 += 6;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  v12 = a1 + 808 + 24 * v10;
  v_equ(*(a3 + 8), *v12, *(a1 + 796));
  v13 = sqrt(a2);
  v_scale(*(a3 + 8), *(a1 + 796), *(a1 + 56) * v13);
  v14 = *(a1 + 672);
  if (v14 >= 1)
  {
    if (v14 >= a2)
    {
      v14 = a2;
    }

    if (*(a3 + 16) >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(a3 + 16);
    }

    v_add(*(a3 + 8), *(a1 + 664), v15);
    v16 = *(a1 + 672);
    if (v16 > v15)
    {
      v_equ(*(a1 + 664), (*(a1 + 664) + 4 * v15), v16 - v15);
      *(a1 + 672) = (*(a1 + 672) - v15) & ~((*(a1 + 672) - v15) >> 31);
    }
  }

  vect_t__fillZero(a1 + 656);
  v17 = *(a1 + 796);
  if (v17 <= a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = a2;
    v_equ(*(a1 + 664), (*(a3 + 8) + 4 * a2), v17 - a2);
    v19 = *(a1 + 796) - a2;
    if (v19 <= *(a1 + 672))
    {
      v19 = *(a1 + 672);
    }

    *(a1 + 672) = v19;
  }

  v20 = *(a1 + 800);
  rand_num((a1 + 88), (*(a1 + 464) + 4 * v20), a2, (*(a1 + 44) * 1.15) * *(a1 + 56));
  v_equ(*(a1 + 464), *(a1 + 688), v20);
  v_equ(*(a1 + 688), (*(a1 + 464) + 4 * v18), v20);
  zerflt(*(a1 + 464) + 4 * v20, *(v12 + 8), *(a1 + 464) + 4 * v20, *(a1 + 800), a2);
  v_equ(*(a1 + 464), (*(a1 + 464) + 4 * v20), a2);
  v21 = *(a3 + 8);
  v22 = *(a1 + 464);

  return v_add(v21, v22, a2);
}

uint64_t BET3FLT__vect_t__createVect(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  v5 = 4 * a3;
  v6 = heap_Alloc(a1, v5);
  *(a2 + 8) = v6;
  if (!v6)
  {
    return 2164269066;
  }

  *(a2 + 16) = a3;
  *(a2 + 20) = a3;
  if (a3 >= 1)
  {
    bzero(v6, v5);
  }

  return 0;
}

void *BET3FLT__vect_t__deleteVect(void *result)
{
  if (result)
  {
    v2 = result + 1;
    v1 = result[1];
    if (v1)
    {
      result = heap_Free(*result, v1);
    }

    *v2 = 0;
    v2[1] = 0;
  }

  return result;
}

void vect_t__fillZero(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 >= 1)
  {
    bzero(*(a1 + 8), 4 * v1);
  }
}

void vect_t__mulByHanning(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(a1 + 8);
    do
    {
      v4 = cos(((6.2832 / (v1 - 1)) * v2));
      *(v3 + 4 * v2) = ((1.0 - v4) * 0.5) * *(v3 + 4 * v2);
      ++v2;
    }

    while (v1 != v2);
  }
}

uint64_t BET3FLT__MFVSyn__SynthesisOneFrame(uint64_t a1, const void *a2, int *a3, void *a4, float a5, float a6, float a7, float a8)
{
  *a3 = 0;
  *a4 = 0;
  v15 = *(a1 + 604);
  v17 = v15 == 1 && a5 == 0.0;
  if (v15)
  {
    v18 = 1;
  }

  else
  {
    v18 = a5 <= 0.0;
  }

  v19 = !v18;
  *(a1 + 600) = v19 | v17;
  if (a5 != 0.0)
  {
    a5 = *(a1 + 64) * a5;
    if (a5 < 40.0)
    {
      a5 = 40.0;
    }
  }

  *(a1 + 604) = a5 > 0.0;
  v20 = *(a1 + 480);
  v21 = *(a1 + 60);
  v22 = BET3FLT__wave_t__convertFromF0ToTp((a1 + 32), a5);
  *(a1 + 704) = LODWORD(v22);
  if (*&v22 == 0.0)
  {
    v23 = *(a1 + 544);
    *(a1 + 544) = v23 + 1;
    LODWORD(v24) = *(a1 + 536);
    v25 = *(a1 + 528);
    if (v23 >= v24)
    {
      v_equ(v25, (v25 + 4), v24 - 1);
      v25 = *(a1 + 528);
      v24 = *(a1 + 536);
      *(v25 + 4 * v24 - 4) = *(a1 + 512);
    }

    v26 = v_sum(v25, v24);
    *(a1 + 704) = *&v26 / *(a1 + 536);
  }

  else
  {
    *(a1 + 544) = 0;
    v_equ(*(a1 + 528), (*(a1 + 528) + 4), *(a1 + 536) - 1);
    *(*(a1 + 528) + 4 * *(a1 + 536) - 4) = *(a1 + 704);
  }

  v27 = v21 * v20;
  v_equ(*(a1 + 728), a2, *(a1 + 200) + 1);
  v28 = 0.0;
  if (a6 > 0.0)
  {
    v28 = 0.25;
  }

  *(a1 + 708) = v28;
  *(a1 + 712) = a8;
  v29 = *(a1 + 48);
  *(a1 + 560) = 1065353216;
  *(a1 + 568) = v29;
  BET3FLT__MFVSyn__mc2mlsa(a1, *(a1 + 728), *(a1 + 384));
  MFVSyn__postFilter(a1, *(a1 + 728), *(a1 + 384));
  v_equ(*(a1 + 728), *(a1 + 384), *(a1 + 200) + 1);
  BET3FLT__MFVSyn__constructExcitationShapingFilter(a1, *(a1 + 712));
  if (*(a1 + 600) || (v30 = vabds_f32(*(a1 + 704), *(a1 + 744)), v30 >= BET3FLT__wave_t__convertFromTpToF0((a1 + 32), 60.0)))
  {
    *(a1 + 744) = *(a1 + 704);
  }

  v31 = vcvtps_s32_f32(v27);
  v32 = *(a1 + 208);
  *(a1 + 84) = (v32 + 1) >> 1;
  if (*(a1 + 244))
  {
    v33 = *(a1 + 240);
    if ((v33 & 0x80000000) == 0)
    {
      v34 = 1.0 / (1 << *(a1 + 244));
      v35 = *(a1 + 728);
      v36 = *(a1 + 768);
      v37 = *(a1 + 224);
      v38 = v33 + 1;
      do
      {
        v39 = *v35++;
        v40 = v39;
        v41 = *v36++;
        *v37++ = v34 * (v40 - v41);
        --v38;
      }

      while (v38);
    }
  }

  else
  {
    v42 = *(a1 + 240);
    if ((v42 & 0x80000000) == 0)
    {
      v43 = v32 / v31;
      v44 = *(a1 + 728);
      v45 = *(a1 + 768);
      v46 = *(a1 + 224);
      v47 = v42 + 1;
      do
      {
        v48 = *v44++;
        v49 = v48;
        v50 = *v45++;
        *v46++ = v43 * (v49 - v50);
        --v47;
      }

      while (v47);
    }
  }

  v_equ(*(a1 + 184), *(a1 + 768), *(a1 + 200) + 1);
  v51 = *(a1 + 784);
  if (v51 >= 1)
  {
    v52 = *(a1 + 440);
    v53 = *(a1 + 416);
    if (v51 <= v31)
    {
      v_equ(v52, v53, v51);
      BET3FLT__MFVSyn__mlsa_filter(a1, *(a1 + 440), *(a1 + 496), *(a1 + 784));
    }

    else
    {
      v_equ(v52, v53, v31);
      BET3FLT__MFVSyn__mlsa_filter(a1, *(a1 + 440), *(a1 + 496), v31);
      v_equ(*(a1 + 416), (*(a1 + 416) + 4 * v31), *(a1 + 784) - v31);
    }
  }

  for (i = *(a1 + 784); i < v31; *(a1 + 784) = i)
  {
    v55 = i / v31;
    v56 = *(a1 + 704);
    if (*(a1 + 76) < 4u)
    {
      v57 = *(a1 + 708);
    }

    else
    {
      v56 = ((1.0 - v55) * *(a1 + 744)) + (v55 * v56);
      v57 = ((1.0 - v55) * *(a1 + 748)) + (v55 * *(a1 + 708));
    }

    v64 = 0.0;
    rand_num((a1 + 88), &v64, 1, 1.0);
    v58 = (v56 * (1.0 - (v57 * v64)) + 0.5);
    if (*(a1 + 36) > v58)
    {
      v58 = *(a1 + 36);
    }

    if (v58 >= *(a1 + 40))
    {
      v59 = *(a1 + 40);
    }

    else
    {
      v59 = v58;
    }

    if (*(a1 + 74))
    {
      MFVSyn__filterExcitationWithShapingFilterFast(a1, v59, a1 + 432, v55);
    }

    else
    {
      MFVSyn__filterExcitationWithShapingFilterHQ(a1, v59, *(a1 + 604), a1 + 432, v56, v55, a7);
    }

    v60 = *(a1 + 784);
    v61 = v60 + v59;
    if (v60 + v59 >= v31)
    {
      v61 = v31;
    }

    BET3FLT__MFVSyn__mlsa_filter(a1, *(a1 + 440), *(a1 + 496) + 4 * v60, v61 - v60);
    v62 = *(a1 + 784);
    i = v62 + v59;
    if (v62 + v59 > v31)
    {
      v_equ(*(a1 + 416), (*(a1 + 440) + 4 * (v31 - v62)), v59 - (v31 - v62));
      i = *(a1 + 784) + v59;
    }
  }

  *(a1 + 556) = *(a1 + 552);
  *(a1 + 564) = *(a1 + 560);
  *(a1 + 572) = *(a1 + 568);
  *(a1 + 752) = *(a1 + 712);
  *(a1 + 744) = *(a1 + 704);
  v_equ(*(a1 + 768), *(a1 + 728), *(a1 + 200) + 1);
  if (*(a1 + 73))
  {
    MFVSyn__disperse(a1, a1 + 488, 0, v31);
  }

  *(a1 + 784) -= v31;
  *a3 = v31;
  *a4 = *(a1 + 496);
  return 0;
}

uint64_t *BET3FLT__rand31pmc_seedi(uint64_t *result, unint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  *result = v2;
  return result;
}

float rand31pmc_ranf(unint64_t *a1)
{
  v1 = ((1101463552 * (*a1 >> 16)) & 0x7FFF0000) + 16807 * *a1 + ((16807 * (*a1 >> 16)) >> 15);
  if (v1 >> 31)
  {
    v1 -= 0x7FFFFFFFLL;
  }

  *a1 = v1;
  return v1;
}

uint64_t BET3FLT__MFVSyn__setVolumeBoost(uint64_t a1, float a2)
{
  if (a2 >= 0.0)
  {
    v3 = a2 == 2.0;
    v2 = a2 >= 2.0;
  }

  else
  {
    v2 = 1;
    v3 = 0;
  }

  if (!v3 && v2)
  {
    return 2164269071;
  }

  result = 0;
  *(a1 + 56) = a2;
  return result;
}

uint64_t BET3FLT__MFVSyn__setMVFBoost(uint64_t a1, float a2)
{
  if (a2 >= 0.0)
  {
    v3 = a2 == 2.0;
    v2 = a2 >= 2.0;
  }

  else
  {
    v2 = 1;
    v3 = 0;
  }

  if (!v3 && v2)
  {
    return 2164269071;
  }

  result = 0;
  *(a1 + 52) = a2;
  return result;
}

uint64_t MFVSyn__setRateTtsEg(uint64_t a1, int a2)
{
  if (a2 >= 400)
  {
    v2 = 400;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= 50)
  {
    v3 = 50;
  }

  else
  {
    v3 = v2;
  }

  if ((a2 - 401) >= 0xFFFFFEA1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2164269071;
  }

  v5 = 100.0 / v3;
  v6 = 0.01;
  if (v5 >= 0.01)
  {
    v6 = 4.0;
    if (v5 <= 4.0)
    {
      v6 = 100.0 / v3;
    }
  }

  *(a1 + 60) = v6;
  return v4;
}

float BET3FLT__MFVSyn__setPitchLevelPercent(uint64_t a1, float result)
{
  if (result >= 50.0 && result <= 200.0)
  {
    result = result / 100.0;
    *(a1 + 64) = result;
  }

  return result;
}

uint64_t *BET3FLT__MFVSyn__construct(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 172) = 0;
  *(a1 + 604) = 0;
  *(a1 + 584) = 0;
  result = BET3FLT__rand_num_init((a1 + 88));
  *(a1 + 224) = 0;
  *(a1 + 184) = 0;
  if (!*(a1 + 74))
  {
    *(a1 + 688) = 0;
    *(a1 + 664) = 0;
    *(a1 + 640) = 0;
    *(a1 + 616) = 0;
  }

  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 152) = 0;
  *(a1 + 496) = 0;
  *(a1 + 464) = 0;
  *(a1 + 440) = 0;
  *(a1 + 416) = 0;
  return result;
}

void *BET3FLT__MFVSyn__deconstruct(uint64_t a1)
{
  BET3FLT__vect_t__deleteVect((a1 + 760));
  BET3FLT__vect_t__deleteVect((a1 + 720));
  BET3FLT__vect_t__deleteVect((a1 + 520));
  BET3FLT__vect_t__deleteVect((a1 + 576));
  BET3FLT__MFVSyn__mlsa_filter_deinit(a1);
  BET3FLT__vect_t__deleteVect((a1 + 176));
  BET3FLT__vect_t__deleteVect((a1 + 216));
  if (!*(a1 + 74))
  {
    BET3FLT__vect_t__deleteVect((a1 + 608));
    BET3FLT__vect_t__deleteVect((a1 + 632));
  }

  BET3FLT__vect_t__deleteVect((a1 + 656));
  BET3FLT__vect_t__deleteVect((a1 + 680));
  BET3FLT__vect_t__deleteVect((a1 + 144));
  BET3FLT__vect_t__deleteVect((a1 + 96));
  BET3FLT__vect_t__deleteVect((a1 + 120));
  BET3FLT__vect_t__deleteVect((a1 + 408));
  BET3FLT__vect_t__deleteVect((a1 + 432));
  BET3FLT__vect_t__deleteVect((a1 + 456));

  return BET3FLT__vect_t__deleteVect((a1 + 488));
}

uint64_t BET3FLT__MFVSyn__init__MVF_Synthesis(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5, int a6, float a7, float a8, float a9)
{
  *a2 = a1;
  v14 = *a3;
  v15 = a3[1];
  *(a2 + 68) = a3[2];
  *(a2 + 52) = v15;
  *(a2 + 36) = v14;
  *(a2 + 200) = a6;
  *(a2 + 204) = a6;
  BET3FLT__wave_t__setSampleRateHz((a2 + 32), a9);
  BET3FLT__MFVSyn__construct(a2);
  *(a2 + 68) = BET3FLT__wave_t__convertFromMsecToTp((a2 + 32), a5);
  if (*(a2 + 74))
  {
    ExcTable = BET3FLT__MFVSyn__loadExcTable(a2, a4);
    if ((ExcTable & 0x80000000) != 0)
    {
      return ExcTable;
    }
  }

  *(a2 + 600) = 0;
  v17 = BET3FLT__wave_t__convertFromF0ToTp((a2 + 32), 250.0);
  *(a2 + 512) = *&v17;
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 520, 4);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v18.i32[0] = 1.0;
  v_set(*(a2 + 528), *(a2 + 540), v18);
  v_scale(*(a2 + 528), *(a2 + 540), *(a2 + 512));
  *(a2 + 544) = 0;
  *(a2 + 168) = BET3FLT__wave_t__sampleRateHz(a2 + 32);
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 576, 5);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  if (*(a2 + 74))
  {
    v19 = *(a2 + 796);
    if (v19 <= *(a2 + 800))
    {
      v19 = *(a2 + 800);
    }
  }

  else
  {
    *(a2 + 808) = 0;
    *(a2 + 8) = 0;
    v19 = 89;
  }

  *(a2 + 172) = v19;
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 176, *(a2 + 200) + 1);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v20 = *(*a2 + 8);
  v21 = *(a2 + 172);
  if (*(a2 + 74))
  {
    ExcTable = BET3FLT__vect_t__createVect(v20, a2 + 656, v21);
    if ((ExcTable & 0x80000000) == 0)
    {
      *(a2 + 672) = 0;
      ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 680, *(a2 + 172));
      if ((ExcTable & 0x80000000) == 0)
      {
        *(a2 + 136) = 0;
        goto LABEL_14;
      }
    }

    return ExcTable;
  }

  ExcTable = BET3FLT__vect_t__createVect(v20, a2 + 608, v21);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 632, *(a2 + 172));
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 656, *(a2 + 172));
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 680, *(a2 + 172));
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  ExcTable = MFVSyn__setDispersion(a2, *(a2 + 168));
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

LABEL_14:
  *(a2 + 556) = 0;
  *(a2 + 564) = 0;
  *(a2 + 572) = 0;
  *(a2 + 784) = 0;
  v22 = *(a2 + 68);
  *(a2 + 480) = v22;
  v23 = *(a2 + 76);
  if (v23 <= 2)
  {
    if (v23 == 1)
    {
      v25 = *(a2 + 200) >> 2;
      if (v25 <= 1)
      {
        v25 = 1;
      }

      *(a2 + 240) = v25;
      *(a2 + 244) = 1;
      *(a2 + 208) = v22 >> 1;
      *(a2 + 80) = 0;
      goto LABEL_37;
    }

    if (v23 == 2)
    {
      v24 = *(a2 + 200);
      if (v24 >= 24)
      {
        v25 = v24 >> 1;
      }

      else
      {
        v25 = 12;
      }

      *(a2 + 240) = v25;
      *(a2 + 244) = 0;
      v26 = v22 >> 2;
      if (v26 >= 16)
      {
        v26 = 16;
      }

      *(a2 + 208) = v26;
      *(a2 + 80) = 1;
LABEL_37:
      v27 = 3;
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  if (v23 != 3)
  {
    if (v23 == 4)
    {
      v25 = *(a2 + 200);
      *(a2 + 240) = v25;
      *(a2 + 244) = 0;
      *(a2 + 208) = 1;
      *(a2 + 80) = 3;
LABEL_33:
      v27 = 5;
      goto LABEL_39;
    }

LABEL_32:
    v25 = *(a2 + 240);
    goto LABEL_33;
  }

  v25 = *(a2 + 200);
  *(a2 + 240) = v25;
  *(a2 + 244) = 0;
  *(a2 + 208) = 1;
  *(a2 + 80) = 2;
  v27 = 4;
LABEL_39:
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 216, v25 + 1);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  ExcTable = BET3FLT__MFVSyn__mlsa_filter_init(a2, v27, a7, a8);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  if (*(a2 + 1628) == 0.0)
  {
    *(a2 + 80) = 0;
  }

  ExcTable = MFVSyn__init__postFilter(a2);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v28 = *(a2 + 172);
  if (v28 <= 2 * *(a2 + 40))
  {
    v28 = 2 * *(a2 + 40);
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 432, 2 * v28);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v29 = *(a2 + 172);
  if (v29 <= *(a2 + 40))
  {
    v29 = *(a2 + 40);
  }

  v30 = *(a2 + 480) <= v29 ? v29 : *(a2 + 480);
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 408, v30);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v31 = *(a2 + 172);
  if (v31 <= 2 * *(a2 + 40))
  {
    v31 = 2 * *(a2 + 40);
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 456, 2 * v31);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v32 = *(a2 + 40);
  if (v32 <= *(a2 + 480))
  {
    v32 = *(a2 + 480);
  }

  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 488, *(a2 + 136) + v32 + 1);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  v33 = *(a2 + 512);
  *(a2 + 744) = v33;
  *(a2 + 752) = v33;
  ExcTable = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 760, *(a2 + 200) + 1);
  if ((ExcTable & 0x80000000) != 0)
  {
    return ExcTable;
  }

  Vect = BET3FLT__vect_t__createVect(*(*a2 + 8), a2 + 720, *(a2 + 200) + 1);
  if ((Vect & 0x80000000) == 0)
  {
    BET3FLT__MFVSyn__mc2mlsa(a2, *(a2 + 768), *(a2 + 768));
    *(a2 + 748) = 0;
  }

  return Vect;
}

uint64_t BET3FLT__MFVSyn__reset__MVF_Synthesis(uint64_t a1)
{
  if (!a1)
  {
    return 2164269063;
  }

  BET3FLT__rand_num_init((a1 + 88));
  *(a1 + 784) = 0;
  *(a1 + 604) = 0;
  *(a1 + 556) = 0;
  v_zap(*(a1 + 128), *(a1 + 140));
  v_zap(*(a1 + 1656), *(a1 + 1668));
  v_zap(*(a1 + 384), *(a1 + 396));
  *(a1 + 744) = *(a1 + 512);
  *(a1 + 752) = 0;
  v_zap(*(a1 + 768), *(a1 + 776));
  BET3FLT__MFVSyn__mc2mlsa(a1, *(a1 + 768), *(a1 + 768));
  v_zap(*(a1 + 440), *(a1 + 452));
  v_zap(*(a1 + 416), *(a1 + 428));
  v_zap(*(a1 + 664), *(a1 + 676));
  v_zap(*(a1 + 688), *(a1 + 700));
  v_zap(*(a1 + 464), *(a1 + 476));
  v_zap(*(a1 + 224), *(a1 + 236));
  v2.i32[0] = 1.0;
  v_set(*(a1 + 528), *(a1 + 540), v2);
  v_scale(*(a1 + 528), *(a1 + 540), *(a1 + 512));
  *(a1 + 544) = 0;
  v_zap(*(a1 + 584), *(a1 + 596));
  result = 0;
  *(a1 + 552) = 0;
  *(a1 + 568) = 0;
  *(a1 + 560) = 0;
  return result;
}

void MFVSyn__deinit__MVF_Synthesis(void *a1)
{
  BET3FLT__MFVSyn__releaseExcTable(a1);
  MFVSyn__deinit__postFilter(a1);
  BET3FLT__MFVSyn__deconstruct(a1);

  bzero(a1, 0x6B8uLL);
}

uint64_t MFVSyn__disperse(uint64_t a1, uint64_t a2, int a3, signed int a4)
{
  v8 = *(a1 + 160);
  v_equ((*(a1 + 104) + 4 * v8), (*(a2 + 8) + 4 * a3), a4);
  v_equ(*(a1 + 104), *(a1 + 128), v8);
  v_equ(*(a1 + 128), (*(a1 + 104) + 4 * a4), v8);
  v9 = *(a1 + 104) + 4 * v8;
  v10 = *(a1 + 152);
  v11 = *(a2 + 8) + 4 * a3;

  return zerflt(v9, v10, v11, v8, a4);
}

uint64_t MFVSyn__setDispersion(uint64_t a1, int a2)
{
  v3 = &dispersion_22kHz;
  if (a2 == 22050)
  {
    v4 = 179;
  }

  else
  {
    v3 = &dispersion_16kHz;
    v4 = 129;
  }

  if (a2 == 11025)
  {
    v5 = &dispersion_8kHz;
  }

  else
  {
    v5 = v3;
  }

  if (a2 == 11025)
  {
    v4 = 65;
  }

  if (a2 == 8000)
  {
    v6 = &dispersion_8kHz;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 8000)
  {
    v7 = 65;
  }

  else
  {
    v7 = v4;
  }

  result = BET3FLT__vect_t__createVect(*(*a1 + 8), a1 + 144, v7);
  if ((result & 0x80000000) == 0)
  {
    v_equ(*(a1 + 152), v6, v7);
    v9 = *(a1 + 40);
    if (v9 <= v7)
    {
      v9 = v7;
    }

    result = BET3FLT__vect_t__createVect(*(*a1 + 8), a1 + 96, v9 + 5 * v7);
    if ((result & 0x80000000) == 0)
    {
      v10 = *(*a1 + 8);

      return BET3FLT__vect_t__createVect(v10, a1 + 120, v7);
    }
  }

  return result;
}

void *MFVSyn__pickLowPassFilter(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = *(a1 + 24);
  v8 = (a2 + 8);
  v9 = *(a2 + 16);
  v_zap(*(a2 + 8), *(a2 + 20));
  v11 = *(a3 + 8);
  v10 = (a3 + 8);
  result = v_zap(v11, *(v10 + 3));
  v13 = ceilf(a4 / 250.0) * 250.0;
  if (v13 < 1000.0)
  {
    goto LABEL_4;
  }

  v14 = *(a1 + 168);
  if (vcvtd_n_f64_s32(v14, 1uLL) + -1000.0 < v13)
  {
    v10 = v8;
LABEL_4:
    *(*v10 + (v9 >> 1)) = 1065353216;
    return result;
  }

  v15 = v7 - 1;
  v16 = *(a1 + 24);
  v17 = *(a1 + 16);
  if (v16 < 1)
  {
LABEL_10:
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = v13 / v14;
    v20 = (v17 + 20);
    while (*v20 < v19)
    {
      ++v18;
      v20 += 10;
      if (v16 == v18)
      {
        goto LABEL_10;
      }
    }
  }

  v_equ(*v8, *(v17 + 40 * v18), *(v17 + 40 * v18 + 16));
  v21 = *(a1 + 24);
  v22 = *(a1 + 16);
  if (v21 >= 1)
  {
    v23 = 0;
    v24 = (v22 + 20);
    while (*v24 < (0.5 - (v13 / *(a1 + 168))))
    {
      ++v23;
      v24 += 10;
      if (v21 == v23)
      {
        goto LABEL_17;
      }
    }

    v15 = v23;
  }

LABEL_17:
  result = v_equ(*v10, *(v22 + 40 * v15), *(v22 + 40 * v15 + 16));
  v25 = *(*(a1 + 16) + 40 * v15 + 16);
  if (v25 >= 1)
  {
    v26 = *v10;
    v27 = 1.0;
    do
    {
      *v26 = v27 * *v26;
      ++v26;
      if (v27 == 1.0)
      {
        v27 = -1.0;
      }

      else
      {
        v27 = 1.0;
      }

      --v25;
    }

    while (v25);
  }

  return result;
}

void MFVSyn__lowPassFilterCoeffGenerator(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6)
{
  v11 = (a2 + 8);
  v12 = *(a2 + 16);
  v13 = (v12 >> 1);
  v_zap(*(a2 + 8), *(a2 + 20));
  v15 = *(a3 + 8);
  v14 = (a3 + 8);
  v_zap(v15, *(v14 + 3));
  if (a4 <= 600.0)
  {
    goto LABEL_14;
  }

  v16 = *(a1 + 168);
  if ((v16 / 2 - 600) <= a4)
  {
    v14 = v11;
LABEL_14:
    *(*v14 + 4 * v13) = 1065353216;
    return;
  }

  if (v12 >= 1)
  {
    v17 = 0;
    v18 = a4 / v16;
    v19 = a5;
    v20 = (v18 * 6.2832);
    v21 = *v11;
    do
    {
      v22 = (v12 >> 1);
      v23 = v20 / 3.14159265 * v19;
      if (v13 != v17)
      {
        v23 = sin(v20 * (v17 - v13)) * (1.0 / ((v17 - v13) * 3.14159265) * v19);
        v22 = v17;
      }

      v24 = v23;
      *(v21 + 4 * v22) = v24;
      ++v17;
    }

    while (v12 != v17);
    v25 = 0;
    v26 = v18 * -6.28318531 + 3.14159265;
    v27 = a6;
    v28 = v26;
    v29 = (v26 / 3.1416) * a6;
    v30 = *v14;
    do
    {
      v31 = (v12 >> 1);
      v32 = v29;
      if (v13 != v25)
      {
        v33 = pow(-1.0, v25) * v27;
        v32 = v33 * (sin(v28 * (v25 - v13)) * (1.0 / ((v25 - v13) * 3.1416)));
        v31 = v25;
      }

      *(v30 + 4 * v31) = v32;
      ++v25;
    }

    while (v12 != v25);
  }
}

void MFVSyn__fillExcPulse(uint64_t a1, uint64_t a2, int a3, int a4, float a5, float a6)
{
  v11 = *(a1 + 72);
  if (*(a1 + 72))
  {
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        vect_t__fillZero(a2);
        **(a2 + 8) = sqrtf(a5);
      }

      return;
    }

    v13 = a6;
    if (a6 > 1.0)
    {
      v13 = 1.0;
    }

    if (v13 >= 0.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    vect_t__fillZero(a2);
    if (a4)
    {
      v15 = 1.0 - v14;
      if (v15 >= 0.1)
      {
        if (v15 > 0.8)
        {
          v15 = 0.8;
        }
      }

      else
      {
        v15 = 0.3;
      }

      v28 = sqrt(a5);
      v29 = v28;
      v30 = *(a2 + 8);
      *v30 = v29;
      v31 = v29 + 0.0;
      if (a3 >= 2)
      {
        v32 = v30 + 1;
        v33 = *v30;
        v34 = a3 - 1;
        do
        {
          v33 = v15 * v33;
          *v32++ = v33;
          v31 = v31 + v33;
          --v34;
        }

        while (v34);
      }

      v35 = v28 / v31;
      v_scale(v30, a3, v35);
      return;
    }

    v25 = *(a2 + 8);
    v27 = *(a1 + 44) * 1.25 + *(a1 + 44) * 1.25;
    v26 = (a1 + 88);
    goto LABEL_21;
  }

  vect_t__fillZero(a2);
  if (a6 <= 0.3)
  {
    v25 = *(a2 + 8);
    v26 = (a1 + 88);
    v27 = 2.25;
LABEL_21:

    rand_num(v26, v25, a3, v27);
    return;
  }

  v16 = sqrt(a5);
  v17 = v16;
  v18 = *(a2 + 8);
  *v18 = v17;
  v19 = v17 + 0.0;
  if (a3 >= 2)
  {
    v20 = fmin((1.0 - a6) * 10.0, 1.0);
    v21 = 1;
    do
    {
      v36 = 0.0;
      rand_num((a1 + 88), &v36, 1, 2.0);
      v22 = v17 * 0.4;
      v23 = v22 * (v36 * 0.1 + 1.0);
      *(*(a2 + 8) + v21 * 4) = v23;
      rand_num((a1 + 88), &v36, 1, 2.0);
      v17 = v22 * ((v20 * v36) + 1.0);
      v18 = *(a2 + 8);
      v19 = v19 + v18[v21++];
    }

    while (a3 != v21);
  }

  v24 = v16 / v19;
  v_scale(v18, a3, v24);
}

float *MFVSyn__filterExcitationWithShapingFilterHQ(uint64_t a1, signed int a2, int a3, uint64_t a4, float a5, float a6, float a7)
{
  v13 = *(a1 + 552);
  if (v13 > 0.0)
  {
    v14 = *(a1 + 556);
    if (v14 > 0.0)
    {
      v13 = ((1.0 - a6) * v14) + (a6 * v13);
    }
  }

  if (*(a1 + 8))
  {
    MFVSyn__pickLowPassFilter(a1, a1 + 608, a1 + 632, v13);
  }

  else
  {
    v15 = ((1.0 - a6) * *(a1 + 564)) + (a6 * *(a1 + 560));
    v16 = ((1.0 - a6) * *(a1 + 572)) + (a6 * *(a1 + 568));
    if (v13 > 0.0)
    {
      v17 = (v13 / BET3FLT__wave_t__convertFromTpToF0((a1 + 32), a5));
      v18 = BET3FLT__wave_t__convertFromTpToF0((a1 + 32), a5) * v17;
      v13 = v18 + (BET3FLT__wave_t__convertFromTpToF0((a1 + 32), a5) * 0.5);
    }

    MFVSyn__lowPassFilterCoeffGenerator(a1, a1 + 608, a1 + 632, v13, v15, v16);
  }

  vect_t__mulByHanning(a1 + 608);
  vect_t__mulByHanning(a1 + 632);
  v_zap(*(a4 + 8), *(a4 + 20));
  v_zap(*(a1 + 464), *(a1 + 476));
  MFVSyn__fillExcPulse(a1, a4, a2, a3, a5, a7);
  v_equ((*(a1 + 464) + 4 * *(a1 + 172)), *(a4 + 8), a2);
  v_equ(*(a1 + 464), *(a1 + 664), *(a1 + 172));
  v_equ(*(a1 + 664), (*(a1 + 464) + 4 * a2), *(a1 + 172));
  v19 = *(a1 + 464) + 4 * *(a1 + 172);
  zerflt(v19, *(a1 + 616), v19, *(a1 + 624), a2);
  v_equ(*(a4 + 8), (*(a1 + 464) + 4 * *(a1 + 172)), a2);
  v_zap(*(a1 + 464), *(a1 + 476));
  rand_num((a1 + 88), (*(a1 + 464) + 4 * *(a1 + 172)), a2, *(a1 + 44) * 1.15);
  v_equ(*(a1 + 464), *(a1 + 688), *(a1 + 172));
  v_equ(*(a1 + 688), (*(a1 + 464) + 4 * a2), *(a1 + 172));
  v20 = *(a1 + 464) + 4 * *(a1 + 172);
  zerflt(v20, *(a1 + 640), v20, *(a1 + 648), a2);
  v_equ(*(a1 + 464), (*(a1 + 464) + 4 * *(a1 + 172)), a2);
  v_add(*(a4 + 8), *(a1 + 464), a2);
  v21 = *(a4 + 8);
  v22 = *(a1 + 56);

  return v_scale(v21, a2, v22);
}

float BET3FLT__MFVSyn__mc2mlsa(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 200);
  result = *(a1 + 1624);
  *(a3 + 4 * v3) = *(a2 + 4 * v3);
  if (v3 >= 1)
  {
    result = -result;
    v5 = *(a3 + 4 * v3);
    v6 = v3 - 1;
    do
    {
      v5 = *(a2 + 4 * v6) + (result * v5);
      *(a3 + 4 * v6) = v5;
      v7 = v6-- + 1;
    }

    while (v7 > 1);
  }

  return result;
}

void MFVSyn__postFilter(uint64_t a1, float *a2, float *a3)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    v7 = 1.0;
    if (v3 != 1)
    {
      v_equ(*(a1 + 264), a2, *(a1 + 200) + 1);
      MFVSyn__freqt__postFilter(a1);
      MFVSyn__c2ir__postFilter(a1);
      v8 = *(a1 + 400);
      if (v8 < 1)
      {
        v7 = 0.0;
      }

      else
      {
        v9 = *(a1 + 312);
        v10 = 0.0;
        do
        {
          v11 = *v9++;
          v10 = v10 + (v11 * v11);
          --v8;
        }

        while (v8);
        v7 = v10;
      }
    }

    a3[1] = a3[1] - (*(a1 + 1632) * a2[2]);
    v12 = *(a1 + 200);
    if (v12 > 1)
    {
      v13 = a3 + 2;
      v14 = v12 - 1;
      do
      {
        *v13 = *v13 * (*(a1 + 1628) + 1.0);
        ++v13;
        --v14;
      }

      while (v14);
    }

    if (*(a1 + 80) >= 2u)
    {
      v15 = *(a1 + 1624);
      v16 = *(a1 + 264);
      v17 = a3[v12];
      *(v16 + 4 * v12) = v17;
      if (v12 >= 1)
      {
        v18 = v12 - 1;
        do
        {
          v19 = a3[v18];
          *(v16 + 4 * v18) = v19 + (v15 * v17);
          v20 = v18-- + 1;
          v17 = v19;
        }

        while (v20 > 1);
      }

      MFVSyn__freqt__postFilter(a1);
      MFVSyn__c2ir__postFilter(a1);
      v21 = *(a1 + 400);
      if (v21 < 1)
      {
        v25 = 0.0;
      }

      else
      {
        v22 = *(a1 + 312);
        v23 = 0.0;
        do
        {
          v24 = *v22++;
          v23 = v23 + (v24 * v24);
          --v21;
        }

        while (v21);
        v25 = v23;
      }

      v26 = *a3;
      v27 = log(v7);
      v28 = log(v25);
      *a3 = v26 + ((v27 - v28) * 0.5);
    }
  }
}

uint64_t MFVSyn__init__postFilter(_DWORD *a1)
{
  result = BET3FLT__vect_t__createVect(*(*a1 + 8), (a1 + 94), a1[50] + 1);
  if ((result & 0x80000000) == 0)
  {
    v3 = a1[20];
    if (v3 >= 2)
    {
      v4 = v3 == 2 ? 32 : 64;
      a1[100] = v4;
      result = BET3FLT__vect_t__createVect(*(*a1 + 8), (a1 + 70), v4);
      if ((result & 0x80000000) == 0)
      {
        result = BET3FLT__vect_t__createVect(*(*a1 + 8), (a1 + 64), a1[50] + 1);
        if ((result & 0x80000000) == 0)
        {
          result = BET3FLT__vect_t__createVect(*(*a1 + 8), (a1 + 76), a1[100]);
          if ((result & 0x80000000) == 0)
          {
            result = BET3FLT__vect_t__createVect(*(*a1 + 8), (a1 + 82), a1[100]);
            if ((result & 0x80000000) == 0)
            {
              v5 = *(*a1 + 8);
              v6 = a1[100];

              return BET3FLT__vect_t__createVect(v5, (a1 + 88), v6);
            }
          }
        }
      }
    }
  }

  return result;
}

void *MFVSyn__deinit__postFilter(uint64_t a1)
{
  if (*(a1 + 80) >= 2u)
  {
    BET3FLT__vect_t__deleteVect((a1 + 280));
    BET3FLT__vect_t__deleteVect((a1 + 256));
    BET3FLT__vect_t__deleteVect((a1 + 304));
    BET3FLT__vect_t__deleteVect((a1 + 328));
    BET3FLT__vect_t__deleteVect((a1 + 352));
  }

  return BET3FLT__vect_t__deleteVect((a1 + 376));
}

void BET3FLT__MFVSyn__mlsa_filter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 184);
    v64 = *(a1 + 224);
    v6 = *(a1 + 1644);
    v7 = *(a1 + 1656);
    v61 = v6 + 1;
    v8 = *(a1 + 200);
    v9 = 8 * (v6 + 1);
    v10 = v7 + v9;
    v11 = a1 + 1688;
    v12 = (v8 + 1);
    v60 = a4;
    v13 = v12 - 2;
    v14 = v7 + v9 + 12;
    v15 = v7 + v9 + 4 * v12;
    v59 = v7 + v9 + 4;
    do
    {
      v66 = v4;
      v16 = *(a2 + 4 * v4);
      v17 = exp(*v5);
      v18 = fminf(fmaxf(v16 * v17, -32768.0), 32767.0);
      if (v6 <= 0)
      {
        *(v7 + 4 * v61) = v18;
        v32 = 0.0;
        v30 = v18 + 0.0;
        v31 = (v10 + 4 * *(v11 + 4 * v61));
      }

      else
      {
        v19 = *(a1 + 1624);
        v20 = *(a1 + 1672);
        v21 = 0.0;
        v22 = 4 * v6 + 4 * (v6 + 1) - 4;
        v23 = v6;
        v24 = *(a1 + 1680);
        do
        {
          v25 = (v19 * *(v7 + 4 * v23)) + (v20 * *(v7 + v22));
          *(v7 + 4 * v23) = v25;
          v26 = v25 * v5[1];
          *(v7 + v22 + 4) = v26;
          v27 = v26 * *(v24 + 4 * v23);
          v28 = -v27;
          if (v23)
          {
            v28 = v27;
          }

          v18 = v18 + v28;
          v21 = v21 + v27;
          v22 -= 4;
          v29 = v23-- > 1;
        }

        while (v29);
        *(v7 + 4 * v61) = v18;
        v30 = v21 + v18;
        v31 = (v10 + 4 * *(v11 + 4 * v61));
        v32 = 0.0;
        v33 = v6;
        do
        {
          v34 = &v31[v33];
          v35 = *(v34 - 1);
          v36 = *(v11 + 4 * v33);
          v37 = (v10 + 4 * v36);
          v38 = (v19 * v37[1]) + (v20 * v35);
          *v37 = v35;
          v37[1] = v38;
          v39 = 0.0;
          if (v8 > 1)
          {
            v40 = v37[2];
            v41 = *(v59 + 4 * v36);
            v42 = v13;
            v43 = v5 + 2;
            v44 = (v14 + 4 * v36);
            do
            {
              v45 = *v44;
              v41 = v40 + (v19 * (*v44 - v41));
              *(v44 - 1) = v41;
              v46 = *v43++;
              v39 = v39 + (v41 * v46);
              ++v44;
              v40 = v45;
              --v42;
            }

            while (v42);
          }

          if (v8 >= 1)
          {
            v47 = (v15 + 4 * v36);
            v48 = v8 + 2;
            v49 = v47;
            do
            {
              v50 = *--v49;
              *v47 = v50;
              --v48;
              v47 = v49;
            }

            while (v48 > 2);
          }

          *v34 = v39;
          v51 = v39 * *(v24 + 4 * v33);
          v52 = -v51;
          if (v33)
          {
            v52 = v51;
          }

          v30 = v30 + v52;
          v32 = v32 + v51;
          v29 = v33-- <= 1;
        }

        while (!v29);
      }

      *v31 = v30;
      *(a3 + 4 * v66) = fminf(fmaxf(v32 + v30, -32768.0), 32767.0);
      if (v64)
      {
        v53 = *(a1 + 84) - 1;
        *(a1 + 84) = v53;
        if (!v53)
        {
          v54 = *(a1 + 240);
          if ((v54 & 0x80000000) == 0)
          {
            v55 = v54 + 1;
            v56 = v5;
            v57 = v64;
            do
            {
              v58 = *v57++;
              *v56 = *v56 + v58;
              ++v56;
              --v55;
            }

            while (v55);
          }

          *(a1 + 84) = *(a1 + 208);
        }
      }

      v4 = v66 + 1;
    }

    while (v66 + 1 != v60);
  }
}

uint64_t BET3FLT__MFVSyn__mlsa_filter_init(uint64_t a1, int a2, float a3, float a4)
{
  *(a1 + 1624) = a3;
  *(a1 + 1628) = a4;
  v4 = *(a1 + 200);
  if (v4 < 4)
  {
    return 0;
  }

  *(a1 + 1644) = a2;
  Vect = BET3FLT__vect_t__createVect(*(*a1 + 8), a1 + 1648, (v4 + 5) * a2 + 3);
  if ((Vect & 0x80000000) == 0)
  {
    v_zap(*(a1 + 1656), *(a1 + 1668));
    v7 = *(a1 + 1624);
    *(a1 + 1636) = -v7;
    *(a1 + 1632) = v7 * *(a1 + 1628);
    v8 = 1.0 - (v7 * v7);
    *(a1 + 1672) = v8;
    *(a1 + 1676) = v8;
    v9 = *(a1 + 1644);
    *(a1 + 1680) = &g_pade + 24 * v9;
    if (v9 >= -1)
    {
      v10 = 0;
      v11 = (v9 + 1);
      v12 = *(a1 + 200) + 2;
      v13 = v11 & ~(v11 >> 31);
      v14 = vdupq_n_s64(v11);
      v15 = vaddq_s64(v14, xmmword_1C382F9A0);
      v16 = vaddq_s64(v14, xmmword_1C378AF40);
      v17 = vdupq_n_s64(v13);
      v18 = (a1 + 4 * v11 + 1688);
      v19.i64[0] = -1;
      v19.i64[1] = -1;
      v20 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v21 = vdupq_n_s64(v10);
        v22 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_1C378AF00)));
        v23 = vaddq_s64(v16, v19);
        if (vuzp1_s16(v22, *v15.i8).u8[0])
        {
          *v18 = v12 * v23.i32[0];
        }

        if (vuzp1_s16(v22, *&v15).i8[2])
        {
          *(v18 - 1) = v12 * v23.i32[2];
        }

        v24 = vorrq_s8(v21, xmmword_1C378AEF0);
        v25 = vaddq_s64(v15, v19);
        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v17, v24))).i32[1])
        {
          *(v18 - 2) = v12 * v25.i32[0];
          *(v18 - 3) = v12 * v25.i32[2];
        }

        v10 += 4;
        v15 = vaddq_s64(v15, v20);
        v16 = vaddq_s64(v16, v20);
        v18 -= 4;
      }

      while (((v13 + 4) & 0x1FFFFFFFCLL) != v10);
    }
  }

  return Vect;
}

void *MFVSyn__freqt__postFilter(uint64_t a1)
{
  v2 = *(a1 + 1636);
  v3 = *(a1 + 1676);
  v4 = *(a1 + 200);
  v5 = *(a1 + 400);
  v6 = *(a1 + 264);
  v7 = *(a1 + 288);
  if (v5 >= 1)
  {
    bzero(*(a1 + 360), 4 * v5);
  }

  if (v4 < 0)
  {
    v9 = *(a1 + 360);
  }

  else
  {
    v8 = -v4;
    v9 = *(a1 + 360);
    v10 = *(a1 + 336);
    do
    {
      v11 = v8;
      v12 = *v9;
      *v10 = *v9;
      *v9 = *(v6 + 4 * -v8) + (v2 * v12);
      v13 = v9[1];
      v10[1] = v13;
      v9[1] = (v2 * v13) + (v3 * *v10);
      if (v5 >= 3)
      {
        v14 = v5 - 2;
        v15 = v9 + 2;
        v16 = v10 + 2;
        do
        {
          v17 = *v15;
          *v16 = *v15;
          *v15 = *(v16 - 1) + (v2 * (v17 - *(v15 - 1)));
          ++v15;
          ++v16;
          --v14;
        }

        while (v14);
      }

      v8 = v11 + 1;
    }

    while (v11);
  }

  return v_equ(v7, v9, v5);
}

float MFVSyn__c2ir__postFilter(uint64_t a1)
{
  v1 = *(a1 + 400);
  v2 = *(a1 + 288);
  v3 = *(a1 + 312);
  result = exp(*v2);
  *v3 = result;
  if (v1 >= 2)
  {
    v5 = 1;
    v6 = v3;
    do
    {
      v7 = 0;
      v8 = 0.0;
      v9 = v6;
      do
      {
        v10 = *v9--;
        v8 = v8 + ((v2[v7 + 1] * (v7 + 1)) * v10);
        ++v7;
      }

      while (v5 != v7);
      result = v8 * g_oneOver[v5];
      v3[v5++] = result;
      ++v6;
    }

    while (v5 != v1);
  }

  return result;
}

float v_add(float *a1, float *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *a2++;
      result = v5 + *a1;
      *a1++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

double v_sum(float *a1, int a2)
{
  if (a2 < 1)
  {
    return 0.0;
  }

  v2 = a2;
  result = 0.0;
  do
  {
    v4 = *a1++;
    *&result = *&result + v4;
    --v2;
  }

  while (v2);
  return result;
}

float *v_scale(float *result, int a2, float a3)
{
  if (a3 != 1.0 && a2 >= 1)
  {
    v4 = a2;
    v5 = result;
    do
    {
      *v5 = *v5 * a3;
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t v_set(uint64_t result, int a2, int16x4_t a3)
{
  if (a2 >= 1)
  {
    v3 = (a2 + 3) & 0xFFFFFFFC;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C378AEF0;
    v6 = xmmword_1C378AF00;
    v7 = (result + 8);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, a3).u8[0])
      {
        *(v7 - 2) = a3.i32[0];
      }

      if (vuzp1_s16(v9, a3).i8[2])
      {
        *(v7 - 1) = a3.i32[0];
      }

      if (vuzp1_s16(a3, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a3.i32[0];
        v7[1] = a3.i32[0];
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

void *v_zap(void *a1, int a2)
{
  if (a2 >= 1)
  {
    bzero(a1, 4 * a2);
  }

  return a1;
}

uint64_t zerflt(uint64_t result, float *a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    v6 = result + 4 * a5 - 4;
    do
    {
      v7 = 0.0;
      if (a4 >= 1)
      {
        v8 = a4;
        v9 = a2;
        v10 = v6;
        do
        {
          v11 = *v10--;
          v12 = v11;
          v13 = *v9++;
          v7 = v7 + (v12 * v13);
          --v8;
        }

        while (v8);
      }

      *(a3 + 4 * (v5 - 1)) = v7;
      v6 -= 4;
    }

    while (v5-- > 1);
  }

  return result;
}

double BET3FLT__wave_t__convertFromF0ToTp(float *a1, float a2)
{
  if (a2 == 0.0)
  {
    return 0.0;
  }

  *&result = (1.0 / a2) * *a1;
  return result;
}

float *BET3FLT__wave_t__setSampleRateHz(float *result, float a2)
{
  if (result)
  {
    if (a2 > 0.0)
    {
      *result = a2;
    }
  }

  return result;
}

double wave_t__convertFromF0ToTp__SR(float a1, float a2)
{
  if (a2 == 0.0)
  {
    return 0.0;
  }

  result = 1.0 / a2 * a1;
  *&result = result;
  return result;
}

uint64_t BET3FLT__MFVSyn__loadExcTable(uint64_t a1, uint64_t a2)
{
  v32[300] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  *(a1 + 792) = v4;
  v5 = *(a2 + 52);
  *(a1 + 796) = v5;
  *(a1 + 798) = *(a2 + 54);
  v6 = *(a2 + 56);
  *(a1 + 800) = v6;
  *(a1 + 802) = *(a2 + 58);
  *(a1 + 804) = *(a2 + 60);
  *(a1 + 806) = *(a2 + 62);
  v7 = heap_Alloc(*(*a1 + 8), 4 * ((v6 + v5) * v4));
  *(a1 + 808) = v7;
  v8 = *(a1 + 792);
  if (v8 > 1)
  {
    v9 = 4 * *(a1 + 796);
    v10 = v7 + v9;
    v11 = (a1 + 832);
    v12 = v8 - 1;
    do
    {
      *v11 = v10;
      v11 += 3;
      v10 += v9;
      --v12;
    }

    while (v12);
  }

  if (v8 >= 1)
  {
    v13 = (a2 + 64);
    v14 = a1 + 808;
    v15 = 4 * *(a1 + 796);
    v16 = 4 * *(a1 + 800);
    v17 = (a1 + 816);
    v18 = v8;
    do
    {
      *v17 = *(a1 + 808 + 24 * (v8 - 1)) + v15;
      v17 += 3;
      v15 += v16;
      --v18;
    }

    while (v18);
    v19 = 0;
    v20 = *(a1 + 796);
    do
    {
      __memcpy_chk();
      if (v20)
      {
        for (i = 0; i != v20; ++i)
        {
          v22 = *&v32[i];
          *(*(v14 + 24 * v19) + 4 * i) = v22;
        }
      }

      v23 = &v13[v20];
      v24 = *(a1 + 800);
      __memcpy_chk();
      if (v24)
      {
        for (j = 0; j != v24; ++j)
        {
          v26 = *&v32[j];
          *(*(v14 + 24 * v19 + 8) + 4 * j) = v26;
        }
      }

      v27 = &v23[v24];
      v28 = *v27;
      v13 = v27 + 1;
      v29 = v28;
      *(v14 + 24 * v19++ + 16) = v29;
    }

    while (v19 != v8);
  }

  v30 = *MEMORY[0x1E69E9840];
  return 0;
}

void *BET3FLT__MFVSyn__releaseExcTable(void *result)
{
  v1 = result[101];
  if (v1)
  {
    v2 = result;
    result = heap_Free(*(*result + 8), v1);
    v2[101] = 0;
  }

  return result;
}

uint64_t BET3FXD__LoadTreesFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v35 = 0;
  v10 = *a4;
  if (a4[4] - v10 >= 8 && *(*(a4 + 1) + v10) == 48)
  {
    *a4 = v10 + 2;
    v13 = a2 + 2 * a3;
    v14 = a3;
    if (BET3FLT__xfread_BET3((v13 + 184), 2u, 1, a4) == 1 && BET3FLT__xfread_BET3(&v35, 2u, 1, a4) == 1 && BET3FLT__xfread_BET3((a2 + 2 * v14), 2u, 1, a4) == 1)
    {
      v15 = BET3FLT__xfread2ptr_BET3((a2 + 8 * v14 + 24), 1u, v35, a4);
      if (v15 == v35)
      {
        if (*a4)
        {
          ++*a4;
        }

        v16 = heap_Calloc(*(v9 + 8), 16, *(v13 + 184));
        v22 = a2 + 104;
        *(a2 + 104 + 8 * v14) = v16;
        if (!v16)
        {
          v33 = *(a5 + 8 * v14 + 144);
          BET3FXD__log_select_Error(v9, 55000, "LoadTreesFile : out of memory for type %s\n", v17, v18, v19, v20, v21);
          return 2229280778;
        }

        if (!*(v13 + 184))
        {
          return 0;
        }

        v23 = 0;
        v24 = 0;
        while (BET3FLT__xfread_BET3((v16 + v23), 2u, 1, a4) == 1)
        {
          if (BET3FLT__xfread_BET3((*(v22 + 8 * v14) + v23 + 2), 2u, 1, a4) != 1)
          {
            break;
          }

          v25 = BET3FLT__xfread2ptr_BET3((*(v22 + 8 * v14) + v23 + 8), 2u, 3 * *(*(v22 + 8 * v14) + v23 + 2), a4);
          v16 = *(v22 + 8 * v14);
          if (v25 != 3 * *(v16 + v23 + 2))
          {
            break;
          }

          v26 = 0;
          ++v24;
          v23 += 16;
          if (v24 >= *(v13 + 184))
          {
            return v26;
          }
        }

        v26 = 2229280772;
        v34 = *(a5 + 8 * v14 + 144);
        v27 = "LoadTreesFile : corrupt tree nodes for type %s, state %u\n";
        a1 = v9;
        v28 = 55015;
      }

      else
      {
        v26 = 2229280772;
        v32 = *(a5 + 8 * v14 + 144);
        v27 = "LoadTreesFile : corrupt tree questions for type %s\n";
        a1 = v9;
        v28 = 55013;
      }
    }

    else
    {
      v26 = 2229280772;
      v31 = *(a5 + 8 * v14 + 144);
      v27 = "LoadTreesFile : corrupt tree header for type %s\n";
      a1 = v9;
      v28 = 55012;
    }
  }

  else
  {
    v26 = 2229280772;
    v30 = *(a5 + 8 * a3 + 144);
    v27 = "LoadTreesFile : invalid tree data version for type %s\n";
    v28 = 55011;
  }

  BET3FXD__log_select_Error(a1, v28, v27, a4, a5, a6, a7, a8);
  return v26;
}

uint64_t BET3FXD__select_bet3_FeatureExtractObjOpen(_WORD *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = 0;
  *a5 = 0;
  inited = InitRsrcFunction(a1, a2, &v16);
  if ((inited & 0x80000000) == 0)
  {
    v9 = heap_Calloc(*(v16 + 8), 1, 24);
    if (v9)
    {
      *v9 = v16;
      v9[1] = a3;
      v9[2] = a4;
      *a5 = v9;
    }

    else
    {
      log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0, v10, v11, v12, v13, v15);
      return 2229280778;
    }
  }

  return inited;
}

uint64_t BET3FXD__select_bet3_FeatureExtractProcessStart(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  __s1 = 0;
  bzero(a5, 0xE48uLL);
  *a5 = a2;
  if ((paramc_ParamGetStr(*(*a1 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && !strcmp(__s1, "bet3"))
  {
    (*(a1[2] + 272))(a3, a4, 128, 3, 0, 0);
  }

  return usextract_ProcessStart(*a1, "SELECT_BET3", a1[2], a3, a4, a5, a6);
}

uint64_t BET3FXD__select_bet3_FeatureExtractProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, uint64_t a10, uint64_t *a11, _DWORD *a12)
{
  v15 = a1;
  v111 = *MEMORY[0x1E69E9840];
  v16 = *a1;
  if (a11)
  {
    v17 = a12 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  v106 = v18;
  if (!v17)
  {
    *a11 = 0;
    *a12 = 0;
  }

  v19 = 0;
  v20 = 0;
  v21 = *(a10 + 10);
  do
  {
    if (*(*a10 + 2748 + v19) == 1)
    {
      ++v20;
    }

    ++v19;
  }

  while (v19 != 218);
  v22 = heap_Calloc(*(v16 + 8), (v20 * v21), 1);
  if (!v22)
  {
    v45 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0, v23, v24, v25, v26, v99);
    if (a12)
    {
      goto LABEL_133;
    }

    goto LABEL_137;
  }

  v27 = v22;
  v103 = a2;
  v107 = v15;
  v28 = 0;
  v104 = a10 + 16;
  do
  {
    v29 = *a10;
    v30 = *(*a10 + v28 + 2748);
    if (!*(*a10 + v28 + 2748))
    {
      goto LABEL_20;
    }

    if (v30 == 2)
    {
      v31 = heap_Calloc(*(v16 + 8), v21, 2);
      *(a10 + 8 * v28 + 1760) = v31;
      if (!v31)
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (v30 == 1)
      {
        *(a10 + 8 * v28 + 16) = v27;
        v27 += v21;
        goto LABEL_20;
      }

      if (v28 <= 0x33u)
      {
        switch(v28)
        {
          case 0x18u:
            v38 = heap_Calloc(*(v16 + 8), v21, 8);
            *(a10 + 3552) = v38;
            if (!v38)
            {
              goto LABEL_130;
            }

            break;
          case 0x2Eu:
            v43 = heap_Calloc(*(v16 + 8), v21, 9);
            *(a10 + 3560) = v43;
            if (!v43)
            {
              goto LABEL_130;
            }

            break;
          case 0x33u:
            v34 = *(v29 + 2966);
            if (v34)
            {
              v35 = heap_Calloc(*(v16 + 8), (v34 * v21), 4);
              *(a10 + 3568) = v35;
              if (!v35)
              {
                goto LABEL_130;
              }
            }

            break;
          default:
            goto LABEL_42;
        }
      }

      else if (v28 > 0x35u)
      {
        if (v28 == 54)
        {
          v41 = *(v29 + 3360);
          if (v41)
          {
            v42 = heap_Calloc(*(v16 + 8), (v41 * v21), 4);
            *(a10 + 3592) = v42;
            if (!v42)
            {
              goto LABEL_130;
            }
          }
        }

        else
        {
          if (v28 != 56)
          {
LABEL_42:
            log_OutPublic(*(*v15 + 32), "SELECT_BET3", 55007, "%s%u", v23, v24, v25, v26, "feature");
            goto LABEL_20;
          }

          v36 = *(v29 + 2966);
          if (v36)
          {
            v37 = heap_Calloc(*(v16 + 8), (v36 * v21), 1);
            *(a10 + 3600) = v37;
            if (!v37)
            {
              goto LABEL_130;
            }
          }
        }
      }

      else if (v28 == 52)
      {
        v39 = *(v29 + 2966);
        if (v39)
        {
          v40 = heap_Calloc(*(v16 + 8), (v39 * v21), 4);
          *(a10 + 3576) = v40;
          if (!v40)
          {
            goto LABEL_130;
          }
        }
      }

      else
      {
        if (v28 != 53)
        {
          goto LABEL_42;
        }

        v32 = *(v29 + 3360);
        if (v32)
        {
          v33 = heap_Calloc(*(v16 + 8), (v32 * v21), 4);
          *(a10 + 3584) = v33;
          if (!v33)
          {
            goto LABEL_130;
          }
        }
      }
    }

LABEL_20:
    ++v28;
  }

  while (v28 != 218);
  v44 = *(*a10 + 3578);
  if (v44 >= 4)
  {
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, "Invalid number of states per phoneme", v23, v24, v25, v26, "%s%u");
    v45 = -2065686513;
    goto LABEL_131;
  }

  v46 = heap_Calloc(*(v16 + 8), v44 * v21, 4);
  *(a10 + 3608) = v46;
  if (!v46)
  {
    goto LABEL_130;
  }

  if (*(*a10 + 3578) * v21)
  {
    memset(v46, 255, 4 * *(*a10 + 3578) * v21);
  }

  GenericFeatureLayers = usextract_allocateGenericFeatureLayers(*v15, "SELECT_BET3", a10, v21);
  if (GenericFeatureLayers < 0)
  {
    v45 = GenericFeatureLayers;
    if (a12)
    {
      goto LABEL_133;
    }

    goto LABEL_137;
  }

  v45 = usextract_Process(*v15, "SELECT_BET3", v15[2], a3, a4, a10, v48, v49);
  if (v45 < 0)
  {
    goto LABEL_132;
  }

  v101 = a3;
  v102 = a4;
  if (*(a10 + 3504))
  {
    v50 = *a10;
    v51 = **(*a10 + 3336);
    if (v51)
    {
      v52 = 0;
      v53 = 1;
      do
      {
        if (!strncmp(v51, "INNO_", 5uLL))
        {
          v55 = atoi(v51 + 5) + 79;
          if (v55 <= 0x5E)
          {
            *(v104 + 8 * v55) = *(*(a10 + 3504) + 8 * v52);
          }
        }

        else
        {
          Index = usextract_getIndex(*(*(v50 + 3344) + 8 * v52), "FEATIDX", "");
          if (Index == -1)
          {
            v50 = *a10;
            v56 = *(*(*a10 + 3336) + 8 * v52);
            if (!strcmp(v56, "POS"))
            {
              *(a10 + 504) = *(*(a10 + 3504) + 8 * v52);
            }

            else if (!strcmp(v56, "PHR"))
            {
              *(a10 + 512) = *(*(a10 + 3504) + 8 * v52);
            }
          }

          else
          {
            v50 = *a10;
            *(v104 + 8 * *(*(*(*a10 + 3352) + 8 * v52) + Index)) = *(*(a10 + 3504) + 8 * v52);
          }
        }

        v52 = v53;
        v51 = *(*(v50 + 3336) + 8 * v53++);
      }

      while (v51);
    }
  }

  v105 = *(a10 + 10);
  v57 = v105 & ~(v105 >> 31);
  if (BET3FLT__log_select_GetLogLevel(*(v16 + 32)) >= 6)
  {
    LH_itoa(0x4Eu, v110, 0xAu);
    for (i = 0; i != 218; ++i)
    {
      if (i > 3u)
      {
        if (i == 4)
        {
          v59 = "application/x-realspeak-usplosives;version=4.0";
LABEL_84:
          v60 = *(*a10 + i + 2748);
          if (v60 == 2)
          {
            log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, v59, *(a10 + 8 * i + 1760), 2 * v57, 0);
          }

          else if (v60 == 1)
          {
            log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, v59, *(a10 + 8 * i + 16), v57, 0);
          }

          continue;
        }

        if (i == 5)
        {
          v59 = "application/x-realspeak-usmarkers-u16;version=4.0";
          goto LABEL_84;
        }
      }

      else if (i == 2)
      {
        v109 = 5;
        v108 = 0;
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, "text/x-realspeak-usphonemes;charset=tts", &v109, 1u, 0);
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, "text/x-realspeak-usphonemes;charset=tts", *(a10 + 8 * i + 16), v57, 0);
        log_OutBinary(*(v16 + 32), "SELECT_BET3", 99, 0, v110, "text/x-realspeak-usphonemes;charset=tts", &v108, 1u, 0);
      }

      else if (i == 3)
      {
        v59 = "application/x-realspeak-usdurs;version=4.0";
        goto LABEL_84;
      }
    }
  }

  v61 = *(a10 + 3520);
  if (v61)
  {
    v62 = 0;
    for (j = 0; j < v61; ++j)
    {
      if (*(*(a10 + 3512) + v62) == 25)
      {
        v110[0] = 0;
        paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v110);
        v64 = *(*(a10 + 3512) + v62 + 24);
        *a9 = v64;
        v45 = paramc_ParamSetInt(*(v16 + 40), "waitfactor", v64);
        if (v45 < 0)
        {
          v100 = *a9;
          log_OutPublic(*(v16 + 32), "SELECT_BET3", 55009, "%s%s%s%d%s%x", v65, v66, v67, v68, "parameter");
          goto LABEL_147;
        }

        v61 = *(a10 + 3520);
      }

      v62 += 32;
    }
  }

  featextract_adjustSilAudioOrder(a10);
  if (!v106)
  {
    goto LABEL_110;
  }

  v69 = *(a10 + 3520);
  v70 = v69 + v57;
  *a12 = v70;
  if (!(v69 + v57))
  {
    goto LABEL_110;
  }

  v71 = heap_Calloc(*(v16 + 8), v70, 32);
  *a11 = v71;
  a3 = v101;
  a4 = v102;
  if (!v71 || (v72 = heap_Calloc(*(v16 + 8), *(a10 + 10), 2)) == 0)
  {
LABEL_130:
    v45 = -2065686518;
    log_OutPublic(*(v16 + 32), "SELECT_BET3", 55000, 0, v23, v24, v25, v26, v99);
    goto LABEL_131;
  }

  v73 = v72;
  memcpy(v72, *(a10 + 1800), 2 * *(a10 + 10));
  if (*a12)
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    while (v77 < *(a10 + 3520))
    {
      if (v76 >= v57)
      {
        v83 = (*a11 + v74);
        v84 = (*(a10 + 3512) + 32 * v77);
        v85 = v84[1];
        *v83 = *v84;
        v83[1] = v85;
        ++v77;
        goto LABEL_108;
      }

      v78 = v76;
      if (!*(v73 + 2 * v76))
      {
        goto LABEL_106;
      }

      v79 = (*a11 + v74);
      v80 = (*(a10 + 3512) + 32 * v77);
      v81 = v80[1];
      *v79 = *v80;
      v79[1] = v81;
      ++v77;
      --*(v73 + 2 * v76);
LABEL_108:
      ++v75;
      v74 += 32;
      if (v75 >= *a12)
      {
        goto LABEL_109;
      }
    }

    v78 = v76;
LABEL_106:
    v82 = (*a11 + v74);
    *v82 = 33;
    v82[6] = *(*(a10 + 32) + v78);
    ++v76;
    goto LABEL_108;
  }

LABEL_109:
  heap_Free(*(v16 + 8), v73);
LABEL_110:
  if (v105 >= 1)
  {
    v86 = 0;
    v87 = v103 + 7356;
    v88 = (v105 & ~(v105 >> 31)) - 1;
    while (1)
    {
      v89 = *(a10 + 248);
      if (!*(v89 + v86))
      {
        *(v89 + v86) = -1;
      }

      v90 = *(a10 + 192);
      if (*(*(a10 + 32) + v86) == 35)
      {
        v91 = 1;
      }

      else
      {
        v91 = 2 * *(v90 + v86);
      }

      *(v90 + v86) = v91;
      v92 = *(a10 + 32);
      v93 = *(v92 + v86);
      if (v88 == v86)
      {
        if (v93 == 35)
        {
          v110[0] = 0;
          paramc_ParamGetUInt(*(v16 + 40), "finalsentencefound", v110);
          v94 = 0;
          v95 = *(a10 + 1784);
          if (v110[0] != 1)
          {
            v94 = *(v95 + 2 * v86) + 200 * *a9;
          }

          if (v94 <= 1)
          {
            v94 = 1;
          }

          if (v94 >= 0xFFFF)
          {
            LOWORD(v94) = -1;
          }

          *(v95 + 2 * v86) = v94;
          v92 = *(a10 + 32);
        }

        *(v92 + v86) = *(v87 + *(v92 + v86));
        if (v88 == v86)
        {
          break;
        }
      }

      else
      {
        *(v92 + v86) = *(v87 + v93);
      }

      ++v86;
    }
  }

LABEL_147:
  a3 = v101;
  a4 = v102;
LABEL_131:
  v15 = v107;
LABEL_132:
  if (a12)
  {
LABEL_133:
    if (a11 && v45 < 0 && *a11)
    {
      heap_Free(*(v16 + 8), *a11);
      *a11 = 0;
      *a12 = 0;
    }
  }

LABEL_137:
  LODWORD(result) = (*(v15[2] + 64))(a3, a4);
  if (result >= 0 || v45 <= -1)
  {
    result = v45;
  }

  else
  {
    result = result;
  }

  v98 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BET3FXD__select_bet3_FeatureExtractProcessEnd(uint64_t *a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = *a1;
  v5 = usextract_ProcessEnd(*a1, "SELECT_BET3", a2);
  usextract_freeGenericFeatureLayers(*a1, "SELECT_BET3", a2);
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = *(*a2 + v10 + 2748);
    if (!*(*a2 + v10 + 2748))
    {
      goto LABEL_12;
    }

    if (v12 == 2)
    {
      v14 = a2[v10 + 220];
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_11:
      heap_Free(*(v4 + 8), v14);
      goto LABEL_12;
    }

    if (v12 == 1)
    {
      if (v11)
      {
        v13 = a2[v10 + 2];
        if (v13)
        {
          heap_Free(*(v4 + 8), v13);
        }

        v11 = 0;
      }
    }

    else if (v10 <= 0x33u)
    {
      switch(v10)
      {
        case 0x18u:
          v14 = a2[444];
          if (v14)
          {
            goto LABEL_11;
          }

          break;
        case 0x2Eu:
          v14 = a2[445];
          if (v14)
          {
            goto LABEL_11;
          }

          break;
        case 0x33u:
          v14 = a2[446];
          if (v14)
          {
            goto LABEL_11;
          }

          break;
        default:
          goto LABEL_31;
      }
    }

    else if (v10 > 0x35u)
    {
      if (v10 == 54)
      {
        v14 = a2[449];
        if (v14)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v10 != 56)
        {
LABEL_31:
          log_OutPublic(*(*a1 + 32), "SELECT_BET3", 55010, "%s%u", v6, v7, v8, v9, "feature");
          goto LABEL_12;
        }

        v14 = a2[450];
        if (v14)
        {
          goto LABEL_11;
        }
      }
    }

    else if (v10 == 52)
    {
      v14 = a2[447];
      if (v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v10 != 53)
      {
        goto LABEL_31;
      }

      v14 = a2[448];
      if (v14)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    ++v10;
  }

  while (v10 != 218);
  v15 = a2[451];
  if (v15)
  {
    heap_Free(*(v4 + 8), v15);
  }

  *a2 = 0;
  return v5;
}

uint64_t BET3FXD__mul_Q18_14_Q1_15_to_Q18_14(uint64_t result, int a2)
{
  if (a2 == 0x7FFF)
  {
    return result;
  }

  else
  {
    return ((a2 * result) >> 15);
  }
}

uint64_t BET3FXD__LoadModelFile(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2[a3 + 120])
  {
    result = loadQuantizedDurFile(a1, (a2 + 42), a4, 0xFu);
    if (result)
    {
      return result;
    }

    *a2 = a2[43];
  }

  v13 = a3;
  v14 = &a2[a3];
  if (v14[130])
  {
    v15 = heap_Calloc(*(a1 + 8), (*(a6 + 268) - 1), 4);
    *(a2 + 53) = v15;
    if (!v15)
    {
      return 2229280778;
    }

    result = loadVQQuantizedCepFile(a1, a2 + 196, a4);
    if (result)
    {
      return result;
    }

    *a2 = *(a2 + 199);
    v14[1] = *(a2 + 198) + *(a2 + 198) * *(a2 + 201);
    result = loadCodebookSet(a1, (a2 + 116), a5, 0x10u);
    if (result)
    {
      return result;
    }
  }

  if (!v14[140])
  {
    return 0;
  }

  v16 = a2 + 78;
  v17 = *&a2[2 * v13 + 78];
  if (v17)
  {
    heap_Free(*(a1 + 8), v17);
  }

  v18 = heap_Calloc(*(a1 + 8), 1, 128);
  *&v16[2 * v13] = v18;
  if (!v18)
  {
    return 2229280778;
  }

  v19 = *(a6 + 4 * v13 + 224);
  if (v19 == 2)
  {
    v20 = 3774880;
    v21 = 20;
  }

  else if (v19 == 3)
  {
    v20 = 1310720;
    v21 = 18;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  result = loadQuantizedMsdFile(a1, v18, *a2, a4, v21, v20);
  if (!result)
  {
    v14[1] = *(*&v16[2 * v13] + 8);
  }

  return result;
}

uint64_t BET3FXD__FindDurPDF(uint64_t a1, int *a2, int a3, int a4)
{
  v6 = *(a1 + 8);
  *(a1 + 24) = 0;
  if (*a2 < 1)
  {
    return 0;
  }

  v20[11] = v4;
  v20[12] = v5;
  v11 = 0;
  v12 = 0;
  v13 = v6 - 1;
  while (1)
  {
    v20[0] = 0;
    result = dequantDur((a2 + 42), v13, v11, v20 + 1, v20, 15);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v15 = HIDWORD(v20[0]);
    v16 = BET3FXD__mul_Q18_14_Q1_15_to_Q18_14((SLODWORD(v20[0]) >> 1), a3) + (v15 >> 1);
    if (a2[151])
    {
      if ((v16 & ~(v16 >> 31)) >= 0x3E7F060)
      {
        v12 = 65532000;
      }

      else
      {
        v12 = v16 & ~(v16 >> 31);
      }
    }

    else if (v16 <= 65532000)
    {
      v12 = v16 & ~(v16 >> 31);
    }

    else
    {
      v12 >>= 1;
    }

    v17 = a4 + ((v12 + 0x2000) >> 14);
    v18 = *(a1 + 16) + 4 * v11;
    *(v18 + 8) = v17;
    *(a1 + 24) += v17;
    a4 = (v12 + 0x2000 - (*(v18 + 8) << 14)) >> 14;
    v19 = v11 + 2;
    ++v11;
    if (v19 > *a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t BET3FXD__FindContPDF(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v11 = a1;
  v33 = 0;
  v12 = *a8;
  v13 = *a8 * *(a4 + 396);
  LODWORD(v14) = *(a4 + 402);
  v15 = v13 + v13 * v14;
  if (*(a4 + 396))
  {
    v29 = a3;
    v30 = a8;
    v17 = 0;
    v18 = *(*(a3 + 8 * a1 + 72) + 4 * a2);
    v31 = v15 + 1;
    v32 = v13 + v13 * v14;
    while (1)
    {
      result = dequantEnergy((a4 + 392), a2, v18, v17, &v33 + 1, &v33, 0x10u);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v20 = v17 + v17 * v14 + v15;
      LODWORD(v33) = v33 >> 4;
      v21 = v33;
      HIDWORD(v33) <<= 8;
      *(a6 + 4 * v20) = HIDWORD(v33);
      *(a7 + 4 * v20) = v21;
      LODWORD(v14) = *(a4 + 402);
      if (*(a4 + 402))
      {
        v22 = 0;
        v23 = v31;
        do
        {
          v24 = *(*(a4 + 424) + 4 * v22);
          result = deVQSpectrum((a4 + 392), a4 + 464, a2, v18, v24, v22 - *(*(a4 + 416) + 2 * v24), v17, &v33 + 1, &v33, 0x10u);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v25 = v23 + v17 + v17 * v14;
          LODWORD(v33) = v33 >> 4;
          v26 = v33;
          HIDWORD(v33) <<= 8;
          *(a6 + 4 * v25) = HIDWORD(v33);
          *(a7 + 4 * v25) = v26;
          ++v22;
          v14 = *(a4 + 402);
          ++v23;
        }

        while (v22 < v14);
      }

      ++v17;
      v15 = v32;
      if (v17 >= *(a4 + 396))
      {
        a3 = v29;
        a8 = v30;
        v12 = *v30;
        v11 = a1;
        goto LABEL_11;
      }
    }
  }

  else
  {
    result = 0;
LABEL_11:
    v27 = a3 + 8 * v11;
    *(*(v27 + 152) + 8 * a2) = a6 + 4 * v15;
    *(*(v27 + 232) + 8 * a2) = a7 + 4 * v15;
    *a8 = v12 + 1;
  }

  return result;
}

uint64_t BET3FXD__FindMsdPDF(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = 0;
  v34 = 0;
  v33 = a5 + 224;
  v5 = *(a5 + 224 + 4 * a1);
  if (v5 == 3)
  {
    v6 = 18;
  }

  else
  {
    v6 = 0;
  }

  if (v5 == 2)
  {
    v7 = 20;
  }

  else
  {
    v7 = v6;
  }

  v8 = a4 + 4;
  if (*(a4 + 4 + 4 * a1) < 1)
  {
    return 0;
  }

  v9 = a3;
  v11 = 0;
  v12 = a1;
  v13 = a4 + 312;
  v14 = a2 - 2;
  v32 = *(*(a3 + 8 * a1 + 72) + 4 * a2) - 1;
  v15 = 24 - v7;
  v31 = a3 + 152;
  v30 = v7 - 12;
  v29 = a3 + 232;
  v27 = a5 + 2104;
  v28 = a2 - 2;
  do
  {
    v16 = dequantMsd(*(v13 + 8 * v12), v14, v32, v11, &v35 + 1, &v35, &v34, v7);
    if ((v16 & 0x80000000) != 0)
    {
      break;
    }

    v34 <<= v15;
    *(*(*(v31 + 8 * v12) + 8 * a2) + 4 * v11 + 4) = HIDWORD(v35) << v15;
    if ((*(v33 + 4 * v12) & 0xFFFFFFFE) == 2)
    {
      *(*(*(v29 + 8 * v12) + 8 * a2) + 4 * v11 + 4) = v35 >> v30;
    }

    if (!v11)
    {
      v17 = v7;
      v18 = v13;
      v19 = v8;
      v20 = v9;
      v21 = v34;
      if (*(v33 + 4 * v12) == 2)
      {
        *(*(v20 + 320) + 4 * a2) = v34;
      }

      v22 = BET3FXD__Q10_22_to_Q8_24(*(v27 + 4 * v12));
      v23 = 1 << *(v33 + 4 * v12);
      if (v21 <= v22)
      {
        v9 = v20;
        v24 = *(v20 + 312);
        v25 = *(v24 + a2) & ~v23;
      }

      else
      {
        v9 = v20;
        v24 = *(v20 + 312);
        v25 = *(v24 + a2) | v23;
      }

      *(v24 + a2) = v25;
      v8 = v19;
      v13 = v18;
      v7 = v17;
      v14 = v28;
    }

    ++v11;
  }

  while (v11 < *(v8 + 4 * v12));
  return v16;
}

void BET3FXD__DeInitModelSet(uint64_t a1, void *a2)
{
  v4 = a2[59];
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    a2[59] = 0;
  }

  for (i = 39; i != 49; ++i)
  {
    v6 = a2[i];
    if (v6)
    {
      if (*(v6 + 120))
      {
        heap_Free(*(a1 + 8), *(v6 + 120));
        *(a2[i] + 120) = 0;
        v6 = a2[i];
      }

      heap_Free(*(a1 + 8), v6);
      a2[i] = 0;
    }
  }

  if (*(a2 + 198))
  {
    v7 = 0;
    v8 = 0;
    v9 = a2[54];
    v10 = v9;
    do
    {
      if (v10)
      {
        v11 = *(v10 + v7 + 8);
        if (v11)
        {
          heap_Free(*(a1 + 8), v11);
          v9 = a2[54];
          *(v9 + v7 + 8) = 0;
        }

        v12 = *(v9 + v7 + 24);
        if (v12)
        {
          heap_Free(*(a1 + 8), v12);
          v9 = a2[54];
          *(v9 + v7 + 24) = 0;
        }

        v13 = *(v9 + v7 + 32);
        v10 = v9;
        if (v13)
        {
          heap_Free(*(a1 + 8), v13);
          v9 = a2[54];
          *(v9 + v7 + 32) = 0;
          v10 = v9;
        }
      }

      ++v8;
      v7 += 40;
    }

    while (v8 < 2 * *(a2 + 198));
  }

  v14 = a2[52];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    a2[52] = 0;
  }

  v15 = a2[53];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    a2[53] = 0;
  }

  v16 = a2[54];
  if (v16)
  {
    heap_Free(*(a1 + 8), v16);
    a2[54] = 0;
  }

  v17 = a2[56];
  if (v17)
  {
    a2[56] = v17 + 32;
    heap_Free(*(a1 + 8), v17 + 32);
  }

  bzero(a2, 0x260uLL);
}

uint64_t BET3FXD__InitUttModel(uint64_t a1, char *a2, int *a3, unsigned int a4)
{
  v8 = 2229280778;
  bzero(a2, 0x240uLL);
  *a2 = a1;
  *(a2 + 1) = a3;
  *(a2 + 138) = a4;
  *(a2 + 141) = *a3 * a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 528);
  *(a2 + 68) = v9;
  if (v9)
  {
    v10 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
    *(a2 + 4) = v10;
    if (v10)
    {
      v11 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 1);
      *(a2 + 41) = v11;
      if (v11)
      {
        v12 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
        *(a2 + 42) = v12;
        if (v12)
        {
          v13 = a3[150];
          if (v13 >= 1)
          {
            v14 = 0;
            v15 = a2 + 168;
            v16 = a3;
            do
            {
              if (!v16[120])
              {
                v17 = heap_Calloc(*(a1 + 8), (*a3 * *(a2 + 138)), 4);
                *(v15 - 10) = v17;
                if (!v17)
                {
                  return v8;
                }

                v18 = *(a1 + 8);
                v19 = *(a2 + 138);
                v20 = v16[140] ? BET3FLT__ddcalloc(v18, 2 * v19 * *a3, v16[1] + 1) : heap_Calloc(v18, (2 * v19 * *a3), 8);
                *v15 = v20;
                if (!v20)
                {
                  return v8;
                }

                v15[10] = &v20[*a3 * *(a2 + 138)];
                v13 = a3[150];
              }

              ++v14;
              ++v15;
              ++v16;
            }

            while (v14 < v13);
          }

          v21 = *(a2 + 138);
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = *a3;
            v24 = 152;
            do
            {
              v25 = *(a2 + 68);
              v26 = v25 + 528 * v22;
              *v26 = v22;
              v27 = v22 * v23;
              v28 = *(a2 + 41) + v22 * v23;
              v29 = *(a2 + 42) + 4 * v22 * v23;
              *(v26 + 16) = *(a2 + 4) + 4 * v22 * v23 - 8;
              *(v26 + 312) = v28 - 2;
              *(v26 + 320) = v29 - 8;
              if (v13 >= 1)
              {
                v30 = (v25 + v24);
                v31 = a2 + 168;
                v32 = a3 + 120;
                v33 = v13;
                do
                {
                  if (!*v32++)
                  {
                    v35 = *(v31 - 10) + 4 * v27;
                    *(v30 - 10) = v35;
                    v36 = *v31 + 8 * v27;
                    *v30 = v36;
                    v37 = v31[10] + 8 * v27;
                    *(v30 - 10) = v35 - 8;
                    *v30 = v36 - 16;
                    v30[10] = v37 - 16;
                  }

                  ++v30;
                  ++v31;
                  --v33;
                }

                while (v33);
              }

              ++v22;
              v24 += 528;
            }

            while (v22 != v21);
          }

          return 0;
        }
      }
    }
  }

  return v8;
}

void *BET3FXD__DeInitUttModel(void *result)
{
  v1 = result;
  if (*result && result[68])
  {
    v2 = result[1];
    v3 = result[4];
    if (v3)
    {
      heap_Free(*(*result + 8), v3);
      v1[4] = 0;
    }

    v4 = v1[41];
    if (v4)
    {
      heap_Free(*(*v1 + 8), v4);
      v1[41] = 0;
    }

    v5 = v1[42];
    if (v5)
    {
      heap_Free(*(*v1 + 8), v5);
      v1[42] = 0;
    }

    if (*(v2 + 600) >= 1)
    {
      v6 = 0;
      do
      {
        if (!*(v2 + 480 + 4 * v6))
        {
          v7 = &v1[v6];
          v8 = v7[11];
          if (v8)
          {
            heap_Free(*(*v1 + 8), v8);
            v7[11] = 0;
          }

          v9 = v7[21];
          if (v9)
          {
            heap_Free(*(*v1 + 8), v9);
            v7[21] = 0;
          }
        }

        ++v6;
      }

      while (v6 < *(v2 + 600));
    }

    result = heap_Free(*(*v1 + 8), v1[68]);
  }

  v1[68] = 0;
  *(v1 + 138) = 0;
  *v1 = 0;
  return result;
}

void *BET3FXD__DeInitMSDUttModel(void *result, int a2)
{
  v2 = result[1];
  if (!*(v2 + 4 * a2 + 480))
  {
    v3 = result;
    v4 = a2;
    v5 = result + 11;
    v6 = result[a2 + 11];
    if (v6)
    {
      result = heap_Free(*(*result + 8), v6);
      v5[v4] = 0;
    }

    v7 = v3 + 21;
    v8 = v3[v4 + 21];
    if (v8)
    {
      if (*(v2 + 4 * v4 + 560))
      {
        *v8 += 4;
        v9 = *(v3 + 138);
        v10 = *v3[1];
        result = BET3FLT__dd_free(*(*v3 + 8), v7[v4]);
      }

      else
      {
        result = heap_Free(*(*v3 + 8), v8);
      }

      v7[v4] = 0;
    }
  }

  return result;
}

uint64_t BET3FXD__InitModelSet(int a1, char *a2, uint64_t a3)
{
  bzero(a2, 0x260uLL);
  v5 = *(a3 + 132);
  *(a2 + 150) = v5;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = a3 + 4 * v6;
      *(v7 + 32) = *(v8 + 344);
      v9 = a2 + 480;
      if (v6)
      {
        if (*(v8 + 2144))
        {
          v9 = &a2[4 * v6 + 560];
        }

        else
        {
          v9 = v7 + 520;
        }
      }

      *v9 = 1;
      ++v6;
      v7 += 4;
    }

    while (v6 < *(a2 + 150));
  }

  return 0;
}

uint64_t BET3FXD__meancpy(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 1)
  {
    v2 = 0;
    LODWORD(v3) = *(result + 20);
    do
    {
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = *(result + 72);
        v6 = *(result + 40);
        do
        {
          *(*(v6 + 8 * v4) + 4 * v2) = *(*(v5 + 8 * v4) + 4 * v2);
          ++v4;
          v3 = *(result + 20);
        }

        while (v4 < v3);
        v1 = *(result + 16);
      }

      ++v2;
    }

    while (v2 < v1);
  }

  return result;
}

uint64_t BET3FXD__ConstW_Calc_R_and_r(uint64_t a1, int a2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = v4 + a2;
  v7 = a2 + 2 * v4;
  v8 = v3[1];
  v9 = *(v8 + 4 * v6);
  v10 = *(*v3 + 4 * a2);
  v11 = v2[1];
  v12 = *(*v3 + 4 * v7);
  v14 = *(a1 + 96);
  v13 = *(a1 + 104);
  v15 = (0xFFFFFFFE00000200 * v12) >> 32;
  v16 = *(v8 + 4 * v7);
  v17 = *(v11 + 4 * v7);
  *v13 = ((((-2147483392 * v9) >> 32) * *(v11 + 4 * v6)) >> 12) + ((*(*v2 + 4 * a2) * v10) >> 12) + ((v15 * *(*v2 + 4 * v7)) >> 12) + ((v17 * v16) >> 12);
  v18 = *v14;
  *v18 = ((0x3FFFFF * v9) >> 12) + (v10 << 12) + ((67108860 * v12) >> 12) + ((0xFFFFFF * v16) >> 12);
  v18[1] = ((-33554430 * v16) >> 12) + (v15 << 12);
  v18[2] = ((0xFFFFFF * v16) >> 12) + ((-4194303 * v9) >> 12);
  if (v5 < 3)
  {
    LODWORD(v19) = 1;
  }

  else
  {
    v19 = (v5 - 1);
    v20 = v14 + 1;
    v21 = v13 + 1;
    v22 = v3 + 2;
    v23 = v2 + 2;
    v24 = v19 - 1;
    do
    {
      v25 = *(v8 + 4 * a2);
      v26 = *(v22 - 2);
      v27 = *(v26 + 4 * v6);
      v28 = *(v23 - 2);
      v29 = ((((2147483392 * v27) >> 32) * *(v28 + 4 * v6)) >> 12) + ((*(v11 + 4 * a2) * v25) >> 12);
      v30 = *v22++;
      v8 = v30;
      v31 = *(v30 + 4 * v6);
      v32 = *v23++;
      v11 = v32;
      v33 = *(v26 + 4 * v7);
      v34 = v29 + ((((-2147483392 * v31) >> 32) * *(v32 + 4 * v6)) >> 12) + ((*(v28 + 4 * v7) * v33) >> 12);
      v35 = (0xFFFFFFFE00000200 * v16) >> 32;
      v36 = v34 + ((v35 * v17) >> 12);
      v37 = *(v8 + 4 * v7);
      v17 = *(v32 + 4 * v7);
      *v21++ = v36 + ((v17 * v37) >> 12);
      v38 = *v20++;
      *v38 = ((0x3FFFFF * v31) >> 12) + ((0x3FFFFF * v27) >> 12) + ((67108860 * v16) >> 12) + ((v33 + v25 + v37) << 12);
      v38[1] = ((-33554430 * v37) >> 12) + (v35 << 12);
      v38[2] = ((0xFFFFFF * v37) >> 12) + ((-4194303 * v31) >> 12);
      LODWORD(v16) = v37;
      --v24;
    }

    while (v24);
  }

  v39 = v3[v19];
  v40 = *(v39 + 4 * a2);
  result = v2[v19];
  v42 = 8 * v19 - 8;
  v43 = *(v3 + v42);
  v44 = *(v43 + 4 * v6);
  v45 = *(v43 + 4 * v7);
  v46 = ((((2147483392 * v44) >> 32) * *(*(v2 + v42) + 4 * v6)) >> 12) + ((*(result + 4 * a2) * v40) >> 12) + ((*(*(v2 + v42) + 4 * v7) * v45) >> 12);
  v47 = *(v39 + 4 * v7);
  v13[v19] = v46 + ((((0xFFFFFFFE00000200 * v47) >> 32) * *(result + 4 * v7)) >> 12);
  v48 = v14[v19];
  v48[1] = 0;
  v48[2] = 0;
  *v48 = ((v45 + v40) << 12) + ((0x3FFFFF * v44) >> 12) + ((67108860 * v47) >> 12);
  return result;
}

uint64_t BET3FXD__ConstW_Cholesky(uint64_t result)
{
  v1 = *(result + 96);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = **v1;
  v5 = v4 >> 4;
  if (v4 < 0x10)
  {
    v5 = 1;
  }

  v6 = (*(*v1 + 8) << 16) / v5;
  v7 = 16 * ((v2[2] << 16) / v5);
  v2[1] = 16 * v6;
  v2[2] = v7;
  v8 = v3[1];
  v9 = *v3 - ((((((16 * v6) >> 3) * ((16 * v6) >> 3)) >> 21) * (v4 >> 3)) >> 18);
  *v3 = v9;
  v10 = v8 - (((((v2[2] >> 3) * (v2[1] >> 3)) >> 21) * (*v2 >> 3)) >> 18);
  if (v9 < 0x10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 >> 4;
  }

  v12 = 16 * ((v10 << 16) / v11);
  v13 = 16 * ((v3[2] << 16) / v11);
  v3[1] = v12;
  v3[2] = v13;
  v14 = *(result + 20);
  if (v14 >= 3)
  {
    v15 = (v1 + 16);
    v16 = v14 - 2;
    do
    {
      v18 = *(v15 - 2);
      v17 = *(v15 - 1);
      v20 = *v15++;
      v19 = v20;
      v21 = v20[1];
      v22 = *v20 - (((((v17[1] >> 3) * (v17[1] >> 3)) >> 21) * (*v17 >> 3)) >> 18);
      *v20 = v22;
      v23 = v22 - (((((v18[2] >> 3) * (v18[2] >> 3)) >> 21) * (*v18 >> 3)) >> 18);
      *v20 = v23;
      v24 = v21 - (((((v17[2] >> 3) * (v17[1] >> 3)) >> 21) * (*v17 >> 3)) >> 18);
      if (v23 < 0x10)
      {
        v25 = 1;
      }

      else
      {
        v25 = v23 >> 4;
      }

      v26 = 16 * ((v24 << 16) / v25);
      v27 = 16 * ((v19[2] << 16) / v25);
      v19[1] = v26;
      v19[2] = v27;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t BET3FXD__ConstW_Cholesky_forward(uint64_t result)
{
  v1 = *(result + 96);
  v2 = *(result + 104);
  v3 = *(result + 88);
  v4 = *v2;
  *v3 = *v2;
  v5 = *v1;
  v6 = v2[1] - ((*(*v1 + 8) * v4) >> 24);
  v3[1] = v6;
  v7 = *(result + 20);
  if (v7 >= 3)
  {
    v8 = v3 + 2;
    v9 = v1 + 1;
    v10 = v2 + 2;
    v11 = v7 - 2;
    do
    {
      v13 = *v9++;
      v12 = v13;
      v14 = ((v6 >> 3) * (*(v13 + 8) >> 3)) >> 18;
      v15 = *v10++;
      v6 = v15 - (v14 + (((*(v8 - 2) >> 3) * (*(v5 + 16) >> 3)) >> 18));
      *v8++ = v6;
      v5 = v12;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t BET3FXD__ConstW_Cholesky_backward(uint64_t result, int a2)
{
  v2 = *(result + 88);
  v3 = *(result + 96);
  v4 = 8 * *(result + 20);
  v5 = v4 - 8;
  v6 = **(v3 + v4 - 8);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = (*(v2 + v5) << 24) / v6;
  v8 = *(result + 40);
  *(*(v8 + v5) + 4 * a2) = v7;
  v9 = v4 - 16;
  v10 = *(v3 + v9);
  v12 = *v10;
  v11 = v10[1];
  if (v12 < 0x10)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 >> 4;
  }

  *(*(v8 + v9) + 4 * a2) = 16 * ((*(v2 + v9) << 16) / v13) - ((v11 * v7) >> 24);
  v14 = *(result + 20);
  v15 = __OFSUB__(v14, 3);
  v16 = (v14 - 3);
  if (v16 < 0 == v15)
  {
    v17 = (v8 + 8 * v16 + 16);
    v18 = v17;
    do
    {
      v19 = *(v3 + 8 * v16);
      v20 = *v19 >> 4;
      if (*v19 < 0x10)
      {
        v20 = 1;
      }

      v21 = *--v18;
      *(*(v17 - 2) + 4 * a2) = 16 * ((*(v2 + 8 * v16--) << 16) / v20) - (((v19[1] * *(v21 + 4 * a2)) >> 24) + ((v19[2] * *(*v17 + 4 * a2)) >> 24));
      v17 = v18;
    }

    while (v16 != -1);
  }

  return result;
}

uint64_t BET3FXD__mlpg2(uint64_t a1, int a2)
{
  if (*(a1 + 20) < 2)
  {

    return BET3FXD__meancpy(a1);
  }

  else
  {
    BET3FXD__ConstW_Calc_R_and_r(a1, a2);
    BET3FXD__ConstW_Cholesky(a1);
    BET3FXD__ConstW_Cholesky_forward(a1);

    return BET3FXD__ConstW_Cholesky_backward(a1, a2);
  }
}

uint64_t BET3FXD__log_select_Diag(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3 - 1;
  do
  {
    v4 = *++v3;
  }

  while (v4 == 10);
  return log_VOutText(*(a1 + 32), "SELECT_BET3", (a2 + 2), 0, v3);
}

void *BET3FXD__ddcalloc_64(void *a1, unsigned int a2, int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 8);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 8 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 8 * a3;
            ++v9;
          }

          while (v7 != v9);
        }
      }

      else
      {
        heap_Free(a1, v3);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t BET3FXD__LoadDWinFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v4 = (a2 + 40 * a3);
  if (!*v4)
  {
    return 0;
  }

  v7 = 2229280778;
  v8 = BET3FLT__ddcalloc(*(a1 + 8), *v4, 2);
  *(v4 + 1) = v8;
  if (v8)
  {
    v9 = heap_Calloc(*(a1 + 8), *v4, 8);
    *(v4 + 2) = v9;
    if (v9)
    {
      ***(v4 + 1) = 0;
      **(v4 + 2) = heap_Calloc(*(a1 + 8), 1, 4);
      v10 = **(v4 + 2);
      if (v10)
      {
        *v10 = 1;
        LODWORD(v11) = *v4;
        if (*v4 <= 1)
        {
LABEL_9:
          *(v4 + 3) = 0;
          if (v11 < 1)
          {
            v22 = 0;
          }

          else
          {
            v21 = 0;
            v22 = 0;
            v23 = *(v4 + 1);
            v11 = v11;
            do
            {
              v24 = *v23;
              v25 = **v23;
              if (v22 > v25)
              {
                v4[6] = v25;
                v22 = v25;
              }

              v26 = v24[1];
              if (v21 < v26)
              {
                v4[7] = v26;
                v21 = v26;
              }

              ++v23;
              --v11;
            }

            while (v11);
            if (v22 < v21)
            {
              v7 = 0;
              v4[8] = v21;
              return v7;
            }
          }

          v7 = 0;
          v4[8] = v22;
          return v7;
        }

        v12 = 1;
        v13 = 8;
        while (1)
        {
          v14 = BET3FLT__xfread2ptr_BET3((*(v4 + 2) + v13), 4u, 0xFFFFFFFFLL, a4);
          if (!v14)
          {
            break;
          }

          *(*(v4 + 2) + v13) += 4 * (v14 >> 1);
          v20 = *(*(v4 + 1) + v13);
          *v20 = -(v14 >> 1);
          v20[1] = (v14 & 1) + (v14 >> 1) - 1;
          ++v12;
          v11 = *v4;
          v13 += 8;
          a4 += 6;
          if (v12 >= v11)
          {
            goto LABEL_9;
          }
        }

        BET3FXD__log_select_Error(a1, 55019, "InitDWin: illegal data\n", v15, v16, v17, v18, v19);
        return 2229280772;
      }
    }
  }

  return v7;
}

uint64_t BET3FXD__InitPStreamSM(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (a2 && *(a2 + 24) && *(a1 + 3) == *(a2 + 12) && *(a1 + 5) == *(a2 + 16) && *(a1 + 6) == *(a2 + 20))
  {
    result = 0;
    v6 = *(a2 + 48);
    v8 = *a2;
    v7 = *(a2 + 16);
    *(a1 + 5) = *(a2 + 32);
    *(a1 + 6) = v6;
    *(a1 + 3) = v8;
    *(a1 + 4) = v7;
LABEL_12:
    *(a1 + 14) = 1;
    return result;
  }

  a1[6] = v4;
  v9 = (a1 + 6);
  v10 = *(a1 + 3);
  *(a1 + 14) = 0;
  *(a1 + 15) = v10;
  v11 = *(a1 + 20);
  a1[8] = v11;
  v12 = BET3FLT__ddcalloc(*(v4 + 8), 2 * v11, v10);
  a1[9] = v12;
  if (v12 && (v13 = *(a1 + 6), v14 = *(a1 + 5), a1[10] = &v12[v14], v15 = BET3FXD__ddcalloc_64(*(v4 + 8), v14, v13), (a1[12] = v15) != 0) && (v16 = heap_Calloc(*(v4 + 8), (2 * *(a1 + 5)), 8), (a1[11] = v16) != 0))
  {
    a1[13] = v16 + 8 * *(a1 + 5);
    if (a2)
    {
      BET3FLT__FreeSMatrices(a2);
      result = 0;
      v17 = *v9;
      v18 = *(a1 + 4);
      v19 = *(a1 + 6);
      *(a2 + 32) = *(a1 + 5);
      *(a2 + 48) = v19;
      *a2 = v17;
      *(a2 + 16) = v18;
      goto LABEL_12;
    }

    return 0;
  }

  else
  {
    BET3FLT__FreeSMatrices((a1 + 6));
    return 2229280778;
  }
}

uint64_t BET3FXD__InitPStreamParam(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *(a1 + 6) = (2 * *(a1[4] + 32)) | 1;
  if (a2)
  {
    v5 = *(a2 + 40);
    if (v5)
    {
      if (*(a1 + 5) == *(a2 + 20) && *(a1 + 4) == *(a2 + 16))
      {
        a1[5] = v5;
        v6 = a1 + 1;
LABEL_12:
        result = 0;
        *v6 = 1;
        return result;
      }
    }
  }

  *(a1 + 2) = 0;
  v6 = a1 + 1;
  v7 = BET3FLT__ddcalloc(*(v4 + 8), *(a1 + 5), *(a1 + 4));
  a1[5] = v7;
  if (v7)
  {
    result = 0;
  }

  else
  {
    result = 2229280778;
  }

  if (a2 && v7)
  {
    BET3FLT__FreePStreamParam(a2);
    v9 = *a1;
    v10 = *(a1 + 1);
    v11 = *(a1 + 3);
    *(a2 + 32) = *(a1 + 2);
    *(a2 + 48) = v11;
    *a2 = v9;
    *(a2 + 16) = v10;
    v12 = *(a1 + 4);
    v13 = *(a1 + 5);
    v14 = *(a1 + 6);
    *(a2 + 112) = a1[14];
    *(a2 + 80) = v13;
    *(a2 + 96) = v14;
    *(a2 + 64) = v12;
    goto LABEL_12;
  }

  return result;
}

uint64_t select_bet3_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &ISelect_Bet3_0;
  return result;
}

uint64_t select_bet3_ClassOpen_0(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2229280775;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 25957;
  }

  return result;
}

uint64_t select_bet3_ObjOpen_0(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v5 = 2229280775;
  memset(v52, 0, sizeof(v52));
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v50);
    if ((inited & 0x80000000) != 0)
    {
      v5 = inited;
    }

    else if ((safeh_HandleCheck(a1, a2, 25957, 408) & 0x80000000) != 0)
    {
      v5 = 2229280776;
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      log_OutText(*(v50 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjOpen", v12, v13, v14, v44);
      v15 = heap_Calloc(*(v50 + 8), 1, 6608);
      if (v15)
      {
        v20 = v15;
        *v15 = a3;
        v15[1] = a4;
        v21 = v50;
        v15[2] = v50;
        v15[3] = a1;
        Object = objc_GetObject(*(v21 + 48), "SYNTHSTREAM", &v49);
        if ((Object & 0x80000000) != 0 || (v20[4] = *(v49 + 8), Object = objc_GetObject(*(v50 + 48), "LINGDB", &v49), (Object & 0x80000000) != 0))
        {
          v5 = Object;
          log_OutPublic(*(v20[2] + 32), "SELECT_BET3", 55001, 0, v23, v24, v25, v26, v45);
        }

        else
        {
          v27 = *(v49 + 8);
          v20[5] = v27;
          ObjOpen = BET3FXD__select_bet3_FeatureExtractObjOpen(a3, a4, v20[4], v27, v20 + 7);
          if ((ObjOpen & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          ObjOpen = select_bet3_loc_CreateDataBrkString(v50, v52);
          if ((ObjOpen & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          v29 = v20[3];
          if (!v29 || (v30 = *(v29 + 48)) == 0)
          {
            v30 = *(v20[2] + 48);
          }

          ObjOpen = objc_GetAddRefCountedObject(v30, v52, select_bet3_loc_ObjcVoiceOpen_0, select_bet3_loc_ObjcVoiceClose_0, v50, &v49);
          if ((ObjOpen & 0x80000000) != 0 || (v31 = v50, v32 = *(v49 + 32), v20[6] = v32, ObjOpen = select_bet3_loc_SetSynthParams_0(v31, v32), (ObjOpen & 0x80000000) != 0))
          {
LABEL_27:
            v5 = ObjOpen;
          }

          else
          {
            v33 = *(v50 + 40);
            v47 = v20;
            v46 = xmmword_1F42D7300;
            v48 = xmmword_1F42D7300;
            v34 = paramc_ListenerAdd(v33, "frequencyhz", &v47);
            if ((v34 & 0x80000000) == 0)
            {
              v39 = 0;
              while (1)
              {
                v40 = off_1E81AD848[v39];
                if ((paramc_ParamGetInt(*(v50 + 40), v40, &v51) & 0x80000000) != 0)
                {
                  v51 = dword_1C382FE88[v39];
                  v34 = paramc_ParamSetInt(*(v50 + 40), v40, v51);
                  if ((v34 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                v34 = select_bet3_loc_ParamSet_0(v20, v40, v51);
                if ((v34 & 0x80000000) != 0)
                {
                  break;
                }

                v41 = *(v50 + 40);
                v47 = v20;
                v48 = v46;
                v5 = paramc_ListenerAdd(v41, v40, &v47);
                if ((v5 & 0x80000000) != 0)
                {
                  goto LABEL_32;
                }

                if (++v39 == 3)
                {
                  *a5 = v20;
                  *(a5 + 8) = 25958;
                  goto LABEL_29;
                }
              }
            }

            v5 = v34;
LABEL_32:
            log_OutPublic(*(v20[2] + 32), "SELECT_BET3", 55002, "%s%s", v35, v36, v37, v38, "param");
          }
        }

        *a5 = v20;
        *(a5 + 8) = 25958;
        select_bet3_ObjClose_0(v20, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
      }

      else
      {
        log_OutPublic(*(v50 + 32), "SELECT_BET3", 55000, 0, v16, v17, v18, v19, v45);
        v5 = 2229280778;
      }

LABEL_29:
      log_OutText(*(v50 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjOpen: %x", v36, v37, v38, v5);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t select_bet3_ObjClose_0(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 25958, 6608);
  if (v3 < 0)
  {
    return 2229280776;
  }

  LODWORD(v7) = v3;
  v8 = a1[2];
  log_OutText(*(v8 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjClose", v4, v5, v6, v30);
  v9 = 0;
  v31 = xmmword_1F42D7300;
  do
  {
    v10 = off_1E81AD868[v9];
    v11 = *(v8 + 40);
    v32 = a1;
    v33 = v31;
    v12 = paramc_ListenerRemove(v11, v10, &v32);
    if (v7 > -1 && v12 < 0)
    {
      v7 = v12;
    }

    else
    {
      v7 = v7;
    }

    ++v9;
  }

  while (v9 != 4);
  v14 = a1[6];
  if (v14)
  {
    v15 = a1[3];
    if (!v15 || (v16 = *(v15 + 48)) == 0)
    {
      v16 = *(a1[2] + 48);
    }

    v17 = objc_ReleaseObject(v16, v14);
    a1[6] = 0;
    if (v7 > -1 && v17 < 0)
    {
      v7 = v17;
    }

    else
    {
      v7 = v7;
    }
  }

  v19 = a1[7];
  if (v19)
  {
    ObjClose = BET3FLT__select_bet3_FeatureExtractObjClose(v19);
    if (v7 > -1 && ObjClose < 0)
    {
      v7 = ObjClose;
    }

    else
    {
      v7 = v7;
    }
  }

  if (a1[5])
  {
    v22 = objc_ReleaseObject(*(v8 + 48), "LINGDB");
    if (v7 > -1 && v22 < 0)
    {
      v7 = v22;
    }

    else
    {
      v7 = v7;
    }
  }

  if (a1[4])
  {
    v24 = objc_ReleaseObject(*(v8 + 48), "SYNTHSTREAM");
    if (v7 > -1 && v24 < 0)
    {
      v7 = v24;
    }

    else
    {
      v7 = v7;
    }
  }

  heap_Free(*(v8 + 8), a1);
  log_OutText(*(v8 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjClose: %x", v26, v27, v28, v7);
  return v7;
}

uint64_t select_bet3_ObjReopen_0(void *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  if ((safeh_HandleCheck(a1, a2, 25958, 6608) & 0x80000000) != 0)
  {
    v17 = 2229280776;
  }

  else
  {
    v6 = a1[2];
    log_OutText(*(v6 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjReopen", v3, v4, v5, v20);
    DataBrkString = select_bet3_loc_CreateDataBrkString(v6, v22);
    if ((DataBrkString & 0x80000000) == 0)
    {
      v11 = a1[3];
      if (!v11 || (v12 = *(v11 + 48)) == 0)
      {
        v12 = *(a1[2] + 48);
      }

      DataBrkString = objc_GetAddRefCountedObject(v12, v22, select_bet3_loc_ObjcVoiceOpen_0, select_bet3_loc_ObjcVoiceClose_0, v6, &v21);
      if ((DataBrkString & 0x80000000) == 0)
      {
        v13 = a1[6];
        if (v13)
        {
          v14 = a1[3];
          if (!v14 || (v15 = *(v14 + 48)) == 0)
          {
            v15 = *(a1[2] + 48);
          }

          objc_ReleaseObject(v15, v13);
        }

        v16 = *(v21 + 32);
        a1[6] = v16;
        DataBrkString = select_bet3_loc_SetSynthParams_0(v6, v16);
      }
    }

    v17 = DataBrkString;
    log_OutText(*(v6 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjReopen: %x", v8, v9, v10, DataBrkString);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t select_bet3_ProcessStart_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 25958, 6608) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  synstrmaux_InitStreamOpener(a1 + 72, *(*(a1 + 16) + 32), "SELECT_BET3");
  synstrmaux_RegisterInStream((a1 + 72), "application/x-realspeak-cspp-sptchk;version=4.0", 1, a1 + 928);
  synstrmaux_RegisterInStream((a1 + 72), "application/x-realspeak-cspp-sgt;version=4.0", 1, a1 + 944);
  synstrmaux_RegisterOutStream((a1 + 72), "application/x-realspeak-bet3-speech-frames;version=5.0", a1 + 896);
  synstrmaux_RegisterOutStream((a1 + 72), "application/x-realspeak-markers-pp;version=4.0", a1 + 912);
  v8 = synstrmaux_OpenStreams((a1 + 72), *(a1 + 32), a3, a4);
  if ((v8 & 0x80000000) != 0)
  {
    select_bet3_ProcessEnd_0(a1, a2);
  }

  *(a1 + 6600) = 0;
  return v8;
}

uint64_t select_bet3_Process_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v61 = 0;
  if ((safeh_HandleCheck(a1, a2, 25958, 6608) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  *a5 = 1;
  v9 = *(a1 + 6568);
  if (*(a1 + 4616))
  {
    if (!v9)
    {
      v10 = BET3FXD__ParamGenFrames(a1 + 4616, (*(a1 + 48) + 8112), (a1 + 6568));
      if ((v10 & 0x80000000) != 0)
      {
        v24 = v10;
      }

      else
      {
        v11 = *(a1 + 6576);
        if (!v11)
        {
          goto LABEL_66;
        }

        v12 = *(a1 + 6588);
        v13 = *(a1 + 6584);
        if (v13 <= v12)
        {
          goto LABEL_66;
        }

        v14 = v11 + 32 * v12;
        v15 = *(a1 + 5228);
        v16 = *(a1 + 5232);
        if (v16 >= v15)
        {
          v17 = 0;
          v20 = (v11 + 32 * v12);
        }

        else
        {
          v17 = 0;
          v18 = *(a1 + 6600);
          v19 = v12 + 1;
          v20 = (v11 + 32 * v12);
          do
          {
            if (*v20 == 33)
            {
              v21 = *(a1 + 6596);
              v22 = *(*(a1 + 5216) + 528 * v16 + 24);
              v20[4] = v22;
              *(a1 + 6596) = v22 + v21;
              *(a1 + 5232) = ++v16;
            }

            else
            {
              if (*v20 == 8)
              {
                v18 = v20[6] / *(*(a1 + 48) + 152);
                *(a1 + 6600) = v18;
              }

              v21 = *(a1 + 6596);
              v20[4] = 0;
            }

            if (v18 > v21)
            {
              *(a1 + 6600) = v21;
              v18 = v21;
            }

            v20[3] = v21 - v18;
            v20 += 8;
            ++v17;
            if (v16 >= v15)
            {
              break;
            }
          }

          while (v19++ < v13);
        }

        if (*(a1 + 6568))
        {
          v45 = v17 + v12;
          if (v17 + v12 < v13)
          {
            v46 = *(a1 + 6596);
            v47 = v20 + 4;
            do
            {
              *(v47 - 1) = v46;
              *v47 = 0;
              v47 += 8;
              ++v45;
            }

            while (v45 < v13);
            v17 = v13 - v12;
          }
        }

        if (!v17)
        {
LABEL_66:
          v60 = a1 + 4616;
          v24 = (*(*(a1 + 32) + 104))(*(a1 + 896), *(a1 + 904), &v60, 8);
          if ((v24 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", v53, v54, v55, v56, "contentType");
          }

          else if (*(a1 + 6568))
          {
            ProcessEnd = BET3FXD__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
            if (ProcessEnd >= 0)
            {
              v24 = v24;
            }

            else
            {
              v24 = ProcessEnd;
            }

            v58 = *(a1 + 6576);
            if (v58)
            {
              heap_Free(*(*(a1 + 16) + 8), v58);
              *(a1 + 6576) = 0;
              *(a1 + 6584) = 0;
              *(a1 + 6592) = 0;
            }

            v44 = 1;
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        v48 = (*(*(a1 + 32) + 104))(*(a1 + 912), *(a1 + 920), v14, (32 * v17));
        if ((v48 & 0x80000000) == 0)
        {
          *(a1 + 6588) += v17;
          goto LABEL_66;
        }

        v24 = v48;
        log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", v49, v50, v51, v52, "contentType");
        *(a1 + 6588) += v17;
      }

LABEL_75:
      v44 = 2;
      goto LABEL_76;
    }
  }

  else if (!v9)
  {
    goto LABEL_23;
  }

  BET3FXD__DeInitVStream((a1 + 4616));
  *(a1 + 6568) = 0;
LABEL_23:
  v24 = BET3FXD__select_bet3_FeatureExtractProcessStart(*(a1 + 56), *(a1 + 48) + 9328, a3, a4, (a1 + 960), &v61);
  if ((v24 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55005, "%s%x", v25, v26, v27, v28, "lhError");
  }

  else if (*(a1 + 970) > 1)
  {
    *(a1 + 6588) = 0;
    inited = BET3FXD__InitVStream(*(a1 + 16), (a1 + 4616), (*(a1 + 48) + 128));
    if ((inited & 0x80000000) != 0 || (*(a1 + 4624) = a1 + 960, inited = BET3FXD__LoadVStream(a1 + 4616, *(a1 + 48) + 8112, *(a1 + 48) + 128), (inited & 0x80000000) != 0) || (inited = BET3FXD__select_bet3_FeatureExtractProcess(*(a1 + 56), *(a1 + 48) + 128, a3, a4, *(a1 + 928), *(a1 + 936), *(a1 + 944), *(a1 + 952), (a1 + 64), a1 + 960, (a1 + 6576), (a1 + 6584)), (inited & 0x80000000) != 0))
    {
      v24 = inited;
    }

    else
    {
      v24 = BET3FXD__ParamGenStart(a1 + 4616, (*(a1 + 48) + 8112), *(a1 + 48) + 128);
      if ((v24 & 0x80000000) == 0)
      {
        v44 = 4;
LABEL_76:
        *a5 = v44;
        return v24;
      }
    }

    BET3FXD__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
    BET3FXD__DeInitVStream((a1 + 4616));
  }

  else
  {
    v29 = v61;
    if (v61)
    {
      if (*(a1 + 912))
      {
        if (*(a1 + 4480))
        {
          v30 = *(a1 + 4472);
          v31 = *(a1 + 920);
          LODWORD(v24) = (*(*(a1 + 32) + 104))();
          if ((v24 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", v32, v33, v34, v35, "contentType");
          }
        }
      }

      v36 = synstrmaux_CloseOutStreamsOnly((a1 + 72), *(a1 + 32));
      if (v36 < 0 && v24 > -1)
      {
        LODWORD(v24) = v36;
      }

      v29 = 1;
    }

    *a5 = v29;
    v38 = BET3FXD__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
    if (v38 >= 0 || v24 <= -1)
    {
      v40 = v24;
    }

    else
    {
      v40 = v38;
    }

    v41 = (*(*(a1 + 40) + 64))(a3, a4);
    if (v40 > -1 && v41 < 0)
    {
      return v41;
    }

    else
    {
      return v40;
    }
  }

  return v24;
}

uint64_t select_bet3_ProcessEnd_0(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 25958, 6608) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  BET3FXD__DeInitVStream((a1 + 4616));
  *(a1 + 6568) = 0;
  BET3FXD__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
  v3 = *(a1 + 6576);
  if (v3)
  {
    heap_Free(*(*(a1 + 16) + 8), v3);
    *(a1 + 6576) = 0;
    *(a1 + 6584) = 0;
    *(a1 + 6592) = 0;
  }

  *(a1 + 6596) = 0;
  v4 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 72), v4);
}

uint64_t select_bet3_loc_ObjcVoiceOpen_0(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  __src = 0;
  memset(__dst, 0, 408);
  inited = InitRsrcFunction(a1, a2, &__src);
  if ((inited & 0x80000000) != 0)
  {
    VData = inited;
  }

  else
  {
    memcpy(__dst, __src, 0x198uLL);
    __dst[2] = *(a5 + 32);
    v45 = 0;
    *(a4 + 32) = 0;
    v11 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "FIX3", 1031, &v45);
    if (v11 < 0)
    {
      VData = (v11 & 0x1FFFu) - 2065686528;
    }

    else
    {
      v16 = heap_Calloc(*(&__dst[0] + 1), 1, 37944);
      if (v16)
      {
        __strcpy_chk();
        __strcpy_chk();
        *&v17 = -1;
        *(&v17 + 1) = -1;
        *(v16 + 11472) = v17;
        *(v16 + 11488) = v17;
        *(v16 + 11504) = v17;
        *(v16 + 11520) = v17;
        *(v16 + 11536) = v17;
        *(v16 + 11552) = v17;
        *(v16 + 11568) = v17;
        *(v16 + 11584) = v17;
        *(v16 + 11600) = v17;
        *(v16 + 11616) = v17;
        *(v16 + 11632) = v17;
        *(v16 + 11648) = v17;
        *(v16 + 11664) = v17;
        *(v16 + 11680) = v17;
        *(v16 + 11696) = v17;
        *(v16 + 11712) = v17;
        *(v16 + 12644) = v17;
        *(v16 + 12376) = v17;
        *(v16 + 12392) = v17;
        *(v16 + 12408) = v17;
        *(v16 + 12424) = v17;
        *(v16 + 12440) = v17;
        *(v16 + 12456) = v17;
        *(v16 + 12472) = v17;
        *(v16 + 12488) = v17;
        *(v16 + 12504) = v17;
        *(v16 + 12520) = v17;
        *(v16 + 12536) = v17;
        *(v16 + 12552) = v17;
        *(v16 + 12568) = v17;
        *(v16 + 12584) = v17;
        *(v16 + 12600) = v17;
        *(v16 + 12616) = v17;
        *(v16 + 12632) = v17;
        *(v16 + 12720) = v17;
        *(v16 + 12704) = v17;
        *(v16 + 11852) = 1;
        BET3FLT__InitVParam((v16 + 128));
        *&v18 = -1;
        *(&v18 + 1) = -1;
        *(v16 + 8092) = v18;
        *(v16 + 8080) = v18;
        *(v16 + 8064) = v18;
        *(v16 + 8048) = v18;
        *(v16 + 8032) = v18;
        *(v16 + 8016) = v18;
        *(v16 + 8000) = v18;
        *(v16 + 7984) = v18;
        *(v16 + 7968) = v18;
        *(v16 + 7952) = v18;
        *(v16 + 7936) = v18;
        *(v16 + 7920) = v18;
        *(v16 + 7904) = v18;
        *(v16 + 7888) = v18;
        *(v16 + 7872) = v18;
        *(v16 + 7856) = v18;
        *(v16 + 7840) = v18;
        *(v16 + 7824) = v18;
        *(v16 + 7808) = v18;
        strcpy((v16 + 7792), "mlsa");
        memset(v47, 0, sizeof(v47));
        v20 = select_bet3_ParseRiff_0(__dst, v16, v45, 0, v47, 0, 0, v19);
        if ((v20 & 0x80000000) != 0)
        {
          VData = v20;
          v46 = 0;
          if (LOBYTE(v47[0]))
          {
            v39 = 0;
            do
            {
              __strcat_chk();
              __strcat_chk();
              ++v39;
            }

            while (*(v47 + 5 * v39));
          }

          log_OutPublic(*&__dst[2], "SELECT_BET3", 55003, "%s%s%s%s%s%x", v21, v22, v23, v24, "file");
        }

        else if (*(v16 + 7519) && *(v16 + 260) > 0)
        {
          v25 = *(v16 + 11792);
          if (v25)
          {
            v26 = *v25;
            if (*v25)
            {
              v27 = 0;
              v28 = 0;
              do
              {
                *(v16 + 5432 + 8 * v27) = v26;
                v27 = ++v28;
                v26 = *(*(v16 + 11792) + 8 * v28);
              }

              while (v26);
            }
          }

          v29 = BET3FXD__InitVData(__dst, (v16 + 8112), v16 + 128);
          if ((v29 & 0x80000000) != 0)
          {
            VData = v29;
          }

          else
          {
            VData = BET3FXD__LoadVData(__dst, (v16 + 8112), v16 + 128);
            if ((VData & 0x80000000) == 0)
            {
              *(v16 + 12906) = 1;
              *&v38 = 0x100000001;
              *(&v38 + 1) = 0x100000001;
              *(v16 + 12496) = v38;
              *(v16 + 12512) = v38;
              *(v16 + 12528) = 0x100000001;
              *(v16 + 12540) = 1;
              *(v16 + 12556) = v38;
              *(v16 + 12572) = v38;
              *(v16 + 12588) = v38;
              *(v16 + 12604) = v38;
              *(v16 + 12620) = v38;
              *(v16 + 12636) = 1;
              *(v16 + 12640) = 0x100000001;
              *(v16 + 12078) = 33620481;
              *(v16 + 12105) = 1;
              *(v16 + 12083) = 0x101010101010101;
              *(v16 + 12091) = 0x101010101010101;
              *(v16 + 12127) = -1;
              *(v16 + 12131) = -255;
              *(v16 + 12141) = 0x101010101010101;
              *(v16 + 12146) = 0x101010101010101;
              *(v16 + 12249) = 0x101010101010101;
              *(v16 + 12257) = 0x101010101010101;
              *(v16 + 12265) = 0x101010101010101;
              if ((*(v16 + 12432) & 0x80000000) == 0)
              {
                *(v16 + 12107) = 257;
              }

              if ((*(v16 + 12448) & 0x80000000) == 0)
              {
                *(v16 + 12109) = 1;
              }

              if ((*(v16 + 12464) & 0x80000000) == 0)
              {
                *(v16 + 12110) = 1;
              }

              if ((*(v16 + 12468) & 0x80000000) == 0)
              {
                *(v16 + 12111) = 1;
              }

              if ((*(v16 + 12472) & 0x80000000) == 0)
              {
                *(v16 + 12112) = 1;
              }

              if ((*(v16 + 12476) & 0x80000000) == 0)
              {
                *(v16 + 12113) = 1;
              }

              if ((*(v16 + 12396) & 0x80000000) == 0)
              {
                *(v16 + 12101) = 257;
              }

              if ((*(v16 + 12720) & 0x80000000) == 0 || (*(v16 + 12724) & 0x80000000) == 0)
              {
                *(v16 + 12100) = 8;
              }

              if ((*(v16 + 12400) & 0x80000000) == 0)
              {
                *(v16 + 12103) = 257;
              }

              if (*(v16 + 11888))
              {
                *(v16 + 12122) = 9;
              }

              if ((*(v16 + 12496) & 0x80000000) == 0)
              {
                *(v16 + 12141) = 1;
              }

              if ((*(v16 + 12500) & 0x80000000) == 0)
              {
                *(v16 + 12142) = 1;
              }

              if ((*(v16 + 12504) & 0x80000000) == 0)
              {
                *(v16 + 12143) = 1;
              }

              *(v16 + 12152) = 257;
              *(v16 + 12144) = 16843009;
              *(v16 + 12147) = 16843009;
            }
          }
        }

        else
        {
          VData = 2229280772;
          log_OutPublic(*&__dst[2], "SELECT_BET3", 55006, "%s%s", v21, v22, v23, v24, "file");
        }
      }

      else
      {
        log_OutPublic(*&__dst[2], "SELECT_BET3", 55000, 0, v12, v13, v14, v15, v42);
        VData = 2229280778;
      }

      if (v45)
      {
        ssftriff_reader_ObjClose(v45, v30, v31, v32, v33, v34, v35, v36);
        v45 = 0;
      }

      if ((VData & 0x80000000) != 0)
      {
        if ((VData & 0x7FF01FFF) == 0xA200014)
        {
          VData = 2229280772;
        }

        else
        {
          VData = VData;
        }

        select_bet3_loc_VoiceClose_0(__dst, v16);
      }

      else
      {
        *(a4 + 32) = v16;
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];
  return VData;
}

uint64_t select_bet3_loc_ObjcVoiceClose_0(_WORD *a1, int a2, uint64_t a3)
{
  v6 = 0;
  inited = InitRsrcFunction(a1, a2, &v6);
  if ((inited & 0x80000000) == 0)
  {
    select_bet3_loc_VoiceClose_0(v6, *(a3 + 32));
  }

  return inited;
}

uint64_t select_bet3_loc_ParamCheckChange_0(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "frequencyhz"))
  {
    if (*(a1 + 896))
    {
      result = 2229280785;
      goto LABEL_7;
    }
  }

  else if (!strcmp(__s1, "waitfactor") && (LH_atoi(a3) & 0x80000000) != 0)
  {
    result = 2229280783;
LABEL_7:
    *a4 = 0;
    return result;
  }

  return 0;
}

uint64_t select_bet3_loc_ParamLearnChange_0(uint64_t a1, char *__s1, const char *a3)
{
  if (!strcmp(__s1, "frequencyhz"))
  {
    if (*(a1 + 896))
    {
      return 2229280785;
    }

    else
    {
      return 0;
    }
  }

  if (!strcmp(__s1, "rate") || !strcmp(__s1, "waitfactor"))
  {
    v11 = 0;
    if (strcmp(__s1, "waitfactor") || (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "finalsentencefound", &v11), v11 != 1))
    {
      v7 = LH_atoi(a3);
      v8 = a1;
      v9 = __s1;
      return select_bet3_loc_ParamSet_0(v8, v9, v7);
    }

    return 0;
  }

  if (strcmp(__s1, "finalsentencefound"))
  {
    return 0;
  }

  if (LH_atou(a3) != 1)
  {
    v10 = 0;
    paramc_ParamGetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", &v10);
    v7 = v10;
    v9 = "waitfactor";
    v8 = a1;
    return select_bet3_loc_ParamSet_0(v8, v9, v7);
  }

  paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", *(a1 + 64));

  return select_bet3_loc_ParamSet_0(a1, "waitfactor", 0);
}

uint64_t select_bet3_loc_SetSynthParams_0(uint64_t a1, uint64_t a2)
{
  v5 = a2 + 7808;
  result = select_bet3_loc_SetSynthParamString(a1, "synth_type", (a2 + 7792));
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamSetPermanent(*(a1 + 40), "mrcc_synthparam_ref_ptr", &v5, 8uLL);
    if ((result & 0x80000000) == 0)
    {
      result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voicealpha", *(a2 + 128));
      if ((result & 0x80000000) == 0)
      {
        result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voicebeta", *(a2 + 132));
        if ((result & 0x80000000) == 0)
        {
          result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voicevol", *(a2 + 164));
          if ((result & 0x80000000) == 0)
          {
            result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voicevuvrelamp", *(a2 + 140));
            if ((result & 0x80000000) == 0)
            {
              result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voicemvfboost", *(a2 + 168));
              if ((result & 0x80000000) == 0)
              {
                result = select_bet3_loc_SetSynthParamString(a1, "bet2voicevsynthinit", *(a2 + 7776));
                if ((result & 0x80000000) == 0)
                {
                  result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voiceframesize", *(a2 + 152));
                  if ((result & 0x80000000) == 0)
                  {
                    result = select_bet3_loc_SetSynthParamInt_0(a1, "bet2voiceorder", *(a2 + 144));
                    if ((result & 0x80000000) == 0)
                    {
                      result = select_bet3_loc_SetSynthParamArrayOfBet3_int32_0(a1, *(a2 + 7784), *(a2 + 144) + 1);
                      if ((result & 0x80000000) == 0)
                      {
                        return select_bet3_loc_SetSynthParamInt_0(a1, "voicepitchavghz", *(a2 + 184));
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

uint64_t select_bet3_loc_ParamSet_0(uint64_t a1, char *__s1, uint64_t a3)
{
  if (strcmp(__s1, "waitfactor"))
  {
    return 0;
  }

  if ((a3 & 0x80000000) == 0)
  {
    *(a1 + 64) = a3;
    log_OutText(*(*(a1 + 16) + 32), "SELECT_BET3", 3, 0, "Set wait factor %d", v5, v6, v7, a3);
    return 0;
  }

  return 2229280783;
}

uint64_t select_bet3_ParseRiff_0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v232 = a7;
  v12 = 0;
  v245 = *MEMORY[0x1E69E9840];
  v241 = 0;
  v240 = 0;
  *__src = 0;
  v13 = 5 * a4;
  v212 = a2 + 5192;
  v215 = a2 + 432;
  v216 = a2 + 3992;
  v218 = a2 + 472;
  v213 = a2 + 2792;
  v214 = a2 + 1432;
  v226 = a2 + 392;
  v222 = a2 + 2272;
  v223 = a2 + 352;
  v220 = a2 + 2552;
  v221 = a2 + 2232;
  v224 = a2 + 2312;
  v225 = a2 + 2472;
  v227 = a2 + 12704;
  v229 = a2 + 12376;
  v230 = v13;
  v228 = a2 + 37728;
  v231 = a2 + 11472;
  v217 = a2 + 272;
  v219 = (a2 + 9930);
  while ((v12 & 0x80000000) == 0)
  {
    v12 = ssftriff_reader_OpenChunk(a3, __src, &v241, 0, a5, a6, a7, a8);
    if ((v12 & 0x80000000) != 0)
    {
      break;
    }

    strcpy(&a5[v13], __src);
    if (a4 == 1)
    {
      if (!strcmp(a5, "FEEX"))
      {
        if (!(*__src ^ 0x54414356 | v240))
        {
          *__dst = 0;
          if (a6)
          {
            *__dst = a6 + ssftriff_reader_GetPosition(a3) - v232;
          }

          else
          {
            ChunkData = ssftriff_reader_GetChunkData(a3, v241, __dst, v23, v24, v25, v26, v27);
            if ((ChunkData & 0x80000000) != 0)
            {
              v12 = ChunkData;
              goto LABEL_726;
            }
          }

          v19 = a1;
          v20 = a2;
          v21 = a3;
          v22 = 2;
          goto LABEL_590;
        }

        if (!(*__src ^ 0x504F4256 | v240))
        {
          *__dst = 0;
          if (a6)
          {
            v39 = (a6 + ssftriff_reader_GetPosition(a3) - v232);
            *__dst = v39;
          }

          else
          {
            v12 = ssftriff_reader_GetChunkData(a3, v241, __dst, v23, v24, v25, v26, v27);
            if ((v12 & 0x80000000) != 0)
            {
              goto LABEL_726;
            }

            v39 = *__dst;
          }

          if (v241 >= 0xF8)
          {
            v172 = 248;
          }

          else
          {
            v172 = v241;
          }

          v173 = 11828;
LABEL_625:
          memcpy((a2 + v173), v39, v172);
          goto LABEL_710;
        }

        if (*__src ^ 0x33455250 | v240)
        {
          if (*__src ^ 0x33415254 | v240)
          {
            if (*__src ^ 0x334D4850 | v240)
            {
              goto LABEL_707;
            }

            *__dst = 0;
            if (a6)
            {
              v39 = (a6 + ssftriff_reader_GetPosition(a3) - v232);
              *__dst = v39;
            }

            else
            {
              v12 = ssftriff_reader_GetChunkData(a3, v241, __dst, v23, v24, v25, v26, v27);
              if ((v12 & 0x80000000) != 0)
              {
                goto LABEL_726;
              }

              v39 = *__dst;
            }

            if (v241 >= 0x100)
            {
              v172 = 256;
            }

            else
            {
              v172 = v241;
            }

            v173 = 7484;
            goto LABEL_625;
          }

          *__dst = 0;
          if (a6)
          {
            *__dst = a6 + ssftriff_reader_GetPosition(a3) - v232;
          }

          else
          {
            v12 = ssftriff_reader_GetChunkData(a3, v241, __dst, v23, v24, v25, v26, v27);
            if ((v12 & 0x80000000) != 0)
            {
              goto LABEL_726;
            }
          }

          v191 = v241;
          if (v241 >= 2)
          {
            v192 = 0;
            do
            {
              if (*(*__dst + 2 * v192) < 8u)
              {
                *(v227 + 4 * *(*__dst + 2 * v192)) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown transition feature: %u for %s", v168, v169, v170, *(*__dst + 2 * v192));
                v191 = v241;
              }

              ++v192;
            }

            while (v191 >> 1 > v192);
          }
        }

        else
        {
          *__dst = 0;
          if (a6)
          {
            *__dst = a6 + ssftriff_reader_GetPosition(a3) - v232;
          }

          else
          {
            v12 = ssftriff_reader_GetChunkData(a3, v241, __dst, v23, v24, v25, v26, v27);
            if ((v12 & 0x80000000) != 0)
            {
              goto LABEL_726;
            }
          }

          v187 = v241;
          if (v241 >= 2)
          {
            v188 = 0;
            do
            {
              if (*(*__dst + 2 * v188) < 0x47u)
              {
                *(v229 + 4 * *(*__dst + 2 * v188)) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown preselection feature: %u for %s", v154, v155, v156, *(*__dst + 2 * v188));
                v187 = v241;
              }

              ++v188;
            }

            while (v187 >> 1 > v188);
          }
        }
      }

      else
      {
        if (!strcmp(a5, "STM3"))
        {
          v243[0] = 0;
          v40 = *(a2 + 260);
          if (*__src ^ 0x33435453 | v240)
          {
            if (!(*__src ^ 0x33455254 | v240))
            {
              v157 = v220;
              goto LABEL_586;
            }

            if (*__src ^ 0x33464450 | v240)
            {
              if (*__src ^ 0x334E4957 | v240)
              {
                if (*__src ^ 0x334B4243 | v240)
                {
                  goto LABEL_707;
                }

                v157 = v212;
LABEL_586:
                v158 = v157 + 24 * v40;
              }

              else
              {
                v186 = *(v215 + 4 * v40);
                v158 = v216 + 120 * v40 + 24 * v186;
                *(v215 + 4 * v40) = v186 + 1;
              }
            }

            else
            {
              *__s1 = 0;
              if (a6)
              {
                v171 = a6 + ssftriff_reader_GetPosition(a3) - v232;
                *__s1 = v171;
              }

              else
              {
                v151 = ssftriff_reader_GetChunkData(a3, v241, __s1, v28, v29, v30, v31, v32);
                if ((v151 & 0x80000000) != 0)
                {
LABEL_679:
                  v12 = v151;
                  v141 = 1;
                  v211 = v151;
                  goto LABEL_719;
                }

                v171 = *__s1;
              }

              v243[0] = 256;
              LODWORD(v12) = ssftriff_reader_ReadStringZ(a3, v171, v241, 0, __dst, v243);
              if ((v12 & 0x80000000) != 0)
              {
                v158 = 0;
              }

              else
              {
                v193 = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
                v194 = *(v218 + 4 * v40);
                *(v214 + 40 * v40 + 8 * v194) = v193;
                if ((v243[0] & 3) != 0)
                {
                  v243[0] -= v243[0] | 0xFFFFFFFC;
                }

                v158 = v213 + 120 * v40 + 24 * v194;
                *(v218 + 4 * v40) = v194 + 1;
              }
            }

            if ((v12 & 0x80000000) == 0 && v158)
            {
              *__dst = 0;
              if (a6)
              {
                v195 = a6 + ssftriff_reader_GetPosition(a3) - v232;
              }

              else
              {
                v196 = ssftriff_reader_GetChunkData(a3, v241, __dst, v28, v29, v30, v31, v32);
                v12 = v196;
                if ((v196 & 0x80000000) != 0)
                {
                  v141 = 1;
                  v211 = v196;
                  v13 = v230;
LABEL_719:
                  if (v141 != 3)
                  {
                    v12 = v211;
                    goto LABEL_726;
                  }

                  break;
                }

                v195 = *__dst;
              }

              v197 = v243[0];
              *(v158 + 8) = v195 + v243[0];
              *(v158 + 16) = v241 - v197;
            }

LABEL_706:
            v13 = v230;
            goto LABEL_710;
          }

          LODWORD(__s) = 0;
          *__s1 = 0;
          if (a6)
          {
            v150 = a6 + ssftriff_reader_GetPosition(a3) - v232;
            *__s1 = v150;
          }

          else
          {
            v174 = ssftriff_reader_GetChunkData(a3, v241, __s1, v28, v29, v30, v31, v32);
            v12 = v174;
            if ((v174 & 0x80000000) != 0)
            {
              v141 = 1;
              v211 = v174;
LABEL_691:
              v13 = v230;
              goto LABEL_719;
            }

            v150 = *__s1;
          }

          v175 = v243[0];
          *(v223 + 4 * v40) = *(v150 + v243[0]);
          v243[0] = v175 + 4;
          v176 = *(v150 + v175 + 4);
          *(v226 + 4 * v40) = v176;
          v243[0] = v175 + 8;
          *(v222 + 4 * v40) = *(v150 + v175 + 8) != 0;
          v243[0] = v175 + 9;
          *(v221 + 4 * v40) = *(v150 + v175 + 9);
          v177 = v175 + 13;
          v243[0] = v175 + 13;
          if (v176 >= 1)
          {
            v178 = heap_Calloc(*(a1 + 8), v176, 8);
            *(v225 + 8 * v40) = v178;
            if (!v178)
            {
              LODWORD(v12) = -2065686518;
            }

            if ((v12 & 0x80000000) != 0)
            {
              goto LABEL_706;
            }

            v179 = heap_Calloc(*(a1 + 8), *(v226 + 4 * v40), 8);
            *(v224 + 8 * v40) = v179;
            LODWORD(v12) = -2065686518;
            if (!v179)
            {
              goto LABEL_706;
            }

            v150 = *__s1;
            v177 = v243[0];
          }

          __dst[0] = 0;
          LODWORD(__s) = 256;
          LODWORD(v12) = ssftriff_reader_ReadStringZ(a3, v150, v241, v177, __dst, &__s);
          if ((v12 & 0x80000000) == 0)
          {
            v180 = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
            *(v217 + 8 * v40) = v180;
            if (!v180)
            {
              v141 = 3;
              v12 = 2229280778;
              goto LABEL_691;
            }

            v243[0] += __s;
            if (*(v226 + 4 * v40) >= 1)
            {
              v181 = 0;
              while (1)
              {
                __dst[0] = 0;
                LODWORD(__s) = 256;
                StringZ = ssftriff_reader_ReadStringZ(a3, *__s1, v241, v243[0], __dst, &__s);
                if (StringZ < 0)
                {
                  break;
                }

                *(*(v225 + 8 * v40) + 8 * v181) = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
                if (!*(*(v225 + 8 * v40) + 8 * v181))
                {
                  goto LABEL_703;
                }

                v243[0] += __s;
                __dst[0] = 0;
                LODWORD(__s) = 256;
                LODWORD(v12) = ssftriff_reader_ReadStringZ(a3, *__s1, v241, v243[0], __dst, &__s);
                if ((v12 & 0x80000000) != 0)
                {
                  goto LABEL_706;
                }

                *(*(v224 + 8 * v40) + 8 * v181) = BET3FLT__heap_StrDup(*(a1 + 8), __dst);
                if (!*(*(v224 + 8 * v40) + 8 * v181))
                {
LABEL_703:
                  LODWORD(v12) = -2065686518;
                  goto LABEL_706;
                }

                v243[0] += __s;
                if (++v181 >= *(v226 + 4 * v40))
                {
                  goto LABEL_706;
                }
              }

              LODWORD(v12) = StringZ;
            }
          }

          goto LABEL_706;
        }

        if (*__src ^ 0x434E5953 | v240)
        {
          goto LABEL_707;
        }

        v243[0] = 0;
        *__s1 = 0;
        if (a6)
        {
          v33 = a6 + ssftriff_reader_GetPosition(a3) - v232;
          *__s1 = v33;
        }

        else
        {
          v151 = ssftriff_reader_GetChunkData(a3, v241, __s1, v28, v29, v30, v31, v32);
          if ((v151 & 0x80000000) != 0)
          {
            goto LABEL_679;
          }

          v33 = *__s1;
        }

        __dst[0] = 0;
        v243[0] = 256;
        v12 = ssftriff_reader_ReadStringZ(a3, v33, v241, 0, __dst, v243);
        if ((v12 & 0x80000000) != 0)
        {
LABEL_582:
          v141 = 3;
          goto LABEL_719;
        }

        if (*__dst == 0x59545F48544E5953 && *&__dst[3] == 0x455059545F4854)
        {
          v153 = v243[0];
          v243[0] = 256;
          v12 = ssftriff_reader_ReadStringZ(a3, *__s1, v241, v153, __dst, v243);
          if ((v12 & 0x80000000) != 0)
          {
            goto LABEL_582;
          }

          __strcpy_chk();
        }
      }
    }

    else if (a4)
    {
      if (strcmp(a5, "FEEX") || strcmp(a5 + 5, "VCAT"))
      {
LABEL_707:
        v199 = 0;
        __dst[0] = 0;
        do
        {
          __strcat_chk();
          __strcat_chk();
          ++v199;
        }

        while (a4 >= v199);
        log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown data: %s for %s", v200, v201, v202, __dst);
        goto LABEL_710;
      }

      *__dst = 0;
      if (a6)
      {
        *__dst = a6 + ssftriff_reader_GetPosition(a3) - v232;
      }

      else
      {
        v12 = ssftriff_reader_GetChunkData(a3, v241, __dst, v34, v35, v36, v37, v38);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_726;
        }
      }

      if (*__src ^ 0x48504C41 | v240)
      {
        if (*__src ^ 0x43494F56 | v240)
        {
          if (*__src ^ 0x4F564F43 | v240)
          {
            if (*__src ^ 0x45464153 | v240)
            {
              if (*__src ^ 0x534F4C50 | v240)
              {
                if (*__src ^ 0x46464944 | v240)
                {
                  if (*__src ^ 0x464E4547 | v240)
                  {
                    if (*__src ^ 0x41474154 | v240)
                    {
                      if (*__src ^ 0x414F5442 | v240)
                      {
                        goto LABEL_707;
                      }

                      v205 = *__dst;
                      v206 = v241;
                      v207 = 11800;
                    }

                    else
                    {
                      v205 = *__dst;
                      v206 = v241;
                      v207 = 11792;
                    }

                    RiffStringTable = uselect_LoadRiffStringTable(a1, a3, v205, v206, (a2 + v207));
                  }

                  else
                  {
                    RiffStringTable = select_bet3_LoadRiffGenericFeatureMap(a1, a3, *__dst, v241, (a2 + 12664), (a2 + 12672), (a2 + 12680));
                  }

                  goto LABEL_702;
                }

                *__s1 = 64;
                v183 = *__dst;
                v184 = v241;
                v185 = 11728;
              }

              else
              {
                *__s1 = 257;
                v183 = *__dst;
                v184 = v241;
                v185 = 10701;
              }
            }

            else
            {
              *__s1 = 257;
              v183 = *__dst;
              v184 = v241;
              v185 = 10958;
            }
          }

          else
          {
            *__s1 = 257;
            v183 = *__dst;
            v184 = v241;
            v185 = 10444;
          }
        }

        else
        {
          *__s1 = 257;
          v183 = *__dst;
          v184 = v241;
          v185 = 10187;
        }

        RiffStringTable = ssftriff_reader_ReadStringZ(a3, v183, v184, 0, (a2 + v185), __s1);
LABEL_702:
        LODWORD(v12) = RiffStringTable;
        goto LABEL_710;
      }

      *__s1 = 257;
      LODWORD(v12) = ssftriff_reader_ReadStringZ(a3, *__dst, v241, 0, v219, __s1);
      if ((v12 & 0x80000000) == 0)
      {
        *(v219 + 947) = 255;
        if (*v219)
        {
          v160 = 0;
          v161 = 0;
          v162 = 0;
          v163 = 255;
          do
          {
            v164 = v219[v161];
            if (v164 >= v163)
            {
              v165 = v219[v161];
            }

            else
            {
              v219[1894] = v164;
              v165 = v219[v161];
              v163 = v164;
            }

            if (v165 <= v160)
            {
              v166 = v165;
            }

            else
            {
              v219[1895] = v165;
              v166 = v219[v161];
              v160 = v165;
            }

            *(v231 + v166) = v162;
            v161 = (v162 + 1);
            v167 = strlen(v219);
            v162 = v161;
          }

          while (v167 > v161);
        }
      }

      v13 = v230;
    }

    else if (*__src ^ 0x47464356 | v240)
    {
      if (*__src ^ 0x41555145 | v240)
      {
        if (!(*__src ^ 0x58454546 | v240))
        {
          goto LABEL_11;
        }

        if (*__src ^ 0x334D5453 | v240)
        {
          if (*__src ^ 0x544E5953 | v240)
          {
            goto LABEL_707;
          }

LABEL_11:
          v19 = a1;
          v20 = a2;
          v21 = a3;
          v22 = 1;
LABEL_590:
          LODWORD(v12) = select_bet3_ParseRiff_0(v19, v20, v21, v22, a5, 0, 0);
          goto LABEL_710;
        }

        v142 = v13;
        Position = ssftriff_reader_GetPosition(a3);
        *__dst = 0;
        v149 = ssftriff_reader_DetachChunkData(a3, (v228 + 8 * *(a2 + 37936)), __dst, v144, v145, v146, v147, v148);
        if (v149 < 0)
        {
          LODWORD(v12) = v149;
        }

        else
        {
          ++*(a2 + 37936);
          LODWORD(v12) = select_bet3_ParseRiff_0(a1, a2, a3, 1, a5, *__dst, Position);
          ++*(a2 + 260);
        }

        v13 = v142;
      }

      else
      {
        LODWORD(v12) = ssftriff_reader_DetachChunkData(a3, (v228 + 8 * *(a2 + 37936)), (a2 + 7784), v14, v15, v16, v17, v18);
        if ((v12 & 0x80000000) == 0)
        {
          ++*(a2 + 37936);
        }
      }
    }

    else
    {
      v238 = 0;
      *v236 = 0;
      __s = 0;
      if (a6)
      {
        *v236 = a6 + ssftriff_reader_GetPosition(a3) - v232;
      }

      else
      {
        v41 = ssftriff_reader_GetChunkData(a3, v241, v236, v14, v15, v16, v17, v18);
        v12 = v41;
        if ((v41 & 0x80000000) != 0)
        {
          v141 = 1;
          v211 = v41;
          goto LABEL_719;
        }
      }

      v42 = BET3FLT__heap_StrDup(*(a1 + 8), "PHRASE");
      *(a2 + 208) = v42;
      if (!v42)
      {
        v141 = 3;
        v12 = 2229280778;
        v13 = v230;
        goto LABEL_719;
      }

      *(a2 + 216) = 1000;
      v43 = v241;
      if (v241)
      {
        v44 = 0;
        do
        {
          __dst[0] = 0;
          __s1[0] = 0;
          v238 = 64;
          LODWORD(v12) = ssftriff_reader_ReadStringZ(a3, *v236, v43, v44, __s1, &v238);
          if ((v12 & 0x80000000) == 0 && v44 < v241)
          {
            v44 += v238;
            v238 = 256;
            LODWORD(v12) = ssftriff_reader_ReadStringZ(a3, *v236, v241, v44, __dst, &v238);
          }

          if ((v12 & 0x80000000) != 0)
          {
            break;
          }

          v234 = v238;
          strcpy(v243, "bet3voiceoverride.");
          __strcat_chk();
          if ((paramc_ParamGetStr(*(a1 + 40), v243, &__s) & 0x80000000) != 0 || (v45 = __s) == 0 || !*__s)
          {
            v45 = __dst;
            __s = __dst;
          }

          if (*__s1 == 1213221953 && *&__s1[4] == 65)
          {
            *(a2 + 128) = LH_atoi(v45);
          }

          if (!(*__s1 ^ 0x41544542 | __s1[4]))
          {
            *(a2 + 132) = LH_atoi(__s);
          }

          if (*__s1 == 0x5F4C45525F565556 && *&__s1[8] == 5262657)
          {
            *(a2 + 140) = LH_atoi(__s);
          }

          if (*__s1 == 5001046)
          {
            *(a2 + 164) = LH_atoi(__s);
          }

          if (*__s1 == 0x534F4F425F46564DLL && *&__s1[8] == 84)
          {
            *(a2 + 168) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x5346 | __s1[2]))
          {
            *(a2 + 136) = LH_atoi(__s);
          }

          if (*__s1 == 1162105423 && *&__s1[4] == 82)
          {
            *(a2 + 144) = LH_atoi(__s);
          }

          if (*__s1 == 0x49535F454D415246 && *&__s1[3] == 0x455A49535F454DLL)
          {
            *(a2 + 152) = LH_atoi(__s);
          }

          if (*__s1 == 0x465F484345455053 && *&__s1[7] == 0x4E41454D5F3046)
          {
            *(a2 + 184) = LH_atoi(__s);
          }

          if (*__s1 == 0x495241565F464450 && *&__s1[8] == 0x5059545F45434E41 && *&__s1[16] == 69)
          {
            *(a2 + 200) = LH_atoi(__s);
          }

          if (*__s1 == 0x52454B41455242)
          {
            v54 = *(a2 + 208);
            if (v54)
            {
              heap_Free(*(a1 + 8), v54);
            }

            v55 = BET3FLT__heap_StrDup(*(a1 + 8), __s);
            *(a2 + 208) = v55;
            if (!v55)
            {
              LODWORD(v12) = -2065686518;
              break;
            }
          }

          if (*__s1 == 0x474E454C5F4B5242 && *&__s1[3] == 0x4854474E454C5FLL)
          {
            *(a2 + 216) = LH_atoi(__s);
          }

          if (*__s1 == 1598771778 && *&__s1[3] == 4412511)
          {
            *(a2 + 220) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x4441505A5F4B5242 | __s1[8]))
          {
            *(a2 + 224) = LH_atoi(__s);
          }

          if (*__s1 == 0x54535F4E474C41)
          {
            *(a2 + 240) = LH_atoi(__s) != 0;
          }

          if (*__s1 == 0x48505F4E474C41)
          {
            *(a2 + 244) = LH_atoi(__s) != 0;
          }

          if (*__s1 == 1314476886 && *&__s1[3] == 4740174)
          {
            *(a2 + 7776) = BET3FLT__heap_StrDup(*(a1 + 8), __s);
          }

          if (*__s1 == 1398031942 && *&__s1[4] == 90)
          {
            *(a2 + 7808) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E41454D5F4E45)
          {
            *(a2 + 7812) = LH_atoi(__s);
          }

          if (*__s1 == 0x5F4E455F44454546 && *&__s1[8] == 0x4F4F4C5F4E41454DLL && *&__s1[15] == 0x44414548414B4FLL)
          {
            *(a2 + 7820) = LH_atoi(__s);
          }

          if (*__s1 == 0x56555F544E554F43 && *&__s1[8] == 0x434E41545349445FLL && *&__s1[16] == 69)
          {
            *(a2 + 7816) = LH_atoi(__s);
          }

          if (*__s1 == 0x525F454C504D4153 && *&__s1[8] == 4543553)
          {
            *(a2 + 7824) = LH_atoi(__s);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[6] == 0x594752454E455FLL)
          {
            *(a2 + 7828) = LH_atoi(__s);
          }

          if (*__s1 == 0x535F524150504D41 && *&__s1[8] == 4545097)
          {
            *(a2 + 7832) = LH_atoi(__s);
          }

          if (*__s1 == 0x465F524150435053 && *&__s1[8] == 0x50524157514552)
          {
            *(a2 + 7836) = LH_atoi(__s);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x415F45434E41484ELL && *&__s1[13] == 0x4148504C415F45)
          {
            *(a2 + 7840) = LH_atoi(__s);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x415F45434E41484ELL && *&__s1[16] == 0x564E555F4148504CLL && *&__s1[22] == 0x444543494F564ELL)
          {
            *(a2 + 7844) = LH_atoi(__s);
          }

          if (*__s1 == 0x49535F454D415246 && *&__s1[8] == 0x4343524D5F455ALL)
          {
            *(a2 + 7848) = LH_atoi(__s);
          }

          if (*__s1 == 0x5F5348505F4E5953 && *&__s1[8] == 0x555F504152545845 && *&__s1[11] == 0x4553555F504152)
          {
            *(a2 + 7852) = LH_atoi(__s);
          }

          if (*__s1 == 0x53494F4E5F4E5953 && *&__s1[8] == 0x545F514552465F45 && *&__s1[16] == 72)
          {
            *(a2 + 7856) = LH_atoi(__s);
          }

          if (*__s1 == 0x514552465F4E5953 && *&__s1[8] == 0x53555F4553494F4ELL && *&__s1[16] == 69)
          {
            *(a2 + 7860) = LH_atoi(__s);
          }

          if (*__s1 == 0x514552465F4E5953 && *&__s1[8] == 0x564D5F4553494F4ELL && *&__s1[14] == 0x4553555F46564DLL)
          {
            *(a2 + 7864) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x514552465F4E5953 | *&__s1[8] ^ 0x4F4C5F4553494F4ELL | __s1[16]))
          {
            *(a2 + 7868) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x514552465F4E5953 | *&__s1[8] ^ 0x49485F4553494F4ELL | __s1[16]))
          {
            *(a2 + 7872) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x494E555F4553494FLL && *&__s1[13] == 0x4D524F46494E55)
          {
            *(a2 + 7876) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x4E5855415F4E5953 | *&__s1[8] ^ 0x4553555F4553494FLL | __s1[16]))
          {
            *(a2 + 7880) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x46564D5F4553494FLL && *&__s1[13] == 0x4553555F46564DLL)
          {
            *(a2 + 7884) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x58494D5F4553494FLL && *&__s1[16] == 0x4F4C5F4D524148)
          {
            *(a2 + 7888) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x58494D5F4553494FLL && *&__s1[16] == 0x49485F4D524148)
          {
            *(a2 + 7892) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5345525F4553494FLL && *&__s1[16] == 5196895)
          {
            *(a2 + 7896) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5345525F4553494FLL && *&__s1[16] == 4802655)
          {
            *(a2 + 7900) = LH_atoi(__s);
          }

          if (*__s1 == 0x47494C415F4E5953 && *&__s1[8] == 0x46464F5455435F4ELL && *&__s1[14] == 0x514552465F4646)
          {
            *(a2 + 7904) = LH_atoi(__s);
          }

          if (*__s1 == 0x554245445F4E5953 && *&__s1[8] == 0x45434F52505F5A5ALL && *&__s1[15] == 0x46564D5F535345)
          {
            *(a2 + 7908) = LH_atoi(__s);
          }

          if (*__s1 == 0x415F524150504D41 && *&__s1[8] == 0x455441554E455454 && *&__s1[16] == 5657951)
          {
            *(a2 + 7912) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x50494B535F4E5953 | *&__s1[8] ^ 0x41485F4B4145575FLL | *&__s1[16] ^ 0x4F495441525F4D52 | __s1[24]))
          {
            *(a2 + 7916) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_SMOOTH_WIN"))
          {
            *(a2 + 7940) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_THR"))
          {
            *(a2 + 7944) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_RATIO_EN_THR"))
          {
            *(a2 + 7948) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_MVF_THR"))
          {
            *(a2 + 7952) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_BY_LOW_EN"))
          {
            *(a2 + 7956) = LH_atoi(__s);
          }

          if (!strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_BY_RATIO_EN"))
          {
            *(a2 + 7960) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x305F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7964) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x315F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7968) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x325F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7972) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x554245445F4E5953 | *&__s1[8] ^ 0x45434F52505F5A5ALL | *&__s1[16] ^ 0x335F46564D5F5353 | __s1[24]))
          {
            *(a2 + 7976) = LH_atoi(__s);
          }

          if (*__s1 == 0x425F524150504D41 && *&__s1[8] == 5461065)
          {
            *(a2 + 7980) = LH_atoi(__s);
          }

          if (*__s1 == 0x555F524150534850 && *&__s1[3] == 0x4553555F524150)
          {
            *(a2 + 7984) = LH_atoi(__s);
          }

          if (*__s1 == 0x555F524150504D41 && *&__s1[3] == 0x4553555F524150)
          {
            *(a2 + 7988) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x32474F4C5F455355 | __s1[8]))
          {
            *(a2 + 7992) = LH_atoi(__s);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x505F45434E41484ELL && *&__s1[14] == 0x435053574F505FLL)
          {
            *(a2 + 7996) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[15] == 0x455441554E4554)
          {
            *(a2 + 8000) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[16] == 0x4C5F455441554E45 && *&__s1[24] == 79)
          {
            *(a2 + 8004) = LH_atoi(__s);
          }

          if (*__s1 == 0x4E5855415F4E5953 && *&__s1[8] == 0x5454415F4553494FLL && *&__s1[16] == 0x485F455441554E45 && *&__s1[24] == 73)
          {
            *(a2 + 8008) = LH_atoi(__s);
          }

          if (*__s1 == 0x4C5050415F4E5953 && *&__s1[8] == 0x504D4545445F59)
          {
            *(a2 + 8012) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x525F49485F4E5953 | *&__s1[8] ^ 0x4E47494C415F5345 | __s1[16]))
          {
            *(a2 + 8016) = LH_atoi(__s);
          }

          if (*__s1 == 0x545341465F4E5953 && *&__s1[8] == 0x5241485F5855415FLL && *&__s1[16] == 77)
          {
            *(a2 + 8020) = LH_atoi(__s);
          }

          if (*__s1 == 0x5F5849465F4E5953 && *&__s1[8] == 4279375)
          {
            *(a2 + 8024) = LH_atoi(__s);
          }

          if (*__s1 == 0x475F43445F4E5953 && *&__s1[8] == 0x494F565F44524155 && *&__s1[16] == 4474179)
          {
            *(a2 + 8028) = LH_atoi(__s);
          }

          if (*__s1 == 0x475F43445F4E5953 && *&__s1[8] == 0x564E555F44524155 && *&__s1[14] == 0x444543494F564ELL)
          {
            *(a2 + 8032) = LH_atoi(__s);
          }

          if (*__s1 == 0x5551594E5F4E5953 && *&__s1[8] == 0x524155475F545349 && *&__s1[16] == 68)
          {
            *(a2 + 8036) = LH_atoi(__s);
          }

          if (*__s1 == 0x535F524150534850 && *&__s1[8] == 4545097)
          {
            *(a2 + 8040) = LH_atoi(__s);
          }

          if (*__s1 == 0x465F524150534850 && *&__s1[8] == 5261644)
          {
            *(a2 + 8044) = LH_atoi(__s);
          }

          if (*__s1 == 0x455F524150504D41 && *&__s1[8] == 0x4F4E5F594752454ELL && *&__s1[14] == 0x48545F4D524F4ELL)
          {
            *(a2 + 8048) = LH_atoi(__s);
          }

          if (*__s1 == 0x465F524150435053 && *&__s1[8] == 0x5F50524157514552 && *&__s1[14] == 0x4148504C415F50)
          {
            *(a2 + 8052) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x5F5348505F4E5953 | *&__s1[8] ^ 0x49575F4E47494C41 | *&__s1[16] ^ 0x54534E4F435F4854 | __s1[24]))
          {
            *(a2 + 8056) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x4E5855415F4E5953 | *&__s1[8] ^ 0x524F4E5F4553494FLL | *&__s1[16] ^ 0x4C41424F4C475F4DLL | __s1[24]))
          {
            *(a2 + 8060) = LH_atoi(__s);
          }

          if (*__s1 == 0x4D4545445F4E5953 && *&__s1[7] == 0x46454F435F504DLL)
          {
            *(a2 + 8064) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x5F4553555F4E5953 | *&__s1[8] ^ 0x4F4D5F4553494F4ELL | *&__s1[16] ^ 0x4E4F4954414C5544 | __s1[24]))
          {
            *(a2 + 8068) = LH_atoi(__s);
          }

          if (*__s1 == 0x53494F4E5F4E5953 && *&__s1[8] == 0x414C55444F4D5F45 && *&__s1[16] == 0x4341465F4E4F4954 && *&__s1[24] == 5394260)
          {
            *(a2 + 8072) = LH_atoi(__s);
          }

          if (*__s1 == 0x4D4152465F58414DLL && *&__s1[7] == 0x455A49535F454DLL)
          {
            *(a2 + 8076) = LH_atoi(__s);
          }

          if (*__s1 == 0x4D4152465F4E494DLL && *&__s1[7] == 0x455A49535F454DLL)
          {
            *(a2 + 8080) = LH_atoi(__s);
          }

          if (*__s1 == 0x5F5446465F4E494DLL && *&__s1[5] == 0x455A49535F5446)
          {
            *(a2 + 8084) = LH_atoi(__s);
          }

          if (*__s1 == 0x49535F454D415246 && *&__s1[8] == 0x4E5F434E495F455ALL && *&__s1[11] == 0x4D554E5F434E49)
          {
            *(a2 + 8088) = LH_atoi(__s);
          }

          if (*__s1 == 0x49535F454D415246 && *&__s1[8] == 0x4E5F4345445F455ALL && *&__s1[11] == 0x4D554E5F434544)
          {
            *(a2 + 8092) = LH_atoi(__s);
          }

          if (*__s1 == 0x5446465F4C414E41 && *&__s1[6] == 0x455A49535F5446)
          {
            *(a2 + 8096) = LH_atoi(__s);
          }

          if (!(*__s1 ^ 0x455A49535F544646 | __s1[8]))
          {
            *(a2 + 8100) = LH_atoi(__s);
          }

          v44 += v234;
          v43 = v241;
        }

        while (v44 < v241);
      }

      *(a2 + 160) = 0;
      *(a2 + 172) = 0;
      *(a2 + 176) = 0;
      strcpy(v243, "bet3voiceoverride.");
      __strcat_chk();
      if ((paramc_ParamGetStr(*(a1 + 40), v243, &__s) & 0x80000000) == 0)
      {
        v189 = *(a2 + 208);
        if (v189)
        {
          heap_Free(*(a1 + 8), v189);
          *(a2 + 208) = 0;
        }

        v190 = BET3FLT__heap_StrDup(*(a1 + 8), __s);
        *(a2 + 208) = v190;
        if (!v190)
        {
          v141 = 3;
          v12 = 2229280778;
          v13 = v230;
          goto LABEL_719;
        }
      }

      strcpy(v243, "bet3voiceoverride.");
      __strcat_chk();
      if ((paramc_ParamGetStr(*(a1 + 40), v243, &__s) & 0x80000000) == 0)
      {
        *(a2 + 216) = LH_atoi(__s);
      }

      v13 = v230;
    }

LABEL_710:
    v203 = ssftriff_reader_CloseChunk(a3);
    if (v12 > -1 && v203 < 0)
    {
      v12 = v203;
    }

    else
    {
      v12 = v12;
    }
  }

  if ((v12 & 0x1FFF) == 0x14)
  {
    v208 = 0;
  }

  else
  {
    v208 = v12;
  }

  if ((v208 & 0x80000000) == 0)
  {
    a5[v13] = 0;
    v12 = v208;
  }

LABEL_726:
  v209 = *MEMORY[0x1E69E9840];
  return v12;
}