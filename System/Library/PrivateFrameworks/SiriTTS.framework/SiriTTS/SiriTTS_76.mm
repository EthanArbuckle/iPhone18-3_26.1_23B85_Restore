uint64_t fillWordInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v16);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 184))(a2, a3, v16, 0, &v13 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v13) == 1)
    {
      result = (*(a1 + 176))(a2, a3, v16, 0, a4 + 40, &v15);
      if ((result & 0x80000000) == 0 && v15 >= 2u)
      {
        *(a4 + 48) = strlen(*(a4 + 40));
        result = (*(a1 + 104))(a2, a3, 2, v16, &v15 + 2);
        if ((result & 0x80000000) == 0)
        {
          v9 = HIWORD(v15);
          if (HIWORD(v15))
          {
            v10 = 0;
            while (1)
            {
              result = (*(a1 + 168))(a2, a3, v9, 0, 1, &v14, &v15);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if ((v14 - 9) < 6)
              {
                goto LABEL_11;
              }

              if (v14 == 15)
              {
                result = (*(a1 + 168))(a2, a3, HIWORD(v15), 7, 1, &v13, &v15);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v10 && v13 <= 1u)
                {
                  *(*(a4 + 32) + 56 * (v10 - 1) + 48) = 1;
                }

                goto LABEL_15;
              }

              if (v14 == 4)
              {
LABEL_11:
                v11 = *(a4 + 32) + 56 * v10;
                v12 = HIWORD(v15);
                v17 = 0;
                *(v11 + 4) = HIWORD(v15);
                *(v11 + 48) = 0;
                result = (*(a1 + 168))(a2, a3, v12, 1, 1, v11, &v17);
                if ((result & 0x80000000) != 0 || (result = (*(a1 + 168))(a2, a3, v12, 2, 1, v11 + 2, &v17), (result & 0x80000000) != 0) || (*v20 = 0, v19 = 0, result = (*(a1 + 176))(a2, a3, v12, 14, v20, &v19), (result & 0x80000000) != 0))
                {
                  *(v11 + 44) = 0;
                  return result;
                }

                ++v10;
                v18 = 0;
                hlp_NLUStrFind(*v20, "PRM", (v11 + 16), &v18);
                *(v11 + 8) = v18;
                hlp_NLUStrFind(*v20, "BNDSHAPE", (v11 + 32), &v18);
                *(v11 + 24) = v18;
                *(v11 + 44) = 1;
              }

LABEL_15:
              result = (*(a1 + 120))(a2, a3, HIWORD(v15), &v15 + 2);
              if ((result & 0x80000000) == 0)
              {
                v9 = HIWORD(v15);
                if (HIWORD(v15))
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

uint64_t prmfx_FreeResults(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (*a3)
  {
    v5 = 0;
    do
    {
      heap_Free(*(a1 + 8), *(*(a3 + 1) + 8 * v5++));
    }

    while (v5 < *a3);
  }

  heap_Free(*(a1 + 8), *(a3 + 1));
  if (a3[12])
  {
    v6 = 0;
    do
    {
      heap_Free(*(a1 + 8), *(*(a3 + 2) + 8 * v6++));
    }

    while (v6 < a3[12]);
  }

  heap_Free(*(a1 + 8), *(a3 + 2));
  heap_Free(*(a1 + 8), *(a3 + 4));
  heap_Free(*(a1 + 8), a3);
  return 0;
}

uint64_t prmfx_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 2382372871;
  if (a3)
  {
    v12 = 0;
    inited = InitRsrcFunction(a1, a2, &v12);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v8 = heap_Calloc(*(v12 + 8), 1, 32);
    if (!v8)
    {
      return 2382372874;
    }

    v9 = v8;
    v10 = v12;
    *v8 = v12;
    v8[1] = a1;
    v8[2] = a2;
    inited = critsec_ObjOpen(*(v10 + 16), *(v10 + 8), v8 + 3);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v3 = 0;
      *a3 = v9;
      *(a3 + 8) = 449;
    }
  }

  return v3;
}

uint64_t prmfx_ClassClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 449, 32);
  if ((result & 0x80000000) == 0)
  {
    critsec_ObjClose(a1[3]);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t prmfx_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = 2382372871;
  v20 = 0;
  v19 = 0;
  if (!a5)
  {
    goto LABEL_17;
  }

  v21 = 0;
  v22 = 0;
  inited = InitRsrcFunction(a3, a4, &v22);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  v12 = heap_Calloc(*(v22 + 8), 1, 96);
  if (!v12)
  {
    v5 = 2382372874;
    goto LABEL_17;
  }

  v13 = v12;
  *v12 = v22;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = 0;
  v14 = v12 + 3;
  v12[4] = 0;
  inited = safeh_HandleCheck(a1, a2, 449, 32);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  *v14 = a1;
  inited = objc_GetObject(*(v22 + 48), "LINGDB", &v21);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  *(v13 + 32) = *(v21 + 8);
  inited = objc_GetObject(*(v22 + 48), "FE_DCTLKP", &v20);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  v15 = v20;
  *(v13 + 56) = *(v20 + 8);
  *(v13 + 40) = *(v15 + 16);
  if ((paramc_ParamGetUInt(*(v22 + 40), "prmigactive", &v19) & 0x80000000) != 0 || v19 != 1)
  {
    *(v13 + 64) = 0;
    inited = paramc_ParamSetUInt(*(*v13 + 40), "prmigexists", 0);
    if ((inited & 0x80000000) == 0)
    {
LABEL_20:
      v5 = 0;
      *a5 = v13;
      *(a5 + 8) = 449;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  inited = hlp_CreateVoiceBrokerString_1(*v13, v23);
  if ((inited & 0x80000000) != 0)
  {
LABEL_16:
    v5 = inited;
    goto LABEL_17;
  }

  critsec_Enter(*(*(v13 + 24) + 24));
  if ((igtree_Init_ReadOnly_ReferenceCnt(*(v13 + 8), *(v13 + 16), *(*(v13 + 24) + 8), *(*(v13 + 24) + 16), (v13 + 64), 2, v23, "IGTR", 5, 0) & 0x80000000) != 0)
  {
    *(v13 + 64) = 0;
    paramc_ParamSetUInt(*(*v13 + 40), "prmigexists", 0);
    v5 = 0;
  }

  else
  {
    v16 = paramc_ParamSetUInt(*(*v13 + 40), "prmigexists", 1u);
    if ((v16 & 0x80000000) == 0)
    {
      v16 = processIgParams(v13);
    }

    v5 = v16;
  }

  critsec_Leave(*(*v14 + 24));
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t prmfx_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 449, 96);
  if ((result & 0x80000000) == 0)
  {
    v4 = *a1;
    v5 = **(a1 + 24);
    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(v4 + 48), "LINGDB");
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(v4 + 48), "FE_DCTLKP");
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      igtree_Deinit_ReadOnly_DereferenceCnt(v4, v5, v6);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t prmfx_ObjReopen(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  VoiceBrokerString_1 = safeh_HandleCheck(a1, a2, 449, 96);
  if ((VoiceBrokerString_1 & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  v4 = *a1;
  v5 = *(a1 + 64);
  if (v5)
  {
    igtree_Deinit_ReadOnly_DereferenceCnt(*a1, **(a1 + 24), v5);
  }

  if ((paramc_ParamGetUInt(*(v4 + 40), "prmigactive", &v10) & 0x80000000) != 0 || v10 != 1)
  {
    *(a1 + 64) = 0;
    VoiceBrokerString_1 = paramc_ParamSetUInt(*(*a1 + 40), "prmigexists", 0);
    if ((VoiceBrokerString_1 & 0x80000000) == 0)
    {
LABEL_15:
      v7 = 0;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  VoiceBrokerString_1 = hlp_CreateVoiceBrokerString_1(*a1, v11);
  if ((VoiceBrokerString_1 & 0x80000000) != 0)
  {
LABEL_12:
    v7 = VoiceBrokerString_1;
    goto LABEL_16;
  }

  critsec_Enter(*(*(a1 + 24) + 24));
  if ((igtree_Init_ReadOnly_ReferenceCnt(*(a1 + 8), *(a1 + 16), *(*(a1 + 24) + 8), *(*(a1 + 24) + 16), (a1 + 64), 2, v11, "IGTR", 5, 0) & 0x80000000) != 0)
  {
    *(a1 + 64) = 0;
    paramc_ParamSetUInt(*(*a1 + 40), "prmigexists", 0);
    v7 = 0;
  }

  else
  {
    v6 = paramc_ParamSetUInt(*(*a1 + 40), "prmigexists", 1u);
    if ((v6 & 0x80000000) == 0)
    {
      v6 = processIgParams(a1);
    }

    v7 = v6;
  }

  critsec_Leave(*(*(a1 + 24) + 24));
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t prmfx_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 449, 96);
  if ((result & 0x80000000) == 0)
  {
    v6 = 0;
    v4 = *a1;
    *(a1 + 84) = 1;
    Int = paramc_ParamGetInt(*(v4 + 40), "statcompwidescope", &v6);
    result = 0;
    if ((Int & 0x80000000) == 0 && !v6)
    {
      result = 0;
      *(a1 + 84) = 0;
    }
  }

  return result;
}

uint64_t prmfx_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v47 = 0;
  __s1 = 0;
  v9 = safeh_HandleCheck(a1, a2, 449, 96);
  if ((v9 & 0x80000000) == 0)
  {
    v52 = 0;
    v51 = 0;
    v50 = 0;
    v55 = 0;
    memset(v54, 0, sizeof(v54));
    *a5 = 1;
    v10 = *a1;
    if ((paramc_ParamGetStr(*(*a1 + 40), "basicclcprosody", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
    {
      log_OutText(*(v10 + 32), "PRMFX", 5, 0, "<%s> disables voice-dependent igtree", v11, v12, v13, "basicclcprosody");
      goto LABEL_56;
    }

    v9 = (*(*(a1 + 32) + 104))(a3, a4, 1, 0, &v52);
    if ((v9 & 0x80000000) == 0 && ((*(*(a1 + 32) + 184))(a3, a4, v52, 0, &v50 + 2) & 0x80000000) == 0 && HIWORD(v50) == 1)
    {
      v9 = (*(*(a1 + 32) + 176))(a3, a4, v52, 0, &v51, &v50);
      if ((v9 & 0x80000000) == 0 && v50 >= 2u)
      {
        Results = (*(*(a1 + 32) + 272))(a3, a4, 9, 1, 0, 0);
        if ((Results & 0x80000000) != 0)
        {
          goto LABEL_55;
        }

        v9 = 0;
        if ((paramc_ParamGetUInt(*(v10 + 40), "prmigactive", &v47) & 0x80000000) == 0 && v47 == 1)
        {
          if (!*(a1 + 64))
          {
LABEL_51:
            v9 = 0;
            goto LABEL_56;
          }

          v53 = 0;
          Results = prmfx_AllocateResults(v10, v15, *(a1 + 32), a3, a4);
          if ((Results & 0x80000000) != 0)
          {
            goto LABEL_55;
          }

          critsec_Enter(*(*(a1 + 24) + 24));
          v16 = v53;
          v9 = prmfx_CommonProcess(a1, v10, v17, a3, a4, v53);
          critsec_Leave(*(*(a1 + 24) + 24));
          if ((v9 & 0x80000000) == 0)
          {
            strcpy(v48, "null");
            v49 = v48;
            if (*v16)
            {
              v19 = 0;
              while (1)
              {
                v20 = *(*(v16 + 4) + 56 * v19 + 4);
                prmfx_setFeature("prm_previous_word", *(*(v16 + 1) + 8 * v19), v49);
                v21 = *(a1 + 64);
                v22 = *(v21 + 1296);
                if (v22 >= 2)
                {
                  v23 = 0;
                  v41 = v22 - 1;
                  v42 = v20;
                  v43 = v16;
                  while (2)
                  {
                    v24 = v19;
                    v25 = 0;
                    v26 = *(*(v21 + 1312) + 8 * v23);
                    v27 = v24;
                    v28 = *(*(v16 + 1) + 8 * v24);
                    while (strcmp(v26, g_FeatureNames[v25]))
                    {
                      if (++v25 == 29)
                      {
                        goto LABEL_53;
                      }
                    }

                    v29 = *(v28 + v25 * 8);
                    *(v54 + v23) = v29;
                    if (!v29)
                    {
LABEL_53:
                      v9 = 2382372889;
                      goto LABEL_56;
                    }

                    ++v23;
                    v20 = v42;
                    v16 = v43;
                    v19 = v27;
                    if (v41 > v23)
                    {
                      continue;
                    }

                    break;
                  }
                }

                Results = igtree_Process(v21, v54, &v51);
                if ((Results & 0x80000000) != 0)
                {
                  goto LABEL_55;
                }

                traceFeatureVector_0(v10, *(a1 + 64), v54, v16, v19);
                *(*(v16 + 4) + 56 * v19 + 40) = *v51;
                if (((*(*(a1 + 32) + 176))(a3, a4, v20, 13, &v49, &v50) & 0x80000000) != 0)
                {
                  strcpy(v48, "null");
                  v49 = v48;
                }

                v33 = *(v16 + 4) + 56 * v19;
                v34 = *(v33 + 16);
                if (v34)
                {
                  *v49 = *v34;
                  v35 = *(v16 + 4);
                  v36 = v35 + 56 * v19;
                  if (*(v36 + 8) >= 2uLL)
                  {
                    v40 = *(v36 + 16);
                    log_OutText(*(v10 + 32), "PRMFX", 1, 0, "PRMFX: reference PRM %.*s truncated", v30, v31, v32, *(v36 + 8));
                    v35 = *(v16 + 4);
                  }

                  *(v35 + 56 * v19 + 40) = *v49;
                }

                else
                {
                  *v49 = *(v33 + 40);
                }

                if (*(a1 + 92))
                {
                  v44 = 0;
                  v45 = 0;
                  if (((*(*(a1 + 32) + 184))(a3, a4, v20, 8, &v45 + 2) & 0x80000000) == 0 && HIWORD(v45) == 1)
                  {
                    Results = (*(*(a1 + 32) + 168))(a3, a4, v20, 8, 1, &v45, &v50);
                    if ((Results & 0x80000000) != 0)
                    {
                      goto LABEL_55;
                    }

                    if (v45 && *v49 == *(a1 + 92))
                    {
                      Results = (*(*(a1 + 32) + 160))(a3, a4, v20, 8, 1, a1 + 94, &v44);
                      if ((Results & 0x80000000) != 0)
                      {
                        goto LABEL_55;
                      }

                      Results = (*(*(a1 + 32) + 120))(a3, a4, v20, &v44 + 2);
                      if ((Results & 0x80000000) != 0)
                      {
                        goto LABEL_55;
                      }

                      while (HIWORD(v44))
                      {
                        Results = (*(*(a1 + 32) + 168))(a3, a4);
                        if ((Results & 0x80000000) == 0)
                        {
                          Results = (*(*(a1 + 32) + 120))(a3, a4, HIWORD(v44), &v44 + 2);
                          if ((Results & 0x80000000) == 0)
                          {
                            continue;
                          }
                        }

                        goto LABEL_55;
                      }
                    }
                  }
                }

                if (++v19 >= *v16)
                {
                  break;
                }
              }
            }

            v37 = *(a1 + 80);
            if (v37 == 50)
            {
              Results = consistencyCheck2(*(a1 + 32), a3, a4, v16);
              if ((Results & 0x80000000) == 0)
              {
LABEL_50:
                prmfx_FreeResults(v10, v18, v16);
                goto LABEL_51;
              }
            }

            else
            {
              if (v37 != 51)
              {
                goto LABEL_50;
              }

              Results = consistencyCheck3(*(a1 + 32), a3, a4, v16);
              if ((Results & 0x80000000) == 0)
              {
                goto LABEL_50;
              }
            }

LABEL_55:
            v9 = Results;
          }
        }
      }
    }
  }

LABEL_56:
  v38 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t hlp_CreateVoiceBrokerString_1(uint64_t a1, char *a2)
{
  v5 = 0;
  v6 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v6);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "voice", &v5);
    if ((result & 0x80000000) == 0)
    {
      return brokeraux_ComposeBrokerString(a1, "igtree", 1, 1, v6, v5, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t processIgParams(uint64_t a1)
{
  v1 = 2382372871;
  if (a1)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      *(a1 + 72) = "";
      *(a1 + 80) = 48;
      *(a1 + 88) = 0x50000000000000;
      if (*(v3 + 1336))
      {
        for (i = 0; *(v3 + 1336) > i; ++i)
        {
          v5 = (*(v3 + 1328) + 16 * i);
          v6 = *v5;
          if (!strcmp("accentable_pos", *v5))
          {
            v7 = strlen(v5[1]);
            v8 = heap_Realloc(*(*a1 + 8), *(v3 + 1304), (v7 + 1));
            *(v3 + 1304) = v8;
            if (!v8)
            {
              return 2382372874;
            }

            strcpy(v8, v5[1]);
          }

          else if (!strcmp("orth_top200", v6))
          {
            *(a1 + 72) = v5[1];
          }

          else if (!strcmp("canonical_conversion", v6) && !strcmp("yes", v5[1]))
          {
            *(a1 + 88) = 1;
          }

          else if (!strcmp("consistency_check", v6))
          {
            v9 = strstr(v5[1], "prm");
            if (v9)
            {
              *(a1 + 80) = v9[3];
            }
          }

          else if (!strcmp("pause_prm_value", v6))
          {
            *(a1 + 92) = *v5[1];
          }

          else if (!strcmp("pause_prm_length", v6))
          {
            *(a1 + 94) = atoi(v5[1]);
          }
        }
      }

      return 0;
    }
  }

  return v1;
}

void *traceFeatureVector_0(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v9 = *(a4 + 32);
  v10 = 1;
  LODWORD(v11) = (*(a2 + 1296) - 1);
  if (*(a2 + 1296) != 1)
  {
    v12 = (*(a2 + 1296) - 1);
    v13 = a3;
    do
    {
      v14 = *v13++;
      v10 += strlen(v14) + 1;
      --v12;
    }

    while (v12);
  }

  v15 = heap_Alloc(*(a1 + 8), v10);
  if (!v15)
  {
    return log_OutText(*(a1 + 32), "PRMFX", 0, 0, "in traceFeatureVector(): allocating %d bytes failed", v16, v17, v18, v10);
  }

  v19 = v15;
  v20 = (v9 + 56 * a5);
  *v15 = 0;
  if (v11)
  {
    v11 = v11;
    do
    {
      *&v19[strlen(v19)] = 32;
      v21 = *v7++;
      strcat(v19, v21);
      --v11;
    }

    while (v11);
  }

  v22 = *v20;
  v23 = v20[1] - v22;
  v24 = *(a4 + 40) + v22;
  if (*(v20 + 2))
  {
    v25 = *(v20 + 1);
  }

  log_OutText(*(a1 + 32), "PRMFX", 5, 0, "traceFeatureVector igtree [%02d] %-16.*s | %-54s | %.*s %s", v16, v17, v18, a5);
  v27 = *(a1 + 8);

  return heap_Free(v27, v19);
}

uint64_t consistencyCheck3(uint64_t a1, uint64_t a2, uint64_t a3, signed __int16 *a4)
{
  if (!*a4)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v19 = 0;
  v10 = -1;
  do
  {
    v11 = *(a4 + 4);
    v12 = *(v11 + 56 * v9 + 40);
    if (v12 == 49)
    {
      if ((v10 & 0x8000) != 0)
      {
        goto LABEL_17;
      }

      v14 = *(v11 + 56 * v10 + 40) >= 0x32u;
      goto LABEL_15;
    }

    if (v12 == 50)
    {
      if ((v10 & 0x8000) != 0)
      {
        goto LABEL_17;
      }

      v14 = *(v11 + 56 * v10 + 40) >= 0x33u;
LABEL_15:
      if (!v14)
      {
        v10 = v9;
      }

      goto LABEL_17;
    }

    if (v12 != 51)
    {
      goto LABEL_17;
    }

    if ((v10 & 0x8000) == 0)
    {
      v13 = v11 + 56 * v10;
      v10 = v9;
      if (*(v13 + 40) != 51)
      {
        goto LABEL_17;
      }

      v8 = (*(a1 + 160))(a2, a3, *(v13 + 4), 13, 2, "2", &v19);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v11 = *(a4 + 4);
    }

    v10 = v9;
LABEL_17:
    if ((v10 & 0x8000u) != 0)
    {
      v10 = v9;
    }

    v15 = v11 + 56 * v9;
    v16 = *(v15 + 32);
    if (v16)
    {
      v17 = *(v15 + 24);
      if (v17)
      {
        if (strncmp(v16, "%", v17))
        {
          v8 = (*(a1 + 160))(a2, a3, *(v11 + 56 * v10 + 4), 13, 2, "3", &v19);
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }

          v10 = -1;
        }
      }
    }

    ++v9;
  }

  while (*a4 > v9);
  if ((v10 & 0x8000) == 0)
  {
    return (*(a1 + 160))(a2, a3, *(*(a4 + 4) + 56 * v10 + 4), 13, 2, "3", &v19);
  }

  return v8;
}

uint64_t consistencyCheck2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = *a4;
  if (!*a4)
  {
    return 0;
  }

  v9 = 0;
  result = 0;
  v14 = 0;
  v11 = -1;
  do
  {
    v12 = *(a4 + 4);
    v13 = *(v12 + 56 * v9 + 40);
    if (v13 == 49)
    {
      if ((v11 & 0x8000) == 0 && *(v12 + 56 * v11 + 40) < 0x32u)
      {
        v11 = v9;
      }
    }

    else if (v13 == 50)
    {
      v11 = v9;
    }

    if (v11 < 0)
    {
      v11 = v9;
    }

    if (*(v12 + 56 * v9 + 48))
    {
      result = (*(a1 + 160))(a2, a3, *(v12 + 56 * v11 + 4), 13, 2, "2", &v14);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v4 = *a4;
      v11 = -1;
    }

    ++v9;
  }

  while (v4 > v9);
  if ((v11 & 0x8000) == 0)
  {
    return (*(a1 + 160))(a2, a3, *(*(a4 + 4) + 56 * v11 + 4), 13, 2, "2", &v14);
  }

  return result;
}

uint64_t fe_msp_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v24 = 0;
  v25 = 0;
  v5 = 2705334279;
  v23 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v25);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    Object = objc_GetObject(*(v25 + 48), "LINGDB", &v24);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_11;
    }

    Object = objc_GetObject(*(v25 + 48), "FE_DCTLKP", &v23);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_11;
    }

    v11 = heap_Alloc(*(v25 + 8), 216);
    v16 = v25;
    if (v11)
    {
      v17 = v11;
      *v11 = v25;
      *(v11 + 8) = a3;
      *(v11 + 16) = a4;
      *(v11 + 200) = *(v24 + 8);
      v18 = v23;
      *(v11 + 40) = *(v23 + 8);
      *(v11 + 24) = *(v18 + 16);
      *(v11 + 120) = 0;
      *(v11 + 208) = 0;
      log_OutText(*(v16 + 32), "FE_MSP", 4, 0, "Entering fe_msp_ObjOpen", v13, v14, v15, v22);
      Object = msp_check_dctlkp_version(v17);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

      *(v17 + 48) = heap_Alloc;
      *(v17 + 56) = heap_Calloc;
      *(v17 + 64) = heap_Realloc;
      *(v17 + 72) = heap_Free;
      v19 = OOCAllocator_Con(v17 + 80, (v17 + 48), *(*v17 + 8));
      v20 = LH_ERROR_to_VERROR(v19);
      if ((v20 & 0x80000000) == 0)
      {
        *(v17 + 192) = 0;
        *(v17 + 160) = 0u;
        *(v17 + 176) = 0u;
        *(v17 + 128) = 0u;
        *(v17 + 144) = 0u;
        Object = msp_prepare_voice_specific_msp_luavm(v17);
        if ((Object & 0x80000000) == 0)
        {
          v5 = msp_prepare_common_msp_luavm(v17);
          if ((v5 & 0x80000000) == 0)
          {
            *a5 = v17;
            *(a5 + 8) = 1065;
            return v5;
          }

LABEL_16:
          fe_msp_ObjClose(*a5, *(a5 + 8));
          return v5;
        }

LABEL_11:
        v5 = Object;
        goto LABEL_16;
      }

      v5 = v20;
      v16 = v25;
    }

    else
    {
      v5 = 2705334282;
    }

    log_OutPublic(*(v16 + 32), "FE_MSP", 78000, 0, v12, v13, v14, v15, v22);
    goto LABEL_16;
  }

  return v5;
}

uint64_t fe_msp_ObjClose(uint64_t *a1, int a2)
{
  v3 = 2705334280;
  v4 = safeh_HandleCheck(a1, a2, 1065, 216);
  if ((v4 & 0x80000000) == 0)
  {
    if (a1)
    {
      v8 = v4;
      log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering fe_msp_ObjClose", v5, v6, v7, v10);
      msp_deallocate_supported_styles(a1, (a1 + 20));
      msp_deallocate_supported_styles(a1, (a1 + 16));
      luavmldoutil_destroy_lua_vm((a1 + 10), a1 + 20);
      luavmldoutil_destroy_lua_vm((a1 + 10), a1 + 16);
      kaldi::nnet1::Component::IsUpdatable((a1 + 10));
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
      heap_Free(*(*a1 + 8), a1);
      return v8;
    }

    else
    {
      return 2705334282;
    }
  }

  return v3;
}

uint64_t fe_msp_ObjReopen(uint64_t a1, int a2)
{
  v3 = 2705334280;
  if ((safeh_HandleCheck(a1, a2, 1065, 216) & 0x80000000) != 0)
  {
    return v3;
  }

  if (!a1)
  {
    return 2705334282;
  }

  log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering fe_msp_ObjReopen", v4, v5, v6, v9);
  v7 = msp_check_dctlkp_version(a1);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  *(a1 + 192) = 0;
  v7 = msp_prepare_voice_specific_msp_luavm(a1);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  return msp_prepare_common_msp_luavm(a1);
}

uint64_t fe_msp_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 1065, 216);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2705334280;
  }
}

uint64_t fe_msp_Process(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v31 = 0;
  v30 = 0;
  if ((safeh_HandleCheck(a1, a2, 1065, 216) & 0x80000000) != 0)
  {
    return 2705334280;
  }

  *a5 = 1;
  log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering fe_msp_Process", v9, v10, v11, v29);
  has_set_style_marker = LingDBIsValid(a1[25], a3, a4, &v31);
  if ((has_set_style_marker & 0x80000000) == 0)
  {
    if (v31 == 1)
    {
      has_set_style_marker = LingDBHasSentence(a1[25], a3, a4, &v31 + 1);
      if ((has_set_style_marker & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      if (HIDWORD(v31) == 1)
      {
        v16 = auxTouchLingdbInstance(a1[25], a3, a4);
        if ((v16 & 0x80000000) != 0)
        {
LABEL_19:
          has_set_style_marker = v16;
          goto LABEL_24;
        }

        has_set_style_marker = msp_lingDB_has_set_style_marker(a1[25], a3, a4, &v30);
        if ((has_set_style_marker & 0x80000000) != 0)
        {
          goto LABEL_24;
        }

        if (v30 == 1 || a1[26])
        {
          has_set_style_marker = initLDO((a1 + 10), a1 + 15);
          if ((has_set_style_marker & 0x80000000) != 0)
          {
            goto LABEL_24;
          }

          v17 = *a1;
          if (a1[15])
          {
            v16 = importFromLingDBWordRecord(v17, a1[25], a3, a4, a1 + 15, 1);
            if ((v16 & 0x80000000) == 0)
            {
              v16 = msp_prepare_ldo_for_lua_style_processing(a1, v18, v19, v20, v21, v22, v23, v24);
              if ((v16 & 0x80000000) == 0)
              {
                if (!a1[20] || (v16 = msp_execute_voice_specific_msp_entry_point(a1, "FE_MSP"), (v16 & 0x80000000) == 0))
                {
                  if (!a1[16] || (v16 = msp_execute_common_msp_entry_point(a1, "FE_MSP"), (v16 & 0x80000000) == 0))
                  {
                    v16 = exportToLingDBWordRecord(*a1, a1[25], a3, a4, (a1 + 10), a1[15], 1);
                  }
                }
              }
            }

            goto LABEL_19;
          }

          v25 = *(v17 + 32);
          v26 = "Init LDO is NULL, returning";
        }

        else
        {
          v25 = *(*a1 + 32);
          v26 = "Sentence does not contain <esc>style, returning";
        }
      }

      else
      {
        v25 = *(*a1 + 32);
        v26 = "LingDB has no sentence, returning";
      }
    }

    else
    {
      v25 = *(*a1 + 32);
      v26 = "Empty or Invalid LingDB, returning";
    }

    log_OutText(v25, "FE_MSP", 5, 0, v26, v12, v13, v14, 0);
  }

LABEL_24:
  v27 = a1[15];
  if (v27)
  {
    deinitLDO((a1 + 10), v27);
    a1[15] = 0;
  }

  return has_set_style_marker;
}

uint64_t fe_msp_ProcessEnd(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1065, 216);
  if ((result & 0x80000000) != 0)
  {
    return 2705334280;
  }

  v4 = *(a1 + 208);
  if (v4)
  {
    v5 = OOC_PlacementDeleteObject(a1 + 80, v4);
    result = LH_ERROR_to_VERROR(v5);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 208) = 0;
    }
  }

  return result;
}

