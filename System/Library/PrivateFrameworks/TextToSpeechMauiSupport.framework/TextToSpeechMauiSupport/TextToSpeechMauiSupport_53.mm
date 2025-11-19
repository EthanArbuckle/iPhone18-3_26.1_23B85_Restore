uint64_t fe_clcml_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62600, 1000) & 0x80000000) != 0)
  {
    return 2358255624;
  }

  v3 = *(a1 + 24);

  return synstrmaux_CloseStreams((a1 + 80), v3);
}

uint64_t fe_clcml_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2358255617;
  }

  result = 0;
  *a2 = &IFeClcml;
  return result;
}

char *hlp_StringAppend(uint64_t *a1, char *a2, char *__s, unsigned int *a4)
{
  if (!__s)
  {
    return a2;
  }

  v8 = cstdlib_strlen(__s);
  v9 = v8;
  if (!a2)
  {
    v12 = v8 + 129;
    v13 = heap_Alloc(a1, v8 + 129);
    a2 = v13;
    if (!v13)
    {
      return a2;
    }

    if (a4)
    {
      *a4 = v12;
    }

    v10 = 0;
    *v13 = 0;
LABEL_11:
    cstdlib_strncat(a2, __s, v9);
    a2[v10 + v9] = 0;
    return a2;
  }

  if (!a4)
  {
    return 0;
  }

  v10 = cstdlib_strlen(a2);
  if (v9 + v10 + 1 < *a4)
  {
    goto LABEL_11;
  }

  v11 = v9 + *a4 + 129;
  *a4 = v11;
  a2 = heap_Realloc(a1, a2, v11);
  if (a2)
  {
    goto LABEL_11;
  }

  return a2;
}

char *clcpipeline_loc_StrDup(uint64_t a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  v5 = heap_Alloc(a1, (v4 + 1));
  v6 = v5;
  if (v5)
  {
    cstdlib_strcpy(v5, __s);
  }

  return v6;
}

char *clcpipeline_loc_StrDupA(uint64_t a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  v5 = heap_Alloc(a1, (v4 + 1));
  v6 = v5;
  if (v5)
  {
    cstdlib_strcpy(v5, __s);
  }

  return v6;
}

uint64_t clcpipeline_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  v87 = 0;
  *v85 = 0;
  __s1 = 0;
  v83 = 0;
  v84 = 0;
  inited = InitRsrcFunction(a1, a2, v85);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a5 = 0;
  *a6 = 0;
  if ((ssftmap_FindReadOnly(a3, "BROKERSTRING", &v87) & 0x80000000) != 0)
  {
    return 2358255623;
  }

  if (!*v87)
  {
    return 2358255623;
  }

  log_OutText(*(*v85 + 32), "FE_CLCML", 4, 0, "clcpipeline_ObjOpen : Begin %s", v13, v14, v15, *v87);
  v16 = heap_Calloc(*(*v85 + 8), 1, 48);
  v21 = v16;
  if (!v16)
  {
    log_OutPublic(*(*v85 + 32), "FE_CLCML", 16000, 0, v17, v18, v19, v20, v79);
    v62 = 2358255626;
    goto LABEL_81;
  }

  v81 = a5;
  v22 = 0;
  *v16 = *v85;
  v80 = v16 + 3;
  v23 = 1;
  do
  {
    ReadOnly = ssftmap_FindReadOnly(a3, "COMPONENTS", &v87);
    if ((ReadOnly & 0x80000000) != 0 || (ReadOnly = ssftmap_IteratorOpen(v87[2], 0, 0, &v83), (ReadOnly & 0x80000000) != 0))
    {
      v62 = ReadOnly;
      v84 = v22;
      log_OutPublic(*(*v85 + 32), "FE_CLCML", 16072, "%s%s", v25, v26, v27, v28, "clcpipeline");
      goto LABEL_80;
    }

    for (i = 0; (ssftmap_IteratorNext(v83, &__s1, &v87) & 0x80000000) == 0; ++i)
    {
      if (v23 == 1)
      {
        if (!__s1 || cstdlib_strcmp(__s1, "COMPONENT"))
        {
          v84 = v22;
          log_OutPublic(*(*v85 + 32), "FE_CLCML", 16091, "%s%s%s%s", v29, v30, v31, v32, "clcpipeline");
          goto LABEL_79;
        }

        if (!*v87 || !**v87)
        {
          v84 = v22;
          log_OutPublic(*(*v85 + 32), "FE_CLCML", 16092, "%s%s", v29, v30, v31, v32, "clcpipeline");
          goto LABEL_79;
        }
      }

      else
      {
        v34 = clcpipeline_PrepareForOpeningComponent(*v85, i, *v87, v21);
        if ((v34 & 0x80000000) != 0)
        {
          v62 = v34;
          v84 = v22;
          goto LABEL_80;
        }
      }
    }

    ssftmap_IteratorClose(v83);
    v83 = 0;
    if (v23 == 1)
    {
      v41 = heap_Calloc(*(*v85 + 8), i, 8);
      *(v21 + 8) = v41;
      if (v41)
      {
        *(v21 + 16) = i;
        v46 = heap_Calloc(*(*v85 + 8), i, 16);
        if (v46)
        {
          v22 = v46;
          if (log_GetLogLevel(*(*v85 + 32)) >= 2)
          {
            compstats_ObjOpen(a1, a2, *(v21 + 16) + 3, v80);
            compstats_Start(*(v21 + 24), *(v21 + 32), 0, v47, v48, v49, v50, v51);
            if (*(v21 + 24))
            {
              v52 = heap_Calloc(*(*v85 + 8), *(v21 + 16) + 3, 8);
              *(v21 + 40) = v52;
              if (v52)
              {
                **(v21 + 40) = clcpipeline_loc_StrDup(*(*v85 + 8), "Total");
                *(*(v21 + 40) + 8) = clcpipeline_loc_StrDup(*(*v85 + 8), "TTSEG input CB");
                *(*(v21 + 40) + 8 * *(v21 + 16) + 16) = clcpipeline_loc_StrDup(*(*v85 + 8), "TTSEG output CB");
              }

              else
              {
                compstats_ObjClose(*(v21 + 24), *(v21 + 32));
                *(v21 + 24) = safeh_GetNullHandle();
                *(v21 + 32) = v53;
              }
            }
          }

          continue;
        }

        v84 = 0;
      }

      else
      {
        v84 = v22;
      }

      log_OutPublic(*(*v85 + 32), "FE_CLCML", 16000, 0, v42, v43, v44, v45, v79);
      v62 = 2358255626;
      goto LABEL_80;
    }
  }

  while (v23++ < 2);
  v84 = v22;
  a5 = v81;
  if ((ssftmap_FindReadOnly(a3, "PARAMETERS", &v87) & 0x80000000) == 0 && (ssftmap_IteratorOpen(v87[2], 0, 0, &v83) & 0x80000000) == 0)
  {
    while ((ssftmap_IteratorNext(v83, &__s1, &v87) & 0x80000000) == 0)
    {
      if (__s1 && *__s1)
      {
        if (*v87)
        {
          v55 = *v87;
        }

        else
        {
          v55 = "";
        }

        paramc_ParamSetStr(*(*v85 + 40), __s1, v55);
      }
    }

    ssftmap_IteratorClose(v83);
    v83 = 0;
  }

  if ((ssftmap_FindReadOnly(a3, "OBJECTS", &v87) & 0x80000000) == 0 && (ssftmap_IteratorOpen(v87[2], 0, 0, &v83) & 0x80000000) == 0)
  {
    if ((ssftmap_IteratorNext(v83, &__s1, &v87) & 0x80000000) == 0)
    {
      while (__s1 && *v87 && **v87)
      {
        if (cstdlib_strcmp(__s1, "INET"))
        {
          Object = clcpipeline_LoadObject(a1, a2, __s1, *v87, a4, a6);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_96;
          }

          if (!cstdlib_strcmp(__s1, "FE_DCTLKP") && !cstdlib_strcmp(*v87, "fe/fe_dctlkp"))
          {
            Object = clcpipeline_LoadObject(a1, a2, "FE_NN", "fe/fe_nn", a4, a6);
            if ((Object & 0x80000000) != 0)
            {
              goto LABEL_96;
            }
          }
        }

        if ((ssftmap_IteratorNext(v83, &__s1, &v87) & 0x80000000) != 0)
        {
          goto LABEL_50;
        }
      }

      log_OutPublic(*(*v85 + 32), "FE_CLCML", 16099, "%s%s%s%s", v56, v57, v58, v59, "clcpipeline");
LABEL_79:
      v62 = 2358255620;
      goto LABEL_80;
    }

LABEL_50:
    Object = clcpipeline_LoadObject(a1, a2, "CLMOBJECT", "clmobjectinterface", a4, a6);
    if ((Object & 0x80000000) != 0)
    {
LABEL_96:
      v62 = Object;
      goto LABEL_80;
    }

    ssftmap_IteratorClose(v83);
    v83 = 0;
    a5 = v81;
  }

  v61 = clcpipeline_silently_add_fe_clm_component(*v85, v21, &v84);
  if ((v61 & 0x80000000) != 0)
  {
    v62 = v61;
    goto LABEL_81;
  }

  v62 = clcpipeline_disclose_location_of_fe_clm_component(*v85, v21);
  if ((v62 & 0x80000000) != 0)
  {
LABEL_81:
    if (v83)
    {
      ssftmap_IteratorClose(v83);
    }
  }

  else
  {
    v63 = *(v21 + 16);
    if (*(v21 + 16))
    {
      v64 = 0;
      v65 = (v84 + 8);
      while (2)
      {
        v66 = *(*(v21 + 8) + 8 * v64);
        if (!v66)
        {
          goto LABEL_68;
        }

        if (*v80)
        {
          compstats_Start(*v80, *(v21 + 32), (v64 + 2), v36, v37, v38, v39, v40);
        }

        NullHandle = safeh_GetNullHandle();
        if (safeh_HandlesEqual(v66[3], v66[4], NullHandle, v68))
        {
          log_OutText(*(*v85 + 32), "FE_CLCML", 4, 0, "Open component: %s", v38, v39, v40, v66[1]);
          v69 = (*(v66[2] + 32))(*(v65 - 1), *v65, a1, a2, v66 + 3);
          goto LABEL_63;
        }

        if (*(v66[2] + 48))
        {
          log_OutText(*(*v85 + 32), "FE_CLCML", 4, 0, "Reopen component: %s", v38, v39, v40, v66[1]);
          *a6 = 1;
          v69 = (*(v66[2] + 48))(v66[3], v66[4]);
LABEL_63:
          v62 = v69;
        }

        if (*v80)
        {
          compstats_Stop(*v80, *(v21 + 32), (v64 + 2), v36, v37, v38, v39, v40);
        }

        if ((v62 & 0x80000000) != 0)
        {
          log_OutPublic(*(*v85 + 32), "FE_CLCML", 16001, "%s%s%s%x", v37, v38, v39, v40, "component");
LABEL_80:
          a5 = v81;
          goto LABEL_81;
        }

        v63 = *(v21 + 16);
LABEL_68:
        ++v64;
        v65 += 2;
        if (v64 >= v63)
        {
          break;
        }

        continue;
      }
    }

    v70 = ssftmap_FindReadOnly(a3, "RESOURCES", &v87);
    if ((v70 & 0x80000000) != 0)
    {
      v62 = v70;
      a5 = v81;
      goto LABEL_98;
    }

    v62 = ssftmap_IteratorOpen(v87[2], 0, 0, &v83);
    v71 = v62;
    a5 = v81;
    if ((v62 & 0x80000000) != 0)
    {
LABEL_98:
      v71 = 0;
      if ((v62 & 0x1FFF) != 0x14 && (v62 & 0x1FFF) != 0xD)
      {
        goto LABEL_81;
      }
    }

    v82 = 0;
    while ((ssftmap_IteratorNext(v83, &__s1, &v87) & 0x80000000) == 0)
    {
      if (__s1 && !cstdlib_strcmp(__s1, "RESOURCE"))
      {
        if (*v87 && **v87)
        {
          v78 = v87[1];
          if (v78 && (ssftmap_FindReadOnly(v78, "content-type", &v82) & 0x80000000) == 0 && v82 && *v82)
          {
            log_OutText(*(*v85 + 32), "FE_CLCML", 4, 0, "ResourceLoad: %s, %s", v75, v76, v77, *v87);
            clcpipeline_ResourceLoad(v21, 1, v82, *v87, 0, 0, 0);
          }

          else
          {
            log_OutPublic(*(*v85 + 32), "FE_CLCML", 16095, "%s%s", v74, v75, v76, v77, "clcpipeline");
            v71 = 2358255620;
          }
        }

        else
        {
          log_OutPublic(*(*v85 + 32), "FE_CLCML", 16094, "%s%s", v74, v75, v76, v77, "clcpipeline");
        }
      }

      else
      {
        log_OutPublic(*(*v85 + 32), "FE_CLCML", 16093, "%s%s%s%s", v74, v75, v76, v77, "clcpipeline");
      }
    }

    ssftmap_IteratorClose(v83);
    v83 = 0;
    if (*v80)
    {
      a5 = v81;
      if (*(v21 + 40))
      {
        compstats_Stop(*v80, *(v21 + 32), 0, v36, v37, v38, v39, v40);
        compstats_Log(*(v21 + 24), *(v21 + 32), *(*v85 + 32), "Pipeline Open", *(v21 + 40), 0, 0);
      }

      v62 = v71;
      goto LABEL_81;
    }

    v62 = v71;
    a5 = v81;
  }

  v72 = v84;
  if (v84)
  {
    heap_Free(*(*v85 + 8), v84);
  }

  if ((v62 & 0x80000000) != 0)
  {
    if (v21)
    {
      clcpipeline_ObjClose(v21, v72, v35, v36, v37, v38, v39, v40);
    }
  }

  else
  {
    *a5 = v21;
  }

  log_OutText(*(*v85 + 32), "FE_CLCML", 4, 0, "clcpipeline_ObjOpen : End (%x)", v38, v39, v40, v62);
  return v62;
}

uint64_t clcpipeline_PrepareForOpeningComponent(uint64_t *a1, unsigned int a2, char *__s, void *a4)
{
  if (a4[3])
  {
    v8 = clcpipeline_loc_StrDup(a1[1], __s);
    v9 = a2 + 2;
    *(a4[5] + 8 * v9) = v8;
    compstats_Start(a4[3], a4[4], v9, v10, v11, v12, v13, v14);
  }

  v15 = heap_Calloc(a1[1], 1, 40);
  if (!v15)
  {
    v32 = 2358255626;
    log_OutPublic(a1[4], "FE_CLCML", 16000, 0, v16, v17, v18, v19, v36);
    return v32;
  }

  v20 = v15;
  *(a4[1] + 8 * a2) = v15;
  *v15 = 1;
  v21 = clcpipeline_loc_StrDupA(a1[1], __s);
  v20[1] = v21;
  if (v21)
  {
    v20[3] = safeh_GetNullHandle();
    v20[4] = v26;
    v32 = brk_InterfaceQuery(a1[3]);
    if ((v32 & 0x80000000) == 0)
    {
      v33 = a4[3];
      if (v33)
      {
        compstats_Stop(v33, a4[4], a2 + 2, v27, v28, v29, v30, v31);
      }

      return v32;
    }
  }

  else
  {
    v32 = 2358255626;
    log_OutPublic(a1[4], "FE_CLCML", 16000, 0, v22, v23, v24, v25, v36);
  }

  v34 = v20[1];
  if (v34)
  {
    heap_Free(a1[1], v34);
  }

  heap_Free(a1[1], v20);
  *(a4[1] + 8 * a2) = 0;
  return v32;
}

uint64_t clcpipeline_LoadObject(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v47 = 0;
  v48 = a3;
  NullHandle = safeh_GetNullHandle();
  v46 = v12;
  v43 = 0;
  v44 = 0;
  __b = 0u;
  v42 = 0u;
  inited = InitRsrcFunction(a1, a2, &v47);
  if ((inited & 0x80000000) == 0)
  {
    if ((objc_GetObject(v47[6], a3, &v44) & 0x80000000) != 0)
    {
      cstdlib_memset(&__b, 0, 0x28uLL);
      LOBYTE(__b) = 1;
      v23 = brk_InterfaceQuery(v47[3]);
      if ((v23 & 0x80000000) != 0)
      {
        return v23;
      }

      log_OutText(v47[4], "FE_CLCML", 4, 0, "Open component: %s", v24, v25, v26, a4);
      v27 = (*(*(&__b + 1) + 32))(NullHandle, v46, a1, a2, &v42);
      if ((v27 & 0x80000000) != 0)
      {
        inited = v27;
        log_OutPublic(v47[4], "FE_CLCML", 16001, "%s%s%s%x", v28, v29, v30, v31, "component");
        brk_InterfaceRelease(v47[3], *(&__b + 1));
        return inited;
      }

      inited = objc_RegisterObject(v47[6], a3, &__b);
      if ((inited & 0x80000000) != 0)
      {
        log_OutPublic(v47[4], "FE_CLCML", 16001, "%s%s%s%x", v32, v33, v34, v35, "component");
      }

      else
      {
        if (!a5 || vector_Add(a5, &v48))
        {
          return inited;
        }

        log_OutPublic(v47[4], "FE_CLCML", 16000, 0, v36, v37, v38, v39, v40);
        inited = 2358255626;
      }

      (*(*(&__b + 1) + 40))(v42, *(&v42 + 1));
      brk_InterfaceRelease(v47[3], *(&__b + 1));
      return inited;
    }

    v17 = v44[1];
    if (*(v17 + 48))
    {
      log_OutText(v47[4], "FE_CLCML", 4, 0, "Reopen object: %s", v14, v15, v16, a3);
      if (a6)
      {
        *a6 = 1;
      }

      inited = (*(v17 + 48))(v44[2], v44[3]);
      if ((inited & 0x80000000) != 0)
      {
        log_OutPublic(v47[4], "FE_CLCML", 16001, "%s%s%s%x", v18, v19, v20, v21, "component");
      }
    }

    objc_ReleaseObject(v47[6], a3);
  }

  return inited;
}

uint64_t clcpipeline_silently_add_fe_clm_component(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v40 = 0;
  __s1 = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "langcode", &v40);
  if ((Str & 0x80000000) != 0 || (v7 = Str, !v40) || LH_stricmp(v40, "jpj"))
  {
    v8 = paramc_ParamGetStr(*(a1 + 40), "blockautoinsertionfeclm", &__s1);
    if ((v8 & 0x80000000) != 0 || (v7 = v8, !__s1) || cstdlib_strcmp(__s1, "yes"))
    {
      if (!*(a2 + 16))
      {
        return 0;
      }

      v9 = 0;
      v10 = -1;
      v11 = -1;
      do
      {
        v12 = *(*(a2 + 8) + 8 * v9);
        if (v12)
        {
          if (cstdlib_strcmp(*(v12 + 8), "fe/fe_clm"))
          {
            if (!cstdlib_strcmp(*(v12 + 8), "fe/fe_global"))
            {
              v10 = v9;
            }
          }

          else
          {
            v11 = v9;
          }
        }

        ++v9;
      }

      while (v9 < *(a2 + 16));
      v7 = 0;
      if (v11 == -1 && v10 != -1)
      {
        v43 = 0;
        v42 = 0;
        Object = objc_GetObject(*(a1 + 48), "CLMOBJECT", &v43);
        if ((Object & 0x80000000) == 0)
        {
          Object = (*(v43[1] + 104))(v43[2], v43[3], &v42);
        }

        v7 = Object;
        if (v43)
        {
          objc_ReleaseObject(*(a1 + 48), "CLMOBJECT");
        }

        if ((v7 & 0x80000000) == 0 && v42)
        {
          if (v42 == 2)
          {
            v14 = v10 + 1;
          }

          else
          {
            v14 = v10;
          }

          v15 = heap_Realloc(*(a1 + 8), *(a2 + 8), 8 * *(a2 + 16) + 8);
          if (!v15)
          {
            goto LABEL_43;
          }

          *(a2 + 8) = v15;
          v20 = *(a2 + 16);
          *(v15 + 8 * v20) = 0;
          if (*(a2 + 24))
          {
            v21 = heap_Realloc(*(a1 + 8), *(a2 + 40), 8 * v20 + 32);
            if (!v21)
            {
              goto LABEL_43;
            }

            *(a2 + 40) = v21;
            v20 = *(a2 + 16);
            *(v21 + 8 * v20 + 24) = 0;
          }

          v22 = heap_Realloc(*(a1 + 8), *a3, 16 * v20 + 16);
          if (v22)
          {
            *a3 = v22;
            v23 = (v22 + 16 * *(a2 + 16));
            *v23 = safeh_GetNullHandle();
            v23[1] = v24;
            v25 = *(a2 + 16);
            *(a2 + 16) = v25 + 1;
            if (v25 > v14)
            {
              v26 = 16 * v25;
              do
              {
                *(*(a2 + 8) + 8 * v25) = *(*(a2 + 8) + 8 * (v25 - 1));
                *(*a3 + v26) = *(*a3 + 16 * --v25);
                v26 -= 16;
              }

              while (v14 < v25);
            }

            *(*(a2 + 8) + 8 * v14) = 0;
            v27 = (*a3 + 16 * v14);
            *v27 = safeh_GetNullHandle();
            v27[1] = v28;
            v34 = *(a2 + 40);
            if (!v34)
            {
              return clcpipeline_PrepareForOpeningComponent(a1, v14, "fe/fe_clm", a2);
            }

            v35 = *(a2 + 16) + 2;
            v36 = v14 + 2;
            if (v36 < (*(a2 + 16) + 2))
            {
              do
              {
                v37 = (*(a2 + 40) + 8 * v35);
                *v37 = *(v37 - 1);
                --v35;
              }

              while (v36 < v35);
              v34 = *(a2 + 40);
            }

            *(v34 + 8 * v36) = 0;
            inserted = compstats_InsertNewAt(*(a2 + 24), *(a2 + 32), v36, v29, v30, v31, v32, v33);
            if ((inserted & 0x80000000) == 0)
            {
              return clcpipeline_PrepareForOpeningComponent(a1, v14, "fe/fe_clm", a2);
            }

            return inserted;
          }

LABEL_43:
          v7 = 2358255626;
          log_OutPublic(*(a1 + 32), "FE_CLCML", 16000, 0, v16, v17, v18, v19, v40);
        }
      }
    }
  }

  return v7;
}

uint64_t clcpipeline_disclose_location_of_fe_clm_component(uint64_t a1, uint64_t a2)
{
  v4 = paramc_ParamSetUInt(*(a1 + 40), "fe_clm_component", 0);
  if ((v4 & 0x80000000) != 0 || !*(a2 + 16))
  {
    return v4;
  }

  v5 = 0;
  v6 = -1;
  v7 = -1;
  do
  {
    v8 = *(*(a2 + 8) + 8 * v5);
    if (v8)
    {
      if (cstdlib_strcmp(*(v8 + 8), "fe/fe_clm"))
      {
        if (!cstdlib_strcmp(*(v8 + 8), "fe/fe_global"))
        {
          v6 = v5;
        }
      }

      else
      {
        v7 = v5;
      }
    }

    ++v5;
  }

  while (v5 < *(a2 + 16));
  if (v7 == 0xFFFF || v6 == 0xFFFF)
  {
    return v4;
  }

  v9 = *(a1 + 40);
  if (v6 >= v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  return paramc_ParamSetUInt(v9, "fe_clm_component", v10);
}

uint64_t clcpipeline_ResourceLoad(uint64_t *a1, int a2, char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v37 = *MEMORY[0x277D85DE8];
  v14 = 2358255623;
  v35 = 0;
  *&v34 = safeh_GetNullHandle();
  *(&v34 + 1) = v15;
  if (a1 && a3)
  {
    v16 = *a1;
    if (a4)
    {
      if (cstdlib_strstr(a3, ";loader=broker"))
      {
        v33 = 0;
        Str = paramc_ParamGetStr(*(v16 + 40), "langcode", &v33);
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        v18 = brokeraux_ComposeBrokerString(v16, a4, 1, 1, v33, 0, 0, v36, 0x400uLL);
        if (v18 < 0)
        {
          return v18 | 0x8C902000;
        }

        a4 = v36;
      }
    }

    else
    {
      a4 = "";
    }

    if (a7)
    {
      *a7 = safeh_GetNullHandle();
      a7[1] = v19;
    }

    ResourceOwner = clcpipeline_FindResourceOwner(a1, a3, &v35);
    if ((ResourceOwner & 0x80000000) != 0)
    {
      v31 = ResourceOwner;
      log_OutPublic(*(v16 + 32), "FE_CLCML", 16077, "%s%s%s%s", v21, v22, v23, v24, "uri");
      return v31;
    }

    else
    {
      v25 = *(v35[2] + 64);
      if (v25)
      {
        v26 = v25(v35[3], v35[4], a3, a4, a5, a6, &v34);
        v14 = v26;
        if ((v26 & 0x80000000) != 0)
        {
          if (!a2 || (v26 & 0x1FFF) != 0x40C)
          {
            log_OutPublic(*(v16 + 32), "FE_CLCML", 16038, "%s%s%s%s%s%s%s%x", v27, v28, v29, v30, "component");
          }
        }

        else if (a7)
        {
          *a7 = v34;
        }
      }

      else
      {
        log_OutPublic(*(v16 + 32), "FE_CLCML", 16039, "%s%s%s%s%s%s", v21, v22, v23, v24, "component");
      }
    }
  }

  return v14;
}

uint64_t clcpipeline_ObjClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2358255622;
  }

  v9 = *a1;
  if (*(a1 + 8))
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      compstats_Reset(v10);
      compstats_Start(*(a1 + 24), *(a1 + 32), 0, v11, v12, v13, v14, v15);
    }

    v16 = *(a1 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = (v16 - 1) + 2;
      v19 = v16 - 1;
      do
      {
        v20 = v19;
        v21 = *(*(a1 + 8) + 8 * v19);
        if (v21)
        {
          v22 = *v21;
          v23 = v22 != 0;
          v24 = v22 - 1;
          if (v24 != 0 && v23)
          {
            *v21 = v24;
          }

          else
          {
            NullHandle = safeh_GetNullHandle();
            if (!safeh_HandlesEqual(*(v21 + 3), *(v21 + 4), NullHandle, v26))
            {
              log_OutText(*(v9 + 32), "FE_CLCML", 4, 0, "Close component: %s", v27, v28, v29, *(*(*(a1 + 8) + 8 * v19) + 8));
              v35 = *(a1 + 24);
              if (v35)
              {
                compstats_Start(v35, *(a1 + 32), v18, v30, v31, v32, v33, v34);
              }

              v36 = *(*(a1 + 8) + 8 * v19);
              v42 = (*(v36[2] + 40))(v36[3], v36[4]);
              v43 = *(a1 + 24);
              if (v43)
              {
                compstats_Stop(v43, *(a1 + 32), v18, v37, v38, v39, v40, v41);
              }

              if ((v42 & 0x80000000) != 0)
              {
                log_OutPublic(*(v9 + 32), "FE_CLCML", 16002, "%s%s%s%x", v38, v39, v40, v41, "component");
                if (v17 >= 0)
                {
                  v17 = v42;
                }

                else
                {
                  v17 = v17;
                }
              }
            }

            v44 = *(*(a1 + 8) + 8 * v19);
            v45 = *(v44 + 16);
            if (v45)
            {
              v46 = brk_InterfaceRelease(*(v9 + 24), v45);
              if (v46 >= 0 || v17 <= -1)
              {
                v17 = v17;
              }

              else
              {
                v17 = v46;
              }

              v44 = *(*(a1 + 8) + 8 * v19);
            }

            heap_Free(*(v9 + 8), *(v44 + 8));
            heap_Free(*(v9 + 8), *(*(a1 + 8) + 8 * v19));
          }
        }

        v18 = (v18 - 1);
        --v19;
      }

      while (v20);
    }

    else
    {
      v17 = 0;
    }

    v48 = *(a1 + 24);
    if (v48)
    {
      compstats_Stop(v48, *(a1 + 32), 0, a4, a5, a6, a7, a8);
      compstats_Log(*(a1 + 24), *(a1 + 32), *(v9 + 32), "Pipeline Close", *(a1 + 40), 0, 0);
    }

    heap_Free(*(v9 + 8), *(a1 + 8));
  }

  else
  {
    v17 = 0;
  }

  v49 = *(a1 + 24);
  if (v49)
  {
    compstats_ObjClose(v49, *(a1 + 32));
  }

  if (*(a1 + 40))
  {
    v50 = 0;
    do
    {
      v51 = *(*(a1 + 40) + 8 * v50);
      if (v51)
      {
        heap_Free(*(v9 + 8), v51);
      }

      ++v50;
    }

    while (*(a1 + 16) + 3 > v50);
    heap_Free(*(v9 + 8), *(a1 + 40));
  }

  heap_Free(*(v9 + 8), a1);
  return v17;
}

