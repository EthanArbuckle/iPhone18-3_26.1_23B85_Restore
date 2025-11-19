uint64_t compare_4(uint64_t a1, uint64_t a2)
{
  result = cstdlib_strcmp(*(a1 + 16), *(a2 + 16));
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

uint64_t setError(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    if ((*(result + 440) & 0x80000000) == 0)
    {
      *(result + 440) = a2;
    }

    if (a2 < 0)
    {
      crnc3rdprtyrnm_XML_SetElementHandler(*(result + 432), 0, 0);
      v3 = *(v2 + 432);

      return crnc3rdprtyrnm_XML_SetCharacterDataHandler(v3, 0);
    }
  }

  return result;
}

uint64_t domain_mngr_utils_AlignOffset(uint64_t result, unsigned int a2)
{
  if (a2 <= 1)
  {
    return result;
  }

  else
  {
    return (result + a2 - 1) & -a2;
  }
}

uint64_t domain_mngr_utils_GetU16(uint64_t a1, unsigned int a2, _DWORD *a3, void *__dst)
{
  v4 = (*a3 + 1) & 0xFFFFFFFE;
  *a3 = v4;
  if (v4 + 2 > a2)
  {
    return 2296389641;
  }

  if (__dst)
  {
    cstdlib_memcpy(__dst, (a1 + v4), 2uLL);
    LODWORD(v4) = *a3;
  }

  result = 0;
  *a3 = v4 + 2;
  return result;
}

uint64_t domain_mngr_utils_GetU32(uint64_t a1, unsigned int a2, _DWORD *a3, void *__dst)
{
  v4 = (*a3 + 3) & 0xFFFFFFFC;
  *a3 = v4;
  if (v4 + 4 > a2)
  {
    return 2296389641;
  }

  if (__dst)
  {
    cstdlib_memcpy(__dst, (a1 + v4), 4uLL);
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
    v7 = cstdlib_strlen(__s);
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
      cstdlib_strncpy(a1, __s, v8);
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
  v6 = cstdlib_strlen(__s);
  v7 = heap_Alloc(a1, (v6 + 1));
  *a3 = v7;
  if (!v7)
  {
    return 2296389642;
  }

  cstdlib_strcpy(v7, __s);
  return 0;
}

uint64_t domain_mngr_utils_ListContainsString(char *a1, char *__s)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (__s)
  {
    if (*a1)
    {
      v3 = *__s;
      if (*__s)
      {
        v5 = cstdlib_strlen(__s);
        v6 = cstdlib_strstr(a1, __s);
        if (v6)
        {
          while (1)
          {
            if (v6 == a1 || *(v6 - 1) == 124)
            {
              v3 = 1;
              if (!v6[v5] || v6[v5] == 124)
              {
                break;
              }
            }

            v6 = cstdlib_strstr(&v6[v5], __s);
            if (!v6)
            {
              return 0;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v3;
}

uint64_t domain_mngr_utils_IsActiveVoiceAddon(void *a1, char *a2, char *a3, char *a4, char *a5, int *a6)
{
  v65 = 0;
  v66 = 0;
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
        result = paramc_ParamGetStr(a1[5], "voice", &v66);
        if ((result & 0x80000000) == 0)
        {
          if ((paramc_ParamGetStr(a1[5], "voiceoperatingpoint", &__s) & 0x80000000) != 0)
          {
            v14 = 0;
          }

          else
          {
            v14 = cstdlib_strlen(__s) + 1;
          }

          if ((paramc_ParamGetStr(a1[5], "vopversion", &__s1) & 0x80000000) != 0 || !cstdlib_strcmp(__s1, "0.0.0"))
          {
            v15 = 0;
          }

          else
          {
            v15 = cstdlib_strlen(__s1) + 1;
          }

          v16 = a1[1];
          v17 = cstdlib_strlen(v66);
          v18 = heap_Calloc(v16, 1, (v14 + v15 + v17 + 14));
          if (!v18)
          {
            log_OutPublic(a1[4], "DOMAIN_MNGR", 47000, 0, v19, v20, v21, v22, v62);
            return 2296389642;
          }

          v23 = v18;
          cstdlib_strcpy(v18, "voiceaddons.");
          v24 = cstdlib_strlen(v23);
          domain_mngr_utils_StrToLower(&v23[v24], v66);
          if (v14)
          {
            cstdlib_strcat(v23, ".");
            cstdlib_strcat(v23, __s);
          }

          if (v15)
          {
            cstdlib_strcat(v23, ".");
            cstdlib_strcat(v23, __s1);
          }

          Str = paramc_ParamGetStr(a1[5], v23, &v65);
          if ((Str & 0x80000000) != 0)
          {
            v7 = Str;
          }

          else
          {
            v26 = v65;
            *a6 = 0;
            v27 = cstdlib_strchr(v26, 59);
            v28 = *a6;
            if (!*a6)
            {
              v29 = v27;
              if (v27)
              {
                v62 = a4;
                do
                {
                  v30 = cstdlib_strlen(a2);
                  if (v30 == v29 - v26 && !LH_strnicmp(v26, a2, v30))
                  {
                    *a6 = 1;
                  }

                  v26 = v29 + 1;
                  v31 = cstdlib_strchr(v29 + 1, 59);
                  v29 = v31;
                  v28 = *a6;
                  if (*a6)
                  {
                    v32 = 1;
                  }

                  else
                  {
                    v32 = v31 == 0;
                  }
                }

                while (!v32);
              }
            }

            if (v28)
            {
              v33 = a1[1];
              v34 = cstdlib_strlen(a2);
              v35 = heap_Calloc(v33, 1, (v34 + 26));
              if (v35)
              {
                v40 = v35;
                cstdlib_strcpy(v35, "voiceaddonrawdataversion.");
                v41 = cstdlib_strlen(v40);
                domain_mngr_utils_StrToLower(&v40[v41], a2);
                v67 = 0;
                if (a3 && *a3 && (paramc_ParamGetStr(a1[5], v40, &v67) & 0x80000000) == 0 && LH_stricmp(v67, a3))
                {
                  v42 = 0;
                }

                else
                {
                  v43 = a1[1];
                  v44 = cstdlib_strlen(a2);
                  v45 = heap_Calloc(v43, 1, (v44 + 28));
                  v42 = v45;
                  if (!v45)
                  {
                    log_OutPublic(a1[4], "DOMAIN_MNGR", 47000, 0, v46, v47, v48, v49, v62);
                    v51 = 0;
                    goto LABEL_55;
                  }

                  cstdlib_strcpy(v45, "voiceaddonreductionversion.");
                  v50 = cstdlib_strlen(v42);
                  domain_mngr_utils_StrToLower(&v42[v50], a2);
                  if (!domain_mngr_utils_ReductionVersionCondition(a1, a5, v42))
                  {
                    v54 = a1[1];
                    v55 = cstdlib_strlen(a2);
                    v56 = heap_Calloc(v54, 1, (v55 + 21));
                    v51 = v56;
                    if (!v56)
                    {
                      log_OutPublic(a1[4], "DOMAIN_MNGR", 47000, 0, v57, v58, v59, v60, v62);
                      goto LABEL_55;
                    }

                    cstdlib_strcpy(v56, "voiceaddonreduction.");
                    v61 = cstdlib_strlen(v51);
                    domain_mngr_utils_StrToLower(&v51[v61], a2);
                    if (!a4 || !*a4 || !domain_mngr_utils_ReductionTypeVersionCondition(a1, a5, a4, v51))
                    {
                      v7 = 0;
                      goto LABEL_55;
                    }

                    goto LABEL_42;
                  }
                }

                v51 = 0;
LABEL_42:
                v7 = 0;
                *a6 = 0;
LABEL_55:
                heap_Free(a1[1], v23);
                heap_Free(a1[1], v40);
                if (v51)
                {
                  heap_Free(a1[1], v51);
                }

                if (!v42)
                {
                  return v7;
                }

                v52 = a1[1];
                v53 = v42;
LABEL_45:
                heap_Free(v52, v53);
                return v7;
              }

              log_OutPublic(a1[4], "DOMAIN_MNGR", 47000, 0, v36, v37, v38, v39, v62);
            }

            else
            {
              v7 = 0;
            }
          }

          v52 = a1[1];
          v53 = v23;
          goto LABEL_45;
        }
      }
    }
  }

  return result;
}

uint64_t domain_mngr_utils_StrToLower(_BYTE *a1, char *__s)
{
  v2 = __s;
  result = cstdlib_strlen(__s);
  v5 = result;
  if (result)
  {
    v6 = a1;
    v7 = result;
    do
    {
      v8 = *v2++;
      result = cstdlib_tolower(v8);
      *v6++ = result;
      --v7;
    }

    while (v7);
  }

  a1[v5] = 0;
  return result;
}

uint64_t activeprompt_db_UnloadData(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return objc_ReleaseObject(*(*(a1 + 40) + 48), a2 + 296);
  }

  else
  {
    return 0;
  }
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
      v12 = cstdlib_strchr(__s, 59);
      if (v12)
      {
        v13 = v12;
        while (1)
        {
          *v13 = 0;
          v14 = *(*(a1 + 8) + 72);
          if (v14)
          {
            if (!cstdlib_strcmp(v11, v14))
            {
              break;
            }
          }

          *v13 = 59;
          v11 = v13 + 1;
          v13 = cstdlib_strchr(v13 + 1, 59);
          if (!v13)
          {
            goto LABEL_17;
          }
        }

        v16 = cstdlib_strlen(v13 + 1);
        cstdlib_memmove(v11, v13 + 1, v16 + 1);
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

uint64_t activeprompt_db_LoadData(__int128 *a1, const char *a2, uint64_t a3, int a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__dst = 0u;
  v14 = 0u;
  v12 = 0;
  cstdlib_strcpy(__dst, a2);
  *&v29 = a3;
  DWORD2(v29) = a4;
  v30 = *a1;
  result = objc_GetAddRefCountedObject(*(*(a1 + 5) + 48), a2, apdb_loc_ObjcLoadData, apdb_loc_ObjcUnloadData, __dst, &v12);
  if ((result & 0x80000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v12 + 32);
  }

  *a5 = v11;
  return result;
}

uint64_t apdb_loc_ObjcLoadData(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v103 = *MEMORY[0x277D85DE8];
  v87 = 0;
  v88 = 0;
  v86 = 0;
  NullHandle = safeh_GetNullHandle();
  v11 = v10;
  inited = InitRsrcFunction(a1, a2, &v88);
  if ((inited & 0x80000000) != 0)
  {
    v13 = inited;
    goto LABEL_154;
  }

  v13 = 2296389642;
  v14 = heap_Calloc(*(v88 + 8), 1, 560);
  if (v14)
  {
    if (UriGetUrlPrefixLength(a5, 0))
    {
      v15 = InitRsrcFunction(*(a5 + 272), *(a5 + 280), &v87);
      if ((v15 & 0x80000000) != 0)
      {
        v13 = v15;
        goto LABEL_151;
      }

      if ((objc_GetObject(*(v87 + 48), "URIFETCHER", &v86) & 0x80000000) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = v86[1];
        NullHandle = v86[2];
        v11 = v86[3];
      }

      v85 = v16;
      v17 = osspi_DataOpenEx(*(v88 + 64), *(v88 + 8), v16, NullHandle, v11, a5, (v14 + 552));
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_145;
      }

      v17 = osspi_DataMap(*(v14 + 552), 0, (a5 + 264), (a5 + 256));
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v85 = 0;
    }

    v17 = ssftriff_reader_ObjOpenEx(a1, a2, 4 * (*(a5 + 256) != 0), a5, *(a5 + 256), *(a5 + 264), "APDB", 775, v14);
    if ((v17 & 0x80000000) == 0)
    {
      v17 = ssftriff_reader_DetachChunkData(*v14, (v14 + 16), (v14 + 8));
      if ((v17 & 0x80000000) == 0)
      {
        cstdlib_strcpy((v14 + 296), a5);
        v97 = 0;
        v95 = 0;
        *__s1 = 0;
        v93 = 0;
        *v94 = 0;
        v17 = InitRsrcFunction(a1, a2, &v93);
        if ((v17 & 0x80000000) == 0)
        {
          v18 = *(v93 + 8);
          *__src = xmmword_287EEFD80;
          v99 = off_287EEFD90;
          if (!vector_ObjOpen(v18, __src, 1, (v14 + 264)))
          {
            log_OutPublic(*(v93 + 32), "DOMAIN_MNGR", 47000, 0, v19, v20, v21, v22, v82);
            goto LABEL_146;
          }

          while (1)
          {
            StringZ = ssftriff_reader_OpenChunk(*v14, __s1, &v95, v94);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_157;
            }

            if (!cstdlib_strcmp(__s1, "ATTR"))
            {
              break;
            }

            if (!cstdlib_strcmp(__s1, "PHGP"))
            {
              LODWORD(v91) = 0;
              *(v14 + 224) = 1;
              *(v14 + 232) = heap_Calloc(*(v93 + 8), 100, 8);
              v45 = v95;
              if (v95)
              {
                v46 = 0;
                do
                {
                  __s[0] = 0;
                  __src[0] = 0;
                  LODWORD(v91) = 64;
                  StringZ = ssftriff_reader_ReadStringZ(*v14, *v94, v45, v46, __s, &v91);
                  if ((StringZ & 0x80000000) == 0 && v46 < v95)
                  {
                    v46 += v91;
                    LODWORD(v91) = 256;
                    StringZ = ssftriff_reader_ReadStringZ(*v14, *v94, v95, v46, __src, &v91);
                  }

                  if ((StringZ & 0x80000000) != 0)
                  {
                    break;
                  }

                  v47 = v91;
                  if (cstdlib_strlen(__s) == 4 && __s[0] == 80 && __s[1] == 71 && v101 - 48 <= 9 && v102 - 48 <= 9)
                  {
                    v48 = v102 + 10 * v101 - 528;
                    v49 = *(*(v14 + 232) + 8 * v48);
                    if (!v49)
                    {
                      v50 = *(v93 + 8);
                      v51 = cstdlib_strlen(__src);
                      *(*(v14 + 232) + 8 * v48) = heap_Calloc(v50, (v51 + 1), 1);
                      v49 = *(*(v14 + 232) + 8 * v48);
                    }

                    cstdlib_strcpy(v49, __src);
                  }

                  v46 += v47;
                  v45 = v95;
                }

                while (v46 < v95);
              }

              goto LABEL_109;
            }

            if (cstdlib_strcmp(__s1, "STRP"))
            {
              if (cstdlib_strcmp(__s1, "UIDP"))
              {
                if (cstdlib_strcmp(__s1, "WRDP"))
                {
                  if (!cstdlib_strcmp(__s1, "APPR") || !cstdlib_strcmp(__s1, "RECP"))
                  {
                    v91 = xmmword_279DB6520;
                    v92 = *algn_279DB6530;
                    __dst = 0;
                    if (cstdlib_strcmp(__s1, "RECP"))
                    {
                      if (v91 == 1)
                      {
                        v89 = 0;
                        if (vector_GetElemAt(*(v14 + 264), 0, &v89))
                        {
                          v57 = 1;
                          do
                          {
                            if (*v89 == 1)
                            {
                              log_OutPublic(*(v93 + 32), "DOMAIN_MNGR", 47020, "%s%s", v53, v54, v55, v56, "chunk");
                            }
                          }

                          while (vector_GetElemAt(*(v14 + 264), v57++, &v89));
                        }
                      }
                    }

                    else
                    {
                      *(v14 + 24) = 1;
                      LODWORD(v91) = 2;
                    }

                    v59 = *(v14 + 200);
                    if (v59 && *v59)
                    {
                      *(&v91 + 1) = *(v14 + 200);
                    }

                    StringZ = domain_mngr_utils_GetU32(*v94, v95, &__dst, &v92);
                    if ((StringZ & 0x80000000) == 0)
                    {
                      *(&v92 + 1) = *v94 + __dst;
                      if (!vector_Add(*(v14 + 264), &v91))
                      {
                        v64 = *(v93 + 32);
                        goto LABEL_130;
                      }
                    }

LABEL_109:
                    if ((StringZ & 0x80000000) != 0)
                    {
                      goto LABEL_157;
                    }

                    goto LABEL_110;
                  }

                  if (!cstdlib_strcmp(__s1, "TNAL"))
                  {
                    LODWORD(v89) = 0;
                    __dst = 0;
                    *&v91 = 0;
                    U32 = domain_mngr_utils_GetU32(*v94, v95, &v89, &__dst);
                    if ((U32 & 0x80000000) != 0)
                    {
                      StringZ = U32;
                    }

                    else
                    {
                      v66 = *(v14 + 240);
                      v67 = __dst;
                      StringZ = domain_mngr_utils_GetU32(*v94, v95, &v89, &__dst);
                      if ((StringZ & 0x80000000) == 0)
                      {
                        v84 = (v66 + v67);
                        v68 = *(v14 + 240);
                        v69 = __dst;
                        if (vector_GetElemAt(*(v14 + 264), 0, &v91))
                        {
                          v74 = 1;
                          while (domain_mngr_utils_ListContainsString(*(v91 + 8), (v68 + v69)) != 1)
                          {
                            if (!vector_GetElemAt(*(v14 + 264), v74++, &v91))
                            {
                              goto LABEL_137;
                            }
                          }

                          v83 = *(v93 + 8);
                          v76 = *(v91 + 8);
                          v77 = cstdlib_strlen(v76);
                          v78 = cstdlib_strlen(v84);
                          v79 = heap_Realloc(v83, v76, (v77 + v78 + 2));
                          if (v79)
                          {
                            *(v91 + 8) = v79;
                            cstdlib_strcat(v79, "|");
                            cstdlib_strcat(*(v91 + 8), v84);
                          }

                          else
                          {
                            v64 = *(v93 + 32);
LABEL_130:
                            log_OutPublic(v64, "DOMAIN_MNGR", 47000, 0, v60, v61, v62, v63, v82);
                            StringZ = -1998577654;
                          }
                        }

                        else
                        {
LABEL_137:
                          log_OutPublic(*(v93 + 32), "DOMAIN_MNGR", 47017, "%s%s%s%s", v70, v71, v72, v73, "chunk");
                          StringZ = -1998577660;
                        }
                      }
                    }

                    goto LABEL_109;
                  }

                  if (cstdlib_strcmp(__s1, "U8VP"))
                  {
                    if (cstdlib_strcmp(__s1, "ALV1"))
                    {
                      if (cstdlib_strcmp(__s1, "ALV2"))
                      {
                        log_OutText(*(v93 + 32), "DOMAIN_MNGR", 3, 0, "Unknown data: %s for %s", v24, v25, v26, __s1);
                      }

                      else
                      {
                        *(v14 + 288) = *v94;
                      }
                    }

                    else
                    {
                      *(v14 + 280) = *v94;
                    }
                  }

                  else
                  {
                    *(v14 + 272) = *v94;
                  }
                }

                else
                {
                  *(v14 + 256) = *v94;
                }
              }

              else
              {
                *(v14 + 248) = *v94;
              }
            }

            else
            {
              *(v14 + 240) = *v94;
            }

LABEL_110:
            v52 = ssftriff_reader_CloseChunk(*v14);
            if ((v52 & 0x80000000) != 0)
            {
              StringZ = v52;
LABEL_157:
              if ((StringZ & 0x1FFF) == 0x14)
              {
                v13 = 0;
              }

              else
              {
                v13 = StringZ;
              }

LABEL_146:
              if (v85 && NullHandle)
              {
                objc_ReleaseObject(*(v87 + 48), "URIFETCHER");
              }

              if ((v13 & 0x80000000) == 0)
              {
                v13 = 0;
                goto LABEL_155;
              }

LABEL_151:
              v80 = *(v14 + 552);
              if (v80)
              {
                osspi_DataClose(v80);
              }

              heap_Free(*(v88 + 8), v14);
LABEL_154:
              v14 = 0;
              goto LABEL_155;
            }
          }

          v27 = v95;
          if (!v95)
          {
            goto LABEL_109;
          }

          v28 = 0;
          while (1)
          {
            __s[0] = 0;
            __src[0] = 0;
            LODWORD(v91) = 64;
            StringZ = ssftriff_reader_ReadStringZ(*v14, *v94, v27, v28, __s, &v91);
            if ((StringZ & 0x80000000) == 0 && v28 < v95)
            {
              v28 += v91;
              LODWORD(v91) = 256;
              StringZ = ssftriff_reader_ReadStringZ(*v14, *v94, v95, v28, __src, &v91);
            }

            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_109;
            }

            v29 = v91;
            if (!cstdlib_strcmp(__s, "Format"))
            {
              domain_mngr_utils_CopyString((v14 + 32), __src, 0xCu);
              v36 = 0;
              while (cstdlib_strcmp((v14 + 32), off_279DB6508[v36]))
              {
                if (++v36 == 2)
                {
                  log_OutText(*(v93 + 32), "DOMAIN_MNGR", 3, 0, "APDB Format: %s not implemented", v37, v38, v39, v14 + 32);
                  StringZ = -1998577663;
                  goto LABEL_109;
                }
              }

              goto LABEL_72;
            }

            if (*(v14 + 32))
            {
              if (!cstdlib_strcmp(__s, "Lng"))
              {
                v40 = (v14 + 44);
                goto LABEL_66;
              }

              if (!cstdlib_strcmp(__s, "VaoName"))
              {
                v42 = *(v93 + 8);
                v43 = (v14 + 72);
LABEL_70:
                StringZ = domain_mngr_utils_DuplicateString(v42, __src, v43);
                goto LABEL_71;
              }

              if (!cstdlib_strcmp(__s, "Voice"))
              {
                v42 = *(v93 + 8);
                v43 = (v14 + 64);
                goto LABEL_70;
              }

              if (!cstdlib_strcmp(__s, "RawDataVersion"))
              {
                v40 = (v14 + 80);
                goto LABEL_66;
              }

              if (!cstdlib_strcmp(__s, "Reduction"))
              {
                v40 = (v14 + 88);
                goto LABEL_79;
              }

              if (!cstdlib_strcmp(__s, "ReductionVersion"))
              {
                v40 = (v14 + 100);
LABEL_66:
                v41 = 8;
LABEL_67:
                domain_mngr_utils_CopyString(v40, __src, v41);
                goto LABEL_71;
              }

              if (!cstdlib_strcmp(__s, "UnitIDType"))
              {
                v40 = (v14 + 108);
LABEL_79:
                v41 = 12;
                goto LABEL_67;
              }

              if (!cstdlib_strcmp(__s, "VoiceComponentID"))
              {
                domain_mngr_utils_CopyString((v14 + 120), __src, 0x28u);
                *(v14 + 160) = 1;
                goto LABEL_71;
              }

              if (!cstdlib_strcmp(__s, "Domain"))
              {
                v42 = *(v93 + 8);
                v43 = (v14 + 168);
                goto LABEL_70;
              }

              if (!cstdlib_strcmp(__s, "TNType"))
              {
                v42 = *(v93 + 8);
                v43 = (v14 + 200);
                goto LABEL_70;
              }

              if (!cstdlib_strcmp(__s, "PhrasePunctuation"))
              {
                v42 = *(v93 + 8);
                v43 = (v14 + 184);
                goto LABEL_70;
              }

              if (!cstdlib_strcmp(__s, "AllPunctuation"))
              {
                v42 = *(v93 + 8);
                v43 = (v14 + 192);
                goto LABEL_70;
              }

              if (cstdlib_strcmp(__s, "UnitIDSize"))
              {
                if (cstdlib_strcmp(__s, "Mode"))
                {
                  if (cstdlib_strcmp(__s, "URISuffix"))
                  {
                    if (cstdlib_strcmp(__s, "OriOrth"))
                    {
                      if (cstdlib_strcmp(__s, "IdxU8V:WordPrm"))
                      {
                        if (cstdlib_strcmp(__s, "IdxU8V:PhrsBnd"))
                        {
                          if (!cstdlib_strcmp(__s, "SupportBackendPredictedSilenceDuration"))
                          {
                            if (cstdlib_atoi(__src))
                            {
                              *(v14 + 228) = 1;
                            }

                            else
                            {
                              *(v14 + 228) = 0;
                            }
                          }
                        }

                        else
                        {
                          *(v14 + 220) = 1;
                          ++*(v14 + 212);
                          *(v14 + 216) = cstdlib_atoi(__src);
                        }
                      }

                      else
                      {
                        *(v14 + 208) = 1;
                        ++*(v14 + 212);
                        *(v14 + 214) = cstdlib_atoi(__src);
                      }
                    }

                    else
                    {
                      *(v14 + 28) = 1;
                    }

                    goto LABEL_71;
                  }

                  v42 = *(v93 + 8);
                  v43 = (v14 + 176);
                  goto LABEL_70;
                }

                v40 = (v14 + 52);
                goto LABEL_79;
              }

              if (cstdlib_atoi(__src) == 4)
              {
                goto LABEL_71;
              }

              log_OutPublic(*(v93 + 32), "DOMAIN_MNGR", 47000, 0, v44, v33, v34, v35, v82);
            }

            else
            {
              log_OutText(*(v93 + 32), "DOMAIN_MNGR", 3, 0, "APDB Format: 7.0.0 not supported", v30, v31, v32, v82);
            }

            StringZ = -1998577663;
LABEL_71:
            log_OutText(*(v93 + 32), "DOMAIN_MNGR", 3, 0, "APDB attribute %s=%s", v33, v34, v35, __s);
LABEL_72:
            if ((StringZ & 0x80000000) == 0)
            {
              v28 += v29;
              v27 = v95;
              if (v28 < v95)
              {
                continue;
              }
            }

            goto LABEL_109;
          }
        }
      }
    }

LABEL_145:
    v13 = v17;
    goto LABEL_146;
  }

LABEL_155:
  *(a4 + 32) = v14;
  return v13;
}

uint64_t apdb_loc_ObjcUnloadData(_WORD *a1, int a2, uint64_t a3)
{
  v28 = 0;
  inited = InitRsrcFunction(a1, a2, &v28);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        ssftriff_reader_ReleaseChunkData(v6);
        if (*v5)
        {
          v14 = ssftriff_reader_ObjClose(*v5, v7, v8, v9, v10, v11, v12, v13);
          if (v14 >= 0)
          {
            inited = inited;
          }

          else
          {
            inited = v14;
          }
        }
      }

      v15 = *(v5 + 552);
      if (v15)
      {
        osspi_DataClose(v15);
      }

      v16 = *(v5 + 72);
      if (v16)
      {
        heap_Free(*(v28 + 8), v16);
      }

      v17 = *(v5 + 64);
      if (v17)
      {
        heap_Free(*(v28 + 8), v17);
      }

      v18 = *(v5 + 168);
      if (v18)
      {
        heap_Free(*(v28 + 8), v18);
      }

      v19 = *(v5 + 200);
      if (v19)
      {
        heap_Free(*(v28 + 8), v19);
      }

      v20 = *(v5 + 176);
      if (v20)
      {
        heap_Free(*(v28 + 8), v20);
      }

      v21 = *(v5 + 184);
      if (v21)
      {
        heap_Free(*(v28 + 8), v21);
      }

      v22 = *(v5 + 192);
      if (v22)
      {
        heap_Free(*(v28 + 8), v22);
      }

      v23 = *(v5 + 264);
      if (v23)
      {
        vector_ObjClose(v23);
      }

      if (*(v5 + 224) == 1)
      {
        for (i = 0; i != 800; i += 8)
        {
          v25 = *(*(v5 + 232) + i);
          if (v25)
          {
            heap_Free(*(v28 + 8), v25);
          }
        }

        v26 = *(v5 + 232);
        if (v26)
        {
          heap_Free(*(v28 + 8), v26);
        }
      }

      heap_Free(*(v28 + 8), v5);
    }
  }

  return inited;
}

