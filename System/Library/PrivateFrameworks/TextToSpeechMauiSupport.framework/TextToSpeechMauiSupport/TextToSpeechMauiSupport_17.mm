uint64_t fe_depes_InitModule(char *a1, int a2, char *a3, _WORD *a4)
{
  v8 = 2305826826;
  v9 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v9 & 0x80000000) == 0)
  {
    inited = v9;
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_InitModule", v10, v11, v12, v37);
    *a4 = 0;
    v14 = *(a1 + 9);
    if (v14)
    {
      v15 = *(a1 + 18);
      if (!v15)
      {
        goto LABEL_18;
      }

      inited = hlp_InitData(a1, *a1, a3, 1, a1 + 200, v14, *(a1 + 34), v15);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_43;
      }

      v20 = *(a1 + 18);
      if (*a4)
      {
        if (*a4 != *(v20 + 24))
        {
          goto LABEL_19;
        }

        v21 = *(v20 + 24);
      }

      else
      {
        v21 = *(v20 + 24);
      }

      *a4 = v21;
      *(v20 + 184) = a1 + 186;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(a1 + 10);
    if (!v22)
    {
LABEL_22:
      v26 = heap_Calloc(*(*a1 + 8), v21, 8);
      *(a1 + 20) = v26;
      v27 = *a1;
      if (!v26)
      {
        v25 = 42000;
LABEL_42:
        log_OutPublic(v27[4], "FE_DEPES", v25, 0, v16, v17, v18, v19, v38);
        inited = v8;
        goto LABEL_43;
      }

      v28 = heap_Calloc(v27[1], *a4, 8);
      *(a1 + 21) = v28;
      if (v28)
      {
        v29 = *a4;
        *(a1 + 92) = *a4;
        if (v29 >= 1)
        {
          v30 = 0;
          do
          {
            *(*(a1 + 20) + 8 * v30) = 0;
            *(*(a1 + 20) + 8 * v30) = heap_Alloc(*(*a1 + 8), 3172);
            if (!*(*(a1 + 20) + 8 * v30))
            {
              goto LABEL_39;
            }

            *(*(a1 + 21) + 8 * v30) = 0;
            *(*(a1 + 21) + 8 * v30) = heap_Alloc(*(*a1 + 8), 12688);
            if (!*(*(a1 + 21) + 8 * v30))
            {
              goto LABEL_39;
            }

            if (*(a1 + 9))
            {
              *(*(*(a1 + 18) + 1496) + 8 * v30) = *(*(a1 + 20) + 8 * v30);
              *(*(*(a1 + 18) + 1504) + 8 * v30) = *(*(a1 + 21) + 8 * v30);
            }

            if (*(a1 + 10))
            {
              *(*(*(a1 + 19) + 1496) + 8 * v30) = *(*(a1 + 20) + 8 * v30);
              *(*(*(a1 + 19) + 1504) + 8 * v30) = *(*(a1 + 21) + 8 * v30);
            }
          }

          while (++v30 < *(a1 + 92));
        }

        v35 = heap_Calloc(*(*a1 + 8), 3172, 1);
        *(a1 + 22) = v35;
        if (!v35)
        {
LABEL_39:
          log_OutPublic(*(*a1 + 32), "FE_DEPES", 42000, 0, v31, v32, v33, v34, v38);
          return v8;
        }

        if (*(a1 + 9))
        {
          *(*(a1 + 18) + 1560) = v35;
        }

        if (*(a1 + 10))
        {
          *(*(a1 + 19) + 1560) = v35;
        }

LABEL_44:
        log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_InitModule", v32, v33, v34, v38);
        return inited;
      }

      v25 = 42000;
LABEL_41:
      v27 = *a1;
      goto LABEL_42;
    }

    v23 = *(a1 + 19);
    if (v23)
    {
      inited = hlp_InitData(a1, *a1, a3, 0, a1 + 456, v22, *(a1 + 35), v23);
      if ((inited & 0x80000000) == 0)
      {
        v24 = *(a1 + 19);
        if (!*a4)
        {
          v21 = *(v24 + 24);
          goto LABEL_21;
        }

        if (*a4 == *(v24 + 24))
        {
          v21 = *(v24 + 24);
LABEL_21:
          *a4 = v21;
          *(v24 + 184) = a1 + 186;
          goto LABEL_22;
        }

LABEL_19:
        v8 = 2305826841;
        v25 = 42003;
        goto LABEL_41;
      }

LABEL_43:
      fe_depes_ExitModule(a1, a2);
      goto LABEL_44;
    }

LABEL_18:
    inited = 2305826823;
    goto LABEL_43;
  }

  return 2305826824;
}

uint64_t fe_depes_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((result & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (a1)
  {
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ObjClose", v5, v6, v7, v15);
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    fe_depes_ExitModule(a1, a2);
    v11 = a1[18];
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
      a1[18] = 0;
    }

    v12 = a1[19];
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
      a1[19] = 0;
    }

    v13 = a1[9];
    if (v13)
    {
      brk_DataClose(*(*a1 + 24), v13);
      a1[9] = 0;
    }

    v14 = a1[10];
    if (v14)
    {
      brk_DataClose(*(*a1 + 24), v14);
      a1[10] = 0;
    }

    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ObjClose", v8, v9, v10, v16);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_depes_ObjReopen(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  inited = 2305826826;
  HIWORD(v31) = 0;
  cstdlib_strcpy(__dst, "");
  LngBrokerString = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((LngBrokerString & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (!a1)
  {
    return LngBrokerString;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ObjReopen", v6, v7, v8, v31);
  fe_depes_ExitModule(a1, a2);
  v9 = *(a1 + 144);
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
    *(a1 + 144) = 0;
  }

  v10 = *(a1 + 152);
  if (v10)
  {
    heap_Free(*(*a1 + 8), v10);
    *(a1 + 152) = 0;
  }

  v12 = (a1 + 72);
  v11 = *(a1 + 72);
  if (v11)
  {
    brk_DataClose(*(*a1 + 24), v11);
    *(a1 + 72) = 0;
  }

  v14 = (a1 + 80);
  v13 = *(a1 + 80);
  if (v13)
  {
    brk_DataClose(*(*a1 + 24), v13);
  }

  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 186) = 3172;
  *(a1 + 192) = 0;
  *v12 = 0;
  *(a1 + 80) = 0;
  if ((hlp_CreateLngBrokerString(*a1, __dst, 0) & 0x80000000) != 0 || (hlp_OpenData(*a1, __dst, (a1 + 72), (a1 + 136)) & 0x80000000) != 0 || !*v12)
  {
    LngBrokerString = hlp_CreateLngBrokerString(*a1, __dst, 1);
    if ((LngBrokerString & 0x80000000) != 0)
    {
      return LngBrokerString;
    }

    LngBrokerString = hlp_OpenData(*a1, __dst, (a1 + 72), (a1 + 136));
    if ((LngBrokerString & 0x80000000) != 0)
    {
      return LngBrokerString;
    }
  }

  cstdlib_strcpy((a1 + 200), __dst);
  if ((hlp_CreateVoiceBrokerString_0(*a1, __dst, 0, 0) & 0x80000000) != 0 || (hlp_OpenData(*a1, __dst, (a1 + 80), (a1 + 140)) & 0x80000000) != 0 || !*v14)
  {
    LngBrokerString = hlp_CreateVoiceBrokerString_0(*a1, __dst, 1, 1);
    if ((LngBrokerString & 0x80000000) != 0)
    {
      return LngBrokerString;
    }

    if ((hlp_OpenData(*a1, __dst, (a1 + 80), (a1 + 140)) & 0x80000000) != 0 || !*v14)
    {
      LngBrokerString = hlp_CreateVoiceBrokerString_0(*a1, __dst, 1, 0);
      if ((LngBrokerString & 0x80000000) != 0)
      {
        return LngBrokerString;
      }

      LngBrokerString = hlp_OpenData(*a1, __dst, (a1 + 80), (a1 + 140));
      if ((LngBrokerString & 0x80000000) != 0)
      {
        return LngBrokerString;
      }
    }
  }

  cstdlib_strcpy((a1 + 456), __dst);
  if (!*(a1 + 72))
  {
    if (!*v14)
    {
      log_OutPublic(*(*a1 + 32), "FE_DEPES", 42002, 0, v15, v16, v17, v18, v31);
      return 2305826819;
    }

    goto LABEL_32;
  }

  v19 = heap_Calloc(*(*a1 + 8), 1, 2136);
  *(a1 + 144) = v19;
  if (!v19)
  {
    goto LABEL_36;
  }

  *(v19 + 1560) = 0;
  *(v19 + 1496) = 0u;
  *(v19 + 1512) = 0u;
  *(v19 + 1528) = *(*a1 + 8);
  *(v19 + 1536) = *(a1 + 48);
  v24 = *(a1 + 144);
  *(v24 + 1552) = *(a1 + 64);
  *v24 = 0;
  *(v24 + 2120) = 0u;
  if (*(a1 + 80))
  {
LABEL_32:
    v26 = heap_Calloc(*(*a1 + 8), 1, 2136);
    *(a1 + 152) = v26;
    if (v26)
    {
      *(v26 + 1560) = 0;
      *(v26 + 1496) = 0u;
      *(v26 + 1512) = 0u;
      *(v26 + 1528) = *(*a1 + 8);
      *(v26 + 1536) = *(a1 + 48);
      v27 = *(a1 + 152);
      *(v27 + 1552) = *(a1 + 64);
      *v27 = 0;
      *(v27 + 2120) = 0u;
      goto LABEL_34;
    }

LABEL_36:
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42000, 0, v20, v21, v22, v23, v31);
    return inited;
  }

LABEL_34:
  inited = fe_depes_InitModule(a1, a2, "fe_depes", &v31 + 3);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ObjReopen", v28, v29, v30, v31);
  }

  return inited;
}

uint64_t fe_depes_ExitModule(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) != 0)
  {
    return 2305826824;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ExitModule", v3, v4, v5, v19);
  v9 = a1[20];
  if (v9)
  {
    if (*(a1 + 92) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(a1[20] + 8 * v10);
        if (v11)
        {
          heap_Free(*(*a1 + 8), v11);
          *(a1[20] + 8 * v10) = 0;
        }

        if (a1[9])
        {
          *(*(a1[18] + 1496) + 8 * v10) = 0;
        }

        if (a1[10])
        {
          *(*(a1[19] + 1496) + 8 * v10) = 0;
        }

        ++v10;
      }

      while (v10 < *(a1 + 92));
      v9 = a1[20];
    }

    heap_Free(*(*a1 + 8), v9);
    a1[20] = 0;
  }

  v12 = a1[21];
  if (v12)
  {
    if (*(a1 + 92) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(a1[21] + 8 * v13);
        if (v14)
        {
          heap_Free(*(*a1 + 8), v14);
          *(a1[21] + 8 * v13) = 0;
        }

        if (a1[9])
        {
          *(*(a1[18] + 1504) + 8 * v13) = 0;
        }

        if (a1[10])
        {
          *(*(a1[19] + 1504) + 8 * v13) = 0;
        }

        ++v13;
      }

      while (v13 < *(a1 + 92));
      v12 = a1[21];
    }

    heap_Free(*(*a1 + 8), v12);
    a1[21] = 0;
  }

  v15 = a1[22];
  if (v15)
  {
    heap_Free(*(*a1 + 8), v15);
    a1[22] = 0;
  }

  if (a1[9])
  {
    hlp_ExitData(a1[2], a1[3], a1[4], a1[5], a1[18], a1[11], a1[14], a1[13]);
    v16 = a1[18];
    if (v16)
    {
      *v16 = 0;
    }

    a1[13] = 0;
    a1[14] = 0;
  }

  if (a1[10])
  {
    hlp_ExitData(a1[2], a1[3], a1[4], a1[5], a1[19], a1[12], a1[16], a1[15]);
    v17 = a1[19];
    if (v17)
    {
      *v17 = 0;
    }

    a1[15] = 0;
    a1[16] = 0;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ExitModule", v6, v7, v8, v20);
  return 0;
}