uint64_t clcpipeline_Find(uint64_t a1, char *__s2, uint64_t *a3)
{
  v3 = 2358255623;
  if (a1 && __s2 && *__s2)
  {
    v7 = 0;
    *a3 = 0;
    while (v7 < *(a1 + 16))
    {
      if (cstdlib_strcmp(*(*(*(a1 + 8) + 8 * v7) + 8), __s2))
      {
        v8 = *a3;
      }

      else
      {
        v8 = *(*(a1 + 8) + 8 * v7);
        *a3 = v8;
      }

      ++v7;
      if (v8)
      {
        return 0;
      }
    }

    return 2358255636;
  }

  return v3;
}

uint64_t clcpipeline_FindResourceOwner(uint64_t a1, const char *a2, void *a3)
{
  v3 = 2358255623;
  if (a1 && a2 && *a2)
  {
    v7 = 0;
    *a3 = 0;
    while (v7 < *(a1 + 16))
    {
      v19 = 0;
      v8 = *(*(a1 + 8) + 8 * v7);
      v9 = *(v8[2] + 56);
      if (v9)
      {
        v10 = v9(v8[3], v8[4], &v19);
        v9 = *a3;
        if ((v10 & 0x80000000) == 0)
        {
          if (v19)
          {
            if (v9)
            {
              return 0;
            }

            v11 = 0;
            while (1)
            {
              v12 = v11;
              v13 = *(v19 + 8 * v11);
              if (!v13)
              {
                break;
              }

              v14 = cstdlib_strlen(v13);
              if (!cstdlib_strncmp(a2, *(v19 + 8 * v12), v14) && ((v16 = a2[v14], v16 != 59) ? (v17 = v16 == 0) : (v17 = 1), v17))
              {
                v15 = *(*(a1 + 8) + 8 * v7);
                *a3 = v15;
              }

              else
              {
                v15 = *a3;
              }

              v11 = v12 + 1;
              if (v15)
              {
                return 0;
              }
            }

            v9 = 0;
          }
        }
      }

      ++v7;
      if (v9)
      {
        return 0;
      }
    }

    return 2358255636;
  }

  return v3;
}

uint64_t clcpipeline_ResourceUnload(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 2358255623;
  if (a1)
  {
    v12 = 0;
    v13 = *a1;
    v8 = 2358255624;
    do
    {
      if (v12 >= *(a1 + 8))
      {
        break;
      }

      v14 = *(a1[1] + 8 * v12);
      v15 = *(v14[2] + 72);
      if (v15)
      {
        v8 = v15(v14[3], v14[4], a2, a3);
        if ((v8 & 0x80000000) == 0)
        {
          return v8;
        }
      }

      ++v12;
    }

    while ((v8 & 0x1FFF) == 8);
    if ((v8 & 0x80000000) != 0)
    {
      log_OutPublic(*(v13 + 32), "FE_CLCML", 16041, "%s%p%s%x", a5, a6, a7, a8, "handle");
    }
  }

  return v8;
}

uint64_t clcpipeline_UnloadObjects(_WORD *a1, int a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0;
  v19 = 0;
  inited = InitRsrcFunction(a1, a2, &v21);
  if ((inited & 0x80000000) == 0)
  {
    for (i = 1; i != 3; ++i)
    {
      Size = vector_GetSize(a3);
      if (Size)
      {
        v7 = Size - 1;
        do
        {
          if (!vector_GetElemAt(a3, v7, &v20))
          {
            break;
          }

          if ((objc_GetObject(v21[6], *v20, &v19) & 0x80000000) == 0)
          {
            objc_ReleaseObject(v21[6], *v20);
            if (i == 1)
            {
              v8 = (*(v19[1] + 40))(v19[2], v19[3]);
              if (v8 < 0)
              {
                v13 = v8;
                log_OutPublic(v21[4], "FE_CLCML", 16100, "%s%x%s%s", v9, v10, v11, v12, "lherror");
              }

              else
              {
                v13 = brk_InterfaceRelease(v21[3], v19[1]);
              }
            }

            else
            {
              v13 = objc_UnregisterObject(v21[6], *v20);
              if (v13 < 0)
              {
                log_OutPublic(v21[4], "FE_CLCML", 16101, "%s%x%s%s", v14, v15, v16, v17, "lherror");
              }
            }

            if (v13 >= 0)
            {
              inited = inited;
            }

            else
            {
              inited = v13;
            }
          }

          --v7;
        }

        while (v7 != -1);
      }
    }
  }

  return inited;
}

uint64_t fe_deinitlingdb_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (!a5)
  {
    return 2308972551;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v25);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v25[6], "LINGDB", &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v25[6], "SYNTHSTREAM", &v24);
  v8 = v25[6];
  if ((Object & 0x80000000) != 0)
  {
    v18 = "LINGDB";
LABEL_15:
    objc_ReleaseObject(v8, v18);
    return Object;
  }

  Object = objc_GetObject(v8, "FE_DEPES", &v22);
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v25[6], "LINGDB");
    v8 = v25[6];
    v18 = "SYNTHSTREAM";
    goto LABEL_15;
  }

  v9 = heap_Alloc(v25[1], 928);
  v14 = v25;
  if (v9)
  {
    v15 = v9;
    *v9 = v25;
    v16 = *(v24 + 8);
    *(v9 + 8) = *(v23 + 8);
    *(v9 + 16) = v16;
    v17 = v22;
    *(v9 + 40) = *(v22 + 8);
    *(v9 + 24) = *(v17 + 16);
    *(v9 + 920) = 0;
    if ((paramc_ParamGetUInt(v14[5], "usewordorthography", &v21) & 0x80000000) == 0 && v21 == 1)
    {
      *(v15 + 920) = 1;
    }

    *a5 = v15;
    *(a5 + 8) = 62337;
  }

  else
  {
    log_OutPublic(v25[4], "FE_DEINITLINGDB", 31000, 0, v10, v11, v12, v13, v20);
    objc_ReleaseObject(v25[6], "LINGDB");
    objc_ReleaseObject(v25[6], "SYNTHSTREAM");
    objc_ReleaseObject(v25[6], "FE_DEPES");
    return 2308972554;
  }

  return Object;
}

uint64_t fe_deinitlingdb_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62337, 928);
  if ((result & 0x80000000) != 0)
  {
    return 2308972552;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_deinitlingdb_ObjReopen(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62337, 928);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2308972552;
  }
}

uint64_t fe_deinitlingdb_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62337, 928) & 0x80000000) != 0)
  {
    return 2308972552;
  }

  synstrmaux_InitStreamOpener(a1 + 48, *(*a1 + 32), "FE_DEINITLINGDB");
  synstrmaux_RegisterOutStream((a1 + 48), "text/plain;charset=depes", a1 + 872);
  synstrmaux_RegisterOutStream((a1 + 48), "application/x-realspeak-markers-pp;version=4.0", a1 + 888);
  synstrmaux_RegisterOutStream((a1 + 48), "text/x-realspeak-phonemes;charset=tts", a1 + 904);
  v7 = synstrmaux_OpenStreams((a1 + 48), *(a1 + 16), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = v7;
LABEL_7:
    synstrmaux_CloseStreams((a1 + 48), *(a1 + 16));
    return v8;
  }

  v8 = paramc_ParamSetStr(*(*a1 + 40), "willbeprocessingdeinitlingdb", "yes");
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t fe_deinitlingdb_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v107 = *MEMORY[0x277D85DE8];
  __s = 0;
  v101 = 0;
  v98 = 0;
  v97 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  result = safeh_HandleCheck(a1, a2, 62337, 928);
  if ((result & 0x80000000) != 0)
  {
    return 2308972552;
  }

  *a5 = 1;
  if (*(a1 + 872))
  {
    v102 = 0;
    v100 = 0;
    v99 = 0;
    v95 = 0;
    v96 = 0;
    v94 = 0;
    v10 = (*(*(a1 + 8) + 272))(a3, a4, 98, 3, 0, 0);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 8) + 104))(a3, a4, 1, 0, &v102 + 2);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 8) + 168))(a3, a4, HIWORD(v102), 3, 1, &v92, &v102);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), &v96, 1);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), &v95, 0);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v11 = (*(*(a1 + 8) + 184))(a3, a4, HIWORD(v102), 0, &v97);
    v12 = *(a1 + 8);
    if (v11 < 0 || v97 != 1)
    {
      v13 = 0;
      if (((*(v12 + 184))(a3, a4, HIWORD(v102), 1, &v97) & 0x80000000) != 0 || v97 != 1 || (v10 = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v102), 1, &v101, &v102), (v10 & 0x80000000) == 0) && ((v13 = v102, !v102) || (v10 = (*(*(a1 + 16) + 104))(*(a1 + 888), *(a1 + 896), v101, 32 * v102), (v10 & 0x80000000) == 0)))
      {
        v14 = (*(*(a1 + 16) + 104))(*(a1 + 872), *(a1 + 880), "##", 3);
        if (v13)
        {
          v15 = 0;
          v16 = 0;
          v17 = (v101 + 12);
          v18 = v13;
          do
          {
            if (*(v17 - 3) == 8)
            {
              v19 = v17[3];
              v20 = v19 + v15;
              v21 = v19 + v16;
              if (*v17 == *(v101 + 12))
              {
                v16 = v21;
              }

              else
              {
                v15 = v20;
              }
            }

            v17 += 8;
            --v18;
          }

          while (v18);
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }

        if (!(v16 | v15))
        {
          goto LABEL_47;
        }

        v104 = 35;
        if (v16)
        {
          v105 = 91;
          LH_utoa(v16, v106, 0xAu);
          v32 = cstdlib_strlen(&v104);
          *(&v104 + v32) = 93;
          *(&v104 + v32 + 1) = 35;
          v33 = v32 + 2;
        }

        else
        {
          v105 = 35;
          v33 = 2;
        }

        v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v104, v33);
        if ((v10 & 0x80000000) == 0)
        {
          if (v15)
          {
            v104 = 91;
            LH_utoa(v15, &v105, 0xAu);
            v34 = cstdlib_strlen(&v104);
            *(&v104 + v34) = 93;
            *(&v104 + v34 + 1) = 0;
            v35 = v34 + 2;
          }

          else
          {
            v104 = 0;
            v35 = 1;
          }

          v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v104, v35);
        }
      }
    }

    else
    {
      v10 = (*(v12 + 176))(a3, a4, HIWORD(v102), 0, &__s, &v102);
      if ((v10 & 0x80000000) == 0)
      {
        if (v102 <= 1u)
        {
          v10 = (*(*(a1 + 16) + 104))(*(a1 + 872), *(a1 + 880), "##", 3);
          goto LABEL_46;
        }

        v22 = cstdlib_strlen(__s);
        v23 = *(*(a1 + 16) + 104);
        v24 = __s;
        v25 = cstdlib_strlen(__s);
        v10 = v23(*(a1 + 872), *(a1 + 880), v24, (v25 + 1));
        if (v10 < 0)
        {
          goto LABEL_46;
        }

        v10 = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v102), 1, &v101, &v102);
        if (v10 < 0)
        {
          goto LABEL_46;
        }

        v26 = v102;
        v27 = v101 + 12;
        v28 = *(v101 + 12);
        v90 = v22;
        if (v102)
        {
          v29 = 0;
          v30 = 0;
          while (*v27 == v28)
          {
            if (*(v27 - 12) == 8)
            {
              v30 += *(v27 + 12);
            }

            ++v29;
            v27 += 32;
            if (v102 == v29)
            {
              v31 = v102;
              goto LABEL_58;
            }
          }

          v31 = v29;
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }

LABEL_58:
        v37 = 1;
        (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "#", 1);
        if (v30)
        {
          v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "[", 1);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          LH_itoa(v30, &v104, 0xAu);
          v38 = *(*(a1 + 16) + 104);
          v39 = cstdlib_strlen(&v104);
          v10 = v38(*(a1 + 904), *(a1 + 912), &v104, v39);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "]", 1);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          v37 = cstdlib_strlen(&v104) + 3;
        }

        if (((*(*(a1 + 8) + 152))(a3, a4, 2, HIWORD(v102), &v97) & 0x80000000) != 0 || !v97)
        {
          v77 = v93;
        }

        else
        {
          v10 = (*(*(a1 + 8) + 104))(a3, a4, 2, HIWORD(v102), &v100);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          v87 = 0;
          v40 = 0;
          v88 = 0;
          v89 = 0;
          v85 = 1;
          v86 = v28;
          while (v100)
          {
            v10 = (*(*(a1 + 8) + 168))(a3, a4);
            if (v10 < 0)
            {
              goto LABEL_46;
            }

            v41 = v99;
            if ((v99 - 9) < 6 || v99 == 4)
            {
              if (v99 != 11 && HIDWORD(v89) != 0)
              {
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x12\x10", 2);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                HIDWORD(v89) = 0;
                v37 += 2;
                v41 = v99;
              }

              if (v41 != 12 && v89)
              {
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x13\x10", 2);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                LODWORD(v89) = 0;
                v37 += 2;
              }

              v10 = (*(*(a1 + 8) + 168))(a3, a4, v100, 1, 1, &v94, &v102);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              v10 = (*(*(a1 + 8) + 168))(a3, a4, v100, 2, 1, &v93, &v102);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              v44 = v94;
              v10 = (*(*(a1 + 8) + 176))(a3, a4, v100, 3, &v98, &v102);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              v45 = v37 - v44 + v40;
              if (!v98 || !*v98)
              {
                goto LABEL_106;
              }

              v46 = cstdlib_strlen(v98);
              v47 = v46;
              if (!*(a1 + 920) && v46)
              {
                v48 = 0;
                v49 = 0;
LABEL_92:
                ++v48;
                do
                {
                  if (v48 != 1 && v98[v48 - 1] == 42 && v98[v48 - 2] != 45)
                  {
                    v98[v48 - 1] = 45;
                    v49 = 1;
                    if (v48 != v46)
                    {
                      goto LABEL_92;
                    }

                    goto LABEL_101;
                  }

                  ++v48;
                }

                while (v48 - v46 != 1);
                if ((v49 & 1) == 0)
                {
                  goto LABEL_102;
                }

LABEL_101:
                v50 = *(*(a1 + 8) + 160);
                v51 = v100;
                v52 = cstdlib_strlen(v98);
                v10 = v50(a3, a4, v51, 3, (v52 + 1), v98, &v91);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }
              }

LABEL_102:
              v87 = v47;
              if (v98 && *v98)
              {
                if (v85)
                {
                  v53 = 0;
                }

                else
                {
                  v71 = *(*(a1 + 16) + 104);
                  v72 = *(a1 + 904);
                  v73 = *(a1 + 912);
                  if (HIWORD(v97))
                  {
                    v10 = v71(v72, v73, "%#[", 3);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    LH_itoa(HIWORD(v97), &v104, 0xAu);
                    v74 = *(*(a1 + 16) + 104);
                    v75 = cstdlib_strlen(&v104);
                    v10 = v74(*(a1 + 904), *(a1 + 912), &v104, v75);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "]", 1);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    v53 = v45;
                    v45 += cstdlib_strlen(&v104) + 4;
                  }

                  else
                  {
                    v10 = v71(v72, v73, "-*", 2);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    v53 = 0;
                    v45 += 2;
                  }
                }

                v76 = v99;
                if (v99 == 13)
                {
                  v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x10\x12", 2);
                  if (v10 < 0)
                  {
                    goto LABEL_46;
                  }

                  v45 += 2;
                  HIDWORD(v89) = 1;
                  v76 = v99;
                }

                if (v76 == 14)
                {
                  v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x10\x13", 2);
                  if (v10 < 0)
                  {
                    goto LABEL_46;
                  }

                  v45 += 2;
                  LODWORD(v89) = 1;
                }

                if (((*(*(a1 + 8) + 184))(a3, a4, v100, 8, &v97) & 0x80000000) != 0 || v97 != 1)
                {
                  v85 = 0;
                  HIWORD(v97) = 0;
                }

                else
                {
                  v10 = (*(*(a1 + 8) + 168))(a3, a4, v100, 8, 1, &v97 + 2, &v102);
                  if (v10 < 0)
                  {
                    goto LABEL_46;
                  }

                  v85 = 0;
                }
              }

              else
              {
LABEL_106:
                v53 = 0;
              }

              v54 = v94;
              if (v31 >= v26)
              {
                v30 = 0;
              }

              else
              {
                v30 = 0;
                v55 = v101;
                v56 = v28 + v94 + v45;
                v57 = v28 + v94 + v53;
                v58 = v31 - 1;
                v59 = v31 - 1;
                v60 = v88;
                while (1)
                {
                  v61 = v55 + 32 * v31;
                  v62 = (v61 + 12);
                  if (v54 < (*(v61 + 12) - v28))
                  {
                    break;
                  }

                  *v62 = v56;
                  if (*v61 == 8)
                  {
                    if (v31)
                    {
                      v63 = v59;
                      v64 = v58;
                      do
                      {
                        v65 = v55 + 32 * v64;
                        v67 = *(v65 + 12);
                        v66 = (v65 + 12);
                        if (v67 == *v62)
                        {
                          *v66 = v57;
                        }

                        --v64;
                      }

                      while (v63--);
                    }

                    v30 += *(v61 + 24);
                    *v62 = v57;
                    v60 = v54;
                  }

                  ++v31;
                  ++v58;
                  ++v59;
                  if (v31 >= v26)
                  {
                    v88 = v60;
                    v31 = v26;
                    goto LABEL_121;
                  }
                }

                v88 = v60;
              }

LABEL_121:
              v40 = v93;
              v37 = v54 - v93 + v45;
              if (v98 && *v98)
              {
                v69 = v26;
                v70 = v93;
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912));
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                v37 += v87;
                v40 = v70;
                v26 = v69;
                v28 = v86;
              }
            }

            v14 = (*(*(a1 + 8) + 120))(a3, a4, v100, &v100);
            if (v14 < 0)
            {
              goto LABEL_47;
            }
          }

          if (HIDWORD(v89))
          {
            v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x12\x10", 2);
            if (v10 < 0)
            {
              goto LABEL_46;
            }

            LOWORD(v37) = v37 + 2;
          }

          if (v89)
          {
            v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x13\x10", 2);
            if (v10 < 0)
            {
              goto LABEL_46;
            }

            LOWORD(v37) = v37 + 2;
          }

          v77 = v93;
          if (v88 && v88 == (v93 - 1))
          {
LABEL_147:
            if (v31 >= v26)
            {
              v80 = v90;
            }

            else
            {
              v78 = v101 + 32 * v31 + 12;
              v79 = v26 - v31;
              v80 = v90;
              do
              {
                *v78 = v28 + v37 + v77 + 1;
                if (*(v78 - 12) == 8)
                {
                  v30 += *(v78 + 12);
                }

                v78 += 32;
                --v79;
              }

              while (v79);
            }

            (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "#", 1);
            v81 = v37 - v80 + v77 + 1;
            if (v30)
            {
              v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "[", 1);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              LH_itoa(v30, &v104, 0xAu);
              v82 = *(*(a1 + 16) + 104);
              v83 = cstdlib_strlen(&v104);
              v10 = v82(*(a1 + 904), *(a1 + 912), &v104, v83);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "]", 1);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              v81 += cstdlib_strlen(&v104) + 2;
            }

            (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "", 1);
            *(v101 + 16) += v81;
            v84 = v95 + v81 + v96;
            v95 = 0;
            v96 = v84;
            v10 = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32));
            if ((v10 & 0x80000000) == 0)
            {
              v10 = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32), v95, 0);
              if ((v10 & 0x80000000) == 0)
              {
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 888), *(a1 + 896), v101, (32 * v26));
              }
            }

            goto LABEL_46;
          }
        }

        v30 = 0;
        goto LABEL_147;
      }
    }

LABEL_46:
    v14 = v10;
LABEL_47:
    if (v92)
    {
      v14 = synstrmaux_CloseOutStreamsOnly((a1 + 48), *(a1 + 16));
    }

    LODWORD(result) = (*(*(a1 + 8) + 64))(a3, a4);
    if (v14 > -1 && result < 0)
    {
      return result;
    }

    else
    {
      return v14;
    }
  }

  return result;
}

uint64_t fe_deinitlingdb_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62337, 928) & 0x80000000) != 0)
  {
    return 2308972552;
  }

  result = synstrmaux_CloseStreams((a1 + 48), *(a1 + 16));
  if ((result & 0x80000000) == 0)
  {
    v4 = *(*a1 + 40);

    return paramc_ParamSetStr(v4, "willbeprocessingdeinitlingdb", "no");
  }

  return result;
}

uint64_t fe_deinitlingdb_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2308972545;
  }

  result = 0;
  *a2 = &IFeDeinitlingdb;
  return result;
}

uint64_t sprop_str_realloc(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 16);
  if (a3 + 1 <= v4)
  {
    return 0;
  }

  if (v4 <= 1)
  {
    v4 = 1;
  }

  do
  {
    v7 = v4;
    v4 *= 2;
  }

  while (v7 < a3 + 1);
  v8 = heap_Realloc(*(a1 + 8), *a2, v7);
  if (v8)
  {
    v13 = v8;
    result = 0;
    *a2 = v13;
    *(a2 + 16) = v7;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_SPROP", 39000, 0, v9, v10, v11, v12, v3);
    return 2409635850;
  }

  return result;
}

uint64_t sprop_str_dealloc(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 4))
  {
    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[1] = 0;
  return 0;
}

uint64_t sprop_str_clear(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(a1 + 8) = 0;
    **a1 = 0;
  }

  return 0;
}

uint64_t sprop_str_cat(uint64_t a1, uint64_t a2, char *__s, unsigned int a4)
{
  v4 = a4;
  v8 = *(a2 + 8);
  if (!a4)
  {
    v4 = cstdlib_strlen(__s);
  }

  v9 = v4 + v8;
  v10 = sprop_str_realloc(a1, a2, v4 + v8);
  if ((v10 & 0x80000000) == 0)
  {
    cstdlib_memcpy((*a2 + v8), __s, v4);
    *(*a2 + v9) = 0;
    *(a2 + 8) = v9;
    *(a2 + 12) += Utf8_LengthInUtf8chars(__s, v4);
  }

  return v10;
}

uint64_t sprop_str_copy(uint64_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  if (*(a2 + 16))
  {
    *(a2 + 8) = 0;
    **a2 = 0;
  }

  if (!a3)
  {
    return 0;
  }

  result = sprop_str_cat(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sprop_str_take_ownership(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a2 + 16))
  {
    heap_Free(*(a1 + 8), *a2);
    *(a2 + 16) = 0;
  }

  *a2 = a3;
  *(a2 + 12) = 0;
  *(a2 + 16) = a4;
  *(a2 + 8) = a4 - 1;
  *(a3 + (a4 - 1)) = 0;
  v8 = Utf8_LengthInUtf8chars(*a2, *(a2 + 8));
  *(a2 + 12) = v8;
  if (*(a2 + 8) != v8)
  {
    log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "utf8length = %d, byte length = %d", v9, v10, v11, v8);
  }

  return 0;
}

uint64_t sprop_ne_load(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = 0;
  *(a4 + 352) = 0;
  __s1 = 0;
  v40 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  *v41 = 0u;
  v42 = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &v40);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a3 + 40), "voice", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v38);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v9 = heap_Realloc(*(a3 + 8), *a4, 256);
  if (v9)
  {
    v14 = v9;
    *a4 = v9;
    if (cstdlib_strstr(__s1, "uni"))
    {
      __sprintf_chk(v41, 0, 0x80uLL, "crf/ne/%s/%s/ne", v40, v38);
      v15 = 0;
      __s1 = 0;
    }

    else
    {
      __sprintf_chk(v41, 0, 0x80uLL, "crf/ne/%s/%s/%s/ne", v40, __s1, v38);
      v15 = __s1;
    }

    v16 = brokeraux_ComposeBrokerString(a3, v41, 1, 1, v40, v15, 0, v14, 0x100uLL);
    if ((v16 & 0x80000000) == 0)
    {
      log_OutText(*(a3 + 32), "FE_SPROP", 5, 0, "broker string = %s", v17, v18, v19, *a4);
      if ((ssftriff_reader_ObjOpen(a1, a2, 2, *a4, "CRPH", 1031, &v37) & 0x80000000) == 0)
      {
        v23 = crf_Init(a1, a2, v37, a4 + 8);
        if ((v23 & 0x80000000) != 0)
        {
          log_OutText(*(a3 + 32), "FE_SPROP", 0, 0, "error reading named entity model (NE): %x", v24, v25, v26, v23);
        }

        else
        {
          *(a4 + 352) = 1;
          log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "loaded %s", v24, v25, v26, *a4);
        }

        return ssftriff_reader_ObjClose(v37, v27, v28, v29, v30, v31, v32, v33);
      }

      log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "no named entity model (NE)", v20, v21, v22, v36);
    }
  }

  else
  {
    log_OutPublic(*(a3 + 32), "FE_SPROP", 39000, 0, v10, v11, v12, v13, v35);
    return 2409635850;
  }

  return v16;
}