uint64_t activeprompt_db_ObjOpen(uint64_t a1, __int128 *a2, char *a3, char *a4, const void *a5, int a6, uint64_t a7, uint64_t *a8)
{
  v175 = *MEMORY[0x277D85DE8];
  v150 = 0;
  v151 = 0;
  v8 = 2296389642;
  v149 = 0;
  if (!a8)
  {
    return 2296389639;
  }

  inited = InitRsrcFunction(*a2, *(a2 + 1), &v151);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a8 = 0;
  if (a4 && *a4)
  {
    cstdlib_strncpy(__dst, a4, 0x1FFuLL);
    v173 = 0;
  }

  else
  {
    *&__s2[0] = 0;
    if (cupreader_IsCupInTheScope(v151, __s2))
    {
      snprintf(__str, 0x200uLL, "cup:%s", *&__s2[0]);
      snprintf(__dst, 0x200uLL, "cup:%s%p");
    }

    else
    {
      snprintf(__str, 0x200uLL, "in-memory APDB%p", a5);
      snprintf(__dst, 0x200uLL, "in-memory APDB%p");
    }

    v173 = 0;
    __str[511] = 0;
    a4 = __str;
  }

  v17 = activeprompt_db_LoadData(a2, __dst, a5, a6, &v150);
  if ((v17 & 0x80000000) != 0)
  {
    v16 = v17;
    if ((v17 & 0x1FFF) == 4)
    {
      log_OutPublic(*(v151 + 32), "DOMAIN_MNGR", 27002, 0, v18, v19, v20, v21, v137);
    }

    goto LABEL_34;
  }

  v22 = heap_Calloc(*(v151 + 8), 1, 88);
  *a8 = v22;
  if (!v22)
  {
    goto LABEL_33;
  }

  *(v22 + 8) = v150;
  **a8 = a2;
  v27 = *a8;
  *(v27 + 24) = 1;
  *(v27 + 72) = 0;
  *(*a8 + 64) = 0;
  TuningDataNameInCup = cupreader_GetTuningDataNameInCup(v151, &v149);
  v29 = *a8;
  if (TuningDataNameInCup && (v30 = v149) != 0)
  {
    v31 = (v29 + 56);
  }

  else
  {
    v31 = (v29 + 56);
    v30 = a4;
  }

  v32 = domain_mngr_utils_DuplicateString(*(v151 + 8), v30, v31);
  if ((v32 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  v16 = v32;
  v33 = *a8;
  v34 = *(*a8 + 8);
  v35 = *(v34 + 176);
  if (!v35)
  {
    goto LABEL_24;
  }

  v36 = domain_mngr_utils_DuplicateString(*(v151 + 8), v35, (v33 + 40));
  if ((v36 & 0x80000000) != 0)
  {
LABEL_33:
    log_OutPublic(*(v151 + 32), "DOMAIN_MNGR", 47000, 0, v23, v24, v25, v26, v137);
    v16 = 2296389642;
    goto LABEL_34;
  }

  v16 = v36;
  v33 = *a8;
  v34 = *(*a8 + 8);
LABEL_24:
  if (*(v34 + 24) != 1)
  {
    goto LABEL_45;
  }

  v37 = *(*v33 + 16);
  *&__s2[0] = 0;
  *&v159 = 0;
  __s[0] = 0;
  if ((hlp_GetMimeParam(v37, a3, "urisuffix", &v159) & 0x80000000) == 0)
  {
    v38 = *(v33 + 40);
    if (v38)
    {
      heap_Free(v37[1], v38);
    }

    *(v33 + 40) = v159;
    if ((hlp_GetMimeParam(v37, a3, "uriprefix", &v159) & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

LABEL_38:
    *(v33 + 32) = 2;
    v44 = *(v33 + 80);
    if (v44)
    {
      heap_Free(v37[1], v44);
    }

    v16 = 0;
    *(v33 + 80) = v159;
    goto LABEL_41;
  }

  if ((hlp_GetMimeParam(v37, a3, "uriprefix", &v159) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  if (IsRecordingCS(v33, a4, __s2))
  {
    *(v33 + 32) = 1;
    v108 = *(v33 + 80);
    if (v108)
    {
      heap_Free(v37[1], v108);
    }

    v109 = v37[1];
    v110 = cstdlib_strlen("x-vocalizer-speechbase://");
    v111 = cstdlib_strlen(*&__s2[0]);
    v112 = heap_Alloc(v109, v110 + v111 + 100);
    *(v33 + 80) = v112;
    if (v112)
    {
      cstdlib_strcpy(v112, "x-vocalizer-speechbase://");
      cstdlib_strcat(*(v33 + 80), *&__s2[0]);
      v16 = 0;
    }

    else
    {
      log_OutPublic(v37[4], "DOMAIN_MNGR", 47000, 0, v113, v114, v115, v116, v137);
      v16 = 2296389642;
    }

    goto LABEL_41;
  }

LABEL_29:
  if (*a4)
  {
    if ((brk_TagQueryEx(v37[3], a4, "BROKERSTRING", 1, __s) & 0x80000000) != 0)
    {
      *(v33 + 32) = 2;
      v16 = domain_mngr_utils_DuplicateString(v37[1], a4, (v33 + 48));
      goto LABEL_41;
    }

    brk_TagRelease(v37[3], __s[0]);
    __s[0] = 0;
  }

  log_OutPublic(v37[4], "DOMAIN_MNGR", 47018, "%s%s", v39, v40, v41, v42, "apdb");
  v16 = 2296389652;
LABEL_41:
  if (*&__s2[0])
  {
    heap_Free(v37[1], *&__s2[0]);
  }

  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  v33 = *a8;
  v34 = *(*a8 + 8);
LABEL_45:
  if (!*(v34 + 72))
  {
    goto LABEL_86;
  }

  v45 = *(*v33 + 16);
  *&v159 = 0;
  if ((paramc_ParamGetStr(v45[5], "voice", &v159) & 0x80000000) != 0)
  {
    LOBYTE(v47) = 0;
LABEL_79:
    v16 = 0;
    if (v47)
    {
      goto LABEL_86;
    }

    goto LABEL_80;
  }

  __s[0] = 0;
  __s1 = 0;
  if ((paramc_ParamGetStr(v45[5], "voiceoperatingpoint", __s) & 0x80000000) != 0)
  {
    v46 = 0;
  }

  else
  {
    v46 = cstdlib_strlen(__s[0]) + 1;
  }

  if ((paramc_ParamGetStr(v45[5], "vopversion", &__s1) & 0x80000000) != 0 || !cstdlib_strcmp(__s1, "0.0.0"))
  {
    v48 = 0;
  }

  else
  {
    v48 = cstdlib_strlen(__s1) + 1;
  }

  v49 = v45[1];
  v50 = cstdlib_strlen(v159);
  v51 = heap_Calloc(v49, 1, (v46 + v48 + v50 + 14));
  *(v33 + 64) = v51;
  if (!v51)
  {
    goto LABEL_132;
  }

  v148 = v45;
  cstdlib_strcpy(v51, "voiceaddons.");
  v52 = cstdlib_strlen(*(v33 + 64));
  if (cstdlib_strlen(v159))
  {
    v53 = 0;
    v54 = 0;
    do
    {
      *(*(v33 + 64) + v52 + v54++) = cstdlib_tolower(*(v159 + v53));
      v53 = v54;
    }

    while (cstdlib_strlen(v159) > v54);
  }

  else
  {
    LODWORD(v53) = 0;
  }

  *(*(v33 + 64) + (v53 + v52)) = 0;
  if (v46)
  {
    cstdlib_strcat(*(v33 + 64), ".");
    cstdlib_strcat(*(v33 + 64), __s[0]);
  }

  v45 = v148;
  if (v48)
  {
    cstdlib_strcat(*(v33 + 64), ".");
    cstdlib_strcat(*(v33 + 64), __s1);
  }

  v55 = *(*(v33 + 8) + 72);
  v56 = *(v33 + 56);
  v57 = *(v33 + 64);
  *&__s2[0] = 0;
  LODWORD(v168) = 0;
  if (v56)
  {
    v58 = v56;
    v146 = cstdlib_strlen(v56);
  }

  else
  {
    v58 = 0;
    v146 = 0;
  }

  Str = paramc_ParamGetStr(v148[5], v57, __s2);
  if (*&__s2[0])
  {
    v60 = v55 == 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = v60 || Str < 0;
  v47 = !v61;
  if (v47 != 1 || cstdlib_strstr(*&__s2[0], v55))
  {
    goto LABEL_79;
  }

  v144 = v57;
  v145 = v55;
  v141 = v58;
  if (!v58 || !*v58 || IsThisUrlOrRealPath(v58, v146, &v168) < 1)
  {
    v119 = 0;
LABEL_141:
    v142 = 1;
    goto LABEL_142;
  }

  v117 = v168;
  v118 = cstdlib_strrchr(v58, 47);
  if (v117)
  {
    if (!v118)
    {
      v8 = 2296389639;
      goto LABEL_132;
    }

    goto LABEL_153;
  }

  if (v118 || (v118 = cstdlib_strrchr(v58, 92)) != 0)
  {
LABEL_153:
    v119 = v118 - v58 + 1;
    goto LABEL_141;
  }

  v142 = 0;
  v119 = 2;
LABEL_142:
  v120 = v148[1];
  v121 = cstdlib_strlen(*&__s2[0]);
  v122 = cstdlib_strlen(";");
  v123 = cstdlib_strlen(v145);
  v147 = v119;
  v124 = heap_Calloc(v120, 1, (v119 + v122 + v121 + v123 + 2));
  if (!v124)
  {
    goto LABEL_132;
  }

  v125 = v124;
  cstdlib_strcpy(v124, *&__s2[0]);
  v126 = v148[1];
  v127 = cstdlib_strlen("voiceaddonbaseuri.");
  v128 = cstdlib_strlen(v145);
  v129 = heap_Calloc(v126, 1, v127 + v128 + 1);
  if (!v129)
  {
    v130 = v125;
LABEL_160:
    heap_Free(v148[1], v130);
    goto LABEL_132;
  }

  v130 = v129;
  v131 = v125;
  cstdlib_strcpy(v129, "voiceaddonbaseuri.");
  cstdlib_strcat(v130, v145);
  v132 = heap_Calloc(v148[1], 1, v147 + 1);
  if (!v132)
  {
    heap_Free(v148[1], v125);
    goto LABEL_160;
  }

  v133 = v132;
  if (v147)
  {
    if (v142)
    {
      v134 = v141;
    }

    else
    {
      v134 = "./";
    }

    cstdlib_strncpy(v132, v134, v147);
  }

  v133[v147] = 0;
  v135 = paramc_ParamSetStrPermanent(v148[5], v130, v133);
  heap_Free(v148[1], v133);
  heap_Free(v148[1], v130);
  if ((v135 & 0x80000000) != 0)
  {
    v130 = v131;
    v8 = v135;
    goto LABEL_160;
  }

  v136 = v131;
  cstdlib_strcat(v131, v145);
  cstdlib_strcat(v131, ";");
  v16 = paramc_ParamSetStrPermanent(v148[5], v144, v131);
  heap_Free(v148[1], v136);
  if ((v16 & 0x80000000) != 0)
  {
    v8 = v16;
    goto LABEL_132;
  }

LABEL_80:
  v62 = *(*(v33 + 8) + 72);
  if (!v62)
  {
    goto LABEL_86;
  }

  v63 = v45[1];
  v64 = cstdlib_strlen(v62);
  v65 = heap_Calloc(v63, 1, (v64 + 18));
  *(v33 + 72) = v65;
  if (!v65)
  {
    log_OutPublic(v45[4], "DOMAIN_MNGR", 47000, 0, v66, v67, v68, v69, v137);
LABEL_132:
    v16 = v8;
LABEL_34:
    if (*a8)
    {
      activeprompt_db_ObjClose(*a8, 0);
      *a8 = 0;
    }

    return v16;
  }

  cstdlib_strcpy(v65, "voiceaddonoffset.");
  v70 = cstdlib_strlen(*(v33 + 72));
  if (cstdlib_strlen(*(*(v33 + 8) + 72)))
  {
    v71 = 0;
    v72 = 1;
    do
    {
      *(*(v33 + 72) + v70) = cstdlib_tolower(*(*(*(v33 + 8) + 72) + v71));
      v71 = v72;
      ++v70;
      v61 = cstdlib_strlen(*(*(v33 + 8) + 72)) > v72++;
    }

    while (v61);
  }

  *(*(v33 + 72) + v70) = 0;
LABEL_86:
  if (log_HasTraceTuningDataSubscriber(*(*(**a8 + 16) + 32)))
  {
    v73 = *a8;
    v171 = 0;
    memset(__s2, 0, sizeof(__s2));
    __s1 = 0;
    v168 = 0;
    v167 = 0;
    v166 = 0;
    ssftstring_ObjOpen(*(*(*v73 + 16) + 8), &v166);
    if (v166)
    {
      activeprompt_db_GetTNTypes(v73, v166);
      v76 = v166;
    }

    else
    {
      v76 = 0;
    }

    v77 = v73[1];
    v78 = *(*v73 + 16);
    v79 = *(v78 + 32);
    v80 = v73[10];
    v81 = *(v77 + 184);
    v82 = *(v77 + 168);
    if (v76)
    {
      v139 = *(v78 + 32);
      v140 = *(v77 + 184);
      v138 = *(v77 + 168);
      v143 = v73[10];
      ssftstring_CStr(v76);
      v82 = v138;
      v81 = v140;
      v80 = v143;
      v79 = v139;
    }

    log_OutTraceTuningData(v79, 203, "%s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s", v80, v74, v81, v75, v82, "BEG");
    if (v166)
    {
      ssftstring_ObjClose(v166);
      v166 = 0;
    }

    if (vector_GetElemAt(*(v73[1] + 264), 0, &v167) && *v167 == 1 && vector_GetElemAt(*(v73[1] + 264), 1u, &v168) && (v83 = v168, *v168 == 2))
    {
      v165 = 0;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v158 = 0;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      *v155 = 0u;
      *__s = 0u;
      v153 = 0u;
      v84 = v167;
      hlp_FillActivePrompt(v73, *v167, *(v167 + 24), 0, &v159);
      hlp_FillActivePrompt(v73, *v83, *(v83 + 24), 0, __s);
      v85 = *(v84 + 16);
      v86 = *(v83 + 16) != 0;
      if (v85 != 0 || v86)
      {
        v87 = 0;
        v88 = 0;
        do
        {
          if (v86 && (v87 == v85 || (v89 = cstdlib_strlen(v155[0]), v89 > cstdlib_strlen(v162)) || (v95 = cstdlib_strlen(v155[0]), v95 == cstdlib_strlen(v162)) && HIDWORD(v153) > HIDWORD(v160) || (v96 = cstdlib_strlen(v155[0]), v96 == cstdlib_strlen(v162)) && HIDWORD(v153) == HIDWORD(v160) && v154 > v161))
          {
            hlp_TraceContent_AP(v73, __s);
            if (++v88 < *(v168 + 16))
            {
              v90 = *v168;
              v91 = (*(v168 + 24) + 24 * v88);
              v92 = __s;
              v93 = v73;
              v94 = v88;
LABEL_112:
              hlp_FillActivePrompt(v93, v90, v91, v94, v92);
            }
          }

          else
          {
            hlp_TraceContent_AP(v73, &v159);
            if (++v87 < *(v167 + 16))
            {
              v90 = *v167;
              v91 = (*(v167 + 24) + 24 * v87);
              v92 = &v159;
              v93 = v73;
              v94 = v87;
              goto LABEL_112;
            }
          }

          v85 = *(v167 + 16);
          v97 = *(v168 + 16);
          v86 = v88 < v97;
        }

        while (v87 < v85 || v88 < v97);
      }

      v99 = 2;
    }

    else
    {
      v99 = 0;
    }

    while (vector_GetElemAt(*(v73[1] + 264), v99, &__s1))
    {
      v100 = __s1;
      if (*(__s1 + 4))
      {
        v101 = 0;
        v102 = 0;
        do
        {
          hlp_FillActivePrompt(v73, *v100, (*(v100 + 3) + v101), v102, __s2);
          hlp_TraceContent_AP(v73, __s2);
          ++v102;
          v100 = __s1;
          v101 += 24;
        }

        while (v102 < *(__s1 + 4));
      }

      ++v99;
    }

    log_OutTraceTuningData(*(*(*v73 + 16) + 32), 203, "%s%s", v103, v104, v105, v106, v107, "END");
  }

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
  v19 = 0;
  v18 = 0;
  result = domain_mngr_utils_IsActiveVoiceAddon(v3, *(v2 + 72), (v2 + 80), (v2 + 88), (v2 + 100), &v18);
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
      result = paramc_ParamGetStr(v3[5], "uselectrawdataversion", &v19);
      v6 = *(a1 + 8);
      if ((result & 0x80000000) == 0)
      {
        result = LH_stricmp(v19, (v6 + 80));
        v6 = *(a1 + 8);
        if (result)
        {
          v11 = v3[4];
          v12 = "voiceRawDataVersion";
LABEL_15:
          result = log_OutPublic(v11, "DOMAIN_MNGR", 47002, "%s%s%s%s", v7, v8, v9, v10, v12);
          goto LABEL_26;
        }
      }
    }

    if (*(v6 + 100))
    {
      result = paramc_ParamGetStr(v3[5], "uselectreductionversion", &v19);
      v6 = *(a1 + 8);
      if ((result & 0x80000000) == 0)
      {
        result = LH_stricmp(v19, (v6 + 100));
        v6 = *(a1 + 8);
        if (result)
        {
          v11 = v3[4];
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
      if ((paramc_ParamGetStr(v3[5], "voicecomponentid", &v19) & 0x80000000) != 0 || (result = LH_stricmp(v19, (*(a1 + 8) + 120)), result))
      {
        v17 = v3[4];
LABEL_25:
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

    result = paramc_ParamGetStr(v3[5], "voicecomponentid", &v19);
    if ((result & 0x80000000) == 0 && !*v19)
    {
      goto LABEL_3;
    }

    v17 = v3[4];
    goto LABEL_25;
  }

  if (!v18)
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
  v63 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(a1 + 28) != 2 || !*(a1 + 24) || !*(*(a1 + 8) + 28))
  {
    return 0;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(*a1 + 16) + 32)))
  {
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
    goto LABEL_73;
  }

  v23 = a5;
  while (1)
  {
    v79 = 0;
    v80 = 0;
    v78 = 0;
    if (!*v23)
    {
      v17 = 0;
      goto LABEL_67;
    }

    memset(v81, 0, 104);
    v63 = 0;
    if (vector_GetElemAt(*(*(a1 + 8) + 264), 0, &v78) && *v78 == 1 && vector_GetElemAt(*(*(a1 + 8) + 264), 1u, &v79) && *v79 == 2)
    {
      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      v71 = 0u;
      v70 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      *__s = 0u;
      v64 = 0u;
      v65 = 0u;
      v24 = domain_mngr_utils_ListContainsString(*(v78 + 8), "*");
      v25 = domain_mngr_utils_ListContainsString(*(v79 + 8), "*");
      if (v24 && v25)
      {
        v31 = v78;
        hlp_FillActivePrompt(a1, *v78, *(v78 + 24), 0, &v71);
        v32 = v79;
        hlp_FillActivePrompt(a1, *v79, *(v79 + 24), 0, &v64);
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
              if (v34 && (v36 == v33 || (v37 = cstdlib_strlen(__s[0]), v37 > cstdlib_strlen(v74)) || (v43 = cstdlib_strlen(__s[0]), v43 == cstdlib_strlen(v74)) && HIDWORD(v65) > HIDWORD(v72) || (v44 = cstdlib_strlen(__s[0]), v44 == cstdlib_strlen(v74)) && HIDWORD(v65) == HIDWORD(v72) && v66 > v73))
              {
                v17 = activeprompt_ConsultOriOrth(&v64, a2, a3, a4, v23, &v63);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_73;
                }

                if (++v35 >= *(v79 + 16))
                {
                  goto LABEL_47;
                }

                v38 = *v79;
                v39 = (*(v79 + 24) + 24 * v35);
                v40 = &v64;
                v41 = a1;
                v42 = v35;
              }

              else
              {
                v17 = activeprompt_ConsultOriOrth(&v71, a2, a3, a4, v23, &v63);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_73;
                }

                if (++v36 >= *(v78 + 16))
                {
                  goto LABEL_47;
                }

                v38 = *v78;
                v39 = (*(v78 + 24) + 24 * v36);
                v40 = &v71;
                v41 = a1;
                v42 = v36;
              }

              hlp_FillActivePrompt(v41, v38, v39, v42, v40);
LABEL_47:
              if (*v23 == 1)
              {
                v33 = *(v78 + 16);
                v45 = *(v79 + 16);
                v34 = v35 < v45;
                if (v36 < v33 || v35 < v45)
                {
                  continue;
                }
              }

              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        log_OutTraceTuningData(*(*(*a1 + 16) + 32), 216, "%s%s", v26, v27, v28, v29, v30, "INFO");
      }

      v17 = 0;
LABEL_71:
      v47 = 2;
    }

    else
    {
      v17 = 0;
      v47 = 0;
    }

    if (vector_GetElemAt(*(*(a1 + 8) + 264), v47, &v80))
    {
      break;
    }

LABEL_67:
    v23 = *(v23 + 16);
    if (!v23)
    {
      goto LABEL_73;
    }
  }

  do
  {
    if (domain_mngr_utils_ListContainsString(*(v80 + 8), "*"))
    {
      if (*v23 == 1)
      {
        v48 = v80;
        if (*(v80 + 16))
        {
          v49 = 0;
          v50 = 0;
          while (1)
          {
            hlp_FillActivePrompt(a1, *v48, (*(v48 + 24) + v49), v50, v81);
            v17 = activeprompt_ConsultOriOrth(v81, a2, a3, a4, v23, &v63);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_73;
            }

            if (*v23 == 1)
            {
              ++v50;
              v48 = v80;
              v49 += 24;
              if (v50 < *(v80 + 16))
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

    ++v47;
  }

  while (vector_GetElemAt(*(*(a1 + 8) + 264), v47, &v80));
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

LABEL_73:
  if (log_HasTraceTuningDataSubscriber(*(*(*a1 + 16) + 32)))
  {
    do
    {
      if (!a5)
      {
        log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 215, "", "text/plain;charset=utf-8", *a2, 0);
        if (!a4)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }

      v51 = a5;
      a5 = *(a5 + 16);
    }

    while (a5);
    if (!a4)
    {
      v58 = *(*(*a1 + 16) + 32);
      v59 = *a2;
      v60 = "text/plain;charset=utf-8";
      v61 = 0;
      goto LABEL_85;
    }

    if (*a4)
    {
      v52 = (*(v51 + 8) + *(v51 + 4) - *(*a3 + 12));
    }

    else
    {
      v52 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 215, "", "text/plain;charset=utf-8", *a2, v52);
LABEL_84:
    v58 = *(*(*a1 + 16) + 32);
    v59 = *a3;
    v61 = 32 * *a4;
    v60 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_85:
    log_OutTraceTuningDataBinary(v58, 215, "", v60, v59, v61);
LABEL_86:
    log_OutTraceTuningData(*(*(*a1 + 16) + 32), 213, "%s%s %s%u", v53, v54, v55, v56, v57, "END");
  }

  return v17;
}

uint64_t activeprompt_db_Consult(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = a1;
  v87 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(v11 + 28) != 2 || !*(v11 + 24))
  {
    return 0;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(*v11 + 16) + 32)))
  {
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
    goto LABEL_114;
  }

  v26 = a7;
  v86 = v11;
  while (1)
  {
    v103 = 0;
    v104 = 0;
    v102 = 0;
    if (!*v26)
    {
      v20 = 0;
      goto LABEL_60;
    }

    memset(v105, 0, 104);
    v87 = 0;
    if (!vector_GetElemAt(*(*(v11 + 8) + 264), 0, &v102) || *v102 != 1 || !vector_GetElemAt(*(*(v11 + 8) + 264), 1u, &v103) || *v103 != 2)
    {
      v20 = 0;
      v32 = 0;
      goto LABEL_37;
    }

    v101 = 0;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    *__s = 0u;
    v88 = 0u;
    v89 = 0u;
    v27 = domain_mngr_utils_ListContainsString(*(v102 + 8), "*");
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
            if (domain_mngr_utils_ListContainsString(*(v102 + 8), *(*a3 + v30 + 24)) == 1)
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

    if (domain_mngr_utils_ListContainsString(*(v103 + 8), "*"))
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
            if (domain_mngr_utils_ListContainsString(*(v103 + 8), *(*a3 + v52 + 24)) == 1)
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
      v54 = v102;
      hlp_FillActivePrompt(v11, *v102, *(v102 + 24), 0, &v95);
      v55 = v103;
      hlp_FillActivePrompt(v11, *v103, *(v103 + 24), 0, &v88);
      if (*v26 == 1)
      {
        v56 = *(v54 + 16);
        v57 = *(v55 + 16) != 0;
        if (v56 != 0 || v57)
        {
          v58 = 0;
          v59 = 0;
          while (1)
          {
            if (v57 && (__s[0] ? (v60 = v98 == 0) : (v60 = 1), !v60 && (v59 == v56 || (v61 = cstdlib_strlen(__s[0]), v61 > cstdlib_strlen(v98)) || (v67 = cstdlib_strlen(__s[0]), v67 == cstdlib_strlen(v98)) && HIDWORD(v89) > HIDWORD(v96) || (v68 = cstdlib_strlen(__s[0]), v68 == cstdlib_strlen(v98)) && HIDWORD(v89) == HIDWORD(v96) && v90 > v97)))
            {
              v20 = activeprompt_Consult(&v88, *(v103 + 8), a2, a3, a4, v26, a5, a6, &v87, a8);
              if ((v20 & 0x80000000) != 0)
              {
                goto LABEL_114;
              }

              if (++v58 >= *(v103 + 16))
              {
                goto LABEL_103;
              }

              v62 = *v103;
              v63 = (*(v103 + 24) + 24 * v58);
              v64 = &v88;
              v65 = v11;
              v66 = v58;
            }

            else
            {
              v20 = activeprompt_Consult(&v95, *(v102 + 8), a2, a3, a4, v26, a5, a6, &v87, a8);
              if ((v20 & 0x80000000) != 0)
              {
                goto LABEL_114;
              }

              if (++v59 >= *(v102 + 16))
              {
                goto LABEL_103;
              }

              v62 = *v102;
              v63 = (*(v102 + 24) + 24 * v59);
              v64 = &v95;
              v65 = v11;
              v66 = v59;
            }

            hlp_FillActivePrompt(v65, v62, v63, v66, v64);
LABEL_103:
            if (*v26 == 1)
            {
              v56 = *(v102 + 16);
              v69 = *(v103 + 16);
              v57 = v58 < v69;
              if (v59 < v56 || v58 < v69)
              {
                continue;
              }
            }

            goto LABEL_111;
          }
        }
      }

      v20 = 0;
    }

LABEL_111:
    v32 = 2;
LABEL_37:
    if (vector_GetElemAt(*(*(v11 + 8) + 264), v32, &v104))
    {
      break;
    }

LABEL_60:
    v26 = *(v26 + 16);
    if (!v26)
    {
      goto LABEL_114;
    }
  }

  do
  {
    if (domain_mngr_utils_ListContainsString(*(v104 + 8), "*"))
    {
      goto LABEL_130;
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
        if (domain_mngr_utils_ListContainsString(*(v104 + 8), *(*a3 + v42 + 24)) == 1)
        {
          v44 = 1;
        }

        v41 = *a4;
      }

      ++v43;
      v42 += 32;
    }

    while (v43 < v41);
    v11 = v86;
    if (v44)
    {
LABEL_130:
      if (*v26 == 1)
      {
        v38 = v104;
        if (*(v104 + 16))
        {
          v39 = 0;
          v40 = 0;
          while (1)
          {
            hlp_FillActivePrompt(v86, *v38, (*(v38 + 24) + v39), v40, v105);
            v20 = activeprompt_Consult(v105, *(v38 + 8), a2, a3, a4, v26, a5, a6, &v87, a8);
            if ((v20 & 0x80000000) != 0)
            {
              break;
            }

            if (*v26 == 1)
            {
              ++v40;
              v38 = v104;
              v39 += 24;
              if (v40 < *(v104 + 16))
              {
                continue;
              }
            }

            goto LABEL_56;
          }

          v11 = v86;
          goto LABEL_114;
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
    v11 = v86;
  }

  while (vector_GetElemAt(*(*(v86 + 8) + 264), v32, &v104));
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_114:
  if (log_HasTraceTuningDataSubscriber(*(*(*v11 + 16) + 32)))
  {
    do
    {
      if (!a7)
      {
        log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 275, "", "text/plain;charset=depes", *a2, 0);
        if (!a4)
        {
          goto LABEL_127;
        }

        goto LABEL_125;
      }

      v71 = a7;
      a7 = *(a7 + 16);
    }

    while (a7);
    if (!a4)
    {
      v78 = *(*(*v11 + 16) + 32);
      v79 = *a2;
      v80 = "text/plain;charset=depes";
      v81 = 0;
      goto LABEL_126;
    }

    if (*a4)
    {
      v72 = (*(v71 + 8) + *(v71 + 4) - *(*a3 + 12));
    }

    else
    {
      v72 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 275, "", "text/plain;charset=depes", *a2, v72);
LABEL_125:
    v78 = *(*(*v11 + 16) + 32);
    v79 = *a3;
    v81 = 32 * *a4;
    v80 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_126:
    log_OutTraceTuningDataBinary(v78, 275, "", v80, v79, v81);
LABEL_127:
    log_OutTraceTuningData(*(*(*v11 + 16) + 32), 273, "%s%s %s%u", v73, v74, v75, v76, v77, "END");
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

      v8 = (*(&off_287EEFD50 + v7))(v6, a2, *(a1[1] + 64), *(a1[1] + 168), v10);
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

char *hlp_GetRecordingSrcFromApdbBrkString(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a1 + 8);
  v9 = cstdlib_strlen(__s);
  v10 = heap_Alloc(v8, v9 + 5);
  v11 = v10;
  if (v10)
  {
    cstdlib_strcpy(v10, __s);
    if (!hlp_ReplaceRpWithCs(v11, 1, a5))
    {
      heap_Free(*(a1 + 8), v11);
      return 0;
    }
  }

  return v11;
}

char *hlp_GetRecordingSrcFromFixedBrkString(uint64_t a1, uint64_t a2, const char *a3, const char *a4, int a5)
{
  v8 = *(a1 + 8);
  v9 = cstdlib_strlen("apdb");
  v10 = cstdlib_strlen("/cs/");
  v11 = cstdlib_strlen(a3);
  v12 = cstdlib_strlen(a4);
  v13 = heap_Alloc(v8, v9 + v10 + v11 + v12 + 6);
  v14 = v13;
  if (v13)
  {
    *v13 = 0;
    hlp_AppendStandardName(v13, 1, a3, a4, a5);
  }

  return v14;
}

char *hlp_GetRecordingSrcFromApdbURI(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, int a5)
{
  v6 = __s;
  v16 = *MEMORY[0x277D85DE8];
  if (__s)
  {
    __s = cstdlib_strlen(__s);
  }

  if (!IsThisUrlOrRealPath(v6, __s, 0))
  {
    return 0;
  }

  memset(v15, 0, sizeof(v15));
  v8 = *(a1 + 8);
  v9 = cstdlib_strlen(v6);
  v10 = heap_Alloc(v8, v9 + 5);
  v11 = v10;
  if (v10)
  {
    cstdlib_strcpy(v10, v6);
    v12 = cstdlib_strrchr(v11, 46);
    if (v12)
    {
      v13 = v12;
      cstdlib_strcpy(v15, v12);
      *v13 = 0;
    }

    if (hlp_ReplaceRpWithCs(v11, 0, a5))
    {
      cstdlib_strcat(v11, v15);
      return v11;
    }

    heap_Free(*(a1 + 8), v11);
    return 0;
  }

  return v11;
}

char *hlp_GetRecordingSrcFromFixedURI(uint64_t a1, char *__s, const char *a3, const char *a4, int a5)
{
  v8 = __s;
  v24 = *MEMORY[0x277D85DE8];
  if (__s)
  {
    __s = cstdlib_strlen(__s);
  }

  if (!IsThisUrlOrRealPath(v8, __s, 0))
  {
    return 0;
  }

  if (!SplitpathOrUrl(v8, __src, __s2, v21, 0, __sa))
  {
    return 0;
  }

  v10 = *(a1 + 8);
  v11 = cstdlib_strlen(v8);
  v12 = cstdlib_strlen("apdb");
  v13 = cstdlib_strlen("_cs_");
  v14 = cstdlib_strlen(a3);
  v15 = cstdlib_strlen(a4);
  v16 = cstdlib_strlen(__sa);
  v17 = heap_Alloc(v10, v11 + v12 + v13 + v14 + v15 + v16 + 6);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  cstdlib_strcpy(v17, __src);
  cstdlib_strcat(v18, __s2);
  cstdlib_strcat(v18, v21);
  hlp_AppendStandardName(v18, 0, a3, a4, a5);
  cstdlib_strcat(v18, __sa);
  return v18;
}

char *hlp_GetRecordingSrcFromCupWithCustomName(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = cstdlib_strlen("cup:");
  if (cstdlib_strncmp(a2, "cup:", v8))
  {
    return 0;
  }

  __s = 0;
  if (!cupreader_GetTuningDataNameInCup(a1, &__s))
  {
    return 0;
  }

  v11 = *(a1 + 8);
  v12 = cstdlib_strlen(a2);
  v13 = cstdlib_strlen(__s);
  v14 = cstdlib_strlen("cup:");
  v9 = heap_Alloc(v11, v12 + v14 + v13 + 10);
  if (v9)
  {
    v15 = cstdlib_strlen("cup:");
    cstdlib_strcpy(v9, &a2[v15]);
    cstdlib_strcat(v9, ":");
    cstdlib_strcat(v9, __s);
    if (!hlp_ReplaceRpWithCs(v9, 0, a5))
    {
      heap_Free(*(a1 + 8), v9);
      return 0;
    }
  }

  return v9;
}

char *hlp_GetRecordingSrcFromCupWithFixedName(uint64_t a1, const char *a2, const char *a3, const char *a4, int a5)
{
  v10 = cstdlib_strlen("cup:");
  if (cstdlib_strncmp(a2, "cup:", v10))
  {
    return 0;
  }

  v12 = *(a1 + 8);
  v13 = cstdlib_strlen(a2);
  v14 = cstdlib_strlen("apdb");
  v15 = cstdlib_strlen("_cs_");
  v16 = cstdlib_strlen(a3);
  v17 = cstdlib_strlen(a4);
  v11 = heap_Alloc(v12, v13 + v14 + v15 + v16 + v17 + 6);
  if (v11)
  {
    v18 = cstdlib_strlen("cup:");
    cstdlib_strcpy(v11, &a2[v18]);
    cstdlib_strcat(v11, ":");
    hlp_AppendStandardName(v11, 0, a3, a4, a5);
  }

  return v11;
}

uint64_t activeprompt_db_CopyPartsGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v8 = cstdlib_strlen(v6);
      result = heap_Alloc(a2, (v8 + 1));
      *(a3 + 8) = result;
      if (!result)
      {
        return result;
      }

      cstdlib_strcpy(result, *(a1 + 8));
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
    v5 = "/rp/";
  }

  else
  {
    v5 = "_rp_";
  }

  if (a2)
  {
    v6 = "/cs/";
  }

  else
  {
    v6 = "_cs_";
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
  if (*v5)
  {
    v9 = 0;
    v10 = __s1;
    do
    {
      v8 = v9;
      v9 = cstdlib_strstr(v10, v5);
      v10 = v9 + 1;
    }

    while (v9);
  }

  if (!v8)
  {
    return 0;
  }

  v11 = cstdlib_strlen(v5);
  cstdlib_strncpy(v8, v6, v11);
  cstdlib_strcat(__s1, v7);
  v12 = cstdlib_strlen(__s1);
  LH_itoa(a3 / 1000, &__s1[v12], 0xAu);
  return 1;
}

char *hlp_AppendStandardName(char *a1, int a2, const char *a3, const char *a4, int a5)
{
  cstdlib_strcat(a1, "apdb");
  v10 = a2 == 0;
  if (a2)
  {
    v11 = "/cs/";
  }

  else
  {
    v11 = "_cs_";
  }

  if (a2)
  {
    v12 = "/";
  }

  else
  {
    v12 = "_";
  }

  if (v10)
  {
    v13 = "_f";
  }

  else
  {
    v13 = "/f";
  }

  cstdlib_strcat(a1, v11);
  cstdlib_strcat(a1, a3);
  cstdlib_strcat(a1, v12);
  cstdlib_strcat(a1, a4);
  cstdlib_strcat(a1, v13);
  v14 = cstdlib_strlen(a1);

  return LH_itoa(a5 / 1000, &a1[v14], 0xAu);
}

uint64_t hlp_GetMimeParam(uint64_t a1, char *a2, char *__s, char **a4)
{
  v4 = 2296389639;
  if (a2)
  {
    if (__s)
    {
      if (*a2)
      {
        if (*__s)
        {
          *a4 = 0;
          v9 = cstdlib_strlen(__s);
          v10 = cstdlib_strchr(a2, 59);
          v4 = 2296389652;
          if (v10)
          {
            v11 = v10;
            v12 = v9;
            do
            {
              v13 = v11 + 1;
              if (!cstdlib_strncmp(v11 + 1, __s, v12))
              {
                v14 = &v13[v12];
                if (v13[v12] == 61)
                {
                  v15 = -1;
                  do
                  {
                    v16 = v11[v12 + 3 + v15++];
                  }

                  while (v16 != 59 && v16 != 0);
                  v18 = heap_Alloc(*(a1 + 8), (v15 + 1));
                  *a4 = v18;
                  if (!v18)
                  {
                    log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0, v19, v20, v21, v22, v25);
                    return 2296389642;
                  }

                  if (v15)
                  {
                    v23 = v15;
                    cstdlib_strncpy(v18, v14 + 1, v15);
                    v18 = &(*a4)[v15];
                  }

                  else
                  {
                    v23 = 0;
                  }

                  v4 = 0;
                  v13 = &v11[v12 + 1 + v15];
                  *v18 = 0;
                  v12 = v23;
                }
              }

              v11 = cstdlib_strchr(v13, 59);
            }

            while (v11);
          }
        }
      }
    }
  }

  return v4;
}

uint64_t hlp_TraceContent_AP(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, AP_BOUNDARYCND_STR[*(a2 + 28)]);
  if (*(a2 + 28) == 5)
  {
    __dst[1] = *(a2 + 24);
  }

  cstdlib_strcpy(v10, AP_BOUNDARYCND_STR[*(a2 + 32)]);
  if (*(a2 + 32) == 5)
  {
    v10[1] = *(a2 + 25);
  }

  log_OutTraceTuningData(*(*(*a1 + 16) + 32), 204, "%s%s %s%s %s%s %s%s %s%s %s%s %s%s", v4, v5, v6, v7, v8, "NAME");
  return log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 204, "", "application/x-realspeak-usids;version=4.0", a2 + 64, 4 * *(a2 + 56));
}

uint64_t activeprompt_GetRecPromptURI(unsigned int *a1, uint64_t a2, char **a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = 2296389639;
  if (*a1)
  {
    if (a3)
    {
      v6 = *(*a1 + 80);
      if (v6)
      {
        v8 = cstdlib_strlen(v6);
        cstdlib_strcpy(&__dst, "#");
        LH_utoa(a1[16], v13, 0xAu);
        v9 = cstdlib_strlen(&__dst);
        v10 = heap_Alloc(a2, (v8 + v9 + 1));
        *a3 = v10;
        if (v10)
        {
          cstdlib_strcpy(v10, *(*a1 + 80));
          cstdlib_strcpy(&(*a3)[v8], &__dst);
          return 0;
        }

        else
        {
          return 2296389642;
        }
      }
    }
  }

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

uint64_t activeprompt_Insert(uint64_t **a1, unsigned int a2, int a3, int a4, const char **a5, uint64_t *a6, unsigned __int16 *a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, _WORD *a12)
{
  v17 = a1;
  v18 = a11;
  v186 = a9;
  v214 = *MEMORY[0x277D85DE8];
  v19 = **a1;
  v20 = *(v19 + 16);
  v206 = 0;
  v205 = 0;
  v203 = 0;
  v204 = 0;
  v201 = 11;
  v202 = 0;
  v200 = 0;
  v199 = 255;
  v197 = 0;
  v198 = 0;
  v193 = *(v19 + 56);
  v213 = 0;
  v212 = 0;
  v196 = 0;
  v195 = 0;
  __s = 0;
  v21 = cstdlib_strstr(a1[6], "%Ä");
  v192 = a7;
  if (v21)
  {
    a3 = v21 - *(v17 + 12) + 1;
    hlp_RemoveSetPhonInRange(a5, a6, a7, a2, (v21 - *(v17 + 24) + 1));
    goto LABEL_3;
  }

  if (!a3)
  {
    v182 = cstdlib_strlen(*a5);
    v210 = 0;
    v211 = 0;
    v208 = 11;
    v209 = 0;
    v207 = 0;
    NextTokenRecIdAtFrom = (*(v193 + 104))(a10, a11, 1, 0, &v211 + 2);
    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
    {
      goto LABEL_276;
    }

    LOWORD(a3) = 0;
    if (((*(v193 + 152))(a10, a11, 2, HIWORD(v211), &v209) & 0x80000000) == 0 && v209)
    {
      NextTokenRecIdAtFrom = (*(v193 + 104))(a10, a11, 2, HIWORD(v211), &v211);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        goto LABEL_276;
      }

      v68 = v211;
      if (v211)
      {
        LOWORD(a3) = 0;
        do
        {
          if (a3)
          {
            break;
          }

          NextTokenRecIdAtFrom = (*(v193 + 168))(a10, a11, v68, 1, 1, &v210, &v210 + 2);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          if (v210 > a2)
          {
            goto LABEL_94;
          }

          NextTokenRecIdAtFrom = (*(v193 + 168))(a10, a11, v211, 0, 1, &v208, &v210 + 2);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          if (v208 != 6)
          {
            goto LABEL_94;
          }

          NextTokenRecIdAtFrom = (*(v193 + 176))(a10, a11, v211, 4, &v207, &v210 + 2);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          if (HIWORD(v210) && !cstdlib_strncmp(v207, "_PR_", HIWORD(v210)))
          {
            NextTokenRecIdAtFrom = (*(v193 + 168))(a10, a11, v211, 2, 1, &v209 + 2, &v210 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            LOWORD(a3) = HIWORD(v209) >= a2 ? HIWORD(v209) - a2 : 0;
          }

          else
          {
LABEL_94:
            LOWORD(a3) = 0;
          }

          NextTokenRecIdAtFrom = (*(v193 + 120))(a10, a11, v211, &v211);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          v68 = v211;
          if (!v211)
          {
            break;
          }
        }

        while (v210 <= a2);
      }

      else
      {
        LOWORD(a3) = 0;
      }
    }

    if (a2 + a3 >= v182)
    {
      if (v182 > a2)
      {
        LOWORD(a3) = v182 - a2;
      }

      else
      {
        LOWORD(a3) = 0;
      }
    }

    else
    {
      v116 = &(*a5)[a2];
      for (i = v116[a3]; i; i = v116[a3])
      {
        if (!cstdlib_strchr(" _", i) && !cstdlib_strchr(*((*v17)[1] + 192), v116[a3]))
        {
          break;
        }

        LOWORD(a3) = a3 + 1;
      }
    }
  }

  hlp_RemoveSetPhonInRange(a5, a6, a7, a2, a3);
  v28 = cstdlib_strstr(&(*a5)[a2], "§");
  if (!v28)
  {
    v30 = 0;
LABEL_104:
    *a12 -= v30;
LABEL_3:
    if (*(v17 + 2) == 2)
    {
      v22 = *v17;
      if (*(*v17 + 8) == 1)
      {
        v207 = 0;
        RecPromptURI = activeprompt_GetRecPromptURI(v17, *(v20 + 8), &v207);
        if ((RecPromptURI & 0x80000000) != 0)
        {
          v55 = RecPromptURI;
        }

        else
        {
          if (vector_Add(*(**v17 + 88), &v207))
          {
            v197 = v207;
            goto LABEL_123;
          }

          v55 = 2296389642;
          heap_Free(*(v20 + 8), v207);
        }

LABEL_117:
        log_OutPublic(*(v20 + 32), "DOMAIN_MNGR", 47000, 0, v24, v25, v26, v27, v168);
        goto LABEL_277;
      }

      if (!*(*v22 + 64))
      {
        goto LABEL_191;
      }

      v66 = v22[10];
      if (v66)
      {
        v67 = cstdlib_strlen(v66);
        v22 = *v17;
      }

      else
      {
        v67 = 0;
      }

      v69 = v22[5];
      if (v69)
      {
        v70 = cstdlib_strlen(v69);
      }

      else
      {
        v70 = 0;
      }

      v71 = *(v20 + 8);
      v72 = cstdlib_strlen(v17[2]);
      v73 = heap_Alloc(v71, (v67 + v70 + v72 + 1));
      if (!v73)
      {
        v55 = 2296389642;
        goto LABEL_117;
      }

      v74 = v73;
      v75 = (*v17)[10];
      if (v75)
      {
        cstdlib_strcpy(v73, v75);
      }

      v190 = a5;
      cstdlib_strcpy(&v74[v67], v17[2]);
      v76 = *v17;
      if ((*v17)[5])
      {
        v77 = cstdlib_strlen(v74);
        cstdlib_strcpy(&v74[v77], (*v17)[5]);
        v78 = v17;
        v76 = *v17;
      }

      else
      {
        v78 = v17;
      }

      v79 = *v76;
      v80 = *(*(*v76 + 64) + 64);
      v81 = v76[10] ? 0 : v76[6];
      NullHandle = safeh_GetNullHandle();
      v84 = v80(*(v79 + 72), *(v79 + 80), v74, v81, NullHandle, v83, &v197);
      heap_Free(*(v20 + 8), v74);
      v17 = v78;
      a5 = v190;
      if (v84 < 0)
      {
LABEL_191:
        v178 = v17;
        v180 = v20;
        v55 = 0;
        v108 = 0;
        v109 = 0;
LABEL_192:
        v207 = 0;
        StrArrDelete(v109);
        StrArrDelete(v108);
        if ((ssftstring_ObjOpen(*(v180 + 8), &v207) & 0x80000000) == 0)
        {
          if ((ssftstring_AppendCStr(v207, *(*(*v178 + 8) + 168)) & 0x80000000) == 0 && (ssftstring_AppendCStr(v207, "::") & 0x80000000) == 0 && (ssftstring_AppendCStr(v207, *(v178 + 16)) & 0x80000000) == 0)
          {
            v110 = *(v180 + 32);
            ssftstring_CStr(v207);
            log_OutEvent(v110, 14, "%s%s", v111, v112, v113, v114, v115, "APID");
          }

          ssftstring_ObjClose(v207);
        }

        goto LABEL_277;
      }
    }

LABEL_123:
    v55 = 2296389642;
    LODWORD(v212) = -65536;
    BYTE4(v212) = 0;
    v175 = a6;
    v191 = a5;
    v85 = a11;
    NextTokenRecIdAtFrom = (*(v193 + 104))(a10, a11, 1, 0, &v206 + 2);
    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
    {
      goto LABEL_276;
    }

    NextTokenRecIdAtFrom = (*(v193 + 104))(a10, a11, 2, HIWORD(v206), &v206);
    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
    {
      goto LABEL_276;
    }

    v86 = v206;
    if (v206)
    {
      v87 = 0;
      v169 = 0;
      v171 = 0;
      v173 = 0;
      v170 = 0;
      v183 = a2 + a3;
      v172 = 1;
      while (1)
      {
        NextTokenRecIdAtFrom = (*(v193 + 168))(a10, a11, v86, 0, 1, &v201, &v203 + 2);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_276;
        }

        NextTokenRecIdAtFrom = (*(v193 + 168))(a10, a11, v206, 1, 1, &v202, &v203 + 2);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_276;
        }

        if (v201 - 9 < 2)
        {
LABEL_132:
          if (v202 < a2 || v183 <= v202)
          {
            v88 = 0;
            v93 = v173;
            if (v183 <= v202)
            {
              v93 = 1;
            }

            LODWORD(v173) = v93;
          }

          else if (*(v17 + 2) == 1)
          {
            v88 = v206;
            if (((*(v193 + 184))(a10, a11, v206, 14, &v202 + 2) & 0x80000000) == 0 && HIWORD(v202))
            {
              NextTokenRecIdAtFrom = (*(v193 + 176))(a10, a11, v206, 14, &v195, &v203 + 2);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_276;
              }

              v89 = v195;
              if (v195)
              {
                v90 = v171;
                if (!v171)
                {
                  v90 = StrArrInit(*(**v17 + 16));
                  if (!v90)
                  {
                    goto LABEL_277;
                  }

                  v89 = v195;
                }

                v171 = v90;
                NextTokenRecIdAtFrom = StrArrSave(v90, v87, v89);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_276;
                }
              }
            }

            if (((*(v193 + 184))(a10, a11, v206, 5, &v202 + 2) & 0x80000000) == 0 && HIWORD(v202))
            {
              NextTokenRecIdAtFrom = (*(v193 + 176))(a10, a11, v206, 5, &__s, &v203 + 2);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_276;
              }

              v91 = __s;
              if (__s)
              {
                v92 = v169;
                if (!v169)
                {
                  v92 = StrArrInit(*(**v17 + 16));
                  if (!v92)
                  {
                    goto LABEL_277;
                  }

                  v91 = __s;
                }

                v169 = v92;
                NextTokenRecIdAtFrom = StrArrSave(v92, v87, v91);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_276;
                }
              }
            }
          }

          else
          {
            if (v172 == 1)
            {
              v94 = 14;
            }

            else
            {
              v94 = 12;
            }

            v201 = v94;
            NextTokenRecIdAtFrom = (*(v193 + 160))(a10, a11, v206, 0, 1, &v201, &v203);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            v88 = 0;
            v172 = 0;
          }

          goto LABEL_172;
        }

        if (v201 != 15)
        {
          break;
        }

        if (*(v17 + 2) != 1)
        {
          goto LABEL_160;
        }

        if (v202 < a2 || v183 <= v202)
        {
          v88 = 0;
          if (v173)
          {
            v95 = 1;
          }

          else
          {
            v95 = v183 > v202;
          }

          v96 = v170;
          if (!v95)
          {
            v96 = v206;
          }

          v170 = v96;
        }

        else
        {
          v88 = v206;
          if (v202 == a2)
          {
            hlp_SavePhraseProps(v193, a10, a11, v206, &v212);
          }
        }

