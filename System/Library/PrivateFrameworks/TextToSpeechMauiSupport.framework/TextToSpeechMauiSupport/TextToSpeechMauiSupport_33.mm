uint64_t loc_cleanup_on_close(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 73449, 176);
  if ((v3 & 0x80000000) != 0)
  {
    return 2702188552;
  }

  v4 = v3;
  if (a1)
  {
    loc_deallocate_statpunc_v2_data(a1);
    puncsptn_v2_deallocate_LuaVM((a1 + 13), a1 + 20);
    OOCAllocator_Des();
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_puncsptn_v2_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 73449, 176);
  if ((result & 0x80000000) != 0)
  {
    return 2702188552;
  }

  if (a1)
  {
    v4 = 0;
    result = (*(*(a1 + 48) + 88))(*(a1 + 32), *(a1 + 40), &v4 + 4, &v4);
    if ((result & 0x80000000) == 0)
    {
      result = loc_reload_statpunc_data(a1);
      if ((result & 0x80000000) == 0)
      {
        return puncsptn_v2_reload_lua_code(*(a1 + 8), *(a1 + 16), *(a1 + 168), a1 + 104, (a1 + 160), (a1 + 152));
      }
    }
  }

  return result;
}

uint64_t fe_puncsptn_v2_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 73449, 176);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2702188552;
  }
}

uint64_t fe_puncsptn_v2_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v24 = 0;
  if ((safeh_HandleCheck(a1, a2, 73449, 176) & 0x80000000) != 0)
  {
    return 2702188552;
  }

  *a5 = 1;
  v12 = LingDBHasSentence(*(a1 + 24), a3, a4, &v24);
  if ((v12 & 0x80000000) == 0)
  {
    if (v24 == 1)
    {
      inited = initLDO(a1 + 104, (a1 + 144));
      if ((inited & 0x80000000) != 0)
      {
LABEL_14:
        v12 = inited;
        goto LABEL_18;
      }

      v12 = importFromLingDB(*a1, *(a1 + 24), a3, a4, (a1 + 144));
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_18;
      }

      if (*(a1 + 144))
      {
        if (*(a1 + 64))
        {
          v14 = 0;
          v15 = 0;
          while (1)
          {
            inited = statpunc_v2_Process(*a1, *(a1 + 144), a1 + 104, *(a1 + 56) + v14);
            if ((inited & 0x80000000) != 0)
            {
              break;
            }

            ++v15;
            v14 += 48;
            if (v15 >= *(a1 + 64))
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          if (*(a1 + 152) != 1 || (log_OutText(*(*a1 + 32), *(a1 + 168), 5, 0, "Lua code available: process LDO with Lua code", v9, v10, v11, 0), inited = puncsptn_v2_process_ldo_with_lua(*a1, *(a1 + 168), *(a1 + 144), a1 + 104, *(a1 + 160), v16, v17, v18), (inited & 0x80000000) == 0))
          {
            inited = exportToLingDB(*a1, *(a1 + 24), a3, a4, a1 + 104, *(a1 + 144), 0, 0);
          }
        }

        goto LABEL_14;
      }

      v19 = *(*a1 + 32);
      v20 = *(a1 + 168);
      v21 = "Imported LDO is NULL, returning";
    }

    else
    {
      v19 = *(*a1 + 32);
      v20 = *(a1 + 168);
      v21 = "LingDB has no sentence, returning";
    }

    log_OutText(v19, v20, 5, 0, v21, v9, v10, v11, 0);
  }

LABEL_18:
  v22 = *(a1 + 144);
  if (v22)
  {
    deinitLDO(a1 + 104, v22);
    *(a1 + 144) = 0;
  }

  return v12;
}

uint64_t fe_puncsptn_v2_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 73449, 176);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2702188552;
  }
}

uint64_t fe_puncsptn_v2_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2702188545;
  }

  result = 0;
  *a2 = &IFePuncsptnV2;
  return result;
}

uint64_t *loc_deallocate_statpunc_v2_data(uint64_t *result)
{
  v1 = result;
  v2 = result[7];
  if (*(result + 32))
  {
    v3 = 0;
    v4 = 8;
    do
    {
      statpunc_v2_freeIGTree(*v1, *(v2 + v4));
      v2 = v1[7];
      *(v2 + v4) = 0;
      ++v3;
      v4 += 48;
    }

    while (v3 < *(v1 + 32));
    goto LABEL_6;
  }

  if (v2)
  {
LABEL_6:
    result = heap_Free(*(*v1 + 8), v2);
    v1[7] = 0;
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t loc_extractFeatures(uint64_t a1, uint64_t a2, char *a3, char *a4, const char *a5, uint64_t a6)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = cstdlib_strchr(*(a1 + 16), 124);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      do
      {
        *v12 = 0;
        v14 = cstdlib_strstr(a3, v10);
        if (v14)
        {
          if (v14 < a4)
          {
            v13 = loc_setFeature(*(a1 + 8), a2, "collocation", a6, "left");
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }
          }
        }

        *v12 = 124;
        v10 = v12 + 1;
        v12 = cstdlib_strchr(v12 + 1, 124);
      }

      while (v12);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }
    }
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = cstdlib_strchr(*(a1 + 24), 124);
    if (v16)
    {
      v17 = v16;
      v13 = 0;
      do
      {
        *v17 = 0;
        if (cstdlib_strstr(a3, v15) > a4)
        {
          v13 = loc_setFeature(*(a1 + 8), a2, "collocation", a6, "right");
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        *v17 = 124;
        v15 = v17 + 1;
        v17 = cstdlib_strchr(v17 + 1, 124);
      }

      while (v17);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }
    }
  }

  v18 = a4;
  if (a4 > a3)
  {
    v18 = a4;
    while (*v18 != 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  if (v18 > a3)
  {
    while (*v18 == 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  if (cstdlib_strchr(*(a1 + 40), *v18))
  {
    v19 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", *v18))
    {
      goto LABEL_30;
    }

    v19 = "digit";
  }

  v20 = loc_setFeature(*(a1 + 8), a2, "lwordendchar", a6, v19);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

LABEL_30:
    ;
  }

  do
  {
    v23 = *i++;
    v22 = v23;
  }

  while (v23 == 32);
  if (cstdlib_strchr(*(a1 + 40), v22))
  {
    v24 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", *(i - 1)))
    {
      goto LABEL_39;
    }

    v24 = "digit";
  }

  v20 = loc_setFeature(*(a1 + 8), a2, "rwordbegchar", a6, v24);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

LABEL_39:
  if (a4 <= a3)
  {
    goto LABEL_45;
  }

  if (cstdlib_strchr(*(a1 + 40), *(a4 - 1)))
  {
    v25 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", *(a4 - 1)))
    {
      goto LABEL_45;
    }

    v25 = "digit";
  }

  v20 = loc_setFeature(*(a1 + 8), a2, "lchar", a6, v25);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

LABEL_45:
  if (cstdlib_strchr(*(a1 + 40), a4[1]))
  {
    v26 = "punc";
  }

  else
  {
    if (!cstdlib_strchr("0123456789", a4[1]))
    {
      goto LABEL_50;
    }

    v26 = "digit";
  }

  v20 = loc_setFeature(*(a1 + 8), a2, "rchar", a6, v26);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

LABEL_50:
  v27 = *(a1 + 40);
  if (a4 == a3)
  {
LABEL_63:
    v35 = a4 + 1;
    v34 = "isolated";
    do
    {
      v36 = *v35;
      if (!*v35)
      {
        goto LABEL_70;
      }

      ++v35;
    }

    while (cstdlib_strchr(v27, v36));
    if (*(v35 - 1))
    {
      if (cstdlib_strcmp(a5, a1))
      {
        goto LABEL_71;
      }

      v34 = "start";
    }

    else
    {
      v34 = "isolated";
    }

LABEL_70:
    v20 = loc_setFeature(*(a1 + 8), a2, "sentpos", a6, v34);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    return v20;
  }

  v28 = a4;
  do
  {
    v29 = *--v28;
    v30 = cstdlib_strchr(v27, v29);
  }

  while (v28 > a3 && v30);
  if (v28 == a3 && cstdlib_strchr(v27, *v28))
  {
    v27 = *(a1 + 40);
    goto LABEL_63;
  }

  v31 = *(a1 + 40);
  v32 = a4 + 1;
  do
  {
    v33 = *v32;
    if (!*v32)
    {
      goto LABEL_59;
    }

    ++v32;
  }

  while (cstdlib_strchr(v31, v33));
  if (!*(v32 - 1))
  {
LABEL_59:
    if (cstdlib_strcmp(a5, (a1 + 4)))
    {
      goto LABEL_71;
    }

    v34 = "end";
    goto LABEL_70;
  }

LABEL_71:
  v37 = loc_bstartword(*(a1 + 40), a3, a4);
  v38 = *(a1 + 40);
  if (!v37)
  {
    v49 = a4 + 1;
    do
    {
      v50 = *v49;
      if (!*v49)
      {
        goto LABEL_99;
      }

      ++v49;
    }

    while (cstdlib_strchr(v38, v50));
    if ((*(v49 - 1) & 0xDF) == 0)
    {
LABEL_99:
      if (!cstdlib_strcmp(a5, (a1 + 4)))
      {
        v46 = "pos";
        v47 = "end";
LABEL_91:
        v48 = *(a1 + 8);
        goto LABEL_92;
      }
    }

    return 0;
  }

  v39 = a4 + 1;
  do
  {
    v40 = *v39;
    if (!*v39)
    {
      goto LABEL_90;
    }

    ++v39;
  }

  while (cstdlib_strchr(v38, v40));
  if ((*(v39 - 1) & 0xDF) == 0)
  {
LABEL_90:
    v46 = "pos";
    v47 = "isolated";
    goto LABEL_91;
  }

  if (cstdlib_strcmp(a5, a1))
  {
    return 0;
  }

  v13 = loc_setFeature(*(a1 + 8), a2, "pos", a6, "start");
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v41 = cstdlib_strstr(a4 + 1, (a1 + 4));
  if (!v41)
  {
    return v13;
  }

  v42 = v41;
  if (loc_bstartword(*(a1 + 40), a3, v41) || !loc_bendword(*(a1 + 40), v42))
  {
    return v13;
  }

  if (v42 <= a4)
  {
    v43 = 0;
  }

  else
  {
    v43 = 0;
    do
    {
      if (*a4 == 32)
      {
        ++v43;
        do
        {
          v44 = *++a4;
        }

        while (v44 == 32);
      }

      ++a4;
    }

    while (a4 < v42);
  }

  if (*(a1 + 32) > v43)
  {
    v46 = "dist2end";
    v47 = "short";
    goto LABEL_91;
  }

  v48 = *(a1 + 8);
  v46 = "dist2end";
  if (*(a1 + 34) <= v43)
  {
    v47 = "long";
  }

  else
  {
    v47 = "medium";
  }

LABEL_92:

  return loc_setFeature(v48, a2, v46, a6, v47);
}

uint64_t loc_insertMarker(uint64_t a1, uint64_t a2, unsigned int a3, char *a4)
{
  v53 = 0;
  v52 = 0;
  v50 = 0;
  __s = 0;
  v5 = *(a1 + 32);
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);
  if (v7 >= v6)
  {
    v13 = 0;
    v10 = 0;
    v9 = 0;
LABEL_16:
    if (v7 >= v6)
    {
LABEL_28:
      if (v9)
      {
        HIDWORD(v53) = LDOLabel_GetAbsoluteFrom(v9);
        v41 = *(v9 + 96);
        v40 = *(v9 + 100);
        v42 = LDO_AddLabelOnSubstring(a1, "MARKER", "MARKER_NLU", &v53 + 1, &v53 + 1, &v50);
        v25 = LH_ERROR_to_VERROR(v42);
        if ((v25 & 0x80000000) == 0)
        {
          v43 = LDOLabel_SetReferenceFrom(v50, v41);
          v25 = LH_ERROR_to_VERROR(v43);
          if ((v25 & 0x80000000) == 0)
          {
            v44 = LDOLabel_SetReferenceTo(v50, v40);
            v25 = LH_ERROR_to_VERROR(v44);
            if ((v25 & 0x80000000) == 0)
            {
              v45 = LDOObject_SetStringAttribute(v50, "STRARGS", a4);
              v25 = LH_ERROR_to_VERROR(v45);
              if ((v25 & 0x80000000) == 0)
              {
                LDOObject_SetU32Attribute(v50, "_MTYPE", 51);
                return LH_ERROR_to_VERROR(v46);
              }
            }
          }
        }

        return v25;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = *v7;
        U32Attribute = LDOObject_GetU32Attribute(*v7, "_MTYPE", &v52, &v53);
        v13 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if (v52 == 1)
        {
          v23 = v53;
          HIDWORD(v53) = LDOLabel_GetAbsoluteFrom(v21);
          if (v23 == 51 && HIDWORD(v53) == v10)
          {
            v20 = 1;
            v19 = v21;
          }
        }

        if (++v7 >= *(*(a1 + 32) + 32))
        {
          if (!v20)
          {
            goto LABEL_28;
          }

          StringAttribute = LDOObject_GetStringAttribute(v19, "STRARGS", &v52, &__s);
          v25 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v25 & 0x80000000) == 0)
          {
            if (v52)
            {
              v30 = *(a2 + 8);
              v31 = cstdlib_strlen(a4);
              v32 = cstdlib_strlen(__s);
              v33 = heap_Alloc(v30, (v31 + v32 + 2));
              if (v33)
              {
                v38 = v33;
                cstdlib_strcpy(v33, __s);
                cstdlib_strcat(v38, ";");
                cstdlib_strcat(v38, a4);
                v39 = LDOObject_SetStringAttribute(v19, "STRARGS", v38);
                v13 = LH_ERROR_to_VERROR(v39);
                heap_Free(*(a2 + 8), v38);
              }

              else
              {
                log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76000, 0, v34, v35, v36, v37, a2);
                return 2702188554;
              }
            }

            else
            {
              v13 = 2702188544;
              log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76003, 0, v26, v27, v28, v29, a2);
            }

            return v13;
          }

          return v25;
        }
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *v7;
      v12 = LDOObject_GetU32Attribute(*v7, "_MTYPE", &v52, &v53);
      v13 = LH_ERROR_to_VERROR(v12);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      if (v52 == 1)
      {
        v14 = v53;
        AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v11);
        HIDWORD(v53) = AbsoluteFrom;
        if (v14 == 1 && AbsoluteFrom <= a3)
        {
          v10 = AbsoluteFrom;
          v9 = v11;
        }
      }

      ++v7;
      v18 = *(a1 + 32);
      v6 = *(v18 + 32);
      if (v7 >= v6)
      {
        v7 = *(v18 + 24);
        goto LABEL_16;
      }
    }
  }

  return v13;
}

uint64_t statpunc_v2_readIGTree(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v43 = *MEMORY[0x277D85DE8];
  *v39 = 0;
  v40 = 0;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &v40);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  cstdlib_strcpy(__dst, "statpunc_");
  cstdlib_strcat(__dst, a4);
  v11 = brokeraux_ComposeBrokerString(a3, __dst, 0, 1, v40, 0, 0, v41, 0x100uLL);
  if (v11 < 0)
  {
    return v11 | 0xA1102000;
  }

  Str = ssftriff_reader_ObjOpen(a1, a2, 2, v41, "IGTR", 1031, v39);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v12 = heap_Calloc(*(a3 + 8), 1, 1600);
  *(a5 + 8) = v12;
  if (!v12)
  {
    log_OutPublic(*(a3 + 32), "FE_PUNCSPTN_V2", 76000, 0, v13, v14, v15, v16, v38);
    return 2702188554;
  }

  Str = igtree_Init(a1, a2, *v39, v12);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v24 = ssftriff_reader_ObjClose(*v39, v17, v18, v19, v20, v21, v22, v23);
  if ((v24 & 0x80000000) == 0)
  {
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 393219;
    *(a5 + 40) = ":;.!?()[]{}#',-<>";
    v25 = *(a5 + 8);
    if (*(v25 + 1336))
    {
      v26 = 0;
      do
      {
        v27 = v26;
        v28 = 16 * v26;
        v29 = cstdlib_strcmp(*(*(v25 + 1328) + v28), "leftcollocation");
        v30 = *(*(a5 + 8) + 1328);
        if (v29)
        {
          v31 = cstdlib_strcmp(*(v30 + v28), "rightcollocation");
          v32 = *(*(a5 + 8) + 1328);
          if (v31)
          {
            v33 = cstdlib_strcmp(*(v32 + v28), "dist2endmaxshort");
            v34 = *(*(a5 + 8) + 1328);
            if (v33)
            {
              v35 = cstdlib_strcmp(*(v34 + v28), "dist2endminlong");
              v36 = *(*(a5 + 8) + 1328);
              if (v35)
              {
                if (!cstdlib_strcmp(*(v36 + v28), "punctuation"))
                {
                  *(a5 + 40) = *(*(*(a5 + 8) + 1328) + 16 * v27 + 8);
                }
              }

              else
              {
                *(a5 + 34) = cstdlib_atoi(*(v36 + 16 * v27 + 8));
              }
            }

            else
            {
              *(a5 + 32) = cstdlib_atoi(*(v34 + 16 * v27 + 8));
            }
          }

          else
          {
            *(a5 + 24) = *(v32 + 16 * v27 + 8);
          }
        }

        else
        {
          *(a5 + 16) = *(v30 + 16 * v27 + 8);
        }

        v26 = v27 + 1;
        v25 = *(a5 + 8);
      }

      while (*(v25 + 1336) > (v27 + 1));
    }
  }

  return v24;
}

uint64_t statpunc_v2_freeIGTree(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = igtree_Deinit(a1, a2);
  if ((v4 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a2);
  }

  return v4;
}

uint64_t statpunc_v2_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v54 = *MEMORY[0x277D85DE8];
  v51 = 0;
  __src = 0;
  v50 = 0;
  v8 = LDO_ComputeText(a2, &v50);
  inserted = LH_ERROR_to_VERROR(v8);
  if ((inserted & 0x80000000) == 0)
  {
    v10 = LHString_BorrowCPtr(v50);
    v11 = loc_strpunc(v10, a4, (a4 + 4), &v51);
    if (v11)
    {
      v12 = 0;
      do
      {
        ++v12;
        v11 = loc_strpunc(v11 + 1, a4, (a4 + 4), &v51);
      }

      while (v11);
      if (v12)
      {
        v13 = loc_strpunc(v10, a4, (a4 + 4), &v51);
        if (v13)
        {
          v48 = 0;
          v49 = v13;
          v46 = v6;
          v17 = 0;
          v47 = v10;
          while (1)
          {
            if (!v17)
            {
              log_OutText(*(a1 + 32), "FE_PUNCSPTN_V2", 5, 0, "traceFeatureVector %s", v14, v15, v16, v10);
              v17 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(a4 + 8) + 1296) - 8);
              if (!v17)
              {
                inserted = 2702188554;
                log_OutPublic(*(a1 + 32), "FE_PUNCSPTN_V2", 76000, 0, v18, v19, v20, v21, v45);
                goto LABEL_44;
              }
            }

            v22 = *(a4 + 8);
            if (*(v22 + 1296) != 1)
            {
              v23 = 0;
              v24 = 8 * (*(v22 + 1296) - 1) - 8;
              do
              {
                if (!*(v17 + v23))
                {
                  v25 = heap_Calloc(*(a1 + 8), 1, 65);
                  *(v17 + v23) = v25;
                  if (!v25)
                  {
                    inserted = 2702188554;
                    log_OutPublic(*(a1 + 32), "FE_PUNCSPTN_V2", 76000, 0, v26, v27, v28, v29, v45);
                    goto LABEL_38;
                  }
                }

                v30 = loc_setFeature(v22, a1, *(*(v22 + 1312) + v23), v17, "_");
                inserted = v30;
                if ((v30 & 0x80000000) != 0)
                {
                  break;
                }

                v31 = v24 == v23;
                v23 += 8;
              }

              while (!v31);
              v6 = v46;
              v10 = v47;
              if ((v30 & 0x80000000) != 0)
              {
                goto LABEL_38;
              }
            }

            Features = loc_extractFeatures(a4, a1, v10, v49, v51, v17);
            if ((Features & 0x80000000) != 0)
            {
              break;
            }

            v33 = v48;
            if (v48)
            {
              Features = loc_setFeature(*(a4 + 8), a1, "startpred", v17, v48);
              if ((Features & 0x80000000) != 0)
              {
                break;
              }
            }

            Features = igtree_Process(*(a4 + 8), v17, &__src);
            if ((Features & 0x80000000) != 0)
            {
              break;
            }

            v34 = 0;
            while (cstdlib_strcmp("pos", loc_feature_names[v34]))
            {
              if (++v34 == 9)
              {
                v35 = 0;
                goto LABEL_27;
              }
            }

            v35 = *(v17 + v34 * 8);
LABEL_27:
            if (!cstdlib_strcmp(v35, "start"))
            {
              v33 = __src;
            }

            v48 = v33;
            v36 = *(a4 + 8);
            cstdlib_strncpy(__dst, __src, 0x100uLL);
            __dst[255] = 0;
            if (*(v36 + 1296) >= 2u)
            {
              v40 = 0;
              do
              {
                v41 = cstdlib_strlen(*(v17 + 8 * v40));
                if (v41 + cstdlib_strlen(__dst) + 2 > 0xFF)
                {
                  break;
                }

                cstdlib_strcat(__dst, " ");
                cstdlib_strcat(__dst, *(v17 + 8 * v40++));
              }

              while (*(v36 + 1296) - 1 > v40);
            }

            log_OutText(*(a1 + 32), "FE_PUNCSPTN_V2", 5, 0, "traceFeatureVector %s", v37, v38, v39, __dst);
            v10 = v47;
            inserted = loc_insertMarker(v6, a1, (v49 - v47), __src);
            if ((inserted & 0x80000000) == 0)
            {
              v49 = loc_strpunc(v49 + 1, a4, (a4 + 4), &v51);
              if (v49)
              {
                continue;
              }
            }

            goto LABEL_38;
          }

          inserted = Features;
LABEL_38:
          if (*(*(a4 + 8) + 1296) != 1)
          {
            v42 = (*(*(a4 + 8) + 1296) - 1);
            v43 = v17;
            do
            {
              if (*v43)
              {
                heap_Free(*(a1 + 8), *v43);
              }

              ++v43;
              --v42;
            }

            while (v42);
          }

          heap_Free(*(a1 + 8), v17);
        }
      }
    }
  }

LABEL_44:
  if (v50)
  {
    OOC_PlacementDeleteObject(a3, v50);
  }

  return inserted;
}

char *loc_strpunc(char *a1, const char *a2, const char *a3, const char **a4)
{
  v8 = cstdlib_strstr(a1, a2);
  result = cstdlib_strstr(a1, a3);
  if (v8)
  {
    if (v8 <= result)
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    if (v8 <= result)
    {
      v11 = v8;
    }

    else
    {
      v11 = result;
    }

    if (result)
    {
      a3 = v10;
    }

    else
    {
      a3 = a2;
    }

    if (result)
    {
      result = v11;
    }

    else
    {
      result = v8;
    }
  }

  else if (!result)
  {
    return result;
  }

  *a4 = a3;
  return result;
}

uint64_t loc_setFeature(uint64_t a1, uint64_t a2, char *__s1, uint64_t a4, const char *a5)
{
  if (*(a1 + 1296) < 2u)
  {
    return 0;
  }

  v20 = v5;
  v11 = 0;
  while (cstdlib_strcmp(__s1, *(*(a1 + 1312) + 8 * v11)))
  {
    if (*(a1 + 1296) - 1 <= ++v11)
    {
      return 0;
    }
  }

  if (!cstdlib_strcmp(a5, ""))
  {
    v14 = *(a4 + 8 * v11);
    v19 = "_";
LABEL_14:
    cstdlib_strcpy(v14, v19);
    return 0;
  }

  if (cstdlib_strlen(a5) <= 0x40)
  {
    v14 = *(a4 + 8 * v11);
    goto LABEL_13;
  }

  v13 = cstdlib_strlen(a5);
  v14 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v11), v13 + 1);
  if (v14)
  {
    *(a4 + 8 * v11) = v14;
LABEL_13:
    v19 = a5;
    goto LABEL_14;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76000, 0, v15, v16, v17, v18, v20);
  return 2702188554;
}

BOOL loc_bstartword(char *__s, char *a2, char *a3)
{
  if (a3 == a2)
  {
    return 1;
  }

  v3 = a3;
  do
  {
    v6 = *--v3;
    v7 = cstdlib_strchr(__s, v6);
  }

  while (v3 > a2 && v7);
  v8 = *v3;
  return v8 == 32 || v3 == a2 && cstdlib_strchr(__s, v8);
}

BOOL loc_bendword(char *__s, uint64_t a2)
{
  v3 = (a2 + 1);
  while (1)
  {
    v4 = *v3;
    if (!*v3)
    {
      break;
    }

    ++v3;
    if (!cstdlib_strchr(__s, v4))
    {
      return (*(v3 - 1) & 0xDF) == 0;
    }
  }

  return 1;
}

uint64_t puncsptn_v2_dump_ldo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v7 = LDO_ToString(a3, &v18);
  v11 = LH_ERROR_to_VERROR(v7);
  if ((v11 & 0x80000000) != 0)
  {
    v16 = "Call to MSG_LDO_ToString failed, returning";
  }

  else
  {
    log_OutText(a1, a2, 5, 0, "LDO contents: begin", v8, v9, v10, 0);
    v12 = LHString_BorrowCPtr(v18);
    log_OutText(a1, a2, 5, 0, "%s", v13, v14, v15, v12);
    v16 = "LDO contents: end";
  }

  log_OutText(a1, a2, 5, 0, v16, v8, v9, v10, 0);
  if (v18)
  {
    OOC_PlacementDeleteObject(a4, v18);
  }

  return v11;
}

uint64_t puncsptn_v2_process_ldo_with_lua(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(a1 + 32), a2, 5, 0, "LDO before calling %s in LuaVM", a6, a7, a8, "runPuncsptnV2");
  v13 = puncsptn_v2_dump_ldo(*(a1 + 32), a2, a3, a4);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = LuaVMLDO_RunFunction(a5, "runPuncsptnV2", a3);
  v19 = LH_ERROR_to_VERROR(v14);
  v20 = *(a1 + 32);
  if ((v19 & 0x80000000) != 0)
  {
    log_OutPublic(v20, a2, 76002, 0, v15, v16, v17, v18, v23);
    return v19;
  }

  log_OutText(v20, a2, 5, 0, "LDO after calling %s in LuaVM", v16, v17, v18, "runPuncsptnV2");
  v21 = *(a1 + 32);

  return puncsptn_v2_dump_ldo(v21, a2, a3, a4);
}

uint64_t puncsptn_v2_deallocate_LuaVM(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  if (v3)
  {
    result = OOC_PlacementDeleteObject(result, v3);
    *a2 = 0;
  }

  return result;
}