uint64_t sprop_ne_unload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    *a2 = 0;
  }

  if (*(a2 + 352) == 1)
  {
    crf_Deinit(a2 + 8);
  }

  *(a2 + 352) = 0;
  v5 = *(a2 + 360);
  if (v5 && *(a2 + 376))
  {
    v6 = 0;
    while (1)
    {
      v7 = sprop_str_set_dealloc(a1, *(a2 + 360) + 16 * v6);
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      if (*(a2 + 376) <= ++v6)
      {
        v5 = *(a2 + 360);
        goto LABEL_12;
      }
    }
  }

  else
  {
    v7 = 0;
LABEL_12:
    heap_Free(*(a1 + 8), v5);
    *(a2 + 360) = 0;
    heap_Free(*(a1 + 8), *(a2 + 368));
    *(a2 + 368) = 0;
    *(a2 + 376) = 0;
  }

  return v7;
}

uint64_t sprop_ne_label(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 352);
  v40 = SPROP_STR_SET_null;
  if (v9)
  {
    v14 = *(a5 + 8);
    if (v14)
    {
      v15 = heap_Realloc(*(a1 + 8), *(a2 + 360), (16 * v14));
      if (!v15 || (*(a2 + 360) = v15, cstdlib_memset(v15, 0, (16 * v14)), (v20 = heap_Realloc(*(a1 + 8), *(a2 + 368), (8 * v14))) == 0))
      {
        v35 = 2409635850;
        log_OutPublic(*(a1 + 32), "FE_SPROP", 39000, 0, v16, v17, v18, v19, v37);
        return v35;
      }

      *(a2 + 368) = v20;
    }

    *(a2 + 376) = v14;
    word_features = sprop_get_word_features(a1, a3, *(a2 + 360));
    if ((word_features & 0x80000000) == 0)
    {
      v39 = 0;
      v38 = 0;
      if (*(a2 + 376))
      {
        for (i = 0; ; ++i)
        {
          sprop_str_set_add(a1, &v40, "", "", 0);
          v23 = i;
          word_features = sprop_str_set_join(a1, v40 + 24 * i, *(a2 + 360) + 16 * i);
          if ((word_features & 0x80000000) != 0)
          {
            break;
          }

          word_features = sprop_str_set_dealloc(a1, *(a2 + 360) + 16 * i);
          if ((word_features & 0x80000000) != 0)
          {
            break;
          }

          *(*(a2 + 368) + 8 * i) = *(v40 + 24 * i);
          v24 = *(a2 + 376);
          if (v24 <= (v23 + 1))
          {
            if (!v24)
            {
              return sprop_str_set_dealloc(a1, &v40);
            }

            word_features = crf_Process(a2 + 8, *(a2 + 368), v24, &v39, &v38);
            if ((word_features & 0x80000000) == 0)
            {
              if (v38 == *(a2 + 376))
              {
                if (v38)
                {
                  v28 = 0;
                  do
                  {
                    sprop_str_set_add(a1, a4, "", "", 0);
                    v29 = *a4 + 24 * v28;
                    v30 = *(v39 + 8 * v28);
                    v31 = cstdlib_strlen(v30);
                    sprop_str_take_ownership(a1, v29, v30, v31);
                    if (a5 && *(*a5 + 24 * v28 + 8))
                    {
                      log_OutText(*(a1 + 32), "FE_SPROP", 4, 0, "traceFeatureVector ne : %s %s : %s", v25, v26, v27, *(*(a2 + 368) + 8 * v28));
                    }

                    ++v28;
                  }

                  while (*(a2 + 376) > v28);
                }

                v32 = *(a1 + 32);
                v33 = "traceFeatureVector ne : END_OF_SEQUENCE : ";
                v34 = 4;
              }

              else
              {
                v32 = *(a1 + 32);
                v33 = "sprop_dcme_label: crf_Process returned no predictions";
                v34 = 0;
              }

              log_OutText(v32, "FE_SPROP", v34, 0, v33, v25, v26, v27, v37);
              if (v39)
              {
                heap_Free(*(a1 + 8), v39);
              }

              return sprop_str_set_dealloc(a1, &v40);
            }

            return word_features;
          }
        }
      }

      else
      {
        return sprop_str_set_dealloc(a1, &v40);
      }
    }

    return word_features;
  }

  else
  {
    log_OutText(*(a1 + 32), "FE_SPROP", 0, 0, "sprop_ne_label: called while model not loaded", a6, a7, a8, v37);
    return 2409635842;
  }
}

uint64_t sprop_str_set_realloc(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a2 + 12);
  if (v4 >= a3)
  {
    return 0;
  }

  if (v4 <= 1)
  {
    v4 = 1;
  }

  do
  {
    v7 = v4;
    v4 *= 2;
  }

  while (v7 < a3);
  v8 = heap_Realloc(*(a1 + 8), *a2, 24 * v7);
  if (v8)
  {
    *a2 = v8;
    *(a2 + 12) = v7;
    cstdlib_memset((v8 + 24 * *(a2 + 8)), 0, 24 * (v7 - *(a2 + 8)));
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_SPROP", 39000, 0, v9, v10, v11, v12, v3);
    return 2409635850;
  }
}

uint64_t sprop_str_set_dealloc(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (!v2)
  {
    return 0;
  }

  *(a2 + 8) = 0;
  while (1)
  {
    v5 = sprop_str_dealloc(a1, (*a2 + 24 * v2 - 24));
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    v2 = *(a2 + 12) - 1;
    *(a2 + 12) = v2;
    if (!v2)
    {
      heap_Free(*(a1 + 8), *a2);
      *a2 = 0;
      return v5;
    }
  }

  return v5;
}

uint64_t sprop_str_set_clear(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  do
  {
    result = sprop_str_clear(*a1 + 24 * v1 - 24);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v1 = *(a1 + 8) - 1;
    *(a1 + 8) = v1;
  }

  while (v1);
  return result;
}

uint64_t sprop_str_set_dump(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "sprop_str_set_dump: %s (%d records)", a6, a7, a8, a3);
  if (*(a2 + 8))
  {
    v13 = 0;
    v14 = 0;
    do
    {
      log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "sprop_str_set_dump: record[%d] = %s", v10, v11, v12, v14++);
      v13 += 24;
    }

    while (v14 < *(a2 + 8));
  }

  return 0;
}

uint64_t sprop_str_set_add(uint64_t a1, uint64_t a2, char *a3, char *a4, unsigned int a5)
{
  result = sprop_str_set_realloc(a1, a2, *(a2 + 8) + 1);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_cat(a1, *a2 + 24 * *(a2 + 8), a3, 0);
    if ((result & 0x80000000) == 0)
    {
      result = sprop_str_cat(a1, *a2 + 24 * *(a2 + 8), a4, a5);
      if ((result & 0x80000000) == 0)
      {
        ++*(a2 + 8);
      }
    }
  }

  return result;
}

uint64_t sprop_str_set_join(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sprop_str_clear(a2);
  if (!*(a3 + 8))
  {
    return 0;
  }

  result = sprop_str_copy(a1, a2, **a3, *(*a3 + 8));
  if ((result & 0x80000000) == 0 && *(a3 + 8) >= 2u)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      result = sprop_str_cat(a1, a2, " ", 1u);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = sprop_str_cat(a1, a2, *(*a3 + v7 + 24), *(*a3 + v7 + 32));
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < *(a3 + 8));
  }

  return result;
}

uint64_t sprop_dcme_load(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v58 = 0;
  *(a4 + 352) = 0;
  __s1 = 0;
  v60 = 0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  *v61 = 0u;
  v62 = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &v60);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a3 + 40), "voice", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v58);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v9 = heap_Realloc(*(a3 + 8), *a4, 256);
  if (!v9)
  {
    log_OutPublic(*(a3 + 32), "FE_SPROP", 39000, 0, v10, v11, v12, v13, v54);
    return 2409635850;
  }

  v14 = v9;
  *a4 = v9;
  if (cstdlib_strstr(__s1, "uni"))
  {
    __sprintf_chk(v61, 0, 0x80uLL, "crf/dcls/%s/%s/default", v60, v58);
    v15 = 0;
    __s1 = 0;
  }

  else
  {
    __sprintf_chk(v61, 0, 0x80uLL, "crf/dcls/%s/%s/%s/default", v60, __s1, v58);
    v15 = __s1;
  }

  v16 = brokeraux_ComposeBrokerString(a3, v61, 1, 1, v60, v15, 0, v14, 0x100uLL);
  if ((v16 & 0x80000000) == 0)
  {
    log_OutText(*(a3 + 32), "FE_SPROP", 5, 0, "broker string = %s", v17, v18, v19, *a4);
    if ((ssftriff_reader_ObjOpen(a1, a2, 2, *a4, "CRPH", 1031, &v57) & 0x80000000) != 0)
    {
      log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "no maxent doc class model (DCME)", v20, v21, v22, v55);
      return v16;
    }

    v23 = crf_Init(a1, a2, v57, a4 + 8);
    if ((v23 & 0x80000000) != 0)
    {
      log_OutText(*(a3 + 32), "FE_SPROP", 0, 0, "error reading maxent doc class model (DCME): %x", v24, v25, v26, v23);
      return ssftriff_reader_ObjClose(v57, v27, v28, v29, v30, v31, v32, v33);
    }

    *(a4 + 352) = 1;
    log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "loaded %s", v24, v25, v26, *a4);
    if (*(a4 + 352) == 1)
    {
      if (*(a4 + 48))
      {
        v34 = 0;
        v35 = 0;
        do
        {
          v36 = *(a3 + 32);
          cstdlib_strlen(*(*(a4 + 40) + v34));
          log_OutText(v36, "FE_SPROP", 5, 0, "_dcme_dump_params: param[%d].key   = %.40s%s", v37, v38, v39, v35);
          v40 = *(a3 + 32);
          cstdlib_strlen(*(*(a4 + 40) + v34 + 8));
          log_OutText(v40, "FE_SPROP", 5, 0, "_dcme_dump_params: param[%d].value = %.40s%s", v41, v42, v43, v35++);
          v34 += 16;
        }

        while (v35 < *(a4 + 48));
      }

      else
      {
        log_OutText(*(a3 + 32), "FE_SPROP", 3, 0, "_dcme_dump_params: no params loaded", v31, v32, v33, v56);
      }

      if (*(a4 + 352) == 1 && *(a4 + 48))
      {
        v44 = 0;
        v16 = 0;
        while (1)
        {
          v45 = cstdlib_strcmp("features", *(*(a4 + 40) + 16 * v44));
          v46 = *(a4 + 40);
          if (!v45)
          {
            v16 = sprop_str_copy(a3, a4 + 400, *(v46 + 16 * v44 + 8), 0);
            v51 = (a4 + 400);
            if ((v16 & 0x80000000) != 0)
            {
              return v16;
            }

            goto LABEL_32;
          }

          v47 = cstdlib_strcmp("uni500", *(v46 + 16 * v44));
          v48 = *(a4 + 40);
          if (!v47)
          {
            break;
          }

          v49 = cstdlib_strcmp("threshold", *(v48 + 16 * v44));
          v50 = *(a4 + 40);
          if (v49)
          {
            if (!cstdlib_strcmp("numbers", *(v50 + 16 * v44)))
            {
              v16 = sprop_str_copy(a3, a4 + 472, *(*(a4 + 40) + 16 * v44 + 8), 0);
              v51 = (a4 + 472);
              if ((v16 & 0x80000000) != 0)
              {
                return v16;
              }

              goto LABEL_32;
            }
          }

          else
          {
            v16 = sprop_str_copy(a3, a4 + 448, *(v50 + 16 * v44 + 8), 0);
            if ((v16 & 0x80000000) != 0)
            {
              return v16;
            }
          }

LABEL_39:
          if (++v44 >= *(a4 + 48))
          {
            if ((v16 & 0x80000000) == 0)
            {
              return ssftriff_reader_ObjClose(v57, v27, v28, v29, v30, v31, v32, v33);
            }

            return v16;
          }
        }

        v16 = sprop_str_copy(a3, a4 + 424, *(v48 + 16 * v44 + 8), 0);
        v51 = (a4 + 424);
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }

LABEL_32:
        for (i = *v51; ; ++i)
        {
          if (*i == 32)
          {
            *i = 0;
          }

          else if (!*i)
          {
            goto LABEL_39;
          }
        }
      }
    }

    return ssftriff_reader_ObjClose(v57, v27, v28, v29, v30, v31, v32, v33);
  }

  return v16;
}

uint64_t sprop_dcme_unload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    *a2 = 0;
  }

  if (*(a2 + 352) == 1)
  {
    crf_Deinit(a2 + 8);
  }

  *(a2 + 352) = 0;
  result = sprop_str_set_dealloc(a1, a2 + 360);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_dealloc(a1, (a2 + 376));
    if ((result & 0x80000000) == 0)
    {
      result = sprop_str_dealloc(a1, (a2 + 400));
      if ((result & 0x80000000) == 0)
      {
        result = sprop_str_dealloc(a1, (a2 + 424));
        if ((result & 0x80000000) == 0)
        {
          result = sprop_str_dealloc(a1, (a2 + 448));
          if ((result & 0x80000000) == 0)
          {

            return sprop_str_dealloc(a1, (a2 + 472));
          }
        }
      }
    }
  }

  return result;
}

uint64_t sprop_dcme_label(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 352))
  {
    features = sprop_str_set_clear(a2 + 360);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    features = sprop_get_features(a1, a3, a2 + 400, a2 + 424, (a2 + 448), a2 + 472, a2 + 360);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    features = sprop_str_set_join(a1, a2 + 376, a2 + 360);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    v36 = 0;
    v35 = 0;
    if (!*(a2 + 448))
    {
      v17 = cstdlib_strstr(*(a2 + 376), " lc");
      if (v17)
      {
        v17[3] = 0;
      }
    }

    log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "sprop_dcme_label: features = %s", v14, v15, v16, *(a2 + 376));
    v37 = *(a2 + 376);
    features = crf_Process(a2 + 8, &v37, 1u, &v36, &v35);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    else
    {
      if (v35)
      {
        v21 = *v36;
        if (v35 != 1)
        {
          log_OutText(*(a1 + 32), "FE_SPROP", 1, 0, "sprop_dcme_label: crf_Process returned %d predictions, using only first one", v18, v19, v20, v35);
        }

        log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "sprop_dcme_label: pred[0] = %s", v18, v19, v20, v21);
        v22 = cstdlib_strlen(v21);
        v26 = sprop_str_take_ownership(a1, a4, v21, v22);
        if (a5 && *(a5 + 8))
        {
          if (*(a2 + 448))
          {
            v27 = "intc ";
          }

          else
          {
            v27 = "";
          }

          log_OutText(*(a1 + 32), "FE_SPROP", 4, 0, "traceFeatureVector dcls : %s%s %s : %s", v23, v24, v25, v27);
        }
      }

      else
      {
        log_OutText(*(a1 + 32), "FE_SPROP", 0, 0, "sprop_dcme_label: crf_Process returned no predictions", v18, v19, v20, v34);
        v26 = 2409635847;
      }

      v29 = v36;
      if (v36)
      {
        v30 = v35;
        v31 = --v35;
        if (v30 >= 2)
        {
          do
          {
            heap_Free(*(a1 + 8), v36[v31]);
            v31 = v35 - 1;
          }

          while (v35-- > 1);
          v29 = v36;
        }

        heap_Free(*(a1 + 8), v29);
      }
    }
  }

  else
  {
    v26 = 2409635842;
    log_OutText(*(a1 + 32), "FE_SPROP", 0, 0, "sprop_dcme_label: called while model not loaded", a6, a7, a8, v33);
  }

  return v26;
}

uint64_t sprop_input_dealloc(uint64_t a1, uint64_t *a2)
{
  result = sprop_str_dealloc(a1, a2);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_dealloc(a1, a2 + 3);
    if ((result & 0x80000000) == 0)
    {

      return sprop_str_dealloc(a1, a2 + 6);
    }
  }

  return result;
}

uint64_t sprop_input_clear(uint64_t a1)
{
  result = sprop_str_clear(a1);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_clear(a1 + 24);
    if ((result & 0x80000000) == 0)
    {

      return sprop_str_clear(a1 + 48);
    }
  }

  return result;
}

_DWORD *sprop_input_find_marker(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = (*(a1 + 56) >> 5);
  if ((*(a1 + 56) >> 5))
  {
    v4 = 0;
    result = *(a1 + 48);
    do
    {
      if (a3)
      {
        if (result == a3)
        {
          a3 = 0;
        }
      }

      else
      {
        if (*result == a2)
        {
          return result;
        }

        a3 = 0;
      }

      result += 8;
      ++v4;
    }

    while (v4 < v3);
  }

  return 0;
}

_DWORD *sprop_input_rfind_marker(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 56);
  if ((v3 >> 5))
  {
    v4 = 0;
    result = ((*&v3 & 0x1FFFE0) + *(a1 + 48) - 32);
    do
    {
      if (a3)
      {
        if (result == a3)
        {
          a3 = 0;
        }
      }

      else
      {
        if (*result == a2)
        {
          return result;
        }

        a3 = 0;
      }

      ++v4;
      result -= 8;
    }

    while (v4 < (v3 >> 5));
  }

  return 0;
}

_OWORD *sprop_input_insert_marker(uint64_t a1, uint64_t a2, unint64_t a3, _OWORD *a4)
{
  v7 = *(a2 + 48);
  v5 = a2 + 48;
  v6 = v7;
  v8 = *(v5 + 8);
  v9 = v7 + 32 * (v8 >> 5);
  v10 = v7 <= a3 && v9 > a3;
  if (!v10 || (sprop_str_realloc(a1, v5, v8 + 32) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = (v8 >> 5) - ((a3 - v6) >> 5);
  v14 = (*(a2 + 48) + a3 - v6);
  cstdlib_memmove(v14 + 2, v14, 32 * v13);
  *(a2 + 56) += 32;
  v15 = a4[1];
  *v14 = *a4;
  v14[1] = v15;
  return v14;
}

uint64_t fe_sprop_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2409635841;
  }

  result = 0;
  *a2 = &ISProp;
  return result;
}

uint64_t fe_sprop_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 2409635847;
  if (a3)
  {
    v11 = 0;
    inited = InitRsrcFunction(a1, a2, &v11);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v8 = heap_Calloc(*(v11 + 8), 1, 24);
      if (v8)
      {
        v3 = 0;
        v9 = v11;
        v8[1] = a2;
        v8[2] = v9;
        *v8 = a1;
        *a3 = v8;
        *(a3 + 8) = 501;
      }

      else
      {
        return 2409635850;
      }
    }
  }

  return v3;
}

