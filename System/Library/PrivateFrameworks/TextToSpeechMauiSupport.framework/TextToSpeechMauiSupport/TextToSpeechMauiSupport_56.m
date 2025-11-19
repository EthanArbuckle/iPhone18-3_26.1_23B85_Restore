_DWORD *CILE_New(void *a1, int a2, int a3, int a4)
{
  result = heap_Calloc(a1, 1, 24);
  if (result)
  {
    *result = a2;
    result[1] = a3;
    result[2] = a4;
  }

  return result;
}

void *CILE_Free(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 16);
      result = heap_Free(a2, v3);
      v3 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t CILE_InsAfter(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1;
  v9 = heap_Calloc(a2, 1, 24);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  *v9 = a3;
  *(v9 + 4) = a4;
  *(v9 + 8) = a5;
  if (*v8)
  {
    *(v9 + 16) = *(*v8 + 16);
    v8 = *v8 + 16;
  }

  v10 = 0;
  *v8 = v9;
  return v10;
}

uint64_t CI_Update(uint64_t a1, _DWORD *a2, int a3, int a4, int a5)
{
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  return 0;
}

uint64_t domain_mngr_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2296389633;
  }

  result = 0;
  *a2 = &IDomain_Mngr;
  return result;
}

uint64_t domain_mngr_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2296389639;
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

uint64_t domain_mngr_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v44 = 0;
  v45 = 0;
  v43 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v45);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(a1, a2, &v44);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v14 = 2296389642;
  log_OutText(*(v45 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ObjOpen", v11, v12, v13, v40);
  v15 = heap_Calloc(*(v45 + 8), 1, 136);
  if (!v15)
  {
    log_OutPublic(*(v45 + 32), "DOMAIN_MNGR", 47000, 0, v16, v17, v18, v19, v40);
    return v14;
  }

  v20 = v15;
  *a5 = v15;
  *(a5 + 8) = 285;
  *v15 = a3;
  *(v15 + 8) = a4;
  v22 = v44;
  v21 = v45;
  *(v15 + 16) = v45;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = v22;
  *(v15 + 96) = 1;
  *(v15 + 128) = 0;
  v23 = *(v21 + 8);
  v40 = xmmword_287EEFE50;
  *&v41 = off_287EEFE60;
  v24 = vector_ObjOpen(v23, &v40, 1, (v20 + 88));
  v29 = v45;
  if (!v24)
  {
    goto LABEL_16;
  }

  v30 = *(v45 + 8);
  v40 = xmmword_287EEFE68;
  v41 = *&off_287EEFE78;
  v42 = off_287EEFE88;
  v31 = ssftmap_ObjOpen(v30, 0, &v40, (v20 + 112));
  v29 = v45;
  if ((v31 & 0x80000000) != 0)
  {
    v14 = v31;
    goto LABEL_16;
  }

  v32 = *(v45 + 8);
  v40 = xmmword_26ED4B770;
  *&v41 = 0;
  v33 = vector_ObjOpen(v32, &v40, 1, (v20 + 120));
  v29 = v45;
  if (!v33)
  {
LABEL_16:
    log_OutPublic(*(v29 + 32), "DOMAIN_MNGR", 47000, 0, v25, v26, v27, v28, v40);
    goto LABEL_17;
  }

  Object = objc_GetObject(*(v45 + 48), "SYNTHSTREAM", &v43);
  if ((Object & 0x80000000) != 0)
  {
    v14 = Object;
  }

  else
  {
    *(v20 + 48) = *(v43 + 8);
    v14 = objc_GetObject(*(v45 + 48), "LINGDB", &v43);
    if ((v14 & 0x80000000) == 0)
    {
      *(v20 + 56) = *(v43 + 8);
      if ((objc_GetObject(*(v45 + 48), "AUDIOFETCHER", &v43) & 0x80000000) == 0)
      {
        v38 = v43;
        *(v20 + 64) = *(v43 + 8);
        *(v20 + 72) = *(v38 + 16);
      }

      log_OutText(*(v45 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ObjOpen", v35, v36, v37, v40);
      return v14;
    }
  }

LABEL_17:
  if (v45)
  {
    domain_mngr_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  return v14;
}

uint64_t domain_mngr_ObjClose(uint64_t a1, int a2)
{
  v17 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v17);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v17 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ObjClose", v4, v5, v6, v15);
    if (*(a1 + 64))
    {
      objc_ReleaseObject(*(v17 + 48), "AUDIOFETCHER");
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(v17 + 48), "LINGDB");
    }

    if (*(a1 + 48))
    {
      objc_ReleaseObject(*(v17 + 48), "SYNTHSTREAM");
    }

    v11 = *(a1 + 120);
    if (v11)
    {
      vector_ObjClose(v11);
    }

    v12 = *(a1 + 112);
    if (v12)
    {
      ssftmap_ObjClose(v12);
    }

    v13 = *(a1 + 88);
    if (v13)
    {
      vector_ObjClose(v13);
    }

    log_OutText(*(v17 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ObjClose", v8, v9, v10, v16);
    heap_Free(*(v17 + 8), a1);
  }

  return inited;
}

uint64_t domain_mngr_ObjReopen(uint64_t a1, int a2)
{
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v20);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v20 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ObjReopen", v4, v5, v6, v14);
    if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v19) & 0x80000000) == 0)
    {
      while ((ssftmap_IteratorNext(v19, &v18, &v17) & 0x80000000) == 0)
      {
        if (vector_GetElemAt(*(v17 + 16), 0, &v16))
        {
          v11 = 1;
          do
          {
            *(*v16 + 28) = 0;
          }

          while (vector_GetElemAt(*(v17 + 16), v11++, &v16));
        }
      }

      ssftmap_IteratorClose(v19);
    }

    *(a1 + 128) = 0;
    log_OutText(*(v20 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ObjReopen", v8, v9, v10, v15);
  }

  return inited;
}

uint64_t domain_mngr_ProcessStart(uint64_t a1, int a2)
{
  v6 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v6);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  refreshed = hlp_RefreshTNTypes(a1);
  if ((refreshed & 0x80000000) == 0)
  {
    *(a1 + 104) = vector_GetSize(*(a1 + 120));
  }

  return refreshed;
}

uint64_t domain_mngr_ProcessEnd(uint64_t a1, int a2)
{
  v8 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v8);
  if ((inited & 0x80000000) == 0)
  {
    vector_Clear(*(a1 + 88));
    Size = vector_GetSize(*(a1 + 120));
    if (Size > *(a1 + 104))
    {
      v6 = Size;
      do
      {
        vector_StackPop(*(a1 + 120));
        --v6;
      }

      while (v6 > *(a1 + 104));
    }
  }

  return inited;
}

uint64_t domain_mngr_EnableDomain(uint64_t a1, int a2, uint64_t a3)
{
  v20 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v19 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v20);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = ssftmap_Find(*(a1 + 112), a3, &v19);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_8:
    log_OutPublic(*(v20 + 32), "DOMAIN_MNGR", 47008, "%s%s%s%x", v6, v7, v8, v9, "domain");
    return v10;
  }

  v15 = vector_Add(*(a1 + 120), &v19);
  v16 = *(v20 + 32);
  if (!v15)
  {
    log_OutPublic(v16, "DOMAIN_MNGR", 47000, 0, v11, v12, v13, v14, v18);
    v10 = 2296389642;
    goto LABEL_8;
  }

  log_OutText(v16, "DOMAIN_MNGR", 4, 0, "    Enable domain [%s]", v12, v13, v14, a3);
  return v10;
}

uint64_t domain_mngr_DisableDomain(uint64_t a1, int a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v14);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v6 = ssftmap_Find(*(a1 + 112), a3, &v12);
  if ((v6 & 0x80000000) == 0 && *(a1 + 100))
  {
    v7 = 0;
    while (1)
    {
      vector_GetElemAt(*(a1 + 120), v7, &v13);
      if (v13)
      {
        if (v12 == *v13)
        {
          break;
        }
      }

      if (++v7 >= *(a1 + 100))
      {
        return v6;
      }
    }

    vector_Remove(*(a1 + 120), v7);
    --*(a1 + 100);
    log_OutText(*(v14 + 32), "DOMAIN_MNGR", 4, 0, "    Disable domain [%s]", v9, v10, v11, a3);
  }

  return v6;
}

uint64_t domain_mngr_DisableAllDomains(uint64_t a1, int a2)
{
  v12 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v12);
  if ((inited & 0x80000000) == 0)
  {
    Size = vector_GetSize(*(a1 + 120));
    if (Size > *(a1 + 100))
    {
      v9 = Size;
      do
      {
        vector_StackPop(*(a1 + 120));
        --v9;
      }

      while (v9 > *(a1 + 100));
    }

    log_OutText(*(v12 + 32), "DOMAIN_MNGR", 4, 0, "    Disable all domains", v6, v7, v8, v11);
  }

  return inited;
}