uint64_t hlp_InitData(uint64_t a1, uint64_t *a2, char *a3, int a4, const char *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v9 = a7;
  v86 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = 0;
  v82 = 0;
  __dst = 0;
  *(a8 + 260) = a2;
  v16 = brk_DataMap(a2[3], a6, 72, a7, &v84);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = LH_stricmp(v84, a3);
  v18 = 0;
  v19 = 0;
  v20 = v9 != 0;
  if (v9 && v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v21 = cstdlib_strlen(&v84[v18]);
      v19 += v21 + ((~v21 - v19) & 3) + 9;
      v18 = v19;
      v22 = LH_stricmp(&v84[v19], a3);
      v20 = v19 < v9;
    }

    while (v19 < v9 && v22 != 0);
  }

  if (!v20)
  {
    brk_DataUnmap(a2[3], a6, v84);
    return 2305826820;
  }

  v24 = cstdlib_strlen(&v84[v18]);
  v25 = &v84[v19 + 1 + v24 + ((~v24 - v19) & 3)];
  __dst = *v25;
  v26 = v25[1];
  brk_DataUnmap(a2[3], a6, v84);
  v16 = brk_DataMapRefCnt(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a5, __dst, v26, &v83);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v27 = v83;
  v28 = 88;
  if (!a4)
  {
    v28 = 96;
  }

  *(a1 + v28) = v83;
  v29 = *(v27 + 264);
  v30 = 2305826825;
  v84 = v29;
  *a8 = v29;
  if (v26 >= 4)
  {
    cstdlib_memcpy(a8 + 2, v29, 4uLL);
    v31 = a8[2];
    if (v31 + 4 <= v26)
    {
      v32 = v84;
      *(a8 + 2) = v84 + 4;
      v33 = (v31 + 7) & 0xFFFFFFFC;
      if (v33 + 4 <= v26)
      {
        cstdlib_memcpy(&__dst, &v32[v33], 4uLL);
        *(a8 + 12) = __dst;
        v34 = (v33 + 7) & 0xFFFFFFFC;
        if (v34 + 4 <= v26)
        {
          cstdlib_memcpy(a8 + 7, &v84[v34], 4uLL);
          v35 = (v34 + 7) & 0xFFFFFFFC;
          if (v35 + 4 <= v26)
          {
            cstdlib_memcpy(a8 + 8, &v84[v35], 4uLL);
            v36 = (v35 + 7) & 0xFFFFFFFC;
            if (v36 + 4 <= v26)
            {
              cstdlib_memcpy(a8 + 9, &v84[v36], 4uLL);
              v37 = (v36 + 7) & 0xFFFFFFFC;
              if (v37 + 4 <= v26)
              {
                cstdlib_memcpy(a8 + 10, &v84[v37], 4uLL);
                v38 = (v37 + 7) & 0xFFFFFFFC;
                if (v38 + 4 <= v26)
                {
                  cstdlib_memcpy(&__dst, &v84[v38], 4uLL);
                  *(a8 + 23) = __dst;
                  v39 = (v38 + 7) & 0xFFFFFFFC;
                  if (v39 + 4 <= v26)
                  {
                    cstdlib_memcpy(&__dst, &v84[v39], 4uLL);
                    *(a8 + 22) = __dst;
                    v40 = (v39 + 7) & 0xFFFFFFFC;
                    v41 = v40 + 4;
                    if (v40 + 4 <= v26)
                    {
                      cstdlib_memcpy(a8 + 12, &v84[v40], 4uLL);
                      v42 = a8[7];
                      v43 = v42 + v41;
                      if (v42 + v41 <= v26)
                      {
                        *(a8 + 7) = &v84[v41];
                        v44 = heap_Alloc(a2[1], 8 * v42);
                        *(a8 + 190) = v44;
                        if (!v44)
                        {
                          goto LABEL_61;
                        }

                        v49 = a8[7];
                        if (v49 >= 1)
                        {
                          LOWORD(v50) = 0;
                          do
                          {
                            v50 = v50;
                            if (v43 + 1 <= v26)
                            {
                              *(v44 + 8 * v50) = &v84[v43];
                              v44 = *(a8 + 190);
                              ++v43;
                            }

                            if (**(v44 + 8 * v50))
                            {
                                ;
                              }
                            }

                            LOWORD(v50) = v50 + 1;
                          }

                          while (v49 > v50);
                        }

                        v52 = (v43 + 1) & 0xFFFFFFFE;
                        v53 = v52 + 2 * v49;
                        if (v53 <= v26)
                        {
                          v54 = v84;
                          *(a8 + 8) = &v84[v52];
                          v55 = v53 + 2 * v49;
                          if (v55 <= v26)
                          {
                            *(a8 + 9) = &v54[v53];
                            v56 = v55 + (a8[8] << 8);
                            if (v56 <= v26)
                            {
                              *(a8 + 10) = &v54[v55];
                              v57 = a8[9];
                              v58 = v56 + (v57 << 8);
                              if (v58 <= v26)
                              {
                                *(a8 + 11) = &v54[v56];
                                v59 = v58 + (v57 << 8);
                                if (v59 <= v26)
                                {
                                  *(a8 + 12) = &v54[v58];
                                  v60 = v59 + 2 * (*(a8 + 23) & 0x7FFF);
                                  if (v60 <= v26)
                                  {
                                    *(a8 + 13) = &v54[v59];
                                    v61 = *(a8 + 22);
                                    v62 = (v60 + 3) & 0xFFFFFFFC;
                                    v63 = v62 + 4 * (v61 & 0x3FFF);
                                    if (v63 <= v26)
                                    {
                                      *(a8 + 14) = &v54[v62];
                                      v64 = v63 + v61;
                                      if (v63 + v61 <= v26)
                                      {
                                        *(a8 + 15) = &v54[v63];
                                        v65 = v64 + v61;
                                        if (v64 + v61 <= v26)
                                        {
                                          *(a8 + 16) = &v54[v64];
                                          v66 = v65 + v61;
                                          if (v65 + v61 <= v26)
                                          {
                                            *(a8 + 17) = &v54[v65];
                                            v67 = v66 + v61;
                                            if (v66 + v61 <= v26)
                                            {
                                              *(a8 + 18) = &v54[v66];
                                              v68 = v67 + v61;
                                              if (v67 + v61 <= v26)
                                              {
                                                *(a8 + 19) = &v54[v67];
                                                v69 = v68 + v61;
                                                if (v68 + v61 <= v26)
                                                {
                                                  *(a8 + 20) = &v54[v68];
                                                  v70 = v69 + v61;
                                                  if (v70 <= v26)
                                                  {
                                                    *(a8 + 21) = &v54[v69];
                                                    if (a8[12] + v70 <= v26)
                                                    {
                                                      *(a8 + 22) = &v54[v70];
                                                      v71 = heap_Calloc(a2[1], *(a8 + 12), 8);
                                                      *(a8 + 187) = v71;
                                                      if (v71)
                                                      {
                                                        v72 = heap_Calloc(a2[1], *(a8 + 12), 8);
                                                        *(a8 + 188) = v72;
                                                        if (v72)
                                                        {
                                                          v73 = heap_Calloc(a2[1], (*(a8 + 12) + 1), 2);
                                                          *(a8 + 177) = v73;
                                                          if (v73)
                                                          {
                                                            v74 = heap_Alloc(a2[1], 5 * (*(a8 + 23) + 1));
                                                            *(a8 + 189) = v74;
                                                            v75 = a2[4];
                                                            if (v74)
                                                            {
                                                              *(a8 + 1044) = log_GetLogLevel(v75);
                                                              cstdlib_strcpy(__s1, a5);
                                                              cstdlib_strcat(__s1, "new_feature_feat");
                                                              v16 = hlp_SetupNewFeatRefCnt(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), __s1, *(a8 + 10), a8[8], &v82);
                                                              if ((v16 & 0x80000000) == 0)
                                                              {
                                                                v76 = v82;
                                                                *(a8 + 265) = *(v82 + 272);
                                                                v77 = 112;
                                                                if (!a4)
                                                                {
                                                                  v77 = 128;
                                                                }

                                                                *(a1 + v77) = v76;
                                                                cstdlib_strcpy(__s1, a5);
                                                                cstdlib_strcat(__s1, "new_feature_efeat");
                                                                v30 = hlp_SetupNewFeatRefCnt(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), __s1, *(a8 + 11), a8[9], &v82);
                                                                if ((v30 & 0x80000000) == 0)
                                                                {
                                                                  v78 = v82;
                                                                  *(a8 + 266) = *(v82 + 272);
                                                                  if (a4)
                                                                  {
                                                                    *(a1 + 104) = v78;
                                                                  }

                                                                  else
                                                                  {
                                                                    *(a1 + 120) = v78;
                                                                  }
                                                                }

                                                                return v30;
                                                              }

                                                              return v16;
                                                            }

LABEL_62:
                                                            log_OutPublic(v75, "FE_DEPES", 42000, 0, v45, v46, v47, v48, v80);
                                                            return 2305826826;
                                                          }
                                                        }
                                                      }

LABEL_61:
                                                      v75 = a2[4];
                                                      goto LABEL_62;
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

  return v30;
}

uint64_t fe_depes_SetLayerUtf8(__int16 *a1, int a2, signed int a3, const void *a4, int a5)
{
  v10 = 2305826823;
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (!a4 || a3 >= a1[92])
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0, v11, v12, v13, v14, v16);
    return v10;
  }

  return fe_depes_SetLayerExUtf8(a1, a2, a3, a4, a5);
}

uint64_t fe_depes_SetLayerExUtf8(uint64_t a1, int a2, unsigned int a3, const void *a4, int a5)
{
  LODWORD(v5) = a5;
  v9 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v9 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v13 = v9;
  if (a4 && (v14 = *(a1 + 184), a3 < v14))
  {
    if (v5 >= 0x2710)
    {
      v5 = 10000;
    }

    else
    {
      v5 = v5;
    }

    v15 = (3 * v5);
    if (v15 > *(a1 + 186))
    {
      if (v14 > 0)
      {
        v16 = 0;
        do
        {
          v17 = heap_Realloc(*(*a1 + 8), *(*(a1 + 160) + 8 * v16), (3 * v5));
          if (!v17)
          {
            goto LABEL_40;
          }

          *(*(a1 + 160) + 8 * v16) = v17;
          if (*(a1 + 72))
          {
            *(*(*(a1 + 144) + 1496) + 8 * v16) = *(*(a1 + 160) + 8 * v16);
          }

          if (*(a1 + 80))
          {
            *(*(*(a1 + 152) + 1496) + 8 * v16) = *(*(a1 + 160) + 8 * v16);
          }

          if (v15 > *(a1 + 186))
          {
            v22 = *(a1 + 186);
            do
            {
              *(*(*(a1 + 160) + 8 * v16) + v22++) = 32;
            }

            while (v15 != v22);
          }

          v23 = heap_Realloc(*(*a1 + 8), *(*(a1 + 168) + 8 * v16), 4 * (3 * v5));
          if (!v23)
          {
            goto LABEL_40;
          }

          *(*(a1 + 168) + 8 * v16) = v23;
          if (*(a1 + 72))
          {
            *(*(*(a1 + 144) + 1504) + 8 * v16) = *(*(a1 + 168) + 8 * v16);
          }

          if (*(a1 + 80))
          {
            *(*(*(a1 + 152) + 1504) + 8 * v16) = *(*(a1 + 168) + 8 * v16);
          }

          if (v15 > *(a1 + 186))
          {
            memset_pattern16((*(*(a1 + 168) + 8 * v16) + 4 * *(a1 + 186)), &unk_26ECDAA20, 4 * (v15 + ~*(a1 + 186)) + 4);
          }
        }

        while (++v16 < *(a1 + 184));
      }

      v24 = heap_Realloc(*(*a1 + 8), *(a1 + 176), (3 * v5));
      if (!v24)
      {
LABEL_40:
        log_OutPublic(*(*a1 + 32), "FE_DEPES", 42000, 0, v18, v19, v20, v21, v29);
        return 2305826826;
      }

      *(a1 + 176) = v24;
      if (*(a1 + 72))
      {
        *(*(a1 + 144) + 1560) = v24;
      }

      if (*(a1 + 80))
      {
        *(*(a1 + 152) + 1560) = v24;
      }

      if (v15 > *(a1 + 186))
      {
        v25 = *(a1 + 186);
        do
        {
          *(*(a1 + 176) + v25++) = 0;
        }

        while (v15 != v25);
      }

      *(a1 + 186) = 3 * v5;
    }

    cstdlib_memcpy(*(*(a1 + 160) + 8 * a3), a4, v5);
    cstdlib_memset((*(*(a1 + 160) + 8 * a3) + v5), 32, *(a1 + 186) - v5);
    if (a3)
    {
      v26 = *(a1 + 188);
      if (v26 >= Utf8_LengthInUtf8chars(*(*(a1 + 160) + 8 * a3), v5))
      {
        return v13;
      }
    }

    else if (*(a1 + 184) >= 2u)
    {
      v27 = 1;
      do
      {
        cstdlib_memset(*(*(a1 + 160) + 8 * v27++), 32, *(a1 + 186));
      }

      while (v27 < *(a1 + 184));
    }

    *(a1 + 188) = Utf8_LengthInUtf8chars(*(*(a1 + 160) + 8 * a3), v5);
  }

  else
  {
    log_OutText(*(*a1 + 32), "FE_DEPES", 5, 0, "Layer %d not defined in depes grammar", v10, v11, v12, a3 + 1);
  }

  return v13;
}

uint64_t fe_depes_SetMarker(uint64_t a1, int a2, const void *a3, int a4)
{
  LODWORD(v4) = a4;
  v7 = 2305826823;
  v8 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v8 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (v4 >= 0x2710)
  {
    v4 = 10000;
  }

  else
  {
    v4 = v4;
  }

  if (a3 && *(a1 + 188) >= v4)
  {
    v13 = v8;
    cstdlib_memcpy(*(a1 + 176), a3, v4);
    cstdlib_memset((*(a1 + 176) + v4), 0, *(a1 + 186) - v4);
    return v13;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0, v9, v10, v11, v12, v15);
  }

  return v7;
}

uint64_t fe_depes_GetLayerUtf8(uint64_t a1, int a2, unsigned int a3, void *a4, _WORD *a5)
{
  v9 = 2305826823;
  v10 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v10 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (a4 && a3 < *(a1 + 184))
  {
    v15 = v10;
    *a5 = Utf8_LengthInBytes(*(*(a1 + 160) + 8 * a3), *(a1 + 188));
    *a4 = *(*(a1 + 160) + 8 * a3);
    return v15;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0, v11, v12, v13, v14, v17);
  }

  return v9;
}

uint64_t fe_depes_GetNrLayers(uint64_t a1, int a2, _WORD *a3)
{
  result = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((result & 0x80000000) != 0)
  {
    return 2305826824;
  }

  *a3 = *(a1 + 184);
  return result;
}

uint64_t fe_depes_GetMarker(uint64_t a1, int a2, void *a3, _WORD *a4)
{
  v7 = 2305826823;
  v8 = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((v8 & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (a3)
  {
    *a4 = *(a1 + 188);
    *a3 = *(a1 + 176);
    return v8;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DEPES", 42001, 0, v9, v10, v11, v12, v14);
  }

  return v7;
}

double hlp_ExitData(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v23 = 0;
  if (a5 && (InitRsrcFunction(a1, a2, &v23) & 0x80000000) == 0 && (InitRsrcFunction(a3, a4, &v22) & 0x80000000) == 0)
  {
    if (*a5)
    {
      brk_DataMapDeRefCnt(a1, a2, a3, a4, a6);
    }

    v17 = *(a5 + 1496);
    if (v17)
    {
      heap_Free(*(v23 + 8), v17);
      *(a5 + 1496) = 0;
    }

    v18 = *(a5 + 1504);
    if (v18)
    {
      heap_Free(*(v23 + 8), v18);
      *(a5 + 1504) = 0;
    }

    v19 = *(a5 + 1416);
    if (v19)
    {
      heap_Free(*(v23 + 8), v19);
      *(a5 + 1416) = 0;
    }

    v20 = *(a5 + 1512);
    if (v20)
    {
      heap_Free(*(v23 + 8), v20);
      *(a5 + 1512) = 0;
    }

    v21 = *(a5 + 1520);
    if (v21)
    {
      heap_Free(*(v23 + 8), v21);
      *(a5 + 1520) = 0;
    }

    hlp_SetupNewFeatDeRefCnt(a1, a2, a3, a4, a7);
    hlp_SetupNewFeatDeRefCnt(a1, a2, a3, a4, a8);
    result = 0.0;
    *(a5 + 2120) = 0u;
  }

  return result;
}

uint64_t fe_depes_ExistModule(void *a1, int a2, char *a3)
{
  v15 = 0;
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ExistModule for %s", v5, v6, v7, a3);
    if (a1[10])
    {
      exist = hlp_ExistModule(a3, a1[19], &v15);
      if (exist || !a1[9])
      {
        if (exist)
        {
          v12 = 1;
LABEL_12:
          log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ExistModule", v8, v9, v10, v14);
          return v12;
        }

        goto LABEL_11;
      }
    }

    else if (!a1[9])
    {
      goto LABEL_11;
    }

    if (hlp_ExistModule(a3, a1[18], &v15))
    {
      v12 = 2;
      goto LABEL_12;
    }

LABEL_11:
    log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Module sequence not found", v8, v9, v10, v14);
    v12 = 0;
    goto LABEL_12;
  }

  return 0;
}

BOOL hlp_ExistModule(char *a1, uint64_t a2, unsigned int *a3)
{
  *a3 = 0;
  for (i = *(a2 + 16); LH_stricmp(i, a1); i = (v10 + v11))
  {
    v7 = *a3;
    if (v7 >= *(a2 + 8))
    {
      break;
    }

    v8 = cstdlib_strlen((*(a2 + 16) + v7));
    v9 = *a3 + v8 + ((~v8 - *a3) & 3) + 1;
    *a3 = v9;
    v10 = *(a2 + 16);
    v11 = v9 + *(v10 + v9) + 4;
    *a3 = v11;
  }

  return *a3 < *(a2 + 8);
}

uint64_t fe_depes_ExecModule(uint64_t a1, int a2, char *a3)
{
  v5 = 2305826820;
  if ((safeh_HandleCheck(a1, a2, 62334, 712) & 0x80000000) != 0)
  {
    return 2305826824;
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Entering fe_depes_ExecModule for %s", v6, v7, v8, a3);
  if (*(a1 + 80))
  {
    v5 = hlp_ExecModule(a3, *(a1 + 152), (a1 + 188));
  }

  if (*(a1 + 72) && (v5 & 0x1FFF) == 4)
  {
    v5 = hlp_ExecModule(a3, *(a1 + 144), (a1 + 188));
  }

  if ((v5 & 0x80000000) != 0)
  {
    v13 = *(*a1 + 32);
    if ((v5 & 0x1FFF) == 4)
    {
      log_OutText(v13, "FE_DEPES", 4, 0, "Module sequence not found", v10, v11, v12, v16);
    }

    else
    {
      if ((v5 & 0x1FFF) == 0xA)
      {
        v14 = 42000;
      }

      else
      {
        v14 = 42005;
      }

      log_OutPublic(v13, "FE_DEPES", v14, 0, v9, v10, v11, v12, v16);
    }
  }

  log_OutText(*(*a1 + 32), "FE_DEPES", 4, 0, "Leaving fe_depes_ExecModule", v10, v11, v12, v16);
  return v5;
}

uint64_t hlp_ExecModule(char *a1, uint64_t a2, __int16 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0;
  if (!hlp_ExistModule(a1, a2, &v21))
  {
    return 2305826820;
  }

  v5 = v21;
  v6 = cstdlib_strlen((*(a2 + 16) + v21));
  v7 = v5 + v6 + ((~v6 - v5) & 3);
  v8 = *(a2 + 16);
  v9 = *(v8 + (v7 + 1));
  if (v9)
  {
    v10 = v7 + 5;
    v11 = v22;
    v12 = v9;
    do
    {
      *v11++ = *(v8 + v10++);
      --v12;
    }

    while (v12);
  }

  *(a2 + 1430) = 0;
  *(a2 + 1428) = 0;
  v13 = **(a2 + 184);
  *(a2 + 1410) = v13;
  if ((*(a2 + 24) & 0x80000000) == 0)
  {
    v14 = 0;
    v15 = *(a2 + 1416);
    do
    {
      *(v15 + 2 * v14++) = v13;
    }

    while (*(a2 + 24) >= v14);
  }

  cstdlib_memset(*(a2 + 1512), 0, (5 * *(a2 + 46) + 5));
  *(a2 + 1480) = 1;
  if (!v9)
  {
    return 0;
  }

  v16 = v9 - 1;
  v17 = v22;
  do
  {
    v18 = v16;
    v19 = *v17++;
    result = INFERENCE_MAIN(a2, v19, 1, a3);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v16 = v18 - 1;
  }

  while (v18);
  return result;
}

uint64_t fe_depes_SetcbInsMrk(uint64_t a1, int a2, int a3, int a4)
{
  result = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((result & 0x80000000) != 0)
  {
    return 2305826824;
  }

  if (a4 == 1)
  {
    *(a1 + 192) = a3;
  }

  else
  {
    *(a1 + 196) = a3;
  }

  return result;
}

uint64_t fe_depes_GetcbInsMrk(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  result = safeh_HandleCheck(a1, a2, 62334, 712);
  if ((result & 0x80000000) != 0)
  {
    return 2305826824;
  }

  v8 = 196;
  if (a4 == 1)
  {
    v8 = 192;
  }

  *a3 = *(a1 + v8);
  return result;
}

uint64_t hlp_Utf8HashCode(const char *a1, _WORD *a2)
{
  v6 = 0;
  v4 = cstdlib_strlen(a1);
  result = utf8_Utf8ToUtf32(a1, v4, 0, &v6 + 4, 1u, &v6, 0);
  if ((result & 0x80000000) == 0)
  {
    *a2 = BYTE4(v6) & 0x3F;
  }

  return result;
}

uint64_t hlp_SetupNewFeatDeRefCnt(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  result = InitRsrcFunction(a1, a2, &v11);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v10);
    if (a5)
    {
      if ((result & 0x80000000) == 0)
      {
        ObjcForThisApi = getObjcForThisApi(v11, v10);
        return objc_ReleaseObject(ObjcForThisApi, a5);
      }
    }
  }

  return result;
}

uint64_t fe_depes_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2305826817;
  }

  result = 0;
  *a2 = &IFeDepes;
  return result;
}

uint64_t hlp_SetupNewFeatRefCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  result = InitRsrcFunction(a1, a2, &v24);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v23);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_memset(&v19, 0, 0x30uLL);
      *&v19 = a1;
      *(&v19 + 1) = a2;
      *&v20 = a3;
      *(&v20 + 1) = a4;
      *&v21 = a6;
      DWORD2(v21) = a7;
      ObjcForThisApi = getObjcForThisApi(v24, v23);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a5, hlp_SetupNewFeat_ObjcLoad, hlp_SetupNewFeat_ObjcClose, &v19, &v22);
      if ((result & 0x80000000) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v22 + 32);
      }

      *a8 = v18;
    }
  }

  return result;
}

uint64_t hlp_SetupNewFeat_ObjcLoad(_WORD *a1, int a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v73 = *MEMORY[0x277D85DE8];
  __src = 0;
  v69 = 0;
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
  v44 = 0u;
  v45 = 0u;
  memset(__dst, 0, sizeof(__dst));
  inited = InitRsrcFunction(a1, a2, &__src);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v69);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  cstdlib_memcpy(__dst, __src, 0x1A0uLL);
  v9 = __src;
  v44 = *(v69 + 32);
  v10 = *(a5 + 32);
  v11 = *(a5 + 40);
  v12 = heap_Calloc(*(__src + 1), 1, 280);
  *(a4 + 32) = v12;
  if (!v12 || (*(*(a4 + 32) + 272) = heap_Alloc(v9[1], 8 * v11), v17 = *(a4 + 32), !*(v17 + 272)))
  {
LABEL_27:
    v27 = 2305826826;
    log_OutPublic(v9[4], "FE_DEPES", 42000, 0, v13, v14, v15, v16, v39);
    return v27;
  }

  if (v11)
  {
    v39 = a3;
    v18 = 0;
    v41 = v11;
LABEL_7:
    v19 = heap_Alloc(v9[1], 512);
    if (v19)
    {
      v11 = v19;
      v42 = v18;
      v20 = (v10 + (v18 << 8));
      memset(v72, 0, sizeof(v72));
      v21 = cstdlib_strlen(v20);
      v22 = 0;
      while (1)
      {
        v23 = heap_Alloc(v9[1], (v21 + 65));
        *(v72 + v22) = v23;
        if (!v23)
        {
          break;
        }

        *v23 = 0;
        v22 += 8;
        if (v22 == 512)
        {
          v40 = v10;
          v71 = 64;
          Utf8Symbol = utf8_GetUtf8Symbol(v20, 0, v21, __s2);
          if (Utf8Symbol)
          {
            v25 = Utf8Symbol;
            v26 = 0;
            while (1)
            {
              v27 = hlp_Utf8HashCode(__s2, &v71);
              if ((v27 & 0x80000000) != 0)
              {
                return v27;
              }

              cstdlib_strcat(*(v72 + v71), __s2);
              v26 += v25;
              v25 = utf8_GetUtf8Symbol(v20, v26, v21, __s2);
              if (!v25)
              {
                goto LABEL_17;
              }
            }
          }

          v27 = 0;
LABEL_17:
          v28 = heap_Alloc(v9[1], (v21 + 65));
          if (v28)
          {
            v29 = v28;
            v30 = 0;
            v31 = 0;
            *v28 = 0;
            do
            {
              v32 = &v29[v31];
              *(v11 + v30) = v32;
              v33 = *(v72 + v30);
              cstdlib_strcpy(v32, v33);
              v34 = cstdlib_strlen(v33);
              v29[(v31 + v34)] = 0;
              v31 += v34 + 1;
              v30 += 8;
            }

            while (v30 != 512);
            v35 = 0;
            v10 = v40;
            do
            {
              v36 = *(v72 + v35);
              if (v36)
              {
                heap_Free(v9[1], v36);
                *(v72 + v35) = 0;
              }

              v35 += 8;
            }

            while (v35 != 512);
            *(*(*(a4 + 32) + 272) + 8 * v42) = v11;
            v18 = v42 + 1;
            LODWORD(v11) = v41;
            if (v41 <= (v42 + 1))
            {
              v17 = *(a4 + 32);
              goto LABEL_30;
            }

            goto LABEL_7;
          }

          goto LABEL_27;
        }
      }
    }

    goto LABEL_27;
  }

  v27 = 0;
LABEL_30:
  *(v17 + 256) = v10;
  v38 = *(a4 + 32);
  *(v38 + 264) = v11;
  cstdlib_strcpy(v38, a3);
  return v27;
}

uint64_t hlp_SetupNewFeat_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v14 = 0;
  inited = InitRsrcFunction(a1, a2, &v14);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    v6 = v14;
    v7 = *(v5 + 272);
    if (v7)
    {
      v8 = *(v5 + 264);
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          v10 = *(v7 + 8 * i);
          if (v10)
          {
            v11 = 0;
            while (1)
            {
              v12 = *(v10 + v11);
              if (v12)
              {
                break;
              }

              v11 += 8;
              if (v11 == 512)
              {
                goto LABEL_11;
              }
            }

            heap_Free(*(v6 + 8), v12);
            *(v10 + v11) = 0;
LABEL_11:
            heap_Free(*(v6 + 8), v10);
          }
        }
      }

      heap_Free(*(v6 + 8), v7);
      v6 = v14;
    }

    heap_Free(*(v6 + 8), v5);
  }

  return inited;
}

uint64_t fe_depes_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2305826823;
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

unsigned __int8 **m2__fix__carray__len(unsigned __int8 **result, int *a2)
{
  if (*a2 <= 0)
  {
    v2 = *result;
    v3 = -1;
    do
    {
      v4 = *v2++;
      ++v3;
    }

    while (v4);
    *a2 = v3;
  }

  return result;
}

unsigned __int8 *m2__cp__str(unsigned __int8 *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    while (1)
    {
      v5 = *result++;
      v4 = v5;
      if (!v5)
      {
        break;
      }

      *a2++ = v4;
      if (!--v3)
      {
        return result;
      }
    }

    *a2 = 0;
  }

  return result;
}

char *m2__cp__arr(char *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ = v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t mosyntkbsymtab_WriteGraphSym(uint64_t a1, uint64_t a2, signed int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  kbsymtab_GraphSymString(a2, a3, v5, 0xC8uLL);
  return mosyntbase_WString(a1, v5, 200);
}

uint64_t mosyntkbsymtab_WritePhonSym(uint64_t a1, void *a2, unsigned int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  kbsymtab_PhonSymString(a2, a3, v5, 200);
  return mosyntbase_WString(a1, v5, 200);
}

uint64_t mosyntkbsymtab_WriteCons(uint64_t a1, void *a2, unsigned int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  kbsymtab_ConsSymString(a2, a3, v5, 200);
  return mosyntbase_WString(a1, v5, 200);
}

uint64_t mosyntkbsymtab_ConsFeatToComprConsFeatStr(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      v3 = *(a1 + i);
      if ((v3 - 40) < 2 || v3 == 44)
      {
        *(a1 + i) = 58;
      }

      else if (!*(a1 + i))
      {
        goto LABEL_10;
      }
    }

    LODWORD(i) = a2;
LABEL_10:
    if (i >= 2)
    {
      v4 = a1 + i;
      if (*(v4 - 2) == 40 && *(v4 - 1) == 41)
      {
        *(v4 - 2) = 0;
      }
    }
  }

  return 0;
}

uint64_t mosyntkbsymtab_ComprConsFeatToConsFeatStr(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = 0;
    v3 = 1;
    v4 = -1;
    LODWORD(v5) = a2;
    while (1)
    {
      if (*(a1 + v2) == 58)
      {
        if (v3)
        {
          v6 = 40;
        }

        else
        {
          v6 = 44;
        }

        *(a1 + v2) = v6;
        v4 = v2;
        v3 = 0;
      }

      else if (!*(a1 + v2))
      {
        LODWORD(v5) = v2;
        if ((v4 & 0x80000000) != 0)
        {
          goto LABEL_14;
        }

LABEL_19:
        v5 = v4;
        v7 = 41;
LABEL_20:
        *(a1 + v5) = v7;
        return 0;
      }

      if (a2 == ++v2)
      {
        if ((v4 & 0x80000000) != 0)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }
    }
  }

  LODWORD(v5) = 0;
LABEL_14:
  if (v5 + 2 < a2)
  {
    *(a1 + v5) = 10536;
    LODWORD(v5) = v5 + 2;
  }

  if (v5 < a2)
  {
    v7 = 0;
    v5 = v5;
    goto LABEL_20;
  }

  return 0;
}

uint64_t mosyntkbsymtab_AppDecomprConsToString(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, int a5, int *a6)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  kbsymtab_ConsSymString(a2, a3, v11, 200);
  mosyntkbsymtab_ComprConsFeatToConsFeatStr(v11, 200);
  return mosyntbase_App(a4, a5, a6, v11, 200, &v10);
}

uint64_t mosyntkbsymtab_AppConsFeatToString(uint64_t a1, void *a2, unsigned int a3, __int16 *a4, uint64_t a5, int a6, int *a7)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  kbsymtab_ConsSymString(a2, a3, v14, 200);
  result = mosyntbase_App(a5, a6, a7, v14, 200, &v13);
  if ((result & 0x80000000) == 0)
  {
    return AppFeatListToString(a2, a4, a5, a6, a7);
  }

  return result;
}

uint64_t AppFeatListToString(void *a1, __int16 *a2, uint64_t a3, int a4, int *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  result = mosyntbase_CApp(a3, a4, a5, "(", 0, &v14);
  if ((result & 0x80000000) == 0)
  {
    if (*a2 < 1)
    {
      return mosyntbase_CApp(a3, a4, a5, ")", 0, &v14);
    }

    else
    {
      v11 = 0;
      while (1)
      {
        if (v11)
        {
          result = mosyntbase_CApp(a3, a4, a5, ",", 0, &v14);
          if ((result & 0x80000000) != 0)
          {
            break;
          }
        }

        v12 = &a2[v11];
        v13 = v12[1];
        if (v13 < 0)
        {
          kbsymtab_AtomSymString(a1, -v13, v15, 200);
        }

        else
        {
          result = mosyntbase_CApp(a3, a4, a5, "?", 0, &v14);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntpal_IntToString(v12[1], 0, v15, 200);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        result = mosyntbase_App(a3, a4, a5, v15, 200, &v14);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (++v11 >= *a2)
        {
          return mosyntbase_CApp(a3, a4, a5, ")", 0, &v14);
        }
      }
    }
  }

  return result;
}

uint64_t mosyntkbsymtab_WriteFeatList(uint64_t a1, void *a2, __int16 *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  result = AppFeatListToString(a2, a3, v6, 200, &v5);
  if ((result & 0x80000000) == 0)
  {
    return mosyntbase_WString(a1, v6, 200);
  }

  return result;
}

uint64_t mosyntkbsymtab_WriteConsAndFeat(uint64_t a1, void *a2, unsigned int a3, __int16 *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  kbsymtab_ConsSymString(a2, a3, v8, 200);
  result = mosyntbase_WString(a1, v8, 200);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntbase_WString(a1, " ", 0);
    if ((result & 0x80000000) == 0)
    {
      return mosyntkbsymtab_WriteFeatList(a1, a2, a4);
    }
  }

  return result;
}