LABEL_172:
        NextTokenRecIdAtFrom = (*(v193 + 120))(a10, a11, v206, &v206);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_276;
        }

        if (v88)
        {
          NextTokenRecIdAtFrom = (*(v193 + 168))(a10, a11, v88, 8, 1, &v200, &v203 + 2);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          v101 = (*(v193 + 184))(a10, a11, v88, 18, &v202 + 2);
          v102 = 0;
          if ((v101 & 0x80000000) == 0 && HIWORD(v202))
          {
            NextTokenRecIdAtFrom = (*(v193 + 176))(a10, a11, v88, 18, &v198, &v203 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            v102 = 0;
            if (HIWORD(v203) && v198)
            {
              v102 = cstdlib_strcmp(v198, "external") == 0;
            }
          }

          HIDWORD(v173) = v102;
          if (v201 <= 0xA && ((1 << v201) & 0x610) != 0)
          {
            ++v87;
          }

          NextTokenRecIdAtFrom = (*(v193 + 192))(a10, a11, v88);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }
        }

        v86 = v206;
        if (!v206)
        {
          if (*(v17 + 2) != 1)
          {
            v85 = a11;
            v105 = a9;
            v108 = v169;
            goto LABEL_214;
          }

          v103 = v87;
          v104 = a6;
          v105 = a9;
          if (v171)
          {
            StrArrDump(v171, v87, "NLU feat Before AP subst", "NLU", v97, v98, v99, v100);
            v106 = v171;
            v107 = *(v17 + 28);
            v108 = v169;
            if (v171[1] >= v107)
            {
              v85 = a11;
            }

            else
            {
              NextTokenRecIdAtFrom = StrArrRealloc(v171, v107 + 10);
              v85 = a11;
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_276;
              }

              v107 = *(v17 + 28);
              v106 = v171;
            }

            NextTokenRecIdAtFrom = NLUFeatAdaptToAp(v106, v103, v107);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            StrArrDump(v106, *(v17 + 28), "NLU feats after AP subst", "NLU", v158, v159, v160, v161);
          }

          else
          {
            v106 = 0;
            v85 = a11;
            v108 = v169;
          }

          v171 = v106;
          if (!v108)
          {
            goto LABEL_199;
          }

          StrArrDump(v108, v103, "POS Before AP subst", "POS", v97, v98, v99, v100);
          v162 = *(v17 + 28);
          if (v108[1] < v162)
          {
            NextTokenRecIdAtFrom = StrArrRealloc(v108, v162 + 10);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            v162 = *(v17 + 28);
          }

          NextTokenRecIdAtFrom = POSAdaptToAp(v108, v103, v162);
          if ((NextTokenRecIdAtFrom & 0x80000000) == 0)
          {
            StrArrDump(v108, *(v17 + 28), "POS after AP subst", "POS", v163, v164, v165, v166);
            goto LABEL_199;
          }

          goto LABEL_276;
        }
      }

      if (v201 == 4)
      {
        goto LABEL_132;
      }