uint64_t domain_mngr_ConsultActivePromptDbs(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, __int16 *a8, int a9)
{
  v132 = 0;
  v17 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v132);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v132 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ConsultActivePromptDbs", v18, v19, v20, v124);
  vector_Clear(*(a1 + 88));
  v26 = *a5;
  if (v26 < 2)
  {
LABEL_7:
    v131 = a6;
    log_OutText(*(v132 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", v23, v24, v25, *a3);
    v28 = *(*a4 + 12);
    v127 = a8;
    v29 = *a8;
    v30 = *(v132 + 8);
    v31 = cstdlib_strlen(*a3);
    v130 = CILE_New(v30, 1, v28 + v29, v31);
    if (!v130)
    {
      inited = 2296389642;
      log_OutPublic(*(v132 + 32), "DOMAIN_MNGR", 47000, 0, v35, v36, v37, v38, v126);
      return inited;
    }

    v129 = a7;
    if (!*a5)
    {
LABEL_34:
      if (!cstdlib_strlen(*a3))
      {
        goto LABEL_107;
      }

      v53 = *(a1 + 16);
      v139 = 0;
      memset(__b, 0, sizeof(__b));
      v136 = 0;
      v137 = 0;
      v134 = 0;
      v135 = 0;
      v133 = 0;
      v54 = *(*a4 + 12);
      if (log_HasTraceTuningDataSubscriber(*(v53 + 32)))
      {
        log_OutTraceTuningData(*(v53 + 32), 250, "%s%s", v55, v56, v57, v58, v59, "BEG");
        v60 = *(v53 + 32);
        v61 = *a3;
        v62 = cstdlib_strlen(*a3);
        log_OutTraceTuningDataBinary(v60, 251, "", "text/plain;charset=depes", v61, v62);
        log_OutTraceTuningDataBinary(*(v53 + 32), 251, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
      }

      v63 = *a5;
      v128 = v53;
      if (!*a5)
      {
        inited = 0;
        v75 = 0;
        goto LABEL_61;
      }

      v64 = 0;
      v65 = 0;
      inited = 2296389642;
      v66 = v130;
      while (1)
      {
        v67 = *a4 + 32 * v64;
        if (*v67 == 40)
        {
          v68 = *(v53 + 8);
          v69 = cstdlib_strlen(*(v67 + 24));
          v70 = heap_Alloc(v68, (v69 + 1));
          v75 = v70;
          if (!v70)
          {
            log_OutPublic(*(v128 + 32), "DOMAIN_MNGR", 47000, 0, v71, v72, v73, v74, v126);
            goto LABEL_61;
          }

          cstdlib_strcpy(v70, *(*a4 + 32 * v64 + 24));
          ActivePrompt = hlp_FindActivePrompt(a1, v75, __b);
          if ((ActivePrompt & 0x80000000) != 0)
          {
            inited = ActivePrompt;
LABEL_61:
            v90 = v129;
            if (log_HasTraceTuningDataSubscriber(*(v128 + 32)))
            {
              v91 = *(v128 + 32);
              v92 = *a3;
              v93 = cstdlib_strlen(*a3);
              log_OutTraceTuningDataBinary(v91, 252, "", "text/plain;charset=depes", v92, v93);
              log_OutTraceTuningDataBinary(*(v128 + 32), 252, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              v90 = v129;
              log_OutTraceTuningData(*(v128 + 32), 250, "%s%s %s%u", v94, v95, v96, v97, v98, "END");
            }

            if ((inited & 0x80000000) == 0 && *(a1 + 96))
            {
              if (log_HasTraceTuningDataSubscriber(*(v128 + 32)))
              {
                log_OutTraceTuningData(*(v128 + 32), 270, "%s%s", v99, v100, v101, v102, v103, "BEG");
                v104 = *(v128 + 32);
                v105 = *a3;
                v106 = cstdlib_strlen(*a3);
                log_OutTraceTuningDataBinary(v104, 271, "", "text/plain;charset=depes", v105, v106);
                v90 = v129;
                log_OutTraceTuningDataBinary(*(v128 + 32), 271, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              }

              if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v134) & 0x80000000) == 0)
              {
                while ((ssftmap_IteratorNext(v134, &v136, &v135) & 0x80000000) == 0)
                {
                  domain_SetConsulted(v135, 0);
                }

                ssftmap_IteratorClose(v134);
              }

              Size = vector_GetSize(*(a1 + 120));
              if (Size)
              {
                v108 = Size;
                while (vector_GetElemAt(*(a1 + 120), --v108, &v137))
                {
                  if (domain_GetConsulted(*v137))
                  {
                    if (!v108)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v109 = vector_GetSize(*(*v137 + 16));
                    if (v109)
                    {
                      v110 = v109;
                      if (vector_GetElemAt(*(*v137 + 16), v109 - 1, &v133))
                      {
                        v111 = v110 - 2;
                        while (1)
                        {
                          inited = activeprompt_db_Consult(*v133, a3, a4, a5, v131, v129, v130, a9);
                          if ((inited & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (v111 != -1)
                          {
                            if (vector_GetElemAt(*(*v137 + 16), v111--, &v133))
                            {
                              continue;
                            }
                          }

                          goto LABEL_83;
                        }

                        v90 = v129;
                        break;
                      }
                    }

LABEL_83:
                    domain_SetConsulted(*v137, 1);
                    v90 = v129;
                    if (!v108)
                    {
                      break;
                    }
                  }
                }
              }
            }

            if (v75)
            {
              heap_Free(*(v128 + 8), v75);
            }

            if (log_HasTraceTuningDataSubscriber(*(v128 + 32)))
            {
              v113 = *(v128 + 32);
              v114 = *a3;
              v115 = cstdlib_strlen(*a3);
              log_OutTraceTuningDataBinary(v113, 272, "", "text/plain;charset=depes", v114, v115);
              log_OutTraceTuningDataBinary(*(v128 + 32), 272, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              v116 = *(a1 + 56);
              v144 = 0;
              *v145 = 0;
              v143 = 0;
              v142 = 0;
              v141 = 0;
              v140 = 0;
              if (((*(v116 + 104))(v131, v90, 1, 0, &v145[1]) & 0x80000000) == 0 && ((*(v116 + 152))(v131, v90, 2, v145[1], &v143) & 0x80000000) == 0)
              {
                if (v143)
                {
                  if (((*(v116 + 104))(v131, v90, 2, v145[1], v145) & 0x80000000) == 0)
                  {
                    v122 = v145[0];
                    if (v145[0])
                    {
                      while (((*(v116 + 168))(v131, v90, v122, 0, 1, &v141, &v144 + 2) & 0x80000000) == 0)
                      {
                        if (v141 == 5)
                        {
                          if (((*(v116 + 176))(v131, v90, v145[0], 4, &v142, &v144 + 2) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (HIWORD(v144) && !cstdlib_strncmp(v142, "phon", HIWORD(v144)))
                          {
                            if (((*(v116 + 176))(v131, v90, v145[0], 3, &v140, &v144 + 2) & 0x80000000) != 0 || ((*(v116 + 168))(v131, v90, v145[0], 1, 1, &v144, &v144 + 2) & 0x80000000) != 0 || ((*(v116 + 168))(v131, v90, v145[0], 2, 1, &v143 + 2, &v144 + 2) & 0x80000000) != 0)
                            {
                              break;
                            }

                            log_OutTraceTuningData(*(v128 + 32), 272, "%s%s %s%d %s%d", v117, v118, v119, v120, v121, "PHON");
                          }
                        }

                        if (((*(v116 + 120))(v131, v90, v145[0], v145) & 0x80000000) == 0)
                        {
                          v122 = v145[0];
                          if (v145[0])
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

              log_OutTraceTuningData(*(v128 + 32), 270, "%s%s %s%u", v117, v118, v119, v120, v121, "END");
            }

LABEL_107:
            if (v132)
            {
              CILE_Free(v130, *(v132 + 8));
              goto LABEL_109;
            }

            return inited;
          }

          log_OutText(*(v128 + 32), "DOMAIN_MNGR", 5, 0, "    Do User Prompt Insertion for [%s]", v77, v78, v79, v75);
          heap_Free(*(v128 + 8), v75);
          v53 = v128;
          while (1)
          {
            v80 = *(*a4 + 32 * v64 + 12);
            v81 = *(v66 + 4);
            v82 = *(v66 + 8) + v81;
            if (v81 <= v80 && v80 < v82)
            {
              break;
            }

            if (v80 == v82 && v80 == v54 + cstdlib_strlen(*a3))
            {
              v80 = *(*a4 + 32 * v64 + 12);
              break;
            }

            v66 = *(v66 + 16);
            if (!v66)
            {
              v75 = 0;
              inited = 2296389632;
              goto LABEL_61;
            }
          }

          v65 = activeprompt_Insert(__b, (v80 - v54), 0, v54, a3, a4, a5, v64, v66, v131, v129, v127);
          if ((v65 & 0x80000000) != 0)
          {
LABEL_56:
            v75 = 0;
            inited = v65;
            goto LABEL_61;
          }

          log_OutText(*(v128 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", v84, v85, v86, *a3);
          v63 = *a5;
        }

        if (++v64 >= v63)
        {
          goto LABEL_56;
        }
      }
    }

    v39 = 0;
    v40 = 0;
    v41 = v130;
    while (1)
    {
      v42 = *a4;
      if (*(*a4 + v39) == 12)
      {
        v43 = *(v42 + v39 + 24);
        if (v43)
        {
          if (*v43)
          {
            if (cstdlib_strcmp(v43, "normal"))
            {
              v42 = *a4;
              if (!*(a1 + 128))
              {
                v44 = *(v132 + 8);
                v45 = cstdlib_strlen(*(v42 + v39 + 24));
                v46 = heap_Alloc(v44, (v45 + 1));
                if (!v46)
                {
                  goto LABEL_85;
                }

                v47 = v46;
                cstdlib_strcpy(v46, *(*a4 + v39 + 24));
                domain_mngr_EnableDomain(a1, a2, v47);
                heap_Free(*(v132 + 8), v47);
                goto LABEL_33;
              }
            }

            else
            {
              v42 = *a4;
            }
          }
        }
      }

      v48 = *(v42 + v39);
      if (v48 > 25)
      {
        if (v48 == 26 || v48 == 29)
        {
LABEL_28:
          v50 = *(v42 + v39 + 12);
          v34 = *(v41 + 1);
          v35 = v50 - v34;
          if (v50 > v34)
          {
            v51 = *(v41 + 2);
            if ((v51 - (v50 - v34)) >= 1)
            {
              inited = CI_Update(*(v132 + 8), v41, *v41, v34, v35);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_107;
              }

              v52 = CILE_New(*(v132 + 8), *v41, *(*a4 + v39 + 12), v51 - *(v41 + 2));
              if (!v52)
              {
LABEL_85:
                inited = 2296389642;
                log_OutPublic(*(v132 + 32), "DOMAIN_MNGR", 47000, 0, v35, v36, v37, v38, v126);
                goto LABEL_107;
              }

              v41[2] = v52;
              v41 = v52;
            }
          }
        }
      }

      else
      {
        if (v48 == 8)
        {
          goto LABEL_28;
        }

        if (v48 == 12 && !*(a1 + 128))
        {
          hlp_DisableLastDomain(a1, v32, v33, v34, v35, v36, v37, v38, v126);
        }
      }

LABEL_33:
      ++v40;
      v39 += 32;
      if (v40 >= *a5)
      {
        goto LABEL_34;
      }
    }
  }

  v27 = 0;
  while (*(*a4 + 32 * v27 + 12) <= *(*a4 + 44 + 32 * v27))
  {
    if ((v26 - 1) <= ++v27)
    {
      goto LABEL_7;
    }
  }

  log_OutPublic(*(v132 + 32), "DOMAIN_MNGR", 47015, 0, v22, v23, v24, v25, v125);
  inited = 2296389639;
LABEL_109:
  if (v132)
  {
    log_OutText(*(v132 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ConsultActivePromptDbs", v87, v88, v89, v126);
  }

  return inited;
}

uint64_t domain_mngr_ConsultOriOrth(uint64_t a1, int a2, const char **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v92 = *MEMORY[0x277D85DE8];
  v85 = 0;
  cstdlib_strcpy(__dst, "normal");
  v10 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v85);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v85 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ConsultOriOrth", v11, v12, v13, v80);
    *(a1 + 128) = 1;
    v84 = CILE_New(*(v85 + 8), 1, *(*a4 + 12), *(*a4 + 16));
    if (v84)
    {
      if (*a5)
      {
        v22 = 0;
        __s1 = __dst;
        v83 = __dst;
        v23 = v84;
        while (1)
        {
          v24 = *a4;
          v25 = *a4 + 32 * v22;
          v26 = *v25;
          if (*v25 == 12)
          {
            v27 = *(v25 + 24);
            if (!v27 || !*v27)
            {
LABEL_29:
              hlp_DisableLastDomain(a1, v15, v16, v17, v18, v19, v20, v21, v81);
              goto LABEL_30;
            }

            v28 = cstdlib_strcmp(v27, "normal");
            v24 = *a4;
            if (v28)
            {
              v29 = *(v85 + 8);
              v30 = cstdlib_strlen(*(v24 + 32 * v22 + 24));
              v31 = heap_Alloc(v29, (v30 + 1));
              if (!v31)
              {
                goto LABEL_97;
              }

              v32 = v31;
              cstdlib_strcpy(v31, *(*a4 + 32 * v22 + 24));
              domain_mngr_EnableDomain(a1, a2, v32);
              heap_Free(*(v85 + 8), v32);
              goto LABEL_30;
            }

            v26 = *(v24 + 32 * v22);
          }

          if (v26 > 0x28)
          {
            break;
          }

          if (((1 << v26) & 0x10024000100) != 0)
          {
            v33 = *(v24 + 32 * v22 + 12);
            v17 = v23[1];
            v18 = v33 - v17;
            if (v33 > v17)
            {
              v34 = v23[2];
              if (v34 != v18)
              {
                inited = CI_Update(*(v85 + 8), v23, *v23, v17, v18);
                if ((inited & 0x80000000) != 0)
                {
                  goto LABEL_98;
                }

                v35 = CILE_New(*(v85 + 8), *v23, *(*a4 + 32 * v22 + 12), v34 - v23[2]);
                if (!v35)
                {
                  goto LABEL_97;
                }

                *(v23 + 2) = v35;
                v23 = v35;
              }
            }

            goto LABEL_30;
          }

          if (v26 == 12)
          {
            goto LABEL_29;
          }

          if (v26 != 21)
          {
            break;
          }

          v36 = cstdlib_strcmp(__s1, *(v24 + 32 * v22 + 24));
          v24 = *a4;
          if (!v36)
          {
            break;
          }

LABEL_24:
          if (cstdlib_strcmp(*(v24 + 32 * v22 + 24), __dst))
          {
            goto LABEL_25;
          }

          v44 = *(*a4 + 32 * v22);
          if (v44 == 21)
          {
            if (!cstdlib_strcmp(v83, __dst))
            {
              goto LABEL_46;
            }

            v44 = *(*a4 + 32 * v22);
          }

          if (v44 != 36 || cstdlib_strcmp(__s1, __dst))
          {
LABEL_25:
            v37 = 0;
            goto LABEL_26;
          }

LABEL_46:
          v37 = 1;
LABEL_26:
          v38 = *a4 + 32 * v22;
          if (*v38 == 36)
          {
            v83 = *(v38 + 24);
          }

          else if (*v38 == 21)
          {
            __s1 = *(v38 + 24);
          }

          v17 = *(v38 + 12);
          v45 = v23[1];
          v18 = v17 - v45;
          if (v17 <= v45 || (v46 = v23[2], v46 == v18))
          {
            if (v17 == v45)
            {
              inited = CI_Update(*(v85 + 8), v23, v37, v17, v23[2]);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_98;
              }
            }
          }

          else
          {
            inited = CI_Update(*(v85 + 8), v23, *v23, v23[1], v18);
            if ((inited & 0x80000000) != 0)
            {
              goto LABEL_98;
            }

            v47 = CILE_New(*(v85 + 8), v37, *(*a4 + 32 * v22 + 12), v46 - v23[2]);
            if (!v47)
            {
LABEL_97:
              inited = 2296389642;
              log_OutPublic(*(v85 + 32), "DOMAIN_MNGR", 47000, 0, v18, v19, v20, v21, v81);
              goto LABEL_98;
            }

            *(v23 + 2) = v47;
            v23 = v47;
          }

LABEL_30:
          if (++v22 >= *a5)
          {
            goto LABEL_69;
          }
        }

        v39 = v85;
        __s2 = 0;
        if (!v83)
        {
          goto LABEL_30;
        }

        if (!v85)
        {
          goto LABEL_30;
        }

        if (!v24)
        {
          goto LABEL_30;
        }

        v40 = v24 + 32 * v22;
        if (*v40 != 36 || !cstdlib_strcmp(v83, *(v40 + 24)) || (paramc_ParamGetStr(*(v39 + 40), "langcode", &__s2) & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        v41 = cstdlib_strcmp(v83, "normal");
        v42 = *(v40 + 24);
        if (v41)
        {
          if (cstdlib_strcmp(v42, "normal"))
          {
LABEL_58:
            v48 = *a5;
            v24 = *a4;
            if (*a5)
            {
              v49 = 0;
              v50 = *(v24 + 32 * v22 + 12);
              v51 = *a4;
              do
              {
                if (v49)
                {
                  break;
                }

                v52 = v51[3];
                if (v52 > v50)
                {
                  break;
                }

                v49 = v52 == v50 && *v51 == 34;
                v51 += 8;
                --v48;
              }

              while (v48);
              if (v49)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_24;
          }

          v43 = __s2;
          v42 = v83;
        }

        else
        {
          v43 = __s2;
        }

        if (!cstdlib_strcmp(v42, v43))
        {
          goto LABEL_30;
        }

        goto LABEL_58;
      }

LABEL_69:
      if (*a3 && cstdlib_strlen(*a3))
      {
        v53 = *(a1 + 16);
        v89 = 0;
        __s2 = 0;
        v87 = 0;
        v88 = 0;
        v86 = 0;
        if (log_HasTraceTuningDataSubscriber(*(v53 + 32)))
        {
          log_OutTraceTuningData(*(v53 + 32), 210, "%s%s", v54, v55, v56, v57, v58, "BEG");
          v59 = *(v53 + 32);
          v60 = *a3;
          v61 = cstdlib_strlen(*a3);
          log_OutTraceTuningDataBinary(v59, 211, "", "text/plain;charset=utf-8", v60, v61);
          log_OutTraceTuningDataBinary(*(v53 + 32), 211, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
        }

        if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v87) & 0x80000000) == 0)
        {
          while ((ssftmap_IteratorNext(v87, &v89, &v88) & 0x80000000) == 0)
          {
            domain_SetConsulted(v88, 0);
          }

          ssftmap_IteratorClose(v87);
        }

        Size = vector_GetSize(*(a1 + 120));
        if (Size)
        {
          v63 = Size;
          inited = 0;
          while (vector_GetElemAt(*(a1 + 120), --v63, &__s2))
          {
            if (domain_GetConsulted(*__s2))
            {
              if (!v63)
              {
                break;
              }
            }

            else
            {
              v64 = vector_GetSize(*(*__s2 + 16));
              if (v64)
              {
                v65 = v64;
                if (vector_GetElemAt(*(*__s2 + 16), v64 - 1, &v86))
                {
                  v66 = v65 - 2;
                  while (1)
                  {
                    inited = activeprompt_db_ConsultOriOrth(*v86, a3, a4, a5, v84);
                    if ((inited & 0x80000000) != 0)
                    {
                      goto LABEL_93;
                    }

                    if (v66 != -1)
                    {
                      if (vector_GetElemAt(*(*__s2 + 16), v66--, &v86))
                      {
                        continue;
                      }
                    }

                    break;
                  }
                }
              }

              domain_SetConsulted(*__s2, 1);
              if (!v63)
              {
                break;
              }
            }
          }
        }

        else
        {
          inited = 0;
        }

LABEL_93:
        if (log_HasTraceTuningDataSubscriber(*(v53 + 32)))
        {
          if ((inited & 0x80000000) == 0)
          {
            v73 = *(v53 + 32);
            v74 = *a3;
            v75 = cstdlib_strlen(v74);
            log_OutTraceTuningDataBinary(v73, 212, "", "text/plain;charset=utf-8", v74, v75);
            log_OutTraceTuningDataBinary(*(v53 + 32), 212, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
          }

          log_OutTraceTuningData(*(v53 + 32), 210, "%s%s %s%u", v68, v69, v70, v71, v72, "END");
        }
      }

LABEL_98:
      if (v85)
      {
        CILE_Free(v84, *(v85 + 8));
        if (v85)
        {
          log_OutText(*(v85 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ConsultOriOrth", v76, v77, v78, v81);
        }
      }
    }

    else
    {
      inited = 2296389642;
      log_OutPublic(*(v85 + 32), "DOMAIN_MNGR", 47000, 0, v18, v19, v20, v21, v81);
    }
  }

  return inited;
}

uint64_t domain_mngr_InsertPromptOrth(uint64_t a1, int a2, const char **a3, uint64_t *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _WORD *a8)
{
  v41 = 0;
  v12 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v40 = 0;
  memset(__b, 0, sizeof(__b));
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v41);
  if ((inited & 0x80000000) == 0)
  {
    v14 = *a5;
    if (*a5)
    {
      v15 = 0;
      v16 = 0;
      v17 = *(*a4 + 12);
      do
      {
        if (*(*a4 + v15) == 40)
        {
          v18 = *(v41 + 8);
          v19 = cstdlib_strlen(*(*a4 + v15 + 24));
          v20 = heap_Alloc(v18, (v19 + 1));
          if (!v20)
          {
            log_OutPublic(*(v41 + 32), "DOMAIN_MNGR", 47000, 0, v21, v22, v23, v24, v35);
            return 2296389642;
          }

          v25 = v20;
          cstdlib_strcpy(v20, *(*a4 + v15 + 24));
          ActivePrompt = hlp_FindActivePrompt(a1, v25, __b);
          if ((ActivePrompt & 0x80000000) != 0)
          {
            inited = ActivePrompt;
            heap_Free(*(v41 + 8), v25);
            return inited;
          }

          log_OutText(*(v41 + 32), "DOMAIN_MNGR", 5, 0, "    Do User Prompt Insertion for [%s]", v27, v28, v29, v25);
          heap_Free(*(v41 + 8), v25);
          inited = activeprompt_InsertOrth(__b, *(*a4 + v15 + 12) - v17, v17, a3, a4, a5, v16, v30, a6, a7, a8);
          if ((inited & 0x80000000) != 0)
          {
            return inited;
          }

          log_OutText(*(v41 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", v31, v32, v33, *a3);
          v14 = *a5;
        }

        ++v16;
        v15 += 32;
      }

      while (v16 < v14);
    }
  }

  return inited;
}

uint64_t domain_mngr_ExternalDBRegister(uint64_t a1, int a2)
{
  v4 = 0;
  result = safeh_HandleCheck(a1, a2, 285, 136);
  if ((result & 0x80000000) == 0)
  {
    LODWORD(result) = InitRsrcFunction(*a1, *(a1 + 8), &v4);
    if (result >= 0)
    {
      return 2296389633;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t domain_mngr_ActivePromptFind(uint64_t a1, int a2, char *a3, void *a4, uint64_t a5, char **a6, void *a7)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  result = safeh_HandleCheck(a1, a2, 285, 136);
  if ((result & 0x80000000) == 0)
  {
    result = hlp_FindActivePrompt(a1, a3, a4);
    if ((result & 0x80000000) == 0)
    {
      if (a6)
      {
        result = activeprompt_GetRecPromptURI(a4, a5, a6);
      }

      if (a7 && (result & 0x80000000) == 0)
      {

        return activeprompt_GetUserNorm(a4, a7);
      }
    }
  }

  return result;
}

uint64_t domain_mngr_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  v6 = 0;
  result = safeh_HandleCheck(a1, a2, 285, 136);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*a1, *(a1 + 8), &v6);
    if ((result & 0x80000000) == 0)
    {
      *a3 = &domain_mngr_ResourceTypes_SZ_CONTENT_TYPES;
    }
  }

  return result;
}

uint64_t domain_mngr_ResourceLoad(__int128 *a1, int a2, char *a3, char *a4, const void *a5, int a6, uint64_t a7)
{
  v74 = 0;
  v72 = 0;
  v73 = 0;
  active = 2296389639;
  if (!a3 || !a7)
  {
    return active;
  }

  v9 = a6;
  if (a4)
  {
    v15 = a6 != 0;
    if (!a5 && a6)
    {
      return active;
    }
  }

  else
  {
    if (!a5 || !a6)
    {
      return active;
    }

    v15 = 1;
  }

  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  memset(v71, 0, sizeof(v71));
  inited = InitRsrcFunction(*a1, *(a1 + 1), &v74);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  if (v15)
  {
    v22 = a5;
  }

  else
  {
    v22 = 0;
  }

  if (a5 == 0 || !v15)
  {
    v9 = 0;
  }

  log_OutTraceTuningData(*(v74 + 32), 201, "%s%s %s%s %s%s", v17, v18, v19, v20, v21, "BEG");
  active = activeprompt_db_ObjOpen(0, a1, a3, a4, v22, v9, 0, &v72);
  if ((active & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v28 = v72;
  if (v72)
  {
    if (!*(v72 + 80))
    {
      goto LABEL_27;
    }

    v29 = cstdlib_strstr(a3, "application/x-vocalizer-activeprompt-db");
    v28 = v72;
    if (v29)
    {
      v30 = (*(*(a1 + 8) + 104))(*(a1 + 9), *(a1 + 10), *(v72 + 80));
      active = v30;
      if ((v30 & 0x80000000) != 0 || (v28 = v72) == 0)
      {
        if ((v30 & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        goto LABEL_53;
      }

LABEL_27:
      v31 = *(*(v28 + 8) + 168);
      if ((ssftmap_Find(*(a1 + 14), v31, &v73) & 0x80000000) != 0)
      {
        v41 = domain_ObjOpen(0, *a1, *(a1 + 1), v71);
        if ((v41 & 0x80000000) != 0)
        {
          v51 = v41;
          log_OutPublic(*(v74 + 32), "DOMAIN_MNGR", 47004, "%s%s%s%x", v42, v43, v44, v45, "domain");
          v52 = 0;
          v53 = 1;
          active = v51;
          goto LABEL_45;
        }

        v46 = ssftmap_Insert(*(a1 + 14), v31, v71);
        if ((v46 & 0x80000000) != 0 || (v46 = ssftmap_Find(*(a1 + 14), v31, &v73), (v46 & 0x80000000) != 0))
        {
          active = v46;
          log_OutPublic(*(v74 + 32), "DOMAIN_MNGR", 47005, "%s%s%s%x", v47, v48, v49, v50, "domain");
          domain_ObjClose(v71);
          goto LABEL_43;
        }

        log_OutText(*(v74 + 32), "DOMAIN_MNGR", 4, 0, "Adding %s", v48, v49, v50, v31);
      }

      v32 = domain_checkIfPresent(v73, v72);
      if ((v32 & 0x80000000) == 0)
      {
        active = domain_AddActivePromptDb(v73, v72);
        if ((active & 0x80000000) == 0)
        {
          if (cstdlib_strstr(a3, ";mode=automatic") || !cstdlib_strcmp((*(v72 + 8) + 52), "automatic"))
          {
            active = domain_mngr_EnableDomain(a1, a2, v31);
            if ((active & 0x80000000) != 0)
            {
              log_OutPublic(*(v74 + 32), "DOMAIN_MNGR", 47010, "%s%s%s%x", v37, v38, v39, v40, "domain");
              v52 = 0;
              v53 = 0;
              goto LABEL_44;
            }

            ++*(a1 + 25);
          }

          hlp_RefreshTNTypes(a1);
          *a7 = v72;
          *(a7 + 8) = 316;
          goto LABEL_53;
        }

        log_OutPublic(*(v74 + 32), "DOMAIN_MNGR", 47009, "%s%s%s%x", v33, v34, v35, v36, "domain");
LABEL_43:
        v52 = 0;
        v53 = 1;
LABEL_44:
        v51 = active;
        goto LABEL_45;
      }

      v51 = v32;
      v52 = (v32 & 0x1FFF) == 19;
      if ((v32 & 0x1FFF) == 0x13)
      {
        active = 0;
      }

      else
      {
        active = v32;
      }

      v53 = 1;
LABEL_45:
      log_OutTraceTuningData(*(v74 + 32), 201, "%s%s %s%u", v23, v24, v25, v26, v27, "END");
      v59 = v72;
      if (v72)
      {
        if (v53)
        {
          log_OutTraceTuningData(*(v74 + 32), 202, "%s%s %s%s", v54, v55, v56, v57, v58, "BEG");
          activeprompt_db_ObjClose(v72, v52);
          log_OutTraceTuningData(*(v74 + 32), 202, "%s%s %s%u", v60, v61, v62, v63, v64, "END");
          return active;
        }

        *a7 = v72;
        *(a7 + 8) = 316;
        domain_mngr_ResourceUnload(a1, a2, v59, *(a7 + 8));
        *a7 = 0;
        *(a7 + 8) = 0;
      }

      return v51;
    }

    if (v72)
    {
      goto LABEL_27;
    }
  }

LABEL_53:
  if (log_HasTraceTuningDataSubscriber(*(v74 + 32)))
  {
    log_OutTraceTuningData(*(v74 + 32), 201, "%s%s %s%u", v65, v66, v67, v68, v69, "END");
  }

  return active;
}

uint64_t domain_mngr_ResourceUnload(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = safeh_HandleCheck(a3, a4, 316, 88);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v33);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = 2296390669;
  if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v32) & 0x80000000) == 0)
  {
    if ((ssftmap_IteratorNext(v32, &v31, &v30) & 0x80000000) != 0)
    {
      ssftmap_IteratorClose(v32);
    }

    else
    {
      do
      {
        if (vector_GetElemAt(*(v30 + 16), 0, &v29))
        {
          v15 = 0;
          while (*v29 != a3)
          {
            if (!vector_GetElemAt(*(v30 + 16), ++v15, &v29))
            {
              goto LABEL_16;
            }
          }

          log_OutTraceTuningData(*(v33 + 32), 202, "%s%s %s%s", v10, v11, v12, v13, v14, "BEG");
          v16 = *v29;
          if (*(*v29 + 80))
          {
            inited = (*(*(a1 + 64) + 112))(*(a1 + 72), *(a1 + 80));
            if ((inited & 0x80000000) != 0)
            {
              return inited;
            }

            v16 = *v29;
          }

          v17 = domain_mngr_DisableDomain(a1, a2, *(*(v16 + 8) + 168));
          if ((v17 & 0x80000000) != 0)
          {
            v9 = v17;
            log_OutTraceTuningData(*(v33 + 32), 202, "%s%s %s%u", v18, v19, v20, v21, v22, "END");
            return v9;
          }

          vector_Remove(*(v30 + 16), v15);
          log_OutTraceTuningData(*(v33 + 32), 202, "%s%s %s%u", v23, v24, v25, v26, v27, "END");
          v9 = 0;
        }

LABEL_16:
        ;
      }

      while ((ssftmap_IteratorNext(v32, &v31, &v30) & 0x80000000) == 0);
      ssftmap_IteratorClose(v32);
      if ((v9 & 0x80000000) == 0)
      {
        hlp_RefreshTNTypes(a1);
      }
    }
  }

  return v9;
}

uint64_t domain_mngr_ResourceEnable(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = safeh_HandleCheck(a3, a4, 316, 88);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = 2296390669;
  if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v17) & 0x80000000) == 0)
  {
    if ((ssftmap_IteratorNext(v17, &v16, &v15) & 0x80000000) != 0)
    {
      v9 = 2296390669;
    }

    else
    {
      v9 = 2296390669;
      do
      {
        if (vector_GetElemAt(*(v15 + 16), 0, &v14))
        {
          v10 = 1;
          while (1)
          {
            v11 = *v14;
            if (*v14 == a3)
            {
              break;
            }

            if (!vector_GetElemAt(*(v15 + 16), v10++, &v14))
            {
              goto LABEL_15;
            }
          }

          if (*(v11 + 24))
          {
            v9 = 2296390682;
          }

          else
          {
            v9 = 0;
            *(v11 + 24) = 1;
          }
        }

LABEL_15:
        ;
      }

      while ((ssftmap_IteratorNext(v17, &v16, &v15) & 0x80000000) == 0);
    }

    ssftmap_IteratorClose(v17);
    return v9;
  }

  return v8;
}

uint64_t domain_mngr_ResourceDisable(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = safeh_HandleCheck(a3, a4, 316, 88);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v17);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = 2296390669;
  if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v16) & 0x80000000) == 0)
  {
LABEL_5:
    while ((ssftmap_IteratorNext(v16, &v15, &v14) & 0x80000000) == 0)
    {
      if (vector_GetElemAt(*(v14 + 16), 0, &v13))
      {
        v9 = 1;
        while (1)
        {
          v10 = *v13;
          if (*v13 == a3)
          {
            break;
          }

          if (!vector_GetElemAt(*(v14 + 16), v9++, &v13))
          {
            goto LABEL_5;
          }
        }

        v8 = 2296390669;
        if (*(v10 + 24))
        {
          v8 = 0;
          *(v10 + 24) = 0;
        }
      }
    }

    ssftmap_IteratorClose(v16);
  }

  return v8;
}

uint64_t *domain_mngr_IElemConsultMemVecFreeParts(uint64_t *result, void *a2)
{
  if (result)
  {
    if (*result)
    {
      return heap_Free(a2, *result);
    }
  }

  return result;
}

uint64_t domain_mngr_IElemDomainCopy(void *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 32);
  if (!v5)
  {
    return 2296389642;
  }

  v6 = v5;
  cstdlib_memcpy(v5, a1, 0x20uLL);
  result = 0;
  a1[2] = 0;
  *a3 = v6;
  return result;
}

void *domain_mngr_IElemDomainFree(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    domain_ObjClose(result);

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t hlp_RefreshTNTypes(uint64_t a1)
{
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v20);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v20 + 32), "DOMAIN_MNGR", 4, 0, "Entering hlp_RefreshTNTypes", v3, v4, v5, v15);
  inited = ssftstring_ObjOpen(*(v20 + 8), &v19);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v18) & 0x80000000) == 0)
  {
    while ((ssftmap_IteratorNext(v18, &v17, &v16) & 0x80000000) == 0)
    {
      if (vector_GetElemAt(*(v16 + 16), 0, &v15))
      {
        v6 = 1;
        do
        {
          activeprompt_db_GetTNTypes(*v15, v19);
        }

        while (vector_GetElemAt(*(v16 + 16), v6++, &v15));
      }
    }

    ssftmap_IteratorClose(v18);
  }

  v9 = *(v20 + 40);
  v10 = ssftstring_CStr(v19);
  v8 = paramc_ParamSetStr(v9, "domainmngrtntypes", v10);
  ssftstring_ObjClose(v19);
  log_OutText(*(v20 + 32), "DOMAIN_MNGR", 4, 0, "Exiting hlp_RefreshTNTypes", v11, v12, v13, v15);
  return v8;
}

uint64_t hlp_FindActivePrompt(uint64_t a1, char *__s, void *__b)
{
  v3 = *(a1 + 16);
  __s1 = 0;
  v29 = 0;
  v4 = 2296389652;
  v27 = 0;
  if (!v3)
  {
    return 2296389639;
  }

  if (__b)
  {
    cstdlib_memset(__b, 0, 0x68uLL);
  }

  v8 = domain_mngr_utils_DuplicateString(*(v3 + 8), __s, &__s1);
  if ((v8 & 0x80000000) == 0)
  {
    v14 = cstdlib_strstr(__s1, "::");
    if (!v14)
    {
      v4 = 2296389633;
      goto LABEL_17;
    }

    *v14 = 0;
    v15 = v14 + 2;
    v8 = ssftmap_Find(*(a1 + 112), __s1, &v29);
    if ((v8 & 0x80000000) == 0)
    {
      Size = vector_GetSize(*(v29 + 16));
      if (Size)
      {
        v17 = Size;
        if (vector_GetElemAt(*(v29 + 16), Size - 1, &v27))
        {
          v18 = v17 - 2;
          do
          {
            v4 = activeprompt_db_Get(*v27, v15, __b);
            if ((v4 & 0x80000000) == 0)
            {
              break;
            }

            if (v18 == -1)
            {
              break;
            }
          }

          while (vector_GetElemAt(*(v29 + 16), v18--, &v27));
        }
      }

      goto LABEL_17;
    }
  }

  v4 = v8;
LABEL_17:
  if (__s1)
  {
    heap_Free(*(v3 + 8), __s1);
    __s1 = 0;
  }

  v20 = *(v3 + 32);
  if ((v4 & 0x80000000) != 0)
  {
    log_OutPublic(v20, "DOMAIN_MNGR", 47016, "%s%s", v10, v11, v12, v13, "prompt");
    log_OutTraceTuningData(*(v3 + 32), 253, "%s%s %s%d", v21, v22, v23, v24, v25, "NAME");
  }

  else
  {
    log_OutTraceTuningData(v20, 253, "%s%s", v9, v10, v11, v12, v13, "NAME");
  }

  return v4;
}

uint64_t hlp_DisableLastDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 16);
  if (vector_GetSize(*(a1 + 120)) <= *(a1 + 100))
  {
    v14 = "    No domains were activated, so could not disable the last domain";
  }

  else
  {
    vector_StackPop(*(a1 + 120));
    v14 = "    Disable last enabled domain";
  }

  v15 = *(v10 + 32);

  return log_OutText(v15, "DOMAIN_MNGR", 4, 0, v14, v11, v12, v13, a9);
}

uint64_t domain_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t *a4)
{
  v16 = 0;
  inited = InitRsrcFunction(a2, a3, &v16);
  if ((inited & 0x80000000) == 0)
  {
    cstdlib_memset(a4, 0, 0x20uLL);
    *a4 = a2;
    a4[1] = a3;
    v8 = *(v16 + 8);
    v14 = xmmword_287EEFE90;
    v15 = off_287EEFEA0;
    if (!vector_ObjOpen(v8, &v14, 1, a4 + 2))
    {
      log_OutPublic(*(v16 + 32), "DOMAIN_MNGR", 47000, 0, v9, v10, v11, v12, v14);
      domain_ObjClose(a4);
      return 2296389642;
    }
  }

  return inited;
}

void *domain_IElemApdbVecFreeParts(void *result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return activeprompt_db_ObjClose(result, 0);
    }
  }

  return result;
}

uint64_t domain_ObjClose(uint64_t a1)
{
  v5 = 0;
  if (!a1)
  {
    return 2296389639;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v5);
  if ((inited & 0x80000000) == 0)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      vector_ObjClose(v3);
      *(a1 + 16) = 0;
    }
  }

  return inited;
}

uint64_t domain_checkIfPresent(uint64_t a1, uint64_t a2)
{
  v2 = 2296389639;
  if (a1)
  {
    v10 = 0;
    if (vector_GetSize(*(a1 + 16)))
    {
      v5 = 0;
      while (1)
      {
        vector_GetElemAt(*(a1 + 16), v5, &v10);
        v6 = *(*v10 + 56);
        v7 = *(a2 + 56);
        v8 = !v7 || v6 == 0;
        if (!v8 && cstdlib_strlen(v7) && !cstdlib_strcmp(*(a2 + 56), v6))
        {
          break;
        }

        if (++v5 >= vector_GetSize(*(a1 + 16)))
        {
          return 0;
        }
      }

      return 2296389651;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t domain_AddActivePromptDb(uint64_t a1, uint64_t a2)
{
  v2 = 2296389639;
  if (a1)
  {
    v4 = a2;
    if (vector_Add(*(a1 + 16), &v4))
    {
      return 0;
    }

    else
    {
      return 2296389642;
    }
  }

  return v2;
}

uint64_t domain_GetConsulted(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t domain_SetConsulted(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2296389639;
  }

  result = 0;
  *(a1 + 24) = a2;
  return result;
}

uint64_t fe_prompt_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  if (!a5)
  {
    return 2342526983;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v27);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v27[6], "LINGDB", &v25);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v27[6], "SYNTHSTREAM", &v26);
  v8 = v27[6];
  if ((Object & 0x80000000) != 0)
  {
    v20 = "LINGDB";
LABEL_16:
    objc_ReleaseObject(v8, v20);
    return Object;
  }

  Object = objc_GetObject(v8, "DOMAINMNGR", &v24);
  v9 = v27[6];
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v9, "LINGDB");
    v8 = v27[6];
    v20 = "SYNTHSTREAM";
    goto LABEL_16;
  }

  Object = objc_GetObject(v9, "FE_DEPES", &v23);
  v10 = v27[6];
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v10, "LINGDB");
    objc_ReleaseObject(v27[6], "SYNTHSTREAM");
    v8 = v27[6];
    v20 = "DOMAINMNGR";
    goto LABEL_16;
  }

  Object = objc_GetObject(v10, "FE_DCTLKP", &v22);
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v27[6], "LINGDB");
    objc_ReleaseObject(v27[6], "SYNTHSTREAM");
    objc_ReleaseObject(v27[6], "DOMAINMNGR");
    v8 = v27[6];
    v20 = "FE_DEPES";
    goto LABEL_16;
  }

  v11 = heap_Alloc(v27[1], 920);
  if (v11)
  {
    *v11 = v27;
    v16 = *(v26 + 8);
    *(v11 + 8) = *(v25 + 8);
    *(v11 + 16) = v16;
    v17 = v23;
    v18 = v24;
    *(v11 + 24) = *(v24 + 8);
    *(v11 + 32) = *(v18 + 16);
    *(v11 + 48) = *(v17 + 8);
    *(v11 + 56) = *(v17 + 16);
    v19 = v22;
    *(v11 + 912) = *(v22 + 8);
    *(v11 + 896) = *(v19 + 16);
    *a5 = v11;
    *(a5 + 8) = 62338;
  }

  else
  {
    log_OutPublic(v27[4], "FE_PROMPT", 45200, 0, v12, v13, v14, v15, v22);
    objc_ReleaseObject(v27[6], "LINGDB");
    objc_ReleaseObject(v27[6], "SYNTHSTREAM");
    objc_ReleaseObject(v27[6], "DOMAINMNGR");
    objc_ReleaseObject(v27[6], "FE_DEPES");
    objc_ReleaseObject(v27[6], "FE_DCTLKP");
    return 2342526986;
  }

  return Object;
}

uint64_t fe_prompt_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62338, 920);
  if ((result & 0x80000000) != 0)
  {
    return 2342526984;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "DOMAINMNGR");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_prompt_ObjReopen(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62338, 920);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2342526984;
  }
}

uint64_t fe_prompt_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62338, 920) & 0x80000000) != 0)
  {
    return 2342526984;
  }

  synstrmaux_InitStreamOpener(a1 + 72, *(*a1 + 32), "FE_PROMPT");
  v7 = synstrmaux_OpenStreams((a1 + 72), *(a1 + 16), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 72), *(a1 + 16));
  }

  return v7;
}