uint64_t mosyntkbsymtab_GetConsFeatFromString(uint64_t a1, void *a2, int a3, unsigned __int8 *a4, int a5, signed int *a6, _DWORD *a7, __int16 *a8)
{
  v27 = *MEMORY[0x277D85DE8];
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v24 = 0;
  result = mosyntutils_GetIdentFromString(a1, a4, a5, a6, v25, 100);
  if ((result & 0x80000000) == 0)
  {
    v17 = kbsymtab_KnownConsId(a2, v25);
    *a7 = v17;
    if (v17 < 0)
    {
      result = mosyntbase_WString3Ln(a1, "*** error: unknown constituent symbol '", 0, v25, 100, "'", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      *a7 = 0;
    }

    result = mosyntutils_SkipBlanksInString(a4, a5, a6);
    if ((result & 0x80000000) == 0)
    {
      *a8 = 0;
      v18 = *a6;
      if (v18 >= a5 || a4[v18] != 40)
      {
        return mosyntutils_SkipBlanksInString(a4, a5, a6);
      }

      result = mosyntutils_CheckSkipCharInString(a1, a4, a5, a6, 0x28u);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntutils_SkipBlanksInString(a4, a5, a6);
        if ((result & 0x80000000) == 0)
        {
          v19 = *a6;
          if (v19 >= a5 || a4[v19] == 41)
          {
LABEL_12:
            result = mosyntutils_CheckSkipCharInString(a1, a4, a5, a6, 0x29u);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            return mosyntutils_SkipBlanksInString(a4, a5, a6);
          }

          while (1)
          {
            result = mosyntutils_SkipBlanksInString(a4, a5, a6);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (a4[*a6] != 63)
            {
              result = mosyntutils_GetIdentFromString(a1, a4, a5, a6, v25, 100);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v21 = kbsymtab_KnownAtomId(a2, v25);
              if ((v21 & 0x80000000) == 0)
              {
                v20 = -v21;
                goto LABEL_30;
              }

              result = mosyntbase_WString3Ln(a1, "*** error: unknown feature value '", 0, v25, 100, "'", 0);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              goto LABEL_29;
            }

            if (!a3)
            {
              break;
            }

            result = mosyntutils_CheckSkipCharInString(a1, a4, a5, a6, 0x3Fu);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = mosyntutils_GetCardFromString(a1, a4, a5, a6, &v24);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            LOWORD(v20) = v24;
            if (v24 >= 50)
            {
              result = mosyntbase_WInt3Ln(a1, "*** error: illegal variable number '", 0, v24, "'", 0);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

LABEL_29:
              LOWORD(v20) = 0;
            }

LABEL_30:
            result = mosyntutils_SkipBlanksInString(a4, a5, a6);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v22 = *a8;
            if (v22 > 8)
            {
              result = mosyntbase_WString3Ln(a1, "*** error: too many features in '", 0, a4, a5, "'", 0);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            else
            {
              a8[v22 + 1] = v20;
              ++*a8;
            }

            v23 = *a6;
            if (v23 >= a5 || a4[v23] != 44)
            {
              goto LABEL_12;
            }

            result = mosyntutils_CheckSkipCharInString(a1, a4, a5, a6, 0x2Cu);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          result = mosyntbase_WStringLn(a1, "*** error: variables are not allowed as features'", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_29;
        }
      }
    }
  }

  return result;
}

uint64_t mosyntkbsymtab_DecompressCons(uint64_t a1, void *a2, unsigned int a3, _DWORD *a4, __int16 *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  kbsymtab_ConsSymString(a2, a3, v15, 200);
  v14 = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  IdentFromString = mosyntutils_GetIdentFromString(a1, v15, 200, &v14, v17, 100);
  if ((IdentFromString & 0x80000000) == 0)
  {
    v10 = kbsymtab_KnownConsId(a2, v17);
    *a4 = v10;
    if (v10 < 0)
    {
      IdentFromString = mosyntbase_WString3Ln(a1, "*** error: unknown constituent symbol '", 0, v17, 100, "'", 0);
      if ((IdentFromString & 0x80000000) != 0)
      {
        return IdentFromString;
      }

      *a4 = 0;
    }

    *a5 = 0;
    if (v14 <= 199 && *(v15 + v14) == 58)
    {
      IdentFromString = mosyntutils_CheckSkipCharInString(a1, v15, 200, &v14, 0x3Au);
      if ((IdentFromString & 0x80000000) == 0 && v14 <= 199 && *(v15 + v14))
      {
        while (1)
        {
          v11 = mosyntutils_GetIdentFromString(a1, v15, 200, &v14, v17, 100);
          if ((v11 & 0x80000000) != 0)
          {
            break;
          }

          IdentFromString = mosyntutils_CheckSkipCharInString(a1, v15, 200, &v14, 0x3Au);
          if ((IdentFromString & 0x80000000) != 0)
          {
            return IdentFromString;
          }

          if (*a5 > 8)
          {
            IdentFromString = mosyntbase_WString3Ln(a1, "*** error: too many features in '", 0, v15, 200, "'", 0);
            if ((IdentFromString & 0x80000000) != 0)
            {
              return IdentFromString;
            }
          }

          else
          {
            v12 = kbsymtab_KnownAtomId(a2, v17);
            if (v12 < 0)
            {
              IdentFromString = mosyntbase_WString3Ln(a1, "*** error: unknown feature value '", 0, v17, 100, "'", 0);
              LOWORD(v12) = 0;
              if ((IdentFromString & 0x80000000) != 0)
              {
                return IdentFromString;
              }
            }

            a5[++*a5] = -v12;
          }

          if (v14 >= 200 || !*(v15 + v14))
          {
            return IdentFromString;
          }
        }

        return v11;
      }
    }
  }

  return IdentFromString;
}

uint64_t mosyntwordana_ParseWord(uint64_t a1, int a2, uint64_t a3, int a4, char *a5, int a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char a14, char a15, char a16, BOOL *a17, void *a18)
{
  v129 = *MEMORY[0x277D85DE8];
  v113 = 0;
  memset(v124, 0, 512);
  v25 = *(a9 + 8);
  result = mosyntpal_ALLOCATE(a1, &v113, 0x8A8u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v27 = 0;
  v28 = v113;
  *v113 = a2;
  *(v28 + 8) = a3;
  do
  {
    *(v113 + 8 * v27 + 16) = mosyntkblex_NilLexicon();
    *(v113 + v27 + 104) = 0;
    *(v113 + 8 * v27 + 120) = mosyntkblex_NilLexicon();
    *(v113 + v27++ + 208) = 0;
  }

  while (v27 != 11);
  v29 = v113;
  *(v113 + 220) = 0;
  *(v29 + 224) = a4;
  m2__cp__arr(a5, (v29 + 232), 80);
  v30 = v113;
  *(v113 + 312) = a6;
  m2__cp__arr(a7, (v30 + 320), 80);
  v32 = a1;
  v31 = v113;
  *(v113 + 400) = a8;
  v31[51] = v25;
  v31[52] = a10;
  result = mosyntdata_StartItemList(a1, v31 + 62, v31 + 63);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v33 = v113;
  LODWORD(v118) = 0;
  if (a13 < 1)
  {
    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    LODWORD(v114) = 0;
    LODWORD(__dst[0]) = 0;
    BYTE4(__dst[0]) = 0;
    LOBYTE(v127) = 0;
    do
    {
      if (!*(a12 + v34))
      {
        break;
      }

      result = mosyntutils_GetUTF8Char(a1, a12, a13, &v118, &v114);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v114)
      {
        result = mosyntbase_Copy(&v114, 4, __dst, 5, &v127);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v36 = mosyntkbsymtab_KnownGraphId(a1, *(v33 + 8), __dst);
        if (v35 < 499)
        {
          v124[v35++] = v36;
        }

        else
        {
          result = mosyntbase_WStringLn(a1, "*** token too long; character ignored", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      v34 = v118;
    }

    while (v118 < a13);
    if (v35 > 499)
    {
      goto LABEL_20;
    }
  }

  v124[v35] = 0;
LABEL_20:
  v37 = v113;
  result = mosyntpal_ALLOCATE(a1, (v113 + 424), 0x9C48u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v116 = 0;
  v117 = 0;
  v114 = 0u;
  v115 = 0u;
  *&__dst[0] = 0;
  *(v37 + 432) = 0;
  result = mosyntpal_ALLOCATE(a1, __dst, 0x80u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v38 = *&__dst[0];
  **&__dst[0] = 0;
  *(v38 + 4) = 3;
  *(v38 + 8) = 0;
  for (i = 16; i != 120; i += 8)
  {
    *(*&__dst[0] + i) = 0;
  }

  v40 = 0;
  v41 = *&__dst[0];
  *(*&__dst[0] + 120) = 0;
  **(v37 + 424) = v41;
  *(v37 + 440) = 0;
  *(v37 + 448) = 0;
  *(v37 + 456) = 0;
  *(v37 + 464) = 0;
  do
  {
    if (!v124[v40])
    {
      break;
    }

    ++v40;
  }

  while (v40 != 500);
  LODWORD(v42) = *(v37 + 432);
  if (v42 + v40 >= 5001)
  {
    result = mosyntbase_WriteDevelMessage(a1, "token too long; truncated", 0, "", 0, "", 0, "", 0, 0, 0, 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    LODWORD(v42) = *(v37 + 432);
    LODWORD(v40) = 5000 - v42;
  }

  if (v40 <= 0)
  {
    v48 = v42;
  }

  else
  {
    v43 = 0;
    v44 = v40;
    do
    {
      **(*(v37 + 424) + 8 * v42) = v124[v43];
      v45 = *(v37 + 220);
      result = mosyntpal_ALLOCATE(a1, &v117, 0x80u);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v46 = v117;
      *v117 = 0;
      *(v46 + 1) = v45 == 1;
      *(v46 + 1) = 0;
      for (j = 8; j != 60; j += 4)
      {
        *&v117[j] = 0;
      }

      v42 = *(v37 + 432) + 1;
      *(v37 + 432) = v42;
      *(*(v37 + 424) + 8 * v42) = v117;
      ++v43;
    }

    while (v43 != v44);
    v48 = v42;
  }

  *(*(*(v37 + 424) + 8 * v48) + 4) = 3;
  *(v37 + 436) = 0;
  if (v42 < 1)
  {
LABEL_158:
    DWORD2(v114) = 0;
    *&v115 = -1;
    DWORD2(v115) = -1;
    v116 = 0;
    result = mosyntdata_AddOutItem(v32, (v37 + 496), (v37 + 504), &v114);
    if ((result & 0x80000000) == 0)
    {
      v95 = v113;
      *a17 = *(v113 + 488) > 0;
      *a18 = *(v95 + 496);
      if (a11 && *v95 >= 1)
      {
        v96 = (v95 + 496);
        while (1)
        {
          v96 = *v96;
          v95 = v113;
          if (!v96)
          {
            break;
          }

          result = mosyntdata_WriteReadingList(v32, *(v113 + 8), (v96 + 2));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      v97 = *(v95 + 440);
      if (v97)
      {
        while (1)
        {
          *&__dst[0] = v97;
          v97 = *v97;
          result = mosyntpal_DEALLOCATE(v32, __dst);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (!v97)
          {
            goto LABEL_168;
          }
        }
      }

      else
      {
LABEL_168:
        *(v95 + 440) = 0;
        *(v95 + 448) = 0;
        *(v95 + 456) = 0;
        if ((*(v95 + 432) & 0x80000000) != 0)
        {
LABEL_178:
          result = mosyntpal_DEALLOCATE(v32, (v95 + 424));
          if ((result & 0x80000000) == 0)
          {
            v102 = *(v95 + 464);
            if (v102)
            {
              while (1)
              {
                *&__dst[0] = v102;
                v102 = *v102;
                result = mosyntpal_DEALLOCATE(v32, __dst);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                if (!v102)
                {
                  goto LABEL_182;
                }
              }
            }

            else
            {
LABEL_182:
              *(v95 + 464) = 0;
              return mosyntpal_DEALLOCATE(v32, &v113);
            }
          }
        }

        else
        {
          v98 = 0;
          while (1)
          {
            v99 = *(*(v95 + 424) + 8 * v98);
            result = mosyntdata_SetLexEleRefCounts(v32, *(v99 + 120));
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v100 = *(v99 + 120);
            if (v100)
            {
              *&__dst[0] = 0;
              do
              {
                result = mosyntdata_PruneLexEleBranch(v32, v100 + 2);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                *&__dst[0] = v100;
                v100 = *v100;
                result = mosyntpal_DEALLOCATE(v32, __dst);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              while (v100);
            }

            *(v99 + 120) = 0;
            result = mosyntpal_DEALLOCATE(v32, (*(v95 + 424) + 8 * v98));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v98++ >= *(v95 + 432))
            {
              goto LABEL_178;
            }
          }
        }
      }
    }

    return result;
  }

  v49 = 0;
  v50 = 0;
  v51 = -1;
  v52 = 2;
  v53 = 0uLL;
  v54 = 1;
  while (1)
  {
    v55 = *(v37 + 424);
    if (*(*(v55 + 8 * v50) + 4) >= 2u)
    {
      break;
    }

LABEL_157:
    ++v50;
    ++v54;
    ++v51;
    --v52;
    v49 += 8;
    if (v50 >= v42)
    {
      goto LABEL_158;
    }
  }

  if (v42 <= v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v42;
  }

  v57 = v54;
  v58 = v51;
  while (v57 < v42)
  {
    v59 = *(*(v55 + 8 * v57) + 4);
    ++v58;
    ++v57;
    if (v59 >= 3)
    {
      v56 = v58 + 1;
      goto LABEL_49;
    }
  }

  v58 = v56 - 1;
LABEL_49:
  *(v37 + 2212) = v50;
  v126 = 0;
  __dst[10] = v53;
  __dst[9] = v53;
  __dst[8] = v53;
  __dst[7] = v53;
  __dst[6] = v53;
  __dst[5] = v53;
  __dst[4] = v53;
  __dst[3] = v53;
  __dst[2] = v53;
  __dst[0] = v53;
  __dst[1] = v53;
  result = mosyntpal_ALLOCATE(v32, (v37 + 480), 0x18u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v60 = *(v37 + 480);
  v60[1] = 0;
  v60[2] = 0;
  *v60 = 0;
  if (v50 <= v56)
  {
    v61 = v58 + v52;
    v62 = (*(v37 + 424) + v49);
    do
    {
      v63 = *v62++;
      *(v63 + 120) = 0;
      --v61;
    }

    while (v61);
  }

  v111 = v52;
  *(v37 + 488) = 0;
  if (!a14)
  {
    goto LABEL_62;
  }

  if (*v37 > 1)
  {
    result = mosyntknowl_WriteTraceHeader(v32, 1u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WInt3Ln(v32, "analyzing as internal full-form starting at position ", 0, v50, "", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  if (*(v37 + 224) < 1)
  {
LABEL_62:
    v66 = *(v37 + 488);
    if (a15 && !v66)
    {
      if (*v37 > 1)
      {
        result = mosyntknowl_WriteTraceHeader(v32, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WInt3Ln(v32, "analyzing as morpheme sequence starting at position ", 0, v50, "", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      v67 = *(v37 + 312);
      if (v67 < 1)
      {
        LODWORD(v67) = 0;
      }

      else
      {
        memcpy(__dst, (v37 + 320), 8 * v67);
      }

      for (k = 0; k != 11; ++k)
      {
        if (*(v37 + k + 208))
        {
          *(__dst + v67) = *(v37 + 8 * k + 120);
          LODWORD(v67) = v67 + 1;
        }
      }

      result = AnalyzeInParts(v32, v37, v50, v56, __dst, v67);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v66 = *(v37 + 488);
    }

    if (a16 && !v66)
    {
      if (v56 <= v50)
      {
        v69 = v50;
      }

      else
      {
        v69 = v56;
      }

      if (v50 > v58)
      {
        goto LABEL_150;
      }

      if (*v37 > 1)
      {
        result = mosyntknowl_WriteTraceHeader(v32, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WInt3Ln(v32, "analyzing as submorpheme sequence starting at position ", 0, v50, "", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      v106 = v49;
      v70 = *(v37 + 312);
      if (v70 < 1)
      {
        LODWORD(v70) = 0;
      }

      else
      {
        memcpy(__dst, (v37 + 320), 8 * v70);
      }

      for (m = 0; m != 11; ++m)
      {
        if (*(v37 + m + 208))
        {
          *(__dst + v70) = *(v37 + 8 * m + 120);
          LODWORD(v70) = v70 + 1;
        }
      }

      *(__dst + v70) = *(v37 + 400);
      result = AnalyzeInParts(v32, v37, v50, v69, __dst, v70 + 1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v66 = *(v37 + 488);
      v49 = v106;
    }

    if (v66)
    {
      if (*(*(*(v37 + 424) + 8 * v50) + 120))
      {
        result = mosyntbase_WriteDevelMessage(v32, "*** error: empty reading detected; check word grammar\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (v50 <= v58)
      {
        v72 = v56;
        v73 = v50;
        v107 = v49;
        v104 = v56;
        while (1)
        {
          ++v73;
          v74 = *(*(v37 + 424) + 8 * v73);
          v75 = *(v74 + 120);
          if (v75)
          {
            v105 = v73;
            result = mosyntdata_SetLexEleRefCounts(v32, v75);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v76 = *(v74 + 120);
            if (v76)
            {
              v77 = -1;
              v78 = *(v74 + 120);
              do
              {
                if (*(v78 + 3) >= v77)
                {
                  v79 = v77;
                }

                else
                {
                  v79 = *(v78 + 3);
                }

                if (v77 == -1)
                {
                  v77 = *(v78 + 3);
                }

                else
                {
                  v77 = v79;
                }

                v78 = *v78;
              }

              while (v78);
              v80 = 0;
              v81 = v77 + 20;
              *&v127 = *(v74 + 120);
              do
              {
                v82 = *v76;
                if (*(v76 + 3) <= v81)
                {
                  *v76 = v80;
                  v80 = v127;
                }

                else
                {
                  result = mosyntdata_PruneLexEleBranch(a1, v76 + 2);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  result = mosyntpal_DEALLOCATE(a1, &v127);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                *&v127 = v82;
                v76 = v82;
              }

              while (v82);
              *(v74 + 120) = v80;
              v32 = a1;
              v73 = v105;
              v49 = v107;
              v72 = v104;
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            else
            {
              v73 = v105;
            }

            if (*(v37 + 220) <= 1)
            {
              DWORD2(v118) = 0;
              v120 = *(*(*(v37 + 424) + 8 * v73) + 120);
              LODWORD(v119) = *(v37 + 2212);
              *(&v119 + 4) = __PAIR64__(v73, v50);
              result = mosyntdata_AddOutItem(v32, (v37 + 496), (v37 + 504), &v118);
              goto LABEL_122;
            }

            v83 = *(*(*(v37 + 424) + 8 * v73) + 120);
            v123 = 0;
            if (v83)
            {
              *&v121 = 0;
              *&v127 = 0;
              WORD4(v127) = 0;
              do
              {
                v108 = *(v83 + 8);
                v109 = *(v83 + 12);
                v103 = v83;
                v84 = *(v83 + 16);
                if (v84)
                {
                  v85 = 0;
                  v110 = 0;
                  v86 = 0;
                  v87 = v73;
                  while (1)
                  {
                    result = mosyntkblex_GetEntryPhon(a1, v84 + 1, &v127, 10);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    if (v127)
                    {
                      result = mosyntpal_ALLOCATE(a1, &v121, 0x38u);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      *v121 = 0;
                      v88 = v121;
                      v89 = *(v84 + 3);
                      *(v121 + 8) = *(v84 + 1);
                      *(v88 + 24) = v89;
                      v90 = *(v84 + 20);
                      *(v88 + 40) = *(v84 + 20);
                      v85 += v90;
                      if (v86)
                      {
                        *v86 = v88;
                        v88 = v121;
                      }

                      else
                      {
                        v110 = v88;
                      }

                      v91 = v87;
                    }

                    else
                    {
                      v91 = (v87 - v85);
                      if (v110)
                      {
                        if (v85 >= 1)
                        {
                          result = PutOutReadingItem(a1, v37, v108, v109, v87 - v85, v87, v110, &v123);
                          if ((result & 0x80000000) != 0)
                          {
                            return result;
                          }
                        }
                      }

                      v88 = 0;
                      v110 = 0;
                      v85 = 0;
                      v108 = *(v84 + 8);
                      v109 = 0;
                    }

                    v84 = *v84;
                    v87 = v91;
                    v86 = v88;
                    if (!v84)
                    {
                      goto LABEL_142;
                    }
                  }
                }

                v110 = 0;
                v85 = 0;
                LODWORD(v91) = v73;
LABEL_142:
                v92 = v91 - v85;
                v32 = a1;
                result = PutOutReadingItem(a1, v37, v108, v109, v92, v91, v110, &v123);
                v49 = v107;
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v72 = v104;
                v83 = *v103;
                v73 = v105;
              }

              while (*v103);
              v93 = v123;
              if (!v123)
              {
                goto LABEL_148;
              }

              do
              {
                v94 = v93;
                v93 = *v93;
                *v94 = 0;
                result = mosyntdata_AppendItem(a1, (v37 + 496), (v37 + 504), v94);
              }

              while ((result & 0x80000000) == 0 && v93);
LABEL_122:
              v73 = v105;
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }
          }

LABEL_148:
          if (v73 == v72)
          {
            goto LABEL_155;
          }
        }
      }

      goto LABEL_155;
    }

LABEL_150:
    if (v50 >= *(v37 + 436) && !mosyntpal_IsAborted() && (a16 || *v37 >= 1))
    {
      result = mosyntbase_WriteDevelMessage(v32, "*** no word analysis found starting at token position %d\\n", 0, "", 0, "", 0, "", 0, v50, 0, 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

LABEL_155:
    result = DisposeLexEleTreeList(v32, (v37 + 480));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    LODWORD(v42) = *(v37 + 432);
    v52 = v111;
    v53 = 0uLL;
    goto LABEL_157;
  }

  v64 = 0;
  while (1)
  {
    v65 = *(v37 + 8 * v64 + 232);
    v127 = 0uLL;
    v128 = 0;
    result = mosyntkblex_StartLookup(v65, &v127);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v121 = v127;
    v122 = v128;
    result = GetAndTreatEntries(v32, v37, 1, 1, v50, v50, v56, 1u, 1u, &v121, GenFullFormReading);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (++v64 >= *(v37 + 224))
    {
      goto LABEL_62;
    }
  }
}

uint64_t AnalyzeInParts(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4, void *a5, int a6)
{
  v9 = a3;
  v30 = 0uLL;
  v31 = 0;
  v34 = 0u;
  v35 = 0u;
  if (a3 <= a4)
  {
    v12 = a4 - a3 + 1;
    v13 = 8 * a3;
    do
    {
      v14 = *(*(a2 + 424) + v13);
      *(v14 + 104) = 0uLL;
      *(v14 + 88) = 0uLL;
      *(v14 + 72) = 0uLL;
      *(v14 + 56) = 0uLL;
      *(v14 + 40) = 0uLL;
      *(v14 + 24) = 0uLL;
      *(v14 + 8) = 0uLL;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  v33 = 0;
  result = mosyntdata_GetNilLexItem(&v34);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntkbwgram_GetNFAStartState(*(a2 + 416), &v33);
    if ((result & 0x80000000) == 0)
    {
      v32[0] = v34;
      v32[1] = v35;
      result = InsertEntry(a1, a2, v9, v9, 1, v33, 1, 0, 0, v32);
      if ((result & 0x80000000) == 0 && v9 <= a4)
      {
        v9 = v9;
        v16 = a4 + 1;
LABEL_9:
        if (*a2 < 2 || (result = mosyntknowl_WriteTraceHeader(a1, 1u), (result & 0x80000000) == 0) && (result = mosyntbase_WInt3Ln(a1, "parsing at position ", 0, v9, "", 0), (result & 0x80000000) == 0))
        {
          v17 = *(*(a2 + 424) + 8 * v9);
          v18 = *(a2 + 464);
          if (!v18)
          {
            result = mosyntpal_ALLOCATE(a1, (a2 + 464), 0x10u);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v18 = *(a2 + 464);
            *v18 = 0;
          }

          *(a2 + 472) = v18;
          while (1)
          {
            v17 = *(v17 + 8);
            if (!v17)
            {
              break;
            }

            result = AddTwolState(a1, a2, *(v17 + 36));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          v28 = 1;
          while (2)
          {
            if (*a2 < 3 || (result = mosyntknowl_WriteTraceHeader(a1, 1u), (result & 0x80000000) == 0) && (result = mosyntbase_WInt3Ln(a1, "epsilon closure run number ", 0, v28, "", 0), (result & 0x80000000) == 0))
            {
              *(a2 + 492) = 0;
              v20 = *(a2 + 464);
              v19 = *(a2 + 472);
              if (v20 != v19)
              {
                do
                {
                  v21 = a6;
                  v22 = a5;
                  if (a6 >= 1)
                  {
                    while (1)
                    {
                      result = mosyntkblex_StartLookup(*v22, &v30);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v23 = *(v20 + 4);
                      v34 = v30;
                      *&v35 = v31;
                      result = GetAndTreatEntries(a1, a2, 1, 0, v9, v9, a4, v23, v23, &v34, TreatLexEntryList);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      ++v22;
                      if (!--v21)
                      {
                        v19 = *(a2 + 472);
                        break;
                      }
                    }
                  }

                  v20 = *v20;
                }

                while (v20 != v19);
                ++v28;
                v20 = v19;
                if (*(a2 + 492))
                {
                  continue;
                }
              }

              v29 = v16;
              if (*a2 >= 3)
              {
                result = mosyntknowl_WriteTraceHeader(a1, 1u);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = mosyntbase_WInt3Ln(a1, "non-empty search run in position ", 0, v9, "", 0);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v20 = *(a2 + 472);
              }

              *(a2 + 492) = 0;
              for (i = *(a2 + 464); i != v20; i = *i)
              {
                v25 = a6;
                v26 = a5;
                if (a6 >= 1)
                {
                  while (1)
                  {
                    result = mosyntkblex_StartLookup(*v26, &v30);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    v27 = *(i + 4);
                    v34 = v30;
                    *&v35 = v31;
                    result = GetAndTreatEntries(a1, a2, 0, 1, v9, v9, a4, v27, v27, &v34, TreatLexEntryList);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    ++v26;
                    if (!--v25)
                    {
                      v20 = *(a2 + 472);
                      break;
                    }
                  }
                }
              }

              if (!*(*(*(a2 + 424) + 8 * v9) + 4) || (result = FindReadings(a1, a2, v9), (result & 0x80000000) == 0))
              {
                RemoveUnreferenced(a2, v9);
                result = 0;
                ++v9;
                v16 = v29;
                if (v29 != v9)
                {
                  goto LABEL_9;
                }
              }
            }

            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t GetAndTreatEntries(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, __int128 *a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, void, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v32[0] = 0;
  v28 = 0uLL;
  v29 = 0;
  v27 = 0;
  FirstSameInSymPair = mosyntkbfst_GetFirstSameInSymPair(*(a2 + 408), 0, v32, &v27);
  if ((FirstSameInSymPair & 0x80000000) == 0)
  {
    v31 = 0;
    v30 = 0;
    while (v27)
    {
      v17 = ApplyChar(a1, a2, a3, a4, a5, a6, v32[0], a8, a9, a10, a11, &v30, &v28, &v31);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      if (v31)
      {
        v25 = v28;
        v26 = v29;
        v17 = GetAndTreatEntries(a1, a2, a3, a4, a5, a6, a7, a8, v30, &v25, a11);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }
      }

      FirstSameInSymPair = mosyntkbfst_GetNextSameInSymPair(*(a2 + 408), v32, &v27);
      if ((FirstSameInSymPair & 0x80000000) != 0)
      {
        return FirstSameInSymPair;
      }
    }

    if (*(*(*(a2 + 424) + 8 * a6) + 4))
    {
      v18 = mosyntkbsymtab_GraphTermId(*(a2 + 8));
      for (i = mosyntkbfst_GetFirstSameInSymPair(*(a2 + 408), v18, v32, &v27); ; i = mosyntkbfst_GetNextSameInSymPair(*(a2 + 408), v32, &v27))
      {
        FirstSameInSymPair = i;
        if ((i & 0x80000000) != 0)
        {
          break;
        }

        if (!v27)
        {
          goto LABEL_18;
        }

        if (mosyntkbfst_OutSym(*(a2 + 408), v32) == v18)
        {
          if (!v27)
          {
            goto LABEL_18;
          }

          v20 = ApplyChar(a1, a2, a3, a4, a5, a6, v32[0], a8, a9, a10, a11, &v30, &v28, &v31);
          FirstSameInSymPair = v20;
          if (a4 && (v20 & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          return FirstSameInSymPair;
        }
      }
    }

    else
    {
LABEL_18:
      if (a4)
      {
LABEL_19:
        if (a6 < a7)
        {
          FirstSameInSymPair = mosyntkbfst_GetFirstSameInSymPair(*(a2 + 408), **(*(a2 + 424) + 8 * a6), v32, &v27);
          if ((FirstSameInSymPair & 0x80000000) == 0 && v27)
          {
            while (1)
            {
              v17 = ApplyChar(a1, a2, a3, a4, a5, (a6 + 1), v32[0], a8, a9, a10, a11, &v30, &v28, &v31);
              if ((v17 & 0x80000000) != 0)
              {
                break;
              }

              if (v31)
              {
                v25 = v28;
                v26 = v29;
                v17 = GetAndTreatEntries(a1, a2, a3, a4, a5, (a6 + 1), a7, a8, v30, &v25, a11);
                if ((v17 & 0x80000000) != 0)
                {
                  break;
                }
              }

              FirstSameInSymPair = mosyntkbfst_GetNextSameInSymPair(*(a2 + 408), v32, &v27);
              if ((FirstSameInSymPair & 0x80000000) != 0 || !v27)
              {
                return FirstSameInSymPair;
              }
            }

            return v17;
          }
        }
      }
    }
  }

  return FirstSameInSymPair;
}

uint64_t GenFullFormReading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, int a8, unsigned int a9)
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = 0uLL;
  v29 = 0;
  v26 = 0u;
  v27 = 0u;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  if (!*(*(*(a2 + 424) + 8 * a8) + 4))
  {
    return 0;
  }

  result = IsAcceptingFSTState(a1, a2, a9);
  if (result)
  {
    v30 = 0;
    v25 = 0;
    v23 = 0;
    v24 = 0;
    result = mosyntkblex_GetFirstEntry(a5, &v30, &v28);
    if ((result & 0x80000000) == 0)
    {
      v15 = a8 - a6;
      while (v30)
      {
        result = mosyntkblex_GetEntryCostAndConsList(a1, &v28, &v23, v33, 500);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntdata_GetFirstLexItem(a1, *(a2 + 8), &v28, v33, 500, &v24, &v25, &v26);
          if ((result & 0x80000000) == 0)
          {
            while (v25)
            {
              v16 = v23;
              v17 = v27;
              v22 = v26;
              v31 = 0;
              v32 = 0;
              result = mosyntpal_ALLOCATE(a1, &v32, 0x38u);
              if ((result & 0x80000000) == 0)
              {
                *v32 = 0;
                v18 = v32;
                *(v32 + 8) = v22;
                *(v18 + 24) = v17;
                *(v18 + 40) = v15;
                *(v18 + 48) = 1;
                result = mosyntpal_ALLOCATE(a1, &v31, 0x18u);
                if ((result & 0x80000000) == 0)
                {
                  v19 = *(a2 + 424);
                  *v31 = *(*(v19 + 8 * a8) + 120);
                  v20 = v31;
                  *(*(v19 + 8 * a8) + 120) = v31;
                  *(v20 + 2) = DWORD2(v17);
                  *(v20 + 3) = v16;
                  v20[2] = v32;
                  if (*(a2 + 436) < a8)
                  {
                    *(a2 + 436) = a8;
                  }

                  ++*(a2 + 488);
                  result = mosyntdata_GetNextLexItem(a1, *(a2 + 8), &v28, v33, 500, &v24, &v25, &v26);
                  if ((result & 0x80000000) == 0)
                  {
                    continue;
                  }
                }
              }

              return result;
            }

            result = mosyntkblex_GetNextEntry(&v30, &v28);
            if ((result & 0x80000000) == 0)
            {
              continue;
            }
          }
        }

        return result;
      }

      result = mosyntkblex_FinishEntrySearch(&v28);
      if ((result & 0x80000000) == 0)
      {
        v21 = *(*(a2 + 424) + 8 * a8);
        if (*(v21 + 4) <= 1u)
        {
          result = 0;
          *(v21 + 4) = 2;
          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t ApplyChar(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, __int128 *a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, void, uint64_t, void, uint64_t, uint64_t, uint64_t), int *a12, uint64_t a13, _BYTE *a14)
{
  v19 = 0;
  v37 = a7;
  *a14 = 0;
  if (*a2 >= 3)
  {
    v20 = mosyntknowl_WriteTraceHeader(a1, 1u);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v20 = mosyntbase_WString(a1, "trying pair ", 0);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v20 = mosyntkbfst_WriteGraphPair(a1, *(a2 + 8), *(a2 + 408), &v37, 2);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v19 = mosyntbase_WLn(a1);
    if ((v19 & 0x80000000) != 0)
    {
      return v19;
    }
  }

  v21 = mosyntkbfst_FSTTrans(*(a2 + 408), a9, &v37);
  *a12 = v21;
  if (v21 < 1)
  {
    return v19;
  }

  v22 = *a10;
  *(a13 + 16) = *(a10 + 2);
  *a13 = v22;
  if (*a2 >= 3)
  {
    v20 = mosyntknowl_WriteTraceHeader(a1, 1u);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v20 = mosyntbase_WString(a1, "looking up ", 0);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v20 = mosyntkbfst_WriteGraphPair(a1, *(a2 + 8), *(a2 + 408), &v37, 1);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v20 = mosyntbase_WLn(a1);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }
  }

  if (!mosyntkbfst_OutSym(*(a2 + 408), &v37))
  {
    if (*a2 >= 3)
    {
      v20 = mosyntknowl_WriteTraceHeader(a1, 1u);
      if ((v20 & 0x80000000) != 0)
      {
        return v20;
      }

      v20 = mosyntbase_WString(a1, "looking up emtpy lex char", 0);
      if ((v20 & 0x80000000) != 0)
      {
        return v20;
      }

      v20 = mosyntbase_WLn(a1);
      if ((v20 & 0x80000000) != 0)
      {
        return v20;
      }
    }

    v36 = 1;
LABEL_34:
    *a14 = 1;
    LODWORD(v32) = *a12;
    return a11(a1, a2, a3, a4, a13, a5, a8, a6, v32);
  }

  v23 = *(a2 + 8);
  v24 = mosyntkbfst_OutSym(*(a2 + 408), &v37);
  v25 = (a2 + 512);
  v20 = mosyntkbsymtab_GraphSymString(a1, v23, v24, (a2 + 512), 500);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  if (*a2 >= 3)
  {
    v20 = mosyntknowl_WriteTraceHeader(a1, 1u);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v20 = mosyntbase_WString(a1, "looking up ", 0);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v20 = mosyntbase_WString(a1, (a2 + 512), 500);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v20 = mosyntbase_WLn(a1);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }
  }

  v26 = mosyntbase_Length(a2 + 512, 500);
  v36 = 1;
  if (v26 < 1)
  {
    goto LABEL_34;
  }

  HIDWORD(v32) = a6;
  v33 = a8;
  v27 = v26;
  v28 = 1;
  while (1)
  {
    v29 = *v25++;
    v19 = mosyntkblex_LookupChar(v29, a13, &v36);
    if ((v19 & 0x80000000) != 0)
    {
      return v19;
    }

    if (v36)
    {
      v30 = v28 >= v27;
    }

    else
    {
      v30 = 1;
    }

    ++v28;
    if (v30)
    {
      a6 = HIDWORD(v32);
      a8 = v33;
      if (v36)
      {
        goto LABEL_34;
      }

      return v19;
    }
  }
}

BOOL IsAcceptingFSTState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v8 = 0;
  v6 = mosyntkbsymtab_GraphTermId(*(a2 + 8));
  mosyntkbfst_GetFirstSameInSymPair(*(a2 + 408), v6, &v9, &v8);
  while (v8)
  {
    if (mosyntkbfst_OutSym(*(a2 + 408), &v9) == v6)
    {
      if (v8)
      {
        return mosyntkbfst_FSTTrans(*(a2 + 408), a3, &v9) == 1;
      }

      break;
    }

    mosyntkbfst_GetNextSameInSymPair(*(a2 + 408), &v9, &v8);
  }

  mosyntbase_WString(a1, "*** error: termination pair not found in FST alphabet", 0);
  mosyntbase_WLn(a1);
  return 0;
}

uint64_t AddTwolState(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a2 + 464);
  v5 = *(a2 + 472);
  while (1)
  {
    v4 = *v4;
    v8 = v4;
    if (v4 == v5)
    {
      break;
    }

    if (*(v4 + 4) == a3)
    {
      return 0;
    }
  }

  *(v5 + 8) = a3;
  v7 = *v5;
  if (v7)
  {
    result = 0;
  }

  else
  {
    result = mosyntpal_ALLOCATE(a1, &v8, 0x10u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *v8 = 0;
    v7 = v8;
    **(a2 + 472) = v8;
  }

  *(a2 + 472) = v7;
  return result;
}

uint64_t TreatLexEntryList(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, signed int a6, unsigned int a7, uint64_t a8, unsigned int a9)
{
  v37[2] = *MEMORY[0x277D85DE8];
  if (a3 && a8 == a6 || (result = 0, a4) && a8 > a6)
  {
    v32 = 0;
    v31 = 0;
    v30 = 0uLL;
    v28 = 0u;
    v29 = 0u;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v36[1] = 0;
    v37[0] = 0;
    v36[0] = 0;
    *(v37 + 6) = 0;
    v24 = 0;
    v23 = 0;
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    result = mosyntkblex_GetFirstEntry(a5, &v32, &v30);
    if ((result & 0x80000000) == 0)
    {
      v15 = "found lex item";
      v16 = " ";
      while (1)
      {
        if (!v32)
        {
          return mosyntkblex_FinishEntrySearch(&v30);
        }

        result = mosyntkblex_GetEntryCostAndConsList(a1, &v30, &v25 + 4, v34, 500);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntdata_GetFirstLexItem(a1, *(a2 + 8), &v30, v34, 500, &v23, &v24, &v28);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

LABEL_10:
        if (v24 && !mosyntpal_IsAborted())
        {
          break;
        }

        result = mosyntkblex_GetNextEntry(&v32, &v30);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (*a2 < 2 || (result = mosyntknowl_WriteTraceHeader(a1, 1u), (result & 0x80000000) == 0) && (m2__cp__str(v15, v36, 30), v21 = v28, v22 = v29, result = mosyntkblex_GetEntryGraph(a1, &v21, a2 + 1012, 1000), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, v36, 30), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, v16, 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, (a2 + 1012), 1000), (result & 0x80000000) == 0) && (result = mosyntkblex_GetEntryPhon(a1, &v21, a2 + 1012, 1000), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, " [", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, (a2 + 1012), 1000), (result & 0x80000000) == 0) && (v33 = 0, result = mosyntkblex_GetEntryCost(a1, &v21, &v33), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, "] cons ", 0), (result & 0x80000000) == 0) && (result = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), DWORD2(v22)), (result & 0x80000000) == 0) && (v33 == 1 || (result = mosyntbase_WString(a1, "(cost ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, v33, 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, ") ", 0), (result & 0x80000000) == 0)) && (result = mosyntbase_WString(a1, " from pos ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, a6, 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, " / FST state ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, a7, 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, " to pos ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, a8, 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, " / FST state ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, a9, 0), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
      {
        result = mosyntkbwgram_GetFirstNFATrans(*(a2 + 416), DWORD2(v29), &v27, &v26 + 4, &v26, &v25);
        if ((result & 0x80000000) == 0)
        {
          v17 = v16;
          v18 = v15;
          while ((v26 & 0x8000000000000000) == 0)
          {
            for (i = *(*(*(a2 + 424) + 8 * a6) + 8 * ((HIDWORD(v26) + a7) % 13) + 16); i; i = *(i + 16))
            {
              if (__PAIR64__(*(i + 36), *(i + 32)) == __PAIR64__(a7, HIDWORD(v26)))
              {
                v20 = v25 + *(i + 40);
                v21 = v28;
                v22 = v29;
                result = InsertEntry(a1, a2, a6, a8, 0, v26, a9, v20 + HIDWORD(v25), i, &v21);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }
            }

            result = mosyntkbwgram_GetNextNFATrans(*(a2 + 416), DWORD2(v29), &v27, &v26 + 4, &v26, &v25);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          result = mosyntdata_GetNextLexItem(a1, *(a2 + 8), &v30, v34, 500, &v23, &v24, &v28);
          v15 = v18;
          v16 = v17;
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  return result;
}

uint64_t FindReadings(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(*(*(a2 + 424) + 8 * a3) + 8);
  if (!v3)
  {
    return 0;
  }

  while (!*(v3 + 38) || !IsAcceptingFSTState(a1, a2, *(v3 + 36)))
  {
LABEL_29:
    v3 = *(v3 + 8);
    if (!v3)
    {
      return 0;
    }
  }

  v7 = 0;
  v27 = 0;
  v8 = v3;
  do
  {
    v9 = v8;
    *(v8 + 88) = v7;
    v8 = *(v8 + 48);
    v7 = v9;
  }

  while (v8);
  v10 = 0;
  v11 = 0;
  v28 = 0;
  v29 = 0;
  v12 = *(a2 + 480);
  while (1)
  {
    v13 = *(v9 + 48);
    if (v13)
    {
      if (*(v13 + 30) != *(v9 + 28))
      {
        v11 = mosyntbase_WriteDevelMessage(a1, "***** inconsistent word analysis reading\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }
      }
    }

    if (mosyntdata_IsValidLexItem(v9 + 56))
    {
      for (i = *v12; ; i = *(i + 8))
      {
        v29 = i;
        if (!i)
        {
          break;
        }

        v15 = *(i + 16);
        if (v15)
        {
          v16 = mosyntdata_IdenticalLexItems(v15 + 8, v9 + 56);
          i = v29;
          if (v16)
          {
            if (v29)
            {
              v10 = v29[2];
              goto LABEL_22;
            }

            break;
          }
        }
      }

      v17 = mosyntpal_ALLOCATE(a1, &v28, 0x38u);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      *v28 = v12[2];
      v18 = v28;
      v19 = *(v9 + 72);
      *(v28 + 8) = *(v9 + 56);
      *(v18 + 24) = v19;
      *(v18 + 40) = *(v9 + 30) - *(v9 + 28);
      v11 = mosyntpal_ALLOCATE(a1, &v29, 0x18u);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      v20 = *v12;
      v21 = v29;
      *v12 = v29;
      *v21 = 0;
      v21[1] = v20;
      v10 = v28;
      i = v29;
      v29[2] = v28;
    }

    else
    {
      i = v12;
    }

LABEL_22:
    v9 = *(v9 + 88);
    v12 = i;
    if (!v9)
    {
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      v17 = mosyntpal_ALLOCATE(a1, &v27, 0x18u);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      v22 = *(a2 + 424);
      *v27 = *(*(v22 + 8 * a3) + 120);
      v23 = v27;
      *(*(v22 + 8 * a3) + 120) = v27;
      v24 = *(v3 + 40);
      *(v23 + 2) = *(v3 + 32);
      *(v23 + 3) = v24;
      v23[2] = v10;
      if (*(a2 + 436) < a3)
      {
        *(a2 + 436) = a3;
      }

      ++*(a2 + 488);
      v25 = *(v22 + 8 * a3);
      if (*(v25 + 4) <= 1u)
      {
        *(v25 + 4) = 2;
      }

      goto LABEL_29;
    }
  }
}

uint64_t RemoveUnreferenced(uint64_t result, int a2)
{
  v2 = *(result + 424);
  v3 = *(v2 + 8 * a2);
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      do
      {
        if (*(v5 + 24))
        {
          break;
        }

        v6 = *(v5 + 48);
        if (v6)
        {
          --*(v6 + 24);
        }

        *(v5 + 48) = 0;
        if (*(v5 + 30) < a2)
        {
          *(v5 + 8) = *(result + 456);
          *(result + 456) = v5;
        }

        v5 = v6;
      }

      while (v6);
      v4 = *(v4 + 8);
    }

    while (v4);
    v3 = *(v2 + 8 * a2);
    v7 = *(v3 + 8);
    if (v7)
    {
      do
      {
        v8 = *(v7 + 8);
        if (!*(v7 + 24))
        {
          *(v7 + 8) = *(result + 456);
          *(result + 456) = v7;
        }

        v7 = v8;
      }

      while (v8);
      v3 = *(v2 + 8 * a2);
    }
  }

  *(v3 + 8) = 0;
  for (i = 16; i != 120; i += 8)
  {
    *(*(*(result + 424) + 8 * a2) + i) = 0;
  }

  return result;
}

uint64_t InsertEntry(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, __int128 *a10)
{
  v33[4] = *MEMORY[0x277D85DE8];
  memset(v33, 0, 30);
  v16 = (a7 + a6) % 13;
  v17 = *(a2 + 424);
  v18 = *(*(v17 + 8 * a4) + 8 * v16 + 16);
  v32 = v18;
  if (v18)
  {
    while (*(v18 + 32) != a6 || *(v18 + 36) != a7)
    {
      v18 = *(v18 + 16);
      if (!v18)
      {
        v32 = 0;
        goto LABEL_6;
      }
    }

    if (*(v18 + 40) <= a8)
    {
      return 0;
    }

    else
    {
      *(v18 + 40) = a8;
      v27 = *(v18 + 48);
      if (v27)
      {
        --*(v27 + 24);
      }

      *(v18 + 48) = a9;
      if (a9)
      {
        ++*(a9 + 24);
      }

      v28 = a3;
      *(v18 + 28) = a3;
      v29 = *a10;
      *(v18 + 72) = a10[1];
      *(v18 + 56) = v29;
      result = TreatEmptyTrans(a1, a2, a4, v18);
      if ((result & 0x80000000) == 0)
      {
        if (*a2 < 2 || (result = mosyntknowl_WriteTraceHeader(a1, 1u), (result & 0x80000000) == 0) && (m2__cp__str("modified edge", v33, 30), result = WriteParseEntry(a1, a2, v33, v18, v28, a4), (result & 0x80000000) == 0))
        {
          *(a2 + 492) = 1;
        }
      }
    }
  }

  else
  {
LABEL_6:
    v19 = *(a2 + 456);
    if (v19)
    {
      v32 = *(a2 + 456);
      *(a2 + 456) = *(v19 + 8);
    }

    else
    {
      v30 = a5;
      v31 = a3;
      result = mosyntpal_ALLOCATE(a1, &v32, 0x60u);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      *v32 = *(a2 + 440);
      v19 = v32;
      *(a2 + 440) = v32;
      ++*(a2 + 448);
      v17 = *(a2 + 424);
      a5 = v30;
      a3 = v31;
    }

    v21 = *(v17 + 8 * a4);
    *(v19 + 8) = *(v21 + 8);
    *(v21 + 8) = v19;
    v22 = v21 + 8 * v16;
    *(v19 + 16) = *(v22 + 16);
    *(v22 + 16) = v19;
    v23 = v32;
    *(v32 + 24) = 0;
    *(v23 + 28) = a3;
    *(v23 + 30) = a4;
    *(v23 + 32) = a6;
    *(v23 + 36) = a7;
    *(v23 + 38) = 0;
    *(v23 + 40) = a8;
    *(v23 + 48) = a9;
    if (a9)
    {
      ++*(a9 + 24);
    }

    v24 = *a10;
    *(v23 + 72) = a10[1];
    *(v23 + 56) = v24;
    if (a4 != a3 || a5 || (v25 = a3, result = AddTwolState(a1, a2, a7), a3 = v25, (result & 0x80000000) == 0))
    {
      if (*a2 < 2 || (v26 = a3, result = mosyntknowl_WriteTraceHeader(a1, 1u), (result & 0x80000000) == 0) && (m2__cp__str("inserted edge", v33, 30), result = WriteParseEntry(a1, a2, v33, v32, v26, a4), (result & 0x80000000) == 0))
      {
        *(a2 + 492) = 1;
        return TreatEmptyTrans(a1, a2, a4, v32);
      }
    }
  }

  return result;
}

uint64_t WriteParseEntry(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  result = mosyntbase_WString(a1, a3, 30);
  if ((result & 0x80000000) == 0)
  {
    if (*(a4 + 48))
    {
      result = mosyntbase_WString(a1, " from position ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WInt(a1, a5, 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, " / state ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(*(a4 + 48) + 32));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, " / FST state ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WInt(a1, *(*(a4 + 48) + 36), 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      result = mosyntbase_WString(a1, " from inexistent predecessor", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    result = mosyntbase_WString(a1, " to position ", 0);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntbase_WInt(a1, a6, 0);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, " / state ", 0);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(a4 + 32));
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_WString(a1, " / FST state ", 0);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntbase_WInt(a1, *(a4 + 36), 0);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntbase_WString(a1, " cost ", 0);
                if ((result & 0x80000000) == 0)
                {
                  result = mosyntbase_WInt(a1, *(a4 + 40), 0);
                  if ((result & 0x80000000) == 0)
                  {

                    return mosyntbase_WLn(a1);
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

uint64_t TreatEmptyTrans(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  result = mosyntdata_GetNilLexItem(v9);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntkbwgram_GetFirstEpsTrans(*(a2 + 416), *(a4 + 32), &v13, &v12, &v11, &v10);
    if ((result & 0x80000000) == 0 && (v12 & 0x80000000) == 0)
    {
      do
      {
        if (v11)
        {
          *(a4 + 38) = 1;
        }

        result = InsertEntry(a1, a2, a3, a3, 1);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntkbwgram_GetNextEpsTrans(*(a2 + 416), *(a4 + 32), &v13, &v12, &v11, &v10);
        if ((result & 0x80000000) != 0)
        {
          break;
        }
      }

      while ((v12 & 0x80000000) == 0);
    }
  }

  return result;
}

uint64_t PutOutReadingItem(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6, uint64_t a7, void *a8)
{
  v19 = 0;
  v20 = 0;
  result = mosyntpal_ALLOCATE(a1, &v19, 0x18u);
  if ((result & 0x80000000) == 0)
  {
    *v19 = 0;
    v17 = v19;
    *(v19 + 8) = a3;
    *(v17 + 12) = a4;
    *(v17 + 16) = a7;
    result = mosyntpal_ALLOCATE(a1, &v20, 0x28u);
    if ((result & 0x80000000) == 0)
    {
      v18 = v20;
      *(v20 + 8) = 0;
      *(v18 + 16) = *(a2 + 2212);
      *(v18 + 20) = a5;
      *(v18 + 24) = a6;
      *(v18 + 32) = v19;
      if ((a5 & 0x80000000) != 0)
      {
        result = mosyntbase_WriteDevelMessage(a1, "***** erroneous reading start position %d; reading ignored\\n", 0, "", 0, "", 0, "", 0, a5, 0, 0);
        if ((result & 0x80000000) == 0)
        {
          return mosyntdata_DisposeItem(a1, &v20);
        }
      }

      else
      {
        *v18 = *a8;
        *a8 = v20;
      }
    }
  }

  return result;
}

uint64_t DisposeLexEleTreeList(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v6 = 0;
    while (1)
    {
      result = DisposeLexEleTreeList(a1, v3);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v6 = v3;
      v3 = *(v3 + 8);
      result = mosyntpal_DEALLOCATE(a1, &v6);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    result = 0;
LABEL_8:
    *a2 = 0;
  }

  return result;
}

uint64_t mosyntknowl_GetPhraseBoundFromString(uint64_t a1, unsigned __int8 *a2, int a3, int *a4, _DWORD *a5)
{
  *a5 = -1;
  result = mosyntutils_SkipBlanksInString(a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntutils_CheckSkipCharInString(a1, a2, a3, a4, 0x23u);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntutils_CheckSkipCharInString(a1, a2, a3, a4, 0x7Bu);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntutils_GetCardFromString(a1, a2, a3, a4, a5);
        if ((result & 0x80000000) == 0)
        {

          return mosyntutils_CheckSkipCharInString(a1, a2, a3, a4, 0x7Du);
        }
      }
    }
  }

  return result;
}

uint64_t mosyntknowl_GetPhraseTypeFromString(uint64_t a1, unsigned __int8 *a2, int a3, int *a4, int *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  result = mosyntutils_SkipBlanksInString(a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntutils_CheckSkipCharInString(a1, a2, a3, a4, 0x28u);
    if ((result & 0x80000000) == 0)
    {
      v12 = 0;
      v11 = 0;
      result = mosyntutils_GetIdent1FromString(a1, a2, a3, a4, &v11, 10);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntutils_CheckSkipCharInString(a1, a2, a3, a4, 0x29u);
        if ((result & 0x80000000) == 0)
        {
          return mosyntkbaccphr_StringToPhraseType(a1, &v11, 10, a5);
        }
      }
    }
  }

  return result;
}

uint64_t mosyntknowl_GetAccentFromString(uint64_t a1, unsigned __int8 *a2, int a3, int *a4, _DWORD *a5)
{
  *a5 = -1;
  result = mosyntutils_SkipBlanksInString(a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntutils_CheckSkipCharInString(a1, a2, a3, a4, 0x5Bu);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntutils_GetCardFromString(a1, a2, a3, a4, a5);
      if ((result & 0x80000000) == 0)
      {

        return mosyntutils_CheckSkipCharInString(a1, a2, a3, a4, 0x5Du);
      }
    }
  }

  return result;
}

uint64_t mosyntknowl_GetPhoneFromString(uint64_t a1, void *a2, unsigned __int8 *a3, int a4, int *a5, int *a6)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v12 = mosyntkbsymtab_LHPlusMode(a2);
  *a6 = 0;
  v13 = *a5;
  if (v13 >= a4 || !a3[v13])
  {
    return 0;
  }

  v14 = v12;
  v15 = mosyntutils_SkipBlanksInString(a3, a4, a5);
  if ((v15 & 0x80000000) == 0)
  {
    v16 = *a5;
    if (v16 < a4)
    {
      v17 = a3[v16];
      if (v17)
      {
        v25 = 0;
        memset(v28, 0, 15);
        v26 = 0;
        v27 = 0;
        if (v17 > 0x1F)
        {
          if (v14 == 1)
          {
            LhPlusPhone = mosyntkbsymtab_GetLhPlusPhone(a1, a2, a3, a4, a5, v28, 15, &v25 + 1);
          }

          else
          {
            LhPlusPhone = GetSVOXPAPhone(a1, a3, a4, a5, v28, &v25 + 1);
          }

          v15 = LhPlusPhone;
          if ((LhPlusPhone & 0x80000000) != 0)
          {
            return v15;
          }

          if (!HIBYTE(v25))
          {
            v20 = mosyntbase_WriteDevelMessage(a1, "***** unknown phone at pos %d in '%s'\\n", 0, a3, a4, "", 0, "", 0, *a5, 0, 0);
LABEL_23:
            v15 = v20;
            if ((v20 & 0x80000000) == 0)
            {
              goto LABEL_24;
            }

            return v15;
          }

          BYTE6(v28[1]) = 0;
          v23 = mosyntkbsymtab_KnownPhonId(a1, a2, v28);
          *a6 = v23;
          if (v23 > 0)
          {
            return v15;
          }

          return mosyntbase_WriteDevelMessage(a1, "***** unknown phone '%s'\\n", 0, v28, 15, "", 0, "", 0, 0, 0, 0);
        }

        else
        {
          m2__cp__str("{c", v28, 15);
          v18 = mosyntpal_IntToString(a3[*a5], 0, &v26, 10);
          if ((v18 & 0x80000000) == 0)
          {
            v18 = mosyntbase_AppendTo(v28, 15, &v26, 10, &v25);
            if ((v18 & 0x80000000) == 0)
            {
              m2__cp__str("}", &v26, 10);
              v15 = mosyntbase_AppendTo(v28, 15, &v26, 10, &v25);
              if ((v15 & 0x80000000) != 0)
              {
                return v15;
              }

              BYTE6(v28[1]) = 0;
              v19 = mosyntkbsymtab_KnownPhonId(a1, a2, v28);
              *a6 = v19;
              if (v19 > 0)
              {
LABEL_24:
                ++*a5;
                return v15;
              }

              v24 = a3[*a5];
              v20 = mosyntbase_WriteDevelMessage(a1, "***** error in conversion of control character %d to symbol\\n", 0, "", 0, "", 0, "", 0, v24, HIDWORD(v24), 0);
              goto LABEL_23;
            }
          }
        }

        return v18;
      }
    }
  }

  return v15;
}

uint64_t GetSVOXPAPhone(uint64_t a1, uint64_t a2, int a3, int *a4, _BYTE *a5, char *a6)
{
  v22[2] = *MEMORY[0x277D85DE8];
  memset(v22, 0, 14);
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v12 = *a4;
  *a5 = 0;
  *a6 = 1;
  v13 = *a4;
  if (v13 < a3 && *(a2 + v13) == 123)
  {
    result = mosyntutils_AppChar(a5, 15, &v20, 123);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v15 = *a4 + 1;
    *a4 = v15;
    if (v15 < a3)
    {
      v16 = *(a2 + v15);
      if (v16 >= 0x21)
      {
        while (v16 != 125)
        {
          result = mosyntutils_GetUTF8Char(a1, a2, a3, a4, &v19);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_App(a5, 15, &v20, &v19, 4, &v21);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LODWORD(v15) = *a4;
          if (*a4 < a3)
          {
            v16 = *(a2 + v15);
            if (v16 >= 0x21)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    if (v15 >= a3 - 1 || *(a2 + v15) != 125)
    {
      *a6 = 0;
LABEL_31:
      *a4 = v12;
      *a5 = 0;
      return result;
    }

    result = mosyntutils_AppChar(a5, 15, &v20, 125);
    if ((result & 0x80000000) == 0)
    {
      ++*a4;
      if (!*a6)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    while (1)
    {
      result = GetSVOXPADiacPhone(a1, a2, a3, a4, v22, a6);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = mosyntbase_App(a5, 15, &v20, v22, 14, &v21);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v17 = !v21 || *a6 == 0;
      v18 = !v17;
      *a6 = v18;
      if (v17)
      {
        goto LABEL_31;
      }

      if (*a4 >= a3)
      {
        return result;
      }

      if (*(a2 + *a4) != 95)
      {
        return result;
      }

      result = mosyntutils_AppChar(a5, 15, &v20, 95);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      ++*a4;
    }
  }

  return result;
}

uint64_t mosyntknowl_OrthPunctType(uint64_t a1, int a2)
{
  result = 1;
  if (a2 > 57)
  {
    if ((a2 - 58) >= 2)
    {
      if (a2 == 63)
      {
        return 10;
      }

      return 0;
    }
  }

  else
  {
    if (a2 == 33)
    {
      return 11;
    }

    if (a2 != 44)
    {
      if (a2 == 46)
      {
        return 9;
      }

      return 0;
    }
  }

  return result;
}

uint64_t mosyntknowl_CopyFeatList(__int16 *a1, _WORD *a2)
{
  v2 = *a1;
  *a2 = *a1;
  if (v2 >= 1)
  {
    v3 = 1;
    do
    {
      a2[v3] = a1[v3];
    }

    while (v3++ < *a1);
  }

  return 0;
}

uint64_t mosyntknowl_NewBindingDesc(uint64_t a1, uint64_t *a2)
{
  result = mosyntpal_ALLOCATE(a1, a2, 0x4B4u);
  if ((result & 0x80000000) == 0)
  {
    v4 = 0;
    v5 = *a2;
    v6 = xmmword_26ECCE810;
    v7 = xmmword_26ECC7980;
    v8 = (*a2 + 8);
    v9 = vdupq_n_s64(0x96uLL);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v9, v7)), *v6.i8).u8[0])
      {
        *(v8 - 2) = v4;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x96uLL), *&v7)), *&v6).i8[2])
      {
        *(v8 - 1) = v4 + 1;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x96uLL), *&v6))).i32[1])
      {
        *v8 = v4 + 2;
        v8[1] = v4 + 3;
      }

      v4 += 4;
      v6 = vaddq_s64(v6, v10);
      v7 = vaddq_s64(v7, v10);
      v8 += 4;
    }

    while (v4 != 152);
    *(v5 + 600) = 0;
  }

  return result;
}

uint64_t mosyntknowl_ClearBindings(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 600) >= 1)
    {
      v2 = 0;
      do
      {
        *(a2 + 4 * *(a2 + 604 + 4 * v2)) = *(a2 + 604 + 4 * v2);
        ++v2;
      }

      while (v2 < *(a2 + 600));
    }

    *(a2 + 600) = 0;
  }

  return 0;
}

uint64_t mosyntknowl_DisposeBindingDesc(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    result = 0;
    goto LABEL_5;
  }

  result = mosyntpal_DEALLOCATE(a1, a2);
  if ((result & 0x80000000) == 0)
  {
LABEL_5:
    *a2 = 0;
  }

  return result;
}

BOOL mosyntknowl_DiffFeat(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  LODWORD(v3) = *a2;
  if (v3 != *a3)
  {
    return 1;
  }

  v3 = v3;
  if (!v3 || v3 < 1)
  {
    return 0;
  }

  if (a2[1] != a3[1])
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 - 1 == v4)
    {
      break;
    }

    v6 = a2[v4 + 2];
    v7 = a3[v4++ + 2];
  }

  while (v6 == v7);
  return v5 + 1 < v3;
}

uint64_t mosyntknowl_Unif (uint64_t a1, void *a2, int a3, uint64_t a4, unsigned __int16 *a5, unsigned __int16 *a6, __int16 *a7, __int16 *a8, char *a9)
{
  v21 = 0;
  if (a3 < 3)
  {
    Unify(a4, a5, a6, 50, &v21);
    if (v21)
    {
      result = GenRetFeat(a1, a4, a7, a8);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_17:
      if (!a4)
      {
        v19 = 1;
LABEL_32:
        result = 0;
        *a9 = v19;
        return result;
      }

      v17 = (a4 + 600);
      if (*(a4 + 600) >= 1)
      {
        v18 = 0;
        do
        {
          *(a4 + 4 * *(a4 + 604 + 4 * v18)) = *(a4 + 604 + 4 * v18);
          ++v18;
        }

        while (v18 < *(a4 + 600));
      }

      v19 = 1;
LABEL_30:
      *v17 = 0;
      goto LABEL_32;
    }

LABEL_25:
    if (!a4)
    {
      v19 = 0;
      goto LABEL_32;
    }

    v17 = (a4 + 600);
    if (*(a4 + 600) >= 1)
    {
      v20 = 0;
      do
      {
        *(a4 + 4 * *(a4 + 604 + 4 * v20)) = *(a4 + 604 + 4 * v20);
        ++v20;
      }

      while (v20 < *(a4 + 600));
    }

    v19 = 0;
    goto LABEL_30;
  }

  result = mosyntbase_WString(a1, "      unifying sc1A", 0);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntkbsymtab_WriteFeatList(a1, a2, a5);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntbase_WString(a1, "/sc1B", 0);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntkbsymtab_WriteFeatList(a1, a2, a6);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntbase_WLn(a1);
          if ((result & 0x80000000) == 0)
          {
            Unify(a4, a5, a6, 50, &v21);
            if (v21)
            {
              result = GenRetFeat(a1, a4, a7, a8);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = mosyntbase_WString(a1, "      returning ", 0);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = mosyntkbsymtab_WriteFeatList(a1, a2, a7);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = mosyntbase_WString(a1, " as ", 0);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = mosyntkbsymtab_WriteFeatList(a1, a2, a8);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = mosyntbase_WLn(a1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              goto LABEL_17;
            }

            result = mosyntbase_WString(a1, "      failed", 0);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntbase_WLn(a1);
              if ((result & 0x80000000) == 0)
              {
                goto LABEL_25;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Unify(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, int a4, char *a5)
{
  *a5 = 0;
  v5 = *a2;
  if (v5 == *a3)
  {
    if (v5 < 1)
    {
      v8 = 1;
    }

    else
    {
      v6 = 0;
      v7 = result + 604;
      v8 = 1;
      do
      {
        v9 = a2[v6 + 1];
        if ((v9 & 0x80000000) == 0)
        {
          v10 = *(result + 4 * v9);
          do
          {
            v9 = v10;
            if ((v10 & 0x80000000) != 0)
            {
              break;
            }

            v10 = *(result + 4 * v10);
          }

          while (v10 != v9);
        }

        v11 = a3[v6 + 1];
        if ((v11 & 0x80000000) == 0)
        {
          v12 = *(result + 4 * (v11 + a4));
          while (1)
          {
            v11 = v12;
            if ((v12 & 0x80000000) != 0)
            {
              break;
            }

            v12 = *(result + 4 * v12);
            if (v12 == v11)
            {
              *(result + 4 * v11) = v9;
              *(v7 + 4 * *(result + 600)) = v11;
              goto LABEL_15;
            }
          }
        }

        if ((v9 & 0x80000000) != 0)
        {
          if (v9 != v11)
          {
            v8 = 0;
          }
        }

        else
        {
          *(result + 4 * v9) = v11;
          *(v7 + 4 * *(result + 600)) = v9;
LABEL_15:
          ++*(result + 600);
        }

        ++v6;
      }

      while (v6 < v5 && v8);
    }

    *a5 = v8;
  }

  return result;
}

uint64_t GenRetFeat(uint64_t a1, uint64_t a2, __int16 *a3, _WORD *a4)
{
  v4 = *a3;
  *a4 = *a3;
  if (v4 >= 1)
  {
    v8 = 0;
    result = 0;
    v10 = a3 + 1;
    v11 = a4 + 1;
    while (1)
    {
      v12 = v10[v8];
      if (v12 < 0)
      {
LABEL_7:
        if (v12 >= 50)
        {
          result = mosyntbase_WStringLn(a1, "***** internal error: returned variable exceeds scope", 0);
          LOWORD(v12) = 0;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      else
      {
        v13 = *(a2 + 4 * v12);
        while (1)
        {
          v12 = v13;
          if ((v13 & 0x80000000) != 0)
          {
            break;
          }

          v13 = *(a2 + 4 * v13);
          if (v13 == v12)
          {
            goto LABEL_7;
          }
        }
      }

      v11[v8++] = v12;
      if (v8 >= *a3)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t mosyntknowl_Unif2(uint64_t a1, void *a2, int a3, uint64_t a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, unsigned __int16 *a8, __int16 *a9, __int16 *a10, char *a11)
{
  v24 = 0;
  if (a3 < 3 || (result = mosyntbase_WString(a1, "      unifying sc1A", 0), (result & 0x80000000) == 0) && (result = mosyntkbsymtab_WriteFeatList(a1, a2, a5), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, "/sc1B", 0), (result & 0x80000000) == 0) && (result = mosyntkbsymtab_WriteFeatList(a1, a2, a6), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, " and sc2A", 0), (result & 0x80000000) == 0) && (result = mosyntkbsymtab_WriteFeatList(a1, a2, a7), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, "/sc2B", 0), (result & 0x80000000) == 0) && (result = mosyntkbsymtab_WriteFeatList(a1, a2, a8), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
  {
    v25 = 0;
    Unify(a4, a5, a6, 50, &v25);
    if (v25 && (Unify(a4, a7, a8, 100, &v24), v24))
    {
      result = GenRetFeat(a1, a4, a9, a10);
      if ((result & 0x80000000) == 0)
      {
        if (a3 < 3 || (result = mosyntbase_WString(a1, "      returning ", 0), (result & 0x80000000) == 0) && (result = mosyntkbsymtab_WriteFeatList(a1, a2, a9), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, " as ", 0), (result & 0x80000000) == 0) && (result = mosyntkbsymtab_WriteFeatList(a1, a2, a10), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
        {
          if (!a4)
          {
            v22 = 1;
            goto LABEL_36;
          }

          v20 = (a4 + 600);
          if (*(a4 + 600) >= 1)
          {
            v21 = 0;
            do
            {
              *(a4 + 4 * *(a4 + 604 + 4 * v21)) = *(a4 + 604 + 4 * v21);
              ++v21;
            }

            while (v21 < *(a4 + 600));
          }

          v22 = 1;
          goto LABEL_33;
        }
      }
    }

    else if (a3 < 3 || (result = mosyntbase_WString(a1, "      failed", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
    {
      if (!a4)
      {
        v22 = 0;
        goto LABEL_36;
      }

      v20 = (a4 + 600);
      if (*(a4 + 600) >= 1)
      {
        v23 = 0;
        do
        {
          *(a4 + 4 * *(a4 + 604 + 4 * v23)) = *(a4 + 604 + 4 * v23);
          ++v23;
        }

        while (v23 < *(a4 + 600));
      }

      v22 = 0;
LABEL_33:
      *v20 = 0;
LABEL_36:
      result = 0;
      *a11 = v22;
    }
  }

  return result;
}

uint64_t mosyntknowl_CheckUnifiable(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, char *a4)
{
  v16 = 0;
  *a4 = 0;
  result = mosyntpal_ALLOCATE(a1, &v16, 0x4B4u);
  if ((result & 0x80000000) == 0)
  {
    v9 = 0;
    v10 = v16;
    v11 = xmmword_26ECCE810;
    v12 = xmmword_26ECC7980;
    v13 = (v16 + 8);
    v14 = vdupq_n_s64(0x96uLL);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v14, v12)), *v11.i8).u8[0])
      {
        *(v13 - 2) = v9;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x96uLL), *&v12)), *&v11).i8[2])
      {
        *(v13 - 1) = v9 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x96uLL), *&v11))).i32[1])
      {
        *v13 = v9 + 2;
        v13[1] = v9 + 3;
      }

      v9 += 4;
      v11 = vaddq_s64(v11, v15);
      v12 = vaddq_s64(v12, v15);
      v13 += 4;
    }

    while (v9 != 152);
    *(v10 + 600) = 0;
    if (v16)
    {
      Unify(v16, a2, a3, 50, a4);
      if (v16)
      {
        return mosyntpal_DEALLOCATE(a1, &v16);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mosyntknowl_WriteTraceHeader(uint64_t a1, unsigned int a2)
{
  if (a2 > 7)
  {
    return 0;
  }

  else
  {
    return mosyntbase_WString(a1, off_279DAC4C8[a2], 0);
  }
}

uint64_t GetSVOXPADiacPhone(uint64_t a1, uint64_t a2, int a3, int *a4, _BYTE *a5, char *a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v19 = 0;
  *&v22[3] = 0;
  *(v22 + 1) = 0;
  *a5 = 0;
  v18 = 0;
  v12 = *a4;
  v13 = *(a2 + v12);
  if (v12 < a3 && v13 == 94 || v13 == 126 || v13 == 61)
  {
    result = mosyntutils_AppChar(a5, 14, &v18, v13);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v15 = *a4 + 1;
    *a4 = v15;
    v13 = *(a2 + v15);
  }

  LOBYTE(v22[0]) = 0;
  if (!v13)
  {
    goto LABEL_15;
  }

  v21 = 0;
  v20 = 0;
  result = mosyntutils_GetUTF8Char(a1, a2, a3, a4, &v21 + 4);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = mosyntbase_App(v22, 14, &v21, &v21 + 4, 4, &v20);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (LOBYTE(v22[0]) < 0x21u || LOBYTE(v22[0]) - 58 <= 0x25 && ((1 << (LOBYTE(v22[0]) - 58)) & 0x3000000009) != 0 || (v16 = 1, LOBYTE(v22[0]) - 123 <= 3) && LOBYTE(v22[0]) != 124)
  {
LABEL_15:
    v16 = 0;
    v22[0] = 33;
  }

  *a6 = v16;
  result = mosyntbase_App(a5, 14, &v18, v22, 14, &v19);
  if ((result & 0x80000000) == 0)
  {
    v17 = *a4;
    if (v17 < a3 && *(a2 + v17) == 58)
    {
      result = mosyntutils_AppChar(a5, 14, &v18, 58);
      if ((result & 0x80000000) == 0)
      {
        ++*a4;
      }
    }
  }

  return result;
}

uint64_t auxkbcommondef_RecallString(uint64_t a1, uint64_t a2, signed int a3, uint64_t a4, int a5)
{
  v9 = a3;
  v27 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x80000000) == 0 && *(a2 + 8) > a3 || (result = mosyntbase_WString(a1, "*** error in dynamic array reading position: start ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, v9, 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, ", length ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, 1u, 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, ", actual data length: ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, *(a2 + 8), 0), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
  {
    v12 = 0;
    v26 = 0;
    v25 = 0;
    v13 = v9 / 512;
    do
    {
      *(&v25 + v12) = v13 - (v5 & 0xFFFFFFC0);
      v12 += 4;
      v13 /= 64;
    }

    while (v12 != 12);
    v14 = v9 % 512;
    v15 = *(*(*(*(a2 + 16) + 8 * v26 + 8) + 8 * SHIDWORD(v25) + 8) + 8 * v25 + 8);
    v16 = *(v15 + v9 % 512);
    v17 = a5 > 0;
    if (v16)
    {
      v18 = a5 < 1;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = 0;
      if (*(v15 + v14))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v21 = 0;
      do
      {
        *(a4 + v21) = v16;
        ++v9;
        if (v14 < 511)
        {
          ++v14;
        }

        else
        {
          v22 = 0;
          v26 = 0;
          v25 = 0;
          v23 = v9 / 512;
          do
          {
            *(&v25 + v22) = v23 - (v6 & 0xFFFFFFC0);
            v22 += 4;
            v23 /= 64;
          }

          while (v22 != 12);
          v14 = v9 % 512;
          v15 = *(*(*(*(a2 + 16) + 8 * v26 + 8) + 8 * SHIDWORD(v25) + 8) + 8 * v25 + 8);
        }

        ++v21;
        v16 = *(v15 + v14);
        v17 = v21 < a5;
        if (v16)
        {
          v24 = v21 >= a5;
        }

        else
        {
          v24 = 1;
        }
      }

      while (!v24);
      v19 = v21;
      if (*(v15 + v14))
      {
LABEL_31:
        result = mosyntbase_WStringLn(a1, "*** RecallString: output array too small", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_32;
      }
    }

    result = 0;
LABEL_32:
    if (v17)
    {
      *(a4 + v19) = 0;
    }
  }

  return result;
}

uint64_t accphr_LoadData(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  memset(v55, 0, sizeof(v55));
  *a3 = 0;
  result = InitRsrcFunction(a1, a2, &v49);
  if ((result & 0x80000000) == 0)
  {
    result = kbaux_BuildBrokerString(v49, "accphr", v55, 0x100uLL);
    if ((result & 0x80000000) == 0)
    {
      v7 = ssftriff_reader_ObjOpen(a1, a2, 2, v55, "ACPH", 1031, &v48);
      if (v7 < 0)
      {
        v17 = v7;
      }

      else
      {
        v15 = v48;
        v16 = v49;
        v54 = 0;
        v53 = 0;
        v52 = 0;
        *__s1 = 0;
        v17 = ssftriff_reader_OpenChunk(v48, __s1, &v54, &v53);
        if ((v17 & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "ACPH"))
        {
          v50 = 0;
          v17 = ssftriff_reader_DetachChunkData(v15, &v50, &v53);
          if ((v17 & 0x80000000) == 0)
          {
            v18 = -1923080192;
            v19 = heap_Alloc(*(v16 + 8), 176);
            *a3 = v19;
            if (v19)
            {
              cstdlib_memset(v19, 0, 0xB0uLL);
              v20 = *a3;
              *v20 = v54;
              *(v20 + 16) = v50;
              v21 = v53;
              *(*a3 + 8) = v53;
              v22 = *a3;
              *(v22 + 24) = *v21;
              *(v22 + 28) = v21[1];
              v21 += 2;
              *(v22 + 64) = v21;
              v23 = &v21[*(*a3 + 28)];
              *(*a3 + 72) = v23;
              v24 = *a3;
              v25 = *(*a3 + 28);
              if (v25 >= 1)
              {
                do
                {
                  v23 += *v23 + 1;
                  --v25;
                }

                while (v25);
              }

              v27 = *v23;
              v26 = v23 + 1;
              *(v24 + 32) = v27;
              *(v24 + 80) = v26;
              v28 = *a3;
              v29 = &v26[3 * *(*a3 + 32)];
              v30 = *v29++;
              *(v28 + 36) = v30;
              *(v28 + 88) = v29;
              v31 = *a3;
              v32 = &v29[7 * *(*a3 + 36)];
              v33 = *v32++;
              *(v31 + 40) = v33;
              *(v31 + 96) = v32;
              v34 = *a3;
              v35 = &v32[3 * *(*a3 + 40)];
              v36 = *v35++;
              *(v34 + 44) = v36;
              *(v34 + 104) = v35;
              v37 = *a3;
              v38 = &v35[7 * *(*a3 + 44)];
              v39 = *v38++;
              *(v37 + 48) = v39;
              *(v37 + 112) = v38;
              v40 = *a3;
              v41 = &v38[16 * *(*a3 + 48)];
              v42 = *v41++;
              *(v40 + 52) = v42;
              *(v40 + 120) = v41;
              v43 = *a3;
              v44 = &v41[4 * *(*a3 + 52)];
              v45 = *v44++;
              *(v43 + 56) = v45;
              *(v43 + 128) = v44;
              v46 = *a3;
              v47 = &v44[16 * *(*a3 + 56)];
              *(v46 + 136) = *v47;
              *(v46 + 140) = v47[1];
              *(v46 + 144) = v47[2];
              *(v46 + 148) = v47[3];
              *(v46 + 152) = v47[4];
              *(v46 + 156) = v47[5];
              *(v46 + 160) = v47[6];
              v47 += 7;
              *(v46 + 168) = v47;
              if (v47[*(*a3 + 160)] == 1234567890)
              {
                goto LABEL_13;
              }
            }

            else
            {
              v18 = -1923080182;
            }

            ssftriff_reader_ReleaseChunkData(v50);
            v8 = *a3;
            if (*a3)
            {
              heap_Free(*(v16 + 8), v8);
              *a3 = 0;
            }

            v17 = v18;
          }
        }
      }

LABEL_13:
      LODWORD(result) = ssftriff_reader_ObjClose(v48, v8, v9, v10, v11, v12, v13, v14);
      if (v17 >= 0)
      {
        return result;
      }

      else
      {
        return v17;
      }
    }
  }

  return result;
}

uint64_t accphr_UnloadData(_WORD *a1, int a2, uint64_t *a3)
{
  v6 = 0;
  if (!a3)
  {
    return 2371887111;
  }

  inited = InitRsrcFunction(a1, a2, &v6);
  if ((inited & 0x80000000) == 0)
  {
    if (*a3)
    {
      ssftriff_reader_ReleaseChunkData(*(*a3 + 16));
      if (*a3)
      {
        heap_Free(*(v6 + 8), *a3);
        *a3 = 0;
      }
    }
  }

  return inited;
}

uint64_t accphr_getAccPhrType(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t accphr_getFunctionWords(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 144);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t accphr_getHierarchy(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 148);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t accphr_getDefaultEmph(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 140);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t accphr_getScenarios(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 156);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t accphr_getDomains(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 152);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t accphr_getFeatList(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  result = 2371887111;
  if (a1 && (a2 & 0x80000000) == 0 && *(a1 + 28) > a2)
  {
    v5 = (*(a1 + 72) + 4 * *(*(a1 + 64) + 4 * a2));
    v6 = *v5;
    *a3 = v6;
    if (v6 >= 1)
    {
      v7 = a3 + 1;
      v8 = (v5 + 1);
      do
      {
        v9 = *v8++;
        *v7++ = v9;
        --v6;
      }

      while (v6);
    }

    return 0;
  }

  return result;
}

uint64_t accphr_getConsList(int a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 == 1 || a1 == 0;
  if (a1 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = a1 == 2 || v6;
  if (a1 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 && (a3 & 0x80000000) == 0)
  {
    v10 = v8 ^ 1;
    if (*(a2 + 32) <= a3)
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return *(*(a2 + 80) + 4 * (v9 + 3 * a3));
    }
  }

  return result;
}

uint64_t accphr_getNode(int a1, uint64_t a2, int a3)
{
  if (a1 <= 3)
  {
    if (a1 == 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = -1;
    }

    v8 = a1 == 2 || a1 == 3;
    if (a1 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }

    if (a1 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    if (a1)
    {
      v11 = a1 == 1;
    }

    else
    {
      v11 = 1;
    }

    if (!a1)
    {
      v7 = 0;
    }

    if (a1 > 1)
    {
      v7 = v10;
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    if (a1 == 8)
    {
      v3 = 6;
    }

    else
    {
      v3 = -1;
    }

    v4 = a1 == 7 || a1 == 8;
    if (a1 == 7)
    {
      v5 = 4;
    }

    else
    {
      v5 = v3;
    }

    v6 = a1 == 6 || v4;
    if (a1 == 6)
    {
      v5 = 5;
    }

    if (a1 == 5)
    {
      v7 = 4;
    }

    else
    {
      v7 = -1;
    }

    v8 = a1 == 4 || a1 == 5;
    if (a1 == 4)
    {
      v7 = 4;
    }

    if (a1 > 5)
    {
      v8 = v6;
      v7 = v5;
    }
  }

  result = 0;
  if (a2 && (a3 & 0x80000000) == 0)
  {
    v13 = !v8;
    if (*(a2 + 36) <= a3)
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }

    else
    {
      return *(*(a2 + 88) + 4 * (v7 + 7 * a3));
    }
  }

  return result;
}

uint64_t accphr_getNodeMatchOp(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 36) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(a1 + 88) + 4 * (7 * a2) + 4);
    }
  }

  return result;
}

uint64_t accphr_getNodeNegated(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 36) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(a1 + 88) + 4 * (7 * a2));
    }
  }

  return result;
}

uint64_t accphr_getChildren(int a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 == 1 || a1 == 0;
  if (a1 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = a1 == 2 || v6;
  if (a1 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 && (a3 & 0x80000000) == 0)
  {
    v10 = v8 ^ 1;
    if (*(a2 + 40) <= a3)
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return *(*(a2 + 96) + 4 * (v9 + 3 * a3));
    }
  }

  return result;
}

uint64_t accphr_getChildrenOpType(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 40) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(a1 + 96) + 4 * (3 * a2));
    }
  }

  return result;
}

uint64_t accphr_getInstr(int a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 == 6)
  {
    v5 = 6;
  }

  else
  {
    v5 = -1;
  }

  v6 = a1 == 5 || a1 == 6;
  if (a1 == 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = -1;
  }

  v9 = a1 == 3 || a1 == 4;
  if (a1 == 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = v8;
  }

  if (a1 <= 4)
  {
    v6 = v9;
    v7 = v10;
  }

  if (a1 == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = -1;
  }

  v12 = a1 == 1 || a1 == 2;
  if (a1 == 1)
  {
    v11 = 1;
  }

  if (a1)
  {
    v13 = v11;
  }

  else
  {
    v12 = 1;
    v13 = 0;
  }

  if (a1 <= 2)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  if (a1 <= 2)
  {
    v15 = v13;
  }

  else
  {
    v15 = v7;
  }

  if (a2 && (a3 & 0x80000000) == 0)
  {
    v16 = !v14;
    if (*(a2 + 44) <= a3)
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }

    else
    {
      return *(*(a2 + 104) + 4 * (v15 + 7 * a3));
    }
  }

  return result;
}

uint64_t accphr_getInstrType(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 44) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(a1 + 104) + 4 * (7 * a2) + 4);
    }
  }

  return result;
}

uint64_t accphr_getInstrRight(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 44) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(a1 + 104) + 4 * (7 * a2) + 16);
    }
  }

  return result;
}

uint64_t accphr_getInstrTargetRange(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 44) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(a1 + 104) + 4 * (7 * a2) + 12);
    }
  }

  return result;
}

uint64_t accphr_getRule(int a1, uint64_t a2, int a3)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      v3 = 1;
      break;
    default:
      v3 = 0;
      a1 = -1;
      break;
  }

  v4 = 0;
  if (a2 && (a3 & 0x80000000) == 0)
  {
    v5 = v3 ^ 1;
    if (*(a2 + 52) <= a3)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      return *(*(a2 + 112) + 4 * (a1 + 16 * a3));
    }
  }

  return v4;
}