uint64_t fe_sprop_ClassClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 501, 24);
  if ((result & 0x80000000) == 0)
  {
    heap_Free(*(*(a1 + 16) + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_sprop_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2409635847;
  if (a5)
  {
    inited = safeh_HandleCheck(a1, a2, 501, 24);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v16 = 0;
    v17 = 0;
    inited = InitRsrcFunction(a3, a4, &v17);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = objc_GetObject(*(v17 + 48), "SYNTHSTREAM", &v16);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v11 = heap_Calloc(*(v17 + 8), 1, 1944);
    if (!v11)
    {
      return 2409635850;
    }

    v12 = v11;
    v13 = v17;
    *v11 = v17;
    v11[1] = a3;
    v11[2] = a4;
    v11[3] = a1;
    v11[4] = *(v16 + 8);
    v18 = 0;
    inited = sprop_dcme_load(a3, a4, v13, (v11 + 125));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = sprop_ne_load(v12[1], v12[2], *v12, (v12 + 187));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      *(v12 + 484) = 0;
      UInt = paramc_ParamGetUInt(*(v13 + 40), "dont_insert_ne_markers", &v18);
      if ((UInt & 0x1FFF) == 0x14)
      {
LABEL_16:
        v5 = 0;
        *a5 = v12;
        *(a5 + 8) = 501;
        return v5;
      }

      v5 = UInt;
      if ((UInt & 0x80000000) == 0 && v18 == 1)
      {
        *(v12 + 484) = 1;
        goto LABEL_16;
      }

      if ((UInt & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  return v5;
}

uint64_t fe_sprop_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 501, 1944);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      v4 = *a1;
      result = sprop_dcme_unload(*a1, (a1 + 125));
      if ((result & 0x80000000) == 0)
      {
        result = sprop_ne_unload(v4, (a1 + 187));
        if ((result & 0x80000000) == 0)
        {
          result = sprop_input_dealloc(v4, a1 + 116);
          if ((result & 0x80000000) == 0)
          {
            result = sprop_str_dealloc(v4, a1 + 237);
            if ((result & 0x80000000) == 0)
            {
              result = sprop_str_set_dealloc(v4, (a1 + 240));
              if ((result & 0x80000000) == 0)
              {
                result = sprop_str_set_dealloc(v4, (a1 + 235));
                if ((result & 0x80000000) == 0)
                {
                  objc_ReleaseObject(*(v4 + 48), "SYNTHSTREAM");
                  heap_Free(*(*a1 + 8), a1);
                  return 0;
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

uint64_t fe_sprop_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 501, 1944);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_dcme_unload(*a1, a1 + 1000);
    if ((result & 0x80000000) == 0)
    {
      result = sprop_dcme_load(*(a1 + 8), *(a1 + 16), *a1, a1 + 1000);
      if ((result & 0x80000000) == 0)
      {
        result = sprop_ne_unload(*a1, a1 + 1496);
        if ((result & 0x80000000) == 0)
        {
          v4 = sprop_ne_load(*(a1 + 8), *(a1 + 16), *a1, a1 + 1496);
          return v4 & (v4 >> 31);
        }
      }
    }
  }

  return result;
}

uint64_t fe_sprop_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 501, 1944) & 0x80000000) != 0)
  {
    return 2409635848;
  }

  synstrmaux_InitStreamOpener(a1 + 40, *(*a1 + 32), "FE_SPROP");
  synstrmaux_RegisterInStream((a1 + 40), "text/plain;charset=utf-8", 0, a1 + 864);
  synstrmaux_RegisterInStream((a1 + 40), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 880);
  synstrmaux_RegisterOutStream((a1 + 40), "text/plain;charset=utf-8", a1 + 896);
  synstrmaux_RegisterOutStream((a1 + 40), "application/x-realspeak-markers-pp;version=4.0", a1 + 912);
  v7 = synstrmaux_OpenStreams((a1 + 40), *(a1 + 32), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 40), *(a1 + 32));
  }

  return v7;
}

uint64_t fe_sprop_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 501, 1944) & 0x80000000) != 0)
  {
    return 2409635848;
  }

  log_OutText(*(*a1 + 32), "FE_SPROP", 5, 0, "fe_sprop_Process: start", v7, v8, v9, v99);
  *a5 = 1;
  *&__n[1] = 0;
  LODWORD(__s2[0]) = 0;
  LODWORD(v107) = 0;
  __n[0] = 0;
  v10 = a1[4];
  v11 = a1[108];
  v12 = a1[109];
  LODWORD(__s1[0]) = 0;
  v13 = (*(v10 + 144))(v11, v12, __s1, &v107);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (LODWORD(__s1[0]))
  {
    v13 = (*(v10 + 88))(v11, v12, &__n[1], __s2);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v14 = *&__n[1];
  }

  else
  {
    v14 = 0;
    *&__n[1] = 0;
    LODWORD(__s2[0]) = 0;
  }

  v13 = sprop_str_copy(*a1, (a1 + 116), v14, 0);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v13 = (*(a1[4] + 96))(a1[108], a1[109], LODWORD(__s2[0]));
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v16 = a1[4];
  v17 = a1[110];
  v18 = a1[111];
  LODWORD(__s1[0]) = 0;
  v13 = (*(v16 + 144))(v17, v18, __s1, __n);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (LODWORD(__s1[0]))
  {
    v13 = (*(v16 + 88))(v17, v18, &__n[1], __s2);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v19 = *&__n[1];
    v20 = __s2[0];
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *&__n[1] = 0;
    LODWORD(__s2[0]) = 0;
  }

  v13 = sprop_str_copy(*a1, (a1 + 122), v19, v20);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v21 = sprop_input_mrk((a1 + 116));
  v22 = sprop_input_mrk_cnt((a1 + 116));
  if (!v22)
  {
    goto LABEL_23;
  }

  v15 = 0;
  v23 = v22;
  v24 = (v21 + 24);
  do
  {
    if (marker_hasNonConstCharPtrArg(*(v24 - 6)))
    {
      v15 = sprop_str_set_add(*a1, (a1 + 235), "", *v24, 0);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      *v24 = *(a1[235] + 24 * (*(a1 + 472) - 1));
    }

    v24 += 4;
    --v23;
  }

  while (v23);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_23:
    v13 = (*(a1[4] + 96))(a1[110], a1[111], LODWORD(__s2[0]));
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v25 = *a1;
    v26 = sprop_input_mrk((a1 + 116));
    v27 = sprop_input_mrk_cnt((a1 + 116));
    _dump_markers(v25, v26, v27);
    v31 = v107;
    v32 = v107;
    if (v107 != __n[0])
    {
      log_OutText(*(*a1 + 32), "FE_SPROP", 1, 0, "_read_streams: detected sync loss: bEndText=%d, bEndMrk=%d", v28, v29, v30, v107);
      v32 = v107;
      v31 = __n[0];
    }

    v34 = v32 == 1 || v31 == 1;
    if (!*(a1 + 234))
    {
      goto LABEL_127;
    }

    log_OutText(*(*a1 + 32), "FE_SPROP", 4, 0, "fe_sprop_Process: input = %s", v28, v29, v30, a1[116]);
    if (*(a1 + 338) != 1)
    {
      goto LABEL_142;
    }

    *__s1 = SPROP_STR_null;
    v105 = 0;
    *&__n[1] = 0;
    __s2[0] = "";
    LOWORD(v107) = 0;
    LOWORD(__n[0]) = 0;
    marker = sprop_input_find_marker((a1 + 116), 51, 0);
    if (marker)
    {
      v36 = marker;
      do
      {
        v37 = hlp_NLUStrFind(v36[3], "S_CLASS", &__n[1], &v107);
        v38 = v37 == 0;
        if (v37)
        {
          break;
        }

        v36 = sprop_input_find_marker((a1 + 116), 51, v36);
      }

      while (v36);
    }

    else
    {
      v38 = 1;
    }

    v39 = sprop_input_rfind_marker((a1 + 116), 51, 0);
    if (v39)
    {
      v43 = v39;
      do
      {
        v44 = hlp_NLUStrFind(v43[3], "E_CLASS", __s2, __n);
        v45 = v44 == 0;
        if (v44)
        {
          break;
        }

        v43 = sprop_input_rfind_marker((a1 + 116), 51, v43);
      }

      while (v43);
    }

    else
    {
      v45 = 1;
    }

    if (!v38)
    {
      if (*(a1 + 476))
      {
        log_OutText(*(*a1 + 32), "FE_SPROP", 1, 0, "unbalanced NLU mark-up: S_CLASS:%s implicitly closed by S_CLASS:%*s", v40, v41, v42, a1[237]);
      }

      sprop_str_copy(*a1, (a1 + 237), *&__n[1], v107);
    }

    if (!v45 && *(a1 + 476) && cstdlib_strncmp(a1[237], __s2[0], LOWORD(__n[0])))
    {
      log_OutText(*(*a1 + 32), "FE_SPROP", 1, 0, "unbalanced NLU mark-up: S_CLASS:%s closed by E_CLASS:%*s", v40, v41, v42, a1[237]);
    }

    if (v38 && !*(a1 + 476))
    {
      v46 = (a1 + 237);
      v77 = sprop_dcme_label(*a1, (a1 + 125), a1 + 116, __s1, 0, v40, v41, v42);
      v78 = sprop_input_find_marker((a1 + 116), 1, 0);
      if (v78)
      {
        v82 = v78;
        *&__n[1] = 0u;
        v103 = 0u;
        cstdlib_memset(&__n[1], 0, 0x20uLL);
        v83 = *(v82 + 4);
        __n[1] = 51;
        __n[2] = v83;
        __n[4] = *(v82 + 12);
        if (v77 < 0 || !cstdlib_strcmp(__s1[0], "1"))
        {
          v84 = *a1;
          v85 = "none";
        }

        else
        {
          v84 = *a1;
          v85 = __s1[0];
        }

        v86 = sprop_str_set_add(v84, (a1 + 235), "S_CLASS:", v85, 0);
        if ((v86 & 0x80000000) != 0)
        {
          v15 = v86;
        }

        else
        {
          *(&v103 + 1) = *(a1[235] + 24 * (*(a1 + 472) - 1));
          sprop_input_insert_marker(*a1, (a1 + 116), v82, &__n[1]);
          v87 = sprop_input_rfind_marker((a1 + 116), 1, 0);
          v88 = v87[3];
          __n[2] = v87[1];
          __n[4] = v88;
          if (v77 < 0 || !cstdlib_strcmp(__s1[0], "1"))
          {
            v89 = *a1;
            v90 = "none";
          }

          else
          {
            v89 = *a1;
            v90 = __s1[0];
          }

          v15 = sprop_str_set_add(v89, (a1 + 235), "E_CLASS:", v90, 0);
          if ((v15 & 0x80000000) == 0)
          {
            *(&v103 + 1) = *(a1[235] + 24 * (*(a1 + 472) - 1));
            sprop_input_insert_marker(*a1, (a1 + 116), v87, &__n[1]);
          }
        }
      }

      else
      {
        log_OutText(*(*a1 + 32), "FE_SPROP", 0, 0, "unable to insert NLU CLASS markers", v79, v80, v81, v100);
        v15 = 2409635847;
      }
    }

    else
    {
      v46 = (a1 + 237);
      v47 = sprop_dcme_label(*a1, (a1 + 125), a1 + 116, __s1, (a1 + 237), v40, v41, v42);
      v15 = v47 & ~(v47 >> 31);
    }

    if (!v45)
    {
      sprop_str_clear(v46);
    }

    sprop_str_dealloc(*a1, __s1);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_142:
      if (*(a1 + 462) != 1)
      {
        goto LABEL_125;
      }

      *__s2 = SPROP_STR_SET_null;
      v105 = 0;
      v103 = 0u;
      *__s1 = SPROP_STR_null;
      *&__n[1] = 0u;
      v15 = sprop_str_set_clear((a1 + 240));
      v101 = v34;
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_124;
      }

      v48 = sprop_input_mrk_cnt((a1 + 116));
      v49 = sprop_input_mrk((a1 + 116));
      if (!v48)
      {
        goto LABEL_81;
      }

      v53 = 0;
      v54 = 0;
      v107 = 0;
      LOWORD(__n[0]) = 0;
      v55 = v48;
      v56 = (v49 + 24);
      v57 = "";
      v58 = "O";
      do
      {
        v59 = *(v56 - 6);
        if (v59 == 1)
        {
          v15 = sprop_str_set_add(*a1, (a1 + 240), v58, v57, v54);
          if ((v15 & 0x80000000) != 0)
          {
            goto LABEL_124;
          }

          v60 = cstdlib_strcmp(v58, "B-");
          v61 = "I-";
          if (v60)
          {
            v61 = v58;
          }

          if (v53)
          {
            v57 = "";
            v58 = "O";
          }

          else
          {
            v58 = v61;
          }

          if (v53)
          {
            v54 = 0;
          }

          v53 = 0;
        }

        else if (v59 == 51)
        {
          if (hlp_NLUStrFind(*v56, "S_NE", &v107, __n))
          {
            v57 = v107;
            v58 = "B-";
            v54 = LOWORD(__n[0]);
          }

          if (hlp_NLUStrFind(*v56, "E_NE", &v107, __n))
          {
            v53 = 1;
          }
        }

        v56 += 4;
        --v55;
      }

      while (v55);
      if ((v15 & 0x80000000) == 0)
      {
LABEL_81:
        v62 = sprop_ne_label(*a1, (a1 + 187), (a1 + 116), __s2, (a1 + 240), v50, v51, v52);
        if ((v62 & 0x80000000) != 0)
        {
          v15 = 0;
          goto LABEL_124;
        }

        v15 = v62;
        if (*(a1 + 468))
        {
          v63 = 0;
          v64 = 0;
          do
          {
            v65 = v64;
            if (!cstdlib_strncmp(*&__s2[0][24 * v64], "I-", 2uLL))
            {
              if (!v65 || (v66 = v63 - 1, cstdlib_strlen(*&__s2[0][24 * v66]) < 3) || cstdlib_strcmp((*&__s2[0][24 * v65] + 2), (*&__s2[0][24 * v66] + 2)))
              {
                v67 = sprop_str_copy(*a1, __s1, "B-", 0);
                if ((v67 & 0x80000000) != 0 || (v67 = sprop_str_cat(*a1, __s1, (*&__s2[0][24 * v65] + 2), 0), (v67 & 0x80000000) != 0))
                {
LABEL_123:
                  v15 = v67;
                  goto LABEL_124;
                }

                v15 = sprop_str_copy(*a1, &__s2[0][24 * v65], __s1[0], 0);
                if ((v15 & 0x80000000) != 0)
                {
                  goto LABEL_124;
                }
              }
            }

            v64 = v65 + 1;
            v63 = (v65 + 1);
          }

          while (*(a1 + 468) > v63);
        }

        if (!*(a1 + 484))
        {
          v68 = sprop_input_mrk_cnt((a1 + 116));
          v69 = sprop_input_mrk((a1 + 116));
          if (v68)
          {
            v70 = v69;
            v71 = 32 * v68;
            v72 = *(a1 + 468);
            do
            {
              if (*(v70 + v71 - 32) == 1)
              {
                v73 = *(a1 + 468) != v72 && cstdlib_strncmp(*&__s2[0][24 * v72], "I-", 2uLL) == 0;
                LOWORD(v72) = v72 - 1;
                v74 = v70;
                if (!cstdlib_strncmp(*&__s2[0][24 * v72], "B-", 2uLL))
                {
                  cstdlib_memset(&__n[1], 0, 0x20uLL);
                  __n[1] = 51;
                  __n[2] = *(v70 + v71 - 28);
                  __n[4] = *(v70 + v71 - 20);
                  v15 = sprop_str_set_add(*a1, (a1 + 235), "S_NE:", (*&__s2[0][24 * v72] + 2), 0);
                  if ((v15 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v75 = a1[235] + 24 * *(a1 + 472);
                  v76 = (v75 - 24);
                  if (!v73)
                  {
                    v67 = sprop_str_cat(*a1, v75 - 24, ";E_NE:", 0);
                    if ((v67 & 0x80000000) != 0)
                    {
                      goto LABEL_123;
                    }

                    v15 = sprop_str_cat(*a1, v76, (*&__s2[0][24 * v72] + 2), 0);
                    if ((v15 & 0x80000000) != 0)
                    {
                      break;
                    }
                  }

                  *(&v103 + 1) = *v76;
                  sprop_input_insert_marker(*a1, (a1 + 116), v70 + v71 - 32, &__n[1]);
                  v74 = sprop_input_mrk((a1 + 116));
                }

                if (v73 || cstdlib_strncmp(*&__s2[0][24 * v72], "I-", 2uLL))
                {
                  v70 = v74;
                }

                else
                {
                  cstdlib_memset(&__n[1], 0, 0x20uLL);
                  __n[1] = 51;
                  __n[2] = *(v70 + v71 - 28);
                  __n[4] = *(v70 + v71 - 20);
                  v15 = sprop_str_set_add(*a1, (a1 + 235), "E_NE:", (*&__s2[0][24 * v72] + 2), 0);
                  if ((v15 & 0x80000000) != 0)
                  {
                    break;
                  }

                  *(&v103 + 1) = *(a1[235] + 24 * *(a1 + 472) - 24);
                  sprop_input_insert_marker(*a1, (a1 + 116), v70 + v71 - 32, &__n[1]);
                  v70 = sprop_input_mrk((a1 + 116));
                }
              }

              v71 -= 32;
            }

            while (v71);
          }
        }
      }

LABEL_124:
      sprop_str_set_dealloc(*a1, __s2);
      sprop_str_dealloc(*a1, __s1);
      v34 = v101;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_125:
        v91 = *(a1 + 234);
        if (v91)
        {
          v13 = (*(a1[4] + 104))(a1[112], a1[113], a1[116], (v91 + 1));
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }

LABEL_127:
        if (!*(a1 + 246) || (v92 = *a1, v93 = sprop_input_mrk((a1 + 116)), v94 = sprop_input_mrk_cnt((a1 + 116)), _dump_markers(v92, v93, v94), v13 = (*(a1[4] + 104))(a1[114], a1[115], a1[122], *(a1 + 246)), (v13 & 0x80000000) == 0))
        {
          if (!v34 || (v13 = synstrmaux_CloseOutStreamsOnly(a1 + 20, a1[4]), (v13 & 0x80000000) == 0))
          {
            v13 = sprop_input_clear((a1 + 116));
            if ((v13 & 0x80000000) == 0)
            {
              v15 = sprop_str_set_clear((a1 + 235));
              if ((v15 & 0x80000000) == 0)
              {
                log_OutText(*(*a1 + 32), "FE_SPROP", 5, 0, "fe_sprop_Process: end (fRet=0x%x)", v95, v96, v97, v15);
              }

              return v15;
            }
          }
        }

        return v13;
      }
    }
  }

  return v15;
}

uint64_t fe_sprop_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 501, 1944) & 0x80000000) != 0)
  {
    return 2409635848;
  }

  v3 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 40), v3);
}

uint64_t _dump_markers(uint64_t result, int *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 0;
    v6 = a3;
    do
    {
      marker_hasCharPtrArg(*a2);
      result = log_OutText(*(v4 + 32), "FE_SPROP", 5, 0, "mrk[%02d] = %-4s (%05d) %3d %3d %3d %3d %p %s", v7, v8, v9, v5++);
      a2 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

const char *sprop_bigrams(const char *a1, char *__s1)
{
  v4 = cstdlib_strstr(__s1, "_");
  if (!v4 || !*a1)
  {
    return 0;
  }

  v5 = v4;
  v6 = (v4 - __s1);
  while (1)
  {
    if (!cstdlib_strncmp(a1, __s1, v6) && a1[v6] == 32)
    {
      v7 = cstdlib_strlen(v5 + 1);
      if (!cstdlib_strncmp(&a1[v6 + 1], v5 + 1, v7))
      {
        break;
      }
    }

    if (!*++a1)
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sprop_get_features(uint64_t a1, int32x2_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2[1].i32[0] && !a2[4].i32[0])
  {
    v14 = sprop_normalize(a1, a2 + 3, a2, 1);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "sprop_get_features: normalized input = %s", v19, v20, v21, *&a2[3]);
  }

  else
  {
    v14 = 0;
  }

  v15 = _sprop_feature_set_catalogs[*a5 == 0];
  if (*v15)
  {
    v16 = v15 + 2;
    do
    {
      if (*a5)
      {
        v17 = a3;
      }

      else
      {
        v17 = a4;
      }

      v14 = (*v16)(a1, *(v16 - 1), a2, v17, a5, a6, a7);
      if ((v14 & 0x80000000) != 0)
      {
        break;
      }

      v18 = v16[1];
      v16 += 3;
    }

    while (v18);
  }

  return v14;
}

uint64_t sprop_normalize(uint64_t a1, int32x2_t *a2, uint64_t a3, int a4)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = sprop_str_clear(a2);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = &v8[v9];
    v12 = *a3;
    if (v12 < &v8[v9])
    {
      v13 = 0;
      do
      {
        v14 = Utf8_LengthInBytes(v12, 1);
        if (utf8_BelongsToSet(0, v12, 0, v14) == 1)
        {
          if (v13)
          {
            v13 = 1;
          }

          else
          {
            v13 = 1;
            sprop_str_cat(a1, a2, " ", 1u);
          }
        }

        else if (!utf8_BelongsToSet(0xAu, v12, 0, v14))
        {
          if (a4 && utf8_ToLower(v12, 0, v22))
          {
            v15 = v22;
            v16 = a1;
            v17 = a2;
            v18 = 0;
          }

          else
          {
            v16 = a1;
            v17 = a2;
            v15 = v12;
            v18 = v14;
          }

          sprop_str_cat(v16, v17, v15, v18);
          v13 = 0;
        }

        v12 += v14;
      }

      while (v12 < v11);
    }

    if (!*a2)
    {
      sprop_str_cat(a1, a2, " ", 1u);
    }

    v19 = a2[1].i32[0];
    if (v19)
    {
      v20 = v19 - 1;
      if (*(*a2 + v20) == 32)
      {
        *(*a2 + v20) = 0;
        a2[1] = vadd_s32(a2[1], -1);
      }
    }
  }

  return v10;
}

uint64_t sprop_get_word_features(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if (!v6 || *(a2 + 32) || (result = sprop_str_copy(a1, a2 + 24, *a2, v6), (result & 0x80000000) == 0))
  {
    v8 = &off_287EEF738;
    do
    {
      result = (*v8)(a1, *(v8 - 1), a2, 0, 0, 0, a3);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v9 = v8[1];
      v8 += 3;
    }

    while (v9);
  }

  return result;
}

uint64_t SPROP_sen_len(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a3 + 24);
  v13 = 1;
  while (*v12 == 32)
  {
    v13 = (v13 + 1);
LABEL_6:
    ++v12;
  }

  if (*v12)
  {
    goto LABEL_6;
  }

  v14 = uint32_log2(v13);
  if (v14 >= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v18 = v15 | 0x30;
  if (*a5)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  return sprop_add_feature(a1, a7, v16, "SENTLEN=", a2, &v18, 1u);
}

uint64_t SPROP_avg_wrd_len(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a3 + 24);
  v13 = 1;
  while (*v12 == 32)
  {
    ++v13;
LABEL_6:
    ++v12;
  }

  if (*v12)
  {
    goto LABEL_6;
  }

  v14 = uint32_log2(4 * *(a3 + 36) / v13);
  if (v14 >= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v18 = v15 | 0x30;
  if (*a5)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  return sprop_add_feature(a1, a7, v16, "WORDLEN=", a2, &v18, 1u);
}

uint64_t SPROP_freq10_caps(uint64_t a1, char *a2, unsigned __int8 **a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  v12 = *(a3 + 2);
  if (v12)
  {
    v14 = *a3;
    v15 = **a3;
    if (**a3)
    {
      v16 = 0;
      do
      {
        v17 = Utf8_LengthInBytes(v14, 1);
        if (utf8_ToLower(v14, 0, v20))
        {
          ++v16;
        }

        v14 += v17;
      }

      while (*v14);
      v15 = 10 * v16;
    }

    v12 = v15 / *(a3 + 3);
  }

  if (v12 >= 9)
  {
    LOBYTE(v12) = 9;
  }

  v21 = v12 | 0x30;
  if (*a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  return sprop_add_feature(a1, a7, v18, "CAPS=", a2, &v21, 1u);
}

uint64_t SPROP_freq10_puncs(uint64_t a1, char *a2, unsigned __int8 **a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  if (*(a3 + 2))
  {
    v13 = *a3;
    v14 = **a3;
    if (**a3)
    {
      v15 = 0;
      do
      {
        v16 = Utf8_LengthInBytes(v13, 1);
        if (utf8_BelongsToSet(0xAu, v13, 0, v16) == 1)
        {
          ++v15;
        }

        v13 += v16;
      }

      while (*v13);
      v14 = 10 * v15;
    }

    v17 = v14 / *(a3 + 3) + 48;
  }

  else
  {
    LOBYTE(v17) = 48;
  }

  v20 = v17;
  if (*a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  return sprop_add_feature(a1, a7, v18, "PUNC=", a2, &v20, 1u);
}

uint64_t SPROP_first_wrd(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = utf8_strchr(*(a3 + 24), " ");
  v14 = cstdlib_strlen(*(a3 + 24));
  v15 = *(a3 + 24);
  if (v13)
  {
    v16 = v13 - v15;
  }

  else
  {
    v16 = v14;
  }

  if (*a5)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  return sprop_add_feature(a1, a7, v17, "FIRSTWD=", a2, v15, v16);
}

uint64_t SPROP_last_char(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a3 + 8);
  if (!v7)
  {
    return 0;
  }

  while (1)
  {
    v19 = v7 - 1;
    if (v7 == 1)
    {
      return 0;
    }

    utf8_GetPreviousValidUtf8Offset(*a3, &v19);
    if (!utf8_BelongsToSet(0, *a3, v19, *(a3 + 8)))
    {
      break;
    }

    v7 = v19;
    if (!v19)
    {
      return 0;
    }
  }

  v15 = *a3;
  v16 = v19;
  v17 = Utf8_LengthInBytes((v15 + v19), 1);
  if (!v15)
  {
    return 0;
  }

  if (*a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  return sprop_add_feature(a1, a7, v18, "LASTCH=", a2, (v15 + v16), v17);
}

uint64_t SPROP_freq4_singlechars(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!*(a3 + 32))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  if (!*v7)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(a3 + 24);
  do
  {
    v16 = &v15[Utf8_LengthInBytes(v15, 1)];
    if ((*v15 | 0x20) == 0x20)
    {
      ++v13;
      if (Utf8_LengthInUtf8chars(v7, v15 - v7) == 1)
      {
        ++v14;
        v7 = v16;
      }
    }

    v15 = v16;
  }

  while (*v16);
  if (!v13)
  {
    return 0;
  }

  v19 = v14 / v13 + 48;
  if (*a5)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  return sprop_add_feature(a1, a7, v17, "SINGLECH=", a2, &v19, 1u);
}

uint64_t SPROP_numeral(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v9 = a4;
  v11 = a2;
  v12 = a1;
  v13 = *(a6 + 8);
  v14 = *(a3 + 24);
  if (v13)
  {
    v16 = *a6;
    v17 = *a6 + v13;
    v18 = v14 + *(a3 + 32);
    v19 = "1";
    do
    {
      v20 = *(a3 + 24);
      v21 = cstdlib_strlen(v16);
      while (v20 < v18)
      {
        v22 = cstdlib_strstr(v20, v16);
        if (!v22)
        {
          break;
        }

        v20 = &v22[v21];
        if ((*v20 | 0x20) == 0x20 && (v22 == *(a3 + 24) || *(v22 - 1) == 32))
        {
          v7 = a7;
          v12 = a1;
          v11 = a2;
          v9 = a4;
          goto LABEL_22;
        }
      }

      v16 += (v21 + 1);
    }

    while (v16 < v17);
    v14 = *(a3 + 24);
    v7 = a7;
    v12 = a1;
    v11 = a2;
    v9 = a4;
  }

  v23 = *(a3 + 32);
  if (!v23)
  {
    goto LABEL_21;
  }

  v24 = v14 + v23;
  v25 = v14 + 1;
  do
  {
    v26 = cstdlib_isdigit(*(v25 - 1));
    if (v26)
    {
      v27 = 1;
    }

    else
    {
      v27 = v25 >= v24;
    }

    ++v25;
  }

  while (!v27);
  if (v26)
  {
    v19 = "1";
  }

  else
  {
LABEL_21:
    v19 = "0";
  }

LABEL_22:
  if (*a5)
  {
    v28 = v9;
  }

  else
  {
    v28 = 0;
  }

  return sprop_add_feature(v12, v7, v28, "NUMERAL=", v11, v19, 0);
}

uint64_t SPROP_keywords(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 8);
  if (!v7)
  {
    return 0;
  }

  v11 = 0;
  v12 = *a4;
  v13 = *a4 + v7;
  v14 = *(a3 + 24) + *(a3 + 32);
  do
  {
    v15 = *(a3 + 24);
    v16 = cstdlib_strlen(v12);
    while (v15 < v14)
    {
      v17 = cstdlib_strstr(v15, v12);
      if (!v17)
      {
        break;
      }

      v15 = &v17[v16];
      if ((*v15 | 0x20) == 0x20 && (v17 == *(a3 + 24) || *(v17 - 1) == 32))
      {
        v11 = sprop_str_set_add(a1, a7, a2, v12, v16);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        break;
      }
    }

    v12 += v16 + 1;
  }

  while (v12 < v13);
  return v11;
}

uint64_t SPROP_keywords_bigrams(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 8);
  if (!v7)
  {
    return 0;
  }

  v11 = 0;
  v12 = *a4;
  v13 = *a4 + v7;
  v14 = *(a3 + 24) + *(a3 + 32);
  do
  {
    v15 = *(a3 + 24);
    v16 = cstdlib_strlen(v12);
    while (v15 < v14)
    {
      v17 = sprop_bigrams(v15, v12);
      if (!v17)
      {
        break;
      }

      v15 = &v17[v16];
      if ((*v15 | 0x20) == 0x20 && (v17 == *(a3 + 24) || *(v17 - 1) == 32))
      {
        v11 = sprop_str_set_add(a1, a7, a2, v12, v16);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        break;
      }
    }

    v12 += v16 + 1;
  }

  while (v12 < v13);
  return v11;
}

uint64_t sprop_add_feature(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, char *a5, char *a6, unsigned int a7)
{
  if (a3)
  {
    v13 = *a3;
    v14 = *(a3 + 8);
    v15 = cstdlib_strlen(__s);
    if (a7)
    {
      v16 = a7;
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v16 = cstdlib_strlen(a6);
      if (!v14)
      {
        return 0;
      }
    }

    v17 = &v13[v14];
    while (cstdlib_strncmp(v13, __s, v15) || cstdlib_strncmp(&v13[v15], a6, v16))
    {
      v13 += cstdlib_strlen(v13) + 1;
      if (v13 >= v17)
      {
        return 0;
      }
    }
  }

  return sprop_str_set_add(a1, a2, a5, a6, a7);
}

uint64_t SPROP_word_token(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sprop_input_mrk_cnt(a3);
  v10 = sprop_input_mrk(a3);
  v24 = SPROP_STR_null;
  v25 = 0;
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v9;
    v15 = (v10 + 12);
    while (1)
    {
      v16 = *(v15 - 3);
      if (v16 == 1)
      {
        v17 = a7 + 16 * v12;
        v18 = sprop_str_set_add(a1, v17, "", "", 0);
        if ((v18 & 0x80000000) != 0 || (v19 = *v17, v20 = *(v17 + 8), v18 = sprop_str_copy(a1, &v24, (*a3 + *v15 - v11), v15[1]), (v18 & 0x80000000) != 0))
        {
          v13 = v18;
          goto LABEL_16;
        }

        v21 = v19 + 24 * v20;
        v13 = sprop_normalize(a1, (v21 - 24), &v24, 0);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        if (!*(v21 - 16))
        {
          v13 = sprop_str_cat(a1, v21 - 24, "-", 0);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_16;
          }
        }

        ++v12;
      }

      else if (v16 == 0x4000)
      {
        v11 = *v15;
      }

      v15 += 8;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = 0;
LABEL_16:
  sprop_str_dealloc(a1, &v24);
  return v13;
}

uint64_t SPROP_word_lowercase_token(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sprop_input_mrk_cnt(a3);
  v10 = sprop_input_mrk(a3);
  v24 = SPROP_STR_null;
  v25 = 0;
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v9;
    v15 = (v10 + 12);
    while (1)
    {
      v16 = *(v15 - 3);
      if (v16 == 1)
      {
        v17 = a7 + 16 * v12;
        v18 = sprop_str_set_add(a1, v17, "", "", 0);
        if ((v18 & 0x80000000) != 0 || (v19 = *v17, v20 = *(v17 + 8), v18 = sprop_str_copy(a1, &v24, (*a3 + *v15 - v11), v15[1]), (v18 & 0x80000000) != 0))
        {
          v13 = v18;
          goto LABEL_16;
        }

        v21 = v19 + 24 * v20;
        v13 = sprop_normalize(a1, (v21 - 24), &v24, 1);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        if (!*(v21 - 16))
        {
          v13 = sprop_str_cat(a1, v21 - 24, "-", 0);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_16;
          }
        }

        ++v12;
      }

      else if (v16 == 0x4000)
      {
        v11 = *v15;
      }

      v15 += 8;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = 0;
LABEL_16:
  sprop_str_dealloc(a1, &v24);
  return v13;
}