uint64_t fe_msp_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2705334273;
  }

  result = 0;
  *a2 = &IFeMSP;
  return result;
}

uint64_t msp_check_dctlkp_version(void *a1)
{
  v3 = 0;
  v2 = 0;
  return (*(a1[5] + 88))(a1[3], a1[4], &v3, &v2);
}

uint64_t msp_deallocate_supported_styles(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    result = OOC_PlacementDeleteObject(result + 80, v3);
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t loc_process_ldo_with_lua(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a1[15];
  if (a4)
  {
    v10 = LuaVMLDO_RunFunctionWithLDOAndTableArguments(v8, a3, v9, a4);
  }

  else
  {
    v10 = LuaVMLDO_RunFunction(v8, a3, v9);
  }

  v15 = LH_ERROR_to_VERROR(v10);
  if ((v15 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), a5, 78002, 0, v11, v12, v13, v14, v17);
  }

  return v15;
}

uint64_t msp_lingDB_has_set_style_marker(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v13 = 0;
  v12 = 0;
  *a4 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v13 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 176))(a2, a3, HIWORD(v13), 1, &v12, &v13);
    if ((result & 0x80000000) == 0)
    {
      v9 = v13;
      if (v13)
      {
        v10 = v12;
        while (1)
        {
          v11 = *v10;
          v10 += 8;
          if (v11 == 60)
          {
            break;
          }

          if (!--v9)
          {
            return result;
          }
        }

        *a4 = 1;
      }
    }
  }

  return result;
}

uint64_t msp_prepare_common_msp_luavm(uint64_t a1)
{
  *(a1 + 144) = "runMsp";
  *(a1 + 152) = "getSupportedStylesMsp";
  v5 = loc_prepare_luavm(a1, (a1 + 128), "msp");
  if ((v5 & 0x80000000) == 0)
  {
    if (*(a1 + 128))
    {
      *(a1 + 192) = 1;
      v6 = "Common MSP data available";
    }

    else
    {
      v6 = "No common MSP data available";
    }

    log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, v6, v2, v3, v4, v8);
  }

  return v5;
}

uint64_t loc_prepare_luavm(uint64_t a1, uint64_t *a2, char *a3)
{
  v7 = a2 + 1;
  v6 = a2[1];
  if (v6)
  {
    OOC_PlacementDeleteObject(a1 + 80, v6);
    *v7 = 0;
  }

  v8 = PNEW_LDOObject_Con(a1 + 80, a1 + 80, v7);
  v9 = LH_ERROR_to_VERROR(v8);
  if ((v9 & 0x80000000) != 0)
  {
    v14 = v9;
    v19 = *(*a1 + 32);
    v18 = "Error creating LDOObject for supported styles";
LABEL_17:
    log_OutText(v19, "FE_MSP", 4, 0, v18, v10, v11, v12, v21);
    return v14;
  }

  v13 = luavmldoutil_initialize_lua_vm(*(a1 + 8), *(a1 + 16), a1 + 80, a2[2], loc_lua_log_callback, a2, a3);
  v14 = v13;
  if ((v13 & 0x80000000) != 0)
  {
    if ((v13 & 0x1FFF) != 0xA)
    {
      log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Ignoring error from LuaVM initialize", v10, v11, v12, v21);
      return 0;
    }

    return v14;
  }

  v15 = *a2;
  if (!*a2)
  {
    v19 = *(*a1 + 32);
    v18 = "No data to initialize LuaVM, returning";
    goto LABEL_17;
  }

  v22 = 0;
  IsLuaFunctionAvailable = LuaVMLDO_IsLuaFunctionAvailable(v15, a2[3], &v22);
  v14 = LH_ERROR_to_VERROR(IsLuaFunctionAvailable);
  if ((v14 & 0x80000000) != 0)
  {
    v18 = "Ignoring error from LuaVM get supported styles";
    goto LABEL_16;
  }

  if (v22 != 1)
  {
    v18 = "No Lua function to get supported styles found";
    goto LABEL_16;
  }

  LuaVMLDO_RunFunctionReturningTable(*a2, a2[3], a2[1]);
  v14 = LH_ERROR_to_VERROR(v17);
  if ((v14 & 0x80000000) != 0)
  {
    v18 = "Error executing the Lua function to get supported styles";
LABEL_16:
    v19 = *(*a1 + 32);
    goto LABEL_17;
  }

  return v14;
}

uint64_t msp_prepare_ldo_for_lua_style_processing(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v84 = 0;
  v85 = 0;
  v86 = 0;
  log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering prepare ldo for lua processing", a6, a7, a8, v81);
  v88 = 0;
  v89 = 0;
  __s1[0] = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v9 = *(a1[15] + 32);
  v10 = *(v9 + 24);
  if (v10 < *(v9 + 32))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *v10;
      Type = LDOObject_GetType(*v10, __s1);
      is_style_supported_by_lua = LH_ERROR_to_VERROR(Type);
      if ((is_style_supported_by_lua & 0x80000000) != 0)
      {
        goto LABEL_134;
      }

      if (!strcmp(__s1[0], "MARKER_SET_STYLE"))
      {
        StringAttribute = LDOObject_GetStringAttribute(v14, "STRARGS", &v88, &v92);
        is_style_supported_by_lua = LH_ERROR_to_VERROR(StringAttribute);
        if ((is_style_supported_by_lua & 0x80000000) != 0)
        {
          goto LABEL_134;
        }

        if (v88 == 1)
        {
          v18 = v92;
          v87 = 0;
          if (!strcmp(v92, "default"))
          {
            v87 = 1;
          }

          else
          {
            is_style_supported_by_lua = loc_is_style_supported_by_lua(a1, (a1 + 20), v18, &v87);
            if ((is_style_supported_by_lua & 0x80000000) != 0)
            {
              goto LABEL_134;
            }

            is_style_supported_by_lua = loc_is_style_supported_by_lua(a1, (a1 + 16), v18, &v87);
            if ((is_style_supported_by_lua & 0x80000000) != 0)
            {
              goto LABEL_134;
            }

            if (!v87)
            {
              v19 = v11 - v12;
              v20 = ((v11 - v12) >> 3) + 1;
              if (v20 > v13)
              {
                v21 = 2 * v13;
                if (2 * v13 >= v13 + 1000000)
                {
                  v21 = v13 + 1000000;
                }

                if (v21 > v20)
                {
                  v20 = v21;
                }

                if (v20 <= 8)
                {
                  v13 = 8;
                }

                else
                {
                  v13 = v20;
                }

                v22 = OOCAllocator_Realloc((a1 + 10), v12, 8 * v13, &v88 + 1);
                if (HIDWORD(v88))
                {
                  goto LABEL_27;
                }

                v12 = v22;
                v11 = (v22 + (v19 & 0x7FFFFFFF8));
              }

              *v11++ = v14;
            }
          }
        }
      }

      if (++v10 >= *(*(a1[15] + 32) + 32))
      {
        goto LABEL_26;
      }
    }
  }

  v13 = 0;
  v12 = 0;
  v11 = 0;
LABEL_26:
  v90 = v12;
  v91 = v11;
  LODWORD(v89) = v13;
  is_style_supported_by_lua = loc_delete_style_markers(a1, &v89);
  if ((is_style_supported_by_lua & 0x80000000) != 0)
  {
LABEL_134:
    v30 = is_style_supported_by_lua;
LABEL_135:
    v51 = v85;
    goto LABEL_136;
  }

LABEL_27:
  LODWORD(v92) = 0;
  __s1[0] = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v23 = *(a1[15] + 32);
  v24 = *(v23 + 24);
  if (v24 < *(v23 + 32))
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v28 = *v24;
      v29 = LDOObject_GetType(*v24, __s1);
      v30 = LH_ERROR_to_VERROR(v29);
      if ((v30 & 0x80000000) != 0)
      {
        break;
      }

      v31 = __s1[0];
      if (!strcmp(__s1[0], "MARKER_SET_STYLE") || !strcmp(v31, "MARKER_INSERT_PROMPT") || !strcmp(v31, "MARKER_INSERT_AUDIO") || !strcmp(v31, "MARKER_SET_TYPE_OF_INPUT") || !strcmp(v31, "MARKER_SET_PINYIN"))
      {
        v32 = v25 - v26;
        v33 = ((v25 - v26) >> 3) + 1;
        if (v33 > v27)
        {
          v34 = 2 * v27;
          if (2 * v27 >= v27 + 1000000)
          {
            v34 = v27 + 1000000;
          }

          if (v34 > v33)
          {
            v33 = v34;
          }

          if (v33 <= 8)
          {
            v27 = 8;
          }

          else
          {
            v27 = v33;
          }

          v35 = OOCAllocator_Realloc((a1 + 10), v26, 8 * v27, &v92);
          v26 = v35;
          if (v92)
          {
            break;
          }

          v25 = (v35 + (v32 & 0x7FFFFFFF8));
        }

        *v25++ = v28;
      }

      if (++v24 >= *(*(a1[15] + 32) + 32))
      {
        goto LABEL_49;
      }
    }

LABEL_70:
    if (v26)
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  v26 = 0;
  v25 = 0;
  v30 = 0;
LABEL_49:
  if (((v25 - v26) & 0x7FFFFFFF0) == 0)
  {
    goto LABEL_70;
  }

  v36 = 0;
  v37 = v91;
  v82 = v90;
  v38 = ((v25 - v26) >> 3);
  v83 = v89;
  while (1)
  {
    v39 = *(v26 + 8 * v36);
    LDOObject_GetType(v39, __s1);
    v40 = v36 + 1;
    if (strcmp(__s1[0], "MARKER_SET_STYLE") || v40 >= v38)
    {
      goto LABEL_68;
    }

    v42 = *(v26 + 8 * v36 + 8);
    LDOObject_GetType(v42, __s1);
    if (strcmp(__s1[0], "MARKER_SET_STYLE"))
    {
      goto LABEL_68;
    }

    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v39);
    if (AbsoluteFrom != LDOLabel_GetAbsoluteFrom(v42))
    {
      goto LABEL_68;
    }

    v44 = v37 - v82;
    v45 = ((v37 - v82) >> 3) + 1;
    if (v45 > v83)
    {
      break;
    }

LABEL_67:
    *v37++ = v39;
    v91 = v37;
LABEL_68:
    v36 = v40;
    if (v38 == v40)
    {
      LODWORD(v89) = v83;
      v30 = loc_delete_style_markers(a1, &v89);
      goto LABEL_71;
    }
  }

  v46 = 2 * v83;
  if (2 * v83 >= v83 + 1000000)
  {
    v46 = v83 + 1000000;
  }

  if (v46 > v45)
  {
    v45 = v46;
  }

  if (v45 <= 8)
  {
    v47 = 8;
  }

  else
  {
    v47 = v45;
  }

  v48 = OOCAllocator_Realloc((a1 + 10), v82, 8 * v47, &v92);
  v90 = v48;
  if (!v92)
  {
    v82 = v48;
    v37 = (v48 + (v44 & 0x7FFFFFFF8));
    v83 = v47;
    goto LABEL_67;
  }

  LODWORD(v89) = v83;
LABEL_71:
  OOCAllocator_Free((a1 + 10), v26);
LABEL_72:
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  LODWORD(__s1[0]) = 0;
  v89 = 0;
  v49 = *(a1[15] + 32);
  v50 = *(v49 + 24);
  if (v50 >= *(v49 + 32))
  {
    v51 = v85;
    v52 = v86;
LABEL_91:
    v89 = 0;
    if (v52 > v51 && ((v52 - v51) & 0x7FFFFFFF8) != 0)
    {
      while (1)
      {
        v89 = *v51;
        if (!LDOLabel_GetAbsoluteFrom(v89))
        {
          break;
        }

        if (++v51 >= v52)
        {
          goto LABEL_100;
        }
      }
    }

    if (!a1[26])
    {
      goto LABEL_100;
    }

    LODWORD(__s1[0]) = 0;
    LODWORD(v92) = 0;
    v62 = LDO_AddLabelOnSubstring(a1[15], "MARKER", "MARKER_SET_STYLE", __s1, &v92, &v89);
    is_style_supported_by_lua = LH_ERROR_to_VERROR(v62);
    if ((is_style_supported_by_lua & 0x80000000) == 0)
    {
      LDOObject_SetU32Attribute(v89, "_MTYPE", 60);
      is_style_supported_by_lua = LH_ERROR_to_VERROR(v63);
      if ((is_style_supported_by_lua & 0x80000000) == 0)
      {
        v64 = v89;
        v65 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1[26]);
        v66 = LDOObject_SetStringAttribute(v64, "STRARGS", v65);
        is_style_supported_by_lua = LH_ERROR_to_VERROR(v66);
        if ((is_style_supported_by_lua & 0x80000000) == 0)
        {
LABEL_100:
          v89 = 0;
          v90 = 0;
          __s1[0] = 0;
          __s1[1] = 0;
          v92 = 0;
          v93 = 0;
          v67 = *(a1[15] + 16);
          v68 = *(v67 + 80);
          v69 = *(v67 + 88);
          if (v68 >= v69)
          {
            v30 = 0;
            goto LABEL_135;
          }

          v70 = *(v67 + 80);
          v71 = v68;
          while (1)
          {
            v73 = *v71++;
            v72 = v73;
            v74 = v71 >= v69 ? 0 : *v71;
            v75 = v70 <= v68 ? 0 : *(v70 - 1);
            is_style_supported_by_lua = loc_find_style_suitable_for_given_node(v72, &v84, &v89);
            if ((is_style_supported_by_lua & 0x80000000) != 0)
            {
              break;
            }

            is_style_supported_by_lua = loc_find_style_suitable_for_given_node(v75, &v84, __s1);
            if ((is_style_supported_by_lua & 0x80000000) != 0)
            {
              break;
            }

            is_style_supported_by_lua = loc_find_style_suitable_for_given_node(v74, &v84, &v92);
            if ((is_style_supported_by_lua & 0x80000000) != 0)
            {
              break;
            }

            if (v89)
            {
              v76 = a1[26];
              v77 = v76 ? LHString_Erase(v76) : PNEW_LDOString_Con((a1 + 10), (a1 + 10), a1 + 26);
              is_style_supported_by_lua = LH_ERROR_to_VERROR(v77);
              if ((is_style_supported_by_lua & 0x80000000) != 0)
              {
                break;
              }

              v78 = LHString_Append(a1[26], v89);
              is_style_supported_by_lua = LH_ERROR_to_VERROR(v78);
              if ((is_style_supported_by_lua & 0x80000000) != 0)
              {
                break;
              }
            }

            if (a1[26])
            {
              v30 = 0;
              if (v93)
              {
                if (HIDWORD(v93))
                {
                  v30 = loc_set_nlu_attribute(a1, v89, v72, 2);
                  if ((v30 & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }
                }
              }

              if (!v90)
              {
                goto LABEL_128;
              }

              v30 = loc_set_nlu_attribute(a1, v89, v72, 0);
              if ((v30 & 0x80000000) != 0)
              {
                goto LABEL_135;
              }

              if (!HIDWORD(v90))
              {
                if (__s1[0])
                {
                  v30 = loc_set_nlu_attribute(a1, __s1[0], v72, 2);
                  if ((v30 & 0x80000000) != 0)
                  {
                    goto LABEL_135;
                  }
                }
              }

              if (!v90)
              {
LABEL_128:
                if (!v93 || !HIDWORD(v93))
                {
                  v79 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a1[26]);
                  v30 = loc_set_nlu_attribute(a1, v79, v72, 1);
                }
              }
            }

            else
            {
              v30 = 0;
            }

            if (v71 < v69)
            {
              v70 = v71;
              if ((v30 & 0x80000000) == 0)
              {
                continue;
              }
            }

            goto LABEL_135;
          }
        }
      }
    }

    goto LABEL_134;
  }

  v51 = v85;
  v52 = v86;
  v53 = v84;
  while (1)
  {
    v54 = *v50;
    v55 = LDOObject_GetType(*v50, &v89);
    v56 = LH_ERROR_to_VERROR(v55);
    if ((v56 & 0x80000000) != 0)
    {
      break;
    }

    if (!strcmp(v89, "MARKER_SET_STYLE"))
    {
      v57 = v52 - v51;
      v58 = ((v52 - v51) >> 3) + 1;
      if (v58 > v53)
      {
        v59 = 2 * v53;
        if (2 * v53 >= v53 + 1000000)
        {
          v59 = v53 + 1000000;
        }

        if (v59 > v58)
        {
          v58 = v59;
        }

        if (v58 <= 8)
        {
          v60 = 8;
        }

        else
        {
          v60 = v58;
        }

        v61 = OOCAllocator_Realloc((a1 + 10), v51, 8 * v60, __s1);
        v51 = v61;
        if (LODWORD(__s1[0]))
        {
LABEL_89:
          v85 = v51;
          v86 = v52;
          LODWORD(v84) = v53;
          goto LABEL_91;
        }

        v52 = (v61 + (v57 & 0x7FFFFFFF8));
        v53 = v60;
      }

      *v52++ = v54;
    }

    if (++v50 >= *(*(a1[15] + 32) + 32))
    {
      goto LABEL_89;
    }
  }

  v30 = v56;
  v85 = v51;
  v86 = v52;
LABEL_136:
  LODWORD(v84) = 0;
  if (v51)
  {
    OOCAllocator_Free((a1 + 10), v51);
  }

  return v30;
}

uint64_t msp_prepare_voice_specific_msp_luavm(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  *(a1 + 176) = "runVoiceMsp";
  *(a1 + 184) = "getSupportedStylesVoiceMsp";
  voice_specific_broker_string = loc_generate_voice_specific_broker_string(a1, v10, 1);
  if ((voice_specific_broker_string & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v6 = loc_prepare_luavm(a1, (a1 + 160), v10);
  if ((v6 & 0x80000000) == 0)
  {
    if (*(a1 + 160))
    {
      v7 = "Voice-specific MSP data available in the package";
      goto LABEL_5;
    }

    log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "No voice-specific MSP data available in the package", v3, v4, v5, *&v10[0]);
    voice_specific_broker_string = loc_generate_voice_specific_broker_string(a1, v10, 0);
    if ((voice_specific_broker_string & 0x80000000) == 0)
    {
      v6 = loc_prepare_luavm(a1, (a1 + 160), v10);
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_12;
      }

      if (!*(a1 + 160))
      {
        v7 = "No voice-specific MSP data available in the stage";
        goto LABEL_6;
      }

      v7 = "Voice-specific MSP data available in the stage";
LABEL_5:
      *(a1 + 192) = 1;
LABEL_6:
      log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, v7, v3, v4, v5, *&v10[0]);
      goto LABEL_12;
    }

LABEL_11:
    v6 = voice_specific_broker_string;
  }

LABEL_12:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t loc_generate_voice_specific_broker_string(uint64_t *a1, char *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0;
  __s = 0;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    v7 = Str;
  }

  else
  {
    v7 = paramc_ParamGetStr(*(*a1 + 40), "voice", &v15);
    if ((v7 & 0x80000000) == 0)
    {
      __strncat_chk();
      __strncat_chk();
      strlen(__s);
      __strncat_chk();
      __strncat_chk();
      v8 = v18[0];
      if (LOBYTE(v18[0]))
      {
        v9 = v18 + 1;
        do
        {
          *(v9 - 1) = __tolower(v8);
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      if (a3 == 1)
      {
        v11 = *a1;
        v12 = v17;
        v7 = brokeraux_ComposeBrokerString(v11, v18, 0, 0, 0, 0, 0, v17, 0x100uLL);
        if ((v7 & 0x80000000) != 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v12 = v18;
      }

      strcpy(a2, v12);
    }
  }

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t loc_delete_style_markers(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v5 = LDO_RemoveLabel(*(a1 + 120), *v4);
      v6 = LH_ERROR_to_VERROR(v5);
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      ++v4;
    }

    while (v4 < *(a2 + 16));
    v4 = *(a2 + 8);
  }

  *a2 = 0;
  if (v4)
  {
    OOCAllocator_Free(a1 + 80, v4);
    *(a2 + 8) = 0;
  }

  *(a2 + 16) = 0;
  return v6;
}

uint64_t loc_is_style_supported_by_lua(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v14 = 0;
  if (!*a2)
  {
    return 0;
  }

  BoolAttribute = LDOObject_GetBoolAttribute(*(a2 + 8), a3, &v14 + 1, &v14);
  v10 = LH_ERROR_to_VERROR(BoolAttribute);
  if ((v10 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Error getting LDOObject BOOLean attribute", v7, v8, v9, v13);
  }

  else if (HIDWORD(v14) == 1 && v14 == 1)
  {
    *a4 = 1;
  }

  return v10;
}

uint64_t loc_find_style_suitable_for_given_node(size_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  v3 = (a3 + 8);
  if (!a1)
  {
    return 0;
  }

  v7 = LDOTreeNode_ComputeAbsoluteFrom(a1, &v17 + 1);
  v8 = LH_ERROR_to_VERROR(v7);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = LDOTreeNode_ComputeAbsoluteTo(a1, &v17);
  v10 = LH_ERROR_to_VERROR(v9);
  if ((v10 & 0x80000000) == 0)
  {
    for (i = *(a2 + 8); i < *(a2 + 16); ++i)
    {
      v12 = *i;
      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*i);
      LDOLabel_GetAbsoluteFrom(v12);
      if (HIDWORD(v17) == AbsoluteFrom)
      {
        *(a3 + 12) = 1;
      }

      else if (!*(a3 + 12) && (AbsoluteFrom < HIDWORD(v17) || AbsoluteFrom > v17))
      {
        continue;
      }

      StringAttribute = LDOObject_GetStringAttribute(v12, "STRARGS", v3, a3);
      v10 = LH_ERROR_to_VERROR(StringAttribute);
      if ((v10 & 0x80000000) != 0 || *v3)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t loc_set_nlu_attribute(uint64_t a1, const char *a2, uint64_t *a3, int a4)
{
  result = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  if (a2)
  {
    if (a3)
    {
      v9 = PNEW_LDOString_Con(a1 + 80, a1 + 80, &v20);
      result = LH_ERROR_to_VERROR(v9);
      if ((result & 0x80000000) == 0)
      {
        v10 = LHString_Append(v20, STYLE_KEYS[a4]);
        result = LH_ERROR_to_VERROR(v10);
        if ((result & 0x80000000) == 0)
        {
          v11 = LHString_Append(v20, a2);
          result = LH_ERROR_to_VERROR(v11);
          if ((result & 0x80000000) == 0)
          {
            v12 = LHString_Append(v20, ";");
            result = LH_ERROR_to_VERROR(v12);
            if ((result & 0x80000000) == 0)
            {
              StringAttribute = LDOObject_GetStringAttribute(a3, "NLU", &v18, &v19);
              result = LH_ERROR_to_VERROR(StringAttribute);
              if ((result & 0x80000000) == 0)
              {
                if (!v18 || (v14 = LHString_Append(v20, v19), result = LH_ERROR_to_VERROR(v14), (result & 0x80000000) == 0))
                {
                  v15 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v20);
                  v16 = LDOObject_SetStringAttribute(a3, "NLU", v15);
                  result = LH_ERROR_to_VERROR(v16);
                }
              }
            }
          }
        }
      }
    }
  }

  do
  {
    if (!v20)
    {
      break;
    }

    v17 = OOC_PlacementDeleteObject(a1 + 80, v20);
    result = LH_ERROR_to_VERROR(v17);
  }

  while ((result & 0x80000000) != 0);
  return result;
}

uint64_t tbmeg_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2686459905;
  }

  result = 0;
  *a2 = &ITbmeg;
  return result;
}

uint64_t tbmeg_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2686459911;
  if (a5)
  {
    *a5 = safeh_GetNullHandle();
    a5[1] = v9;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    if ((InitRsrcFunction(a3, a4, &v21) & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v21 + 8), 1, 136);
      if (v10)
      {
        v11 = v10;
        *v10 = a3;
        v10[1] = a4;
        v10[4] = safeh_GetNullHandle();
        v11[5] = v12;
        v11[15] = safeh_GetNullHandle();
        v11[16] = v13;
        Object = objc_GetObject(*(v21 + 48), "SYNTHSTREAM", &v20);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v11[6] = *(v20 + 8);
        Object = nuance_pcre_ObjOpen(a3, a4, (v11 + 15));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v15 = paramc_ParamGetUInt(*(v21 + 40), "ppmaxpcreframeblocks", &v19) < 0 ? 30 : v19;
        UInt = paramc_ParamGetUInt(*(v21 + 40), "ppnumframesinblock", &v19);
        v17 = v19;
        if (UInt < 0)
        {
          v17 = 50;
        }

        Object = nuance_pcre_Init(v11[15], v11[16], v15, v17);
        if ((Object & 0x80000000) != 0)
        {
LABEL_13:
          v5 = Object;
          tbmeg_pObjClose(v11);
        }

        else
        {
          v5 = 0;
          *a5 = v11;
          *(a5 + 2) = 1029;
        }
      }

      else
      {
        return 2686459914;
      }
    }
  }

  return v5;
}

uint64_t tbmeg_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((result & 0x80000000) == 0)
  {
    tbmeg_ProcessEnd(a1, a2);

    return tbmeg_pObjClose(a1);
  }

  return result;
}

uint64_t tbmeg_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((result & 0x80000000) == 0)
  {
    *a3 = tbmeg_ResourceTypes_SZ_TBMEG_CONTENT_TYPES;
  }

  return result;
}

uint64_t tbmeg_ResourceLoad(uint64_t *a1, int a2, char *a3, const char *a4, char *a5, int a6, uint64_t a7)
{
  *&__n[1] = a5;
  __n[0] = a6;
  v7 = 2686459911;
  v33 = 0;
  v34 = 0;
  if (a3 && a7)
  {
    v10 = a5;
    v11 = a4;
    if (a4)
    {
      if (!a5 && a6)
      {
        return v7;
      }
    }

    else if (!a5 || !a6)
    {
      return v7;
    }

    v15 = safeh_HandleCheck(a1, a2, 1029, 136);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    *a7 = 0;
    *(a7 + 8) = 0;
    inited = InitRsrcFunction(*a1, a1[1], &v34);
    if ((inited & 0x80000000) == 0)
    {
      BinaryDataBroker = inited;
      NullHandle = safeh_GetNullHandle();
      v19 = a1 + 4;
      if (!safeh_HandlesEqual(a1[4], a1[5], NullHandle, v20))
      {
        log_OutPublic(v34[4], &modInfoTbm, 67001, 0, v21, v22, v23, v24, v33);
        return 2686459928;
      }

      if (!v11 || v10)
      {
        if (v10 && a6)
        {
          goto LABEL_26;
        }
      }

      else if (strstr(a3, "application/x-vocalizer-pt+bin") && strstr(a3, ";loader=broker"))
      {
        BinaryDataBroker = pts_ReadBinaryDataBroker(*a1, a1[1], v11, a1 + 4);
        if ((BinaryDataBroker & 0x80000000) == 0)
        {
          *a7 = *v19;
          goto LABEL_33;
        }

        goto LABEL_37;
      }

      v25 = brk_DataOpenEx(v34[3], v11, 0, &v33);
      if ((v25 & 0x80000000) != 0)
      {
        BinaryDataBroker = v25;
        goto LABEL_37;
      }

      BinaryDataBroker = brk_DataMapEx(v34[3], v33, 0, __n, &__n[1]);
      if ((BinaryDataBroker & 0x80000000) != 0)
      {
LABEL_37:
        v31 = v33;
        if (*&__n[1])
        {
          brk_DataUnmap(v34[3], v33, *&__n[1]);
          v31 = v33;
        }

        if (v31)
        {
          brk_DataClose(v34[3], v31);
        }

        if ((BinaryDataBroker & 0x80000000) != 0)
        {
          tbmeg_ResourceUnload(a1, a2, *a7, *(a7 + 8));
        }

        return BinaryDataBroker;
      }

      v26 = heap_Alloc(v34[1], __n[0]);
      a1[2] = v26;
      if (!v26)
      {
        return 2686459914;
      }

      memcpy(v26, *&__n[1], __n[0]);
      v10 = a1[2];
      *&__n[1] = v10;
LABEL_26:
      if (strstr(a3, "application/x-vocalizer-pt+text"))
      {
        TextData = pts_ReadTextData(*a1, a1[1], v10, __n[0], a1 + 4, 0, 0);
      }

      else
      {
        if (!strstr(a3, "application/x-vocalizer-pt+bin"))
        {
          goto LABEL_32;
        }

        TextData = pts_ReadBinaryDataBuffer(*a1, a1[1], v10, __n[0], a1 + 4);
      }

      BinaryDataBroker = TextData;
      if ((TextData & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

LABEL_32:
      *a7 = *v19;
      if (!v11)
      {
LABEL_34:
        v11 = "in-memory PTS";
LABEL_35:
        v28 = strlen(v11);
        v29 = heap_Alloc(v34[1], (v28 + 1));
        a1[3] = v29;
        if (v29)
        {
          strcpy(v29, v11);
          v30 = a1[3];
          logLoadTemplateSet(v34);
          goto LABEL_37;
        }

        return 2686459914;
      }

LABEL_33:
      if (*v11)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  return v7;
}

uint64_t tbmeg_ResourceUnload(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v22 = 0;
  v6 = pts_HandleCheck(a3, a4);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v6 = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v22);
  if ((inited & 0x80000000) != 0)
  {
    return 2686459911;
  }

  v8 = inited;
  v9 = v22;
  v10 = *(a1 + 24);
  if (log_HasTraceTuningDataSubscriber(*(v22 + 32)))
  {
    log_OutTraceTuningData(*(v9 + 32), 701, "%s%s %s%s", v11, v12, v13, v14, v15, "BEG");
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(*(a1 + 32), *(a1 + 40), NullHandle, v17))
  {
    pts_Free(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = safeh_GetNullHandle();
    *(a1 + 40) = v18;
  }

  v19 = *(a1 + 24);
  if (v19)
  {
    heap_Free(*(v22 + 8), v19);
    *(a1 + 24) = 0;
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    heap_Free(*(v22 + 8), v20);
    *(a1 + 16) = 0;
  }

  return v8;
}

uint64_t tbmeg_ProcessStart(_WORD **a1, int a2, _WORD *a3, _WORD *a4)
{
  v16 = 0;
  v8 = 2686459911;
  if ((safeh_HandleCheck(a1, a2, 1029, 136) & 0x80000000) != 0)
  {
    return 2686459912;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v16) & 0x80000000) == 0)
  {
    a1[7] = a3;
    a1[8] = a4;
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[4], a1[5], NullHandle, v10))
    {
      v12 = 0;
      do
      {
        v13 = (*(a1[6] + 8))(a3, a4, 514, tbmeg_ProcessStart_szInput[v12], 0, 0, a1 + 13);
        if ((v13 & 0x80000000) == 0)
        {
          break;
        }
      }

      while (v12++ != 6);
      if (v13 < 0)
      {
        a1[13] = 0;
      }

      v15 = (*(a1[6] + 8))(a3, a4, 514, "text/plain;charset=utf-8", 0, 0, a1 + 9);
      if ((v15 & 0x80000000) != 0)
      {
        v8 = v15;
      }

      else
      {
        v8 = (*(a1[6] + 8))(a3, a4, 514, "text/plain;charset=utf-8", 0, 1, a1 + 11);
        if ((v8 & 0x80000000) == 0)
        {
          return v8;
        }
      }

      tbmeg_ProcessEnd(a1, a2);
      return v8;
    }

    return 0;
  }

  return v8;
}