uint64_t puncsptn_v2_reload_lua_code(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  v27 = 0;
  *a6 = 0;
  inited = InitRsrcFunction(a1, a2, &v27);
  if ((inited & 0x80000000) != 0)
  {
    v17 = inited;
  }

  else
  {
    if (*a5)
    {
      OOC_PlacementDeleteObject(a4, *a5);
      *a5 = 0;
    }

    IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(a1, a2, 0, a6);
    v17 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
    if ((v17 & 0x80000000) == 0)
    {
      if (*a6 != 1)
      {
        v23 = *(v27 + 32);
        goto LABEL_13;
      }

      *a6 = 0;
      v18 = PNEW_LuaVMLDO_Con(a4, a4, a1, a2, "FE_PUNCSPTN_V2", a5);
      v19 = LH_ERROR_to_VERROR(v18);
      if ((v19 & 0x80000000) != 0)
      {
        v17 = v19;
        v25 = "Unable to create LuaVM";
      }

      else
      {
        ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(*a5, 0);
        v21 = LH_ERROR_to_VERROR(ScriptFromRIFF);
        if ((v21 & 0x80000000) != 0)
        {
          v17 = v21;
          v25 = "Unable to load Lua code from RIFF";
        }

        else
        {
          IsLuaFunctionAvailable = LuaVMLDO_IsLuaFunctionAvailable(*a5, "runPuncsptnV2", a6);
          v17 = LH_ERROR_to_VERROR(IsLuaFunctionAvailable);
          if ((v17 & 0x80000000) == 0)
          {
            v23 = *(v27 + 32);
            if (*a6 == 1)
            {
              v24 = "Lua code found and loaded";
              goto LABEL_14;
            }

LABEL_13:
            v24 = "No Lua code found";
LABEL_14:
            log_OutText(v23, a3, 5, 0, v24, v14, v15, v16, 0);
            if (*a6)
            {
              return v17;
            }

            goto LABEL_20;
          }

          v25 = "Unable to determine if Lua entry point function is present";
        }
      }

      log_OutText(*(v27 + 32), a3, 5, 0, v25, v14, v15, v16, 0);
    }
  }

LABEL_20:
  if (*a5)
  {
    OOC_PlacementDeleteObject(a4, *a5);
    *a5 = 0;
  }

  return v17;
}

uint64_t initSolutionList(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 48);
  *(a1 + 360) = v2;
  if (v2)
  {
    *(a1 + 368) = 3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v3, v4, v5, v6, v8);

    return TOKENTNERROR(10);
  }
}

void *freeSolutionList(void *result)
{
  v1 = result;
  v2 = result[45];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[45] = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t resetSolutionList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = a2;
  if (a2 <= 3 && (a2 != 3 || *(a1 + 368) < 4u))
  {
    goto LABEL_7;
  }

  v4 = heap_Realloc(*(*a1 + 8), *(a1 + 360), 12 * a2 + 12);
  if (v4)
  {
    *(a1 + 360) = v4;
    *(a1 + 368) = v3;
LABEL_7:
    *(a1 + 370) = 0;
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v5, v6, v7, v8, v10);

  return TOKENTNERROR(10);
}

uint64_t initMatchList(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 32);
  *(a1 + 376) = v2;
  if (v2)
  {
    *(a1 + 384) = 3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v3, v4, v5, v6, v8);

    return TOKENTNERROR(10);
  }
}

void *freeMatchList(void *result)
{
  v1 = result;
  v2 = result[47];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[47] = 0;
  }

  *(v1 + 96) = 0;
  return result;
}

uint64_t resetMatchList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = a2;
  if (a2 <= 3 && (a2 != 3 || *(a1 + 384) < 4u))
  {
    goto LABEL_7;
  }

  v4 = heap_Realloc(*(*a1 + 8), *(a1 + 376), 8 * a2 + 8);
  if (v4)
  {
    *(a1 + 376) = v4;
    *(a1 + 384) = v3;
LABEL_7:
    *(a1 + 386) = 0;
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v5, v6, v7, v8, v10);

  return TOKENTNERROR(10);
}

uint64_t initAlignmentData(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 2 * *(a1 + 314) + 2);
  *(a1 + 536) = v2;
  if (v2 && (*(a1 + 544) = 0, v7 = heap_Calloc(*(*a1 + 8), 1, 2 * *(a1 + 314) + 2), (*(a1 + 520) = v7) != 0))
  {
    *(a1 + 528) = 0;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v3, v4, v5, v6, v9);

    return TOKENTNERROR(10);
  }
}

void *freeAlignmentData(void *result)
{
  v1 = result;
  v2 = result[67];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[67] = 0;
  }

  *(v1 + 272) = 0;
  v3 = v1[65];
  if (v3)
  {
    result = heap_Free(*(*v1 + 8), v3);
    v1[65] = 0;
  }

  *(v1 + 264) = 0;
  return result;
}

uint64_t resetAlignmentData(uint64_t result)
{
  *(result + 528) = 0;
  *(result + 544) = 0;
  return result;
}

uint64_t initStrRes(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 280);
  *(a2 + 12) = v4;
  v5 = heap_Calloc(*(*a1 + 8), 1, v4);
  *a2 = v5;
  if (v5)
  {
    *v5 = 0;
    *(a2 + 8) = *(a2 + 12);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v6, v7, v8, v9, v11);

    return TOKENTNERROR(10);
  }
}

uint64_t resetStrRes(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  if (*(a2 + 8) <= v3)
  {
    result = 0;
  }

  else
  {
    result = reallocStrRes(a1, a2, v3);
  }

  if (*a2)
  {
    **a2 = 0;
    *(a2 + 10) = 0;
  }

  return result;
}

uint64_t reallocStrRes(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v6 = heap_Realloc(*(*a1 + 8), *a2, a3 + 1);
  if (v6)
  {
    *a2 = v6;
    *(a2 + 8) = v3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v7, v8, v9, v10, v12);

    return TOKENTNERROR(10);
  }
}

uint64_t growStrRes(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8) <= a3)
  {
    return reallocStrRes(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

void *clearStrRes(void *result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = *a2;
    if (*a2)
    {
      result = heap_Free(result[1], v3);
      *a2 = 0;
    }
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t add2StringV2(uint64_t *a1, uint64_t a2, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  if (!*__s)
  {
    return 0;
  }

  v6 = cstdlib_strlen(__s);
  v7 = v6;
  v8 = *(a2 + 8);
  if (*(a2 + 10) + v6 >= v8)
  {
    result = reallocStrRes(a1, a2, (v8 + v6));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  cstdlib_strcat(*a2, __s);
  result = 0;
  *(a2 + 10) += v7;
  return result;
}

uint64_t add2StringV3(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 10);
  if (!*(a3 + 10))
  {
    return 0;
  }

  v6 = *(a2 + 8);
  if (*(a2 + 10) + v3 >= v6)
  {
    result = reallocStrRes(a1, a2, (v6 + v3));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  cstdlib_strcat(*a2, *a3);
  result = 0;
  *(a2 + 10) += *(a3 + 10);
  return result;
}

uint64_t add2StringV4(uint64_t *a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v7 = a4 - a3;
  if (*(a2 + 10) + (a4 - a3) >= *(a2 + 8))
  {
    result = reallocStrRes(a1, a2, (*(a2 + 10) + a4 - a3));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  cstdlib_strncat(*a2, (a1[38] + a3), v7);
  result = 0;
  *(a2 + 10) += v7;
  return result;
}

uint64_t add2StringV5(uint64_t *a1, uint64_t a2, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  if (!*__s)
  {
    return 0;
  }

  v6 = cstdlib_strlen(__s);
  v7 = *(a2 + 10);
  if (v7 + v6 + 1 >= *(a2 + 8))
  {
    result = reallocStrRes(a1, a2, (v7 + v6 + 1));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = *(a2 + 10);
    if (!*(a2 + 10))
    {
      **a2 = 0;
      v7 = *(a2 + 10);
    }
  }

  cstdlib_memcpy((*a2 + v7), __s, v6);
  result = 0;
  *(*a2 + *(a2 + 10) + v6) = 0;
  *(a2 + 10) += v6 + 1;
  return result;
}

uint64_t TOK_IS_PUNCT(const char *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = utf8_determineUTF8CharLength(*a1);
  cstdlib_strncpy(v5, a1, v2);
  v5[v2] = 0;
  v3 = cstdlib_strlen(v5);
  result = utf8_BelongsToSet(0xAu, v5, 0, v3);
  if (result != 1)
  {
    result = utf8_BelongsToSet(0xBu, v5, 0, v3);
    if (result != 1)
    {
      result = utf8_BelongsToSet(0xCu, v5, 0, v3);
      if (result != 1)
      {
        return utf8_BelongsToSet(0xDu, v5, 0, v3) == 1;
      }
    }
  }

  return result;
}

uint64_t TOK_IS_ALPHANUM(const char *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = utf8_determineUTF8CharLength(*a1);
  cstdlib_strncpy(v5, a1, v2);
  v5[v2] = 0;
  v3 = cstdlib_strlen(v5);
  if (utf8_strchr(g_szSpace_0, v5))
  {
    return 0;
  }

  result = utf8_BelongsToSet(9u, v5, 0, v3);
  if (result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t TOK_COUNT_SP_WORDS(const char *a1)
{
  if (a1 && (v2 = cstdlib_strlen(a1)) != 0)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (utf8_strchr(g_szSpace_0, &a1[v3]))
      {
        while (v3 < v2 && utf8_strchr(g_szSpace_0, &a1[v3]))
        {
          v3 += utf8_determineUTF8CharLength(a1[v3]);
        }
      }

      else
      {
        ++v4;
        while (v3 < v2 && !utf8_strchr(g_szSpace_0, &a1[v3]))
        {
          v3 += utf8_determineUTF8CharLength(a1[v3]);
        }
      }
    }

    while (v3 < v2);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t tokenRecordReadFieldLD_T_FROMPOS(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 1, &v14 + 2);
  v11 = 24031;
  if ((v6 & 0x80000000) == 0 && HIWORD(v14) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 1, 1, a3, &v14);
    if (v14 == 1)
    {
      return 0;
    }

    v11 = 24030;
  }

  log_OutPublic(*(*a1 + 32), a1[23], v11, 0, v7, v8, v9, v10, v13);
  return TOKENTNERROR(0);
}

uint64_t tokenRecordReadFieldLD_T_TOPOS(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 2, &v14 + 2);
  v11 = 24030;
  if ((v6 & 0x80000000) == 0 && HIWORD(v14) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 2, 1, a3, &v14);
    if (v14 == 1)
    {
      return 0;
    }

    v11 = 24031;
  }

  log_OutPublic(*(*a1 + 32), a1[23], v11, 0, v7, v8, v9, v10, v13);
  return TOKENTNERROR(0);
}

uint64_t tokenRecordReadFieldLD_T_TYPE(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 0, &v13 + 2);
  result = 0;
  if ((v6 & 0x80000000) == 0 && HIWORD(v13) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 0, 1, a3, &v13);
    result = 0;
    if (v13 != 1)
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24032, 0, v8, v9, v10, v11, v12);
      return TOKENTNERROR(0);
    }
  }

  return result;
}

uint64_t tokenRecordReadFieldLD_T_TNTAG(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = 0;
  *a3 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 4, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 4, 32, a3, &v7);
  }

  return 0;
}

uint64_t tokenRecordReadFieldLD_T_LANGMAP(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 6, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 176))(a1[9], a1[10], a2, 6, a3, &v7);
  }

  return 0;
}

uint64_t tokenRecordDirectReadFieldLD_T_NORM(void *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  *a3 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 3, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 176))(a1[9], a1[10], a2, 3, a3, &v7);
  }

  return 0;
}

uint64_t partialMatchFoundInBasicToken(uint64_t result, __int16 *a2)
{
  v15 = 0;
  if (result)
  {
    v2 = result;
    v3 = *(*(result + 264) + 16);
    for (i = *(v3 + 80); i < *(v3 + 88); ++i)
    {
      __s1 = 0;
      v6 = LDOTreeNode_ComputeAbsoluteFrom(*i, &v15 + 1);
      if ((LH_ERROR_to_VERROR(v6) & 0x80000000) != 0)
      {
        break;
      }

      v7 = LDOTreeNode_ComputeAbsoluteTo(*i, &v15);
      if ((LH_ERROR_to_VERROR(v7) & 0x80000000) != 0)
      {
        break;
      }

      Type = LDOObject_GetType(*i, &__s1);
      if ((LH_ERROR_to_VERROR(Type) & 0x80000000) != 0)
      {
        break;
      }

      if (!cstdlib_strcmp(__s1, "TOKEN_ALPHA") || !cstdlib_strcmp(__s1, "TOKEN_DIGIT") || !cstdlib_strcmp(__s1, "TOKEN_PUNCT") || !cstdlib_strcmp(__s1, "TOKEN_WSPACE"))
      {
        v12 = *a2;
        if (__PAIR64__(v15, SWORD2(v15)) != __PAIR64__(a2[1], v12))
        {
          if (SWORD2(v15) >= v12)
          {
            v13 = a2[1];
          }

          else
          {
            v13 = a2[1];
            if (v12 < v15)
            {
              goto LABEL_20;
            }
          }

          if (SWORD2(v15) < v13 && v13 < v15)
          {
LABEL_20:
            log_OutText(*(*v2 + 32), v2[23], 5, 0, "Regex match %d,%d bisects basic token %d,%d", v9, v10, v11, v12);
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t dumpTokenRecordsInLingDB(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  if (!a1)
  {
    goto LABEL_28;
  }

  if (!a1[38])
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v27);
LABEL_28:

    return TOKENTNERROR(7);
  }

  if (a3 == 1)
  {
    v9 = "<LOGFE> ";
  }

  else
  {
    v9 = "";
  }

  cstdlib_strcpy(__dst, v9);
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "%stokentn : dumpTokenRecordsInLingDB : Begin : %s", v10, v11, v12, __dst);
  FieldLD_T_FROMPOS = (*(a1[8] + 104))(a1[9], a1[10], 1, 0, &v34);
  if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
  {
LABEL_31:
    FieldLD_T_TYPE = FieldLD_T_FROMPOS;
  }

  else
  {
    FieldLD_T_TYPE = (*(a1[8] + 104))(a1[9], a1[10], 3, v34, &v33);
    if (!FieldLD_T_TYPE)
    {
      v18 = v33;
      if (v33)
      {
        while (1)
        {
          FieldLD_T_FROMPOS = tokenRecordReadFieldLD_T_FROMPOS(a1, v18, &v29 + 2);
          if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
          {
            goto LABEL_31;
          }

          FieldLD_T_FROMPOS = tokenRecordReadFieldLD_T_TOPOS(a1, v33, &v29);
          if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
          {
            goto LABEL_31;
          }

          FieldLD_T_TYPE = tokenRecordReadFieldLD_T_TYPE(a1, v33, &v30);
          if ((FieldLD_T_TYPE & 0x80000000) != 0)
          {
            goto LABEL_32;
          }

          if (v30 - 5 <= 1)
          {
            tokenRecordReadFieldLD_T_TNTAG(a1, v33, v36);
            if (v30 == 6)
            {
              tokenRecordDirectReadFieldLD_T_NORM(a1, v33, &v31);
              tokenRecordReadFieldLD_T_LANGMAP(a1, v33, &v32);
            }

            FieldLD_T_TYPE = 0;
          }

          if (v29 < HIWORD(v29))
          {
            break;
          }

          if (v29 > *(a1 + 156))
          {
            log_OutPublic(*(*a1 + 32), a1[23], 24055, "%s%d%s%d", v19, v14, v15, v16, "toPos=");
            return TOKENTNERROR(0);
          }

          cstdlib_strncpy(a1[69], (a1[38] + HIWORD(v29)), v29 - HIWORD(v29));
          *(a1[69] - HIWORD(v29) + v29) = 0;
          if (v30 > 4)
          {
            if (v30 == 5)
            {
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d ESC(%-9s) %s ", v20, v21, v22, __dst);
            }

            else if (v30 == 6)
            {
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d %-15s %s %s langMap=%s", v20, v21, v22, __dst);
            }
          }

          else
          {
            v28 = 0;
            (*(a1[8] + 264))(a1[9], a1[10], v30, &v28);
            log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d %-15s %s", v23, v24, v25, __dst);
          }

          if (!(*(a1[8] + 120))(a1[9], a1[10], v33, &v33))
          {
            v18 = v33;
            if (v33)
            {
              continue;
            }
          }

          goto LABEL_32;
        }

        log_OutPublic(*(*a1 + 32), a1[23], 24055, "%s%d%s%d", v19, v14, v15, v16, "fromPos=");
        return TOKENTNERROR(0);
      }
    }
  }

LABEL_32:
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "%stokentn : dumpTokenRecordsInLingDB End (%x)", v14, v15, v16, __dst);
  return FieldLD_T_TYPE;
}

uint64_t dumpTokenLDO(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = *MEMORY[0x277D85DE8];
  v51 = 0;
  if (!a1)
  {
    goto LABEL_28;
  }

  if (!*(a1 + 304))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0, a5, a6, a7, a8, v44);
LABEL_28:

    return TOKENTNERROR(7);
  }

  if (a3 == 1)
  {
    v9 = "<LOGFE> ";
  }

  else
  {
    v9 = "";
  }

  cstdlib_strcpy(__dst, v9);
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%stokentn : dumpTokenLDO : Begin : %s", v10, v11, v12, __dst);
  v13 = *(*(a1 + 264) + 16);
  LDOObject_GetCategory(v13, &v51);
  v14 = 0;
  v15 = *(v13 + 80);
  v16 = *(v13 + 88);
  if (v15 >= v16)
  {
LABEL_10:
    LDO_GetLabels(*(a1 + 264), &v48);
    v28 = v48.n128_u64[1];
    v29 = v49;
    if (v48.n128_u64[1] >= v49)
    {
LABEL_25:
      log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%stokentn : dumpTokenLDO End (%x)", v25, v26, v27, __dst);
    }

    else
    {
      while (1)
      {
        v47 = 0;
        v48.n128_u64[0] = 0;
        v50 = 0;
        v45 = 0;
        v46 = 0;
        U32Attribute = LDOObject_GetU32Attribute(*v28, "_TTYPE", &v45, &v45 + 1);
        v14 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v14 & 0x80000000) != 0)
        {
          break;
        }

        if (v45 == 1 && HIDWORD(v45) == 6)
        {
          LDOLabel_GetAbsoluteFrom(*v28);
          LDOLabel_GetAbsoluteTo(*v28);
          StringAttribute = LDOObject_GetStringAttribute(*v28, "TNTAG", &v45, &v48);
          v33 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v33 & 0x80000000) != 0)
          {
            return v33;
          }

          v34 = LDOObject_GetStringAttribute(*v28, "NORM", &v45, &v50);
          v33 = LH_ERROR_to_VERROR(v34);
          if ((v33 & 0x80000000) != 0)
          {
            return v33;
          }

          v35 = LDOObject_GetStringAttribute(*v28, "REGEXSUBMATCHES", &v45, &v47);
          v14 = LH_ERROR_to_VERROR(v35);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }

          if (*(a1 + 960) == 1)
          {
            log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%s%3d,%3d : type=TOKEN_INT_TN TNTAG=%-15s NORM=%s REGEXSUBMATCHES=%s", v36, v37, v38, __dst);
          }

          else
          {
            v39 = LDOObject_GetStringAttribute(*v28, "DCTMATCHES", &v45, &v46);
            v14 = LH_ERROR_to_VERROR(v39);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%s%3d,%3d : type=TOKEN_INT_TN TNTAG=%-15s NORM=%s REGEXSUBMATCHES=%s DCTMATCHES=%s", v40, v41, v42, __dst);
          }
        }

        if (++v28 >= v29)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v17 = 0;
    while (1)
    {
      v48.n128_u64[0] = 0;
      v50 = 0;
      LODWORD(v47) = 0;
      LODWORD(v46) = 0;
      LDOObject_GetType(*v15, &v48);
      v18 = LDOTreeNode_ComputeText(*v15, &v50);
      v14 = LH_ERROR_to_VERROR(v18);
      if ((v14 & 0x80000000) != 0)
      {
        break;
      }

      ++v17;
      LDOTreeNode_ComputeAbsoluteFrom(*v15, &v47);
      v19 = *v15++;
      LDOTreeNode_ComputeAbsoluteTo(v19, &v46);
      v20 = *(*a1 + 32);
      v21 = *(a1 + 184);
      LHString_BorrowCPtr(v50);
      log_OutText(v20, v21, 4, 0, "%sToken[%d] %d,%d : %s %s", v22, v23, v24, __dst);
      OOC_PlacementDeleteObject(a1 + 224, v50);
      if (v15 >= v16)
      {
        goto LABEL_10;
      }
    }
  }

  return v14;
}

uint64_t move2PreviousNonUserTNLDOToken(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4)
{
  if (a1)
  {
    *a4 = 0;
    v7 = *(*(a1 + 264) + 16);
    NumberChildren = LDOTreeNode_GetNumberChildren(v7);
    if (NumberChildren)
    {
      v9 = *(v7 + 80);
      if (v9 >= *(v7 + 88))
      {
        return 0;
      }

      v10 = 0;
      do
      {
        v14 = 0;
        v11 = LDOTreeNode_ComputeAbsoluteFrom(*v9, &v14 + 1);
        result = LH_ERROR_to_VERROR(v11);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v13 = LDOTreeNode_ComputeAbsoluteTo(*v9, &v14);
        result = LH_ERROR_to_VERROR(v13);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (WORD2(v14) < a2 || v14 < a3)
        {
          *a4 = v10;
        }

        ++v10;
        ++v9;
      }

      while (v9 < *(v7 + 88));
      return result;
    }
  }

  else
  {
    NumberChildren = 7;
  }

  return TOKENTNERROR(NumberChildren);
}

uint64_t saveExpansionInLDO(uint64_t a1, char *a2, uint64_t a3, char *a4, char *a5, char *a6, uint64_t a7, unsigned __int16 *a8)
{
  v42 = 0;
  v8 = *a8;
  v40 = a8[1];
  v41 = v8;
  if (a1)
  {
    v9 = a7;
    log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokentn : saveExpansionInLingDB Begin (%s)", a6, a7, a8, a3);
    v16 = LDO_AddLabelOnSubstring(*(a1 + 264), "TOKEN", "TOKEN", &v41, &v40, &v42);
    v17 = LH_ERROR_to_VERROR(v16);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    LDOObject_SetU32Attribute(v42, "_TTYPE", 6);
    v17 = LH_ERROR_to_VERROR(v21);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    v22 = LDOObject_SetStringAttribute(v42, "TNTAG", a2);
    v17 = LH_ERROR_to_VERROR(v22);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    v23 = LDOObject_SetStringAttribute(v42, "NORM", (a3 + v9));
    v24 = LH_ERROR_to_VERROR(v23);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    if (a6)
    {
      v25 = LDOObject_SetStringAttribute(v42, "PATTERN", a6);
      v24 = LH_ERROR_to_VERROR(v25);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (a4)
    {
      v26 = LDOObject_SetStringAttribute(v42, "REGEXSUBMATCHES", a4);
      v24 = LH_ERROR_to_VERROR(v26);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (a5)
    {
      v27 = LDOObject_SetStringAttribute(v42, "DCTMATCHES", a5);
      v24 = LH_ERROR_to_VERROR(v27);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    v28 = *(a1 + 544);
    if (v28 >= 2)
    {
      LDOObject_SetU32Attribute(v42, "_MRKRD", v28);
      v17 = LH_ERROR_to_VERROR(v29);
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      v30 = heap_Calloc(*(*a1 + 8), *(a1 + 544), 4);
      if (!v30)
      {
        v24 = 10;
        goto LABEL_22;
      }

      v31 = v30;
      v32 = *(a1 + 544);
      if (*(a1 + 544))
      {
        v33 = *(a1 + 520);
        v34 = *(a1 + 544);
        v35 = v30;
        do
        {
          v36 = *v33++;
          *v35++ = v36;
          --v34;
        }

        while (v34);
      }

      v37 = LDOObject_SetListU32Attribute(v42, "_MRK", v30, v32);
      v24 = LH_ERROR_to_VERROR(v37);
      heap_Free(*(*a1 + 8), v31);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (!*(a1 + 418))
    {
LABEL_22:
      log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokentn : saveExpansionInLingDB End (%x) ", v18, v19, v20, v24);
      return v24;
    }

    v38 = LDOObject_SetStringAttribute(v42, "LANGMAP", (*(a1 + 408) + v9));
    v17 = LH_ERROR_to_VERROR(v38);
LABEL_21:
    v24 = v17;
    goto LABEL_22;
  }

  return TOKENTNERROR(7);
}

uint64_t setDomainsOnSentence(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = *MEMORY[0x277D85DE8];
  v85 = 0;
  v84 = 0;
  v82 = 0;
  v83 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : setDomainsOnSentence Begin", a6, a7, a8, v74);
    DomainDefBlockInfo = dumpTokenRecordsInLingDB(a1, "TRACE", 1, v9, v10, v11, v12, v13);
    if ((DomainDefBlockInfo & 0x80000000) == 0)
    {
      FEData_blockData_getDomains2SearchIn(a1, *(a1 + 168), a1[43], v86, &v84, 0, v14, v15);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : %d block(s) to search in", v17, v18, v19, v84);
      if (v84)
      {
        for (i = 0; i < v84; ++i)
        {
          FEData_blockData_newGetDomainDefBlockInfo(a1, v86[i], &v83, v20, v21, v22, v23, v24);
          if (*(v83 + 24))
          {
            v26 = 0;
            v27 = 0;
            do
            {
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : domain[%d,%d,%s,type=%d] marker %s%s %s", v22, v23, v24, i);
              ++v27;
              v26 += 72;
            }

            while (v27 < *(v83 + 24));
          }
        }

        v28 = *(a1[33] + 32);
        v29 = *(v28 + 24);
        if (v29 < *(v28 + 32))
        {
          do
          {
            __s2 = 0;
            v80 = 0;
            StringAttribute = LDOObject_GetStringAttribute(*v29, "TNTAG", &v80, &__s2);
            DomainDefBlockInfo = LH_ERROR_to_VERROR(StringAttribute);
            if ((DomainDefBlockInfo & 0x80000000) != 0)
            {
              return DomainDefBlockInfo;
            }

            if (v80)
            {
              v79 = 0;
              v78 = 0;
              AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v29);
              v76 = v29;
              AbsoluteTo = LDOLabel_GetAbsoluteTo(*v29);
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing DB token %s %d,%d", v33, v34, v35, __s2);
              if (v84)
              {
                v38 = 0;
                v39 = AbsoluteFrom;
                v40 = 0;
                v41 = 0;
                v77 = v39;
                do
                {
                  FEData_blockData_newGetDomainDefBlockInfo(a1, v86[v38], &v83, v36, v37, v22, v23, v24);
                  IsRemappable = FEData_blockData_IsRemappable(a1, __s2, &v79, &v78 + 1, &v78, v42, v43, v44);
                  v82 = 0;
                  if (IsRemappable == 1)
                  {
                    log_OutText(*(*a1 + 32), a1[23], 5, 0, "domain %s is remappable to %s", v22, v23, v24, __s2);
                    v41 = HIWORD(v78);
                    v40 = v78;
                    DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v78, &v82, v46, v47, v48, v49, v50);
                    if ((DomainDefBlockInfo & 0x80000000) != 0)
                    {
                      return DomainDefBlockInfo;
                    }

                    v55 = v82;
                    if (v82)
                    {
LABEL_25:
                      v59 = v55[2];
                      DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v85);
                      if ((DomainDefBlockInfo & 0x80000000) != 0)
                      {
                        return DomainDefBlockInfo;
                      }

                      v63 = (v59 + 72 * v41);
                      v64 = v85;
                      v85[3] = v40;
                      v64[2] = v41;
                      *v64 = v77;
                      v64[1] = AbsoluteTo;
                      *(v64 + 2) = 1;
                      log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set Active Domain[%s:%s] range %d,%d", v60, v61, v62, *v82);
                      if (!cstdlib_strcmp((*(v63 + 6) + *v63), a1[36]) || *(v63 + 15) == 1)
                      {
                        log_OutText(*(*a1 + 32), a1[23], 5, 0, "normal domain OR was remapped to EscNormal - set additional domains, if any", v22, v23, v24, v75);
                        v65 = v83;
                        if (*(v83 + 24))
                        {
                          v66 = 0;
                          v67 = 48;
                          do
                          {
                            if (v41 != v66)
                            {
                              v68 = *(v65 + 16);
                              if (!cstdlib_strcmp((*(v68 + v67) + *(v68 + v67 - 48)), a1[36]) || *(v68 + v67 + 12) == 1)
                              {
                                DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v85);
                                if ((DomainDefBlockInfo & 0x80000000) != 0)
                                {
                                  return DomainDefBlockInfo;
                                }

                                v72 = v85;
                                v85[3] = v86[v38];
                                v72[2] = v66;
                                *v72 = v77;
                                v72[1] = AbsoluteTo;
                                *(v72 + 2) = 1;
                                log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set (as mapped to normal) Active Domain[%s:%s] range %d,%d", v69, v70, v71, *v83);
                              }
                            }

                            ++v66;
                            v65 = v83;
                            v67 += 72;
                          }

                          while (v66 < *(v83 + 24));
                        }
                      }

                      goto LABEL_36;
                    }

                    log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%s", v51, v52, v53, v54, "skipping undefined remapped domain:");
                  }

                  else
                  {
                    v55 = v83;
                    if (*(v83 + 24))
                    {
                      v56 = 0;
                      v57 = 0;
                      while (1)
                      {
                        v58 = cstdlib_strcmp((*(v55[2] + v56 + 48) + *(v55[2] + v56)), __s2);
                        v55 = v83;
                        if (!v58)
                        {
                          break;
                        }

                        ++v57;
                        v56 += 72;
                        if (v57 >= *(v83 + 24))
                        {
                          goto LABEL_22;
                        }
                      }

                      v40 = v86[v38];
                      v82 = v83;
                      v41 = v57;
                      if (v83)
                      {
                        goto LABEL_25;
                      }
                    }

                    else
                    {
LABEL_22:
                      v55 = v82;
                      if (v82)
                      {
                        goto LABEL_25;
                      }
                    }
                  }

LABEL_36:
                  ++v38;
                }

                while (v38 < v84);
              }

              v29 = v76;
            }

            ++v29;
          }

          while (v29 < *(*(a1[33] + 32) + 32));
        }

        log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : setDomainsOnSentence End (%x)", v22, v23, v24, DomainDefBlockInfo);
      }

      else
      {
        return 0;
      }
    }

    return DomainDefBlockInfo;
  }

  else
  {

    return TOKENTNERROR(7);
  }
}