uint64_t accphr_getFirstRule(uint64_t a1, int a2)
{
  if (a1)
  {
    return *(*(a1 + 168) + 4 * (a2 % *(a1 + 160)));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t accphr_getRuleSet(int a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = -1;
  }

  v6 = a1 == 3 || a1 == 4;
  if (a1 == 3)
  {
    v5 = 2;
  }

  if (a1 == 2)
  {
    v6 = 1;
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  if (a1)
  {
    v9 = a1 == 1;
  }

  else
  {
    v9 = 1;
  }

  if (a1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (a1 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a1 <= 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 && (a3 & 0x80000000) == 0)
  {
    v13 = !v11;
    if (*(a2 + 52) <= a3)
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }

    else
    {
      return *(*(a2 + 120) + 4 * (v12 + 4 * a3));
    }
  }

  return result;
}

uint64_t accphr_getRuleSetIsSubset(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 52) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(a1 + 120) + 4 * (4 * a2));
    }
  }

  return result;
}

uint64_t accphr_getScenario(int a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 == 3)
  {
    v5 = 15;
  }

  else
  {
    v5 = -1;
  }

  v6 = a1 == 2 || a1 == 3;
  if (a1 == 2)
  {
    v7 = 14;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 1)
  {
    v8 = 13;
  }

  else
  {
    v8 = -1;
  }

  if (a1)
  {
    v9 = a1 == 1;
  }

  else
  {
    v9 = 1;
  }

  if (a1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (a1 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a1 <= 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 && (a3 & 0x80000000) == 0)
  {
    v13 = !v11;
    if (*(a2 + 56) <= a3)
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }

    else
    {
      return *(*(a2 + 128) + 4 * (v12 + 16 * a3));
    }
  }

  return result;
}