uint64_t tbmeg_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v42 = 0;
  __s = 0;
  __src = 0;
  __n = 0;
  __dst = 0;
  v7 = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2686459911;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v42) & 0x80000000) == 0)
  {
    if (!*(a1 + 72) || !*(a1 + 88))
    {
      v8 = 0;
LABEL_22:
      v9 = 1;
LABEL_23:
      *a5 = v9;
      return v8;
    }

    *a5 = 0;
    v7 = (*(*(a1 + 48) + 144))(*(a1 + 72), *(a1 + 80), &__n + 4, &__n);
    if ((v7 & 0x80000000) == 0)
    {
      v9 = __n;
      if (!__n)
      {
        v8 = 0;
        goto LABEL_23;
      }

      v7 = (*(*(a1 + 48) + 88))(*(a1 + 72), *(a1 + 80), &__src, &__n + 4);
      if ((v7 & 0x80000000) == 0)
      {
        v10 = v42;
        v11 = __src;
        v12 = HIDWORD(__n);
        if (log_HasTraceTuningDataSubscriber(*(v42 + 32)))
        {
          log_OutTraceTuningData(*(v10 + 32), 702, "%s%s", v13, v14, v15, v16, v17, "BEG");
          log_OutTraceTuningDataBinary(*(v10 + 32), 703, "", "text/plain;charset=utf-8", v11, v12);
        }

        v18 = HIDWORD(__n);
        if (HIDWORD(__n) >= 3 && *__src == 239 && *(__src + 1) == 187 && *(__src + 2) == 191)
        {
          v19 = (*(*(a1 + 48) + 96))(*(a1 + 72), *(a1 + 80), 3);
          if ((v19 & 0x80000000) != 0)
          {
            v35 = v19;
            v26 = 0;
            goto LABEL_39;
          }

          v18 = HIDWORD(__n) - 3;
          HIDWORD(__n) -= 3;
          __src = __src + 3;
        }

        v25 = heap_Alloc(*(v42 + 8), (v18 + 1));
        if (!v25)
        {
          return 2686459914;
        }

        v26 = v25;
        memcpy(v25, __src, HIDWORD(__n));
        v26[HIDWORD(__n)] = 0;
        v27 = (*(*(a1 + 48) + 96))(*(a1 + 72), *(a1 + 80), HIDWORD(__n));
        if ((v27 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }

        __src = 0;
        NullHandle = safeh_GetNullHandle();
        if (safeh_HandlesEqual(*(a1 + 32), *(a1 + 40), NullHandle, v29))
        {
          v30 = 0;
          __s = v26;
          v31 = v26;
        }

        else
        {
          pts_Apply(*(a1 + 32), *(a1 + 40), *a1, *(a1 + 8), *(a1 + 120), *(a1 + 128), v26, &__s);
          v31 = __s;
          v30 = v26;
          if (!__s)
          {
            goto LABEL_33;
          }
        }

        v33 = strlen(v31);
        if (v33)
        {
          v34 = (*(*(a1 + 48) + 112))(*(a1 + 88), *(a1 + 96), &__dst, v33);
          if ((v34 & 0x80000000) != 0)
          {
            v35 = v34;
            v26 = v30;
LABEL_39:
            log_OutTraceTuningData(*(v42 + 32), 4, "%s%s %s%u", v20, v21, v22, v23, v24, "END");
            if (v26)
            {
              heap_Free(*(v42 + 8), v26);
            }

            if (__s)
            {
              heap_Free(*(v42 + 8), __s);
            }

            v36 = (*(*(a1 + 48) + 72))(*(a1 + 88), *(a1 + 96));
            if (v36 >= 0)
            {
              v8 = v35;
            }

            else
            {
              v8 = v36;
            }

            *(a1 + 88) = safeh_GetNullHandle();
            *(a1 + 96) = v37;
            goto LABEL_22;
          }

          if (__s)
          {
            memcpy(__dst, __s, v33);
          }

          logProcessOutput(v42, __dst, v33);
          v26 = v30;
          goto LABEL_37;
        }

        v26 = v30;
LABEL_33:
        v27 = (*(*(a1 + 48) + 112))(*(a1 + 88), *(a1 + 96), &__dst, 1);
        if ((v27 & 0x80000000) != 0)
        {
LABEL_38:
          v35 = v27;
          goto LABEL_39;
        }

        *__dst = 0;
        v33 = 1;
LABEL_37:
        v27 = (*(*(a1 + 48) + 120))(*(a1 + 88), *(a1 + 96), v33);
        goto LABEL_38;
      }
    }

    return v7;
  }

  return v8;
}

uint64_t tbmeg_ProcessEnd(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((v3 & 0x80000000) == 0)
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[13], a1[14], NullHandle, v5))
    {
      v6 = (*(a1[6] + 72))(a1[13], a1[14]);
      if (v6 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }
    }

    a1[13] = safeh_GetNullHandle();
    a1[14] = v7;
    v8 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[9], a1[10], v8, v9))
    {
      v10 = (*(a1[6] + 72))(a1[9], a1[10]);
      if (v10 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v10;
      }
    }

    a1[9] = safeh_GetNullHandle();
    a1[10] = v11;
    v12 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[11], a1[12], v12, v13))
    {
      v14 = (*(a1[6] + 72))(a1[11], a1[12]);
      if (v14 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v14;
      }
    }

    a1[11] = safeh_GetNullHandle();
    a1[12] = v15;
  }

  return v3;
}

uint64_t tbmeg_pObjClose(uint64_t a1)
{
  v1 = 2686459911;
  v10 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v10) & 0x80000000) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      heap_Free(*(v10 + 8), v3);
      *(a1 + 24) = 0;
    }

    if (*(a1 + 48))
    {
      objc_ReleaseObject(*(v10 + 48), "SYNTHSTREAM");
    }

    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 32), *(a1 + 40), NullHandle, v5))
    {
      pts_Free(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = safeh_GetNullHandle();
      *(a1 + 40) = v6;
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      heap_Free(*(v10 + 8), v7);
      *(a1 + 16) = 0;
    }

    v8 = nuance_pcre_DeInit(*(a1 + 120), *(a1 + 128));
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = nuance_pcre_ObjClose(*(a1 + 120), *(a1 + 128));
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    else
    {
      heap_Free(*(v10 + 8), a1);
      return 0;
    }
  }

  return v1;
}

uint64_t logLoadTemplateSet(uint64_t a1)
{
  result = log_HasTraceTuningDataSubscriber(*(a1 + 32));
  if (result)
  {
    return log_OutTraceTuningData(*(a1 + 32), 700, "%s%s %s%s %s%s", v3, v4, v5, v6, v7, "BEG");
  }

  return result;
}

uint64_t logProcessOutput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = log_HasTraceTuningDataSubscriber(*(a1 + 32));
  if (result)
  {
    log_OutTraceTuningDataBinary(*(a1 + 32), 704, "", "text/plain;charset=utf-8", a2, a3);
    return log_OutTraceTuningData(*(a1 + 32), 702, "%s%s", v7, v8, v9, v10, v11, "END");
  }

  return result;
}

uint64_t pts_strclone(uint64_t a1, char **a2, char *__s)
{
  v3 = 2686459911;
  if (a2)
  {
    v7 = strlen(__s);
    v8 = heap_Alloc(a1, v7 + 1);
    *a2 = v8;
    if (v8)
    {
      strcpy(v8, __s);
      return 0;
    }

    else
    {
      return 2686459914;
    }
  }

  return v3;
}

uint64_t numberOfOccurrences(char *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = strstr(a1, __s);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    ++v6;
    v5 = strstr(&v5[v4], __s);
  }

  while (v5);
  return v6;
}

uint64_t fillInSlots(uint64_t a1, char *a2, char *a3, unint64_t a4, int a5, char *a6, void *a7, const char **a8)
{
  v9 = a7;
  v58 = 0;
  v59 = 0;
  if (a7)
  {
    *a7 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  appended = ssftstring_ObjOpen(*(a1 + 8), &v59);
  if ((appended & 0x80000000) != 0)
  {
LABEL_75:
    v16 = appended;
  }

  else
  {
    v52 = a4;
    v53 = a1;
    v16 = ssftstring_ObjOpen(*(a1 + 8), &v58);
    if ((v16 & 0x80000000) == 0)
    {
      v17 = strchr(a2, 36);
      if (v17)
      {
        v18 = v17;
        v19 = v9;
        v20 = 0;
        v51 = v19;
        v21 = a6 | v19;
        v22 = v21 != 0;
        if (v21)
        {
          LOBYTE(v23) = 1;
        }

        else
        {
          v23 = a8 == 0;
        }

        v54 = v22;
        v55 = v23;
        v57 = a8;
        while (1)
        {
          v24 = v18 + 1;
          if (!v18[1])
          {
            if (a8)
            {
              *a8 = "use '$$' for literal dollar";
            }

            goto LABEL_89;
          }

          v25 = v18 - a2;
          if (a6)
          {
            memcpy(&a6[v20], a2, v18 - a2);
            a6[v20 + v25] = 0;
            v20 += v25;
            if (*v24 != 36)
            {
              goto LABEL_18;
            }

            *&a6[strlen(a6)] = 36;
          }

          else
          {
            v20 += v25;
            if (v18[1] != 36)
            {
LABEL_18:
              v26 = v59;
              appended = ssftstring_Clear(v59);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_75;
              }

              if (a8)
              {
                *a8 = 0;
              }

              v27 = *v24;
              v28 = v27;
              if (v27 == 123)
              {
                v28 = v18[2];
                v24 = v18 + 2;
              }

              if (v28)
              {
                v29 = 0;
                v30 = v24;
                while (1)
                {
                  v31 = v28;
                  if (!memchr("0123456789", v28, 0xBuLL))
                  {
                    break;
                  }

                  v32 = 10 * v29 + v31 - 48;
                  if (v32 < v29)
                  {
                    v32 = 0;
                    v34 = 0;
                    v35 = "slot number a lot too big";
                    goto LABEL_36;
                  }

                  v33 = *++v30;
                  LOBYTE(v28) = v33;
                  v29 = 10 * v29 + v31 - 48;
                  if (!v33)
                  {
                    goto LABEL_31;
                  }
                }

                v32 = v29;
LABEL_31:
                v34 = v30 - v24;
                if (v55)
                {
                  goto LABEL_41;
                }

                v36 = "";
                *v57 = "";
                if (v32)
                {
                  v35 = "slot number too big";
                  if (v32 > v52)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_40;
                }

                v35 = "invalid slot number";
LABEL_39:
                *v57 = v35;
                v36 = v35;
LABEL_40:
                if (*v36)
                {
                  goto LABEL_89;
                }
              }

              else
              {
                v32 = 0;
                v34 = 0;
                v35 = "invalid slot number";
LABEL_36:
                if (!v55)
                {
                  goto LABEL_39;
                }
              }

LABEL_41:
              a2 = &v24[v34];
              if (v27 == 123)
              {
                if (*a2 != 58)
                {
                  v48 = v57;
                  if (v57)
                  {
                    v49 = "bad slot reference: ':' expected";
                    goto LABEL_88;
                  }

                  goto LABEL_89;
                }

                v37 = strchr(a2 + 1, 125);
                if (!v37)
                {
                  v48 = v57;
                  if (v57)
                  {
                    v49 = "bad slot reference: '}' expected";
                    goto LABEL_88;
                  }

LABEL_89:
                  v16 = 2686459908;
                  goto LABEL_90;
                }

                v38 = v37;
                appended = ssftstring_AppendCStrN(v26, a2 + 1, v37 - (a2 + 1));
                if ((appended & 0x80000000) != 0)
                {
                  goto LABEL_75;
                }

                a2 = v38 + 1;
              }

              if (!a5 && ssftstring_Size(v59))
              {
                v48 = v57;
                if (v57)
                {
                  v49 = "slot type mapping not allowed";
LABEL_88:
                  *v48 = v49;
                }

                goto LABEL_89;
              }

              if (v54)
              {
                v39 = v58;
                v40 = v59;
                v60 = 0;
                v61 = 0;
                v41 = a3;
                if (v32 >= 2)
                {
                  v42 = v32 - 1;
                  v41 = a3;
                  do
                  {
                    v41 += strlen(v41) + 1;
                    if (a5)
                    {
                      v41 += strlen(v41) + 1;
                    }

                    --v42;
                  }

                  while (v42);
                }

                v16 = ssftstring_AssignCStr(v58, v41);
                if ((v16 & 0x80000000) != 0)
                {
                  a8 = v57;
                }

                else
                {
                  a8 = v57;
                  if (ssftstring_Size(v40))
                  {
                    TnSequence = ssftstring_ObjOpen(*(v53 + 8), &v61);
                    if ((TnSequence & 0x80000000) == 0)
                    {
                      TnSequence = ssftstring_ObjOpen(*(v53 + 8), &v60);
                      if ((TnSequence & 0x80000000) == 0)
                      {
                        v44 = strlen(v41);
                        TnSequence = makeTnSequence(&v41[v44 + 1], v61);
                        if ((TnSequence & 0x80000000) == 0)
                        {
                          v45 = ssftstring_CStr(v40);
                          TnSequence = makeTnSequence(v45, v60);
                          if ((TnSequence & 0x80000000) == 0)
                          {
                            TnSequence = ssftstring_ReplaceAllBy(v39, v61, v60);
                          }
                        }
                      }
                    }

                    v16 = TnSequence;
                  }
                }

                if (v61)
                {
                  ssftstring_ObjClose(v61);
                }

                if (v60)
                {
                  ssftstring_ObjClose(v60);
                }

                if ((v16 & 0x80000000) != 0)
                {
                  goto LABEL_90;
                }

                if (a6)
                {
                  v46 = ssftstring_CStr(v58);
                  strcat(a6, v46);
                }

                v20 += ssftstring_Size(v58);
              }

              else
              {
                v16 = 0;
                a8 = v57;
              }

              goto LABEL_72;
            }
          }

          ++v20;
          a2 = v18 + 2;
LABEL_72:
          v18 = strchr(a2, 36);
          if (!v18)
          {
            v47 = v20 + 1;
            v9 = v51;
            if (a6)
            {
              goto LABEL_77;
            }

            goto LABEL_78;
          }
        }
      }

      v47 = 1;
      if (a6)
      {
LABEL_77:
        strcat(a6, a2);
      }

LABEL_78:
      if (v9)
      {
        *v9 = v47 + strlen(a2);
      }
    }
  }

LABEL_90:
  if (v59)
  {
    ssftstring_ObjClose(v59);
  }

  if (v58)
  {
    ssftstring_ObjClose(v58);
  }

  return v16;
}

uint64_t pts_CheckDataConsistency(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 56))
    {
      if (*(a1 + 80))
      {
        v9 = *(a1 + 72);
        if (*(a1 + 64))
        {
          if (v9)
          {
            if (*(a1 + 88) || !*(a1 + 96))
            {
              v10 = 2686459922;
              v11 = *(*a1 + 32);
              v12 = "Suspiciously initialized inputs";
            }

            else
            {
              if (!*(a1 + 104) && *(a1 + 112))
              {
                if (!*(a1 + 120))
                {
                  v10 = 2686459922;
                  v11 = *(*a1 + 32);
                  v12 = "Uninitialized input cache";
                  goto LABEL_24;
                }

                return 0;
              }

              v10 = 2686459922;
              v11 = *(*a1 + 32);
              v12 = "Suspiciously initialized outputs";
            }
          }

          else
          {
            v10 = 2686459922;
            v11 = *(*a1 + 32);
            v12 = "Missing handle on input offsets";
          }
        }

        else
        {
          if (v9)
          {
            log_OutText(*(*a1 + 32), &modInfoTBM, 1, 0, "Suspiciously defined handle on input offsets", a6, a7, a8, v14);
          }

          if (*(a1 + 88) && !*(a1 + 96))
          {
            if (*(a1 + 104) && !*(a1 + 112))
            {
              if (*(a1 + 120) || *(a1 + 128))
              {
                log_OutText(*(*a1 + 32), &modInfoTBM, 1, 0, "Suspiciously configured input cache", a6, a7, a8, v14);
              }

              return 0;
            }

            v10 = 2686459922;
            v11 = *(*a1 + 32);
            v12 = "uninitialized outputs";
          }

          else
          {
            v10 = 2686459922;
            v11 = *(*a1 + 32);
            v12 = "uninitialized inputs";
          }
        }
      }

      else
      {
        v10 = 2686459922;
        v11 = *(*a1 + 32);
        v12 = "uninitialized input offsets";
      }
    }

    else
    {
      v10 = 2686459922;
      v11 = *(*a1 + 32);
      v12 = "unknown number of bytes of output sizes";
    }
  }

  else
  {
    v10 = 2686459922;
    v11 = *(*a1 + 32);
    v12 = "unknown number of bytes per output offset";
  }

LABEL_24:
  log_OutText(v11, &modInfoTBM, 0, 0, v12, a6, a7, a8, v14);
  return v10;
}

uint64_t pts_SetFormat(char **a1, char *__s1)
{
  if (!a1)
  {
    return 2686459911;
  }

  a1[4] = 0;
  if (strcmp(__s1, "Binary Template 1.0"))
  {
    if (!strcmp(__s1, "Binary Template 2.0"))
    {
      *(a1 + 8) = 1;
      goto LABEL_8;
    }

    if (!strcmp(__s1, "Binary Template 2.1"))
    {
      log_OutText(*(*a1 + 4), &modInfoTBM, 0, 0, "'%s' not supported anymore", v4, v5, v6, "Binary Template 2.1");
    }

    else if (!strcmp(__s1, "Binary Template 2.2"))
    {
      a1[4] = 0x100000001;
      goto LABEL_8;
    }

    return 2686459911;
  }

LABEL_8:
  v7 = *(*a1 + 1);

  return pts_strclone(v7, a1 + 1, __s1);
}

uint64_t pts_ReadBinaryDataBroker(_WORD *a1, uint64_t a2, const char *a3, uint64_t *a4)
{
  v26 = 0;
  v27 = 0;
  v4 = 2686459911;
  v25 = 0;
  if (a3 && a4 && (InitRsrcFunction(a1, a2, &v26) & 0x80000000) == 0)
  {
    *a4 = safeh_GetNullHandle();
    a4[1] = v9;
    v10 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "PT10", 131846, &v25);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v10 = pts_ReadBinaryData(v26, v25, 0, &v27);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v18 = v27;
    v10 = brk_DataOpen(*(v26 + 24));
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    if (!*(v18 + 88))
    {
      v19 = *(v18 + 128);
      if (v19)
      {
        v20 = *(v18 + 40);
        while (!(v20 >> (v19 - 1)))
        {
          *(v18 + 128) = --v19;
          if (!v19)
          {
            v19 = 0;
            break;
          }
        }
      }

      v21 = heap_Calloc(*(v26 + 8), 1 << v19, 8);
      *(v18 + 120) = v21;
      if (!v21)
      {
        return 2686459914;
      }

      v10 = pts_PrefillInputCache(v18);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    v10 = pts_CheckDataConsistency(v18, v11, v12, v13, v14, v15, v16, v17);
    if ((v10 & 0x80000000) != 0)
    {
LABEL_17:
      v4 = v10;
    }

    else
    {
      v4 = 0;
      *a4 = v18;
      *(a4 + 2) = 1060;
    }

    if (v25)
    {
      v22 = ssftriff_reader_ObjClose(v25, v11, v12, v13, v14, v15, v16, v17);
      if (v22 >= 0 || v4 <= -1)
      {
        return v4;
      }

      else
      {
        return v22;
      }
    }
  }

  return v4;
}

uint64_t pts_ReadBinaryData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = 0;
  v33 = 0;
  v34 = 0;
  __s = 0;
  v8 = heap_Calloc(*(a1 + 8), 1, 144);
  *a4 = v8;
  if (!v8)
  {
    return 2686459914;
  }

  v13 = v8;
  *v8 = a1;
  *(v8 + 116) = 0;
  for (i = ssftriff_reader_OpenChunk(a2, &v34, &v33, 0, v9, v10, v11, v12); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(a2, &v34, &v33, 0, v26, v27, v28, v29))
  {
    if (v34 ^ 0x45485450 | v35)
    {
      if (v34 ^ 0x464F5450 | v35)
      {
        if (v34 ^ 0x50495450 | v35)
        {
          if (v34 ^ 0x504F5450 | v35)
          {
            log_OutText(*(a1 + 32), &modInfoTBM, 4, 0, "pts_ReadBinaryData unknown chunk type: '%s'", v17, v18, v19, &v34);
          }

          else
          {
            Position = ssftriff_reader_GetPosition(a2);
            if (a3)
            {
              *(v13 + 104) = a3 + Position;
            }

            else
            {
              *(v13 + 112) = Position;
            }
          }
        }

        else
        {
          v24 = ssftriff_reader_GetPosition(a2);
          if (a3)
          {
            *(v13 + 88) = a3 + v24;
          }

          else
          {
            *(v13 + 96) = v24;
          }
        }
      }

      else if (v33 >= 4)
      {
        *(v13 + 40) = (v33 >> 2) - 1;
        if (a3)
        {
          *(v13 + 80) = a3 + ssftriff_reader_GetPosition(a2);
        }

        else
        {
          ChunkData = ssftriff_reader_DetachChunkData(a2, (v13 + 72), (v13 + 80), v15, v16, v17, v18, v19);
          if ((ChunkData & 0x80000000) != 0)
          {
            goto LABEL_34;
          }
        }
      }
    }

    else
    {
      ChunkData = ssftriff_reader_GetChunkData(a2, v33, &__s, v15, v16, v17, v18, v19);
      if ((ChunkData & 0x80000000) != 0 || (ChunkData = pts_SetFormat(v13, __s), (ChunkData & 0x80000000) != 0) || (__s += strlen(__s) + 1, ChunkData = pts_strclone(*(a1 + 8), (v13 + 16), __s), (ChunkData & 0x80000000) != 0))
      {
LABEL_34:
        v30 = ChunkData;
        goto LABEL_35;
      }

      v21 = &__s[strlen(*(v13 + 16)) + 1];
      __s = v21;
      v22 = *(a1 + 8);
      v23 = (v13 + 24);
      if (*(v13 + 32))
      {
        ChunkData = pts_strclone(v22, v23, v21);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_34;
        }

        __s += strlen(*(v13 + 24)) + 1;
      }

      else
      {
        ChunkData = pts_strclone(v22, v23, "<>");
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_34;
        }
      }

      *(v13 + 48) = xmmword_1C3810BF0;
      if (a3)
      {
        *(v13 + 128) = 0;
      }

      else
      {
        *(v13 + 128) = 8;
      }
    }

    ChunkData = ssftriff_reader_CloseChunk(a2);
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_34;
    }
  }

  v30 = i;
  if ((i & 0x1FFF) == 0x14)
  {
    return 0;
  }

LABEL_35:
  if (*a4)
  {
    heap_Free(*(a1 + 8), *a4);
    *a4 = 0;
  }

  return v30;
}