uint64_t mergeDomainsOnSentence(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : mergeDomainsOnSentence Begin", a6, a7, a8, v33);
    v39 = 0;
    FERuntimeData_GetActiveDomains(a1, v42, &v39, 0, *(a1 + 156), 1);
    if (v39)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        FERuntimeData_GetDomainRange(a1, v42[v9], &v41);
        DomainBlockIndex = FERuntimeData_GetDomainBlockIndex(a1, v42[v9++], &v38, &v37 + 1);
        v15 = v39;
        v16 = v10;
        if (v9 < v39)
        {
          while (1)
          {
            FERuntimeData_GetDomainRange(a1, v42[v16], &v40);
            v17 = FERuntimeData_GetDomainBlockIndex(a1, v42[v16], &v37, &v36);
            if (*(v40 + 2) == 1 && v37 == v38 && v36 == HIWORD(v37) && *v41 == *v40 && v41[1] == v40[1])
            {
              *(v40 + 2) = 0;
              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Remove duplicate domain %d,%d RANGE %d,%d ?", v12, v13, v14, 1);
            }

            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            ++v16;
            v15 = v39;
            if (v16 >= v39)
            {
              goto LABEL_15;
            }
          }
        }

        v17 = DomainBlockIndex;
LABEL_15:
        ++v10;
      }

      while (v9 < v15);
      if (v15)
      {
        v18 = 0;
        while (1)
        {
          FERuntimeData_GetDomainRange(a1, v42[v18], &v41);
          DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v42[v18], &v38, &v37 + 1);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v38, &v35, v20, v21, v12, v13, v14);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          v22 = (*(v35 + 16) + 72 * HIWORD(v37));
          if (*(*(v35 + 32) + 16 * v22[6] + 8) && *(v41 + 2) == 1)
          {
            v23 = v41[1];
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Modify domain %s RANGE %d,%d ?", v12, v13, v14, *(v22 + 6) + *v22);
            if (v18 < v39)
            {
              v24 = v18;
              do
              {
                FERuntimeData_GetDomainRange(a1, v42[v24], &v40);
                DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v42[v24], &v37, &v36);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v37, &v34, v25, v26, v12, v13, v14);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                if (v40 != v41 && *(v40 + 2) == 1)
                {
                  v27 = *v40;
                  if (v27 == v23 || v27 == *v41 && v40[1] == v41[1])
                  {
                    v28 = (*(v34 + 16) + 72 * v36);
                    if (!cstdlib_strcmp((*(v22 + 6) + *v22), (*(v28 + 6) + *v28)))
                    {
                      v23 = v40[1];
                      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Modify domain %s RANGE %d,%d -> %d %d (merge with %s)", v29, v30, v31, *(v22 + 6) + *v22);
                      *(v40 + 2) = 0;
                    }
                  }
                }
              }

              while (++v24 < v39);
            }

            if (v41[1] != v23)
            {
              DomainDefBlockInfo = FERuntimeData_UpdateDomainRange(a1, v18, v23);
              if ((DomainDefBlockInfo & 0x80000000) != 0)
              {
                goto LABEL_43;
              }
            }
          }

          if (++v18 >= v39)
          {
            goto LABEL_42;
          }
        }
      }

      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_42:
    DomainDefBlockInfo = FERuntimeData_PruneAndDumpActiveDomains(a1);
LABEL_43:
    v17 = DomainDefBlockInfo;
LABEL_44:
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : mergeDomainsOnSentence End (%x)", v12, v13, v14, v17);
    return v17;
  }

  else
  {

    return TOKENTNERROR(7);
  }
}

uint64_t tokentn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2304778241;
  }

  result = 0;
  *a2 = &ITokenizer_0;
  return result;
}

uint64_t tokenTN_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2304778247;
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

uint64_t tokenTN_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v5 = 2304778250;
  v56 = 0;
  v57 = 0;
  if (!a5)
  {
    return 2304778247;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v61);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v60);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v61 + 32), "TOKENTN", 4, 0, "tokentn : ObjOpen Begin", v12, v13, v14, v54);
      v15 = heap_Calloc(*(v61 + 8), 1, 16);
      if (!v15)
      {
        log_OutPublic(*(v61 + 32), "TOKENTN", 21000, 0, v16, v17, v18, v19, v55);
LABEL_43:
        log_OutText(*(v61 + 32), "TOKENTN", 4, 0, "tokentn : ObjOpen End (%x)", v25, v26, v27, v5);
        return v5;
      }

      v20 = v15;
      *v15 = 0;
      *(v15 + 8) = 0;
      v21 = heap_Calloc(*(v61 + 8), 1, 968);
      if (v21)
      {
        v28 = v21;
        *v20 = v21;
        *(v20 + 8) = 58765;
        v29 = v61;
        *v21 = v61;
        *(v21 + 8) = a3;
        v30 = v60;
        *(v21 + 16) = a4;
        *(v21 + 24) = v30;
        *(v21 + 96) = 0;
        v31 = (v21 + 96);
        *(v21 + 32) = a1;
        *(v21 + 40) = a2;
        *(v21 + 104) = 0;
        *(v21 + 120) = 0;
        v32 = (v21 + 120);
        *(v21 + 128) = 0;
        *(v21 + 152) = 0;
        *(v21 + 160) = 0;
        *(v21 + 176) = 0;
        *(v21 + 184) = "TOKENTN";
        *(v21 + 336) = 0;
        *(v21 + 344) = 0;
        *(v21 + 352) = 0;
        *(v21 + 548) = 0;
        *(v21 + 552) = 0;
        *(v21 + 520) = 0;
        *(v21 + 528) = 0;
        *(v21 + 536) = 0;
        *(v21 + 544) = 0;
        *(v21 + 288) = 0;
        *(v21 + 296) = 0;
        *(v21 + 608) = 257;
        v33 = (v21 + 612);
        *(v21 + 612) = 0;
        *(v21 + 960) = 0;
        *(v21 + 280) = 32;
        if ((paramc_ParamGetUInt(*(v29 + 40), "tokentninitstrlen", &v56 + 1) & 0x80000000) == 0)
        {
          *(v28 + 280) = WORD2(v56);
        }

        *(v28 + 282) = 5;
        if ((paramc_ParamGetUInt(*(v61 + 40), "tokentnmaxpcreframeblocks", &v56 + 1) & 0x80000000) == 0)
        {
          *(v28 + 282) = WORD2(v56);
        }

        *(v28 + 284) = 20;
        if ((paramc_ParamGetUInt(*(v61 + 40), "tokentnnumframesinblock", &v56 + 1) & 0x80000000) == 0)
        {
          *(v28 + 284) = WORD2(v56);
        }

        v34 = nuance_pcre_ObjOpen(a3, a4, v28 + 136);
        if ((v34 & 0x80000000) != 0)
        {
          v52 = v34;
          log_OutPublic(*(*v28 + 32), *(v28 + 184), 24021, 0, v35, v36, v37, v38, v55);
          v5 = v52;
        }

        else
        {
          Object = addIdentifier2List_0(v28, "x");
          if ((Object & 0x80000000) == 0)
          {
            if ((objc_GetObject(*(v61 + 48), "FE_DCTLKP", &v58) & 0x80000000) != 0)
            {
              v5 = 0;
              v51 = 24022;
              goto LABEL_47;
            }

            v40 = v58;
            *(v28 + 88) = *(v58 + 8);
            *v31 = *(v40 + 16);
            if ((objc_GetObject(*(v61 + 48), "FE_DEPES", &v57) & 0x80000000) != 0)
            {
              v5 = 0;
              v51 = 24023;
              goto LABEL_47;
            }

            v41 = v57;
            *(v28 + 112) = *(v57 + 8);
            *v32 = *(v41 + 16);
            Object = objc_GetObject(*(v61 + 48), "LINGDB", &v59);
            if ((Object & 0x80000000) == 0)
            {
              *(v28 + 64) = *(v59 + 8);
              Object = FEData_ObjOpen(a3, a4, v28, v23, v24, v25, v26, v27);
              if ((Object & 0x80000000) == 0)
              {
                Object = FERuntimeData_ObjOpen(v28, v42, v22, v23, v24, v25, v26, v27);
                if ((Object & 0x80000000) == 0)
                {
                  Object = FEFunctionMap_ObjOpen(v28, v43, v22, v23, v24, v25, v26, v27);
                  if ((Object & 0x80000000) == 0)
                  {
                    Object = tokenizer_ObjOpen(v28, v44, v22, v23, v24, v25, v26, v27);
                    if ((Object & 0x80000000) == 0)
                    {
                      Object = textnormalizer_ObjOpen(v28, v45, v22, v23, v24, v25, v26, v27);
                      if ((Object & 0x80000000) == 0)
                      {
                        Object = createIDStrings_0(v28);
                        if ((Object & 0x80000000) == 0)
                        {
                          if (!*(v28 + 336))
                          {
                            goto LABEL_49;
                          }

                          v46 = 0;
                          do
                          {
                            log_OutText(*(*v28 + 32), *(v28 + 184), 5, 0, "tokentn : identifier=%s", v25, v26, v27, *(*(v28 + 344) + 8 * v46++));
                            v47 = *(v28 + 336);
                          }

                          while (v46 < v47);
                          if (!*(v28 + 336))
                          {
LABEL_49:
                            log_OutPublic(*(*v28 + 32), "TOKENTN", 24024, 0, v24, v25, v26, v27, v55);
                            v5 = 2304778240;
                            goto LABEL_42;
                          }

                          Object = FEData_blockData_loadDataFiles(v28, v47, *(v28 + 344), (v28 + 616), v24, v25, v26, v27);
                          if ((Object & 0x80000000) == 0)
                          {
                            Object = getFECFGInfo_0(v28);
                            if ((Object & 0x80000000) == 0)
                            {
                              Object = nn_tn_checkIfActive(a3, a4, v61, *(v28 + 184), v33);
                              if ((Object & 0x80000000) == 0)
                              {
                                if (*v33 != 1 || (Object = nn_tn_Load(a3, a4, *(v28 + 32), *(v28 + 40), v61, *(v28 + 184), *(v28 + 88), v27, *(v28 + 96), *(v28 + 104), (v28 + 640)), (Object & 0x80000000) == 0))
                                {
                                  *(v28 + 192) = heap_Alloc;
                                  *(v28 + 200) = heap_Calloc;
                                  *(v28 + 208) = heap_Realloc;
                                  *(v28 + 216) = heap_Free;
                                  v48 = OOCAllocator_Con(v28 + 224, (v28 + 192), *(*v28 + 8));
                                  v5 = LH_ERROR_to_VERROR(v48);
                                  if ((v5 & 0x80000000) != 0)
                                  {
                                    log_OutPublic(*(*v28 + 32), "TOKENTN", 24024, 0, v49, v25, v26, v27, v55);
                                  }

                                  else
                                  {
                                    *(v28 + 264) = 0;
                                    if (*(v28 + 616) != 1)
                                    {
LABEL_48:
                                      *a5 = v20;
                                      *(a5 + 8) = 58764;
                                      goto LABEL_43;
                                    }

                                    v50 = load_lua_code_0(v28, &v56);
                                    v5 = v50;
                                    if ((v50 & 0x80000000) == 0 && !v56)
                                    {
                                      v51 = 24071;
LABEL_47:
                                      log_OutPublic(*(*v28 + 32), *(v28 + 184), v51, 0, v24, v25, v26, v27, v55);
                                      goto LABEL_48;
                                    }

                                    if ((v50 & 0x80000000) == 0)
                                    {
                                      goto LABEL_48;
                                    }
                                  }

                                  goto LABEL_42;
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

          v5 = Object;
        }
      }

LABEL_42:
      tokenTN_loc_ObjClose(v61, v20, v22, v23, v24, v25, v26, v27);
      goto LABEL_43;
    }
  }

  return inited;
}

uint64_t tokenTN_ObjClose(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v7 = *a1;
    v8 = *(*a1 + 184);
    log_OutText(*(**a1 + 32), v8, 4, 0, "tokentn : ObjClose Begin", v4, v5, v6, v28);
    v9 = *v7;
    v3 = FEData_blockData_unloadDataFiles(v7, v10, v11, v12, v13, v14, v15, v16);
    v17 = v7[34];
    if (v17)
    {
      OOC_PlacementDeleteObject((v7 + 28), v17);
      v7[34] = 0;
    }

    OOCAllocator_Des();
    tokenTN_loc_ObjClose(v9, a1, v18, v19, v20, v21, v22, v23);
    log_OutText(*(v9 + 32), v8, 4, 0, "tokentn : ObjClose End (%x)", v24, v25, v26, v3);
  }

  return v3;
}

uint64_t tokenTN_ObjReopen(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  v32 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v4 = *a1;
    v5 = *(v4 + 344);
    if (v5)
    {
      if (*(v4 + 336))
      {
        v6 = 0;
        do
        {
          heap_Free(*(*v4 + 8), *(*(v4 + 344) + 8 * v6));
          *(*(v4 + 344) + 8 * v6++) = 0;
        }

        while (v6 < *(v4 + 336));
        v5 = *(v4 + 344);
      }

      heap_Free(*(*v4 + 8), v5);
      *(v4 + 344) = 0;
      *(v4 + 336) = 0;
      *(v4 + 352) = 0;
      *(v4 + 608) = 257;
    }

    IDStrings_0 = addIdentifier2List_0(v4, "x");
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    IDStrings_0 = createIDStrings_0(v4);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    if (!*(v4 + 344))
    {
      return 6;
    }

    if (*(v4 + 336))
    {
      v11 = 0;
      do
      {
        log_OutText(*(*v4 + 32), *(v4 + 184), 5, 0, "tokentn : identifier=%s", v8, v9, v10, *(*(v4 + 344) + 8 * v11++));
      }

      while (v11 < *(v4 + 336));
    }

    IDStrings_0 = getFECFGInfo_0(v4);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    v17 = *(v4 + 288);
    if (v17)
    {
      heap_Free(*(*v4 + 8), v17);
      *(v4 + 288) = 0;
    }

    IDStrings_0 = FEData_blockData_unloadUnusedDataFiles(v4, *(v4 + 336), *(v4 + 344), v12, v13, v14, v15, v16);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    *(v4 + 960) = 0;
    v22 = *(v4 + 336);
    if (!*(v4 + 336))
    {
      log_OutPublic(*(*v4 + 32), "TOKENTN", 24024, 0, v18, v19, v20, v21, v31);
      return 2304778240;
    }

    *(v4 + 616) = 0;
    IDStrings_0 = FEData_blockData_loadDataFiles(v4, v22, *(v4 + 344), (v4 + 616), v18, v19, v20, v21);
    if ((IDStrings_0 & 0x80000000) != 0 || *(v4 + 612) == 1 && (IDStrings_0 = nn_tn_UnLoad(*v4, *(v4 + 24), v4 + 640), (IDStrings_0 & 0x80000000) != 0))
    {
LABEL_30:
      v3 = IDStrings_0;
    }

    else
    {
      *(v4 + 612) = 0;
      v3 = nn_tn_checkIfActive(*(v4 + 8), *(v4 + 16), *v4, *(v4 + 184), (v4 + 612));
      if ((v3 & 0x80000000) == 0)
      {
        if (*(v4 + 612) != 1 || (v3 = nn_tn_Load(*(v4 + 8), *(v4 + 16), *(v4 + 32), *(v4 + 40), *v4, *(v4 + 184), *(v4 + 88), v23, *(v4 + 96), *(v4 + 104), (v4 + 640)), (v3 & 0x80000000) == 0))
        {
          if (*(v4 + 616) != 1)
          {
            return v3;
          }

          v24 = load_lua_code_0(v4, &v32);
          v3 = v24;
          if ((v24 & 0x80000000) == 0 && !v32)
          {
            log_OutPublic(*(*v4 + 32), *(v4 + 184), 24071, 0, v25, v26, v27, v28, v31);
            return v3;
          }

          if ((v24 & 0x80000000) == 0)
          {
            return v3;
          }
        }
      }
    }

    v29 = *(v4 + 272);
    if (v29)
    {
      OOC_PlacementDeleteObject(v4 + 224, v29);
      *(v4 + 272) = 0;
    }

    OOCAllocator_Des();
  }

  return v3;
}

uint64_t tokenTN_ProcessStart(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v7 = *a1;
    log_OutText(*(*v7 + 32), *(v7 + 184), 4, 0, "tokentn : ProcessStart Begin", v4, v5, v6, v17);
    if (*(v7 + 336))
    {
      v3 = nuance_pcre_Init(*(v7 + 136), *(v7 + 144), *(v7 + 282), *(v7 + 284));
      if ((v3 & 0x80000000) != 0)
      {
        log_OutPublic(*(*v7 + 32), *(v7 + 184), 24051, 0, v12, v13, v14, v15, v18);
      }

      log_OutText(*(*v7 + 32), *(v7 + 184), 4, 0, "tokentn : ProcessStart End (%x)", v13, v14, v15, v3);
    }

    else
    {
      log_OutPublic(*(*v7 + 32), "TOKENTN", 24024, 0, v8, v9, v10, v11, v18);
      return 2304778240;
    }
  }

  return v3;
}

uint64_t tokenTN_Process(uint64_t *a1, int a2, void *a3, int a4, _DWORD *a5)
{
  v52 = 0;
  v51 = 0;
  matched = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0)
  {
    return matched;
  }

  if ((safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {
    return matched;
  }

  v13 = *a1;
  log_OutText((*v13)[4], v13[23], 4, 0, "tokentn : Process Begin", v10, v11, v12, v49);
  v13[9] = a3;
  *(v13 + 20) = a4;
  *(v13 + 137) = log_GetLogLevel((*v13)[4]) > 4;
  v13[33] = 0;
  matched = LingDBHasSentence(v13[8], v13[9], v13[10], &v52);
  if ((matched & 0x80000000) != 0)
  {
    return matched;
  }

  if (!v52)
  {
    goto LABEL_32;
  }

  inited = initLDO((v13 + 28), v13 + 33);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  matched = importFromLingDB(*v13, v13[8], v13[9], v13[10], v13 + 33);
  if ((matched & 0x80000000) == 0)
  {
    v15 = v13[33];
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = LDO_ComputeText(v15, &v51);
    matched = LH_ERROR_to_VERROR(v16);
    if ((matched & 0x80000000) == 0)
    {
      v13[38] = LHString_BorrowCPtr(v51);
      *(v13 + 156) = LHString_Length(v51);
      if (!v13[38])
      {
        goto LABEL_18;
      }

      log_OutText((*v13)[4], v13[23], 5, 0, "<LOGFE> processing sentence : _%s_", v19, v20, v21, v13[38]);
      inited = tokenTN_init_ProcessData(v13);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      if (*(v13 + 240) == 1 && *(v13 + 154) == 1)
      {
        inited = tokentn_AllInOneLoop(v13, 1);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        if (*(v13 + 137) == 1)
        {
          inited = dumpTokenLDO(v13, "At End of btok Processing", 1, v22, v23, v24, v25, v26);
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_33;
          }
        }
      }

      inited = tokentn_AllInOneLoop(v13, 0);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      matched = clearBTokMatchList(v13);
      if ((matched & 0x80000000) == 0)
      {
LABEL_18:
        v27 = v13[33];
        if (v27)
        {
          if (*(v13 + 154) != 1 || (v28 = v13[34]) == 0)
          {
LABEL_27:
            v35 = v13[33];
            if (v35)
            {
              matched = exportToLingDB(*v13, v13[8], v13[9], v13[10], (v13 + 28), v35, 1, 0);
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_34;
              }

              if (v13[38])
              {
                if (*(v13 + 137) == 1)
                {
                  matched = dumpTokenRecordsInLingDB(v13, "LINGDB At End of Processing", 1, v36, v37, v38, v39, v40);
                  if ((matched & 0x80000000) != 0)
                  {
                    goto LABEL_34;
                  }
                }
              }
            }

            goto LABEL_32;
          }

          if (*(v13 + 137) != 1)
          {
LABEL_24:
            v29 = LuaVMLDO_RunFunction(v28, "run", v27);
            matched = LH_ERROR_to_VERROR(v29);
            if ((matched & 0x80000000) != 0)
            {
              log_OutPublic((*v13)[4], v13[23], 24072, 0, v31, v32, v33, v34, v50);
              goto LABEL_34;
            }

            if (*(v13 + 137) == 1)
            {
              matched = dumpTokenLDO(v13, "At End of Processing; after Lua", 1, v30, v31, v32, v33, v34);
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_34;
              }
            }

            goto LABEL_27;
          }

          inited = dumpTokenLDO(v13, "At End of Processing; before Lua", 1, v17, v18, v19, v20, v21);
          if ((inited & 0x80000000) == 0)
          {
            v27 = v13[33];
            v28 = v13[34];
            goto LABEL_24;
          }

LABEL_33:
          matched = inited;
          goto LABEL_34;
        }

LABEL_32:
        *a5 = 1;
      }
    }
  }

LABEL_34:
  if (v51)
  {
    OOC_PlacementDeleteObject((v13 + 28), v51);
    v51 = 0;
  }

  v41 = v13[33];
  if (v41)
  {
    deinitLDO((v13 + 28), v41);
    v13[33] = 0;
  }

  v42 = v13[69];
  if (v42)
  {
    heap_Free((*v13)[1], v42);
    v13[69] = 0;
  }

  clearStrRes(*v13, (v13 + 49));
  clearStrRes(*v13, (v13 + 51));
  clearStrRes(*v13, (v13 + 61));
  clearStrRes(*v13, (v13 + 70));
  clearStrRes(*v13, (v13 + 72));
  clearStrRes(*v13, (v13 + 74));
  clearStrRes(*v13, (v13 + 63));
  clearStrRes(*v13, (v13 + 53));
  clearStrRes(*v13, (v13 + 59));
  clearStrRes(*v13, (v13 + 55));
  clearStrRes(*v13, (v13 + 57));
  freeAlignmentData(v13);
  freeMatchList(v13);
  freeSolutionList(v13);
  v46 = v13[40];
  if (v46)
  {
    heap_Free((*v13)[1], v46);
    v13[40] = 0;
  }

  v47 = v13[41];
  if (v47)
  {
    heap_Free((*v13)[1], v47);
    v13[41] = 0;
  }

  log_OutText((*v13)[4], v13[23], 4, 0, "tokentn : Process End (%x)", v43, v44, v45, matched);
  return matched;
}

uint64_t tokenTN_ProcessEnd(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v7 = *a1;
    log_OutText(*(**a1 + 32), *(*a1 + 184), 4, 0, "tokentn : ProcessEnd Begin", v4, v5, v6, v13);
    v8 = nuance_pcre_DeInit(*(v7 + 136), *(v7 + 144));
    log_OutText(*(*v7 + 32), *(v7 + 184), 4, 0, "tokentn : ProcessEnd End (%x)", v9, v10, v11, v8);
    return 0;
  }

  return v3;
}

uint64_t addIdentifier2List_0(uint64_t a1, char *__s2)
{
  v4 = *(a1 + 336);
  if (*(a1 + 336))
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 344);
      if (v6)
      {
        if (!cstdlib_strcmp(*(v6 + 8 * v5), __s2))
        {
          return 0;
        }

        v4 = *(a1 + 336);
      }

      ++v5;
    }

    while (v5 < v4);
    if (!v4)
    {
      goto LABEL_10;
    }

    v7 = heap_Realloc(*(*a1 + 8), *(a1 + 344), 8 * v4 + 8);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
    v7 = heap_Calloc(*(*a1 + 8), 1, 8);
    if (!v7)
    {
LABEL_13:
      v17 = 2304778250;
      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v8, v9, v10, v11, v19);
      return v17;
    }
  }

  *(a1 + 344) = v7;
  v12 = *(*a1 + 8);
  v13 = cstdlib_strlen(__s2);
  v14 = heap_Calloc(v12, 1, (v13 + 1));
  v15 = *(a1 + 336);
  *(*(a1 + 344) + 8 * v15) = v14;
  v16 = *(*(a1 + 344) + 8 * v15);
  if (!v16)
  {
    goto LABEL_13;
  }

  cstdlib_strcpy(v16, __s2);
  v17 = 0;
  ++*(a1 + 336);
  return v17;
}

