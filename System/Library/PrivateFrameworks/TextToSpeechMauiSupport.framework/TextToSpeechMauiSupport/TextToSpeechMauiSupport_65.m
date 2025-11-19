void *BET3FLT__ff_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *BET3FLT__int32_ccalloc(void *a1, unsigned int a2, int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 4);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 4 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 4 * a3;
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

void *BET3FLT__int32_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

void *BET3FLT__iicalloc(void *a1, unsigned int a2, int a3)
{
  v3 = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v7 = a2;
    v3 = heap_Calloc(a1, a2, 8);
    if (v3)
    {
      v8 = heap_Calloc(a1, a3 * a2, 4);
      *v3 = v8;
      if (v8)
      {
        if (a2 >= 2)
        {
          v9 = 1;
          v10 = v8 + 4 * a3;
          do
          {
            v3[v9] = v10;
            v10 += 4 * a3;
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

void *BET3FLT__ii_free(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    heap_Free(result, *a2);

    return heap_Free(v3, a2);
  }

  return result;
}

uint64_t BET3FLT__InitDWinSet(int a1, void *__b, uint64_t a3)
{
  cstdlib_memset(__b, 0, 0x190uLL);
  v5 = *(a3 + 132);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = a3 + 304;
    do
    {
      v8 = *(v7 + 4 * v6);
      if (v8 >= 1)
      {
        for (i = 0; i < v8; ++i)
        {
          *(__b + 10 * v6) = v8 + 1;
          v8 = *(v7 + 4 * v6);
        }
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return 0;
}

void **BET3FLT__DeInitDWinSet(void **result, char *a2)
{
  if (a2)
  {
    v3 = result;
    for (i = 0; i != 400; i += 40)
    {
      v5 = &a2[i];
      BET3FLT__ii_free(v3[1], *&a2[i + 8]);
      v6 = *&a2[i + 16];
      if (v6)
      {
        if (!*v6 || (heap_Free(v3[1], *v6), **(v5 + 2) = 0, (v6 = *(v5 + 2)) != 0))
        {
          heap_Free(v3[1], v6);
          *(v5 + 2) = 0;
        }
      }
    }

    return cstdlib_memset(a2, 0, 0x190uLL);
  }

  return result;
}

uint64_t BET3FLT__LoadDWinFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v4 = (a2 + 40 * a3);
  if (!*v4)
  {
    return 0;
  }

  v7 = 2229280778;
  v8 = BET3FLT__iicalloc(*(a1 + 8), *v4, 2);
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
        *v10 = 1065353216;
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

        BET3FLT__log_select_Error(a1, 55019, "InitDWin: illegal data\n", v15, v16, v17, v18, v19);
        return 2229280772;
      }
    }
  }

  return v7;
}

void *BET3FLT__InitSMatrices(uint64_t a1, void *__b)
{
  result = cstdlib_memset(__b, 0, 0x40uLL);
  *__b = a1;
  return result;
}

double BET3FLT__FreeSMatrices(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        if (!*(a1 + 8))
        {
          BET3FLT__dd_free(*(*a1 + 8), v2);
          BET3FLT__dd_free_64(*(*a1 + 8), *(a1 + 48));
          v3 = *(a1 + 40);
          if (v3)
          {
            heap_Free(*(*a1 + 8), v3);
          }
        }

        *(a1 + 60) = 0;
        result = 0.0;
        *(a1 + 44) = 0u;
        *(a1 + 28) = 0u;
        *(a1 + 12) = 0u;
      }
    }
  }

  return result;
}

uint64_t BET3FLT__InitPStreamSM(uint64_t *a1, uint64_t a2)
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
  if (v12 && (v13 = *(a1 + 6), v14 = *(a1 + 5), a1[10] = &v12[v14], v15 = BET3FLT__ddcalloc_64(*(v4 + 8), v14, v13), (a1[12] = v15) != 0) && (v16 = heap_Calloc(*(v4 + 8), (2 * *(a1 + 5)), 4), (a1[11] = v16) != 0))
  {
    a1[13] = v16 + 4 * *(a1 + 5);
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

uint64_t BET3FLT__InitPStreamParam(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  a1[6] = (2 * *(*(a1 + 4) + 32)) | 1;
  if (a2)
  {
    v5 = *(a2 + 40);
    if (v5)
    {
      if (a1[5] == *(a2 + 20) && a1[4] == *(a2 + 16))
      {
        *(a1 + 5) = v5;
        v6 = a1 + 2;
LABEL_12:
        result = 0;
        *v6 = 1;
        return result;
      }
    }
  }

  a1[2] = 0;
  v6 = a1 + 2;
  v7 = BET3FLT__int32_ccalloc(*(v4 + 8), a1[5], a1[4]);
  *(a1 + 5) = v7;
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
    memcpy(a2, a1, 0x2D8uLL);
    goto LABEL_12;
  }

  return result;
}

void *BET3FLT__FreePStreamParam(void *result)
{
  if (*result)
  {
    v1 = result;
    v2 = result[5];
    if (v2)
    {
      if (!*(result + 2))
      {
        result = BET3FLT__int32_free(*(*result + 8), v2);
      }

      v1[5] = 0;
      *(v1 + 2) = 0;
    }
  }

  return result;
}

uint64_t select_float_bet3_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2229280769;
  }

  result = 0;
  *a2 = &ISelect_Bet3;
  return result;
}

uint64_t select_bet3_ClassOpen(_WORD *a1, int a2, uint64_t a3)
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