uint64_t pts_PrefillInputCache(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (!v1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v3 = 1 << v1;
  v6 = 0;
  v4 = (1 << v1) >> 1;
  do
  {
    result = pts_BinSearch(a1, 0, v4, &v8, &v7, &v6);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    ++v4;
  }

  while (v4 < v3);
  return result;
}

uint64_t pts_ReadBinaryDataBuffer(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v25 = 0;
  v26 = 0;
  v5 = 2686459911;
  v24 = 0;
  if (a4)
  {
    if (a3)
    {
      if (a5)
      {
        v8 = a4;
        if ((InitRsrcFunction(a1, a2, &v25) & 0x80000000) == 0)
        {
          *a5 = safeh_GetNullHandle();
          a5[1] = v11;
          v12 = ssftriff_reader_ObjOpenEx(a1, a2, 4, "PromptTemplate in RAM", a3, v8, "PT10", 131846, &v24);
          if ((v12 & 0x80000000) != 0 || (v12 = pts_ReadBinaryData(v25, v24, a3, &v26), (v12 & 0x80000000) != 0) || (v20 = v26, v12 = pts_CheckDataConsistency(v26, v13, v14, v15, v16, v17, v18, v19), (v12 & 0x80000000) != 0))
          {
            v5 = v12;
          }

          else
          {
            v5 = 0;
            *a5 = v20;
            *(a5 + 2) = 1060;
          }

          if (v24)
          {
            v21 = ssftriff_reader_ObjClose(v24, v13, v14, v15, v16, v17, v18, v19);
            if (v21 >= 0 || v5 <= -1)
            {
              return v5;
            }

            else
            {
              return v21;
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t pts_Free(uint64_t a1, int a2)
{
  v9 = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *(a1 + 8);
    v11 = *(*a1 + 8);
    if (v10)
    {
      heap_Free(*(*a1 + 8), v10);
      *(a1 + 8) = 0;
    }

    v12 = *(a1 + 16);
    if (v12)
    {
      heap_Free(v11, v12);
      *(a1 + 16) = 0;
    }

    v13 = *(a1 + 24);
    if (v13)
    {
      heap_Free(v11, v13);
      *(a1 + 24) = 0;
    }

    v14 = *(a1 + 72);
    if (v14)
    {
      v9 = ssftriff_reader_ReleaseChunkData(v14, v13, v3, v4, v5, v6, v7, v8);
      *(a1 + 72) = 0;
    }

    else if (*(a1 + 116))
    {
      v20 = *(a1 + 80);
      if (v20)
      {
        heap_Free(v11, v20);
      }
    }

    *(a1 + 80) = 0;
    if (*(a1 + 116))
    {
      v15 = *(a1 + 88);
      if (v15)
      {
        heap_Free(v11, v15);
      }
    }

    *(a1 + 88) = 0;
    if (*(a1 + 120))
    {
      v16 = 0;
      do
      {
        heap_Free(v11, *(*(a1 + 120) + 8 * v16++));
      }

      while (!(v16 >> *(a1 + 128)));
      heap_Free(v11, *(a1 + 120));
      *(a1 + 120) = 0;
    }

    if (*(a1 + 116))
    {
      v17 = *(a1 + 104);
      if (v17)
      {
        heap_Free(v11, v17);
      }
    }

    *(a1 + 104) = 0;
    v18 = *(a1 + 64);
    if (v18)
    {
      brk_DataClose(*(*a1 + 24), v18);
      *(a1 + 64) = 0;
    }

    heap_Free(v11, a1);
  }

  return v9;
}

uint64_t pts_MatchSlots(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, void *a7)
{
  if (a4)
  {
    v7 = a5;
    v11 = 0;
    v12 = 0;
    while (v7)
    {
      v13 = 0;
      v14 = *(a1 + 36);
      v15 = 1;
      do
      {
        if (*(a3 + v11))
        {
          if (!strcmp((a3 + v11), (a2 + v13)))
          {
            v15 = v15;
          }

          else
          {
            v15 = 0;
          }
        }

        v13 += strlen((a2 + v13)) + 1;
        v11 += strlen((a3 + v11)) + 1;
        if (v14)
        {
          if (*(a3 + v11) != 42 || *(a3 + v11 + 1))
          {
            if (!strcmp((a3 + v11), (a2 + v13)))
            {
              v15 = v15;
            }

            else
            {
              v15 = 0;
            }
          }

          v11 += strlen((a3 + v11)) + 1;
          v13 += strlen((a2 + v13)) + 1;
        }

        --v7;
      }

      while (v7);
      if (v15)
      {
        goto LABEL_22;
      }

      v11 += *(a1 + 48) + *(a1 + 56);
      ++v12;
      v7 = a5;
      if (v11 >= a4)
      {
        v15 = 0;
        goto LABEL_22;
      }
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
    v12 = 0;
    v11 = 0;
  }

LABEL_22:
  if (a7)
  {
    *a7 = v12;
  }

  if (a6)
  {
    *a6 = v11;
  }

  return v15;
}

uint64_t pts_Apply(uint64_t a1, int a2, _WORD *a3, int a4, void *a5, int a6, char *a7, uint64_t *a8)
{
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v16 = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = 2686459911;
  if (a7 && a8)
  {
    v68 = 0;
    matched = 0;
    v64 = 0;
    v18 = safeh_HandleCheck(a1, a2, 1060, 144);
    if ((v18 & 0x80000000) != 0)
    {
      v17 = v18;
      goto LABEL_40;
    }

    v55 = a8;
    __s = *(a1 + 24);
    v61 = *(a1 + 36);
    v76 = 0;
    v77[0] = 0;
    v74 = 0;
    v75 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v69 = 0;
    v19 = 0;
    if ((InitRsrcFunction(a3, a4, &v69) & 0x80000000) != 0)
    {
      v20 = 0;
      goto LABEL_36;
    }

    v20 = 0;
    if (!v69)
    {
      goto LABEL_36;
    }

    v56 = a7;
    v57 = 0;
    v20 = 0;
    v60 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
LABEL_8:
    v59 = v23;
    if (v23)
    {
      v19 = heap_Calloc(*(v69 + 8), v22, 1);
      if (!v19)
      {
        goto LABEL_71;
      }

      v20 = heap_Calloc(*(v69 + 8), v21 + 1, 1);
      if (!v20)
      {
        goto LABEL_71;
      }

      v57 = v19;
      v22 = 0;
      v21 = 0;
    }

    Markup = findMarkup("slotbegin", a3, a4, a5, a6, v56, v77, &v76, &v75, &v74);
    if ((Markup & 0x80000000) != 0)
    {
      v17 = Markup;
      v19 = v57;
      goto LABEL_36;
    }

    v58 = v20;
    v25 = v56;
    v26 = v59;
    while (1)
    {
      if (!v74)
      {
        v37 = strlen(v25) + 1;
        if ((v26 & 1) == 0)
        {
          v22 += v37;
          v23 = 1;
          v20 = v58;
          goto LABEL_8;
        }

        v39 = &v57[v22];
        memcpy(v39, v25, v37);
        v40 = &v39[v37];
        v19 = v57;
        *(v40 - 1) = 0;
        if (v60 != numberOfOccurrences(v57, __s))
        {
          *v57 = 0;
        }

        replaceSubstr(v57);
        v17 = pts_BinSearch(a1, v57, 0, &v65, &v63, &matched);
        v20 = v58;
        if ((v17 & 0x80000000) != 0)
        {
          goto LABEL_37;
        }

        if (matched)
        {
          v41 = v65;
          matched = pts_MatchSlots(a1, v58, v65, v63, v60, &v64, 0);
          if (matched)
          {
            v42 = *(a1 + 48);
            if (v42)
            {
              v43 = 0;
              v44 = *(a1 + 48);
              do
              {
                v43 = *(v41 + v64 - 1 + v44--) | (v43 << 8);
              }

              while (v44);
            }

            else
            {
              v43 = 0;
            }

            v45 = *(a1 + 104);
            if (v45)
            {
              v66 = (v45 + v43);
              goto LABEL_57;
            }

            v47 = *(a1 + 56);
            if (v47)
            {
              LODWORD(v48) = 0;
              v49 = -v47;
              v50 = (v42 + v47 + v64 + v41 - 1);
              do
              {
                v51 = *v50--;
                v48 = v51 | (v48 << 8);
              }

              while (!__CFADD__(v49++, 1));
            }

            else
            {
              v48 = 0;
            }

            v17 = brk_DataMap(*(*a1 + 24), *(a1 + 64), (*(a1 + 112) + v43), v48, &v66);
            if ((v17 & 0x80000000) != 0)
            {
              v20 = v58;
            }

            else
            {
              if (!matched)
              {
                goto LABEL_67;
              }

LABEL_57:
              v20 = v58;
              v17 = fillInSlots(*a1, v66, v58, v60, *(a1 + 36), 0, &v68, 0);
              if ((v17 & 0x80000000) == 0)
              {
                v46 = v68;
                goto LABEL_68;
              }
            }

LABEL_36:
            if (v19)
            {
LABEL_37:
              heap_Free(*(*a1 + 8), v19);
            }

            if (v20)
            {
              heap_Free(*(*a1 + 8), v20);
            }

LABEL_40:
            if (!*(a1 + 104) && v66)
            {
              brk_DataUnmap(*(*a1 + 24), *(a1 + 64), v66);
            }

            return v17;
          }
        }

LABEL_67:
        v46 = strlen(v56) + 1;
        v68 = v46;
        v20 = v58;
LABEL_68:
        v53 = heap_Realloc(*(*a1 + 8), *v55, v46);
        if (v53)
        {
          *v55 = v53;
          if (matched)
          {
            v17 = fillInSlots(*a1, v66, v20, v60, *(a1 + 36), v53, 0, 0);
          }

          else
          {
            strcpy(v53, v56);
          }

          goto LABEL_36;
        }

LABEL_71:
        v17 = 2686459914;
        goto LABEL_36;
      }

      v27 = findMarkup("slotend", a3, a4, a5, a6, v74, &v73, &v71, &v70, &v72);
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_34;
      }

      if (v72)
      {
        break;
      }

      v36 = v74;
LABEL_28:
      v27 = findMarkup("slotbegin", a3, a4, a5, a6, v36, v77, &v76, &v75, &v74);
      if ((v27 & 0x80000000) != 0)
      {
LABEL_34:
        v17 = v27;
        v19 = v57;
        v20 = v58;
        goto LABEL_36;
      }
    }

    v28 = (v77[0] - v25);
    if (v26)
    {
      memcpy(&v57[v22], v25, v77[0] - v25);
      v29 = &v28[v22];
      v30 = strlen(__s);
      ++v60;
      memcpy(&v29[v57], __s, v30);
      v22 = &v29[v30];
      v31 = v73 - v74;
      memcpy(&v58[v21], v74, v73 - v74);
      v21 += v31 + 1;
      v35 = v75;
      if (!v61)
      {
        if (v75)
        {
          log_OutText(*(v69 + 32), &modInfoTBM, 1, 0, "Slot type is not supported by currently active Prompt Template Set", v32, v33, v34, v54);
        }

        v26 = v59;
        goto LABEL_27;
      }

      memcpy(&v58[v21], v76, v75);
      v26 = v59;
    }

    else
    {
      v22 += &v28[strlen(__s)];
      v21 = &v73[v21] - v74 + 1;
      if (!v61)
      {
LABEL_27:
        v25 = v72;
        v36 = v72;
        goto LABEL_28;
      }

      v35 = v75;
    }

    v21 += v35 + 1;
    goto LABEL_27;
  }

  return v17;
}

uint64_t pts_BinSearch(uint64_t a1, char *__s1, unint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  v6 = 2686459911;
  if (a4)
  {
    if (a1)
    {
      if (a5)
      {
        v8 = a6;
        if (a6)
        {
          if ((v10 = *(a1 + 40), __s1) && !a3 || !__s1 && a3 && !(a3 >> *(a1 + 128)))
          {
            *a4 = 0;
            *a6 = 0;
            *a5 = 0;
            *(a1 + 136) = 1;
            if (v10 >= 1)
            {
              v11 = 0;
              v12 = v10 - 1;
              v13 = 64 - __clz(a3);
              if (!a3)
              {
                v13 = 0;
              }

              v32 = v13;
              while (1)
              {
                v36 = v12;
                v14 = v11 + (v12 - v11) / 2;
                v16 = *(a1 + 80);
                v15 = *(a1 + 88);
                v17 = *(v16 + 4 * v14);
                v18 = *(v16 + 4 * (v14 + 1)) - v17;
                if (v15)
                {
                  v6 = 0;
                  v19 = (v15 + v17);
                  if (__s1)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_28;
                }

                __src = 0;
                v22 = *(a1 + 136);
                v23 = *(a1 + 120);
                if (v22 >> *(a1 + 128))
                {
                  v22 = 0;
                  v24 = *v23;
                }

                else
                {
                  v19 = v23[v22];
                  if (v19)
                  {
                    v6 = 0;
                    goto LABEL_27;
                  }

                  v24 = 0;
                }

                v25 = heap_Realloc(*(*a1 + 8), v24, v18);
                if (!v25)
                {
                  return 2686459914;
                }

                *(*(a1 + 120) + 8 * v22) = v25;
                v26 = brk_DataMap(*(*a1 + 24), *(a1 + 64), (*(a1 + 96) + v17), v18, &__src);
                if ((v26 & 0x80000000) != 0)
                {
                  return v26;
                }

                memcpy(*(*(a1 + 120) + 8 * v22), __src, v18);
                v6 = brk_DataUnmap(*(*a1 + 24), *(a1 + 64), __src);
                if ((v6 & 0x80000000) != 0)
                {
                  return v6;
                }

                v19 = *(*(a1 + 120) + 8 * v22);
LABEL_27:
                v8 = a6;
                if (__s1)
                {
LABEL_16:
                  v20 = strcmp(__s1, v19);
                  *(a1 + 136) = (v20 > 0) | (2 * *(a1 + 136));
                  if (v20 > 0)
                  {
                    goto LABEL_33;
                  }

                  if ((v20 & 0x80000000) == 0)
                  {
LABEL_18:
                    *v8 = 1;
                    v21 = strlen(v19);
                    *a5 = v18 - (v21 + 1);
                    *a4 = &v19[v21 + 1];
                    goto LABEL_34;
                  }

                  goto LABEL_38;
                }

LABEL_28:
                v27 = *(a1 + 136);
                v28 = 64 - __clz(v27);
                if (!v27)
                {
                  v28 = 0;
                }

                if (v28 >= v32)
                {
                  v29 = 0;
                }

                else
                {
                  if ((a3 >> (v32 + ~v28)))
                  {
                    *(a1 + 136) = (2 * v27) | 1;
LABEL_33:
                    v11 = v14 + 1;
LABEL_34:
                    v12 = v36;
                    goto LABEL_39;
                  }

                  v29 = -1;
                }

                *(a1 + 136) = 2 * v27;
                if ((v29 & 0x80000000) == 0)
                {
                  goto LABEL_18;
                }

LABEL_38:
                v12 = v14 - 1;
LABEL_39:
                if (*v8 || v11 > v12)
                {
                  return v6;
                }
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t makeTnSequence(char *a1, uint64_t a2)
{
  v4 = strlen(a1);
  result = ssftstring_Reserve(a2, v4 + 7);
  if ((result & 0x80000000) == 0)
  {
    result = ssftstring_Clear(a2);
    if ((result & 0x80000000) == 0)
    {
      result = ssftstring_AppendChar(a2, 27);
      if ((result & 0x80000000) == 0)
      {
        result = ssftstring_AppendCStr(a2, "\\tn=");
        if ((result & 0x80000000) == 0)
        {
          result = ssftstring_AppendCStr(a2, a1);
          if ((result & 0x80000000) == 0)
          {

            return ssftstring_AppendCStr(a2, "\");
          }
        }
      }
    }
  }

  return result;
}

uint64_t findMarkup(char *__s, _WORD *a2, int a3, void *a4, int a5, char *a6, char **a7, char **a8, void *a9, void *a10)
{
  v45 = 0;
  v10 = 2686459911;
  if (__s)
  {
    if (*__s)
    {
      v43 = strlen(__s);
      if (a7)
      {
        if (a8 && a9 && a10)
        {
          *a7 = 0;
          *a8 = 0;
          *a10 = 0;
          *a9 = 0;
          if (a6)
          {
            v18 = strlen(a6);
            v19 = a5;
            v20 = v18;
            v42 = v19;
            v21 = esc_seq_strstr(a2, a3, a4, v19, a6, &v45);
            if (v21)
            {
              v22 = &a6[v20];
              v23 = v42;
              v41 = a8;
              while (1)
              {
                *a7 = v21;
                v24 = &v21[v45];
                if (*v24 == 92)
                {
                  v25 = v24 + 1;
                  v26 = &v21[v43 + 2 + v45];
                  do
                  {
                    v24 = v25;
                    v27 = v26;
                    if (++v25 > v22)
                    {
                      break;
                    }

                    v28 = memchr("\r\n\t ", *v24, 5uLL);
                    v26 = v27 + 1;
                  }

                  while (v28);
                  v29 = &v24[v43];
                  if (&v24[v43] >= v22)
                  {
                    goto LABEL_29;
                  }

                  v23 = v42;
                  if (!LH_strnicmp(v24, __s, v43))
                  {
                    break;
                  }
                }

LABEL_30:
                v21 = esc_seq_strstr(a2, a3, a4, v23, v24, &v45);
                if (!v21)
                {
                  return 0;
                }
              }

              do
              {
                v24 = v29;
                v31 = *v29++;
                v30 = v31;
                if (v29 > v22)
                {
                  break;
                }

                ++v27;
              }

              while (memchr("\r\n\t ", v30, 5uLL));
              v30 = v30;
              if (v30 == 61)
              {
                v32 = v24 + 1;
                do
                {
                  v33 = v32++;
                }

                while (v32 <= v22 && memchr("\r\n\t ", *v33, 5uLL));
                v34 = 0;
                *v41 = v33;
                do
                {
                  v35 = v34;
                  v36 = &v33[v34];
                  if (&v33[v34 + 1] > v22)
                  {
                    break;
                  }

                  v37 = memchr("\r\n\t \", v33[v34], 6uLL);
                  v34 = v35 + 1;
                }

                while (!v37);
                *a9 = v35;
                do
                {
                  v24 = v36;
                  v39 = *v36++;
                  v38 = v39;
                  v30 = v39;
                }

                while (v36 <= v22 && memchr("\r\n\t ", v38, 5uLL));
              }

              if (v30 == 92)
              {
                v10 = 0;
                *a10 = v24 + 1;
                return v10;
              }

LABEL_29:
              v23 = v42;
              goto LABEL_30;
            }
          }

          return 0;
        }
      }
    }
  }

  return v10;
}

char *replaceSubstr(char *result)
{
  if (result)
  {
    result = strstr(result, "\r\n");
    if (result)
    {
      v1 = result;
      do
      {
        v2 = strlen(v1 + 2);
        memmove(v1 + 1, v1 + 2, v2 + 1);
        *v1 = 10;
        result = strstr(v1 + 1, "\r\n");
        v1 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t pts_ReadTextData(_WORD *a1, int a2, char *a3, int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v139 = *MEMORY[0x1E69E9840];
  v7 = 2686459914;
  if (!a5 || (v106 = 0, (InitRsrcFunction(a1, a2, &v106) & 0x80000000) != 0))
  {
    v7 = 2686459911;
    goto LABEL_31;
  }

  s = a3;
  *a5 = safeh_GetNullHandle();
  a5[1] = v15;
  v16 = heap_Calloc(*(v106 + 8), 1, 64);
  if (v16)
  {
    v17 = v16;
    v109 = 0;
    if ((InitRsrcFunction(a1, a2, &v109) & 0x80000000) != 0)
    {
      v7 = 2686459911;
      goto LABEL_30;
    }

    v96 = a7;
    *v17 = 0u;
    *(v17 + 1) = 0u;
    *(v17 + 2) = 0u;
    *(v17 + 3) = 0u;
    v18 = v109;
    *v17 = v109;
    memsuite.realloc_fcn = builtin_Alloc;
    memsuite.free_fcn = builtin_Realloc;
    v108 = builtin_Free;
    memsuite.malloc_fcn = *(v18 + 8);
    strcpy(__s, "<>");
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    userData = 0u;
    v112 = 0u;
    *&v130 = __s;
    *&v137 = v17;
    *(&v137 + 1) = v18;
    *&v131 = heap_Calloc(*(v18 + 8), 4, 8);
    if (!v131)
    {
LABEL_29:
      DeiniState(&userData);
      goto LABEL_30;
    }

    v95 = a5;
    v19 = 0;
    v98 = a6;
    while (1)
    {
      do
      {
        ssftstring_ObjOpen(*(*(&v137 + 1) + 8), (v131 + 8 * v19++));
      }

      while (v19 != 4);
      DWORD2(v131) = -1;
      v20 = ssftstring_ObjOpen(*(*(&v137 + 1) + 8), &v132 + 1);
      if ((v20 & 0x80000000) != 0 || (v20 = ssftstring_ObjOpen(*(*(&v137 + 1) + 8), &v133), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v137 + 1) + 8), &v133 + 1), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v137 + 1) + 8), &v134), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v137 + 1) + 8), &v134 + 1), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v137 + 1) + 8), &v135), (v20 & 0x80000000) != 0))
      {
        v7 = v20;
        goto LABEL_29;
      }

      v21 = XML_ParserCreate_MM(0, &memsuite, 0);
      if (!v21)
      {
        goto LABEL_30;
      }

      v22 = v21;
      *&v138 = v21;
      XML_SetElementHandler(v21, CB_start, CB_end);
      XML_SetCharacterDataHandler(v22, CB_char);
      XML_SetUserData(v22, &userData);
      v23 = XML_Parse(v22, s, a4 - 1, 0);
      v24 = DWORD2(v138);
      if (v23)
      {
        if (DWORD2(v138) != -1608507392)
        {
          if (DWORD2(v138) == 1)
          {
LABEL_38:
            v24 = 2686459908;
            goto LABEL_39;
          }

          if ((DWORD2(v138) & 0x80000000) == 0)
          {
            v41 = pts_strclone(*(v109 + 8), v17 + 2, &v117 + 4);
            if ((v41 & 0x80000000) != 0)
            {
              v24 = v41;
            }

            else
            {
              v24 = pts_strclone(*(v109 + 8), v17 + 3, __s);
              if ((v24 & 0x80000000) == 0)
              {
                ssft_qsort(v17[6], v17[4], 48, compare_4);
              }
            }
          }

LABEL_39:
          XML_ParserFree(v22);
          DeiniState(&userData);
          v7 = v24;
          if ((v24 & 0x80000000) != 0)
          {
            goto LABEL_30;
          }

          v94 = v106;
          v42 = heap_Calloc(*(*v17 + 1), 1, 144);
          if (v42)
          {
            v43 = v42;
            *v42 = *v17;
            *(v42 + 116) = 1;
            v44 = pts_SetFormat(v42, v17[1]);
            if ((v44 & 0x80000000) != 0)
            {
              v7 = v44;
              goto LABEL_30;
            }

            v7 = pts_strclone(*(*v17 + 1), (v43 + 16), v17[2]);
            if ((v7 & 0x80000000) != 0)
            {
              goto LABEL_30;
            }

            if (*(v43 + 32))
            {
              v7 = pts_strclone(*(*v17 + 1), (v43 + 24), v17[3]);
              if ((v7 & 0x80000000) == 0)
              {
                goto LABEL_45;
              }

LABEL_30:
              v38 = *(*v17 + 1);
              intpts_FreeContent(v17);
              heap_Free(v38, v17);
              break;
            }

            v54 = v17[3];
            if (*v54 != 60 || v54[1] != 62 || v54[2])
            {
              log_OutText(*(v94 + 32), &modInfoTBM_0, 0, 0, "%s does not support custom slot place holders", v45, v46, v47, v17[1]);
              v7 = 2686459908;
              goto LABEL_30;
            }

LABEL_45:
            *(v43 + 56) = 2;
            *(v43 + 40) = xmmword_1C3810C50;
            v48 = v17[4];
            if (v48)
            {
              v49 = 0;
              v50 = 0;
              v51 = (v17[6] + 16);
              do
              {
                v52 = *v51;
                if (!v50 || strcmp(v50, *v51))
                {
                  *(v43 + 40) = ++v49;
                  v50 = v52;
                }

                v51 += 6;
                --v48;
              }

              while (v48);
              v53 = v49 + 1;
            }

            else
            {
              v53 = 1;
            }

            v55 = heap_Calloc(*(*v17 + 1), v53, 4);
            *(v43 + 80) = v55;
            if (v55)
            {
              if (*(v43 + 40))
              {
                v63 = 0;
                v64 = 0;
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v68 = 1;
                do
                {
                  v69 = v68;
                  if (v67)
                  {
                    v70 = heap_Calloc(*(*v17 + 1), v64, 1);
                    *(v43 + 88) = v70;
                    if (!v70)
                    {
                      goto LABEL_109;
                    }

                    v71 = heap_Calloc(*(*v17 + 1), v63, 1);
                    *(v43 + 104) = v71;
                    if (!v71)
                    {
                      goto LABEL_109;
                    }

                    v65 = v71;
                    v64 = 0;
                    v63 = 0;
                    v66 = *(v43 + 88);
                  }

                  v93 = v69;
                  if (v17[4])
                  {
                    v99 = 0;
                    v100 = 0;
                    *len = 0;
                    v72 = 0;
                    v73 = 0;
                    v74 = v17[6];
                    v97 = v65;
                    do
                    {
                      if (v72 && (v75 = *(v74 + 2), !strcmp(v72, v75)))
                      {
                        v102 = v75;
                        sa = v64;
                      }

                      else
                      {
                        *(*(v43 + 80) + 4 * v100) = v64;
                        if (v66)
                        {
                          strcpy((v66 + v64), *(v74 + 2));
                        }

                        v76 = *(v74 + 2);
                        v102 = v76;
                        if (v76)
                        {
                          v64 += strlen(v76) + 1;
                        }

                        v99 = v73;
                        ++v100;
                        *len = v64;
                        sa = v64;
                      }

                      v101 = strlen(*(v74 + 5));
                      if (v65)
                      {
                        strcpy((v65 + v63), *(v74 + 5));
                      }

                      v77 = v63;
                      v64 = sa;
                      if (*(v74 + 3))
                      {
                        v78 = 0;
                        v79 = *(v74 + 4);
                        v64 = sa;
                        do
                        {
                          if (v66)
                          {
                            strcpy((v66 + v64), v79);
                          }

                          v80 = strlen(v79);
                          v64 += v80 + 1;
                          v79 += v80 + 1;
                          if (*(v17 + 14))
                          {
                            if (v66)
                            {
                              strcpy((v66 + v64), v79);
                            }

                            v81 = strlen(v79);
                            v64 += v81 + 1;
                            v79 += v81 + 1;
                          }

                          ++v78;
                        }

                        while (v78 < *(v74 + 3));
                      }

                      v82 = *(v43 + 48);
                      if (v82)
                      {
                        v83 = 0;
                        v84 = v77;
                        v85 = v77;
                        v65 = v97;
                        v86 = v101;
                        do
                        {
                          if (v66)
                          {
                            *(v66 + v64) = v85;
                            v82 = *(v43 + 48);
                          }

                          ++v64;
                          v85 >>= 8;
                          ++v83;
                        }

                        while (v83 < v82);
                      }

                      else
                      {
                        v84 = v77;
                        v65 = v97;
                        v86 = v101;
                      }

                      v87 = v86 + 1;
                      v88 = *(v43 + 56);
                      if (v88)
                      {
                        v89 = 0;
                        v90 = v86 + 1;
                        do
                        {
                          if (v66)
                          {
                            *(v66 + v64) = v90;
                            v88 = *(v43 + 56);
                          }

                          ++v64;
                          v90 >>= 8;
                          ++v89;
                        }

                        while (v89 < v88);
                      }

                      if (v66)
                      {
                        v58 = &sa[-*len];
                        if (sa > *len)
                        {
                          *&userData = 0;
                          if (pts_MatchSlots(v43, &sa[v66], v66 + *len, v58, *(v74 + 3), 0, &userData))
                          {
                            v92 = *&v17[6][48 * v99 + 8 + 48 * userData];
                            log_OutText(*(v94 + 32), &modInfoTBM_0, 0, 0, "line %i: Template not reachable; covered by template in line %i", v60, v61, v62, *(v74 + 1));
                          }
                        }
                      }

                      v63 = v87 + v84;
                      v74 += 48;
                      ++v73;
                      v72 = v102;
                    }

                    while (v73 < v17[4]);
                  }

                  else
                  {
                    v100 = 0;
                  }

                  v68 = 0;
                  *(*(v43 + 80) + 4 * v100) = v64;
                  v67 = 1;
                  a6 = v98;
                }

                while ((v93 & 1) != 0);
              }

              else
              {
                v64 = 0;
                v63 = 0;
              }

              if (a6)
              {
                *a6 = v64;
                *v96 = v63;
              }

              if ((v7 & 0x80000000) == 0)
              {
                v7 = pts_CheckDataConsistency(v43, v56, v57, v58, v59, v60, v61, v62);
                if ((v7 & 0x80000000) == 0)
                {
                  *v95 = v43;
                  *(v95 + 2) = 1060;
                }
              }

              goto LABEL_30;
            }
          }

LABEL_109:
          v7 = 2686459914;
          goto LABEL_30;
        }
      }

      else
      {
        v25 = *(v109 + 32);
        CurrentLineNumber = XML_GetCurrentLineNumber(v22);
        ErrorCode = XML_GetErrorCode(v22);
        XML_ErrorString(ErrorCode);
        log_OutText(v25, &modInfoTBM_0, 0, 0, "XML error in line %d: %s", v28, v29, v30, CurrentLineNumber);
        if ((v24 & 0x80000000) == 0)
        {
          v24 = 2686459908;
          a6 = v98;
          goto LABEL_39;
        }

        a6 = v98;
        if (v24 != -1608507392)
        {
          goto LABEL_39;
        }
      }

      v31 = strlen(__s);
      if (((v31 + 3) & 0xFFFFFFFC) > 0x63uLL)
      {
        log_OutText(*(v109 + 32), &modInfoTBM_0, 0, 0, "Can't find suitable slot placeholder", v32, v33, v34, v91);
        goto LABEL_38;
      }

      v35 = v31 + 2;
      if (v31 <= 0xFFFFFFFD)
      {
        v36 = __s;
        v37 = v35 >> 1;
        do
        {
          *v36 = 60;
          v36[v35 >> 1] = 62;
          ++v36;
          --v37;
        }

        while (v37);
      }

      __s[v35] = 0;
      DeiniState(&userData);
      intpts_FreeContent(v17);
      *(v17 + 2) = 0u;
      *(v17 + 3) = 0u;
      *v17 = 0u;
      *(v17 + 1) = 0u;
      *v17 = v109;
      XML_ParserFree(v22);
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
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      userData = 0u;
      v112 = 0u;
      *&v130 = __s;
      *&v137 = v17;
      *(&v137 + 1) = *v17;
      v19 = 0;
      *&v131 = heap_Calloc(*(*(&v137 + 1) + 8), 4, 8);
      if (!v131)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_31:
  v39 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CB_start_pts(uint64_t a1, char **a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v4 = 0;
LABEL_25:
    if (!*a1 || !*(a1 + 200))
    {
      v4 = 2686459908;
      v14 = *(a1 + 432);
      v15 = *(*(a1 + 424) + 32);
      CurrentLineNumber = XML_GetCurrentLineNumber(v14);
      log_OutText(v15, &modInfoTBM_0, 0, 0, "line %d: Missing '%s'", v17, v18, v19, CurrentLineNumber);
    }

    return v4;
  }

  v4 = 0;
  v5 = a2 + 1;
  while (LH_stricmp(v3, "format"))
  {
    if (LH_stricmp(*(v5 - 1), "version"))
    {
      if (LH_stricmp(*(v5 - 1), "esc"))
      {
        v6 = *(*(a1 + 424) + 32);
        v10 = XML_GetCurrentLineNumber(*(a1 + 432));
        v11 = *(v5 - 1);
        v12 = *(a1 + 328);
        if ((v12 & 0x80000000) == 0)
        {
          ssftstring_CStr(*(*(a1 + 320) + 8 * v12));
        }

        log_OutText(v6, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", v7, v8, v9, v10);
        v4 = 1;
        goto LABEL_22;
      }

      if (*v5)
      {
LABEL_16:
        __strcpy_chk();
      }
    }

    else if (*v5)
    {
      goto LABEL_16;
    }

LABEL_22:
    v3 = v5[1];
    v5 += 2;
    if (!v3)
    {
      goto LABEL_25;
    }
  }

  if (!*v5)
  {
    goto LABEL_22;
  }

  __strcpy_chk();
  v13 = *(a1 + 416);
  *(v13 + 56) = 1;
  if (!strcmp(a1, "Text Template 2.2"))
  {
    v4 = pts_strclone(*(*v13 + 8), (v13 + 8), "Binary Template 2.2");
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (strcmp(a1, "Text Template 2.0"))
  {
    goto LABEL_30;
  }

  v4 = pts_strclone(*(*v13 + 8), (v13 + 8), "Binary Template 2.0");
  if ((v4 & 0x80000000) == 0)
  {
    *(v13 + 56) = 0;
LABEL_19:
    *(a1 + 312) = strcmp(a1, "Text Template 2.0") != 0;
    goto LABEL_22;
  }

LABEL_29:
  if (v4 != -1608507385)
  {
    return v4;
  }

LABEL_30:
  v21 = *(*(a1 + 424) + 32);
  v22 = XML_GetCurrentLineNumber(*(a1 + 432));
  log_OutText(v21, &modInfoTBM_0, 0, 0, "line %d: Unsupported format: '%s'; use '%s' instead.", v23, v24, v25, v22);
  return 2686459911;
}

uint64_t CB_start_template(uint64_t a1, uint64_t *a2)
{
  *(a1 + 408) = XML_GetCurrentLineNumber(*(a1 + 432));
  *(a1 + 332) = 0;
  if (!*a2)
  {
    return 0;
  }

  v4 = *(*(a1 + 424) + 32);
  CurrentLineNumber = XML_GetCurrentLineNumber(*(a1 + 432));
  v9 = *a2;
  v10 = *(a1 + 328);
  if ((v10 & 0x80000000) == 0)
  {
    ssftstring_CStr(*(*(a1 + 320) + 8 * v10));
  }

  log_OutText(v4, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", v5, v6, v7, CurrentLineNumber);
  return 1;
}

uint64_t CB_end_template(uint64_t a1)
{
  v2 = ssftstring_CStrDetach(*(a1 + 376));
  v3 = ssftstring_CStrDetach(*(a1 + 384));
  if (!*(a1 + 332))
  {
    v10 = "line %d: Missing <input>...</input>";
    goto LABEL_7;
  }

  if (!*(a1 + 336))
  {
    v10 = "line %d: Missing <output>...</output>";
LABEL_7:
    v11 = *(*(a1 + 424) + 32);
    CurrentLineNumber = XML_GetCurrentLineNumber(*(a1 + 432));
    log_OutText(v11, &modInfoTBM_0, 0, 0, v10, v13, v14, v15, CurrentLineNumber);
    v16 = 1;
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 408);
  v4 = *(a1 + 416);
  v6 = *(a1 + 400);
  v7 = v4[4];
  v8 = v4[5];
  if (v7 < 1000 * v8)
  {
    v9 = v4[6];
LABEL_14:
    v16 = 0;
    v19 = (v9 + 48 * v7);
    v19[5] = v3;
    v19[2] = v2;
    v19[4] = *(a1 + 392);
    *(a1 + 392) = 0;
    v19[3] = v6;
    *v19 = v7;
    v19[1] = v5;
    v4[4] = v7 + 1;
    goto LABEL_15;
  }

  v17 = 48000 * v8 + 48000;
  v18 = *(*v4 + 8);
  if (v8)
  {
    v9 = heap_Realloc(v18, v4[6], v17);
    if (v9)
    {
LABEL_13:
      v7 = v4[4];
      ++v4[5];
      v4[6] = v9;
      goto LABEL_14;
    }
  }

  else
  {
    v9 = heap_Alloc(v18, v17);
    if (v9)
    {
      goto LABEL_13;
    }
  }

  v16 = 2686459914;
  if (v2)
  {
LABEL_8:
    heap_Free(*(*(a1 + 424) + 8), v2);
  }

LABEL_9:
  if (v3)
  {
    heap_Free(*(*(a1 + 424) + 8), v3);
  }

LABEL_15:
  v20 = *(a1 + 392);
  if (v20)
  {
    heap_Free(*(*(a1 + 424) + 8), v20);
  }

  return v16;
}

uint64_t CB_start_input(uint64_t a1, uint64_t *a2)
{
  ssftstring_Clear(*(a1 + 344));
  ssftstring_Clear(*(a1 + 368));
  *(a1 + 400) = 0;
  if (*(a1 + 332))
  {
    v4 = *(a1 + 432);
    v5 = *(*(a1 + 424) + 32);
    CurrentLineNumber = XML_GetCurrentLineNumber(v4);
    log_OutText(v5, &modInfoTBM_0, 0, 0, "line %d: Unexpected <input>", v7, v8, v9, CurrentLineNumber);
  }

  else
  {
    *(a1 + 332) = 1;
    if (!*a2)
    {
      return 0;
    }

    v10 = *(*(a1 + 424) + 32);
    v14 = XML_GetCurrentLineNumber(*(a1 + 432));
    v15 = *a2;
    v16 = *(a1 + 328);
    if ((v16 & 0x80000000) == 0)
    {
      ssftstring_CStr(*(*(a1 + 320) + 8 * v16));
    }

    log_OutText(v10, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", v11, v12, v13, v14);
  }

  return 1;
}

uint64_t CB_end_input(uint64_t a1)
{
  v2 = ssftstring_CStr(*(a1 + 344));
  if (v2 && (v3 = v2, *v2))
  {
    replaceAltEsc(v2, (a1 + 200));
    v4 = *(a1 + 400);
    if (v4 == numberOfOccurrences(v3, *(a1 + 304)))
    {
      v5 = ssftstring_AssignCStr(*(a1 + 376), v3);
      if ((v5 & 0x80000000) == 0)
      {
        v6 = *(a1 + 392);
        if (v6)
        {
          heap_Free(*(*(a1 + 424) + 8), v6);
          *(a1 + 392) = 0;
        }

        v7 = ssftstring_Size(*(a1 + 368));
        if (v7)
        {
          v8 = v7;
          v9 = heap_Alloc(*(*(a1 + 424) + 8), v7);
          *(a1 + 392) = v9;
          if (v9)
          {
            v10 = ssftstring_CStr(*(a1 + 368));
            memcpy(*(a1 + 392), v10, v8);
          }

          else
          {
            return 2686459914;
          }
        }
      }
    }

    else
    {
      v5 = 2686459908;
      if (*(a1 + 312))
      {
        return 2686459904;
      }

      else
      {
        v18 = *(*(a1 + 424) + 32);
        CurrentLineNumber = XML_GetCurrentLineNumber(*(a1 + 432));
        v23 = *(a1 + 304);
        log_OutText(v18, &modInfoTBM_0, 0, 0, "line %d: '%s' in input not allowed", v20, v21, v22, CurrentLineNumber);
      }
    }
  }

  else
  {
    v5 = 2686459908;
    v11 = *(a1 + 432);
    v12 = *(*(a1 + 424) + 32);
    v13 = XML_GetCurrentLineNumber(v11);
    log_OutText(v12, &modInfoTBM_0, 0, 0, "line %d: empty input not allowed", v14, v15, v16, v13);
  }

  return v5;
}

uint64_t CB_start_output(uint64_t a1, uint64_t *a2)
{
  ssftstring_Clear(*(a1 + 384));
  ssftstring_Clear(*(a1 + 344));
  if (*(a1 + 336))
  {
    v4 = *(a1 + 432);
    v5 = *(*(a1 + 424) + 32);
    CurrentLineNumber = XML_GetCurrentLineNumber(v4);
    v10 = "line %d: Unexpected <output>";
LABEL_3:
    log_OutText(v5, &modInfoTBM_0, 0, 0, v10, v7, v8, v9, CurrentLineNumber);
    return 1;
  }

  *(a1 + 336) = 1;
  if (!*(a1 + 332))
  {
    v19 = *(a1 + 432);
    v5 = *(*(a1 + 424) + 32);
    CurrentLineNumber = XML_GetCurrentLineNumber(v19);
    v10 = "line %d: Missing <input>...</input>";
    goto LABEL_3;
  }

  if (*a2)
  {
    v12 = *(*(a1 + 424) + 32);
    v16 = XML_GetCurrentLineNumber(*(a1 + 432));
    v17 = *a2;
    v18 = *(a1 + 328);
    if ((v18 & 0x80000000) == 0)
    {
      ssftstring_CStr(*(*(a1 + 320) + 8 * v18));
    }

    log_OutText(v12, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", v13, v14, v15, v16);
    return 1;
  }

  return 0;
}

uint64_t CB_end_output(uint64_t a1)
{
  v11 = "";
  v2 = ssftstring_CStr(*(a1 + 344));
  replaceAltEsc(v2, (a1 + 200));
  v3 = ssftstring_AssignCStr(*(a1 + 384), v2);
  if ((v3 & 0x80000000) == 0 && (fillInSlots(*(a1 + 424), v2, *(a1 + 392), *(a1 + 400), *(*(a1 + 416) + 56), 0, 0, &v11) & 0x80000000) != 0)
  {
    v4 = *(a1 + 432);
    v5 = *(*(a1 + 424) + 32);
    CurrentLineNumber = XML_GetCurrentLineNumber(v4);
    log_OutText(v5, &modInfoTBM_0, 0, 0, "line %d: %s", v7, v8, v9, CurrentLineNumber);
    return 1;
  }

  return v3;
}

uint64_t CB_start_slot(uint64_t a1, const char **a2)
{
  ssftstring_Clear(*(a1 + 352));
  result = ssftstring_AssignCStr(*(a1 + 360), "*");
  if ((result & 0x80000000) == 0)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2 + 2;
      do
      {
        if (!strcmp("type", v5) && *(*(a1 + 416) + 56) == 1)
        {
          result = ssftstring_AssignCStr(*(a1 + 360), *(v6 - 1));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
          v7 = *(*(a1 + 424) + 32);
          CurrentLineNumber = XML_GetCurrentLineNumber(*(a1 + 432));
          v12 = *(v6 - 2);
          v13 = *(a1 + 328);
          if ((v13 & 0x80000000) == 0)
          {
            ssftstring_CStr(*(*(a1 + 320) + 8 * v13));
          }

          log_OutText(v7, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", v8, v9, v10, CurrentLineNumber);
          result = 1;
        }

        v14 = *v6;
        v6 += 2;
        v5 = v14;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t CB_end_slot(uint64_t a1)
{
  v2 = ssftstring_CStr(*(a1 + 352));
  v3 = ssftstring_CStr(*(a1 + 360));
  if (!v2 || (replaceAltEsc(v2, (a1 + 200)), result = ssftstring_AppendCStr(*(a1 + 368), v2), (result & 0x80000000) == 0))
  {
    result = ssftstring_AppendChar(*(a1 + 368), 0);
    if ((result & 0x80000000) == 0)
    {
      if (*(*(a1 + 416) + 56) != 1 || (!v3 || (result = ssftstring_AppendCStr(*(a1 + 368), v3), (result & 0x80000000) == 0)) && (result = ssftstring_AppendChar(*(a1 + 368), 0), (result & 0x80000000) == 0))
      {
        ++*(a1 + 400);
        v5 = strlen(*(a1 + 304));
        v6 = *(a1 + 344);
        v7 = *(a1 + 304);

        return ssftstring_AppendCStrN(v6, v7, v5);
      }
    }
  }

  return result;
}

char *replaceAltEsc(char *result, char *__s2)
{
  if (result)
  {
    if (__s2)
    {
      if (*__s2)
      {
        v3 = result;
        result = strstr(result, __s2);
        if (result)
        {
          v4 = result;
          v5 = strlen(__s2);
          do
          {
            *v4 = 27;
            v6 = strlen(&v4[v5]);
            memmove(v4 + 1, &v4[v5], v6 + 1);
            result = strstr(v3, __s2);
            v4 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

void CB_start(uint64_t a1, char *__s1, uint64_t a3)
{
  v6 = &cbTable;
  v7 = 5;
  v8 = "";
  while (strcmp(__s1, v6))
  {
    v6 += 56;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  v8 = v6 + 16;
LABEL_6:
  v9 = *(a1 + 328);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = "";
  }

  else
  {
    v10 = ssftstring_CStr(*(*(a1 + 320) + 8 * v9));
  }

  if (!strcmp(v8, v10))
  {
    v15 = *(a1 + 328);
    if (v15 < 3)
    {
      v27 = v15 + 1;
      *(a1 + 328) = v27;
      v21 = ssftstring_AssignCStr(*(*(a1 + 320) + 8 * v27), __s1);
      if ((v21 & 0x80000000) == 0)
      {
        v28 = &cbTable;
        v29 = 5;
        while (strcmp(__s1, v28))
        {
          v28 += 56;
          if (!--v29)
          {
            goto LABEL_20;
          }
        }

        v30 = *(v28 + 4);
        if (v30)
        {
          v21 = v30(a1, a3);
          if ((v21 & 0x80000000) == 0)
          {
            setError(a1, v21);
          }
        }
      }
    }

    else
    {
      v16 = *(*(a1 + 424) + 32);
      CurrentLineNumber = XML_GetCurrentLineNumber(*(a1 + 432));
      log_OutText(v16, &modInfoTBM_0, 0, 0, "line %d: XML parsing stack too small", v18, v19, v20, CurrentLineNumber);
      v21 = -1608507382;
    }
  }

  else
  {
    v11 = *(*(a1 + 424) + 32);
    v12 = XML_GetCurrentLineNumber(*(a1 + 432));
    v13 = &cbTable;
    v14 = 5;
    do
    {
      if (!strcmp(__s1, v13))
      {
        break;
      }

      v13 += 56;
      --v14;
    }

    while (v14);
    v22 = &cbTable;
    v23 = 5;
    do
    {
      if (!strcmp(__s1, v22))
      {
        break;
      }

      v22 += 56;
      --v23;
    }

    while (v23);
    v21 = -1608507388;
    log_OutText(v11, &modInfoTBM_0, 0, 0, "line %i: Unexpected <%s> inside <%s>...</%s>", v24, v25, v26, v12);
  }

LABEL_20:

  setError(a1, v21);
}

void CB_end(uint64_t a1, char *__s1)
{
  v4 = 5;
  v5 = &cbTable;
  while (strcmp(__s1, v5))
  {
    v5 += 56;
    if (!--v4)
    {
      goto LABEL_8;
    }
  }

  v6 = *(v5 + 6);
  if (v6)
  {
    v7 = v6(a1);
    if (v7 < 0)
    {
      goto LABEL_11;
    }

    setError(a1, v7);
  }

LABEL_8:
  v8 = *(a1 + 328);
  if (v8 < 0)
  {
    v7 = -1608507388;
  }

  else
  {
    v7 = 0;
    *(a1 + 328) = v8 - 1;
  }

LABEL_11:

  setError(a1, v7);
}

void CB_char(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 328);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = "";
  }

  else
  {
    v7 = ssftstring_CStr(*(*(a1 + 320) + 8 * v6));
  }

  v8 = &cbTable;
  v9 = 5;
  while (strcmp(v7, v8))
  {
    v8 += 56;
    if (!--v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *(v8 + 5);
  if (!v10)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v11 = v10(a1, a2, a3);
  if ((v11 & 0x80000000) == 0)
  {
    setError(a1, v11);
  }

LABEL_12:

  setError(a1, v11);
}

double DeiniState(uint64_t a1)
{
  if (*(a1 + 320))
  {
    for (i = 0; i != 32; i += 8)
    {
      ssftstring_ObjClose(*(*(a1 + 320) + i));
    }

    heap_Free(*(*(a1 + 424) + 8), *(a1 + 320));
  }

  ssftstring_ObjClose(*(a1 + 344));
  ssftstring_ObjClose(*(a1 + 352));
  ssftstring_ObjClose(*(a1 + 360));
  ssftstring_ObjClose(*(a1 + 368));
  ssftstring_ObjClose(*(a1 + 376));
  ssftstring_ObjClose(*(a1 + 384));
  result = 0.0;
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
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  return result;
}

void *intpts_FreeContent(void *result)
{
  v1 = result;
  v2 = *(*result + 8);
  v3 = result[2];
  if (v3)
  {
    result = heap_Free(*(*result + 8), v3);
    v1[2] = 0;
  }

  v4 = v1[1];
  if (v4)
  {
    result = heap_Free(v2, v4);
    v1[1] = 0;
  }

  v5 = v1[3];
  if (v5)
  {
    result = heap_Free(v2, v5);
    v1[3] = 0;
  }

  v6 = v1[6];
  if (v6)
  {
    if (v1[4])
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v1[6];
        if (v9)
        {
          v10 = v9 + v7;
          v11 = *(v9 + v7 + 16);
          if (v11)
          {
            heap_Free(v2, v11);
            *(v10 + 16) = 0;
          }

          v12 = *(v10 + 32);
          if (v12)
          {
            heap_Free(v2, v12);
            *(v10 + 32) = 0;
          }

          v13 = v9 + v7;
          v14 = *(v13 + 40);
          if (v14)
          {
            heap_Free(v2, v14);
            *(v13 + 40) = 0;
          }
        }

        ++v8;
        v7 += 48;
      }

      while (v8 < v1[4]);
      v6 = v1[6];
    }

    result = heap_Free(v2, v6);
    v1[6] = 0;
  }

  return result;
}

uint64_t compare_4(uint64_t a1, uint64_t a2)
{
  result = strcmp(*(a1 + 16), *(a2 + 16));
  if (!result)
  {
    if (*a1 >= *a2)
    {
      return *a1 > *a2;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void setError(uint64_t a1, int a2)
{
  if (a2)
  {
    if ((*(a1 + 440) & 0x80000000) == 0)
    {
      *(a1 + 440) = a2;
    }

    if (a2 < 0)
    {
      XML_SetElementHandler(*(a1 + 432), 0, 0);
      v3 = *(a1 + 432);

      XML_SetCharacterDataHandler(v3, 0);
    }
  }
}

uint64_t domain_mngr_utils_GetU32(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  v4 = (*a3 + 3) & 0xFFFFFFFC;
  *a3 = v4;
  if (v4 + 4 > a2)
  {
    return 2296389641;
  }

  if (a4)
  {
    *a4 = *(a1 + v4);
    LODWORD(v4) = *a3;
  }

  result = 0;
  *a3 = v4 + 4;
  return result;
}

uint64_t domain_mngr_utils_CopyString(char *a1, char *__s, unsigned int a3)
{
  result = 2296389639;
  if (a1 && __s)
  {
    v7 = strlen(__s);
    if (v7 >= a3)
    {
      v8 = a3 - 1;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      strncpy(a1, __s, v8);
    }

    else
    {
      v8 = 0;
    }

    result = 0;
    a1[v8] = 0;
  }

  return result;
}

uint64_t domain_mngr_utils_DuplicateString(uint64_t a1, char *__s, char **a3)
{
  v6 = strlen(__s);
  v7 = heap_Alloc(a1, (v6 + 1));
  *a3 = v7;
  if (!v7)
  {
    return 2296389642;
  }

  strcpy(v7, __s);
  return 0;
}

uint64_t domain_mngr_utils_ListContainsString(uint64_t __s1, char *__s2)
{
  if (__s1)
  {
    v3 = __s1;
    __s1 = 0;
    if (__s2)
    {
      if (*v3)
      {
        if (*__s2)
        {
          __s1 = strstr(v3, __s2);
          if (__s1)
          {
            v4 = __s1;
            v5 = strlen(__s2);
            do
            {
              if (v4 == v3 || *(v4 - 1) == 124)
              {
                __s1 = 1;
                if (!*(v4 + v5) || *(v4 + v5) == 124)
                {
                  break;
                }
              }

              __s1 = strstr((v4 + v5), __s2);
              v4 = __s1;
            }

            while (__s1);
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return __s1;
}

uint64_t domain_mngr_utils_IsActiveVoiceAddon(uint64_t a1, char *a2, char *a3, char *a4, char *a5, int *a6)
{
  v64 = 0;
  v65 = 0;
  v7 = 2296389642;
  __s1 = 0;
  __s = 0;
  result = 2296389639;
  if (a1)
  {
    if (a2)
    {
      if (a6)
      {
        *a6 = 0;
        result = paramc_ParamGetStr(*(a1 + 40), "voice", &v65);
        if ((result & 0x80000000) == 0)
        {
          if ((paramc_ParamGetStr(*(a1 + 40), "voiceoperatingpoint", &__s) & 0x80000000) != 0)
          {
            v14 = 0;
          }

          else
          {
            v14 = strlen(__s) + 1;
          }

          if ((paramc_ParamGetStr(*(a1 + 40), "vopversion", &__s1) & 0x80000000) != 0 || (v15 = __s1, !strcmp(__s1, "0.0.0")))
          {
            v16 = 0;
          }

          else
          {
            v16 = strlen(v15) + 1;
          }

          v17 = strlen(v65);
          v18 = heap_Calloc(*(a1 + 8), 1, (v14 + v16 + v17 + 14));
          if (!v18)
          {
            log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0, v19, v20, v21, v22, v59);
            return 2296389642;
          }

          v23 = v18;
          strcpy(v18, "voiceaddons.");
          v24 = strlen(v18);
          domain_mngr_utils_StrToLower(&v23[v24], v65);
          if (v14)
          {
            *&v23[strlen(v23)] = 46;
            strcat(v23, __s);
          }

          if (v16)
          {
            *&v23[strlen(v23)] = 46;
            strcat(v23, __s1);
          }

          Str = paramc_ParamGetStr(*(a1 + 40), v23, &v64);
          if ((Str & 0x80000000) != 0)
          {
            v7 = Str;
          }

          else
          {
            v26 = v64;
            *a6 = 0;
            v27 = strchr(v26, 59);
            if (v27)
            {
              v28 = v27;
              v60 = a4;
              v61 = a5;
              v29 = 0;
              do
              {
                v30 = strlen(a2);
                if (v30 == v28 - v26)
                {
                  if (!LH_strnicmp(v26, a2, v30))
                  {
                    *a6 = 1;
                    goto LABEL_31;
                  }

                  v29 = *a6;
                  v31 = *a6 == 0;
                }

                else
                {
                  v31 = 1;
                }

                v26 = v28 + 1;
                v32 = strchr(v28 + 1, 59);
                if (!v31)
                {
                  break;
                }

                v28 = v32;
              }

              while (v32);
              if (!v29)
              {
                goto LABEL_27;
              }

LABEL_31:
              v33 = strlen(a2);
              v34 = heap_Calloc(*(a1 + 8), 1, (v33 + 26));
              if (v34)
              {
                v39 = v34;
                strcpy(v34, "voiceaddonrawdataversion.");
                v40 = strlen(v34);
                domain_mngr_utils_StrToLower((v39 + v40), a2);
                v66 = 0;
                if (a3 && *a3 && (paramc_ParamGetStr(*(a1 + 40), v39, &v66) & 0x80000000) == 0 && LH_stricmp(v66, a3))
                {
                  v41 = 0;
                }

                else
                {
                  v42 = strlen(a2);
                  v43 = heap_Calloc(*(a1 + 8), 1, (v42 + 28));
                  v41 = v43;
                  if (!v43)
                  {
                    log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0, v44, v45, v46, v47, v59);
                    v49 = 0;
                    goto LABEL_53;
                  }

                  strcpy(v43, "voiceaddonreductionversion.");
                  v48 = strlen(v43);
                  domain_mngr_utils_StrToLower((v41 + v48), a2);
                  if (!domain_mngr_utils_ReductionVersionCondition(a1, v61, v41))
                  {
                    v52 = strlen(a2);
                    v53 = heap_Calloc(*(a1 + 8), 1, (v52 + 21));
                    v49 = v53;
                    if (!v53)
                    {
                      log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0, v54, v55, v56, v57, v59);
                      goto LABEL_53;
                    }

                    strcpy(v53, "voiceaddonreduction.");
                    v58 = strlen(v53);
                    domain_mngr_utils_StrToLower((v49 + v58), a2);
                    if (!v60 || !*v60 || !domain_mngr_utils_ReductionTypeVersionCondition(a1, v61, v60, v49))
                    {
                      v7 = 0;
                      goto LABEL_53;
                    }

                    goto LABEL_40;
                  }
                }

                v49 = 0;
LABEL_40:
                v7 = 0;
                *a6 = 0;
LABEL_53:
                heap_Free(*(a1 + 8), v23);
                heap_Free(*(a1 + 8), v39);
                if (v49)
                {
                  heap_Free(*(a1 + 8), v49);
                }

                if (!v41)
                {
                  return v7;
                }

                v50 = *(a1 + 8);
                v51 = v41;
LABEL_43:
                heap_Free(v50, v51);
                return v7;
              }

              log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0, v35, v36, v37, v38, v59);
            }

            else
            {
LABEL_27:
              v7 = 0;
            }
          }

          v50 = *(a1 + 8);
          v51 = v23;
          goto LABEL_43;
        }
      }
    }
  }

  return result;
}

uint64_t domain_mngr_utils_StrToLower(_BYTE *a1, char *__s)
{
  v2 = __s;
  result = strlen(__s);
  v5 = result;
  if (result)
  {
    v6 = a1;
    v7 = result;
    do
    {
      v8 = *v2++;
      result = __tolower(v8);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  a1[v5] = 0;
  return result;
}

uint64_t activeprompt_db_ObjClose(uint64_t a1, int a2)
{
  v27 = 0;
  if (!a1)
  {
    return 2296389639;
  }

  inited = InitRsrcFunction(**a1, *(*a1 + 8), &v27);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (!a2)
  {
    v5 = *(*a1 + 16);
    __s = 0;
    v29 = 0;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_18;
    }

    if ((paramc_ParamGetStr(v5[5], v6, &v29) & 0x80000000) != 0)
    {
LABEL_17:
      heap_Free(v5[1], *(a1 + 64));
      *(a1 + 64) = 0;
LABEL_18:
      v17 = *(a1 + 72);
      if (v17)
      {
        heap_Free(v5[1], v17);
        *(a1 + 72) = 0;
      }

LABEL_20:
      if (__s)
      {
        heap_Free(v5[1], __s);
      }

      goto LABEL_22;
    }

    if ((domain_mngr_utils_DuplicateString(v5[1], v29, &__s) & 0x80000000) == 0)
    {
      paramc_ParamRelease(v5[5]);
      v11 = __s;
      v12 = strchr(__s, 59);
      if (v12)
      {
        v13 = v12;
        while (1)
        {
          *v13 = 0;
          v14 = *(*(a1 + 8) + 72);
          if (v14)
          {
            if (!strcmp(v11, v14))
            {
              break;
            }
          }

          *v13 = 59;
          v11 = v13 + 1;
          v13 = strchr(v13 + 1, 59);
          if (!v13)
          {
            goto LABEL_17;
          }
        }

        v16 = strlen(v13 + 1);
        memmove(v11, v13 + 1, v16 + 1);
        if ((paramc_ParamSetStr(v5[5], *(a1 + 64), __s) & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_17;
    }

    log_OutPublic(v5[4], "DOMAIN_MNGR", 47000, 0, v7, v8, v9, v10, v26);
  }

LABEL_22:
  v18 = *(a1 + 8);
  if (v18)
  {
    v15 = objc_ReleaseObject(*(*(*a1 + 40) + 48), v18 + 296);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    heap_Free(*(v27 + 8), v19);
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    heap_Free(*(v27 + 8), v20);
  }

  v21 = *(a1 + 80);
  if (v21)
  {
    heap_Free(*(v27 + 8), v21);
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    heap_Free(*(v27 + 8), v22);
  }

  v23 = *(a1 + 64);
  if (v23)
  {
    heap_Free(*(v27 + 8), v23);
    *(a1 + 64) = 0;
  }

  v24 = *(a1 + 72);
  if (v24)
  {
    heap_Free(*(v27 + 8), v24);
    *(a1 + 72) = 0;
  }

  heap_Free(*(v27 + 8), a1);
  return v15;
}

uint64_t activeprompt_db_LoadData(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  __strcpy_chk();
  *&v15 = a3;
  DWORD2(v15) = a4;
  result = objc_GetAddRefCountedObject(*(*(a1 + 40) + 48), a2, apdb_loc_ObjcLoadData, apdb_loc_ObjcUnloadData, v14, &v13);
  if ((result & 0x80000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v13 + 32);
  }

  *a5 = v11;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t apdb_loc_ObjcLoadData(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v107 = *MEMORY[0x1E69E9840];
  v94 = 0;
  inited = InitRsrcFunction(a1, a2, &v94);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_174;
  }

  v10 = 2296389642;
  v11 = heap_Calloc(*(v94 + 8), 1, 552);
  if (!v11)
  {
    goto LABEL_175;
  }

  v12 = v11;
  inited = ssftriff_reader_ObjOpenEx(a1, a2, 4 * (*(a5 + 256) != 0), a5, *(a5 + 256), *(a5 + 264), "APDB", 775, v11);
  if ((inited & 0x80000000) != 0 || (inited = ssftriff_reader_DetachChunkData(*v12, v12 + 2, v12 + 1, v13, v14, v15, v16, v17), (inited & 0x80000000) != 0))
  {
LABEL_174:
    v10 = inited;
    goto LABEL_175;
  }

  strcpy(v12 + 296, a5);
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  *v100 = 0;
  v18 = InitRsrcFunction(a1, a2, &v99);
  if ((v18 & 0x80000000) != 0)
  {
    v10 = v18;
    goto LABEL_180;
  }

  v19 = *(v99 + 8);
  v97 = xmmword_1F42D6920;
  *&v98 = off_1F42D6930;
  if (!vector_ObjOpen(v19, &v97, 1, v12 + 33))
  {
    log_OutPublic(*(v99 + 32), "DOMAIN_MNGR", 47000, 0, v20, v21, v22, v23, v92);
    goto LABEL_180;
  }

  v93 = a4;
  do
  {
    StringZ = ssftriff_reader_OpenChunk(*v12, &v102, &v101, v100, v20, v21, v22, v23);
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

    if (!(v102 ^ 0x52545441 | v103))
    {
      v28 = v101;
      if (!v101)
      {
        goto LABEL_141;
      }

      v29 = 0;
      while (1)
      {
        LOBYTE(__s1) = 0;
        __s[0] = 0;
        LODWORD(v97) = 64;
        StringZ = ssftriff_reader_ReadStringZ(*v12, *v100, v28, v29, &__s1, &v97);
        if ((StringZ & 0x80000000) == 0 && v29 < v101)
        {
          v29 += v97;
          LODWORD(v97) = 256;
          StringZ = ssftriff_reader_ReadStringZ(*v12, *v100, v101, v29, __s, &v97);
        }

        if ((StringZ & 0x80000000) != 0)
        {
          goto LABEL_141;
        }

        v33 = v97;
        if (__s1 == 1836216134 && *(&__s1 + 3) == 7627117)
        {
          domain_mngr_utils_CopyString(v12 + 32, __s, 0xCu);
          v48 = 0;
          while (strcmp(v12 + 32, off_1E81AD380[v48]))
          {
            if (++v48 == 2)
            {
              log_OutText(*(v99 + 32), "DOMAIN_MNGR", 3, 0, "APDB Format: %s not implemented", v49, v50, v51, (v12 + 4));
              StringZ = 2296389633;
              goto LABEL_141;
            }
          }

          goto LABEL_105;
        }

        if (*(v12 + 32))
        {
          if (__s1 == 6778444)
          {
            v52 = v12 + 44;
            goto LABEL_99;
          }

          if (__s1 == 0x656D614E6F6156)
          {
            v54 = *(v99 + 8);
            v55 = (v12 + 9);
LABEL_103:
            StringZ = domain_mngr_utils_DuplicateString(v54, __s, v55);
            goto LABEL_104;
          }

          if (__s1 == 1667854166 && WORD2(__s1) == 101)
          {
            v54 = *(v99 + 8);
            v55 = (v12 + 8);
            goto LABEL_103;
          }

          if (__s1 == 0x5661746144776152 && *(&__s1 + 7) == 0x6E6F6973726556)
          {
            v52 = (v12 + 10);
            goto LABEL_99;
          }

          if (__s1 == 0x6F69746375646552 && WORD4(__s1) == 110)
          {
            v52 = (v12 + 11);
            goto LABEL_112;
          }

          if (!(__s1 ^ 0x6F69746375646552 | *(&__s1 + 1) ^ 0x6E6F69737265566ELL | v106))
          {
            v52 = v12 + 100;
LABEL_99:
            v53 = 8;
LABEL_100:
            domain_mngr_utils_CopyString(v52, __s, v53);
            goto LABEL_104;
          }

          if (__s1 == 0x7954444974696E55 && *(&__s1 + 3) == 0x65707954444974)
          {
            v52 = v12 + 108;
LABEL_112:
            v53 = 12;
            goto LABEL_100;
          }

          if (!(__s1 ^ 0x6D6F436563696F56 | *(&__s1 + 1) ^ 0x4449746E656E6F70 | v106))
          {
            domain_mngr_utils_CopyString(v12 + 120, __s, 0x28u);
            *(v12 + 40) = 1;
            goto LABEL_104;
          }

          if (__s1 == 1634561860 && *(&__s1 + 3) == 7235937)
          {
            v54 = *(v99 + 8);
            v55 = (v12 + 21);
            goto LABEL_103;
          }

          if (__s1 == 2035568212 && *(&__s1 + 3) == 6647929)
          {
            v54 = *(v99 + 8);
            v55 = (v12 + 25);
            goto LABEL_103;
          }

          if (__s1 == 0x7550657361726850 && *(&__s1 + 1) == 0x6F6974617574636ELL && v106 == 110)
          {
            v54 = *(v99 + 8);
            v55 = (v12 + 23);
            goto LABEL_103;
          }

          if (__s1 == 0x74636E75506C6C41 && *(&__s1 + 7) == 0x6E6F6974617574)
          {
            v54 = *(v99 + 8);
            v55 = (v12 + 24);
            goto LABEL_103;
          }

          if (__s1 != 0x6953444974696E55 || *(&__s1 + 3) != 0x657A6953444974)
          {
            if (__s1 ^ 0x65646F4D | BYTE4(__s1))
            {
              if (__s1 != 0x6966667553495255 || WORD4(__s1) != 120)
              {
                if (__s1 == 0x6874724F69724FLL)
                {
                  *(v12 + 7) = 1;
                }

                else if (__s1 == 0x573A563855786449 && *(&__s1 + 7) == 0x6D725064726F57)
                {
                  *(v12 + 52) = 1;
                  ++*(v12 + 106);
                  *(v12 + 107) = atoi(__s);
                }

                else if (__s1 == 0x503A563855786449 && *(&__s1 + 7) == 0x646E4273726850)
                {
                  *(v12 + 55) = 1;
                  ++*(v12 + 106);
                  *(v12 + 108) = atoi(__s);
                }

                else if (!strcmp(&__s1, "SupportBackendPredictedSilenceDuration"))
                {
                  if (atoi(__s))
                  {
                    *(v12 + 57) = 1;
                  }

                  else
                  {
                    *(v12 + 57) = 0;
                  }
                }

                goto LABEL_104;
              }

              v54 = *(v99 + 8);
              v55 = (v12 + 22);
              goto LABEL_103;
            }

            v52 = v12 + 52;
            goto LABEL_112;
          }

          if (atoi(__s) == 4)
          {
            goto LABEL_104;
          }

          log_OutPublic(*(v99 + 32), "DOMAIN_MNGR", 47000, 0, v56, v30, v31, v32, v92);
        }

        else
        {
          log_OutText(*(v99 + 32), "DOMAIN_MNGR", 3, 0, "APDB Format: 7.0.0 not supported", v30, v31, v32, v92);
        }

        StringZ = 2296389633;
LABEL_104:
        log_OutText(*(v99 + 32), "DOMAIN_MNGR", 3, 0, "APDB attribute %s=%s", v30, v31, v32, &__s1);
LABEL_105:
        if ((StringZ & 0x80000000) == 0)
        {
          v29 += v33;
          v28 = v101;
          if (v29 < v101)
          {
            continue;
          }
        }

        goto LABEL_141;
      }
    }

    if (v102 ^ 0x50474850 | v103)
    {
      if (!(v102 ^ 0x50525453 | v103))
      {
        v12[30] = *v100;
        goto LABEL_142;
      }

      if (!(v102 ^ 0x50444955 | v103))
      {
        v12[31] = *v100;
        goto LABEL_142;
      }

      if (!(v102 ^ 0x50445257 | v103))
      {
        v12[32] = *v100;
        goto LABEL_142;
      }

      if (v102 ^ 0x52505041 | v103 && v102 ^ 0x50434552 | v103)
      {
        if (v102 ^ 0x4C414E54 | v103)
        {
          if (v102 ^ 0x50563855 | v103)
          {
            if (v102 ^ 0x31564C41 | v103)
            {
              if (v102 ^ 0x32564C41 | v103)
              {
                log_OutText(*(v99 + 32), "DOMAIN_MNGR", 3, 0, "Unknown data: %s for %s", v24, v25, v26, &v102);
              }

              else
              {
                v12[36] = *v100;
              }
            }

            else
            {
              v12[35] = *v100;
            }
          }

          else
          {
            v12[34] = *v100;
          }

          goto LABEL_142;
        }

        LODWORD(v95) = 0;
        v96 = 0;
        *&v97 = 0;
        U32 = domain_mngr_utils_GetU32(*v100, v101, &v95, &v96);
        if ((U32 & 0x80000000) != 0)
        {
          StringZ = U32;
        }

        else
        {
          v76 = v12[30];
          v77 = v96;
          StringZ = domain_mngr_utils_GetU32(*v100, v101, &v95, &v96);
          if ((StringZ & 0x80000000) == 0)
          {
            v78 = (v76 + v77);
            v79 = v12[30];
            v80 = v96;
            if (vector_GetElemAt(v12[33], 0, &v97))
            {
              v85 = 1;
              while (domain_mngr_utils_ListContainsString(*(v97 + 8), (v79 + v80)) != 1)
              {
                if (!vector_GetElemAt(v12[33], v85++, &v97))
                {
                  goto LABEL_167;
                }
              }

              v87 = strlen(*(v97 + 8));
              v88 = strlen(v78);
              v89 = heap_Realloc(*(v99 + 8), *(v97 + 8), (v87 + v88 + 2));
              if (!v89)
              {
LABEL_160:
                log_OutPublic(*(v99 + 32), "DOMAIN_MNGR", 47000, 0, v71, v72, v73, v74, v92);
                StringZ = 2296389642;
                goto LABEL_141;
              }

              *(v97 + 8) = v89;
              *&v89[strlen(v89)] = 124;
              strcat(*(v97 + 8), v78);
            }

            else
            {
LABEL_167:
              log_OutPublic(*(v99 + 32), "DOMAIN_MNGR", 47017, "%s%s%s%s", v81, v82, v83, v84, "chunk");
              StringZ = 2296389636;
            }
          }
        }
      }

      else
      {
        v97 = xmmword_1E81AD398;
        v98 = unk_1E81AD3A8;
        v96 = 0;
        if (v102 ^ 0x50434552 | v103)
        {
          v95 = 0;
          if (vector_GetElemAt(v12[33], 0, &v95))
          {
            v68 = 1;
            do
            {
              if (*v95 == 1)
              {
                log_OutPublic(*(v99 + 32), "DOMAIN_MNGR", 47020, "%s%s", v64, v65, v66, v67, "chunk");
              }
            }

            while (vector_GetElemAt(v12[33], v68++, &v95));
          }
        }

        else
        {
          *(v12 + 6) = 1;
          LODWORD(v97) = 2;
        }

        v70 = v12[25];
        if (v70 && *v70)
        {
          *(&v97 + 1) = v12[25];
        }

        StringZ = domain_mngr_utils_GetU32(*v100, v101, &v96, &v98);
        if ((StringZ & 0x80000000) == 0)
        {
          *(&v98 + 1) = *v100 + v96;
          if (!vector_Add(v12[33], &v97))
          {
            goto LABEL_160;
          }
        }
      }
    }

    else
    {
      LODWORD(v97) = 0;
      *(v12 + 56) = 1;
      v12[29] = heap_Calloc(*(v99 + 8), 100, 8);
      v57 = v101;
      if (v101)
      {
        v58 = 0;
        do
        {
          LOBYTE(__s1) = 0;
          __s[0] = 0;
          LODWORD(v97) = 64;
          StringZ = ssftriff_reader_ReadStringZ(*v12, *v100, v57, v58, &__s1, &v97);
          if ((StringZ & 0x80000000) == 0 && v58 < v101)
          {
            v58 += v97;
            LODWORD(v97) = 256;
            StringZ = ssftriff_reader_ReadStringZ(*v12, *v100, v101, v58, __s, &v97);
          }

          if ((StringZ & 0x80000000) != 0)
          {
            break;
          }

          v59 = v97;
          if (strlen(&__s1) == 4 && __s1 == 80 && BYTE1(__s1) == 71 && BYTE2(__s1) - 48 <= 9 && BYTE3(__s1) - 48 <= 9)
          {
            v60 = BYTE3(__s1) + 10 * BYTE2(__s1) - 528;
            v61 = *(v12[29] + 8 * v60);
            if (!v61)
            {
              v62 = strlen(__s);
              *(v12[29] + 8 * v60) = heap_Calloc(*(v99 + 8), (v62 + 1), 1);
              v61 = *(v12[29] + 8 * v60);
            }

            strcpy(v61, __s);
          }

          v58 += v59;
          v57 = v101;
        }

        while (v58 < v101);
      }
    }

LABEL_141:
    if ((StringZ & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_142:
    v63 = ssftriff_reader_CloseChunk(*v12);
  }

  while ((v63 & 0x80000000) == 0);
  StringZ = v63;
LABEL_178:
  v10 = StringZ;
  a4 = v93;
  if ((StringZ & 0x1FFF) == 0x14)
  {
    v10 = 0;
    goto LABEL_181;
  }

LABEL_180:
  v12 = 0;
LABEL_181:
  *(a4 + 32) = v12;
LABEL_175:
  v90 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t apdb_loc_ObjcUnloadData(_WORD *a1, int a2, uint64_t a3)
{
  v34 = 0;
  inited = InitRsrcFunction(a1, a2, &v34);
  if ((inited & 0x80000000) == 0)
  {
    v12 = *(a3 + 32);
    if (v12)
    {
      v13 = *(v12 + 16);
      if (v13)
      {
        ssftriff_reader_ReleaseChunkData(v13, v4, v5, v6, v7, v8, v9, v10);
        if (*v12)
        {
          v21 = ssftriff_reader_ObjClose(*v12, v14, v15, v16, v17, v18, v19, v20);
          if (v21 >= 0)
          {
            inited = inited;
          }

          else
          {
            inited = v21;
          }
        }
      }

      v22 = *(v12 + 72);
      if (v22)
      {
        heap_Free(*(v34 + 8), v22);
      }

      v23 = *(v12 + 64);
      if (v23)
      {
        heap_Free(*(v34 + 8), v23);
      }

      v24 = *(v12 + 168);
      if (v24)
      {
        heap_Free(*(v34 + 8), v24);
      }

      v25 = *(v12 + 200);
      if (v25)
      {
        heap_Free(*(v34 + 8), v25);
      }

      v26 = *(v12 + 176);
      if (v26)
      {
        heap_Free(*(v34 + 8), v26);
      }

      v27 = *(v12 + 184);
      if (v27)
      {
        heap_Free(*(v34 + 8), v27);
      }

      v28 = *(v12 + 192);
      if (v28)
      {
        heap_Free(*(v34 + 8), v28);
      }

      v29 = *(v12 + 264);
      if (v29)
      {
        vector_ObjClose(v29);
      }

      if (*(v12 + 224) == 1)
      {
        for (i = 0; i != 800; i += 8)
        {
          v31 = *(*(v12 + 232) + i);
          if (v31)
          {
            heap_Free(*(v34 + 8), v31);
          }
        }

        v32 = *(v12 + 232);
        if (v32)
        {
          heap_Free(*(v34 + 8), v32);
        }
      }

      heap_Free(*(v34 + 8), v12);
    }
  }

  return inited;
}

uint64_t activeprompt_db_ObjOpen(uint64_t a1, uint64_t a2, char *a3, char *a4, const void *a5, int a6, uint64_t a7, uint64_t *a8)
{
  v171 = *MEMORY[0x1E69E9840];
  v8 = 2296389642;
  v141 = 0;
  v142 = 0;
  if (!a8)
  {
    v16 = 2296389639;
    goto LABEL_25;
  }

  inited = InitRsrcFunction(*a2, *(a2 + 8), &v142);
  if ((inited & 0x80000000) != 0)
  {
    v16 = inited;
    goto LABEL_25;
  }

  *a8 = 0;
  if (a4 && *a4)
  {
    strncpy(__dst, a4, 0x1FFuLL);
    v169 = 0;
  }

  else
  {
    __s2[0] = 0;
    if (cupreader_IsCupInTheScope(v142, __s2))
    {
      snprintf(__str, 0x200uLL, "cup:%s", __s2[0]);
      snprintf(__dst, 0x200uLL, "cup:%s%p");
    }

    else
    {
      snprintf(__str, 0x200uLL, "in-memory APDB%p", a5);
      snprintf(__dst, 0x200uLL, "in-memory APDB%p");
    }

    v169 = 0;
    __str[511] = 0;
    a4 = __str;
  }

  v17 = activeprompt_db_LoadData(a2, __dst, a5, a6, &v141);
  if ((v17 & 0x80000000) != 0)
  {
    v16 = v17;
    log_OutPublic(*(v142 + 32), "DOMAIN_MNGR", 47000, 0, v18, v19, v20, v21, v130);
    goto LABEL_21;
  }

  v22 = heap_Calloc(*(v142 + 8), 1, 88);
  *a8 = v22;
  if (!v22)
  {
    goto LABEL_18;
  }

  *(v22 + 8) = v141;
  **a8 = a2;
  v27 = *a8;
  *(v27 + 24) = 1;
  *(v27 + 72) = 0;
  *(*a8 + 64) = 0;
  v28 = domain_mngr_utils_DuplicateString(*(v142 + 8), a4, (*a8 + 56));
  if ((v28 & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  v29 = *a8;
  v30 = *(*a8 + 8);
  v31 = *(v30 + 176);
  if (v31)
  {
    v32 = domain_mngr_utils_DuplicateString(*(v142 + 8), v31, (v29 + 40));
    if ((v32 & 0x80000000) == 0)
    {
      v16 = v32;
      v29 = *a8;
      v30 = *(*a8 + 8);
      goto LABEL_27;
    }

LABEL_18:
    v33 = *(v142 + 32);
LABEL_19:
    log_OutPublic(v33, "DOMAIN_MNGR", 47000, 0, v23, v24, v25, v26, v130);
LABEL_22:
    if (*a8)
    {
      activeprompt_db_ObjClose(*a8, 0);
      *a8 = 0;
    }

    v16 = v8;
    goto LABEL_25;
  }

  v16 = v28;
LABEL_27:
  if (*(v30 + 24) != 1)
  {
    goto LABEL_44;
  }

  v36 = *(*v29 + 16);
  __s2[0] = 0;
  v150[0] = 0;
  __s[0] = 0;
  if ((hlp_GetMimeParam(v36, a3, "urisuffix", v150) & 0x80000000) == 0)
  {
    v37 = *(v29 + 40);
    if (v37)
    {
      heap_Free(v36[1], v37);
    }

    *(v29 + 40) = v150[0];
    if ((hlp_GetMimeParam(v36, a3, "uriprefix", v150) & 0x80000000) != 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    *(v29 + 32) = 2;
    v42 = *(v29 + 80);
    if (v42)
    {
      heap_Free(v36[1], v42);
    }

    v16 = 0;
    *(v29 + 80) = v150[0];
    goto LABEL_40;
  }

  if ((hlp_GetMimeParam(v36, a3, "uriprefix", v150) & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  if (IsRecordingCS(v29, a4, __s2))
  {
    *(v29 + 32) = 1;
    v70 = *(v29 + 80);
    if (v70)
    {
      heap_Free(v36[1], v70);
    }

    v71 = strlen(__s2[0]);
    v72 = heap_Alloc(v36[1], v71 + 125);
    *(v29 + 80) = v72;
    if (v72)
    {
      strcpy(v72, "x-vocalizer-speechbase://");
      strcat(*(v29 + 80), __s2[0]);
      v16 = 0;
    }

    else
    {
      log_OutPublic(v36[4], "DOMAIN_MNGR", 47000, 0, v73, v74, v75, v76, v130);
      v16 = 2296389642;
    }

    goto LABEL_40;
  }

LABEL_32:
  if (*a4)
  {
    if ((brk_TagQueryEx(v36[3], a4, "BROKERSTRING", 1, __s) & 0x80000000) != 0)
    {
      *(v29 + 32) = 2;
      v16 = domain_mngr_utils_DuplicateString(v36[1], a4, (v29 + 48));
      goto LABEL_40;
    }

    brk_TagRelease(v36[3], __s[0]);
    __s[0] = 0;
  }

  log_OutPublic(v36[4], "DOMAIN_MNGR", 47018, "%s%s", v38, v39, v40, v41, "apdb");
  v16 = 2296389652;
LABEL_40:
  if (__s2[0])
  {
    heap_Free(v36[1], __s2[0]);
  }

  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  v29 = *a8;
  v30 = *(*a8 + 8);
LABEL_44:
  if (!*(v30 + 72))
  {
    goto LABEL_89;
  }

  v43 = *(*v29 + 16);
  v150[0] = 0;
  if ((paramc_ParamGetStr(*(v43 + 40), "voice", v150) & 0x80000000) == 0)
  {
    __s[0] = 0;
    __s1 = 0;
    if ((paramc_ParamGetStr(*(v43 + 40), "voiceoperatingpoint", __s) & 0x80000000) != 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = strlen(__s[0]) + 1;
    }

    if ((paramc_ParamGetStr(*(v43 + 40), "vopversion", &__s1) & 0x80000000) != 0 || (v46 = __s1, !strcmp(__s1, "0.0.0")))
    {
      v47 = 0;
    }

    else
    {
      v47 = strlen(v46) + 1;
    }

    v48 = strlen(v150[0]);
    v49 = heap_Calloc(*(v43 + 8), 1, (v44 + v47 + v48 + 14));
    *(v29 + 64) = v49;
    if (!v49)
    {
      goto LABEL_22;
    }

    v138 = v44;
    v140 = v43;
    strcpy(v49, "voiceaddons.");
    v50 = *(v29 + 64);
    v51 = strlen(v50);
    v52 = v150[0];
    if (*v150[0])
    {
      v53 = 0;
      LODWORD(v54) = 0;
      do
      {
        *(*(v29 + 64) + (v51 + v54)) = __tolower(v52[v53]);
        v54 = (v54 + 1);
        v52 = v150[0];
        v55 = strlen(v150[0]);
        v53 = v54;
      }

      while (v55 > v54);
      v50 = *(v29 + 64);
    }

    else
    {
      LODWORD(v54) = 0;
    }

    v50[(v54 + v51)] = 0;
    if (v138)
    {
      *(*(v29 + 64) + strlen(*(v29 + 64))) = 46;
      strcat(*(v29 + 64), __s[0]);
    }

    v43 = v140;
    if (v47)
    {
      *(*(v29 + 64) + strlen(*(v29 + 64))) = 46;
      strcat(*(v29 + 64), __s1);
    }

    v56 = *(*(v29 + 8) + 72);
    v58 = *(v29 + 56);
    v57 = *(v29 + 64);
    __s2[0] = 0;
    LODWORD(v159) = 0;
    Str = paramc_ParamGetStr(*(v140 + 40), v57, __s2);
    if (__s2[0])
    {
      v60 = v56 == 0;
    }

    else
    {
      v60 = 1;
    }

    v61 = v60 || Str < 0;
    v45 = !v61;
    if (v45 != 1 || strstr(__s2[0], v56))
    {
      goto LABEL_75;
    }

    if (v58 && *v58 && IsThisUrlOrRealPath(v58, &v159) >= 1)
    {
      v115 = v159;
      v116 = strrchr(v58, 47);
      if (v115)
      {
        if (!v116)
        {
          v8 = 2296389639;
          goto LABEL_22;
        }
      }

      else if (!v116)
      {
        v116 = strrchr(v58, 92);
        if (!v116)
        {
          v137 = 0;
          v117 = 2;
LABEL_137:
          v118 = strlen(__s2[0]);
          v119 = strlen(v56);
          v139 = v117;
          v120 = heap_Calloc(*(v140 + 8), 1, (v117 + v118 + v119 + 3));
          if (!v120)
          {
            goto LABEL_22;
          }

          v121 = v120;
          strcpy(v120, __s2[0]);
          v122 = strlen(v56);
          v123 = heap_Calloc(*(v140 + 8), 1, v122 + 19);
          if (v123)
          {
            v124 = v123;
            strcpy(v123, "voiceaddonbaseuri.");
            strcat(v123, v56);
            v125 = heap_Calloc(*(v140 + 8), 1, v139 + 1);
            if (v125)
            {
              v126 = v125;
              if (v139)
              {
                if (v137)
                {
                  v127 = v58;
                }

                else
                {
                  v127 = "./";
                }

                strncpy(v125, v127, v139);
              }

              v126[v139] = 0;
              v128 = paramc_ParamSetStrPermanent(*(v140 + 40), v124, v126);
              heap_Free(*(v140 + 8), v126);
              heap_Free(*(v140 + 8), v124);
              if ((v128 & 0x80000000) == 0)
              {
                v129 = strcat(v121, v56);
                *&v121[strlen(v129)] = 59;
                v16 = paramc_ParamSetStrPermanent(*(v140 + 40), v57, v121);
                heap_Free(*(v140 + 8), v121);
                if ((v16 & 0x80000000) == 0)
                {
                  v43 = v140;
                  goto LABEL_76;
                }

LABEL_21:
                v8 = v16;
                goto LABEL_22;
              }

              v124 = v121;
              v8 = v128;
            }

            else
            {
              heap_Free(*(v140 + 8), v121);
            }
          }

          else
          {
            v124 = v121;
          }

          heap_Free(*(v140 + 8), v124);
          goto LABEL_22;
        }
      }

      v117 = v116 - v58 + 1;
    }

    else
    {
      v117 = 0;
    }

    v137 = 1;
    goto LABEL_137;
  }

  LOBYTE(v45) = 0;
LABEL_75:
  v16 = 0;
  if (v45)
  {
    goto LABEL_89;
  }

LABEL_76:
  v62 = *(*(v29 + 8) + 72);
  if (!v62)
  {
    goto LABEL_89;
  }

  v63 = strlen(v62);
  v64 = heap_Calloc(*(v43 + 8), 1, (v63 + 18));
  *(v29 + 72) = v64;
  if (!v64)
  {
    v33 = *(v43 + 32);
    goto LABEL_19;
  }

  strcpy(v64, "voiceaddonoffset.");
  v65 = strlen(*(v29 + 72));
  v66 = v65;
  v67 = *(*(v29 + 8) + 72);
  if (*v67)
  {
    v68 = 0;
    v69 = 1;
    do
    {
      *(*(v29 + 72) + v66) = __tolower(v67[v68]);
      v68 = v69;
      v67 = *(*(v29 + 8) + 72);
      ++v66;
      v61 = strlen(v67) > v69++;
    }

    while (v61);
    *(*(v29 + 72) + v66) = 0;
  }

  else
  {
    *(*(v29 + 72) + v65) = 0;
  }

LABEL_89:
  if (log_HasTraceTuningDataSubscriber(*(*(**a8 + 16) + 32)))
  {
    v77 = *a8;
    v167 = 0;
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    *__s2 = 0u;
    v162 = 0u;
    __s1 = 0;
    v159 = 0;
    v158 = 0;
    v157 = 0;
    ssftstring_ObjOpen(*(*(*v77 + 16) + 8), &v157);
    if (v157)
    {
      activeprompt_db_GetTNTypes(v77, v157);
      v80 = v157;
    }

    else
    {
      v80 = 0;
    }

    v81 = v77[1];
    v82 = *(*v77 + 16);
    v83 = *(v82 + 32);
    v84 = v81[9];
    v85 = v77[10];
    v86 = v77[5];
    v87 = v81[23];
    v88 = v81[24];
    v89 = v81[21];
    if (v80)
    {
      v135 = *(v82 + 32);
      v136 = v77[10];
      v90 = v77[7];
      v133 = v77[6];
      v134 = v81[23];
      v131 = v81[8];
      v132 = v81[21];
      ssftstring_CStr(v80);
      v89 = v132;
      v87 = v134;
      v85 = v136;
      v83 = v135;
    }

    log_OutTraceTuningData(v83, 203, "%s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s", v85, v78, v87, v79, v89, "BEG");
    if (v157)
    {
      ssftstring_ObjClose(v157);
      v157 = 0;
    }

    if (vector_GetElemAt(*(v77[1] + 264), 0, &v158) && *v158 == 1 && vector_GetElemAt(*(v77[1] + 264), 1u, &v159) && (v91 = v159, *v159 == 2))
    {
      v156 = 0;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      *v153 = 0u;
      *v150 = 0u;
      v151 = 0u;
      v149 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      *v146 = 0u;
      *__s = 0u;
      v144 = 0u;
      v92 = v158;
      hlp_FillActivePrompt(v77, *v158, *(v158 + 24), 0, v150);
      hlp_FillActivePrompt(v77, *v91, *(v91 + 24), 0, __s);
      v93 = *(v92 + 16);
      v94 = *(v91 + 16) != 0;
      if (v93 != 0 || v94)
      {
        v95 = 0;
        v96 = 0;
        do
        {
          if (v94 && (v95 == v93 || (v97 = strlen(v146[0]), v98 = strlen(v153[0]), v97 > v98) || v97 == v98 && (HIDWORD(v144) > HIDWORD(v151) || HIDWORD(v144) == HIDWORD(v151) && v145 > v152)))
          {
            hlp_TraceContent_AP(v77, __s);
            if (++v96 < *(v159 + 16))
            {
              v99 = *v159;
              v100 = (*(v159 + 24) + 24 * v96);
              v101 = __s;
              v102 = v77;
              v103 = v96;
LABEL_114:
              hlp_FillActivePrompt(v102, v99, v100, v103, v101);
            }
          }

          else
          {
            hlp_TraceContent_AP(v77, v150);
            if (++v95 < *(v158 + 16))
            {
              v99 = *v158;
              v100 = (*(v158 + 24) + 24 * v95);
              v101 = v150;
              v102 = v77;
              v103 = v95;
              goto LABEL_114;
            }
          }

          v93 = *(v158 + 16);
          v104 = *(v159 + 16);
          v94 = v96 < v104;
        }

        while (v95 < v93 || v96 < v104);
      }

      v106 = 2;
    }

    else
    {
      v106 = 0;
    }

    while (vector_GetElemAt(*(v77[1] + 264), v106, &__s1))
    {
      v107 = __s1;
      if (*(__s1 + 4))
      {
        v108 = 0;
        v109 = 0;
        do
        {
          hlp_FillActivePrompt(v77, *v107, (*(v107 + 3) + v108), v109, __s2);
          hlp_TraceContent_AP(v77, __s2);
          ++v109;
          v107 = __s1;
          v108 += 24;
        }

        while (v109 < *(__s1 + 4));
      }

      ++v106;
    }

    log_OutTraceTuningData(*(*(*v77 + 16) + 32), 203, "%s%s", v110, v111, v112, v113, v114, "END");
  }

LABEL_25:
  v34 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t activeprompt_db_Get(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = 2296389652;
  v12 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(a1 + 28) == 2 && *(a1 + 24) && vector_GetElemAt(*(*(a1 + 8) + 264), 0, &v12))
  {
    v7 = 0;
    while (1)
    {
      v8 = v12;
      if (*(v12 + 16))
      {
        break;
      }

LABEL_9:
      if (!vector_GetElemAt(*(*(a1 + 8) + 264), ++v7, &v12))
      {
        return v6;
      }
    }

    v9 = 0;
    v10 = 0;
    while (LH_stricmp(a2, (*(*(a1 + 8) + 240) + *(*(v8 + 24) + v9))))
    {
      ++v10;
      v8 = v12;
      v9 += 24;
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_9;
      }
    }

    if (a3)
    {
      hlp_FillActivePrompt(a1, *v12, (*(v12 + 24) + v9), v10, a3);
    }

    return 0;
  }

  return v6;
}

uint64_t hlp_CheckBECompatibility(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*a1 + 16);
  v20 = 0;
  v19 = 0;
  result = domain_mngr_utils_IsActiveVoiceAddon(v3, *(v2 + 72), (v2 + 80), (v2 + 88), (v2 + 100), &v19);
  if ((result & 0x80000000) != 0)
  {
    result = hlp_CheckAttribute(v3, *(*(a1 + 8) + 168), "langcode", (*(a1 + 8) + 44));
    if (!result)
    {
      goto LABEL_26;
    }

    result = hlp_CheckAttribute(v3, *(*(a1 + 8) + 168), "voice", *(*(a1 + 8) + 64));
    if (!result)
    {
      result = hlp_CheckAttribute(v3, *(*(a1 + 8) + 168), "fevoice", *(*(a1 + 8) + 64));
      if (!result)
      {
        goto LABEL_26;
      }
    }

    v6 = *(a1 + 8);
    if (*(v6 + 80))
    {
      result = paramc_ParamGetStr(*(v3 + 40), "uselectrawdataversion", &v20);
      v6 = *(a1 + 8);
      if ((result & 0x80000000) == 0)
      {
        result = LH_stricmp(v20, (v6 + 80));
        v6 = *(a1 + 8);
        if (result)
        {
          v11 = *(v3 + 32);
          v12 = "voiceRawDataVersion";
LABEL_15:
          result = log_OutPublic(v11, "DOMAIN_MNGR", 47002, "%s%s%s%s", v7, v8, v9, v10, v12);
          goto LABEL_26;
        }
      }
    }

    if (*(v6 + 100))
    {
      result = paramc_ParamGetStr(*(v3 + 40), "uselectreductionversion", &v20);
      v6 = *(a1 + 8);
      if ((result & 0x80000000) == 0)
      {
        result = LH_stricmp(v20, (v6 + 100));
        v6 = *(a1 + 8);
        if (result)
        {
          v11 = *(v3 + 32);
          v12 = "voiceReductionVersion";
          goto LABEL_15;
        }
      }
    }

    if (*(v6 + 88))
    {
      if (!*(v6 + 100) || (result = LH_stricmp((v6 + 100), "null"), v6 = *(a1 + 8), result))
      {
        result = hlp_CheckAttribute(v3, *(v6 + 168), "reduction", (v6 + 88));
        if (!result)
        {
          goto LABEL_26;
        }

        v6 = *(a1 + 8);
      }
    }

    if (*(v6 + 120))
    {
      if ((paramc_ParamGetStr(*(v3 + 40), "voicecomponentid", &v20) & 0x80000000) != 0 || (result = LH_stricmp(v20, (*(a1 + 8) + 120)), result))
      {
        v17 = *(v3 + 32);
LABEL_25:
        v18 = *(a1 + 8) + 120;
        result = log_OutPublic(v17, "DOMAIN_MNGR", 47002, "%s%s%s%s", v13, v14, v15, v16, "VoiceComponentID");
        goto LABEL_26;
      }

      v6 = *(a1 + 8);
    }

    if (*(v6 + 160) != 1)
    {
      goto LABEL_3;
    }

    if (*(v6 + 120))
    {
      goto LABEL_3;
    }

    result = paramc_ParamGetStr(*(v3 + 40), "voicecomponentid", &v20);
    if ((result & 0x80000000) == 0 && !*v20)
    {
      goto LABEL_3;
    }

    v17 = *(v3 + 32);
    goto LABEL_25;
  }

  if (!v19)
  {
LABEL_26:
    v5 = 1;
    goto LABEL_27;
  }

LABEL_3:
  v5 = 2;
LABEL_27:
  *(a1 + 28) = v5;
  return result;
}

uint64_t hlp_FillActivePrompt(uint64_t result, int a2, unsigned int *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = *(result + 8);
  v7 = v6[30] + *a3;
  *a5 = result;
  *(a5 + 96) = a4;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  *(a5 + 24) = *(a3 + 2);
  v8 = *(a3 + 7);
  *(a5 + 28) = *(a3 + 6);
  *(a5 + 32) = v8;
  v9 = *(a3 + 4);
  if (v9 == 0xFFFF)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7 + v9;
  }

  v11 = *(a3 + 5);
  v12 = v11 == 0xFFFF;
  v13 = v7 + v11;
  if (v12)
  {
    v13 = 0;
  }

  *(a5 + 40) = v10;
  *(a5 + 48) = v13;
  *(a5 + 56) = *(a3 + 9);
  v14 = a3[5];
  v15 = a3[3];
  *(a5 + 60) = v14;
  *(a5 + 64) = v15;
  if (a2 != 2)
  {
    v5 = v6[31] + 4 * v15;
  }

  v16 = *(a3 + 8);
  v17 = v7 + v16;
  if (v16 == 0xFFFF)
  {
    v17 = 0;
  }

  *(a5 + 72) = v5;
  *(a5 + 80) = v17;
  *(a5 + 88) = v6[32] + 8 * v14;
  return result;
}

uint64_t activeprompt_db_GetTNTypes(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(a1 + 28) == 2 && vector_GetElemAt(*(*(a1 + 8) + 264), 0, &v8))
  {
    v4 = 1;
    do
    {
      v5 = *(v8 + 8);
      if (v5 && *v5)
      {
        ssftstring_AppendCStr(a2, v5);
        ssftstring_AppendChar(a2, 124);
      }
    }

    while (vector_GetElemAt(*(*(a1 + 8) + 264), v4++, &v8));
  }

  return 2296389652;
}

uint64_t activeprompt_db_ConsultOriOrth(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5)
{
  v64 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(a1 + 28) != 2 || !*(a1 + 24) || !*(*(a1 + 8) + 28))
  {
    return 0;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(*a1 + 16) + 32)))
  {
    v62 = *(*(a1 + 8) + 168);
    v61 = *(a1 + 56);
    log_OutTraceTuningData(*(*(*a1 + 16) + 32), 213, "%s%s %s%s %s%s", v9, v10, v11, v12, v13, "BEG");
    v14 = a5;
    do
    {
      if (!v14)
      {
        log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 214, "", "text/plain;charset=utf-8", *a2, 0);
        if (!a4)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v15 = v14;
      v14 = *(v14 + 16);
    }

    while (v14);
    if (!a4)
    {
      v19 = *(*(*a1 + 16) + 32);
      v20 = *a2;
      v21 = "text/plain;charset=utf-8";
      v22 = 0;
      goto LABEL_19;
    }

    if (*a4)
    {
      v16 = (*(v15 + 8) + *(v15 + 4) - *(*a3 + 12));
    }

    else
    {
      v16 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 214, "", "text/plain;charset=utf-8", *a2, v16);
LABEL_18:
    v19 = *(*(*a1 + 16) + 32);
    v20 = *a3;
    v22 = 32 * *a4;
    v21 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_19:
    log_OutTraceTuningDataBinary(v19, 214, "", v21, v20, v22);
  }

LABEL_20:
  if (!a5)
  {
    v17 = 0;
    goto LABEL_72;
  }

  v23 = a5;
  while (1)
  {
    v80 = 0;
    v81 = 0;
    v79 = 0;
    if (!*v23)
    {
      v17 = 0;
      goto LABEL_66;
    }

    v83 = 0;
    memset(v82, 0, sizeof(v82));
    v64 = 0;
    if (vector_GetElemAt(*(*(a1 + 8) + 264), 0, &v79) && *v79 == 1 && vector_GetElemAt(*(*(a1 + 8) + 264), 1u, &v80) && *v80 == 2)
    {
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      v72 = 0u;
      v71 = 0;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      *__s = 0u;
      v65 = 0u;
      v66 = 0u;
      v24 = domain_mngr_utils_ListContainsString(*(v79 + 8), "*");
      v25 = domain_mngr_utils_ListContainsString(*(v80 + 8), "*");
      if (!v24)
      {
        goto LABEL_68;
      }

      if (v25)
      {
        v31 = v79;
        hlp_FillActivePrompt(a1, *v79, *(v79 + 24), 0, &v72);
        v32 = v80;
        hlp_FillActivePrompt(a1, *v80, *(v80 + 24), 0, &v65);
        if (*v23 == 1)
        {
          v33 = *(v31 + 16);
          v34 = *(v32 + 16) != 0;
          if (v33 != 0 || v34)
          {
            v35 = 0;
            v36 = 0;
            while (1)
            {
              if (v34 && (v36 == v33 || (v37 = strlen(__s[0]), v38 = strlen(v75), v37 > v38) || v37 == v38 && (HIDWORD(v66) > HIDWORD(v73) || HIDWORD(v66) == HIDWORD(v73) && v67 > v74)))
              {
                v17 = activeprompt_ConsultOriOrth(&v65, a2, a3, a4, v23, &v64);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_72;
                }

                if (++v35 >= *(v80 + 16))
                {
                  goto LABEL_46;
                }

                v39 = *v80;
                v40 = (*(v80 + 24) + 24 * v35);
                v41 = &v65;
                v42 = a1;
                v43 = v35;
              }

              else
              {
                v17 = activeprompt_ConsultOriOrth(&v72, a2, a3, a4, v23, &v64);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_72;
                }

                if (++v36 >= *(v79 + 16))
                {
                  goto LABEL_46;
                }

                v39 = *v79;
                v40 = (*(v79 + 24) + 24 * v36);
                v41 = &v72;
                v42 = a1;
                v43 = v36;
              }

              hlp_FillActivePrompt(v42, v39, v40, v43, v41);
LABEL_46:
              if (*v23 == 1)
              {
                v33 = *(v79 + 16);
                v44 = *(v80 + 16);
                v34 = v35 < v44;
                if (v36 < v33 || v35 < v44)
                {
                  continue;
                }
              }

              goto LABEL_70;
            }
          }
        }
      }

      else
      {
LABEL_68:
        log_OutTraceTuningData(*(*(*a1 + 16) + 32), 216, "%s%s", v26, v27, v28, v29, v30, "INFO");
      }

      v17 = 0;
LABEL_70:
      v46 = 2;
    }

    else
    {
      v17 = 0;
      v46 = 0;
    }

    if (vector_GetElemAt(*(*(a1 + 8) + 264), v46, &v81))
    {
      break;
    }

LABEL_66:
    v23 = *(v23 + 16);
    if (!v23)
    {
      goto LABEL_72;
    }
  }

  do
  {
    if (domain_mngr_utils_ListContainsString(*(v81 + 8), "*"))
    {
      if (*v23 == 1)
      {
        v47 = v81;
        if (*(v81 + 16))
        {
          v48 = 0;
          v49 = 0;
          while (1)
          {
            hlp_FillActivePrompt(a1, *v47, (*(v47 + 24) + v48), v49, v82);
            v17 = activeprompt_ConsultOriOrth(v82, a2, a3, a4, v23, &v64);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_72;
            }

            if (*v23 == 1)
            {
              ++v49;
              v47 = v81;
              v48 += 24;
              if (v49 < *(v81 + 16))
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

    ++v46;
  }

  while (vector_GetElemAt(*(*(a1 + 8) + 264), v46, &v81));
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_72:
  if (log_HasTraceTuningDataSubscriber(*(*(*a1 + 16) + 32)))
  {
    do
    {
      if (!a5)
      {
        log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 215, "", "text/plain;charset=utf-8", *a2, 0);
        if (!a4)
        {
          goto LABEL_85;
        }

        goto LABEL_83;
      }

      v50 = a5;
      a5 = *(a5 + 16);
    }

    while (a5);
    if (!a4)
    {
      v57 = *(*(*a1 + 16) + 32);
      v58 = *a2;
      v59 = "text/plain;charset=utf-8";
      v60 = 0;
      goto LABEL_84;
    }

    if (*a4)
    {
      v51 = (*(v50 + 8) + *(v50 + 4) - *(*a3 + 12));
    }

    else
    {
      v51 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 215, "", "text/plain;charset=utf-8", *a2, v51);
LABEL_83:
    v57 = *(*(*a1 + 16) + 32);
    v58 = *a3;
    v60 = 32 * *a4;
    v59 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_84:
    log_OutTraceTuningDataBinary(v57, 215, "", v59, v58, v60);
LABEL_85:
    log_OutTraceTuningData(*(*(*a1 + 16) + 32), 213, "%s%s %s%u", v52, v53, v54, v55, v56, "END");
  }

  return v17;
}

uint64_t activeprompt_db_Consult(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = a1;
  v86 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(v11 + 28) != 2 || !*(v11 + 24))
  {
    return 0;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(*v11 + 16) + 32)))
  {
    v78 = *(*(v11 + 8) + 168);
    v77 = *(v11 + 56);
    log_OutTraceTuningData(*(*(*v11 + 16) + 32), 273, "%s%s %s%s %s%s", v12, v13, v14, v15, v16, "BEG");
    v17 = a7;
    do
    {
      if (!v17)
      {
        log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 274, "", "text/plain;charset=depes", *a2, 0);
        if (!a4)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v18 = v17;
      v17 = *(v17 + 16);
    }

    while (v17);
    if (!a4)
    {
      v22 = *(*(*v11 + 16) + 32);
      v23 = *a2;
      v24 = "text/plain;charset=depes";
      v25 = 0;
      goto LABEL_18;
    }

    if (*a4)
    {
      v19 = (*(v18 + 8) + *(v18 + 4) - *(*a3 + 12));
    }

    else
    {
      v19 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 274, "", "text/plain;charset=depes", *a2, v19);
LABEL_17:
    v22 = *(*(*v11 + 16) + 32);
    v23 = *a3;
    v25 = 32 * *a4;
    v24 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_18:
    log_OutTraceTuningDataBinary(v22, 274, "", v24, v23, v25);
  }

LABEL_19:
  if (!a7)
  {
    v20 = 0;
    goto LABEL_113;
  }

  v26 = a7;
  v85 = v11;
  while (1)
  {
    v102 = 0;
    v103 = 0;
    v101 = 0;
    if (!*v26)
    {
      v20 = 0;
      goto LABEL_60;
    }

    memset(v104, 0, 104);
    v86 = 0;
    if (!vector_GetElemAt(*(*(v11 + 8) + 264), 0, &v101) || *v101 != 1 || !vector_GetElemAt(*(*(v11 + 8) + 264), 1u, &v102) || *v102 != 2)
    {
      v20 = 0;
      v32 = 0;
      goto LABEL_37;
    }

    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    *__s = 0u;
    v87 = 0u;
    v88 = 0u;
    v27 = domain_mngr_utils_ListContainsString(*(v101 + 8), "*");
    v28 = v27 != 0;
    if (!v27 && a4)
    {
      v29 = *a4;
      if (*a4)
      {
        v30 = 0;
        v31 = 0;
        v28 = 0;
        do
        {
          if (*(*a3 + v30) == 21)
          {
            if (domain_mngr_utils_ListContainsString(*(v101 + 8), *(*a3 + v30 + 24)) == 1)
            {
              v28 = 1;
            }

            v29 = *a4;
          }

          ++v31;
          v30 += 32;
        }

        while (v31 < v29);
      }

      else
      {
        v28 = 0;
      }
    }

    if (domain_mngr_utils_ListContainsString(*(v102 + 8), "*"))
    {
      v50 = 1;
      goto LABEL_65;
    }

    if (a4)
    {
      v51 = *a4;
      if (*a4)
      {
        v52 = 0;
        v53 = 0;
        v50 = 0;
        do
        {
          if (*(*a3 + v52) == 21)
          {
            if (domain_mngr_utils_ListContainsString(*(v102 + 8), *(*a3 + v52 + 24)) == 1)
            {
              v50 = 1;
            }

            v51 = *a4;
          }

          ++v53;
          v52 += 32;
        }

        while (v53 < v51);
LABEL_65:
        if (v50 && v28)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      }
    }

    v50 = 0;
LABEL_78:
    log_OutTraceTuningData(*(*(*v11 + 16) + 32), 276, "%s%s", v45, v46, v47, v48, v49, "INFO");
LABEL_79:
    v20 = 0;
    if (v50 == 1 && v28)
    {
      v54 = v101;
      hlp_FillActivePrompt(v11, *v101, *(v101 + 24), 0, &v94);
      v55 = v102;
      hlp_FillActivePrompt(v11, *v102, *(v102 + 24), 0, &v87);
      if (*v26 == 1 && (v56 = *(v54 + 16), v57 = *(v55 + 16) != 0, v56 != 0 || v57))
      {
        v58 = v54;
        v59 = 0;
        v60 = 0;
        do
        {
          v80 = v59;
          if (v57 && (__s[0] ? (v61 = v97 == 0) : (v61 = 1), !v61 && (v60 == v56 || (v79 = v58, v62 = strlen(__s[0]), v63 = strlen(v97), v58 = v79, v62 > v63) || v62 == v63 && (HIDWORD(v88) > HIDWORD(v95) || HIDWORD(v88) == HIDWORD(v95) && v89 > v96))))
          {
            v20 = activeprompt_Consult(&v87, *(v55 + 8), a2, a3, a4, v26, a5, a6, &v86, a8);
            if ((v20 & 0x80000000) != 0)
            {
              goto LABEL_113;
            }

            v59 = v80 + 1;
            if (v80 + 1 < *(v102 + 16))
            {
              hlp_FillActivePrompt(v11, *v102, (*(v102 + 24) + 24 * v59), v80 + 1, &v87);
              v59 = v80 + 1;
            }
          }

          else
          {
            v20 = activeprompt_Consult(&v94, *(v58 + 8), a2, a3, a4, v26, a5, a6, &v86, a8);
            if ((v20 & 0x80000000) != 0)
            {
              goto LABEL_113;
            }

            if (++v60 < *(v101 + 16))
            {
              hlp_FillActivePrompt(v11, *v101, (*(v101 + 24) + 24 * v60), v60, &v94);
            }

            v59 = v80;
          }

          if (*v26 != 1)
          {
            break;
          }

          v58 = v101;
          v55 = v102;
          v56 = *(v101 + 16);
          v64 = *(v102 + 16);
          v57 = v59 < v64;
        }

        while (v60 < v56 || v59 < v64);
      }

      else
      {
        v20 = 0;
      }
    }

    v32 = 2;
LABEL_37:
    if (vector_GetElemAt(*(*(v11 + 8) + 264), v32, &v103))
    {
      break;
    }

LABEL_60:
    v26 = *(v26 + 16);
    if (!v26)
    {
      goto LABEL_113;
    }
  }

  do
  {
    if (domain_mngr_utils_ListContainsString(*(v103 + 8), "*"))
    {
      goto LABEL_129;
    }

    if (!a4)
    {
      goto LABEL_55;
    }

    v41 = *a4;
    if (!*a4)
    {
      goto LABEL_55;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    do
    {
      if (*(*a3 + v42) == 21)
      {
        if (domain_mngr_utils_ListContainsString(*(v103 + 8), *(*a3 + v42 + 24)) == 1)
        {
          v44 = 1;
        }

        v41 = *a4;
      }

      ++v43;
      v42 += 32;
    }

    while (v43 < v41);
    v11 = v85;
    if (v44)
    {
LABEL_129:
      if (*v26 == 1)
      {
        v38 = v103;
        if (*(v103 + 16))
        {
          v39 = 0;
          v40 = 0;
          while (1)
          {
            hlp_FillActivePrompt(v85, *v38, (*(v38 + 24) + v39), v40, v104);
            v20 = activeprompt_Consult(v104, *(v38 + 8), a2, a3, a4, v26, a5, a6, &v86, a8);
            if ((v20 & 0x80000000) != 0)
            {
              break;
            }

            if (*v26 == 1)
            {
              ++v40;
              v38 = v103;
              v39 += 24;
              if (v40 < *(v103 + 16))
              {
                continue;
              }
            }

            goto LABEL_56;
          }

          v11 = v85;
          goto LABEL_113;
        }
      }
    }

    else
    {
LABEL_55:
      log_OutTraceTuningData(*(*(*v11 + 16) + 32), 273, "%s%s", v33, v34, v35, v36, v37, "INFO");
    }

LABEL_56:
    ++v32;
    v11 = v85;
  }

  while (vector_GetElemAt(*(*(v85 + 8) + 264), v32, &v103));
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_113:
  if (log_HasTraceTuningDataSubscriber(*(*(*v11 + 16) + 32)))
  {
    do
    {
      if (!a7)
      {
        log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 275, "", "text/plain;charset=depes", *a2, 0);
        if (!a4)
        {
          goto LABEL_126;
        }

        goto LABEL_124;
      }

      v66 = a7;
      a7 = *(a7 + 16);
    }

    while (a7);
    if (!a4)
    {
      v73 = *(*(*v11 + 16) + 32);
      v74 = *a2;
      v75 = "text/plain;charset=depes";
      v76 = 0;
      goto LABEL_125;
    }

    if (*a4)
    {
      v67 = (*(v66 + 8) + *(v66 + 4) - *(*a3 + 12));
    }

    else
    {
      v67 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 275, "", "text/plain;charset=depes", *a2, v67);
LABEL_124:
    v73 = *(*(*v11 + 16) + 32);
    v74 = *a3;
    v76 = 32 * *a4;
    v75 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_125:
    log_OutTraceTuningDataBinary(v73, 275, "", v75, v74, v76);
LABEL_126:
    log_OutTraceTuningData(*(*(*v11 + 16) + 32), 273, "%s%s %s%u", v68, v69, v70, v71, v72, "END");
  }

  return v20;
}

uint64_t IsRecordingCS(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*a1 + 16);
  v11 = 0;
  v10 = 0;
  if ((paramc_ParamGetInt(*(v6 + 40), "frequencyhz", &v10) & 0x80000000) != 0)
  {
    result = 0;
    v8 = 0;
    if (a3)
    {
LABEL_11:
      *a3 = v8;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if (v8)
      {
        heap_Free(*(v6 + 8), v8);
      }

      v8 = (*(&off_1F42D68F0 + v7))(v6, a2, *(a1[1] + 64), *(a1[1] + 168), v10);
      if (v8)
      {
        if ((brk_DataOpenEx(*(v6 + 24), v8, 1, &v11) & 0x80000000) == 0)
        {
          break;
        }
      }

      v7 += 8;
      if (v7 == 48)
      {
        result = 0;
        if (a3)
        {
          goto LABEL_11;
        }

        return result;
      }
    }

    brk_DataClose(*(v6 + 24), v11);
    result = 1;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t hlp_GetRecordingSrcFromApdbBrkString(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a1 + 8);
  v9 = strlen(__s);
  v10 = heap_Alloc(v8, v9 + 5);
  v11 = v10;
  if (v10)
  {
    v12 = strcpy(v10, __s);
    if (!hlp_ReplaceRpWithCs(v12, 1, a5))
    {
      heap_Free(*(a1 + 8), v11);
      return 0;
    }
  }

  return v11;
}

char *hlp_GetRecordingSrcFromFixedBrkString(uint64_t a1, int a2, char *__s, const char *a4, int a5)
{
  v8 = *(a1 + 8);
  v9 = strlen(__s);
  v10 = strlen(a4);
  v11 = heap_Alloc(v8, v9 + v10 + 14);
  v12 = v11;
  if (v11)
  {
    *v11 = 0;
    hlp_AppendStandardName(v11, 1, __s, a4, a5);
  }

  return v12;
}

char *hlp_GetRecordingSrcFromApdbURI(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, int a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!IsThisUrlOrRealPath(__s, 0))
  {
    goto LABEL_8;
  }

  memset(v16, 0, sizeof(v16));
  v8 = strlen(__s);
  v9 = heap_Alloc(*(a1 + 8), v8 + 5);
  v10 = v9;
  if (v9)
  {
    v11 = strcpy(v9, __s);
    v12 = strrchr(v11, 46);
    if (v12)
    {
      v13 = v12;
      __strcpy_chk();
      *v13 = 0;
    }

    if (hlp_ReplaceRpWithCs(v10, 0, a5))
    {
      strcat(v10, v16);
      goto LABEL_9;
    }

    heap_Free(*(a1 + 8), v10);
LABEL_8:
    v10 = 0;
  }

LABEL_9:
  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

char *hlp_GetRecordingSrcFromFixedURI(uint64_t a1, char *__s, const char *a3, const char *a4, int a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (IsThisUrlOrRealPath(__s, 0) && SplitpathOrUrl(__s, __src, __s2, v22, 0, __sa) && (v10 = strlen(__s), v11 = strlen(a3), v12 = strlen(a4), v13 = strlen(__sa), (v14 = heap_Alloc(*(a1 + 8), v10 + v11 + v12 + v13 + 14)) != 0))
  {
    v15 = v14;
    v16 = strcpy(v14, __src);
    v17 = strcat(v16, __s2);
    v18 = strcat(v17, v22);
    hlp_AppendStandardName(v18, 0, a3, a4, a5);
    strcat(v15, __sa);
  }

  else
  {
    v15 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

char *hlp_GetRecordingSrcFromCupWithCustomName(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, int a5)
{
  if (strncmp(__s1, "cup:", 4uLL))
  {
    return 0;
  }

  __s = 0;
  if (!cupreader_GetTuningDataNameInCup(a1, &__s))
  {
    return 0;
  }

  v10 = strlen(__s1);
  v11 = strlen(__s);
  v12 = heap_Alloc(*(a1 + 8), v10 + v11 + 14);
  v8 = v12;
  if (v12)
  {
    v13 = strcpy(v12, __s1 + 4);
    *&v8[strlen(v13)] = 58;
    v14 = strcat(v8, __s);
    if (!hlp_ReplaceRpWithCs(v14, 0, a5))
    {
      heap_Free(*(a1 + 8), v8);
      return 0;
    }
  }

  return v8;
}

char *hlp_GetRecordingSrcFromCupWithFixedName(uint64_t a1, char *__s1, const char *a3, const char *a4, int a5)
{
  if (strncmp(__s1, "cup:", 4uLL))
  {
    return 0;
  }

  v11 = strlen(__s1);
  v12 = strlen(a3);
  v13 = strlen(a4);
  v14 = heap_Alloc(*(a1 + 8), v11 + v12 + v13 + 14);
  v10 = v14;
  if (v14)
  {
    v15 = strcpy(v14, __s1 + 4);
    *&v10[strlen(v15)] = 58;
    hlp_AppendStandardName(v10, 0, a3, a4, a5);
  }

  return v10;
}

uint64_t activeprompt_db_CopyPartsGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v8 = strlen(v6);
      result = heap_Alloc(a2, (v8 + 1));
      *(a3 + 8) = result;
      if (!result)
      {
        return result;
      }

      strcpy(result, *(a1 + 8));
    }

    return 1;
  }

  return result;
}

void *activeprompt_db_FreePartsGroup(void *result, void *a2)
{
  if (result)
  {
    v2 = result[1];
    if (v2)
    {
      return heap_Free(a2, v2);
    }
  }

  return result;
}

uint64_t hlp_CheckAttribute(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = 0;
  if ((paramc_ParamGetStr(*(a1 + 40), a3, &v10) & 0x80000000) == 0 && !LH_stricmp(v10, a4))
  {
    return 1;
  }

  log_OutText(*(a1 + 32), "DOMAIN_MNGR", 3, 0, "APDB does not match the voice: %s=%s, %s=%s, %s=%s, %s=%s", v6, v7, v8, "domain");
  return 0;
}

uint64_t hlp_ReplaceRpWithCs(char *__s1, int a2, int a3)
{
  if (a2)
  {
    v6 = "/rp/";
  }

  else
  {
    v6 = "_rp_";
  }

  if (a2)
  {
    v7 = "/f";
  }

  else
  {
    v7 = "_f";
  }

  v8 = __s1;
  if (*v6)
  {
    v9 = 0;
    v10 = __s1;
    do
    {
      v8 = v9;
      v9 = strstr(v10, v6);
      v10 = v9 + 1;
    }

    while (v9);
  }

  if (!v8)
  {
    return 0;
  }

  if (a2)
  {
    v11 = 796091183;
  }

  else
  {
    v11 = 1601397599;
  }

  *v8 = v11;
  v12 = &__s1[strlen(__s1)];
  *v12 = *v7;
  v12[2] = v7[2];
  v13 = strlen(__s1);
  LH_itoa(a3 / 1000, &__s1[v13], 0xAu);
  return 1;
}

char *hlp_AppendStandardName(char *a1, int a2, const char *a3, const char *a4, int a5)
{
  strcat(a1, "apdb");
  v10 = strlen(a1);
  v11 = a2 == 0;
  if (a2)
  {
    v12 = "/cs/";
  }

  else
  {
    v12 = "_cs_";
  }

  v13 = &a1[v10];
  *v13 = *v12;
  v13[4] = v12[4];
  if (a2)
  {
    v14 = 47;
  }

  else
  {
    v14 = 95;
  }

  if (v11)
  {
    v15 = "_f";
  }

  else
  {
    v15 = "/f";
  }

  v16 = strcat(a1, a3);
  *&a1[strlen(v16)] = v14;
  v17 = strcat(a1, a4);
  v18 = &a1[strlen(v17)];
  *v18 = *v15;
  v18[2] = v15[2];
  v19 = strlen(a1);

  return LH_itoa(a5 / 1000, &a1[v19], 0xAu);
}

uint64_t hlp_GetMimeParam(uint64_t a1, char *__s, const char *a3, char **a4)
{
  v4 = 2296389639;
  if (__s)
  {
    if (a3)
    {
      if (*__s)
      {
        if (*a3)
        {
          *a4 = 0;
          v8 = strchr(__s, 59);
          v4 = 2296389652;
          if (v8)
          {
            v9 = v8;
            v10 = strlen(a3);
            do
            {
              v11 = v9 + 1;
              if (!strncmp(v9 + 1, a3, v10))
              {
                v12 = &v11[v10];
                if (v11[v10] == 61)
                {
                  v13 = -1;
                  do
                  {
                    v14 = v9[v10 + 3 + v13++];
                  }

                  while (v14 != 59 && v14 != 0);
                  v16 = heap_Alloc(*(a1 + 8), (v13 + 1));
                  *a4 = v16;
                  if (!v16)
                  {
                    log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0, v17, v18, v19, v20, v23);
                    return 2296389642;
                  }

                  if (v13)
                  {
                    v21 = v13;
                    strncpy(v16, v12 + 1, v13);
                    v16 = &(*a4)[v13];
                  }

                  else
                  {
                    v21 = 0;
                  }

                  v4 = 0;
                  v11 = &v9[v10 + 1 + v13];
                  *v16 = 0;
                  v10 = v21;
                }
              }

              v9 = strchr(v11, 59);
            }

            while (v9);
          }
        }
      }
    }
  }

  return v4;
}

uint64_t hlp_TraceContent_AP(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = AP_BOUNDARYCND_STR[*(a2 + 28)];
  __strcpy_chk();
  if (*(a2 + 28) == 5)
  {
    v18 = *(a2 + 24);
  }

  v5 = AP_BOUNDARYCND_STR[*(a2 + 32)];
  __strcpy_chk();
  if (*(a2 + 32) == 5)
  {
    v17 = *(a2 + 25);
  }

  *(a2 + 8);
  v16 = *(a2 + 80);
  v15 = *(a2 + 48);
  v14 = *(a2 + 40);
  v13 = *(a2 + 16);
  log_OutTraceTuningData(*(*(*a1 + 16) + 32), 204, "%s%s %s%s %s%s %s%s %s%s %s%s %s%s", v6, v7, v8, v9, v10, "NAME");
  result = log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 204, "", "application/x-realspeak-usids;version=4.0", a2 + 64, 4 * *(a2 + 56));
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t activeprompt_GetRecPromptURI(unsigned int *a1, uint64_t a2, char **a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = 2296389639;
  if (*a1)
  {
    if (a3)
    {
      v6 = *(*a1 + 80);
      if (v6)
      {
        v8 = strlen(v6);
        strcpy(__s, "#");
        LH_utoa(a1[16], &__s[1], 0xAu);
        v9 = strlen(__s);
        v10 = heap_Alloc(a2, (v8 + v9 + 1));
        *a3 = v10;
        if (v10)
        {
          strcpy(v10, *(*a1 + 80));
          strcpy(&(*a3)[v8], __s);
          v3 = 0;
        }

        else
        {
          v3 = 2296389642;
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t activeprompt_GetUserNorm(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 2296389639;
  }

  result = 0;
  *a2 = *(a1 + 40);
  return result;
}

uint64_t activeprompt_Insert(uint64_t **a1, unsigned int a2, int a3, int a4, const char **a5, _DWORD **a6, unsigned __int16 *a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, _WORD *a12)
{
  v17 = a1;
  v184 = a9;
  v208 = *MEMORY[0x1E69E9840];
  v18 = **a1;
  v19 = *(v18 + 16);
  v200 = 0;
  v199 = 0;
  v197 = 0;
  v198 = 0;
  v195 = 11;
  v196 = 0;
  v194 = 0;
  v193 = 255;
  v191 = 0;
  v192 = 0;
  v20 = *(v18 + 56);
  v207 = 0;
  v206 = 0;
  v190 = 0;
  v188 = 0;
  __s = 0;
  v21 = a1[6];
  v22 = strstr(v21, "%Ä");
  v185 = a7;
  v186 = a2;
  v187 = a5;
  if (v22)
  {
    LOWORD(a3) = v22 - v21 + 1;
    hlp_RemoveSetPhonInRange(a5, a6, a7, a2, a3);
    v23 = a6;
    goto LABEL_3;
  }

  if (!a3)
  {
    v60 = strlen(*a5);
    v204 = 0;
    v205 = 0;
    v202 = 11;
    v203 = 0;
    v201 = 0;
    NextTokenRecIdAtFrom = (*(v20 + 104))(a10, a11, 1, 0, &v205 + 2);
    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
    {
      goto LABEL_271;
    }

    LOWORD(a3) = 0;
    if (((*(v20 + 152))(a10, a11, 2, HIWORD(v205), &v203) & 0x80000000) != 0)
    {
      v61 = a6;
    }

    else
    {
      v61 = a6;
      if (v203)
      {
        NextTokenRecIdAtFrom = (*(v20 + 104))(a10, a11, 2, HIWORD(v205), &v205);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_271;
        }

        v62 = v205;
        if (v205)
        {
          LOWORD(a3) = 0;
          do
          {
            if (a3)
            {
              break;
            }

            NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v62, 1, 1, &v204, &v204 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            if (v204 > a2)
            {
              goto LABEL_89;
            }

            NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v205, 0, 1, &v202, &v204 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            if (v202 != 6)
            {
              goto LABEL_89;
            }

            NextTokenRecIdAtFrom = (*(v20 + 176))(a10, a11, v205, 4, &v201, &v204 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            if (HIWORD(v204) && !strncmp(v201, "_PR_", HIWORD(v204)))
            {
              NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v205, 2, 1, &v203 + 2, &v204 + 2);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_271;
              }

              LOWORD(a3) = HIWORD(v203) >= a2 ? HIWORD(v203) - a2 : 0;
            }

            else
            {
LABEL_89:
              LOWORD(a3) = 0;
            }

            NextTokenRecIdAtFrom = (*(v20 + 120))(a10, a11, v205, &v205);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            v62 = v205;
            if (!v205)
            {
              break;
            }
          }

          while (v204 <= a2);
        }

        else
        {
          LOWORD(a3) = 0;
        }
      }
    }

    if (a2 + a3 >= v60)
    {
      if (v60 > a2)
      {
        LOWORD(a3) = v60 - a2;
      }

      else
      {
        LOWORD(a3) = 0;
      }
    }

    else
    {
      a6 = v61;
      v110 = &(*v187)[a2];
      while (1)
      {
        v111 = v110[a3];
        if (v111 != 32 && v111 != 95 && (!v110[a3] || !strchr(*(*(*v17 + 8) + 192), v111)))
        {
          break;
        }

        LOWORD(a3) = a3 + 1;
      }
    }
  }

  hlp_RemoveSetPhonInRange(v187, a6, a7, a2, a3);
  v30 = *v187;
  v31 = strstr(&(*v187)[a2], "§");
  if (!v31)
  {
    v176 = 0;
    v23 = a6;
LABEL_99:
    *a12 -= v176;
LABEL_3:
    if (v17[2] != 2)
    {
      goto LABEL_119;
    }

    v180 = v23;
    v24 = *v17;
    if (*(*v17 + 32) == 1)
    {
      v201 = 0;
      RecPromptURI = activeprompt_GetRecPromptURI(v17, *(v19 + 8), &v201);
      if ((RecPromptURI & 0x80000000) != 0)
      {
        v51 = RecPromptURI;
      }

      else
      {
        if (vector_Add(*(**v17 + 88), &v201))
        {
          v191 = v201;
          v23 = v180;
          goto LABEL_119;
        }

        v51 = 2296389642;
        heap_Free(*(v19 + 8), v201);
      }

      v63 = *(v19 + 32);
LABEL_116:
      log_OutPublic(v63, "DOMAIN_MNGR", 47000, 0, v26, v27, v28, v29, v167);
      goto LABEL_272;
    }

    if (*(*v24 + 64))
    {
      v58 = v24[10];
      if (v58)
      {
        v59 = strlen(v58);
      }

      else
      {
        v59 = 0;
      }

      v64 = v24[5];
      if (v64)
      {
        v65 = strlen(v64);
      }

      else
      {
        v65 = 0;
      }

      v66 = strlen(*(v17 + 2));
      v67 = heap_Alloc(*(v19 + 8), (v59 + v65 + v66 + 1));
      if (!v67)
      {
        v51 = 2296389642;
        v63 = *(v19 + 32);
        goto LABEL_116;
      }

      v68 = v67;
      v69 = *(*v17 + 80);
      if (v69)
      {
        strcpy(v67, v69);
      }

      strcpy(&v68[v59], *(v17 + 2));
      v70 = *v17;
      v71 = *(*v17 + 40);
      v175 = v17;
      if (v71)
      {
        v72 = strlen(v68);
        strcpy(&v68[v72], v71);
        v70 = *v17;
      }

      v73 = *v70;
      v74 = *(*(*v70 + 64) + 64);
      if (v70[10])
      {
        v75 = 0;
      }

      else
      {
        v75 = v70[6];
      }

      NullHandle = safeh_GetNullHandle();
      v78 = v74(*(v73 + 72), *(v73 + 80), v68, v75, NullHandle, v77, &v191);
      heap_Free(*(v19 + 8), v68);
      v17 = v175;
      v23 = v180;
      if ((v78 & 0x80000000) == 0)
      {
LABEL_119:
        v51 = 2296389642;
        LODWORD(v206) = -65536;
        BYTE4(v206) = 0;
        NextTokenRecIdAtFrom = (*(v20 + 104))(a10, a11, 1, 0, &v200 + 2);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_271;
        }

        NextTokenRecIdAtFrom = (*(v20 + 104))(a10, a11, 2, HIWORD(v200), &v200);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_271;
        }

        v79 = v200;
        v173 = v19;
        if (v200)
        {
          v80 = v23;
          v81 = 0;
          v82 = 0;
          v169 = 0;
          v171 = 0;
          v168 = 0;
          v177 = v186 + a3;
          v170 = 1;
          while (1)
          {
            NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v79, 0, 1, &v195, &v197 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v200, 1, 1, &v196, &v197 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            if (v195 - 9 < 2)
            {
LABEL_128:
              if (v196 < v186 || v177 <= v196)
              {
                v83 = 0;
                v88 = v171;
                if (v177 <= v196)
                {
                  v88 = 1;
                }

                LODWORD(v171) = v88;
              }

              else if (v17[2] == 1)
              {
                v83 = v200;
                if (((*(v20 + 184))(a10, a11, v200, 14, &v196 + 2) & 0x80000000) == 0 && HIWORD(v196))
                {
                  NextTokenRecIdAtFrom = (*(v20 + 176))(a10, a11, v200, 14, &__s, &v197 + 2);
                  if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                  {
                    goto LABEL_271;
                  }

                  v84 = __s;
                  if (__s)
                  {
                    v85 = v169;
                    if (!v169)
                    {
                      v85 = StrArrInit(*(**v17 + 16));
                      if (!v85)
                      {
                        goto LABEL_272;
                      }

                      v84 = __s;
                    }

                    v169 = v85;
                    NextTokenRecIdAtFrom = StrArrSave(v85, v81, v84);
                    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                    {
                      goto LABEL_271;
                    }
                  }
                }

                if (((*(v20 + 184))(a10, a11, v200, 5, &v196 + 2) & 0x80000000) == 0 && HIWORD(v196))
                {
                  NextTokenRecIdAtFrom = (*(v20 + 176))(a10, a11, v200, 5, &v188, &v197 + 2);
                  if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                  {
                    goto LABEL_271;
                  }

                  v86 = v188;
                  if (v188)
                  {
                    if (!v82)
                    {
                      v87 = StrArrInit(*(**v17 + 16));
                      if (!v87)
                      {
                        goto LABEL_272;
                      }

                      v82 = v87;
                      v86 = v188;
                    }

                    NextTokenRecIdAtFrom = StrArrSave(v82, v81, v86);
                    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                    {
                      goto LABEL_271;
                    }
                  }
                }
              }

              else
              {
                if (v170 == 1)
                {
                  v89 = 14;
                }

                else
                {
                  v89 = 12;
                }

                v195 = v89;
                NextTokenRecIdAtFrom = (*(v20 + 160))(a10, a11, v200, 0, 1, &v195, &v197);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_271;
                }

                v83 = 0;
                v170 = 0;
              }

              goto LABEL_168;
            }

            if (v195 != 15)
            {
              break;
            }

            if (v17[2] != 1)
            {
              goto LABEL_156;
            }

            if (v196 < v186 || v177 <= v196)
            {
              v83 = 0;
              if (v171)
              {
                v90 = 1;
              }

              else
              {
                v90 = v177 > v196;
              }

              v91 = v168;
              if (!v90)
              {
                v91 = v200;
              }

              v168 = v91;
            }

            else
            {
              v83 = v200;
              if (v196 == v186)
              {
                hlp_SavePhraseProps(v20, a10, a11, v200, &v206);
              }
            }

LABEL_168:
            NextTokenRecIdAtFrom = (*(v20 + 120))(a10, a11, v200, &v200);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            if (v83)
            {
              NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v83, 8, 1, &v194, &v197 + 2);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_271;
              }

              v96 = (*(v20 + 184))(a10, a11, v83, 18, &v196 + 2);
              v97 = 0;
              if ((v96 & 0x80000000) == 0 && HIWORD(v196))
              {
                NextTokenRecIdAtFrom = (*(v20 + 176))(a10, a11, v83, 18, &v192, &v197 + 2);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_271;
                }

                v97 = 0;
                if (HIWORD(v197) && v192)
                {
                  v97 = strcmp(v192, "external") == 0;
                }
              }

              HIDWORD(v171) = v97;
              if (v195 <= 0xA && ((1 << v195) & 0x610) != 0)
              {
                ++v81;
              }

              NextTokenRecIdAtFrom = (*(v20 + 192))(a10, a11, v83);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_271;
              }
            }

            v79 = v200;
            if (!v200)
            {
              v178 = v82;
              v181 = v80;
              if (v17[2] != 1)
              {
                v101 = v186;
                goto LABEL_211;
              }

              v98 = v81;
              if (v169)
              {
                StrArrDump(v169, v81, "NLU feat Before AP subst", "NLU", v92, v93, v94, v95);
                v99 = v169;
                v100 = *(v17 + 28);
                if (v169[1] >= v100)
                {
                  v101 = v186;
                }

                else
                {
                  NextTokenRecIdAtFrom = StrArrRealloc(v169, v100 + 10);
                  v101 = v186;
                  if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                  {
                    goto LABEL_271;
                  }

                  v100 = *(v17 + 28);
                  v99 = v169;
                }

                NextTokenRecIdAtFrom = NLUFeatAdaptToAp(v99, v98, v100);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_271;
                }

                StrArrDump(v99, *(v17 + 28), "NLU feats after AP subst", "NLU", v156, v157, v158, v159);
              }

              else
              {
                v99 = 0;
                v101 = v186;
              }

              v169 = v99;
              if (!v178)
              {
                v178 = 0;
                goto LABEL_195;
              }

              StrArrDump(v178, v98, "POS Before AP subst", "POS", v92, v93, v94, v95);
              v160 = *(v17 + 28);
              if (v178[1] < v160)
              {
                NextTokenRecIdAtFrom = StrArrRealloc(v178, v160 + 10);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_271;
                }

                v160 = *(v17 + 28);
              }

              NextTokenRecIdAtFrom = POSAdaptToAp(v178, v98, v160);
              if ((NextTokenRecIdAtFrom & 0x80000000) == 0)
              {
                StrArrDump(v178, *(v17 + 28), "POS after AP subst", "POS", v161, v162, v163, v164);
                goto LABEL_195;
              }

              goto LABEL_271;
            }
          }

          if (v195 == 4)
          {
            goto LABEL_128;
          }

LABEL_156:
          v83 = 0;
          goto LABEL_168;
        }

        v181 = v23;
        v178 = 0;
        v169 = 0;
        HIDWORD(v171) = 0;
        LOWORD(v168) = 0;
        v101 = v186;
        if (v17[2] == 1)
        {
LABEL_195:
          NextTokenRecIdAtFrom = hlp_AlignOrthAndPhonWords(a10, a11, v20, v17, v187, v181, v185, a9, a4, v101, &v190);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_271;
          }
        }

LABEL_211:
        v175 = v17;
        v112 = v101 + a4;
        v114 = *(a9 + 4);
        v113 = *(a9 + 8);
        v115 = *a9;
        v183 = *(a9 + 16);
        v116 = v190 + a3;
        v117 = *(v19 + 8);
        v118 = v112;
        if (v112 <= v114)
        {
          v120 = (v190 + a3);
          v51 = CI_Update(v117, a9, 0, v114, v116);
          v119 = a11;
          v121 = v118;
          if ((v51 & 0x80000000) != 0)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v51 = CI_Update(v117, a9, v115, v114, v112 - v114);
          v119 = a11;
          if ((v51 & 0x80000000) != 0)
          {
            goto LABEL_272;
          }

          v120 = v116;
          v121 = v118;
          v122 = CILE_New(*(v173 + 8), 0, v118, v120);
          if (!v122)
          {
            v151 = *(v173 + 32);
            goto LABEL_259;
          }

          *(a9 + 16) = v122;
          v184 = v122;
        }

        v127 = v113 + v114 - (v121 + v120);
        if (v113 + v114 <= v121 + v120)
        {
          v128 = v173;
          v134 = v181;
          v129 = v184;
          v135 = v119;
        }

        else
        {
          v128 = v173;
          v129 = CILE_New(*(v173 + 8), v115, v121 + v120, v127);
          v134 = v181;
          if (!v129)
          {
            log_OutPublic(*(v173 + 32), "DOMAIN_MNGR", 47000, 0, v130, v131, v132, v133, v167);
            *(v184 + 2) = v183;
LABEL_260:
            v51 = 2296389642;
            goto LABEL_272;
          }

          v135 = v119;
          *(v184 + 2) = v129;
        }

        *(v129 + 2) = v183;
        if (*(v175 + 8) == 1)
        {
          v199 = 0;
          NextTokenRecIdAtFrom = (*(v20 + 104))(a10, v135, 1, 0, &v200 + 2);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_271;
          }

          NextTokenRecIdAtFrom = (*(v20 + 104))(a10, v135, 2, HIWORD(v200), &v200);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_271;
          }

          v136 = v186;
          NextTokenRecIdAtFrom = hlp_GetNextTokenRecIdAtFrom(a10, v135, v20, v186, v200, &v199);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_271;
          }

          if ((~v206 & 0xFFFF0000) != 0)
          {
            NextTokenRecIdAtFrom = hlp_InsertInitialPhraseRecord(a10, v135, v20, HIWORD(v200), &v206, &v199);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }
          }

          v137 = *(v175 + 56);
          if (*(v175 + 56))
          {
            v138 = 0;
            v139 = 0;
            do
            {
              LOWORD(v201) = 0;
              if (v137 - 1 == v138)
              {
                v139 = 1;
              }

              v140 = v136;
              v141 = &(*v187)[v136];
              v142 = hlp_SearchWordBoundaryInOrth(v141);
              if (v142 == 0xFFFF)
              {
                v142 = strlen(v141);
              }

              v136 = v142 + v140;
              NextTokenRecIdAtFrom = hlp_InsertPromptWordRecord(a10, v135, v20, v175, v169, v178, v138, v139, HIWORD(v200), v140, SBYTE1(v140), v142 + v140, v194, SHIDWORD(v171), &v201, &v193, &v198, &v199);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_271;
              }

              v143 = *v187;
              for (i = (*v187)[v136]; v143[v136]; i = v143[++v136])
              {
                if (i != 95 && i != 32)
                {
                  break;
                }
              }

              NextTokenRecIdAtFrom = hlp_GetNextTokenRecIdAtFrom(a10, v135, v20, v136, v199, &v199);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_271;
              }

              if (!v198)
              {
                NextTokenRecIdAtFrom = hlp_CreateOrUpdatePhraseRecord(a10, v135, v20, v139, v168, v140, v193, v201, &v199);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_271;
                }
              }

              ++v138;
              v137 = *(v175 + 56);
            }

            while (v138 < v137);
          }

          v51 = (*(v20 + 272))(a10, v135, 16, 3, 0, 0);
LABEL_256:
          v102 = v178;
          v103 = v169;
          if ((v51 & 0x80000000) != 0)
          {
            goto LABEL_272;
          }

          goto LABEL_188;
        }

        v145 = *v185;
        v146 = *v134;
        v147 = a8;
        if (v145 > a8)
        {
          v148 = a8;
          v149 = (v146 + 32 * a8 + 12);
          while (1)
          {
            v150 = *v149;
            v149 += 8;
            if (v150 > v121)
            {
              break;
            }

            if (v145 == ++v148)
            {
              v147 = *v185;
              goto LABEL_250;
            }
          }

          v147 = v148;
        }

LABEL_250:
        v152 = heap_Realloc(*(v128 + 8), v146, 32 * v145 + 32);
        if (v152)
        {
          *v134 = v152;
          v153 = *v185;
          if (v147 < v153)
          {
            memmove((v152 + 32 * v147 + 32), (v152 + 32 * v147), 32 * (v153 - v147));
            LOWORD(v153) = *v185;
            v152 = *v134;
          }

          *v185 = v153 + 1;
          v154 = (v152 + 32 * v147);
          *v154 = 0u;
          v154[1] = 0u;
          v155 = *v134 + 32 * v147;
          *v155 = 26;
          if (v147)
          {
            *(v155 + 4) = *(v155 - 28);
          }

          *(v155 + 12) = v121;
          *(v155 + 24) = v191;
          goto LABEL_256;
        }

        v151 = *(v128 + 32);
LABEL_259:
        log_OutPublic(v151, "DOMAIN_MNGR", 47000, 0, v123, v124, v125, v126, v167);
        goto LABEL_260;
      }
    }

    else
    {
      v175 = v17;
    }

    v173 = v19;
    v51 = 0;
    v102 = 0;
    v103 = 0;
LABEL_188:
    v201 = 0;
    StrArrDelete(v103);
    StrArrDelete(v102);
    if ((ssftstring_ObjOpen(*(v173 + 8), &v201) & 0x80000000) == 0)
    {
      if ((ssftstring_AppendCStr(v201, *(*(*v175 + 8) + 168)) & 0x80000000) == 0 && (ssftstring_AppendCStr(v201, "::") & 0x80000000) == 0 && (ssftstring_AppendCStr(v201, *(v175 + 16)) & 0x80000000) == 0)
      {
        v104 = *(v173 + 32);
        ssftstring_CStr(v201);
        log_OutEvent(v104, 14, "%s%s", v105, v106, v107, v108, v109, "APID");
      }

      ssftstring_ObjClose(v201);
    }

    goto LABEL_272;
  }

  v176 = 0;
  v23 = a6;
  v172 = v19;
  v174 = v17;
  while (1)
  {
    if (a3 < 4u)
    {
      goto LABEL_99;
    }

    v32 = v31 - v30;
    v33 = a2 + a3;
    if (v31 - v30 >= v33)
    {
      v23 = a6;
      goto LABEL_99;
    }

    v34 = (v31 - v30);
    if (v34 > a2 && v30[(v34 - 1)] == 32)
    {
      v35 = 3;
      v32 = v34 - 1;
    }

    else
    {
      v36 = v34 + 2;
      if (v36 >= v33)
      {
        v35 = 2;
      }

      else if (v30[v36] == 32)
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }
    }

    v37 = v35;
    v38 = strlen(v30);
    memmove(&v30[v32], &v30[v32 + v35], v38 - (v32 + v35) + 1);
    v39 = *a7;
    if (*a7)
    {
      v40 = a4 + v32;
      v41 = v40 + v35;
      v42 = *a6 + 4;
      do
      {
        v43 = *(v42 - 1);
        v44 = *v42;
        v45 = v43 - v35;
        if (v43 <= v41)
        {
          v45 = a4 + v32;
        }

        if (v43 <= v40)
        {
          v45 = *(v42 - 1);
        }

        if (v44)
        {
          v46 = v44 + v43;
          v47 = v46 - v35;
          if (v46 <= v41)
          {
            v47 = a4 + v32;
          }

          if (v46 > v40)
          {
            v46 = v47;
          }

          v48 = v46 >= v45;
          v49 = v46 - v45;
          if (!v48)
          {
            v49 = 0;
          }

          *v42 = v49;
        }

        *(v42 - 1) = v45;
        v42 += 8;
        --v39;
      }

      while (v39);
    }

    LOWORD(v201) = 0;
    LOWORD(v202) = 0;
    v204 = 0;
    v205 = 0;
    NextTokenRecIdAtFrom = (*(v20 + 104))(a10, a11, 1, 0, &v201);
    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
    {
      goto LABEL_271;
    }

    v51 = (*(v20 + 104))(a10, a11, 2, v201, &v202);
    if ((v51 & 0x80000000) == 0)
    {
      if (v202)
      {
        break;
      }
    }

LABEL_64:
    if ((v51 & 0x80000000) != 0)
    {
      goto LABEL_272;
    }

LABEL_65:
    *(a9 + 8) = (*(a9 + 8) - v37) & ~((*(a9 + 8) - v37) >> 31);
    for (j = *(a9 + 16); j; j = *(j + 16))
    {
      *(j + 4) = (*(j + 4) - v37) & ~((*(j + 4) - v37) >> 31);
    }

    v176 += v37;
    if (a3 >= v37)
    {
      LOWORD(a3) = a3 - v37;
    }

    else
    {
      LOWORD(a3) = 0;
    }

    v30 = *v187;
    v31 = strstr(&(*v187)[v32], "§");
    v19 = v172;
    v17 = v174;
    a7 = v185;
    a2 = v186;
    v23 = a6;
    if (!v31)
    {
      goto LABEL_99;
    }
  }

  NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11);
  if ((NextTokenRecIdAtFrom & 0x80000000) == 0)
  {
    v52 = v35 + v32;
    do
    {
      NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v202, 2, 1, &v204, &v205 + 2);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        break;
      }

      if (HIWORD(v204) > v32)
      {
        v53 = v52 >= HIWORD(v204) ? v32 : HIWORD(v204) - v37;
        HIWORD(v204) = v53;
        NextTokenRecIdAtFrom = (*(v20 + 160))(a10, a11, v202, 1, 1, &v204 + 2, &v205);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          break;
        }
      }

      v54 = v204;
      if (v204 > v32)
      {
        if (v52 >= v204)
        {
          v55 = v32;
        }

        else
        {
          v55 = v204 - v37;
        }

        LOWORD(v204) = v55;
        NextTokenRecIdAtFrom = (*(v20 + 160))(a10, a11, v202, 2, 1, &v204, &v205);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          break;
        }

        v54 = v204;
      }

      if (v54 <= HIWORD(v204))
      {
        v56 = v202;
      }

      else
      {
        v56 = 0;
      }

      NextTokenRecIdAtFrom = (*(v20 + 120))(a10, a11);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        break;
      }

      if (v56)
      {
        v51 = (*(v20 + 192))(a10, a11, v56);
        if ((v51 & 0x80000000) != 0 || !v202)
        {
          goto LABEL_64;
        }
      }

      else if (!v202)
      {
        goto LABEL_65;
      }

      NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11);
    }

    while ((NextTokenRecIdAtFrom & 0x80000000) == 0);
  }

LABEL_271:
  v51 = NextTokenRecIdAtFrom;
LABEL_272:
  *a12 += v190;
  v165 = *MEMORY[0x1E69E9840];
  return v51;
}