uint64_t SPROP_word_token_class(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sprop_input_mrk_cnt(a3);
  v33 = a3;
  v9 = sprop_input_mrk(a3);
  if (v8)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    result = 0;
    v15 = v8;
    while (1)
    {
      v16 = (v10 + 32 * v11);
      if (*v16 == 1)
      {
        break;
      }

      if (*v16 == 0x4000)
      {
        v12 = v16[3];
      }

LABEL_46:
      if (++v11 == v15)
      {
        return result;
      }
    }

    v17 = v16[4];
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v36 = v12;
      v20 = (*v33 + v16[3] - v12);
      v21 = 30;
      do
      {
        if (utf8_BelongsToSet(6u, v20, v18, v17))
        {
          v21 = v21 & 0xFFFFFEF1 | 0x100;
          ++v19;
        }

        else if (utf8_BelongsToSet(0xAu, v20, v18, v16[4]))
        {
          v22 = v21 & 0xFFFFFFE1;
          v23 = v20[v18];
          v24 = v21 & 0xFFFFFFC1 | 0x20;
          v25 = v21 & 0xFFFFFF61 | 0x80;
          if (v23 != 47)
          {
            v25 = v21 & 0xFFFFFFE1;
          }

          if (v23 != 46)
          {
            v24 = v25;
          }

          if (v23 == 45)
          {
            v22 = v21 & 0xFFFFFDE1 | 0x200;
          }

          if (v23 == 44)
          {
            v22 = v21 & 0xFFFFFFA1 | 0x40;
          }

          if (v20[v18] <= 0x2Du)
          {
            v21 = v22;
          }

          else
          {
            v21 = v24;
          }
        }

        else if (utf8_BelongsToSet(0x12u, v20, v18, v16[4]) || utf8_BelongsToSet(0x15u, v20, v18, v16[4]) || utf8_BelongsToSet(0x18u, v20, v18, v16[4]) || utf8_BelongsToSet(0x1Bu, v20, v18, v16[4]) || utf8_BelongsToSet(0x1Eu, v20, v18, v16[4]))
        {
          v26 = v21 | 0xC01;
          if (v18)
          {
            v26 = v21 | 0x400;
          }

          v21 = v26 & 0xFFFFFFEB;
        }

        else
        {
          v21 = v21 & 0xFFFFFBED | 0x400;
        }

        NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(v20, v18, v16[4]);
        v18 = NextUtf8OffsetLimit;
        v17 = v16[4];
      }

      while (NextUtf8OffsetLimit != v17);
      if (NextUtf8OffsetLimit == 1)
      {
        v28 = "sc";
      }

      else
      {
        v28 = "ac";
      }

      if ((v21 & 4) != 0)
      {
        v28 = "lc";
        goto LABEL_43;
      }

      if (v19 == 2)
      {
        v28 = "2d";
        goto LABEL_43;
      }

      if (v19 == 4)
      {
        v28 = "4d";
LABEL_43:
        v12 = v36;
        goto LABEL_44;
      }

      v29 = v21;
      if ((v21 & 0x100) != 0)
      {
        v28 = "an";
        v12 = v36;
        if ((v29 & 0x400) != 0)
        {
          goto LABEL_44;
        }

        v28 = "dd";
        if ((v29 & 0x200) != 0)
        {
          goto LABEL_44;
        }

        v28 = "ds";
        if ((v29 & 0x80) != 0)
        {
          goto LABEL_44;
        }

        v28 = "dc";
        if ((v29 & 0x40) != 0)
        {
          goto LABEL_44;
        }

        v30 = (v29 & 0x20) == 0;
        v31 = "dp";
        v32 = "num";
      }

      else
      {
        v12 = v36;
        if ((v29 & 2) != 0)
        {
          goto LABEL_44;
        }

        v28 = "cp";
        if ((v29 & 0x20) != 0)
        {
          goto LABEL_44;
        }

        v30 = (v29 & 1) == 0;
        v31 = "ic";
        v32 = "other";
      }

      if (v30)
      {
        v28 = v32;
      }

      else
      {
        v28 = v31;
      }
    }

    else
    {
      v28 = "lc";
    }

LABEL_44:
    result = sprop_str_set_add(a1, a7 + 16 * v13, "", v28, 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    ++v13;
    goto LABEL_46;
  }

  return 0;
}

uint64_t SPROP_word_begin_sentence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sprop_input_mrk_cnt(a3);
  v11 = sprop_input_mrk(a3);
  if (!v10)
  {
    return 0;
  }

  v12 = v11;
  v13 = 0;
  result = 0;
  v15 = v10;
  v16 = "1";
  do
  {
    v17 = *v12;
    v12 += 8;
    if (v17 == 1)
    {
      result = sprop_str_set_add(a1, a7 + 16 * v13, "", v16, 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      ++v13;
      v16 = "0";
    }

    --v15;
  }

  while (v15);
  return result;
}

uint64_t geene_adapt_common_DuplicateString_Num_FreeFirst(uint64_t a1, const char *a2, size_t a3, uint64_t *a4)
{
  if (*a4)
  {
    heap_Free(*(a1 + 8), *a4);
    *a4 = 0;
  }

  v8 = heap_Calloc(*(a1 + 8), 1, a3 + 1);
  *a4 = v8;
  if (!v8)
  {
    return 3221233674;
  }

  cstdlib_strncpy(v8, a2, a3);
  return 0;
}

uint64_t geene_adapt_common_DuplicateString_FreeFirst(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = cstdlib_strlen(__s);

  return geene_adapt_common_DuplicateString_Num_FreeFirst(a1, __s, v6, a3);
}

uint64_t geene_adapt_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 3221233665;
  }

  result = 0;
  *a2 = &IGEEnEAdapt;
  return result;
}

uint64_t geene_adapt_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v13 = 0;
  v14 = 0;
  inited = InitRsrcFunction(a3, a4, &v14);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = 3221233674;
  *a5 = 0;
  *(a5 + 8) = 0;
  v8 = heap_Calloc(*(v14 + 8), 1, 960);
  if (v8)
  {
    v9 = v8;
    v10 = v14;
    *v8 = v14;
    v11 = heap_Calloc(*(v10 + 8), 128, 20);
    v9[117] = v11;
    if (v11)
    {
      inited = objc_GetObject(*(*v9 + 48), "SYNTHSTREAM", &v13);
      if ((inited & 0x80000000) == 0)
      {
        v9[8] = *(v13 + 8);
        inited = objc_GetObject(*(*v9 + 48), "LINGDB", &v13);
        if ((inited & 0x80000000) == 0)
        {
          v9[1] = *(v13 + 8);
          *a5 = v9;
          *(a5 + 8) = 135971;
          return geene_adapt_ObjReopen(v9, *(a5 + 8));
        }
      }

      return inited;
    }
  }

  return v7;
}

uint64_t geene_adapt_ObjClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 135971, 960);
  if ((v3 & 0x80000000) != 0)
  {
    return 3221233672;
  }

  if (a1[1])
  {
    v4 = objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    if ((v4 & 0x80000000) != 0)
    {
      return v4;
    }
  }

  else
  {
    v4 = v3;
  }

  if (!a1[8] || (v4 = objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM"), (v4 & 0x80000000) == 0))
  {
    heap_Free(*(*a1 + 8), a1[117]);
    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t geene_adapt_ObjReopen(uint64_t a1, int a2)
{
  __s1 = 0;
  v3 = safeh_HandleCheck(a1, a2, 135971, 960);
  result = 3221233672;
  if ((v3 & 0x80000000) == 0 && a1)
  {
    *(a1 + 912) = 0;
    paramc_ParamGetStr(*(*a1 + 40), "punctmarks", (a1 + 912));
    *(a1 + 924) = 0;
    if ((paramc_ParamGetStr(*(*a1 + 40), "mnctnplus", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
    {
      *(a1 + 924) = 1;
    }

    *(a1 + 944) = xmmword_26ED4B4C0;
    return v3;
  }

  return result;
}

uint64_t geene_adapt_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 135971, 960) & 0x80000000) != 0)
  {
    return 3221233672;
  }

  *(a1 + 920) = 0;
  cstdlib_memset(*(a1 + 936), 0, 0xA00uLL);
  *(a1 + 928) = 1;
  v7 = geene_adapt_lingdb_orth_visitor_New(*a1, *(a1 + 8), *(a1 + 912), *(a1 + 924), *(a1 + 936), *(a1 + 944), *(a1 + 952), (a1 + 16));
  if (v7)
  {
    return v7;
  }

  v7 = geene_adapt_lingdb_phon_visitor_New(*a1, *(a1 + 8), *(a1 + 924), *(a1 + 936), *(a1 + 944), *(a1 + 952), (a1 + 24));
  if (v7)
  {
    return v7;
  }

  v7 = geene_adapt_lingdb_tn_visitor_New(*a1, *(a1 + 8), (a1 + 40));
  if (v7)
  {
    return v7;
  }

  v7 = geene_adapt_lingdb_punct_visitor_New(*a1, *(a1 + 8), *(a1 + 912), *(a1 + 40), *(a1 + 924), *(a1 + 936), *(a1 + 944), *(a1 + 952), (a1 + 32));
  if (v7)
  {
    return v7;
  }

  v7 = geene_adapt_lingdb_pt_visitor_New(*a1, *(a1 + 8), (a1 + 48));
  if (v7)
  {
    return v7;
  }

  v7 = geene_adapt_lingdb_meta_visitor_New(*a1, *(a1 + 8), *(a1 + 912), *(a1 + 40), *(a1 + 48), *(a1 + 924), *(a1 + 936), v8, *(a1 + 944), *(a1 + 952), (a1 + 56));
  if (v7)
  {
    return v7;
  }

  v7 = paramc_ParamSetStr(*(*a1 + 40), "processingtnplus", "yes");
  if (v7)
  {
    return v7;
  }

  synstrmaux_InitStreamOpener(a1 + 88, *(*a1 + 32), "GEEnEAdapt");
  synstrmaux_RegisterOutStream((a1 + 88), "application/x-tnplus-words;version=1.0", a1 + 72);
  v9 = synstrmaux_OpenStreams((a1 + 88), *(a1 + 64), a3, a4);
  if ((v9 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 88), *(a1 + 64));
  }

  return v9;
}

uint64_t geene_adapt_Process(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v115 = *MEMORY[0x277D85DE8];
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v93 = 0;
  v92 = 0;
  __s1 = 0;
  v94 = 0;
  *a5 = 1;
  if ((safeh_HandleCheck(a1, a2, 135971, 960) & 0x80000000) != 0)
  {
    return 3221233672;
  }

  v99 = 0;
  accumulated_sildur_from_markers_and_waitfactor = (*(a1->i64[1] + 104))(a3, a4, 1, 0, &v98);
  if ((accumulated_sildur_from_markers_and_waitfactor & 0x80000000) != 0)
  {
    goto LABEL_100;
  }

  inserted = (*(a1->i64[1] + 168))(a3, a4, v98, 3, 1, &v96, &v99);
  if ((inserted & 0x80000000) != 0)
  {
    goto LABEL_101;
  }

  v10 = a1[2];
  v109[0] = 0u;
  v109[1] = vextq_s8(v10, v10, 8uLL);
  v110 = 0u;
  v11 = a1[1].i64[0];
  v12 = a1[1].i64[1];
  *&v109[0] = v11;
  *(&v109[0] + 1) = v12;
  v13 = a1[3].i64[1];
  *&v110 = a1[3].i64[0];
  *(&v110 + 1) = v13;
  v11[7] = 0x100000000;
  v12[7] = 0x100000000;
  *(v10.i64[0] + 56) = 0x100000000;
  v13[7] = 0x100000000;
  *(v11 + 17) = 1;
  *(v12 + 17) = 1;
  *(v10.i64[0] + 68) = 1;
  *(v13 + 17) = 1;
  if (v96 && a1[57].i32[2])
  {
    goto LABEL_6;
  }

  v95 = 0;
  if (((*(a1->i64[1] + 176))(a3, a4, v98, 1, &v95, &v97) & 0x80000000) != 0)
  {
    v90 = 0;
    v86 = 0;
    v88 = 0;
  }

  else
  {
    v27 = v97;
    if (v97)
    {
      v28 = 0;
      v29 = v95;
      while (v95[v28] != 26)
      {
        v28 += 8;
        if (8 * v97 == v28)
        {
          v86 = 0;
          goto LABEL_31;
        }
      }

      v86 = 1;
LABEL_31:
      if (*v95 == 0x4000)
      {
        v30 = v95[3];
      }

      else
      {
        v30 = 0;
      }

      v112.i16[0] = -1;
      if ((geene_adapt_get_frompos_wordrec(a1->i64[1], a3, a4, 1, 0xFFFFFFFF, 0, &v112) & 0x80000000) == 0)
      {
        v31 = v29 + 3;
        v32 = v27;
        while (v112.u16[0] == 0xFFFF || *v31 - v30 <= v112.u16[0])
        {
          v33 = *(v31 - 3);
          if (v33 == 8)
          {
            if (v31[3] != 29999)
            {
              v34 = 1;
              goto LABEL_44;
            }
          }

          else if (v33 == 26)
          {
            break;
          }

          v31 += 8;
          if (!--v32)
          {
            break;
          }
        }
      }
    }

    else
    {
      v86 = 0;
    }

    v34 = 0;
LABEL_44:
    v88 = v34;
    v90 = v27;
  }

  v35 = 0;
  while (1)
  {
    v36 = *(a1->i64[1] + 288);
    v37 = v98;
    v38 = *(v109 + v35);
    PreCallback = geene_adapt_lingdb_visitor_GetPreCallback(v38);
    Callback = geene_adapt_lingdb_visitor_GetCallback(v38);
    PostCallback = geene_adapt_lingdb_visitor_GetPostCallback(v38);
    v42 = v36(a3, a4, v37, PreCallback, Callback, 0, PostCallback, v38);
    v43 = v42;
    if ((v42 & 0x80000000) != 0)
    {
      break;
    }

    v35 += 8;
    if (v35 == 48)
    {
      a1[57].i32[2] = 1;
      inserted = v42;
      v44 = v88;
      goto LABEL_49;
    }
  }

  if ((v42 & 0x1FFF) != 0x1E08)
  {
    inserted = v42;
    goto LABEL_101;
  }

  v44 = v88;
  if (!(v88 | v86) && (v96 != 1 || a1[57].i32[2]))
  {
    inserted = 0;
    v94 = 1;
    goto LABEL_6;
  }

  v58 = 0;
  v112 = a1[1];
  v59 = a1[3].i64[1];
  v113 = a1[2].i64[0];
  v114 = v59;
  do
  {
    v60 = geene_adapt_lingdb_visitor_GetPreCallback(v112.i64[v58]);
    NullHandle = safeh_GetNullHandle();
    v62 = v60(NullHandle);
    inserted = v62;
    if ((v62 & 0x80000000) != 0)
    {
      goto LABEL_101;
    }

    if (v58 > 2)
    {
      break;
    }

    ++v58;
  }

  while (!v62);
LABEL_49:
  if (v44)
  {
    v45 = 0;
    v46 = v95;
    v108 = 0;
    v107 = 0;
    v105 = -1;
    v106 = -1;
    v103 = -1;
    v104 = -1;
    v102 = -1;
    v101 = 0;
    v100 = 0;
    v47 = a1[1];
    v48 = a1[3].i64[1];
    v113 = a1[2].i64[0];
    v114 = v48;
    v112 = v47;
    while (1)
    {
      v49 = v112.i64[v45];
      if (v45 > 1)
      {
        if (v45 != 2)
        {
          geene_adapt_lingdb_meta_visitor_GetCurrentMetaDataValues(v112.i64[v45], &v101, &v100, &v106, &v105, &v104, &v103);
          accumulated_sildur_from_markers_and_waitfactor = geene_adapt_get_accumulated_sildur_from_markers_and_waitfactor(a1->i64[0], a1->i64[1], a3, a4, v46, v90, 1, -1, 0, &v102);
          if ((accumulated_sildur_from_markers_and_waitfactor & 0x80000000) != 0)
          {
            goto LABEL_100;
          }

          accumulated_sildur_from_markers_and_waitfactor = geene_adapt_meta_stream_ItemToBuff(*v49, &v107, &v108, 19, v53, v54, v55, v56, "");
          if ((accumulated_sildur_from_markers_and_waitfactor & 0x80000000) != 0)
          {
            goto LABEL_100;
          }

          inserted = geene_adapt_stream_InsertItemFromMarker(*(*(v49 + 24) + 8 * *(v49 + 32)), v107, v108, 0);
          heap_Free(*(*v49 + 8), v107);
          goto LABEL_59;
        }

        __src[0] = 0;
        v50 = *(*(v49 + 24) + 8 * *(v49 + 32));
        v51 = __src;
        v52 = 4;
      }

      else
      {
        v50 = *(*(v49 + 24) + 8 * *(v49 + 32));
        v51 = "";
        v52 = 1;
      }

      inserted = geene_adapt_stream_InsertItemFromMarker(v50, v51, v52, 0);
LABEL_59:
      if ((inserted & 0x80000000) != 0)
      {
        goto LABEL_101;
      }

      if (v45 <= 2)
      {
        ++v45;
        if (!inserted)
        {
          continue;
        }
      }

      break;
    }
  }

  if (!v86)
  {
    goto LABEL_121;
  }

  v57 = v95;
  v108 = 0;
  v107 = 0;
  v105 = -1;
  v106 = -1;
  v103 = -1;
  v104 = -1;
  v102 = -1;
  v101 = 0;
  v100 = 0;
  if (!v90)
  {
    if ((v43 & 0x80000000) == 0)
    {
      inserted = 0;
      goto LABEL_6;
    }

LABEL_122:
    v80 = 0;
    v112 = a1[1];
    v81 = a1[3].i64[1];
    v113 = a1[2].i64[0];
    v114 = v81;
    while (1)
    {
      v82 = geene_adapt_lingdb_visitor_GetPostCallback(v112.i64[v80]);
      v83 = safeh_GetNullHandle();
      v84 = v82(v83);
      inserted = v84;
      if ((v84 & 0x80000000) != 0)
      {
        goto LABEL_101;
      }

      if (v80 <= 2)
      {
        ++v80;
        if (!v84)
        {
          continue;
        }
      }

      a1[57].i32[2] = 1;
      goto LABEL_6;
    }
  }

  if (*v95 == 0x4000)
  {
    v89 = v95[3];
  }

  else
  {
    v89 = 0;
  }

  v63 = 0;
  inserted = 0;
  v112 = a1[1];
  v64 = a1[3].i64[1];
  v113 = a1[2].i64[0];
  v114 = v64;
  v85 = v95;
  do
  {
    v87 = v63;
    v65 = &v57[8 * v63];
    if (*v65 == 26 && inserted == 0)
    {
      v67 = 0;
      while (1)
      {
        v68 = v65[3] - v89;
        v69 = v112.i64[v67];
        if (v67 > 1)
        {
          if (v67 != 2)
          {
            geene_adapt_lingdb_meta_visitor_GetCurrentMetaDataValues(v112.i64[v67], &v101, &v100, &v106, &v105, &v104, &v103);
            accumulated_sildur_from_markers_and_waitfactor = geene_adapt_get_accumulated_sildur_from_markers_and_waitfactor(a1->i64[0], a1->i64[1], a3, a4, v85, v90, 0, v87, 0, &v102);
            if ((accumulated_sildur_from_markers_and_waitfactor & 0x80000000) != 0)
            {
              goto LABEL_100;
            }

            accumulated_sildur_from_markers_and_waitfactor = geene_adapt_meta_stream_ItemToBuff(*v69, &v107, &v108, 19, v74, v75, v76, v77, "");
            if ((accumulated_sildur_from_markers_and_waitfactor & 0x80000000) != 0)
            {
              goto LABEL_100;
            }

            inserted = geene_adapt_stream_InsertItemFromMarker(*(*(v69 + 24) + 8 * *(v69 + 32)), v107, v108, v68);
            heap_Free(*(*v69 + 8), v107);
            goto LABEL_96;
          }

          __src[0] = 0;
          v70 = *(*(v69 + 24) + 8 * *(v69 + 32));
          v72 = __src;
          v71 = v68;
          v73 = 4;
        }

        else
        {
          v70 = *(*(v69 + 24) + 8 * *(v69 + 32));
          v71 = (*(v65 + 6) - v89);
          v72 = "";
          v73 = 1;
        }

        inserted = geene_adapt_stream_InsertItemFromMarker(v70, v72, v73, v71);
LABEL_96:
        if ((inserted & 0x80000000) != 0)
        {
          goto LABEL_101;
        }

        if (v67 <= 2)
        {
          ++v67;
          if (!inserted)
          {
            continue;
          }
        }

        break;
      }
    }

    v57 = v85;
    v63 = v87 + 1;
  }

  while (v87 + 1 != v90);
  if ((inserted & 0x80000000) != 0)
  {
    goto LABEL_101;
  }

LABEL_121:
  if (v43 < 0)
  {
    goto LABEL_122;
  }

LABEL_6:
  NStreams = geene_adapt_lingdb_visitor_GetNStreams(a1[1].i64[0]);
  v92 = NStreams;
  if (NStreams)
  {
    v15 = a1[58].i32[0];
    v16 = v96;
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v96 == 1;
    }

    v18 = v17;
    if (v15 == 1 || v18)
    {
      accumulated_sildur_from_markers_and_waitfactor = tnplus_sentences_alloc(a1->i64[0], NStreams, &v93);
      if ((accumulated_sildur_from_markers_and_waitfactor & 0x80000000) != 0)
      {
        goto LABEL_100;
      }

      if (v92)
      {
        v19 = 0;
        v20 = 0;
        while (1)
        {
          v21 = a1->i64[0];
          Stream = geene_adapt_lingdb_visitor_GetStream(a1[1].i64[0], v20);
          v23 = geene_adapt_lingdb_visitor_GetStream(a1[1].i64[1], v20);
          v24 = geene_adapt_lingdb_visitor_GetStream(a1[2].i64[0], v20);
          v25 = geene_adapt_lingdb_visitor_GetStream(a1[3].i64[1], v20);
          accumulated_sildur_from_markers_and_waitfactor = geene_adapt_streams_to_sentence(v21, Stream, v23, v24, v25, v93 + v19);
          if ((accumulated_sildur_from_markers_and_waitfactor & 0x80000000) != 0)
          {
            break;
          }

          ++v20;
          v26 = v92;
          v19 += 16;
          if (v20 >= v92)
          {
            goto LABEL_116;
          }
        }

LABEL_100:
        inserted = accumulated_sildur_from_markers_and_waitfactor;
      }

      else
      {
        v26 = 0;
LABEL_116:
        inserted = geene_adapt_write_sentences_to_outstream_words(a1, v93, v26, &v94);
        tnplus_sentences_free(a1->i64[0], &v92, &v93);
        for (i = 0; i != 48; i += 8)
        {
          geene_adapt_lingdb_generic_visitor_ClearStreams(*(v109 + i));
        }
      }

      goto LABEL_101;
    }
  }

  else
  {
LABEL_101:
    v16 = v96;
  }

  if (v16 == 1)
  {
    inserted = synstrmaux_CloseStreams(&a1[5].i16[4], a1[4].i64[0]);
  }

  if ((inserted & 0x80000000) != 0)
  {
    v94 = 1;
  }

  if ((paramc_ParamGetStr(*(a1->i64[0] + 40), "willbeprocessingdeinitlingdb", &__s1) & 0x80000000) != 0 || !__s1 || cstdlib_strcmp(__s1, "yes"))
  {
    if (v94)
    {
      (*(a1->i64[1] + 64))(a3, a4);
    }
  }

  else
  {
    v94 = 0;
  }

  if (v93)
  {
    tnplus_sentences_free(a1->i64[0], &v92, &v93);
  }

  return inserted;
}

uint64_t geene_adapt_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 135971, 960) & 0x80000000) != 0)
  {
    return 3221233672;
  }

  result = paramc_ParamSetStr(*(*a1 + 40), "processingtnplus", "no");
  if (!result)
  {
    if (*(a1 + 16))
    {
      geene_adapt_lingdb_orth_visitor_Delete();
    }

    if (*(a1 + 24))
    {
      geene_adapt_lingdb_phon_visitor_Delete();
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      geene_adapt_lingdb_punct_visitor_Delete(v4);
    }

    if (*(a1 + 40))
    {
      geene_adapt_lingdb_tn_visitor_Delete();
    }

    if (*(a1 + 48))
    {
      geene_adapt_lingdb_tn_visitor_Delete();
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      geene_adapt_lingdb_meta_visitor_Delete(v5);
    }

    v6 = *(a1 + 64);

    return synstrmaux_CloseStreams((a1 + 88), v6);
  }

  return result;
}