uint64_t accphr_getScenarioNamePtr(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 56) <= a2)
    {
      return 0;
    }

    else
    {
      return *(a1 + 128) + 4 * (16 * a2);
    }
  }

  return result;
}

uint64_t mosyntutils_UTF32ToUTF8(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, _BYTE *a5)
{
  *a5 = 1;
  if (a4 < 4)
  {
    result = 0;
    *a5 = 0;
    return result;
  }

  LOBYTE(v5) = a2;
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (HIWORD(a2))
      {
        if (HIWORD(a2) > 0x10u)
        {
          *a5 = 0;
          mosyntbase_WInt3Ln(a1, "*** UTF32ToUTF8: unable to convert UTF32 char ", 0, a2, " to UTF8", 0);
          return 0;
        }

        a3[3] = a2 & 0x3F | 0x80;
        a3[2] = (a2 >> 6) & 0x3F | 0x80;
        a3[1] = (a2 >> 12) & 0x3F | 0x80;
        v5 = (a2 >> 18) | 0xFFFFFFF0;
        result = 4;
      }

      else
      {
        a3[2] = a2 & 0x3F | 0x80;
        a3[1] = (a2 >> 6) & 0x3F | 0x80;
        v5 = (a2 >> 12) | 0xFFFFFFE0;
        result = 3;
      }
    }

    else
    {
      a3[1] = a2 & 0x3F | 0x80;
      v5 = (a2 >> 6) | 0xFFFFFFC0;
      result = 2;
    }
  }

  else
  {
    result = 1;
  }

  *a3 = v5;
  if (result >= a4)
  {
    return 4;
  }

  a3[result] = 0;
  return result;
}