LABEL_160:
      v88 = 0;
      goto LABEL_172;
    }

    v108 = 0;
    v171 = 0;
    HIDWORD(v173) = 0;
    LOWORD(v170) = 0;
    v104 = a6;
    v105 = a9;
    if (*(v17 + 2) == 1)
    {
LABEL_199:
      NextTokenRecIdAtFrom = hlp_AlignOrthAndPhonWords(a10, v85, v193, v17, v191, v104, v192, v105, a4, a2, &v196);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        goto LABEL_276;
      }
    }

LABEL_214:
    v178 = v17;
    v118 = a2 + a4;
    v120 = *(v105 + 4);
    v119 = *(v105 + 8);
    v188 = *(v105 + 16);
    v121 = v20;
    v122 = v196 + a3;
    v180 = v121;
    v123 = *(v121 + 8);
    v124 = v118;
    v184 = *v105;
    if (v118 <= v120)
    {
      v125 = (v196 + a3);
      v55 = CI_Update(v123, v105, 0, v120, v122);
      if ((v55 & 0x80000000) != 0)
      {
        goto LABEL_277;
      }
    }

    else
    {
      v55 = CI_Update(v123, v105, *v105, v120, v118 - v120);
      if ((v55 & 0x80000000) != 0)
      {
        goto LABEL_277;
      }

      v125 = v122;
      v126 = CILE_New(*(v180 + 8), 0, v124, v122);
      if (!v126)
      {
        v154 = *(v180 + 32);
        goto LABEL_264;
      }

      *(v105 + 16) = v126;
      v186 = v126;
      v85 = a11;
    }

    v131 = v119 + v120 - (v124 + v125);
    if (v119 + v120 <= v124 + v125)
    {
      v132 = v180;
      v138 = v175;
      v133 = v186;
    }

    else
    {
      v132 = v180;
      v133 = CILE_New(*(v180 + 8), v184, v124 + v125, v131);
      v138 = v175;
      if (!v133)
      {
        log_OutPublic(*(v180 + 32), "DOMAIN_MNGR", 47000, 0, v134, v135, v136, v137, v168);
        *(v186 + 2) = v188;
LABEL_265:
        v55 = 2296389642;
        goto LABEL_277;
      }

      *(v186 + 2) = v133;
    }

    *(v133 + 2) = v188;
    if (*(v178 + 8) == 1)
    {
      v205 = 0;
      NextTokenRecIdAtFrom = (*(v193 + 104))(a10, v85, 1, 0, &v206 + 2);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        goto LABEL_276;
      }

      NextTokenRecIdAtFrom = (*(v193 + 104))(a10, v85, 2, HIWORD(v206), &v206);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        goto LABEL_276;
      }

      NextTokenRecIdAtFrom = hlp_GetNextTokenRecIdAtFrom(a10, v85, v193, a2, v206, &v205);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        goto LABEL_276;
      }

      if ((~v212 & 0xFFFF0000) != 0)
      {
        NextTokenRecIdAtFrom = hlp_InsertInitialPhraseRecord(a10, v85, v193, HIWORD(v206), &v212, &v205);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_276;
        }
      }

      v139 = v108;
      v140 = *(v178 + 56);
      if (*(v178 + 56))
      {
        v141 = 0;
        v142 = 0;
        do
        {
          LOWORD(v207) = 0;
          if (v140 - 1 == v141)
          {
            v142 = 1;
          }

          v143 = a2;
          v144 = hlp_SearchWordBoundaryInOrth(&(*v191)[a2]);
          if (v144 == 0xFFFF)
          {
            LOWORD(v144) = cstdlib_strlen(&(*v191)[a2]);
          }

          v145 = v144 + a2;
          NextTokenRecIdAtFrom = hlp_InsertPromptWordRecord(a10, a11, v193, v178, v171, v139, v141, v142, HIWORD(v206), a2, SBYTE1(a2), v144 + a2, v200, SHIDWORD(v173), &v207, &v199, &v204, &v205);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          v146 = (*v191)[v145];
          if (v146)
          {
            LOWORD(a2) = v145;
            v147 = v178;
            do
            {
              if (!cstdlib_strchr(" _", v146))
              {
                break;
              }

              LOWORD(a2) = a2 + 1;
              v146 = (*v191)[a2];
            }

            while (v146);
          }

          else
          {
            LOWORD(a2) = v145;
            v147 = v178;
          }

          NextTokenRecIdAtFrom = hlp_GetNextTokenRecIdAtFrom(a10, a11, v193, a2, v205, &v205);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_276;
          }

          if (!v204)
          {
            NextTokenRecIdAtFrom = hlp_CreateOrUpdatePhraseRecord(a10, a11, v193, v142, v170, v143, v199, v207, &v205);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_276;
            }
          }

          ++v141;
          v140 = *(v147 + 56);
        }

        while (v141 < v140);
      }

      v55 = (*(v193 + 272))(a10, a11, 16, 3, 0, 0);
      v108 = v139;
LABEL_261:
      v109 = v171;
      if ((v55 & 0x80000000) != 0)
      {
        goto LABEL_277;
      }

      goto LABEL_192;
    }

    v148 = *v192;
    v149 = *v138;
    v150 = a8;
    if (v148 > a8)
    {
      v151 = a8;
      v152 = (v149 + 32 * a8 + 12);
      while (1)
      {
        v153 = *v152;
        v152 += 8;
        if (v153 > v124)
        {
          break;
        }

        if (v148 == ++v151)
        {
          v150 = *v192;
          goto LABEL_255;
        }
      }

      v150 = v151;
    }

LABEL_255:
    v155 = heap_Realloc(*(v132 + 8), v149, 32 * v148 + 32);
    if (v155)
    {
      *v138 = v155;
      v156 = *v192;
      if (v150 < v156)
      {
        cstdlib_memmove((v155 + 32 * v150 + 32), (v155 + 32 * v150), 32 * (v156 - v150));
        LOWORD(v156) = *v192;
        v155 = *v138;
      }

      *v192 = v156 + 1;
      cstdlib_memset((v155 + 32 * v150), 0, 0x20uLL);
      v157 = *v138 + 32 * v150;
      *v157 = 26;
      if (v150)
      {
        *(v157 + 4) = *(v157 - 28);
      }

      *(v157 + 12) = v124;
      *(v157 + 24) = v197;
      goto LABEL_261;
    }

    v154 = *(v132 + 32);
LABEL_264:
    log_OutPublic(v154, "DOMAIN_MNGR", 47000, 0, v127, v128, v129, v130, v168);
    goto LABEL_265;
  }

  v29 = v28;
  v30 = 0;
  v31 = "§";
  v177 = v17;
  v179 = v20;
  v189 = a5;
  v176 = a2;
  while (1)
  {
    if (cstdlib_strlen(v31) + 1 >= a3)
    {
      goto LABEL_104;
    }

    v32 = a3;
    v33 = v31;
    v181 = v32;
    v34 = v29 - *a5;
    v35 = v32 + a2;
    if (v34 >= v35)
    {
      v17 = v177;
      LOWORD(a3) = v32;
      goto LABEL_104;
    }

    v36 = cstdlib_strlen(v33);
    v37 = *a5;
    if (v34 > a2 && v37[v34 - 1] == 32)
    {
      ++v36;
      LOWORD(v34) = v34 - 1;
      v38 = a10;
      v39 = v193;
    }

    else
    {
      v40 = v36 + v34;
      v38 = a10;
      v39 = v193;
      if (v40 < v35 && v37[v40] == 32)
      {
        ++v36;
      }
    }

    v31 = v33;
    v41 = cstdlib_strlen(v37);
    v42 = v36;
    if (v36)
    {
      break;
    }

    v62 = v34;
    v17 = v177;
    v63 = v181;
LABEL_72:
    v30 += v42;
    v52 = v63 >= v42;
    v65 = v63 - v42;
    if (v52)
    {
      LOWORD(a3) = v65;
    }

    else
    {
      LOWORD(a3) = 0;
    }

    a5 = v189;
    v29 = cstdlib_strstr(&(*v189)[v62], v31);
    v20 = v179;
    a2 = v176;
    if (!v29)
    {
      goto LABEL_104;
    }
  }

  v174 = v34;
  cstdlib_memmove(&(*v189)[v34], &(*v189)[v34 + v36], v41 - (v34 + v36) + 1);
  v43 = *v192;
  if (*v192)
  {
    v44 = a4 + v34;
    v45 = v44 + v36;
    v46 = (*a6 + 16);
    do
    {
      v47 = *(v46 - 1);
      v48 = *v46;
      v49 = v47 - v36;
      if (v47 <= v45)
      {
        v49 = a4 + v34;
      }

      if (v47 <= v44)
      {
        v49 = *(v46 - 1);
      }

      if (v48)
      {
        v50 = v48 + v47;
        v51 = v50 - v36;
        if (v50 <= v45)
        {
          v51 = a4 + v34;
        }

        if (v50 > v44)
        {
          v50 = v51;
        }

        v52 = v50 >= v49;
        v53 = v50 - v49;
        if (!v52)
        {
          v53 = 0;
        }

        *v46 = v53;
      }

      *(v46 - 1) = v49;
      v46 += 8;
      --v43;
    }

    while (v43);
  }

  LOWORD(v207) = 0;
  LOWORD(v208) = 0;
  v210 = 0;
  v211 = 0;
  NextTokenRecIdAtFrom = (*(v39 + 104))(v38, v18, 1, 0, &v207);
  if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
  {
    goto LABEL_276;
  }

  v55 = (*(v39 + 104))(v38, v18, 2, v207, &v208);
  if ((v55 & 0x80000000) != 0 || !v208)
  {
LABEL_65:
    if ((v55 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

LABEL_66:
    *(a9 + 8) = (*(a9 + 8) - v42) & ~((*(a9 + 8) - v42) >> 31);
    v64 = *(a9 + 16);
    if (v64)
    {
      v31 = v33;
      do
      {
        *(v64 + 4) = (*(v64 + 4) - v42) & ~((*(v64 + 4) - v42) >> 31);
        v64 = *(v64 + 16);
      }

      while (v64);
      v17 = v177;
    }

    else
    {
      v17 = v177;
      v31 = v33;
    }

    v63 = v181;
    v62 = v174;
    goto LABEL_72;
  }

  NextTokenRecIdAtFrom = (*(v39 + 168))(v38, v18);
  if ((NextTokenRecIdAtFrom & 0x80000000) == 0)
  {
    v56 = v42 + v34;
    do
    {
      NextTokenRecIdAtFrom = (*(v39 + 168))(v38, v18, v208, 2, 1, &v210, &v211 + 2);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        break;
      }

      if (HIWORD(v210) > v34)
      {
        v57 = v56 >= HIWORD(v210) ? v34 : HIWORD(v210) - v42;
        HIWORD(v210) = v57;
        NextTokenRecIdAtFrom = (*(v39 + 160))(v38, v18, v208, 1, 1, &v210 + 2, &v211);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          break;
        }
      }

      v58 = v210;
      if (v210 > v34)
      {
        if (v56 >= v210)
        {
          v59 = v34;
        }

        else
        {
          v59 = v210 - v42;
        }

        LOWORD(v210) = v59;
        NextTokenRecIdAtFrom = (*(v39 + 160))(v38, v18, v208, 2, 1, &v210, &v211);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          break;
        }

        v58 = v210;
      }

      v60 = v18;
      if (v58 <= HIWORD(v210))
      {
        v61 = v208;
      }

      else
      {
        v61 = 0;
      }

      NextTokenRecIdAtFrom = (*(v39 + 120))(v38, v60);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        break;
      }

      if (v61)
      {
        v55 = (*(v39 + 192))(v38, a11, v61);
        if ((v55 & 0x80000000) != 0)
        {
          v18 = a11;
          goto LABEL_65;
        }

        v18 = a11;
        if (!v208)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v18 = a11;
        if (!v208)
        {
          goto LABEL_66;
        }
      }

      NextTokenRecIdAtFrom = (*(v39 + 168))(v38, v18);
    }

    while ((NextTokenRecIdAtFrom & 0x80000000) == 0);
  }

LABEL_276:
  v55 = NextTokenRecIdAtFrom;
LABEL_277:
  *a12 += v196;
  return v55;
}

uint64_t hlp_RemoveSetPhonInRange(uint64_t result, _DWORD **a2, unsigned __int16 *a3, unsigned int a4, int a5)
{
  v5 = *a3;
  if (*a3)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    v18 = 0;
    v16 = 0;
    v15 = 0;
    v12 = a5 + a4;
    do
    {
      if ((*a2)[8 * v10] == 34)
      {
        result = hlp_GetRangeForSETPHON(*v9, *a2, v5, v11, &v18, &v17, &v16, &v15 + 1, &v15);
        if (result)
        {
          v13 = HIDWORD(v15) >= a4;
        }

        else
        {
          v13 = 0;
        }

        if (!v13 || v15 >= v12)
        {
          ++v11;
          v5 = *a3;
        }

        else
        {
          result = cstdlib_memmove(&(*a2)[8 * v10], &(*a2)[8 * v10 + 8], 32 * (*a3 + ~v10));
          v5 = *a3 - 1;
          *a3 = v5;
        }
      }

      else
      {
        ++v11;
      }

      v10 = v11;
    }

    while (v11 < v5);
  }

  return result;
}