uint64_t geene_adapt_write_sentences_to_outstream_words(void *a1, uint64_t a2, int a3, _DWORD *a4)
{
  __dst = 0;
  if (a3 != 1)
  {
    return 3221233664;
  }

  v5 = (160 * *a2);
  if (v5)
  {
    result = (*(a1[8] + 112))(a1[9], a1[10], &__dst, v5);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_memcpy(__dst, *(a2 + 8), v5);
      return (*(a1[8] + 120))(a1[9], a1[10], v5);
    }
  }

  else
  {
    result = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t geene_adapt_streams_to_sentence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  NItems = geene_adapt_stream_GetNItems(a2);
  if (NItems != geene_adapt_stream_GetNItems(a3) || NItems != geene_adapt_stream_GetNItems(a4) || NItems != geene_adapt_stream_GetNItems(a5))
  {
    return 3221233664;
  }

  result = tnplus_words_alloc(a1, NItems, (a6 + 8));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v55 = a5;
  *a6 = NItems;
  if (!NItems)
  {
    return result;
  }

  v14 = 0;
  v49 = NItems;
  v50 = a4;
  while (2)
  {
    v15 = *(a6 + 8);
    __dst[1] = 0;
    Item = geene_adapt_stream_GetItem(a2, v14, &__dst[1]);
    if (Item)
    {
      v17 = Item;
      v18 = (v15 + 160 * v14);
      v19 = heap_Alloc(*(a1 + 8), __dst[1] + 1);
      *v18 = v19;
      if (v19)
      {
        cstdlib_memcpy(v19, v17, __dst[1]);
        *(*v18 + __dst[1]) = 0;
      }
    }

    v20 = *(a6 + 8);
    __dst[1] = 0;
    v21 = geene_adapt_stream_GetItem(a3, v14, &__dst[1]);
    if (v21)
    {
      v22 = v21;
      v23 = heap_Alloc(*(a1 + 8), __dst[1] + 1);
      v24 = v20 + 160 * v14;
      *(v24 + 8) = v23;
      v25 = (v24 + 8);
      if (v23)
      {
        cstdlib_memcpy(v23, v22, __dst[1]);
        *(*v25 + __dst[1]) = 0;
      }
    }

    v26 = *(a6 + 8);
    __dst[1] = 0;
    v27 = geene_adapt_stream_GetItem(a4, v14, &__dst[1]);
    if (!v27)
    {
      return 3221233664;
    }

    v28 = v27;
    v29 = v26 + 160 * v14;
    v30 = *v27;
    v31 = v27[1];
    v32 = heap_Alloc(*(a1 + 8), v30 + 1);
    *(v29 + 16) = v32;
    if (!v32)
    {
      return 3221233674;
    }

    v33 = (v28 + 2);
    cstdlib_memcpy(v32, v33, v30);
    *(*(v29 + 16) + v30) = 0;
    v34 = heap_Alloc(*(a1 + 8), v31 + 1);
    *(v29 + 24) = v34;
    if (!v34)
    {
      return 3221233674;
    }

    cstdlib_memcpy(v34, &v33[v30], v31);
    *(*(v29 + 24) + v31) = 0;
    v35 = *(a6 + 8);
    *__dst = 0;
    v36 = geene_adapt_stream_GetItem(v55, v14, &__dst[1]);
    if (!v36)
    {
      return 3221233664;
    }

    v37 = v36;
    v38 = (v35 + 160 * v14);
    v39 = (v36 + 76);
    v65 = v38 + 13;
    v54 = v38 + 12;
    v59 = v38 + 11;
    v60 = v38 + 15;
    v53 = v38 + 10;
    v64 = v38 + 7;
    v51 = v38 + 19;
    v52 = v38 + 6;
    v57 = v38 + 4;
    v58 = v38 + 9;
    v62 = v38 + 14;
    v69 = v38 + 68;
    v63 = v38 + 8;
    v68 = v38 + 5;
    v56 = v38 + 18;
    v67 = v38 + 140;
    v70 = v38 + 17;
    v61 = v38 + 132;
    v66 = v38 + 16;
    v40 = &dword_279DB6000;
    v41 = 19;
    do
    {
      cstdlib_memcpy(__dst, v37, 4uLL);
      v42 = v40[4];
      if (v42 == 2)
      {
        v46 = *v40;
        if (*v40 > 7)
        {
          if (v46 <= 9)
          {
            v47 = v59;
            if (v46 != 8)
            {
              v47 = v54;
              if (v46 != 9)
              {
                return 3221233664;
              }
            }
          }

          else
          {
            v47 = v65;
            if (v46 != 10)
            {
              v47 = v60;
              if (v46 != 12)
              {
                if (v46 != 18)
                {
                  return 3221233664;
                }

                v47 = v51;
              }
            }
          }
        }

        else if (v46 <= 2)
        {
          v47 = v57;
          if (v46)
          {
            v47 = v52;
            if (v46 != 2)
            {
              return 3221233664;
            }
          }
        }

        else
        {
          v47 = v64;
          if (v46 != 3)
          {
            v47 = v58;
            if (v46 != 6)
            {
              v47 = v53;
              if (v46 != 7)
              {
                return 3221233664;
              }
            }
          }
        }

        v48 = heap_Alloc(*(a1 + 8), __dst[0] + 1);
        *v47 = v48;
        if (!v48)
        {
          return 3221233674;
        }

        cstdlib_strncpy(v48, v39, __dst[0]);
        (*v47)[__dst[0]] = 0;
        v39 += __dst[0];
      }

      else
      {
        if (v42 == 1)
        {
          v45 = *v40;
          if (*v40 > 4)
          {
            v44 = v69;
            if (v45 != 5)
            {
              if (v45 != 11)
              {
                return 3221233664;
              }

              v44 = v62;
            }
          }

          else
          {
            v44 = v68;
            if (v45 != 1)
            {
              v44 = v63;
              if (v45 != 4)
              {
                return 3221233664;
              }
            }
          }
        }

        else
        {
          if (v42)
          {
            goto LABEL_54;
          }

          v43 = *v40;
          if (*v40 <= 14)
          {
            v44 = v66;
            if (v43 != 13)
            {
              v44 = v61;
              if (v43 != 14)
              {
                return 3221233664;
              }
            }
          }

          else
          {
            v44 = v70;
            if (v43 != 15)
            {
              v44 = v67;
              if (v43 != 16)
              {
                if (v43 != 17)
                {
                  return 3221233664;
                }

                v44 = v56;
              }
            }
          }
        }

        cstdlib_memcpy(v44, v39, 4uLL);
        v39 += 4;
      }

LABEL_54:
      v40 += 6;
      v37 += 4;
      --v41;
    }

    while (v41);
    result = 0;
    ++v14;
    a4 = v50;
    if (v14 != v49)
    {
      continue;
    }

    return result;
  }
}

uint64_t geene_adapt_lingdb_visitor_GetStream(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return *(*(result + 24) + 8 * a2);
  }

  return result;
}

uint64_t geene_adapt_lingdb_visitor_GetNStreams(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t geene_adapt_lingdb_visitor_GetCallback(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t geene_adapt_lingdb_visitor_GetPreCallback(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t geene_adapt_lingdb_visitor_GetPostCallback(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

BOOL tokens_contained_puncs_only(const char *a1, int a2)
{
  v4 = cstdlib_strlen(a1);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = Utf8_LengthInBytes(&a1[v5], 1);
      if (v7 != 1 && !utf8_IsChineseLetter(&a1[v5]))
      {
        v6 += v7;
      }

      v5 += v7;
    }

    while (v5 < v4);
  }

  else
  {
    v6 = 0;
  }

  return a2 || v6 == v4;
}

char *map_to_start_puncs(char *a1, int a2)
{
  if (cstdlib_strlen(a1))
  {
    cstdlib_strcat(a1, "|");
  }

  if (a2 > 40)
  {
    if (a2 == 41)
    {
      v4 = "PAIRED_PARENTH";
      goto LABEL_17;
    }

    if (a2 != 91)
    {
      if (a2 == 93)
      {
        v4 = "PAIRED_SQUAREBRACKET";
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v4 = "SQUAREBRACKET";
  }

  else
  {
    if (a2 == 34)
    {
      v4 = "QUOTE";
      goto LABEL_17;
    }

    if (a2 != 39)
    {
      if (a2 == 40)
      {
        v4 = "PARENTH";
        goto LABEL_17;
      }

LABEL_14:
      v4 = "";
      goto LABEL_17;
    }

    v4 = "SQUOTE";
  }

LABEL_17:

  return cstdlib_strcat(a1, v4);
}

size_t map_to_end_puncs(uint64_t a1, char *__s, unsigned int a3, unsigned int a4)
{
  if (cstdlib_strlen(__s))
  {
    cstdlib_strcat(__s, "|");
  }

  if (a3 < a4)
  {
    v8 = 0;
    do
    {
      v9 = Utf8_LengthInBytes((a1 + v8), 1);
      v10 = *(a1 + v8);
      if (v10 <= 0x2D)
      {
        if (*(a1 + v8) > 0x28u)
        {
          switch(v10)
          {
            case ')':
              v11 = "PAIRED_PARENTH";
              break;
            case '*':
              v11 = "IDEOGRAPHIC_COMMA";
              break;
            case ',':
              v11 = "COMMA";
              break;
            default:
              goto LABEL_35;
          }
        }

        else
        {
          switch(v10)
          {
            case '!':
              v11 = "EXCLAMATION_MARK";
              break;
            case '""':
              v11 = "QUOTE";
              break;
            case '\'':
              v11 = "SQUOTE";
              break;
            default:
              goto LABEL_35;
          }
        }
      }

      else if (*(a1 + v8) <= 0x3Eu)
      {
        switch(v10)
        {
          case '.':
            v11 = "FULL_STOP";
            break;
          case ':':
            v11 = "COLON";
            break;
          case ';':
            v11 = "SEMI_COLON";
            break;
          default:
            goto LABEL_35;
        }
      }

      else if (*(a1 + v8) > 0x5Fu)
      {
        if (v10 == 96)
        {
          v11 = "ELLIPSIS";
        }

        else
        {
          if (v10 != 126)
          {
LABEL_35:
            v11 = "";
            goto LABEL_36;
          }

          v11 = "TILDE";
        }
      }

      else if (v10 == 63)
      {
        v11 = "QUESTION_MARK";
      }

      else
      {
        if (v10 != 93)
        {
          goto LABEL_35;
        }

        v11 = "PAIRED_SQUAREBRACKET";
      }

LABEL_36:
      cstdlib_strcat(__s, v11);
      if (*__s)
      {
        cstdlib_strcat(__s, "|");
      }

      v8 += v9;
    }

    while (a3 + v8 < a4);
  }

  result = cstdlib_strlen(__s);
  if (result)
  {
    __s[result - 1] = 0;
  }

  return result;
}

uint64_t geene_adapt_lingdb_orth_visitor_New(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v16 = 0;
  result = geene_adapt_lingdb_generic_visitor_New(a1, a2, &v16);
  v15 = v16;
  if (!result)
  {
    *(v16 + 80) = geene_adapt_lingdb_orth_visitor_callback;
    *(v15 + 16) = a3;
    *(v15 + 44) = a4 == 1;
    *(v15 + 48) = a5;
    *(v15 + 56) = a6;
    *(v15 + 64) = a7;
  }

  *a8 = v15;
  return result;
}

uint64_t geene_adapt_lingdb_orth_visitor_callback(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v43 = 0;
  v44 = 4;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v8 = (*(*(a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v44, &v43);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *(a4 + 16);
    if ((v44 - 9) < 6 || v44 == 4)
    {
      v10 = (*(*(a4 + 8) + 104))(a1, a2, 1, 0, &v43 + 2);
      if ((v10 & 0x80000000) == 0)
      {
        v8 = (*(*(a4 + 8) + 184))(a1, a2, HIWORD(v43), 0, &v42);
        if ((v8 & 0x80000000) != 0 || !v42)
        {
          return v8;
        }

        v10 = (*(*(a4 + 8) + 176))(a1, a2, HIWORD(v43), 0, &v41, &v43);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = (*(*(a4 + 8) + 168))(a1, a2, *a3, 1, 1, &v40 + 2, &v43);
          if ((v10 & 0x80000000) == 0)
          {
            appended = (*(*(a4 + 8) + 168))(a1, a2, *a3, 2, 1, &v40, &v43);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }

            v12 = (v41 + HIWORD(v40));
            if (v9)
            {
              v13 = v40 - HIWORD(v40);
              v14 = cstdlib_strlen(v9);
              geene_adapt_lingdb_visitor_extractPunct(v12, v13, v9, v14, &v39, 0);
              v15 = v40 - HIWORD(v40);
              v16 = cstdlib_strlen(v9);
              geene_adapt_lingdb_visitor_extractPunct(v12, v15, v9, v16, &v38, 1);
            }

            if (*(a4 + 44) == 1)
            {
              v8 = 3221233673;
              v17 = *(a4 + 56);
              if (v17 > 126)
              {
                return v8;
              }

              v18 = HIWORD(v40);
              if (v9)
              {
                v19 = v40 - HIWORD(v40);
                v20 = cstdlib_strlen(v9);
                geene_adapt_lingdb_visitor_extractPunct(v12, v19, v9, v20, &v39, 0);
                v21 = v40 - HIWORD(v40);
                v22 = cstdlib_strlen(v9);
                geene_adapt_lingdb_visitor_extractPunct(v12, v21, v9, v22, &v38, 1);
                v18 = HIWORD(v40);
              }

              v23 = v39;
              v24 = heap_Alloc(*(*a4 + 8), 4 * (v40 - v18) + 4);
              if (!v24)
              {
                return 3221233674;
              }

              v25 = v24;
              if (v40 - (v38 + HIWORD(v40)) <= v23)
              {
                v26 = 0;
                v29 = 1;
              }

              else
              {
                v26 = 0;
                do
                {
                  NextUtf8Offset = utf8_GetNextUtf8Offset(v12, v23);
                  v28 = NextUtf8Offset - v23;
                  if (NextUtf8Offset - v23 != 1 || v12[v23] != 45)
                  {
                    cstdlib_memcpy(&v25[v26], &v12[v23], v28);
                    v26 += v28;
                  }

                  v23 = NextUtf8Offset;
                }

                while (v40 - (v38 + HIWORD(v40)) > NextUtf8Offset);
                v29 = 0;
              }

              v25[v26] = 0;
              v33 = cstdlib_strcmp(v25, "§");
              v34 = tokens_contained_puncs_only(v25, v29);
              v35 = *(a4 + 48);
              v36 = v35 + 20 * v17;
              if (v33 && v34)
              {
                *(v36 + 16) = 2;
              }

              else
              {
                *(v36 + 16) = 1;
                appended = geene_adapt_stream_AppendItemFromWordRecord(*(*(a4 + 24) + 8 * *(a4 + 32)), v25, v26, SHIWORD(v40));
                v35 = *(a4 + 48);
              }

              v37 = v35 + 20 * v17;
              *v37 = HIWORD(v40);
              *(v37 + 2) = v40;
              *(v37 + 8) = v38;
              *(v37 + 4) = v39;
              *(v37 + 12) = 0;
              ++*(a4 + 56);
              heap_Free(*(*a4 + 8), v25);
              return appended;
            }

            v30 = v40 - HIWORD(v40);
            v31 = (v41 + HIWORD(v40));
            if (v30 != v39)
            {
              v31 += v39;
              v30 = v40 - v38 - (v39 + HIWORD(v40));
            }

            return geene_adapt_stream_AppendItemFromWordRecord(*(*(a4 + 24) + 8 * *(a4 + 32)), v31, v30, SHIWORD(v40));
          }
        }
      }

      return v10;
    }
  }

  return v8;
}

uint64_t geene_adapt_lingdb_phon_visitor_New(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = 0;
  result = geene_adapt_lingdb_generic_visitor_New(a1, a2, &v14);
  v13 = v14;
  if (!result)
  {
    *(v14 + 80) = geene_adapt_lingdb_phon_visitor_callback;
  }

  *(v13 + 44) = a3 == 1;
  *(v13 + 48) = a4;
  *(v13 + 56) = a5;
  *(v13 + 64) = a6;
  *a7 = v13;
  return result;
}

uint64_t geene_adapt_lingdb_phon_visitor_callback(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v30 = 4;
  *&__n[1] = 0;
  __n[0] = 0;
  v8 = *(a4 + 56);
  v9 = *(a4 + 60);
  appended = (*(*(a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v30, __n + 2);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  if ((v30 - 9) >= 6 && v30 != 4)
  {
    return appended;
  }

  v12 = (*(*(a4 + 8) + 168))(a1, a2, *a3, 1, 1, __n, __n + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  appended = (*(*(a4 + 8) + 176))(a1, a2, *a3, 3, &__n[1], __n + 2);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v13 = HIWORD(__n[0]);
  if (HIWORD(__n[0]))
  {
    v14 = 0;
    do
    {
      if (*(*&__n[1] + v14) == 173)
      {
        *(*&__n[1] + v14) = 126;
        v13 = HIWORD(__n[0]);
      }

      ++v14;
    }

    while (v14 < v13);
    v15 = v13 + 1;
  }

  else
  {
    v15 = 1;
  }

  if (*(a4 + 44) != 1)
  {
    v25 = cstdlib_strstr(*&__n[1], "\\TQ\");
    if (v25)
    {
      v26 = v25;
      v27 = cstdlib_strlen(v25 + 4);
      cstdlib_memmove(v26, v26 + 4, v27 + 1);
    }

    return geene_adapt_stream_AppendItemFromWordRecord(*(*(a4 + 24) + 8 * *(a4 + 32)), *&__n[1], HIWORD(__n[0]), __n[0]);
  }

  v16 = heap_Alloc(*(*a4 + 8), v15);
  if (!v16)
  {
    return 3221233674;
  }

  v17 = v16;
  cstdlib_memcpy(v16, *&__n[1], HIWORD(__n[0]));
  v18 = HIWORD(__n[0]);
  if (HIWORD(__n[0]))
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = v17[v19];
      if ((v21 - 54) <= 0xFFFFFFFA)
      {
        v17[v20++] = v21;
        v18 = HIWORD(__n[0]);
      }

      ++v19;
    }

    while (v19 < v18);
  }

  v22 = cstdlib_strstr(v17, "\\TQ\");
  if (v22)
  {
    v23 = v22;
    v24 = cstdlib_strlen(v22 + 4);
    cstdlib_memmove(v23, v23 + 4, v24 + 1);
  }

  if (v9)
  {
    v8 = 0;
    *(a4 + 60) = 0;
  }

  if (*(*(a4 + 48) + 20 * v8 + 16) == 1)
  {
    appended = geene_adapt_stream_AppendItemFromWordRecord(*(*(a4 + 24) + 8 * *(a4 + 32)), v17, HIWORD(__n[0]), __n[0]);
  }

  *(a4 + 56) = v8 + 1;
  heap_Free(*(*a4 + 8), v17);
  return appended;
}

uint64_t geene_adapt_lingdb_punct_visitor_New(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v21 = 0;
  v16 = geene_adapt_lingdb_generic_visitor_New(a1, a2, &v21);
  if (v16)
  {
    v17 = v21;
  }

  else
  {
    v18 = heap_Alloc(*(a1 + 8), 16);
    if (!v18)
    {
      return 3221233664;
    }

    v19 = v21;
    *(v21 + 44) = a5 == 1;
    v19[6] = a6;
    v19[7] = a7;
    v19[8] = a8;
    *v18 = a4;
    v18[1] = a3;
    v17 = v21;
    *(v21 + 80) = geene_adapt_lingdb_punct_visitor_callback;
    *(v17 + 16) = v18;
  }

  *a9 = v17;
  return v16;
}

uint64_t geene_adapt_lingdb_punct_visitor_callback(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = *(a4 + 16);
  v9 = *(*(*v8 + 24) + 8 * *(a4 + 32));
  v52 = 0;
  v53 = 4;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  *&v46[1] = 0;
  v46[0] = 0;
  __s1 = 0;
  v44 = 0;
  v10 = *(a4 + 56);
  v11 = *(a4 + 64);
  cstdlib_memset(__b, 0, 0x80uLL);
  cstdlib_memset(__s, 0, 0x80uLL);
  cstdlib_memset(v55, 0, 0x80uLL);
  cstdlib_memset(__src, 0, 0x80uLL);
  appended = (*(*(a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v53, &v52);
  if ((appended & 0x80000000) == 0)
  {
    v13 = v8[1];
    if ((v53 - 9) < 6 || v53 == 4)
    {
      v14 = (*(*(a4 + 8) + 104))(a1, a2, 1, 0, &v52 + 2);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      appended = (*(*(a4 + 8) + 184))(a1, a2, HIWORD(v52), 0, &v51);
      if ((appended & 0x80000000) != 0 || !v51)
      {
        return appended;
      }

      v14 = (*(*(a4 + 8) + 176))(a1, a2, HIWORD(v52), 0, &v50, &v52);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = (*(*(a4 + 8) + 168))(a1, a2, *a3, 1, 1, &v49 + 2, &v52);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      appended = (*(*(a4 + 8) + 168))(a1, a2, *a3, 2, 1, &v49, &v52);
      if ((appended & 0x80000000) != 0)
      {
        return appended;
      }

      v43 = v11;
      v15 = v50;
      v16 = HIWORD(v49);
      if (v13)
      {
        v42 = v10;
        v17 = v49 - HIWORD(v49);
        v18 = cstdlib_strlen(v13);
        geene_adapt_lingdb_visitor_extractPunct((v15 + v16), v17, v13, v18, &v48, 0);
        v19 = v49 - HIWORD(v49);
        v20 = cstdlib_strlen(v13);
        v21 = v19;
        v10 = v42;
        geene_adapt_lingdb_visitor_extractPunct((v15 + v16), v21, v13, v20, &v47, 1);
      }

      v22 = v15;
      v51 = 0;
      v46[0] = 0;
      if (((*(*(a4 + 8) + 184))(a1, a2, *a3, 18, &v51) & 0x80000000) != 0)
      {
        v23 = v43;
      }

      else
      {
        v23 = v43;
        if (v51 == 1)
        {
          appended = (*(*(a4 + 8) + 176))(a1, a2, *a3, 18, &__s1, &v52);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }
        }
      }

      if ((!__s1 || cstdlib_strcmp(__s1, "external")) && (paramc_ParamGetInt(*(*a4 + 40), "nnpausingthresholdpercent", &v44) & 0x80000000) != 0 || (v51 = 0, ((*(*(a4 + 8) + 184))(a1, a2, *a3, 8, &v51) & 0x80000000) != 0) || v51 != 1 || (appended = (*(*(a4 + 8) + 168))(a1, a2, *a3, 8, 1, v46, &v52), (appended & 0x80000000) == 0))
      {
        v51 = 0;
        *&v46[1] = 0;
        if (((*(*(a4 + 8) + 184))(a1, a2, *a3, 14, &v51) & 0x80000000) != 0 || v51 != 1 || (appended = (*(*(a4 + 8) + 176))(a1, a2, *a3, 14, &v46[1], &v52), (appended & 0x80000000) == 0))
        {
          if (*(a4 + 44) != 1)
          {
            loc_ComputePunctFromNLU(*&v46[1], v22 + v16, v49 - HIWORD(v49), v47, __b, __s, HIWORD(v49), v46[0], v9);
            goto LABEL_34;
          }

          v24 = *(a4 + 48);
          v25 = (v24 + 20 * v10);
          if (v25[4] != 1)
          {
            goto LABEL_32;
          }

          if (v25[1])
          {
            if (v25[2])
            {
LABEL_32:
              loc_ComputPunctFromOrth((v22 + v16), v49 - HIWORD(v49), __b, __s);
              goto LABEL_34;
            }
          }

          else if (*(v24 + 20 * v10 + 8))
          {
            loc_ComputPunctFromOrth((v22 + v16), v49 - HIWORD(v49), v55, __src);
            cstdlib_strcpy(__s, __src);
            v24 = *(a4 + 48);
          }

          if (*(v24 + 20 * v10 + 4))
          {
            loc_ComputPunctFromOrth((v22 + v16), v49 - HIWORD(v49), v55, __src);
            cstdlib_strcpy(__b, v55);
            v24 = *(a4 + 48);
          }

          if (v10 >= 1)
          {
            v28 = v24 + 20 * v10;
            if (*(v28 - 4) == 2 && !*(v24 + 20 * v10 + 4) && !*(v28 - 8))
            {
              v29 = *(v28 - 20);
              v30 = (v50 + v29);
              v31 = *(v28 - 18);
              if (v31 - v29 != 1)
              {
                v30 = (v50 - *(v28 - 12) + v31);
              }

              map_to_start_puncs(__b, *v30);
            }

            if (v10 > 0x7E)
            {
              goto LABEL_34;
            }

            v24 = *(a4 + 48);
          }

          v32 = v24 + 20 * v10;
          if (*(v32 + 36) == 2 && !*(v32 + 32))
          {
            v39 = *(v32 + 20);
            v40 = v50;
            v41 = *(v32 + 22);
            v33 = 1;
            *(v32 + 32) = 1;
            map_to_end_puncs(v40 + v39, __s, v39, v41);
          }

          else
          {
            v33 = 0;
          }

          if (v10 <= 125)
          {
            v34 = *(a4 + 48) + 20 * v10;
            if (*(v34 + 56) != 1)
            {
              v35 = v33 ^ 1;
              if (*(v34 + 52))
              {
                v35 = 1;
              }

              if ((v35 & 1) == 0)
              {
                v36 = *(v34 + 40);
                v37 = v50;
                v38 = *(v34 + 42);
                *(v34 + 52) = 1;
                map_to_end_puncs(v37 + v36, __s, v36, v38);
              }
            }
          }

LABEL_34:
          v26 = cstdlib_strlen(__b);
          v58 = v26;
          __n = cstdlib_strlen(__s);
          cstdlib_memcpy(__n_1, __b, v26);
          cstdlib_memcpy(&__n_1[v58], __s, __n);
          if (v23)
          {
            v10 = 0;
            *(a4 + 64) = 0;
          }

          if (!*(a4 + 44) || *(*(a4 + 48) + 20 * v10 + 16) == 1)
          {
            appended = geene_adapt_stream_AppendItemFromWordRecord(*(*(a4 + 24) + 8 * *(a4 + 32)), &v58, v58 + __n + 2, SHIWORD(v49));
          }

          *(a4 + 56) = v10 + 1;
        }
      }
    }
  }

  return appended;
}

void *geene_adapt_lingdb_punct_visitor_Delete(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      heap_Free(*(*a1 + 8), v2);
    }
  }

  return geene_adapt_lingdb_generic_visitor_Delete(a1);
}

char *loc_ComputPunctFromOrth(unsigned __int8 *a1, unsigned int a2, char *__s1, char *a4)
{
  *__s1 = 0;
  *a4 = 0;
  v7 = *a1;
  v8 = &a1[a2];
  v9 = *(v8 - 1);
  if (*__s1)
  {
    cstdlib_strcat(__s1, "|");
    if (*a4)
    {
      cstdlib_strcat(a4, "|");
    }
  }

  if (a2 >= 4)
  {
    v10 = *(v8 - 3);
    if (v10 <= 0x2B)
    {
      if (*(v8 - 3) > 0x28u)
      {
        if (v10 == 41)
        {
          v11 = "PAIRED_PARENTH";
          goto LABEL_27;
        }

        if (v10 == 42)
        {
          v11 = "IDEOGRAPHIC_COMMA";
          goto LABEL_27;
        }
      }

      else
      {
        if (v10 == 34)
        {
          v11 = "QUOTE";
          goto LABEL_27;
        }

        if (v10 == 39)
        {
          v11 = "SQUOTE";
          goto LABEL_27;
        }
      }
    }

    else if (*(v8 - 3) <= 0x5Cu)
    {
      if (v10 == 44)
      {
        v11 = "COMMA";
        goto LABEL_27;
      }

      if (v10 == 58)
      {
        v11 = "COLON";
        goto LABEL_27;
      }
    }

    else
    {
      switch(v10)
      {
        case ']':
          v11 = "PAIRED_SQUAREBRACKET";
          goto LABEL_27;
          v11 = "ELLIPSIS";
          goto LABEL_27;
        case '~':
          v11 = "TILDE";
LABEL_27:
          cstdlib_strcat(a4, v11);
          goto LABEL_28;
      }
    }

    v11 = "";
    goto LABEL_27;
  }

LABEL_28:
  if (*a4)
  {
    cstdlib_strcat(a4, "|");
  }

  if (a2 >= 3)
  {
    v12 = *(v8 - 2);
    if (v12 > 0x39)
    {
      if (*(v8 - 2) <= 0x5Cu)
      {
        if (v12 == 58)
        {
          v13 = "COLON";
          goto LABEL_55;
        }

        if (v12 == 59)
        {
          v13 = "SEMI_COLON";
          goto LABEL_55;
        }
      }

      else
      {
        switch(v12)
        {
          case ']':
            v13 = "PAIRED_SQUAREBRACKET";
            goto LABEL_55;
            v13 = "ELLIPSIS";
            goto LABEL_55;
          case '~':
            v13 = "TILDE";
            goto LABEL_55;
        }
      }
    }

    else if (*(v8 - 2) <= 0x28u)
    {
      if (v12 == 34)
      {
        v13 = "QUOTE";
        goto LABEL_55;
      }

      if (v12 == 39)
      {
        v13 = "SQUOTE";
        goto LABEL_55;
      }
    }

    else
    {
      switch(v12)
      {
        case ')':
          v13 = "PAIRED_PARENTH";
          goto LABEL_55;
        case '*':
          v13 = "IDEOGRAPHIC_COMMA";
          goto LABEL_55;
        case ',':
          v13 = "COMMA";
LABEL_55:
          cstdlib_strcat(a4, v13);
          goto LABEL_56;
      }
    }

    v13 = "";
    goto LABEL_55;
  }

LABEL_56:
  if (*a4)
  {
    cstdlib_strcat(a4, "|");
  }

  if (v9 > 45)
  {
    if (v9 > 90)
    {
      if (v9 > 95)
      {
        if (v9 == 96)
        {
          v14 = "ELLIPSIS";
          goto LABEL_94;
        }

        if (v9 == 126)
        {
          v14 = "TILDE";
          goto LABEL_94;
        }
      }

      else
      {
        if (v9 == 91)
        {
          v14 = "SQUAREBRACKET";
          goto LABEL_94;
        }

        if (v9 == 93)
        {
          v14 = "PAIRED_SQUAREBRACKET";
          goto LABEL_94;
        }
      }
    }

    else if (v9 > 58)
    {
      if (v9 == 59)
      {
        v14 = "SEMI_COLON";
        goto LABEL_94;
      }

      if (v9 == 63)
      {
        v14 = "QUESTION_MARK";
        goto LABEL_94;
      }
    }

    else
    {
      if (v9 == 46)
      {
        v14 = "FULL_STOP";
        goto LABEL_94;
      }

      if (v9 == 58)
      {
        v14 = "COLON";
        goto LABEL_94;
      }
    }

    goto LABEL_92;
  }

  if (v9 <= 39)
  {
    switch(v9)
    {
      case '!':
        v14 = "EXCLAMATION_MARK";
        goto LABEL_94;
      case '""':
        v14 = "QUOTE";
        goto LABEL_94;
      case '\'':
        v14 = "SQUOTE";
        goto LABEL_94;
    }

LABEL_92:
    v14 = "";
    goto LABEL_94;
  }

  if (v9 > 41)
  {
    if (v9 == 42)
    {
      v14 = "IDEOGRAPHIC_COMMA";
      goto LABEL_94;
    }

    if (v9 == 44)
    {
      v14 = "COMMA";
      goto LABEL_94;
    }

    goto LABEL_92;
  }

  if (v9 == 40)
  {
    v14 = "PARENTH";
  }

  else
  {
    v14 = "PAIRED_PARENTH";
  }

LABEL_94:
  result = cstdlib_strcat(a4, v14);
  if (a2 < 2)
  {
    return result;
  }

  if (v7 > 40)
  {
    switch(v7)
    {
      case ')':
        v16 = "PAIRED_PARENTH";
        goto LABEL_110;
      case '[':
        v16 = "SQUAREBRACKET";
        goto LABEL_110;
      case ']':
        v16 = "PAIRED_SQUAREBRACKET";
        goto LABEL_110;
    }

LABEL_107:
    v16 = "";
    goto LABEL_110;
  }

  if (v7 == 34)
  {
    v16 = "QUOTE";
    goto LABEL_110;
  }

  if (v7 == 39)
  {
    v16 = "SQUOTE";
    goto LABEL_110;
  }

  if (v7 != 40)
  {
    goto LABEL_107;
  }

  v16 = "PARENTH";
LABEL_110:

  return cstdlib_strcat(__s1, v16);
}

char *loc_ComputePunctFromNLU(char *result, uint64_t a2, unsigned int a3, unsigned int a4, char *a5, char *__s, int a7, int a8, uint64_t a9)
{
  v15 = result;
  *&__n[1] = 0;
  *&__n[5] = result;
  __n[0] = 0;
  *a5 = 0;
  *__s = 0;
  if (result)
  {
    do
    {
      result = hlp_NLUStrFind(result, "S_PUNC", &__n[5], __n);
      if (!result)
      {
        break;
      }

      v17 = cstdlib_strlen(a5);
      v18 = __n[0];
      if (v17 + __n[0] + 2 <= 0x7F)
      {
        if (*a5)
        {
          cstdlib_strcat(a5, "|");
          v18 = __n[0];
        }

        cstdlib_strncat(a5, *&__n[5], v18);
      }

      result = *&__n[5];
    }

    while (*&__n[5]);
    *&__n[5] = v15;
    if (v15)
    {
      v19 = v15;
      do
      {
        if (!hlp_NLUStrFind(v19, "E_PUNC", &__n[5], __n))
        {
          break;
        }

        v20 = cstdlib_strlen(__s);
        v21 = __n[0];
        if (v20 + __n[0] + 2 <= 0x7F)
        {
          if (*__s)
          {
            cstdlib_strcat(__s, "|");
            v21 = __n[0];
          }

          cstdlib_strncat(__s, *&__n[5], v21);
        }

        v19 = *&__n[5];
      }

      while (*&__n[5]);
      hlp_NLUStrFind(v15, "PUNC", &__n[5], __n);
      result = *&__n[5];
      if (*&__n[5])
      {
        v22 = cstdlib_strlen(*&__n[5]);
        result = cstdlib_strlen(__s);
        if (&result[v22 + 2] <= 0x7F)
        {
          if (*__s)
          {
            cstdlib_strcat(__s, "|");
          }

          result = cstdlib_strncat(__s, *&__n[5], __n[0]);
          goto LABEL_38;
        }
      }
    }
  }

  if (*(a2 + a3 - a4) != 44)
  {
    if (!a8)
    {
      goto LABEL_38;
    }

    v26 = cstdlib_strlen(__s);
    result = cstdlib_strlen("|COMMA");
    if (&result[v26 + 1] > 0x7F)
    {
      goto LABEL_38;
    }

    if (*__s)
    {
      cstdlib_strcat(__s, "|");
    }

    v27 = "COMMA";
LABEL_37:
    result = cstdlib_strcat(__s, v27);
    goto LABEL_38;
  }

  v31 = 0;
  result = geene_adapt_stream_GetNItems(a9);
  if (result)
  {
    v23 = 0;
    v24 = a3 - a4 + a7;
    while (1)
    {
      Item = geene_adapt_stream_GetItem(a9, v23, &v31);
      if (*(Item + 64) <= v24 && *(Item + 68) > v24)
      {
        break;
      }

      ++v23;
      result = geene_adapt_stream_GetNItems(a9);
      if (v23 >= result)
      {
        goto LABEL_38;
      }
    }

    v28 = cstdlib_strlen(__s);
    result = cstdlib_strlen("|TNCOMMA");
    if (&result[v28 + 1] <= 0x7F)
    {
      if (*__s)
      {
        cstdlib_strcat(__s, "|");
      }

      v27 = "TNCOMMA";
      goto LABEL_37;
    }
  }

LABEL_38:
  if (v15)
  {
    if (a3 >= 2 && *(a2 + a3) == 95)
    {
      hlp_NLUStrFind(v15, "S_COMP", &__n[5], __n);
      result = hlp_NLUStrFind(v15, "I_COMP", &__n[1], __n);
      if (*&__n[1] != 0)
      {
        v29 = cstdlib_strlen(__s);
        result = cstdlib_strlen("|HYPHEN_LINK");
        if (&result[v29 + 1] <= 0x7F)
        {
          if (*__s)
          {
            cstdlib_strcat(__s, "|");
          }

          return cstdlib_strcat(__s, "HYPHEN_LINK");
        }
      }
    }
  }

  return result;
}

uint64_t geene_adapt_lingdb_generic_visitor_New(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = 3221233674;
  v7 = heap_Calloc(*(a1 + 8), 1, 96);
  if (v7)
  {
    v8 = heap_Calloc(*(a1 + 8), 256, 8);
    *(v7 + 24) = v8;
    if (v8)
    {
      v6 = 0;
      *v7 = a1;
      *(v7 + 8) = a2;
      *(v7 + 40) = 256;
      *(v7 + 72) = geene_adapt_lingdb_generic_visitor_preCallback;
      *(v7 + 88) = geene_adapt_lingdb_generic_visitor_postCallback;
    }
  }

  *a3 = v7;
  return v6;
}

uint64_t geene_adapt_lingdb_generic_visitor_preCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v5 = *(a4 + 40);
  if (v6 + 1 <= v5)
  {
    v7 = *(a4 + 24);
  }

  else
  {
    v7 = heap_Realloc(*(*a4 + 8), *(a4 + 24), 16 * v5);
    *(a4 + 24) = v7;
    if (!v7)
    {
      return 3221233674;
    }

    v6 = *(a4 + 36);
    *(a4 + 40) *= 2;
  }

  *(a4 + 32) = v6;
  result = geene_adapt_stream_New(*a4, (v7 + 8 * v6));
  if (!result)
  {
    ++*(a4 + 36);
  }

  return result;
}

void *geene_adapt_lingdb_generic_visitor_ClearStreams(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      if (*(result + 9))
      {
        v3 = 0;
        do
        {
          result = geene_adapt_stream_Delete(*(v1[3] + 8 * v3++));
        }

        while (v3 < *(v1 + 9));
        v2 = v1[3];
      }

      else
      {
        v3 = 0;
      }

      *(v2 + 8 * v3) = 0;
      *(v1 + 9) = 0;
    }
  }

  return result;
}

void *geene_adapt_lingdb_generic_visitor_Delete(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      if (*(result + 9))
      {
        v3 = 0;
        do
        {
          geene_adapt_stream_Delete(*(*(v1 + 24) + 8 * v3++));
        }

        while (v3 < *(v1 + 36));
        v2 = *(v1 + 24);
      }

      heap_Free(*(*v1 + 8), v2);
    }

    v4 = *(*v1 + 8);

    return heap_Free(v4, v1);
  }

  return result;
}