uint64_t createIDStrings_0(_BYTE *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  __s = 0;
  *__s2 = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  *v14 = 0u;
  v15 = 0u;
  result = paramc_ParamGet(*(*a1 + 40), "langcode", &__s, 0);
  if ((result & 0x80000000) == 0)
  {
    if (cstdlib_strlen(__s))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = __s;
        v6 = __s[v3];
        v16[v3] = v6;
        __s2[v3] = v6;
        v3 = ++v4;
      }

      while (cstdlib_strlen(v5) > v4);
    }

    strcpy(&__s2[2], "x");
    v16[3] = 0;
    result = paramc_ParamGet(*(*a1 + 40), "voice", &__s, 0);
    if ((result & 0x80000000) == 0)
    {
      if (cstdlib_strlen(__s) <= 0x1A)
      {
        if (cstdlib_strlen(__s))
        {
          v7 = 0;
          v8 = 0;
          do
          {
            v9 = __s;
            v14[v7] = __s[v7];
            v7 = ++v8;
          }

          while (cstdlib_strlen(v9) > v8);
        }

        v14[cstdlib_strlen(__s)] = 0;
        if (cstdlib_strlen(__s2) >= 1)
        {
          v10 = 0;
          do
          {
            __s2[v10] = ssft_tolower(__s2[v10]);
            ++v10;
          }

          while (cstdlib_strlen(__s2) > v10);
        }

        if (cstdlib_strlen(v16) >= 1)
        {
          v11 = 0;
          do
          {
            v16[v11] = ssft_tolower(v16[v11]);
            ++v11;
          }

          while (cstdlib_strlen(v16) > v11);
        }

        if (cstdlib_strlen(v14) >= 1)
        {
          v12 = 0;
          do
          {
            v14[v12] = ssft_tolower(v14[v12]);
            ++v12;
          }

          while (cstdlib_strlen(v14) > v12);
        }

        result = addIdentifier2List_0(a1, __s2);
        if ((result & 0x80000000) == 0)
        {
          a1[352] = a1[336];
          result = addIdentifier2List_0(a1, v16);
          if ((result & 0x80000000) == 0)
          {
            return addIdentifier2List_0(a1, v14);
          }
        }
      }

      else
      {
        return 2304778240;
      }
    }
  }

  return result;
}

uint64_t getFECFGInfo_0(uint64_t a1)
{
  v2 = 2304778240;
  v11 = -1;
  __c_1 = 0;
  __c = 0;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_g2p", &__c_1, &v11, &__c) & 0x80000000) == 0)
  {
    if (v11 == 1 && __c_1 != 0)
    {
      v4 = cstdlib_strchr(*__c_1, __c);
      if (v4)
      {
        *v4 = 0;
      }

      *(a1 + 608) = cstdlib_atoi(*__c_1);
    }

    v11 = -1;
    v5 = (*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_tn", &__c_1, &v11, &__c);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = v5;
      if (v11 == 1 && __c_1)
      {
        v7 = cstdlib_strchr(*__c_1, __c);
        if (v7)
        {
          *v7 = 0;
        }

        *(a1 + 609) = cstdlib_atoi(*__c_1);
      }

      return v6;
    }
  }

  return v2;
}

uint64_t load_lua_code_0(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = *(a1 + 272);
  if (v4)
  {
    OOC_PlacementDeleteObject(a1 + 224, v4);
    *(a1 + 272) = 0;
  }

  OOCAllocator_Des();
  IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(*(a1 + 8), *(a1 + 16), 0, a2);
  v6 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
  if ((v6 & 0x80000000) == 0)
  {
    if (*a2 != 1)
    {
      return v6;
    }

    *a2 = 0;
    v7 = OOCAllocator_Con(a1 + 224, (a1 + 192), *(*a1 + 8));
    v8 = LH_ERROR_to_VERROR(v7);
    if ((v8 & 0x80000000) != 0 || (v9 = PNEW_LuaVMLDO_Con(a1 + 224, a1 + 224, *(a1 + 8), *(a1 + 16), "TOKENTN", (a1 + 272)), v8 = LH_ERROR_to_VERROR(v9), (v8 & 0x80000000) != 0))
    {
      v6 = v8;
    }

    else
    {
      ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(*(a1 + 272), 0);
      v6 = LH_ERROR_to_VERROR(ScriptFromRIFF);
      if ((v6 & 0x80000000) == 0)
      {
        *a2 = 1;
        return v6;
      }
    }
  }

  v11 = *(a1 + 272);
  if (v11)
  {
    OOC_PlacementDeleteObject(a1 + 224, v11);
    *(a1 + 272) = 0;
  }

  OOCAllocator_Des();
  return v6;
}

uint64_t tokenTN_loc_ObjClose(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = result;
    log_OutText(*(result + 32), "TOKENTN", 4, 0, "tokentn : loc ObjClose Begin", a6, a7, a8, v64);
    NullHandle = safeh_GetNullHandle();
    v12 = 0;
    if (!safeh_HandlesEqual(*a2, a2[1], NullHandle, v11))
    {
      result = safeh_HandleCheck(*a2, a2[1], 58765, 968);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      LODWORD(v12) = result;
      v20 = *a2;
      v21 = tokenizer_ObjClose(*a2, v13, v14, v15, v16, v17, v18, v19);
      if (v21 < 0)
      {
        LODWORD(v12) = v21;
      }

      v29 = textnormalizer_ObjClose(v20, v22, v23, v24, v25, v26, v27, v28);
      if (v29 < 0)
      {
        LODWORD(v12) = v29;
      }

      v30 = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(v20 + 136), *(v20 + 144), v30, v31))
      {
        v39 = nuance_pcre_ObjClose(*(v20 + 136), *(v20 + 144));
        if (v39 < 0)
        {
          LODWORD(v12) = v39;
        }
      }

      v40 = FEData_ObjClose(v20, v32, v33, v34, v35, v36, v37, v38);
      if (v40 < 0)
      {
        LODWORD(v12) = v40;
      }

      *(v20 + 152) = 0;
      v48 = FERuntimeData_ObjClose(v20, v41, v42, v43, v44, v45, v46, v47);
      if (v48 < 0)
      {
        LODWORD(v12) = v48;
      }

      *(v20 + 176) = 0;
      v56 = FEFunctionMap_ObjClose(v20, v49, v50, v51, v52, v53, v54, v55);
      if (v56 >= 0)
      {
        v12 = v12;
      }

      else
      {
        v12 = v56;
      }

      *(v20 + 160) = 0;
      if (*(v20 + 88))
      {
        objc_ReleaseObject(*(v9 + 48), "FE_DCTLKP");
      }

      if (*(v20 + 112))
      {
        objc_ReleaseObject(*(v9 + 48), "FE_DEPES");
      }

      if (*(v20 + 64))
      {
        objc_ReleaseObject(*(v9 + 48), "LINGDB");
      }

      v57 = *(v20 + 344);
      if (v57)
      {
        if (*(v20 + 336))
        {
          v58 = 0;
          do
          {
            heap_Free(*(v9 + 8), *(*(v20 + 344) + 8 * v58));
            *(*(v20 + 344) + 8 * v58++) = 0;
          }

          while (v58 < *(v20 + 336));
          v57 = *(v20 + 344);
        }

        heap_Free(*(v9 + 8), v57);
      }

      v59 = *(v20 + 288);
      if (v59)
      {
        heap_Free(*(v9 + 8), v59);
      }

      if (*(v20 + 612) == 1)
      {
        v60 = nn_tn_UnLoad(*v20, *(v20 + 24), v20 + 640);
        if (v60 >= 0)
        {
          v12 = v12;
        }

        else
        {
          v12 = v60;
        }
      }

      heap_Free(*(v9 + 8), v20);
    }

    heap_Free(*(v9 + 8), a2);
    return log_OutText(*(v9 + 32), "TOKENTN", 4, 0, "tokentn : loc ObjClose End (%x)", v61, v62, v63, v12);
  }

  return result;
}

uint64_t tokenTN_init_ProcessData(uint64_t a1)
{
  v2 = 2304778250;
  v3 = heap_Calloc(*(*a1 + 8), 1, *(a1 + 312) + 1);
  *(a1 + 552) = v3;
  if (v3)
  {
    *(a1 + 314) = 1;
    if (*(a1 + 312))
    {
      v4 = 0;
      while (utf8_strchr(g_szSpace_1, (*(a1 + 304) + v4)))
      {
        v4 += utf8_determineUTF8CharLength(*(*(a1 + 304) + v4));
        v5 = *(a1 + 312);
        if (v5 <= v4)
        {
          goto LABEL_8;
        }
      }

      v5 = *(a1 + 312);
LABEL_8:
      if (v5 > v4)
      {
        do
        {
          v4 = v4;
          if (utf8_strchr(g_szSpace_1, (*(a1 + 304) + v4)))
          {
            ++*(a1 + 314);
            for (i = *(*(a1 + 304) + v4); ; i = *(*(a1 + 304) + v4))
            {
              v4 += utf8_determineUTF8CharLength(i);
              if (*(a1 + 312) <= v4 || !utf8_strchr(g_szSpace_1, (*(a1 + 304) + v4)))
              {
                break;
              }
            }
          }

          else
          {
            LOWORD(v4) = v4 + utf8_determineUTF8CharLength(*(*(a1 + 304) + v4));
          }
        }

        while (*(a1 + 312) > v4);
      }
    }

    inited = initStrRes(a1, a1 + 392);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 408);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 488);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 560);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 576);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 592);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 504);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 424);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 472);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 440);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, a1 + 456);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initAlignmentData(a1);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initMatchList(a1);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v2 = initSolutionList(a1);
    if ((v2 & 0x80000000) == 0)
    {
      v8 = heap_Calloc(*(*a1 + 8), 1, 40);
      *(a1 + 320) = v8;
      v13 = *a1;
      if (!v8)
      {
LABEL_33:
        log_OutPublic(*(v13 + 32), *(a1 + 184), 24048, 0, v9, v10, v11, v12, v16);
        return 2304778250;
      }

      v14 = heap_Calloc(*(v13 + 8), 1, 48);
      *(a1 + 328) = v14;
      if (!v14)
      {
        v13 = *a1;
        goto LABEL_33;
      }
    }
  }

  return v2;
}

uint64_t tokentn_ReadSentence(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : ReadSentence Begin", a6, a7, a8, v16);
  a1[38] = 0;
  v9 = (*(a1[8] + 104))(a1[9], a1[10], 1, 0, &v18);
  if ((v9 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24034, 0, v10, v11, v12, v13, v17);
    return TOKENTNERROR(0);
  }

  else
  {
    v14 = v9;
    if (v18)
    {
      (*(a1[8] + 184))(a1[9], a1[10]);
    }

    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : ReadSentence End (%x)", v11, v12, v13, v14);
  }

  return v14;
}

BOOL filteredTriggerType(int a1, unsigned int a2)
{
  if (!a1 || a1 == 1 && a2 == 2 || a1 == 2 && a2 == 1 || a1 == 3 && !a2 || a1 == 4 && a2 < 2)
  {
    return 1;
  }

  if (a1 == 6)
  {
    if (a2 - 1 < 2)
    {
      return 1;
    }
  }

  else if (a1 == 5)
  {
    return (a2 & 0xFFFFFFFD) == 0;
  }

  return 0;
}

uint64_t tokentn_ApplyOneRule(uint64_t *a1, uint64_t *a2, int a3, unsigned int a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8)
{
  if (!filteredTriggerType(a3, a4))
  {
    v20 = *(*a1 + 32);
    v21 = a1[23];
    v22 = *(*a2 + 24);
    v23 = "rule %s (token %s, %d,%d) blocked by triggerType %s";
    goto LABEL_8;
  }

  if (*(a1 + 240) == 1 && blockedByBtok(a1, a5, a6, v15, v16, v17, v18, v19) == 1)
  {
    v20 = *(*a1 + 32);
    v21 = a1[23];
    v22 = *(*a2 + 24);
    v23 = "rule %s (token %s, %d,%d) blocked by prior btok";
LABEL_8:
    log_OutText(v20, v21, 5, 0, v23, v17, v18, v19, v22);
    return 0;
  }

  v24 = *a2;
  v25 = *(*a2 + 8);
  v26 = *v25;
  *(v26 + 82) = 0;
  *(v26 + 40) = 0;
  v27 = *(v24 + 24);
  v25[2] = a1[38];
  v25[3] = v27;
  *(v26 + 88) = *(v24 + 48);
  *(v26 + 104) = a7;
  *(v26 + 106) = a8;
  *(v25 + 20) = *(v24 + 40);
  *(v25 + 26) = *(v24 + 44);
  *(v25 + 27) = *(v24 + 46);
  *(v25 + 11) = 0;
  *(v25 + 12) = 0;
  result = tokenizer_apply_regex_LongestMatch(a1, v24, v14, v15, v16, v17, v18, v19);
  if ((result & 0x80000000) == 0)
  {
    v29 = *(*a2 + 8);
    **(v29 + 8) = 0;
    *(v29 + 44) = 0;
  }

  return result;
}

uint64_t tokentn_AllInOneLoop(uint64_t a1, uint64_t a2)
{
  v110 = *MEMORY[0x277D85DE8];
  v103 = 0;
  bzero(v109, 0x3E8uLL);
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v7 = *(*a1 + 32);
  v8 = *(a1 + 184);
  if (*(a1 + 960) == 1)
  {
    log_OutText(v7, v8, 4, 0, "tokentn : AllInOneLoop Begin (btok=%d)", v4, v5, v6, a2);
  }

  else
  {
    log_OutText(v7, v8, 4, 0, "tokentn : AllInOneLoop Begin", v4, v5, v6, 0);
  }

  if ((paramc_ParamGetInt(*(*a1 + 40), "maxTNNNcallspersent", &v100) & 0x80000000) == 0)
  {
    v16 = v100;
    *(a1 + 728) = v100;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "set maxNNCallsPerSent to %d", v13, v14, v15, v16);
  }

  *(a1 + 730) = 0;
  v17 = *(a1 + 168);
  *(*(*v17 + 8) + 32) = a1;
  v18 = setDomainsOnSentence(a1, v9, v10, v11, v12, v13, v14, v15);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v26 = mergeDomainsOnSentence(a1, v19, v20, v21, v22, v23, v24, v25);
  if ((v26 & 0x80000000) == 0)
  {
    v27 = *v17;
    *(*(*v17 + 8) + 16) = *(a1 + 304);
    *(v27 + 64) = 16;
    *(v27 + 42) = *(a1 + 312);
    v28 = *(*(a1 + 264) + 16);
    NumberChildren = LDOTreeNode_GetNumberChildren(v28);
    v33 = *(*a1 + 32);
    v34 = *(a1 + 184);
    if (NumberChildren)
    {
      v97 = a2;
      log_OutText(v33, v34, 4, 0, "tokentn : start loop...", v29, v30, v31, v94);
      v36 = *(v28 + 80);
      v35 = *(v28 + 88);
      if (v36 < v35)
      {
        v96 = v35;
        while (1)
        {
          v98 = 0;
          __s1 = 0;
          v37 = *v36;
          v38 = LDOTreeNode_ComputeAbsoluteFrom(*v36, &v98 + 1);
          ActiveDomains = LH_ERROR_to_VERROR(v38);
          if ((ActiveDomains & 0x80000000) != 0 || (v46 = LDOTreeNode_ComputeAbsoluteTo(v37, &v98), ActiveDomains = LH_ERROR_to_VERROR(v46), (ActiveDomains & 0x80000000) != 0))
          {
LABEL_66:
            v26 = ActiveDomains;
            goto LABEL_67;
          }

          Type = LDOObject_GetType(v37, &__s1);
          v26 = LH_ERROR_to_VERROR(Type);
          if ((v26 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          v48 = WORD2(v98);
          v49 = v98;
          if (cstdlib_strcmp(__s1, "TOKEN_ALPHA"))
          {
            if (cstdlib_strcmp(__s1, "TOKEN_DIGIT"))
            {
              if (cstdlib_strcmp(__s1, "TOKEN_PUNCT"))
              {
                goto LABEL_58;
              }

              v50 = 2;
            }

            else
            {
              v50 = 1;
            }
          }

          else
          {
            v50 = 0;
          }

          v102 = 0;
          ActiveDomains = FERuntimeData_GetActiveDomains(a1, v109, &v102, v48, v49, 0);
          if ((ActiveDomains & 0x80000000) != 0)
          {
            goto LABEL_66;
          }

          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "START basic token %d,%d ... %d active domains", v43, v44, v45, v48);
          if (v102)
          {
            for (i = 0; i < v102; ++i)
            {
              v55 = v109[i];
              v108 = 0;
              v107 = 0;
              v106 = 0;
              v105 = 0;
              v104 = 0;
              v56 = *(a1 + 168);
              v57 = *v56;
              *(v57 + 46) = 0;
              *(v57 + 44) = v48;
              *(v57 + 48) = 0;
              if ((FERuntimeData_GetDomainRange(a1, v55, &v107) & 0x80000000) == 0)
              {
                log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Domain %d : range %d,%d", v51, v52, v53, i);
                *(*v56 + 46) = *(v107 + 2);
                if ((FERuntimeData_GetDomainBlockIndex(a1, v55, &v106, &v108) & 0x80000000) == 0 && (FEData_blockData_newGetDomainDefBlockInfo(a1, v106, &v105, v58, v59, v51, v52, v53) & 0x80000000) == 0)
                {
                  if (v108 <= *(v105 + 24))
                  {
                    v61 = *(v105 + 16) + 72 * v108;
                    if (v97 == 1 && *(a1 + 960) == 1)
                    {
                      if (*(v61 + 42))
                      {
                        v62 = 0;
                        v63 = 0;
                        do
                        {
                          v64 = *(v61 + 32);
                          v65 = *v56;
                          *(v65 + 40) = 0;
                          v65 += 40;
                          v66 = v64 + v62;
                          *(v65 + 8) = v66;
                          if ((FEData_blockData_getBTokAndRegexData(a1, *(v66 + 2), *(v66 + 4), (v65 - 8), v65, (v65 - 16), &v104, v53) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if ((tokentn_ApplyOneRule(a1, v56, v104, v50, v48, v49, v106, v108) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v63;
                          v62 += 12;
                        }

                        while (v63 < *(v61 + 42));
                      }
                    }

                    else
                    {
                      v67 = *(v105 + 32) + 16 * *(v61 + 12);
                      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "doing domain %d, Domain[%s:%s] (applying %d rules)", v51, v52, v53, i);
                      if (*(v67 + 8))
                      {
                        v68 = 0;
                        v69 = 0;
                        do
                        {
                          v70 = *v67 + v68;
                          v71 = *v56;
                          *(v71 + 40) = 0;
                          v71 += 40;
                          *(v71 + 8) = v70;
                          if ((FEData_blockData_getTokenAndRegexData(a1, v70, (v71 - 8), v71, (v71 - 16), &v104, v52, v53) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if ((tokentn_ApplyOneRule(a1, v56, v104, v50, v48, v49, v106, v108) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v69;
                          v68 += 12;
                        }

                        while (v69 < *(v67 + 8));
                      }
                    }
                  }

                  else
                  {
                    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24028, "%s%d%s%d", v60, v51, v52, v53, "domain");
                    TOKENTNERROR(0);
                  }
                }
              }
            }
          }

          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "END of loop for basic token %d,%d", v51, v52, v53, v48);
          v26 = tokenizer_ResolveMatches(a1, v72, v73, v74, v75, v76, v77, v78);
          if ((v26 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          if (!FERuntimeData_GetNumMatches(a1, v79, v40, v41, v42, v43, v44, v45))
          {
            break;
          }

          v26 = textnormalizer_DoExpansionActions(a1, &v103, v80, v81, v82, v83, v84, v85);
          v35 = v96;
          if ((v26 & 0x80000000) != 0)
          {
            log_OutPublic(*(*a1 + 32), *(a1 + 184), 24029, 0, v42, v43, v44, v45, v95);
            goto LABEL_67;
          }

          v86 = HIDWORD(v98);
          v87 = v103;
          if (HIDWORD(v98) >= v103)
          {
            v88 = HIDWORD(v98);
            v89 = v103;
          }

          else
          {
            ++v36;
            v88 = HIDWORD(v98);
            v89 = v103;
            while (v36 != v96)
            {
              v90 = LDOTreeNode_ComputeAbsoluteFrom(*v36, &v98 + 1);
              v26 = LH_ERROR_to_VERROR(v90);
              if ((v26 & 0x80000000) != 0)
              {
                goto LABEL_67;
              }

              v88 = HIDWORD(v98);
              v89 = v103;
              if (HIDWORD(v98) >= v103)
              {
                break;
              }

              ++v36;
            }
          }

          if (v88 > v89)
          {
            log_OutPublic(*(*a1 + 32), *(a1 + 184), 24063, 0, v42, v43, v44, v45, v95);
          }

          FERuntimeData_FreeMatches(a1, 0, v40, v41, v42, v43, v44, v45);
          if (v86 >= v87)
          {
            goto LABEL_58;
          }

LABEL_59:
          if (v36 >= v35)
          {
            goto LABEL_60;
          }
        }

        FERuntimeData_FreeMatches(a1, 0, v80, v81, v82, v83, v84, v85);
        v35 = v96;
LABEL_58:
        ++v36;
        goto LABEL_59;
      }

LABEL_60:
      if ((paramc_ParamGetStr(*(*a1 + 40), "spaceInPYT", &v101) & 0x80000000) == 0 && !LH_stricmp(v101, "yes"))
      {
        v26 = nntn_write_LD_T_INPUTSPACETAG(a1);
        if ((v26 & 0x80000000) != 0)
        {
          return v26;
        }
      }

LABEL_67:
      FERuntimeData_FreeMatches(a1, 1, v40, v41, v42, v43, v44, v45);
      v33 = *(*a1 + 32);
      v34 = *(a1 + 184);
      v91 = "tokentn : AllInOneLoop End (%x)";
      v94 = v26;
      v92 = 4;
    }

    else
    {
      v91 = "no basic token records to process";
      v92 = 5;
    }

    log_OutText(v33, v34, v92, 0, v91, v29, v30, v31, v94);
  }

  return v26;
}

uint64_t FEData_domainDefs_ObjOpen(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*a1 + 32);
  v11 = a1[23];
  if (a2)
  {
    log_OutText(v10, v11, 4, 0, "domainDefs : ObjOpen Begin", a6, a7, a8, v23);
    *a2 = 0;
    v12 = heap_Calloc(*(*a1 + 8), 1, 2);
    if (v12)
    {
      v17 = v12;
      cstdlib_memset(v12, 0, 2uLL);
      *v17 = 0;
      *a2 = v17;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "domainDefs : ObjOpen End (%x)", v18, v19, v20, 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v13, v14, v15, v16, v24);
    v22 = 10;
  }

  else
  {
    log_OutPublic(v10, v11, 24049, 0, a5, a6, a7, a8, v23);
    v22 = 7;
  }

  return FEDATA_ERROR(v22);
}

uint64_t FEData_domainDefs_ObjClose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1[19] + 8);
  v10 = *(*a1 + 32);
  v11 = a1[23];
  if (v9)
  {
    log_OutText(v10, v11, 4, 0, "domainDefs : ObjClose Begin", a6, a7, a8, v16);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "domainDefs : ObjClose End (%x)", v12, v13, v14, 0);
    heap_Free(*(*a1 + 8), v9);
    return 0;
  }

  else
  {
    log_OutPublic(v10, v11, 24049, 0, a5, a6, a7, a8, v16);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_ObjOpen(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*a1 + 32);
  v11 = a1[23];
  if (a2)
  {
    log_OutText(v10, v11, 4, 0, "blockData : ObjOpen Begin", a6, a7, a8, v23);
    *a2 = 0;
    v12 = heap_Calloc(*(*a1 + 8), 1, 144);
    if (v12)
    {
      v17 = v12;
      cstdlib_memset(v12, 0, 0x90uLL);
      *v17 = 0;
      v17[17] = 0;
      *a2 = v17;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "blockData : ObjOpen End (%x)", v18, v19, v20, 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v13, v14, v15, v16, v24);
    v22 = 10;
  }

  else
  {
    log_OutPublic(v10, v11, 24049, 0, a5, a6, a7, a8, v23);
    v22 = 7;
  }

  return FEDATA_ERROR(v22);
}

uint64_t FEData_blockData_ObjClose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1[19] + 16);
  v10 = *(*a1 + 32);
  v11 = a1[23];
  if (v9)
  {
    log_OutText(v10, v11, 4, 0, "blockData : ObjClose Begin", a6, a7, a8, v16);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "blockData : ObjClose End (%x)", v12, v13, v14, 0);
    heap_Free(*(*a1 + 8), v9);
    return 0;
  }

  else
  {
    log_OutPublic(v10, v11, 24049, 0, a5, a6, a7, a8, v16);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_IsRemappable(void *a1, char *__s2, void *a3, _WORD *a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (!v8)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v20);
    return 0;
  }

  if (!*v8)
  {
    return 0;
  }

  v13 = 0;
  while (1)
  {
    v14 = *(*(*(*(v8 + 17) + 8) + 8 * v13) + 24);
    if (v14)
    {
      if (!*v14)
      {
        v15 = *(*(*(*(v8 + 17) + 8) + 8 * v13) + 24);
        if (*(v15 + 16))
        {
          break;
        }
      }
    }

LABEL_6:
    if (++v13 >= *v8)
    {
      return 0;
    }
  }

  v16 = 0;
  while (1)
  {
    v17 = *(*(v15 + 8) + 8 * v16);
    if (*(v17 + 12))
    {
      break;
    }

LABEL_14:
    ++v16;
    v15 = *(*(*(*(v8 + 17) + 8) + 8 * v13) + 24);
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_6;
    }
  }

  v18 = 0;
  while (cstdlib_strcmp(*(*(v17 + 16) + 8 * v18), __s2))
  {
    if (++v18 >= *(v17 + 12))
    {
      goto LABEL_14;
    }
  }

  *a3 = *v17;
  *a4 = *(v17 + 8);
  *a5 = *(v17 + 10);
  return 1;
}

uint64_t FEData_blockData_newGetDomainDefBlockInfo(void *a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    if (*v8 > a2)
    {
      *a3 = *(*(*(*(v8 + 17) + 8) + 8 * a2) + 16);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d", a5, a6, a7, a8, "domain");
    v10 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v11);
    v10 = 7;
  }

  return FEDATA_ERROR(v10);
}