uint64_t mosyntutils_UTF8ToUTF32(uint64_t a1, unsigned __int8 *a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  result = *a2;
  if (*a2 < 0)
  {
    if (result > 0xF7)
    {
      return 0;
    }

    if (result >= 0xF0)
    {
      v7 = ((result & 7) << 18) | ((a2[1] & 0x3F) << 12) | ((a2[2] & 0x3F) << 6);
      v8 = a2[3];
      return v7 & 0xFFFFFFC0 | v8 & 0x3F;
    }

    if (result >= 0xE0)
    {
      v7 = ((result & 0xF) << 12) | ((a2[1] & 0x3F) << 6);
      v8 = a2[2];
      return v7 & 0xFFFFFFC0 | v8 & 0x3F;
    }

    if (result < 0xC0)
    {
      *a4 = 0;
      mosyntbase_WString(a1, "*** UTF8ToUTF32: unable to convert UTF8 char '", 0);
      mosyntbase_WString(a1, a2, a3);
      mosyntbase_WString(a1, "'", 0);
      if (mosyntbase_Length(a2, a3) >= 1)
      {
        v10 = 0;
        do
        {
          mosyntbase_WString(a1, " ", 0);
          mosyntbase_WInt(a1, a2[v10++], 1);
        }

        while (v10 < mosyntbase_Length(a2, a3));
      }

      mosyntbase_WString(a1, " to UTF32", 0);
      mosyntbase_WLn(a1);
      return 0;
    }

    return a2[1] & 0x3F | ((result & 0x1F) << 6);
  }

  return result;
}

uint64_t mosyntutils_DetUTF8Length(uint64_t a1, unsigned int a2)
{
  if (a2 > -9)
  {
    return 1;
  }

  if (a2 > 0xFFFFFFEF)
  {
    return 4;
  }

  if (a2 > 0xFFFFFFDF)
  {
    return 3;
  }

  if (a2 > 0xFFFFFFBF)
  {
    return 2;
  }

  mosyntbase_WriteDevelMessage(a1, "DetUTF8Length: malformed UTF8 string starting with %d", 0, "", 0, "", 0, "", 0, a2, 0, 0);
  return 1;
}

uint64_t mosyntutils_GetUTF8Char(uint64_t a1, uint64_t a2, int a3, int *a4, _BYTE *a5)
{
  *a5 = 0;
  v5 = *a4;
  if (v5 < a3)
  {
    v10 = mosyntutils_DetUTF8Length(a1, *(a2 + v5));
    v11 = 0;
    v12 = *a4;
    while (v12 < a3)
    {
      a5[v11] = *(a2 + v12);
      v12 = *a4 + 1;
      *a4 = v12;
      if (v10 == ++v11)
      {
        LODWORD(v11) = v10;
        break;
      }
    }

    if (v11 <= 3)
    {
      a5[v11] = 0;
    }
  }

  return 0;
}

uint64_t mosyntutils_UTF8Length(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  v6 = 1;
  while (1)
  {
    v8 = *a2++;
    v7 = v8;
    if (!v8)
    {
      return v4;
    }

    if (v3 < 1)
    {
      if ((v7 & 0x80) != 0)
      {
        if (v7 > 0xF7)
        {
          goto LABEL_23;
        }

        if (v7 < 0xF0)
        {
          if (v7 < 0xE0)
          {
            if (v7 < 0xC0)
            {
              goto LABEL_23;
            }

            v4 = (v4 + 1);
            v3 = 1;
          }

          else
          {
            v4 = (v4 + 1);
            v3 = 2;
          }
        }

        else
        {
          v4 = (v4 + 1);
          v3 = 3;
        }
      }

      else
      {
        v3 = 0;
        v4 = (v4 + 1);
      }
    }

    else
    {
      v9 = v7 < -64;
      if (!v9)
      {
        v6 = 0;
      }

      v3 -= v9;
    }

    if (v6)
    {
      v10 = v5 >= a3;
    }

    else
    {
      v10 = 1;
    }

    ++v5;
    if (v10)
    {
      if (v6)
      {
        return v4;
      }

LABEL_23:
      mosyntbase_WriteDevelMessage(a1, "UTF8Length: malformed UTF8 string", 0, "", 0, "", 0, "", 0, 0, 0, 0);
      return 1;
    }
  }
}

uint64_t mosyntutils_AppChar(uint64_t a1, int a2, int *a3, char a4)
{
  v5 = 0;
  v6[0] = a4;
  v6[1] = 0;
  return mosyntbase_App(a1, a2, a3, v6, 2, &v5);
}