void *StrArrInit(uint64_t a1)
{
  v2 = heap_Alloc(*(a1 + 8), 24);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v2[1] = 10;
    v4 = heap_Alloc(*(a1 + 8), 80);
    v3[2] = v4;
    if (v4)
    {
      v5 = v3[1];
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          *(v3[2] + 8 * i) = 0;
        }
      }
    }

    else
    {
      StrArrDelete(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t StrArrSave(void *a1, unint64_t a2, uint64_t __s)
{
  v3 = a1[2];
  if (!v3)
  {
    return 7;
  }

  if (a1[1] <= a2)
  {
    if (StrArrRealloc(a1, a2 + 10))
    {
      return 2296389642;
    }

    v3 = a1[2];
  }

  v7 = *(v3 + 8 * a2);
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
    *(a1[2] + 8 * a2) = 0;
  }

  if (__s)
  {
    v8 = *(*a1 + 8);
    v9 = cstdlib_strlen(__s);
    *(a1[2] + 8 * a2) = heap_Alloc(v8, (v9 + 1));
    v10 = *(a1[2] + 8 * a2);
    if (v10)
    {
      cstdlib_strcpy(v10, __s);
      return 0;
    }

    else
    {
      __s = 2296389642;
      StrArrDelete(a1);
    }
  }

  return __s;
}

uint64_t hlp_SavePhraseProps(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  __src = 0;
  if (a4 && a5)
  {
    v9 = result;
    result = (*(result + 168))(a2, a3, a4, 8, 1, a5, &v11);
    if ((result & 0x80000000) != 0 || (result = (*(v9 + 168))(a2, a3, a4, 7, 1, a5 + 2, &v11), (result & 0x80000000) != 0) || (result = (*(v9 + 176))(a2, a3, a4, 4, &__src, &v11), (result & 0x80000000) != 0))
    {
      *a5 = -65536;
      *(a5 + 4) = 0;
    }

    else if (__src)
    {
      if (v11)
      {
        result = cstdlib_strncpy((a5 + 4), __src, 8uLL);
        *(a5 + 11) = 0;
      }
    }
  }

  return result;
}

uint64_t StrArrDump(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  if (a3)
  {
    result = log_OutText(*(*result + 32), "DOMAIN_MNGR", 5, 0, "%s", a6, a7, a8, a3);
  }

  if (a2)
  {
    v11 = 0;
    do
    {
      v12 = *(*v10 + 32);
      if (*(v10[2] + 8 * v11))
      {
        result = log_OutText(v12, "DOMAIN_MNGR", 5, 0, "%s %3u: %s", a6, a7, a8, a4);
      }

      else
      {
        result = log_OutText(v12, "DOMAIN_MNGR", 5, 0, "%s %3u: <NULL>", a6, a7, a8, a4);
      }

      ++v11;
    }

    while (a2 != v11);
  }

  return result;
}

uint64_t StrArrRealloc(void *a1, unint64_t a2)
{
  if (a1[1] >= a2)
  {
    return 0;
  }

  v4 = heap_Realloc(*(*a1 + 8), a1[2], 8 * (a2 & 0x1FFFFFFF));
  if (v4)
  {
    a1[2] = v4;
    v5 = a1[1];
    if (v5 < a2)
    {
      do
      {
        *(a1[2] + 8 * v5++) = 0;
      }

      while (a2 != v5);
    }

    result = 0;
    a1[1] = a2;
  }

  else
  {
    StrArrDelete(a1);
    return 2296389642;
  }

  return result;
}

uint64_t NLUFeatAdaptToAp(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return 7;
  }

  v4 = a2;
  v6 = a1[1];
  if (v6 < a2)
  {
    return 7;
  }

  v7 = 0;
  if (a3 && a2 && a3 != a2)
  {
    if (a3 <= a2)
    {
      v49 = 0;
      v21 = StrArrInit(*a1);
      if (!v21)
      {
        return 2296389642;
      }

      v26 = v21;
      v27 = a3 - 1;
      if (v27 >= v4)
      {
        v28 = 0;
      }

      else
      {
        v28 = 0;
        v29 = v27;
        do
        {
          v30 = a1[2];
          if (v30)
          {
            if (a1[1] > v29)
            {
              for (i = *(v30 + 8 * v29); i; i = hlp_NLUStrNext(i))
              {
                if (cstdlib_strchr("seiSEI", *i) && i[1] == 95)
                {
                  v32 = *(*a1 + 8);
                  v33 = hlp_NLUStrLength(i);
                  v34 = strhelper_StringAppend(v32, 0, i, v33, &v49, 0xAuLL);
                  if (!v34)
                  {
                    goto LABEL_70;
                  }

                  v35 = v34;
                  v36 = StrArrSave(v26, v28, v34);
                  if (v36)
                  {
                    v7 = v36;
                    goto LABEL_76;
                  }

                  heap_Free(*(*a1 + 8), v35);
                  v49 = 0;
                  ++v28;
                }
              }
            }
          }

          ++v29;
        }

        while (v29 != v4);
      }

      StrArrDump(v26, v28, "Extra words before purge", "NLU", v22, v23, v24, v25);
      PurgeNLUStrArr(v26, v28, 69, 83, 0);
      PurgeNLUStrArr(v26, v28, 73, 73, 73);
      PurgeNLUStrArr(v26, v28, 73, 69, 69);
      PurgeNLUStrArr(v26, v28, 83, 73, 83);
      StrArrDump(v26, v28, "Extra words after purge", "NLU", v37, v38, v39, v40);
      v41 = a1[2];
      if (v41 && a1[1] > v27 && (v42 = *(v41 + 8 * v27)) != 0)
      {
        v35 = 0;
        while (1)
        {
          if (!cstdlib_strchr("seiSEI", *v42) || v42[1] != 95)
          {
            if (v49)
            {
              v35 = strhelper_StringAppend(*(*a1 + 8), v35, ";", 0xFFFFFFFFFFFFFFFFLL, &v49, 0xAuLL);
              if (!v35)
              {
                break;
              }
            }

            v43 = *(*a1 + 8);
            v44 = hlp_NLUStrLength(v42);
            v35 = strhelper_StringAppend(v43, v35, v42, v44, &v49, 0xAuLL);
            if (!v35)
            {
              break;
            }
          }

          v42 = hlp_NLUStrNext(v42);
          if (!v42)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v35 = 0;
LABEL_60:
        if (!v28)
        {
          v7 = 0;
LABEL_72:
          if (v35)
          {
LABEL_76:
            heap_Free(*(*a1 + 8), v35);
          }

          goto LABEL_77;
        }

        v45 = 0;
        while (1)
        {
          v46 = v26[2];
          if (v46)
          {
            if (v26[1] > v45)
            {
              v47 = *(v46 + 8 * v45);
              if (v47)
              {
                if (v49)
                {
                  v35 = strhelper_StringAppend(*(*a1 + 8), v35, ";", 0xFFFFFFFFFFFFFFFFLL, &v49, 0xAuLL);
                  if (!v35)
                  {
                    break;
                  }
                }

                v35 = strhelper_StringAppend(*(*a1 + 8), v35, v47, 0xFFFFFFFFFFFFFFFFLL, &v49, 0xAuLL);
                if (!v35)
                {
                  break;
                }
              }
            }
          }

          v48 = StrArrSave(a1, v27, v35);
          if (v28 == ++v45)
          {
            v7 = v48;
            goto LABEL_72;
          }
        }
      }

LABEL_70:
      v7 = 2296389642;
LABEL_77:
      v49 = 0;
      StrArrDelete(v26);
      return v7;
    }

    if (v6 > a2 - 1 && (v10 = *(v3 + 8 * (a2 - 1))) != 0)
    {
      v11 = *(*a1 + 8);
      v12 = cstdlib_strlen(v10);
      v13 = heap_Alloc(v11, (v12 + 1));
      if (v13)
      {
        v14 = v13;
        cstdlib_strcpy(v13, v10);
        v15 = v14;
        do
        {
          if ((*v15 | 0x20) == 0x73 && v15[1] == 95)
          {
            v16 = hlp_NLUStrLength(v15);
            v17 = 1;
            v18 = v15;
            do
            {
              if ((*v18 | 0x20) == 0x65 && v18[1] == 95 && v16 == hlp_NLUStrLength(v18) && !cstdlib_strncmp(v15 + 2, v18 + 2, v16 - 2))
              {
                v17 = 0;
              }

              v18 = hlp_NLUStrNext(v18);
            }

            while (v18);
            if (v17)
            {
              *v15 = 73;
            }
          }

          v15 = hlp_NLUStrNext(v15);
        }

        while (v15);
        v19 = a3 - 1;
        do
        {
          v7 = StrArrSave(a1, v4, v14);
          if (v7)
          {
            break;
          }
        }

        while (v19 != v4++);
        heap_Free(*(*a1 + 8), v14);
      }

      else
      {
        return 10;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t POSAdaptToAp(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a1[2])
  {
    return 7;
  }

  v3 = a2;
  if (a1[1] < a2)
  {
    return 7;
  }

  result = 0;
  if (a2 && a3 > a2)
  {
    while (1)
    {
      result = StrArrSave(a1, v3, "*");
      if (result)
      {
        break;
      }

      if (a3 == ++v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t hlp_AlignOrthAndPhonWords(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, const char **a5, void *a6, _WORD *a7, uint64_t a8, int a9, unsigned __int16 a10, _WORD *a11)
{
  v17 = a10;
  *a11 = 0;
  v18 = hlp_SearchWordBoundaryInOrth(*(a4 + 6));
  if (v18 == 0xFFFF)
  {
    v19 = 1;
  }

  else
  {
    v20 = 0;
    v19 = 1;
    do
    {
      ++v19;
      v20 += v18 + 1;
      v18 = hlp_SearchWordBoundaryInOrth((*(a4 + 6) + v20));
    }

    while (v18 != 0xFFFF);
  }

  for (i = (*a5)[a10]; i; i = (*a5)[v17])
  {
    if (cstdlib_strchr(" _", i))
    {
      break;
    }

    v17 = (v17 + 1);
  }

  v22 = a4[28];
  if (v22 >= 2)
  {
    v57 = a6;
    v56 = a8;
    v23 = 1;
    v24 = v17;
    v63 = a3;
    v25 = 1;
    while (1)
    {
      v26 = *(*a4 + 8);
      v27 = *(v26 + 280);
      if (v27)
      {
        v28 = *(v27 + 4 * *(a4 + 24));
        if (v28 == -1)
        {
          goto LABEL_25;
        }

        v29 = *(*(v26 + 288) + (v28 + v25));
      }

      else
      {
        if (v19 <= v22)
        {
          if (v22 - v19 < v25)
          {
            goto LABEL_25;
          }

          goto LABEL_27;
        }

        if (v25 != 1)
        {
          goto LABEL_25;
        }

        v29 = v19 - v22 + 1;
      }

      if (v29)
      {
        if (v29 == 1)
        {
LABEL_25:
          v31 = v24;
        }

        else
        {
          v61 = v25;
          v30 = (v29 - 2);
          do
          {
            (*a5)[v24] = 45;
            do
            {
              v24 = (v24 + 1);
              v31 = v24;
            }

            while ((*a5)[v24] && !cstdlib_strchr(" _", (*a5)[v24]));
            --v29;
          }

          while (v29 > 1u);
          v23 += v30 + 1;
          v25 = v61;
        }

        ++v23;
        v17 = v24;
        goto LABEL_61;
      }

LABEL_27:
      v62 = v25;
      if (v24)
      {
        v17 = v24;
        while (cstdlib_strchr(*(*(*a4 + 8) + 192), (*a5)[(v17 - 1)]))
        {
          if (!--v17)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
LABEL_31:
        v17 = 0;
      }

      v59 = *(**a4 + 16);
      v32 = cstdlib_strlen(*a5);
      v33 = cstdlib_strlen("§");
      v31 = v17;
      if (v32 >= v17)
      {
        v35 = v33;
        v36 = heap_Realloc(*(v59 + 8), *a5, (v32 + v33 + 2));
        if (!v36)
        {
          log_OutPublic(*(v59 + 32), "DOMAIN_MNGR", 47000, 0, v37, v38, v39, v40, v55);
          return 2296389642;
        }

        *a5 = v36;
        cstdlib_memmove((v36 + v17 + v35 + 1), (v36 + v17), v32 - v17 + 1);
        (*a5)[v17] = 32;
        cstdlib_memcpy(&(*a5)[v17 + 1], "§", v35);
        v41 = *a7;
        v60 = v35 + 1;
        v42 = (v35 + 1);
        if (*a7)
        {
          v43 = a9 + v17;
          v44 = (*v57 + 16);
          do
          {
            v45 = *(v44 - 1);
            if (v45 >= v43)
            {
              *(v44 - 1) = v45 + v42;
            }

            else if (*v44 + v45 >= v43)
            {
              *v44 += v42;
            }

            v44 += 8;
            --v41;
          }

          while (v41);
        }

        v66 = 0;
        v67 = 0;
        v65 = 0;
        result = (*(v63 + 104))(a1, a2, 1, 0, &v67 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(v63 + 104))(a1, a2, 2, HIWORD(v67), &v67);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v47 = v67;
        v49 = v63;
        v48 = a1;
        if (v67)
        {
          while (1)
          {
            result = (*(v49 + 168))(v48, a2, v47, 1, 1, &v65 + 2, &v66 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(v49 + 168))(v48, a2, v67, 2, 1, &v65, &v66 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v49 = v63;
            v48 = a1;
            if (HIWORD(v65) > v17)
            {
              HIWORD(v65) += v60;
              result = (*(v63 + 160))(a1, a2, v67, 1, 1, &v65 + 2, &v66);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            if (v65 > v17)
            {
              LOWORD(v65) = v65 + v60;
              result = (*(v63 + 160))(a1, a2, v67, 2, 1, &v65, &v66);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            result = (*(v63 + 120))(a1, a2, v67, &v67);
            if ((result & 0x80000000) == 0)
            {
              v47 = v67;
              if (v67)
              {
                continue;
              }
            }

            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            break;
          }
        }

        *(v56 + 8) = (*(v56 + 8) + v42) & ~((*(v56 + 8) + v42) >> 31);
        v50 = *(v56 + 16);
        if (v50)
        {
          v25 = v62;
          do
          {
            *(v50 + 4) = (*(v50 + 4) + v42) & ~((*(v50 + 4) + v42) >> 31);
            v50 = *(v50 + 16);
          }

          while (v50);
        }

        else
        {
          v25 = v62;
        }

        v34 = v60;
      }

      else
      {
        v34 = 0;
        v25 = v62;
      }

      *a11 += v34;
LABEL_61:
      v51 = *a5;
      while (1)
      {
        v52 = v51[v31];
        if (!v52)
        {
          break;
        }

        if (!cstdlib_strchr(" _", v52) && !cstdlib_strchr(*(*(*a4 + 8) + 192), (*a5)[v31]))
        {
          v53 = (*a5)[v17];
          if (v53)
          {
            v54 = v17;
            while (!cstdlib_strchr(" _", v53))
            {
              v54 = (v54 + 1);
              v53 = (*a5)[v54];
              v17 = v54;
              if (!v53)
              {
                goto LABEL_72;
              }
            }

            v17 = v54;
          }

          break;
        }

        v17 = (v17 + 1);
        v51 = *a5;
        v31 = v17;
      }

LABEL_72:
      ++v25;
      v22 = a4[28];
      v24 = v17;
      if (v25 >= v22)
      {
        goto LABEL_75;
      }
    }
  }

  v23 = 1;
LABEL_75:
  while (v23 < v19)
  {
    (*a5)[v17] = 45;
    do
    {
      LOWORD(v17) = v17 + 1;
    }

    while ((*a5)[v17] && !cstdlib_strchr(" _", (*a5)[v17]));
    ++v23;
  }

  return 0;
}

uint64_t hlp_GetNextTokenRecIdAtFrom(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _WORD *a6)
{
  v14 = a5;
  if (!a5)
  {
    return 0;
  }

  v13 = 0;
  v12 = 0;
  do
  {
    result = (*(a3 + 168))(a1, a2, a5, 1, 1, &v13, &v12);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (v13 >= a4)
    {
      break;
    }

    *a6 = v14;
    result = (*(a3 + 120))(a1, a2);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    LOWORD(a5) = v14;
  }

  while (v14);
  return result;
}

uint64_t hlp_InsertInitialPhraseRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v17 = 0;
  v16 = 15;
  if (*a6)
  {
    result = (*(a3 + 80))(a1, a2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    result = (*(a3 + 72))(a1, a2, 2, a4, a6);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v15 = 0;
  result = (*(a3 + 160))(a1, a2, *a6, 0, 1, &v16, &v15);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a3 + 160))(a1, a2, *a6, 1, 1, &v17, &v15);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a3 + 160))(a1, a2, *a6, 2, 1, &v17, &v15);
      if ((result & 0x80000000) == 0)
      {
        result = (*(a3 + 160))(a1, a2, *a6, 7, 1, a5 + 2, &v15);
        if ((result & 0x80000000) == 0)
        {
          result = (*(a3 + 160))(a1, a2, *a6, 8, 1, a5, &v15);
          if ((result & 0x80000000) == 0)
          {
            v12 = *(a3 + 160);
            v13 = *a6;
            v14 = cstdlib_strlen((a5 + 4));
            return v12(a1, a2, v13, 4, (v14 + 1), a5 + 4, &v15);
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_SearchWordBoundaryInOrth(char *a1)
{
  v2 = cstdlib_strstr(a1, "%Ä");
  if (v2)
  {
    v3 = v2 - a1;
  }

  else
  {
    v3 = cstdlib_strlen(a1);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = a1[v4];
      if (v5 == 32 || v5 == 95)
      {
        break;
      }

      if (++v4 >= v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOWORD(v4) = -1;
  }

  return v4;
}

uint64_t hlp_InsertPromptWordRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, unsigned __int16 a9, char a10, char a11, char a12, unsigned __int16 a13, int a14, unsigned __int16 *a15, _WORD *a16, _DWORD *a17, unsigned __int16 *a18)
{
  v23 = a18;
  v98 = *MEMORY[0x277D85DE8];
  v24 = *(a4 + 80);
  v25 = (*(a4 + 88) + 8 * a7);
  v26 = *(**a4 + 16);
  if (a7)
  {
    v27 = 11;
  }

  else
  {
    v27 = 13;
  }

  v95 = v27;
  strcpy(__s, "*");
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v86 = v25;
  v87 = *v25;
  v88 = v24;
  v90 = 0;
  if (*a18)
  {
    v28 = a1;
    v29 = a2;
    v30 = (*(a3 + 80))();
    if ((v30 & 0x80000000) != 0)
    {
      return v30;
    }
  }

  else
  {
    v28 = a1;
    v29 = a2;
    v30 = (*(a3 + 72))(a1, a2, 2, a9, a18);
    if ((v30 & 0x80000000) != 0)
    {
      return v30;
    }
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 0, 1, &v95, &v91);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 1, 1, &a10, &v91);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 2, 1, &a12, &v91);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v83 = v26;
  v84 = a3;
  v31 = *(a3 + 160);
  v32 = *v23;
  v33 = cstdlib_strlen((v88 + v87));
  v34 = v28;
  v30 = v31(v28, v29, v32, 3, (v33 + 1), v88 + v87, &v91);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  if (a5)
  {
    v35 = *(a5 + 16);
    if (v35)
    {
      if (*(a5 + 8) > a7)
      {
        v36 = *(v35 + 8 * a7);
        if (v36)
        {
          v37 = *(v84 + 160);
          v38 = *v23;
          v39 = cstdlib_strlen(*(v35 + 8 * a7));
          v30 = v37(v28, v29, v38, 14, (v39 + 1), v36, &v91);
          if ((v30 & 0x80000000) != 0)
          {
            return v30;
          }
        }
      }
    }
  }

  if (a6 && (v40 = *(a6 + 16)) != 0 && *(a6 + 8) > a7 && (v41 = *(v40 + 8 * a7)) != 0)
  {
    v42 = *(v84 + 160);
    v43 = *v23;
    v44 = (cstdlib_strlen(*(v40 + 8 * a7)) + 1);
    v45 = v28;
    v46 = v29;
    v47 = v43;
    v48 = v41;
  }

  else
  {
    v42 = *(v84 + 160);
    v49 = *v23;
    v44 = (cstdlib_strlen(__s) + 1);
    v48 = __s;
    v45 = v28;
    v46 = v29;
    v47 = v49;
  }

  v30 = v42(v45, v46, v47, 5, v44, v48, &v91);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v50 = 2296389642;
  v92 = cstdlib_strlen((v88 + v87)) + 1;
  v51 = heap_Calloc(*(v83 + 8), v92, 1);
  if (v51)
  {
    v52 = v51;
    v53 = cstdlib_strlen((v88 + v87));
    utf8_Utf8ToDepes(v88 + v87, v53, 0, v52, v92, &v92, 0);
    v54 = *(v84 + 160);
    v55 = *v23;
    v56 = cstdlib_strlen(v52);
    v57 = v54(v34, v29, v55, 15, (v56 + 1), v52, &v91);
    if ((v57 & 0x80000000) != 0)
    {
      v79 = v52;
      v50 = v57;
      goto LABEL_84;
    }

    if ((domain_mngr_utils_IsActiveVoiceAddon(v83, *(*(*a4 + 8) + 72), (*(*a4 + 8) + 80), (*(*a4 + 8) + 88), (*(*a4 + 8) + 100), &v90) & 0x80000000) != 0 || !v90 || (v96[0] = 0, (paramc_ParamGetInt(*(v83 + 40), *(*a4 + 72), v96) & 0x80000000) != 0) || (v58 = v96[0]) == 0)
    {
      v89 = 0;
      v59 = v86;
    }

    else
    {
      v59 = v86;
      v60 = heap_Calloc(*(v83 + 8), v86[2], 4);
      if (!v60)
      {
        v79 = v52;
        goto LABEL_84;
      }

      v61 = v60;
      cstdlib_memcpy(v60, (*(a4 + 72) + 4 * v86[1]), 4 * v86[2]);
      v62 = v86[2];
      v89 = v61;
      if (v86[2])
      {
        v63 = 0;
        v64 = v29;
        do
        {
          v65 = *&v61[v63];
          if (v65 != -1)
          {
            *&v61[v63] = v65 + v58;
          }

          v63 += 4;
        }

        while (4 * v62 != v63);
LABEL_41:
        v67 = v64;
        v68 = (*(v84 + 160))(v34);
        if ((v68 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v68 = (*(v84 + 160))(v34, v67, *v23, 6, 2, __s, &v91);
        if ((v68 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v68 = (*(v84 + 160))(v34, v67, *v23, 9, 1, &v93, &v91);
        if ((v68 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v69 = *(*a4 + 8);
        if (*(v69 + 208) == 1)
        {
          __sprintf_chk(v97, 0, 8uLL, "%u", *(*(v69 + 272) + *(v69 + 214) + (*(a4 + 60) + a7) * *(v69 + 212)));
          v70 = *(v84 + 160);
          v71 = *v23;
          v72 = cstdlib_strlen(v97);
          v68 = v70(v34, v29, v71, 13, (v72 + 1), v97, &v91);
          if ((v68 & 0x80000000) != 0)
          {
            goto LABEL_83;
          }

          v69 = *(*a4 + 8);
          v59 = v86;
        }

        v73 = a16;
        v74 = a17;
        v75 = a15;
        v76 = v59[3];
        *a15 = v76;
        if (*(v69 + 220) == 1)
        {
          v77 = *(*(v69 + 272) + *(v69 + 216) + (*(a4 + 60) + a7) * *(v69 + 212));
          *v73 = v77;
          if (v77 < 2)
          {
            if (*v75 != 0xFFFF && *v75)
            {
              v78 = 0;
            }

            else
            {
              v78 = 0;
              *v75 = 1;
            }

LABEL_63:
            v80 = a14;
            *v74 = 0;
            v81 = *v75;
            if (a8)
            {
              if (v80 || v81 == 0xFFFF)
              {
                v81 = a13;
                *v75 = a13;
                *v74 = 1;
              }
            }

            else if (v81 == 0xFFFF)
            {
              *v75 = 0;
LABEL_71:
              if (*(v69 + 228) == 1)
              {
                v82 = v78;
              }

              else
              {
                v82 = 1;
              }

              if (((v82 & 1) != 0 || *v75 == 65533 || !*v75) && (a8 != 1 || v80 != 1) || (strcpy(v96, "external"), v68 = (*(v84 + 160))(v34, v29, *v23, 18, 9, v96, &v91), (v68 & 0x80000000) == 0))
              {
                if (*v75 == -3)
                {
                  *v75 = 200;
                }

                v68 = (*(v84 + 160))(v34, v29, *v23, 8, 1, v75, &v91);
              }

LABEL_83:
              v50 = v68;
              heap_Free(*(v83 + 8), v52);
              v79 = v89;
              if (!v89)
              {
                return v50;
              }

LABEL_84:
              heap_Free(*(v83 + 8), v79);
              return v50;
            }

            if (v81)
            {
              *v73 = 1;
            }

            goto LABEL_71;
          }

          if (v77 == 2)
          {
            *v75 = 0;
          }
        }

        else
        {
          if (v76 && v76 != 0xFFFF)
          {
            v78 = 0;
            *v73 = 1;
            goto LABEL_63;
          }

          *v73 = 255;
        }

        v78 = 1;
        goto LABEL_63;
      }
    }

    v64 = v29;
    goto LABEL_41;
  }

  return v50;
}

uint64_t hlp_CreateOrUpdatePhraseRecord(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 a6, int a7, __int16 a8, _WORD *a9)
{
  v21 = a6;
  v20 = a7;
  v19 = a8;
  v18 = 15;
  if (a7 == 255)
  {
    result = 0;
    if (a4 && a5)
    {
      v13 = *(a3 + 192);

      return v13(a1, a2, a5);
    }
  }

  else
  {
    v17 = 0;
    if (a4 && a5)
    {
      *a9 = a5;
    }

    else
    {
      result = (*(a3 + 80))(a1, a2, *a9, a9);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 0, 1, &v18, &v17);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 1, 1, &v21, &v17);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 2, 1, &v21, &v17);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v14 = *(a3 + 160);
      v15 = *a9;
      v16 = cstdlib_strlen("");
      result = v14(a1, a2, v15, 4, (v16 + 1), "", &v17);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      a5 = *a9;
    }

    result = (*(a3 + 160))(a1, a2, a5, 7, 1, &v20, &v17);
    if ((result & 0x80000000) == 0)
    {
      return (*(a3 + 160))(a1, a2, *a9, 8, 1, &v19, &v17);
    }
  }

  return result;
}

void *StrArrDelete(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      v3 = result[1];
      if (v3)
      {
        v4 = v3 - 1;
        do
        {
          v5 = *(v1[2] + 8 * v4);
          if (v5)
          {
            heap_Free(*(*v1 + 8), v5);
          }

          --v4;
        }

        while (v4 != -1);
        v2 = v1[2];
      }

      heap_Free(*(*v1 + 8), v2);
    }

    v6 = *(*v1 + 8);

    return heap_Free(v6, v1);
  }

  return result;
}

uint64_t activeprompt_InsertOrth(char **a1, unsigned __int16 a2, int a3, const char **a4, uint64_t *a5, unsigned __int16 *a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, _WORD *a11)
{
  v112[0] = a2;
  v15 = **a1;
  v16 = *(v15 + 16);
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 5;
  v105 = 0;
  __s = 0;
  v17 = *(v15 + 56);
  v103 = 0;
  v18 = cstdlib_strstr(a1[6], "%Ä");
  v19 = a1[6];
  if (v18)
  {
    v20 = v18 - v19;
    v21 = (v18 - v19);
    v22 = heap_Alloc(*(v16 + 8), v21 + 1);
    if (!v22)
    {
      v28 = 2296389642;
      log_OutPublic(*(v16 + 32), "DOMAIN_MNGR", 47000, 0, v23, v24, v25, v26, v83);
      return v28;
    }

    v27 = v22;
    v94 = a7;
    v96 = v17;
    cstdlib_strncpy(v22, a1[6], v20);
    *(v27 + v21) = 0;
  }

  else
  {
    v94 = a7;
    v96 = v17;
    v20 = cstdlib_strlen(v19);
    v27 = a1[6];
  }

  v102 = v18;
  v28 = 2296389642;
  if (!v20)
  {
    v28 = 2296389639;
    goto LABEL_149;
  }

  v87 = v20;
  v89 = a6;
  v29 = v112[0];
  v30 = v112[0];
  if (v112[0] < cstdlib_strlen(*a4))
  {
    v30 = v112[0];
    do
    {
      if (!cstdlib_strchr(*(*(*a1 + 1) + 192), (*a4)[v30]))
      {
        break;
      }

      ++v30;
    }

    while (cstdlib_strlen(*a4) > v30);
  }

  v101 = v16;
  v31 = cstdlib_strlen(*a4);
  v32 = *a4;
  if (v30 == v31 || v32[v30] == 32)
  {
    v84 = 0;
    v91 = 0;
    if (v30 != cstdlib_strlen(v32))
    {
      ++v30;
    }

    v33 = v20;
    goto LABEL_15;
  }

  v33 = v20 + 1;
  v65 = cstdlib_strlen(v32);
  v91 = 1;
  v84 = -1;
  v34 = v112[0];
  if (v30 == v65)
  {
LABEL_15:
    v34 = v30;
  }

  v86 = v34;
  if (v112[0])
  {
    LOWORD(v35) = v112[0] - 1;
  }

  else
  {
    LOWORD(v35) = 0;
  }

  if (v112[0] >= 2u)
  {
    v35 = v35;
    while (cstdlib_strchr(*(*(*a1 + 1) + 192), (*a4)[v35]))
    {
      if (!--v35)
      {
        LOWORD(v35) = 0;
        break;
      }
    }
  }

  v36 = v20;
  if (v112[0])
  {
    v37 = *a4;
    if ((*a4)[v35] != 32)
    {
      ++v33;
      v85 = v112[0] + 1;
      v105 = v112[0] + 1;
      v92 = 1;
      v93 = 0;
      v38 = 1;
      goto LABEL_32;
    }

    v92 = 0;
    v38 = 0;
    v85 = v35 + 1;
    v105 = v35 + 1;
  }

  else
  {
    v92 = 0;
    v38 = 0;
    v85 = v35;
    v105 = v35;
    v37 = *a4;
  }

  v93 = 1;
LABEL_32:
  v39 = *(v16 + 8);
  v40 = cstdlib_strlen(v37);
  v41 = heap_Realloc(v39, v37, v40 + v33 + 2);
  if (v41)
  {
    v46 = v33;
    *a4 = v41;
    v47 = cstdlib_strlen(v41) + 1;
    if (v47 >= v29)
    {
      do
      {
        (*a4)[v33 + v47] = (*a4)[v47];
        v29 = v112[0];
      }

      while (v47-- > v112[0]);
    }

    v49 = v33 + v86;
    if (v38)
    {
      (*a4)[v29] = 32;
    }

    v50 = 0;
    v51 = v92;
    do
    {
      (*a4)[v112[0] + v51++] = *(v27 + v50++);
    }

    while (v36 != v50);
    v52 = a10;
    if (v91)
    {
      (*a4)[v112[0] - 1 + v46] = 32;
    }

    *a11 += v46;
    v53 = *a5;
    v54 = *a5 + 32 * v94;
    v57 = *(v54 + 12);
    v55 = (v54 + 12);
    v56 = v57;
    v55[1] = v87;
    if ((v93 & 1) == 0 && v56 == v112[0] + a3)
    {
      *v55 = v56 + 1;
    }

    v58 = *v89;
    if (v58 > (v94 + 1))
    {
      v59 = (v94 + 1);
      v60 = (v53 + 32 * v59 + 12);
      v61 = v59 + 1;
      do
      {
        *v60 += v46;
        v60 += 8;
      }

      while (v58 != v61++);
    }

    v63 = (*(v96 + 104))(a9, a10, 1, 0, &v111 + 2);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_148;
    }

    if (((*(v96 + 152))(a9, a10, 3, HIWORD(v111), &v103) & 0x80000000) == 0 && v103)
    {
      v63 = (*(v96 + 104))(a9, a10, 3, HIWORD(v111), &v111);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_148;
      }

      while (v111)
      {
        v63 = (*(v96 + 168))(a9, a10);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_148;
        }

        v63 = (*(v96 + 168))(a9, a10, v111, 2, 1, &v107, &v109);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_148;
        }

        v64 = v112[0];
        if (v108 >= v112[0])
        {
          LOWORD(v108) = v108 + v46;
          v63 = (*(v96 + 160))(a9, a10, v111, 1, 1, &v108, &v108 + 2);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_148;
          }

          v64 = v112[0];
        }

        if (v107 > v64)
        {
          v107 += v46;
          v63 = (*(v96 + 160))(a9, a10, v111, 2, 1, &v107, &v108 + 2);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_148;
          }
        }

        v28 = (*(v96 + 120))(a9, a10, v111, &v111);
        if ((v28 & 0x80000000) != 0)
        {
          goto LABEL_149;
        }
      }
    }

    v63 = (*(v96 + 104))(a9, a10, 1, 0, &v111 + 2);
    if ((v63 & 0x80000000) == 0)
    {
      v66 = 0;
      if (((*(v96 + 152))(a9, a10, 3, HIWORD(v111), &v103) & 0x80000000) != 0)
      {
        v67 = 0;
        v100 = 0;
        v68 = 0;
      }

      else
      {
        v67 = 0;
        v100 = 0;
        v68 = 0;
        if (v103)
        {
          v69 = (*(v96 + 104))(a9, a10, 3, HIWORD(v111), &v111);
          if ((v69 & 0x80000000) != 0)
          {
            goto LABEL_131;
          }

          v70 = v111;
          if (v111)
          {
            v88 = v49;
            v90 = 0;
            v66 = 0;
            v98 = 0;
            v100 = 0;
            v95 = 0;
            while (1)
            {
              v69 = (*(v96 + 168))(a9, a10, v70, 1, 1, &v108, &v109);
              if ((v69 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v69 = (*(v96 + 168))(a9, a10, v111, 2, 1, &v107, &v109);
              if ((v69 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v69 = (*(v96 + 168))(a9, a10, v111, 0, 1, &v106, &v109);
              if ((v69 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v71 = v106;
              if (v106 == 3)
              {
                if (v108 >= v112[0] || v107 <= v112[0])
                {
LABEL_87:
                  v72 = v108;
                  goto LABEL_88;
                }

                v69 = (*(v96 + 160))(a9, a10, v111, 2, 1, v112, &v108 + 2);
                if ((v69 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                v69 = (*(v96 + 80))(a9, a10, v111, &v111);
                if ((v69 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                v69 = (*(v96 + 160))(a9, a10, v111, 0, 1, &v106, &v108 + 2);
                if ((v69 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                LOWORD(v108) = v112[0] + v46;
                v69 = (*(v96 + 160))(a9, a10, v111, 1, 1, &v108, &v108 + 2);
                if ((v69 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                v69 = (*(v96 + 160))(a9, a10, v111, 2, 1, &v107, &v108 + 2);
                if ((v69 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                LOWORD(v108) = v112[0];
                v71 = v106;
              }

              if (v71 != 5)
              {
                goto LABEL_87;
              }

              v95 = v111;
              v69 = (*(v96 + 176))(a9, a10);
              if ((v69 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v72 = v108;
              v90 = v107;
              v100 = v108;
LABEL_88:
              v73 = v111;
              if (!HIWORD(v110) && v72 >= v112[0])
              {
                HIWORD(v110) = v111;
              }

              if (!v98)
              {
                if (v72 >= v85)
                {
                  LOWORD(v110) = v111;
                  v66 = v111;
                  v98 = v111;
                }

                else
                {
                  v98 = 0;
                }
              }

              if (!HIWORD(v109) && v72 >= v88)
              {
                HIWORD(v109) = v111;
                if (v111)
                {
                  v52 = a10;
                  v69 = (*(v96 + 88))(a9, a10, HIWORD(v110), &v110 + 2);
                  goto LABEL_130;
                }

                goto LABEL_133;
              }

              v69 = (*(v96 + 120))(a9, a10, v111, &v111);
              if ((v69 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v70 = v111;
              if (!v111)
              {
                if (v73)
                {
                  v52 = a10;
                  v69 = (*(v96 + 80))(a9, a10, v73, &v110 + 2);
LABEL_130:
                  v49 = v88;
                  if ((v69 & 0x80000000) == 0)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_131;
                }

LABEL_133:
                v52 = a10;
                v49 = v88;
                v67 = v90;
                v68 = v95;
                goto LABEL_103;
              }
            }
          }

          v66 = 0;
          v67 = 0;
          v100 = 0;
          v68 = 0;
        }
      }

LABEL_103:
      v95 = v68;
      v90 = v67;
      v69 = (*(v96 + 72))(a9, v52, 3, HIWORD(v111), &v110 + 2);
      if ((v69 & 0x80000000) != 0)
      {
        goto LABEL_131;
      }

LABEL_104:
      if (HIWORD(v109))
      {
        v69 = (*(v96 + 120))(a9, v52);
        if ((v69 & 0x80000000) != 0)
        {
          goto LABEL_131;
        }

        if (!v111)
        {
          goto LABEL_163;
        }

        v69 = (*(v96 + 168))(a9, v52);
        if ((v69 & 0x80000000) != 0)
        {
          goto LABEL_131;
        }

        if (v106 == 5)
        {
          HIWORD(v109) = 0;
        }

        else
        {
LABEL_163:
          if (HIWORD(v109))
          {
            v69 = (*(v96 + 80))(a9, v52);
            if ((v69 & 0x80000000) != 0)
            {
              goto LABEL_131;
            }
          }
        }
      }

      if ((v93 & 1) == 0 && ((LOWORD(v108) = v112[0], v107 = v112[0] + 1, v106 = 3, v69 = (*(v96 + 160))(a9, v52, HIWORD(v110), 0, 1, &v106, &v108 + 2), (v69 & 0x80000000) != 0) || (v69 = (*(v96 + 160))(a9, v52, HIWORD(v110), 1, 1, &v108, &v108 + 2), (v69 & 0x80000000) != 0) || (v69 = (*(v96 + 160))(a9, v52, HIWORD(v110), 2, 1, &v107, &v108 + 2), (v69 & 0x80000000) != 0) || (v69 = (*(v96 + 80))(a9, v52, HIWORD(v110), &v110 + 2), (v69 & 0x80000000) != 0)) || (LOWORD(v108) = v112[0] + v92, v107 = v46 + v84 + v112[0], v106 = 6, v69 = (*(v96 + 160))(a9, v52, HIWORD(v110), 0, 1, &v106, &v108 + 2), (v69 & 0x80000000) != 0) || (v69 = (*(v96 + 160))(a9, v52, HIWORD(v110), 1, 1, &v108, &v108 + 2), (v69 & 0x80000000) != 0) || (v69 = (*(v96 + 160))(a9, v52, HIWORD(v110), 2, 1, &v107, &v108 + 2), (v69 & 0x80000000) != 0) || (v69 = (*(v96 + 160))(a9, v52, HIWORD(v110), 4, 5, "_PR_", &v108 + 2), (v69 & 0x80000000) != 0) || (v69 = (*(v96 + 160))(a9, v52, HIWORD(v110), 3, (v36 + 1), v27, &v108 + 2), (v69 & 0x80000000) != 0))
      {
LABEL_131:
        v28 = v69;
LABEL_132:
        v16 = v101;
        goto LABEL_149;
      }

      LOWORD(v108) = v85;
      v107 = v49;
      v74 = v49;
      do
      {
        v75 = v74;
        v76 = (*a4)[v74++];
      }

      while (v76 == 32);
      v106 = 5;
      v77 = *(v96 + 80);
      if (v92 + v112[0] == v85)
      {
        v63 = v77(a9, v52, HIWORD(v110), &v110 + 2);
        v16 = v101;
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_148;
        }

        LOWORD(v110) = HIWORD(v110);
      }

      else
      {
        v69 = v77(a9, v52, v66, &v110);
        if ((v69 & 0x80000000) != 0)
        {
          goto LABEL_131;
        }

        v16 = v101;
      }

      v63 = (*(v96 + 160))(a9, v52);
      if ((v63 & 0x80000000) == 0)
      {
        v63 = (*(v96 + 160))(a9, v52, v110, 1, 1, &v108, &v108 + 2);
        if ((v63 & 0x80000000) == 0)
        {
          v63 = (*(v96 + 160))(a9, v52, v110, 2, 1, &v107, &v108 + 2);
          if ((v63 & 0x80000000) == 0)
          {
            v28 = (*(v96 + 160))(a9, v52, v110, 4, 7, "prompt", &v108 + 2);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_149;
            }

            if (v91)
            {
              v69 = (*(v96 + 80))(a9, v52, HIWORD(v110), &v110 + 2);
              if ((v69 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              LOWORD(v108) = v112[0] + v46 - 1;
              v107 = v112[0] + v46;
              v106 = 3;
              v69 = (*(v96 + 160))(a9, a10, HIWORD(v110), 0, 1, &v106, &v108 + 2);
              if ((v69 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v69 = (*(v96 + 160))(a9, a10, HIWORD(v110), 1, 1, &v108, &v108 + 2);
              if ((v69 & 0x80000000) != 0)
              {
                goto LABEL_131;
              }

              v28 = (*(v96 + 160))(a9, a10, HIWORD(v110), 2, 1, &v107, &v108 + 2);
              v16 = v101;
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_149;
              }
            }

            if (__s)
            {
              v78 = v100 >= v85 ? (*(v96 + 192))(a9, a10, v95) : (*(v96 + 160))(a9, a10, v95, 2, 1, &v105, &v108 + 2);
              v28 = v78;
              v16 = v101;
              if ((v78 & 0x80000000) != 0)
              {
                goto LABEL_149;
              }
            }

            if (HIWORD(v109))
            {
              v16 = v101;
              if (__s)
              {
                LOWORD(v108) = v75;
                v107 = v90;
                v106 = 5;
                v69 = (*(v96 + 160))(a9, a10);
                if ((v69 & 0x80000000) == 0)
                {
                  v69 = (*(v96 + 160))(a9, a10, HIWORD(v109), 1, 1, &v108, &v108 + 2);
                  if ((v69 & 0x80000000) == 0)
                  {
                    v69 = (*(v96 + 160))(a9, a10, HIWORD(v109), 2, 1, &v107, &v108 + 2);
                    if ((v69 & 0x80000000) == 0)
                    {
                      v80 = *(v96 + 160);
                      v81 = HIWORD(v109);
                      v82 = cstdlib_strlen(__s);
                      v69 = v80(a9, a10, v81, 4, (v82 + 1), __s, &v108 + 2);
                    }
                  }
                }

                goto LABEL_131;
              }

              goto LABEL_149;
            }

            goto LABEL_132;
          }
        }
      }
    }

LABEL_148:
    v28 = v63;
    goto LABEL_149;
  }

  log_OutPublic(*(v16 + 32), "DOMAIN_MNGR", 47000, 0, v42, v43, v44, v45, v83);
LABEL_149:
  if (v102 && v27)
  {
    heap_Free(*(v16 + 8), v27);
  }

  return v28;
}

uint64_t activeprompt_ConsultOriOrth(const char **a1, const char **a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5, _WORD *a6)
{
  v230[3] = *MEMORY[0x277D85DE8];
  v6 = *(**a1 + 16);
  v224 = 0;
  v223 = 0;
  v222 = 0;
  if (!a1[5])
  {
    return 0;
  }

  v10 = a1;
  v202 = cstdlib_strlen(*a2);
  v220 = a3;
  v12 = *(*a3 + 12);
  v13 = (*(a5 + 4) - v12);
  v219 = cstdlib_strlen(v10[5]);
  v211 = v13;
  if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
  {
    v19 = a5;
    do
    {
      v20 = v19;
      v19 = *(v19 + 16);
    }

    while (v19);
    v21 = v13;
    if (a4)
    {
      v22 = v12;
      if (*a4)
      {
        v23 = (*(v20 + 8) + *(v20 + 4) - *(*a3 + 12));
      }

      else
      {
        v23 = 0;
      }

      log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%d %s%d", v14, v15, v16, v17, v18, "BEG");
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "text/plain;charset=utf-8", *a2, v23);
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "application/x-realspeak-markers-pp;version=4.0", *a3, 32 * *a4);
      v12 = v22;
      v13 = v13;
    }

    else
    {
      log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%d %s%d", v14, v15, v16, v17, v18, "BEG");
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "text/plain;charset=utf-8", *a2, 0);
    }
  }

  else
  {
    v21 = v13;
  }

  if ((*(a5 + 8) + v13) < (v13 + v219))
  {
LABEL_227:
    v24 = 0;
    goto LABEL_228;
  }

  v217 = v12;
  v201 = a6;
  v213 = 0;
  LOWORD(v205) = 0;
  LOWORD(__s) = 0;
  v209 = 0;
  v204 = v21;
  v25 = v13;
  v210 = a5;
  v208 = v10;
  v212 = v6;
  while (1)
  {
    v216 = v25;
    if (!(*a2)[v25])
    {
      goto LABEL_227;
    }

    v218 = v21;
    v26 = v25;
    v214 = v25;
    if (v202 <= v25)
    {
      v45 = v6;
      v46 = 0;
      v30 = v25;
      goto LABEL_66;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = v25;
    v32 = v220;
    v31 = a4;
    v215 = v25;
    do
    {
      if (v28 && v26 + 1 < v202 && (*a2)[v30] == 32 && (v33 = &(*a2)[v26 + 1], v34 = cstdlib_strlen("§"), v25 = v215, v35 = cstdlib_strncmp(v33, "§", v34), v32 = v220, v31 = a4, !v35))
      {
        v44 = cstdlib_strlen("§");
        v32 = v220;
        v31 = a4;
        v30 += v44;
        --v28;
        v42 = 1;
      }

      else
      {
        if (v31)
        {
          v36 = *v31;
          v37 = v27 <= v36 ? *v31 : v27;
          if (v27 >= v36)
          {
LABEL_32:
            v27 = v37;
LABEL_34:
            LOWORD(v39) = *v31;
          }

          else
          {
            v38 = v26 + v217;
            v39 = v27;
            v40 = (*v32 + 32 * v27);
            while (1)
            {
              v41 = v40[3];
              if (v41 > v38)
              {
                v27 = v39;
                goto LABEL_34;
              }

              if (v41 >= v38 && *v40 == 34)
              {
                break;
              }

              v40 += 8;
              if (v37 == ++v39)
              {
                goto LABEL_32;
              }
            }

            v27 = v39;
          }

          if (v36 > v39)
          {
            if (!hlp_GetRangeForSETPHON(*a2, *v32, v36, v39, &v224, &v223, &v224 + 1, &v222 + 1, &v222))
            {
              goto LABEL_57;
            }

            if (v223)
            {
              v28 = HIWORD(v224);
            }

            v32 = v220;
            v31 = a4;
          }
        }

        if (v29 >= v219)
        {
          goto LABEL_51;
        }

        v42 = v10[5][v29++] == (*a2)[v30];
      }

      v26 = ++v30;
      v43 = v42 && v202 > v30;
    }

    while (v43);
    if (!v42)
    {
LABEL_57:
      v48 = 0;
      v49 = v30 - v25;
      v6 = v212;
      a5 = v210;
      goto LABEL_90;
    }

LABEL_51:
    v46 = v30 - v25;
    v47 = v222 >= v26 || v28 == 0;
    v45 = v212;
    if (v47)
    {
      a5 = v210;
      goto LABEL_66;
    }

    v50 = v30;
    if (v202 > v30)
    {
      v51 = &(*a2)[v30];
      v52 = cstdlib_strlen("§");
      v53 = v30;
      if (cstdlib_strncmp(v51, "§", v52))
      {
        while (1)
        {
          v50 = ++v53;
          if (v202 <= v53)
          {
            break;
          }

          v54 = &(*a2)[v53];
          v55 = cstdlib_strlen("§");
          v30 = v53;
          if (!cstdlib_strncmp(v54, "§", v55))
          {
            goto LABEL_64;
          }
        }

        v30 = v53;
      }
    }

LABEL_64:
    if (v202 == v50)
    {
      v24 = 0;
      a5 = v210;
      goto LABEL_277;
    }

    v30 = v30 + v28 + v28 * cstdlib_strlen("§") - 1;
    a5 = v210;
    if (v30 > v202)
    {
      break;
    }

LABEL_66:
    v49 = v30 - v25;
    v213 = v46;
    v56 = v46 + v25;
    v43 = v202 > (v46 + v25);
    v6 = v45;
    v10 = v208;
    if (v43)
    {
      while (1)
      {
        v57 = v56;
        if (cstdlib_strchr(" \t\r\n", (*a2)[v56]))
        {
          break;
        }

        v58 = cstdlib_strchr(*(*(*v208 + 1) + 192), (*a2)[v57]);
        v56 = v57 + 1;
        if (v58)
        {
          v59 = v202 > (v57 + 1);
        }

        else
        {
          v59 = 0;
        }

        if (!v59)
        {
          if (v58)
          {
            break;
          }

          v48 = 0;
          goto LABEL_90;
        }
      }
    }

    v60 = a4;
    if (a4 && (LOWORD(v61) = *a4) != 0)
    {
      v62 = 0;
      v63 = 0;
      v64 = v218 + (v30 - v25);
      v65 = v220;
      while (1)
      {
        if (*(*v65 + v62) == 34)
        {
          if (!hlp_GetRangeForSETPHON(*a2, *v65, v61, v63, &v224, &v223, &v224 + 1, &v222 + 1, &v222))
          {
            break;
          }

          v65 = v220;
          v60 = a4;
          if (v223)
          {
            if (HIDWORD(v222) < v218 && v222 >= v218 || HIDWORD(v222) < v64 && v64 <= v222)
            {
              break;
            }
          }
        }

        ++v63;
        v61 = *v60;
        v62 += 32;
        if (v63 >= v61)
        {
          v48 = 1;
          goto LABEL_88;
        }
      }

      v48 = 0;
LABEL_88:
      v49 = v30 - v25;
      v6 = v212;
    }

    else
    {
      v48 = 1;
    }

LABEL_90:
    if (!log_HasTraceTuningDataSubscriber(*(v6 + 32)))
    {
      v76 = a4;
      if (!v48)
      {
        goto LABEL_214;
      }

      goto LABEL_96;
    }

    log_OutTraceTuningData(*(v6 + 32), 220, "%s%d %s%d %s%s", v66, v67, v68, v69, v70, "IDXBEG");
    if (!v48)
    {
      goto LABEL_214;
    }

    v203 = v49;
    v77 = v220;
    v76 = a4;
    if (!*(v10 + 7) && !*(v10 + 8))
    {
      log_OutTraceTuningData(*(v6 + 32), 221, "%s%s %s%s", v71, v72, v73, v74, v75, "RES");
      log_OutTraceTuningData(*(v6 + 32), 222, "%s%s %s%s", v78, v79, v80, v81, v82, "RES");
      v76 = a4;
LABEL_96:
      v203 = v49;
      v77 = v220;
      if (!*(v10 + 7) && !*(v10 + 8))
      {
        goto LABEL_196;
      }
    }

    if (!v76)
    {
      goto LABEL_114;
    }

    v83 = *v76;
    if (*v76)
    {
      v84 = 0;
      v85 = *v77;
      while (*v85 != 40 || v85[3] < v217 + v30)
      {
        ++v84;
        v85 += 8;
        if (v83 == v84)
        {
          goto LABEL_108;
        }
      }

      LODWORD(v84) = v84;
    }

    else
    {
      LODWORD(v84) = 0;
    }

    if (v84 == v83)
    {
LABEL_108:
      v86 = v30;
      if (cstdlib_strlen(*a2) > v30)
      {
        v87 = v30;
        do
        {
          if (!cstdlib_strchr(" \t\r\n", (*a2)[v86]) && !aux_special_strchr(*(*(*v10 + 1) + 192), (*a2)[v86]))
          {
            break;
          }

          v86 = ++v87;
        }

        while (cstdlib_strlen(*a2) > v87);
      }

      v88 = cstdlib_strlen(*a2) != v86;
    }

    else
    {
LABEL_114:
      v88 = 1;
    }

    v89 = *(*v10 + 1);
    v90 = *(v89 + 192);
    __sa = *(v89 + 184);
    v91 = *a2;
    v92 = v216;
    while (v92)
    {
      v93 = v92 - 1;
      v94 = cstdlib_strchr(" \t\r\n", v91[v92 - 1]);
      v92 = v93;
      if (!v94)
      {
        if ((v93 & 0x8000) == 0)
        {
          v95 = aux_special_strchr(v90, v91[v93 & 0xFFFF7FFF]);
          if (v95)
          {
            HIDWORD(v209) = *v95;
            goto LABEL_122;
          }
        }

        break;
      }
    }

    HIDWORD(v209) = 0;
LABEL_122:
    v96 = v213 + v214;
    if (v96 << 16 >= (cstdlib_strlen(v91) << 16))
    {
      v100 = 0;
      v101 = HIDWORD(v209);
    }

    else
    {
      v97 = v91[v96];
      if (v91[v96])
      {
        v98 = &v91[v96 + 1];
        while (cstdlib_strchr(" \t\r\n", v97))
        {
          v99 = *v98++;
          v97 = v99;
          if (!v99)
          {
            goto LABEL_131;
          }
        }

        v97 = *(v98 - 1);
      }

LABEL_131:
      v102 = aux_special_strchr(v90, v97);
      v101 = HIDWORD(v209);
      if (v102)
      {
        v100 = *v102;
      }

      else
      {
        v100 = 0;
      }
    }

    v103 = v101;
    LODWORD(v209) = v100;
    if (v25)
    {
      if (!v101)
      {
        v229 = 0x600000004;
        v104 = 2;
        goto LABEL_144;
      }

      if (cstdlib_strchr(__sa, v101))
      {
        v229 = 0x300000002;
        v104 = 3;
        v105 = v230;
      }

      else
      {
        LODWORD(v229) = 4;
        v104 = 2;
        v105 = &v229 + 1;
      }

      *v105 = 6;
      v100 = v209;
LABEL_143:
      *(&v230[-1] + v104++) = 5;
      goto LABEL_144;
    }

    v229 = 0x300000001;
    v104 = 2;
    if (v101)
    {
      goto LABEL_143;
    }

LABEL_144:
    *(&v230[-1] + v104) = 0;
    if (!v88)
    {
      v227 = 0x300000001;
      v106 = 2;
      v6 = v212;
      if (!v100)
      {
        goto LABEL_154;
      }

      goto LABEL_153;
    }

    if (v100)
    {
      if (cstdlib_strchr(__sa, v100))
      {
        v227 = 0x300000002;
        v106 = 3;
        v107 = &v228;
      }

      else
      {
        LODWORD(v227) = 4;
        v106 = 2;
        v107 = (&v227 + 4);
      }

      v6 = v212;
      *v107 = 6;
LABEL_153:
      *(&v227 + v106++) = 5;
      goto LABEL_154;
    }

    v227 = 0x600000004;
    v106 = 2;
    v6 = v212;
LABEL_154:
    *(&v227 + v106) = 0;
    v108 = *(v10 + 7);
    if (v108)
    {
      v109 = 0;
      while (1)
      {
        v110 = *(&v230[-1] + v109);
        if (v110 == v108 && v108 == 5)
        {
          break;
        }

        v112 = v110 == v108 || v109++ >= v104;
        if (v112)
        {
          v113 = v110 == v108;
          goto LABEL_168;
        }
      }

      v113 = *(v10 + 24) == v103;
LABEL_168:
      v114 = v113;
    }

    else
    {
      v114 = 1;
    }

    __s = v104 + 1;
    if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
    {
      cstdlib_strcpy(__dst, "");
      hlp_ContextToString(v114, *(v10 + 7), *(v10 + 24), __s, &v229, v103, __dst);
      log_OutTraceTuningData(*(v6 + 32), 221, "%s%s %s%s", v115, v116, v117, v118, v119, "RES");
    }

    v205 = v106 + 1;
    if (v114)
    {
      v120 = *(v10 + 8);
      if (v120)
      {
        v121 = 0;
        while (1)
        {
          v122 = *(&v227 + v121);
          if (v122 == v120 && v120 == 5)
          {
            break;
          }

          if (v122 == v120 || v121++ >= v106)
          {
            v125 = v122 == v120;
            goto LABEL_190;
          }
        }

        v125 = *(v10 + 25) == v209;
LABEL_190:
        v126 = v125;
      }

      else
      {
        v126 = 1;
      }

      if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
      {
        cstdlib_strcpy(__dst, "");
        hlp_ContextToString(v126, *(v10 + 8), *(v10 + 25), v205, &v227, v209, __dst);
        log_OutTraceTuningData(*(v6 + 32), 222, "%s%s %s%s", v127, v128, v129, v130, v131, "RES");
      }

      v77 = v220;
      v76 = a4;
      a5 = v210;
      if (!v126)
      {
        goto LABEL_214;
      }

LABEL_196:
      if (*(v10 + 2) == 2 && v76 && *v76)
      {
        v132 = 0;
        v133 = 1;
        while (1)
        {
          v134 = *(*v77 + v132);
          v135 = (v134 - 16) < 4 || v134 == 24;
          if (v135 && *(v10 + 2) == 2)
          {
            v136 = *(*v77 + v132 + 12);
            if (v136 > v217 + v214 && v136 < v217 + v30)
            {
              break;
            }
          }

          v143 = 1;
          v132 += 32;
          v112 = v133++ >= *v76;
          if (v112)
          {
            goto LABEL_213;
          }
        }

        log_OutText(*(v6 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC pitch, volume or rate", v68, v69, v70, *(*(*v10 + 1) + 168));
        log_OutTraceTuningData(*(v6 + 32), 223, "%s%s %s%s", v138, v139, v140, v141, v142, "RES");
        v143 = 0;
LABEL_213:
        a5 = v210;
        if ((v143 & 1) == 0)
        {
          goto LABEL_214;
        }
      }

      if (log_GetLogLevel(*(v6 + 32)) >= 5)
      {
        cstdlib_strcpy(__dst, "");
        cstdlib_strcpy(__s1, "");
        hlp_ContextToString(1, *(v10 + 7), *(v10 + 24), __s, &v229, SBYTE4(v209), __dst);
        hlp_ContextToString(1, *(v10 + 8), *(v10 + 25), v205, &v227, v209, __s1);
        log_OutText(*(v6 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s], begPos %ld, endPos %ld, begCtxt %s, endCtxt %s", v162, v163, v164, *(*(*v10 + 1) + 168));
      }

      hlp_RemoveSetPhonInRange(a2, v220, a4, v25, (v30 - v25));
      if (a4)
      {
        v165 = *a4;
        v166 = v218;
        v167 = v218 - v204;
        v168 = *v220;
        if (*a4)
        {
          v169 = 0;
          while (v168[8 * v169 + 3] <= v167 + *(a5 + 4))
          {
            if (v165 <= ++v169)
            {
              goto LABEL_244;
            }
          }
        }

        else
        {
LABEL_244:
          v169 = *a4;
        }

        v170 = heap_Realloc(*(v6 + 8), v168, 32 * v165 + 32);
        if (!v170)
        {
LABEL_273:
          v24 = 2296389642;
LABEL_274:
          log_OutPublic(*(v6 + 32), "DOMAIN_MNGR", 47000, 0, v171, v172, v173, v174, v200);
          goto LABEL_228;
        }

        v175 = a4;
        *v220 = v170;
        v176 = *a4;
        if (v176 > v169)
        {
          cstdlib_memmove(&v170[8 * v169 + 8], &v170[8 * v169], 32 * (v176 - v169));
          v175 = a4;
          LOWORD(v176) = *a4;
          v170 = *v220;
        }

        *v175 = v176 + 1;
        cstdlib_memset(&v170[8 * v169], 0, 0x20uLL);
        v177 = (*v220 + 32 * v169);
        *v177 = 40;
        if (v169)
        {
          v177[1] = *(v177 - 7);
        }

        v178 = v203;
        v177[3] = v167 + *(a5 + 4);
        v177[4] = v203;
        v179 = *(v212 + 8);
        v180 = cstdlib_strlen(*(*(*v10 + 1) + 168));
        v181 = cstdlib_strlen(v10[2]);
        *(*v220 + 32 * v169 + 24) = heap_Alloc(v179, (v180 + v181 + 3));
        v186 = *v220 + 32 * v169;
        v188 = *(v186 + 24);
        v187 = (v186 + 24);
        if (!v188)
        {
          v24 = 2296389642;
          log_OutPublic(*(v212 + 32), "DOMAIN_MNGR", 47000, 0, v182, v183, v184, v185, v200);
          v6 = v212;
          goto LABEL_228;
        }

        if (!vector_Add(*(**v10 + 88), v187))
        {
          v24 = 2296389642;
          v6 = v212;
          heap_Free(*(v212 + 8), *(*v220 + 32 * v169 + 24));
          *(*v220 + 32 * v169 + 24) = 0;
          goto LABEL_274;
        }

        cstdlib_strcpy(*(*v220 + 32 * v169 + 24), *(*(*v10 + 1) + 168));
        cstdlib_strcat(*(*v220 + 32 * v169 + 24), "::");
        cstdlib_strcat(*(*v220 + 32 * v169 + 24), v10[2]);
      }

      else
      {
        v169 = 0;
        v166 = v218;
        v178 = v203;
      }

      v190 = *a2;
      v191 = v166 + v178;
      v192 = cstdlib_strlen(*a2);
      cstdlib_memmove(&v190[v216], &v190[v191], v192 - (v216 + v178) + 1);
      *v201 -= v178;
      if (a4)
      {
        v193 = *a4;
        if (v193 > (v169 + 1))
        {
          v194 = *(*v220 + 32 * v169 + 12);
          v195 = (*v220 + 32 * (v169 + 1) + 12);
          v196 = (v169 + 1) + 1;
          do
          {
            v197 = *v195 - v178;
            if (v178 > (*v195 - v194))
            {
              v197 = v194;
            }

            *v195 = v197;
            v195 += 8;
            v47 = v193 == v196++;
          }

          while (!v47);
        }
      }

      for (i = *(a5 + 16); i; i = *(i + 16))
      {
        *(i + 4) -= v178;
      }

      v6 = v212;
      v199 = CILE_New(*(v212 + 8), 1, v166 - v204 + *(a5 + 4), v204 - v191 + *(a5 + 8));
      if (v199)
      {
        *(v199 + 2) = *(a5 + 16);
        *(a5 + 8) = v166 - v204;
        if (v166 == v204)
        {
          *a5 = 0;
        }

        v24 = 0;
        *(a5 + 16) = v199;
        goto LABEL_228;
      }

      goto LABEL_273;
    }

    a5 = v210;
LABEL_214:
    v144 = (*a2)[v216];
    if ((*a2)[v216])
    {
      v145 = v211;
      while (1)
      {
        v146 = cstdlib_strchr(" \t\r\n", v144);
        v147 = *a2;
        if (v146)
        {
          break;
        }

        v25 = (v25 + 1);
        v144 = v147[v25];
        if (!v147[v25])
        {
          goto LABEL_226;
        }
      }

      v148 = v147[v25];
      if (v147[v25])
      {
        v149 = v25;
        while (cstdlib_strchr(" \t\r\n", v148))
        {
          v149 = (v149 + 1);
          v148 = (*a2)[v149];
          v25 = v149;
          if (!(*a2)[v149])
          {
            goto LABEL_226;
          }
        }

        v25 = v149;
      }
    }

    else
    {
      v145 = v211;
    }

LABEL_226:
    v21 = v25;
    if ((*(a5 + 8) + v145) < (v25 + v219))
    {
      goto LABEL_227;
    }
  }

  v24 = 0;
LABEL_277:
  v6 = v212;
LABEL_228:
  if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
  {
    do
    {
      if (!a5)
      {
        log_OutTraceTuningDataBinary(*(v6 + 32), 219, "", "text/plain;charset=utf-8", *a2, 0);
        v157 = a4;
        if (!a4)
        {
          goto LABEL_257;
        }

        goto LABEL_255;
      }

      v150 = a5;
      a5 = *(a5 + 16);
    }

    while (a5);
    if (!a4)
    {
      v158 = *(v6 + 32);
      v159 = *a2;
      v160 = "text/plain;charset=utf-8";
      v161 = 0;
      goto LABEL_256;
    }

    if (*a4)
    {
      v151 = (*(v150 + 8) + *(v150 + 4) - *(*v220 + 12));
    }

    else
    {
      v151 = 0;
    }

    log_OutTraceTuningDataBinary(*(v6 + 32), 219, "", "text/plain;charset=utf-8", *a2, v151);
    v157 = a4;
LABEL_255:
    v158 = *(v6 + 32);
    v159 = *v220;
    v161 = 32 * *v157;
    v160 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_256:
    log_OutTraceTuningDataBinary(v158, 219, "", v160, v159, v161);
LABEL_257:
    log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%u", v152, v153, v154, v155, v156, "END");
  }

  return v24;
}

uint64_t hlp_GetRangeForSETPHON(const char *a1, _DWORD *a2, unsigned int a3, unsigned int a4, _WORD *a5, _WORD *a6, _WORD *a7, unsigned int *a8, unsigned int *a9)
{
  if (a4 >= a3)
  {
    return 0;
  }

  if (*a2 != 0x4000)
  {
    return 0;
  }

  v10 = a4;
  v11 = &a2[8 * a4];
  if (*v11 != 34)
  {
    return 0;
  }

  v13 = a2[3];
  v14 = *(v11 + 3);
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  v15 = v11[3] - v13;
  *a8 = v15;
  *a9 = v15;
  if (!v14)
  {
    return 1;
  }

  result = 1;
  if (!*v14)
  {
    return result;
  }

  v40 = v13;
  *a5 = 1;
  if (cstdlib_strlen(v14) - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = 1;
    v20 = 1;
    do
    {
      v21 = v14[v19];
      if (v21 == 95 || v21 == 35)
      {
        ++*a5;
      }

      v19 = ++v20;
    }

    while (cstdlib_strlen(v14) - 1 > v20);
  }

  LOWORD(v22) = v10 + 1;
  if (a3 <= (v10 + 1))
  {
    v27 = 0;
    v24 = a7;
  }

  else
  {
    v22 = (v10 + 1);
    v23 = &a2[8 * v22];
    v24 = a7;
    while (1)
    {
      if (*v23 == 34 || *v23 == 21)
      {
        v26 = v23[3];
        if (v11[3] != v26)
        {
          break;
        }
      }

      LOWORD(v22) = v22 + 1;
      v23 += 8;
      if (a3 == v22)
      {
        goto LABEL_26;
      }
    }

    v27 = v26 - v40;
  }

  if (a3 == v22)
  {
LABEL_26:
    v27 = cstdlib_strlen(a1);
  }

  v28 = v27 - 1;
  *a9 = v27 - 1;
  v29 = *a8;
  if (v27 - 1 <= *a8)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v30 = cstdlib_strchr(" \t\r\n", a1[v28]);
    v28 = *a9;
    if (!v30)
    {
      break;
    }

    --v28;
LABEL_33:
    *a9 = v28;
    if (v28 <= *a8)
    {
      goto LABEL_34;
    }
  }

  if (v28 >= 3)
  {
    v31 = cstdlib_strncmp(&a1[v28 - 1], "§", 2uLL);
    v28 = *a9;
    if (!v31)
    {
      v28 -= 2;
      goto LABEL_33;
    }
  }

LABEL_34:
  v29 = *a8;
LABEL_35:
  if (v28 > v29)
  {
    while (1)
    {
      v32 = cstdlib_strchr(" \t\r\n", a1[v28]);
      v33 = *a9;
      if (v32)
      {
        break;
      }

      v28 = v33 - 1;
      *a9 = v28;
      v29 = *a8;
      if (v28 <= *a8)
      {
        goto LABEL_40;
      }
    }

    *a9 = v33 + 1;
    v29 = *a8;
  }

LABEL_40:
  v34 = v27 - v29;
  if (v27 > v29)
  {
    v35 = &a1[v29];
    do
    {
      if (!cstdlib_strncmp(v35, "§", 2uLL))
      {
        ++*v24;
      }

      ++v35;
      --v34;
    }

    while (v34);
  }

  v36 = *v24;
  v37 = *a5;
  v38 = v37 >= v36;
  v39 = v37 - v36;
  if (v38)
  {
    *a6 = v39;
    return 1;
  }

  return 0;
}

size_t aux_special_strchr(const char *a1, int a2)
{
  result = cstdlib_strlen(a1);
  if (result)
  {
    v5 = 0;
    v6 = 0;
    while (a1[v5] != a2)
    {
      v5 = ++v6;
      if (cstdlib_strlen(a1) <= v6)
      {
        return 0;
      }
    }

    return &a1[v5];
  }

  return result;
}

char *hlp_ContextToString(int a1, int a2, char a3, unsigned int a4, uint64_t a5, char a6, char *__s1)
{
  if (a2 == 5)
  {
    *__s1 = 91;
    __s1[1] = a3;
    *(__s1 + 1) = 93;
  }

  else
  {
    cstdlib_strcpy(__s1, AP_BOUNDARYCND_STR_0[a2]);
  }

  if (a1 == 1)
  {
    v12 = " matches (";
  }

  else
  {
    v12 = " does not match (";
  }

  cstdlib_strcat(__s1, v12);
  if (a4)
  {
    v13 = 0;
    do
    {
      if (v13)
      {
        cstdlib_strcat(__s1, " ");
      }

      v14 = *(a5 + v13);
      if (v14 == 5)
      {
        v15 = cstdlib_strlen(__s1);
        __s1[v15] = 91;
        __s1[v15 + 1] = a6;
        __s1[v15 + 2] = 93;
        __s1[v15 + 3] = 0;
      }

      else
      {
        cstdlib_strcat(__s1, AP_BOUNDARYCND_STR_0[v14]);
      }

      v13 += 4;
    }

    while (4 * a4 != v13);
  }

  return cstdlib_strcat(__s1, ")");
}

uint64_t activeprompt_Consult(uint64_t **a1, char *a2, const char **a3, uint64_t *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 *a9, int a10)
{
  v325 = *MEMORY[0x277D85DE8];
  v15 = **a1;
  v16 = *(v15 + 16);
  v314 = 0;
  v17 = *(v15 + 56);
  v312 = 0;
  v311 = 0;
  v310 = 0;
  v309 = 0;
  v287 = cstdlib_strlen(*a3);
  v18 = *(*a4 + 12);
  v298 = a6;
  v19 = (*(a6 + 4) - v18);
  v20 = cstdlib_strstr(a1[6], "%Ä");
  v21 = a1[6];
  v284 = v20;
  if (v20)
  {
    v22 = v20 - v21;
  }

  else
  {
    v22 = cstdlib_strlen(v21);
  }

  v301 = v16;
  v308 = a1;
  v299 = v17;
  v306 = v22;
  if (log_HasTraceTuningDataSubscriber(*(v16 + 32)))
  {
    log_OutTraceTuningData(*(v16 + 32), 277, "%s%s %s%s %s%d %s%d", v23, v24, v25, v26, v27, "BEG");
    v28 = a4;
    v29 = *(v16 + 32);
    v30 = *a3;
    v31 = cstdlib_strlen(*a3);
    v32 = v29;
    a4 = v28;
    log_OutTraceTuningDataBinary(v32, 278, "", "text/plain;charset=depes", v30, v31);
    log_OutTraceTuningDataBinary(*(v16 + 32), 278, "", "application/x-realspeak-markers-pp;version=4.0", *v28, 32 * *a5);
  }

  v305 = v18;
  v300 = 0;
  v318 = 0;
  v317 = 0;
  v316 = 0;
  __s = 0;
  v313 = 0;
  v33 = v16;
  if (*(v298 + 8) + v19 < (v19 + v22))
  {
    goto LABEL_372;
  }

  v300 = 0;
  v292 = 0;
  v293 = 0;
  v285 = 0;
  v280 = 0;
  v286 = 0;
  v295 = 0;
  LOBYTE(v289) = 0;
  LOBYTE(v294) = 0;
  v288 = v22;
  v296 = v19;
  v303 = a5;
  v307 = a4;
  v291 = v19;
  while (2)
  {
    if (!(*a3)[v19])
    {
      goto LABEL_372;
    }

    v34 = v19;
    if (v287 <= v19)
    {
      v47 = 0;
      v35 = 0;
      v45 = 1;
      v37 = v19;
      v38 = v296;
      goto LABEL_40;
    }

    v35 = 0;
    v36 = 0;
    v37 = v19;
    v38 = v296;
    while (1)
    {
      if (v35)
      {
        if (v34 + 1 < v287 && (*a3)[v37] == 32)
        {
          v39 = &(*a3)[v34 + 1];
          v40 = cstdlib_strlen("§");
          if (!cstdlib_strncmp(v39, "§", v40))
          {
            v37 += cstdlib_strlen("§");
            --v35;
            v45 = 1;
            goto LABEL_31;
          }
        }
      }

      LOWORD(v41) = *a5;
      if (v37)
      {
        break;
      }

      v43 = *a5;
      if (*a5)
      {
        goto LABEL_20;
      }

LABEL_29:
      if (v36 >= v306)
      {
        v45 = 1;
        goto LABEL_39;
      }

      v45 = *(v308[6] + v36++) == (*a3)[v37];
LABEL_31:
      v34 = ++v37;
      v46 = v45 && v287 > v37;
      if (!v46)
      {
        goto LABEL_39;
      }
    }

    v42 = cstdlib_strchr(" _", (*a3)[v37 - 1]);
    v43 = *a5;
    if (!v42)
    {
      goto LABEL_25;
    }

    if (!*a5)
    {
      goto LABEL_29;
    }

LABEL_20:
    v41 = 0;
    v44 = *v307;
    while (*v44 != 34 || v44[3] != v34 + v305)
    {
      ++v41;
      v44 += 8;
      if (v43 == v41)
      {
        goto LABEL_29;
      }
    }

LABEL_25:
    if (v43 <= v41)
    {
      goto LABEL_29;
    }

    if (hlp_GetRangeForSETPHON(*a3, *v307, v43, v41, &v311 + 1, &v311, &v312, &v310, &v309))
    {
      if (v311)
      {
        v35 = v312;
      }

      goto LABEL_29;
    }

    v45 = 0;
LABEL_39:
    v47 = v36;
    a4 = v307;
LABEL_40:
    v48 = 0;
    v49 = v288 > v47 && v287 == v34;
    if (v49 || !v45)
    {
      v290 = v37 - v19;
      goto LABEL_113;
    }

    v50 = v37 - v19;
    v51 = v37;
    v282 = v37 - v19;
    if (v309 < v34)
    {
      v50 = v37 - v19;
      v51 = v37;
      if (v35)
      {
        v52 = v37;
        if (v287 <= v37)
        {
          v56 = v37;
        }

        else
        {
          v53 = &(*a3)[v37];
          v54 = cstdlib_strlen("§");
          v55 = v37;
          v56 = v37;
          if (cstdlib_strncmp(v53, "§", v54))
          {
            while (1)
            {
              v52 = ++v55;
              if (v287 <= v55)
              {
                break;
              }

              v57 = &(*a3)[v55];
              v58 = cstdlib_strlen("§");
              v56 = v55;
              if (!cstdlib_strncmp(v57, "§", v58))
              {
                goto LABEL_56;
              }
            }

            v56 = v55;
          }
        }

LABEL_56:
        if (v287 == v52)
        {
          v33 = v301;
          a5 = v303;
          a4 = v307;
          goto LABEL_372;
        }

        v59 = cstdlib_strlen("§");
        v51 = v56 + v35 + v35 * v59 - 1;
        v33 = v301;
        a4 = v307;
        if ((v56 + v35 + v35 * v59 - 1) > v287)
        {
          goto LABEL_421;
        }

        v50 = v51 - v19;
        a5 = v303;
        v38 = v296;
      }
    }

    v281 = v51;
    v290 = v50;
    LOWORD(v60) = *a5;
    if (*a5)
    {
      v61 = 0;
      v62 = 0;
      v63 = v38 + v50;
      while (*(*a4 + v61) != 34 || hlp_GetRangeForSETPHON(*a3, *a4, v60, v62, &v311 + 1, &v311, &v312, &v310, &v309) && (!v311 || (v310 >= v38 || v309 < v38) && (v310 >= v63 || v63 > v309)))
      {
        ++v62;
        v60 = *a5;
        v61 += 32;
        if (v62 >= v60)
        {
          goto LABEL_69;
        }
      }

      v48 = 0;
      v286 = v37 - v19;
LABEL_113:
      v64 = v308;
      v65 = v306;
      v89 = v291;
      v33 = v301;
      goto LABEL_114;
    }

LABEL_69:
    v64 = v308;
    v65 = v306;
    v33 = v301;
    if (!v284)
    {
      goto LABEL_221;
    }

    v66 = (*(v299 + 104))(a7, a8, 1, 0, &v313);
    if ((v66 & 0x80000000) != 0)
    {
LABEL_366:
      v300 = v66;
      goto LABEL_367;
    }

    v300 = (*(v299 + 104))(a7, a8, 2, v313, &v318);
    if ((v300 & 0x80000000) != 0)
    {
LABEL_367:
      v33 = v301;
      goto LABEL_372;
    }

    v67 = cstdlib_strlen("%Ä");
    v68 = cstdlib_strstr(v308[6], "§");
    v33 = v301;
    if (!v68)
    {
      v64 = v308;
      v65 = v306;
      goto LABEL_221;
    }

    v69 = &v284[v67];
    v70 = v299;
    v71 = v68;
    do
    {
      v72 = v318;
      v66 = v300;
      if (!v318)
      {
LABEL_81:
        v75 = 1;
        goto LABEL_82;
      }

      while (1)
      {
        v73 = a4;
        v74 = (*(v70 + 168))(a7, a8, v72, 1, 1, &v314 + 2, &v316);
        if ((v74 & 0x80000000) != 0 || (v74 = (*(v70 + 168))(a7, a8, v318, 0, 1, &v317, &v316), (v74 & 0x80000000) != 0))
        {
          v300 = v74;
          v33 = v301;
LABEL_369:
          a4 = v73;
          goto LABEL_372;
        }

        if (v317 == 5 && HIWORD(v314) == (v19 + v71 - *(v308 + 24)))
        {
          break;
        }

        v70 = v299;
        v66 = (*(v299 + 120))(a7, a8, v318, &v318);
        if ((v66 & 0x80000000) != 0)
        {
          goto LABEL_366;
        }

        v72 = v318;
        if (!v318)
        {
          goto LABEL_81;
        }
      }

      v300 = (*(v299 + 176))(a7, a8, v318, 3, &__s, &v316);
      if ((v300 & 0x80000000) != 0)
      {
        goto LABEL_367;
      }

      v88 = cstdlib_strlen(__s);
      v75 = !cstdlib_strncmp(v69, __s, v88) && (!v69[v88] || !cstdlib_strcmp(&v69[v88], "%Ä"));
      v70 = v299;
      v66 = v300;
LABEL_82:
      v300 = v66;
      v76 = v318;
      if (*v69)
      {
        v77 = 1;
        do
        {
          if (!cstdlib_strcmp(v69, "%Ä"))
          {
            break;
          }

          v69 += utf8_determineUTF8CharLength(*v69);
          v78 = *v69;
          if (v78 == 95 || v78 == 35)
          {
            v79 = *(v69 - 1) - 32;
            v46 = v79 > 0x3F;
            v80 = (1 << v79) & 0x8000000000000009;
            if (v46 || v80 == 0)
            {
              ++v77;
            }
          }
        }

        while (*v69);
        v82 = v77;
        v70 = v299;
      }

      else
      {
        v82 = 1;
      }

      v83 = cstdlib_strlen("§");
      v71 = cstdlib_strstr(&v71[v82 - 1 + v83 * v82], "§");
      v84 = *v69;
      if (v71)
      {
        v85 = v84 == 0;
      }

      else
      {
        v85 = 0;
      }

      if (v85)
      {
        v48 = 0;
        v286 = v37 - v19;
        a5 = v303;
        v65 = v306;
        a4 = v307;
        v89 = v291;
        v33 = v301;
LABEL_365:
        v64 = v308;
        goto LABEL_114;
      }

      v86 = utf8_determineUTF8CharLength(v84);
      if (v76)
      {
        v87 = v75;
      }

      else
      {
        v87 = 0;
      }

      a5 = v303;
      a4 = v307;
      if (!v71)
      {
        break;
      }

      v69 += v86;
    }

    while (v87);
    v65 = v306;
    v33 = v301;
    if (!v87)
    {
      v48 = 0;
      v286 = v37 - v19;
      v89 = v291;
      goto LABEL_365;
    }

    v64 = v308;
    while (1)
    {
LABEL_221:
      if (cstdlib_strlen(*a3) <= v37)
      {
        v48 = 1;
        goto LABEL_227;
      }

      if (cstdlib_strchr(" _", (*a3)[v37]))
      {
        break;
      }

      v149 = cstdlib_strchr(*((*v64)[1] + 192), (*a3)[v37]);
      LOWORD(v37) = v37 + 1;
      a5 = v303;
      if (!v149)
      {
        v48 = 0;
        goto LABEL_227;
      }
    }

    v48 = 1;
    a5 = v303;
LABEL_227:
    v89 = v291;
    if (a10)
    {
      if (v19)
      {
        v150 = cstdlib_strlen(*a3);
        v151 = *a3;
        if (v150 == v281 && v151[v19 - 1] == 95)
        {
          v48 = 0;
          v286 = v282;
          goto LABEL_233;
        }

        if (cstdlib_strlen(v151) <= v281)
        {
          v286 = v282;
        }

        else
        {
          if ((*a3)[v19 - 1] == 95 || (*a3)[v281] == 95)
          {
            v48 = 0;
          }

          v286 = v282;
        }

        v285 = v281;
        v293 = v19;
      }

      else
      {
        if (cstdlib_strlen(*a3) <= v281)
        {
          v293 = 0;
        }

        else
        {
          v293 = 0;
          if ((*a3)[v281] == 95)
          {
            v48 = 0;
          }
        }

        v286 = v282;
        v285 = v281;
      }

      a5 = v303;
    }

    else
    {
      v286 = v282;
LABEL_233:
      v285 = v281;
      v293 = v19;
    }

LABEL_114:
    if (!log_HasTraceTuningDataSubscriber(*(v33 + 32)))
    {
      if (v48)
      {
LABEL_120:
        if (!*(v64 + 7) && !*(v64 + 8))
        {
          goto LABEL_301;
        }

        goto LABEL_122;
      }

      goto LABEL_346;
    }

    v95 = *(v33 + 32);
    if (!v48)
    {
      log_OutTraceTuningData(v95, 280, "%s%d %s%d %s%s", v90, v91, v92, v93, v94, "IDXBEG");
      goto LABEL_346;
    }

    log_OutTraceTuningData(v95, 280, "%s%d %s%d %s%s", v90, v91, v92, v93, v94, "IDXBEG");
    if (!*(v64 + 7) && !*(v64 + 8))
    {
      log_OutTraceTuningData(*(v33 + 32), 281, "%s%s %s%s", v96, v97, v98, v99, v100, "RES");
      log_OutTraceTuningData(*(v33 + 32), 282, "%s%s %s%s", v101, v102, v103, v104, v105, "RES");
      goto LABEL_120;
    }

LABEL_122:
    v106 = v64;
    v107 = v285;
    for (i = v285; cstdlib_strlen(*a3) > v107; i = ++v107)
    {
      if (cstdlib_strchr(" _", (*a3)[i]))
      {
        break;
      }
    }

    v109 = cstdlib_strlen(*a3);
    v110 = (*v106)[1];
    v111 = *(v110 + 184);
    v112 = *(v110 + 192);
    v113 = *a3;
    v114 = v293;
    while (v114)
    {
      v115 = v114 - 1;
      v116 = cstdlib_strchr(" _", v113[v114 - 1]);
      v114 = v115;
      if (!v116)
      {
        if ((v115 & 0x8000) == 0)
        {
          v117 = v115 & 0xFFFF7FFF;
          if (cstdlib_strchr(v112, v113[v117]))
          {
            v294 = v113[v117];
            goto LABEL_132;
          }
        }

        break;
      }
    }

    v294 = 0;
LABEL_132:
    v118 = v293 + v286;
    if ((v118 << 16) >= (cstdlib_strlen(v113) << 16))
    {
      v289 = 0;
      a4 = v307;
    }

    else
    {
      v119 = &v113[v118];
      do
      {
        v120 = *v119++;
      }

      while (cstdlib_strchr(" _", v120));
      a4 = v307;
      if (cstdlib_strchr(v112, *(v119 - 1)))
      {
        v289 = *(v119 - 1);
      }

      else
      {
        v289 = 0;
      }
    }

    a5 = v303;
    if (v293)
    {
      if (v294 && cstdlib_strchr(v111, v294))
      {
        v323 = 0x300000002;
        v324 = 6;
        v121 = 3;
        goto LABEL_147;
      }

      v323 = 0x700000004;
      v324 = 6;
      v121 = 3;
    }

    else
    {
      v323 = 0x300000001;
      v121 = 2;
    }

    if (v294)
    {
LABEL_147:
      *(&v323 + v121++) = 5;
    }

    *(&v323 + v121) = 0;
    if (v109 == i)
    {
      v321 = 0x300000001;
      v122 = 2;
      v123 = v289;
      goto LABEL_154;
    }

    v123 = v289;
    if (v289 && cstdlib_strchr(v111, v289))
    {
      v321 = 0x300000002;
      v322 = 6;
      v122 = 3;
      goto LABEL_155;
    }

    v321 = 0x700000004;
    v322 = 6;
    v122 = 3;
LABEL_154:
    if (v123)
    {
LABEL_155:
      *(&v321 + v122++) = 5;
    }

    v295 = v121 + 1;
    *(&v321 + v122) = 0;
    v292 = v122 + 1;
    if (*v303)
    {
      v124 = 0;
      v125 = 0;
      v126 = (v293 + v290);
      do
      {
        if (*(*a4 + v124) == 50)
        {
          v127 = *(*a4 + v124 + 24);
          if (v127)
          {
            if (*v127)
            {
              cstdlib_strncpy(*(*a4 + v124 + 24), *(*a4 + v124 + 24), 8uLL);
              v128 = *(*a4 + v124 + 12) - v305;
              if (v128 == v293)
              {
                if (cstdlib_strcmp(v127, "medial"))
                {
                  v129 = 0;
                }

                else
                {
                  v323 = 0x700000004;
                  v129 = 2;
                }

                if (!cstdlib_strcmp(v127, "phrase-break"))
                {
                  *(&v323 + 4 * v129) = 0x300000002;
                  v129 += 2;
                }

                if (!cstdlib_strcmp(v127, "sentence-break"))
                {
                  *(&v323 + 4 * v129) = 0x300000001;
                  v129 += 2;
                }

                *(&v323 + v129) = 0;
                v295 = v129 + 1;
                a4 = v307;
                v128 = *(*v307 + v124 + 12) - v305;
              }

              if (v128 == v126 || v128 - 1 == v126)
              {
                if (cstdlib_strcmp(v127, "medial"))
                {
                  v131 = 0;
                }

                else
                {
                  v321 = 0x700000004;
                  v131 = 2;
                }

                if (!cstdlib_strcmp(v127, "phrase-break"))
                {
                  *(&v321 + 4 * v131) = 0x300000002;
                  v131 += 2;
                }

                if (!cstdlib_strcmp(v127, "sentence-break"))
                {
                  *(&v321 + 4 * v131) = 0x300000001;
                  v131 += 2;
                }

                *(&v321 + v131) = 0;
                v292 = v131 + 1;
                a4 = v307;
              }
            }
          }
        }

        ++v125;
        v124 += 32;
      }

      while (v125 < *v303);
    }

    v132 = v308;
    if (!*(v308 + 7))
    {
      LODWORD(v139) = 1;
      v133 = v299;
      goto LABEL_246;
    }

    v133 = v299;
    if (!v295)
    {
      goto LABEL_245;
    }

    v134 = 0;
    v135 = v295;
    while (2)
    {
      v136 = *(&v323 + v134);
      if (v136 != *(v132 + 7))
      {
        goto LABEL_202;
      }

      if (v136 == 7)
      {
        if (*(*((*v132)[1] + 232) + 8 * *(v132 + 24)))
        {
          __s1[0] = 0;
          v66 = (*(v133 + 104))(a7, a8, 1, 0, &v313);
          if ((v66 & 0x80000000) != 0)
          {
            goto LABEL_366;
          }

          v66 = (*(v133 + 104))(a7, a8, 2, v313, &v318);
          if ((v66 & 0x80000000) != 0)
          {
            goto LABEL_366;
          }

          v137 = v318;
          v138 = a7;
          if (v318)
          {
            while (1)
            {
              v66 = (*(v133 + 168))(v138, a8, v137, 1, 1, &v314 + 2, &v316);
              if ((v66 & 0x80000000) != 0)
              {
                goto LABEL_366;
              }

              v66 = (*(v133 + 168))(v138, a8, v318, 2, 1, &v314, &v316);
              if ((v66 & 0x80000000) != 0)
              {
                goto LABEL_366;
              }

              v138 = a7;
              if (v314 + 1 == v293)
              {
                v66 = (*(v133 + 168))(a7, a8, v318, 0, 1, &v317, &v316);
                if ((v66 & 0x80000000) != 0)
                {
                  goto LABEL_366;
                }

                if (v317 <= 0xE && ((1 << v317) & 0x7E10) != 0)
                {
                  break;
                }
              }

              v66 = (*(v133 + 120))(a7, a8, v318, &v318);
              if ((v66 & 0x80000000) != 0)
              {
                goto LABEL_366;
              }

              v137 = v318;
              if (!v318)
              {
                goto LABEL_201;
              }
            }

            v300 = (*(v133 + 176))(a7, a8, v318, 3, __s1, &v316);
            if ((v300 & 0x80000000) != 0)
            {
              goto LABEL_367;
            }

            v140 = *(v301 + 8);
            v141 = cstdlib_strlen(*(*((*v132)[1] + 232) + 8 * *(v132 + 24)));
            v142 = heap_Calloc(v140, (v141 + 1), 1);
            v143 = v132;
            v144 = v142;
            cstdlib_strcpy(v142, *(*(*(*v143 + 8) + 232) + 8 * v143[24]));
            v145 = cstdlib_strpbrk(v144, " ");
            if (v144 | v145)
            {
              v139 = v145;
              v146 = v144;
              if (v145)
              {
LABEL_208:
                *v139 = 0;
              }

              while (1)
              {
                v147 = cstdlib_strlen(__s1[0]);
                v148 = v147 - cstdlib_strlen(v146);
                if (v148 >= 0 && !cstdlib_strcmp(v146, &__s1[0][v148]))
                {
                  break;
                }

                a4 = v307;
                if (!v139)
                {
                  v133 = v299;
                  goto LABEL_215;
                }

                v146 = v139 + 1;
                v139 = cstdlib_strpbrk(v139 + 1, " ");
                if (v139)
                {
                  goto LABEL_208;
                }
              }

              LODWORD(v139) = 1;
              a4 = v307;
              v133 = v299;
            }

            else
            {
              LODWORD(v139) = 0;
            }

LABEL_215:
            heap_Free(*(v301 + 8), v144);
            v132 = v308;
          }

          else
          {
LABEL_201:
            v300 = v66;
            LODWORD(v139) = 0;
          }

          v135 = v295;
          if (v139)
          {
            goto LABEL_246;
          }

          goto LABEL_217;
        }

LABEL_202:
        LODWORD(v139) = 0;
LABEL_217:
        if (++v134 >= v135)
        {
          goto LABEL_246;
        }

        continue;
      }

      break;
    }

    if (v136 != 5 || *(v132 + 24) == v294)
    {
      LODWORD(v139) = 1;
      goto LABEL_246;
    }

LABEL_245:
    LODWORD(v139) = 0;
LABEL_246:
    if (log_HasTraceTuningDataSubscriber(*(v301 + 32)))
    {
      cstdlib_strcpy(__s1, "");
      hlp_ContextToString(v139, *(v132 + 7), *(v132 + 24), v295, &v323, v294, __s1);
      log_OutTraceTuningData(*(v301 + 32), 281, "%s%s %s%s", v152, v153, v154, v155, v156, "RES");
    }

    v89 = v291;
    if (!v139)
    {
      v65 = v306;
LABEL_339:
      v33 = v301;
      goto LABEL_346;
    }

    if (!*(v132 + 8))
    {
LABEL_296:
      v161 = 1;
      goto LABEL_298;
    }

    if (!v292)
    {
LABEL_297:
      v161 = 0;
      goto LABEL_298;
    }

    v157 = 0;
    v158 = v292;
    do
    {
      v159 = *(&v321 + v157);
      if (v159 != *(v308 + 8))
      {
LABEL_266:
        v161 = 0;
        goto LABEL_287;
      }

      if (v159 != 7)
      {
        if (v159 != 5 || *(v308 + 25) == v289)
        {
          goto LABEL_296;
        }

        goto LABEL_297;
      }

      if (!*(*((*v308)[1] + 232) + 8 * *(v308 + 25)))
      {
        goto LABEL_266;
      }

      __s1[0] = 0;
      v160 = (*(v133 + 104))(a7, a8, 1, 0, &v313);
      if ((v160 & 0x80000000) != 0 || (v160 = (*(v133 + 104))(a7, a8, 2, v313, &v318), (v160 & 0x80000000) != 0))
      {
LABEL_370:
        v300 = v160;
LABEL_371:
        v33 = v301;
        goto LABEL_372;
      }

      while (1)
      {
        if (!v318)
        {
          v300 = v160;
          v161 = 0;
          goto LABEL_286;
        }

        v160 = (*(v133 + 168))(a7, a8, v318, 1, 1, &v314 + 2, &v316);
        if ((v160 & 0x80000000) != 0)
        {
          goto LABEL_370;
        }

        if (HIWORD(v314) - 1 == v285)
        {
          v160 = (*(v133 + 168))(a7, a8, v318, 2, 1, &v314, &v316);
          if ((v160 & 0x80000000) != 0)
          {
            goto LABEL_370;
          }

          v160 = (*(v133 + 168))(a7, a8, v318, 0, 1, &v317, &v316);
          if ((v160 & 0x80000000) != 0)
          {
            goto LABEL_370;
          }

          if (v317 <= 0xE && ((1 << v317) & 0x7E10) != 0)
          {
            break;
          }
        }

        v160 = (*(v133 + 120))(a7, a8, v318, &v318);
        if ((v160 & 0x80000000) != 0)
        {
          goto LABEL_370;
        }
      }

      v300 = (*(v133 + 176))(a7, a8, v318, 3, __s1, &v316);
      if ((v300 & 0x80000000) != 0)
      {
        goto LABEL_371;
      }

      v162 = *(v301 + 8);
      v163 = cstdlib_strlen(*(*((*v308)[1] + 232) + 8 * *(v308 + 25)));
      v164 = heap_Calloc(v162, (v163 + 1), 1);
      cstdlib_strcpy(v164, *(*((*v308)[1] + 232) + 8 * *(v308 + 25)));
      v165 = cstdlib_strpbrk(v164, " ");
      if (!(v164 | v165))
      {
LABEL_284:
        v161 = 0;
        goto LABEL_285;
      }

      v166 = v165;
      v167 = v164;
      if (!v165)
      {
        goto LABEL_272;
      }

LABEL_271:
      *v166 = 0;
LABEL_272:
      while (1)
      {
        v168 = cstdlib_strstr(__s1[0], v167);
        if (v168)
        {
          break;
        }

LABEL_281:
        if (!v166)
        {
          goto LABEL_284;
        }

        v167 = v166 + 1;
        v166 = cstdlib_strpbrk(v166 + 1, " ");
        if (v166)
        {
          goto LABEL_271;
        }
      }

      v169 = v168;
      v170 = cstdlib_strlen(__s1[0]);
      v171 = v170 - cstdlib_strlen(v169);
      if (v171 >= 1)
      {
        v172 = __s1[0];
        a4 = v307;
        while (1)
        {
          v173 = *v172++;
          v174 = (1 << v173) & 0x4008400000000;
          if (v173 > 0x32 || v174 == 0)
          {
            goto LABEL_281;
          }

          if (!--v171)
          {
            v161 = 1;
            goto LABEL_285;
          }
        }
      }

      v161 = 1;
      a4 = v307;
LABEL_285:
      heap_Free(*(v301 + 8), v164);
      v133 = v299;
LABEL_286:
      v158 = v292;
      if (v161)
      {
        break;
      }

LABEL_287:
      ++v157;
    }

    while (v157 < v158);
LABEL_298:
    if (log_HasTraceTuningDataSubscriber(*(v301 + 32)))
    {
      cstdlib_strcpy(__s1, "");
      hlp_ContextToString(v161, *(v308 + 8), *(v308 + 25), v292, &v321, v289, __s1);
      log_OutTraceTuningData(*(v301 + 32), 282, "%s%s %s%s", v176, v177, v178, v179, v180, "RES");
    }

    v65 = v306;
    if (!v161)
    {
      v89 = v291;
      goto LABEL_339;
    }

LABEL_301:
    v181 = domain_mngr_utils_ListContainsString(a2, "*");
    v185 = v280;
    if (!v181)
    {
      v185 = 1;
    }

    v186 = v308;
    LODWORD(v187) = *a5;
    if (*(v308 + 2) != 2 && v185 != 1)
    {
      v33 = v301;
      v204 = a7;
      break;
    }

    v188 = v305 + v285;
    if (!*a5)
    {
      v33 = v301;
      if (v185 == 1)
      {
        goto LABEL_344;
      }

      v230 = v301;
      v231 = a7;
      v73 = a4;
      LOWORD(v187) = 0;
LABEL_385:
      v235 = v305;
      v233 = v293;
      v236 = v294;
      v237 = v290;
      goto LABEL_386;
    }

    v280 = v185;
    v189 = 0;
    v190 = 0;
    v191 = 56;
    v192 = 2;
    v193 = v305 + v293;
    while (2)
    {
      v194 = *a4 + 32 * v189;
      v195 = *v194;
      if ((*v194 - 16) >= 4)
      {
        if (v195 == 21)
        {
          if (v280 == 1)
          {
            if (v189 + 1 >= v187)
            {
              v200 = -1;
            }

            else
            {
              v283 = v193;
              v297 = v190;
              v198 = (*a4 + v191);
              v199 = v192;
              while (*(v198 - 6) != 21 || *(v198 - 3) < *(v194 + 12) || !cstdlib_strcmp(*v198, *(v194 + 24)))
              {
                v49 = v187 == v199++;
                v198 += 4;
                if (v49)
                {
                  v200 = -1;
                  goto LABEL_331;
                }
              }

              v200 = *(v198 - 3) - *(v194 + 12);
LABEL_331:
              v190 = v297;
              v193 = v283;
            }

            a4 = v307;
            v201 = *v307 + 32 * v189;
            v202 = *(v201 + 12);
            if (v202 <= v193 && (v200 == -1 || v202 + v200 >= v188))
            {
              v203 = v190;
              if (domain_mngr_utils_ListContainsString(a2, *(v201 + 24)) == 1)
              {
                v190 = 1;
              }

              else
              {
                v190 = v203;
              }
            }

            goto LABEL_327;
          }
        }

        else if (v195 == 24)
        {
          goto LABEL_308;
        }

LABEL_326:
        a4 = v307;
        goto LABEL_327;
      }

LABEL_308:
      if (*(v308 + 2) != 2)
      {
        goto LABEL_326;
      }

      v196 = *(v194 + 12);
      v197 = v196 <= v193 || v196 >= v188;
      a4 = v307;
      if (!v197)
      {
        v33 = v301;
        log_OutText(*(v301 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC pitch, volume or rate", v182, v183, v184, *((*v308)[1] + 168));
        log_OutTraceTuningData(*(v301 + 32), 283, "%s%s %s%s", v216, v217, v218, v219, v220, "RES");
        v65 = v306;
        goto LABEL_345;
      }

LABEL_327:
      ++v189;
      v187 = *v303;
      ++v192;
      v191 += 32;
      if (v189 < v187)
      {
        continue;
      }

      break;
    }

    v204 = a7;
    if (v280 != 1)
    {
      a5 = v303;
      v33 = v301;
      break;
    }

    a5 = v303;
    v186 = v308;
    v65 = v306;
    v33 = v301;
    if (!v190)
    {
LABEL_344:
      log_OutText(*(v33 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC tn", v182, v183, v184, *((*v186)[1] + 168));
      log_OutTraceTuningData(*(v33 + 32), 283, "%s%s %s%s", v205, v206, v207, v208, v209, "RES");
      v280 = 1;
LABEL_345:
      v89 = v291;
LABEL_346:
      v210 = *a3;
      for (j = v19; ; j = v19)
      {
        v212 = v210[j];
        if (!v212)
        {
          break;
        }

        v213 = cstdlib_strchr(" _", v212);
        v210 = *a3;
        if (v213)
        {
          v214 = v210[v19];
          if (v214)
          {
            v215 = v19;
            while (cstdlib_strchr(" _", v214))
            {
              v215 = (v215 + 1);
              LOBYTE(v214) = (*a3)[v215];
              v19 = v215;
              if (!v214)
              {
                goto LABEL_356;
              }
            }

            v19 = v215;
          }

          break;
        }

        v19 = (v19 + 1);
      }

LABEL_356:
      v296 = v19;
      a5 = v303;
      if (*(v298 + 8) + v89 < (v19 + v65))
      {
        goto LABEL_372;
      }

      continue;
    }

    break;
  }

  v230 = v33;
  v231 = v204;
  if (!v187)
  {
    v73 = a4;
    goto LABEL_385;
  }

  v232 = 0;
  v233 = v293;
  v234 = (*a4 + 12);
  v235 = v305;
  v236 = v294;
  v237 = v290;
  while (1)
  {
    v238 = *v234;
    v234 += 8;
    if (v238 - v305 >= v293)
    {
      break;
    }

    if (v187 == ++v232)
    {
      v73 = a4;
      goto LABEL_386;
    }
  }

  v73 = a4;
  LOWORD(v187) = v232;
LABEL_386:
  if (log_GetLogLevel(*(v230 + 32)) >= 5)
  {
    cstdlib_strcpy(__s1, "");
    cstdlib_strcpy(__dst, "");
    hlp_ContextToString(1, *(v308 + 7), *(v308 + 24), v295, &v323, v236, __s1);
    hlp_ContextToString(1, *(v308 + 8), *(v308 + 25), v292, &v321, v289, __dst);
    v242 = *a5;
    LOWORD(v243) = v187;
    if (v242 > v187)
    {
      v243 = v187;
      v244 = (*v73 + 32 * v187);
      while (v244[3] - v235 <= v233 && *v244 == 36)
      {
        v244 += 8;
        if (v242 == ++v243)
        {
          goto LABEL_398;
        }
      }
    }

    if (v242 != v243 && *a5)
    {
      v245 = *v73 + 8;
      do
      {
        if (*(v245 + 4) - v235 >= v285)
        {
          break;
        }

        v245 += 32;
        --v242;
      }

      while (v242);
    }

LABEL_398:
    log_OutText(*(v301 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s], begPos %ld, endPos %ld, begCtxt %s, endCtxt %s", v239, v240, v241, *((*v308)[1] + 168));
  }

  v246 = *a9;
  v300 = activeprompt_Insert(v308, v233, v237, v235, a3, v73, a5, v187, v298, v231, a8, a9);
  if ((v300 & 0x80000000) != 0)
  {
    v33 = v301;
    a4 = v73;
    goto LABEL_372;
  }

  v247 = *a5;
  v248 = *v73;
  v249 = v235 + v233;
  if (*a5)
  {
    v250 = 0;
    v251 = (v248 + 12);
    while (1)
    {
      v252 = *v251;
      v251 += 8;
      if (v252 > v249)
      {
        break;
      }

      if (v247 == ++v250)
      {
        v253 = *a5;
        goto LABEL_408;
      }
    }

    v253 = v250;
  }

  else
  {
    v253 = 0;
  }

LABEL_408:
  v254 = *a9;
  v255 = heap_Realloc(*(v301 + 8), v248, 32 * v247 + 32);
  if (!v255)
  {
    v300 = -1998577654;
    log_OutPublic(*(v301 + 32), "DOMAIN_MNGR", 47000, 0, v256, v257, v258, v259, v278);
    v33 = v301;
    a5 = v303;
    goto LABEL_369;
  }

  *v73 = v255;
  v260 = *v303;
  if (v253 < v260)
  {
    cstdlib_memmove((v255 + 32 * v253 + 32), (v255 + 32 * v253), 32 * (v260 - v253));
    LOWORD(v260) = *v303;
    v255 = *v73;
  }

  *v303 = v260 + 1;
  cstdlib_memset((v255 + 32 * v253), 0, 0x20uLL);
  v261 = (*v73 + 32 * v253);
  *v261 = 40;
  if (v253)
  {
    v261[1] = *(v261 - 7);
  }

  v262 = v285 - v293 + (v254 - v246);
  v261[3] = v249;
  v261[4] = v262 & ~(v262 >> 31);
  v263 = *(v301 + 8);
  v264 = cstdlib_strlen(*((*v308)[1] + 168));
  v265 = cstdlib_strlen(v308[2]);
  v266 = heap_Alloc(v263, (v264 + v265 + 3));
  a4 = v73;
  *(*v73 + 32 * v253 + 24) = v266;
  v271 = *v73 + 32 * v253;
  v273 = *(v271 + 24);
  v272 = (v271 + 24);
  if (v273)
  {
    if (vector_Add(*(**v308 + 88), v272))
    {
      cstdlib_strcpy(*(*v73 + 32 * v253 + 24), *((*v308)[1] + 168));
      cstdlib_strcat(*(*v73 + 32 * v253 + 24), "::");
      cstdlib_strcat(*(*v73 + 32 * v253 + 24), v308[2]);
      v33 = v301;
    }

    else
    {
      v300 = -1998577654;
      v33 = v301;
      heap_Free(*(v301 + 8), *(*v73 + 32 * v253 + 24));
      *(*v73 + 32 * v253 + 24) = 0;
      log_OutPublic(*(v301 + 32), "DOMAIN_MNGR", 47000, 0, v274, v275, v276, v277, v278);
    }
  }

  else
  {
    v300 = -1998577654;
    log_OutPublic(*(v301 + 32), "DOMAIN_MNGR", 47000, 0, v267, v268, v269, v270, v278);
    v33 = v301;
  }

LABEL_421:
  a5 = v303;
LABEL_372:
  if (log_HasTraceTuningDataSubscriber(*(v33 + 32)))
  {
    v221 = *(v33 + 32);
    v222 = *a3;
    v223 = cstdlib_strlen(v222);
    log_OutTraceTuningDataBinary(v221, 279, "", "text/plain;charset=depes", v222, v223);
    log_OutTraceTuningDataBinary(*(v33 + 32), 279, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
    log_OutTraceTuningData(*(v33 + 32), 277, "%s%s", v224, v225, v226, v227, v228, "END");
  }

  return v300;
}

void *PurgeNLUStrArr(void *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a2)
  {
    v5 = a3;
    v7 = a5 == a3 || a5 == 0;
    v8 = v7;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = a4;
      v11 = result;
      v12 = 0;
      v13 = 0;
      v27 = a3 + 32;
      v14 = a4 + 32;
      v15 = a5 == a4 || v8;
      v16 = v15 ^ 1;
      while (1)
      {
        if (v11)
        {
          v17 = v11[2];
          if (v17)
          {
            if (v11[1] > v13)
            {
              v18 = *(v17 + 8 * v13);
              if (v18)
              {
                v19 = *v18;
                if (v19 == v5 || v27 == v19)
                {
                  v21 = v13 + 1;
                  do
                  {
                    v22 = v11[2];
                    if (v22)
                    {
                      if (v11[1] > v21)
                      {
                        v23 = *(v22 + 8 * v21);
                        if (v23)
                        {
                          v24 = *v23;
                          v25 = v24 == v10 || v14 == v24;
                          if (v25)
                          {
                            v12 = 1;
                          }

                          if (v25 && (v16 & 1) == 0)
                          {
                            if (v8)
                            {
                              v26 = v21;
                            }

                            else
                            {
                              v26 = v13;
                            }

                            result = StrArrSave(v11, v26, 0);
                            v12 = 1;
                          }
                        }
                      }
                    }

                    ++v21;
                  }

                  while (a2 != v21);
                }
              }
            }
          }
        }

        if (++v13 == v9)
        {
          if (!v12)
          {
            break;
          }

          v12 = 0;
          v13 = 0;
          if (!v9)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}