uint64_t fe_prompt_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  if ((safeh_HandleCheck(a1, a2, 62338, 920) & 0x80000000) != 0)
  {
    return 2342526984;
  }

  v58 = 0;
  v53 = 0;
  __src = 0;
  *a5 = 1;
  v9 = (*(a1[1] + 104))(a3, a4, 1, 0, &v53);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (((*(a1[1] + 184))(a3, a4, v53, 0, &v48) & 0x80000000) == 0 && v48 == 1)
  {
    v9 = (*(a1[1] + 176))(a3, a4, v53, 0, &v58, &v52);
    if ((v9 & 0x80000000) != 0)
    {
LABEL_23:
      if (v57)
      {
        heap_Free(*(*a1 + 8), v57);
      }

      v57 = 0;
      if (v49)
      {
        heap_Free(*(*a1 + 8), v49);
      }

      return v9;
    }

    if (v52 < 2u)
    {
      return v9;
    }

    v10 = (*(a1[1] + 176))(a3, a4, v53, 1, &__src, &v52);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = v52;
      HIWORD(v48) = v52;
      v12 = *(*a1 + 8);
      v13 = cstdlib_strlen(v58);
      v14 = heap_Alloc(v12, (v13 + 1));
      v57 = v14;
      if (v14)
      {
        v19 = v14;
        cstdlib_strcpy(v14, v58);
        v20 = 32 * v11;
        v21 = heap_Calloc(*(*a1 + 8), 1, v20);
        v49 = v21;
        if (v21)
        {
          cstdlib_memcpy(v21, __src, v20);
          v10 = (*(a1[114] + 96))(a1[112], a1[113], "fecfg", "mdesegpos_morpheme_processing", &v56, &v54, &v55);
          if ((v10 & 0x80000000) == 0)
          {
            v26 = 0;
            if (v54 == 1 && v56)
            {
              v26 = **v56 == 49;
            }

            v10 = (*(a1[3] + 104))(a1[4], a1[5], &v57, &v49, &v48 + 2, a3, a4, &v47, v26);
            if ((v10 & 0x80000000) == 0)
            {
              if (!v57 || (v27 = *(a1[1] + 160), v28 = v53, v29 = cstdlib_strlen(v57), v10 = v27(a3, a4, v28, 0, (v29 + 1), v57, &v51), (v10 & 0x80000000) == 0))
              {
                if (!v49 || !HIWORD(v48) || (v49[4] += v47, v10 = (*(a1[1] + 160))(a3, a4, v53, 1), (v10 & 0x80000000) == 0))
                {
                  v10 = (*(a1[6] + 112))(a1[7], a1[8], &v46, 0);
                  if ((v10 & 0x80000000) == 0)
                  {
                    v46 += v47;
                    v10 = (*(a1[6] + 104))(a1[7], a1[8]);
                  }
                }
              }
            }
          }

          goto LABEL_22;
        }

        log_OutPublic(*(*a1 + 32), "FE_PROMPT", 45200, 0, v22, v23, v24, v25, v45);
        heap_Free(*(*a1 + 8), v19);
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "FE_PROMPT", 45200, 0, v15, v16, v17, v18, v45);
      }

      return 2342526986;
    }

LABEL_22:
    v9 = v10;
    goto LABEL_23;
  }

  if (log_HasTraceTuningDataSubscriber(*(*a1 + 32)) && ((*(a1[1] + 184))(a3, a4, v53, 1, &v48) & 0x80000000) == 0 && v48 == 1 && ((*(a1[1] + 176))(a3, a4, v53, 1, &__src, &v52) & 0x80000000) == 0)
  {
    log_OutTraceTuningData(*(*a1 + 32), 270, "%s%s", v30, v31, v32, v33, v34, "BEG");
    v35 = *(*a1 + 32);
    v36 = cstdlib_strlen("");
    log_OutTraceTuningDataBinary(v35, 271, "", "text/plain;charset=depes", "", v36);
    log_OutTraceTuningDataBinary(*(*a1 + 32), 271, "", "application/x-realspeak-markers-pp;version=4.0", __src, 32 * v52);
    v37 = *(*a1 + 32);
    v38 = cstdlib_strlen("");
    log_OutTraceTuningDataBinary(v37, 272, "", "text/plain;charset=depes", "", v38);
    log_OutTraceTuningDataBinary(*(*a1 + 32), 272, "", "application/x-realspeak-markers-pp;version=4.0", __src, 32 * v52);
    log_OutTraceTuningData(*(*a1 + 32), 270, "%s%s %s%u", v39, v40, v41, v42, v43, "END");
  }

  return v9;
}

uint64_t fe_prompt_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62338, 920) & 0x80000000) != 0)
  {
    return 2342526984;
  }

  v3 = *(a1 + 16);

  return synstrmaux_CloseStreams((a1 + 72), v3);
}

uint64_t fe_prompt_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2342526977;
  }

  result = 0;
  *a2 = &IFePrompt;
  return result;
}

uint64_t fe_promptorth_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  if (!a5)
  {
    return 2343575559;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v22[6], "LINGDB", &v21);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v22[6], "DOMAINMNGR", &v20);
  v8 = v22[6];
  if ((Object & 0x80000000) != 0)
  {
    v17 = "LINGDB";
LABEL_12:
    objc_ReleaseObject(v8, v17);
    return Object;
  }

  Object = objc_GetObject(v8, "FE_DEPES", &v19);
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v22[6], "LINGDB");
    v8 = v22[6];
    v17 = "DOMAINMNGR";
    goto LABEL_12;
  }

  v9 = heap_Alloc(v22[1], 64);
  if (v9)
  {
    *v9 = v22;
    v14 = v20;
    v15 = *(v20 + 8);
    *(v9 + 8) = *(v21 + 8);
    *(v9 + 16) = v15;
    *(v9 + 24) = *(v14 + 16);
    v16 = v19;
    *(v9 + 40) = *(v19 + 8);
    *(v9 + 48) = *(v16 + 16);
    *a5 = v9;
    *(a5 + 8) = 62339;
  }

  else
  {
    log_OutPublic(v22[4], "FE_PROMPTORTH", 45000, 0, v10, v11, v12, v13, v19);
    objc_ReleaseObject(v22[6], "LINGDB");
    objc_ReleaseObject(v22[6], "DOMAINMNGR");
    objc_ReleaseObject(v22[6], "FE_DEPES");
    return 2343575562;
  }

  return Object;
}

uint64_t fe_promptorth_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62339, 64);
  if ((result & 0x80000000) != 0)
  {
    return 2343575560;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "DOMAINMNGR");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_promptorth_ObjReopen(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62339, 64);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2343575560;
  }
}

uint64_t fe_promptorth_ProcessStart(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v3 = a1[3];
  v4 = *(a1[2] + 56);
  v5 = a1[4];

  return v4(v3, v5);
}

uint64_t fe_promptorth_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  __s1 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  __s = 0;
  v41 = 0;
  __src = 0;
  *a5 = 1;
  v9 = (*(a1[1] + 104))(a3, a4, 1, 0, &v41);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v10 = (*(a1[1] + 184))(a3, a4, v41, 0, &v36);
  v11 = a1[1];
  if (v10 < 0 || v36 != 1)
  {
    v12 = (*(v11 + 184))(a3, a4, v41, 1, &v36);
  }

  else
  {
    v9 = (*(v11 + 176))(a3, a4, v41, 0, &__s, &v40);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    if (v40 > 1u)
    {
      goto LABEL_13;
    }

    v12 = (*(a1[1] + 184))(a3, a4, v41, 1, &v36);
  }

  if (v12 < 0 || v36 != 1)
  {
    return v9;
  }

  __s = "";
LABEL_13:
  v13 = (*(a1[1] + 176))(a3, a4, v41, 1, &__src, &v40);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v40;
    HIWORD(v36) = v40;
    v15 = *(*a1 + 8);
    v16 = cstdlib_strlen(__s);
    v17 = heap_Alloc(v15, (v16 + 1));
    __s1 = v17;
    if (v17)
    {
      v22 = v17;
      cstdlib_strcpy(v17, __s);
      v23 = 32 * v14;
      v24 = heap_Calloc(*(*a1 + 8), 1, v23);
      v37 = v24;
      if (v24)
      {
        cstdlib_memcpy(v24, __src, v23);
        v13 = (*(a1[2] + 120))(a1[3], a1[4], &__s1, &v37, &v36 + 2, a3, a4, &v35);
        if ((v13 & 0x80000000) == 0)
        {
          if (!__s1 || !cstdlib_strcmp(__s1, "") || (v29 = *(a1[1] + 160), v30 = v41, v31 = cstdlib_strlen(__s1), v13 = v29(a3, a4, v30, 0, (v31 + 1), __s1, &v39), (v13 & 0x80000000) == 0))
          {
            if (!v37 || !HIWORD(v36) || (v37[4] += v35, v13 = (*(a1[1] + 160))(a3, a4, v41, 1), (v13 & 0x80000000) == 0))
            {
              v13 = (*(a1[5] + 112))(a1[6], a1[7], &v34, 0);
              if ((v13 & 0x80000000) == 0)
              {
                v34 += v35;
                v13 = (*(a1[5] + 104))(a1[6], a1[7]);
              }
            }
          }
        }

        goto LABEL_25;
      }

      log_OutPublic(*(*a1 + 32), "FE_PROMPTORTH", 45000, 0, v25, v26, v27, v28, v33);
      heap_Free(*(*a1 + 8), v22);
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_PROMPTORTH", 45000, 0, v18, v19, v20, v21, v33);
    }

    return 2343575562;
  }

LABEL_25:
  v9 = v13;
LABEL_26:
  if (__s1)
  {
    heap_Free(*(*a1 + 8), __s1);
  }

  __s1 = 0;
  if (v37)
  {
    heap_Free(*(*a1 + 8), v37);
  }

  return v9;
}

uint64_t fe_promptorth_ProcessEnd(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v3 = a1[3];
  v4 = *(a1[2] + 64);
  v5 = a1[4];

  return v4(v3, v5);
}

uint64_t fe_promptorth_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2343575553;
  }

  result = 0;
  *a2 = &IFePromptorth;
  return result;
}

uint64_t fe_promptorth_ResourceTypes(void *a1, int a2, uint64_t a3)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v5 = a1[3];
  v6 = *(a1[2] + 144);
  v7 = a1[4];

  return v6(v5, v7, a3);
}

uint64_t fe_promptorth_ResourceLoad(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v13 = a1[3];
  v14 = *(a1[2] + 152);
  v15 = a1[4];

  return v14(v13, v15, a3, a4, a5, a6, a7);
}

uint64_t fe_promptorth_ResourceUnload(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v7 = a1[3];
  v8 = *(a1[2] + 160);
  v9 = a1[4];

  return v8(v7, v9, a3, a4);
}

uint64_t fe_promptorth_ResourceEnable(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v7 = a1[3];
  v8 = *(a1[2] + 168);
  v9 = a1[4];

  return v8(v7, v9, a3, a4);
}

uint64_t fe_promptorth_ResourceDisable(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  v7 = a1[3];
  v8 = *(a1[2] + 176);
  v9 = a1[4];

  return v8(v7, v9, a3, a4);
}

uint64_t fe_promptoriorth_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v5 = 2357207047;
  v20 = 0;
  v21 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v23);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v8 = heap_Calloc(*(v23 + 8), 1, 952);
    v13 = v23;
    if (!v8)
    {
      log_OutPublic(*(v23 + 32), "FE_PROMPTORIORTH", 57000, 0, v9, v10, v11, v12, v20);
      return 2357207050;
    }

    v14 = v8;
    *v8 = v23;
    Object = objc_GetObject(*(v13 + 48), "SYNTHSTREAM", &v22);
    if ((Object & 0x80000000) != 0 || (Object = objc_GetObject(*(v23 + 48), "DOMAINMNGR", &v21), (Object & 0x80000000) != 0))
    {
      v5 = Object;
    }

    else
    {
      v5 = objc_GetObject(*(v23 + 48), "FE_DEPES", &v20);
      if ((v5 & 0x80000000) == 0)
      {
        v16 = v21;
        v17 = *(v21 + 8);
        v14[1] = *(v22 + 8);
        v14[2] = v17;
        *(v14 + 3) = *(v16 + 16);
        v18 = v20;
        v14[7] = *(v20 + 8);
        *(v14 + 5) = *(v18 + 16);
        *a5 = v14;
        *(a5 + 8) = 62500;
        return v5;
      }
    }

    *a5 = v14;
    *(a5 + 8) = 62500;
    fe_promptoriorth_ObjClose(v14, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  return v5;
}

uint64_t fe_promptoriorth_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62500, 952);
  if ((result & 0x80000000) != 0)
  {
    return 2357207048;
  }

  if (a1)
  {
    if (a1[1])
    {
      objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    }

    if (a1[2])
    {
      objc_ReleaseObject(*(*a1 + 48), "DOMAINMNGR");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_promptoriorth_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62500, 952) & 0x80000000) != 0)
  {
    return 2357207048;
  }

  synstrmaux_InitStreamOpener(a1 + 64, *(*a1 + 32), "FE_PROMPTORIORTH");
  synstrmaux_RegisterInStream((a1 + 64), "text/plain;charset=utf-8", 0, a1 + 888);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 904);
  synstrmaux_RegisterOutStream((a1 + 64), "text/plain;charset=utf-8", a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", a1 + 936);
  v7 = synstrmaux_OpenStreams((a1 + 64), *(a1 + 8), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 64), *(a1 + 8));
  }

  return v7;
}

uint64_t fe_promptoriorth_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v33 = 0;
  v7 = 2357207050;
  v32 = 0;
  __src = 0;
  memset(__n, 0, sizeof(__n));
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0;
  if ((safeh_HandleCheck(a1, a2, 62500, 952) & 0x80000000) != 0)
  {
    return 2357207048;
  }

  *a5 = 1;
  result = (*(*(a1 + 8) + 144))(*(a1 + 888), *(a1 + 896), &v33 + 4, &v32);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 8) + 144))(*(a1 + 904), *(a1 + 912), &v33, &v32);
    if ((result & 0x80000000) == 0)
    {
      if (!v33)
      {
        if (v32 == 1)
        {
          return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 8));
        }

        *a5 = 0;
        return result;
      }

      v9 = (*(*(a1 + 8) + 88))(*(a1 + 888), *(a1 + 896), &__src, __n);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }

      v10 = heap_Alloc(*(*a1 + 8), (__n[0] + 1));
      *&__n[1] = v10;
      if (v10)
      {
        v15 = v10;
        if (__src)
        {
          cstdlib_memcpy(v10, __src, __n[0]);
        }

        v15[__n[0]] = 0;
        v9 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &v29, &v27 + 4);
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        v16 = HIDWORD(v27);
        LODWORD(v27) = HIDWORD(v27) >> 5;
        HIDWORD(v27) >>= 5;
        v17 = heap_Calloc(*(*a1 + 8), 1, v16 & 0xFFFFFFE0);
        v28 = v17;
        if (v17)
        {
          cstdlib_memcpy(v17, v29, 32 * HIDWORD(v27));
          v9 = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), &v26, 0);
          if ((v9 & 0x80000000) == 0)
          {
            v9 = (*(*(a1 + 16) + 112))(*(a1 + 24), *(a1 + 32), &__n[1], &v28, &v27);
            if ((v9 & 0x80000000) == 0)
            {
              v18 = v28[4];
              v19 = cstdlib_strlen(*&__n[1]);
              v28[4] = v18 + v19 - __n[0] + 1;
              if (!cstdlib_strlen(*&__n[1]) || (v20 = *(*(a1 + 8) + 104), v21 = *&__n[1], v22 = cstdlib_strlen(*&__n[1]), v9 = v20(*(a1 + 920), *(a1 + 928), v21, (v22 + 1)), (v9 & 0x80000000) == 0))
              {
                v9 = (*(*(a1 + 8) + 96))(*(a1 + 888), *(a1 + 896), __n[0]);
                if ((v9 & 0x80000000) == 0)
                {
                  v9 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), v28, (32 * v27));
                  if ((v9 & 0x80000000) == 0)
                  {
                    v9 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), (32 * HIDWORD(v27)));
                    if ((v9 & 0x80000000) == 0)
                    {
                      v23 = v26;
                      v24 = cstdlib_strlen(*&__n[1]);
                      v26 = v23 + v24 - __n[0] + 1;
                      v9 = (*(*(a1 + 56) + 104))(*(a1 + 40), *(a1 + 48));
                    }
                  }
                }
              }
            }
          }

LABEL_22:
          v7 = v9;
LABEL_25:
          if (*&__n[1])
          {
            heap_Free(*(*a1 + 8), *&__n[1]);
          }

          if (v28)
          {
            heap_Free(*(*a1 + 8), v28);
          }

          return v7;
        }
      }

      log_OutPublic(*(*a1 + 32), "FE_PROMPTORIORTH", 57000, 0, v11, v12, v13, v14, v25);
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t fe_promptoriorth_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62500, 952) & 0x80000000) != 0)
  {
    return 2357207048;
  }

  v3 = *(a1 + 8);

  return synstrmaux_CloseStreams((a1 + 64), v3);
}

uint64_t fe_promptoriorth_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2357207041;
  }

  result = 0;
  *a2 = &IFePromptoriorth;
  return result;
}

uint64_t fe_voice_switch_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v38 = 0;
  v39 = 0;
  v5 = 2372935687;
  __s = 0;
  v37 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v39);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v8 = heap_Calloc(*(v39 + 8), 1, 1048);
      v13 = v39;
      if (v8)
      {
        v14 = v8;
        *v8 = v39;
        Object = objc_GetObject(*(v13 + 48), "SYNTHSTREAM", &v38);
        if ((Object & 0x80000000) != 0)
        {
          v5 = Object;
LABEL_41:
          *a5 = 0;
          *(a5 + 8) = 0;
          return v5;
        }

        v14[1] = *(v38 + 8);
        if ((objc_GetObject(*(v39 + 48), "COMPQUERY", &v38) & 0x80000000) != 0)
        {
          v14[4] = 0;
          v14[2] = safeh_GetNullHandle();
          v14[3] = v17;
        }

        else
        {
          v16 = v38;
          v14[4] = *(v38 + 8);
          *(v14 + 1) = *(v16 + 16);
        }

        if ((paramc_ParamGetStr(*(v39 + 40), "mlset", &__s) & 0x80000000) != 0)
        {
          Str = paramc_ParamGetStr(*(v39 + 40), "langcode", &__s);
          if ((Str & 0x80000000) != 0)
          {
            goto LABEL_40;
          }
        }

        v23 = __s;
        v14[130] = __s;
        if (cstdlib_strlen(v23) >= 1)
        {
          v24 = 0;
          do
          {
            *(v14[130] + v24) = cstdlib_tolower(*(v14[130] + v24));
            ++v24;
          }

          while (cstdlib_strlen(v14[130]) > v24);
        }

        *(v14 + 233) = 0;
        if ((paramc_ParamGetStr(*(v39 + 40), "lidvoiceswitch", &v37) & 0x80000000) == 0)
        {
          if (LH_stricmp(v37, "yes"))
          {
            if (LH_stricmp(v37, "no"))
            {
              goto LABEL_22;
            }

            v25 = 1;
          }

          else
          {
            v25 = 0;
          }

          *(v14 + 233) = v25;
        }

LABEL_22:
        v26 = *(v39 + 40);
        v34 = v14;
        v33 = xmmword_287EF0018;
        v35 = xmmword_287EF0018;
        Str = paramc_ListenerAdd(v26, "lidvoiceswitch", &v34);
        if ((Str & 0x80000000) == 0)
        {
          *(v14 + 232) = 0;
          if ((paramc_ParamGetStr(*(v39 + 40), "lidscope", &v37) & 0x80000000) == 0)
          {
            if (LH_stricmp(v37, "none"))
            {
              if (LH_stricmp(v37, "user-defined"))
              {
                if (LH_stricmp(v37, "message"))
                {
                  goto LABEL_38;
                }

                v27 = 2;
              }

              else
              {
                v27 = 1;
              }
            }

            else
            {
              v27 = 0;
            }

            *(v14 + 232) = v27;
LABEL_38:
            v31 = *(v39 + 40);
            v34 = v14;
            v35 = v33;
            Str = paramc_ListenerAdd(v31, "lidscope", &v34);
            if ((Str & 0x80000000) == 0)
            {
              v5 = 0;
              *a5 = v14;
              *(a5 + 8) = 62466;
              return v5;
            }

            goto LABEL_40;
          }

          v28 = *(v14 + 232);
          v29 = "message";
          if (v28 == 1)
          {
            v29 = "user-defined";
          }

          if (v28)
          {
            v30 = v29;
          }

          else
          {
            v30 = "none";
          }

          Str = paramc_ParamSetStr(*(v39 + 40), "lidscope", v30);
          if ((Str & 0x80000000) == 0)
          {
            goto LABEL_38;
          }
        }

LABEL_40:
        v5 = Str;
        log_OutPublic(*(*v14 + 32), "FE_LID", 48000, 0, v19, v20, v21, v22, v33);
        goto LABEL_41;
      }

      log_OutPublic(*(v39 + 32), "FE_LID", 48000, 0, v9, v10, v11, v12, v33);
      return 2372935690;
    }
  }

  return v5;
}

uint64_t fe_lid_ParamCheckChange_0(int a1, char *__s1, char *a3, _BOOL4 *a4)
{
  if (cstdlib_strcmp(__s1, "lidscope"))
  {
    result = cstdlib_strcmp(__s1, "lidmode");
    if (!result)
    {
LABEL_13:
      v10 = 1;
      goto LABEL_14;
    }

    if (cstdlib_strcmp(__s1, "lidvoiceswitch"))
    {
      result = 0;
      goto LABEL_13;
    }

    result = LH_stricmp(a3, "yes");
    if (!result)
    {
      goto LABEL_13;
    }

    v8 = "no";
  }

  else
  {
    result = LH_stricmp(a3, "none");
    if (!result)
    {
      goto LABEL_13;
    }

    result = LH_stricmp(a3, "user-defined");
    if (!result)
    {
      goto LABEL_13;
    }

    v8 = "message";
  }

  v9 = LH_stricmp(a3, v8);
  v10 = v9 == 0;
  if (v9)
  {
    result = 2372935695;
  }

  else
  {
    result = 0;
  }

LABEL_14:
  *a4 = v10;
  return result;
}

uint64_t fe_lid_ParamLearnChange_0(uint64_t a1, char *__s1, char *a3)
{
  if (cstdlib_strcmp(__s1, "lidscope"))
  {
    result = cstdlib_strcmp(__s1, "lidmode");
    if (!result)
    {
      return result;
    }

    if (cstdlib_strcmp(__s1, "lidvoiceswitch"))
    {
      return 0;
    }

    result = LH_stricmp(a3, "yes");
    if (result)
    {
      result = LH_stricmp(a3, "no");
      if (result)
      {
        return 2372935695;
      }

      *(a1 + 932) = 1;
    }

    else
    {
      *(a1 + 932) = 0;
    }
  }

  else
  {
    result = LH_stricmp(a3, "none");
    if (result)
    {
      result = LH_stricmp(a3, "user-defined");
      if (result)
      {
        result = LH_stricmp(a3, "message");
        if (result)
        {
          return 2372935695;
        }

        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      *(a1 + 928) = v7;
    }

    else
    {
      *(a1 + 928) = 0;
    }
  }

  return result;
}

uint64_t fe_voice_switch_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62466, 1048);
  if ((result & 0x80000000) != 0)
  {
    return 2372935688;
  }

  if (a1)
  {
    hlp_TrackStartMsgMarkers(a1, 1, 0, 0);
    if (a1[1])
    {
      objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    }

    if (a1[4])
    {
      objc_ReleaseObject(*(*a1 + 48), "COMPQUERY");
    }

    v4 = *(*a1 + 40);
    v8 = a1;
    v7 = xmmword_287EF0018;
    v9 = xmmword_287EF0018;
    paramc_ListenerRemove(v4, "lidscope", &v8);
    v5 = *(*a1 + 40);
    v8 = a1;
    v9 = v7;
    paramc_ListenerRemove(v5, "lidmode", &v8);
    v6 = *(*a1 + 40);
    v8 = a1;
    v9 = v7;
    paramc_ListenerRemove(v6, "lidvoiceswitch", &v8);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t hlp_TrackStartMsgMarkers(uint64_t a1, int a2, int *a3, unsigned int a4)
{
  if (a2)
  {
    if (*(a1 + 1000) == 21)
    {
      v7 = *(a1 + 1024);
      if (v7)
      {
        heap_Free(*(*a1 + 8), v7);
      }
    }

    cstdlib_memset((a1 + 936), 0, 0x60uLL);
  }

  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 928) != 1 || a4 == 0)
  {
    return 0;
  }

  v9 = a4;
  while (1)
  {
    v10 = *a3;
    if (*a3 == 31)
    {
      v21 = *(a3 + 1);
      *(a1 + 968) = *a3;
      *(a1 + 984) = v21;
      goto LABEL_23;
    }

    if (v10 != 21)
    {
      if (v10 == 7)
      {
        v11 = *(a3 + 1);
        *(a1 + 936) = *a3;
        *(a1 + 952) = v11;
      }

      goto LABEL_23;
    }

    v12 = *(a1 + 1024);
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
    }

    if (!cstdlib_strcmp(*(a3 + 3), "normal"))
    {
      cstdlib_memset((a1 + 1000), 0, 0x20uLL);
      goto LABEL_23;
    }

    v13 = *(a3 + 1);
    *(a1 + 1000) = *a3;
    *(a1 + 1016) = v13;
    v14 = *(*a1 + 8);
    v15 = cstdlib_strlen(*(a3 + 3));
    v16 = heap_Alloc(v14, (v15 + 1));
    *(a1 + 1024) = v16;
    if (!v16)
    {
      break;
    }

    cstdlib_strcpy(v16, *(a3 + 3));
LABEL_23:
    a3 += 8;
    if (!--v9)
    {
      return 0;
    }
  }

  log_OutPublic(*(*a1 + 32), "FE_LID", 48000, 0, v17, v18, v19, v20, v23);
  return 2372935690;
}