uint64_t FEData_blockData_newGetDomainEntry(void *a1, unsigned int a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    if (*v8 <= a2)
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d", a5, a6, a7, a8, "domain");
    }

    else
    {
      v9 = *(*(*(*(v8 + 17) + 8) + 8 * a2) + 16);
      if (*(v9 + 24) > a3)
      {
        *a4 = *(v9 + 16) + 72 * a3;
        return 0;
      }

      log_OutPublic(*(*a1 + 32), a1[23], 24042, "%s%d%s%d", a5, a6, a7, a8, "domain");
    }

    v11 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v12);
    v11 = 7;
  }

  return FEDATA_ERROR(v11);
}

uint64_t FEData_blockData_newGetPriorityList(void *a1, unsigned int a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    if (*v8 <= a2)
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d", a5, a6, a7, a8, "domain");
    }

    else
    {
      v9 = *(*(*(*(v8 + 17) + 8) + 8 * a2) + 16);
      if (*(v9 + 48) > a3)
      {
        *a4 = *(v9 + 32) + 16 * a3;
        return 0;
      }

      log_OutPublic(*(*a1 + 32), a1[23], 24043, "%s%d%s%d", a5, a6, a7, a8, "priorityListIndex");
    }

    v11 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v12);
    v11 = 7;
  }

  return FEDATA_ERROR(v11);
}

uint64_t FEData_blockData_getDomains2SearchIn(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    v11 = *v8;
    if (a6 == 1)
    {
      if (*v8)
      {
        v12 = 0;
        v13 = *(*(v8 + 17) + 8);
        do
        {
          if (*(*(v13 + 8 * v12) + 16))
          {
            v14 = *a5;
            if (v14 <= 0x1F2)
            {
              *(a4 + 2 * v14) = v12;
              ++*a5;
              v11 = *v8;
            }
          }

          ++v12;
        }

        while (v12 < v11);
      }
    }

    else if (*v8)
    {
      v18 = 0;
      v19 = a2;
      do
      {
        v20 = *(*(*(*(v8 + 17) + 8) + 8 * v18) + 16);
        if (v20)
        {
          v21 = a2 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = 0;
          do
          {
            if (!cstdlib_strcmp(*(a3 + 8 * v22), *v20))
            {
              v23 = *a5;
              if (v23 <= 0x1F2)
              {
                *(a4 + 2 * v23) = v18;
                ++*a5;
              }
            }

            ++v22;
          }

          while (v22 < v19);
          v11 = *v8;
        }

        ++v18;
      }

      while (v18 < v11);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v24);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndCheckData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v12 = *(v11 + 48) + 32 * *(a2 + 4);
    *a3 = *(v11 + 24) + *(v12 + 4);
    v13 = *(v12 + 24);
    if (a4)
    {
      *a4 = v13;
    }

    if (v13)
    {
      v14 = *(v12 + 8);
    }

    else
    {
      v14 = 0;
    }

    *a5 = v14;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenData(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    *a3 = *(v11 + 24) + *(*(v11 + 48) + 32 * *(a2 + 4) + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndExpansionData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v12 = *(v11 + 48) + 32 * *(a2 + 4);
    *a3 = *(v11 + 24) + *(v12 + 4);
    LODWORD(v11) = *(v12 + 26);
    *a4 = v11;
    if (v11)
    {
      v13 = *(v12 + 16);
    }

    else
    {
      v13 = 0;
    }

    *a5 = v13;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndRegexData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v12 = v11[6] + 32 * *(a2 + 4);
    v13 = v11[8] + 16 * *(v12 + 6);
    *a4 = *(v13 + 10);
    *a6 = *(v13 + 12);
    *a3 = v11[4] + *(v13 + 4);
    *a5 = v11[3] + *(v12 + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getBTokAndRegexData(void *a1, unsigned int a2, unsigned int a3, void *a4, _WORD *a5, void *a6, _DWORD *a7, uint64_t a8)
{
  v10 = *(a1[19] + 16);
  if (v10)
  {
    v11 = *(*(*(*(v10 + 136) + 8) + 8 * a2) + 8);
    v12 = v11[6] + 32 * a3;
    v13 = v11[8] + 16 * *(v12 + 6);
    *a5 = *(v13 + 10);
    *a7 = *(v13 + 12);
    *a4 = v11[4] + *(v13 + 4);
    *a6 = v11[3] + *(v12 + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t readDataBlockFromFileRefCntBase(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v12 = *(a1[19] + 16);
  v13 = heap_Calloc(*(*a1 + 8), 1, 16);
  *a6 = v13;
  v18 = *a1;
  if (!v13)
  {
LABEL_145:
    log_OutPublic(*(v18 + 32), a1[23], 24048, 0, v14, v15, v16, v17, v136);
    StringZ = FEDATA_ERROR(10);
    if ((StringZ & 0x80000000) != 0)
    {
LABEL_146:
      log_OutPublic(*(*a1 + 32), a1[23], 24052, 0, v131, v132, v133, v134, v137);
    }

    return StringZ;
  }

  *(*a6 + 8) = heap_Calloc(*(v18 + 8), 1, (8 * *v12) | 1);
  if (!*(*a6 + 8))
  {
LABEL_144:
    v18 = *a1;
    goto LABEL_145;
  }

  v19 = *v12;
  **a6 = v19;
  if (v19)
  {
    v142 = a3;
    v143 = a4;
    v20 = 0;
    while (1)
    {
      *(*(*a6 + 8) + 8 * v20) = heap_Calloc(*(*a1 + 8), 1, 48);
      v21 = *(*(*a6 + 8) + 8 * v20);
      if (!v21)
      {
        goto LABEL_144;
      }

      __dst = 0;
      v149 = 0;
      v148 = 0;
      v147 = 0;
      v145 = 0;
      __src = 0;
      Chunk = ssftriff_reader_FindChunk(a2, "HEAD", 1, &v148, &__src);
      if ((Chunk & 0x80000000) != 0)
      {
LABEL_124:
        StringZ = Chunk;
LABEL_125:
        v61 = 0;
        goto LABEL_126;
      }

      v147 = 0;
      cstdlib_memcpy(&__dst + 2, __src, 2uLL);
      v147 += 2;
      *v21 = HIWORD(__dst);
      StringZ = ssftriff_reader_CloseChunk(a2);
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_125;
      }

      v28 = *v21;
      if ((*v21 - 3) <= 2)
      {
        v29 = heap_Calloc(*(*a1 + 8), 1, 24);
        *(v21 + 24) = v29;
        if (!v29)
        {
          goto LABEL_40;
        }

        Chunk = ssftriff_reader_FindChunk(a2, "REMP", 1, &v148, &__src);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v147 = 0;
        cstdlib_memcpy(&__dst + 2, __src, 2uLL);
        v147 += 2;
        v31 = HIWORD(__dst);
        v32 = *(v21 + 24);
        *v32 = HIWORD(__dst);
        if (!v31)
        {
          cstdlib_memcpy(v32 + 4, __src + v147, 2uLL);
          v147 += 2;
          if (*(*(v21 + 24) + 16))
          {
            v62 = heap_Calloc(*(*a1 + 8), 1, 8 * *(*(v21 + 24) + 16));
            v67 = *(v21 + 24);
            *(v67 + 8) = v62;
            if (!v62)
            {
              log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v63, v64, v65, v66, v136);
              *(*(v21 + 24) + 16) = 0;
              goto LABEL_133;
            }

            if (*(v67 + 16))
            {
              v68 = 0;
              while (1)
              {
                *(*(*(v21 + 24) + 8) + 8 * v68) = heap_Calloc(*(*a1 + 8), 1, 24);
                v69 = *(v21 + 24);
                if (!*(*(v69 + 8) + 8 * v68))
                {
                  goto LABEL_131;
                }

                if (++v68 >= *(v69 + 16))
                {
                  if (!*(v69 + 16))
                  {
                    break;
                  }

                  v70 = 0;
                  while (1)
                  {
                    v71 = *(*(v69 + 8) + 8 * v70);
                    cstdlib_memcpy(&__dst + 2, __src + v147, 2uLL);
                    v147 += 2;
                    ++HIWORD(__dst);
                    v72 = heap_Calloc(*(*a1 + 8), 1, HIWORD(__dst));
                    *v71 = v72;
                    if (!v72)
                    {
                      goto LABEL_131;
                    }

                    HIDWORD(v145) = HIWORD(__dst);
                    StringZ = ssftriff_reader_ReadStringZ(a2, __src, v148, v147, v72, &v145 + 1);
                    if ((StringZ & 0x80000000) != 0)
                    {
                      goto LABEL_140;
                    }

                    v139 = v70;
                    if (HIDWORD(v145) != HIWORD(__dst))
                    {
                      goto LABEL_127;
                    }

                    v147 += HIDWORD(v145);
                    cstdlib_memcpy(v71 + 1, __src + v147, 2uLL);
                    v147 += 2;
                    cstdlib_memcpy(v71 + 10, __src + v147, 2uLL);
                    v147 += 2;
                    cstdlib_memcpy(v71 + 12, __src + v147, 2uLL);
                    v147 += 2;
                    if (*(v71 + 6))
                    {
                      v73 = heap_Calloc(*(*a1 + 8), 1, 8 * *(v71 + 6));
                      v71[2] = v73;
                      if (!v73)
                      {
                        log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v74, v75, v76, v77, v136);
                        *(v71 + 6) = 0;
                        goto LABEL_133;
                      }

                      if (*(v71 + 6))
                      {
                        v78 = 0;
                        v79 = v147;
                        do
                        {
                          cstdlib_memcpy(&__dst + 2, __src + v79, 2uLL);
                          v147 += 2;
                          ++HIWORD(__dst);
                          *(v71[2] + 8 * v78) = heap_Calloc(*(*a1 + 8), 1, HIWORD(__dst));
                          v37 = *(v71[2] + 8 * v78);
                          if (!v37)
                          {
                            goto LABEL_131;
                          }

                          HIDWORD(v145) = HIWORD(__dst);
                          StringZ = ssftriff_reader_ReadStringZ(a2, __src, v148, v147, v37, &v145 + 1);
                          if ((StringZ & 0x80000000) != 0)
                          {
                            goto LABEL_140;
                          }

                          if (HIDWORD(v145) != HIWORD(__dst))
                          {
                            goto LABEL_127;
                          }

                          v79 = v147 + HIDWORD(v145);
                          v147 += HIDWORD(v145);
                        }

                        while (++v78 < *(v71 + 6));
                      }
                    }

                    v70 = v139 + 1;
                    v69 = *(v21 + 24);
                    if (v139 + 1 >= *(v69 + 16))
                    {
                      goto LABEL_12;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_12:
        StringZ = ssftriff_reader_CloseChunk(a2);
        if ((StringZ & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        v28 = *v21;
      }

      if (v28 <= 5 && ((1 << v28) & 0x2D) != 0)
      {
        v33 = heap_Calloc(*(*a1 + 8), 1, 72);
        *(v21 + 8) = v33;
        if (!v33)
        {
          goto LABEL_40;
        }

        v28 = *v21;
      }

      if (v28 <= 5 && ((1 << v28) & 0x36) != 0)
      {
        v34 = heap_Calloc(*(*a1 + 8), 1, 64);
        *(v21 + 16) = v34;
        if (!v34)
        {
LABEL_40:
          log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v30, v24, v25, v26, v136);
          v60 = FEDATA_ERROR(10);
LABEL_41:
          StringZ = v60;
          v61 = 0;
          goto LABEL_42;
        }

        v28 = *v21;
      }

      if (v28 <= 5 && ((1 << v28) & 0x2D) != 0)
      {
        Chunk = ssftriff_reader_FindChunk(a2, "TDAT", 1, &v148, &__src);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        v147 = 0;
        v35 = __src;
        *(v21 + 40) = __src;
        cstdlib_memcpy(&__dst + 2, v35, 2uLL);
        v147 += 2;
        ++HIWORD(__dst);
        v36 = heap_Calloc(*(*a1 + 8), 1, HIWORD(__dst));
        **(v21 + 8) = v36;
        if (!v36)
        {
          goto LABEL_131;
        }

        HIDWORD(v145) = HIWORD(__dst);
        StringZ = ssftriff_reader_ReadStringZ(a2, __src, v148, v147, v36, &v145 + 1);
        if ((StringZ & 0x80000000) != 0)
        {
          goto LABEL_140;
        }

        if (HIDWORD(v145) != HIWORD(__dst))
        {
          goto LABEL_127;
        }

        v147 += HIDWORD(v145);
        cstdlib_memcpy((*(v21 + 8) + 8), __src + v147, 2uLL);
        v147 += 2;
        cstdlib_memcpy((*(v21 + 8) + 12), __src + v147, 2uLL);
        v147 += 2;
        cstdlib_memcpy(&v149, __src + v147, 4uLL);
        v147 += 4;
        cstdlib_memcpy(&v148 + 4, __src + v147, 4uLL);
        v41 = v147 + 4;
        v42 = *(v21 + 8);
        *(v42 + 16) = v41;
        v43 = __src;
        *(v42 + 24) = __src + v41;
        v44 = (v149 + v41);
        v147 = v44;
        cstdlib_memcpy(&v145, &v43[v44], 4uLL);
        v45 = v147 + v145 + 4;
        v46 = *(v21 + 8);
        *(v46 + 40) = v45;
        *(v46 + 32) = __src + v45;
        v147 = HIDWORD(v148) + v45;
        if (*(v46 + 8))
        {
          v47 = heap_Calloc(*(*a1 + 8), 1, 32 * *(v46 + 8));
          v46 = *(v21 + 8);
          *(v46 + 48) = v47;
          if (!v47)
          {
            goto LABEL_131;
          }

          v141 = a5;
          if (*(v46 + 8))
          {
            v48 = 0;
            v49 = 16;
            while (1)
            {
              v138 = *(v46 + 48);
              v50 = v138 + v49;
              cstdlib_memcpy(&__dst, __src + v147, 2uLL);
              v147 += 2;
              *(v50 - 16) = __dst;
              cstdlib_memcpy((v138 + v49 - 12), __src + v147, 2uLL);
              v147 += 2;
              cstdlib_memcpy((v138 + v49 - 10), __src + v147, 2uLL);
              v147 += 2;
              cstdlib_memcpy((v138 + v49 + 8), __src + v147, 2uLL);
              v147 += 2;
              cstdlib_memcpy((v138 + v49 + 10), __src + v147, 2uLL);
              v147 += 2;
              cstdlib_memcpy((v138 + v49 + 12), __src + v147, 2uLL);
              v147 += 2;
              *(v50 - 8) = 0;
              if (*(v138 + v49 + 8))
              {
                v51 = heap_Calloc(*(*a1 + 8), 1, 56);
                *(v50 - 8) = v51;
                if (!v51)
                {
                  v129 = *(*a1 + 32);
                  v130 = a1[23];
                  goto LABEL_137;
                }

                *v51 = &StaticIntPointers_1;
                *(v51 + 24) = 0;
                *(v51 + 16) = 0;
                *(v51 + 40) = 0;
                *(v51 + 48) = 0;
                *(v51 + 32) = 0;
                v56 = FEData_readFunctionDataFromBinaryFile(a1, a2, *a1, v51, __src, &v147, v148);
                if ((v56 & 0x80000000) != 0)
                {
                  goto LABEL_134;
                }
              }

              *(v138 + v49) = 0;
              v57 = *(v50 + 10);
              a5 = v141;
              if (v57)
              {
                v58 = heap_Calloc(*(*a1 + 8), 1, 56);
                *(v138 + v49) = v58;
                if (!v58)
                {
                  v127 = *(*a1 + 32);
                  v128 = a1[23];
                  goto LABEL_132;
                }

                *v58 = &StaticIntPointers_1;
                *(v58 + 24) = 0;
                *(v58 + 16) = 0;
                *(v58 + 40) = 0;
                *(v58 + 48) = 0;
                *(v58 + 32) = 0;
                v59 = FEData_readFunctionDataFromBinaryFile(a1, a2, *a1, v58, __src, &v147, v148);
                if ((v59 & 0x80000000) != 0)
                {
                  break;
                }
              }

              ++v48;
              v46 = *(v21 + 8);
              v49 += 32;
              if (v48 >= *(v46 + 8))
              {
                goto LABEL_68;
              }
            }

            StringZ = v59;
LABEL_140:
            v61 = 1;
            goto LABEL_126;
          }
        }

        else
        {
          v141 = a5;
        }

LABEL_68:
        v80 = *(v46 + 12);
        if (v80)
        {
          v81 = heap_Calloc(*(*a1 + 8), 1, 16 * v80);
          v82 = *(v21 + 8);
          *(v82 + 64) = v81;
          if (!v81)
          {
            goto LABEL_135;
          }

          if (*(v82 + 12))
          {
            v83 = 0;
            v84 = 0;
            do
            {
              v85 = *(v82 + 64);
              v86 = v85 + v83;
              if (v142 == 1)
              {
                cstdlib_memcpy((v86 + 4), __src + v147, 4uLL);
                v87 = v147 + 4;
                v147 += 4;
              }

              else
              {
                cstdlib_memcpy(&__dst, __src + v147, 2uLL);
                v147 += 2;
                *(v86 + 4) = __dst;
                v87 = v147;
              }

              v88 = (v85 + v83);
              cstdlib_memcpy(v88 + 2, __src + v87, 2uLL);
              v147 += 2;
              cstdlib_memcpy(v88 + 10, __src + v147, 2uLL);
              v147 += 2;
              cstdlib_memcpy(v86, __src + v147, 2uLL);
              v147 += 2;
              cstdlib_memcpy(&__dst, __src + v147, 2uLL);
              v147 += 2;
              v88[3] = __dst;
              ++v84;
              v82 = *(v21 + 8);
              v83 += 16;
            }

            while (v84 < *(v82 + 12));
          }
        }

        v56 = ssftriff_reader_DetachChunkData(a2, (v21 + 32), &__src);
        if ((v56 & 0x80000000) != 0)
        {
LABEL_134:
          StringZ = v56;
          v61 = 1;
          a5 = v141;
LABEL_126:
          log_OutPublic(*(*a1 + 32), a1[23], 24052, 0, v23, v24, v25, v26, v136);
          if (!v61)
          {
            goto LABEL_128;
          }

LABEL_127:
          ssftriff_reader_CloseChunk(a2);
          goto LABEL_128;
        }

        v89 = __src;
        *(v21 + 40) = __src;
        v90 = *(v21 + 8);
        v91 = &v89[*(v90 + 16)];
        v92 = &v89[*(v90 + 40)];
        *(v90 + 24) = v91;
        *(v90 + 32) = v92;
        StringZ = ssftriff_reader_CloseChunk(a2);
        a5 = v141;
        if ((StringZ & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        v28 = *v21;
      }

      if (v28 > 5 || ((1 << v28) & 0x36) == 0)
      {
        goto LABEL_129;
      }

      Chunk = ssftriff_reader_FindChunk(a2, "DDAT", 1, &v148, &__src);
      if ((Chunk & 0x80000000) != 0)
      {
        goto LABEL_124;
      }

      v147 = 0;
      cstdlib_memcpy(&__dst + 2, __src, 2uLL);
      v147 += 2;
      ++HIWORD(__dst);
      v93 = heap_Calloc(*(*a1 + 8), 1, HIWORD(__dst));
      **(v21 + 16) = v93;
      if (!v93)
      {
        goto LABEL_131;
      }

      HIDWORD(v145) = HIWORD(__dst);
      StringZ = ssftriff_reader_ReadStringZ(a2, __src, v148, v147, v93, &v145 + 1);
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_140;
      }

      if (HIDWORD(v145) != HIWORD(__dst))
      {
        goto LABEL_127;
      }

      v147 += HIDWORD(v145);
      cstdlib_memcpy(&__dst + 2, __src + v147, 2uLL);
      v147 += 2;
      v94 = v147;
      v95 = *(v21 + 16);
      *(v95 + 8) = HIWORD(__dst);
      cstdlib_memcpy((v95 + 24), __src + v94, 2uLL);
      v147 += 2;
      cstdlib_memcpy((*(v21 + 16) + 50), __src + v147, 2uLL);
      v147 += 2;
      v96 = *(v21 + 16);
      *(v96 + 56) = 0;
      if (*(v96 + 50))
      {
        v97 = heap_Calloc(*(*a1 + 8), 1, 8 * *(v96 + 50));
        v96 = *(v21 + 16);
        *(v96 + 56) = v97;
        if (!v97)
        {
          goto LABEL_131;
        }

        if (*(v96 + 50))
        {
          v98 = 0;
          v99 = v147;
          do
          {
            cstdlib_memcpy(&__dst + 2, __src + v99, 2uLL);
            v147 += 2;
            ++HIWORD(__dst);
            *(*(*(v21 + 16) + 56) + 8 * v98) = heap_Calloc(*(*a1 + 8), 1, HIWORD(__dst));
            v37 = *(*(*(v21 + 16) + 56) + 8 * v98);
            if (!v37)
            {
              goto LABEL_131;
            }

            HIDWORD(v145) = HIWORD(__dst);
            StringZ = ssftriff_reader_ReadStringZ(a2, __src, v148, v147, v37, &v145 + 1);
            if ((StringZ & 0x80000000) != 0)
            {
              goto LABEL_140;
            }

            if (HIDWORD(v145) != HIWORD(__dst))
            {
              goto LABEL_127;
            }

            v99 = v147 + HIDWORD(v145);
            v147 += HIDWORD(v145);
            ++v98;
            v96 = *(v21 + 16);
          }

          while (v98 < *(v96 + 50));
        }
      }

      v141 = a5;
      if (!*(v96 + 24))
      {
        goto LABEL_111;
      }

      v100 = heap_Calloc(*(*a1 + 8), 1, 72 * *(v96 + 24));
      v96 = *(v21 + 16);
      *(v96 + 16) = v100;
      if (v100)
      {
        if (!*(v96 + 24))
        {
LABEL_111:
          cstdlib_memcpy((v96 + 48), __src + v147, 2uLL);
          v147 += 2;
          if (!*(*(v21 + 16) + 48))
          {
            goto LABEL_123;
          }

          v117 = heap_Calloc(*(a1[3] + 8), 1, 16 * *(*(v21 + 16) + 48));
          v118 = *(v21 + 16);
          *(v118 + 32) = v117;
          if (v117)
          {
            if (!*(v118 + 48))
            {
LABEL_123:
              v60 = ssftriff_reader_CloseChunk(a2);
              goto LABEL_41;
            }

            v119 = 0;
            while (1)
            {
              v120 = (*(v118 + 32) + 16 * v119);
              cstdlib_memcpy(v120 + 1, __src + v147, 2uLL);
              v147 += 2;
              v121 = heap_Calloc(*(*a1 + 8), 1, 12 * *(v120 + 4));
              *v120 = v121;
              if (!v121)
              {
                break;
              }

              if (*(v120 + 4))
              {
                v122 = 0;
                v123 = 0;
                do
                {
                  v144 = 0;
                  v124 = (*v120 + v122);
                  v124[1] = 0;
                  if (v143)
                  {
                    cstdlib_memcpy(&v144, __src + v147++, 1uLL);
                    v125 = v147;
                    *(*v120 + v122 + 2) = v144;
                    cstdlib_memcpy(&v144, __src + v125, 1uLL);
                    v126 = v147 + 1;
                    *(*v120 + v122 + 4) = v144;
                  }

                  else
                  {
                    cstdlib_memcpy(v124, __src + v147, 2uLL);
                    v147 += 2;
                    cstdlib_memcpy((*v120 + v122 + 4), __src + v147, 2uLL);
                    v126 = v147 + 2;
                  }

                  v147 = v126;
                  ++v123;
                  v122 += 12;
                }

                while (v123 < *(v120 + 4));
              }

              ++v119;
              v118 = *(v21 + 16);
              a5 = v141;
              if (v119 >= *(v118 + 48))
              {
                goto LABEL_123;
              }
            }
          }

LABEL_131:
          v127 = *(*a1 + 32);
          v128 = a1[23];
LABEL_132:
          log_OutPublic(v127, v128, 24048, 0, v37, v38, v39, v40, v136);
LABEL_133:
          StringZ = FEDATA_ERROR(10);
          v61 = 1;
          goto LABEL_42;
        }

        v101 = 0;
        while (1)
        {
          v102 = *(v96 + 16) + 72 * v101;
          cstdlib_memcpy(&__dst + 2, __src + v147, 2uLL);
          v147 += 2;
          v103 = HIWORD(__dst);
          *(v102 + 56) = HIWORD(__dst);
          v104 = heap_Calloc(*(*a1 + 8), 1, v103 + 1);
          *(v102 + 48) = v104;
          if (!v104)
          {
            break;
          }

          v140 = v101;
          cstdlib_memcpy(v104, __src + v147, HIWORD(__dst));
          *(*(v102 + 48) + HIWORD(__dst)) = 0;
          v147 += *(v102 + 56);
          cstdlib_memcpy(v102, __src + v147, 2uLL);
          v147 += 2;
          cstdlib_memcpy((v102 + 2), __src + v147, 2uLL);
          v147 += 2;
          cstdlib_memcpy(&__dst, __src + v147, 2uLL);
          v147 += 2;
          *(v102 + 60) = __dst;
          cstdlib_memcpy(&__dst, __src + v147, 2uLL);
          v147 += 2;
          *(v102 + 64) = __dst;
          cstdlib_memcpy(&__dst, __src + v147, 2uLL);
          v147 += 2;
          v105 = __dst;
          *(v102 + 8) = __dst;
          if (v105 == 1)
          {
            cstdlib_memcpy((v102 + 4), __src + v147, 2uLL);
            v147 += 2;
            cstdlib_memcpy((v102 + 12), __src + v147, 2uLL);
            v147 += 2;
          }

          if (!v143)
          {
            cstdlib_memcpy((v102 + 40), __src + v147, 2uLL);
            v106 = v147 + 2;
            v147 += 2;
            if (*(v102 + 40))
            {
              v107 = 0;
              do
              {
                cstdlib_memcpy(&__dst, __src + v106, 2uLL);
                v147 += 2;
                cstdlib_memcpy(&__dst, __src + v147, 2uLL);
                v106 = v147 + 2;
                v147 += 2;
                ++v107;
              }

              while (v107 < *(v102 + 40));
            }
          }

          if (a5 == 1)
          {
            cstdlib_memcpy((v102 + 42), __src + v147, 2uLL);
            v147 += 2;
            if (*(v102 + 42))
            {
              v108 = heap_Calloc(*(*a1 + 8), 1, 12 * *(v102 + 42));
              *(v102 + 32) = v108;
              if (!v108)
              {
                log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v109, v110, v111, v112, v136);
                StringZ = FEDATA_ERROR(10);
                if ((StringZ & 0x80000000) == 0)
                {
                  goto LABEL_129;
                }

                goto LABEL_143;
              }

              if (*(v102 + 42))
              {
                v113 = 0;
                v114 = 0;
                do
                {
                  cstdlib_memcpy(&__dst, __src + v147, 2uLL);
                  v147 += 2;
                  v115 = v147;
                  *(*(v102 + 32) + v113) = __dst;
                  cstdlib_memcpy(&__dst, __src + v115, 2uLL);
                  v147 += 2;
                  v116 = *(v102 + 32) + v113;
                  *(v116 + 4) = __dst;
                  *(v116 + 8) = 1;
                  ++v114;
                  v113 += 12;
                }

                while (v114 < *(v102 + 42));
              }
            }
          }

          v101 = v140 + 1;
          v96 = *(v21 + 16);
          if (v140 + 1 >= *(v96 + 24))
          {
            goto LABEL_111;
          }
        }
      }

LABEL_135:
      v129 = *(*a1 + 32);
      v130 = a1[23];
LABEL_137:
      log_OutPublic(v129, v130, 24048, 0, v52, v53, v54, v55, v136);
      StringZ = FEDATA_ERROR(10);
      v61 = 1;
      a5 = v141;
LABEL_42:
      if ((StringZ & 0x80000000) != 0)
      {
        goto LABEL_126;
      }

      if (v61)
      {
        goto LABEL_127;
      }

LABEL_128:
      if ((StringZ & 0x80000000) != 0)
      {
LABEL_143:
        *(*(*a6 + 8) + 8 * v20) = 0;
        log_OutPublic(*(*a1 + 32), a1[23], 24044, 0, v23, v24, v25, v26, v136);
        goto LABEL_146;
      }

LABEL_129:
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "loaded data block %d", v24, v25, v26, v20);
      v20 = v20 + 1;
      if (v20 >= *v12)
      {
        return StringZ;
      }
    }
  }

  return 0;
}

uint64_t readDataBlockFromFileRefCnt_0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v21);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v20);
    if ((result & 0x80000000) == 0)
    {
      v15[0] = a1;
      v15[1] = a2;
      v16 = a3;
      v17 = a4;
      LODWORD(v18) = a5;
      ObjcForThisApi = getObjcForThisApi(v21, v20);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a6, readDataBlockFromFile_ObjcLoad_0, readDataBlockFromFile_ObjcClose_0, v15, &v19);
      if ((result & 0x80000000) != 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v19 + 32);
      }

      *(*(*(a1 + 152) + 16) + 136) = v14;
    }
  }

  return result;
}

uint64_t readDataBlockFromFile_ObjcLoad_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = readDataBlockFromFileRefCntBase(*a5, *(a5 + 8), *(a5 + 16), *(a5 + 20), *(a5 + 24), a4 + 32);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v11 = *a5;
  v12 = *(a4 + 32);
  v72 = *(*(*a5 + 152) + 16);
  if (*v72)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(v12 + 8) + 8 * v13);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17)
        {
          if (*(v17 + 24))
          {
            v18 = 0;
            do
            {
              v19 = *(v17 + 16) + 72 * v18;
              if (*(v19 + 8) == 1)
              {
                v20 = *(v17 + 48);
                if (*(v17 + 48))
                {
                  v21 = 0;
                  v22 = *(v17 + 32);
                  do
                  {
                    v8 = v22 + 16 * v21;
                    v9 = *(v8 + 8);
                    if (*(v8 + 8))
                    {
                      v10 = 0;
                      do
                      {
                        if (*(v19 + 42))
                        {
                          v23 = (*v8 + 12 * v10);
                          v24 = (*(v19 + 32) + 4);
                          v25 = *(v19 + 42);
                          while (*(v24 - 2) != *v23 || *(v24 - 1) != v23[1] || *v24 != v23[2])
                          {
                            v24 += 6;
                            if (!--v25)
                            {
                              goto LABEL_21;
                            }
                          }

                          v14 = 1;
                        }

LABEL_21:
                        ++v10;
                      }

                      while (v10 != v9);
                    }

                    ++v21;
                  }

                  while (v21 != v20);
                  v15 = v22 + 16 * (v20 - 1);
                }
              }

              ++v18;
            }

            while (v18 != *(v17 + 24));
          }
        }
      }

      ++v13;
    }

    while (v13 != *v72);
    v26 = v14 == 0;
  }

  else
  {
    v15 = 0;
    v26 = 1;
  }

  if (*(v11 + 154) && v26)
  {
    v27 = 1;
    *(v11 + 240) = 1;
  }

  else
  {
    v27 = *(v11 + 240);
  }

  log_OutText(*(*v11 + 32), v11[23], 4, 0, "btok twoloop data=%d", v8, v9, v10, v27);
  v32 = *v72;
  if (!*v72)
  {
    return 0;
  }

  v70 = v11;
  v33 = 0;
  v71 = 0;
  v34 = *v72;
  while (1)
  {
    v35 = *(*(v12 + 8) + 8 * v33);
    if (v35)
    {
      break;
    }

LABEL_97:
    if (v34)
    {
      v59 = 0;
      v60 = *(v12 + 8);
      do
      {
        v61 = *(v60 + 8 * v59);
        if (v61)
        {
          v62 = *(v61 + 24);
          if (v62)
          {
            if (*(v62 + 16))
            {
              v63 = 0;
              do
              {
                if (v35)
                {
                  v64 = *(v35 + 16);
                  if (v64)
                  {
                    v65 = 0;
                    v66 = *(*(v62 + 8) + 8 * v63);
                    v67 = -1;
                    do
                    {
                      if (++v67 >= *(v64 + 24))
                      {
                        break;
                      }

                      if (!cstdlib_strcmp(*v66, (*(*(v64 + 16) + v65 + 48) + *(*(v64 + 16) + v65))))
                      {
                        *(v66 + 10) = v33;
                      }

                      v65 += 72;
                      v64 = *(v35 + 16);
                    }

                    while (v64);
                    v60 = *(v12 + 8);
                  }
                }

                v68 = *(v60 + 8 * v59);
                if (!v68)
                {
                  break;
                }

                v62 = *(v68 + 24);
                if (!v62)
                {
                  break;
                }

                ++v63;
              }

              while (v63 < *(v62 + 16));
            }

            v32 = *v72;
          }

          v34 = v32;
        }

        ++v59;
      }

      while (v59 < v34);
    }

    if (++v33 >= v34)
    {
      return 0;
    }
  }

  v36 = *(v35 + 16);
  if (!v36)
  {
LABEL_96:
    v34 = v32;
    goto LABEL_97;
  }

  v37 = 0;
  while (1)
  {
    if (v37 >= *(v36 + 24))
    {
LABEL_95:
      v32 = *v72;
      goto LABEL_96;
    }

    v38 = *(v36 + 16) + 72 * v37;
    if (*(v38 + 42))
    {
      v39 = 0;
      while (1)
      {
        v40 = *v72;
        if (!*v72)
        {
          goto LABEL_119;
        }

        v41 = 0;
        while (1)
        {
          v42 = *(*(v12 + 8) + 8 * v41);
          if (*v42 == 1 || *v42 == 4)
          {
            goto LABEL_47;
          }

          v44 = *(v35 + 16);
          v45 = *(v44 + 50);
          if (!*(v44 + 50))
          {
            goto LABEL_47;
          }

          if (*(v70 + 240) != 1 || v15 == 0)
          {
            v47 = *(v38 + 32);
            goto LABEL_58;
          }

          v47 = *(v38 + 32);
          if (v45 > *(*v15 + 12 * v39))
          {
            break;
          }

LABEL_58:
          v48 = *(v47 + 12 * v39);
          if (v45 > v48)
          {
            goto LABEL_59;
          }

LABEL_47:
          if (++v41 >= v40)
          {
            goto LABEL_119;
          }
        }

        v48 = *(v47 + 12 * v39);
LABEL_59:
        if (cstdlib_strcmp(**(v42 + 8), *(*(v44 + 56) + 8 * v48)))
        {
          v40 = *v72;
          goto LABEL_47;
        }

        *(*(v38 + 32) + 12 * v39++ + 2) = v41;
        if (v39 >= *(v38 + 42))
        {
          v36 = *(v35 + 16);
          v71 = 1;
          break;
        }
      }
    }

    if (*(v38 + 8) == 1 && *(v36 + 48))
    {
      break;
    }

LABEL_94:
    ++v37;
    if (!v36)
    {
      goto LABEL_95;
    }
  }

  v49 = 0;
  while (2)
  {
    v15 = *(v36 + 32) + 16 * v49;
    if (!*(v15 + 8))
    {
      goto LABEL_92;
    }

    v50 = 0;
    while (2)
    {
      v51 = *v72;
      if (!*v72)
      {
LABEL_81:
        v71 = 0;
        goto LABEL_82;
      }

      v52 = 0;
      while (2)
      {
        v53 = *(*(v12 + 8) + 8 * v52);
        v54 = *v53 == 1 || *v53 == 4;
        if (v54 || (v55 = *(v35 + 16), !*(v55 + 50)) || *(v55 + 50) <= *(*v15 + 12 * v50))
        {
LABEL_75:
          if (++v52 >= v51)
          {
            goto LABEL_81;
          }

          continue;
        }

        break;
      }

      if (cstdlib_strcmp(**(v53 + 8), *(*(v55 + 56) + 8 * *(*v15 + 12 * v50))))
      {
        v51 = *v72;
        goto LABEL_75;
      }

      *(*v15 + 12 * v50 + 2) = v52;
      v71 = 1;
LABEL_82:
      v56 = *(v38 + 42);
      if (*(v38 + 42))
      {
        v57 = *v15 + 12 * v50;
        v58 = (*(v38 + 32) + 4);
        while (*(v58 - 1) != *(v57 + 2) || *v58 != *(v57 + 4))
        {
          v58 += 6;
          if (!--v56)
          {
            goto LABEL_89;
          }
        }

        *(v57 + 8) = 1;
      }

LABEL_89:
      if (++v50 < *(v15 + 8))
      {
        continue;
      }

      break;
    }

LABEL_92:
    if (v71)
    {
      ++v49;
      v36 = *(v35 + 16);
      v71 = 1;
      if (v49 >= *(v36 + 48))
      {
        goto LABEL_94;
      }

      continue;
    }

    break;
  }