uint64_t select_bet3_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v48 = 0;
  *v49 = 0;
  v5 = 2229280775;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  *__dst = 0u;
  v52 = 0u;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, v49);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else if ((safeh_HandleCheck(a1, a2, 25957, 416) & 0x80000000) != 0)
    {
      return 2229280776;
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      log_OutText(*(*v49 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjOpen", v12, v13, v14, v43);
      v15 = heap_Calloc(*(*v49 + 8), 1, 6584);
      if (v15)
      {
        v20 = v15;
        *v15 = a3;
        v15[1] = a4;
        v21 = *v49;
        v15[2] = *v49;
        v15[3] = a1;
        Object = objc_GetObject(*(v21 + 48), "SYNTHSTREAM", &v48);
        if ((Object & 0x80000000) != 0 || (v20[4] = *(v48 + 8), Object = objc_GetObject(*(*v49 + 48), "LINGDB", &v48), (Object & 0x80000000) != 0))
        {
          v5 = Object;
          log_OutPublic(*(v20[2] + 32), "SELECT_BET3", 55001, 0, v23, v24, v25, v26, v44);
        }

        else
        {
          v27 = *(v48 + 8);
          v20[5] = v27;
          ObjOpen = BET3FLT__select_bet3_FeatureExtractObjOpen(a3, a4, v20[4], v27, v20 + 7);
          if ((ObjOpen & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          ObjOpen = select_bet3_loc_CreateDataBrkString(*v49, __dst);
          if ((ObjOpen & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          v29 = v20[3];
          if (!v29 || (v30 = *(v29 + 48)) == 0)
          {
            v30 = *(v20[2] + 48);
          }

          ObjOpen = objc_GetAddRefCountedObject(v30, __dst, select_bet3_loc_ObjcVoiceOpen, select_bet3_loc_ObjcVoiceClose, *v49, &v48);
          if ((ObjOpen & 0x80000000) != 0 || (v31 = *v49, v32 = *(v48 + 32), v20[6] = v32, ObjOpen = select_bet3_loc_SetSynthParams(v31, v32), (ObjOpen & 0x80000000) != 0))
          {
LABEL_27:
            v5 = ObjOpen;
          }

          else
          {
            v33 = *(*v49 + 40);
            v46 = v20;
            v45 = xmmword_287EF0660;
            v47 = xmmword_287EF0660;
            v34 = paramc_ListenerAdd(v33, "frequencyhz", &v46);
            if ((v34 & 0x80000000) == 0)
            {
              v39 = 0;
              while (1)
              {
                v40 = off_279DB6A00[v39];
                if ((paramc_ParamGetInt(*(*v49 + 40), v40, &v50) & 0x80000000) != 0)
                {
                  v50 = dword_26ED6CFE0[v39];
                  v34 = paramc_ParamSetInt(*(*v49 + 40), v40, v50);
                  if ((v34 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                v34 = select_bet3_loc_ParamSet(v20, v40, v50);
                if ((v34 & 0x80000000) != 0)
                {
                  break;
                }

                v41 = *(*v49 + 40);
                v46 = v20;
                v47 = v45;
                v5 = paramc_ListenerAdd(v41, v40, &v46);
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
        select_bet3_ObjClose(v20, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
      }

      else
      {
        log_OutPublic(*(*v49 + 32), "SELECT_BET3", 55000, 0, v16, v17, v18, v19, v44);
        v5 = 2229280778;
      }

LABEL_29:
      log_OutText(*(*v49 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjOpen: %x", v36, v37, v38, v5);
    }
  }

  return v5;
}

uint64_t select_bet3_ObjClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 25958, 6584);
  if (v3 < 0)
  {
    return 2229280776;
  }

  LODWORD(v7) = v3;
  v8 = a1[2];
  log_OutText(*(v8 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjClose", v4, v5, v6, v30);
  v9 = 0;
  v31 = xmmword_287EF0660;
  do
  {
    v10 = off_279DB6A20[v9];
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

uint64_t select_bet3_ObjReopen(void *a1, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__dst = 0u;
  v22 = 0u;
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  v6 = a1[2];
  log_OutText(*(v6 + 32), "SELECT_BET3", 4, 0, "Entering select_bet3_ObjReopen", v3, v4, v5, v19);
  DataBrkString = select_bet3_loc_CreateDataBrkString(v6, __dst);
  if ((DataBrkString & 0x80000000) == 0)
  {
    v11 = a1[3];
    if (!v11 || (v12 = *(v11 + 48)) == 0)
    {
      v12 = *(a1[2] + 48);
    }

    DataBrkString = objc_GetAddRefCountedObject(v12, __dst, select_bet3_loc_ObjcVoiceOpen, select_bet3_loc_ObjcVoiceClose, v6, &v20);
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

      v16 = *(v20 + 32);
      a1[6] = v16;
      DataBrkString = select_bet3_loc_SetSynthParams(v6, v16);
    }
  }

  v17 = DataBrkString;
  log_OutText(*(v6 + 32), "SELECT_BET3", 4, 0, "Leaving select_bet3_ObjReopen: %x", v8, v9, v10, DataBrkString);
  return v17;
}

uint64_t select_bet3_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
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
    select_bet3_ProcessEnd(a1, a2);
  }

  *(a1 + 6576) = 0;
  return v8;
}

uint64_t select_bet3_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v59 = 0;
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  *a5 = 1;
  v9 = *(a1 + 6544);
  if (*(a1 + 4616))
  {
    if (!v9)
    {
      v10 = BET3FLT__ParamGenFrames((a1 + 4616), (*(a1 + 48) + 8112), (a1 + 6544));
      if ((v10 & 0x80000000) != 0)
      {
        v24 = v10;
      }

      else
      {
        v11 = *(a1 + 6552);
        if (!v11)
        {
          goto LABEL_66;
        }

        v12 = *(a1 + 6564);
        v13 = *(a1 + 6560);
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
          v18 = *(a1 + 6576);
          v19 = v12 + 1;
          v20 = (v11 + 32 * v12);
          do
          {
            if (*v20 == 33)
            {
              v21 = *(a1 + 6572);
              v22 = *(*(a1 + 5216) + 528 * v16 + 24);
              v20[4] = v22;
              *(a1 + 6572) = v22 + v21;
              *(a1 + 5232) = ++v16;
            }

            else
            {
              if (*v20 == 8)
              {
                v18 = v20[6] / *(*(a1 + 48) + 152);
                *(a1 + 6576) = v18;
              }

              v21 = *(a1 + 6572);
              v20[4] = 0;
            }

            if (v18 > v21)
            {
              *(a1 + 6576) = v21;
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

        if (*(a1 + 6544))
        {
          v43 = v17 + v12;
          if (v17 + v12 < v13)
          {
            v44 = *(a1 + 6572);
            v45 = v20 + 4;
            do
            {
              *(v45 - 1) = v44;
              *v45 = 0;
              v45 += 8;
              ++v43;
            }

            while (v43 < v13);
            v17 = v13 - v12;
          }
        }

        if (!v17)
        {
LABEL_66:
          v58 = a1 + 4616;
          v24 = (*(*(a1 + 32) + 104))(*(a1 + 896), *(a1 + 904), &v58, 8);
          if ((v24 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", v51, v52, v53, v54, "contentType");
          }

          else if (*(a1 + 6544))
          {
            ProcessEnd = BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
            if (ProcessEnd >= 0)
            {
              v24 = v24;
            }

            else
            {
              v24 = ProcessEnd;
            }

            v56 = *(a1 + 6552);
            if (v56)
            {
              heap_Free(*(*(a1 + 16) + 8), v56);
              *(a1 + 6552) = 0;
              *(a1 + 6560) = 0;
              *(a1 + 6568) = 0;
            }

            v42 = 1;
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        v46 = (*(*(a1 + 32) + 104))(*(a1 + 912), *(a1 + 920), v14, (32 * v17));
        if ((v46 & 0x80000000) == 0)
        {
          *(a1 + 6564) += v17;
          goto LABEL_66;
        }

        v24 = v46;
        log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", v47, v48, v49, v50, "contentType");
        *(a1 + 6564) += v17;
      }

LABEL_75:
      v42 = 2;
      goto LABEL_76;
    }
  }

  else if (!v9)
  {
    goto LABEL_23;
  }

  BET3FLT__DeInitVStream((a1 + 4616));
  *(a1 + 6544) = 0;
LABEL_23:
  v24 = BET3FLT__select_bet3_FeatureExtractProcessStart(*(a1 + 56), *(a1 + 48) + 9184, a3, a4, (a1 + 960), &v59);
  if ((v24 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55005, "%s%x", v25, v26, v27, v28, "lhError");
  }

  else if (*(a1 + 970) > 1)
  {
    *(a1 + 6564) = 0;
    inited = BET3FLT__InitVStream(*(a1 + 16), (a1 + 4616), (*(a1 + 48) + 128));
    if ((inited & 0x80000000) != 0 || (*(a1 + 4624) = a1 + 960, inited = BET3FLT__LoadVStream((a1 + 4616), *(a1 + 48) + 8112, *(a1 + 48) + 128), (inited & 0x80000000) != 0) || (inited = BET3FLT__select_bet3_FeatureExtractProcess(*(a1 + 56), *(a1 + 48) + 128, a3, a4, *(a1 + 928), *(a1 + 936), *(a1 + 944), *(a1 + 952), (a1 + 64), a1 + 960, (a1 + 6552), (a1 + 6560)), (inited & 0x80000000) != 0))
    {
      v24 = inited;
    }

    else
    {
      v24 = BET3FLT__ParamGenStart(a1 + 4616, (*(a1 + 48) + 8112), (*(a1 + 48) + 128));
      if ((v24 & 0x80000000) == 0)
      {
        v42 = 4;
LABEL_76:
        *a5 = v42;
        return v24;
      }
    }

    BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
    BET3FLT__DeInitVStream((a1 + 4616));
  }

  else
  {
    v29 = v59;
    if (v59)
    {
      if (*(a1 + 912))
      {
        if (*(a1 + 4480))
        {
          LODWORD(v24) = (*(*(a1 + 32) + 104))();
          if ((v24 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SELECT_BET3", 55008, "%s%s%s%x", v30, v31, v32, v33, "contentType");
          }
        }
      }

      v34 = synstrmaux_CloseOutStreamsOnly((a1 + 72), *(a1 + 32));
      if (v34 < 0 && v24 > -1)
      {
        LODWORD(v24) = v34;
      }

      v29 = 1;
    }

    *a5 = v29;
    v36 = BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
    if (v36 >= 0 || v24 <= -1)
    {
      v38 = v24;
    }

    else
    {
      v38 = v36;
    }

    v39 = (*(*(a1 + 40) + 64))(a3, a4);
    if (v38 > -1 && v39 < 0)
    {
      return v39;
    }

    else
    {
      return v38;
    }
  }

  return v24;
}

uint64_t select_bet3_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 25958, 6584) & 0x80000000) != 0)
  {
    return 2229280776;
  }

  BET3FLT__DeInitVStream((a1 + 4616));
  *(a1 + 6544) = 0;
  BET3FLT__select_bet3_FeatureExtractProcessEnd(*(a1 + 56), (a1 + 960));
  v3 = *(a1 + 6552);
  if (v3)
  {
    heap_Free(*(*(a1 + 16) + 8), v3);
    *(a1 + 6552) = 0;
    *(a1 + 6560) = 0;
    *(a1 + 6568) = 0;
  }

  *(a1 + 6572) = 0;
  v4 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 72), v4);
}

uint64_t select_bet3_loc_ObjcVoiceOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v74 = *MEMORY[0x277D85DE8];
  __src = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  memset(__dst, 0, sizeof(__dst));
  inited = InitRsrcFunction(a1, a2, &__src);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  cstdlib_memcpy(__dst, __src, 0x1A0uLL);
  v46 = *(a5 + 32);
  v71 = 0;
  *(a4 + 32) = 0;
  v11 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "FLT3", 1031, &v71);
  if (v11 < 0)
  {
    return (v11 & 0x1FFFu) - 2065686528;
  }

  v12 = heap_Calloc(*(&__dst[0] + 1), 1, 37800);
  v17 = v12;
  if (v12)
  {
    cstdlib_strcpy(v12, a3);
    cstdlib_strcpy((v17 + 9336), a3);
    cstdlib_memset((v17 + 11328), 255, 0x100uLL);
    cstdlib_memset((v17 + 12232), 255, 0x11CuLL);
    cstdlib_memset((v17 + 12560), 255, 0x20uLL);
    *(v17 + 11708) = 1;
    BET3FLT__InitVParam((v17 + 128));
    cstdlib_memset((v17 + 7808), -1, 0x12CuLL);
    cstdlib_strcpy((v17 + 7792), "mlsa");
    cstdlib_memset(__b, 0, 0x50uLL);
    v18 = select_bet3_ParseRiff(__dst, v17, v71, 0, __b, 0, 0);
    if ((v18 & 0x80000000) != 0)
    {
      VData = v18;
      cstdlib_strcpy(__s1, "");
      if (__b[0])
      {
        v41 = 0;
        v42 = __b;
        do
        {
          cstdlib_strcat(__s1, "/");
          cstdlib_strcat(__s1, v42);
          v42 = &__b[5 * ++v41];
        }

        while (*v42);
      }

      log_OutPublic(v46, "SELECT_BET3", 55003, "%s%s%s%s%s%x", v37, v38, v39, v40, "file");
    }

    else if (*(v17 + 7519) && *(v17 + 260) > 0)
    {
      v23 = *(v17 + 11648);
      if (v23)
      {
        v24 = *v23;
        if (*v23)
        {
          v25 = 0;
          v26 = 0;
          do
          {
            *(v17 + 5432 + 8 * v25) = v24;
            v25 = ++v26;
            v24 = *(*(v17 + 11648) + 8 * v26);
          }

          while (v24);
        }
      }

      v27 = BET3FLT__InitVData(__dst, (v17 + 8112), v17 + 128);
      if ((v27 & 0x80000000) != 0)
      {
        VData = v27;
      }

      else
      {
        VData = BET3FLT__LoadVData(__dst, v17 + 8112, v17 + 128);
        if ((VData & 0x80000000) == 0)
        {
          *(v17 + 12762) = 1;
          *&v36 = 0x100000001;
          *(&v36 + 1) = 0x100000001;
          *(v17 + 12352) = v36;
          *(v17 + 12368) = v36;
          *(v17 + 12384) = 0x100000001;
          *(v17 + 12396) = 1;
          *(v17 + 12412) = v36;
          *(v17 + 12428) = v36;
          *(v17 + 12444) = v36;
          *(v17 + 12460) = v36;
          *(v17 + 12476) = v36;
          *(v17 + 12492) = 1;
          *(v17 + 12496) = 0x100000001;
          *(v17 + 11934) = 33620481;
          *(v17 + 11961) = 1;
          *(v17 + 11939) = 0x101010101010101;
          *(v17 + 11947) = 0x101010101010101;
          *(v17 + 11983) = -1;
          *(v17 + 11987) = -255;
          *(v17 + 11997) = 0x101010101010101;
          *(v17 + 12002) = 0x101010101010101;
          *(v17 + 12105) = 0x101010101010101;
          *(v17 + 12113) = 0x101010101010101;
          *(v17 + 12121) = 0x101010101010101;
          if ((*(v17 + 12288) & 0x80000000) == 0)
          {
            *(v17 + 11963) = 257;
          }

          if ((*(v17 + 12304) & 0x80000000) == 0)
          {
            *(v17 + 11965) = 1;
          }

          if ((*(v17 + 12320) & 0x80000000) == 0)
          {
            *(v17 + 11966) = 1;
          }

          if ((*(v17 + 12324) & 0x80000000) == 0)
          {
            *(v17 + 11967) = 1;
          }

          if ((*(v17 + 12328) & 0x80000000) == 0)
          {
            *(v17 + 11968) = 1;
          }

          if ((*(v17 + 12332) & 0x80000000) == 0)
          {
            *(v17 + 11969) = 1;
          }

          if ((*(v17 + 12252) & 0x80000000) == 0)
          {
            *(v17 + 11957) = 257;
          }

          if ((*(v17 + 12576) & 0x80000000) == 0 || (*(v17 + 12580) & 0x80000000) == 0)
          {
            *(v17 + 11956) = 8;
          }

          if ((*(v17 + 12256) & 0x80000000) == 0)
          {
            *(v17 + 11959) = 257;
          }

          if (*(v17 + 11744))
          {
            *(v17 + 11978) = 9;
          }

          if ((*(v17 + 12352) & 0x80000000) == 0)
          {
            *(v17 + 11997) = 1;
          }

          if ((*(v17 + 12356) & 0x80000000) == 0)
          {
            *(v17 + 11998) = 1;
          }

          if ((*(v17 + 12360) & 0x80000000) == 0)
          {
            *(v17 + 11999) = 1;
          }

          *(v17 + 12008) = 257;
          *(v17 + 12000) = 16843009;
          *(v17 + 12003) = 16843009;
        }
      }
    }

    else
    {
      VData = 2229280772;
      log_OutPublic(v46, "SELECT_BET3", 55006, "%s%s", v19, v20, v21, v22, "file");
    }
  }

  else
  {
    log_OutPublic(v46, "SELECT_BET3", 55000, 0, v13, v14, v15, v16, v44);
    VData = 2229280778;
  }

  if (v71)
  {
    ssftriff_reader_ObjClose(v71, v28, v29, v30, v31, v32, v33, v34);
    v71 = 0;
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

    select_bet3_loc_VoiceClose(__dst, v17);
  }

  else
  {
    *(a4 + 32) = v17;
  }

  return VData;
}

uint64_t select_bet3_loc_ObjcVoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v6 = 0;
  inited = InitRsrcFunction(a1, a2, &v6);
  if ((inited & 0x80000000) == 0)
  {
    select_bet3_loc_VoiceClose(v6, *(a3 + 32));
  }

  return inited;
}

uint64_t select_bet3_loc_ParamCheckChange(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (cstdlib_strcmp(__s1, "frequencyhz"))
  {
    if (!cstdlib_strcmp(__s1, "waitfactor") && (LH_atoi(a3) & 0x80000000) != 0)
    {
      result = 2229280783;
LABEL_7:
      *a4 = 0;
      return result;
    }
  }

  else if (*(a1 + 896))
  {
    result = 2229280785;
    goto LABEL_7;
  }

  return 0;
}

uint64_t select_bet3_loc_ParamLearnChange(uint64_t a1, char *__s1, const char *a3)
{
  if (!cstdlib_strcmp(__s1, "frequencyhz"))
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

  if (!cstdlib_strcmp(__s1, "rate") || !cstdlib_strcmp(__s1, "waitfactor"))
  {
    v11 = 0;
    if (cstdlib_strcmp(__s1, "waitfactor") || (paramc_ParamGetUInt(*(*(a1 + 16) + 40), "finalsentencefound", &v11), v11 != 1))
    {
      v7 = LH_atoi(a3);
      v8 = a1;
      v9 = __s1;
      return select_bet3_loc_ParamSet(v8, v9, v7);
    }

    return 0;
  }

  if (cstdlib_strcmp(__s1, "finalsentencefound"))
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
    return select_bet3_loc_ParamSet(v8, v9, v7);
  }

  paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactorbackup", *(a1 + 64));

  return select_bet3_loc_ParamSet(a1, "waitfactor", 0);
}

uint64_t select_bet3_loc_CreateDataBrkString(uint64_t a1, char *__dst)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0;
  __s2 = 0;
  cstdlib_strcpy(__dst, "select");
  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &__s2);
  if (Str < 0)
  {
    return Str & 0x1FFF | 0x84E02000;
  }

  cstdlib_strcat(__dst, "/");
  cstdlib_strcat(__dst, __s2);
  Str = paramc_ParamGetStr(*(a1 + 40), "voicemodel", &__s2);
  if (Str < 0)
  {
    return Str & 0x1FFF | 0x84E02000;
  }

  cstdlib_strcat(__dst, "/");
  cstdlib_strcat(__dst, __s2);
  Str = paramc_ParamGetInt(*(a1 + 40), "frequencyhz", &v10);
  if (Str < 0)
  {
    return Str & 0x1FFF | 0x84E02000;
  }

  cstdlib_strcat(__dst, "f");
  v5 = v10;
  v6 = cstdlib_strlen(__dst);
  LH_itoa(v5 / 1000, &__dst[v6], 0xAu);
  v7 = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__s2);
  if ((v7 & 0x80000000) == 0)
  {
    if (__s2)
    {
      if (*__s2)
      {
        v7 = brokeraux_ComposeBrokerString(a1, __dst, 0, 0, 0, 0, 0, __src, 0x80uLL);
        if ((v7 & 0x80000000) == 0)
        {
          cstdlib_strcpy(__dst, __src);
        }
      }
    }
  }

  return v7;
}

uint64_t select_bet3_loc_SetSynthParams(uint64_t a1, uint64_t a2)
{
  v12 = a2 + 7808;
  v4 = paramc_ParamSetStr(*(a1 + 40), "synth_type", (a2 + 7792));
  if ((v4 & 0x80000000) != 0)
  {
    v10 = v4;
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%s%s%x", v5, v6, v7, v8, "parameter");
  }

  else
  {
    v9 = paramc_ParamSetPermanent(*(a1 + 40), "mrcc_synthparam_ref_ptr", &v12, 8uLL);
    if ((v9 & 0x80000000) == 0)
    {
      v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicealpha", *(a2 + 128));
      if ((v9 & 0x80000000) == 0)
      {
        v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicebeta", *(a2 + 132));
        if ((v9 & 0x80000000) == 0)
        {
          v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicevol", *(a2 + 164));
          if ((v9 & 0x80000000) == 0)
          {
            v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicevuvrelamp", *(a2 + 140));
            if ((v9 & 0x80000000) == 0)
            {
              v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicemvfboost", *(a2 + 168));
              if ((v9 & 0x80000000) == 0)
              {
                v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicef0std", *(a2 + 176));
                if ((v9 & 0x80000000) == 0)
                {
                  v9 = select_bet3_loc_SetSynthParamFloat(a1, "bet2voicef0mean", *(a2 + 180));
                  if ((v9 & 0x80000000) == 0)
                  {
                    v9 = select_bet3_loc_SetSynthParamInt(a1, "bet2voiceframesize", *(a2 + 152));
                    if ((v9 & 0x80000000) == 0)
                    {
                      v9 = select_bet3_loc_SetSynthParamInt(a1, "bet2voiceorder", *(a2 + 144));
                      if ((v9 & 0x80000000) == 0)
                      {
                        v9 = select_bet3_loc_SetSynthParamArrayOfBet3_int32(a1, *(a2 + 7784), *(a2 + 144) + 1);
                        if ((v9 & 0x80000000) == 0)
                        {
                          return select_bet3_loc_SetSynthParamInt(a1, "voicepitchavghz", *(a2 + 184));
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

    return v9;
  }

  return v10;
}

uint64_t select_bet3_loc_ParamSet(uint64_t a1, char *__s1, uint64_t a3)
{
  if (cstdlib_strcmp(__s1, "waitfactor"))
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

uint64_t select_bet3_ParseRiff(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6, int a7)
{
  v11 = 0;
  v149 = *MEMORY[0x277D85DE8];
  v12 = (a2 + 11680);
  v145 = 0;
  v144 = 0;
  *__src = 0;
  v138 = 5 * a4;
  v116 = a2 + 5192;
  v119 = a2 + 432;
  v120 = a2 + 3992;
  v117 = a2 + 2792;
  v118 = a2 + 1432;
  v122 = a2 + 472;
  v123 = a2 + 2552;
  v126 = a2 + 392;
  v127 = a2 + 352;
  v124 = a2 + 2232;
  v125 = a2 + 2272;
  v128 = a2 + 2312;
  v129 = a2 + 2472;
  v130 = a2 + 12560;
  v132 = a2 + 12232;
  v131 = a2 + 37584;
  v13 = (a2 + 9786);
  v133 = a2 + 11328;
  v121 = a2 + 272;
  while ((v11 & 0x80000000) == 0)
  {
    v11 = ssftriff_reader_OpenChunk(a3, __src, &v145, 0);
    if ((v11 & 0x80000000) != 0)
    {
      break;
    }

    cstdlib_strcpy(&a5[v138], __src);
    if (a4 == 1)
    {
      if (cstdlib_strcmp(a5, "FEEX"))
      {
        if (!cstdlib_strcmp(a5, "STM3"))
        {
          *__dst = 0;
          v28 = *(a2 + 260);
          if (!cstdlib_strcmp(__src, "STC3"))
          {
            LODWORD(__s) = 0;
            *__s2 = 0;
            if (a6)
            {
              v137 = a3;
              v53 = a6 + ssftriff_reader_GetPosition(a3) - a7;
              *__s2 = v53;
            }

            else
            {
              ssftriff_reader_GetChunkData(a3, v145, __s2, v29);
              v11 = v68;
              if ((v68 & 0x80000000) != 0)
              {
                goto LABEL_367;
              }

              v137 = a3;
              v53 = *__s2;
            }

            cstdlib_memcpy((v127 + 4 * v28), (v53 + *__dst), 4uLL);
            *__dst += 4;
            v69 = (v126 + 4 * v28);
            cstdlib_memcpy(v69, (*__s2 + *__dst), 4uLL);
            v70 = *__dst;
            *__dst += 4;
            v71 = *__s2;
            *(v125 + 4 * v28) = *(*__s2 + *__dst) != 0;
            v72 = (v70 + 5);
            *__dst = v72;
            cstdlib_memcpy((v124 + 4 * v28), (v71 + v72), 4uLL);
            v73 = *__dst + 4;
            *__dst += 4;
            v74 = *v69;
            if (v74 >= 1)
            {
              v75 = heap_Calloc(*(a1 + 8), v74, 8);
              *(v129 + 8 * v28) = v75;
              if (!v75)
              {
                LODWORD(v11) = -2065686518;
              }

              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_371;
              }

              v76 = heap_Calloc(*(a1 + 8), *v69, 8);
              *(v128 + 8 * v28) = v76;
              LODWORD(v11) = -2065686518;
              if (!v76)
              {
                goto LABEL_371;
              }

              v73 = *__dst;
            }

            __s1[0] = 0;
            LODWORD(__s) = 256;
            LODWORD(v11) = ssftriff_reader_ReadStringZ(v137, *__s2, v145, v73, __s1, &__s);
            if ((v11 & 0x80000000) == 0)
            {
              v77 = BET3FLT__heap_StrDup(*(a1 + 8), __s1);
              *(v121 + 8 * v28) = v77;
              if (!v77)
              {
                v48 = 3;
                v11 = 2229280778;
                goto LABEL_384;
              }

              *__dst += __s;
              if (*v69 >= 1)
              {
                v78 = 0;
                while (1)
                {
                  __s1[0] = 0;
                  LODWORD(__s) = 256;
                  StringZ = ssftriff_reader_ReadStringZ(v137, *__s2, v145, *__dst, __s1, &__s);
                  if (StringZ < 0)
                  {
                    break;
                  }

                  *(*(v129 + 8 * v28) + 8 * v78) = BET3FLT__heap_StrDup(*(a1 + 8), __s1);
                  if (!*(*(v129 + 8 * v28) + 8 * v78))
                  {
                    goto LABEL_368;
                  }

                  *__dst += __s;
                  __s1[0] = 0;
                  LODWORD(__s) = 256;
                  LODWORD(v11) = ssftriff_reader_ReadStringZ(v137, *__s2, v145, *__dst, __s1, &__s);
                  if ((v11 & 0x80000000) != 0)
                  {
                    goto LABEL_371;
                  }

                  *(*(v128 + 8 * v28) + 8 * v78) = BET3FLT__heap_StrDup(*(a1 + 8), __s1);
                  if (!*(*(v128 + 8 * v28) + 8 * v78))
                  {
LABEL_368:
                    LODWORD(v11) = -2065686518;
                    goto LABEL_371;
                  }

                  *__dst += __s;
                  if (++v78 >= *v69)
                  {
                    goto LABEL_371;
                  }
                }

                LODWORD(v11) = StringZ;
              }
            }

            goto LABEL_371;
          }

          if (cstdlib_strcmp(__src, "TRE3"))
          {
            if (cstdlib_strcmp(__src, "PDF3"))
            {
              if (cstdlib_strcmp(__src, "WIN3"))
              {
                if (cstdlib_strcmp(__src, "CBK3"))
                {
                  goto LABEL_372;
                }

                v56 = v116;
LABEL_253:
                v57 = v56 + 24 * v28;
              }

              else
              {
                v83 = *(v119 + 4 * v28);
                v57 = v120 + 120 * v28 + 24 * v83;
                *(v119 + 4 * v28) = v83 + 1;
              }
            }

            else
            {
              *__s2 = 0;
              if (a6)
              {
                v64 = a6 + ssftriff_reader_GetPosition(a3) - a7;
                *__s2 = v64;
              }

              else
              {
                ssftriff_reader_GetChunkData(a3, v145, __s2, v31);
                if ((v96 & 0x80000000) != 0)
                {
                  v11 = v96;
LABEL_367:
                  v48 = 1;
                  v115 = v11;
LABEL_384:
                  if (v48 != 3)
                  {
                    return v115;
                  }

                  break;
                }

                v64 = *__s2;
              }

              *__dst = 256;
              LODWORD(v11) = ssftriff_reader_ReadStringZ(a3, v64, v145, 0, __s1, __dst);
              if ((v11 & 0x80000000) != 0)
              {
                v57 = 0;
              }

              else
              {
                v97 = BET3FLT__heap_StrDup(*(a1 + 8), __s1);
                v98 = *(v122 + 4 * v28);
                *(v118 + 40 * v28 + 8 * v98) = v97;
                if ((__dst[0] & 3) != 0)
                {
                  *__dst -= *__dst | 0xFFFFFFFC;
                }

                v57 = v117 + 120 * v28 + 24 * v98;
                *(v122 + 4 * v28) = v98 + 1;
              }
            }

            if ((v11 & 0x80000000) == 0 && v57)
            {
              *__s1 = 0;
              if (a6)
              {
                v99 = a6 + ssftriff_reader_GetPosition(a3) - a7;
              }

              else
              {
                ssftriff_reader_GetChunkData(a3, v145, __s1, v30);
                v11 = v100;
                if ((v100 & 0x80000000) != 0)
                {
                  goto LABEL_367;
                }

                v99 = *__s1;
              }

              v101 = *__dst;
              *(v57 + 8) = v99 + *__dst;
              *(v57 + 16) = v145 - v101;
            }

            goto LABEL_375;
          }

          v56 = v123;
          goto LABEL_253;
        }

        if (cstdlib_strcmp(__src, "SYNC"))
        {
          goto LABEL_372;
        }

        *__dst = 0;
        *__s2 = 0;
        if (a6)
        {
          v20 = a6 + ssftriff_reader_GetPosition(a3) - a7;
          *__s2 = v20;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v145, __s2, v19);
          if ((v54 & 0x80000000) != 0)
          {
            v11 = v54;
LABEL_311:
            v48 = 1;
            v115 = v11;
            goto LABEL_384;
          }

          v20 = *__s2;
        }

        __s1[0] = 0;
        *__dst = 256;
        v11 = ssftriff_reader_ReadStringZ(a3, v20, v145, 0, __s1, __dst);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_249;
        }

        if (!cstdlib_strcmp(__s1, "SYNTH_TYPE"))
        {
          v55 = *__dst;
          *__dst = 256;
          v11 = ssftriff_reader_ReadStringZ(a3, *__s2, v145, v55, __s1, __dst);
          if ((v11 & 0x80000000) != 0)
          {
LABEL_249:
            v48 = 3;
            goto LABEL_384;
          }

          cstdlib_strcpy((a2 + 7792), __s1);
        }
      }

      else
      {
        if (!cstdlib_strcmp(__src, "VCAT"))
        {
          *__s1 = 0;
          if (a6)
          {
            *__s1 = a6 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v145, __s1, v22);
            if ((v58 & 0x80000000) != 0)
            {
              return v58;
            }
          }

          v15 = a1;
          v16 = a2;
          v17 = a3;
          v18 = 2;
          goto LABEL_256;
        }

        if (!cstdlib_strcmp(__src, "VBOP"))
        {
          *__s1 = 0;
          if (a6)
          {
            v27 = (a6 + ssftriff_reader_GetPosition(a3) - a7);
            *__s1 = v27;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v145, __s1, v23);
            v11 = v65;
            if ((v65 & 0x80000000) != 0)
            {
              return v11;
            }

            v27 = *__s1;
          }

          if (v145 >= 0xF8)
          {
            v66 = 248;
          }

          else
          {
            v66 = v145;
          }

          v67 = 11684;
LABEL_289:
          cstdlib_memcpy((a2 + v67), v27, v66);
          goto LABEL_375;
        }

        if (cstdlib_strcmp(__src, "PRE3"))
        {
          if (cstdlib_strcmp(__src, "TRA3"))
          {
            if (cstdlib_strcmp(__src, "PHM3"))
            {
              goto LABEL_372;
            }

            *__s1 = 0;
            if (a6)
            {
              v27 = (a6 + ssftriff_reader_GetPosition(a3) - a7);
              *__s1 = v27;
            }

            else
            {
              ssftriff_reader_GetChunkData(a3, v145, __s1, v26);
              v11 = v102;
              if ((v102 & 0x80000000) != 0)
              {
                return v11;
              }

              v27 = *__s1;
            }

            if (v145 >= 0x100)
            {
              v66 = 256;
            }

            else
            {
              v66 = v145;
            }

            v67 = 7484;
            goto LABEL_289;
          }

          *__s2 = 0;
          *__s1 = 0;
          if (a6)
          {
            *__s1 = a6 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v145, __s1, v25);
            v11 = v91;
            if ((v91 & 0x80000000) != 0)
            {
              return v11;
            }
          }

          if (v145 >= 2)
          {
            v92 = 0;
            do
            {
              cstdlib_memcpy(__s2, (*__s1 + 2 * v92), 2uLL);
              if (*__s2 < 8u)
              {
                *(v130 + 4 * *__s2) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown transition feature: %u for %s", v93, v94, v95, *__s2);
              }

              ++v92;
            }

            while (v145 >> 1 > v92);
          }
        }

        else
        {
          *__s2 = 0;
          *__s1 = 0;
          if (a6)
          {
            *__s1 = a6 + ssftriff_reader_GetPosition(a3) - a7;
          }

          else
          {
            ssftriff_reader_GetChunkData(a3, v145, __s1, v24);
            v11 = v84;
            if ((v84 & 0x80000000) != 0)
            {
              return v11;
            }
          }

          if (v145 >= 2)
          {
            v85 = 0;
            do
            {
              cstdlib_memcpy(__s2, (*__s1 + 2 * v85), 2uLL);
              if (*__s2 < 0x47u)
              {
                *(v132 + 4 * *__s2) = 1;
              }

              else
              {
                log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown preselection feature: %u for %s", v86, v87, v88, *__s2);
              }

              ++v85;
            }

            while (v145 >> 1 > v85);
          }
        }
      }
    }

    else
    {
      if (a4)
      {
        if (cstdlib_strcmp(a5, "FEEX") || cstdlib_strcmp(a5 + 5, "VCAT"))
        {
LABEL_372:
          cstdlib_strcpy(__s1, "");
          v104 = 0;
          do
          {
            cstdlib_strcat(__s1, "/");
            cstdlib_strcat(__s1, &a5[5 * v104++]);
          }

          while (a4 >= v104);
          log_OutText(*(a1 + 32), "SELECT_BET3", 3, 0, "Unknown data: %s for %s", v105, v106, v107, __s1);
          goto LABEL_375;
        }

        *__s1 = 0;
        if (a6)
        {
          *__s1 = a6 + ssftriff_reader_GetPosition(a3) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v145, __s1, v21);
          v11 = v59;
          if ((v59 & 0x80000000) != 0)
          {
            return v11;
          }
        }

        if (!cstdlib_strcmp(__src, "ALPH"))
        {
          *__s2 = 257;
          v137 = a3;
          LODWORD(v11) = ssftriff_reader_ReadStringZ(a3, *__s1, v145, 0, v13, __s2);
          if ((v11 & 0x80000000) == 0)
          {
            *v12 = 255;
            if (cstdlib_strlen(v13))
            {
              v60 = 0;
              v61 = 0;
              do
              {
                v62 = v13[v60];
                if (v62 < *v12)
                {
                  *v12 = v62;
                  v62 = v13[v60];
                }

                if (v62 > v12[1])
                {
                  v12[1] = v62;
                  v62 = v13[v60];
                }

                *(v133 + v62) = v61;
                v60 = (v61 + 1);
                v63 = cstdlib_strlen(v13);
                v61 = v60;
              }

              while (v63 > v60);
            }
          }

LABEL_371:
          a3 = v137;
          goto LABEL_375;
        }

        if (cstdlib_strcmp(__src, "VOIC"))
        {
          if (cstdlib_strcmp(__src, "COVO"))
          {
            if (cstdlib_strcmp(__src, "SAFE"))
            {
              if (cstdlib_strcmp(__src, "PLOS"))
              {
                if (cstdlib_strcmp(__src, "DIFF"))
                {
                  if (cstdlib_strcmp(__src, "GENF"))
                  {
                    if (cstdlib_strcmp(__src, "TAGA"))
                    {
                      if (cstdlib_strcmp(__src, "BTOA"))
                      {
                        goto LABEL_372;
                      }

                      v110 = *__s1;
                      v111 = v145;
                      v112 = 11656;
                    }

                    else
                    {
                      v110 = *__s1;
                      v111 = v145;
                      v112 = 11648;
                    }

                    RiffStringTable = uselect_LoadRiffStringTable(a1, a3, v110, v111, (a2 + v112));
                  }

                  else
                  {
                    RiffStringTable = select_bet3_LoadRiffGenericFeatureMap(a1, a3, *__s1, v145, (a2 + 12520), (a2 + 12528), (a2 + 12536));
                  }

                  goto LABEL_364;
                }

                *__s2 = 64;
                v80 = *__s1;
                v81 = v145;
                v82 = 11584;
              }

              else
              {
                *__s2 = 257;
                v80 = *__s1;
                v81 = v145;
                v82 = 10557;
              }
            }

            else
            {
              *__s2 = 257;
              v80 = *__s1;
              v81 = v145;
              v82 = 10814;
            }
          }

          else
          {
            *__s2 = 257;
            v80 = *__s1;
            v81 = v145;
            v82 = 10300;
          }
        }

        else
        {
          *__s2 = 257;
          v80 = *__s1;
          v81 = v145;
          v82 = 10043;
        }

        RiffStringTable = ssftriff_reader_ReadStringZ(a3, v80, v81, 0, (a2 + v82), __s2);
LABEL_364:
        LODWORD(v11) = RiffStringTable;
        goto LABEL_375;
      }

      if (cstdlib_strcmp(__src, "VCFG"))
      {
        if (cstdlib_strcmp(__src, "EQUA"))
        {
          if (!cstdlib_strcmp(__src, "FEEX"))
          {
            goto LABEL_11;
          }

          if (cstdlib_strcmp(__src, "STM3"))
          {
            if (cstdlib_strcmp(__src, "SYNT"))
            {
              goto LABEL_372;
            }

LABEL_11:
            v15 = a1;
            v16 = a2;
            v17 = a3;
            v18 = 1;
LABEL_256:
            LODWORD(v11) = select_bet3_ParseRiff(v15, v16, v17, v18, a5, 0, 0);
            goto LABEL_375;
          }

          Position = ssftriff_reader_GetPosition(a3);
          *__s1 = 0;
          v50 = ssftriff_reader_DetachChunkData(a3, (v131 + 8 * *(a2 + 37792)), __s1);
          if (v50 < 0)
          {
            LODWORD(v11) = v50;
            v52 = a3;
          }

          else
          {
            ++*(a2 + 37792);
            v51 = Position;
            v52 = a3;
            LODWORD(v11) = select_bet3_ParseRiff(a1, a2, a3, 1, a5, *__s1, v51);
            ++*(a2 + 260);
          }

          a3 = v52;
        }

        else
        {
          LODWORD(v11) = ssftriff_reader_DetachChunkData(a3, (v131 + 8 * *(a2 + 37792)), (a2 + 7784));
          if ((v11 & 0x80000000) == 0)
          {
            ++*(a2 + 37792);
          }
        }
      }

      else
      {
        v142 = 0;
        *v140 = 0;
        __s = 0;
        if (a6)
        {
          *v140 = a6 + ssftriff_reader_GetPosition(a3) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a3, v145, v140, v14);
          v11 = v32;
          if ((v32 & 0x80000000) != 0)
          {
            goto LABEL_311;
          }
        }

        v33 = BET3FLT__heap_StrDup(*(a1 + 8), "PHRASE");
        *(a2 + 208) = v33;
        if (!v33)
        {
          v48 = 3;
          v11 = 2229280778;
          goto LABEL_384;
        }

        v136 = a3;
        *(a2 + 216) = 1000;
        v34 = v145;
        if (v145)
        {
          v35 = 0;
          do
          {
            __s1[0] = 0;
            __s2[0] = 0;
            v142 = 64;
            LODWORD(v11) = ssftriff_reader_ReadStringZ(v136, *v140, v34, v35, __s2, &v142);
            if ((v11 & 0x80000000) == 0 && v35 < v145)
            {
              v35 += v142;
              v142 = 256;
              LODWORD(v11) = ssftriff_reader_ReadStringZ(v136, *v140, v145, v35, __s1, &v142);
            }

            if ((v11 & 0x80000000) != 0)
            {
              break;
            }

            v36 = v142;
            cstdlib_strcpy(__dst, "bet3voiceoverride.");
            cstdlib_strcat(__dst, __s2);
            if ((paramc_ParamGetStr(*(a1 + 40), __dst, &__s) & 0x80000000) != 0 || !__s || !*__s)
            {
              __s = __s1;
            }

            if (!cstdlib_strcmp(__s2, "ALPHA"))
            {
              cstdlib_atof(__s);
              *&v37 = v37;
              *(a2 + 128) = LODWORD(v37);
            }

            if (!cstdlib_strcmp(__s2, "BETA"))
            {
              cstdlib_atof(__s);
              *&v38 = v38;
              *(a2 + 132) = LODWORD(v38);
            }

            if (!cstdlib_strcmp(__s2, "VUV_REL_AMP"))
            {
              cstdlib_atof(__s);
              *&v39 = v39;
              *(a2 + 140) = LODWORD(v39);
            }

            if (!cstdlib_strcmp(__s2, "RHO"))
            {
              cstdlib_atof(__s);
              *&v40 = v40;
              *(a2 + 160) = LODWORD(v40);
            }

            if (!cstdlib_strcmp(__s2, "VOL"))
            {
              cstdlib_atof(__s);
              *&v41 = v41;
              *(a2 + 164) = LODWORD(v41);
            }

            if (!cstdlib_strcmp(__s2, "MVF_BOOST"))
            {
              cstdlib_atof(__s);
              *&v42 = v42;
              *(a2 + 168) = LODWORD(v42);
            }

            if (!cstdlib_strcmp(__s2, "F0_RHO"))
            {
              cstdlib_atof(__s);
              *&v43 = v43;
              *(a2 + 172) = LODWORD(v43);
            }

            if (!cstdlib_strcmp(__s2, "F0_STD"))
            {
              cstdlib_atof(__s);
              *&v44 = v44;
              *(a2 + 176) = LODWORD(v44);
            }

            if (!cstdlib_strcmp(__s2, "F0_MEAN"))
            {
              cstdlib_atof(__s);
              *&v45 = v45;
              *(a2 + 180) = LODWORD(v45);
            }

            if (!cstdlib_strcmp(__s2, "FS"))
            {
              *(a2 + 136) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "ORDER"))
            {
              *(a2 + 144) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE"))
            {
              *(a2 + 152) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SPEECH_F0_MEAN"))
            {
              *(a2 + 184) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PDF_VARIANCE_TYPE"))
            {
              *(a2 + 200) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "BREAKER"))
            {
              v46 = *(a2 + 208);
              if (v46)
              {
                heap_Free(*(a1 + 8), v46);
              }

              v47 = BET3FLT__heap_StrDup(*(a1 + 8), __s);
              *(a2 + 208) = v47;
              if (!v47)
              {
                LODWORD(v11) = -2065686518;
                break;
              }
            }

            if (!cstdlib_strcmp(__s2, "BRK_LENGTH"))
            {
              *(a2 + 216) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "BRK_TC"))
            {
              *(a2 + 220) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "BRK_ZPAD"))
            {
              *(a2 + 224) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "ALGN_ST"))
            {
              *(a2 + 240) = LH_atoi(__s) != 0;
            }

            if (!cstdlib_strcmp(__s2, "ALGN_PH"))
            {
              *(a2 + 244) = LH_atoi(__s) != 0;
            }

            if (!cstdlib_strcmp(__s2, "VSYNTH"))
            {
              *(a2 + 7776) = BET3FLT__heap_StrDup(*(a1 + 8), __s);
            }

            if (!cstdlib_strcmp(__s2, "FFTSZ"))
            {
              *(a2 + 7808) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "EN_MEAN"))
            {
              *(a2 + 7812) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FEED_EN_MEAN_LOOKAHEAD"))
            {
              *(a2 + 7820) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "COUNT_UV_DISTANCE"))
            {
              *(a2 + 7816) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SAMPLE_RATE"))
            {
              *(a2 + 7824) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENERGY"))
            {
              *(a2 + 7828) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_SIZE"))
            {
              *(a2 + 7832) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SPCPAR_FREQWARP"))
            {
              *(a2 + 7836) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENHANCE_ALPHA"))
            {
              *(a2 + 7840) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENHANCE_ALPHA_UNVOICED"))
            {
              *(a2 + 7844) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE_MRCC"))
            {
              *(a2 + 7848) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_PHS_EXTRAP_USE"))
            {
              *(a2 + 7852) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_NOISE_FREQ_TH"))
            {
              *(a2 + 7856) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_USE"))
            {
              *(a2 + 7860) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_MVF_USE"))
            {
              *(a2 + 7864) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_LO"))
            {
              *(a2 + 7868) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FREQNOISE_HI"))
            {
              *(a2 + 7872) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_UNIFORM"))
            {
              *(a2 + 7876) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_USE"))
            {
              *(a2 + 7880) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_MVF_USE"))
            {
              *(a2 + 7884) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_MIXHARM_LO"))
            {
              *(a2 + 7888) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_MIXHARM_HI"))
            {
              *(a2 + 7892) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_RES_LO"))
            {
              *(a2 + 7896) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_RES_HI"))
            {
              *(a2 + 7900) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_ALIGN_CUTOFF_FREQ"))
            {
              *(a2 + 7904) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF"))
            {
              *(a2 + 7908) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ATTENUATE_UV"))
            {
              *(a2 + 7912) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_SKIP_WEAK_HARM_RATIO"))
            {
              *(a2 + 7916) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_SMOOTH_WIN"))
            {
              *(a2 + 7940) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_THR"))
            {
              *(a2 + 7944) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_RATIO_EN_THR"))
            {
              *(a2 + 7948) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_MVF_THR"))
            {
              *(a2 + 7952) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_BY_LOW_EN"))
            {
              *(a2 + 7956) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_BY_RATIO_EN"))
            {
              *(a2 + 7960) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_0"))
            {
              *(a2 + 7964) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_1"))
            {
              *(a2 + 7968) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_2"))
            {
              *(a2 + 7972) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEBUZZ_PROCESS_MVF_3"))
            {
              *(a2 + 7976) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_BITS"))
            {
              *(a2 + 7980) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PHSPAR_USE"))
            {
              *(a2 + 7984) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_USE"))
            {
              *(a2 + 7988) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "USE_LOG2"))
            {
              *(a2 + 7992) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENHANCE_POWSPC"))
            {
              *(a2 + 7996) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_ATTENUATE"))
            {
              *(a2 + 8000) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_ATTENUATE_LO"))
            {
              *(a2 + 8004) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_ATTENUATE_HI"))
            {
              *(a2 + 8008) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_APPLY_DEEMP"))
            {
              *(a2 + 8012) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_HI_RES_ALIGN"))
            {
              *(a2 + 8016) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FAST_AUX_HARM"))
            {
              *(a2 + 8020) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_FIX_OLA"))
            {
              *(a2 + 8024) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DC_GUARD_VOICED"))
            {
              *(a2 + 8028) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DC_GUARD_UNVOICED"))
            {
              *(a2 + 8032) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_NYQUIST_GUARD"))
            {
              *(a2 + 8036) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PHSPAR_SIZE"))
            {
              *(a2 + 8040) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "PHSPAR_FLIP"))
            {
              *(a2 + 8044) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "AMPPAR_ENERGY_NORM_TH"))
            {
              *(a2 + 8048) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SPCPAR_FREQWARP_ALPHA"))
            {
              *(a2 + 8052) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_PHS_ALIGN_WITH_CONST"))
            {
              *(a2 + 8056) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_AUXNOISE_NORM_GLOBAL"))
            {
              *(a2 + 8060) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_DEEMP_COEF"))
            {
              *(a2 + 8064) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_USE_NOISE_MODULATION"))
            {
              *(a2 + 8068) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "SYN_NOISE_MODULATION_FACTOR"))
            {
              *(a2 + 8072) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "MAX_FRAME_SIZE"))
            {
              *(a2 + 8076) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "MIN_FRAME_SIZE"))
            {
              *(a2 + 8080) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "MIN_FFT_SIZE"))
            {
              *(a2 + 8084) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE_INC_NUM"))
            {
              *(a2 + 8088) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FRAME_SIZE_DEC_NUM"))
            {
              *(a2 + 8092) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "ANAL_FFT_SIZE"))
            {
              *(a2 + 8096) = LH_atoi(__s);
            }

            if (!cstdlib_strcmp(__s2, "FFT_SIZE"))
            {
              *(a2 + 8100) = LH_atoi(__s);
            }

            v35 += v36;
            v34 = v145;
          }

          while (v35 < v145);
        }

        cstdlib_strcpy(__dst, "bet3voiceoverride.");
        cstdlib_strcat(__dst, "BREAKER");
        if ((paramc_ParamGetStr(*(a1 + 40), __dst, &__s) & 0x80000000) == 0)
        {
          v89 = *(a2 + 208);
          if (v89)
          {
            heap_Free(*(a1 + 8), v89);
            *(a2 + 208) = 0;
          }

          v90 = BET3FLT__heap_StrDup(*(a1 + 8), __s);
          *(a2 + 208) = v90;
          if (!v90)
          {
            v48 = 3;
            v11 = 2229280778;
            goto LABEL_384;
          }
        }

        cstdlib_strcpy(__dst, "bet3voiceoverride.");
        cstdlib_strcat(__dst, "BRK_LENGTH");
        if ((paramc_ParamGetStr(*(a1 + 40), __dst, &__s) & 0x80000000) == 0)
        {
          *(a2 + 216) = LH_atoi(__s);
        }

        a3 = v136;
      }
    }

LABEL_375:
    v108 = ssftriff_reader_CloseChunk(a3);
    if (v11 > -1 && v108 < 0)
    {
      v11 = v108;
    }

    else
    {
      v11 = v11;
    }
  }

  if ((v11 & 0x1FFF) == 0x14)
  {
    v113 = 0;
  }

  else
  {
    v113 = v11;
  }

  if ((v113 & 0x80000000) == 0)
  {
    a5[v138] = 0;
    return v113;
  }

  return v11;
}

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
      v20 = 0;
      do
      {
        ssftriff_reader_ReleaseChunkData(*(a2 + 37584 + 8 * v20++));
      }

      while (v20 < *(a2 + 37792));
    }

    *(a2 + 37792) = 0;
    *a2 = 0;
    v21 = *(v3 + 8);

    return heap_Free(v21, a2);
  }

  return result;
}

uint64_t select_bet3_LoadRiffGenericFeatureMap(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v11 = a1;
  v37 = *MEMORY[0x277D85DE8];
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
          return 0;
        }

        v31 = v12;
        v32 = a3;
        v16 = 0;
        v17 = 2;
        v29 = a5;
        v30 = a7;
        while (1)
        {
          __dst[0] = 0;
          v35 = 256;
          v18 = ssftriff_reader_ReadStringZ(a2, v32, a4, v17, __dst, &v35);
          v19 = v35;
          *(*a5 + 8 * v16) = BET3FLT__heap_StrDup(*(v11 + 8), __dst);
          if (!*(*a5 + 8 * v16))
          {
            break;
          }

          v20 = v16;
          v21 = v19 + v17;
          v22 = *(v32 + v21);
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
              v35 = 256;
              v18 = ssftriff_reader_ReadStringZ(a2, v32, a4, v17, __dst, &v35);
              v26 = v35;
              *(*(*a6 + 8 * v20) + v24) = BET3FLT__heap_StrDup(*(v23 + 8), __dst);
              if (!*(*(*a6 + 8 * v20) + v24))
              {
                return 2229280778;
              }

              v17 += v26;
              v24 += 8;
              if (8 * v22 == v24)
              {
                a5 = v29;
                a7 = v30;
                for (i = 0; i != v22; ++i)
                {
                  *(*(*v30 + 8 * v20) + i) = *(v32 + v25 + v26 + i);
                }

                v17 = v25 + v26 + i;
                v11 = v23;
                break;
              }
            }
          }

          v16 = v20 + 1;
          if (v20 + 1 >= v31)
          {
            return v18;
          }
        }
      }
    }
  }

  return 2229280778;
}

uint64_t select_bet3_loc_SetSynthParamFloat(uint64_t a1, uint64_t a2, float a3)
{
  v12 = *MEMORY[0x277D85DE8];
  __sprintf_chk(v11, 0, 0x20uLL, "%f", a3);
  v9 = paramc_ParamSetStr(*(a1 + 40), a2, v11);
  if ((v9 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "SELECT_BET3", 55009, "%s%s%s%f%s%x", v5, v6, v7, v8, "parameter");
  }

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

uint64_t BET3FLT__ParamGenStart(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  v79 = *a1;
  result = BET3FLT__InitUttModel(*a1, (a1 + 56), a2, *(*(a1 + 8) + 10));
  if ((result & 0x80000000) == 0)
  {
    *(a1 + 16) = a3[8];
    v12 = a3[7];
    if (v12 >= 1 && v12 < *(a1 + 620))
    {
      BET3FLT__log_select_Error(v79, 55018, "Specified length of generated speech is too short (this sentence is composed from %d states), specify more than %d milliseconds\n", v7, v8, v9, v10, v11);
      return 2229280775;
    }

    if (*(a1 + 608) >= 1)
    {
      v13 = 0;
      v73 = 0;
      v74 = 0;
      v14 = a3 + 86;
      v67 = a3 + 326;
      v15 = a3 + 1326;
      v69 = *(*(a1 + 8) + 1784);
      v78 = v4 + 162;
      v76 = v4 + 142;
      v70 = v4 + 1;
      v16 = *(a1 + 32);
      v17 = -0.5;
      v18 = 0.0;
      v19 = 0.0;
      v72 = a3;
      v80 = v4;
      while (1)
      {
        v20 = (*(a1 + 600) + 528 * v13);
        v81 = v20;
        if (v16 >= 1)
        {
          v21 = 0;
          v22 = v20 + 4;
          v23 = v67;
          do
          {
            v24 = v14[v21];
            if (v24 < 1)
            {
              LODWORD(v25) = 0;
            }

            else
            {
              v25 = 0;
              v26 = *(*(*(a1 + 8) + 248) + v20->i32[0]);
              do
              {
                v27 = *&v23[2 * v25];
                if (v27)
                {
                  v28 = *&v15[2 * v26];
                  if (v28)
                  {
                    if (!cstdlib_strcmp(v27, v28))
                    {
                      goto LABEL_18;
                    }

                    v24 = v14[v21];
                  }
                }

                ++v25;
              }

              while (v25 < v24);
              LODWORD(v25) = 0;
LABEL_18:
              v20 = v81;
            }

            v22->i32[v21++] = v25;
            v23 += 10;
          }

          while (v21 < *(a1 + 32));
        }

        BET3FLT__log_select_Diag(v79, 21, "[phoneme %d]\n");
        v4 = v80;
        if (!v69)
        {
          break;
        }

        if (a3[29])
        {
          v20[1].i32[0] = BET3FLT__TreeSearch(*(a1 + 8), v13, (v80 + 116), 0, 0);
          BET3FLT__log_select_Diag(v79, 6, "DUR pdf id %d\n");
          result = BET3FLT__FindDurPDF(v20, v80, 0, v20[4].i32[0], 0, *(a1 + 16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LOWORD(v34) = *(*(*(a1 + 8) + 1784) + 2 * v20->i32[0]);
          v35 = BET3FLT__div_int32_int32_to_Q8_24(v34, a3[6]);
          if (v35 != 0.0)
          {
            v36 = v35;
            v37 = 0.0;
            v38 = 0.0;
            if (*v80 >= 1)
            {
              v39 = 2;
              do
              {
                v38 = v38 + BET3FLT__int32_to_Q12_20(*(*&v20[2] + 4 * v39));
                v40 = v39++ <= *v80;
              }

              while (v40);
            }

            v41 = v17 + v36;
            v42 = BET3FLT__div_Q8_24_Q12_20_to_Q8_24(v41, v38);
            v20[3].i32[0] = 0;
            if (*v80 >= 1)
            {
              v43 = v42;
              v44 = v20[2];
              v45 = 2;
              do
              {
                v46 = BET3FLT__mul_int32_Q8_24_to_Q8_24(*(*&v44 + 4 * v45), v43);
                v47 = BET3FLT__Q8_24_to_int32(v46 + 0.5);
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
                v49 = v20[3].i32[0] + v48;
                v20[3].i32[0] = v49;
                v40 = v45++ <= *v80;
              }

              while (v40);
              v37 = v49;
            }

            v17 = v41 - BET3FLT__int32_to_Q8_24(v37);
          }

LABEL_45:
          *(a1 + 624) += v20[3].i32[0];
          goto LABEL_46;
        }

        if (!a3[28])
        {
          break;
        }

        result = BET3FLT__log_select_Error(v79, 55017, "State level segmentation is not currently supported\n", v29, v30, v31, v32, v33);
LABEL_46:
        v16 = *(a1 + 32);
        if (v16 >= 1)
        {
          v53 = 0;
          v77 = v20 + 9;
          v71 = v20 + 19;
          v54 = v20 + 29;
          v75 = v20 + 4;
          v68 = v13;
          do
          {
            v55 = *(a1 + 24) + 1528 * v53;
            if (!*(v55 + 1480))
            {
              if (*(v55 + 1488))
              {
                v56 = *v4 * v13;
                v73 = *(*(a1 + 304 + 8 * v53) + 8 * v56);
                v74 = *(*(a1 + 224 + 8 * v53) + 8 * v56);
              }

              if (*(v78 + v53))
              {
                v57 = 0;
                v58 = 0;
                do
                {
                  v59 = *(*&v76[2 * v53] + v57);
                  *(*&v77[v53] + 4 * v59) = BET3FLT__TreeSearch(*(a1 + 8), *v81, (v80 + 116), v53, v58);
                  result = BET3FLT__log_select_Diag(v79, 6, "%s pdf state %d id %d\n");
                  v60 = *(a1 + 24) + 1528 * v53;
                  if (*(v60 + 1488))
                  {
                    v61 = v59 - 2 + (v59 - 2) * v70[v53];
                    *(*&v71[v53] + 8 * v59) = v74 + 4 * v61;
                    *(*&v71[v53] + 8 * v59) -= 4;
                    *(*&v54[v53] + 8 * v59) = v73 + 4 * v61;
                    *(*&v54[v53] + 8 * v59) -= 4;
                    result = BET3FLT__FindMsdPDF(v53, v59, v81, v80, v72, v75->i32[v53]);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }
                  }

                  else if (*(v60 + 1484))
                  {
                    result = BET3FLT__FindContPDF(v53, v59, v81, v80, v75->i32[v53]);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }
                  }

                  ++v58;
                  v57 += 16;
                }

                while (v58 < *(v78 + v53));
                v16 = *(a1 + 32);
                v4 = v80;
                v13 = v68;
              }
            }

            ++v53;
          }

          while (v53 < v16);
        }

        ++v13;
        a3 = v72;
        if (v13 >= *(a1 + 608))
        {
          v12 = *(v72 + 28);
          goto LABEL_65;
        }
      }

      v20[1].i32[0] = BET3FLT__TreeSearch(*(a1 + 8), v13, (v80 + 116), 0, 0);
      result = BET3FLT__log_select_Diag(v79, 6, "DUR pdf id %d\n");
      if (a3[7])
      {
        v50 = *v80;
        if (v50 >= 1)
        {
          v51 = (*(*(*(v80 + 21) + 8 * v20[4].i32[0]) + 8 * v20[1].i32[0]) + 8);
          v52 = (v50 + 2) - 2;
          do
          {
            v19 = v19 + *v51;
            v18 = v18 + v51[v50];
            ++v51;
            --v52;
          }

          while (v52);
        }

        goto LABEL_46;
      }

      result = BET3FLT__FindDurPDF(v20, v80, 0, v20[4].i32[0], 0, *(a1 + 16));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      SetSilenceDuration(a1, v80, a3, v20);
      goto LABEL_45;
    }

    v19 = 0.0;
    v18 = 0.0;
LABEL_65:
    if (v12 < 1 || (v62 = BET3FLT__int32_to_Q18_14(result, v12), v63 = BET3FLT__div_Q18_14_Q18_14_to_Q18_14(v62 - v19, v18), *(a1 + 16) = BET3FLT__Q18_14_to_Q1_15(v63), *(a1 + 608) < 1))
    {
LABEL_70:
      if (BET3FLT__log_select_GetLogLevel(*(v79 + 32)) >= 0x15)
      {
        OutLabel(a1);
      }

      BET3FLT__log_select_Diag(v79, 2, ">> tree search done\n");
      AddBreakMarks(a1, v4, a3);

      return ParamGenLT(a1, v4);
    }

    else
    {
      v64 = 0;
      v65 = 0;
      while (1)
      {
        v66 = (*(a1 + 600) + v64);
        result = BET3FLT__FindDurPDF(v66, v4, 0, v66[4].i32[0], 0, *(a1 + 16));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        SetSilenceDuration(a1, v4, a3, v66);
        *(a1 + 624) += v66[3].i32[0];
        ++v65;
        v64 += 528;
        if (v65 >= *(a1 + 608))
        {
          goto LABEL_70;
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
      v5 = *(v1 + 600) + v2;
      result = BET3FLT__log_select_Diag(*v1, 21, "%d %d %d [%d]\n");
      v4 += *(v5 + 24);
      ++v3;
      v2 += 528;
    }

    while (v3 < *(v1 + 608));
  }

  return result;
}

uint64_t AddBreakMarks(uint64_t a1, int *a2, uint64_t a3)
{
  result = cstdlib_strcmp(*(a3 + 80), "PHRASE_TIME");
  if (result)
  {
    result = cstdlib_strcmp(*(a3 + 80), "PHRASE");
    if (result)
    {
      result = cstdlib_strcmp(*(a3 + 80), "WORD");
      if (result)
      {
        result = cstdlib_strcmp(*(a3 + 80), "SYLLABLE");
        if (result)
        {
          result = cstdlib_strcmp(*(a3 + 80), "TIME");
          if (result)
          {
            result = cstdlib_strcmp(*(a3 + 80), "NONE");
            if (result)
            {
              v12 = *a1;

              return BET3FLT__log_select_Error(v12, 55036, "valid breaker is required\n", v7, v8, v9, v10, v11);
            }
          }

          else
          {
            v37 = *(a1 + 608);
            if (v37 >= 1)
            {
              v38 = 0;
              v39 = 0;
              v40 = *(a3 + 88);
              v41 = *a2;
              v42 = *(a1 + 600);
              v43 = v40;
              v44 = 0;
              do
              {
                result = v42 + 528 * v38;
                if (v41 >= 1)
                {
                  v45 = (*(result + 16) + 8);
                  v46 = (v41 + 2) - 2;
                  v44 = v39;
                  do
                  {
                    v47 = *v45++;
                    v44 += v47;
                    --v46;
                  }

                  while (v46);
                }

                if (v44 > v43)
                {
                  v43 = v39 + v40;
                  *(result + 4) |= 2u;
                }

                ++v38;
                v39 = v44;
              }

              while (v38 != v37);
            }
          }
        }

        else
        {
          v33 = *(a1 + 608);
          if (v33 >= 3)
          {
            v34 = (v33 - 2);
            v35 = *(a1 + 600);
            v36 = *(*(a1 + 8) + 112);
            do
            {
              if (*(v36 + *v35))
              {
                v35[133] |= 2u;
              }

              v35 += 132;
              --v34;
            }

            while (v34);
          }
        }
      }

      else
      {
        v29 = *(a1 + 608);
        if (v29 >= 3)
        {
          v30 = (v29 - 2);
          v31 = *(a1 + 600);
          v32 = *(*(a1 + 8) + 112);
          do
          {
            if ((*(v32 + *v31) & 0xFE) == 2)
            {
              v31[133] |= 2u;
            }

            v31 += 132;
            --v30;
          }

          while (v30);
        }
      }
    }

    else
    {
      v25 = *(a1 + 608);
      if (v25 >= 3)
      {
        v26 = (v25 - 2);
        v27 = *(a1 + 600);
        v28 = *(*(a1 + 8) + 112);
        do
        {
          if (*(v28 + *v27) == 3)
          {
            v27[133] |= 2u;
          }

          v27 += 132;
          --v26;
        }

        while (v26);
      }
    }
  }

  else
  {
    v13 = *(a1 + 608);
    if (v13 >= 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = *(a1 + 600);
      v17 = *a2;
      v18 = *(a3 + 88);
      v19 = *(*(a1 + 8) + 112);
      do
      {
        result = v16 + 528 * v14;
        if (v17 < 1)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0;
          v21 = (*(result + 16) + 8);
          v22 = (v17 + 2) - 2;
          do
          {
            v23 = *v21++;
            v20 += v23;
            --v22;
          }

          while (v22);
        }

        v15 += v20;
        if (v15 > v18)
        {
          *(result + 4) |= 2u;
          v15 = v20;
        }

        if (*(v19 + *result) == 3 && v14 < v13 - 2)
        {
          v15 = 0;
          *(result + 532) |= 2u;
        }

        ++v14;
      }

      while (v14 != v13);
    }
  }

  return result;
}

uint64_t ParamGenLT(uint64_t a1, int *a2)
{
  v3 = *a1;
  v4 = 2229280778;
  memset(__b, 0, 512);
  memset(v59, 0, sizeof(v59));
  memset(v58, 0, sizeof(v58));
  cstdlib_memset(__b, 0, 0x2D8uLL);
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
  BET3FLT__FreePStreamParam(__b);
  BET3FLT__FreeSMatrices(v59);
  BET3FLT__FreeSMatrices(v58);
  return v4;
}

uint64_t BET3FLT__ParamGenFrames(uint64_t *a1, int *a2, _DWORD *a3)
{
  v4 = a1;
  v5 = *a1;
  memset(__b, 0, 512);
  memset(v102, 0, sizeof(v102));
  memset(v101, 0, sizeof(v101));
  *a3 = 0;
  cstdlib_memset(__b, 0, 0x2D8uLL);
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
              v43 = BET3FLT__InitPStreamParam((v22 + 752), __b);
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
  BET3FLT__FreePStreamParam(__b);
  BET3FLT__FreeSMatrices(v102);
  BET3FLT__FreeSMatrices(v101);
  return v45;
}

uint64_t BET3FLT__InitVData(int a1, char *__b, uint64_t a3)
{
  cstdlib_memset(__b, 0, 0x430uLL);
  result = BET3FLT__InitModelSet(a1, __b, a3);
  if ((result & 0x80000000) == 0)
  {
    result = BET3FLT__InitTreeSet(a1, __b + 464);
    if ((result & 0x80000000) == 0)
    {

      return BET3FLT__InitDWinSet(a1, __b + 672, a3);
    }
  }

  return result;
}

void *BET3FLT__DeInitVData(void *a1, char *a2)
{
  BET3FLT__DeInitModelSet(a1, a2);
  BET3FLT__DeInitTreeSet(a1, a2 + 464);
  BET3FLT__DeInitDWinSet(a1, a2 + 672);

  return cstdlib_memset(a2, 0, 0x430uLL);
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
      v29 = "%s tree is required\n";
      v30 = a1;
      v31 = 55032;
      goto LABEL_37;
    }

    if (*(a2 + 336 + 4 * v20) && !*(a2 + 168))
    {
LABEL_38:
      v27 = 2229280775;
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
  v29 = "%s PDF layer %d is required\n";
  v30 = a1;
  v31 = 55034;
LABEL_37:
  BET3FLT__log_select_Error(v30, v31, v29, v14, v15, v16, v17, v18);
  return v27;
}

uint64_t BET3FLT__InitVStream(uint64_t a1, char *__b, _DWORD *a3)
{
  cstdlib_memset(__b, 0, 0x788uLL);
  *__b = a1;
  v6 = a3[33];
  *(__b + 8) = v6;
  v7 = heap_Calloc(*(a1 + 8), v6, 1528);
  *(__b + 3) = v7;
  if (!v7)
  {
    return 2229280778;
  }

  if (*(__b + 8) >= 1)
  {
    v8 = 0;
    v9 = __b + 648;
    v10 = a3 + 36;
    do
    {
      cstdlib_strcpy(v9, "");
      if (cstdlib_strlen(*&v10[2 * v8]))
      {
        cstdlib_strcpy(v9, *&v10[2 * v8]);
      }

      ++v8;
      v11 = *(__b + 8);
      v9 += 128;
    }

    while (v8 < v11);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = *(__b + 3);
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

uint64_t BET3FLT__LoadVStream(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 672;
  v6 = a2 + 4;
  v7 = a3 + 2184;
  v8 = a3 + 2344;
  v9 = a1[3];
  while (1)
  {
    v10 = (v5 + 40 * v4);
    v11 = v9 + 1528 * v4;
    *(v11 + 56) = v10;
    v12 = *(v11 + 1484);
    if (v12)
    {
      *(v11 + 784) = v10;
    }

    if (!*(v11 + 1480))
    {
      break;
    }

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (++v4 >= *(a1 + 8))
    {
      return 0;
    }
  }

  v14 = v6;
  v15 = *(v6 + 4 * v4);
  *(v11 + 36) = v15;
  v16 = (v15 / *v10);
  v17 = v9 + 1528 * v4;
  *(v17 + 40) = v16;
  v18 = a3;
  *(v17 + 1496) = *(a3 + 92);
  v19 = heap_Calloc(*(*a1 + 8), v16, 8);
  v20 = a1[3];
  *(v20 + 1528 * v4 + 1504) = v19;
  if (!v19)
  {
    return 2229280778;
  }

  LODWORD(v20) = *(v20 + 1528 * v4 + 40);
  if (v20 >= 1)
  {
    v21 = 0;
    do
    {
      if (cstdlib_strcmp(*(*(v7 + 8 * v4) + 8 * v21), "MLPG2"))
      {
        v32 = *a1;
        v33 = "invalid solver for stream %d: %s\n";
        goto LABEL_28;
      }

      *(*(a1[3] + 1528 * v4 + 1504) + 8 * v21++) = BET3FLT__mlpg2;
      v20 = *(a1[3] + 1528 * v4 + 40);
    }

    while (v21 < v20);
  }

  v27 = heap_Calloc(*(*a1 + 8), v20, 4);
  v28 = a1[3];
  *(v28 + 1528 * v4 + 1520) = v27;
  if (!v27)
  {
    return 2229280778;
  }

  if (*(v28 + 1528 * v4 + 40) < 1)
  {
LABEL_23:
    BET3FLT__log_select_Diag(*a1, 1, "%s: vSize = %d, order = %d, nLayer = %d\n");
    v9 = a1[3];
    v6 = v14;
    a3 = v18;
    if (!*(v9 + 1528 * v4 + 1484))
    {
      goto LABEL_8;
    }

LABEL_7:
    v13 = v9 + 1528 * v4;
    *(v13 + 764) = *(v6 + 4 * v4);
    *(v13 + 768) = 1;
    goto LABEL_8;
  }

  v29 = 0;
  while (1)
  {
    if (!cstdlib_strcmp(*(*(v8 + 8 * v4) + 8 * v29), "OFF"))
    {
      v30 = 0;
      goto LABEL_22;
    }

    if (cstdlib_strcmp(*(*(v8 + 8 * v4) + 8 * v29), "ON"))
    {
      break;
    }

    v30 = 1;
LABEL_22:
    v31 = a1[3] + 1528 * v4;
    *(*(v31 + 1520) + 4 * v29++) = v30;
    if (v29 >= *(v31 + 40))
    {
      goto LABEL_23;
    }
  }

  v32 = *a1;
  v33 = "valid breaker setting is required for stream %d\n";
LABEL_28:
  BET3FLT__log_select_Error(v32, 55036, v33, v22, v23, v24, v25, v26);
  return 2229280775;
}

void *BET3FLT__DeInitVStream(void *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      if (*(result + 8) >= 1)
      {
        v2 = 0;
        v3 = result[3];
        v4 = 1520;
        do
        {
          if (!v3)
          {
            break;
          }

          BET3FLT__FreePStreamSM(v3 + v4 - 1496);
          BET3FLT__FreePStreamParam((v1[3] + v4 - 1496));
          BET3FLT__FreePStreamSM(v1[3] + v4 - 768);
          BET3FLT__FreePStreamParam((v1[3] + v4 - 768));
          v3 = v1[3];
          v5 = *(v3 + v4 - 16);
          if (v5)
          {
            heap_Free(*(*v1 + 8), v5);
            v3 = v1[3];
            *(v3 + v4 - 16) = 0;
          }

          v6 = *(v3 + v4);
          if (v6)
          {
            heap_Free(*(*v1 + 8), v6);
            v3 = v1[3];
            *(v3 + v4) = 0;
          }

          ++v2;
          v4 += 1528;
        }

        while (v2 < *(v1 + 8));
      }

      v7 = v1[6];
      if (v7)
      {
        heap_Free(*(*v1 + 8), v7);
        v1[6] = 0;
      }

      v8 = v1[5];
      if (v8)
      {
        heap_Free(*(*v1 + 8), v8);
        v1[5] = 0;
      }

      v9 = v1[3];
      if (v9)
      {
        heap_Free(*(*v1 + 8), v9);
        v1[3] = 0;
      }

      BET3FLT__DeInitUttModel(v1 + 7);

      return cstdlib_memset(v1, 0, 0x788uLL);
    }
  }

  return result;
}

void *BET3FLT__InitVParam(_DWORD *a1)
{
  result = cstdlib_memset(a1, 0, 0x1F30uLL);
  a1[32] = 1;
  return result;
}

void *BET3FLT__DeInitVParam(uint64_t a1, void *__b)
{
  if (__b[954])
  {
    for (i = 0; i != 20; ++i)
    {
      if (*(__b[954] + 8 * i))
      {
        for (j = 0; j != 800; j += 8)
        {
          v6 = *(*(__b[954] + 8 * i) + j);
          if (v6)
          {
            heap_Free(*(a1 + 8), v6);
            *(*(__b[954] + 8 * i) + j) = 0;
          }
        }

        v7 = *(__b[954] + 8 * i);
        if (v7)
        {
          heap_Free(*(a1 + 8), v7);
          *(__b[954] + 8 * i) = 0;
        }
      }

      v8 = *(__b[955] + 8 * i);
      if (v8)
      {
        heap_Free(*(a1 + 8), v8);
        *(__b[955] + 8 * i) = 0;
      }

      v9 = *(__b[953] + 8 * i);
      if (v9)
      {
        heap_Free(*(a1 + 8), v9);
        *(__b[953] + 8 * i) = 0;
      }
    }

    v10 = __b[954];
    if (v10)
    {
      heap_Free(*(a1 + 8), v10);
      __b[954] = 0;
    }

    v11 = __b[955];
    if (v11)
    {
      heap_Free(*(a1 + 8), v11);
      __b[955] = 0;
    }

    v12 = __b[953];
    if (v12)
    {
      heap_Free(*(a1 + 8), v12);
      __b[953] = 0;
    }
  }

  v13 = __b[10];
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
    __b[10] = 0;
  }

  v14 = __b[15];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    __b[15] = 0;
  }

  v15 = __b[956];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    __b[956] = 0;
  }

  v16 = 0;
  v17 = (__b + 18);
  v18 = (__b + 53);
  v19 = (__b + 33);
  v20 = (__b + 293);
  v21 = (__b + 273);
  v22 = (__b + 283);
  v23 = __b;
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
    v18 = (__b + 53);
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
    v17 = (__b + 18);
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
    v43 = __b[k];
    if (v43)
    {
      heap_Free(*(a1 + 8), v43);
      __b[k] = 0;
    }
  }

  if (__b[952])
  {
    for (m = 0; m != 2048; m += 8)
    {
      v45 = *(__b[952] + m);
      if (v45)
      {
        heap_Free(*(a1 + 8), v45);
        *(__b[952] + m) = 0;
      }
    }

    heap_Free(*(a1 + 8), __b[952]);
  }

  return cstdlib_memset(__b, 0, 0x1F30uLL);
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
  v42 = 0;
  v41 = 0;
  v40 = 0;
  __s1 = 0;
  v37 = xmmword_287EF06E8;
  v38 = off_287EF06F8;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v42);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    log_OutText(*(v42 + 32), "SYNTH_BET3", 4, 0, "Entering synth_bet3_ObjOpen", v10, v11, v12, v34);
    v13 = heap_Calloc(*(v42 + 8), 1, 1904);
    if (v13)
    {
      v18 = v13;
      *v13 = a3;
      v13[1] = a4;
      v19 = v42;
      v13[2] = v42;
      Listen = critsec_ObjOpen(*(v19 + 16), *(v19 + 8), v13 + 3);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      *&v37 = v18;
      Listen = synth_bet3_loc_ParamGetListen(v18, "volume", 0, 100, 0x50u, &v37, &v40);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v18, "rate", 50, 400, 0x64u, &v37, &v40);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v18, "pitch", 50, 200, 0x64u, &v37, &v40);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v18, "rate_baseline", 50, 400, 0x64u, &v37, &v40);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v18, "pitch_baseline", 50, 200, 0x64u, &v37, &v40);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      Listen = synth_bet3_loc_ParamGetListen(v18, "audiooutputbufsamples", 1, 0x7FFFFFFF, 0x100u, &v37, &v40);
      if ((Listen & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      *(v18 + 40) = v40;
      if ((paramc_ParamGetStr(*(v42 + 40), "synth_type", &__s1) & 0x80000000) == 0)
      {
        if (cstdlib_strcmp(__s1, "mlsa") && cstdlib_strcmp(__s1, "mfs"))
        {
          log_OutText(*(v42 + 32), "SYNTH_BET3", 4, 0, "Unknown synthesizer: %s", v21, v22, v23, __s1);
          return 7;
        }

        log_OutText(*(v42 + 32), "SYNTH_BET3", 4, 0, "Setting up MLSA synthesizer", v21, v22, v23, v35);
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
        Object = objc_GetObject(*(v42 + 48), "SYNTHSTREAM", &v41);
        if ((Object & 0x80000000) == 0)
        {
          *(v18 + 32) = *(v41 + 8);
          *a5 = v18;
          *(a5 + 8) = 9346;
          goto LABEL_23;
        }

        log_OutPublic(*(*(v18 + 16) + 32), "SYNTH_BET3", 56001, 0, v27, v24, v25, v26, v35);
      }

      *a5 = v18;
      *(a5 + 8) = 9346;
      synth_bet3_ObjClose(v18, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
      goto LABEL_23;
    }

    log_OutPublic(*(v42 + 32), "SYNTH_BET3", 56000, 0, v14, v15, v16, v17, v35);
    Object = 2164269066;
LABEL_23:
    log_OutText(*(v42 + 32), "SYNTH_BET3", 4, 0, "synth_bet3_ObjOpen: %x", v24, v25, v26, Object);
    log_OutEvent(*(v42 + 32), 22, "", v28, v29, v30, v31, v32, v36);
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
  v36 = *(&xmmword_287EF06E8 + 8);
  v38 = *(&xmmword_287EF06E8 + 8);
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
  v26 = *MEMORY[0x277D85DE8];
  if ((safeh_HandleCheck(a1, a2, 9346, 1904) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  cstdlib_strcpy(__dst, "audio/L16;rate=");
  v8 = *(a1 + 48);
  v9 = cstdlib_strlen(__dst);
  LH_itoa(v8, &__dst[v9], 0xAu);
  v10 = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-bet3-speech-frames;version=5.0", 0, 0, a1 + 1792);
  if ((v10 & 0x80000000) != 0 || (v10 = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", 0, 0, a1 + 1808), (v10 & 0x80000000) != 0))
  {
    v23 = v10;
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56002, "%s%s", v11, v12, v13, v14, "contentType");
LABEL_12:
    *(a1 + 1856) = 0;
LABEL_13:
    synth_bet3_ProcessEnd(a1, a2);
    return v23;
  }

  v15 = (*(*(a1 + 32) + 64))(a3, a4, 16, __dst, 0, 1, a1 + 1824);
  if ((v15 & 0x80000000) != 0)
  {
    v23 = v15;
    goto LABEL_11;
  }

  v20 = *(a1 + 32);
  v21 = *(v20 + 64);
  v22 = (*(v20 + 152))();
  v23 = v21(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", v22, 1, a1 + 1840);
  if ((v23 & 0x80000000) != 0)
  {
LABEL_11:
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56003, "%s%s", v16, v17, v18, v19, "contentType");
    goto LABEL_12;
  }

  if (!*(a1 + 1896))
  {
    v23 = BET3FLT__MFVSyn__reset__MVF_Synthesis(a1 + 72);
    *(a1 + 1856) = 0;
    if ((v23 & 0x80000000) == 0)
    {
      return v23;
    }

    goto LABEL_13;
  }

  *(a1 + 1856) = 0;
  return v23;
}

uint64_t synth_bet3_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v160 = *MEMORY[0x277D85DE8];
  v8 = -2130698234;
  v9 = safeh_HandleCheck(a1, a2, 9346, 1904);
  if (v9 < 0)
  {
    return 2164269064;
  }

  v10 = 1;
  if (v9 || !a1)
  {
    return v10;
  }

  __n = 0;
  v157 = 0;
  __src = 0;
  v156 = 0;
  v153 = 0;
  __dst = 0;
  if ((safeh_HandleCheck(a1, a2, 9346, 1904) & 0x80000000) != 0)
  {
    return 2164269064;
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

  v10 = (*(*(a1 + 32) + 144))(*(a1 + 1792), *(a1 + 1800), &__n + 4, &v157);
  if ((v10 & 0x80000000) != 0)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56004, "%s%x", v14, v15, v16, v17, "lhError");
    return v10;
  }

  if (HIDWORD(__n))
  {
    v18 = (*(*(a1 + 32) + 88))(*(a1 + 1792), *(a1 + 1800), &v156, &__n + 4);
    if ((v18 & 0x80000000) != 0)
    {
      v10 = v18;
      log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x", v19, v20, v21, v22, "contentType");
      return v10;
    }

    v10 = (*(*(a1 + 32) + 88))(*(a1 + 1808), *(a1 + 1816), &__src, &__n);
    if ((v10 & 0x80000000) != 0)
    {
      log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x", v23, v24, v25, v26, "contentType");
      return v10;
    }

    if (HIDWORD(__n) >= 8)
    {
      v27 = (*(*(a1 + 32) + 112))(*(a1 + 1824), *(a1 + 1832), &v153, 2 * v12);
      if ((v27 & 0x80000000) != 0)
      {
        v10 = v27;
        v125 = *(*(a1 + 16) + 32);
LABEL_189:
        log_OutPublic(v125, "SYNTH_BET3", 56007, "%s%s%s%x", v28, v29, v30, v31, "stream");
        return v10;
      }

      if (!__n || (v32 = (*(*(a1 + 32) + 112))(*(a1 + 1840), *(a1 + 1848), &__dst), (v32 & 0x80000000) == 0))
      {
        v10 = critsec_Enter(*(a1 + 24));
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v33 = *v156;
        __b = 0;
        v151 = 0;
        v147 = *(v33 + 40);
        v148 = *(v33 + 48);
        if (__n && __src && __dst)
        {
          cstdlib_memcpy(__dst, __src, __n);
          LODWORD(__n) = __n >> 5;
        }

        v34 = *(v33 + 32);
        if (v34 < 1)
        {
          goto LABEL_206;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = *(v33 + 24);
        do
        {
          v39 = v38[3];
          if (v39 == 1)
          {
            v40 = v38;
          }

          else
          {
            v40 = v37;
          }

          if (v39 == 2)
          {
            v40 = v37;
            v41 = v38;
          }

          else
          {
            v41 = v36;
          }

          if (v39 == 3)
          {
            v35 = v38;
          }

          else
          {
            v37 = v40;
            v36 = v41;
          }

          v38 += 382;
          --v34;
        }

        while (v34);
        if (!v37 || !v36)
        {
          goto LABEL_206;
        }

        v42 = heap_Calloc(*(*(a1 + 16) + 8), v37[11], 1);
        if (!v42)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56000, 0, v43, v44, v45, v46, v145);
          v8 = -2130698230;
          goto LABEL_206;
        }

        v47 = v42;
        v149 = 0;
        v150 = 0;
        LODWORD(i) = 0;
        v49 = *(a1 + 1856);
        v8 = v10;
        while (1)
        {
          if (v49 >= v37[11] || *(a1 + 52) && *(a1 + 44) + HIDWORD(v149) > v12)
          {
LABEL_154:
            heap_Free(*(*(a1 + 16) + 8), v47);
            if (HIDWORD(v149) && (v8 & 0x80000000) == 0 && (v8 = (*(*(a1 + 32) + 120))(*(a1 + 1824), *(a1 + 1832), (2 * HIDWORD(v149))), v8 < 0))
            {
              v114 = *(*(a1 + 16) + 32);
LABEL_203:
              log_OutPublic(v114, "SYNTH_BET3", 56007, "%s%s%s%x", v110, v111, v112, v113, "stream");
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
                v114 = *(*(a1 + 16) + 32);
                goto LABEL_203;
              }

LABEL_193:
              if (*(a1 + 1856) < v37[11])
              {
                v137 = 2;
                goto LABEL_199;
              }

              v8 = (*(*(a1 + 32) + 96))(*(a1 + 1792), *(a1 + 1800), 8);
              if (v8 < 0)
              {
                v142 = *(*(a1 + 16) + 32);
LABEL_205:
                log_OutPublic(v142, "SYNTH_BET3", 56006, "%s%s%s%x", v138, v139, v140, v141, "contentType");
              }

              else
              {
                *(a1 + 1856) = 0;
                if (HIDWORD(__n) <= 8)
                {
                  v137 = 1;
                }

                else
                {
                  v137 = 2;
                }

LABEL_199:
                *a5 = v137;
                if (i)
                {
                  v8 = (*(*(a1 + 32) + 96))(*(a1 + 1808), *(a1 + 1816), (32 * i));
                  if (v8 < 0)
                  {
                    v142 = *(*(a1 + 16) + 32);
                    goto LABEL_205;
                  }
                }
              }
            }

LABEL_206:
            v143 = critsec_Leave(*(a1 + 24));
            if (v143 >= 0 || v8 <= -1)
            {
              return v8;
            }

            else
            {
              return v143;
            }
          }

          v50 = __dst;
          if (__dst)
          {
            v51 = i >= __n;
          }

          else
          {
            v51 = 1;
          }

          if (!v51)
          {
            for (i = i; v50 && i < __n; ++i)
            {
              v52 = &v50[8 * i];
              v53 = v52[3];
              v54 = *(a1 + 52);
              if (v53 > *(a1 + 1860))
              {
                if (v54)
                {
                  break;
                }

LABEL_58:
                v60 = v50[3];
                v61 = v53 - v60;
                v62 = *v52;
                if (*v52 == 8 || v62 == 26)
                {
                  if (v61 < v37[11])
                  {
                    *(v47 + v61) = 1;
                    v50 = __dst;
                  }
                }

                else if (v62 == 33)
                {
                  v64 = &v50[8 * v150];
                  v65 = *(v64 + 3) - v60;
                  if (v52[6] == 35)
                  {
                    v150 = i;
                    if ((v53 == v60 || v61 < v37[11] && *(v47 + v61) || *(v64 + 4) + v65 == v61) && v52[4])
                    {
                      v66 = 0;
                      do
                      {
                        if (v61 + v66 < v37[11])
                        {
                          *(v47 + v61 + v66) = 2;
                          v50 = __dst;
                        }

                        ++v66;
                      }

                      while (v66 < v50[8 * i + 4]);
                    }
                  }

                  else if (v61 < v37[11] && !*(v47 + v61))
                  {
                    v67 = *(v64 + 4);
                    if (v67)
                    {
                      if (v67 + v65 == v61)
                      {
                        v68 = 0;
                        do
                        {
                          if (v65 + v68 < v37[11])
                          {
                            *(v47 + (v65 + v68)) = 0;
                            v50 = __dst;
                          }

                          ++v68;
                        }

                        while (v68 < v50[8 * v150 + 4]);
                      }
                    }
                  }
                }

                continue;
              }

              if (!v54)
              {
                goto LABEL_58;
              }

              if (!i)
              {
                LODWORD(v149) = v50[3];
              }

              HIDWORD(v55) = 0;
              *(a1 + 1880) = 0;
              v56 = v50[8 * i];
              if (v56 > 17)
              {
                if (v56 == 18)
                {
                  critsec_Leave(*(a1 + 24));
                  v57 = *(*(a1 + 16) + 40);
                  v58 = *(__dst + 8 * i + 6);
                  v59 = "rate";
                }

                else
                {
                  if (v56 != 24)
                  {
                    goto LABEL_92;
                  }

                  critsec_Leave(*(a1 + 24));
                  v57 = *(*(a1 + 16) + 40);
                  v58 = *(__dst + 8 * i + 6);
                  v59 = "volume";
                }
              }

              else if (v56 == 16)
              {
                critsec_Leave(*(a1 + 24));
                v57 = *(*(a1 + 16) + 40);
                v58 = *(__dst + 8 * i + 6);
                v59 = "pitch";
              }

              else
              {
                if (v56 != 17)
                {
                  goto LABEL_92;
                }

                critsec_Leave(*(a1 + 24));
                v57 = *(*(a1 + 16) + 40);
                v58 = *(__dst + 8 * i + 6);
                v59 = "timbre";
              }

              paramc_ParamSetUInt(v57, v59, v58);
              critsec_Enter(*(a1 + 24));
LABEL_92:
              v50 = __dst;
              v69 = __dst + 32 * i;
              *(v69 + 3) = *(a1 + 1864);
              if (i + 1 >= __n)
              {
                v70 = *(a1 + 44);
LABEL_96:
                LODWORD(v55) = *(v69 + 4);
                v72 = v55;
                v73 = ceil(v70 * *(a1 + 132));
                goto LABEL_97;
              }

              v70 = *(a1 + 44);
              if (v50[8 * i + 8] != 8)
              {
                goto LABEL_96;
              }

              *(a1 + 1880) = v53 - v149;
              v71 = *(v69 + 4);
              *(a1 + 1884) = v71 + v53 - v149;
              v72 = v71;
              v73 = v70;
LABEL_97:
              *(v69 + 4) = (v72 * v73 + 0.5);
            }
          }

          v74 = 0.0;
          v75 = 0.0;
          if ((*(v148 + *v37) & 4) != 0)
          {
            v76 = *(a1 + 64);
            v77 = *v36;
            v78 = exp(**(*(v36 + 8) + 8 * v77));
            v75 = *(a1 + 68) + (v76 * v78);
            *v36 = v77 + 1;
          }

          if (v35 && ((*(v148 + *v37) >> v35[3]) & 1) != 0)
          {
            v79 = *v35;
            v74 = exp(**(*(v35 + 8) + 8 * v79));
            *v35 = v79 + 1;
          }

          v80 = *(a1 + 272);
          if ((v80 & 0x80000000) == 0)
          {
            v81 = *(*(v37 + 8) + 8 * *(a1 + 1856));
            v82 = v80 + 1;
            v83 = v159;
            v84 = v82;
            do
            {
              v85 = *v81++;
              *v83++ = v85;
              --v84;
            }

            while (v84);
            v86 = *(a1 + 1872);
            if (v86)
            {
              v87 = v159;
              do
              {
                v88 = *v86++;
                *v87 = *v87 + v88;
                ++v87;
                --v82;
              }

              while (v82);
            }
          }

          cstdlib_memset(&__b, 0, 8uLL);
          v89 = *(a1 + 52);
          v49 = *(a1 + 1856);
          if (!v89 && (**(*(v37 + 8) + 8 * v49) == 0.0 || v49 >= v37[11] || *(v47 + v49) == 2))
          {
            v151 = vcvtps_u32_f32(*(a1 + 132) * *(a1 + 552));
          }

          else
          {
            v90 = *(a1 + 132);
            v91 = *(a1 + 1880);
            if (v91 <= v49 && *(a1 + 1884) > v49)
            {
              *(a1 + 132) = 1065353216;
            }

            if (v89 || !v49 || !*(a1 + 56))
            {
              v8 = BET3FLT__MFVSyn__SynthesisOneFrame(a1 + 72, v159, &v151, &__b, v75, 0.0, *(v147 + 4 * *v37), v74);
              v91 = *(a1 + 1880);
              v49 = *(a1 + 1856);
            }

            if (v91 <= v49 && *(a1 + 1884) > v49)
            {
              *(a1 + 132) = v90;
            }
          }

          v92 = 0;
          if ((v8 & 0x80000000) == 0)
          {
            v93 = v151;
            if (v151)
            {
              break;
            }
          }

LABEL_152:
          if (v92 || v8 < 0)
          {
            goto LABEL_154;
          }
        }

        v94.i32[0] = 1;
        v94.i32[1] = v151;
        *(a1 + 1860) = vadd_s32(*(a1 + 1860), v94);
        if (v93 + HIDWORD(v149) <= v12)
        {
          v102 = 0;
          goto LABEL_142;
        }

        if (HIDWORD(v149))
        {
          v95 = (*(*(a1 + 32) + 120))(*(a1 + 1824), *(a1 + 1832), (2 * HIDWORD(v149)));
          if (v95 < 0)
          {
            v8 = v95;
            goto LABEL_150;
          }

          v93 = v151;
        }

        if (v93 <= v12)
        {
          v100 = v12;
        }

        else
        {
          v100 = v93;
        }

        if (*(a1 + 52))
        {
          v101 = v93;
        }

        else
        {
          v101 = v100;
        }

        v8 = (*(*(a1 + 32) + 112))(*(a1 + 1824), *(a1 + 1832), &v153, 2 * v101);
        if ((v8 & 0x80000000) == 0)
        {
          HIDWORD(v149) = 0;
          v102 = *(a1 + 52) != 0;
LABEL_142:
          v103 = __b;
          if (__b)
          {
            v104 = v151;
            if (v151)
            {
              v105 = v153;
              v106 = HIDWORD(v149);
              v107 = v151;
              do
              {
                v108 = *v103++;
                *(v105 + 2 * v106++) = v108;
                --v107;
              }

              while (v107);
            }

            v109 = HIDWORD(v149);
          }

          else
          {
            v109 = HIDWORD(v149);
            v146 = v102;
            cstdlib_memset((v153 + 2 * HIDWORD(v149)), 0, v151 + 2);
            v102 = v146;
            v104 = v151;
          }

          HIDWORD(v149) = v104 + v109;
          goto LABEL_151;
        }

LABEL_150:
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x", v96, v97, v98, v99, "stream");
        HIDWORD(v149) = 0;
        v102 = *(a1 + 52);
LABEL_151:
        v92 = v102 != 0;
        ++*v37;
        v49 = *(a1 + 1856) + 1;
        *(a1 + 1856) = v49;
        goto LABEL_152;
      }

LABEL_188:
      v10 = v32;
      v125 = *(*(a1 + 16) + 32);
      goto LABEL_189;
    }
  }

  else
  {
    if (!v157)
    {
      *a5 = 0;
      return v10;
    }

    v115 = *(a1 + 1824);
    if (!v115 || (v10 = (*(*(a1 + 32) + 72))(v115, *(a1 + 1832)), *(a1 + 1824) = safeh_GetNullHandle(), *(a1 + 1832) = v116, (v10 & 0x80000000) == 0))
    {
      if (*(a1 + 1840))
      {
        v10 = (*(*(a1 + 32) + 88))(*(a1 + 1808), *(a1 + 1816), &__src, &__n);
        if ((v10 & 0x80000000) != 0)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56005, "%s%s%s%x", v117, v118, v119, v120, "contentType");
        }

        else if (__n)
        {
          v10 = (*(*(a1 + 32) + 112))(*(a1 + 1840), *(a1 + 1848), &__dst);
          if ((v10 & 0x80000000) != 0)
          {
            log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56007, "%s%s%s%x", v121, v122, v123, v124, "stream");
          }
        }

        if ((v10 & 0x80000000) == 0 && __n && __src && __dst)
        {
          cstdlib_memcpy(__dst, __src, __n);
          v126 = __n;
          LODWORD(__n) = __n >> 5;
          if (v126 >= 0x20)
          {
            LODWORD(v127) = 0;
            v128 = 0;
            v129 = *(a1 + 1864);
            v130 = __dst + 16;
            do
            {
              *(v130 - 1) = v129;
              *v130 = 0;
              ++v128;
              v127 = (v127 + 32);
              v130 += 8;
            }

            while (v128 < __n);
          }

          else
          {
            v127 = 0;
          }

          v32 = (*(*(a1 + 32) + 120))(*(a1 + 1840), *(a1 + 1848), v127);
          if ((v32 & 0x80000000) != 0)
          {
            goto LABEL_188;
          }

          v131 = (*(*(a1 + 32) + 96))(*(a1 + 1808), *(a1 + 1816), v127);
          if ((v131 & 0x80000000) != 0)
          {
            v10 = v131;
            log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56006, "%s%s%s%x", v132, v133, v134, v135, "contentType");
            return v10;
          }
        }

        else if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v10 = (*(*(a1 + 32) + 72))(*(a1 + 1840), *(a1 + 1848));
        *(a1 + 1840) = safeh_GetNullHandle();
        *(a1 + 1848) = v136;
      }
    }
  }

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
  if (cstdlib_strcmp(__s1, "audiooutputbufsamples"))
  {
    if (cstdlib_strcmp(__s1, "volume"))
    {
      if (cstdlib_strcmp(__s1, "rate") && cstdlib_strcmp(__s1, "rate_baseline"))
      {
        if (!cstdlib_strcmp(__s1, "ratewpm"))
        {
          result = 2164269057;
          goto LABEL_19;
        }

        if (cstdlib_strcmp(__s1, "pitch") && cstdlib_strcmp(__s1, "pitch_baseline"))
        {
          result = 0;
          goto LABEL_19;
        }

        v8 = __CFADD__(LH_atoi(a3) - 201, 151);
      }

      else
      {
        v8 = __CFADD__(LH_atoi(a3) - 401, 351);
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

    else if (LH_atoi(a3) <= 0x64)
    {
      result = 0;
    }

    else
    {
      result = 2164269071;
    }
  }

  else if (LH_atoi(a3) <= 0)
  {
    result = 2164269071;
  }

  else
  {
    result = 0;
  }

LABEL_19:
  *a4 = result >= 0;
  return result;
}

uint64_t synth_bet3_loc_ParamLearnChange(uint64_t a1, char *__s1, const char *a3)
{
  if (cstdlib_strcmp(__s1, "audiooutputbufsamples") && cstdlib_strcmp(__s1, "volume") && cstdlib_strcmp(__s1, "rate") && cstdlib_strcmp(__s1, "rate_baseline") && cstdlib_strcmp(__s1, "ratewpm") && cstdlib_strcmp(__s1, "pitch") && cstdlib_strcmp(__s1, "pitch_baseline"))
  {
    return 0;
  }

  v7 = LH_atoi(a3);

  return synth_bet3_loc_ParamSet(a1, __s1, v7);
}

uint64_t synth_bet3_loc_ParamGetListen(uint64_t a1, _BYTE *a2, signed int a3, signed int a4, unsigned int a5, __int128 *a6, unsigned int *a7)
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
  v39 = 0;
  v40 = 0;
  v2 = *(a1 + 16);
  v38 = 0;
  v37 = 0;
  v36 = 0u;
  memset(__b, 0, sizeof(__b));
  v34 = 0;
  Int = paramc_ParamGetInt(*(v2 + 40), "frequencyhz", &v39 + 1);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  MFVSyn__deinit__MVF_Synthesis((a1 + 72));
  *(a1 + 48) = HIDWORD(v39);
  v8 = (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &v40) & 0x80000000) == 0 && cstdlib_strcmp(v40, "bet3") == 0;
  *(a1 + 52) = v8;
  v9 = (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &v40) & 0x80000000) == 0 && !cstdlib_strcmp(v40, "bet4") && (paramc_ParamGetStr(*(v2 + 40), "bet4suppressbet3pcm", &v40) & 0x80000000) == 0 && cstdlib_strcmp(v40, "yes") == 0;
  *(a1 + 56) = v9;
  cstdlib_memset(__b, 0, 0x30uLL);
  *(__b + 8) = xmmword_26ED6CFF0;
  __asm { FMOV            V0.2S, #1.0 }

  *(&__b[1] + 1) = _D0;
  BYTE4(v36) = 1;
  *(&v36 + 5) = *(a1 + 52) != 0;
  DWORD2(v36) = 4;
  LODWORD(__b[0]) = vcvtps_s32_f32(COERCE_FLOAT(COERCE_UNSIGNED_INT64(wave_t__convertFromF0ToTp__SR(SHIDWORD(v39), 700.0))));
  DWORD1(__b[0]) = vcvtms_s32_f32(COERCE_FLOAT(COERCE_UNSIGNED_INT64(wave_t__convertFromF0ToTp__SR(SHIDWORD(v39), 40.0))));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicealpha", &v40);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!v40)
  {
    goto LABEL_50;
  }

  if (!*v40)
  {
    goto LABEL_50;
  }

  cstdlib_atof(v40);
  v17 = v16;
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicebeta", &v40);
  if ((Str & 0x80000000) != 0 || !v40 || !*v40)
  {
    goto LABEL_50;
  }

  cstdlib_atof(v40);
  v19 = v18;
  paramc_ParamRelease(*(v2 + 40));
  Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceframesize", &v38);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  *(a1 + 44) = v38 * *(a1 + 48) / 0x3E8u;
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevol", &v40);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!v40)
  {
    goto LABEL_50;
  }

  if (!*v40)
  {
    goto LABEL_50;
  }

  cstdlib_atof(v40);
  *&v20 = v20;
  *(a1 + 60) = LODWORD(v20);
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevuvrelamp", &v40);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!v40)
  {
    goto LABEL_50;
  }

  if (!*v40)
  {
    goto LABEL_50;
  }

  cstdlib_atof(v40);
  *&v21 = v21;
  DWORD2(__b[0]) = LODWORD(v21);
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicemvfboost", &v40);
  if ((Str & 0x80000000) != 0 || !v40 || !*v40)
  {
    goto LABEL_50;
  }

  cstdlib_atof(v40);
  v23 = v22;
  paramc_ParamRelease(*(v2 + 40));
  Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceorder", &v37);
  if ((Int & 0x80000000) != 0)
  {
LABEL_49:
    Str = Int;
LABEL_50:
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s", v4, v5, v6, v7, "parameter");
    return Str;
  }

  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicef0std", &v40);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (!v40)
  {
    goto LABEL_50;
  }

  if (!*v40)
  {
    goto LABEL_50;
  }

  cstdlib_atof(v40);
  *&v24 = v24;
  *(a1 + 64) = LODWORD(v24);
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicef0mean", &v40);
  if ((Str & 0x80000000) != 0 || !v40 || !*v40)
  {
    goto LABEL_50;
  }

  cstdlib_atof(v40);
  *&v25 = v25;
  *(a1 + 68) = LODWORD(v25);
  paramc_ParamRelease(*(v2 + 40));
  if ((paramc_ParamGetInt(*(v2 + 40), "bet2cpupower", &v39) & 0x80000000) == 0 && (v39 - 1) < 4)
  {
    DWORD2(v36) = v39;
  }

  if (paramc_ParamGet(*(v2 + 40), "bet3cepstralequalizer", (a1 + 1872), &v34) || v37 + 1 == v34 >> 2)
  {
    v29 = v17;
    v30 = v19;
    inited = BET3FLT__MFVSyn__init__MVF_Synthesis(*(a1 + 16), a1 + 72, __b, 0, v38, v37, v29, v30, SHIDWORD(v39));
    if ((inited & 0x80000000) == 0)
    {
      v32 = v23;
      inited = BET3FLT__MFVSyn__setMVFBoost(a1 + 72, v32);
      if ((inited & 0x80000000) == 0)
      {
        inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "volume", &v39);
        if ((inited & 0x80000000) == 0)
        {
          inited = synth_bet3_loc_ParamSet(a1, "volume", v39);
          if ((inited & 0x80000000) == 0)
          {
            inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate_baseline", &v39);
            if ((inited & 0x80000000) == 0)
            {
              inited = synth_bet3_loc_ParamSet(a1, "rate_baseline", v39);
              if ((inited & 0x80000000) == 0)
              {
                inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch_baseline", &v39);
                if ((inited & 0x80000000) == 0)
                {
                  inited = synth_bet3_loc_ParamSet(a1, "pitch_baseline", v39);
                  if ((inited & 0x80000000) == 0)
                  {
                    inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v39);
                    if ((inited & 0x80000000) == 0)
                    {
                      inited = synth_bet3_loc_ParamSet(a1, "rate", v39);
                      if ((inited & 0x80000000) == 0)
                      {
                        inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v39);
                        if ((inited & 0x80000000) == 0)
                        {
                          return synth_bet3_loc_ParamSet(a1, "pitch", v39);
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
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s", v26, v37, v27, v28, "parameter");
    return 0;
  }
}

uint64_t synth_bet3_loc_ParamSet(uint64_t a1, const char *a2, uint64_t a3)
{
  if (cstdlib_strcmp(a2, "audiooutputbufsamples"))
  {
    v6 = critsec_Enter(*(a1 + 24));
    if ((v6 & 0x80000000) == 0)
    {
      if (cstdlib_strcmp(a2, "volume"))
      {
        if (cstdlib_strcmp(a2, "rate_baseline"))
        {
          if (!cstdlib_strcmp(a2, "rate"))
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

          if (!cstdlib_strcmp(a2, "ratewpm"))
          {
            v10 = 2164269057;
            goto LABEL_38;
          }

          if (cstdlib_strcmp(a2, "pitch_baseline"))
          {
            if (!cstdlib_strcmp(a2, "pitch"))
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

      else if (a3 <= 0x64)
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

      v10 = 2164269071;
      goto LABEL_38;
    }
  }

  else
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

uint64_t vect_t__scale(uint64_t result, float a2)
{
  v2 = *(result + 16);
  if (v2 >= 1)
  {
    v3 = *(result + 8);
    do
    {
      *v3 = *v3 * a2;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return result;
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

void vect_t__mulByHamming(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(a1 + 8);
    do
    {
      v4 = cos(((6.2832 / (v1 - 1)) * v2));
      *(v3 + 4 * v2) = ((v4 * -0.46) + 0.54) * *(v3 + 4 * v2);
      ++v2;
    }

    while (v1 != v2);
  }
}

void vect_t__mulByBlackman(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(a1 + 8);
    do
    {
      v4 = (6.2832 / (v1 - 1)) * v2;
      v5 = cos(v4);
      v6 = (v5 * -0.5) + 0.42;
      v7 = cos((v4 + v4));
      *(v3 + 4 * v2) = (v6 + (v7 * 0.08)) * *(v3 + 4 * v2);
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

unint64_t BET3FLT__rand31pmc_next(unint64_t *a1)
{
  v1 = ((1101463552 * (*a1 >> 16)) & 0x7FFF0000) + 16807 * *a1 + ((16807 * (*a1 >> 16)) >> 15);
  if (v1 >> 31)
  {
    v1 -= 0x7FFFFFFFLL;
  }

  *a1 = v1;
  return v1;
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

unint64_t rand31pmc_ranlui(unint64_t *a1)
{
  v1 = ((1101463552 * (*a1 >> 16)) & 0x7FFF0000) + 16807 * *a1 + ((16807 * (*a1 >> 16)) >> 15);
  if (v1 >> 31)
  {
    v1 -= 0x7FFFFFFFLL;
  }

  *a1 = v1;
  return v1;
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

uint64_t BET3FLT__MFVSyn__setSpectralOrder(uint64_t a1, int a2)
{
  result = 2164269071;
  if (a2 >= 6 && *(a1 + 204) >= a2)
  {
    result = 0;
    *(a1 + 200) = a2;
  }

  return result;
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

uint64_t BET3FLT__MFVSyn__setRate(uint64_t a1, float a2)
{
  if (a2 > 0.0)
  {
    v3 = a2 == 4.0;
    v2 = a2 >= 4.0;
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
  *(a1 + 60) = a2;
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

uint64_t BET3FLT__MFVSyn__init__MVF_Synthesis(uint64_t a1, uint64_t a2, __int128 *a3, char *a4, int a5, int a6, float a7, float a8, float a9)
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

void *MFVSyn__deinit__MVF_Synthesis(void *a1)
{
  BET3FLT__MFVSyn__releaseExcTable(a1);
  MFVSyn__deinit__postFilter(a1);
  BET3FLT__MFVSyn__deconstruct(a1);

  return cstdlib_memset(a1, 0, 0x6B8uLL);
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
      v15 = vaddq_s64(v14, xmmword_26ED6D6A0);
      v16 = vaddq_s64(v14, xmmword_26ED6D6B0);
      v17 = vdupq_n_s64(v13);
      v18 = (a1 + 4 * v11 + 1688);
      v19.i64[0] = -1;
      v19.i64[1] = -1;
      v20 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v21 = vdupq_n_s64(v10);
        v22 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_26ECC7980)));
        v23 = vaddq_s64(v16, v19);
        if (vuzp1_s16(v22, *v15.i8).u8[0])
        {
          *v18 = v12 * v23.i32[0];
        }

        if (vuzp1_s16(v22, *&v15).i8[2])
        {
          *(v18 - 1) = v12 * v23.i32[2];
        }

        v24 = vorrq_s8(v21, xmmword_26ECCE810);
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

float v_equ_fistp(_WORD *a1, float *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *a2++;
      result = v5;
      *a1++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

float v_equ_fild(float *a1, __int16 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *a2++;
      result = v5;
      *a1++ = v5;
      --v3;
    }

    while (v3);
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

float *v_scale_and_add(float *result, float *a2, int a3, float a4)
{
  if (a3 >= 1)
  {
    v4 = a3;
    v5 = result;
    do
    {
      v6 = *a2++;
      *v5 = *v5 + (a4 * v6);
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

_DWORD *v_equ_circ(_DWORD *result, uint64_t a2, unsigned int *a3, int a4, int a5)
{
  v5 = *a3;
  if (a5 >= 1)
  {
    v6 = a5;
    v7 = result;
    do
    {
      v5 = (v5 + 1) & a4;
      *v7++ = *(a2 + 4 * v5);
      --v6;
    }

    while (v6);
  }

  *a3 = v5;
  return result;
}

_DWORD *v_equ_int(_DWORD *result, int *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

double v_inner(float *a1, float *a2, int a3)
{
  if (a3 < 1)
  {
    return 0.0;
  }

  v3 = a3;
  result = 0.0;
  do
  {
    v5 = *a1++;
    v6 = v5;
    v7 = *a2++;
    *&result = *&result + (v6 * v7);
    --v3;
  }

  while (v3);
  return result;
}

double v_magsq(float *a1, int a2)
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
    *&result = *&result + (v4 * v4);
    --v2;
  }

  while (v2);
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
    v5 = xmmword_26ECCE810;
    v6 = xmmword_26ECC7980;
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

float v_sub(float *a1, float *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *a2++;
      result = *a1 - v5;
      *a1++ = result;
      --v3;
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

void *v_zap_int(void *a1, int a2)
{
  if (a2 >= 1)
  {
    bzero(a1, 4 * a2);
  }

  return a1;
}

uint64_t v_fill(uint64_t result, int a2, int16x4_t a3)
{
  if (a2 >= 1)
  {
    v3 = (a2 + 3) & 0xFFFFFFFC;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26ECCE810;
    v6 = xmmword_26ECC7980;
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

float *interp_array(float *result, float *a2, float *a3, int a4, float a5)
{
  if (a4 >= 1)
  {
    v5 = a4;
    do
    {
      v6 = *a2++;
      v7 = v6;
      v8 = *result++;
      *a3++ = ((1.0 - a5) * v8) + (a5 * v7);
      --v5;
    }

    while (v5);
  }

  return result;
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

uint64_t BET3FLT__MFVSyn__loadExcTable(void *a1, char *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = 0.0;
  cstdlib_memcpy(__dst, a2, 0x30uLL);
  cstdlib_memcpy(a1 + 99, a2 + 48, 4uLL);
  cstdlib_memcpy(a1 + 796, a2 + 52, 2uLL);
  cstdlib_memcpy(a1 + 798, a2 + 54, 2uLL);
  cstdlib_memcpy(a1 + 100, a2 + 56, 2uLL);
  cstdlib_memcpy(a1 + 802, a2 + 58, 2uLL);
  cstdlib_memcpy(a1 + 804, a2 + 60, 2uLL);
  cstdlib_memcpy(a1 + 806, a2 + 62, 2uLL);
  v4 = heap_Alloc(*(*a1 + 8), 4 * (*(a1 + 400) + *(a1 + 398)) * *(a1 + 198));
  a1[101] = v4;
  v5 = *(a1 + 198);
  if (v5 > 1)
  {
    v6 = 4 * *(a1 + 398);
    v7 = v4 + v6;
    v8 = a1 + 104;
    v9 = v5 - 1;
    do
    {
      *v8 = v7;
      v8 += 3;
      v7 += v6;
      --v9;
    }

    while (v9);
  }

  if (v5 >= 1)
  {
    v10 = a2 + 64;
    v11 = a1 + 101;
    v12 = &a1[3 * (v5 - 1) + 101];
    v13 = 4 * *(a1 + 398);
    v14 = 4 * *(a1 + 400);
    v15 = a1 + 102;
    do
    {
      *v15 = *v12 + v13;
      v15 += 3;
      v13 += v14;
      --v5;
    }

    while (v5);
    v16 = 0;
    do
    {
      cstdlib_memcpy(v28, v10, 8 * *(a1 + 398));
      v17 = *(a1 + 398);
      if (*(a1 + 398))
      {
        v18 = 0;
        do
        {
          v19 = v28[v18];
          *(v11[3 * v16] + 4 * v18++) = v19;
        }

        while (v17 != v18);
      }

      v20 = &v10[8 * v17];
      cstdlib_memcpy(v28, v20, 8 * *(a1 + 400));
      v21 = *(a1 + 400);
      if (*(a1 + 400))
      {
        v22 = 0;
        do
        {
          v23 = v28[v22];
          *(v11[3 * v16 + 1] + 4 * v22++) = v23;
        }

        while (v21 != v22);
      }

      v24 = &v20[8 * v21];
      cstdlib_memcpy(&v27, v24, 8uLL);
      v10 = v24 + 8;
      v25 = v27;
      *&v11[3 * v16++ + 2] = v25;
    }

    while (v16 < *(a1 + 198));
  }

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

void *BET3FXD__DeInitTreeSet(void *result, char *__b)
{
  if (__b)
  {
    v3 = result;
    for (i = 104; i != 184; i += 8)
    {
      v5 = *&__b[i];
      if (v5)
      {
        heap_Free(*(v3 + 8), v5);
      }
    }

    return cstdlib_memset(__b, 0, 0xD0uLL);
  }

  return result;
}

uint64_t BET3FXD__LoadTreesFile(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v29 = 0;
  v9 = *a4;
  if (a4[4] - v9 >= 8 && *(*(a4 + 1) + v9) == 48)
  {
    *a4 = v9 + 2;
    v12 = a2 + 2 * a3;
    v13 = a3;
    if (BET3FXD__xfread_BET3((v12 + 184), 2u, 1, a4) == 1 && BET3FXD__xfread_BET3(&v29, 2u, 1, a4) == 1 && BET3FXD__xfread_BET3((a2 + 2 * v13), 2u, 1, a4) == 1)
    {
      v14 = BET3FXD__xfread2ptr_BET3((a2 + 8 * v13 + 24), 1u, v29, a4);
      if (v14 == v29)
      {
        if (*a4)
        {
          ++*a4;
        }

        v15 = heap_Calloc(*(v8 + 8), 16, *(v12 + 184));
        v21 = a2 + 104;
        *(a2 + 104 + 8 * v13) = v15;
        if (!v15)
        {
          BET3FXD__log_select_Error(v8, 55000, "LoadTreesFile : out of memory for type %s\n", v16, v17, v18, v19, v20);
          return 2229280778;
        }

        if (!*(v12 + 184))
        {
          return 0;
        }

        v22 = 0;
        v23 = 0;
        while (BET3FXD__xfread_BET3((v15 + v22), 2u, 1, a4) == 1)
        {
          if (BET3FXD__xfread_BET3((*(v21 + 8 * v13) + v22 + 2), 2u, 1, a4) != 1)
          {
            break;
          }

          v24 = BET3FXD__xfread2ptr_BET3((*(v21 + 8 * v13) + v22 + 8), 2u, 3 * *(*(v21 + 8 * v13) + v22 + 2), a4);
          v15 = *(v21 + 8 * v13);
          if (v24 != 3 * *(v15 + v22 + 2))
          {
            break;
          }

          v25 = 0;
          ++v23;
          v22 += 16;
          if (v23 >= *(v12 + 184))
          {
            return v25;
          }
        }

        v25 = 2229280772;
        v26 = "LoadTreesFile : corrupt tree nodes for type %s, state %u\n";
        a1 = v8;
        v27 = 55015;
      }

      else
      {
        v25 = 2229280772;
        v26 = "LoadTreesFile : corrupt tree questions for type %s\n";
        a1 = v8;
        v27 = 55013;
      }
    }

    else
    {
      v25 = 2229280772;
      v26 = "LoadTreesFile : corrupt tree header for type %s\n";
      a1 = v8;
      v27 = 55012;
    }
  }

  else
  {
    v25 = 2229280772;
    v26 = "LoadTreesFile : invalid tree data version for type %s\n";
    v27 = 55011;
  }

  BET3FXD__log_select_Error(a1, v27, v26, a4, a5, a6, a7, a8);
  return v25;
}

uint64_t BET3FXD__TreeSearch(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  LOWORD(v5) = 0;
  v6 = a3 + 8 * a4;
  v7 = *(v6 + 24);
  v8 = *(*(v6 + 104) + 16 * a5 + 8);
  v9 = a2 + 2;
  v10 = a2 + 1;
  do
  {
    v11 = (v8 + 6 * -v5);
    v12 = (v7 + *v11);
    v13 = *v12;
    v14 = v12[1];
    v5 = v11[1];
    if (v13 <= 0xFC)
    {
      if (v13 == 3)
      {
        v16 = *(*(a1 + 1784) + 2 * a2);
        v17 = v16 > 0x19;
        v15 = 10 * v16;
        if (v17)
        {
          v15 = -1;
        }

        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      if (v13 != 252)
      {
        v18 = *(a1 + 16 + 8 * *v12);
        if (!v18)
        {
          continue;
        }

        v15 = *(v18 + a2);
        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      if (a2 < 2)
      {
LABEL_19:
        v15 = -1;
        if (!v12[1])
        {
          continue;
        }

        goto LABEL_27;
      }

      v15 = *(*(a1 + 32) + a2 - 2);
      if (!v12[1])
      {
        continue;
      }
    }

    else if (v13 == 253)
    {
      if (a2 < 1)
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + a2 - 1);
      if (!v12[1])
      {
        continue;
      }
    }

    else if (v13 == 254)
    {
      if (v10 >= *(a1 + 10))
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + v10);
      if (!v12[1])
      {
        continue;
      }
    }

    else
    {
      if (v9 >= *(a1 + 10))
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 32) + v9);
      if (!v12[1])
      {
        continue;
      }
    }

LABEL_27:
    v19 = v12 + 2;
    if (v14 == 255)
    {
      if (*v19 <= v15 && v12[3] >= v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = v14 - 1;
      if (v14 != 1)
      {
        v21 = 0;
        while (1)
        {
          v22 = (v20 + v21) / 2;
          v23 = v19[v22];
          if (v23 == v15)
          {
            break;
          }

          if (v15 < v23)
          {
            v20 = v22 - 1;
          }

          else
          {
            v21 = v22 + 1;
          }

          if (v21 > v20)
          {
            goto LABEL_40;
          }
        }

LABEL_33:
        v5 = v11[2];
        continue;
      }

      if (*v19 == v15)
      {
        goto LABEL_33;
      }
    }

LABEL_40:
    ;
  }

  while ((v5 & 0x8000) != 0);
  return v5;
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