uint64_t geene_adapt_lingdb_visitor_extractPunct(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int *a5, int a6)
{
  v10 = a2;
  v12 = Utf8_LengthInUtf8chars(a1, a2);
  v13 = Utf8_LengthInUtf8chars(a3, a4);
  if (a6)
  {
    v14 = &a1[v10 - 1];
    if (v12)
    {
      v31 = v10;
      do
      {
        v15 = 0;
        if (v13)
        {
          v16 = a3;
          while (1)
          {
            v17 = utf8_determineUTF8CharLength(*v14);
            if (v17 == utf8_determineUTF8CharLength(*v16))
            {
              v18 = utf8_determineUTF8CharLength(*v14);
              if (!cstdlib_strncmp(v14, v16, v18))
              {
                break;
              }
            }

            v16 = &a3[utf8_GetNextUtf8OffsetLimit(a3, (v16 - a3), a4)];
            if (v13 == ++v15)
            {
              LODWORD(v10) = v31;
              goto LABEL_28;
            }
          }

          LODWORD(v10) = v31;
        }

        if (v15 == v13)
        {
          break;
        }

        PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(a1, v14 - a1, v10);
        if (PreviousUtf8OffsetLimit != -1)
        {
          v14 = &a1[PreviousUtf8OffsetLimit];
        }

        --v12;
      }

      while (v12);
    }

LABEL_28:
    v26 = utf8_determineUTF8CharLength(*v14) + v14 - a1;
    v27 = v10 >= v26;
    v28 = v10 - v26;
    if (!v27)
    {
      v28 = 0;
    }
  }

  else
  {
    if (v12)
    {
      v20 = 0;
      v21 = a1;
      v30 = a5;
      v32 = v10;
      while (1)
      {
        v22 = 0;
        if (v13)
        {
          v23 = a3;
          while (1)
          {
            v24 = utf8_determineUTF8CharLength(*v21);
            if (v24 == utf8_determineUTF8CharLength(*v23))
            {
              v25 = utf8_determineUTF8CharLength(*v21);
              if (!cstdlib_strncmp(v21, v23, v25))
              {
                break;
              }
            }

            v23 = &a3[utf8_GetNextUtf8OffsetLimit(a3, (v23 - a3), a4)];
            if (v13 == ++v22)
            {
              goto LABEL_31;
            }
          }

          v10 = v32;
        }

        if (v22 == v13)
        {
          break;
        }

        v21 = &a1[utf8_GetNextUtf8OffsetLimit(a1, (v21 - a1), v10)];
        ++v20;
        a5 = v30;
        if (v20 == v12)
        {
          goto LABEL_33;
        }
      }

LABEL_31:
      a5 = v30;
    }

    else
    {
      LODWORD(v21) = a1;
    }

LABEL_33:
    v28 = v21 - a1;
  }

  *a5 = v28;
  return 0;
}

uint64_t geene_adapt_meta_stream_ItemToBuff(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 3221233671;
  if (a4 == 19)
  {
    __src = 0;
    v29 = &a9;
    v13 = 76;
    v14 = 0x10u;
    do
    {
      v15 = *(&unk_279DB61C8 + v14);
      if (v15 == 2)
      {
        v16 = v29++;
        v13 += cstdlib_strlen(*v16);
      }

      else if (v15 <= 1)
      {
        v13 += 4;
        ++v29;
      }

      v14 += 24;
    }

    while (v14 != 472);
    v17 = heap_Alloc(*(a1 + 8), v13);
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = (v17 + 76);
      v29 = &a9;
      v21 = &dword_279DB61D8;
      do
      {
        v23 = *v21;
        v21 += 6;
        v22 = v23;
        if (v23 == 2)
        {
          v25 = v29++;
          v26 = *v25;
          __src = cstdlib_strlen(*v25);
          cstdlib_memcpy((v18 + v19), &__src, 4uLL);
          cstdlib_memcpy(v20, v26, __src);
          v20 += __src;
        }

        else if (v22 <= 1)
        {
          v24 = v29++;
          v28 = *v24;
          __src = 1;
          cstdlib_memcpy((v18 + v19), &__src, 4uLL);
          cstdlib_memcpy(v20, &v28, 4uLL);
          v20 += 4;
        }

        v19 += 4;
      }

      while (v19 != 76);
      v9 = 0;
      *a2 = v18;
      *a3 = v13;
    }

    else
    {
      return 3221233674;
    }
  }

  return v9;
}

uint64_t geene_adapt_stream_New(uint64_t a1, uint64_t *a2)
{
  v4 = 3221233674;
  v5 = heap_Calloc(*(a1 + 8), 1, 40);
  if (v5)
  {
    v6 = heap_Alloc(*(a1 + 8), 1024);
    *(v5 + 16) = v6;
    if (v6)
    {
      v7 = heap_Alloc(*(a1 + 8), 2048);
      *(v5 + 8) = v7;
      if (v7)
      {
        v4 = 0;
        *v5 = a1;
        *(v5 + 24) = xmmword_26ED4B4D0;
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *(v5 + 8);
      if (v8)
      {
        heap_Free(*(a1 + 8), v8);
      }
    }

    v9 = *(v5 + 16);
    if (v9)
    {
      heap_Free(*(a1 + 8), v9);
    }

    heap_Free(*(a1 + 8), v5);
    v5 = 0;
  }

LABEL_10:
  *a2 = v5;
  return v4;
}

void *geene_adapt_stream_Delete(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      heap_Free(*(*result + 8), v2);
    }

    v3 = v1[1];
    if (v3)
    {
      heap_Free(*(*v1 + 8), v3);
    }

    v4 = *(*v1 + 8);

    return heap_Free(v4, v1);
  }

  return result;
}

uint64_t geene_adapt_stream_AppendItemFromWordRecord(uint64_t a1, void *__src, size_t __n, __int16 a4)
{
  if (!a1)
  {
    return 3221233671;
  }

  v5 = __n;
  while (1)
  {
    while (1)
    {
      v8 = *(a1 + 24);
      if (v8 != *(a1 + 28) - 1)
      {
        break;
      }

      result = geene_adapt_stream_DoubleItems(a1);
      if (result)
      {
        return result;
      }
    }

    v10 = *(a1 + 32);
    if (*(a1 + 36) >= v10 + v5)
    {
      break;
    }

    result = geene_adapt_stream_DoubleData(a1);
    if (result)
    {
      return result;
    }
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 8) + 16 * v8;
  *v12 = v10;
  *(v12 + 4) = v5;
  *(v12 + 8) = a4;
  *(v12 + 12) = 0;
  cstdlib_memcpy((v11 + v10), __src, v5);
  result = 0;
  ++*(a1 + 24);
  *(a1 + 32) += v5;
  return result;
}

uint64_t geene_adapt_stream_DoubleItems(uint64_t a1)
{
  v2 = heap_Realloc(*(*a1 + 8), *(a1 + 8), 16 * (2 * *(a1 + 28)));
  *(a1 + 8) = v2;
  if (!v2)
  {
    return 3221233674;
  }

  result = 0;
  *(a1 + 28) *= 2;
  return result;
}

uint64_t geene_adapt_stream_DoubleData(uint64_t a1)
{
  v2 = heap_Realloc(*(*a1 + 8), *(a1 + 16), (2 * *(a1 + 36)));
  *(a1 + 16) = v2;
  if (!v2)
  {
    return 3221233674;
  }

  result = 0;
  *(a1 + 36) *= 2;
  return result;
}

uint64_t geene_adapt_stream_InsertItemFromMarker(uint64_t a1, void *__src, size_t __n, unsigned int a4)
{
  if (!a1)
  {
    return 3221233671;
  }

  v5 = __n;
  while (1)
  {
    while (1)
    {
      v8 = *(a1 + 24);
      if (v8 != *(a1 + 28) - 1)
      {
        break;
      }

      result = geene_adapt_stream_DoubleItems(a1);
      if (result)
      {
        return result;
      }
    }

    v10 = *(a1 + 32);
    if (*(a1 + 36) >= v10 + v5)
    {
      break;
    }

    result = geene_adapt_stream_DoubleData(a1);
    if (result)
    {
      return result;
    }
  }

  if (v8)
  {
    v11 = 0;
    v12 = (*(a1 + 8) + 12);
    while (1)
    {
      v13 = *(v12 - 2);
      if (v13 >= a4)
      {
        break;
      }

      ++v11;
      v12 += 4;
      if (v8 == v11)
      {
LABEL_14:
        LODWORD(v11) = *(a1 + 24);
        goto LABEL_21;
      }
    }

    if (v13 == a4 && v8 > v11)
    {
      while (*v12 == 1 && *(v12 - 2) == a4)
      {
        ++v11;
        v12 += 4;
        if (v8 == v11)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 == v8)
  {
LABEL_21:
    v15 = v11;
    v16 = *(a1 + 32);
    v17 = *(a1 + 32);
    v18 = v5;
  }

  else
  {
    v16 = *(*(a1 + 8) + 16 * v11);
    v15 = v11;
    v17 = *(*(a1 + 8) + 16 * v11);
    v18 = v5;
    cstdlib_memmove((*(a1 + 16) + v16 + v5), (*(a1 + 16) + v16), (v10 - v16));
    v21 = *(a1 + 24);
    if (v21 - 1 >= v11)
    {
      v22 = *(a1 + 8);
      do
      {
        *(v22 + 16 * v21) = *(v22 + 16 * (v21 - 1));
        v22 = *(a1 + 8);
        *(v22 + 16 * v21) += v5;
        v23 = v21 - 2;
        --v21;
      }

      while (v23 >= v11);
    }
  }

  v19 = *(a1 + 16);
  v20 = *(a1 + 8) + 16 * v15;
  *v20 = v17;
  *(v20 + 4) = v5;
  *(v20 + 8) = a4;
  *(v20 + 12) = 1;
  cstdlib_memcpy((v19 + v16), __src, v18);
  result = 0;
  ++*(a1 + 24);
  *(a1 + 32) += v5;
  return result;
}

uint64_t geene_adapt_stream_GetItem(uint64_t result, unsigned int a2, _DWORD *a3)
{
  if (result)
  {
    if (*(result + 24) <= a2)
    {
      return 0;
    }

    else
    {
      v3 = *(result + 16);
      v4 = (*(result + 8) + 16 * a2);
      *a3 = v4[1];
      return v3 + *v4;
    }
  }

  return result;
}

uint64_t geene_adapt_stream_GetNItems(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t geene_adapt_lingdb_tn_visitor_New(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = 0;
  result = geene_adapt_lingdb_generic_visitor_New(a1, a2, &v6);
  v5 = v6;
  if (!result)
  {
    *(v6 + 80) = geene_adapt_lingdb_tn_visitor_callback;
  }

  *a3 = v5;
  return result;
}

uint64_t geene_adapt_lingdb_tn_visitor_callback(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = 4;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  *__dst = 0u;
  v14 = 0u;
  __src = 0;
  v10 = 0;
  v9 = 0;
  result = (*(*(a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v12, &v10 + 2);
  if ((result & 0x80000000) == 0 && v12 == 6)
  {
    result = (*(*(a4 + 8) + 176))(a1, a2, *a3, 4, &__src, &v10 + 2);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a4 + 8) + 168))(a1, a2, *a3, 1, 1, &v10, &v10 + 2);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a4 + 8) + 168))(a1, a2, *a3, 2, 1, &v9, &v10 + 2);
        if ((result & 0x80000000) == 0)
        {
          cstdlib_strcpy(__dst, __src);
          LODWORD(v17) = v10;
          HIDWORD(v17) = v9;
          return geene_adapt_stream_AppendItemFromWordRecord(*(*(a4 + 24) + 8 * *(a4 + 32)), __dst, 0x48uLL, v10);
        }
      }
    }
  }

  return result;
}

uint64_t geene_adapt_lingdb_pt_visitor_New(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = 0;
  result = geene_adapt_lingdb_generic_visitor_New(a1, a2, &v6);
  v5 = v6;
  if (!result)
  {
    *(v6 + 80) = geene_adapt_lingdb_pt_visitor_callback;
  }

  *a3 = v5;
  return result;
}

uint64_t geene_adapt_lingdb_pt_visitor_callback(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = 4;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  *__dst = 0u;
  v14 = 0u;
  __src = 0;
  v10 = 0;
  v9 = 0;
  result = (*(*(a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v12, &v10 + 2);
  if ((result & 0x80000000) == 0 && v12 == 15)
  {
    result = (*(*(a4 + 8) + 176))(a1, a2, *a3, 4, &__src, &v10 + 2);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a4 + 8) + 168))(a1, a2, *a3, 1, 1, &v10, &v10 + 2);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a4 + 8) + 168))(a1, a2, *a3, 2, 1, &v9, &v10 + 2);
        if ((result & 0x80000000) == 0)
        {
          cstdlib_strcpy(__dst, __src);
          LODWORD(v17) = v10;
          HIDWORD(v17) = v9;
          return geene_adapt_stream_AppendItemFromWordRecord(*(*(a4 + 24) + 8 * *(a4 + 32)), __dst, 0x48uLL, v10);
        }
      }
    }
  }

  return result;
}

uint64_t geene_adapt_lingdb_meta_visitor_New(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v23 = 0;
  v22 = 0;
  v17 = geene_adapt_lingdb_generic_visitor_New(a1, a2, &v23);
  if (v17)
  {
    v18 = v23;
  }

  else
  {
    v19 = heap_Alloc(*(a1 + 8), 72);
    if (!v19)
    {
      return 3221233664;
    }

    v20 = v19;
    *v19 = a4;
    *(v19 + 8) = a5;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = a3;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    *(v19 + 40) = 80;
    if ((paramc_ParamGetUInt(*(a1 + 40), "volume", &v22) & 0x80000000) == 0)
    {
      v20[10] = v22;
    }

    v20[13] = loc_GetProsodyParam(a1, "timbre", "timbre_baseline", 200);
    v20[11] = loc_GetProsodyParam(a1, "pitch", "pitch_baseline", 200);
    v20[12] = loc_GetProsodyParam(a1, "rate", "rate_baseline", 400);
    v18 = v23;
    *(v23 + 44) = a6 == 1;
    v18[6] = a7;
    v18[7] = a9;
    v18[8] = a10;
    v18[9] = geene_adapt_lingdb_meta_visitor_preCallback;
    v18[10] = geene_adapt_lingdb_meta_visitor_callback;
    v18[11] = geene_adapt_lingdb_meta_visitor_postCallback;
    v18[2] = v20;
  }

  *a11 = v18;
  return v17;
}

uint64_t loc_GetProsodyParam(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = 0;
  if ((paramc_ParamGetUInt(*(a1 + 40), a3, &v9 + 1) & 0x80000000) != 0)
  {
    HIDWORD(v9) = 100;
    paramc_ParamSetUInt(*(a1 + 40), a3, 0x64u);
  }

  if ((paramc_ParamGetUInt(*(a1 + 40), a2, &v9) & 0x80000000) != 0)
  {
    LODWORD(v9) = 100;
    paramc_ParamSetUInt(*(a1 + 40), a2, 0x64u);
  }

  return MapProsodyValue_Scaling(50, 100, a4, SHIDWORD(v9), v9);
}

uint64_t geene_adapt_lingdb_meta_visitor_preCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v14 = 0;
  v8 = geene_adapt_lingdb_generic_visitor_preCallback(a1, a2, a3, a4);
  if ((v8 & 0x80000000) == 0)
  {
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1, a2, NullHandle, v10))
    {
      v15 = 0;
      v13 = 0;
      v12 = (*(*(a4 + 8) + 104))(a1, a2, 1, 0, &v15 + 2);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      else
      {
        v8 = (*(*(a4 + 8) + 168))(a1, a2, HIWORD(v15), 3, 1, &v13, &v15);
        if ((v8 & 0x80000000) == 0 && !v13)
        {
          v8 = (*(*(a4 + 8) + 176))(a1, a2, HIWORD(v15), 1, &v14, &v15);
          if ((v8 & 0x80000000) == 0)
          {
            *(v7 + 64) = v15;
            *(v7 + 56) = v14;
          }
        }
      }
    }
  }

  return v8;
}