LABEL_119:
  log_OutPublic(*(*v70 + 32), v70[23], 24045, 0, v28, v29, v30, v31, v69);
  return 0;
}

uint64_t readDataBlockFromFile_ObjcClose_0(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v50 = 0;
  inited = InitRsrcFunction(a1, a2, &v50);
  v5 = inited;
  if ((inited & 0x80000000) == 0)
  {
    if (v3)
    {
      v6 = *(v3 + 1);
      if (v6)
      {
        v7 = *v3;
        if (*v3)
        {
          v49 = inited;
          v8 = 0;
          v48 = v3;
          while (1)
          {
            v9 = *(*(v3 + 1) + 8 * v8);
            if (v9)
            {
              v11 = (v9 + 32);
              v10 = *(v9 + 32);
              if (v10)
              {
                v49 = ssftriff_reader_ReleaseChunkData(v10);
                if ((v49 & 0x80000000) != 0)
                {
                  return v49;
                }

                *v11 = 0;
                *(v9 + 40) = 0;
              }

              v12 = v50;
              v14 = *(v9 + 8);
              v13 = *(v9 + 16);
              v15 = *(v9 + 24);
              if (v14)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x2D) != 0)
                {
                  heap_Free(*(v50 + 8), *v14);
                  *v14 = 0;
                  v17 = *(v14 + 48);
                  if (v17)
                  {
                    if (*(v14 + 8))
                    {
                      v18 = 0;
                      v19 = 0;
                      do
                      {
                        v20 = *(v14 + 48) + v18;
                        v21 = *(v20 + 8);
                        if (v21)
                        {
                          FEData_freeEntry(v12, v21, 1);
                          heap_Free(*(v12 + 8), *(v20 + 8));
                          *(v20 + 8) = 0;
                        }

                        v22 = *(v20 + 16);
                        if (v22)
                        {
                          FEData_freeEntry(v12, v22, 1);
                          heap_Free(*(v12 + 8), *(v20 + 16));
                          *(v20 + 16) = 0;
                        }

                        ++v19;
                        v18 += 32;
                      }

                      while (v19 < *(v14 + 8));
                      v17 = *(v14 + 48);
                      v3 = v48;
                    }

                    heap_Free(*(v12 + 8), v17);
                    *(v14 + 48) = 0;
                  }

                  v23 = *(v14 + 64);
                  if (v23)
                  {
                    heap_Free(*(v12 + 8), v23);
                    *(v14 + 64) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 8));
                  *(v9 + 8) = 0;
                }
              }

              if (v13)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x36) != 0)
                {
                  if (*v13)
                  {
                    heap_Free(*(v12 + 8), *v13);
                    *v13 = 0;
                  }

                  v25 = *(v13 + 56);
                  if (v25)
                  {
                    if (*(v13 + 50))
                    {
                      v26 = 0;
                      do
                      {
                        heap_Free(*(v12 + 8), *(*(v13 + 56) + 8 * v26));
                        *(*(v13 + 56) + 8 * v26++) = 0;
                      }

                      while (v26 < *(v13 + 50));
                      v25 = *(v13 + 56);
                    }

                    heap_Free(*(v12 + 8), v25);
                    *(v13 + 56) = 0;
                  }

                  if (*(v13 + 16))
                  {
                    if (*(v13 + 24))
                    {
                      v27 = 0;
                      v28 = 0;
                      do
                      {
                        v29 = (*(v13 + 16) + v27);
                        heap_Free(*(v12 + 8), v29[6]);
                        v29[6] = 0;
                        v30 = v29[2];
                        if (v30)
                        {
                          heap_Free(*(v12 + 8), v30);
                          v29[2] = 0;
                        }

                        v31 = v29[4];
                        if (v31)
                        {
                          heap_Free(*(v12 + 8), v31);
                          v29[4] = 0;
                        }

                        ++v28;
                        v27 += 72;
                      }

                      while (v28 < *(v13 + 24));
                    }

                    v32 = *(v13 + 32);
                    v3 = v48;
                    if (v32)
                    {
                      v33 = *(v13 + 48);
                      if (v33)
                      {
                        v34 = 0;
                        for (i = 0; i < v33; ++i)
                        {
                          v36 = *(v13 + 32);
                          v37 = *(v36 + v34);
                          if (v37)
                          {
                            heap_Free(*(v12 + 8), v37);
                            *(v36 + v34) = 0;
                            v33 = *(v13 + 48);
                          }

                          v34 += 16;
                        }

                        v32 = *(v13 + 32);
                        v3 = v48;
                      }

                      heap_Free(*(v12 + 8), v32);
                      *(v13 + 32) = 0;
                    }

                    heap_Free(*(v12 + 8), *(v13 + 16));
                    *(v13 + 16) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 16));
                  *(v9 + 16) = 0;
                }
              }

              if (v15)
              {
                v38 = *(v15 + 8);
                if (v38)
                {
                  v39 = *(v15 + 16);
                  if (v39)
                  {
                    for (j = 0; j < v39; ++j)
                    {
                      v41 = *(v15 + 8);
                      v42 = *(v41 + 8 * j);
                      if (v42)
                      {
                        if (*v42)
                        {
                          heap_Free(*(v12 + 8), *v42);
                          v41 = *(v15 + 8);
                          **(v41 + 8 * j) = 0;
                          v42 = *(v41 + 8 * j);
                        }

                        v43 = *(v42 + 16);
                        if (v43)
                        {
                          if (*(v42 + 12))
                          {
                            v44 = 0;
                            do
                            {
                              v45 = *(*(v42 + 16) + 8 * v44);
                              if (v45)
                              {
                                heap_Free(*(v12 + 8), v45);
                                *(*(*(*(v15 + 8) + 8 * j) + 16) + 8 * v44) = 0;
                                v41 = *(v15 + 8);
                              }

                              ++v44;
                              v42 = *(v41 + 8 * j);
                            }

                            while (v44 < *(v42 + 12));
                            v43 = *(v42 + 16);
                          }

                          heap_Free(*(v12 + 8), v43);
                          v46 = *(v15 + 8);
                          *(*(v46 + 8 * j) + 16) = 0;
                          v42 = *(v46 + 8 * j);
                        }

                        *(v42 + 12) = 0;
                        heap_Free(*(v12 + 8), v42);
                        *(*(v15 + 8) + 8 * j) = 0;
                        v39 = *(v15 + 16);
                      }
                    }

                    v38 = *(v15 + 8);
                  }

                  heap_Free(*(v12 + 8), v38);
                  *(v15 + 8) = 0;
                }

                *(v15 + 16) = 0;
                heap_Free(*(v12 + 8), v15);
              }

              if (*v11)
              {
                ssftriff_reader_ReleaseChunkData(*v11);
                *v11 = 0;
                *(v9 + 40) = 0;
              }

              heap_Free(*(v12 + 8), v9);
              v7 = *v3;
            }

            if (++v8 >= v7)
            {
              v6 = *(v3 + 1);
              v5 = v49;
              break;
            }
          }
        }

        heap_Free(*(v50 + 8), v6);
        heap_Free(*(v50 + 8), v3);
      }
    }
  }

  return v5;
}

uint64_t FEData_blockData_loadDataFiles(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 152);
  v81 = 0;
  memset(v90, 0, sizeof(v90));
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  *__dst = 0u;
  v83 = 0u;
  v80 = 0;
  __s2 = 0;
  __src = 0;
  v77 = 0;
  *a4 = 0;
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = *(*a1 + 32);
    v12 = *(a1 + 184);
    v13 = 24049;
    goto LABEL_5;
  }

  if (!*v10)
  {
    v16 = *a1;
    if (*(a1 + 352) > *(a1 + 336))
    {
      log_OutPublic(*(v16 + 32), *(a1 + 184), 24056, "%s%d%s%d", a5, a6, a7, a8, "invalid language identifier index");
      v14 = 0;
      goto LABEL_6;
    }

    if ((paramc_ParamGetStr(*(v16 + 40), "langcode", &v77) & 0x80000000) != 0)
    {
      v77 = "";
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "fecfg", &__s2) & 0x80000000) == 0)
    {
      cstdlib_strcpy(__dst, "tokentn/");
      cstdlib_strcat(__dst, *(a3 + 8 * *(a1 + 352)));
      cstdlib_strcat(__dst, "/");
      cstdlib_strcat(__dst, __s2);
      v19 = brokeraux_ComposeBrokerString(*a1, __dst, 1, 1, v77, 0, 0, v90, 0x80uLL);
      if ((v19 & 0x80000000) != 0)
      {
        return FEDATA_ERROR(v19);
      }

      RsrcHandleForThisApi = getRsrcHandleForThisApi(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
      if ((ssftriff_reader_ObjOpen(RsrcHandleForThisApi, v21, 2, v90, "TOKN", 1031, &v81) & 0x80000000) == 0)
      {
LABEL_18:
        Chunk = ssftriff_reader_FindChunk(v81, "CFIG", 0, &v80, &__src);
        v33 = Chunk & 0x1FFF;
        if ((Chunk & 0x80000000) != 0 && v33 != 20)
        {
          goto LABEL_65;
        }

        if (v33 == 20)
        {
          v34 = 0;
          v35 = 0;
LABEL_32:
          Chunk = ssftriff_reader_FindChunk(v81, "FILE", 0, &v80, &__src);
          if ((Chunk & 0x80000000) == 0)
          {
            cstdlib_memcpy(v10, __src, 2uLL);
            Chunk = ssftriff_reader_CloseChunk(v81);
            if ((Chunk & 0x80000000) == 0)
            {
              cstdlib_strcpy(v10 + 2, v90);
              DataBlockFromFileRefCnt_0 = readDataBlockFromFileRefCnt_0(a1, v81, v34, v35, *a4, v90);
              if ((DataBlockFromFileRefCnt_0 & 0x80000000) == 0)
              {
                ssftriff_reader_ObjClose(v81, v37, v38, v39, v29, v30, v31, v32);
                v81 = 0;
                v47 = *v10;
                if (*v10)
                {
                  v48 = 0;
                  do
                  {
                    v49 = *(*(*(v10 + 17) + 8) + 8 * v48);
                    if (v49)
                    {
                      v50 = *(v49 + 16);
                      if (v50)
                      {
                        v51 = 0;
                        v52 = 0;
                        while (v52 < *(v50 + 24))
                        {
                          v53 = *(v50 + 16);
                          v54 = (v53 + v51);
                          if (*(v53 + v51 + 64) == 1)
                          {
                            v55 = *(a1 + 288);
                            if (v55)
                            {
                              if (cstdlib_strcmp(v55, (*(v53 + v51 + 48) + *(v53 + v51))))
                              {
                                v70 = *(*a1 + 32);
                                v71 = *(a1 + 184);
                                v75 = "first assigned";
                                v72 = "%s%s%s%s";
                                v73 = 24053;
                                goto LABEL_70;
                              }
                            }

                            else
                            {
                              v56 = *(*a1 + 8);
                              v57 = v53 + v51;
                              v58 = cstdlib_strlen((*(v53 + v51 + 48) + *(v53 + v51)));
                              v59 = heap_Calloc(v56, 1, (v58 + 1));
                              *(a1 + 288) = v59;
                              if (!v59)
                              {
                                log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v60, v61, v62, v63, v75);
                                v19 = 10;
                                return FEDATA_ERROR(v19);
                              }

                              cstdlib_strcpy(v59, (*(v57 + 48) + *v54));
                              *(a1 + 296) = v48;
                              *(a1 + 298) = v52;
                            }
                          }

                          ++v52;
                          v50 = *(v49 + 16);
                          v51 += 72;
                          if (!v50)
                          {
                            break;
                          }
                        }
                      }

                      v47 = *v10;
                    }

                    ++v48;
                  }

                  while (v48 < v47);
                  if (v47)
                  {
                    for (i = 0; i < v47; ++i)
                    {
                      v65 = *(*(*(v10 + 17) + 8) + 8 * i);
                      if (v65)
                      {
                        v66 = *(v65 + 16);
                        if (v66)
                        {
                          v67 = 0;
                          v68 = -1;
                          do
                          {
                            if (++v68 >= *(v66 + 24))
                            {
                              break;
                            }

                            v69 = *(v66 + 16) + v67;
                            if (*(v69 + 40) && (!*(v69 + 8) || !*(v66 + 48)))
                            {
                              log_OutPublic(*(*a1 + 32), *(a1 + 184), 24062, 0, v43, v44, v45, v46, v75);
                            }

                            v67 += 72;
                            v66 = *(v65 + 16);
                          }

                          while (v66);
                        }

                        v47 = *v10;
                      }
                    }
                  }
                }

                if (!*(a1 + 288))
                {
                  v70 = *(*a1 + 32);
                  v71 = *(a1 + 184);
                  v73 = 24054;
                  v72 = 0;
LABEL_70:
                  log_OutPublic(v70, v71, v73, v72, v43, v44, v45, v46, v75);
                  v19 = 0;
                  return FEDATA_ERROR(v19);
                }

LABEL_67:
                if (v81)
                {
                  ssftriff_reader_ObjClose(v81, v40, v41, v42, v43, v44, v45, v46);
                }

                return DataBlockFromFileRefCnt_0;
              }

LABEL_66:
              log_OutPublic(*(*a1 + 32), *(a1 + 184), 24052, 0, v29, v30, v31, v32, v75);
              goto LABEL_67;
            }
          }

LABEL_65:
          DataBlockFromFileRefCnt_0 = Chunk;
          goto LABEL_66;
        }

        v76 = 0;
        cstdlib_memcpy(&v76 + 2, __src, 2uLL);
        if (HIWORD(v76))
        {
          cstdlib_memcpy(&v76, __src + 2, 2uLL);
          v34 = v76 == 1;
          if (HIWORD(v76) >= 2u)
          {
            cstdlib_memcpy(&v76, __src + 4, 2uLL);
            v35 = v76 == 1;
            if (HIWORD(v76) >= 3u)
            {
              cstdlib_memcpy(&v76, __src + 6, 2uLL);
              if (v76 == 1)
              {
                *a4 = 1;
              }
            }

LABEL_31:
            Chunk = ssftriff_reader_CloseChunk(v81);
            if ((Chunk & 0x80000000) != 0)
            {
              goto LABEL_65;
            }

            goto LABEL_32;
          }
        }

        else
        {
          v34 = 0;
        }

        v35 = 0;
        goto LABEL_31;
      }
    }

    cstdlib_strcpy(__dst, "tokentn/");
    cstdlib_strcat(__dst, *(a3 + 8 * *(a1 + 352)));
    v19 = brokeraux_ComposeBrokerString(*a1, __dst, 1, 1, v77, 0, 0, v90, 0x80uLL);
    if ((v19 & 0x80000000) == 0)
    {
      v22 = getRsrcHandleForThisApi(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
      if ((ssftriff_reader_ObjOpen(v22, v23, 0, v90, "TOKN", 1031, &v81) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      log_OutPublic(*(*a1 + 32), *(a1 + 184), 24057, "%s%s", v24, v25, v26, v27, "Missing broker header file");
      v19 = 3;
    }

    return FEDATA_ERROR(v19);
  }

  v11 = *(*a1 + 32);
  v12 = *(a1 + 184);
  v13 = 24055;
LABEL_5:
  log_OutPublic(v11, v12, v13, 0, a5, a6, a7, a8, v74);
  v14 = 7;
LABEL_6:

  return FEDATA_ERROR(v14);
}

uint64_t readDataBlockFromFileDeRefCnt(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v5);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v4);
    if ((result & 0x80000000) == 0)
    {
      ObjcForThisApi = getObjcForThisApi(v5, v4);
      return objc_ReleaseObject(ObjcForThisApi, *(*(a1 + 152) + 16) + 2);
    }
  }

  return result;
}

uint64_t FEData_blockData_unloadDataFiles(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1[19] + 16))
  {

    return readDataBlockFromFileDeRefCnt(a1);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_unloadUnusedDataFiles(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    result = readDataBlockFromFileDeRefCnt(a1);
    *v8 = 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v10);

    return FEDATA_ERROR(7);
  }

  return result;
}

uint64_t FEData_ObjOpen(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen Begin", a6, a7, a8, v27);
  v9 = heap_Calloc(*(*a3 + 8), 1, 24);
  if (v9)
  {
    v16 = v9;
    a3[19] = v9;
    v17 = FEData_functionData_ObjOpen(a3, v9, v10, v11, v12, v13, v14, v15);
    if ((v17 & 0x80000000) != 0 || (v17 = FEData_domainDefs_ObjOpen(a3, v16 + 1, v19, v20, v21, v22, v23, v24), (v17 & 0x80000000) != 0))
    {
      v25 = v17;
    }

    else
    {
      v25 = FEData_blockData_ObjOpen(a3, v16 + 2, v19, v20, v21, v22, v23, v24);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_8:
        log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen End (%x)", v22, v23, v24, v25);
        return v25;
      }
    }

    FEData_ObjClose(a3, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_8;
  }

  log_OutPublic(*(*a3 + 32), a3[23], 24048, 0, v12, v13, v14, v15, v28);

  return TOKENTNERROR(10);
}