uint64_t mosyntutils_SkipBlanksInString(uint64_t a1, int a2, int *a3)
{
  v3 = *a3;
  if (a2 > v3)
  {
    v4 = (a1 + v3);
    v5 = a2 - v3;
    v6 = v3 + 1;
    do
    {
      v7 = *v4++;
      if (v7 != 32)
      {
        break;
      }

      *a3 = v6++;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t mosyntutils_CheckSkipCharInString(uint64_t a1, unsigned __int8 *a2, int a3, signed int *a4, unsigned __int8 a5)
{
  v8 = *a4;
  if (*a4 >= a3 || a2[v8] == a5)
  {
    result = 0;
  }

  else
  {
    v10[0] = a5;
    v10[1] = 0;
    result = mosyntbase_WriteDevelMessage(a1, "***** error getting character '%s' at position %d in string '%s'\\n", 0, v10, 2, a2, a3, "", 0, v8, 0, 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v8 = *a4;
  }

  if (v8 < a3)
  {
    if (a2[v8])
    {
      *a4 = v8 + 1;
    }
  }

  return result;
}

uint64_t mosyntutils_GetCardFromString(uint64_t a1, unsigned __int8 *a2, int a3, signed int *a4, _DWORD *a5)
{
  v9 = *a4;
  if (*a4 < a3 && a2[v9] == 32)
  {
    v10 = &a2[v9 + 1];
    v11 = v9 + 1;
    while (1)
    {
      *a4 = v11;
      if (a3 == v11)
      {
        break;
      }

      v12 = *v10++;
      ++v11;
      if (v12 != 32)
      {
        v9 = v11 - 1;
        goto LABEL_8;
      }
    }

    v9 = a3;
  }

LABEL_8:
  if (a2[v9] - 58 > 0xFFFFFFF5)
  {
    result = 0;
  }

  else
  {
    result = mosyntbase_WriteDevelMessage(a1, "***** error in getting cardinal from string '%s' at position %d\\n", 0, a2, a3, "", 0, "", 0, v9, 0, 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  *a5 = 0;
  for (i = *a4; i < a3; *a4 = i)
  {
    v15 = a2[i];
    if ((v15 - 48) > 9)
    {
      break;
    }

    *a5 = v15 + 10 * *a5 - 48;
    i = *a4 + 1;
  }

  return result;
}

uint64_t mosyntutils_GetIdentFromString(uint64_t a1, unsigned __int8 *a2, int a3, signed int *a4, _BYTE *a5, int a6)
{
  v11 = *a4;
  if (*a4 < a3 && a2[v11] == 32)
  {
    v12 = &a2[v11 + 1];
    v13 = v11 + 1;
    while (1)
    {
      *a4 = v13;
      if (a3 == v13)
      {
        break;
      }

      v14 = *v12++;
      ++v13;
      if (v14 != 32)
      {
        v11 = v13 - 1;
        goto LABEL_8;
      }
    }

    v11 = a3;
  }

LABEL_8:
  if ((a2[v11] & 0xDFu) - 91 > 0xFFFFFFE5 || (result = mosyntbase_WriteDevelMessage(a1, "***** error in getting identifier from string '%s' at position %d\\n", 0, a2, a3, "", 0, "", 0, v11, 0, 0), (result & 0x80000000) == 0))
  {
    *a5 = 0;
    v21 = 0;
    v16 = a2[*a4];
    v22 = 0;
    v23[0] = v16;
    v23[1] = 0;
    result = mosyntbase_App(a5, a6, &v21, v23, 2, &v22);
    if ((result & 0x80000000) == 0)
    {
      v17 = a3 - 1;
      do
      {
        v18 = *a4;
        *a4 = v18 + 1;
        v19 = a2[v18 + 1];
        if (v18 >= v17)
        {
          if ((v19 - 48) < 0xA)
          {
            goto LABEL_21;
          }
        }

        else if ((v19 & 0xFFFFFFDF) - 65 < 0x1A || (v19 - 48) < 0xA)
        {
          goto LABEL_21;
        }

        if (v19 != 95 && v19 != 45)
        {
          return mosyntbase_UpperCase(a5, a6);
        }

LABEL_21:
        v24 = 0;
        v25[0] = v19;
        v25[1] = 0;
        result = mosyntbase_App(a5, a6, &v21, v25, 2, &v24);
      }

      while ((result & 0x80000000) == 0);
    }
  }

  return result;
}

uint64_t mosyntutils_GetIdent1FromString(uint64_t a1, unsigned __int8 *a2, int a3, signed int *a4, _BYTE *a5, int a6)
{
  v11 = *a4;
  if (*a4 < a3 && a2[v11] == 32)
  {
    v12 = &a2[v11 + 1];
    v13 = v11 + 1;
    while (1)
    {
      *a4 = v13;
      if (a3 == v13)
      {
        break;
      }

      v14 = *v12++;
      ++v13;
      if (v14 != 32)
      {
        v11 = v13 - 1;
        goto LABEL_8;
      }
    }

    v11 = a3;
  }

LABEL_8:
  if ((a2[v11] & 0xDFu) - 91 > 0xFFFFFFE5 || (result = mosyntbase_WriteDevelMessage(a1, "***** error in getting identifier from string '%s' at position %d\\n", 0, a2, a3, "", 0, "", 0, v11, 0, 0), (result & 0x80000000) == 0))
  {
    *a5 = 0;
    v20 = 0;
    v16 = a2[*a4];
    v21 = 0;
    v22[0] = v16;
    v22[1] = 0;
    result = mosyntbase_App(a5, a6, &v20, v22, 2, &v21);
    if ((result & 0x80000000) == 0)
    {
      v17 = a3 - 1;
      while (1)
      {
        v18 = *a4;
        *a4 = v18 + 1;
        if (v18 >= v17)
        {
          break;
        }

        v19 = a2[v18 + 1];
        if ((v19 & 0xFFFFFFDF) - 65 > 0x19)
        {
          break;
        }

        v23 = 0;
        v24[0] = v19;
        v24[1] = 0;
        result = mosyntbase_App(a5, a6, &v20, v24, 2, &v23);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      return mosyntbase_UpperCase(a5, a6);
    }
  }

  return result;
}

uint64_t mosynttrans_InitTransDesc(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  result = mosyntpal_ALLOCATE(a1, a4, 0x18u);
  if ((result & 0x80000000) == 0)
  {
    *(*a4 + 8) = a3;
    v8 = *a4;
    *v8 = a2;
    *(v8 + 16) = 0;
  }

  return result;
}

uint64_t mosynttrans_FinishTransDesc(uint64_t a1, uint64_t *a2)
{
  v4 = (*a2 + 16);
  v5 = *v4;
  if (*v4)
  {
    while (1)
    {
      v5 = *v5;
      result = mosyntpal_DEALLOCATE(a1, v4);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      *v4 = v5;
      if (!v5)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:

    return mosyntpal_DEALLOCATE(a1, a2);
  }

  return result;
}

uint64_t mosynttrans_NewTransState(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, char a7, int a8, uint64_t *a9)
{
  TransductionMode = mosyntpal_ALLOCATE(a1, a9, 0xA0u);
  if ((TransductionMode & 0x80000000) != 0)
  {
    return TransductionMode;
  }

  **a9 = 0;
  *(*a9 + 8) = 0;
  v18 = *a9;
  *(v18 + 16) = a3;
  *(v18 + 20) = a5;
  *(v18 + 24) = 0;
  *(v18 + 32) = a4;
  v19 = *a9;
  *(v19 + 40) = a6;
  *(v19 + 44) = a7;
  TransductionMode = mosyntkbfst_GetTransductionMode(*(v19 + 32), (v19 + 128));
  if ((TransductionMode & 0x80000000) != 0)
  {
    return TransductionMode;
  }

  TransductionMode = mosyntdata_StartPhonList(a1, (*a9 + 48), (*a9 + 56));
  if ((TransductionMode & 0x80000000) != 0)
  {
    return TransductionMode;
  }

  v20 = *a9;
  if (a8 >= 0x3E8)
  {
    v21 = 1000;
  }

  else
  {
    v21 = a8;
  }

  if (a8 < 0)
  {
    v21 = 50;
  }

  *(v20 + 64) = 0;
  *(v20 + 68) = v21;
  *(v20 + 72) = 0;
  started = mosyntdata_StartPhonList(a1, (v20 + 80), (v20 + 88));
  if ((started & 0x80000000) == 0)
  {
    v23 = *a9;
    *(v23 + 96) = 0;
    *(v23 + 100) = -1;
    *(v23 + 112) = 0;
    *(*a9 + 120) = 0;
    *(*a9 + 104) = 0;
    if ((a6 - 1) > 1)
    {
      *(*a9 + 132) = mosyntkbsymtab_PhonStartId(*(a2 + 8));
      *(*a9 + 134) = mosyntkbsymtab_PhonTermId(*(a2 + 8));
      *(*a9 + 136) = mosyntkbsymtab_FSTDefaultId(*(a2 + 8));
      v28 = mosyntkbsymtab_SyllSepId(*(a2 + 8));
      v29 = *a9;
      *(v29 + 138) = v28;
      v30 = *(v29 + 128);
      if (!v30)
      {
        goto LABEL_26;
      }

      if (v30 == 1)
      {
        *(*a9 + 140) = mosyntkbsymtab_WordSep2Id(*(a2 + 8));
        *(*a9 + 142) = mosyntkbsymtab_PhrSepPause2Id(*(a2 + 8));
        v31 = 0;
        *(*a9 + 144) = mosyntkbsymtab_PhrSepNoPause2Id(*(a2 + 8));
        do
        {
          *(*a9 + 2 * v31 + 146) = mosyntkbsymtab_AccId(*(a2 + 8), v31);
          ++v31;
        }

        while (v31 != 5);
        return started;
      }

      if (*a2 < 1 || (started = TraceUnknownTransductionMode(a1, v29), (started & 0x80000000) == 0))
      {
LABEL_26:
        *(*a9 + 140) = mosyntkbsymtab_WordSepId(*(a2 + 8));
        *(*a9 + 142) = mosyntkbsymtab_PhrSepPauseId(*(a2 + 8));
        *(*a9 + 144) = mosyntkbsymtab_PhrSepNoPauseId(*(a2 + 8));
        for (i = 146; i != 156; i += 2)
        {
          *(*a9 + i) = mosyntkbsymtab_PrimAccId(*(a2 + 8));
        }
      }
    }

    else if (!*(*a9 + 128) || *a2 < 1 || (started = TraceUnknownTransductionMode(a1, *a9), (started & 0x80000000) == 0))
    {
      *(*a9 + 132) = mosyntkbsymtab_IPABeginId(*(a2 + 8));
      *(*a9 + 134) = mosyntkbsymtab_IPAEndId(*(a2 + 8));
      *(*a9 + 136) = mosyntkbsymtab_FSTDefaultId(*(a2 + 8));
      *(*a9 + 138) = mosyntkbsymtab_IPASyllSepId(*(a2 + 8));
      v24 = mosyntkbsymtab_IPAWordSepId(*(a2 + 8));
      v25 = *a9;
      *(v25 + 140) = v24;
      *(v25 + 142) = 0;
      for (j = 146; j != 156; j += 2)
      {
        *(*a9 + j) = mosyntkbsymtab_IPAPrimAccId(*(a2 + 8));
      }
    }
  }

  return started;
}

uint64_t TraceUnknownTransductionMode(uint64_t a1, unsigned int *a2)
{
  result = mosyntknowl_WriteTraceHeader(a1, a2[4]);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntbase_WString(a1, "fst: ", 0);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntbase_WInt(a1, a2[5], 1);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, " ***** unknown transduction mode: ", 0);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntbase_WInt(a1, a2[32], 0);
          if ((result & 0x80000000) == 0)
          {

            return mosyntbase_WStringLn(a1, "; using default instead", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t mosynttrans_NewTransStateSeq(uint64_t a1, uint64_t a2, int a3, int *a4, int a5, int a6, unsigned int a7, int a8, uint64_t *a9)
{
  *a9 = 0;
  v14 = a4 + 2;
  LODWORD(v13) = *a4;
  if (*a4 >= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a4;
  }

  if (a6 >= 0)
  {
    v13 = v15;
  }

  else
  {
    v13 = v13;
  }

  do
  {
    if (v13 < 1)
    {
      v21 = 0;
      goto LABEL_18;
    }

    v16 = v13 - 1;
    v17 = *&a4[2 * v13];
    v18 = mosyntkbfst_NilFST();
    v13 = v16;
  }

  while (v17 == v18);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = (v16 + 1) & 0x7FFFFFFF;
  do
  {
    v23 = *&v14[2 * v19];
    if (v23 == mosyntkbfst_NilFST())
    {
      v24 = v20;
    }

    else
    {
      v21 = mosynttrans_NewTransState(a1, a2, a3, *&v14[2 * v19], v19, a5, v19 < a7, a8, a9);
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      **a9 = v20;
      v24 = *a9;
      if (v20)
      {
        *(v20 + 8) = v24;
      }
    }

    ++v19;
    v20 = v24;
  }

  while (v22 != v19);
LABEL_18:
  if (*a9)
  {
    return v21;
  }

  v26 = mosyntkbfst_NilFST();

  return mosynttrans_NewTransState(a1, a2, a3, v26, -1, a5, 1, a8, a9);
}

uint64_t mosynttrans_DisposeTransState(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    return 0;
  }

  do
  {
    v3 = *v3;
    result = mosyntpal_DEALLOCATE(a1, a3);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    *a3 = v3;
  }

  while (v3);
  return result;
}

uint64_t mosynttrans_PutPhonList(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t *a5)
{
  v9 = a5;
  if (!a3)
  {
    return 0;
  }

  do
  {
    v6 = a3;
    a3 = *a3;
  }

  while (a3);
  *(v6 + 24) = a4;
  result = mosyntdata_CopyPhonList(a1, &v9);
  if ((result & 0x80000000) == 0)
  {
    PhonEle = mosyntdata_LastPhonEle(a1, v9);
    return mosyntdata_AppendPhonList(a1, v6 + 6, v6 + 7, v9, PhonEle);
  }

  return result;
}

uint64_t mosynttrans_GetPhonList(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  result = mosyntdata_StartPhonList(a1, a4, a5);
  if (a3)
  {
    if ((result & 0x80000000) == 0)
    {
      v12 = 0;
      v13 = 0;
      for (result = SingleTransducerGet(a1, a2, a3, &v13, &v12); (result & 0x80000000) == 0; a3 = v11)
      {
        v11 = a3[1];
        if (v13)
        {
          if (!v11)
          {
            return mosyntdata_AppendPhonList(a1, a4, a5, v13, v12);
          }

          result = mosyntdata_AppendPhonList(a1, (v11 + 48), (v11 + 56), v13, v12);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else if (!v11 || !*(v11 + 24))
        {
          v11 = *a3;
          if (!*a3)
          {
            return result;
          }
        }

        result = SingleTransducerGet(a1, a2, v11, &v13, &v12);
      }
    }
  }

  return result;
}

uint64_t SingleTransducerGet(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = mosyntdata_StartPhonList(a1, a4, a5);
  if ((result & 0x80000000) == 0)
  {
    v29 = 0;
    v11 = *(a3 + 32);
    if (v11 == mosyntkbfst_NilFST())
    {
      v23 = *(a3 + 100);
      if (v23 < 0)
      {
        result = mosyntdata_AppendPhonList(a1, a4, a5, *(a3 + 48), *(a3 + 56));
        if ((result & 0x80000000) == 0)
        {

          return mosyntdata_StartPhonList(a1, (a3 + 48), (a3 + 56));
        }
      }

      else
      {
        do
        {
          result = mosyntdata_PopPhonEle(a1, (a3 + 48), (a3 + 56), &v29);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (!v29)
          {
            break;
          }

          result = mosyntdata_AppendPhonList(a1, a4, a5, v29, v29);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          --v23;
        }

        while (v23);
      }
    }

    else
    {
      if (!*(a3 + 80) && *(a3 + 64) < *(a3 + 68))
      {
        result = mosyntdata_PopPhonEle(a1, (a3 + 48), (a3 + 56), &v29);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v12 = v29;
        while (v29)
        {
          v30 = 0;
          v31 = v12;
          if (*v12)
          {
            *v12 = 0;
            result = mosyntbase_WriteDevelMessage(a1, "*** SVOXTrans.DoTransduction() expects isolated phone\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          if (!*(a3 + 96))
          {
            result = StartTransduction(a1, a2, a3);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          if (!*(v12 + 20))
          {
            v16 = *(v12 + 24);
            if (v16 == *(a3 + 134))
            {
              goto LABEL_33;
            }

            v17 = v16;
            v18 = &v31;
            v19 = a1;
            v20 = a2;
            v21 = a3;
            v22 = 0;
            goto LABEL_32;
          }

          v13 = *(v12 + 36);
          v14 = *(v12 + 24);
          switch(v14)
          {
            case 3:
              if (*(a3 + 40))
              {
LABEL_19:
                v15 = *(a3 + 140);
                break;
              }

              if (*(v12 + 28) > 1)
              {
                v15 = *(a3 + 144);
              }

              else
              {
                v15 = *(a3 + 142);
              }

              break;
            case 2:
              goto LABEL_19;
            case 1:
              v15 = *(a3 + 138);
              break;
            default:
              result = mosyntbase_WriteDevelMessage(a1, "*** unexpected NILBOUNDARY boundary phone\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              goto LABEL_23;
          }

          result = TransduceSymbol(a1, a2, a3, v15, 0, &v31);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

LABEL_23:
          if (*(a3 + 128) == 1)
          {
            if (v13 <= 4)
            {
              if ((v13 & 0x8000) != 0)
              {
                result = mosyntbase_WriteDevelMessage(a1, "fst: %d ***** negative accent %d; using 0 instead\\n", 0, "", 0, "", 0, "", 0, *(a3 + 20), 0, 0);
                v13 = 0;
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }
            }

            else
            {
              v13 = 4;
            }

            v17 = *(a3 + 146 + 2 * v13);
          }

          else
          {
            if (v13 < 1)
            {
              goto LABEL_33;
            }

            v17 = *(a3 + 146);
          }

          v18 = &v30;
          v19 = a1;
          v20 = a2;
          v21 = a3;
          v22 = 1;
LABEL_32:
          result = TransduceSymbol(v19, v20, v21, v17, v22, v18);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

LABEL_33:
          if (v31)
          {
            result = mosyntdata_DisposePhonEleList(a1, &v31);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          if (*(a3 + 104))
          {
            result = GetTransduction(a1, a2, a3);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          if (*(a3 + 80) || *(a3 + 64) >= *(a3 + 68))
          {
            v29 = 0;
            break;
          }

          result = mosyntdata_PopPhonEle(a1, (a3 + 48), (a3 + 56), &v29);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v12 = v29;
        }
      }

      v24 = *(a3 + 100);
      if (v24 < 0)
      {
        result = mosyntdata_AppendPhonList(a1, a4, a5, *(a3 + 80), *(a3 + 88));
        if ((result & 0x80000000) == 0)
        {
          result = mosyntdata_StartPhonList(a1, (a3 + 80), (a3 + 88));
          if ((result & 0x80000000) == 0)
          {
LABEL_64:
            v25 = *(a3 + 64);
            v26 = *(a3 + 68);
            if (v25 >= v26)
            {
              result = mosyntbase_WriteDevelMessage(a1, "---- forced emission %d >= %d\\n", 0, "", 0, "", 0, "", 0, v25, v26, 0);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v27 = 1;
              *(a3 + 24) = 1;
            }

            else
            {
              if (!*(a3 + 24))
              {
                return result;
              }

              v27 = 0;
            }

            if (!*a4)
            {
              result = TerminateTransduction(a1, a2, a3);
              if ((result & 0x80000000) == 0)
              {
                *(a3 + 24) = v27;
                v28 = *(a3 + 8);
                if (v28)
                {
                  *(v28 + 24) = v25 < v26;
                }

                return SingleTransducerGet(a1, a2, a3, a4, a5);
              }
            }
          }
        }
      }

      else
      {
        while (1)
        {
          result = mosyntdata_PopPhonEle(a1, (a3 + 80), (a3 + 88), &v29);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (!v29)
          {
            goto LABEL_64;
          }

          result = mosyntdata_AppendPhonList(a1, a4, a5, v29, v29);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (!--v24)
          {
            v29 = 0;
            goto LABEL_64;
          }
        }
      }
    }
  }

  return result;
}

uint64_t mosynttrans_TransducePhonList(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t *a6, int a7, char a8, void *a9, void *a10)
{
  result = mosyntdata_StartPhonList(a1, a9, a10);
  if ((result & 0x80000000) == 0)
  {
    v23 = 0;
    v24 = 0;
    v22 = 0;
    result = mosynttrans_NewTransState(a1, a2, a3, a4, a5, a7, a8, 1000, &v22);
    if ((result & 0x80000000) == 0)
    {
      v20 = v22;
      *(v22 + 25) = -1;
      for (result = mosynttrans_PutPhonList(a1, v19, v20, 1, a6); (result & 0x80000000) == 0; result = mosyntdata_AppendPhonList(a1, a9, a10, v24, v23))
      {
        result = mosynttrans_GetPhonList(a1, a2, v22, &v24, &v23);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (!v24)
        {
          v21 = v22;
          if (!v22)
          {
            return 0;
          }

          do
          {
            v21 = *v21;
            result = mosyntpal_DEALLOCATE(a1, &v22);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v22 = v21;
          }

          while (v21);
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t mosynttrans_SeqTransducePhonList(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t **a5, uint64_t a6, int a7, int a8, unsigned int a9, unsigned __int8 *a10, int a11)
{
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  result = mosyntdata_StartPhonList(a1, a5, &v29);
  if ((result & 0x80000000) == 0)
  {
    v20 = *(a6 + 48);
    v24[2] = *(a6 + 32);
    v24[3] = v20;
    v24[4] = *(a6 + 64);
    v25 = *(a6 + 80);
    v21 = *(a6 + 16);
    v24[0] = *a6;
    v24[1] = v21;
    result = mosynttrans_NewTransStateSeq(a1, a2, a3, v24, a7, a8, a9, 1000, &v26);
    if ((result & 0x80000000) == 0)
    {
      if (*a2 < 2 || (result = mosyntknowl_WriteTraceHeader(a1, a3), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, "before ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, a10, a11), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, " ", 0), (result & 0x80000000) == 0) && (result = mosyntdata_WritePhonList(a1, *(a2 + 8), a4), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
      {
        if (v26)
        {
          for (result = mosynttrans_PutPhonList(a1, v22, v26, 1, a4); (result & 0x80000000) == 0; result = mosyntdata_AppendPhonList(a1, a5, &v29, v28, v27))
          {
            result = mosynttrans_GetPhonList(a1, a2, v26, &v28, &v27);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (!v28)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          *a5 = a4;
          result = mosyntdata_CopyPhonList(a1, a5);
          if ((result & 0x80000000) == 0)
          {
LABEL_17:
            if (*a2 < 2 || (result = mosyntknowl_WriteTraceHeader(a1, a3), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, "after ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, a10, a11), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, " ", 0), (result & 0x80000000) == 0) && (result = mosyntdata_WritePhonList(a1, *(a2 + 8), *a5), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
            {
              v23 = v26;
              if (v26)
              {
                do
                {
                  v23 = *v23;
                  result = mosyntpal_DEALLOCATE(a1, &v26);
                  if ((result & 0x80000000) != 0)
                  {
                    break;
                  }

                  v26 = v23;
                }

                while (v23);
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

  return result;
}

uint64_t TerminateTransduction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  if (*(a3 + 96) || (result = StartTransduction(a1, a2, a3), (result & 0x80000000) == 0))
  {
    result = TransduceSymbol(a1, a2, a3, *(a3 + 134), 0, &v9);
    if ((result & 0x80000000) == 0)
    {
      *(a3 + 96) = 0;
      v7 = *(a3 + 120);
      if (!v7)
      {
        goto LABEL_9;
      }

      v8 = (v7 + 32);
      do
      {
        v8 = *v8;
      }

      while (v8 && *(v8 + 8) != 1);
      *(a3 + 104) = v8;
      result = GetTransduction(a1, a2, a3);
      if ((result & 0x80000000) == 0)
      {
LABEL_9:

        return DisposePositionList(a1, a2, a3);
      }
    }
  }

  return result;
}

uint64_t StartTransduction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!*(a3 + 112) || (result = mosyntbase_WriteDevelMessage(a1, "*** position list not empty at transduction start\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0), (result & 0x80000000) == 0) && (result = DisposePositionList(a1, a2, a3), (result & 0x80000000) == 0))
  {
    result = AddPosition(a1, a3, 0);
    if ((result & 0x80000000) == 0)
    {
      result = AddPosState(a1, a2, a3, *(a3 + 112), 1, 0, 0, 0, 0, 0);
      if ((result & 0x80000000) == 0)
      {
        result = TransduceSymbol(a1, a2, a3, *(a3 + 132), 0, &v7);
        if ((result & 0x80000000) == 0)
        {
          *(a3 + 96) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t TransduceSymbol(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5, uint64_t *a6)
{
  if (*a2 < 3 || (result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16)), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, "fst: ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, *(a3 + 20), 1), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, " --- treating input symbol ", 0), (result & 0x80000000) == 0) && (result = mosyntkbsymtab_WritePhonSym(a1, *(a2 + 8), a4), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
  {
    v13 = *(a3 + 120);
    v14 = *a6;
    result = AddPosition(a1, a3, *a6);
    if ((result & 0x80000000) == 0)
    {
      v26 = 0;
      v27 = 0;
      v25 = 0;
      *a6 = 0;
      result = mosyntkbfst_GetFirstSameInSymPair(*(a3 + 32), *(a3 + 136), &v26, &v25);
      if ((result & 0x80000000) == 0)
      {
        v15 = *(v13 + 32);
        if (v15)
        {
          while (1)
          {
            result = mosyntkbfst_GetFirstSameInSymPair(*(a3 + 32), 0, &v27, &v25);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            while (v25)
            {
              if (*a2 < 3 || (result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16)), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, "trying pos/state ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, *(v13 + 16), 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, "/", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, *(v15 + 16), 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, " and pair ", 0), (result & 0x80000000) == 0) && (result = mosyntkbfst_WritePhonPair(a1, *(a2 + 8), *(a3 + 32), &v27, 2), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
              {
                v16 = mosyntkbfst_FSTTrans(*(a3 + 32), *(v15 + 16), &v27);
                if (v16 < 1 || (v17 = v16, v18 = mosyntkbfst_OutSym(*(a3 + 32), &v27), result = AddPosState(a1, a2, a3, v13, v17, v15, 0, v18, a5, 0), (result & 0x80000000) == 0))
                {
                  result = mosyntkbfst_GetNextSameInSymPair(*(a3 + 32), &v27, &v25);
                  if ((result & 0x80000000) == 0)
                  {
                    continue;
                  }
                }
              }

              return result;
            }

            result = mosyntkbfst_GetFirstSameInSymPair(*(a3 + 32), a4, &v27, &v25);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v19 = 0;
            while (v25)
            {
              if (*a2 < 3 || (result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16)), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, "trying pos/state ", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, *(v13 + 16), 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, "/", 0), (result & 0x80000000) == 0) && (result = mosyntbase_WInt(a1, *(v15 + 16), 0), (result & 0x80000000) == 0) && (result = mosyntbase_WString(a1, " and pair ", 0), (result & 0x80000000) == 0) && (result = mosyntkbfst_WritePhonPair(a1, *(a2 + 8), *(a3 + 32), &v27, 2), (result & 0x80000000) == 0) && (result = mosyntbase_WLn(a1), (result & 0x80000000) == 0))
              {
                v20 = mosyntkbfst_FSTTrans(*(a3 + 32), *(v15 + 16), &v27);
                if (v20 < 1 || (v21 = v20, v24 = *(v13 + 8), v22 = mosyntkbfst_OutSym(*(a3 + 32), &v27), result = AddPosState(a1, a2, a3, v24, v21, v15, a4, v22, a5, v14), (result & 0x80000000) == 0))
                {
                  result = mosyntkbfst_GetNextSameInSymPair(*(a3 + 32), &v27, &v25);
                  --v19;
                  if ((result & 0x80000000) == 0)
                  {
                    continue;
                  }
                }
              }

              return result;
            }

            if (!v19)
            {
              if (mosyntkbfst_IsValidPair(&v26))
              {
                v27 = v26;
                if (*a2 >= 3)
                {
                  result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16));
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  result = mosyntbase_WString(a1, "trying pos/state ", 0);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  result = mosyntbase_WInt(a1, *(v13 + 16), 0);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  result = mosyntbase_WString(a1, "/", 0);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  result = mosyntbase_WInt(a1, *(v15 + 16), 0);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  result = mosyntbase_WString(a1, " and pair ", 0);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  result = mosyntkbfst_WritePhonPair(a1, *(a2 + 8), *(a3 + 32), &v27, 2);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  result = mosyntbase_WLn(a1);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                v23 = mosyntkbfst_FSTTrans(*(a3 + 32), *(v15 + 16), &v27);
                if (v23 >= 1)
                {
                  result = AddPosState(a1, a2, a3, *(v13 + 8), v23, v15, a4, a4, a5, v14);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }
              }

              else if (*a2 >= 1)
              {
                result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = mosyntbase_WString(a1, "*** no pair found with input symbol '", 0);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = mosyntkbsymtab_WritePhonSym(a1, *(a2 + 8), a4);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = mosyntbase_WStringLn(a1, "' and no default pair found", 0);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }
            }

            v15 = *v15;
            if (!v15)
            {
              return FindEmissionState(a1, a2, a3);
            }
          }
        }

        else
        {
          return FindEmissionState(a1, a2, a3);
        }
      }
    }
  }

  return result;
}

uint64_t GetTransduction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  v6 = *(a3 + 64);
  if (v6 > *(a3 + 72))
  {
    *(a3 + 72) = v6;
    if (*a2 >= 2)
    {
      result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, "fst: ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WInt(a1, *(a3 + 20), 1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WInt3Ln(a1, " max transduction path length:  ", 0, *(a3 + 72), "", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WLn(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }
  }

  v8 = *(a3 + 104);
  v9 = *a2;
  if (!v8)
  {
    if (v9 < 2)
    {
      result = mosyntbase_WriteDevelMessage(a1, "*** no transduction found (use tracing to get more info)\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, "fst: ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WInt(a1, *(a3 + 20), 1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WStringLn(a1, " ***** no transduction found for input ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WLn(a1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v10 = *(a3 + 120);
    result = GetInPhonList(a1, a3, v10, (a3 + 80));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *(a3 + 88) = mosyntdata_LastPhonEle(a1, *(a3 + 80));
    m2__cp__str("output", v41, 20);
    result = TraceTransductionIO(a1, a2, a3, v41, *(a3 + 80));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_124;
  }

  if (v9 < 3)
  {
    result = 0;
LABEL_29:
    v11 = 0;
    v12 = a3 + 146;
    while (1)
    {
      if (!*(v8 + 32))
      {
        goto LABEL_14;
      }

      v13 = *(v8 + 34);
      if (*a2 >= 3)
      {
        result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WString(a1, "fst: ", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WInt(a1, *(a3 + 20), 1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WString(a1, " treating output symbol '", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v13)
        {
          result = mosyntkbsymtab_WritePhonSym(a1, *(a2 + 8), v13);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
          result = mosyntbase_WString(a1, "@", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        result = mosyntbase_WString(a1, "' with input element ", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v14 = *(v8 + 40);
        if (v14)
        {
          result = mosyntdata_WritePhonEle(a1, *(a2 + 8), v14, 0, 0, v8 == *(a3 + 104), *v8 == 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
          result = mosyntbase_WString(a1, "NIL", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        result = mosyntbase_WLn(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      v15 = *(a3 + 134);
      if (!v13 || v15 == v13 || *(a3 + 132) == v13)
      {
        if (v15 == v13)
        {
          v16 = *(v8 + 40);
          if (v16)
          {
            if (*(v16 + 20) && *(v16 + 24) == 3)
            {
              v17 = *(v16 + 28);
              v18 = *(v16 + 32);
              LOWORD(v19) = *(v16 + 36);
              v20 = (a3 + 80);
              v21 = (a3 + 88);
              v22 = a1;
              v23 = 3;
              goto LABEL_86;
            }
          }
        }
      }

      else
      {
        v16 = *(v8 + 40);
        if (v16 && *(v16 + 20))
        {
          v24 = *(a3 + 138);
          if (v24 == v13 || *(a3 + 140) == v13 || *(a3 + 142) == v13 || *(a3 + 144) == v13)
          {
            if (!v11 || *(a3 + 128) != 1)
            {
              goto LABEL_68;
            }

            v25 = 0;
            v19 = -1;
            do
            {
              if (*(v12 + 2 * v25) == *(v11 + 34))
              {
                v19 = v25;
              }

              if (v25 > 3)
              {
                break;
              }

              ++v25;
            }

            while (v19 < 0);
            if (v19 < 0)
            {
LABEL_68:
              LOWORD(v19) = *(v16 + 36);
            }

            v23 = *(v16 + 24);
            if (*(v8 + 32) == v13)
            {
              LOWORD(v26) = *(v16 + 28);
              goto LABEL_71;
            }

            if (v23 != 3 || (v26 = *(v16 + 28), v26 >= 1))
            {
              if (v24 == v13)
              {
                v20 = (a3 + 80);
                v21 = (a3 + 88);
                v22 = a1;
                v23 = 1;
                goto LABEL_85;
              }

              if (*(a3 + 140) == v13)
              {
                v20 = (a3 + 80);
                v21 = (a3 + 88);
                v22 = a1;
                v23 = 2;
LABEL_85:
                v17 = -1;
                v18 = 0;
LABEL_86:
                result = mosyntdata_AddBound(v22, v20, v21, 0, v23, v17, v18, v19);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              else if (*(a3 + 144) == v13)
              {
                v18 = *(v16 + 32);
                v20 = (a3 + 80);
                v21 = (a3 + 88);
                v22 = a1;
                v23 = 3;
                v17 = 2;
                goto LABEL_86;
              }

              v29 = *(v16 + 8);
LABEL_88:
              *(*(a3 + 80) + 8) = v29;
              goto LABEL_89;
            }

            v23 = 3;
LABEL_71:
            v17 = v26;
            v18 = *(v16 + 32);
            v20 = (a3 + 80);
            v21 = (a3 + 88);
            v22 = a1;
            goto LABEL_86;
          }

          v32 = 0;
          do
          {
            v33 = *(v12 + 2 * v32);
            if (v32 > 3)
            {
              break;
            }

            ++v32;
          }

          while (v33 != v13);
          if (v33 != v13 && *a2 >= 1)
          {
            result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = mosyntbase_WString(a1, "*** transduction error: illegal attempt to change a boundary element to phone ", 0);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = mosyntkbsymtab_WritePhonSym(a1, *(a2 + 8), v13);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = mosyntbase_WStringLn(a1, "; phone ignored", 0);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }

        else if (!*(v8 + 36))
        {
          v27 = *(a3 + 40);
          if (v27 > 5 || ((1 << v27) & 0x34) == 0 || v16)
          {
            goto LABEL_76;
          }

          v30 = 0;
          v31 = -1;
          do
          {
            if (*(v12 + 2 * v30) == v13)
            {
              v31 = v30;
            }

            if (v30 > 3)
            {
              break;
            }

            ++v30;
          }

          while (v31 < 0);
          if (v31 < 0)
          {
LABEL_76:
            result = mosyntdata_AddPhonEle(a1, (a3 + 80), (a3 + 88), 0, v13);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v28 = *(v8 + 40);
            if (v28)
            {
              *(*(a3 + 80) + 26) = *(v28 + 26);
              v29 = *(*(v8 + 40) + 8);
            }

            else
            {
              v29 = -1;
              *(*(a3 + 80) + 26) = -1;
            }

            goto LABEL_88;
          }
        }
      }

LABEL_89:
      if (*(v8 + 18) > 1)
      {
        if (*a2 < 2)
        {
          result = mosyntbase_WriteDevelMessage(a1, "*** ambiguous transducer solution (use tracing to get more info)\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
          result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WString(a1, "fst: ", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WInt(a1, *(a3 + 20), 1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WStringLn(a1, " ***** ambiguous transducer solution", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WLn(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      v11 = v8;
      v8 = *(v8 + 24);
      if (!v8)
      {
        goto LABEL_14;
      }
    }
  }

  result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = mosyntbase_WStringLn(a1, "getting transduction path", 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v8 = *(a3 + 104);
  if (v8)
  {
    goto LABEL_29;
  }

  result = mosyntbase_WriteDevelMessage(a1, "***SVOXTrans.CollectTransductionPath() must not be called with emissionState = NIL\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
LABEL_14:
  if ((result & 0x80000000) == 0)
  {
    v10 = *(*(a3 + 104) + 8);
    if (*a2 < 2 || (result = GetInPhonList(a1, a3, *(*(a3 + 104) + 8), &v39), (result & 0x80000000) == 0) && (m2__cp__str("input ", v41, 20), result = TraceTransductionIO(a1, a2, a3, v41, v39), (result & 0x80000000) == 0) && (m2__cp__str("output", v41, 20), result = TraceTransductionIO(a1, a2, a3, v41, *(a3 + 80)), (result & 0x80000000) == 0) && (result = mosyntdata_DisposePhonEleList(a1, &v39), (result & 0x80000000) == 0))
    {
LABEL_124:
      v34 = v10[1];
      v35 = *(a3 + 112);
      if (v34)
      {
        *v34 = v35;
      }

      if (v35)
      {
        v35[1] = v34;
      }

      if (v34)
      {
        v36 = v35[4];
        *(v36 + 20) = 0;
        v37 = v34[4];
        if (v37)
        {
          v38 = 0;
          do
          {
            if (v37[1] != *(v37[3] + 8))
            {
              *(v37 + 9) = 1;
              v37[3] = v36;
              *(v36 + 20) = ++v38;
            }

            v37 = *v37;
          }

          while (v37);
          if (!v10)
          {
            goto LABEL_139;
          }
        }
      }

      v40 = v10;
      if (v35 == v10)
      {
LABEL_139:
        result = 0;
LABEL_140:
        if (!v34)
        {
          *(a3 + 120) = v35;
        }

        *(a3 + 104) = 0;
      }

      else
      {
        while (1)
        {
          v10 = *v10;
          result = DisposePosition(a1, a2, a3, &v40);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v40 = v10;
          v35 = *(a3 + 112);
          if (v10 == v35)
          {
            goto LABEL_140;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DisposePositionList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 112);
  v4 = *(a3 + 112);
  v9 = v4;
  if (v4)
  {
    while (1)
    {
      v4 = *(v4 + 8);
      result = DisposePosition(a1, a2, a3, &v9);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v9 = v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    result = 0;
LABEL_6:
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t AddPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  result = mosyntpal_ALLOCATE(a1, &v10, 0x30u);
  if ((result & 0x80000000) == 0)
  {
    v6 = *(a2 + 120);
    if (v6)
    {
      v7 = v10;
      *(v10 + 16) = *(v6 + 16) + 1;
      *v7 = v6;
      v8 = v10;
      *(v6 + 8) = v10;
    }

    else
    {
      v9 = v10;
      *(v10 + 16) = 0;
      *v9 = 0;
      v8 = v10;
      *(a2 + 112) = v10;
    }

    *(a2 + 120) = v8;
    v8[1] = 0;
    v8[4] = 0;
    v8[5] = 0;
    v8[3] = a3;
    ++*(a2 + 64);
  }

  return result;
}

uint64_t AddPosState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, __int16 a7, __int16 a8, char a9, uint64_t a10)
{
  v11 = a5;
  v14 = (a4 + 32);
  v15 = a4 + 32;
  while (1)
  {
    v15 = *v15;
    v26 = v15;
    if (!v15)
    {
      break;
    }

    if (*(v15 + 16) == a5)
    {
      ++*(v15 + 18);
      if (*a2 < 3)
      {
        return 0;
      }

      result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16));
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, "added transition to pos/state element ", 0);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntbase_WInt(a1, *(*(v15 + 8) + 16), 0);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_WString(a1, "/", 0);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntbase_WInt(a1, *(v15 + 16), 0);
              if ((result & 0x80000000) == 0)
              {

                return mosyntbase_WLn(a1);
              }
            }
          }
        }
      }

      return result;
    }
  }

  v18 = *(a2 + 16);
  if (v18)
  {
    result = 0;
    v26 = *(a2 + 16);
    *(a2 + 16) = *v18;
  }

  else
  {
    v19 = a3;
    v20 = a8;
    v21 = a7;
    result = mosyntpal_ALLOCATE(a1, &v26, 0x30u);
    a7 = v21;
    a8 = v20;
    a3 = v19;
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v22 = *(a4 + 40);
  v23 = v26;
  if (!v22)
  {
    v22 = v14;
  }

  *v22 = v26;
  *(a4 + 40) = v23;
  *v23 = 0;
  v24 = v26;
  *(v26 + 8) = a4;
  *(v24 + 16) = v11;
  *(v24 + 18) = 1;
  *(v24 + 24) = a6;
  if (a6)
  {
    ++*(a6 + 20);
  }

  *(v24 + 32) = a7;
  *(v24 + 34) = a8;
  *(v24 + 36) = a9;
  *(v24 + 40) = a10;
  if (*a2 >= 3)
  {
    result = mosyntknowl_WriteTraceHeader(a1, *(a3 + 16));
    if ((result & 0x80000000) == 0)
    {
      result = mosyntbase_WString(a1, "inserted pos/state element ", 0);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WInt(a1, *(*(v26 + 8) + 16), 0);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntbase_WString(a1, "/", 0);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_WInt(a1, *(v26 + 16), 0);
            if ((result & 0x80000000) == 0)
            {
              return mosyntbase_WLn(a1);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DisposePosition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = *(*a4 + 32);
  if (v8)
  {
    v9 = *(*a4 + 32);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9);
    *v10 = *(a2 + 16);
    *(a2 + 16) = v8;
    v7 = *a4;
  }

  result = mosyntdata_DisposePhonEleList(a1, (v7 + 24));
  if ((result & 0x80000000) == 0)
  {
    result = mosyntpal_DEALLOCATE(a1, a4);
    if ((result & 0x80000000) == 0)
    {
      --*(a3 + 64);
    }
  }

  return result;
}

uint64_t FindEmissionState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(a3 + 120);
  if (v3)
  {
    v4 = v3[4];
    if (v4)
    {
      do
      {
        if (!*(v4 + 10))
        {
          v8 = v4;
          do
          {
            v9 = v8[3];
            if (!v9)
            {
              break;
            }

            v10 = *(v9 + 10) - 1;
            *(v9 + 10) = v10;
            v8[3] = 0;
            v8 = v9;
          }

          while (!v10);
        }

        v4 = *v4;
      }

      while (v4);
      result = 0;
      *(a3 + 104) = 0;
      while (1)
      {
        v12 = v3[4];
        if (!v12)
        {
          break;
        }

        v13 = 0;
        v14 = 0;
        v15 = v3[4];
        do
        {
          v16 = *v15;
          if (*(v15 + 10))
          {
            v14 = v15;
          }

          else
          {
            *v15 = *(a2 + 16);
            *(a2 + 16) = v15;
            if (v14)
            {
              v17 = v14;
            }

            else
            {
              v17 = v3 + 4;
            }

            if (!v14)
            {
              v12 = v16;
            }

            *v17 = v16;
            v13 = 1;
          }

          v15 = v16;
        }

        while (v16);
        v18 = v13 != 0;
        v3[5] = v14;
        if (!v12)
        {
          goto LABEL_27;
        }

        if (!*v12 && (*(a3 + 128) != 1 || (v19 = v3[3]) == 0 || !*(v19 + 20)))
        {
          *(a3 + 104) = v12;
          return result;
        }

LABEL_29:
        v3 = *v3;
        if (!v3 || !v18)
        {
          return result;
        }
      }

      v18 = 0;
      v3[5] = 0;
LABEL_27:
      result = mosyntbase_WriteDevelMessage(a1, "*** no state left\\n", 0, "", 0, "", 0, "", 0, 0, 0, 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      *(a3 + 104) = 0;
      goto LABEL_29;
    }
  }

  return 0;
}

uint64_t GetInPhonList(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = 0;
  result = mosyntdata_StartPhonList(a1, a4, &v12);
  if (a3)
  {
    if ((result & 0x80000000) == 0)
    {
      v9 = *(a2 + 112);
      if (v9)
      {
        v10 = *(a3 + 8);
        while (v9 != v10)
        {
          if (*(v9 + 24))
          {
            v11 = *(v9 + 24);
            result = mosyntdata_CopyPhonList(a1, &v11);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = mosyntdata_AppendPhonList(a1, a4, &v12, v11, v11);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v10 = *(a3 + 8);
          }

          v9 = *(v9 + 8);
        }
      }
    }
  }

  return result;
}

uint64_t TraceTransductionIO(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, void *a5)
{
  result = mosyntknowl_WriteTraceHeader(a1, a3[4]);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntbase_WString(a1, "fst: ", 0);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntbase_WInt(a1, a3[5], 1);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, " transduction ", 0);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntbase_WString(a1, a4, 20);
          if ((result & 0x80000000) == 0)
          {
            if (a3[10] - 1 > 1 || (result = mosyntbase_WString(a1, " (IPA)", 0), (result & 0x80000000) == 0))
            {
              result = mosyntbase_WString(a1, ": ", 0);
              if ((result & 0x80000000) == 0)
              {
                v11 = a3[32] == 1 ? 5 : 4;
                result = mosyntdata_WriteFormattedPhonList(a1, *(a2 + 8), a5, v11, 0);
                if ((result & 0x80000000) == 0)
                {

                  return mosyntbase_WLn(a1);
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

uint64_t fst_LoadData(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  memset(v57, 0, sizeof(v57));
  *a3 = 0;
  result = InitRsrcFunction(a1, a2, &v51);
  if ((result & 0x80000000) == 0)
  {
    result = kbaux_BuildBrokerString(v51, "fsts", v57, 0x100uLL);
    if ((result & 0x80000000) == 0)
    {
      v7 = ssftriff_reader_ObjOpen(a1, a2, 2, v57, "FSTS", 1031, &v50);
      if (v7 < 0)
      {
        v17 = v7;
      }

      else
      {
        v16 = v50;
        v15 = v51;
        v56 = 0;
        v55 = 0;
        v54 = 0;
        *__s1 = 0;
        v17 = ssftriff_reader_OpenChunk(v50, __s1, &v56, &v55);
        if ((v17 & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "FSTS"))
        {
          v52 = 0;
          v17 = ssftriff_reader_DetachChunkData(v16, &v52, &v55);
          if ((v17 & 0x80000000) == 0)
          {
            v18 = heap_Alloc(v15[1], 48);
            *a3 = v18;
            if (v18 && (cstdlib_memset(v18, 0, 0x30uLL), v19 = *a3, *v19 = v56, *(v19 + 16) = v52, v20 = v55, *(*a3 + 8) = v55, v22 = *v20, v21 = v20 + 1, v23 = *a3, *(v23 + 24) = v22, *(v23 + 32) = v21, v24 = *(*a3 + 24), *(*a3 + 40) = heap_Alloc(v15[1], (16 * v24)), (v25 = *(*a3 + 40)) != 0))
            {
              cstdlib_memset(v25, 0, (16 * *(*a3 + 24)));
              v26 = *a3;
              if (*(*a3 + 24) >= 1)
              {
                v27 = 0;
                v28 = &v21[v24];
                do
                {
                  v29 = *v28++;
                  v30 = *(v26 + 40) + 16 * v27;
                  *v30 = v29;
                  *(v30 + 8) = 0;
                  v26 = *a3;
                  v31 = *(*(*a3 + 40) + 16 * v27);
                  if (v31 >= 1)
                  {
                    *(*(*a3 + 40) + 16 * v27 + 8) = heap_Alloc(v15[1], (v31 << 6));
                    v32 = *(*a3 + 40) + 16 * v27;
                    v33 = *(v32 + 8);
                    if (!v33)
                    {
                      goto LABEL_23;
                    }

                    cstdlib_memset(v33, 0, (*v32 << 6));
                    v26 = *a3;
                    v34 = *(*a3 + 40);
                    if (*(v34 + 16 * v27) >= 1)
                    {
                      v35 = 0;
                      v36 = *(v34 + 16 * v27 + 8);
                      v37 = 56;
                      do
                      {
                        v39 = *v28;
                        v38 = v28 + 1;
                        v40 = v36 + v37;
                        *(v40 - 56) = v39;
                        *(v40 - 48) = v38;
                        v41 = *(*(*a3 + 40) + 16 * v27 + 8) + v37;
                        v42 = &v38[*(v41 - 56) + 1];
                        v43 = *v42++;
                        *(v41 - 40) = v43;
                        *(v41 - 32) = v42;
                        v44 = *(*(*a3 + 40) + 16 * v27 + 8) + v37;
                        v45 = (v42 + 6 * *(v44 - 40) + 2 * (*(v44 - 40) & 1));
                        *(v44 - 24) = *v45;
                        *(v44 - 16) = v45[1];
                        v46 = v45 + 2;
                        *(v44 - 8) = v45 + 2;
                        v26 = *a3;
                        v47 = (*(*a3 + 40) + 16 * v27);
                        v36 = *(v47 + 1);
                        v48 = (v46 + 2 * *(v36 + v37 - 16) + 2 * (*(v36 + v37 - 16) & 1));
                        v49 = *v48;
                        v28 = v48 + 1;
                        *(v36 + v37) = v49;
                        ++v35;
                        v37 += 64;
                      }

                      while (v35 < *v47);
                    }
                  }

                  ++v27;
                }

                while (v27 < *(v26 + 24));
              }
            }

            else
            {
LABEL_23:
              ssftriff_reader_ReleaseChunkData(v52);
              free_FSTS(v15, a3);
              v17 = -1923080182;
            }
          }
        }
      }

      LODWORD(result) = ssftriff_reader_ObjClose(v50, v8, v9, v10, v11, v12, v13, v14);
      if (v17 >= 0)
      {
        return result;
      }

      else
      {
        return v17;
      }
    }
  }

  return result;
}

uint64_t fst_UnloadData(_WORD *a1, int a2, uint64_t *a3)
{
  v6 = 0;
  if (!a3)
  {
    return 2371887111;
  }

  inited = InitRsrcFunction(a1, a2, &v6);
  if ((inited & 0x80000000) == 0)
  {
    if (*a3)
    {
      ssftriff_reader_ReleaseChunkData(*(*a3 + 16));
    }

    free_FSTS(v6, a3);
  }

  return inited;
}

void *free_FSTS(void *result, uint64_t *a2)
{
  v3 = *a2;
  if (v3)
  {
    v4 = result;
    v5 = *(v3 + 40);
    if (v5)
    {
      if (*(v3 + 24) >= 1)
      {
        v6 = 0;
        v7 = 8;
        do
        {
          if (*(*(v3 + 40) + v7))
          {
            heap_Free(v4[1], *(*(v3 + 40) + v7));
            v3 = *a2;
          }

          ++v6;
          v7 += 16;
        }

        while (v6 < *(v3 + 24));
        v5 = *(v3 + 40);
      }

      heap_Free(v4[1], v5);
      v3 = *a2;
    }

    result = heap_Free(v4[1], v3);
    *a2 = 0;
  }

  return result;
}

uint64_t fst_getNrOfFSTSeqs(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t fst_getFSTSeq(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  result = 2371887111;
  *a4 = 0;
  *a3 = 0;
  if (a1)
  {
    v6 = *(a1 + 24);
    v7 = 16 * v6;
    while (v6 >= 1)
    {
      v8 = *(a1 + 32) + 4 * v6--;
      v7 -= 16;
      if (*(v8 - 4) == a2)
      {
        result = 0;
        *a3 = *(a1 + 40) + v7;
        *a4 = *(*(a1 + 40) + v7);
        return result;
      }
    }
  }

  return result;
}

uint64_t fst_getFST(uint64_t a1, int a2, void *a3)
{
  result = 2371887111;
  *a3 = 0;
  if (a1)
  {
    if (*a1 > a2)
    {
      result = 0;
      *a3 = *(a1 + 8) + (a2 << 6);
    }
  }

  return result;
}

uint64_t fst_Trans(uint64_t result, int a2, int *a3)
{
  if (result)
  {
    v3 = *(*(result + 24) + 6 * *a3 + 4) + *(result + 32) * (a2 - 1) - 1;
    if (v3 < 0 || v3 >= *(result + 40))
    {
      return 0;
    }

    else
    {
      return *(*(result + 48) + 2 * v3);
    }
  }

  return result;
}

double fst_firstSamePair(__int16 *a1, int a2, uint64_t a3)
{
  if (!a1 || (v3 = (*(a1 + 1) + 4 * (a2 % *a1)), v4 = *v3, *v3 >= v3[1]) || (*a3 = v4, v5 = v3[1], *(a3 + 4) = v5, (v5 & 0x80000000) != 0) || v4 >= v5)
  {
LABEL_10:
    result = NAN;
    *a3 = -1;
    return result;
  }

  v6 = *(a1 + 3);
  if (*(v6 + 6 * v4) != a2)
  {
    v7 = v4;
    v8 = (v6 + 6 * v4 + 6);
    for (i = v7 + 1; i < v5; ++i)
    {
      *a3 = i;
      v10 = *v8;
      v8 += 3;
      if (v10 == a2)
      {
        return result;
      }
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t fst_nextSamePair(uint64_t a1, int *a2)
{
  if (!a1 || (v2 = a2[1], v2 < 0) || (v3 = *a2, v4 = *a2 + 1, v4 >= v2))
  {
LABEL_7:
    result = 0;
    *a2 = -1;
  }

  else
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + 6 * v3);
    v7 = (v5 + 6 * v3 + 6);
    while (1)
    {
      v8 = *v7;
      v7 += 3;
      if (v6 == v8)
      {
        break;
      }

      if (v2 == ++v4)
      {
        goto LABEL_7;
      }
    }

    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t fst_getPair(uint64_t a1, _DWORD *a2, _WORD *a3, _WORD *a4, _WORD *a5)
{
  result = 2371887111;
  if (a1)
  {
    v7 = a2[1];
    if ((v7 & 0x80000000) == 0 && *a2 < v7)
    {
      result = 0;
      v8 = (*(a1 + 24) + 6 * *a2);
      *a3 = *v8;
      *a4 = v8[1];
      *a5 = v8[2];
    }
  }

  return result;
}