uint64_t fe_voice_switch_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v11 = 0;
  v7 = safeh_HandleCheck(a1, a2, 62466, 1048);
  if ((v7 & 0x80000000) != 0)
  {
    return 2372935688;
  }

  v8 = v7;
  synstrmaux_InitStreamOpener(a1 + 40, *(*a1 + 32), "FE_LID");
  if (*(a1 + 928))
  {
    synstrmaux_RegisterInStream((a1 + 40), "text/plain;charset=utf-8", 0, a1 + 864);
    synstrmaux_RegisterInStream((a1 + 40), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 880);
    synstrmaux_RegisterOutStream((a1 + 40), "text/plain;charset=utf-8", a1 + 896);
    synstrmaux_RegisterOutStream((a1 + 40), "application/x-realspeak-markers-pp;version=4.0", a1 + 912);
    v8 = synstrmaux_OpenStreams((a1 + 40), *(a1 + 8), a3, a4);
    if ((v8 & 0x80000000) != 0)
    {
      synstrmaux_CloseStreams((a1 + 40), *(a1 + 8));
    }

    else
    {
      if (((paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &v11) & 0x80000000) != 0 || !v11 || !*v11) && (paramc_ParamGetStr(*(*a1 + 40), "voice", &v11) & 0x80000000) == 0 && v11 && *v11)
      {
        paramc_ParamSetStr(*(*a1 + 40), "lidoriginalvoice", v11);
      }

      if ((paramc_ParamGetStr(*(*a1 + 40), "lidstate", &v10) & 0x80000000) == 0 && v10 && *v10)
      {
        *(a1 + 1032) = 1;
      }

      else
      {
        *(a1 + 1032) = 0;
        if ((paramc_ParamGetStr(*(*a1 + 40), "voice", &v11) & 0x80000000) == 0 && v11 && *v11)
        {
          paramc_ParamSetStr(*(*a1 + 40), "lidoriginalvoice", v11);
        }
      }
    }
  }

  return v8;
}

uint64_t fe_voice_switch_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v69 = *MEMORY[0x277D85DE8];
  memset(v67, 0, sizeof(v67));
  v66 = 0;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v61 = 0;
  __src = 0;
  v60 = 0;
  __s1 = 0;
  bzero(__dst, 0x400uLL);
  v8 = safeh_HandleCheck(a1, a2, 62466, 1048);
  if ((v8 & 0x80000000) != 0)
  {
    return 2372935688;
  }

  BestVoiceForLidLang = v8;
  *a5 = 1;
  v10 = *(a1 + 864);
  if (v10)
  {
    Object = (*(*(a1 + 8) + 144))(v10, *(a1 + 872), &v67[8], v67);
    if ((Object & 0x80000000) != 0)
    {
      return Object;
    }

    BestVoiceForLidLang = (*(*(a1 + 8) + 144))(*(a1 + 880), *(a1 + 888), &v67[4], v67);
    if ((BestVoiceForLidLang & 0x80000000) != 0)
    {
      return BestVoiceForLidLang;
    }

    if (!*&v67[8])
    {
      v13 = *v67;
      if (!*v67)
      {
        *a5 = 0;
        return BestVoiceForLidLang;
      }

      if (*&v67[4])
      {
        InputOutputMarkers_0 = hlp_GetInputOutputMarkers_0(a1, &v64, &v63, &v62 + 1, &v62);
        if ((InputOutputMarkers_0 & 0x80000000) != 0)
        {
LABEL_149:
          BestVoiceForLidLang = InputOutputMarkers_0;
          goto LABEL_150;
        }

        BestVoiceForLidLang = (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), (32 * v62));
        v63 = 0;
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          return BestVoiceForLidLang;
        }

        if (HIDWORD(v62))
        {
          BestVoiceForLidLang = (*(*(a1 + 8) + 96))(*(a1 + 880), *(a1 + 888), (32 * HIDWORD(v62)));
          if ((BestVoiceForLidLang & 0x80000000) != 0)
          {
            goto LABEL_150;
          }
        }

        v13 = *v67;
      }

      if (!v13)
      {
        return BestVoiceForLidLang;
      }

      return synstrmaux_CloseOutStreamsOnly((a1 + 40), *(a1 + 8));
    }

    Object = (*(*(a1 + 8) + 88))(*(a1 + 864), *(a1 + 872), &v66, &v65);
    if ((Object & 0x80000000) != 0)
    {
      return Object;
    }

    v12 = v65;
    BestVoiceForLidLang = hlp_GetInputOutputMarkers_0(a1, &v64, &v63, &v62 + 1, &v62);
    if ((BestVoiceForLidLang & 0x80000000) != 0)
    {
      goto LABEL_150;
    }

    if (*v63 == 0x4000)
    {
      v61 = *(v63 + 3);
    }

    else
    {
      (*(*(a1 + 8) + 136))(*(a1 + 864), *(a1 + 872), &v61);
    }

    v15 = v62;
    if (v62 >= 2)
    {
      v16 = 1;
      v17 = v63;
      do
      {
        v18 = &v17[32 * v16];
        if (*v18 == 36 && *(v18 - 8) == 36 && *(v18 + 3) == *(v18 - 5))
        {
          *(v18 - 8) = 0x4000;
        }

        ++v16;
      }

      while (v15 > v16);
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "lidstate", &__s1) & 0x80000000) == 0 && __s1 && *__s1)
    {
      v19 = cstdlib_strcmp(__s1, "__NUAN_LID_voiceswitch");
      v20 = *(*a1 + 40);
      if (v19)
      {
        v21 = __s1;
LABEL_102:
        v45 = paramc_ParamSetStr(v20, "pipelineswitchvoice", v21);
        if ((v45 & 0x80000000) != 0)
        {
LABEL_124:
          BestVoiceForLidLang = v45;
        }

        else
        {
          BestVoiceForLidLang = paramc_ParamSetStr(*(*a1 + 40), "lidstate", "__NUAN_LID_voiceswitch");
          if ((BestVoiceForLidLang & 0x80000000) == 0)
          {
            *a5 = 3;
            v65 = 0;
            HIDWORD(v62) = 0;
            goto LABEL_150;
          }
        }

LABEL_125:
        log_OutPublic(*(*a1 + 32), "FE_LID", 48000, 0, v35, v36, v37, v38, v57);
LABEL_150:
        if (v63)
        {
          (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), 0);
        }

        return BestVoiceForLidLang;
      }

      BestVoiceForLidLang = paramc_ParamRemove(v20, "lidstate");
      if ((BestVoiceForLidLang & 0x80000000) != 0)
      {
        goto LABEL_150;
      }

      if (*(a1 + 928) == 1 && v15)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        while (1)
        {
          v43 = v42;
          v44 = v63 + 32 * v42;
          if (*v44 == 36)
          {
            if (v41)
            {
              if (!cstdlib_strncmp((*(v44 + 3) + 3), "_lid", 3uLL) || !cstdlib_strncmp((*(v63 + 4 * v43 + 3) + 3), "_vli", 3uLL) || !cstdlib_strcmp(*(v63 + 4 * v43 + 3), "normal"))
              {
                v12 = (*(v63 + 8 * v43 + 3) - v61);
                v65 = *(v63 + 8 * v43 + 3) - v61;
                LODWORD(v62) = v40;
                *a5 = 2;
                v15 = v40;
                goto LABEL_112;
              }
            }

            else if (cstdlib_strncmp((*(v44 + 3) + 3), "_lid", 3uLL))
            {
              v41 = cstdlib_strncmp((*(v63 + 4 * v43 + 3) + 3), "_vli", 3uLL) == 0;
            }

            else
            {
              v41 = 1;
            }

            ++v41;
          }

          v42 = v43 + 1;
          v40 = (v43 + 1);
          if (v15 <= v40)
          {
            goto LABEL_112;
          }
        }
      }

      goto LABEL_112;
    }

    if (*(a1 + 928) == 2)
    {
      if (v15)
      {
        v22 = 0;
        while (*(v63 + 8 * v22) != 36)
        {
          if (v15 <= ++v22)
          {
            goto LABEL_100;
          }
        }

        BestVoiceForLidLang = hlp_FindBestVoiceForLidLang(a1, *(a1 + 932) == 0, *(v63 + 4 * v22 + 3), __dst);
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          goto LABEL_150;
        }
      }

LABEL_100:
      if (!cstdlib_strcmp(__dst, ""))
      {
        goto LABEL_112;
      }

      v20 = *(*a1 + 40);
      v21 = __dst;
      goto LABEL_102;
    }

    if (!v15)
    {
LABEL_111:
      LODWORD(v62) = v15;
LABEL_112:
      if (!v12)
      {
        goto LABEL_115;
      }

      v57 = 0;
      Object = objc_GetObject(*(*a1 + 48), "CHARCOUNT", &v57);
      if ((Object & 0x80000000) == 0)
      {
        (*(v57[1] + 72))(v57[2], v57[3], v66, v12);
        objc_ReleaseObject(*(*a1 + 48), "CHARCOUNT");
        BestVoiceForLidLang = (*(*(a1 + 8) + 104))(*(a1 + 896), *(a1 + 904), v66, v12);
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          goto LABEL_150;
        }

LABEL_115:
        if (!v15)
        {
          v50 = 0;
LABEL_141:
          if (v65)
          {
            BestVoiceForLidLang = (*(*(a1 + 8) + 96))(*(a1 + 864), *(a1 + 872));
            if ((BestVoiceForLidLang & 0x80000000) != 0)
            {
              goto LABEL_150;
            }
          }

          v53 = HIDWORD(v62);
          if (!HIDWORD(v62))
          {
            goto LABEL_150;
          }

          if (*a5 == 2)
          {
            v54 = v50 == 0;
            v55 = v64;
            v56 = a1;
          }

          else
          {
            v56 = a1;
            v54 = 1;
            v55 = 0;
            v53 = 0;
          }

          BestVoiceForLidLang = hlp_TrackStartMsgMarkers(v56, v54, v55, v53);
          if ((BestVoiceForLidLang & 0x80000000) != 0)
          {
            goto LABEL_150;
          }

          InputOutputMarkers_0 = (*(*(a1 + 8) + 96))(*(a1 + 880), *(a1 + 888), (32 * HIDWORD(v62)));
          goto LABEL_149;
        }

        if (*a5 == 2)
        {
          if (*(v63 + 3) - v61 >= v12)
          {
            v48 = 0;
          }

          else
          {
            v47 = 0;
            do
            {
              v48 = ++v47;
            }

            while (v15 > v47 && *(v63 + 8 * v47 + 3) - v61 < v12);
          }

          LODWORD(v62) = v48;
          if (HIDWORD(v62) && v64[3] - v61 < v65)
          {
            v51 = 0;
            do
            {
              v52 = ++v51;
            }

            while (HIDWORD(v62) > v51 && v64[8 * v51 + 3] - v61 < v65);
          }

          else
          {
            v52 = 0;
          }

          HIDWORD(v62) = v52;
          if (!v48)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v48 = v15;
        }

        if (*v63 == 0x4000)
        {
          v50 = 0;
          *(v63 + 4) = v12;
          goto LABEL_140;
        }

LABEL_139:
        hlp_AddStartMsgMarkers(a1, v63, &v62, v12);
        v50 = 1;
        v48 = v62;
LABEL_140:
        BestVoiceForLidLang = (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), 32 * v48);
        v63 = 0;
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          return BestVoiceForLidLang;
        }

        goto LABEL_141;
      }

      return Object;
    }

    v23 = 0;
    while (1)
    {
      if (*a5 != 1)
      {
        goto LABEL_111;
      }

      v24 = (v63 + 32 * v23);
      if (*v24 == 36)
      {
        if (cstdlib_strcmp(v24[3], "normal"))
        {
          if (*(v63 + 8 * v23) == 36 && cstdlib_strcmp(*(v63 + 4 * v23 + 3), "unknown") && cstdlib_strncmp(*(v63 + 4 * v23 + 3), "vceunkn", 7uLL) && cstdlib_strcmp(*(v63 + 4 * v23 + 3), "normal"))
          {
            v25 = v63 + 32 * v23;
            v26 = *(v25 + 3);
            v27 = v12 - v26 + v61;
            v28 = v23;
            while (v15 > ++v28)
            {
              v29 = *(v63 + 8 * v28);
              if (v29 == 36 || v29 == 7)
              {
                v27 = *(v63 + 8 * v28 + 3) - v26;
                break;
              }
            }

            if (v27)
            {
              v31 = *(a1 + 932);
              v32 = *(v25 + 3);
              if (v32 && cstdlib_strstr(*(v25 + 3), "_vli"))
              {
                v31 = 0;
              }

              BestVoiceForLidLang = hlp_FindBestVoiceForLidLang(a1, v31 == 0, v32, __dst);
              if ((BestVoiceForLidLang & 0x80000000) != 0)
              {
                goto LABEL_150;
              }

              if (!v31 && !cstdlib_strcmp(__dst, "") && (paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &__src) & 0x80000000) == 0 && __src && *__src)
              {
                cstdlib_strcpy(__dst, __src);
              }

              if (cstdlib_strcmp(__dst, ""))
              {
                v33 = *(*a1 + 40);
                if (*(v63 + 8 * v23 + 3) == v61)
                {
                  v45 = paramc_ParamSetStr(v33, "pipelineswitchvoice", __dst);
                  if ((v45 & 0x80000000) != 0)
                  {
                    goto LABEL_124;
                  }

                  v33 = *(*a1 + 40);
                  v46 = "lidstate";
                  v34 = "__NUAN_LID_voiceswitch";
                  goto LABEL_109;
                }

                v34 = __dst;
LABEL_75:
                BestVoiceForLidLang = paramc_ParamSetStr(v33, "lidstate", v34);
                if ((BestVoiceForLidLang & 0x80000000) != 0)
                {
                  goto LABEL_125;
                }

                *a5 = 2;
                v39 = *(v63 + 8 * v23 + 3);
                v12 = (v39 - v61);
                v65 = v39 - v61;
              }
            }
          }
        }

        else if (*(a1 + 1032) && (paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &__src) & 0x80000000) == 0 && __src && *__src && ((paramc_ParamGetStr(*(*a1 + 40), "voice", &v60) & 0x80000000) != 0 || !v60 || LH_stricmp(v60, __src)))
        {
          v33 = *(*a1 + 40);
          v34 = __src;
          if (*(v63 + 8 * v23 + 3) == v61)
          {
            v46 = "pipelineswitchvoice";
LABEL_109:
            BestVoiceForLidLang = paramc_ParamSetStr(v33, v46, v34);
            if ((BestVoiceForLidLang & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

            v15 = 0;
            v12 = 0;
            *a5 = 3;
            v65 = 0;
            HIDWORD(v62) = 0;
            goto LABEL_111;
          }

          goto LABEL_75;
        }
      }

      if (v15 <= ++v23)
      {
        goto LABEL_111;
      }
    }
  }

  return BestVoiceForLidLang;
}

uint64_t hlp_GetInputOutputMarkers_0(void *a1, const void **a2, void **a3, int *a4, int *a5)
{
  *a5 = 0;
  *a4 = 0;
  v10 = (*(a1[1] + 88))(a1[110], a1[111], a2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = *a4;
  *a4 = *a4 >> 5;
  v12 = (*(a1[1] + 112))(a1[114], a1[115], a3, (v11 & 0xFFFFFFE0) + 64);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = *a4;
    if (v13)
    {
      cstdlib_memcpy(*a3, *a2, 32 * v13);
      *a5 = *a4;
    }
  }

  return v12;
}

uint64_t hlp_FindBestVoiceForLidLang(void *a1, int a2, char *a3, char *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = 0;
  memset(__b, 0, sizeof(__b));
  __src = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &__src);
  if ((Str & 0x80000000) != 0)
  {
    __src = 0;
  }

  cstdlib_memset(__b, 0, 0x154uLL);
  if (a3)
  {
    v9 = cstdlib_strstr(a3, "_vli");
    if (v9)
    {
      v10 = v9;
      v11 = cstdlib_strlen("_vli");
      VoiceParamExtract(&v10[v11], "gender", &__b[10] + 8);
      VoiceParamExtract(&v10[v11], "age", &__b[19] + 4);
      VoiceParamExtract(&v10[v11], "model", &__b[11] + 12);
    }

    v12 = 4;
    if (a3[2] == 120)
    {
      v12 = 20;
    }

    if (!a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 4;
    if (!a2)
    {
LABEL_23:
      cstdlib_strcpy(a4, "");
      return 0;
    }
  }

  if (!a1[4])
  {
    goto LABEL_23;
  }

  if (a3)
  {
    cstdlib_strncpy(&__b[v12], a3, 3uLL);
  }

  if (__src)
  {
    cstdlib_strcpy(&__b[8] + 8, __src);
  }

  if (((*(a1[4] + 136))(a1[2], a1[3], *(*a1 + 24), *(*a1 + 40), __b, a4, 1024) & 0x80000000) != 0)
  {
    result = Str;
    if ((Str & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_25;
  }

  v13 = cstdlib_strlen(a4);
  if (v13)
  {
    result = 0;
  }

  else
  {
    result = Str;
  }

  if ((Str & 0x80000000) == 0 && !v13)
  {
LABEL_25:
    cstdlib_strcpy(&__b[8] + 8, "");
    return (*(a1[4] + 136))(a1[2], a1[3], *(*a1 + 24), *(*a1 + 40), __b, a4, 1024);
  }

  return result;
}

uint64_t hlp_AddStartMsgMarkers(void *a1, char *__src, int *a3, int a4)
{
  v8 = *a3;
  if (v8)
  {
    cstdlib_memmove(__src + 32, __src, 32 * v8);
    v9 = *a3 + 1;
  }

  else
  {
    v9 = 1;
  }

  *a3 = v9;
  *__src = 0x4000;
  *(__src + 2) = 0;
  result = (*(a1[1] + 136))(a1[108], a1[109], __src + 12);
  *(__src + 4) = 2 * a4;
  return result;
}

uint64_t fe_voice_switch_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62466, 1048) & 0x80000000) != 0)
  {
    return 2372935688;
  }

  v3 = *(a1 + 8);

  return synstrmaux_CloseStreams((a1 + 40), v3);
}

uint64_t fe_voice_switch_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2372935681;
  }

  result = 0;
  *a2 = &IFeVoiceSwitch;
  return result;
}

size_t VoiceParamExtract(size_t result, const char *a2, char *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (result)
  {
    v5 = result;
    result = cstdlib_strlen(result);
    if (result <= 0x7F)
    {
      cstdlib_strcpy(__dst, v5);
      result = strhelper_SafeStrtok(__dst, "{}();,", &v12);
      if (result)
      {
        v6 = result;
        while (1)
        {
          v7 = cstdlib_strchr(v6, 58);
          if (v7)
          {
            v8 = v7;
            v9 = cstdlib_strlen(a2);
            result = cstdlib_strncmp(v6, a2, v9);
            if (!result)
            {
              break;
            }
          }

          result = strhelper_SafeStrtok(__dst, "{}();,", &v12);
          v6 = result;
          if (!result)
          {
            return result;
          }
        }

        v11 = v8[1];
        v10 = v8 + 1;
        if (v11)
        {
          return cstdlib_strcpy(a3, v10);
        }
      }
    }
  }

  return result;
}

uint64_t fxd_HighPassInputFilter(uint64_t result, _WORD *a2, int a3, int a4, __int16 *a5, __int16 *a6)
{
  if (a3 >= 1)
  {
    v9 = result;
    v10 = 2 * a4;
    v11 = a3 + 1;
    do
    {
      v12 = v10 * *a6 + 0x8000;
      v13 = fxd_S16SatSubS16S16(*v9, *a5);
      result = fxd_S16SatAddS16S16(v13, v12 >> 16);
      v14 = *v9++;
      *a5 = v14;
      *a6 = result;
      *a2++ = result;
      --v11;
    }

    while (v11 > 1);
  }

  return result;
}

uint64_t fxd_HighPrecisionHighPassInputFilter(uint64_t result, _WORD *a2, int a3, int a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v10 = result;
    v11 = a3 + 1;
    while (1)
    {
      v12 = *v10;
      if (v12 >= 32256)
      {
        break;
      }

      if (v12 <= -32257)
      {
        v13 = -32256 - (((-32256 - v12) & 0xFF80) >> 7);
        goto LABEL_7;
      }

LABEL_8:
      v14 = fxd_S32ShMultRndS32S32(*a6, a4, 24);
      v15 = fxd_S32SatSubS32S32(*v10, *a5);
      result = fxd_S32SatAddS32S32(v15, v14);
      v16 = *v10++;
      *a5 = v16;
      if (result <= -32768)
      {
        v17 = -32768;
      }

      else
      {
        v17 = result;
      }

      if (v17 >= 0x7FFF)
      {
        v17 = 0x7FFF;
      }

      *a6 = v17;
      *a2++ = v17;
      if (--v11 <= 1)
      {
        return result;
      }
    }

    v13 = (((v12 - 32255) & 0xFF80) >> 7) + 32255;
LABEL_7:
    *v10 = v13;
    goto LABEL_8;
  }

  return result;
}

__int16 *fxd_SynthesisFilter(__int16 *result, _WORD *a2, int a3, __int16 *a4, int *a5, int a6)
{
  if (a3 >= 1)
  {
    do
    {
      v6 = *result++;
      v7 = v6 << 14;
      if (a6 < 1)
      {
        --a5;
      }

      else
      {
        v8 = a6 + 1;
        v9 = a4;
        v10 = a5;
        do
        {
          v12 = *v9++;
          v11 = v12;
          v13 = *v10++;
          v7 = v7 - 16 * v11 * (v13 >> 16) - ((v13 * v11) >> 12);
          --v8;
        }

        while (v8 > 1);
        a5 += (a6 - 1);
        if (a6 >= 2)
        {
          v14 = a6 + 1;
          do
          {
            v15 = a5;
            v16 = *--a5;
            *v15 = v16;
            --v14;
          }

          while (v14 > 2);
        }
      }

      v17 = (v7 + 0x2000) >> 14;
      if (v17 <= -32768)
      {
        v17 = -32768;
      }

      if (v17 >= 0x7FFF)
      {
        LOWORD(v17) = 0x7FFF;
      }

      *a2++ = v17;
      *a5 = v7;
      v18 = __OFSUB__(a3--, 1);
    }

    while (!((a3 < 0) ^ v18 | (a3 == 0)));
  }

  return result;
}

__int16 *fxd_FastSynthesisFilter(__int16 *result, _WORD *a2, int a3, char a4, __int16 *a5, unsigned int a6, char a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v9 = (a8 + 4 * a6 - 4);
    v10 = a9 - a4;
    v11 = 1 << (a9 - a4 - 1);
    do
    {
      v12 = *result++;
      v13 = v12 << v10;
      if (a6)
      {
        v14 = a5;
        v15 = v9;
        v16 = a6;
        do
        {
          v18 = *v14++;
          v17 = v18;
          v19 = *v15--;
          v13 -= (((v19 >> 16) * v17) << (16 - a7)) + ((v19 * v17) >> a7);
          --v16;
        }

        while (v16);
        v9 = (v9 + ((-4 * a6) | 0xFFFFFFFFFFFC0000));
      }

      v9 += a6 + 1;
      *v9 = v13;
      v20 = (v13 + v11) >> v10;
      if (v20 <= -32768)
      {
        v20 = -32768;
      }

      if (v20 >= 0x7FFF)
      {
        LOWORD(v20) = 0x7FFF;
      }

      *a2++ = v20;
      --a3;
    }

    while (a3);
  }

  return result;
}