uint64_t FEData_ObjClose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[19];
  if (v8)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose Begin", a6, a7, a8, v39);
    v17 = FEData_functionData_ObjClose(a1, v10, v11, v12, v13, v14, v15, v16);
    LODWORD(v18) = v17 & (v17 >> 31);
    v26 = FEData_blockData_ObjClose(a1, v19, v20, v21, v22, v23, v24, v25);
    if (v26 < 0)
    {
      LODWORD(v18) = v26;
    }

    v34 = FEData_domainDefs_ObjClose(a1, v27, v28, v29, v30, v31, v32, v33);
    if (v34 >= 0)
    {
      v18 = v18;
    }

    else
    {
      v18 = v34;
    }

    heap_Free(*(*a1 + 8), v8);
    a1[19] = 0;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose End (%x)", v35, v36, v37, v18);
    return v18;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

uint64_t compareFunctions(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v4 = *result;
  if (*result != *a2)
  {
    goto LABEL_2;
  }

  v6 = result;
  if (v4 == &unk_26ECDB148)
  {
    result = *(result + 48);
    v7 = *(a2 + 48);
    if (!result)
    {
      if (v7)
      {
        goto LABEL_2;
      }

      v4 = &unk_26ECDB148;
      goto LABEL_17;
    }

    if (!v7)
    {
      goto LABEL_2;
    }

    result = cstdlib_strcmp(result, v7);
    if (result)
    {
      goto LABEL_2;
    }

    v4 = *v6;
  }

  if (v4 == &unk_26ECDB164)
  {
    if (*(v6 + 8) != *(a2 + 8))
    {
      goto LABEL_2;
    }

    v4 = &unk_26ECDB164;
  }

  else if (v4 == &unk_26ECDB144)
  {
    if (*(v6 + 8) != *(a2 + 8))
    {
      goto LABEL_2;
    }

    v4 = &unk_26ECDB144;
  }

LABEL_17:
  if ((v4 == &unk_26ECDB14C || v4 == &unk_26ECDB150 || v4 == &unk_26ECDB154 || v4 == &unk_26ECDB158 || v4 == &unk_26ECDB168) && *(v6 + 8) != *(a2 + 8))
  {
    goto LABEL_2;
  }

  result = *(v6 + 40);
  v8 = *(a2 + 40);
  if (result)
  {
    if (!v8)
    {
      goto LABEL_2;
    }

    result = cstdlib_strcmp(result, v8);
    if (result)
    {
      goto LABEL_2;
    }
  }

  else if (v8)
  {
    goto LABEL_2;
  }

  if (*a3)
  {
    return result;
  }

  if (*(v6 + 24) != *(a2 + 24))
  {
LABEL_2:
    *a3 = 1;
    return result;
  }

  if (*(v6 + 24))
  {
    v9 = 0;
    do
    {
      result = compareFunctions(*(*(v6 + 16) + 8 * v9), *(*(a2 + 16) + 8 * v9), a3);
      if (*a3 == 1)
      {
        break;
      }

      ++v9;
    }

    while (v9 < *(v6 + 24));
  }

  return result;
}

uint64_t addEntry(uint64_t *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (*a2)
  {
    v6 = heap_Realloc(*(*a1 + 8), *(a2 + 1), 8 * *a2 + 8);
    if (v6)
    {
LABEL_3:
      *(a2 + 1) = v6;
      v11 = *a2;
      *(v6 + 8 * v11) = a3;
      *a2 = v11 + 1;
      return 0;
    }
  }

  else
  {
    v6 = heap_Calloc(*(*a1 + 8), 1, 8);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v7, v8, v9, v10, v13);

  return FEDATA_ERROR(10);
}

uint64_t chequeUniqueFunction(unsigned __int16 *a1, uint64_t a2, _WORD *a3)
{
  if (!*a1)
  {
    return 1;
  }

  v6 = 0;
  while (1)
  {
    v8 = 0;
    compareFunctions(a2, *(*(a1 + 1) + 8 * v6), &v8);
    if (!v8)
    {
      break;
    }

    if (++v6 >= *a1)
    {
      return 1;
    }
  }

  result = 0;
  *a3 = v6;
  return result;
}

uint64_t getIndexForFunction(unsigned __int16 *a1, uint64_t a2, _WORD *a3)
{
  if (!*a1)
  {
    return 0;
  }

  v3 = 0;
  while (*(*(a1 + 1) + 8 * v3) != a2)
  {
    if (*a1 == ++v3)
    {
      return 0;
    }
  }

  *a3 = v3;
  return 1;
}

void *compressFunctionData(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    result = heap_Free(*(*result + 8), v4);
    *(a2 + 32) = 0;
  }

  if (*(a2 + 24))
  {
    v5 = 0;
    do
    {
      result = compressFunctionData(v3, *(*(a2 + 16) + 8 * v5++));
    }

    while (v5 < *(a2 + 24));
  }

  return result;
}

void *FEData_freeEntry(void *result, uint64_t a2, int a3)
{
  if (a2)
  {
    v5 = result;
    v6 = *(a2 + 40);
    if (v6)
    {
      result = heap_Free(result[1], v6);
      *(a2 + 40) = 0;
    }

    v7 = *(a2 + 32);
    if (v7)
    {
      result = heap_Free(v5[1], v7);
      *(a2 + 32) = 0;
    }

    v8 = *(a2 + 48);
    if (v8)
    {
      result = heap_Free(v5[1], v8);
      *(a2 + 48) = 0;
    }

    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = *(a2 + 24);
      if (*(a2 + 24))
      {
        v11 = 0;
        do
        {
          v12 = *(a2 + 16);
          if (a3 == 1)
          {
            FEData_freeEntry(v5, *(v12 + 8 * v11), 1);
            heap_Free(v5[1], *(*(a2 + 16) + 8 * v11));
            v12 = *(a2 + 16);
            v10 = *(a2 + 24);
          }

          *(v12 + 8 * v11++) = 0;
        }

        while (v11 < v10);
        v9 = *(a2 + 16);
      }

      result = heap_Free(v5[1], v9);
      *(a2 + 24) = 0;
      *(a2 + 16) = 0;
    }
  }

  return result;
}

uint64_t freeFunctions(void **a1, unsigned __int16 *a2)
{
  if (*a2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 1) + 8 * v4);
      FEData_freeEntry(*a1, v5, 0);
      heap_Free((*a1)[1], v5);
      ++v4;
    }

    while (v4 < *a2);
  }

  v6 = *(a2 + 1);
  if (v6)
  {
    heap_Free((*a1)[1], v6);
    *(a2 + 1) = 0;
  }

  *a2 = 0;
  return 0;
}

uint64_t FEData_functionData_ObjOpen(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*a1 + 32);
  v11 = a1[23];
  if (a2)
  {
    log_OutText(v10, v11, 4, 0, "functionData : ObjOpen Begin", a6, a7, a8, v23);
    *a2 = 0;
    v12 = heap_Calloc(*(*a1 + 8), 1, 16);
    if (v12)
    {
      v17 = v12;
      cstdlib_memset(v12, 0, 0x10uLL);
      *v17 = 0;
      v17[1] = 0;
      *a2 = v17;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjOpen End (%x)", v18, v19, v20, 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v13, v14, v15, v16, v24);
    v22 = 10;
  }

  else
  {
    log_OutPublic(v10, v11, 24049, 0, a5, a6, a7, a8, v23);
    v22 = 7;
  }

  return FEDATA_ERROR(v22);
}

uint64_t FEData_functionData_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[19];
  if (v8 && (v9 = *v8) != 0)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjClose Begin", a6, a7, a8, v15);
    freeFunctions(a1, v9);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjClose End (%x)", v11, v12, v13, 0);
    heap_Free(*(*a1 + 8), v9);
    return 0;
  }

  else
  {

    return FEDATA_ERROR(8);
  }
}

uint64_t FEData_readFunctionDataFromBinaryFile(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7)
{
  v35 = 0;
  __dst = 0;
  cstdlib_memcpy(&__dst + 2, (a5 + *a6), 2uLL);
  FunctionDataFromBinaryFile = 0;
  v15 = *a6 + 2;
  *a6 = v15;
  if (HIWORD(__dst) > 5u)
  {
    if (HIWORD(__dst) > 8u)
    {
      switch(HIWORD(__dst))
      {
        case 9u:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB160;
          break;
        case 0xAu:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB164;
          break;
        case 0xBu:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB168;
          break;
        default:
          goto LABEL_31;
      }
    }

    else
    {
      switch(HIWORD(__dst))
      {
        case 6u:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB154;
          break;
        case 7u:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB158;
          break;
        case 8u:
          FunctionDataFromBinaryFile = 0;
          v16 = &unk_26ECDB15C;
          break;
        default:
          goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  if (HIWORD(__dst) <= 2u)
  {
    if (HIWORD(__dst))
    {
      FunctionDataFromBinaryFile = 0;
      if (HIWORD(__dst) == 1)
      {
        v16 = &unk_26ECDB140;
      }

      else
      {
        v16 = &unk_26ECDB144;
      }
    }

    else
    {
      FunctionDataFromBinaryFile = 0;
      v16 = &StaticIntPointers_2;
    }

LABEL_30:
    *a4 = v16;
    goto LABEL_31;
  }

  if (HIWORD(__dst) != 3)
  {
    if (HIWORD(__dst) == 4)
    {
      FunctionDataFromBinaryFile = 0;
      v16 = &unk_26ECDB14C;
    }

    else
    {
      if (HIWORD(__dst) != 5)
      {
        goto LABEL_31;
      }

      FunctionDataFromBinaryFile = 0;
      v16 = &unk_26ECDB150;
    }

    goto LABEL_30;
  }

  *a4 = &unk_26ECDB148;
  cstdlib_memcpy(&__dst, (a5 + v15), 2uLL);
  *a6 += 2;
  LOWORD(__dst) = __dst + 1;
  v17 = heap_Calloc(*(a3 + 8), 1, __dst);
  *(a4 + 48) = v17;
  if (!v17)
  {
    goto LABEL_45;
  }

  v35 = __dst;
  v22 = ssftriff_reader_ReadStringZ(a2, a5, a7, *a6, v17, &v35);
  if ((v22 & 0x80000000) != 0 || v35 != __dst)
  {
    goto LABEL_46;
  }

  FunctionDataFromBinaryFile = v22;
  v15 = *a6 + v35;
  *a6 = v15;
LABEL_31:
  cstdlib_memcpy(&__dst, (a5 + v15), 2uLL);
  v23 = *a6 + 2;
  *a6 = v23;
  v24 = __dst;
  if (__dst)
  {
    LOWORD(__dst) = __dst + 1;
    v25 = heap_Calloc(*(a3 + 8), 1, (v24 + 1));
    *(a4 + 40) = v25;
    if (!v25)
    {
      goto LABEL_45;
    }

    v35 = __dst;
    v26 = ssftriff_reader_ReadStringZ(a2, a5, a7, *a6, v25, &v35);
    if ((v26 & 0x80000000) == 0 && v35 == __dst)
    {
      FunctionDataFromBinaryFile = v26;
      v23 = *a6 + v35;
      *a6 = v23;
      goto LABEL_37;
    }

LABEL_46:
    v32 = 0;
    return FEDATA_ERROR(v32);
  }

  *(a4 + 40) = 0;
LABEL_37:
  cstdlib_memcpy((a4 + 8), (a5 + v23), 2uLL);
  v27 = *a6 + 2;
  *a6 = v27;
  cstdlib_memcpy(&__dst, (a5 + v27), 2uLL);
  *a6 += 2;
  v28 = __dst;
  *(a4 + 24) = __dst;
  if (!v28)
  {
    return FunctionDataFromBinaryFile;
  }

  v29 = heap_Calloc(*(a3 + 8), 1, 8 * v28);
  *(a4 + 16) = v29;
  if (!v29)
  {
LABEL_45:
    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v18, v19, v20, v21, v34);
    v32 = 10;
    return FEDATA_ERROR(v32);
  }

  if (*(a4 + 24))
  {
    v30 = 0;
    while (1)
    {
      v31 = heap_Calloc(*(a3 + 8), 1, 56);
      if (!v31)
      {
        break;
      }

      *(*(a4 + 16) + 8 * v30) = v31;
      *v31 = &StaticIntPointers_2;
      *(v31 + 24) = 0;
      *(v31 + 16) = 0;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 32) = 0;
      FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(a1, a2, a3, v31, a5, a6, a7);
      if ((FunctionDataFromBinaryFile & 0x80000000) == 0 && ++v30 < *(a4 + 24))
      {
        continue;
      }

      return FunctionDataFromBinaryFile;
    }

    goto LABEL_45;
  }

  return FunctionDataFromBinaryFile;
}

uint64_t FEData_functionData_getFunction(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **(a1 + 152);
  if (v8)
  {
    if (*v8 > a2)
    {
      *a3 = *(*(v8 + 1) + 8 * a2);
      return 0;
    }

    v14 = *(a1 + 184);
    v15 = "functionIndex";
    v13 = "%s%d%s%d";
    v11 = *(*a1 + 32);
    v10 = v14;
    v12 = 24047;
  }

  else
  {
    v10 = *(a1 + 184);
    v11 = *(*a1 + 32);
    v12 = 24049;
    v13 = 0;
  }

  log_OutPublic(v11, v10, v12, v13, a5, a6, a7, a8, v15);

  return FEDATA_ERROR(7);
}

uint64_t FEFunctionMap_ObjOpen(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjOpen Begin", a6, a7, a8, v15);
  v9 = heap_Calloc(*(*a1 + 8), 1, 16);
  if (v9)
  {
    *v9 = 0;
    v9[1] = 0;
    a1[20] = v9;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjOpen End (%x)", v11, v12, v13, 0);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v10, v11, v12, v13, v16);

    return TOKENTNERROR(10);
  }
}

uint64_t FEFunctionMap_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[20];
  if (v8)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjClose Begin", a6, a7, a8, v19);
    v13 = 0;
    v14 = *a1;
    v15 = 1;
    do
    {
      v16 = v15;
      v17 = *(v8 + 8 * v13);
      if (v17)
      {
        ssftmap_ObjClose(v17);
        *(v8 + 8 * v13) = 0;
      }

      v15 = 0;
      v13 = 1;
    }

    while ((v16 & 1) != 0);
    log_OutText(*(v14 + 32), a1[23], 4, 0, "fe_functionmap : ObjClose End (%x)", v10, v11, v12, 0);
    heap_Free(*(*a1 + 8), v8);
    return 0;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

uint64_t FEFunctionMap_GetMap(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*a1 + 8);
  v10[0] = xmmword_287EECB30;
  v10[1] = *off_287EECB40;
  v11 = off_287EECB50;
  v8 = ssftmap_ObjOpen(v3, 0, v10, a2);
  result = 0;
  if ((v8 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24039, 0, v4, v5, v6, v7, v10[0]);
    return v8;
  }

  return result;
}

uint64_t action2FunctionMap_CopyMapKey(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    return TOKENTNERROR(7);
  }

  *a3 = a1;
  return 0;
}

uint64_t action2FunctionMap_CompareKeys(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t action2FunctionMap_CopyFunctionData(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    return TOKENTNERROR(7);
  }

  *a3 = a1;
  return 0;
}

uint64_t FEFunctionMap_GetFunction(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 160);
  *a4 = 0;
  ssftmap_Find(*(v4 + 8 * a2), a3, a4);
  return 0;
}

uint64_t FERuntimeData_ObjOpen(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjOpen Begin", a6, a7, a8, v34);
  v9 = heap_Calloc(*(*a1 + 8), 1, 88);
  if (v9)
  {
    v14 = v9;
    a1[22] = v9;
    v15 = *(*a1 + 8);
    v36 = xmmword_26ECDB178;
    v37 = 0;
    if (vector_ObjOpen(v15, &v36, 5, v14))
    {
      v20 = 0;
    }

    else
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v16, v17, v18, v19, v35);
      v20 = TOKENTNERROR(10);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_12;
      }
    }

    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 40) = 50;
    *(v14 + 32) = 0x8800050000;
    v29 = heap_Calloc(*(*a1 + 8), 1, 816);
    *(v14 + 24) = v29;
    if (v29)
    {
      v31 = (v29 + 16 * *(v14 + 32));
      v32 = *(v14 + 34) * *(v14 + 36) + 1;
      v31[1] = v32;
      *v31 = 0;
      v33 = heap_Calloc(*(*a1 + 8), 1, v32);
      *v31 = v33;
      if (v33)
      {
        ++*(v14 + 32);
LABEL_13:
        log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjOpen End (%x)", v26, v27, v28, v20);
        return v20;
      }
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v30, v26, v27, v28, v35);
    v20 = TOKENTNERROR(10);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    FERuntimeData_ObjClose(a1, v22, v23, v24, v25, v26, v27, v28);
    goto LABEL_13;
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v10, v11, v12, v13, v35);

  return TOKENTNERROR(10);
}

uint64_t FERuntimeData_ObjClose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[22];
  if (v8)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjClose Begin", a6, a7, a8, v16);
    v10 = a1[22];
    if (*v10)
    {
      vector_ObjClose(*v10);
      *v10 = 0;
    }

    node_clearMem(a1);
    v11 = *(v8 + 24);
    if (v11)
    {
      if (*v11)
      {
        heap_Free(*(*a1 + 8), *v11);
        v11 = *(v8 + 24);
        *v11 = 0;
      }

      heap_Free(*(*a1 + 8), v11);
      *(v8 + 24) = 0;
    }

    *(v8 + 16) = 0;
    heap_Free(*(*a1 + 8), v8);
    a1[22] = 0;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjClose End (%x)", v12, v13, v14, 0);
    return 0;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

void *node_clearMem(void *result)
{
  v1 = result[22];
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    if (v3 >= 2)
    {
      v4 = result;
      v5 = 1;
      v6 = 16;
      do
      {
        v7 = *(v2 + v6);
        if (v7)
        {
          result = heap_Free(*(*v4 + 8), v7);
          v2 = *(v1 + 24);
          *(v2 + v6) = 0;
          v3 = *(v1 + 32);
        }

        ++v5;
        v6 += 16;
      }

      while (v5 < v3);
      if (v3 >= 2)
      {
        result = cstdlib_memset((v2 + 16), 0, (16 * v3 + 0xFFFFFFFF0) & 0xFFFFFFFF0);
        *(v1 + 32) = 1;
      }
    }

    *(v1 + 38) = 0;
  }

  return result;
}

uint64_t FERuntimeData_DumpMatch(uint64_t a1, uint64_t a2, __int16 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0;
  if (*(a1 + 176))
  {
    if (a4 == 1)
    {
      v11 = "<LOGFE> ";
    }

    else
    {
      v11 = "";
    }

    cstdlib_strcpy(__dst, v11);
    FEData_blockData_getTokenData(a1, *(a2 + 88), &v35, v12, v13, v14, v15, v16);
    cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + *a3), (a3[1] - *a3));
    *(*(a1 + 552) - *a3 + a3[1]) = 0;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s%20s [%d,%d] _%s_ (domainBlockID=%d, domainNum=%d)", v17, v18, v19, __dst);
    if (*(a2 + 82))
    {
      v23 = 0;
      v24 = (a2 + 44);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        if (v25 == -1 && v26 == 0xFFFF)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _NULL_", v20, v21, v22, "MATCH");
        }

        else
        {
          cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + v25), (v26 - v25));
          *(*(a1 + 552) - *(v24 - 1) + *v24) = 0;
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _%s_", v28, v29, v30, "MATCH");
        }

        ++v23;
        v24 += 2;
      }

      while (v23 < *(a2 + 82));
    }

    if (*(a2 + 40))
    {
      v31 = 0;
      v32 = a2 + 2;
      do
      {
        v32 += 4;
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] %s", v20, v21, v22, "EXPANDEDORTH");
        ++v31;
      }

      while (v31 < *(a2 + 40));
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0, a5, a6, a7, a8, v34);

    return TOKENTNERROR(7);
  }
}

uint64_t FERuntimeData_DumpMatches(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 548))
  {
    return 0;
  }

  v9 = *(a1 + 176);
  if (v9)
  {
    if (a3 == 1)
    {
      v11 = "<LOGFE> ";
    }

    else
    {
      v11 = "";
    }

    cstdlib_strcpy(__dst, v11);
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches Begin %s", v12, v13, v14, __dst);
    if (*(v9 + 16))
    {
      for (i = *(v9 + 8); i; i = *i)
      {
        FERuntimeData_DumpMatch(a1, (i + 12), i + 8, a3, v15, v16, v17, v18);
      }
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches End (%x)", v16, v17, v18, __dst);
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0, a5, a6, a7, a8, v21);

  return TOKENTNERROR(7);
}

uint64_t FERuntimeData_GetNumMatches(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[22];
  if (v9)
  {
    return *(v9 + 16);
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v8);
  return 0;
}

uint64_t FERuntimeData_FreeMatches(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[22];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : FreeMatches Begin", a6, a7, a8, v15);
  node_clearMem(a1);
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  if (a2 == 1)
  {
    vector_Clear(*v10);
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : FreeMatches End (%x)", v11, v12, v13, 0);
  return 0;
}

uint64_t FERuntimeData_AddDomainRange(uint64_t a1, void **a2)
{
  if (vector_AddGet(**(a1 + 176), a2))
  {
    cstdlib_memset(*a2, 0, 0xCuLL);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0, v4, v5, v6, v7, v9);

    return TOKENTNERROR(10);
  }
}

uint64_t FERuntimeData_AddMatch(uint64_t *a1, void *__src, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!__src || !a3)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, a8, v42);

    return TOKENTNERROR(7);
  }

  v10 = a1[22];
  v11 = *(v10 + 32);
  if (!*(v10 + 32))
  {
    v33 = *(*a1 + 32);
    v34 = a1[23];
    v35 = 24035;
    v36 = 0;
LABEL_23:
    log_OutPublic(v33, v34, v35, v36, a5, a6, a7, a8, v42);
    v37 = 0;
    goto LABEL_24;
  }

  v13 = *(v10 + 24);
  v14 = *(v10 + 38);
  v15 = v13 + 16 * v14;
  v16 = *(v10 + 36);
  v17 = *(v15 + 12);
  v18 = v17 + v16;
  if (v17 + v16 < *(v15 + 8))
  {
    goto LABEL_10;
  }

  if (v11 + 1 >= *(v10 + 40))
  {
    v33 = *(*a1 + 32);
    v34 = a1[23];
    v42 = "maxBlocks";
    v36 = "%s%d";
    v35 = 24036;
    goto LABEL_23;
  }

  if (v14 + 1 >= v11)
  {
    v19 = (v13 + 16 * *(v10 + 32));
    v20 = *(v10 + 34) * v16 + 1;
    v19[1] = v20;
    *v19 = 0;
    v21 = heap_Calloc(*(*a1 + 8), 1, v20);
    *v19 = v21;
    if (v21)
    {
      ++*(v10 + 32);
      LOWORD(v14) = *(v10 + 38);
      v13 = *(v10 + 24);
      v16 = *(v10 + 36);
      goto LABEL_9;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0, v22, v23, v24, v25, v42);
    v37 = 10;
LABEL_24:
    LODWORD(result) = TOKENTNERROR(v37);
    if (result >= 0)
    {
      return 6;
    }

    else
    {
      return result;
    }
  }

LABEL_9:
  v26 = v14 + 1;
  *(v10 + 38) = v26;
  v15 = v13 + 16 * v26;
  v17 = *(v15 + 12);
  v18 = v17 + v16;
LABEL_10:
  *(v15 + 12) = v18;
  if (!*v15)
  {
    return 6;
  }

  v27 = *v15 + v17;
  *v27 = 0;
  *(v27 + 8) = 0;
  cstdlib_memcpy((v27 + 16), __src, 4uLL);
  cstdlib_memcpy((v27 + 24), a3, 0x70uLL);
  v28 = *(v10 + 8);
  if (v28)
  {
    v29 = *(v27 + 16);
    while (1)
    {
      v30 = v28;
      v31 = *(v28 + 8);
      if (v31 == v29)
      {
        break;
      }

      if (v31 >= v29)
      {
        v41 = v30[1];
        v30[1] = v27;
        *v27 = v30;
        if (!v41)
        {
          goto LABEL_40;
        }

        *(v27 + 8) = v41;
        *v41 = v27;
        goto LABEL_41;
      }

      v28 = *v30;
      if (!*v30)
      {
        *v30 = v27;
        *(v27 + 8) = v30;
        goto LABEL_41;
      }
    }

    v38 = *(v27 + 18);
    if (*(v30 + 9) > v38)
    {
      while (1)
      {
        v39 = v30;
        v30 = v30[1];
        if (!v30)
        {
          break;
        }

        if (*(v30 + 8) != v29 || *(v30 + 9) <= v38)
        {
          v39[1] = v27;
          *v27 = v39;
          *(v27 + 8) = v30;
          *v30 = v27;
          goto LABEL_41;
        }
      }

      v39[1] = v27;
      *v27 = v39;
      goto LABEL_40;
    }

    while (1)
    {
      v40 = v30;
      v30 = *v30;
      if (!v30)
      {
        break;
      }

      if (*(v30 + 8) != v29 || *(v30 + 9) >= v38)
      {
        *v40 = v27;
        *v27 = v30;
        *(v27 + 8) = v40;
        v30[1] = v27;
        goto LABEL_41;
      }
    }

    *v40 = v27;
    *(v27 + 8) = v40;
  }

  else
  {
LABEL_40:
    *(v10 + 8) = v27;
  }

LABEL_41:
  result = 0;
  ++*(v10 + 16);
  return result;
}