uint64_t geene_adapt_lingdb_meta_visitor_callback(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v108 = *MEMORY[0x277D85DE8];
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  v10 = *(a4 + 32);
  v11 = *(*(*v9 + 24) + 8 * v10);
  v12 = *(*(*(v9 + 8) + 24) + 8 * v10);
  __n = 0x400000000;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v97 = 0;
  v98 = 0;
  __src = 0;
  v96 = 0;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  v91 = "none";
  v90 = -1;
  v13 = *(a4 + 56);
  v14 = *(a4 + 68);
  Str = (*(v8 + 168))(a1, a2, *a3, 0, 1, &__n + 4, &__n);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v89 = a3;
  v87 = v14;
  v88 = v13;
  if ((HIDWORD(__n) - 9) >= 6 && HIDWORD(__n) != 4)
  {
    return Str;
  }

  v16 = (*(*(a4 + 8) + 168))(a1, a2, *a3, 1, 1, &v101, &__n);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = (*(*(a4 + 8) + 168))(a1, a2, *a3, 2, 1, &v100, &__n);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = v101;
  v18 = v100;
  *v106 = 0;
  v19 = 0;
  if (geene_adapt_stream_GetNItems(v11))
  {
    do
    {
      Item = geene_adapt_stream_GetItem(v11, v19, v106);
      v21 = Item;
      v22 = *(Item + 64);
      if (v22 <= v17 && *(Item + 68) >= v18)
      {
        break;
      }

      if (v22 >= v17 && v22 <= v18)
      {
        break;
      }

      v24 = *(Item + 68);
      if (v24 >= v17 && v24 <= v18)
      {
        break;
      }

      ++v19;
    }

    while (v19 < geene_adapt_stream_GetNItems(v11));
  }

  else
  {
    v21 = 0;
  }

  if (v19 >= geene_adapt_stream_GetNItems(v11))
  {
    v26 = "normal";
  }

  else
  {
    v26 = v21;
  }

  cstdlib_strcpy(__dst, v26);
  v27 = v101;
  v28 = v100;
  *__str = 0;
  v29 = 0;
  if (geene_adapt_stream_GetNItems(v12))
  {
    do
    {
      v30 = geene_adapt_stream_GetItem(v12, v29, __str);
      v31 = v30;
      if (*(v30 + 64) <= v27 && *(v30 + 68) >= v28)
      {
        break;
      }

      ++v29;
    }

    while (v29 < geene_adapt_stream_GetNItems(v12));
  }

  else
  {
    v31 = 0;
  }

  if (v29 >= geene_adapt_stream_GetNItems(v12))
  {
    v32 = "P";
  }

  else
  {
    v32 = v31;
  }

  cstdlib_strcpy(v106, v32);
  v33 = *a4;
  v34 = *(v9 + 56);
  v35 = *(v9 + 64);
  v36 = v101;
  if (*(v9 + 24))
  {
    Str = 0;
  }

  else
  {
    Str = geene_adapt_common_DuplicateString_FreeFirst(*a4, "", (v9 + 24));
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }
  }

  if (*(v9 + 32) || (Str = geene_adapt_common_DuplicateString_FreeFirst(v33, "", (v9 + 32)), (Str & 0x80000000) == 0))
  {
    if (v35 && *v34 == 0x4000)
    {
      v36 += v34[3];
    }

    v37 = (v9 + 40);
    v38 = (v9 + 44);
    v39 = (v9 + 48);
    v40 = *(v9 + 68);
    if (v40 < v35)
    {
      while (1)
      {
        v41 = &v34[8 * v40];
        if (v36 < v41[3])
        {
LABEL_56:
          if ((Str & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

          return Str;
        }

        v42 = *v41;
        if (*v41 > 17)
        {
          break;
        }

        v43 = v38;
        if (v42 == 16)
        {
          goto LABEL_54;
        }

        if (v42 == 17)
        {
          v43 = (v9 + 52);
LABEL_54:
          *v43 = v41[6];
        }

LABEL_55:
        *(v9 + 68) = ++v40;
        if (v40 >= v35)
        {
          goto LABEL_56;
        }
      }

      v43 = v39;
      if (v42 != 18)
      {
        v43 = v37;
        if (v42 != 24)
        {
          if (v42 == 60)
          {
            Str = loc_ComputeStyleFieldsFromStyleMarkerArg(v33, *(v41 + 3), (v9 + 24), (v9 + 32));
            if ((Str & 0x80000000) != 0)
            {
              return Str;
            }

            v40 = *(v9 + 68);
            v38 = (v9 + 44);
            v39 = (v9 + 48);
            v37 = (v9 + 40);
          }

          goto LABEL_55;
        }
      }

      goto LABEL_54;
    }

LABEL_57:
    v44 = *(v9 + 56);
    v45 = *(v9 + 64);
    __str[0] = 0;
    if (v45 && *v44 == 0x4000)
    {
      v46 = 0;
      v47 = v44[3];
      v48 = v47 + v101;
      v49 = v47 + v100;
      v50 = -1;
      v51 = v44;
      do
      {
        if (*v51 == 1)
        {
          v52 = v51[3];
          if (v52 > v48)
          {
            break;
          }

          if (v50 == -1 || v44[8 * v50 + 3] != v52)
          {
            v50 = v46;
          }
        }

        ++v46;
        v51 += 8;
      }

      while (v45 != v46);
      if (v50 != -1)
      {
        v53 = &v44[8 * v50];
        v54 = v53[1];
        v55 = v53[2] + v54;
        if (v50 + 1 < v45)
        {
          v56 = ~v50 + v45;
          v57 = v53 + 11;
          do
          {
            if (*(v57 - 3) == 1)
            {
              if (v49 <= *v57)
              {
                break;
              }

              v55 = *(v57 - 1) + *(v57 - 2);
            }

            v57 += 8;
            --v56;
          }

          while (v56);
        }

        snprintf(__str, 0x14uLL, "%u:%u", v54, v55);
      }
    }

    v16 = (*(*(a4 + 8) + 104))(a1, a2, 1, 0, &__n + 2);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v16 = (*(*(a4 + 8) + 176))(a1, a2, WORD1(__n), 0, &v98, &__n);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v58 = *(v9 + 16);
    v59 = v101;
    v60 = v100;
    LODWORD(v104) = 0;
    *v103 = 0;
    v61 = (v98 + v101);
    if (v58)
    {
      v62 = cstdlib_strlen(v58);
      geene_adapt_lingdb_visitor_extractPunct(v61, (v60 - v59), v58, v62, &v104, 0);
      v63 = cstdlib_strlen(v58);
      geene_adapt_lingdb_visitor_extractPunct(v61, (v60 - v59), v58, v63, v103, 1);
      v64 = v104;
      v65 = *v103;
    }

    else
    {
      v65 = 0;
      v64 = 0;
    }

    v66 = &v61[v64];
    v67 = v60 - (v65 + v64 + v59);
    if (Utf8_LengthInUtf8chars(v66, v67) == 1)
    {
      utf8_BelongsToSet(0x12u, v66, 0, v67);
    }

    if (((*(*(a4 + 8) + 184))(a1, a2, *v89, 14, &v101 + 2) & 0x80000000) == 0 && HIWORD(v101) == 1)
    {
      v16 = (*(*(a4 + 8) + 176))(a1, a2, *v89, 14, &v97, &__n);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      loc_ComputeCompoundField(v97);
    }

    v16 = (*(*(a4 + 8) + 176))(a1, a2, *v89, 9, &v96, &__n);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v68 = *a4;
    v69 = v96;
    v104 = 0;
    Str = paramc_ParamGetStr(*(v68 + 40), "langcode", &v104);
    if ((Str & 0x80000000) != 0 || !v104)
    {
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }
    }

    else if (cstdlib_strlen(v104) == 3)
    {
      if (cstdlib_strcmp(v69, v104) && cstdlib_strcmp(v69, "normal") && cstdlib_strcmp(v69, "") && cstdlib_strcmp(v69, "latin"))
      {
        v70 = v104;
        if (cstdlib_strlen(v69) != 3)
        {
LABEL_118:
          if (cstdlib_strlen(v69) == 3)
          {
            v71 = v69;
          }

          else
          {
            v71 = v104;
          }

LABEL_97:
          cstdlib_strcpy(v103, v71);
          loc_ComputeLoo(*(a4 + 8), a1, a2, *v89, &v104);
          loc_ComputeBreak(*(v9 + 56), *(v9 + 64), *a4, *(a4 + 8), a1, a2, *v89, &v91, &v90);
          loc_ComputeUserPhon(*(a4 + 8), a1, a2, *v89, SHIDWORD(__n), &v92);
          v16 = (*(*(a4 + 8) + 176))(a1, a2, *v89, 3, &__src, &__n);
          if ((v16 & 0x80000000) == 0)
          {
            v76 = *a4;
            if (*(a4 + 44) == 1)
            {
              v77 = heap_Alloc(*(v76 + 8), __n + 1);
              v94 = v77;
              if (!v77)
              {
                return 3221233674;
              }

              v78 = v77;
              loc_ComputeToneField(__src, __n, &v94);
              Str = geene_adapt_meta_stream_ItemToBuff(*a4, &v93, &v99, 19, v79, v80, v81, v82, __dst);
            }

            else
            {
              Str = geene_adapt_meta_stream_ItemToBuff(v76, &v93, &v99, 19, v72, v73, v74, v75, __dst);
              v78 = 0;
            }

            v84 = v88;
            if (v87)
            {
              v84 = 0;
              *(a4 + 68) = 0;
            }

            if (!*(a4 + 44) || *(*(a4 + 48) + 20 * v84 + 16) == 1)
            {
              Str = geene_adapt_stream_AppendItemFromWordRecord(*(*(a4 + 24) + 8 * *(a4 + 32)), v93, v99, v101);
            }

            *(a4 + 56) = v84 + 1;
            heap_Free(*(*a4 + 8), v93);
            if (v78)
            {
              heap_Free(*(*a4 + 8), v78);
            }

            return Str;
          }

          return v16;
        }

        if (cstdlib_strncmp(v69, v70, 2uLL) || *(v69 + 2) != 120)
        {
          v85 = &LANG_2_LANG_GROUP_EXCEPTIONS;
          v86 = 4;
          while (cstdlib_strcmp(v85, v70) || cstdlib_strcmp(v85 + 4, v69))
          {
            v85 += 8;
            if (!--v86)
            {
              goto LABEL_118;
            }
          }
        }
      }

      v71 = v104;
      goto LABEL_97;
    }

    return 3221233664;
  }

  return Str;
}

uint64_t geene_adapt_lingdb_meta_visitor_postCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a4[2];
  v6 = *(v5 + 64);
  if (v6)
  {
    v7 = (v6 - 1);
    if (v6 != 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = v7 - 1;
      v14 = (32 * v7) | 0x18;
      do
      {
        if (v12 && v11 && v10 && v9 && v8)
        {
          break;
        }

        if (!v12)
        {
          v15 = *(v5 + 56);
          if (*(v15 + v14 - 24) == 60)
          {
            result = loc_ComputeStyleFieldsFromStyleMarkerArg(*a4, *(v15 + v14), (v5 + 24), (v5 + 32));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v12 = 1;
            goto LABEL_26;
          }
        }

        if (v11 || (v17 = *(v5 + 56), *(v17 + v14 - 24) != 24))
        {
          if (v10 || (v18 = *(v5 + 56), *(v18 + v14 - 24) != 16))
          {
            if (v9 || (v19 = *(v5 + 56), *(v19 + v14 - 24) != 18))
            {
              if (!v8)
              {
                v20 = *(v5 + 56);
                if (*(v20 + v14 - 24) != 17)
                {
                  v8 = 0;
                  goto LABEL_26;
                }

                *(v5 + 52) = *(v20 + v14);
              }

              v8 = 1;
            }

            else
            {
              *(v5 + 48) = *(v19 + v14);
              v9 = 1;
            }
          }

          else
          {
            *(v5 + 44) = *(v18 + v14);
            v10 = 1;
          }
        }

        else
        {
          *(v5 + 40) = *(v17 + v14);
          v11 = 1;
        }

LABEL_26:
        v14 -= 32;
      }

      while (v13--);
    }
  }

  return geene_adapt_lingdb_generic_visitor_postCallback();
}

void *geene_adapt_lingdb_meta_visitor_Delete(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        heap_Free(*(*result + 8), v3);
      }

      v4 = *(v2 + 32);
      if (v4)
      {
        heap_Free(*(*v1 + 8), v4);
      }

      heap_Free(*(*v1 + 8), v2);
    }

    return geene_adapt_lingdb_generic_visitor_Delete(v1);
  }

  return result;
}

uint64_t geene_adapt_lingdb_meta_visitor_GetCurrentMetaDataValues(uint64_t result, void *a2, void *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  if (result)
  {
    v7 = *(result + 16);
    if (v7)
    {
      *a2 = *(v7 + 24);
      *a3 = *(v7 + 32);
      *a4 = *(v7 + 40);
      *a5 = *(v7 + 44);
      *a6 = *(v7 + 48);
      *a7 = *(v7 + 52);
    }
  }

  return result;
}

uint64_t geene_adapt_get_frompos_wordrec(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, int a6, unsigned __int16 *a7)
{
  v26 = 0;
  v27 = 0;
  v25 = -1;
  v24 = 11;
  *a7 = -1;
  v14 = (*(a1 + 104))(a2, a3, 1, 0, &v27 + 2);
  if ((v14 & 0x80000000) == 0 && ((*(a1 + 152))(a2, a3, 2, HIWORD(v27), &v26) & 0x80000000) == 0)
  {
    if (v26)
    {
      v14 = (*(a1 + 104))(a2, a3, 2, HIWORD(v27), &v27);
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v27;
        if (v27)
        {
          v20 = a4 == 1;
          v16 = a4 != 1;
          v17 = v20;
          if (a6 == 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v17;
          }

          while (1)
          {
            v19 = (*(a1 + 168))(a2, a3, v15, 0, 1, &v24, &v26 + 2);
            if ((v19 & 0x80000000) != 0)
            {
              return v19;
            }

            v20 = (v24 - 9) < 6 || v24 == 4;
            if (!v20)
            {
              break;
            }

            v19 = (*(a1 + 168))(a2, a3, v27, 1, 1, &v25, &v26 + 2);
            if ((v19 & 0x80000000) != 0)
            {
              return v19;
            }

            v21 = v16;
            if ((v18 & 1) == 0)
            {
              if (v25 < a5)
              {
                break;
              }

              v21 = 0;
            }

            *a7 = v25;
LABEL_24:
            v14 = (*(a1 + 120))(a2, a3, v27, &v27);
            if ((v14 & 0x80000000) == 0)
            {
              v15 = v27;
              v22 = v27 ? v21 : 0;
              if (v22 == 1)
              {
                continue;
              }
            }

            return v14;
          }

          v21 = 1;
          goto LABEL_24;
        }
      }
    }
  }

  return v14;
}

uint64_t geene_adapt_get_accumulated_sildur_from_markers_and_waitfactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned int a6, int a7, int a8, int a9, int *a10)
{
  v40 = -1;
  *a10 = -1;
  if (!a6)
  {
    return 0;
  }

  if (*a5 == 0x4000)
  {
    v15 = a5[3];
  }

  else
  {
    v15 = 0;
  }

  if (a8 == -1)
  {
    v17 = -1;
  }

  else
  {
    v17 = a5[8 * a8 + 3] - v15;
  }

  frompos_wordrec = geene_adapt_get_frompos_wordrec(a2, a3, a4, a7, v17, a9, &v40);
  if ((frompos_wordrec & 0x80000000) == 0)
  {
    if (a7 != 1 && a8 == -1)
    {
      if (v40 != 0xFFFF)
      {
        v18 = 0;
        LODWORD(v19) = 0;
        v20 = a5 + 3;
        while (1)
        {
          v21 = *v20;
          v20 += 8;
          v22 = v21 - v15;
          if (v21 - v15 >= v40)
          {
            if (v22 > v40)
            {
              LODWORD(v19) = v18;
LABEL_32:
              if (v19 < a6)
              {
                v27 = &a5[8 * v19];
                v23 = v19;
                do
                {
                  v28 = *v27;
                  v27 += 8;
                  if (v28 == 26)
                  {
                    goto LABEL_37;
                  }
                }

                while (a6 != ++v23);
              }

LABEL_36:
              v23 = a6;
              goto LABEL_37;
            }

            LODWORD(v19) = v18;
          }

          if (a6 == ++v18)
          {
            goto LABEL_32;
          }
        }
      }

      return frompos_wordrec;
    }

    if (a7)
    {
      v19 = 0;
    }

    else
    {
      v19 = (a8 + 1);
    }

    if (v19 >= a6)
    {
      LODWORD(v19) = a8 + 1;
      goto LABEL_36;
    }

    v23 = v19;
    v24 = a6;
    v25 = &a5[8 * v19];
    while (*v25 != 26)
    {
      if (v40 != 0xFFFF)
      {
        v26 = v25[3] - v15;
        if (v26 >= v40)
        {
          v24 = v23;
          if (v26 > v40)
          {
            break;
          }
        }
      }

      ++v23;
      v25 += 8;
      if (a6 == v23)
      {
        v23 = v24;
        break;
      }
    }

LABEL_37:
    v41 = 0;
    *a10 = -1;
    if (v19 >= v23)
    {
      if (v23 != a6)
      {
        return frompos_wordrec;
      }
    }

    else
    {
      v29 = v19;
      v30 = v23 - v19;
      v31 = &a5[8 * v29 + 6];
      v32 = -1;
      do
      {
        if (*(v31 - 6) == 8)
        {
          v33 = *v31;
          if (*v31 != 29999)
          {
            if (v32 == -1)
            {
              v32 = 0;
              *a10 = 0;
              v33 = *v31;
            }

            v32 += v33;
            *a10 = v32;
          }
        }

        v31 += 8;
        --v30;
      }

      while (v30);
      if (v23 != a6)
      {
        return frompos_wordrec;
      }

      if (v32 != -1)
      {
        goto LABEL_50;
      }
    }

    *a10 = 0;
LABEL_50:
    paramc_ParamGetUInt(*(a1 + 40), "finalsentencefound", &v41);
    if (v41 != 1)
    {
      paramc_ParamGetUInt(*(a1 + 40), "waitfactor", &v41 + 1);
      v34 = &a5[8 * v23 + 6];
      v35 = v23 + 1;
      while (--v35 >= 1)
      {
        v36 = (v34 - 32);
        v37 = *(v34 - 56);
        v34 -= 32;
        if (v37 == 25)
        {
          HIDWORD(v41) = *v36;
          paramc_ParamSetUInt(*(a1 + 40), "waitfactor", HIDWORD(v41));
          break;
        }
      }

      v38 = *a10 + 200 * HIDWORD(v41);
      if (v38 < 0)
      {
        v38 = 200;
      }

      *a10 = v38;
    }
  }

  return frompos_wordrec;
}

BOOL loc_ComputeCompoundField(char *a1)
{
  v4 = 0;
  v3 = 0;
  hlp_NLUStrFind(a1, "S_COMP", &v4, &v3);
  if (v4)
  {
    return 1;
  }

  hlp_NLUStrFind(a1, "I_COMP", &v4, &v3);
  if (v4)
  {
    return 1;
  }

  hlp_NLUStrFind(a1, "E_COMP", &v4, &v3);
  return v4 != 0;
}

uint64_t loc_ComputeLoo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v12 = 0;
  __src = 0;
  *a5 = 0;
  result = (*(a1 + 184))(a2, a3, a4, 12, &v12 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (HIWORD(v12))
    {
      result = (*(a1 + 176))(a2, a3, a4, 12, &__src, &v12);
      if ((result & 0x80000000) == 0)
      {
        if (__src)
        {
          result = cstdlib_strncpy(a5, __src, 3uLL);
          a5[3] = 0;
        }
      }
    }
  }

  return result;
}

uint64_t loc_ComputeBreak(_DWORD *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char **a8, int *a9)
{
  v10 = a7;
  v42 = a7;
  v41 = 0;
  v40 = 255;
  v39 = 0;
  v38 = 4;
  v37 = 0;
  v36 = 0;
  if (((*(a4 + 184))(a5, a6, a7, 18, &v37) & 0x80000000) == 0 && v37 == 1)
  {
    (*(a4 + 176))(a5, a6, v10, 18, &v36, &v41);
    v10 = v42;
  }

  result = (*(a4 + 120))(a5, a6, v10, &v42);
  v16 = 1;
  if ((result & 0x80000000) == 0)
  {
    v17 = v42;
    if (v42)
    {
      while (1)
      {
        v16 = 1;
        result = (*(a4 + 168))(a5, a6, v17, 0, 1, &v38, &v41);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if ((v38 - 9) < 6)
        {
          goto LABEL_8;
        }

        if (v38 == 15)
        {
          v34 = 0;
          v35 = 0;
          v33 = 0;
          __s1 = 0;
          v18 = 0;
          if ((paramc_ParamGetStr(*(a3 + 40), "langcode", &__s1) & 0x80000000) == 0 && __s1)
          {
            v18 = cstdlib_strcmp(__s1, "jpj") == 0;
          }

          v19 = 1;
          if (((*(a4 + 168))(a5, a6, v42, 1, 1, &v35 + 2, &v41) & 0x80000000) != 0)
          {
            v20 = 0;
          }

          else
          {
            v20 = 0;
            if (((*(a4 + 168))(a5, a6, v42, 2, 1, &v35, &v41) & 0x80000000) == 0)
            {
              v21 = v35;
              if (v35)
              {
                v29 = a8;
                if (v18)
                {
                  v22 = (v35 - 1);
                  v21 = (v35 + 1);
                  goto LABEL_27;
                }

                if (HIWORD(v35))
                {
                  v22 = (HIWORD(v35) - 1);
LABEL_27:
                  v20 = loc_CheckPauseMarker(a1, a2, v22, v21, &v34, &v33);
                }

                else
                {
                  v20 = 0;
                }

                v23 = v35;
                v44 = v42;
                v43 = 0;
                v19 = 0;
                if (((*(a4 + 120))(a5, a6) & 0x80000000) == 0)
                {
                  for (i = v44; v44; i = v44)
                  {
                    v25 = (*(a4 + 168))(a5, a6, i, 2, 1, &v43, &v43 + 2) >= 0 && v43 > v23;
                    v19 = v25;
                    if (v25)
                    {
                      break;
                    }

                    if (((*(a4 + 120))(a5, a6, v44, &v44) & 0x80000000) != 0)
                    {
                      break;
                    }
                  }
                }

                a8 = v29;
              }
            }
          }

          if (((*(a4 + 168))(a5, a6, v42, 8, 1, &v39, &v41) & 0x80000000) != 0 && v20 == 1)
          {
            v26 = v34;
            if (v18 && v34 == 29999)
            {
              v26 = 200;
            }
          }

          else
          {
            v26 = -1;
            if (v20 && v39 != 29999 && v36)
            {
              if (cstdlib_strcmp(v36, "external"))
              {
                v26 = -1;
              }

              else if (v33 == 1)
              {
                v26 = v34;
              }

              else
              {
                v26 = v39;
              }
            }
          }

          *a9 = v26;
          if (((*(a4 + 168))(a5, a6, v42, 7, 1, &v40, &v41) & 0x80000000) != 0)
          {
            v40 = 255;
            if (!v18)
            {
LABEL_60:
              v27 = v19 ^ 1;
              if (v40)
              {
                v27 = 1;
              }

              if ((v27 & 1) == 0)
              {
                v40 = 1;
              }

              v16 = 0;
              goto LABEL_9;
            }
          }

          else if (!v18)
          {
            goto LABEL_60;
          }

          if (*a9 == 1)
          {
            v40 = 255;
            *a9 = -1;
          }

          goto LABEL_60;
        }

        if (v38 == 4)
        {
LABEL_8:
          v16 = 0;
          v40 = 255;
        }

LABEL_9:
        result = (*(a4 + 120))(a5, a6, v42, &v42);
        if (v16)
        {
          if ((result & 0x80000000) == 0)
          {
            v17 = v42;
            if (v42)
            {
              continue;
            }
          }
        }

        break;
      }
    }
  }

  if (v40 == 2)
  {
    v28 = "weak";
  }

  else if (v40 == 1)
  {
    v28 = "strong";
  }

  else
  {
    if (((v40 != 0) & ~v16) == 0)
    {
      *a8 = "sent";
      return geene_adapt_get_accumulated_sildur_from_markers_and_waitfactor(a3, a4, a5, a6, a1, a2, 0, -1, 1, a9);
    }

    v28 = "none";
  }

  *a8 = v28;
  return result;
}

uint64_t loc_ComputeUserPhon(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6)
{
  if (a5 == 10 || (v10 = result, __s1 = 0, v11 = 0, *a6 = 0, result = (*(result + 184))(a2, a3, a4, 21, &v11 + 2), (result & 0x80000000) == 0) && HIWORD(v11) && (result = (*(v10 + 176))(a2, a3, a4, 21, &__s1, &v11), (result & 0x80000000) == 0) && (result = cstdlib_strcmp(__s1, "ADDONDCT"), !result))
  {
    *a6 = 1;
  }

  return result;
}

void *loc_ComputeToneField(void *__src, size_t __n, void **a3)
{
  v3 = __n;
  v4 = *a3;
  cstdlib_memcpy(*a3, __src, __n);
  if (v3)
  {
    LOWORD(v5) = 0;
    v6 = v3;
    v7 = v4;
    do
    {
      v9 = *v7++;
      v8 = v9;
      if ((v9 - 49) < 5 || (v8 != 46 ? (v10 = v8 == 0) : (v10 = 1), v10))
      {
        v4[v5] = v8;
        LOWORD(v5) = v5 + 1;
      }

      --v6;
    }

    while (v6);
    v5 = v5;
  }

  else
  {
    v5 = 0;
  }

  return cstdlib_memset(&v4[v5], 0, v3 - v5);
}

uint64_t loc_ComputeStyleFieldsFromStyleMarkerArg(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4)
{
  v6 = __s;
  v8 = cstdlib_strchr(__s, 59);
  if (v8)
  {
    v9 = v8 - v6;
    v10 = v8 + 1;
    if (v8 == v6)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (cstdlib_strncmp(v6, "default", 7uLL))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = cstdlib_strlen(v6);
  v10 = 0;
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_6:
  v6 = "";
  v9 = cstdlib_strlen("");
LABEL_7:
  result = geene_adapt_common_DuplicateString_Num_FreeFirst(a1, v6, v9, a3);
  if ((result & 0x80000000) == 0)
  {
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    return geene_adapt_common_DuplicateString_FreeFirst(a1, v12, a4);
  }

  return result;
}

uint64_t loc_CheckPauseMarker(_DWORD *a1, unsigned int a2, int a3, int a4, _DWORD *a5, _DWORD *a6)
{
  if (!a2)
  {
    return 0;
  }

  if (*a1 == 0x4000)
  {
    v8 = a1[3];
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
  v11 = 0;
  *a6 = 0;
  *a5 = 0;
  v12 = v8 + a4;
  v13 = v8 + a3;
  v14 = a2;
  v15 = (a1 + 6);
  do
  {
    v16 = *(v15 - 3);
    if (v12 < v16)
    {
      break;
    }

    v17 = *(v15 - 6);
    if (v17 == 8)
    {
      if (v13 <= v16 && v16 < v12)
      {
        *a5 += *v15;
        v11 = 1;
      }
    }

    else if (v17 == 21)
    {
      v10 = cstdlib_strcmp(*v15, "spell") == 0;
    }

    else if (v17 == 26 && v13 <= v16 && v16 < v12)
    {
      if (v11 == 1)
      {
        *a6 = 1;
      }

      break;
    }

    v15 += 4;
    --v14;
  }

  while (v14);
  if (v10)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}