__int16 *fxd_FastSynthesisFilterModuloBuffer(__int16 *result, _WORD *a2, int a3, char a4, __int16 *a5, int a6, char a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v9 = 0;
    v10 = a9 - a4;
    do
    {
      v11 = *result++;
      v12 = v11 << v10;
      if (a6)
      {
        v13 = a5;
        v14 = a6;
        do
        {
          v15 = *v13++;
          v12 -= (((*(a8 + 4 * v9) >> 16) * v15) << (16 - a7)) + ((*(a8 + 4 * v9) * v15) >> a7);
          v9 = (v9 + 1) % a6;
          --v14;
        }

        while (v14);
      }

      v16 = (a6 - 1 + v9) % a6;
      v9 = v16;
      *(a8 + 4 * v16) = v12;
      v17 = (v12 + (1 << (a9 - a4 - 1))) >> v10;
      if (v17 <= -32768)
      {
        v17 = -32768;
      }

      if (v17 >= 0x7FFF)
      {
        LOWORD(v17) = 0x7FFF;
      }

      *a2++ = v17;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t fxd_HighPrecisionFastSynthesisFilter(uint64_t result, _WORD *a2, int a3, char a4, int *a5, unsigned int a6, __int16 a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v11 = a3;
    v13 = result;
    v14 = (a8 + 4 * a6 - 4);
    v15 = a9 - a4;
    v26 = a6 + 1;
    v25 = 1 << (a9 - a4 - 1);
    do
    {
      v16 = *v13++;
      v17 = v16 << v15;
      if (a6)
      {
        v18 = a5;
        v19 = a6;
        do
        {
          v21 = *v14--;
          v20 = v21;
          v22 = *v18++;
          result = fxd_S32ShMultRndS32S32(v20, v22, a7);
          v17 -= result;
          --v19;
        }

        while (v19);
      }

      v14 += v26;
      *v14 = v17;
      v23 = (v17 + v25) >> v15;
      if (v23 <= -32768)
      {
        v23 = -32768;
      }

      if (v23 >= 0x7FFF)
      {
        LOWORD(v23) = 0x7FFF;
      }

      *a2++ = v23;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t fxd_LspSynthesisFilter(int a1, uint64_t a2, int a3, int *a4, char a5)
{
  v8 = a3;
  v9 = &a4[a3];
  v10 = v9 + 1;
  v11 = a1 << a5;
  if (a3 < 1)
  {
    v17 = *v9;
    v18 = v10[a3];
  }

  else
  {
    v12 = 0;
    v13 = (a2 + 2);
    v14 = a4 + 3;
    v15 = &a4[a3 + 2];
    do
    {
      *(v14 - 2) -= fxd_S32ShMultRndS32S16(*(v14 - 3), *(v13 - 1), 14);
      v16 = *v15 - fxd_S32ShMultRndS32S16(*(v15 - 1), *v13, 14);
      *v15 = v16;
      v11 += v16 + *(v14 - 2);
      *(v14 - 1) += *(v14 - 3);
      v12 += 2;
      v15[1] += *(v15 - 1);
      v13 += 2;
      v14 += 2;
      v15 += 2;
    }

    while (v12 < a3);
    v17 = *v9;
    v10 = v9 + 1;
    v18 = v9[v8 + 1];
    if (a3 >= 1)
    {
      v19 = &a4[a3];
      v20 = a3 + 1;
      v21 = v19;
      do
      {
        v22 = *--v21;
        *v19 = v22;
        v19[v8 + 1] = v19[v8];
        --v20;
        v19 = v21;
      }

      while (v20 > 1);
    }
  }

  v23 = v17 + v11 - v18;
  v24 = -(v23 >> 1);
  *v10 = v24;
  *a4 = v24;
  v25 = (v23 + (1 << (a5 - 1))) >> a5;
  if (v25 <= -32768)
  {
    v25 = -32768;
  }

  if (v25 >= 0x7FFF)
  {
    return 0x7FFFLL;
  }

  else
  {
    return v25;
  }
}

uint64_t fxd_LspInverseSynthesisFilter(int a1, uint64_t a2, int a3, int *a4, char a5)
{
  v8 = a3;
  v9 = &a4[a3];
  v10 = v9 + 1;
  v11 = a1 << a5;
  if (a3 < 1)
  {
    v17 = *v9;
    v18 = v10[a3];
  }

  else
  {
    v12 = 0;
    v13 = (a2 + 2);
    v14 = a4 + 3;
    v15 = &a4[a3 + 2];
    do
    {
      *(v14 - 2) -= fxd_S32ShMultRndS32S16(*(v14 - 3), *(v13 - 1), 14);
      v16 = *v15 - fxd_S32ShMultRndS32S16(*(v15 - 1), *v13, 14);
      *v15 = v16;
      v11 += v16 + *(v14 - 2);
      *(v14 - 1) += *(v14 - 3);
      v12 += 2;
      v15[1] += *(v15 - 1);
      v13 += 2;
      v14 += 2;
      v15 += 2;
    }

    while (v12 < a3);
    v17 = *v9;
    v10 = v9 + 1;
    v18 = v9[v8 + 1];
    if (a3 >= 1)
    {
      v19 = &a4[a3];
      v20 = a3 + 1;
      v21 = v19;
      do
      {
        v22 = *--v21;
        *v19 = v22;
        v19[v8 + 1] = v19[v8];
        --v20;
        v19 = v21;
      }

      while (v20 > 1);
    }
  }

  v23 = v17 + v11 - v18;
  *v10 = v23 >> 1;
  *a4 = v23 >> 1;
  v24 = (v23 + (1 << (a5 - 1))) >> a5;
  if (v24 <= -32768)
  {
    v24 = -32768;
  }

  if (v24 >= 0x7FFF)
  {
    return 0x7FFFLL;
  }

  else
  {
    return v24;
  }
}

__int16 *fxd_InverseSynthesisFilter(__int16 *result, _WORD *a2, int a3, __int16 *a4, int *a5, int a6)
{
  if (a3 >= 1)
  {
    do
    {
      v6 = *result << 14;
      v7 = a6 + 1;
      v8 = a4;
      v9 = a5;
      v10 = v6;
      if (a6 < 1)
      {
        --a5;
        v10 = *result << 14;
      }

      else
      {
        do
        {
          v12 = *v8++;
          v11 = v12;
          v13 = *v9++;
          v10 += 16 * v11 * (v13 >> 16) + ((v13 * v11) >> 12);
          --v7;
        }

        while (v7 > 1);
        a5 += (a6 - 1);
        if (a6 >= 2)
        {
          v14 = a6 + 1;
          do
          {
            v15 = a5;
            v16 = *--a5;
            *v15 = v16;
            --v14;
          }

          while (v14 > 2);
        }
      }

      ++result;
      *a5 = v6;
      v17 = (v10 + 0x2000) >> 14;
      if (v17 <= -32768)
      {
        v17 = -32768;
      }

      if (v17 >= 0x7FFF)
      {
        LOWORD(v17) = 0x7FFF;
      }

      *a2++ = v17;
      v18 = __OFSUB__(a3--, 1);
    }

    while (!((a3 < 0) ^ v18 | (a3 == 0)));
  }

  return result;
}

__int16 *fxd_FastInverseSynthesisFilter(__int16 *result, _WORD *a2, int a3, char a4, __int16 *a5, unsigned int a6, char a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v9 = (a8 + 4 * a6);
    v10 = a9 - a4;
    v11 = 1 << (a9 - a4 - 1);
    do
    {
      v12 = *result++;
      v13 = v12 << v10;
      *v9 = v12 << v10;
      if (a6)
      {
        v14 = v9 - 1;
        v15 = a5;
        v16 = a6;
        do
        {
          v18 = *v15++;
          v17 = v18;
          v19 = *v14--;
          v13 += (((v19 >> 16) * v17) << (16 - a7)) + ((v19 * v17) >> a7);
          --v16;
        }

        while (v16);
        v9 = (v9 + ((-4 * a6) | 0xFFFFFFFFFFFC0000));
      }

      v9 += a6 + 1;
      v20 = (v13 + v11) >> v10;
      if (v20 <= -32768)
      {
        v20 = -32768;
      }

      if (v20 >= 0x7FFF)
      {
        LOWORD(v20) = 0x7FFF;
      }

      *a2++ = v20;
      --a3;
    }

    while (a3);
  }

  return result;
}

__int16 *fxd_FastIirFilter(__int16 *result, _WORD *a2, int a3, char a4, __int16 *a5, int a6, __int16 *a7, unsigned int a8, char a9, uint64_t a10, char a11)
{
  if (a3)
  {
    v11 = a10 + 4 * a8 - 4;
    v12 = a11 - a4;
    v13 = 16 - a9;
    v14 = 1 << (a11 - a4 - 1);
    do
    {
      v15 = *result++;
      v16 = v15 << v12;
      if (a8)
      {
        v17 = a7;
        v18 = v11;
        v19 = a8;
        do
        {
          v21 = *v17++;
          v20 = v21;
          v22 = *v18--;
          v16 -= (((v22 >> 16) * v20) << v13) + ((v22 * v20) >> a9);
          --v19;
        }

        while (v19);
        v11 += (-4 * a8) | 0xFFFFFFFFFFFC0000;
      }

      v23 = (v11 + 4 * (a8 + 1));
      *v23 = v16;
      v24 = ((v16 * *a5) >> a9) + (((v16 >> 16) * *a5) << v13);
      if (a6)
      {
        v25 = a5 + 1;
        v26 = a6;
        do
        {
          v28 = *--v23;
          v27 = v28;
          v29 = *v25++;
          v24 += (((v27 >> 16) * v29) << v13) + ((v27 * v29) >> a9);
          --v26;
        }

        while (v26);
      }

      v11 = &v23[a6];
      v30 = (v24 + v14) >> v12;
      if (v30 <= -32768)
      {
        v30 = -32768;
      }

      if (v30 >= 0x7FFF)
      {
        LOWORD(v30) = 0x7FFF;
      }

      *a2++ = v30;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t fxd_OptAllZeroFilter(uint64_t result, uint64_t a2, unsigned int a3, __int16 *a4, char a5, unsigned int a6)
{
  if (a3)
  {
    v6 = 2 * a3 - 2;
    v7 = (a2 + v6);
    v8 = (result + v6);
    do
    {
      v9 = 0;
      v10 = 0;
      v11 = a4;
      do
      {
        v13 = *v8--;
        v12 = v13;
        v14 = *v11++;
        result = v14;
        v9 += (2 * v12 * v14) >> 1;
      }

      while (v10++ < a6);
      v16 = (v9 + (1 << (a5 - 1))) >> a5;
      if (v16 <= -32768)
      {
        v16 = -32768;
      }

      if (v16 >= 0x7FFF)
      {
        LOWORD(v16) = 0x7FFF;
      }

      *v7-- = v16;
      v8 += a6;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t MakeStream(int *a1, unsigned __int8 *a2, unsigned int a3, unsigned __int16 *a4, _WORD *a5)
{
  v5 = *a5;
  v6 = 8;
  if (*a5)
  {
    v6 = 8 - v5;
    v7 = *a2;
    if (a3)
    {
LABEL_3:
      v8 = 0;
      v9 = 0;
      v10 = *a4;
      v11 = *a1;
      while (1)
      {
        if (v10)
        {
          if (v10 > v6)
          {
            v12 = v7 + ((as32CodeMask[v6] & v11) << v5);
            v11 >>= v6;
            v13 = v10 - v6;
            a2[v9++] = v12;
            v6 = 8;
            LOWORD(v5) = 0;
LABEL_11:
            v7 = 0;
            goto LABEL_12;
          }

          v7 += (as32CodeMask[v10] & v11) << v5;
          v6 -= v10;
          v13 = a4[++v8];
          v11 = a1[v8];
          if (!v6)
          {
            LOWORD(v5) = 0;
            a2[v9++] = v7;
            v6 = 8;
            goto LABEL_11;
          }

          LOWORD(v5) = v10 + v5;
        }

        else
        {
          v13 = a4[++v8];
          v11 = a1[v8];
        }

LABEL_12:
        v10 = v13;
        if (v8 >= a3)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  LOWORD(v9) = 0;
LABEL_16:
  if (v6 <= 7u)
  {
    a2[v9] = v7;
  }

  *a5 = v5;
  return v9;
}

uint64_t DemuxStream(unsigned __int8 *a1, uint64_t a2, unsigned int a3, unsigned __int16 *a4, _WORD *a5)
{
  v5 = *a5;
  if (!a3)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 8 - v5;
  v11 = *a1 >> v5;
  v12 = *a4;
  do
  {
    if (v12 <= v10)
    {
      *(a2 + 4 * v7) = ((as32CodeMask[v12] & v11) << v8) + v6;
      v10 -= v12;
      v13 = a4[++v7];
      v8 = 0;
      if (v10)
      {
        v11 = (v11 >> v12);
        v6 = 0;
        goto LABEL_9;
      }

      v6 = 0;
    }

    else
    {
      v6 += (as32CodeMask[v10] & v11) << v8;
      v13 = v12 - v10;
      v8 += v10;
    }

    v11 = a1[++v9];
    v10 = 8;
LABEL_9:
    v12 = v13;
  }

  while (v7 < a3);
  LOWORD(v5) = 8 - v10;
LABEL_12:
  *a5 = v5;
  return v9;
}

uint64_t FillLH_S16(uint64_t result, __int16 a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = (a3 + 7) & 0xFFFFFFF8;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = xmmword_26ECDB2A0;
    v6 = xmmword_26ECDB2B0;
    v7 = xmmword_26ECCE810;
    v8 = xmmword_26ECC7980;
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

uint64_t FillLH_S32(uint64_t result, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = (a3 + 3) & 0xFFFFFFFC;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = xmmword_26ECCE810;
    v6 = xmmword_26ECC7980;
    v7 = (result + 8);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 2) = a2;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 1) = a2;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a2;
        v7[1] = a2;
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

double InitRandom(uint64_t a1)
{
  result = -2.41055443e116;
  *a1 = 0xD81878ACDEE2AD57;
  *(a1 + 8) = 82486;
  *(a1 + 12) = 4;
  return result;
}

uint64_t RandomLH_S16(int a1, uint64_t a2)
{
  v2 = *(a2 + 10);
  v3 = *(a2 + 12);
  v4 = *(a2 + 2 * v2) + *(a2 + 2 * v3);
  v5 = v4 | 0x8000;
  if (v4 < 0x8000)
  {
    v5 = *(a2 + 2 * v2) + *(a2 + 2 * v3);
  }

  if (v4 >= -32768)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 & 0x7FFF;
  }

  *(a2 + 2 * v3) = v6;
  v7 = v3 - 1;
  if (v7 < 0)
  {
    v7 = 4;
  }

  v8 = v2 - 1;
  if (v8 < 0)
  {
    v8 = 4;
  }

  *(a2 + 10) = v8;
  *(a2 + 12) = v7;
  return ((v6 * a1) >> 15);
}

uint64_t RandomLH_S16Vector(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v6 = result;
    v7 = a3;
    do
    {
      result = RandomLH_S16(a2, a4);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t fxd_Energy(uint64_t result, _DWORD *a2, int a3)
{
  if (a3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = result;
    v5 = 0;
    v6 = a3;
    do
    {
      v7 = *v4++;
      result = fxd_S32FractMultS32S32(v7, v7);
      v5 += result;
      --v6;
    }

    while (v6);
  }

  *a2 = v5;
  return result;
}

uint64_t fxd_BoundedLinearInterpolation(int a1, int a2, int a3, int a4, int a5, char a6)
{
  if (a1 <= a2)
  {
    v11 = a4 << a6;
  }

  else if (a1 >= a3)
  {
    v11 = a5 << a6;
    if ((v11 & 0x8000) != 0)
    {
      LOWORD(v11) = 0x7FFF;
    }
  }

  else
  {
    v6 = a3 - a2;
    v7 = ((a3 - a2) / (a5 - a4));
    if (v7 < 3)
    {
      v10 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        ++v8;
        v9 = v7 > 5;
        v7 >>= 1;
      }

      while (v9);
      v10 = v8;
    }

    v12 = (a5 - a4) << v10 << 16;
    if (v12 == v6 << 16)
    {
      v13 = 0x7FFF;
    }

    else
    {
      v13 = ((v12 >> 1) / v6);
    }

    v11 = ((v13 * (a1 - a2)) >> (v10 - a6 + 15)) + (a4 << a6);
  }

  return v11;
}

uint64_t fxd_BoundedConstantLinearInterpolation(int a1, int a2, int a3, unsigned __int16 a4, unsigned __int16 a5, int a6, char a7, char a8)
{
  v8 = (((a1 - a2) * a6) >> (a8 - a7 + 15)) + (a4 << a7);
  v9 = a5 << a7;
  if ((v9 & 0x8000) != 0)
  {
    LOWORD(v9) = 0x7FFF;
  }

  if (a1 >= a3)
  {
    LOWORD(v8) = v9;
  }

  if (a1 <= a2)
  {
    LOWORD(v8) = a4 << a7;
  }

  return v8;
}

__int16 *fxd_InterpolateVectors(__int16 *result, __int16 *a2, _WORD *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v8 = *a2++;
      *a3++ = (v6 * (a4 ^ 0x7FFFu) + v8 * a4) >> 15;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t fxd_InterpolateVectors_32BIT(uint64_t result, int *a2, _DWORD *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v8 = result;
    v9 = 0x800000 - a4;
    v10 = a5;
    do
    {
      v11 = *v8++;
      v12 = fxd_S32ShMultRndS32S32(v11, v9, 23);
      v13 = *a2++;
      result = fxd_S32ShMultRndS32S32(v13, a4, 23);
      *a3++ = result + v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t fxd_ScalarDecodeWithBounds(int a1, int a2, __int16 a3, __int16 a4, int a5)
{
  if (!a5)
  {
    a2 += (a3 - a2) * a1 / (a4 - 1);
  }

  return a2;
}

uint64_t fxd_LinSpace(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a4 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = ((((a3 - a2) << 16) >> 7) / ((a4 << 8) + 256)) >> 1;
  v5 = (a4 + 7) & 0xFFFFFFF8;
  v6 = vdupq_n_s16(v4);
  v7 = vmlaq_s16(vdupq_n_s16(a2), v6, xmmword_26ED4B940);
  v8 = vdupq_n_s16(8 * v4);
  v9 = vdupq_n_s64(a4 - 1);
  v10 = xmmword_26ECDB2A0;
  v11 = xmmword_26ECDB2B0;
  v12 = xmmword_26ECCE810;
  v13 = xmmword_26ECC7980;
  v14 = a1 + 8;
  v15 = vdupq_n_s64(8uLL);
  do
  {
    v16 = vmovn_s64(vcgeq_u64(v9, v13));
    v17 = vaddq_s16(v7, v6);
    if (vuzp1_s8(vuzp1_s16(v16, *v7.i8), *v7.i8).u8[0])
    {
      *(v14 - 8) = v17.i16[0];
    }

    if (vuzp1_s8(vuzp1_s16(v16, *&v7), *&v7).i8[1])
    {
      *(v14 - 6) = v17.i16[1];
    }

    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v9, *&v12))), *&v7).i8[2])
    {
      *(v14 - 4) = v17.i32[1];
    }

    v18 = vmovn_s64(vcgeq_u64(v9, v11));
    if (vuzp1_s8(*&v7, vuzp1_s16(v18, *&v7)).i32[1])
    {
      *v14 = v17.i16[4];
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(v18, *&v7)).i8[5])
    {
      *(v14 + 2) = v17.i16[5];
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v9, *&v10)))).i8[6])
    {
      *(v14 + 4) = v17.i32[3];
    }

    v11 = vaddq_s64(v11, v15);
    v12 = vaddq_s64(v12, v15);
    v13 = vaddq_s64(v13, v15);
    v10 = vaddq_s64(v10, v15);
    v14 += 16;
    v7 = vaddq_s16(v7, v8);
    v5 -= 8;
  }

  while (v5);
  return 0;
}

__int16 *fxd_LspToCosLsp(__int16 *result, _WORD *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      v5 = ((v4 << 14) / 25736) >> 1;
      if (v5 >> 13)
      {
        v5 = 0;
      }

      *a2++ = CosTbl[v5];
      --v3;
    }

    while (v3);
  }

  return result;
}

__int16 *fxd_LspToCosLsp__32BIT(__int16 *result, _DWORD *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      v5 = ((v4 << 15) / 25736) >> 1;
      if (v5 >> 14)
      {
        v5 = 0;
      }

      *a2++ = CosTbl__32BIT[v5];
      --v3;
    }

    while (v3);
  }

  return result;
}

int *fxd_LspToCosLsp__32BITX(int *result, _DWORD *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      v5 = ((32 * v4 / 25736) >> 1);
      if (v5 >> 14)
      {
        v5 = 0;
      }

      *a2++ = CosTbl__32BIT[v5];
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t fxd_LspToAi(__int16 *a1, _WORD *a2, int a3)
{
  v8[5] = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v3 = v8;
    v4 = a3;
    do
    {
      v5 = *a1++;
      v6 = ((v5 << 14) / 25736) >> 1;
      if (v6 >> 13)
      {
        v6 = 0;
      }

      *v3++ = CosTbl[v6];
      --v4;
    }

    while (v4);
  }

  return fxd_CosLspToAi(v8, a2, a3);
}

uint64_t fxd_CosLspToAi(uint64_t result, _WORD *a2, int a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v3 = &v46 + a3;
  v3[3] = 0x800000;
  v48 = 0x800000;
  v3[1] = 0x800000;
  v39 = v3 + 1;
  v4 = -512 * *result;
  v46 = 0x800000;
  v47 = v4;
  v3[2] = -512 * *(result + 2);
  if (a3 >= 3)
  {
    v5 = result;
    v38 = ((a3 - 3) >> 1) + 2;
    v6 = &v48;
    v45 = &v47;
    v7 = 1;
    v8 = 2;
    v9 = 16;
    v43 = 2;
    v44 = v49;
    v10 = &v49[a3];
    do
    {
      v40 = v9;
      v41 = v7;
      v11 = v43;
      v12 = *(v5 + 2 * v43);
      v42 = v6;
      v43 += 2;
      *(&v46 + v43) = 0x800000;
      v13 = v11 | 1;
      *(&v46 + (v11 | 1)) = *(&v45 + v11 + 1) - (v12 << 9);
      v14 = v11 >> 1;
      v15 = v11;
      v16 = v6;
      do
      {
        v17 = *--v16;
        *v6 = (((*(v6 - 2) - 2 * fxd_S32ShMultRndS32S16(v17, *(v5 + 2 * v11), 15)) & 0xFFFFFFFE) + *v6) & 0xFFFFFFFE;
        --v15;
        v6 = v16;
      }

      while (v15 > v14);
      v18 = v44;
      v19 = v45;
      v20 = v8;
      do
      {
        v21 = *v18++;
        *v19-- = v21;
        --v20;
      }

      while (v20 > 1);
      v22 = *(v5 + 2 * v13);
      v39[v43] = 0x800000;
      v39[v13] = v3[v11] - (v22 << 9);
      v23 = v10;
      v24 = v10;
      do
      {
        v25 = *--v24;
        result = fxd_S32ShMultRndS32S16(v25, *(v5 + 2 * v13), 15);
        *v23 = (((*(v23 - 2) - 2 * result) & 0xFFFFFFFE) + *v23) & 0xFFFFFFFE;
        --v11;
        v23 = v24;
      }

      while (v11 > v14);
      v26 = v40;
      v27 = v8;
      do
      {
        v3[v27--] = *(v3 + v26);
        v26 += 4;
      }

      while (v27 > 1);
      v7 = v41 + 1;
      v6 = v42 + 2;
      ++v8;
      ++v44;
      ++v45;
      v10 += 2;
      v9 = v40 + 4;
    }

    while (v41 + 1 != v38);
  }

  v28 = a2;
  if (a3 >= 1)
  {
    v29 = a3;
    v30 = *v39;
    v31 = v46;
    v32 = &v48;
    do
    {
      v33 = v32[v37];
      v34 = *(v32 - 1);
      *v28++ = (v34 + v33 - v30 + v31 + 2048) >> 12;
      ++v32;
      v31 = v34;
      v30 = v33;
      --v29;
    }

    while (v29);
  }

  return result;
}

uint64_t fxd_HighPrecisionCosLspToAi(uint64_t result, _DWORD *a2, int a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v3 = &v46 + a3;
  v3[3] = 0x800000;
  v48 = 0x800000;
  v3[1] = 0x800000;
  v39 = v3 + 1;
  v4 = -512 * *result;
  v46 = 0x800000;
  v47 = v4;
  v3[2] = -512 * *(result + 2);
  if (a3 >= 3)
  {
    v5 = result;
    v38 = ((a3 - 3) >> 1) + 2;
    v6 = &v48;
    v45 = &v47;
    v7 = 1;
    v8 = 2;
    v9 = 16;
    v43 = 2;
    v44 = v49;
    v10 = &v49[a3];
    do
    {
      v40 = v9;
      v41 = v7;
      v11 = v43;
      v12 = *(v5 + 2 * v43);
      v42 = v6;
      v43 += 2;
      *(&v46 + v43) = 0x800000;
      v13 = v11 | 1;
      *(&v46 + (v11 | 1)) = *(&v45 + v11 + 1) - (v12 << 9);
      v14 = v11 >> 1;
      v15 = v11;
      v16 = v6;
      do
      {
        v17 = *--v16;
        *v6 = (((*(v6 - 2) - 2 * fxd_S32ShMultRndS32S16(v17, *(v5 + 2 * v11), 15)) & 0xFFFFFFFE) + *v6) & 0xFFFFFFFE;
        --v15;
        v6 = v16;
      }

      while (v15 > v14);
      v18 = v44;
      v19 = v45;
      v20 = v8;
      do
      {
        v21 = *v18++;
        *v19-- = v21;
        --v20;
      }

      while (v20 > 1);
      v22 = *(v5 + 2 * v13);
      v39[v43] = 0x800000;
      v39[v13] = v3[v11] - (v22 << 9);
      v23 = v10;
      v24 = v10;
      do
      {
        v25 = *--v24;
        result = fxd_S32ShMultRndS32S16(v25, *(v5 + 2 * v13), 15);
        *v23 = (((*(v23 - 2) - 2 * result) & 0xFFFFFFFE) + *v23) & 0xFFFFFFFE;
        --v11;
        v23 = v24;
      }

      while (v11 > v14);
      v26 = v40;
      v27 = v8;
      do
      {
        v3[v27--] = *(v3 + v26);
        v26 += 4;
      }

      while (v27 > 1);
      v7 = v41 + 1;
      v6 = v42 + 2;
      ++v8;
      ++v44;
      ++v45;
      v10 += 2;
      v9 = v40 + 4;
    }

    while (v41 + 1 != v38);
  }

  v28 = a2;
  if (a3 >= 1)
  {
    v29 = a3;
    v30 = *v39;
    v31 = v46;
    v32 = &v48;
    do
    {
      v33 = *(v32 - 1);
      v34 = v32[v37];
      *v28++ = 16 * (v34 + v33 - v30 + v31);
      ++v32;
      v31 = v33;
      v30 = v34;
      --v29;
    }

    while (v29);
  }

  return result;
}

uint64_t fxd_HighPrecisionCosLspToAi__32BIT(uint64_t result, _DWORD *a2, int a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = &v47 + a3;
  v3[3] = 0x800000;
  v49 = 0x800000;
  v3[1] = 0x800000;
  v40 = v3 + 1;
  v4 = *(result + 4);
  v5 = -2 * *result;
  v47 = 0x800000;
  v48 = v5;
  v38 = a3;
  v3[2] = -2 * v4;
  if (a3 >= 3)
  {
    v6 = result;
    v39 = ((a3 - 3) >> 1) + 2;
    v7 = &v49;
    v46 = &v48;
    v8 = 1;
    v9 = 2;
    v10 = 16;
    v44 = 2;
    v45 = v50;
    v11 = &v50[a3];
    do
    {
      v41 = v10;
      v42 = v8;
      v12 = v44;
      v13 = *(v6 + 4 * v44);
      v43 = v7;
      v44 += 2;
      *(&v47 + v44) = 0x800000;
      v14 = v12 | 1;
      *(&v47 + (v12 | 1)) = *(&v46 + v12 + 1) - 2 * v13;
      v15 = v12 >> 1;
      v16 = v12;
      v17 = v7;
      do
      {
        v18 = *--v17;
        *v7 = (((*(v7 - 2) - 2 * fxd_S32ShMultRndS32S32(v18, *(v6 + 4 * v12), 23)) & 0xFFFFFFFE) + *v7) & 0xFFFFFFFE;
        --v16;
        v7 = v17;
      }

      while (v16 > v15);
      v19 = v45;
      v20 = v46;
      v21 = v9;
      do
      {
        v22 = *v19++;
        *v20-- = v22;
        --v21;
      }

      while (v21 > 1);
      v23 = *(v6 + 4 * v14);
      v40[v44] = 0x800000;
      v40[v14] = v3[v12] - 2 * v23;
      v24 = v11;
      v25 = v11;
      do
      {
        v26 = *--v25;
        result = fxd_S32ShMultRndS32S32(v26, *(v6 + 4 * v14), 23);
        *v24 = (((*(v24 - 2) - 2 * result) & 0xFFFFFFFE) + *v24) & 0xFFFFFFFE;
        --v12;
        v24 = v25;
      }

      while (v12 > v15);
      v27 = v41;
      v28 = v9;
      do
      {
        v3[v28--] = *(v3 + v27);
        v27 += 4;
      }

      while (v28 > 1);
      v8 = v42 + 1;
      v7 = v43 + 2;
      ++v9;
      ++v45;
      ++v46;
      v11 += 2;
      v10 = v41 + 4;
    }

    while (v42 + 1 != v39);
  }

  v29 = a2;
  if (a3 >= 1)
  {
    v30 = a3;
    v31 = *v40;
    v32 = v47;
    v33 = &v49;
    do
    {
      v34 = *(v33 - 1);
      v35 = v33[v38];
      *v29++ = 16 * (v35 + v34 - v31 + v32);
      ++v33;
      v32 = v34;
      v31 = v35;
      --v30;
    }

    while (v30);
  }

  return result;
}

uint64_t fxd_AiToParCor(__int16 *a1, uint64_t a2, signed int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = &v20[a3];
  v6 = a3 - 1;
  if (a3 >= 1)
  {
    v7 = a3;
    v8 = v20;
    do
    {
      v9 = *a1++;
      *v8++ = v9 << 15;
      --v7;
    }

    while (v7);
  }

  result = FillZeroLH_S32(&v20[a3], a3);
  if ((v6 & 0x8000) == 0)
  {
    v11 = v6;
    v12 = a3 - 2;
    do
    {
      v13 = v20[v11];
      *(a2 + 2 * v11) = v13 >> 12;
      if (!v11)
      {
        break;
      }

      v14 = 0;
      v15 = &v20[v12];
      v16 = ((((v13 >> 12) * (v13 >> 12)) >> 15) ^ 0x7FFF);
      do
      {
        v5[v14] = v20[v14];
        ++v14;
      }

      while (v11 != v14);
      v17 = v20;
      v18 = v11;
      do
      {
        result = fxd_S32FractDivS32S16(v17[a3] - 2 * *(a2 + 2 * v11) * (v15[a3] >> 16) - ((v15[a3] * *(a2 + 2 * v11)) >> 15), v16);
        *v17++ = result;
        --v15;
        --v18;
      }

      while (v18);
      --v12;
    }

    while (v11-- >= 1);
  }

  return result;
}

__int16 *fxd_ExpandLpcBandwidth(__int16 *result, _WORD *a2, int a3, int a4, int a5)
{
  if (a5)
  {
    if (a4 >= 1)
    {
      v5 = a4;
      LOWORD(v6) = a3;
      do
      {
        v7 = *result++;
        *a2++ = (v7 * v6) >> (15 - a5);
        v6 = (v6 * a3) >> 15;
        --v5;
      }

      while (v5);
    }
  }

  else if (a4 >= 1)
  {
    v8 = a4;
    LOWORD(v9) = a3;
    do
    {
      v10 = *result++;
      *a2++ = (v10 * v9) >> 15;
      v9 = (v9 * a3) >> 15;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t fxd_HighPrecisionExpandLpcBandwidth(uint64_t result, _DWORD *a2, int a3, int a4, char a5)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = 15 - a5;
    v9 = a4;
    LOWORD(v10) = a3;
    do
    {
      v11 = *v7++;
      v12 = v10;
      result = fxd_S32ShMultRndS32S16(v11, v10, v8);
      *a2++ = result;
      v10 = (v12 * a3) >> 15;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t fxd_LspToSubFrameAi(__int16 *__src, __int16 *a2, int a3, unsigned int a4, __int16 *__dst)
{
  if (a3 >= 2)
  {
    LOWORD(v9) = 0;
    v10 = (a3 << 9);
    v11 = a3 - 1;
    v12 = 0x2000000;
    do
    {
      if (v10)
      {
        v9 = (v12 / v10) >> 1;
      }

      fxd_InterpolateVectors(a2, __src, __dst, v9, a4);
      fxd_LspToAi(__dst, __dst, a4);
      v12 += 0x2000000;
      __dst += a4;
      --v11;
    }

    while (v11);
  }

  LH_S16ToLH_S16(__src, __dst, a4);

  return fxd_LspToAi(__dst, __dst, a4);
}

uint64_t fxd_LspToTilt(_WORD *a1, int a2)
{
  v2 = a1[1];
  v3 = (4 * *a1) * (v2 - *a1);
  v4 = a1[2];
  v5 = ((((32 * v3) & 0xFF80) * (v4 - v2)) >> 11) + 32 * (v4 - v2) * (v3 >> 11);
  v6 = ((v5 * (a1[3] - v4)) >> 11) + 32 * (a1[3] - v4) * (v5 >> 16);
  if (v6 > 183251937)
  {
    LOWORD(v8) = 0;
  }

  else
  {
    v7 = 768000 * (v6 >> 16) + ((24000 * v6) >> 11) - 0x7FFFFFFF;
    v8 = (2 * a2 * (v7 >> 16) + ((v7 * a2) >> 15) + 0x8000) >> 16;
  }

  return v8;
}

void *fxd_MultiStageVectorDecodeLsp(_DWORD *a1, int a2, _DWORD *a3, uint64_t a4, signed int a5, __int16 *a6)
{
  v6 = a6;
  result = FillZeroLH_S16(a6, a5);
  if (a2 > 1)
  {
    v13 = *a3 * a5;
    v14 = 1;
    do
    {
      if (a5 >= 1)
      {
        v15 = (a4 + 2 * v13 + 2 * a1[v14] * a5);
        v16 = a5;
        v17 = v6;
        do
        {
          v18 = *v15++;
          *v17++ += v18;
          --v16;
        }

        while (v16);
      }

      v13 += a3[v14++] * a5;
    }

    while (v14 != a2);
  }

  if (a5 >= 1)
  {
    v19 = (a4 + 2 * *a1 * a5);
    v20 = a5;
    do
    {
      v21 = *v6;
      *v6 >>= 2;
      v22 = *v19++;
      *v6++ = v22 + (v21 >> 2);
      --v20;
    }

    while (v20);
  }

  return result;
}

unint64_t fxd_MultiStageVectorDecodeLsp__32BIT(_DWORD *a1, int a2, _DWORD *a3, uint64_t a4, signed int a5, uint64_t a6, int *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  result = FillZeroLH_S32(v27, a5);
  if (a2 > 1)
  {
    v15 = *a3 * a5;
    v16 = 1;
    do
    {
      if (a5 >= 1)
      {
        v17 = (a4 + 2 * v15 + 2 * a1[v16] * a5);
        v18 = 8 - *(a6 + 4 * v16);
        v19 = v27;
        v20 = a5;
        do
        {
          v21 = *v17++;
          result = *v19;
          *v19++ = (v21 << v18) + result;
          --v20;
        }

        while (v20);
      }

      v15 += a3[v16++] * a5;
    }

    while (v16 != a2);
  }

  if (a5 >= 1)
  {
    v22 = (a4 + 2 * *a1 * a5);
    v23 = a5;
    v24 = v27;
    do
    {
      v25 = *v22++;
      v26 = *v24 + (v25 << 10);
      *v24++ = v26;
      *a7++ = v26;
      --v23;
    }

    while (v23);
  }

  return result;
}

BOOL fxd_OrderCheckLsp(unsigned __int16 *a1, int a2, int a3)
{
  if (a3 == 3)
  {
    v3 = 5;
  }

  else
  {
    v3 = 2;
  }

  if (a2 >= 2)
  {
    v4 = 0;
    v5 = (a2 - 1);
    do
    {
      v6 = 0;
      v7 = *a1;
      v8 = 1;
      do
      {
        v9 = v6 + 1;
        v10 = a1[v6 + 1];
        if (v10 < v7)
        {
          v11 = &a1[v6 + 2];
          while (1)
          {
            *(v11 - 2) = v10;
            *(v11 - 1) = v7;
            if (v5 == v9)
            {
              goto LABEL_14;
            }

            ++v9;
            v12 = *v11++;
            LOWORD(v10) = v12;
            if (v12 >= v7)
            {
              v8 = 0;
              break;
            }
          }
        }

        v7 = v10;
        v6 = v9;
      }

      while (v9 != v5);
      if (v8 == 1)
      {
        return fxd_SmoothLsp(a1, a2, a3);
      }

LABEL_14:
      ++v4;
    }

    while (v4 != v3);
  }

  return fxd_SmoothLsp(a1, a2, a3);
}

BOOL fxd_SmoothLsp(unsigned __int16 *a1, int a2, int a3)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return 1;
    }

    else if (a3 == 3)
    {
      if ((a2 - 14) > 6)
      {
        v4 = 322;
      }

      else
      {
        v4 = dword_26ED5F994[a2 - 14];
      }

      v5 = 0;
      v6 = 2 * v4;
      v7 = (a2 - 1);
      v8 = v7;
      v9 = v7 - 1;
      while (a2 >= 2)
      {
        v10 = 0;
        v11 = a1;
        do
        {
          v12 = v10 + 1;
          v13 = v11[1];
          v14 = *v11;
          if (v4 > (v11[1] - v14))
          {
            v15 = (v4 - (v13 - v14)) << 16 >> 17;
            if (v10)
            {
              if (v4 <= (v14 - *(v11 - 1)))
              {
                v17 = v14 - *(v11 - 1);
                if (v6 > v17)
                {
                  v16 = (v17 - v4) >> 1;
                }

                else
                {
                  v16 = (v4 - (v13 - v14)) >> 1;
                }
              }

              else
              {
                v16 = 0;
              }
            }

            else if (v4 <= *a1)
            {
              v16 = (v4 - (v13 - v14)) >> 1;
            }

            else
            {
              v16 = v14 >> 1;
            }

            if (v9 == v10 && 25736 - v4 < v13)
            {
              v15 = (25736 - v13) << 16 >> 17;
            }

            else if (v12 < v8)
            {
              v18 = (v11[2] - v13);
              if (v6 > v18)
              {
                v15 = (v18 - v4) << 16 >> 17;
              }

              if (v4 > (v11[2] - v13))
              {
                LOWORD(v15) = 0;
              }
            }

            *v11 = v14 - v16;
            v11[1] = v15 + v13;
          }

          ++v11;
          ++v10;
        }

        while (a2 - 1 != v12);
        v19 = 1;
        v20 = a2 - 1;
        v21 = a1 + 1;
        do
        {
          if (((32440 * v4) >> 15) > (*v21 - *(v21 - 1)))
          {
            v19 = 0;
          }

          ++v21;
          --v20;
        }

        while (v20);
        if (v19 == 1)
        {
          break;
        }

        if (++v5 == 10)
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

  else
  {
    return !a3 || a3 == 1;
  }
}

int *fxd_OrderCheckLsp__S32(int *result, int a2)
{
  if (a2 >= 2)
  {
    v2 = 0;
    v3 = (a2 - 1);
    do
    {
LABEL_3:
      v4 = 0;
      v5 = *result;
      v6 = 1;
      while (1)
      {
        v7 = v4 + 1;
        v8 = result[v4 + 1];
        if (v5 > v8)
        {
          break;
        }

LABEL_9:
        v5 = v8;
        v4 = v7;
        if (v7 == v3)
        {
          if ((v6 == 1) | v2 & 1)
          {
            return result;
          }

          v2 = 1;
          goto LABEL_3;
        }
      }

      v9 = &result[v4 + 2];
      while (1)
      {
        *(v9 - 2) = v8;
        *(v9 - 1) = v5;
        if (v3 == v7)
        {
          break;
        }

        ++v7;
        v10 = *v9++;
        v8 = v10;
        if (v5 <= v10)
        {
          v6 = 0;
          goto LABEL_9;
        }
      }

      v11 = v2 | (a2 < 2);
      v2 = 1;
    }

    while ((v11 & 1) == 0);
  }

  return result;
}

uint64_t fxd_S16SatAddS16S16(int a1, int a2)
{
  v2 = a1 + a2;
  if (a1 + a2 >= 0x7FFF)
  {
    v2 = 0x7FFF;
  }

  if (v2 <= -32768)
  {
    return 4294934528;
  }

  else
  {
    return v2;
  }
}

uint64_t fxd_S32SatAddS32S32(int a1, int a2)
{
  if (((a2 + a1) ^ a1) > -1 || (a2 ^ a1) < 0)
  {
    return (a2 + a1);
  }

  else
  {
    return (a1 >> 31) ^ 0x7FFFFFFFu;
  }
}

uint64_t fxd_S16SatSubS16S16(int a1, int a2)
{
  v2 = a1 - a2;
  if (a1 - a2 >= 0x7FFF)
  {
    v2 = 0x7FFF;
  }

  if (v2 <= -32768)
  {
    return 4294934528;
  }

  else
  {
    return v2;
  }
}

uint64_t fxd_S32SatSubS32S32(int a1, int a2)
{
  if (((a2 ^ a1) & ((a1 - a2) ^ a1)) < 0 != v2)
  {
    return (a1 >> 31) ^ 0x7FFFFFFFu;
  }

  else
  {
    return (a1 - a2);
  }
}

uint64_t fxd_S32FractMultS32S32(int a1, int a2)
{
  if (a2 * a1 >= 1073741825)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (2 * a2 * a1);
  }
}

uint64_t fxd_S32ShMultRndS32S32(int a1, int a2, __int16 a3)
{
  v3 = ((a2 >> 16) * a1 + a2 * (a1 >> 16) + ((a2 * a1 + 0x8000) >> 16) + (1 << (a3 - 17))) >> (a3 - 16);
  if (a3 == 16)
  {
    v3 = (a2 >> 16) * a1 + a2 * (a1 >> 16) + ((a2 * a1 + 0x8000) >> 16);
  }

  return (v3 + (((a2 >> 16) * (a1 >> 16)) << (32 - a3)));
}

uint64_t fxd_S16FractDivS32S32(int a1, int a2)
{
  v2 = 0;
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  v5 = 2 * v3 - v4;
  v6 = 15;
  do
  {
    HIDWORD(v7) = v2;
    LODWORD(v7) = ~v5;
    v2 = v7 >> 31;
    if (v5 < 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = -v4;
    }

    v5 = v8 + 2 * v5;
    --v6;
  }

  while (v6);
  if ((a2 ^ a1) < 0)
  {
    v2 = -v2;
  }

  return v2;
}

uint64_t fxd_S16NormS16(int a1)
{
  if (a1)
  {
    if (a1 == -1)
    {
      LOWORD(a1) = 15;
    }

    else
    {
      v1 = a1 ^ (a1 >> 15);
      if (v1 >= 0x4000)
      {
        LOWORD(a1) = 0;
      }

      else
      {
        LOWORD(a1) = 0;
        do
        {
          v1 = (2 * v1);
          LOWORD(a1) = a1 + 1;
        }

        while (v1 < 0x4000);
      }
    }
  }

  return a1;
}

uint64_t fxd_S16NormS32(int a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == -1)
  {
    return 31;
  }

  v2 = a1 ^ (a1 >> 31);
  if (v2 > 0x3FFFFFFF)
  {
    return 0;
  }

  v1 = 0;
  do
  {
    v3 = v2 >> 29;
    v2 *= 2;
    ++v1;
  }

  while (!v3);
  return v1;
}

uint64_t fxd_S16Lookup10Log10S16S16(int a1, uint64_t a2)
{
  if (a1 >> 5 == 1023)
  {
    LOWORD(v2) = 0;
  }

  else
  {
    v2 = *(a2 + 2 * (a1 >> 5)) + (((2 * a1 - (a1 >> 5 << 6)) * (*(a2 + 2 * (a1 >> 5) + 2) - *(a2 + 2 * (a1 >> 5))) + 0x8000) >> 24);
  }

  return v2;
}

uint64_t fxd_U16LookupPow10U16U16(unsigned int a1, uint64_t a2)
{
  v2 = a1 >> 5;
  if (a1 >> 5 > 0x400)
  {
    v2 = 1023;
  }

  return (*(a2 + 2 * v2) + (((*(a2 + 2 * v2 + 2) - *(a2 + 2 * v2)) * (a1 - 32 * v2) + 16) >> 5));
}

uint64_t fxd_DPFExtractS32S16S16(uint64_t result, _WORD *a2, _WORD *a3)
{
  *a2 = WORD1(result);
  *a3 = result >> 1;
  return result;
}

uint64_t fxd_U16FractSqrtS32(unsigned int a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0x8000;
  do
  {
    v4 = 2 * (v1 + v3) * (v1 + v3);
    if (v4 <= a1)
    {
      v1 += v3;
      if (v4 == a1)
      {
        break;
      }
    }

    v3 >>= 1;
  }

  while (v2++ < 0xF);
  return v1;
}

uint64_t fxd_U16SqrtS32(int a1)
{
  if (a1 > 3519)
  {
    if (a1 <= 5119)
    {
      if (a1 == 3520)
      {
        return 59;
      }

      if (a1 == 4096)
      {
        return 64;
      }
    }

    else
    {
      switch(a1)
      {
        case 5120:
          return 72;
        case 5632:
          return 75;
        case 7040:
          return 84;
      }
    }
  }

  else if (a1 <= 2047)
  {
    if (a1 == 1024)
    {
      return 32;
    }

    if (a1 == 1408)
    {
      return 38;
    }
  }

  else
  {
    switch(a1)
    {
      case 2048:
        return 45;
      case 2560:
        return 51;
      case 2816:
        return 53;
    }
  }

  v1 = 0;
  v2 = 0;
  v3 = 0x8000;
  do
  {
    v4 = (v1 + v3) * (v1 + v3);
    if (v4 <= a1)
    {
      v1 += v3;
      if (v4 == a1)
      {
        break;
      }
    }

    v3 >>= 1;
  }

  while (v2++ < 0xF);
  return v1;
}

uint64_t fxd_U16SqrtU32(unsigned int a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0x8000;
  do
  {
    v4 = (v1 + v3) * (v1 + v3);
    if (v4 <= a1)
    {
      v1 += v3;
      if (v4 == a1)
      {
        break;
      }
    }

    v3 >>= 1;
  }

  while (v2++ < 0xF);
  return v1;
}

uint64_t fxd_S32SqrtS32_sys32(unsigned int a1)
{
  v1 = 0;
  v2 = 0x8000;
  v3 = 16;
  do
  {
    v4 = (v1 + v2) * (v1 + v2);
    if (v4 <= a1)
    {
      v1 = v1 + v2;
      if (v4 == a1)
      {
        break;
      }
    }

    v2 >>= 1;
    --v3;
  }

  while (v3);
  return v1;
}

uint64_t uselect_CreateBrokerString(uint64_t a1, char *a2, size_t a3, char *a4, char *a5, int a6, int a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = 0;
  __src = 0;
  __s = 0;
  *a2 = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "voiceaddon", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (!__s || !*__s)
  {
    goto LABEL_12;
  }

  v15 = *(a1 + 8);
  v16 = cstdlib_strlen("voiceaddonbaseuri.");
  v17 = cstdlib_strlen(__s);
  v18 = heap_Calloc(v15, 1, v16 + v17 + 1);
  if (!v18)
  {
    return 2229280778;
  }

  v19 = v18;
  cstdlib_strcpy(v18, "voiceaddonbaseuri.");
  cstdlib_strcat(v19, __s);
  Str = paramc_ParamGetStr(*(a1 + 40), v19, &__src);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  heap_Free(*(a1 + 8), v19);
  if (__src && *__src)
  {
    Str = strhelper_SafeCat(a2, __src, 0xFFFFFFFFFFFFFFFFLL, a3);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    if (a2[cstdlib_strlen(a2) - 1] != 47)
    {
      Str = strhelper_SafeCat(a2, "/", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }
    }

    v20 = 0;
    v21 = "_";
  }

  else
  {
LABEL_12:
    v20 = 1;
    v21 = "/";
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &__src);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v22 = 2229280778;
  if (!__src)
  {
    return 2229282821;
  }

  v31 = v20;
  v23 = *(a1 + 8);
  v24 = cstdlib_strlen(__src);
  v25 = heap_Calloc(v23, 1, v24 + 1);
  if (v25)
  {
    v26 = v25;
    cstdlib_strcpy(v25, __src);
    vf_MakeLower(v26);
    if (__s && *__s)
    {
      Str = strhelper_SafeCat(a2, "uselectvao", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v26, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, __s, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, "vao", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      heap_Free(*(a1 + 8), v26);
      v27 = 0;
    }

    else
    {
      Str = strhelper_SafeCat(a2, "uselect", 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v26, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      if (a4)
      {
        cstdlib_strcpy(a4, __src);
      }

      heap_Free(*(a1 + 8), v26);
      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      v27 = 1;
    }

    if (a6 == 1)
    {
      Str = paramc_ParamGetStr(*(a1 + 40), "fecfg", &__src);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, __src, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, v21, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }
    }

    if (v27)
    {
      Str = paramc_ParamGetStr(*(a1 + 40), "reduction", &__src);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      Str = strhelper_SafeCat(a2, __src, 0xFFFFFFFFFFFFFFFFLL, a3);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      if (!a5)
      {
        goto LABEL_47;
      }

      v28 = __src;
    }

    else
    {
      if (!a5)
      {
LABEL_47:
        if ((v31 & 1) != 0 || (Str = strhelper_SafeCat(a2, ".dat", 0xFFFFFFFFFFFFFFFFLL, a3), (Str & 0x80000000) == 0))
        {
          v22 = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__src);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          v29 = v31 ^ 1;
          if (a7)
          {
            v29 = 1;
          }

          if ((v29 & 1) == 0 && __src)
          {
            if (*__src)
            {
              Str = brokeraux_ComposeBrokerString(a1, a2, 0, 0, 0, 0, 0, v35, a3);
              if ((Str & 0x80000000) == 0)
              {
                *a2 = 0;
                return strhelper_SafeCat(a2, v35, 0xFFFFFFFFFFFFFFFFLL, a3);
              }

              return Str;
            }

            return v22;
          }

          if (!a7 || !cupreader_IsCupInTheScope(a1, &v33))
          {
            return v22;
          }

          return cupreader_PrependCupName(a2, v33, a3);
        }

        return Str;
      }

      v28 = "vao";
    }

    cstdlib_strcpy(a5, v28);
    goto LABEL_47;
  }

  return v22;
}

uint64_t uselect_ObjcVoiceOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v109 = *MEMORY[0x277D85DE8];
  __src = 0;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
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
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  memset(__dst, 0, sizeof(__dst));
  inited = InitRsrcFunction(a1, a2, &__src);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  cstdlib_memcpy(__dst, __src, 0x1A0uLL);
  v74 = *(a5 + 32);
  v100 = 0;
  v99 = 0;
  cstdlib_strcpy(v107, "");
  cstdlib_strcpy(v106, "");
  cstdlib_strcpy(v105, "");
  if ((uselect_CreateBrokerString(__dst, v107, 0x100uLL, v106, v105, 1, 0) & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  inited = uselect_CheckForDataFile(v8, a2, v107, &v99);
  if ((inited & 0x80001FFF) == 0x8000000A)
  {
    return inited;
  }

  if (!v99)
  {
LABEL_5:
    inited = uselect_CreateBrokerString(__dst, v107, 0x100uLL, v106, v105, 0, 0);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = uselect_CheckForDataFile(v8, a2, v107, &v99);
    if ((inited & 0x80001FFF) == 0x8000000A)
    {
      return inited;
    }

    if (!v99)
    {
      if ((uselect_CreateBrokerString(__dst, v107, 0x100uLL, v106, v105, 0, 1) & 0x80000000) != 0)
      {
        goto LABEL_120;
      }

      inited = uselect_CheckForDataFile(v8, a2, v107, &v99);
      if ((inited & 0x80001FFF) == 0x8000000A)
      {
        return inited;
      }

      if (!v99)
      {
LABEL_120:
        v19 = 0;
        v10 = 2229280788;
        goto LABEL_121;
      }
    }
  }

  inited = ssftriff_reader_ObjOpen(v8, a2, 0, v107, "USEL", 1031, &v100);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = 2229280778;
  v11 = heap_Calloc(*(&__dst[0] + 1), 1, 28400);
  v19 = v11;
  if (!v11)
  {
    goto LABEL_121;
  }

  cstdlib_strcpy(v11, v106);
  cstdlib_strcpy((v19 + 76), v105);
  cstdlib_strcpy((v19 + 152), v107);
  cstdlib_memset((v19 + 2144), 255, 0x100uLL);
  cstdlib_memset((v19 + 3048), 255, 0x11CuLL);
  cstdlib_memset((v19 + 3376), 255, 0x20uLL);
  cstdlib_memset((v19 + 2400), 0, 0x40uLL);
  cstdlib_memset((v19 + 2748), 0, 0xDAuLL);
  *(v19 + 28168) = uselect_CartLookup;
  *(v19 + 3578) = 2;
  v20 = heap_Calloc(*(&__dst[0] + 1), 1, 280);
  *(v19 + 3552) = v20;
  if (!v20)
  {
    goto LABEL_121;
  }

  v67 = v8;
  *v20 = v19;
  cstdlib_memset(__b, 0, 0x50uLL);
  v21 = uselect_ParseRiff(__dst, v100, v19, 0, __b, 0, 0, 0);
  if ((v21 & 0x80000000) == 0)
  {
    v22 = (v19 + 3504);
    v23 = (v19 + 3506);
    v103 = 0;
    v24 = v19 + 3512;
    v25 = v19 + 3488;
    v102 = 0;
    v26 = v19 + 3490;
    v27 = v19 + 3496;
    v101 = 0;
    v28 = v19 + 3472;
    v29 = v19 + 3474;
    v30 = v19 + 3480;
    v31 = v19 + 3440;
    v32 = v19 + 3442;
    v12 = v19 + 3448;
    v33 = 1;
    while (1)
    {
      if (v33 == 3)
      {
        v22 = v25;
        v23 = v26;
        v24 = v27;
      }

      v34 = (v33 == 1 ? v31 : v28);
      v35 = (v33 == 1 ? v32 : v29);
      v36 = v33 == 1 ? v12 : v30;
      if (v33 <= 2)
      {
        v37 = v35;
      }

      else
      {
        v34 = v22;
        v37 = v23;
      }

      v38 = (v33 <= 2 ? v36 : v24);
      v70 = *v34;
      if (*v34)
      {
        break;
      }

LABEL_64:
      ++v33;
      v23 = (v19 + 3506);
      v22 = (v19 + 3504);
      v25 = v19 + 3488;
      v24 = v19 + 3512;
      v27 = v19 + 3496;
      v26 = v19 + 3490;
      v29 = v19 + 3474;
      v28 = v19 + 3472;
      v31 = v19 + 3440;
      v30 = v19 + 3480;
      v12 = v19 + 3448;
      v32 = v19 + 3442;
      if (v33 == 5)
      {
        *(v19 + 2748) = 33620225;
        *(v19 + 2752) = 513;
        *(v19 + 2777) = 1;
        *(v19 + 2755) = 0x101010101010101;
        *(v19 + 2763) = 0x101010101010101;
        if ((*(v19 + 3220) & 0x80000000) == 0)
        {
          *(v19 + 2919) = 1;
        }

        v8 = v67;
        if ((*(v19 + 3224) & 0x80000000) == 0)
        {
          *(v19 + 2920) = 1;
        }

        if ((*(v19 + 3212) & 0x80000000) == 0)
        {
          *(v19 + 2824) = 1;
        }

        if ((*(v19 + 3168) & 0x80000000) == 0)
        {
          *(v19 + 2813) = 1;
        }

        if ((*(v19 + 3172) & 0x80000000) == 0)
        {
          *(v19 + 2814) = 1;
        }

        if ((*(v19 + 3176) & 0x80000000) == 0)
        {
          *(v19 + 2815) = 1;
        }

        if ((*(v19 + 3180) & 0x80000000) == 0)
        {
          *(v19 + 2816) = 1;
        }

        if ((*(v19 + 3184) & 0x80000000) == 0)
        {
          *(v19 + 2817) = 1;
        }

        if ((*(v19 + 3188) & 0x80000000) == 0)
        {
          *(v19 + 2818) = 1;
        }

        if ((*(v19 + 3192) & 0x80000000) == 0)
        {
          *(v19 + 2819) = 1;
          *(v19 + 2825) = 1;
        }

        if ((*(v19 + 3196) & 0x80000000) == 0)
        {
          *(v19 + 2820) = 1;
        }

        if ((*(v19 + 3200) & 0x80000000) == 0)
        {
          *(v19 + 2821) = 1;
        }

        if ((*(v19 + 3204) & 0x80000000) == 0)
        {
          *(v19 + 2822) = 1;
        }

        *(v19 + 2804) = -1;
        *(v19 + 2799) = -1;
        if (*(v19 + 2684))
        {
          *(v19 + 2958) = 257;
        }

        if (*(v19 + 2516))
        {
          *(v19 + 2803) = 1;
        }

        if ((*(v19 + 3104) & 0x80000000) == 0)
        {
          *(v19 + 2779) = 257;
          if ((*(v19 + 3208) & 0x80000000) == 0)
          {
            *(v19 + 2823) = 1;
          }
        }

        if ((*(v19 + 3120) & 0x80000000) == 0)
        {
          *(v19 + 2781) = 1;
        }

        if ((*(v19 + 3068) & 0x80000000) == 0)
        {
          *(v19 + 2773) = 257;
          v57 = *(v19 + 2736) != 0;
          *(v19 + 2960) = v57;
          *(v19 + 2961) = v57;
        }

        *(v19 + 2964) = *(v19 + 3324) >= 0;
        *(v19 + 2965) = *(v19 + 3328) >= 0;
        if ((*(v19 + 3392) & 0x80000000) == 0 || (*(v19 + 3396) & 0x80000000) == 0)
        {
          *(v19 + 2772) = 8;
        }

        if ((*(v19 + 3072) & 0x80000000) == 0)
        {
          *(v19 + 2775) = 257;
          v58 = *(v19 + 2740) != 0;
          *(v19 + 2962) = v58;
          *(v19 + 2963) = v58;
        }

        v10 = 0;
        if (*(v19 + 2560))
        {
          *(v19 + 2794) = 9;
        }

        goto LABEL_121;
      }
    }

    v39 = 0;
    v40 = *v38;
    v71 = *v37;
    v69 = v33;
    v68 = *v38;
LABEL_32:
    v41 = uselect_AddGenericContextRule(__dst, v19, &v103);
    if ((v41 & 0x80000000) != 0 || (v42 = v103, v41 = uselect_AddGCRAction(__dst, v103, &v101), (v41 & 0x80000000) != 0))
    {
LABEL_113:
      v10 = v41;
      goto LABEL_118;
    }

    v43 = v101;
    *v101 = v33;
    v44 = v39 * v71;
    v45 = v39 * v71 + v71;
    *(v43 + 4) = *(v40 + v45 - 2);
    v46 = *(v40 + v45 - 1);
    v43[2] = v46;
    if (v33 != 4)
    {
      if (v46)
      {
        if (v46 == 1)
        {
          v47 = 0;
        }

        else
        {
          v47 = 10 * v46;
        }
      }

      else
      {
        v47 = 10;
      }

      v43[2] = v47;
    }

    v72 = v39;
    v48 = 0;
    if (*(v19 + 3092) < 0)
    {
      v49 = 4;
    }

    else
    {
      v49 = 6;
    }

    v50 = v40 + v44;
    while (1)
    {
      cstdlib_memset(__s1, 0, 0x20uLL);
      if ((v48 & 0x7FFFFFFE) == 4)
      {
        if (**(v19 + 2464))
        {
          v51 = 0;
          v52 = 1;
          do
          {
            if (cstdlib_strchr(*(*(v19 + 3432) + 8 * *(v50 + v48)), v51 + 48))
            {
              __s1[v51 >> 3] |= 1 << (v51 & 7);
            }

            else
            {
              v52 = 0;
            }

            ++v51;
          }

          while (*(*(v19 + 2464) + 8 * v51));
          goto LABEL_59;
        }
      }

      else
      {
        v53 = *(v19 + 602);
        if (v53)
        {
          v52 = 1;
          v54 = (v19 + 603);
          do
          {
            if (cstdlib_strchr(*(*(v19 + 3424) + 8 * *(v50 + v48)), v53))
            {
              __s1[*(v54 - 1) >> 3] |= 1 << (*(v54 - 1) & 7);
            }

            else
            {
              v52 = 0;
            }

            v55 = *v54++;
            v53 = v55;
          }

          while (v55);
LABEL_59:
          if (!v52)
          {
            v41 = uselect_AddGCRCondition(__dst, v42, &v102);
            if ((v41 & 0x80000000) != 0)
            {
              goto LABEL_113;
            }

            v56 = v102;
            *v102 = 0;
            cstdlib_memcpy(v56 + 3, __s1, 0x20uLL);
            v56[1] = 0x1D1D02020202uLL >> (8 * v48);
            v56[2] = 0x10002FF0100uLL >> (8 * v48);
          }
        }
      }

      if (++v48 == v49)
      {
        v39 = v72 + 1;
        v33 = v69;
        v40 = v68;
        if (v72 + 1 == v70)
        {
          goto LABEL_64;
        }

        goto LABEL_32;
      }
    }
  }

  v10 = v21;
  cstdlib_strcpy(__s1, "");
  if (__b[0])
  {
    v64 = 0;
    v65 = __b;
    do
    {
      cstdlib_strcat(__s1, "/");
      cstdlib_strcat(__s1, v65);
      v65 = &__b[5 * ++v64];
    }

    while (*v65);
  }

  log_OutPublic(v74, "USELECT", 19000, "%s%s%s%s%s%x", v60, v61, v62, v63, "file");
LABEL_118:
  v8 = v67;
LABEL_121:
  if (v100)
  {
    ssftriff_reader_ObjClose(v100, v12, v13, v14, v15, v16, v17, v18);
    v100 = 0;
  }

  if ((v10 & 0x80000000) != 0)
  {
    if ((v10 & 0x1FFF) == 0xA)
    {
      log_OutPublic(v74, "USELECT", 19000, 0, v15, v16, v17, v18, v66);
    }

    uselect_VoiceClose(v8, a2, v19);
    v19 = 0;
  }

  *(a4 + 32) = v19;
  return v10;
}

uint64_t uselect_VoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v47 = 0;
  if (!a3)
  {
    return 0;
  }

  inited = InitRsrcFunction(a1, a2, &v47);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 28232);
    if (v5)
    {
      heap_Free(v47[1], v5);
    }

    v6 = *(a3 + 28160);
    if (v6)
    {
      heap_Free(v47[1], v6);
    }

    v7 = *(a3 + 3512);
    if (v7)
    {
      heap_Free(v47[1], v7);
      *(a3 + 3512) = 0;
    }

    v8 = *(a3 + 3448);
    if (v8)
    {
      heap_Free(v47[1], v8);
      *(a3 + 3448) = 0;
    }

    v9 = *(a3 + 3480);
    if (v9)
    {
      heap_Free(v47[1], v9);
      *(a3 + 3480) = 0;
    }

    v10 = *(a3 + 3496);
    if (v10)
    {
      heap_Free(v47[1], v10);
      *(a3 + 3496) = 0;
    }

    v11 = *(a3 + 3520);
    if (v11)
    {
      v12 = v47;
      do
      {
        v13 = v11;
        v11 = v11[2];
        v14 = *v13;
        if (*v13)
        {
          do
          {
            v15 = *(v14 + 40);
            heap_Free(v12[1], v14);
            v14 = v15;
          }

          while (v15);
          v13 = *(a3 + 3520);
        }

        v16 = v13[1];
        if (v16)
        {
          do
          {
            v17 = *(v16 + 16);
            heap_Free(v12[1], v16);
            v16 = v17;
          }

          while (v17);
          v13 = *(a3 + 3520);
        }

        heap_Free(v12[1], v13);
        *(a3 + 3520) = v11;
      }

      while (v11);
    }

    v18 = *(a3 + 3416);
    if (v18)
    {
      v19 = *(a3 + 3408);
      if (v19)
      {
        do
        {
          *(a3 + 3408) = --v19;
          v20 = *(a3 + 3416);
          v21 = v20 + 24 * v19;
          v24 = *(v21 + 8);
          v23 = (v21 + 8);
          v22 = v24;
          if (v24)
          {
            heap_Free(v47[1], v22);
            *v23 = 0;
            v20 = *(a3 + 3416);
            v19 = *(a3 + 3408);
          }

          v25 = *(v20 + 24 * v19 + 16);
          if (v25)
          {
            heap_Free(v47[1], v25);
            v19 = *(a3 + 3408);
          }
        }

        while (v19);
        v18 = *(a3 + 3416);
      }

      heap_Free(v47[1], v18);
    }

    v26 = v47;
    v27 = *(a3 + 3336);
    if (v27)
    {
      v28 = *v27;
      if (*v27)
      {
        v29 = 0;
        do
        {
          heap_Free(v26[1], v28);
          ++v29;
          v27 = *(a3 + 3336);
          v28 = v27[v29];
        }

        while (v28);
      }

      heap_Free(v26[1], v27);
      *(a3 + 3336) = 0;
    }

    v30 = *(a3 + 3344);
    if (v30)
    {
      v31 = *v30;
      if (*v30)
      {
        v32 = 0;
        v33 = 0;
        do
        {
          v34 = *v31;
          if (*v31)
          {
            v35 = 0;
            do
            {
              heap_Free(v26[1], v34);
              ++v35;
              v31 = *(*(a3 + 3344) + 8 * v32);
              v34 = v31[v35];
            }

            while (v34);
          }

          heap_Free(v26[1], v31);
          ++v33;
          v30 = *(a3 + 3344);
          v32 = v33;
          v31 = v30[v33];
        }

        while (v31);
      }

      heap_Free(v26[1], v30);
      *(a3 + 3344) = 0;
    }

    v36 = *(a3 + 3352);
    if (v36)
    {
      v37 = *v36;
      if (*v36)
      {
        v38 = 0;
        do
        {
          heap_Free(v26[1], v37);
          ++v38;
          v36 = *(a3 + 3352);
          v37 = v36[v38];
        }

        while (v37);
      }

      heap_Free(v26[1], v36);
      *(a3 + 3352) = 0;
    }

    uselect_FreeRiffStringTable(v47, *(a3 + 3432));
    uselect_FreeRiffStringTable(v47, *(a3 + 3424));
    uselect_FreeRiffStringTable(v47, *(a3 + 2464));
    uselect_FreeRiffStringTable(v47, *(a3 + 28248));
    uselect_FreeRiffStringTable(v47, *(a3 + 28240));
    uselect_FreeRiffStringTable(v47, *(a3 + 28264));
    uselect_FreeRiffStringTable(v47, *(a3 + 28256));
    v39 = *(a3 + 2968);
    if (v39)
    {
      heap_Free(v47[1], v39);
    }

    v40 = *(a3 + 3368);
    if (v40)
    {
      heap_Free(v47[1], v40);
    }

    if (*(a3 + 600))
    {
      v41 = 0;
      do
      {
        ssftriff_reader_ReleaseChunkData(*(a3 + 408 + 8 * v41++));
      }

      while (v41 < *(a3 + 600));
    }

    *(a3 + 600) = 0;
    v42 = v47;
    v43 = *(a3 + 3552);
    if (v43)
    {
      v44 = *(v43 + 152);
      if (v44)
      {
        heap_Free(v47[1], v44);
      }

      if (*(v43 + 104))
      {
        v45 = 0;
        do
        {
          ssftriff_reader_ReleaseChunkData(*(v43 + 8 + 8 * v45++));
        }

        while (v45 < *(v43 + 104));
      }

      heap_Free(v42[1], v43);
      v42 = v47;
    }

    *(a3 + 3552) = 0;
    heap_Free(v42[1], a3);
  }

  return inited;
}

uint64_t uselect_CheckForDataFile(_WORD *a1, uint64_t a2, const char *a3, _DWORD *a4)
{
  v15 = 0;
  *a4 = 0;
  v12 = ssftriff_reader_ObjOpen(a1, a2, 2, a3, "USEL", 1031, &v15);
  v13 = v15;
  if ((v12 & 0x80000000) == 0 && v15)
  {
    *a4 = 1;
LABEL_5:
    ssftriff_reader_ObjClose(v13, v5, v6, v7, v8, v9, v10, v11);
    return v12;
  }

  if (v15)
  {
    goto LABEL_5;
  }

  return v12;
}

uint64_t uselect_ParseRiff(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v149 = 0;
  v143 = 0;
  v155 = 0;
  v169 = *MEMORY[0x277D85DE8];
  __n = 0;
  v165 = 0;
  *__src = 0;
  v158 = 5 * a4;
  v150 = a3 + 3376;
  v151 = a3 + 3048;
  v146 = (a3 + 3024);
  v147 = (a3 + 3032);
  v148 = (a3 + 3016);
  v141 = (a3 + 3000);
  v142 = (a3 + 3040);
  v139 = (a3 + 2984);
  v140 = (a3 + 2992);
  v144 = (a3 + 2976);
  v145 = (a3 + 3008);
  v156 = a3 + 2144;
  __s = (a3 + 602);
  v154 = a3 + 3584 + 192 * a8;
  v152 = a3 + 408;
  __dst = (a3 + 140);
  v159 = (a3 + 64);
  while (1)
  {
    v163 = 1;
    LODWORD(v14) = ssftriff_reader_OpenChunk(a2, __src, &__n, 0);
    if ((v14 & 0x80000000) != 0)
    {
      break;
    }

    cstdlib_strcpy(&a5[v158], __src);
    if (a4 == 1)
    {
      if (cstdlib_strcmp(a5, "VCAT"))
      {
        if (!cstdlib_strcmp(a5, "PREF") && !cstdlib_strcmp(__src, "FEAT"))
        {
          *__s1 = 0;
          if (a6)
          {
            v73 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v27);
            if ((v79 & 0x80000000) != 0)
            {
              return v79;
            }

            v73 = *__s1;
          }

          v83 = *v73;
          *__s1 = v73 + 1;
          if (v83 >= 0x47)
          {
LABEL_342:
            v14 = 2229280772;
            log_OutPublic(a1[4], "USELECT", 19008, 0, v52, v53, v54, v55, v138);
            return v14;
          }

          *(v151 + 4 * v83) = v155;
          v84 = *(a3 + 2968) + 32 * v155;
          *v84 = v83;
          *(v84 + 8) = v73[1];
          *(v84 + 4) = *(v73 + 1);
          *(v84 + 10) = *(v73 + 8) + 1;
          *(v84 + 11) = *(v73 + 9);
          *(v84 + 12) = *(v73 + 10);
          *(v84 + 13) = *(v73 + 11);
          *__s1 = v73 + 6;
          LODWORD(v14) = uselect_InitForPreselDistFunc(v84);
          v85 = *(a3 + 2968) + 32 * v155;
          *(v85 + 25) = v155;
          v86 = *v85;
          if (*v85 <= 9)
          {
            if (v86 > 4)
            {
              v87 = v145;
              if (v86 == 5)
              {
                goto LABEL_258;
              }

              v87 = v140;
              if (v86 == 7)
              {
                goto LABEL_258;
              }
            }

            else
            {
              v87 = v144;
              if (v86 == 1)
              {
                goto LABEL_258;
              }

              v87 = v139;
              if (v86 == 2)
              {
                goto LABEL_258;
              }
            }
          }

          else
          {
            if (v86 > 13)
            {
              v87 = v148;
              if (v86 != 14)
              {
                v87 = v147;
                if (v86 != 26)
                {
                  v87 = v142;
                  if (v86 != 27)
                  {
                    goto LABEL_259;
                  }
                }
              }

LABEL_258:
              *v87 = v85;
              goto LABEL_259;
            }

            v87 = v146;
            if (v86 == 10)
            {
              goto LABEL_258;
            }

            v87 = v141;
            if (v86 == 11)
            {
              goto LABEL_258;
            }
          }

LABEL_259:
          v102 = v155;
LABEL_260:
          ++v102;
          goto LABEL_261;
        }

        if (!cstdlib_strcmp(a5, "TRAF") && !cstdlib_strcmp(__src, "FEAT"))
        {
          *__s1 = 0;
          if (a6)
          {
            v77 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v28);
            v14 = v89;
            if ((v89 & 0x80000000) != 0)
            {
              return v14;
            }

            v77 = *__s1;
          }

          v90 = *v77;
          *__s1 = v77 + 1;
          if (v90 >= 8)
          {
            goto LABEL_342;
          }

          if (v90 == 1)
          {
            v91 = 0;
          }

          else
          {
            if (v90 != 3)
            {
              if (v155 == 2)
              {
                v103 = 3;
              }

              else
              {
                v103 = v155;
              }

              *(v150 + 4 * v90) = v103;
              v104 = *(a3 + 3368) + 12 * v103;
              *v104 = v90;
              v106 = *(v77 + 1);
              v105 = v77 + 2;
              *(v104 + 8) = *(v105 - 1);
              *__s1 = v105;
              v102 = v103;
              *(v104 + 4) = v106;
              goto LABEL_260;
            }

            v91 = 2;
          }

          *(v150 + 4 * v90) = v91;
          v99 = *(a3 + 3368) + 12 * v91;
          *v99 = v90;
          v101 = *(v77 + 1);
          v100 = v77 + 2;
          *(v99 + 8) = *(v100 - 1);
          *__s1 = v100;
          *(v99 + 4) = v101;
          v102 = v155;
          if (v91 == v155)
          {
            goto LABEL_260;
          }

LABEL_261:
          v155 = v102;
          goto LABEL_296;
        }

        if (cstdlib_strcmp(a5, "FUZZ") || cstdlib_strcmp(__src, "FTBL"))
        {
          if (cstdlib_strcmp(a5, "FUZZ") || cstdlib_strcmp(__src, "FTBA"))
          {
            if (cstdlib_strcmp(a5, "PCAR"))
            {
              if (cstdlib_strcmp(a5, "DCAR"))
              {
                if (cstdlib_strcmp(a5, "CCOS") || cstdlib_strcmp(__src, "CTXT"))
                {
                  if (cstdlib_strcmp(a5, "STDI") && cstdlib_strcmp(a5, "STSS"))
                  {
LABEL_43:
                    v163 = 0;
LABEL_297:
                    cstdlib_strcpy(__s1, "");
                    v117 = 0;
                    do
                    {
                      cstdlib_strcat(__s1, "/");
                      cstdlib_strcat(__s1, &a5[5 * v117++]);
                    }

                    while (a4 >= v117);
                    log_OutText(a1[4], "USELECT", 3, 0, "Unknown data: %s for %s", v118, v119, v120, __s1);
                    goto LABEL_300;
                  }

                  *__s1 = 0;
                  if (a6)
                  {
                    *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
                  }

                  else
                  {
                    ssftriff_reader_GetChunkData(a2, __n, __s1, v33);
                    v14 = v92;
                    if ((v92 & 0x80000000) != 0)
                    {
                      return v14;
                    }
                  }

                  if (cstdlib_strcmp(__src, "STVI"))
                  {
                    if (!cstdlib_strcmp(__src, "STVA"))
                    {
                      if (cstdlib_strcmp(a5, "STDI"))
                      {
                        *(a3 + 3544) = *__s1;
                      }

                      else
                      {
                        *(a3 + 3536) = *__s1;
                      }
                    }
                  }

                  else
                  {
                    *(a3 + 3528) = *__s1;
                  }
                }

                else
                {
                  LODWORD(v14) = uselect_ParseRiff(a1, a2, a3, 2, a5, a6, a7, v149++);
                }
              }

              else
              {
                *__s1 = 0;
                if (a6)
                {
                  *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
                }

                else
                {
                  ssftriff_reader_GetChunkData(a2, __n, __s1, v32);
                  v14 = v88;
                  if ((v88 & 0x80000000) != 0)
                  {
                    return v14;
                  }
                }

                if (cstdlib_strcmp(__src, "CAQF"))
                {
                  if (cstdlib_strcmp(__src, "CAQI"))
                  {
                    if (cstdlib_strcmp(__src, "CAQV"))
                    {
                      if (!cstdlib_strcmp(__src, "CATN"))
                      {
                        *(*(a3 + 28232) + 8 * v143++) = *__s1;
                      }
                    }

                    else
                    {
                      *(a3 + 28224) = *__s1;
                    }
                  }

                  else
                  {
                    *(a3 + 28216) = *__s1;
                  }
                }

                else
                {
                  *(a3 + 28208) = *__s1;
                }
              }
            }

            else
            {
              *__s1 = 0;
              if (a6)
              {
                *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
              }

              else
              {
                ssftriff_reader_GetChunkData(a2, __n, __s1, v31);
                v14 = v81;
                if ((v81 & 0x80000000) != 0)
                {
                  return v14;
                }
              }

              if (cstdlib_strcmp(__src, "CAQF"))
              {
                if (cstdlib_strcmp(__src, "CAQI"))
                {
                  if (cstdlib_strcmp(__src, "CAQV"))
                  {
                    if (!cstdlib_strcmp(__src, "CATN"))
                    {
                      *(a3 + 28200) = *__s1;
                    }
                  }

                  else
                  {
                    *(a3 + 28192) = *__s1;
                  }
                }

                else
                {
                  *(a3 + 28184) = *__s1;
                }
              }

              else
              {
                *(a3 + 28176) = *__s1;
              }
            }
          }

          else
          {
            *__s1 = 0;
            if (a6)
            {
              *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
            }

            else
            {
              ssftriff_reader_GetChunkData(a2, __n, __s1, v30);
              v14 = v108;
              if ((v108 & 0x80000000) != 0)
              {
                return v14;
              }
            }

            if (!*(a3 + 3408))
            {
              goto LABEL_342;
            }

            v109 = heap_Calloc(a1[1], 1, __n);
            *(*(a3 + 3416) + 24 * *(a3 + 3408) - 8) = v109;
            if (v109)
            {
              cstdlib_memmove(v109, *__s1, __n);
            }

            else
            {
              LODWORD(v14) = -2065686518;
            }
          }
        }

        else
        {
          *__s1 = 0;
          if (a6)
          {
            v78 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
            *__s1 = v78;
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v29);
            if ((v79 & 0x80000000) != 0)
            {
              return v79;
            }

            v78 = *__s1;
          }

          LODWORD(v14) = -2065686524;
          v93 = __n;
          v94 = (*(a3 + 3416) + 24 * *(a3 + 3408));
          v95 = *v78;
          *v94 = v95;
          v96 = v78[1];
          v94[1] = v96;
          v97 = 2 * v95 * v96;
          if (v97 + 4 <= v93)
          {
            v98 = heap_Alloc(a1[1], v97);
            *(v94 + 1) = v98;
            if (v98)
            {
              cstdlib_memcpy(v98, v78 + 2, 2 * *v94 * v94[1]);
              LODWORD(v14) = 0;
            }

            else
            {
              LODWORD(v14) = -2065686518;
            }
          }

          ++*(a3 + 3408);
        }
      }

      else
      {
        *__s1 = 0;
        if (a6)
        {
          *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a2, __n, __s1, v26);
          v14 = v45;
          if ((v45 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        if (cstdlib_strcmp(__src, "ALPH"))
        {
          if (cstdlib_strcmp(__src, "VOIC"))
          {
            if (cstdlib_strcmp(__src, "COVO"))
            {
              if (cstdlib_strcmp(__src, "SAFE"))
              {
                if (cstdlib_strcmp(__src, "PLOS"))
                {
                  if (cstdlib_strcmp(__src, "SONO"))
                  {
                    if (cstdlib_strcmp(__src, "DIFF"))
                    {
                      if (cstdlib_strcmp(__src, "TAGA"))
                      {
                        if (cstdlib_strcmp(__src, "1BSL"))
                        {
                          if (cstdlib_strcmp(__src, "1BSR"))
                          {
                            if (cstdlib_strcmp(__src, "2BSL"))
                            {
                              if (cstdlib_strcmp(__src, "2BSR"))
                              {
                                v163 = 0;
                                goto LABEL_296;
                              }

                              v123 = *__s1;
                              v124 = __n;
                              v128 = 28264;
                            }

                            else
                            {
                              v123 = *__s1;
                              v124 = __n;
                              v128 = 28256;
                            }
                          }

                          else
                          {
                            v123 = *__s1;
                            v124 = __n;
                            v128 = 28248;
                          }
                        }

                        else
                        {
                          v123 = *__s1;
                          v124 = __n;
                          v128 = 28240;
                        }

                        v125 = (a3 + v128);
                      }

                      else
                      {
                        v123 = *__s1;
                        v124 = __n;
                        v125 = (a3 + 2464);
                      }

                      RiffStringTable = uselect_LoadRiffStringTable(a1, a2, v123, v124, v125);
                      goto LABEL_295;
                    }

                    __n_4[0] = 64;
                    v74 = *__s1;
                    v75 = __n;
                    v76 = (a3 + 2400);
                  }

                  else
                  {
                    __n_4[0] = 257;
                    v74 = *__s1;
                    v75 = __n;
                    v76 = (a3 + 1887);
                  }
                }

                else
                {
                  __n_4[0] = 257;
                  v74 = *__s1;
                  v75 = __n;
                  v76 = (a3 + 1373);
                }
              }

              else
              {
                __n_4[0] = 257;
                v74 = *__s1;
                v75 = __n;
                v76 = (a3 + 1630);
              }
            }

            else
            {
              __n_4[0] = 257;
              v74 = *__s1;
              v75 = __n;
              v76 = (a3 + 1116);
            }
          }

          else
          {
            __n_4[0] = 257;
            v74 = *__s1;
            v75 = __n;
            v76 = (a3 + 859);
          }

          RiffStringTable = ssftriff_reader_ReadStringZ(a2, v74, v75, 0, v76, __n_4);
LABEL_295:
          LODWORD(v14) = RiffStringTable;
          goto LABEL_296;
        }

        __n_4[0] = 257;
        LODWORD(v14) = ssftriff_reader_ReadStringZ(a2, *__s1, __n, 0, __s, __n_4);
        if ((v14 & 0x80000000) == 0)
        {
          *(a3 + 2496) = 255;
          if (cstdlib_strlen(__s))
          {
            v47 = 0;
            v48 = 0;
            do
            {
              v49 = __s[v47];
              if (v49 < *(a3 + 2496))
              {
                *(a3 + 2496) = v49;
                v49 = __s[v47];
              }

              if (v49 > *(a3 + 2497))
              {
                *(a3 + 2497) = v49;
                v49 = __s[v47];
              }

              *(v156 + v49) = v48;
              v47 = (v48 + 1);
              v50 = cstdlib_strlen(__s);
              v48 = v47;
            }

            while (v50 > v47);
          }

          v51 = *(a3 + 2497) - *(a3 + 2496);
          *(a3 + 3576) = v51 + 2;
          *(a3 + 3577) = v51 + 1;
        }
      }
    }

    else
    {
      if (a4)
      {
        if (cstdlib_strcmp(a5 + 5, "CTXT"))
        {
          goto LABEL_43;
        }

        *__s1 = 0;
        if (cstdlib_strcmp(__src, "L LL"))
        {
          if (!cstdlib_strcmp(__src, "L L "))
          {
            v34 = 0;
            v46 = 0;
            goto LABEL_268;
          }

          if (!cstdlib_strcmp(__src, "L R "))
          {
            v34 = 0;
            goto LABEL_146;
          }

          if (!cstdlib_strcmp(__src, "L RR"))
          {
            v34 = 0;
LABEL_183:
            v46 = 3;
            goto LABEL_268;
          }

          if (cstdlib_strcmp(__src, "R LL"))
          {
            if (cstdlib_strcmp(__src, "R L "))
            {
              if (cstdlib_strcmp(__src, "R R "))
              {
                if (!cstdlib_strcmp(__src, "R RR"))
                {
                  v34 = 1;
                  goto LABEL_183;
                }

LABEL_279:
                if ((v14 & 0x1FFF) == 0x14)
                {
                  LODWORD(v14) = 0;
                }

                goto LABEL_296;
              }

              v34 = 1;
LABEL_146:
              v46 = 1;
            }

            else
            {
              v46 = 0;
              v34 = 1;
            }

LABEL_268:
            SubChunkInfo = uselect_GetSubChunkInfo(a2, a6, a7, __src, &__n, __s1);
            if (SubChunkInfo < 0)
            {
              LODWORD(v14) = SubChunkInfo;
            }

            else
            {
              v112 = (v154 + 96 * v34 + 24 * v46);
              do
              {
                if (cstdlib_strcmp(__src, "TABL"))
                {
                  if (cstdlib_strcmp(__src, "IDX "))
                  {
                    if (!cstdlib_strcmp(__src, "IDX2"))
                    {
                      v112[2] = *__s1;
                    }
                  }

                  else
                  {
                    v112[1] = *__s1;
                  }
                }

                else
                {
                  *v112 = *__s1;
                }

                v113 = uselect_GetSubChunkInfo(a2, a6, a7, __src, &__n, __s1);
              }

              while ((v113 & 0x80000000) == 0);
              LODWORD(v14) = v113;
            }

            goto LABEL_279;
          }

          v34 = 1;
        }

        else
        {
          v34 = 0;
        }

        v46 = 2;
        goto LABEL_268;
      }

      if (!cstdlib_strcmp(__src, "VINF"))
      {
        v162 = 0;
        *v161 = 0;
        if (a6)
        {
          *v161 = a6 + ssftriff_reader_GetPosition(a2) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a2, __n, v161, v15);
          v14 = v35;
          if ((v35 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        v36 = __n;
        if (__n)
        {
          v37 = 0;
          do
          {
            LOBYTE(__n_4[0]) = 0;
            __s1[0] = 0;
            v162 = 256;
            LODWORD(v14) = ssftriff_reader_ReadStringZ(a2, *v161, v36, v37, __s1, &v162);
            if ((v14 & 0x80000000) == 0 && v37 < __n)
            {
              v37 += v162;
              v162 = 256;
              LODWORD(v14) = ssftriff_reader_ReadStringZ(a2, *v161, __n, v37, __n_4, &v162);
            }

            if ((v14 & 0x80000000) != 0)
            {
              break;
            }

            v38 = v162;
            v39 = cstdlib_strcmp(__s1, "Version");
            v40 = v159;
            if (v39)
            {
              v44 = cstdlib_strcmp(__s1, "ReductionVersion");
              v40 = __dst;
              if (v44)
              {
                continue;
              }
            }

            cstdlib_strcpy(v40, __n_4);
            v37 += v38;
            log_OutText(a1[4], "USELECT", 3, 0, "Voice attribute %s=%s", v41, v42, v43, __s1);
            v36 = __n;
          }

          while (v37 < __n);
        }

        goto LABEL_296;
      }

      if (!cstdlib_strcmp(__src, "STAT"))
      {
        v162 = 0;
        *v161 = 0;
        if (a6)
        {
          *v161 = a6 + ssftriff_reader_GetPosition(a2) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a2, __n, v161, v16);
          v14 = v62;
          if ((v62 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        v63 = __n;
        if (__n)
        {
          v64 = 0;
          do
          {
            LOBYTE(__n_4[0]) = 0;
            __s1[0] = 0;
            v162 = 64;
            LODWORD(v14) = ssftriff_reader_ReadStringZ(a2, *v161, v63, v64, __s1, &v162);
            if ((v14 & 0x80000000) == 0 && v64 < __n)
            {
              v64 += v162;
              v162 = 64;
              LODWORD(v14) = ssftriff_reader_ReadStringZ(a2, *v161, __n, v64, __n_4, &v162);
            }

            if ((v14 & 0x80000000) != 0)
            {
              break;
            }

            v65 = v162;
            if (cstdlib_strcmp(__s1, "p95:pitch"))
            {
              if (!cstdlib_strcmp(__s1, "p95:logdur"))
              {
                v69 = cstdlib_atoi(__n_4);
                if (v69 >= 255)
                {
                  v70 = 255;
                }

                else
                {
                  v70 = v69;
                }

                *(a3 + 2498) = v70 & ~(v70 >> 31);
              }
            }

            else
            {
              v71 = cstdlib_atoi(__n_4);
              v72 = v71 >= 255 ? 255 : v71;
              *(a3 + 2499) = v72 & ~(v72 >> 31);
            }

            v64 += v65;
            log_OutText(a1[4], "USELECT", 3, 0, "Statistics %s=%s", v66, v67, v68, __s1);
            v63 = __n;
          }

          while (v64 < __n);
        }

        goto LABEL_296;
      }

      if (!cstdlib_strcmp(__src, "VCAT"))
      {
        if (a6)
        {
          ssftriff_reader_GetPosition(a2);
        }

        else
        {
          *__s1 = 0;
          ssftriff_reader_GetChunkData(a2, __n, __s1, v17);
          if ((v79 & 0x80000000) != 0)
          {
            return v79;
          }
        }

        v80 = a1;
        goto LABEL_144;
      }

      if (!cstdlib_strcmp(__src, "VBOP"))
      {
        *__s1 = 0;
        __n_4[0] = 0;
        if (a6)
        {
          *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
        }

        else
        {
          ssftriff_reader_GetChunkData(a2, __n, __s1, v18);
          v14 = v82;
          if ((v82 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        if (__n >= 0xF9)
        {
          goto LABEL_342;
        }

        cstdlib_memcpy((a3 + 2500), *__s1, __n);
        if ((paramc_ParamGetUInt(a1[5], "uselectmaxcandspruning", __n_4) & 0x80000000) == 0 && __n_4[0])
        {
          *(a3 + 2552) = __n_4[0];
        }

        if (__n <= 0x8F)
        {
          *(a3 + 2640) = 400000;
          goto LABEL_163;
        }

        if (__n <= 0xC3)
        {
LABEL_163:
          *(a3 + 2692) = 0;
          goto LABEL_164;
        }

        if (__n <= 0xC7)
        {
LABEL_164:
          *(a3 + 2696) = 0;
        }

        else if (__n > 0xCB)
        {
          if (__n > 0xCF)
          {
            if (__n > 0xD3)
            {
              if (__n > 0xD7)
              {
                if (__n > 0xDB)
                {
                  if (__n > 0xDF)
                  {
                    if (__n > 0xE3)
                    {
                      if (__n > 0xE7)
                      {
                        if (__n > 0xEB)
                        {
                          if (__n > 0xEF)
                          {
                            if (__n > 0xF3)
                            {
                              if (__n > 0xF7)
                              {
                                goto LABEL_177;
                              }

                              goto LABEL_176;
                            }

LABEL_175:
                            *(a3 + 2740) = 0;
LABEL_176:
                            *(a3 + 2744) = 0;
LABEL_177:
                            if (!*(a3 + 2672) && !*(a3 + 2676) && !*(a3 + 2664) && !*(a3 + 2652))
                            {
                              *(a3 + 2672) = -1;
                            }

                            goto LABEL_296;
                          }

LABEL_174:
                          *(a3 + 2736) = 0;
                          goto LABEL_175;
                        }

LABEL_173:
                        *(a3 + 2732) = 0;
                        goto LABEL_174;
                      }

LABEL_172:
                      *(a3 + 2728) = 2;
                      goto LABEL_173;
                    }

LABEL_171:
                    *(a3 + 2724) = 1;
                    goto LABEL_172;
                  }

LABEL_170:
                  *(a3 + 2720) = 5;
                  goto LABEL_171;
                }

LABEL_169:
                *(a3 + 2716) = 2;
                goto LABEL_170;
              }

LABEL_168:
              *(a3 + 2712) = 0;
              goto LABEL_169;
            }

LABEL_167:
            *(a3 + 2708) = 5;
            goto LABEL_168;
          }

LABEL_166:
          *(a3 + 2704) = 1;
          goto LABEL_167;
        }

        *(a3 + 2700) = 0;
        goto LABEL_166;
      }

      if (cstdlib_strcmp(__src, "TPMX") && cstdlib_strcmp(__src, "TPMN"))
      {
        if (!cstdlib_strcmp(__src, "PREF"))
        {
          *__s1 = 0;
          if (a6)
          {
            v107 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
            *__s1 = v107;
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v19);
            if ((v79 & 0x80000000) != 0)
            {
              return v79;
            }

            v107 = *__s1;
          }

          *(a3 + 2966) = *v107;
          ssftriff_reader_Seek(a2, 4u, 1);
          v115 = a1;
          v116 = heap_Calloc(a1[1], 32, *(a3 + 2966) + 1);
          *(a3 + 2968) = v116;
          if (!v116)
          {
            return 2229280778;
          }

          *(v116 + 32 * *(a3 + 2966)) = 0;
          goto LABEL_308;
        }

        if (!cstdlib_strcmp(__src, "TRAF"))
        {
          *__s1 = 0;
          if (a6)
          {
            v110 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
            *__s1 = v110;
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v20);
            if ((v79 & 0x80000000) != 0)
            {
              return v79;
            }

            v110 = *__s1;
          }

          *(a3 + 3360) = *v110;
          ssftriff_reader_Seek(a2, 4u, 1);
          v115 = a1;
          v122 = heap_Calloc(a1[1], 12, *(a3 + 3360));
          *(a3 + 3368) = v122;
          if (!v122)
          {
            return 2229280778;
          }

LABEL_308:
          v80 = v115;
LABEL_144:
          RiffStringTable = uselect_ParseRiff(v80, a2, a3, 1, a5, 0, 0, 0);
          goto LABEL_295;
        }

        if (cstdlib_strcmp(__src, "FUZZ"))
        {
          if (!cstdlib_strcmp(__src, "CTXR"))
          {
            RiffStringTable = uselect_ParseContextRules(a1, a2, a3);
            goto LABEL_295;
          }

          if (!cstdlib_strcmp(__src, "GCTR"))
          {
            RiffStringTable = uselect_ParseGenericContextRule(a1, a2, a3, __n, v22);
            goto LABEL_295;
          }

          if (!cstdlib_strcmp(__src, "GENF"))
          {
            RiffStringTable = uselect_ParseGenericFeatureMap(a1, a2, a3, __n, v23);
            goto LABEL_295;
          }

          if (!cstdlib_strcmp(__src, "PCAR"))
          {
            goto LABEL_318;
          }

          if (cstdlib_strcmp(__src, "DCAR"))
          {
            if (cstdlib_strcmp(__src, "PHIS"))
            {
              if (!cstdlib_strcmp(__src, "STDI") || !cstdlib_strcmp(__src, "STSS"))
              {
                goto LABEL_318;
              }

              if (cstdlib_strcmp(__src, "CDBK"))
              {
                if (cstdlib_strcmp(__src, "CCOS"))
                {
                  RiffStringTable = uselect_ParseVoicePartChunks(a1, a2, a3, __n, __src, &v163);
                  goto LABEL_295;
                }

LABEL_318:
                Position = ssftriff_reader_GetPosition(a2);
                *__s1 = 0;
                v79 = ssftriff_reader_DetachChunkData(a2, (v152 + 8 * *(a3 + 600)), __s1);
                if ((v79 & 0x80000000) != 0)
                {
                  return v79;
                }

                ++*(a3 + 600);
                LODWORD(v14) = uselect_ParseRiff(a1, a2, a3, 1, a5, *__s1, Position, 0);
                goto LABEL_296;
              }

              *__s1 = 0;
              v14 = ssftriff_reader_DetachChunkData(a2, (v152 + 8 * *(a3 + 600)), __s1);
              if ((v14 & 0x80000000) != 0)
              {
                return v14;
              }

              ++*(a3 + 600);
              v136 = *(a3 + 2608);
              if (!v136)
              {
                goto LABEL_336;
              }

              if (v136 != 256)
              {
                if (v136 != 128)
                {
                  return 2229280772;
                }

LABEL_336:
                *(a3 + 3560) = *__s1;
                goto LABEL_296;
              }

              *(a3 + 3568) = *__s1;
            }

            else
            {
              *__s1 = 0;
              if (a6)
              {
                *__s1 = a6 + ssftriff_reader_GetPosition(a2) - a7;
              }

              else
              {
                ssftriff_reader_GetChunkData(a2, __n, __s1, v24);
                v14 = v134;
                if ((v134 & 0x80000000) != 0)
                {
                  return v14;
                }
              }

              v135 = heap_Alloc(a1[1], __n);
              *(a3 + 28160) = v135;
              if (!v135)
              {
                return 2229280778;
              }

              cstdlib_memcpy(v135, *__s1, __n);
            }
          }

          else
          {
            v130 = ssftriff_reader_GetPosition(a2);
            *__s1 = 0;
            v79 = ssftriff_reader_DetachChunkData(a2, (v152 + 8 * *(a3 + 600)), __s1);
            if ((v79 & 0x80000000) != 0)
            {
              return v79;
            }

            ++*(a3 + 600);
            v131 = a1[1];
            v132 = cstdlib_strlen(__s);
            v133 = heap_Calloc(v131, v132, 8);
            *(a3 + 28232) = v133;
            if (!v133)
            {
              return 2229280778;
            }

            LODWORD(v14) = uselect_ParseRiff(a1, a2, a3, 1, a5, *__s1, v130, 0);
          }
        }

        else
        {
          *__s1 = 0;
          if (a6)
          {
            v114 = (a6 + ssftriff_reader_GetPosition(a2) - a7);
            *__s1 = v114;
          }

          else
          {
            ssftriff_reader_GetChunkData(a2, __n, __s1, v21);
            if ((v79 & 0x80000000) != 0)
            {
              return v79;
            }

            v114 = *__s1;
          }

          v126 = *v114;
          ssftriff_reader_Seek(a2, 4u, 1);
          v127 = heap_Calloc(a1[1], 24, (v126 + 2));
          *(a3 + 3416) = v127;
          if (!v127)
          {
            return 2229280778;
          }

          *(a3 + 3408) = 1;
          LODWORD(v14) = uselect_ParseRiff(a1, a2, a3, 1, a5, 0, 0, 0);
        }
      }

      else
      {
        *__s1 = 0;
        v14 = ssftriff_reader_DetachChunkData(a2, (v152 + 8 * *(a3 + 600)), __s1);
        if ((v14 & 0x80000000) != 0)
        {
          return v14;
        }

        ++*(a3 + 600);
        v56 = *(a3 + 2464);
        if (!v56)
        {
          goto LABEL_342;
        }

        v57 = 0;
        do
        {
          v58 = v57;
        }

        while (*(v56 + 8 * v57++));
        if (!v58 || (__n >> 2) != 2 * v58)
        {
          goto LABEL_342;
        }

        v60 = cstdlib_strcmp(__src, "TPMX");
        v61 = 2488;
        if (!v60)
        {
          v61 = 2480;
        }

        *(a3 + v61) = *__s1;
      }
    }

LABEL_296:
    if (!v163)
    {
      goto LABEL_297;
    }

LABEL_300:
    if ((v14 & 0x80000000) != 0)
    {
      break;
    }

    v121 = ssftriff_reader_CloseChunk(a2);
    if (v121 < 0)
    {
      LODWORD(v14) = v121;
      break;
    }
  }

  if ((v14 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t uselect_ParseContextRules(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v20 = 0;
  v19 = 0;
  *__s1 = 0;
  do
  {
    LODWORD(result) = ssftriff_reader_OpenChunk(a2, __s1, &v20, &v21);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (!cstdlib_strcmp(__s1, "RULF"))
    {
      v14 = v21;
      v15 = v20;
      v16 = (a3 + 3424);
      goto LABEL_12;
    }

    if (!cstdlib_strcmp(__s1, "RULT"))
    {
      v14 = v21;
      v15 = v20;
      v16 = (a3 + 3432);
LABEL_12:
      LODWORD(result) = uselect_LoadRiffStringTable(a1, a2, v14, v15, v16);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      goto LABEL_18;
    }

    if (cstdlib_strcmp(__s1, "FSWR"))
    {
      if (cstdlib_strcmp(__s1, "PREW"))
      {
        if (cstdlib_strcmp(__s1, "TRWD"))
        {
          if (cstdlib_strcmp(__s1, "TRWP"))
          {
            log_OutPublic(*(a1 + 32), "USELECT", 19008, 0, v7, v8, v9, v10, v17);
            LODWORD(result) = -2065686524;
            break;
          }

          v11 = v21;
          v12 = v20;
          v13 = (a3 + 3488);
        }

        else
        {
          v11 = v21;
          v12 = v20;
          v13 = (a3 + 3472);
        }
      }

      else
      {
        v11 = v21;
        v12 = v20;
        v13 = (a3 + 3440);
      }
    }

    else
    {
      v11 = v21;
      v12 = v20;
      v13 = (a3 + 3504);
    }

    LODWORD(result) = uselect_LoadRiffMatrix2D_U8(a1, v11, v12, v13);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

LABEL_18:
    LODWORD(result) = ssftriff_reader_CloseChunk(a2);
  }

  while ((result & 0x80000000) == 0);
  if ((result & 0x1FFF) == 0x14)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t uselect_ParseGenericContextRule(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, __n128 a5)
{
  v40 = a4;
  v39 = 0;
  v38 = 0;
  *__s1 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  ssftriff_reader_GetChunkData(a2, a4, &v39, a5);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  v8 = ssftriff_reader_Seek(a2, 4u, 1);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_32;
  }

  v13 = *v39;
  v39 += 4;
  if (!v13)
  {
    v8 = uselect_AddGenericContextRule(a1, a3, &v36);
    if ((v8 & 0x80000000) == 0)
    {
      v16 = v36;
      while (1)
      {
        v8 = ssftriff_reader_OpenChunk(a2, __s1, &v40, &v39);
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_32;
        }

        if (!cstdlib_strcmp(__s1, "GCRC"))
        {
          v8 = uselect_AddGCRCondition(a1, v16, &v35);
          if ((v8 & 0x80000000) != 0)
          {
            goto LABEL_32;
          }

          v23 = 0;
          v24 = v39;
          v25 = *v39;
          v26 = v35;
          *v35 = v25;
          v39 = v24 + 1;
          v27 = v24[1];
          v26[1] = v27;
          v39 = v24 + 2;
          v26[2] = v24[2];
          v28 = v24 + 3;
          v39 = v24 + 3;
          do
          {
            v26[v23 + 3] = *v28;
            v28 = ++v39;
            ++v23;
          }

          while (v23 != 32);
          if (!v25)
          {
            *(a3 + 2748 + v27) = 1;
          }

          goto LABEL_30;
        }

        if (cstdlib_strcmp(__s1, "GCRA"))
        {
          v14 = 19008;
          goto LABEL_5;
        }

        v8 = uselect_AddGCRAction(a1, v16, &v34);
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_32;
        }

        v17 = v39;
        v18 = *v39;
        v19 = v34;
        *v34 = v18;
        v39 = v17 + 1;
        v20 = v17[1];
        *(v19 + 4) = v20;
        if (v18 - 7 >= 2)
        {
          v21 = *(v17 + 1);
          v22 = 4;
        }

        else
        {
          v21 = *(v17 + 1);
          v22 = 8;
        }

        v19[2] = v21;
        v39 = &v17[v22];
        v14 = 19008;
        if (v18 > 8)
        {
          goto LABEL_5;
        }

        v29 = 1 << v18;
        if ((v29 & 0x72) != 0)
        {
          break;
        }

        if ((v29 & 0xC) != 0)
        {
          v30 = *(a3 + 3376 + 4 * v20);
          if (v30 < 0)
          {
            v14 = 19025;
            goto LABEL_5;
          }

          goto LABEL_29;
        }

        if ((v29 & 0x180) == 0)
        {
          goto LABEL_5;
        }

        if (v20 != 46)
        {
          v32 = 2229280772;
          log_OutPublic(*(a1 + 32), "USELECT", 19008, 0, v9, v10, v11, v12, v33);
          return v32;
        }

LABEL_30:
        v15 = ssftriff_reader_CloseChunk(a2);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_33;
        }
      }

      v30 = *(a3 + 3048 + 4 * v20);
      if (v30 < 0)
      {
        v14 = 19024;
        goto LABEL_5;
      }

LABEL_29:
      *(v19 + 4) = v30;
      goto LABEL_30;
    }

LABEL_32:
    v15 = v8;
    goto LABEL_33;
  }

  v14 = 19022;
LABEL_5:
  v15 = -2065686524;
  log_OutPublic(*(a1 + 32), "USELECT", v14, 0, v9, v10, v11, v12, v33);
LABEL_33:
  if ((v15 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t uselect_ParseGenericFeatureMap(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, __n128 a5)
{
  v30 = *MEMORY[0x277D85DE8];
  *v28 = 0;
  ssftriff_reader_GetChunkData(a2, a4, v28, a5);
  v9 = v8;
  if ((v8 & 0x80000000) == 0)
  {
    v10 = **v28;
    if (**v28)
    {
      v11 = heap_Calloc(*(a1 + 8), v10 + 1, 8);
      a3[417] = v11;
      if (v11)
      {
        v12 = heap_Calloc(*(a1 + 8), v10 + 1, 8);
        a3[418] = v12;
        if (v12)
        {
          v13 = heap_Calloc(*(a1 + 8), v10 + 1, 8);
          a3[419] = v13;
          if (v13)
          {
            v14 = 0;
            v15 = 2;
            v25 = v10;
            while (1)
            {
              __dst[0] = 0;
              v27 = 256;
              v9 = ssftriff_reader_ReadStringZ(a2, *v28, a4, v15, __dst, &v27);
              v16 = v27;
              *(a3[417] + 8 * v14) = uselect_strdup(a1, __dst);
              if (!*(a3[417] + 8 * v14))
              {
                break;
              }

              v17 = v14;
              v18 = v16 + v15;
              v19 = *(*v28 + v18);
              *(a3[418] + 8 * v14) = heap_Calloc(*(a1 + 8), (v19 + 1), 8);
              if (!*(a3[418] + 8 * v14))
              {
                break;
              }

              *(a3[419] + 8 * v14) = heap_Calloc(*(a1 + 8), (v19 + 1), 1);
              if (!*(a3[419] + 8 * v14))
              {
                break;
              }

              v15 = v18 + 2;
              if (v19)
              {
                v20 = 0;
                while (1)
                {
                  v21 = v15;
                  __dst[0] = 0;
                  v27 = 256;
                  v9 = ssftriff_reader_ReadStringZ(a2, *v28, a4, v15, __dst, &v27);
                  v22 = v27;
                  *(*(a3[418] + 8 * v17) + 8 * v20) = uselect_strdup(a1, __dst);
                  if (!*(*(a3[418] + 8 * v17) + 8 * v20))
                  {
                    return 2229280778;
                  }

                  v15 += v22;
                  if (++v20 >= v19)
                  {
                    for (i = 0; i != v19; ++i)
                    {
                      *(*(a3[419] + 8 * v17) + i) = *(*v28 + v21 + v22 + i);
                    }

                    v15 = v21 + v22 + i;
                    LODWORD(v10) = v25;
                    break;
                  }
                }
              }

              v14 = v17 + 1;
              if (v17 + 1 >= v10)
              {
                return v9;
              }
            }
          }
        }
      }

      return 2229280778;
    }
  }

  return v9;
}