uint64_t FERuntimeData_FindLongestMatch(uint64_t a1, unsigned __int16 *a2, _WORD *a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 8);
    for (*a3 = a2[1]; v4; v4 = *v4)
    {
      v5 = *(v4 + 8);
      v6 = *a2;
      if (v5 == v6)
      {
        *a3 = *(v4 + 9);
      }

      else if (v5 > v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t FERuntimeData_GetAllMatchesAtKey(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 176);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = *(v2 + 8);
  if (v5)
  {
    v6 = 0;
    do
    {
      if (*(v5 + 8) != *a2)
      {
        break;
      }

      if (*(v5 + 9) != a2[1])
      {
        break;
      }

      ++v6;
      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  result = resetMatchList(a1, v6);
  if ((result & 0x80000000) == 0)
  {
    v8 = *(v2 + 8);
    if (v8)
    {
      v9 = *a2;
      do
      {
        if (*(v8 + 8) != v9)
        {
          break;
        }

        if (*(v8 + 9) != a2[1])
        {
          break;
        }

        v10 = *(a1 + 386);
        *(*(a1 + 376) + 8 * v10) = v8 + 3;
        *(a1 + 386) = v10 + 1;
        v8 = *v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t FERuntimeData_DeleteSubsumedkeys(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *a2;
      while (1)
      {
        v6 = *(v4 + 8);
        if (v6 == v5 && *(v4 + 9) == a3)
        {
          goto LABEL_8;
        }

        if (v6 < v5)
        {
          break;
        }

        if (*(v4 + 9) <= a3)
        {
          v7 = *v4;
        }

        else
        {
          v7 = *v4;
          if (v6 >= a3)
          {
            goto LABEL_16;
          }
        }

        v8 = v4[1];
        if (!v8)
        {
          if (v7)
          {
            v7[1] = 0;
          }

          *(v3 + 8) = v7;
          v9 = *v4;
          if (!*v4)
          {
            goto LABEL_16;
          }

LABEL_15:
          v9[1] = v4[1];
          goto LABEL_16;
        }

        *v8 = v7;
        v9 = v7;
        if (v7)
        {
          goto LABEL_15;
        }

LABEL_16:
        v4 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      if (v6 > a3)
      {
        return 0;
      }

LABEL_8:
      v7 = *v4;
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t FERuntimeData_DeleteMatch(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = (v3 + 8);
    v5 = (v3 + 8);
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        return 0;
      }

      v6 = *(v5 + 8);
      v7 = *a2;
      if (v6 == v7 && *(v5 + 9) == a2[1] && v5[14] == *(a3 + 88))
      {
        break;
      }

      if (v6 > v7)
      {
        return 0;
      }
    }

    v9 = *v5;
    v10 = v5[1];
    if (v10)
    {
      *v10 = v9;
      if (!v9)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if (v9)
    {
      v9[1] = 0;
    }

    *v4 = v9;
    v9 = *v5;
    if (*v5)
    {
LABEL_15:
      v9[1] = v5[1];
    }
  }

  return 0;
}

uint64_t FERuntimeData_GetKeyAtPos(uint64_t a1, int a2, void *a3, void *a4)
{
  v4 = *(a1 + 176);
  if (*(v4 + 16))
  {
    v5 = (v4 + 8);
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 8);
      if (v6 == a2)
      {
        *a3 = v5 + 2;
        *a4 = v5 + 3;
        return 0;
      }
    }

    while (v6 <= a2);
  }

  return 0;
}

uint64_t FERuntimeData_UpdateDomainRange(void *a1, unsigned int a2, __int16 a3)
{
  v5 = a1[22];
  v11 = 0;
  if (vector_GetElemAt(*v5, a2, &v11))
  {
    result = 0;
    *(v11 + 2) = a3;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24037, "%s%d", v6, v7, v8, v9, "domainIndex");
    return TOKENTNERROR(0);
  }

  return result;
}

uint64_t FERuntimeData_GetDomainRange(uint64_t a1, unsigned int a2, void *a3)
{
  if (vector_GetElemAt(**(a1 + 176), a2, a3))
  {
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24037, "%s%d", v4, v5, v6, v7, "domainIndex");

  return TOKENTNERROR(0);
}

uint64_t FERuntimeData_GetActiveDomains(uint64_t a1, uint64_t a2, _WORD *a3, int a4, int a5, int a6)
{
  v15 = 0;
  v11 = *(a1 + 176);
  if (vector_GetElemAt(*v11, 0, &v15))
  {
    v12 = 0;
    while (a6)
    {
      v13 = *a3;
      if (v13 <= 0x1F3)
      {
        goto LABEL_5;
      }

LABEL_9:
      if (!vector_GetElemAt(*v11, ++v12, &v15))
      {
        return 0;
      }
    }

    if (a4 < *v15)
    {
      goto LABEL_9;
    }

    if (a5 > v15[1])
    {
      goto LABEL_9;
    }

    v13 = *a3;
    if (v13 >= 0x1F4)
    {
      goto LABEL_9;
    }

LABEL_5:
    *(a2 + 2 * v13) = v12;
    ++*a3;
    goto LABEL_9;
  }

  return 0;
}

uint64_t FERuntimeData_PruneAndDumpActiveDomains(void *a1)
{
  v24 = 0;
  v2 = a1[22];
  if (vector_GetElemAt(*v2, 0, &v24))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "DomainRange [%d,%d] %s", v3, v4, v5, *v24);
      if (*(v24 + 2))
      {
        ++v7;
      }

      else if (!vector_Remove(*v2, v6))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24038, "%s%d", v8, v9, v10, v11, "domain range index");
        return 0;
      }

      v6 = v7;
    }

    while (vector_GetElemAt(*v2, v7, &v24));
  }

  Size = vector_GetSize(*v2);
  v16 = *(*a1 + 32);
  v17 = a1[23];
  if (Size)
  {
    log_OutText(v16, v17, 4, 0, "%d Final Active Domains", v12, v13, v14, Size);
    if (vector_GetElemAt(*v2, 0, &v24))
    {
      v21 = 0;
      do
      {
        log_OutText(*(*a1 + 32), a1[23], 4, 0, "Domain[block=%d,num=%d] Range [%d,%d]", v18, v19, v20, v24[3]);
        ++v21;
      }

      while (vector_GetElemAt(*v2, v21, &v24));
    }
  }

  else
  {
    log_OutText(v16, v17, 4, 0, "No Final Active Domains", v12, v13, v14, v23);
  }

  return 0;
}

uint64_t FERuntimeData_GetDomainBlockIndex(void *a1, unsigned int a2, _WORD *a3, _WORD *a4)
{
  v7 = a1[22];
  v14 = 0;
  if (vector_GetElemAt(*v7, a2, &v14))
  {
    result = 0;
    v13 = v14;
    *a3 = *(v14 + 6);
    *a4 = *(v13 + 4);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24038, "%s%d", v8, v9, v10, v11, "iDomainIndexID");
    return TOKENTNERROR(0);
  }

  return result;
}

uint64_t applyChecks(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53[1] = 0;
  v54 = 0;
  v53[0] = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : applyChecks Begin (recursionlevel=%d)", a6, a7, a8, a5);
  inited = initStrRes(a1, &v56);
  if ((inited & 0x80000000) == 0)
  {
    DomainDefBlockInfo = initStrRes(a1, &v54);
    if ((DomainDefBlockInfo & 0x80000000) != 0)
    {
LABEL_29:
      clearStrRes(*a1, &v54);
      clearStrRes(*a1, &v56);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : applyChecks End", v44, v45, v46, v50);
      return DomainDefBlockInfo;
    }

    if (*(a3 + 24))
    {
      v18 = 0;
      while (1)
      {
        log_OutText(*(*a1 + 32), a1[23], 5, 0, "level %d Apply Check %d ...", v14, v15, v16, a5);
        v19 = applyChecks(a1, a2, *(*(a3 + 16) + 8 * v18), &v56, (a5 + 1));
        if ((v19 & 0x80000000) != 0)
        {
          break;
        }

        if (WORD1(v57))
        {
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "After check %d, result = %s", v20, v21, v22, v18);
        }

        DomainDefBlockInfo = add2StringV3(a1, &v54, &v56);
        if ((DomainDefBlockInfo & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        if (v18 + 1 != *(a3 + 24))
        {
          DomainDefBlockInfo = add2StringV2(a1, &v54, " ");
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_29;
          }
        }

        WORD1(v57) = 0;
        *v56 = 0;
        if (++v18 >= *(a3 + 24))
        {
          goto LABEL_12;
        }
      }

LABEL_21:
      DomainDefBlockInfo = v19;
      goto LABEL_29;
    }

LABEL_12:
    clearStrRes(*a1, &v56);
    if (WORD1(v55))
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing function calls on expanded string %s", v23, v24, v25, v54);
    }

    FEFunctionMap_GetFunction(a1, 0, *a3, &v58);
    if (!v58)
    {
      v37 = *(*a1 + 32);
      v38 = a1[23];
      if (WORD1(v55))
      {
        log_OutPublic(v37, v38, 24001, "%s%s", v26, v27, v28, v29, "argstr");
      }

      else
      {
        log_OutPublic(v37, v38, 24001, 0, v26, v27, v28, v29, v50);
      }

      goto LABEL_29;
    }

    v19 = initStrRes(a1, v53);
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    if ((**a3 & 0xFFFFFFFE) == 8)
    {
      LODWORD(v52) = 0;
      v35 = a1[41];
      *v35 = v54;
      *(v35 + 8) = v53;
      *(v35 + 32) = 0;
      *(v35 + 40) = *(a3 + 8);
      v36 = v58(a1, &v52);
      if ((v36 & 0x80000000) == 0)
      {
LABEL_18:
        v36 = add2StringV3(a1, a4, v53);
      }
    }

    else
    {
      v52 = 0;
      v51 = 0;
      DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, *(*(a1[41] + 24) + 104), &v52, v30, v31, v32, v33, v34);
      if ((DomainDefBlockInfo & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      v43 = a1[41];
      if (*(*(v43 + 24) + 106) > *(v52 + 24))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24002, 0, v39, v40, v41, v42, v50);
        goto LABEL_27;
      }

      v48 = *(v52 + 16) + 72 * *(*(v43 + 24) + 106);
      *v43 = *(a3 + 40);
      *(v43 + 8) = v53;
      if (*(v48 + 60))
      {
        v49 = a1[36];
      }

      else
      {
        v49 = *(v48 + 48) + *(v48 + 2);
      }

      *(v43 + 32) = v49;
      *(v43 + 40) = *(a3 + 8);
      v36 = v58(a1, &v51);
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    DomainDefBlockInfo = v36;
LABEL_27:
    clearStrRes(*a1, v53);
    goto LABEL_29;
  }

  return inited;
}

uint64_t validateCurrentMatch(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v32 = 0;
  v30 = 0;
  v31 = 0;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch Begin", a6, a7, a8, v29);
  *a7 = 1;
  if (partialMatchFoundInBasicToken(a1, a3) != 1)
  {
    if (*(a1 + 548) == 1)
    {
      FERuntimeData_DumpMatch(a1, a2, a3, 0, v15, v16, v17, v18);
    }

    FEData_blockData_getTokenAndCheckData(a1, a6, &v31, &v32, &v30, v16, v17, v18);
    if (v32)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Applying check rule for token %s", v20, v21, v22, a5);
      *(a1 + 402) = 0;
      **(a1 + 392) = 0;
      v23 = *(a1 + 328);
      *(v23 + 16) = a3;
      *(v23 + 24) = a2;
      v19 = applyChecks(a1, a4, v30, a1 + 392, 0, v24, v25, v26);
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v27 = *(a1 + 402);
      if (*(a1 + 402))
      {
        v27 = cstdlib_strcmp(*(a1 + 392), "TRUE") == 0;
        *a7 = v27;
      }

      else
      {
        *a7 = 0;
      }
    }

    else
    {
      v19 = 0;
      v27 = *a7;
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch End result=%d", v20, v21, v22, v27);
    return v19;
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch End result=%d (partial match in basic token found)", v16, v17, v18, *a7);
  v19 = 0;
  *a7 = 0;
  return v19;
}

uint64_t tokenizer_CheckNOTNULL(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_NOTNULL( %d) = ", a6, a7, a8, *(*(a1 + 328) + 40));
  }

  v17 = 0;
  if (!validateMatchAndGetKey(a1, &v17, a3, a4, a5, a6, a7, a8))
  {
    v9 = *(*(a1 + 328) + 8);
LABEL_10:
    v11 = "FALSE";
    goto LABEL_11;
  }

  v9 = *(*(a1 + 328) + 8);
  if (v17 == -1 && HIWORD(v17) == 0xFFFF)
  {
    goto LABEL_10;
  }

  v11 = "TRUE";
LABEL_11:
  v15 = add2StringV2(a1, v9, v11);
  if ((v15 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v12, v13, v14, **(*(a1 + 328) + 8));
  }

  return v15;
}

uint64_t tokenizer_CheckLessThan(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_LESSTHAN( %d, %s) = ", a6, a7, a8, *(*(a1 + 328) + 40));
  }

  v25 = 0;
  *a2 = 0;
  if (validateMatchAndGetKey(a1, &v25, a3, a4, a5, a6, a7, a8))
  {
    if (v25 == -1 && HIWORD(v25) == 0xFFFF)
    {
      if (*(a1 + 548) == 1)
      {
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH", v12, v13, v14, v24);
      }

      v18 = *(*(a1 + 328) + 8);
      v17 = "TRUE";
    }

    else
    {
      if (!getValFromSentence(a1, &v25, &v26, v10, v11, v12, v13, v14))
      {
        *a2 = 0;
      }

      getValFromArgString(a1, &v26 + 1);
      v16 = v26 >= HIWORD(v26);
      *a2 = v26 < HIWORD(v26);
      if (v16)
      {
        v17 = "FALSE";
      }

      else
      {
        v17 = "TRUE";
      }

      v18 = *(*(a1 + 328) + 8);
    }
  }

  else
  {
    v18 = *(*(a1 + 328) + 8);
    v17 = "FALSE";
  }

  v22 = add2StringV2(a1, v18, v17);
  if ((v22 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v19, v20, v21, **(*(a1 + 328) + 8));
  }

  return v22;
}

uint64_t addExpandedOrthography2Match(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = *(a1 + 328);
  v5 = *(v4 + 40);
  v6 = (*(v4 + 24) + 4 * *(*(v4 + 24) + 40));
  *v6 = v5;
  v6[1] = *(a1 + 514);
  result = add2StringV5(a1, a1 + 504, *(a1 + 560));
  if ((result & 0x80000000) == 0)
  {
    ++*(*(*(a1 + 328) + 24) + 40);
    *a2 = 1;
  }

  return result;
}

uint64_t compareToken(uint64_t *a1, char *__s, int a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, int *a8)
{
  v16 = cstdlib_strlen(__s);
  v21 = a4;
  *a8 = 0;
  if (a6 <= a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = a6;
  }

  if (v22 <= a7)
  {
    v22 = a7;
  }

  v23 = 0;
  if (v16)
  {
    do
    {
      if (__s[v23] == a3)
      {
        break;
      }

      ++v23;
    }

    while (v23 < v16);
  }

  if (a3 != __s[v23])
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24003, "%s%s%s%c", v17, v18, v19, v20, "dictionaryStr");
LABEL_22:
    v31 = 0;
    result = 0;
LABEL_50:
    *a8 = v31;
    return result;
  }

  v43 = a5;
  v24 = a1;
  v44 = a8;
  if (a6 == 1)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (a7 == 1)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  if (a4 == 1)
  {
    v27 = v23;
  }

  else
  {
    v27 = 0;
  }

  if (v22 != 1)
  {
    v30 = 0;
    v29 = 0;
    v28 = 0;
    v33 = 1;
    while (1)
    {
      v34 = v23 + 1;
      v23 = v34;
      if (v16 > v34)
      {
        do
        {
          if (a3 == __s[v23])
          {
            break;
          }

          ++v23;
        }

        while (v16 > v23);
        if (v34 == v16 && v34 != v23)
        {
          break;
        }
      }

      if (++v33 == a6)
      {
        v29 = v34;
        v25 = v23;
      }

      if (v33 == a7)
      {
        v30 = v34;
        v26 = v23;
      }

      if (v33 == v21)
      {
        v28 = v34;
        v27 = v23;
      }

      if (v33 == v22)
      {
        goto LABEL_36;
      }
    }

    log_OutPublic(*(*v24 + 32), v24[23], 24003, "%s%s%s%d%s%c", v17, v18, v19, v20, "dictionaryStr");
    goto LABEL_48;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
LABEL_36:
  v35 = v24;
  v36 = cstdlib_strlen(*v24[41]);
  v37 = v27 - v28;
  v38 = v37 >= 1 && v36 == v37;
  if (!v38 || cstdlib_strncmp(&__s[v28], *v35[41], v36))
  {
LABEL_48:
    v31 = 0;
    result = 0;
LABEL_49:
    a8 = v44;
    goto LABEL_50;
  }

  if (v30 != v26 && !cstdlib_strstr(&__s[v30], *(v35[41] + 32)))
  {
    a8 = v44;
    if (*(v35 + 137) == 1)
    {
      log_OutText(*(*v35 + 32), v35[23], 5, 0, "search word %s, domain=%s - blocked on domain", v40, v41, v42, *v35[41]);
    }

    goto LABEL_22;
  }

  if (v43 != 1)
  {
    result = 0;
    goto LABEL_54;
  }

  if (v29 == v25)
  {
    log_OutPublic(*(*v35 + 32), v35[23], 24004, "%s%s%s%s", v39, v40, v41, v42, "argStr");
    goto LABEL_48;
  }

  __s[v25 - v29] = 0;
  result = add2StringV2(v35, (v35 + 70), __s);
  if ((result & 0x80000000) == 0)
  {
LABEL_54:
    v31 = 1;
    goto LABEL_49;
  }

  return result;
}

uint64_t doDictionaryLookup(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, int *a7, uint64_t a8, int a9)
{
  v26 = 0;
  v25 = 0;
  v24 = 0;
  *a7 = 0;
  v17 = (*(*(a1 + 88) + 152))(*(a1 + 96), *(a1 + 104), a2, *(a1 + 592), &v26, &v25, &v24);
  if ((v17 & 0x80000000) == 0)
  {
    if (v25)
    {
      goto LABEL_24;
    }

    if (a9 != 1)
    {
      v20 = cstdlib_strlen(*(a1 + 592));
      v21 = *(a1 + 600);
      if (4 * v20 >= v21)
      {
        v22 = growStrRes(a1, a1 + 592, (4 * v20) | 1u);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        LOWORD(v21) = *(a1 + 600);
      }

      v17 = (*(*(a1 + 88) + 112))(*(a1 + 96), *(a1 + 104), *(*(a1 + 328) + 32), *(a1 + 592), (v21 - 1));
      if (cstdlib_strlen(*(a1 + 592)))
      {
        v17 = (*(*(a1 + 88) + 152))(*(a1 + 96), *(a1 + 104), a2, *(a1 + 592), &v26, &v25, &v24, a8);
        if ((v17 & 0x80000000) == 0)
        {
          if (v25)
          {
LABEL_24:
            if (!*a7)
            {
              v18 = 0;
              do
              {
                v17 = compareToken(a1, *(v26 + 8 * v18), v24, a3, a4, a5, a6, a7);
                if ((v17 & 0x80000000) != 0)
                {
                  break;
                }

                ++v18;
              }

              while (!*a7 && v18 < v25);
            }
          }
        }
      }
    }
  }

  return v17;
}

uint64_t doDictionaryLookupLoop(uint64_t a1, int *a2, _DWORD *a3, int a4)
{
  *a2 = 0;
  result = doDictionaryLookup(a1, "tnlab", 1u, 0, 0, 2u, a2, 1, a4);
  if ((result & 0x80000000) == 0 && *a2 != 1)
  {
    cstdlib_strcpy(*(a1 + 592), *(a1 + 576));
    result = doDictionaryLookup(a1, "tn", 2u, 1, 1u, 3u, a2, *(a1 + 609), a4);
    if ((result & 0x80000000) == 0)
    {
      if (*a2 == 1)
      {
        *a3 = 1;
      }

      else
      {
        cstdlib_strcpy(*(a1 + 592), *(a1 + 576));
        return doDictionaryLookup(a1, "g2p", 2u, 0, 0, 3u, a2, *(a1 + 608), a4);
      }
    }
  }

  return result;
}

uint64_t tokenizer_CheckToken(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v33 = 0;
  v31 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_ISTOKEN( %d, %s) = ", a6, a7, a8, *(*(a1 + 328) + 40));
  }

  v32 = 0;
  *a2 = 0;
  if (!validateMatchAndGetKey(a1, &v32, a3, a4, a5, a6, a7, a8))
  {
    goto LABEL_16;
  }

  if (v32 == -1 && HIWORD(v32) == 0xFFFF)
  {
    if (*(a1 + 548) == 1)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH", v11, v12, v13, v29);
    }

    goto LABEL_19;
  }

  if ((resetStrRes(a1, a1 + 576) & 0x80000000) != 0 || (resetStrRes(a1, a1 + 592) & 0x80000000) != 0)
  {
    return TOKENTNERROR(8);
  }

  v15 = add2StringV4(a1, a1 + 592, v32, SHIWORD(v32));
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = add2StringV4(a1, a1 + 576, v32, SHIWORD(v32));
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "search word %s, domain=%s", v16, v17, v18, *(a1 + 592));
  }

  *(a1 + 570) = 0;
  **(a1 + 560) = 0;
  v15 = doDictionaryLookupLoop(a1, &v33, &v31, v8);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  if (v33 == 1)
  {
    if (v31 != 1)
    {
      goto LABEL_19;
    }

    v30 = 0;
    v15 = addExpandedOrthography2Match(a1, &v30);
    if ((v15 & 0x80000000) == 0)
    {
      if (v30 != 1)
      {
        if (*(a1 + 548) == 1)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "ERROR : problem adding expanded orthography for word %s", v26, v27, v28, *(a1 + 592));
        }

        goto LABEL_16;
      }

LABEL_19:
      v19 = *(*(a1 + 328) + 8);
      v20 = "TRUE";
      goto LABEL_20;
    }

    return v15;
  }

LABEL_16:
  v19 = *(*(a1 + 328) + 8);
  v20 = "FALSE";
LABEL_20:
  v24 = add2StringV2(a1, v19, v20);
  if ((v24 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v21, v22, v23, **(*(a1 + 328) + 8));
  }

  return v24;
}

uint64_t tokenizer_CheckEqualTo(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_EQUALTO( %d, %s) = ", a6, a7, a8, *(*(a1 + 328) + 40));
  }

  v24 = 0;
  *a2 = 0;
  if (validateMatchAndGetKey(a1, &v24, a3, a4, a5, a6, a7, a8))
  {
    v15 = v24 == -1 && HIWORD(v24) == 0xFFFF;
    if (v15)
    {
      if (*(a1 + 548) == 1)
      {
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH", v12, v13, v14, v23);
      }

      v17 = *(*(a1 + 328) + 8);
      v16 = "TRUE";
    }

    else
    {
      if (!getValFromSentence(a1, &v24, &v25, v10, v11, v12, v13, v14))
      {
        *a2 = 0;
      }

      getValFromArgString(a1, &v25 + 1);
      v15 = v25 == HIWORD(v25);
      *a2 = v15;
      if (v15)
      {
        v16 = "TRUE";
      }

      else
      {
        v16 = "FALSE";
      }

      v17 = *(*(a1 + 328) + 8);
    }
  }

  else
  {
    v17 = *(*(a1 + 328) + 8);
    v16 = "FALSE";
  }

  v21 = add2StringV2(a1, v17, v16);
  if ((v21 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v18, v19, v20, **(*(a1 + 328) + 8));
  }

  return v21;
}

uint64_t tokenizer_CheckAND(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_AND( %s) = ", a6, a7, a8, **(a1 + 328));
  }

  *a2 = 0;
  if (parseIntoBinaryArgs(a1, __s1, v17) && !cstdlib_strcmp(__s1, "TRUE"))
  {
    v10 = "TRUE";
    v16 = cstdlib_strcmp(v17, "TRUE");
    *a2 = v16 == 0;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a2 = 0;
  }

  v10 = "FALSE";
LABEL_7:
  v14 = add2StringV2(a1, *(*(a1 + 328) + 8), v10);
  if ((v14 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v11, v12, v13, **(*(a1 + 328) + 8));
  }

  return v14;
}

uint64_t getValFromSentence(uint64_t a1, __int16 *a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v10 = a2[1];
  if (v9 == -1 && v10 == 0xFFFF)
  {
    v19 = *(*a1 + 32);
    v20 = *(a1 + 184);
    v21 = 24005;
    v22 = 0;
  }

  else
  {
    v13 = (v10 - v9);
    cstdlib_strncpy(*(a1 + 552), (*(a1 + 304) + v9), v13);
    *(*(a1 + 552) + v13) = 0;
    v14 = *(a1 + 552);
    if (v10 == v9)
    {
LABEL_12:
      *a3 = cstdlib_atoi(v14);
      return 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = v14[v15];
      if (v16 != 32 && (v16 - 48) >= 0xA)
      {
        break;
      }

      if (v13 == ++v15)
      {
        goto LABEL_12;
      }
    }

    v20 = *(a1 + 184);
    v23 = "string";
    v22 = "%s%s";
    v19 = *(*a1 + 32);
    v21 = 24006;
  }

  log_OutPublic(v19, v20, v21, v22, a5, a6, a7, a8, v23);
  return 0;
}

uint64_t getValFromArgString(uint64_t a1, _WORD *a2)
{
  v8 = cstdlib_strlen(**(a1 + 328));
  v9 = **(a1 + 328);
  if (v8)
  {
    v10 = 0;
    while (1)
    {
      v11 = v9[v10];
      if (v11 != 32 && (v11 - 48) >= 0xA)
      {
        break;
      }

      if (++v10 >= v8)
      {
        goto LABEL_8;
      }
    }

    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24006, "%s%s", v4, v5, v6, v7, "string");
    return 0;
  }

  else
  {
LABEL_8:
    *a2 = cstdlib_atoi(v9);
    return 1;
  }
}

uint64_t parseIntoBinaryArgs(uint64_t a1, char *a2, char *a3)
{
  v6 = cstdlib_strlen(**(a1 + 328));
  v11 = v6;
  v12 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v13 = **(a1 + 328);
  if (*v13 == 32)
  {
    LOWORD(v14) = 0;
  }

  else
  {
    LOWORD(v14) = 0;
    do
    {
      v14 = v14 + 1;
    }

    while (v14 < v6 && v13[v14] != 32);
  }

  if (v14 != v6)
  {
    cstdlib_strncpy(a2, **(a1 + 328), v14);
    a2[v14] = 0;
    v19 = v14;
    do
    {
      v20 = ++v19;
    }

    while (v19 < v11 && *(**(a1 + 328) + v19) == 32);
    if (v12 != v19)
    {
      v21 = v12 - v19;
      if (v12 > v19)
      {
        v22 = **(a1 + 328);
        if (*(v22 + v19) != 32)
        {
          LOWORD(v23) = v19;
          do
          {
            v23 = v23 + 1;
            v20 = v23;
          }

          while (v23 < v11 && *(v22 + v23) != 32);
        }
      }

      if (v12 == v20)
      {
        cstdlib_strncpy(a3, (**(a1 + 328) + v19), v21);
        a3[v21] = 0;
        return 1;
      }
    }

    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24008, "%s%s", v15, v16, v17, v18, "string");
  }

  else
  {
LABEL_8:
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24007, "%s%s", v7, v8, v9, v10, "string");
  }

  return 0;
}

uint64_t validateMatchAndGetKey(uint64_t *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[41];
  v9 = *(v8 + 40);
  if (*(v8 + 40))
  {
    v10 = *(v8 + 24);
    if (v9 > *(v10 + 82))
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24008, "%s%d", a5, a6, a7, a8, "index");
      return 0;
    }

    v12 = v10 + 42;
    *a2 = *(v12 + 4 * (v9 - 1));
    a2[1] = *(v12 + 4 * v9 - 2);
  }

  else
  {
    *a2 = **(v8 + 16);
  }

  return 1;
}

uint64_t tokenizer_CheckOR(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_OR( %s) = ", a6, a7, a8, **(a1 + 328));
  }

  *a2 = 0;
  if (parseIntoBinaryArgs(a1, __s1, v17))
  {
    if (!cstdlib_strcmp(__s1, "TRUE"))
    {
      *a2 = 1;
      v10 = "TRUE";
      goto LABEL_10;
    }

    v10 = "TRUE";
    v11 = cstdlib_strcmp(v17, "TRUE");
    *a2 = v11 == 0;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *a2 = 0;
  }

  v10 = "FALSE";
LABEL_10:
  v15 = add2StringV2(a1, *(*(a1 + 328) + 8), v10);
  if ((v15 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", v12, v13, v14, **(*(a1 + 328) + 8));
  }

  return v15;
}