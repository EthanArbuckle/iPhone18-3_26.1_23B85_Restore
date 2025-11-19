uint64_t abbrtn_sanitizeTokenDCTAndIntTN(uint64_t a1)
{
  v2 = 0;
  v27 = 0;
  v3 = *(*(a1 + 192) + 32);
  v4 = *(v3 + 24);
  if (v4 >= *(v3 + 32))
  {
LABEL_29:
    v15 = *(*(a1 + 192) + 32);
    v16 = *(v15 + 24);
    if (v16 >= *(v15 + 32))
    {
      v6 = 0;
    }

    else
    {
      v17 = 0;
      v6 = 0;
      v18 = 0;
      do
      {
        v19 = *v16;
        v28 = 0;
        v29 = 0;
        v20 = abbrtn_filterLabelByTokenType(v19, 6, &v28 + 1, &v29 + 1, &v29);
        v2 = v20;
        if ((v20 & 0x80000000) != 0 || !HIDWORD(v28))
        {
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v2 = abbrtn_checkIfBisectedbyTokenType(a1, HIDWORD(v29), v29, 4, &v28);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }

          if (v28 == 1)
          {
            v21 = v18 - v6;
            v22 = ((v18 - v6) >> 3) + 1;
            if (v22 > v17)
            {
              v23 = 2 * v17;
              if (2 * v17 >= v17 + 1000000)
              {
                v23 = v17 + 1000000;
              }

              if (v23 > v22)
              {
                v22 = v23;
              }

              if (v22 <= 8)
              {
                v17 = 8;
              }

              else
              {
                v17 = v22;
              }

              v6 = OOCAllocator_Realloc(a1 + 152, v6, 8 * v17, &v27);
              v12 = v27;
              if (v27)
              {
                goto LABEL_55;
              }

              v18 = (v6 + (v21 & 0x7FFFFFFF8));
            }

            *v18++ = v19;
          }
        }

        ++v16;
      }

      while (v16 < *(*(*(a1 + 192) + 32) + 32));
      if (v6 < v18)
      {
        v24 = v6;
        do
        {
          v25 = LDO_RemoveLabel(*(a1 + 192), *v24);
          v2 = LH_ERROR_to_VERROR(v25);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }

          ++v24;
        }

        while (v24 < v18);
      }
    }

    v12 = v27;
    if (v27)
    {
LABEL_55:
      v2 = LH_ERROR_to_VERROR(v12);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *v4;
      HIDWORD(v29) = 0;
      v2 = abbrtn_checkIfLabelSpanIsStrictlyContainedInOtherLabelSpan(a1, v8, 4, 6, &v29 + 1);
      if ((v2 & 0x80000000) != 0)
      {
        break;
      }

      if (HIDWORD(v29) == 1)
      {
        goto LABEL_11;
      }

      v2 = abbrtn_checkIfLabelSpanIsStrictlyContainedInOtherLabelSpan(a1, v8, 4, 4, &v29 + 1);
      if ((v2 & 0x80000000) != 0)
      {
        break;
      }

      if (HIDWORD(v29) == 1)
      {
        goto LABEL_11;
      }

      v2 = abbrtn_checkIfLabelSpanIsStrictlyContainedInOtherLabelSpan(a1, v8, 6, 4, &v29 + 1);
      if ((v2 & 0x80000000) != 0)
      {
        break;
      }

      if (HIDWORD(v29) == 1)
      {
        goto LABEL_11;
      }

      v2 = abbrtn_checkIfLabelSpanIsStrictlyContainedInOtherLabelSpan(a1, v8, 6, 6, &v29 + 1);
      if ((v2 & 0x80000000) != 0)
      {
        break;
      }

      if (HIDWORD(v29) == 1)
      {
LABEL_11:
        v9 = v7 - v6;
        v10 = ((v7 - v6) >> 3) + 1;
        if (v10 > v5)
        {
          v11 = 2 * v5;
          if (2 * v5 >= v5 + 1000000)
          {
            v11 = v5 + 1000000;
          }

          if (v11 > v10)
          {
            v10 = v11;
          }

          if (v10 <= 8)
          {
            v5 = 8;
          }

          else
          {
            v5 = v10;
          }

          v6 = OOCAllocator_Realloc(a1 + 152, v6, 8 * v5, &v27);
          v12 = v27;
          if (v27)
          {
            goto LABEL_55;
          }

          v7 = (v6 + (v9 & 0x7FFFFFFF8));
        }

        *v7++ = v8;
      }

      if (++v4 >= *(*(*(a1 + 192) + 32) + 32))
      {
        if (v6 >= v7)
        {
LABEL_27:
          if (v6)
          {
            OOCAllocator_Free(a1 + 152, v6);
          }

          goto LABEL_29;
        }

        v13 = v6;
        while (1)
        {
          v14 = LDO_RemoveLabel(*(a1 + 192), *v13);
          v2 = LH_ERROR_to_VERROR(v14);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }

          if (++v13 >= v7)
          {
            goto LABEL_27;
          }
        }
      }
    }
  }

LABEL_56:
  if (v6)
  {
    OOCAllocator_Free(a1 + 152, v6);
  }

  return v2;
}

uint64_t abbrtn_compareUtf8Char(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  utf8_getUTF8Char(a1, 0, __s1);
  utf8_getUTF8Char(a2, 0, __s2);
  result = strcmp(__s1, __s2);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getNextTOKEN_INT_TNPos(uint64_t a1, _WORD *a2, _WORD *a3, uint64_t *a4, unsigned int a5, unsigned int a6, _DWORD *a7)
{
  v25 = 0uLL;
  v26 = 0;
  LDO_GetLabels(*(a1 + 192), &v25);
  v11 = 0;
  __s1 = 0;
  *a7 = 0;
  v12 = v25.n128_u64[1];
  if (v25.n128_u64[1] < v26)
  {
    v24 = 0;
    while (1)
    {
      v22 = 0;
      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v12);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(*v12);
      Category = LDOObject_GetCategory(*v12, &__s1);
      v11 = LH_ERROR_to_VERROR(Category);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      if (!strcmp(__s1, "TOKEN"))
      {
        break;
      }

LABEL_5:
      if (++v12 >= v26)
      {
        return v11;
      }
    }

    if (AbsoluteFrom >= a5)
    {
      if (AbsoluteTo > a6)
      {
        goto LABEL_12;
      }
    }

    else if (AbsoluteTo <= a5 || AbsoluteTo >= a6)
    {
LABEL_12:
      if (AbsoluteFrom <= a5 || AbsoluteFrom >= a6 || AbsoluteTo <= a6)
      {
        goto LABEL_5;
      }
    }

    U32Attribute = LDOObject_GetU32Attribute(*v12, "_TTYPE", &v22 + 1, &v24);
    v11 = LH_ERROR_to_VERROR(U32Attribute);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    if (v24 == 6)
    {
      StringAttribute = LDOObject_GetStringAttribute(*v12, "TNTAG", &v22, a4);
      v11 = LH_ERROR_to_VERROR(StringAttribute);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      if (v22 == 1)
      {
        if (AbsoluteFrom >= a5 || AbsoluteTo <= a5 || (v18 = a5, AbsoluteTo >= a6))
        {
          v18 = AbsoluteFrom;
        }

        *a2 = v18;
        if (AbsoluteFrom <= a5 || AbsoluteFrom >= a6 || AbsoluteTo <= a6)
        {
          LOWORD(a6) = AbsoluteTo;
        }

        *a3 = a6;
        *a7 = 1;
        return v11;
      }
    }

    goto LABEL_5;
  }

  return v11;
}

size_t addToLayer(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char *a5, char *a6, unsigned __int8 *a7)
{
  if (a5)
  {
    v11 = *(a1 + 96) + strlen(*(a1 + 96));
    *v11 = -22590;
    *(v11 + 2) = 0;
    strcat(*(a1 + 96), a5);
    v12 = strlen(a6);
    v13 = Utf8_LengthInUtf8chars(a6, v12);
    v14 = strlen(a5);
    v15 = Utf8_LengthInUtf8chars(a5, v14);
    if (v13 > v15)
    {
      v16 = v13 - v15;
      if (v16 >= 1)
      {
        v17 = 0;
        v18 = *a7;
        do
        {
          if (v18 > 0x13u)
          {
            break;
          }

          *(*(a1 + 96) + strlen(*(a1 + 96))) = 126;
          ++v17;
          v18 = *a7 + 1;
          *a7 = v18;
        }

        while (v16 > v17);
      }
    }

    v19 = *(a1 + 96) + strlen(*(a1 + 96));
    *v19 = -22590;
    *(v19 + 2) = 0;
    v20 = *(a1 + 104) + strlen(*(a1 + 104));
    *v20 = -22590;
    *(v20 + 2) = 0;
    strcat(*(a1 + 104), a6);
    v21 = strlen(a5);
    v22 = Utf8_LengthInUtf8chars(a5, v21);
    v23 = strlen(a6);
    v24 = Utf8_LengthInUtf8chars(a6, v23);
    if (v22 > v24)
    {
      v25 = v22 - v24;
      if (v25 >= 1)
      {
        v26 = 0;
        do
        {
          *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
          ++v26;
        }

        while (v25 > v26);
      }
    }

    v27 = *(a1 + 104);
    result = strlen(v27);
    v29 = &v27[result];
    *v29 = -22590;
    v29[2] = 0;
  }

  else
  {
    result = strncat(*(a1 + 96), (a2 + a3), a4 - a3);
    v33 = 0;
    if (a3)
    {
      v34 = 0;
      do
      {
        result = *(a2 + v34);
        if (!*(a2 + v34))
        {
          break;
        }

        result = utf8_determineUTF8CharLength(result);
        v34 += result;
        ++v33;
      }

      while (a3 > v34);
    }

    v35 = 0;
    if (a4)
    {
      v36 = 0;
      do
      {
        result = *(a2 + v36);
        if (!*(a2 + v36))
        {
          break;
        }

        result = utf8_determineUTF8CharLength(result);
        v36 += result;
        ++v35;
      }

      while (a4 > v36);
    }

    for (; v33 < v35; ++v33)
    {
      result = strlen(*(a1 + 104));
      *(*(a1 + 104) + result) = 32;
    }
  }

  return result;
}

uint64_t abbrtn_checkIfLabelSpanIsStrictlyContainedInOtherLabelSpan(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  *a5 = 0;
  result = abbrtn_filterLabelByTokenType(a2, a3, &v16 + 1, &v16, &v15 + 1);
  if ((result & 0x80000000) == 0)
  {
    if (HIDWORD(v16))
    {
      v9 = *(*(a1 + 192) + 32);
      v10 = *(v9 + 24);
      if (v10 < *(v9 + 32))
      {
        v12 = HIDWORD(v15);
        v11 = v16;
        do
        {
          result = abbrtn_filterLabelByTokenType(*v10, a4, &v16 + 1, &v15, &v14);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (HIDWORD(v16) == 1)
          {
            v13 = v11 < v15 || v12 >= v14;
            if (!v13 || v11 > v15 && v12 <= v14)
            {
              *a5 = 1;
              return result;
            }
          }

          ++v10;
        }

        while (v10 < *(*(*(a1 + 192) + 32) + 32));
      }
    }
  }

  return result;
}

uint64_t abbrtn_filterLabelByTokenType(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v13 = 0;
  *a3 = 0;
  if (!*(a1 + 104))
  {
    return 0;
  }

  U32Attribute = LDOObject_GetU32Attribute(a1, "_TTYPE", &v13 + 1, &v13);
  v11 = LH_ERROR_to_VERROR(U32Attribute);
  if ((v11 & 0x80000000) == 0 && HIDWORD(v13) && v13 == a2)
  {
    *a3 = 1;
    *a4 = LDOLabel_GetAbsoluteFrom(a1);
    *a5 = LDOLabel_GetAbsoluteTo(a1);
  }

  return v11;
}

uint64_t abbrtn_load_lua_code(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = 0;
  if (*a4)
  {
    OOC_PlacementDeleteObject(a3, *a4);
    *a4 = 0;
  }

  IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(a1, a2, 0, &v16);
  v9 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
  v10 = v16;
  if ((v9 & 0x80000000) != 0 || v16 != 1)
  {
LABEL_8:
    if ((v9 & 0x80000000) == 0 && v10)
    {
      return v9;
    }

    goto LABEL_12;
  }

  v16 = 0;
  v11 = PNEW_LuaVMLDO_Con(a3, a3, a1, a2, abbrtn_hlp_lua_log_callback, a4);
  v12 = LH_ERROR_to_VERROR(v11);
  if ((v12 & 0x80000000) == 0)
  {
    ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(*a4, 0);
    v12 = LH_ERROR_to_VERROR(ScriptFromRIFF);
    if ((v12 & 0x80000000) == 0)
    {
      IsLuaFunctionAvailable = LuaVMLDO_IsLuaFunctionAvailable(*a4, "runAbbrtn", &v16);
      v9 = LH_ERROR_to_VERROR(IsLuaFunctionAvailable);
      v10 = v16;
      goto LABEL_8;
    }
  }

  v9 = v12;
LABEL_12:
  if (*a4)
  {
    OOC_PlacementDeleteObject(a3, *a4);
    *a4 = 0;
  }

  return v9;
}

uint64_t abbrtn_dumpNodes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  v33 = 0;
  log_OutText(*(a1 + 32), a2, 4, 0, "abbrtn_dumpNodes : %s : Start", a6, a7, a8, a5);
  v12 = LDO_ComputeText(a3, &v33);
  v13 = LH_ERROR_to_VERROR(v12);
  if ((v13 & 0x80000000) == 0)
  {
    v32 = a4;
    v14 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v33);
    log_OutText(*(a1 + 32), a2, 4, 0, "LDO text |%s|", v15, v16, v17, v14);
    v21 = *(a3 + 16);
    v22 = *(v21 + 80);
    if (v22 >= *(v21 + 88))
    {
LABEL_13:
      log_OutText(*(a1 + 32), a2, 4, 0, "abbrtn_dumpNodes : End", v18, v19, v20, 0);
    }

    else
    {
      v23 = 0;
      while (1)
      {
        v24 = LDOTreeNode_ComputeAbsoluteFrom(*v22, &v35);
        v25 = LH_ERROR_to_VERROR(v24);
        if ((v25 & 0x80000000) != 0)
        {
          break;
        }

        v26 = LDOTreeNode_ComputeAbsoluteTo(*v22, &v34 + 1);
        v25 = LH_ERROR_to_VERROR(v26);
        if ((v25 & 0x80000000) != 0)
        {
          break;
        }

        U32Attribute = LDOObject_GetU32Attribute(*v22, "_TTYPE", &v35 + 1, &v34);
        v13 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_15;
        }

        if (HIDWORD(v35) == 1)
        {
          v28 = v34;
          if ((HIDWORD(v34) - v35) < 0x80)
          {
            __strncpy_chk();
            v36[(HIDWORD(v34) - v35)] = 0;
          }

          else
          {
            strcpy(v36, "(TOKEN TOO LONG)");
          }

          v31 = TOKENTSTR[v28];
          log_OutText(*(a1 + 32), a2, 4, 0, "[%d] %s %d,%d |%s|", v18, v19, v20, v23++);
        }

        if (++v22 >= *(v21 + 88))
        {
          goto LABEL_13;
        }
      }

      v13 = v25;
    }

LABEL_15:
    a4 = v32;
  }

  if (v33)
  {
    OOC_PlacementDeleteObject(a4, v33);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t abbrtn_dumpLabels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x1E69E9840];
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  log_OutText(*(a1 + 32), a2, 4, 0, "abbrtn_dumpLabels : %s : Start", a6, a7, a8, a5);
  v12 = LDO_ComputeText(a3, &v57);
  v13 = LH_ERROR_to_VERROR(v12);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  v53 = a4;
  v52 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v57);
  log_OutText(*(a1 + 32), a2, 4, 0, "LDO text |%s|", v14, v15, v16, v52);
  v20 = *(a3 + 32);
  v21 = *(v20 + 24);
  if (v21 >= *(v20 + 32))
  {
LABEL_35:
    log_OutText(*(a1 + 32), a2, 4, 0, "abbrtn_dumpLabels : End", v17, v18, v19, 0);
    goto LABEL_37;
  }

  v22 = 0;
  v23 = "_TTYPE";
  v54 = a3;
  while (1)
  {
    v24 = *v21;
    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v21);
    AbsoluteTo = LDOLabel_GetAbsoluteTo(v24);
    U32Attribute = LDOObject_GetU32Attribute(v24, v23, &v58, &v58 + 1);
    v28 = LH_ERROR_to_VERROR(U32Attribute);
    if ((v28 & 0x80000000) != 0)
    {
      break;
    }

    if (v58 == 1)
    {
      v32 = v23;
      v33 = HIDWORD(v58);
      v34 = AbsoluteTo - AbsoluteFrom;
      if (AbsoluteTo == AbsoluteFrom)
      {
        strcpy(v59, "NULL");
      }

      else if (v34 < 0x80)
      {
        __strncpy_chk();
        v59[v34] = 0;
      }

      else
      {
        strcpy(v59, "(TOKEN TOO LONG)");
      }

      if (v33 <= 5)
      {
        if (v33 != 4)
        {
          if (v33 == 5)
          {
            StringAttribute = LDOObject_GetStringAttribute(v24, "TNTAG", &v58, &v56);
            v28 = LH_ERROR_to_VERROR(StringAttribute);
            if ((v28 & 0x80000000) != 0)
            {
              break;
            }

            v23 = v32;
            v44 = *(a1 + 32);
            if (v58 == 1)
            {
              log_OutText(v44, a2, 4, 0, "[%d] TOKEN_USER_TN %d,%d |%s| (%s)", v41, v42, v43, v22);
            }

            else
            {
              log_OutText(v44, a2, 4, 0, "[%d] TOKEN_USER_TN %d,%d |%s| (no TNTAG)", v41, v42, v43, v22);
            }

            goto LABEL_30;
          }

          goto LABEL_26;
        }

        log_OutText(*(a1 + 32), a2, 4, 0, "[%d] TOKEN_DCT %d,%d |%s|", v29, v30, v31, v22);
      }

      else
      {
        switch(v33)
        {
          case 8:
            log_OutText(*(a1 + 32), a2, 4, 0, "[%d] TOKEN_DEPES %d,%d |%s|", v29, v30, v31, v22);
            break;
          case 7:
            log_OutText(*(a1 + 32), a2, 4, 0, "[%d] TOKEN_CASEGENDER %d,%d |%s|", v29, v30, v31, v22);
            break;
          case 6:
            v35 = LDOObject_GetStringAttribute(v24, "LANGMAP", &v58, &v55);
            v28 = LH_ERROR_to_VERROR(v35);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            v23 = v32;
            v39 = *(a1 + 32);
            if (v58 == 1)
            {
              log_OutText(v39, a2, 4, 0, "[%d] TOKEN_INT_TN %d,%d |%s| LANGMAP=%s", v36, v37, v38, v22);
            }

            else
            {
              log_OutText(v39, a2, 4, 0, "[%d] TOKEN_INT_TN %d,%d |%s|", v36, v37, v38, v22);
            }

            goto LABEL_30;
          default:
LABEL_26:
            log_OutText(*(a1 + 32), a2, 4, 0, "[%d] TOKEN type=%d %d,%d |%s|", v29, v30, v31, v22);
            break;
        }
      }

      v23 = v32;
LABEL_30:
      a3 = v54;
    }

    v45 = LDOObject_GetU32Attribute(v24, "_MTYPE", &v58, &v58 + 1);
    v13 = LH_ERROR_to_VERROR(v45);
    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v58 == 1)
    {
      v46 = *(a1 + 32);
      marker_getString(SHIDWORD(v58));
      log_OutText(v46, a2, 4, 0, "[%d] MARKER %s %d,%d", v47, v48, v49, v22);
    }

    ++v22;
    if (++v21 >= *(*(a3 + 32) + 32))
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  v13 = v28;
LABEL_37:
  a4 = v53;
LABEL_38:
  if (v57)
  {
    OOC_PlacementDeleteObject(a4, v57);
  }

  v50 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t abbrtn_process_ldo_with_lua(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = 0;
  v10 = LDO_ComputeText(a3, &v34);
  v11 = LH_ERROR_to_VERROR(v10);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v34);
    if (v12)
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "LDO sentence: %s", v13, v14, v15, v12);
      v19 = abbrtn_dumpNodes(a1, a2, a3, a4, "abbrtn: before Lua", v16, v17, v18);
      if ((v19 & 0x80000000) != 0 || (v19 = abbrtn_dumpLabels(a1, a2, a3, a4, "abbrtn: before Lua", v20, v21, v22), (v19 & 0x80000000) != 0))
      {
LABEL_8:
        v11 = v19;
        goto LABEL_9;
      }

      v23 = LuaVMLDO_RunFunction(a5, "runAbbrtn", a3);
      v24 = LH_ERROR_to_VERROR(v23);
      if ((v24 & 0x80000000) == 0)
      {
        v19 = abbrtn_dumpNodes(a1, a2, a3, a4, "abbrtn: after Lua", v26, v27, v28);
        if ((v19 & 0x80000000) == 0)
        {
          v19 = abbrtn_dumpLabels(a1, a2, a3, a4, "abbrtn: after Lua", v29, v30, v31);
        }

        goto LABEL_8;
      }

      v11 = v24;
      log_OutPublic(*(a1 + 32), a2, 32004, 0, v25, v26, v27, v28, v33);
    }
  }

LABEL_9:
  if (v34)
  {
    OOC_PlacementDeleteObject(a4, v34);
  }

  return v11;
}

uint64_t fe_abbrtn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2310021121;
  }

  result = 0;
  *a2 = &IFeAbbrtn;
  return result;
}

uint64_t fe_abbrtn_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2310021127;
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

uint64_t fe_abbrtn_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v36 = 0;
  v37 = 0;
  v5 = 2310021127;
  v34 = 0;
  v35 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v37);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v37[6], "LINGDB", &v36);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v37[6], "FE_DCTLKP", &v35);
  v13 = v37[6];
  if ((Object & 0x80000000) != 0)
  {
    v32 = "LINGDB";
LABEL_13:
    objc_ReleaseObject(v13, v32);
    return Object;
  }

  v14 = objc_GetObject(v13, "FE_DEPES", &v34);
  if ((v14 & 0x80000000) != 0)
  {
    Object = v14;
    objc_ReleaseObject(v37[6], "LINGDB");
    v13 = v37[6];
    v32 = "FE_DCTLKP";
    goto LABEL_13;
  }

  v15 = heap_Alloc(v37[1], 216);
  if (v15)
  {
    v20 = v15;
    *v15 = a1;
    *(v15 + 8) = a2;
    v22 = v36;
    v21 = v37;
    *(v15 + 16) = v37;
    *(v15 + 24) = a3;
    *(v15 + 32) = a4;
    *(v15 + 40) = *(v22 + 8);
    v23 = v34;
    v24 = v35;
    *(v15 + 64) = *(v35 + 8);
    *(v15 + 48) = *(v24 + 16);
    *(v15 + 88) = *(v23 + 8);
    v25 = *(v23 + 16);
    *(v15 + 120) = heap_Alloc;
    *(v15 + 72) = v25;
    *(v15 + 96) = 0;
    *(v15 + 104) = 0;
    *(v15 + 192) = 0;
    *(v15 + 200) = 0;
    *(v15 + 208) = "FE_ABBRTN";
    *(v15 + 128) = heap_Calloc;
    *(v15 + 136) = heap_Realloc;
    *(v15 + 144) = heap_Free;
    v26 = OOCAllocator_Con(v15 + 152, (v15 + 120), v21[1]);
    v27 = LH_ERROR_to_VERROR(v26);
    if ((v27 & 0x80000000) != 0)
    {
      v5 = v27;
      log_OutPublic(v37[4], "FE_ABBRTN", 32003, 0, v28, v29, v30, v31, v34);
LABEL_17:
      fe_abbrtn_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
      return v5;
    }

    *a5 = v20;
    *(a5 + 8) = 62338;
    v5 = fe_abbrtn_ObjReopen(v20, *(a5 + 8));
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    log_OutPublic(v37[4], "FE_ABBRTN", 32000, 0, v16, v17, v18, v19, v34);
    objc_ReleaseObject(v37[6], "LINGDB");
    objc_ReleaseObject(v37[6], "FE_DCTLKP");
    objc_ReleaseObject(v37[6], "FE_DEPES");
    return 2310021130;
  }

  return v5;
}

uint64_t fe_abbrtn_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62338, 216);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (a1)
  {
    luavmldoutil_destroy_lua_vm((a1 + 19), a1 + 25);
    kaldi::nnet1::Component::IsUpdatable((a1 + 19));
    objc_ReleaseObject(*(a1[2] + 48), "LINGDB");
    objc_ReleaseObject(*(a1[2] + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(a1[2] + 48), "FE_DEPES");
    heap_Free(*(a1[2] + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_abbrtn_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62338, 216);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (!a1)
  {
    return result;
  }

  *(a1 + 112) = 1;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "fecfg", "nrpart_tn", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) != 0 || !*&__c[1])
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    v4 = **&__c[3];
    v5 = strchr(**&__c[3], __c[0]);
    if (v5)
    {
      *v5 = 0;
      v4 = **&__c[3];
    }

    *(a1 + 112) = atoi(v4);
  }

  luavmldoutil_destroy_lua_vm(a1 + 152, (a1 + 200));
  return abbrtn_load_lua_code(*(a1 + 24), *(a1 + 32), a1 + 152, (a1 + 200));
}

uint64_t fe_abbrtn_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62338, 216);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2310021128;
  }
}

uint64_t fe_abbrtn_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v46 = 0;
  __s1 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  if ((safeh_HandleCheck(a1, a2, 62338, 216) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  *a5 = 1;
  v9 = LingDBHasSentence(a1[5], a3, a4, &v44);
  v10 = 0;
  if ((v9 & 0x80000000) != 0 || v44 != 1)
  {
LABEL_48:
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  inited = initLDO((a1 + 19), a1 + 24);
  if ((inited & 0x80000000) != 0)
  {
LABEL_45:
    v9 = inited;
    goto LABEL_46;
  }

  v9 = importFromLingDB(a1[2], a1[5], a3, a4, a1 + 24);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_46:
    v10 = 0;
    goto LABEL_52;
  }

  v12 = a1[24];
  if (!v12)
  {
    v10 = 0;
    goto LABEL_48;
  }

  v13 = LDO_ComputeText(v12, &v43);
  inited = LH_ERROR_to_VERROR(v13);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_45;
  }

  v14 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v43);
  v15 = *(a1[24] + 32);
  v16 = *(v15 + 24);
  if (v16 >= *(v15 + 32))
  {
    v10 = 0;
  }

  else
  {
    v41 = v14;
    v17 = 0;
    v10 = 0;
    v18 = 0;
    do
    {
      v19 = *v16;
      if (*(*v16 + 26))
      {
        LODWORD(v42) = 0;
        U32Attribute = LDOObject_GetU32Attribute(v19, "_TTYPE", &v42, &v42 + 1);
        v9 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_52;
        }

        if (v42 == 1 && HIDWORD(v42) == 5)
        {
          v22 = v17;
          v23 = v17 - v10;
          v24 = (v23 >> 3) + 1;
          if (v24 <= v18)
          {
            v27 = v22;
          }

          else
          {
            v25 = 2 * v18;
            if (2 * v18 >= v18 + 1000000)
            {
              v25 = v18 + 1000000;
            }

            if (v25 > v24)
            {
              v24 = v25;
            }

            if (v24 <= 8)
            {
              v18 = 8;
            }

            else
            {
              v18 = v24;
            }

            v26 = OOCAllocator_Realloc((a1 + 19), v10, 8 * v18, &v46);
            v10 = v26;
            if (v46)
            {
              goto LABEL_48;
            }

            v27 = (v26 + (v23 & 0x7FFFFFFF8));
          }

          *v27 = v19;
          v17 = v27 + 1;
        }
      }

      ++v16;
    }

    while (v16 < *(*(a1[24] + 32) + 32));
    if (v10 < v17)
    {
      v28 = v17;
      v29 = v10;
      do
      {
        v30 = *v29;
        if (*(*v29 + 104))
        {
          AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v29);
          AbsoluteTo = LDOLabel_GetAbsoluteTo(v30);
          StringAttribute = LDOObject_GetStringAttribute(v30, "TNTAG", &v42, &__s1);
          v34 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v34 & 0x80000000) != 0)
          {
            goto LABEL_51;
          }

          v35 = __s1;
          if (!strstr(__s1, "spell"))
          {
            if (strcmp(v35, "phon"))
            {
              if (!strstr(v35, "prompt") && !strstr(v35, "raw") && !strstr(v35, "RAW") && !strstr(v35, "internal-nuance-system-norm"))
              {
                v34 = abbrtn_TnLookup(a1, v41, AbsoluteFrom, AbsoluteTo, v35, v30);
                if ((v34 & 0x80000000) != 0)
                {
                  goto LABEL_51;
                }
              }
            }
          }
        }

        ++v29;
      }

      while (v29 < v28);
    }
  }

  v34 = abbrtn_sanitizeTokenDCTAndIntTN(a1);
  if ((v34 & 0x80000000) != 0 || (v40 = a1[25]) != 0 && (v34 = abbrtn_process_ldo_with_lua(a1[2], a1[26], a1[24], (a1 + 19), v40), (v34 & 0x80000000) != 0))
  {
LABEL_51:
    v9 = v34;
    goto LABEL_52;
  }

  v9 = exportToLingDB(a1[2], a1[5], a3, a4, (a1 + 19), a1[24], 1, 0);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  if (v46)
  {
    v34 = LH_ERROR_to_VERROR(v46);
    goto LABEL_51;
  }

LABEL_52:
  v36 = a1[12];
  if (v36)
  {
    heap_Free(*(a1[2] + 8), v36);
    a1[12] = 0;
  }

  v37 = a1[13];
  if (v37)
  {
    heap_Free(*(a1[2] + 8), v37);
    a1[13] = 0;
  }

  if (v43)
  {
    OOC_PlacementDeleteObject((a1 + 19), v43);
    v43 = 0;
  }

  if (v10)
  {
    OOCAllocator_Free((a1 + 19), v10);
  }

  v38 = a1[24];
  if (v38)
  {
    deinitLDO((a1 + 19), v38);
    a1[24] = 0;
  }

  return v9;
}

uint64_t fe_abbrtn_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62338, 216);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2310021128;
  }
}

uint64_t fe_dctlkp_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v49 = 0;
  v50 = 0;
  CanonMap = 2306875402;
  v47 = 0;
  if (!a5)
  {
    return 2306875399;
  }

  memset(__c, 0, sizeof(__c));
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v50);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(v50[4], "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ObjOpen", v8, v9, v10, v45);
  inited = objc_GetObject(v50[6], "LINGDB", &v49);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v11 = heap_Calloc(v50[1], 1, 3696);
  if (v11)
  {
    v16 = v11;
    *a5 = v11;
    *(a5 + 8) = 62335;
    *(v11 + 568) = *(v49 + 8);
    v17 = v50;
    *v11 = v50;
    *(v11 + 1632) = 1;
    *(v11 + 2660) = 1;
    *(v11 + 496) = 0;
    *(v11 + 488) = 0;
    *(v11 + 80) = 0;
    *(v11 + 160) = 0;
    *(v11 + 240) = 0;
    *(v11 + 320) = 0;
    *(v11 + 400) = 0;
    *(v11 + 480) = 0;
    set_DctBrk(v11 + 16, v17[3]);
    set_DctBrk(v16 + 96, v50[3]);
    set_DctBrk(v16 + 176, v50[3]);
    set_DctBrk(v16 + 256, v50[3]);
    set_DctBrk(v16 + 336, v50[3]);
    set_DctBrk(v16 + 416, v50[3]);
    *(v16 + 64) = 0;
    *(v16 + 144) = 0;
    *(v16 + 224) = 0;
    *(v16 + 304) = 0;
    *(v16 + 384) = 0;
    *(v16 + 464) = 0;
    *(v16 + 152) = 0;
    *(v16 + 232) = 0;
    *(v16 + 72) = 0;
    *(v16 + 312) = 0;
    *(v16 + 392) = 0;
    *(v16 + 472) = 0;
    if ((hlp_CreateBrokerString(v50, (v16 + 1634), 0) & 0x80000000) != 0 || (open_DctRom((v16 + 16), v16 + 1634, (v16 + 8)) & 0x80000000) != 0)
    {
      BrokerString = hlp_CreateBrokerString(v50, (v16 + 1634), 1);
      if ((BrokerString & 0x80000000) != 0)
      {
        goto LABEL_48;
      }

      BrokerString = open_DctRom((v16 + 16), v16 + 1634, (v16 + 8));
      if ((BrokerString & 0x80000000) != 0)
      {
        goto LABEL_48;
      }
    }

    if ((hlp_CreateVoiceBrokerString(v50, (v16 + 1890), 1) & 0x80000000) != 0 || (open_DctRom((v16 + 336), v16 + 1890, (v16 + 328)) & 0x80000000) != 0)
    {
      BrokerString = hlp_CreateVoiceBrokerString(v50, (v16 + 1890), 0);
      if ((BrokerString & 0x80000000) != 0)
      {
        goto LABEL_48;
      }

      if ((open_DctRom((v16 + 336), v16 + 1890, (v16 + 328)) & 0x80000000) != 0)
      {
        *(v16 + 328) = 0;
      }
    }

    v19 = 0;
    if ((paramc_ParamGetStr(*(*v16 + 40), "clcpppipelinemode", &v47) & 0x80000000) == 0 && v47)
    {
      v19 = *v47 != 0;
    }

    v20 = open_DctRom((v16 + 96), "sysdct", (v16 + 88));
    CanonMap = v20;
    if (!v19 && (v20 & 0x80000000) != 0)
    {
      *(v16 + 168) = 0;
      log_OutPublic(*(*v16 + 32), "FE_DCTLKP", 41005, "%s", v21, v22, v23, v24, "sysdct.dat not found");
      goto LABEL_50;
    }

    v25 = !v19;
    if (v20 >= 0)
    {
      v25 = 1;
    }

    if ((v25 & 1) == 0)
    {
      *(v16 + 88) = 0;
    }

    v26 = open_DctRom((v16 + 176), "lid", (v16 + 168));
    v31 = v26 >= 0 || v19;
    if ((v31 & 1) == 0)
    {
      CanonMap = v26;
      *(v16 + 168) = 0;
      log_OutPublic(*(*v16 + 32), "FE_DCTLKP", 41007, "%s", v27, v28, v29, v30, "lid.dat not found");
      goto LABEL_50;
    }

    v32 = !v19;
    if (v26 >= 0)
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0)
    {
      *(v16 + 88) = 0;
    }

    if ((open_DctRom((v16 + 416), "clmnn:clmnndic", (v16 + 408)) & 0x80000000) != 0)
    {
      *(v16 + 408) = 0;
    }

    hlp_OpenMl2Dct(v50, v16);
    *&__c[1] = -1;
    BrokerString = loc_fe_dctlkp_LookupUtf(*a5, *(a5 + 8), "fecfg", "punc", &__c[3], &__c[1], __c, 0);
    if ((BrokerString & 0x80000000) == 0)
    {
      if (*&__c[3])
      {
        v33 = **&__c[3];
        v34 = strchr(**&__c[3], __c[0]);
        if (v34)
        {
          *v34 = 0;
          v33 = **&__c[3];
        }

        v35 = strlen(v33);
        v36 = heap_Alloc(v50[1], (v35 + 1));
        *(v16 + 504) = v36;
        if (v36)
        {
          strcpy(v36, **&__c[3]);
          *&__c[1] = -1;
          BrokerString = loc_fe_dctlkp_LookupUtf(*a5, *(a5 + 8), "fecfg", "canonmapdomain", &__c[3], &__c[1], __c, 0);
          if ((BrokerString & 0x80000000) == 0)
          {
            if (*&__c[1])
            {
              *(v16 + 2660) = 0;
            }

            BrokerString = loc_fe_dctlkp_getDomainTokenDefs(*a5, *(a5 + 8), v16);
            if ((BrokerString & 0x80000000) == 0)
            {
              strcpy((v16 + 2402), "normal");
              *(v16 + 584) = 0;
              *(v16 + 2664) = 0;
              CanonMap = LoadCanonMap(*a5, *(a5 + 8));
              if ((CanonMap & 0x80000000) == 0)
              {
LABEL_51:
                log_OutText(v50[4], "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ObjOpen", v41, v42, v43, v46);
                return CanonMap;
              }

LABEL_50:
              fe_dctlkp_ObjClose(*a5, *(a5 + 8));
              *a5 = 0;
              *(a5 + 8) = 0;
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        log_OutPublic(*(*v16 + 32), "FE_DCTLKP", 41000, 0, v37, v38, v39, v40, v46);
      }

      CanonMap = 2306875402;
      goto LABEL_50;
    }

LABEL_48:
    CanonMap = BrokerString;
    goto LABEL_50;
  }

  log_OutPublic(v50[4], "FE_DCTLKP", 41000, 0, v12, v13, v14, v15, v46);
  objc_ReleaseObject(v50[6], "LINGDB");
  return CanonMap;
}

uint64_t hlp_CreateBrokerString(uint64_t a1, char *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = "";
  *v9 = 0;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v9);
  if ((result & 0x80000000) == 0)
  {
    v10 = 0x2F746364737973;
    __strcat_chk();
    if (a3)
    {
LABEL_5:
      result = brokeraux_ComposeBrokerString(a1, &v10, 1, 1, *v9, 0, 0, a2, 0x100uLL);
      goto LABEL_6;
    }

    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v8);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      goto LABEL_5;
    }
  }

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hlp_CreateVoiceBrokerString(uint64_t a1, char *a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v11);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "voice", &v10);
    if ((result & 0x80000000) == 0)
    {
      if (a3)
      {
        if ((paramc_ParamGetStr(*(a1 + 40), "voicemodel", &v9) & 0x80000000) != 0)
        {
          v7 = 0;
          v9 = 0;
        }

        else
        {
          v7 = v9;
        }
      }

      else
      {
        v7 = 0;
      }

      strcpy(v12, "voicedct");
      result = brokeraux_ComposeBrokerString(a1, v12, 1, 1, v11, v10, v7, a2, 0x100uLL);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hlp_OpenMl2Dct(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  *v6 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v6);
  if ((result & 0x80000000) == 0)
  {
    strcpy(v7, "ml2dct");
    __strcat_chk();
    result = brokeraux_ComposeBrokerString(a1, v7, 1, 0, *v6, 0, 0, (a2 + 2146), 0x100uLL);
    if ((result & 0x80000000) == 0)
    {
      result = open_DctRom((a2 + 256), a2 + 2146, (a2 + 248));
      if ((result & 0x80000000) != 0)
      {
        memset(v14, 0, sizeof(v14));
        v13 = 0u;
        v12 = 0u;
        v11 = 0u;
        v10 = 0u;
        v9 = 0u;
        v8 = 0u;
        *v6 = 0;
        result = paramc_ParamGetStr(*(a1 + 40), "langcode", v6);
        if ((result & 0x80000000) == 0)
        {
          strcpy(v7, "ml2dct");
          result = brokeraux_ComposeBrokerString(a1, v7, 1, 0, *v6, 0, 0, (a2 + 2146), 0x100uLL);
          if ((result & 0x80000000) == 0)
          {
            result = open_DctRom((a2 + 256), a2 + 2146, (a2 + 248));
            if ((result & 0x80000000) != 0)
            {
              *(a2 + 248) = 0;
            }
          }
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t loc_fe_dctlkp_getDomainTokenDefs(unsigned int *a1, int a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  *&__c[3] = 0;
  __c[0] = 0;
  *(a3 + 1616) = 0;
  *&__c[1] = -1;
  v6 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", "domdef", &__c[3], &__c[1], __c, 0);
  if ((v6 & 0x80000000) != 0 || *&__c[1] != 1)
  {
    goto LABEL_33;
  }

  v7 = **&__c[3];
  __strcpy_chk();
  v8 = strchr(__s, __c[0]);
  if (v8)
  {
    *v8 = 0;
  }

  if (strlen(**&__c[3]) <= 0xFF)
  {
    if (!__s[0])
    {
      goto LABEL_33;
    }

    v13 = 0;
    while (1)
    {
      for (i = v13; ; i = v15 + 1)
      {
        v15 = i;
        v16 = __s[i];
        if (!v16 || v16 == 44)
        {
          break;
        }
      }

      if (v15 != v13)
      {
        v17 = v15 - v13;
        __strncpy_chk();
        __src[v17] = 0;
        if (*(a3 + 1616))
        {
          v18 = heap_Realloc(*(*a3 + 8), *(a3 + 1624), 32 * *(a3 + 1616) + 32);
          if (!v18)
          {
            goto LABEL_32;
          }

          *(a3 + 1624) = v18;
        }

        else
        {
          v18 = heap_Calloc(*(*a3 + 8), 32, 1);
          *(a3 + 1624) = v18;
          if (!v18)
          {
            goto LABEL_32;
          }
        }

        v19 = (v18 + 32 * *(a3 + 1616));
        *v19 = 0u;
        v19[1] = 0u;
        v20 = strlen(__src);
        v21 = heap_Calloc(*(*a3 + 8), (v20 + 1), 1);
        v22 = *(a3 + 1616);
        *(*(a3 + 1624) + 32 * v22) = v21;
        if (!v21)
        {
          *(a3 + 1616) = v22 + 1;
LABEL_32:
          v6 = 2306875402;
          goto LABEL_33;
        }

        strcpy(v21, __src);
        TokenDef = loc_fe_dctlkp_getTokenDef(a1, a2, a3, __src, "_alpha", (*(a3 + 1624) + 32 * *(a3 + 1616) + 8));
        if ((TokenDef & 0x80000000) != 0 || (TokenDef = loc_fe_dctlkp_getTokenDef(a1, a2, a3, __src, "_digit", (*(a3 + 1624) + 32 * *(a3 + 1616) + 16)), (TokenDef & 0x80000000) != 0))
        {
          v6 = TokenDef;
LABEL_30:
          ++*(a3 + 1616);
          goto LABEL_33;
        }

        v6 = loc_fe_dctlkp_getTokenDef(a1, a2, a3, __src, "_punc", (*(a3 + 1624) + 32 * *(a3 + 1616) + 24));
        if ((v6 & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        v28 = *(a3 + 1616);
        v29 = (*(a3 + 1624) + 32 * v28);
        if (!v29[1] && !v29[2] && !v29[3])
        {
          log_OutPublic(*(*a3 + 32), "FE_DCTLKP", 41004, "%s%s", v24, v25, v26, v27, __src);
          ++*(a3 + 1616);
          goto LABEL_7;
        }

        *(a3 + 1616) = v28 + 1;
        v13 = v15 + 1;
      }

      if (!__s[v13])
      {
        goto LABEL_33;
      }
    }
  }

  log_OutPublic(*(*a3 + 32), "FE_DCTLKP", 41003, 0, v9, v10, v11, v12, v32);
LABEL_7:
  v6 = 2306875392;
LABEL_33:
  v30 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t LoadCanonMap(uint64_t a1, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = 2306875402;
  if (!a1)
  {
    v2 = 2306875400;
    goto LABEL_50;
  }

  memset(__c, 0, sizeof(__c));
  v5 = a1 + 592;
  v6 = (a1 + 2672);
  bzero((a1 + 592), 0x400uLL);
  bzero(v6, 0x400uLL);
  strcpy(v40, "canonmap_");
  __strcat_chk();
  v7 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", v40, &__c[3], &__c[1], __c, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v38 = a2;
  v8 = *&__c[1];
  if (*&__c[1])
  {
    goto LABEL_53;
  }

  strcpy(v40, "canonmap");
  v7 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", v40, &__c[3], &__c[1], __c, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v8 = *&__c[1];
  if (*&__c[1])
  {
LABEL_53:
    if (*(a1 + 584))
    {
      goto LABEL_5;
    }

    v31 = heap_Alloc(*(*a1 + 8), 2048);
    *(a1 + 584) = v31;
    if (!v31)
    {
      goto LABEL_49;
    }

    for (i = 0; i != 2048; i += 8)
    {
      *(*(a1 + 584) + i) = 0;
    }

    v8 = *&__c[1];
    if (*&__c[1])
    {
LABEL_5:
      v9 = 0;
      do
      {
        v10 = *(*&__c[3] + 8 * v9);
        v13 = *v10;
        v12 = (v10 + 2);
        v11 = v13;
        *(v5 + 4 * v13) = 1;
        if (!*(*(a1 + 584) + 8 * v13))
        {
          v14 = strlen(v12);
          *(*(a1 + 584) + 8 * v11) = heap_Alloc(*(*a1 + 8), (v14 + 1));
          v19 = *(*(a1 + 584) + 8 * v11);
          if (!v19)
          {
            goto LABEL_49;
          }

          strcpy(v19, v12);
          v8 = *&__c[1];
        }

        ++v9;
      }

      while (v9 < v8);
    }
  }

  *&__c[1] = 0;
  strcpy(v40, "canonmapg2pdct_");
  __strcat_chk();
  v7 = loc_fe_dctlkp_LookupUtf(a1, v38, "fecfg", v40, &__c[3], &__c[1], __c, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v20 = *&__c[1];
  if (*&__c[1])
  {
    goto LABEL_12;
  }

  strcpy(v40, "canonmapg2pdct");
  v7 = loc_fe_dctlkp_LookupUtf(a1, v38, "fecfg", v40, &__c[3], &__c[1], __c, 0);
  if ((v7 & 0x80000000) != 0)
  {
LABEL_43:
    v2 = v7;
    goto LABEL_50;
  }

  v20 = *&__c[1];
  if (!*&__c[1])
  {
    goto LABEL_18;
  }

LABEL_12:
  if (!*(a1 + 2664))
  {
    v33 = heap_Alloc(*(*a1 + 8), 2048);
    *(a1 + 2664) = v33;
    if (v33)
    {
      for (j = 0; j != 2048; j += 8)
      {
        *(*(a1 + 2664) + j) = 0;
      }

      v20 = *&__c[1];
      if (!*&__c[1])
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

LABEL_49:
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0, v15, v16, v17, v18, v37);
    goto LABEL_50;
  }

LABEL_13:
  v21 = 0;
  do
  {
    v22 = *(*&__c[3] + 8 * v21);
    v25 = *v22;
    v24 = (v22 + 2);
    v23 = v25;
    *(v6 + v25) = 1;
    if (!*(*(a1 + 2664) + 8 * v25))
    {
      v26 = strlen(v24);
      *(*(a1 + 2664) + 8 * v23) = heap_Alloc(*(*a1 + 8), (v26 + 1));
      v27 = *(*(a1 + 2664) + 8 * v23);
      if (!v27)
      {
        goto LABEL_49;
      }

      strcpy(v27, v24);
      v20 = *&__c[1];
    }

    ++v21;
  }

  while (v21 < v20);
LABEL_18:
  *&__c[1] = -1;
  strcpy(v40, "canonmapusage_");
  __strcat_chk();
  v2 = loc_fe_dctlkp_LookupUtf(a1, v38, "fecfg", v40, &__c[3], &__c[1], __c, 0);
  if ((v2 & 0x80000000) == 0)
  {
    v28 = *&__c[1];
    if (!*&__c[1])
    {
      *&__c[1] = -1;
      strcpy(v40, "canonmapusage");
      v2 = loc_fe_dctlkp_LookupUtf(a1, v38, "fecfg", v40, &__c[3], &__c[1], __c, 0);
      if ((v2 & 0x80000000) != 0)
      {
        goto LABEL_50;
      }

      v28 = *&__c[1];
    }

    if (v28 == 1)
    {
      v29 = **&__c[3];
      v30 = strchr(**&__c[3], __c[0]);
      if (v30)
      {
        *v30 = 0;
        v29 = **&__c[3];
      }

      if (!strcmp(v29, "all"))
      {
        *(a1 + 1632) = 0;
      }

      if (!strcmp(v29, "nocaseconv"))
      {
        *(a1 + 1632) = 2;
      }

      if (!strcmp(v29, "g2pdct"))
      {
        *(a1 + 1632) = 1;
      }
    }
  }

LABEL_50:
  v35 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t fe_dctlkp_ObjClose(unsigned __int16 *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62335, 3696);
  if ((result & 0x80000000) != 0)
  {
    return 2306875400;
  }

  if (a1)
  {
    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ObjClose", v4, v5, v6, v20);
    if (a1[244])
    {
      v7 = 0;
      do
      {
        v8 = *(*(a1 + 62) + 8 * v7);
        v9 = *(v8 + 624);
        if (v9)
        {
          v10 = *(v8 + 56);
          if (v10)
          {
            brk_DataUnmap(*(*a1 + 24), v9, v10);
            v9 = *(*(*(a1 + 62) + 8 * v7) + 624);
          }

          brk_DataClose(*(*a1 + 24), v9);
          v8 = *(*(a1 + 62) + 8 * v7);
        }

        heap_Free(*(*a1 + 8), v8);
        ++v7;
      }

      while (v7 < a1[244]);
    }

    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    hlp_LookupFree(a1);
    close_DctRom((a1 + 8));
    close_DctRom((a1 + 48));
    close_DctRom((a1 + 88));
    close_DctRom((a1 + 128));
    close_DctRom((a1 + 168));
    close_DctRom((a1 + 208));
    v11 = *(a1 + 63);
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
    }

    v12 = *(a1 + 62);
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
    }

    hlp_domainToksFree(a1);
    if (*(a1 + 73))
    {
      for (i = 0; i != 2048; i += 8)
      {
        v17 = *(*(a1 + 73) + i);
        if (v17)
        {
          heap_Free(*(*a1 + 8), v17);
        }
      }

      heap_Free(*(*a1 + 8), *(a1 + 73));
    }

    if (*(a1 + 333))
    {
      for (j = 0; j != 2048; j += 8)
      {
        v19 = *(*(a1 + 333) + j);
        if (v19)
        {
          heap_Free(*(*a1 + 8), v19);
        }
      }

      heap_Free(*(*a1 + 8), *(a1 + 333));
    }

    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ObjClose", v13, v14, v15, v21);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_dctlkp_ObjReopen(uint64_t a1, int a2)
{
  CanonMap = 2306875400;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0 || !a1)
  {
    return CanonMap;
  }

  __c_3 = 0;
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ObjReopen", v5, v6, v7, v27);
  hlp_LookupFree(a1);
  close_DctRom(a1 + 16);
  close_DctRom(a1 + 256);
  close_DctRom(a1 + 336);
  v8 = *(a1 + 504);
  if (v8)
  {
    heap_Free(*(*a1 + 8), v8);
  }

  hlp_domainToksFree(a1);
  if (*(a1 + 584))
  {
    for (i = 0; i != 2048; i += 8)
    {
      v10 = *(*(a1 + 584) + i);
      if (v10)
      {
        heap_Free(*(*a1 + 8), v10);
        *(*(a1 + 584) + i) = 0;
      }
    }

    heap_Free(*(*a1 + 8), *(a1 + 584));
    *(a1 + 584) = 0;
  }

  if (*(a1 + 2664))
  {
    for (j = 0; j != 2048; j += 8)
    {
      v12 = *(*(a1 + 2664) + j);
      if (v12)
      {
        heap_Free(*(*a1 + 8), v12);
        *(*(a1 + 2664) + j) = 0;
      }
    }

    heap_Free(*(*a1 + 8), *(a1 + 2664));
    *(a1 + 2664) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 56) = 0;
  *(a1 + 376) = 0;
  *(a1 + 296) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 2660) = 1;
  *(a1 + 1632) = 1;
  if ((hlp_CreateBrokerString(*a1, (a1 + 1634), 0) & 0x80000000) != 0 || (open_DctRom((a1 + 16), a1 + 1634, (a1 + 8)) & 0x80000000) != 0)
  {
    BrokerString = hlp_CreateBrokerString(*a1, (a1 + 1634), 1);
    if ((BrokerString & 0x80000000) != 0)
    {
      return BrokerString;
    }

    BrokerString = open_DctRom((a1 + 16), a1 + 1634, (a1 + 8));
    if ((BrokerString & 0x80000000) != 0)
    {
      return BrokerString;
    }
  }

  if ((hlp_CreateVoiceBrokerString(*a1, (a1 + 1890), 1) & 0x80000000) != 0 || (open_DctRom((a1 + 336), a1 + 1890, (a1 + 328)) & 0x80000000) != 0)
  {
    BrokerString = hlp_CreateVoiceBrokerString(*a1, (a1 + 1890), 0);
    if ((BrokerString & 0x80000000) == 0)
    {
      if ((open_DctRom((a1 + 336), a1 + 1890, (a1 + 328)) & 0x80000000) != 0)
      {
        *(a1 + 328) = 0;
      }

      goto LABEL_26;
    }

    return BrokerString;
  }

LABEL_26:
  BYTE5(v27) = 0;
  hlp_OpenMl2Dct(*a1, a1);
  HIWORD(v27) = -1;
  BrokerString = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", "punc", &__c_3, &v27 + 3, &v27 + 5, 0);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v14 = *__c_3;
  v15 = strchr(*__c_3, BYTE5(v27));
  if (v15)
  {
    *v15 = 0;
    v14 = *__c_3;
  }

  v16 = strlen(v14);
  v17 = heap_Alloc(*(*a1 + 8), (v16 + 1));
  *(a1 + 504) = v17;
  if (!v17)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0, v18, v19, v20, v21, v27);
    return 2306875402;
  }

  strcpy(v17, *__c_3);
  HIWORD(v27) = -1;
  BrokerString = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", "canonmapdomain", &__c_3, &v27 + 3, &v27 + 5, 0);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  if (HIWORD(v27))
  {
    *(a1 + 2660) = 0;
  }

  BrokerString = loc_fe_dctlkp_getDomainTokenDefs(a1, a2, a1);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  strcpy((a1 + 2402), "normal");
  *(a1 + 584) = 0;
  *(a1 + 2664) = 0;
  CanonMap = LoadCanonMap(a1, a2);
  if ((CanonMap & 0x80000000) == 0)
  {
    if (*(a1 + 488))
    {
      v25 = 0;
      while (1)
      {
        CanonMap = hlp_EnableAddon(a1, a2, *(*(a1 + 496) + 8 * v25));
        if ((CanonMap & 0x80000000) != 0)
        {
          break;
        }

        if (++v25 >= *(a1 + 488))
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ObjReopen", v22, v23, v24, v27);
    }
  }

  return CanonMap;
}

void *hlp_LookupFree(void *result)
{
  v1 = result;
  v2 = result[67];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[67] = 0;
  }

  v3 = v1[7];
  if (v3)
  {
    result = heap_Free(*(*v1 + 8), v3);
    v1[7] = 0;
  }

  v4 = v1[66];
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        heap_Free(*(*v1 + 8), v5);
        *(v1[66] + 8 * v6) = 0;
        ++v7;
        v4 = v1[66];
        v6 = v7;
        v5 = v4[v7];
      }

      while (v5);
    }

    else
    {
      v7 = 0;
    }

    result = heap_Free(*(*v1 + 8), v4);
    v1[66] = 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v1[64];
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      v10 = 0;
      v7 = 0;
      do
      {
        heap_Free(*(*v1 + 8), v9);
        *(v1[64] + 8 * v10) = 0;
        ++v7;
        v8 = v1[64];
        v10 = v7;
        v9 = v8[v7];
      }

      while (v9);
    }

    else
    {
      v7 = 0;
    }

    result = heap_Free(*(*v1 + 8), v8);
    v1[64] = 0;
  }

  v11 = v1[65];
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = 0;
      v7 = 0;
      do
      {
        v1[4] = v12;
        exit_DctRom((v1 + 2), *(v1[68] + 8 * v13));
        heap_Free(*(*v1 + 8), *(v1[65] + 8 * v13));
        *(v1[65] + 8 * v13) = 0;
        ++v7;
        v11 = v1[65];
        v13 = v7;
        v12 = v11[v7];
      }

      while (v12);
    }

    else
    {
      v7 = 0;
    }

    result = heap_Free(*(*v1 + 8), v11);
    v1[65] = 0;
  }

  v14 = v1[68];
  if (v14)
  {
    if (v7)
    {
      v15 = 0;
      v16 = 8 * v7;
      do
      {
        v17 = *(v1[68] + v15);
        if (v17)
        {
          brk_DataClose(*(*v1 + 24), v17);
          *(v1[68] + v15) = 0;
        }

        v15 += 8;
      }

      while (v16 != v15);
      v14 = v1[68];
    }

    result = heap_Free(*(*v1 + 8), v14);
    v1[68] = 0;
  }

  v18 = v1[69];
  if (v18)
  {
    v19 = v1[70];
    if (v19)
    {
      brk_DataUnmap(*(*v1 + 24), v18, v19);
      v1[70] = 0;
      v18 = v1[69];
    }

    result = brk_DataClose(*(*v1 + 24), v18);
    v1[69] = 0;
  }

  v1[72] = 0;
  return result;
}

void *hlp_domainToksFree(void *result)
{
  if (*(result + 808))
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = result[203];
    do
    {
      if (*(v4 + v2))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2));
        v4 = v1[203];
        *(v4 + v2) = 0;
      }

      if (*(v4 + v2 + 8))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2 + 8));
        v4 = v1[203];
        *(v4 + v2 + 8) = 0;
      }

      if (*(v4 + v2 + 16))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2 + 16));
        v4 = v1[203];
        *(v4 + v2 + 16) = 0;
      }

      if (*(v4 + v2 + 24))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2 + 24));
        v4 = v1[203];
        *(v4 + v2 + 24) = 0;
      }

      ++v3;
      v2 += 32;
    }

    while (v3 < *(v1 + 808));
    result = heap_Free(*(*v1 + 8), v4);
    v1[203] = 0;
    *(v1 + 808) = 0;
  }

  return result;
}

uint64_t hlp_EnableAddon(unsigned int *a1, int a2, uint64_t a3)
{
  v14 = "";
  __s = 0;
  *&__c[1] = -1;
  if (!a1)
  {
    return 2306875400;
  }

  *&__c[3] = 0;
  __c[0] = 0;
  *(a3 + 620) = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &__s);
  if ((Str & 0x80000000) == 0)
  {
    lowercase(__s, __s1);
    lowercase((a3 + 80), __s2);
    if (!strcmp(__s1, __s2))
    {
      Str = paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v14);
      if ((Str & 0x80000000) == 0 && !strcmp(v14, (a3 + 84)))
      {
        Str = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", "addoncomp", &__c[3], &__c[1], __c, 0);
        if (*&__c[1])
        {
          v7 = **&__c[3];
          v8 = strchr(**&__c[3], __c[0]);
          if (v8)
          {
            *v8 = 0;
            v7 = **&__c[3];
          }

          v9 = atoi(v7);
        }

        else
        {
          v9 = 1;
        }

        if (v9 == *(a3 + 105) && *(a3 + 104) == 1)
        {
          *(a3 + 620) = 1;
        }
      }
    }
  }

  return Str;
}

uint64_t fe_dctlkp_CheckVersion(unsigned int *a1, int a2, _DWORD *a3, _DWORD *a4)
{
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  *&__c[1] = 0;
  __c[0] = 0;
  *a4 = 0;
  *a3 = 0;
  v24 = -1;
  v8 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", "versioninfo", &__c[1], &v24, __c, 0);
  if ((v8 & 0x80001FFF) != 0x8000000A && v24)
  {
    __endptr = 0;
    v9 = **&__c[1];
    v10 = strchr(**&__c[1], __c[0]);
    if (v10)
    {
      *v10 = 0;
      v9 = **&__c[1];
    }

    v22 = v9;
    *a4 = 1;
    v15 = strtol(v9, &__endptr, 10);
    v16 = v15 < 1 || __endptr == 0;
    if (v16 || *__endptr != 46 || (v17 = strtol(__endptr + 1, &v22, 10), (v17 & 0x80000000) != 0) || !v22 || *v22 != 46 || (v18 = strtol(v22 + 1, &__endptr, 10), v18 < 0) || !__endptr || *__endptr != 46 && *__endptr)
    {
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41006, 0, v11, v12, v13, v14, v20);
      return 2306875392;
    }

    if (v15 > 7)
    {
      goto LABEL_19;
    }

    if (v15 == 7)
    {
      if (v17 > 4 || v17 == 4 && v18)
      {
LABEL_19:
        log_OutText(*(*a1 + 32), "FE_DCTLKP", 5, 0, "productVersion %d.%d.%d dctVersion %s", v12, v13, v14, 7);
        return v8;
      }
    }

    else if (v15 == 1 && !(v18 | v17))
    {
      *a3 = 0;
      return v8;
    }

    *a3 = 1;
  }

  return v8;
}

uint64_t fe_dctlkp_GetDataBlock(uint64_t a1, int a2, char *a3, void *a4)
{
  v25 = 0;
  v7 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  v12 = *a1;
  if (!a3)
  {
    log_OutPublic(*(v12 + 32), "FE_DCTLKP", 41001, 0, v8, v9, v10, v11, v24);
    return v7;
  }

  v13 = brk_DataOpen(*(v12 + 24));
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = brk_DataMap(*(*a1 + 24), *(a1 + 552), 40, *(a1 + 8), &v25);
  if (v14)
  {
    v15 = v14;
    brk_DataClose(*(*a1 + 24), *(a1 + 552));
    *(a1 + 552) = 0;
    return v15;
  }

  if (LH_stricmp(v25, a3))
  {
    v16 = 0;
    v17 = 0;
    while (v17 < *(a1 + 8))
    {
      v18 = strlen(&v25[v16]);
      v16 = v18 + v17 + ((~v18 - v17) & 3) + 5;
      v17 = v16;
      v19 = v16;
      if (!LH_stricmp(&v25[v16], a3))
      {
        goto LABEL_15;
      }
    }

    v19 = v17;
  }

  else
  {
    v19 = 0;
    v16 = 0;
  }

LABEL_15:
  if (v19 >= *(a1 + 8))
  {
    brk_DataUnmap(*(*a1 + 24), *(a1 + 552), v25);
    return 2306875412;
  }

  v20 = strlen(&v25[v16]);
  v21 = *&v25[v19 + 1 + v20 + ((~v20 - v19) & 3)];
  brk_DataUnmap(*(*a1 + 24), *(a1 + 552), v25);
  v13 = brk_DataMap(*(*a1 + 24), *(a1 + 552), v21, 4, &v25);
  if (v13)
  {
    return v13;
  }

  v23 = *v25;
  brk_DataUnmap(*(*a1 + 24), *(a1 + 552), v25);
  v7 = brk_DataMap(*(*a1 + 24), *(a1 + 552), (v21 + 4), v23, a4);
  if ((v7 & 0x80000000) == 0)
  {
    *(a1 + 560) = *a4;
  }

  return v7;
}

uint64_t fe_dctlkp_QueryDictExists(_DWORD *a1, int a2, char *a3, _DWORD *a4)
{
  optional_brk_resource = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  v12 = *(*a1 + 32);
  if (!a3)
  {
    log_OutPublic(v12, "FE_DCTLKP", 41001, 0, v8, v9, v10, v11, v16);
    return optional_brk_resource;
  }

  log_OutText(v12, "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_QueryDictExists : %s?", v9, v10, v11, a3);
  *a4 = 0;
  if ((hlp_SearchDctName(a1, a3, "") & 0x80000000) == 0)
  {
    optional_brk_resource = 0;
    *a4 = 1;
    return optional_brk_resource;
  }

  v14 = *(*a1 + 24);
  optional_brk_resource = loc_fe_dctlkp_query_optional_brk_resource(v14, "sysdct", a1 + 22, a3, a4);
  if ((optional_brk_resource & 0x80000000) == 0 && !*a4)
  {
    if (!a1[2])
    {
      goto LABEL_14;
    }

    v15 = brk_DataOpen(v14);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    optional_brk_resource = query_DctRom((a1 + 4), a3, a1[2], 0, a4);
    if ((optional_brk_resource & 0x80000000) == 0)
    {
      brk_DataClose(v14, 0);
      if (!*a4)
      {
LABEL_14:
        optional_brk_resource = loc_fe_dctlkp_query_optional_brk_resource(v14, "lid", a1 + 42, a3, a4);
        if ((optional_brk_resource & 0x80000000) == 0 && !*a4)
        {
          optional_brk_resource = loc_fe_dctlkp_query_optional_brk_resource(v14, a1 + 2146, a1 + 62, a3, a4);
          if ((optional_brk_resource & 0x80000000) == 0 && !*a4)
          {
            optional_brk_resource = loc_fe_dctlkp_query_optional_brk_resource(v14, a1 + 1890, a1 + 82, a3, a4);
            if ((optional_brk_resource & 0x80000000) == 0 && !*a4)
            {
              return loc_fe_dctlkp_query_optional_brk_resource(v14, "clmnn:clmnndic", a1 + 102, a3, a4);
            }
          }
        }
      }
    }
  }

  return optional_brk_resource;
}

uint64_t loc_fe_dctlkp_query_optional_brk_resource(uint64_t a1, uint64_t a2, _DWORD *a3, char *a4, _DWORD *a5)
{
  v11 = 0;
  *a5 = 0;
  if (!*a3 || (brk_DataOpenEx(a1, a2, 1, &v11) & 0x80000000) != 0)
  {
    return 0;
  }

  DctRom = query_DctRom((a3 + 2), a4, *a3, v11, a5);
  if ((DctRom & 0x80000000) == 0)
  {
    brk_DataClose(a1, v11);
  }

  return DctRom;
}

uint64_t fe_dctlkp_QueryLidDictExists(unsigned int *a1, int a2, char *a3, int a4, _DWORD *a5)
{
  DctRom = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  v22 = 0;
  *a5 = 0;
  v14 = *(*a1 + 32);
  if (a3)
  {
    log_OutText(v14, "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_QueryLidDictExists : %s?", v11, v12, v13, a3);
    v15 = *(*a1 + 24);
    if (a4)
    {
      if ((brk_DataOpenEx(v15, "lid", 1, &v22) & 0x80000000) != 0)
      {
        return 0;
      }

      v16 = a1[42];
      v17 = v22;
      v18 = (a1 + 44);
    }

    else
    {
      v19 = brk_DataOpen(v15);
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v16 = a1[2];
      v17 = v22;
      v18 = (a1 + 4);
    }

    DctRom = query_DctRom(v18, a3, v16, v17, a5);
    if ((DctRom & 0x80000000) == 0)
    {
      brk_DataClose(*(*a1 + 24), v22);
    }
  }

  else
  {
    log_OutPublic(v14, "FE_DCTLKP", 41001, 0, v10, v11, v12, v13, v21);
  }

  return DctRom;
}

uint64_t fe_dctlkp_LangAndDomCheck(uint64_t result, _WORD *a2, __int16 *a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v6 = *a2;
  if (v6 < a6)
  {
    v8 = result;
    v9 = *(a5 + 12);
    v10 = a6;
    v11 = (a5 + 32 * v6);
    do
    {
      if (v11[3] - v9 > a4)
      {
        break;
      }

      v12 = *v11;
      v11 += 8;
      if (v12 == 36)
      {
        v10 = v6;
      }

      *a2 = ++v6;
    }

    while (a6 != v6);
    if (a6 > v10)
    {
      v13 = *(result + 1616);
      if (*(result + 1616))
      {
        v14 = 0;
        v15 = 0;
        v16 = *(a5 + 32 * v10 + 24);
        do
        {
          if (v16)
          {
            result = strcmp(v16, *(*(v8 + 1624) + v14));
            if (result)
            {
              v17 = 999;
            }

            else
            {
              v17 = v15;
            }
          }

          else
          {
            v17 = 999;
          }

          if (++v15 >= v13)
          {
            break;
          }

          v14 += 32;
        }

        while (v17 == 999);
      }

      else
      {
        v17 = 999;
      }

      *a3 = v17;
    }
  }

  return result;
}

uint64_t fe_dctlkp_Tokenize(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v73 = 0;
  v72 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  __s = 0;
  v66 = 999;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_Tokenize", v11, v12, v13, v61);
  v14 = (*(a1[71] + 104))(a3, a4, 1, 0, &v73 + 2);
  if ((v14 & 0x80000000) != 0)
  {
LABEL_62:
    v18 = v14;
    goto LABEL_65;
  }

  v18 = (*(a1[71] + 176))(a3, a4, HIWORD(v73), 0, &__s, &v68 + 2);
  if ((v18 & 0x80000000) == 0)
  {
    LOWORD(v73) = 0;
    v71 = 0;
    v19 = __s;
    if (strlen(__s))
    {
      v20 = 0;
      v21 = 0;
      v63 = a6;
      v64 = a4;
      v65 = a6;
      do
      {
        v72 = v21;
        v22 = strlen(v19);
        if (a6)
        {
          v23 = v63;
          v24 = a5;
          while (1)
          {
            if (*v24 <= 0x39u && ((1 << *v24) & 0x3C8010124021140) != 0)
            {
              v26 = v24[3];
              v27 = *(a5 + 12);
              if (v26 > v27 + v20)
              {
                break;
              }
            }

            v24 += 8;
            if (!--v23)
            {
              goto LABEL_16;
            }
          }

          v22 = v26 - v27;
        }

LABEL_16:
        fe_dctlkp_LangAndDomCheck(a1, &v71, &v66, v21, a5, a6);
        v28 = &v19[v21];
        v29 = v66;
        if (IsAlphaUtf(a1, v28, v66))
        {
          v30 = utf8_determineUTF8CharLength(__s[v73]);
          v31 = 0;
          v69 = 0;
          v32 = v73;
          v33 = __s;
          do
          {
            LOWORD(v73) = v32 + v30;
            v30 = utf8_determineUTF8CharLength(v33[(v32 + v30)]);
            if (!IsAlphaUtf(a1, &__s[v73], v29) || v31 > 0x7E)
            {
              break;
            }

            ++v31;
            v32 = v73;
            v33 = __s;
          }

          while (v73 < strlen(__s) && v22 > v73);
        }

        else if (IsDigitUtf(a1, &__s[v73], v29))
        {
          v35 = utf8_determineUTF8CharLength(__s[v73]);
          v36 = 0;
          v69 = 1;
          v37 = v73;
          v38 = __s;
          do
          {
            LOWORD(v73) = v37 + v35;
            v35 = utf8_determineUTF8CharLength(v38[(v37 + v35)]);
            if (!IsDigitUtf(a1, &__s[v73], v29) || v36 > 0x7E)
            {
              break;
            }

            ++v36;
            v37 = v73;
            v38 = __s;
          }

          while (v73 < strlen(__s) && v22 > v73);
        }

        else
        {
          if (IsPuncUtf(a1, &__s[v73], v29))
          {
            v69 = 2;
            v40 = v73 + 1;
LABEL_36:
            LOWORD(v73) = v40;
            goto LABEL_37;
          }

          v49 = __s;
          v50 = v73;
          v51 = __s[v73];
          v52 = v51 > 0x20 || ((1 << v51) & 0x100002600) == 0;
          if (v52 && v51 != 95)
          {
            v56 = utf8_determineUTF8CharLength(v51);
            log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Warning - character %c marked as alpha by default. Assign to domain definitions.", v57, v58, v59, __s[v73]);
            v69 = 0;
            v40 = v73 + v56;
            goto LABEL_36;
          }

          v69 = 3;
          v53 = v72;
          do
          {
            LOWORD(v73) = ++v50;
            fe_dctlkp_LangAndDomCheck(a1, &v71, &v66, v53, a5, v65);
            v54 = v49[v50];
            v55 = v54 > 0x20 || ((1 << v54) & 0x100002600) == 0;
          }

          while ((!v55 || v54 == 95) && strlen(v49) > v50);
        }

LABEL_37:
        v41 = a1[71];
        if (v72)
        {
          v42 = v64;
          v43 = a3;
          v14 = (*(v41 + 80))(a3, v64, v70, &v70);
          if ((v14 & 0x80000000) != 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v42 = v64;
          v43 = a3;
          v14 = (*(v41 + 72))(a3, v64, 3, HIWORD(v73), &v70);
          if ((v14 & 0x80000000) != 0)
          {
            goto LABEL_62;
          }
        }

        v44 = (*(a1[71] + 160))(v43, v42, v70, 0, 1, &v69, &v68);
        if ((v44 & 0x80000000) != 0 || (v44 = (*(a1[71] + 160))(v43, v42, v70, 1, 1, &v72, &v68), (v44 & 0x80000000) != 0))
        {
          v18 = v44;
LABEL_64:
          log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41002, 0, v45, v46, v47, v48, v62);
          break;
        }

        v18 = (*(a1[71] + 160))(v43, v42, v70, 2, 1, &v73, &v68);
        if ((v18 & 0x80000000) != 0)
        {
          goto LABEL_64;
        }

        v20 = v73;
        v19 = __s;
        v21 = v73;
        a6 = v65;
      }

      while (v73 < strlen(__s));
    }
  }

LABEL_65:
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_Tokenize", v15, v16, v17, v62);
  return v18;
}

BOOL IsAlphaUtf(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 != 999)
  {
    v6 = *(*(a1 + 1624) + 32 * a3 + 8);
    if (v6)
    {
      if (a2)
      {
        return utf8_strchr(v6, a2) != 0;
      }

      return 0;
    }
  }

  result = 0;
  v8 = *a2;
  v9 = v8 > 0x20 || ((1 << v8) & 0x100002600) == 0;
  if (v9 && v8 != 95)
  {
    if (!IsPuncUtf(a1, a2, a3))
    {
      return !IsDigitUtf(a1, a2, a3);
    }

    return 0;
  }

  return result;
}

BOOL IsDigitUtf(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 == 999)
  {
    return *a2 - 48 < 0xA;
  }

  v3 = *(*(a1 + 1624) + 32 * a3 + 16);
  if (!v3)
  {
    return *a2 - 48 < 0xA;
  }

  if (a2)
  {
    return utf8_strchr(v3, a2) != 0;
  }

  return 0;
}

BOOL IsPuncUtf(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 == 999 || (v4 = *(*(a1 + 1624) + 32 * a3 + 24)) == 0)
  {

    return loc_fe_dctlkp_IsPunctUtf(a1, a2);
  }

  else
  {
    return a2 && utf8_strchr(v4, a2) != 0;
  }
}

uint64_t fe_dctlkp_PartLookupUtf(unsigned int *a1, int a2, char *a3, const char *a4, void *a5, __int16 *a6, _BYTE *a7, uint64_t a8)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a8)
  {
LABEL_11:
    v20 = *MEMORY[0x1E69E9840];
    return a8;
  }

  v14 = a8 - 1;
  if (a8 != 1)
  {
    v17 = 0;
    v18 = *a6;
    do
    {
      __strcpy_chk();
      LH_itoa(v17, v21, 0xAu);
      __strcat_chk();
      *a6 = v18;
      a8 = loc_fe_dctlkp_LookupUtf(a1, a2, v22, a4, a5, a6, a7, 0);
      if ((a8 & 0x80000000) != 0)
      {
        break;
      }

      if (*a6)
      {
        break;
      }
    }

    while (v14 != v17++);
    goto LABEL_11;
  }

  v15 = *MEMORY[0x1E69E9840];

  return loc_fe_dctlkp_LookupUtf(a1, a2, a3, a4, a5, a6, a7, 0);
}

uint64_t fe_dctlkp_PartLookupAddonDct(uint64_t a1, int a2, char *a3, const char *a4, void *a5, unsigned __int16 *a6, _BYTE *a7, uint64_t a8, _DWORD *a9)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a8)
  {
LABEL_11:
    v20 = *MEMORY[0x1E69E9840];
    return a8;
  }

  v14 = a8 - 1;
  if (a8 != 1)
  {
    v17 = 0;
    v18 = *a6;
    do
    {
      __strcpy_chk();
      LH_itoa(v17, v22, 0xAu);
      __strcat_chk();
      *a6 = v18;
      a8 = fe_dctlkp_LookupAddonDct(a1, a2, v23, a4, a5, a6, a7, a9);
      if ((a8 & 0x80000000) != 0)
      {
        break;
      }

      if (*a6)
      {
        break;
      }
    }

    while (v14 != v17++);
    goto LABEL_11;
  }

  v15 = *MEMORY[0x1E69E9840];

  return fe_dctlkp_LookupAddonDct(a1, a2, a3, a4, a5, a6, a7, a9);
}

uint64_t fe_dctlkp_LookupAddonDct(uint64_t a1, int a2, char *a3, const char *a4, void *a5, unsigned __int16 *a6, _BYTE *a7, _DWORD *a8)
{
  v13 = a1;
  v85 = 0;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  Str = paramc_ParamGetStr(*(*v13 + 40), "addondct_extended_lookup", &v85);
  if ((Str & 0x80000000) == 0 && !strcmp(v85, "yes"))
  {
    log_OutText(*(*v13 + 32), "FE_DCTLKP", 5, 0, "<%s> enables extended lookup (both DDU and system dct)", v15, v16, v17, "addondct_extended_lookup");
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v77 = *a6;
  v20 = v13[244];
  if (!v13[244])
  {
    v24 = 0;
    v53 = 1;
    goto LABEL_52;
  }

  v73 = v18;
  __s1 = a3;
  v76 = Str;
  v84 = a5;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v83 = v13;
  while (1)
  {
    v82 = v21;
    v25 = *(*(v13 + 62) + 8 * v21);
    if (!*(v25 + 620))
    {
      goto LABEL_44;
    }

    if (strstr(__s1, "femwg2p"))
    {
      v26 = 0;
      v27 = "addonmwg2p";
      goto LABEL_20;
    }

    if (strstr(__s1, "femwtn"))
    {
      v26 = 0;
      v27 = "addonmwtn";
      goto LABEL_20;
    }

    if (!strstr(__s1, "g2p"))
    {
      break;
    }

    v28 = *(v25 + 106);
    v27 = (v25 + 106);
    if (v28)
    {
      goto LABEL_19;
    }

LABEL_44:
    v21 = v82 + 1;
    if (v82 + 1 >= v20)
    {
      if (v22)
      {
        v52 = v73 ^ 1;
        if (!a8)
        {
          v52 = 1;
        }

        a5 = v84;
        if (v52)
        {
          if (a8)
          {
            *a8 = 1;
          }

          *a6 = 0;
          v54 = v76;
          goto LABEL_77;
        }

        LOWORD(v20) = v23;
        v53 = 0;
      }

      else
      {
        LOWORD(v20) = v23;
        v53 = 1;
        a5 = v84;
      }

      a3 = __s1;
LABEL_52:
      *a6 = v77;
      v54 = loc_fe_dctlkp_LookupUtf(v13, a2, a3, a4, a5, a6, a7, 0);
      if ((v54 & 0x80000000) != 0)
      {
        v19 = v54;
        v23 = v20;
        goto LABEL_88;
      }

      if (a8)
      {
        if ((v53 & 1) == 0 && !*a6)
        {
          *a8 = 1;
          *a7 = 14;
          v23 = v20;
          goto LABEL_78;
        }

        *a8 = 0;
      }

      v55 = *a6;
      if (*a6)
      {
        v56 = 0;
        v23 = v20;
        do
        {
          v57 = *(*a5 + 8 * v56);
          v58 = *v57;
          if (*v57)
          {
            v59 = v57 + 1;
            do
            {
              if (*a7 == v58)
              {
                *(v59 - 1) = 14;
              }

              v60 = *v59++;
              v58 = v60;
            }

            while (v60);
            v55 = *a6;
          }

          ++v56;
        }

        while (v56 < v55);
      }

      else
      {
        v23 = v20;
      }

LABEL_77:
      *a7 = 14;
      v19 = v54;
      if (!a8)
      {
LABEL_79:
        v61 = v23;
        if (v23)
        {
          v62 = 0;
          v63 = v61;
          v64 = v61;
          v65 = v61;
          while (1)
          {
            v66 = *a6;
            if (v62 + v66 >= 20 * v13[289])
            {
              break;
            }

            if (v24)
            {
              strcpy(*(*(v13 + 66) + 8 * (v62 + v66)), *(v24 + 8 * v62));
            }

            if (v65 == ++v62)
            {
              LOWORD(v62) = v63;
              break;
            }
          }
        }

        else
        {
          v64 = v23;
          LOWORD(v62) = 0;
        }

        *a6 += v62;
        v23 = v64;
LABEL_88:
        v35 = v24;
        if (v24)
        {
          goto LABEL_89;
        }

        return v19;
      }

LABEL_78:
      v19 = v54;
      if (!*a8)
      {
        goto LABEL_88;
      }

      goto LABEL_79;
    }
  }

  if (!*(v25 + 362))
  {
    goto LABEL_44;
  }

  v27 = (v25 + 362);
LABEL_19:
  v26 = atoi(v27 + 6);
LABEL_20:
  if (v26 < v22)
  {
    goto LABEL_44;
  }

  v74 = v26;
  if (!*v27)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v29 = strchr(v27, 124);
    v79 = v29;
    if (v29)
    {
      v78 = *v29;
      *v29 = 0;
    }

    else
    {
      v78 = 0;
    }

    *a6 = v77;
    v76 = loc_fe_dctlkp_LookupUtf(v13, a2, v27, a4, v84, a6, a7, *(*(v13 + 62) + 8 * v82));
    if ((v76 & 0x80000000) != 0)
    {
      v19 = v76;
      goto LABEL_88;
    }

    if (*a6)
    {
      break;
    }

LABEL_38:
    if (v79 && v78)
    {
      *v79 = v78;
    }

    else if (!v79)
    {
      goto LABEL_43;
    }

    v27 = v79 + 1;
    if (!v79[1])
    {
LABEL_43:
      v20 = v13[244];
      goto LABEL_44;
    }
  }

  v30 = heap_Realloc(*(*v13 + 8), v24, 8 * (*a6 + v23));
  if (!v30)
  {
    log_OutPublic(*(*v13 + 32), "FE_DCTLKP", 41000, 0, v31, v32, v33, v34, v71);
    v19 = 2306875402;
    goto LABEL_88;
  }

  v35 = v30;
  bzero((v30 + 8 * v23), 8 * *a6);
  if (!*a6)
  {
LABEL_37:
    v13 = v83;
    v72 = *(*(*(v83 + 62) + 8 * v82) + 632);
    log_OutEvent(*(*v83 + 32), 28, "%s%s", v36, v37, v38, v39, v40, "ADDON_NAME");
    v24 = v35;
    v22 = v74;
    goto LABEL_38;
  }

  v41 = 0;
  while (1)
  {
    v42 = strlen(*(*v84 + 8 * v41));
    v43 = heap_Realloc(*(*v83 + 8), *(v35 + 8 * v23), (v42 + 1));
    if (!v43)
    {
      break;
    }

    *(v35 + 8 * v23) = v43;
    strcpy(v43, *(*v84 + 8 * v41));
    v48 = *(v35 + 8 * v23);
    v49 = *v48;
    if (*v48)
    {
      v50 = v48 + 1;
      do
      {
        if (*a7 == v49)
        {
          *(v50 - 1) = 14;
        }

        v51 = *v50++;
        v49 = v51;
      }

      while (v51);
    }

    ++v23;
    if (++v41 >= *a6)
    {
      goto LABEL_37;
    }
  }

  v13 = v83;
  log_OutPublic(*(*v83 + 32), "FE_DCTLKP", 41000, 0, v44, v45, v46, v47, v71);
  v19 = 2306875402;
LABEL_89:
  if (v23)
  {
    v67 = v23;
    v68 = v35;
    do
    {
      v69 = *v68++;
      heap_Free(*(*v13 + 8), v69);
      --v67;
    }

    while (v67);
  }

  heap_Free(*(*v13 + 8), v35);
  return v19;
}

uint64_t fe_dctlkp_InitStatus(uint64_t a1)
{
  if (!a1)
  {
    return 2306875399;
  }

  result = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t fe_dctlkp_InitEntry(uint64_t a1)
{
  if (!a1)
  {
    return 2306875399;
  }

  result = 0;
  *a1 = -1;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t fe_dctlkp_DoLookupStep(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_DoLookupStep (%d byte(s) of '%s')", v14, v15, v16, a7);
  if (a5)
  {
    *a5 = -1;
    *(a5 + 4) = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    v17 = WordToHashOpt(a3 + 8, a6, 0, a7 - 1, 0, a4);
    *a5 = v17;
    if (v17 == -2)
    {
      v13 = 10;
    }

    else
    {
      v13 = 0;
    }

    v18 = *(a4 + 8);
    *(a5 + 8) = *a4;
    *(a5 + 16) = v18;
  }

  return v13;
}

uint64_t fe_dctlkp_GetEntryContents(uint64_t a1, uint64_t a2, void *a3, int *a4, unsigned __int8 **a5, _WORD *a6, _BYTE *a7, _BYTE *a8)
{
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_GetEntryContents", v16, v17, v18, v21);
  v19 = fe_dctlkp_LookupFromStateAddress(a1, a2, a3, *a4, a5, a6, a8);
  *a7 = GetFieldSeparator((a3 + 1));
  return v19;
}

uint64_t fe_dctlkp_LookupFromStateAddress(uint64_t a1, uint64_t a2, void *a3, int a4, unsigned __int8 **a5, _WORD *a6, _BYTE *a7)
{
  v60[7] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    result = 2306875400;
    goto LABEL_9;
  }

  v60[0] = a3[2];
  v9 = *a5;
  *a7 = 1;
  if (a4 < 0)
  {
    goto LABEL_8;
  }

  v11 = DecoAddr(a3 + 1, a4);
  if (v11 == -2)
  {
    result = 10;
    goto LABEL_9;
  }

  if (v11 < 0 || brk_DataMap(a3[4], a3[5], (*(a3[3] + 132) + v11), *(*a3[3] + 52), v60))
  {
LABEL_8:
    result = 0;
    *a7 = 0;
    goto LABEL_9;
  }

  v14 = 0;
  LOWORD(v15) = 0;
  v16 = 0;
  LOBYTE(v17) = *v60[0];
  do
  {
    v9[v16++] = v17;
    v18 = a3[3];
    v19 = *v18;
    do
    {
      v20 = v15;
      v21 = &v9[v15];
      v22 = *v21;
      v23 = 2 * (v22 - v19[6]);
      v24 = v18[2][v23];
      if (v18[2][v23])
      {
        v25 = v16 - 1;
        do
        {
          if (v20 < (v16 - 1))
          {
            v26 = &v9[v25 + 1];
            v27 = v25;
            v28 = v26;
            do
            {
              v29 = *--v28;
              *v26 = v29;
              --v27;
              v26 = v28;
            }

            while (v27 > v20);
            v18 = a3[3];
            LODWORD(v22) = *v21;
            v19 = *v18;
          }

          ++v16;
          v21[1] = v18[2][2 * (v22 - v19[6]) + 1];
          *v21 = v24;
          v18 = a3[3];
          v19 = *v18;
          ++v25;
          LODWORD(v22) = v24;
          v24 = v18[2][2 * (v24 - (*v18)[6])];
        }

        while (v24);
      }

      v15 = (v20 + 1);
    }

    while (v15 < v16);
    ++v14;
    v30 = v60[0];
    v17 = *(v60[0] + v14);
    v31 = v19[10];
  }

  while (v17 != v19[8] && (v17 < v31 || v17 > v19[11]));
  v32 = *v9;
  if (v32 >= v31)
  {
    while (1)
    {
      v33 = v32;
      v34 = v19[11];
      v30 = v60[0];
      if (v32 > v34)
      {
        break;
      }

      v35 = v19[8];
      v36 = *(v60[0] + v14);
      if (v36 == v35)
      {
        v37 = 1;
      }

      else
      {
        v38 = (v60[0] + v14 + 1);
        while (1)
        {
          v39 = v36 < v31 || v36 > v34;
          v37 = v39;
          if (v37 != 1)
          {
            break;
          }

          LODWORD(v14) = v14 + 1;
          v40 = *v38++;
          LOBYTE(v36) = v40;
          if (v40 == v35)
          {
            goto LABEL_38;
          }
        }

        LOBYTE(v35) = v36;
      }

LABEL_38:
      LODWORD(v14) = v14 + v37;
      v41 = v31;
      v42 = v31 - 1;
      if (v35 <= v34 && v35 >= v41)
      {
        v42 = v35;
      }

      if (v42 >= v32)
      {
        LODWORD(v14) = v14 + 1;
      }

      else
      {
        LOWORD(v44) = 0;
        v45 = 0;
        v46 = v18[2];
        v47 = v19[6];
        v14 = v14;
        do
        {
          v48 = v45++;
          *(&v60[1] + v48 + 7) = *(v30 + v14);
          do
          {
            v44 = v44;
            v49 = *(&v60[1] + v44 + 7);
            if (v46[2 * (v49 - v47)])
            {
              v50 = v45 - 1;
              do
              {
                if (v44 < (v45 - 1))
                {
                  v51 = &v60[2] + v50;
                  v52 = v50;
                  v53 = v51;
                  do
                  {
                    v54 = *--v53;
                    *v51 = v54;
                    --v52;
                    v51 = v53;
                  }

                  while (v52 > v44);
                  v49 = *(&v60[1] + v44 + 7);
                }

                v55 = &v46[2 * (v49 - v47)];
                *(&v60[2] + v44) = v55[1];
                v49 = *v55;
                *(&v60[1] + v44 + 7) = v49;
                ++v45;
                ++v50;
              }

              while (v46[2 * (v49 - v47)]);
            }

            LODWORD(v44) = (v44 + 1);
            LOBYTE(v32) = v32 - 1;
          }

          while (v44 < v45 && v32 >= v42);
          ++v14;
        }

        while (v32 >= v42);
        v56 = v33 - v42;
        if (v16 >= 2)
        {
          v57 = v16 - 1;
          v58 = (v16 + v33 - v42) - 1;
          do
          {
            v9[v58--] = v9[v57--];
          }

          while (v57);
        }

        if ((v56 & 0x80000000) == 0)
        {
          v59 = 0;
          do
          {
            v9[v59] = *(&v60[1] + v59 + 7);
            ++v59;
          }

          while (v56 >= v59);
        }

        LOWORD(v16) = v16 + v56;
        LOBYTE(v32) = v42;
      }

      v18 = a3[3];
      v19 = *v18;
      v31 = (*v18)[10];
      if (v31 > v32)
      {
        v30 = v60[0];
        break;
      }
    }
  }

  brk_DataUnmap(a3[4], a3[5], v30);
  result = 0;
  *a6 = v16;
LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_dctlkp_GetNextEntry(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v10 = 0;
  v13 = 0;
  *__s = 0;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  ++*(a2 + 4);
  __strcat_chk();
  LH_itoa(*(a2 + 4), &v10, 0xAu);
  __strcat_chk();
  v4 = strlen(__s);
  v5 = WordToHashOpt(a1 + 8, __s, 0, v4 - 1, 0, &v8);
  *a2 = v5;
  if (v5 == -2)
  {
    result = 10;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t loc_fe_dctlkp_LookupUtf(unsigned int *a1, int a2, char *a3, const char *a4, void *a5, _WORD *a6, _BYTE *a7, unsigned int *a8)
{
  v114 = *MEMORY[0x1E69E9840];
  v110 = 0;
  v109 = 0;
  *__s2 = 0;
  v8 = 2306875402;
  v113 = 0;
  *__s = 0;
  v9 = 2306875399;
  if (!a3 || !a4 || !a5 || !a6 || !a7)
  {
    goto LABEL_131;
  }

  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    v9 = 2306875400;
    goto LABEL_131;
  }

  v111 = 0;
  v107 = 0;
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 5, 0, "Entering fe_dctlkp_Lookup: searching %s in %s", v17, v18, v19, a4);
  v106 = 0;
  v104 = 0;
  v105 = 0;
  if (!a8)
  {
    v29 = *a6;
    if (v29 == 2)
    {
      if (!a1[82])
      {
        v8 = 2306875399;
        goto LABEL_130;
      }

      v28 = a1 + 82;
    }

    else
    {
      if (v29 == 1)
      {
        v30 = strlen(a3);
        v31 = heap_Alloc(*(*a1 + 8), (v30 + 2));
        if (!v31)
        {
          goto LABEL_27;
        }

        v32 = v31;
        v33 = strcpy(v31, a3);
        *&v32[strlen(v33)] = 67;
        __src = v32;
        if (!strcmp(a3, "lidcfg") || !strncmp(a3, "mertfrq", 7uLL) || !strncmp(a3, "merwfrq", 7uLL))
        {
          v28 = a1 + 42;
          if (a1[42])
          {
            goto LABEL_40;
          }

LABEL_87:
          v28 = 0;
          v65 = 1;
LABEL_88:
          v8 = 2306875399;
          goto LABEL_113;
        }

        v34 = *a3;
        if (v34 == 99)
        {
          if (a3[1] == 108 && a3[2] == 109)
          {
            if (a1[102])
            {
              v28 = a1 + 102;
              goto LABEL_40;
            }

            goto LABEL_87;
          }
        }

        else
        {
          if (v34 != 108)
          {
            if (v34 != 109 || a3[1] != 108 || a3[2] != 50)
            {
              goto LABEL_39;
            }

            goto LABEL_33;
          }

          if (a3[1] == 105 && a3[2] == 100)
          {
LABEL_33:
            v28 = a1 + 62;
            if (a1[62])
            {
              goto LABEL_40;
            }

            goto LABEL_87;
          }
        }

LABEL_39:
        v28 = a1 + 22;
        if (a1[22])
        {
          goto LABEL_40;
        }

        goto LABEL_87;
      }

      v28 = a1 + 2;
    }

    __src = heap_strdup(*(*a1 + 8), a3);
    if (__src)
    {
      goto LABEL_40;
    }

LABEL_27:
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0, v24, v25, v26, v27, v100);
    goto LABEL_130;
  }

  v23 = heap_strdup(*(*a1 + 8), a3);
  if (!v23)
  {
    goto LABEL_27;
  }

  __src = v23;
  LH_itoa(*(a8 + 36), __s, 0xAu);
  v28 = a8;
LABEL_40:
  v35 = *a6;
  if ((v35 - 1) < 2 || v35 == 0xFFFF)
  {
    v102 = strncmp(a3, "ml2mw", 5uLL) == 0;
    *a6 = 0;
  }

  else
  {
    v102 = 1;
  }

  v36 = hlp_SearchDctName(a1, __src, __s);
  if ((v36 & 0x80000000) == 0)
  {
    v37 = 0;
    v38 = 0;
    *(v28 + 3) = *(*(a1 + 65) + 8 * v36);
    goto LABEL_46;
  }

  v59 = heap_Realloc(*(*a1 + 8), *(a1 + 68), 8 * *(a1 + 288) + 16);
  if (!v59)
  {
    goto LABEL_112;
  }

  *(a1 + 68) = v59;
  v64 = *(a1 + 288);
  *(v59 + 8 * v64) = 0;
  *(*(a1 + 68) + 8 * v64 + 8) = 0;
  if (!a8)
  {
    v66 = *(a1 + 68);
    v50 = brk_DataOpen(*(*a1 + 24));
    if ((v50 & 0x80000000) != 0)
    {
      v65 = 0;
      goto LABEL_133;
    }

    v64 = *(a1 + 288);
  }

  v67 = heap_Realloc(*(*a1 + 8), *(a1 + 65), 8 * v64 + 16);
  if (!v67)
  {
    goto LABEL_112;
  }

  *(a1 + 65) = v67;
  v68 = *(a1 + 288);
  *(v67 + 8 * v68) = 0;
  *(*(a1 + 65) + 8 * v68 + 8) = 0;
  v69 = heap_Calloc(*(*a1 + 8), 1, 144);
  if (!v69)
  {
    goto LABEL_112;
  }

  v70 = *(a1 + 288);
  *(*(a1 + 65) + 8 * v70) = v69;
  *(v28 + 3) = *(*(a1 + 65) + 8 * v70);
  inited = init_DctRom((v28 + 2), a3, *v28, *(*(a1 + 68) + 8 * v70));
  v37 = inited;
  if ((inited & 0x80000000) != 0)
  {
    if ((inited & 0x1FFF) == 0x14)
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 65) + 8 * *(a1 + 288)));
      v99 = *(a1 + 288);
      *(*(a1 + 65) + 8 * v99) = 0;
      brk_DataClose(*(*a1 + 24), *(*(a1 + 68) + 8 * v99));
      v65 = 0;
      v8 = 0;
      *(*(a1 + 68) + 8 * *(a1 + 288)) = 0;
      goto LABEL_113;
    }

    v65 = 0;
    goto LABEL_86;
  }

  v72 = heap_Realloc(*(*a1 + 8), *(a1 + 64), 8 * *(a1 + 288) + 16);
  if (!v72)
  {
    goto LABEL_112;
  }

  *(a1 + 64) = v72;
  v73 = *(a1 + 288);
  *(v72 + 8 * v73) = 0;
  *(*(a1 + 64) + 8 * v73 + 8) = 0;
  v74 = strlen(__s);
  v75 = strlen(__src);
  v76 = v74 ? v74 + 1 : 0;
  v77 = heap_Alloc(*(*a1 + 8), (v75 + v76 + 1));
  if (!v77)
  {
    goto LABEL_112;
  }

  v78 = *(a1 + 288);
  *(*(a1 + 64) + 8 * v78) = v77;
  v79 = *(*(a1 + 64) + 8 * v78);
  if (v74)
  {
    memcpy(v79, __s, v74);
    *(*(*(a1 + 64) + 8 * *(a1 + 288)) + v74) = 95;
    v79 = (*(*(a1 + 64) + 8 * *(a1 + 288)) + v74 + 1);
  }

  v37 = v37;
  strcpy(v79, __src);
  MaxOutLen = GetMaxOutLen((v28 + 2));
  if (!MaxOutLen)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0, v81, v82, v83, v84, v100);
    v65 = 0;
    goto LABEL_88;
  }

  v38 = MaxOutLen;
  if (MaxOutLen > *(a1 + 290))
  {
    v85 = heap_Realloc(*(*a1 + 8), *(v28 + 6), MaxOutLen + 1);
    if (v85)
    {
      *(a1 + 7) = v85;
      *(a1 + 17) = v85;
      *(a1 + 27) = v85;
      *(a1 + 37) = v85;
      *(a1 + 47) = v85;
      *(a1 + 57) = v85;
      v86 = *(a1 + 244);
      if (*(a1 + 244))
      {
        v87 = *(a1 + 62);
        do
        {
          v88 = *v87++;
          *(v88 + 48) = v85;
          --v86;
        }

        while (v86);
      }

      goto LABEL_111;
    }

LABEL_112:
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0, v60, v61, v62, v63, v100);
    v65 = 0;
    goto LABEL_113;
  }

LABEL_111:
  ++*(a1 + 288);
LABEL_46:
  *a7 = GetFieldSeparator((v28 + 2));
  v39 = (strlen(a4) + 5);
  if (v39 > *(a1 + 291))
  {
    v40 = heap_Realloc(*(*a1 + 8), *(a1 + 67), v39);
    if (!v40)
    {
      goto LABEL_83;
    }

    *(a1 + 291) = v39;
    *(a1 + 67) = v40;
  }

  *a6 = 0;
  *a5 = *(a1 + 66);
  if (v38 > *(a1 + 290))
  {
    v101 = v38;
    if (*(a1 + 289))
    {
      v45 = 0;
      while (1)
      {
        v46 = v45;
        v47 = heap_Realloc(*(*a1 + 8), *(*(a1 + 66) + 8 * v45), v101 + 1);
        if (!v47)
        {
          break;
        }

        *(*(a1 + 66) + 8 * v46) = v47;
        v45 = v46 + 1;
        if (20 * *(a1 + 289) - 1 <= (v46 + 1))
        {
          goto LABEL_54;
        }
      }

LABEL_83:
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0, v41, v42, v43, v44, v100);
LABEL_84:
      v65 = 1;
      goto LABEL_113;
    }

LABEL_54:
    v37 = v37;
    *(a1 + 290) = v101;
  }

  LOWORD(v48) = *a6;
  if (((*a6 != 0) & ~v102) != 0)
  {
    v65 = 1;
LABEL_86:
    v8 = v37;
    goto LABEL_113;
  }

  while (1)
  {
    HIWORD(v111) = 0;
    if (v48 == 1)
    {
      v104 = v106;
      v105 = v107;
    }

    else
    {
      if (!v48)
      {
        strcpy(*(a1 + 67), a4);
        goto LABEL_62;
      }

      v106 = v104;
      v107 = v105;
    }

    **(a1 + 67) = 23;
    LH_itoa(*a6, __s2, 0xAu);
    strcat(*(a1 + 67), __s2);
LABEL_62:
    v49 = *(a1 + 67);
    LOWORD(v111) = strlen(v49) - 1;
    v50 = DctLookup((v28 + 2), v49, &v111 + 1, &v111, 0, &v110, &v106);
    if (v50)
    {
      break;
    }

    if (*a6 + 2 > 20 * *(a1 + 289))
    {
      v51 = heap_Realloc(*(*a1 + 8), *(a1 + 66), 160 * *(a1 + 289) + 160);
      if (!v51)
      {
        goto LABEL_83;
      }

      *(a1 + 66) = v51;
      v52 = 20 * *(a1 + 289);
      if (*(a1 + 289))
      {
        v53 = v52 - 1;
      }

      else
      {
        v53 = 0;
      }

      v54 = v53;
      v55 = v53;
      bzero((v51 + 8 * v53), 8 * (((v52 + 20) & 0xFFFC) - v53));
      v56 = *(a1 + 289);
      if (v54 < (20 * v56 + 19))
      {
        while (1)
        {
          v57 = heap_Alloc(*(*a1 + 8), *(a1 + 290) + 1);
          if (!v57)
          {
            goto LABEL_83;
          }

          *(*(a1 + 66) + 8 * v55++) = v57;
          v56 = *(a1 + 289);
          if (v55 >= (20 * v56 + 19))
          {
            v55 = v55;
            break;
          }
        }
      }

      *(*(a1 + 66) + 8 * v55) = 0;
      *(a1 + 289) = v56 + 1;
    }

    if (v110 < 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = 0;
      do
      {
        *(*(*(a1 + 66) + 8 * *a6) + v58) = *(*(v28 + 6) + v58);
        ++v58;
      }

      while (v58 < v110);
    }

    *(*(*(a1 + 66) + 8 * *a6) + v58) = 0;
    v48 = (*a6)++ + 1;
    if (((v102 | HIWORD(v48)) & 1) == 0)
    {
      goto LABEL_91;
    }
  }

  if ((v50 & 0x1FFF) == 0xA)
  {
    goto LABEL_84;
  }

  if ((v50 & 0x1FFF) == 0x14)
  {
LABEL_91:
    v8 = 0;
    goto LABEL_84;
  }

  v65 = 1;
LABEL_133:
  v8 = v50;
LABEL_113:
  heap_Free(*(*a1 + 8), __src);
  if ((v8 & 0x80000000) != 0)
  {
    if ((v65 & 1) == 0)
    {
      v89 = *(a1 + 64);
      if (v89)
      {
        v90 = *(v89 + 8 * *(a1 + 288));
        if (v90)
        {
          heap_Free(*(*a1 + 8), v90);
          *(*(a1 + 64) + 8 * *(a1 + 288)) = 0;
        }
      }

      v91 = *(a1 + 65);
      if (v91)
      {
        v92 = *(a1 + 288);
        v93 = *(v91 + 8 * v92);
        if (v93)
        {
          if (v28)
          {
            v94 = *(a1 + 68);
            if (v94)
            {
              if (*(v94 + 8 * v92))
              {
                *(v28 + 3) = v93;
                exit_DctRom((v28 + 2), *(v94 + 8 * v92));
                v93 = *(*(a1 + 65) + 8 * *(a1 + 288));
              }
            }
          }

          heap_Free(*(*a1 + 8), v93);
          *(*(a1 + 65) + 8 * *(a1 + 288)) = 0;
        }
      }

      v95 = *(a1 + 68);
      if (v95)
      {
        v96 = *(v95 + 8 * *(a1 + 288));
        if (v96)
        {
          brk_DataClose(*(*a1 + 24), v96);
          *(*(a1 + 68) + 8 * *(a1 + 288)) = 0;
        }
      }
    }
  }

  else if (*a6)
  {
    *a5 = *(a1 + 66);
  }

LABEL_130:
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_Lookup", v20, v21, v22, v100);
  v9 = v8;
LABEL_131:
  v97 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t fe_dctlkp_ConvertToCanonicalTokenUtf(size_t a1, int a2, const char *a3, const char *a4, unsigned int a5)
{
  v10 = safeh_HandleCheck(a1, a2, 62335, 3696);
  if ((v10 & 0x80000000) != 0)
  {
    return 2306875400;
  }

  CanonMap = v10;
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ConvertToCanonicalToken", v11, v12, v13, v21);
  if (!a4)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0, v15, v16, v17, v18, v22);
    return 2306875399;
  }

  if (*(a1 + 2660) && strcmp(a3, (a1 + 2402)))
  {
    CanonMap = LoadCanonMap(a1, a2);
    if ((CanonMap & 0x80000000) != 0)
    {
      return CanonMap;
    }

    __strcpy_chk();
  }

  if (*(a1 + 1632) != 2)
  {
    if (*(a1 + 1632))
    {
      if (Utf8_Utf8NbrOfSymbols(a4) - 3 <= 0xFFFFFFFD && strlen(a4))
      {
        v19 = 0;
        do
        {
          v19 += hlp_tolower_char(&a4[v19]);
        }

        while (strlen(a4) > v19);
      }
    }

    else
    {
      hlp_ConvertToCanonicalTokenUtf(a1, a2, a1, *(a1 + 584), a4, a5);
      CanonMap = 0;
    }
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ConvertToCanonicalToken", v16, v17, v18, v22);
  return CanonMap;
}

size_t hlp_ConvertToCanonicalTokenUtf(size_t result, int a2, uint64_t a3, uint64_t a4, const char *a5, unsigned int a6)
{
  v20 = result;
  v24 = *MEMORY[0x1E69E9840];
  if (*(a3 + 1632) != 2)
  {
    strcpy(v22, "canonmap");
    if (*(a3 + 2664) == a4)
    {
      __strcat_chk();
      v8 = a3 + 2672;
    }

    else
    {
      v8 = a3 + 592;
    }

    result = Utf8_Utf8NbrOfSymbols(a5);
    if (result - 3 <= 0xFFFFFFFD)
    {
      result = strlen(a5);
      v9 = result;
      if (result)
      {
        v10 = 0;
        v11 = 0;
        v12 = result;
        do
        {
          v13 = &a5[v11];
          v14 = utf8_determineUTF8CharLength(*v13);
          if (hlp_getUtf8CanMap(v20, a2, v22, v8, v13, __s))
          {
            v15 = strlen(__s);
            v16 = v15;
            v17 = v12 - v14 + v15;
            if (a6 > v17)
            {
              memmove(&v13[v15], &v13[v14], v12 - (v10 + v14) + 1);
              strncpy(&a5[v11], __s, v16);
              v9 = v17;
            }
          }

          else
          {
            hlp_tolower_char(&a5[v11]);
          }

          result = utf8_determineUTF8CharLength(*v13);
          v11 += result;
          v10 = v11;
          v12 = v9;
        }

        while (v11 < v9);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *hlp_tolower_char(unsigned __int8 *result)
{
  v1 = result;
  LODWORD(result) = *result;
  if ((result - 65) > 0x19)
  {
    if (result != 195)
    {
      LOWORD(result) = utf8_determineUTF8CharLength(result);
      return result;
    }

    v2 = v1[1];
    LOWORD(result) = 2;
    if (v2 > 0x88)
    {
      if (v1[1] > 0x95u)
      {
        if (v2 == 150)
        {
          v3 = -74;
        }

        else
        {
          if (v2 != 156)
          {
            return result;
          }

          v3 = -68;
        }
      }

      else if (v2 == 137)
      {
        v3 = -87;
      }

      else
      {
        if (v2 != 145)
        {
          return result;
        }

        v3 = -79;
      }
    }

    else if (v1[1] > 0x85u)
    {
      if (v2 == 134)
      {
        v3 = -90;
      }

      else
      {
        if (v2 != 135)
        {
          return result;
        }

        v3 = -89;
      }
    }

    else if (v2 == 132)
    {
      v3 = -92;
    }

    else
    {
      if (v2 != 133)
      {
        return result;
      }

      v3 = -91;
    }

    v1[1] = v3;
    return result;
  }

  *v1 = result | 0x20;
  LOWORD(result) = 1;
  return result;
}

uint64_t fe_dctlkp_G2PConvertToCanonicalTokenUtf(size_t a1, int a2, const char *a3, const char *a4, unsigned int a5)
{
  v10 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_G2PConvertToCanonicalToken", v11, v12, v13, v24);
  if (a4)
  {
    if (*(a1 + 2660) && strcmp(a3, (a1 + 2402)))
    {
      CanonMap = LoadCanonMap(a1, a2);
      if ((CanonMap & 0x80000000) != 0)
      {
        return CanonMap;
      }

      __strcpy_chk();
    }

    v19 = *(a1 + 2664);
    if (!v19)
    {
      v19 = *(a1 + 584);
    }

    hlp_ConvertToCanonicalTokenUtf(a1, a2, a1, v19, a4, a5);
    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_G2PConvertToCanonicalToken", v20, v21, v22, v25);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0, v14, v15, v16, v17, v25);
  }

  return v10;
}

uint64_t fe_dctlkp_ConvertToCanonicalWordUtf(uint64_t a1, int a2, const char *a3, char *a4, unsigned int a5)
{
  v10 = safeh_HandleCheck(a1, a2, 62335, 3696);
  if ((v10 & 0x80000000) != 0)
  {
    return 2306875400;
  }

  CanonMap = v10;
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ConvertToCanonicalWord", v11, v12, v13, v37);
  if (!a4)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0, v15, v16, v17, v18, v38);
    return 2306875399;
  }

  if (*a4)
  {
    if (*(a1 + 2660) && strcmp(a3, (a1 + 2402)))
    {
      CanonMap = LoadCanonMap(a1, a2);
      if ((CanonMap & 0x80000000) != 0)
      {
        return CanonMap;
      }

      __strcpy_chk();
    }

    if (*(a1 + 1632))
    {
      if (strlen(a4))
      {
        v19 = 0;
        do
        {
          v20 = *(a1 + 504);
          if (!v20)
          {
            break;
          }

          v21 = &a4[v19];
          if (!*v21)
          {
            break;
          }

          if (!utf8_strchr(v20, &a4[v19]))
          {
            break;
          }

          v19 += utf8_determineUTF8CharLength(*v21);
        }

        while (strlen(a4) > v19);
      }

      else
      {
        v19 = 0;
      }

      v25 = strlen(a4);
      v26 = (v25 - 1) & ((v25 - 1) >> 31);
      v27 = v25 - 1;
      while (1)
      {
        v28 = v27;
        if (v27 < 1)
        {
          break;
        }

        v29 = a4[v27-- & 0x7FFF];
        if (v29 >= -64)
        {
          LOWORD(v26) = v28;
          do
          {
            v30 = *(a1 + 504);
            if (!v30)
            {
              break;
            }

            v31 = &a4[v26];
            if (!*v31 || !utf8_strchr(v30, v31))
            {
              break;
            }

            v32 = v26 - 1;
            while (1)
            {
              v26 = v32;
              if (v32 < 1)
              {
                break;
              }

              v33 = a4[v32-- & 0x7FFF];
              if (v33 >= -64)
              {
                goto LABEL_32;
              }
            }

            v26 = 0;
LABEL_32:
            ;
          }

          while (v26 > 0);
          break;
        }
      }

      a4[(v26 + utf8_determineUTF8CharLength(a4[v26]))] = 0;
      v34 = v19;
      if (*(a1 + 1632) != 2 && Utf8_Utf8NbrOfSymbols(&a4[v19]) - 3 <= 0xFFFFFFFD && strlen(a4) > v19)
      {
        do
        {
          v19 += hlp_tolower_char(&a4[v19]);
        }

        while (strlen(a4) > v19);
      }

      v35 = strlen(&a4[v34]);
      memmove(a4, &a4[v34], v35 + 1);
    }

    else
    {
      hlp_ConvertToCanonicalWordUtf(a1, a2, a1, *(a1 + 584), a4, a5);
      CanonMap = 0;
    }

    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ConvertToCanonicalWord", v22, v23, v24, v38);
  }

  return CanonMap;
}

void *hlp_ConvertToCanonicalWordUtf(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, char *__s, unsigned int a6)
{
  v37 = *MEMORY[0x1E69E9840];
  strcpy(v35, "canonmap");
  if (*(a3 + 2664) == a4)
  {
    __strcat_chk();
    v8 = a3 + 2672;
  }

  else
  {
    v8 = a3 + 592;
  }

  if (strlen(__s))
  {
    v9 = 0;
    do
    {
      if (!loc_fe_dctlkp_IsPunctUtf(a3, &__s[v9]))
      {
        break;
      }

      v9 += utf8_determineUTF8CharLength(__s[v9]);
    }

    while (strlen(__s) > v9);
    v31 = v9;
  }

  else
  {
    v31 = 0;
  }

  v10 = strlen(__s);
  v11 = v10 - 1;
  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  LOWORD(v13) = v12;
  if (v12 >= 1)
  {
    while (__s[v11] < -64)
    {
      v14 = v11--;
      if (v14 <= 1)
      {
        LOWORD(v13) = 0;
        goto LABEL_25;
      }
    }

    LOWORD(v13) = v11;
    do
    {
      if (!loc_fe_dctlkp_IsPunctUtf(a3, &__s[v13]))
      {
        break;
      }

      v15 = v13 - 1;
      while (1)
      {
        v13 = v15;
        if (v15 < 1)
        {
          break;
        }

        v16 = __s[v15-- & 0x7FFF];
        if (v16 >= -64)
        {
          goto LABEL_24;
        }
      }

      v13 = 0;
LABEL_24:
      ;
    }

    while (v13 > 0);
  }

LABEL_25:
  v17 = utf8_determineUTF8CharLength(__s[v13]) + v13;
  if (v17 >= a6)
  {
    LOWORD(v17) = a6 - 1;
  }

  __s[v17] = 0;
  if (*(a3 + 1632) != 2 && Utf8_Utf8NbrOfSymbols(&__s[v31]) - 3 <= 0xFFFFFFFD)
  {
    v18 = strlen(__s);
    v19 = v18;
    if (v18)
    {
      v20 = 0;
      v21 = 0;
      v22 = v18;
      do
      {
        v23 = &__s[v21];
        v24 = utf8_determineUTF8CharLength(*v23);
        if (hlp_getUtf8CanMap(a1, a2, v35, v8, v23, __sa))
        {
          v25 = strlen(__sa);
          v26 = v25;
          v27 = v22 - v24 + v25;
          if (a6 > v27)
          {
            memmove(&v23[v25], &v23[v24], v22 - (v20 + v24) + 1);
            strncpy(&__s[v21], __sa, v26);
            v19 = v27;
          }
        }

        else
        {
          hlp_tolower_char(&__s[v21]);
        }

        v21 += utf8_determineUTF8CharLength(*v23);
        v20 = v21;
        v22 = v19;
      }

      while (v21 < v19);
    }
  }

  v28 = strlen(&__s[v31]);
  result = memmove(__s, &__s[v31], v28 + 1);
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL loc_fe_dctlkp_IsPunctUtf(_BOOL8 result, unsigned __int8 *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2)
    {
      v3 = *(v2 + 504);
      if (v3)
      {
        return *a2 && utf8_strchr(v3, a2) != 0;
      }
    }
  }

  return result;
}

uint64_t fe_dctlkp_G2PConvertToCanonicalWordUtf(unsigned int *a1, int a2, const char *a3, char *a4, unsigned int a5)
{
  v10 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_G2PConvertToCanonicalWord", v11, v12, v13, v24);
  if (a4)
  {
    if (a1[665] && strcmp(a3, a1 + 2402))
    {
      CanonMap = LoadCanonMap(a1, a2);
      if ((CanonMap & 0x80000000) != 0)
      {
        return CanonMap;
      }

      __strcpy_chk();
    }

    v19 = *(a1 + 333);
    if (!v19)
    {
      v19 = *(a1 + 73);
    }

    hlp_ConvertToCanonicalWordUtf(a1, a2, a1, v19, a4, a5);
    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_G2PConvertToCanonicalWord", v20, v21, v22, v25);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0, v14, v15, v16, v17, v25);
  }

  return v10;
}

uint64_t fe_dctlkp_LookupMultiwordUtf(uint64_t a1, int a2, char *a3, unsigned int a4, char *a5, const char *a6, void *a7, unsigned __int16 *a8)
{
  v35 = 0;
  v16 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_LookupMultiword", v17, v18, v19, v33);
  if (!a3 || !a7 || !a8)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0, v20, v21, v22, v23, v34);
    return v16;
  }

  if (*(a1 + 2660) && strcmp(a6, (a1 + 2402)))
  {
    CanonMap = LoadCanonMap(a1, a2);
    if ((CanonMap & 0x80000000) != 0)
    {
      return CanonMap;
    }

    __strcpy_chk();
  }

  if (strlen(a3))
  {
    v25 = 0;
    do
    {
      if (!loc_fe_dctlkp_IsPunctUtf(a1, &a3[v25]))
      {
        break;
      }

      v25 += utf8_determineUTF8CharLength(a3[v25]);
    }

    while (strlen(a3) > v25);
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + 1632);
  if (*(a1 + 1632))
  {
    goto LABEL_21;
  }

  if (Utf8_Utf8NbrOfSymbols(a3) - 3 > 0xFFFFFFFD)
  {
    v26 = *(a1 + 1632);
LABEL_21:
    if (v26 != 2 && strlen(a3) > v25)
    {
      v27 = v25;
      do
      {
        v27 += hlp_tolower_char(&a3[v27]);
      }

      while (strlen(a3) > v27);
    }

    goto LABEL_25;
  }

  hlp_ConvertToCanonicalWordUtf(a1, a2, a1, *(a1 + 584), a3, a4);
LABEL_25:
  v28 = strlen(&a3[v25]);
  memmove(a3, &a3[v25], v28 + 1);
  *a8 = 0;
  v16 = fe_dctlkp_LookupAddonDct(a1, a2, a5, a3, a7, a8, &v35, 0);
  if ((v16 & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_LookupMultiword", v29, v30, v31, v34);
  }

  return v16;
}

BOOL fe_dctlkp_IsPunctUtf(uint64_t a1, int a2, unsigned __int8 *a3)
{
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 0;
  }

  return loc_fe_dctlkp_IsPunctUtf(a1, a3);
}

unsigned int *fe_GetDct(unsigned int *a1, int a2, char *__s, _WORD *a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = *a4;
  if (v7 == 2)
  {
    v17 = a1 + 82;
    v15 = __s;
LABEL_13:
    *a4 = 0;
    goto LABEL_14;
  }

  if (v7 == 1)
  {
    v8 = *(*a1 + 8);
    v9 = strlen(__s);
    v10 = heap_Alloc(v8, (v9 + 2));
    if (!v10)
    {
LABEL_24:
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0, v11, v12, v13, v14, v39);
      return 0;
    }

    v15 = v10;
    v16 = strcpy(v10, __s);
    *&v15[strlen(v16)] = 67;
    v17 = a1 + 22;
    v7 = *a4;
  }

  else
  {
    v17 = a1 + 2;
    v15 = __s;
  }

  if ((v7 - 1) < 2 || v7 == 0xFFFF)
  {
    goto LABEL_13;
  }

LABEL_14:
  v19 = hlp_SearchDctName(a1, v15, "");
  if ((v19 & 0x80000000) == 0)
  {
    *(v17 + 3) = *(*(a1 + 65) + 8 * v19);
    return v17;
  }

  v20 = heap_Realloc(*(*a1 + 8), *(a1 + 68), 8 * *(a1 + 288) + 16);
  if (!v20)
  {
    goto LABEL_24;
  }

  *(a1 + 68) = v20;
  v21 = *(a1 + 288);
  *(v20 + 8 * v21) = 0;
  *(*(a1 + 68) + 8 * v21 + 8) = 0;
  v22 = *(a1 + 68);
  if ((brk_DataOpen(*(*a1 + 24)) & 0x80000000) != 0)
  {
    return v17;
  }

  v23 = heap_Realloc(*(*a1 + 8), *(a1 + 65), 8 * *(a1 + 288) + 16);
  if (!v23)
  {
    goto LABEL_24;
  }

  *(a1 + 65) = v23;
  v24 = *(a1 + 288);
  *(v23 + 8 * v24) = 0;
  *(*(a1 + 65) + 8 * v24 + 8) = 0;
  v25 = heap_Calloc(*(*a1 + 8), 1, 144);
  if (!v25)
  {
    goto LABEL_24;
  }

  v26 = *(a1 + 288);
  *(*(a1 + 65) + 8 * v26) = v25;
  *(v17 + 3) = *(*(a1 + 65) + 8 * v26);
  inited = init_DctRom((v17 + 2), __s, *v17, *(*(a1 + 68) + 8 * v26));
  if (inited < 0)
  {
    if ((inited & 0x1FFF) == 0x14)
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 65) + 8 * *(a1 + 288)));
      v38 = *(a1 + 288);
      *(*(a1 + 65) + 8 * v38) = 0;
      brk_DataClose(*(*a1 + 24), *(*(a1 + 68) + 8 * v38));
      *(*(a1 + 68) + 8 * *(a1 + 288)) = 0;
    }
  }

  else
  {
    v28 = heap_Realloc(*(*a1 + 8), *(a1 + 64), 8 * *(a1 + 288) + 16);
    if (v28 && (*(a1 + 64) = v28, v33 = *(a1 + 288), *(v28 + 8 * v33) = 0, *(*(a1 + 64) + 8 * v33 + 8) = 0, v34 = strlen(v15), (v35 = heap_Alloc(*(*a1 + 8), (v34 + 1))) != 0))
    {
      v36 = *(a1 + 288);
      *(*(a1 + 64) + 8 * v36) = v35;
      strcpy(*(*(a1 + 64) + 8 * v36), v15);
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0, v29, v30, v31, v32, v39);
    }
  }

  return v17;
}

uint64_t hlp_SearchDctName(uint64_t a1, const char *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = *(a1 + 576);
  if (*(a1 + 576))
  {
    v8 = 0;
    v9 = v6;
    v10 = *(a1 + 512);
    do
    {
      v11 = *(v10 + 8 * v8);
      if (v9)
      {
        if (!strncmp(*(v10 + 8 * v8), __s, v9))
        {
          v12 = v11 + v9;
          if (*v12 == 95)
          {
            v13 = strlen(a2);
            if (!strncmp((v12 + 1), a2, v13))
            {
              return v8;
            }
          }
        }
      }

      else if (!strcmp(*(v10 + 8 * v8), a2))
      {
        return v8;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  LOWORD(v8) = -1;
  return v8;
}

const char *lowercase(const char *__s, uint64_t a2)
{
  if (*__s)
  {
    v3 = __s;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v3[v4];
      if ((v6 - 65) < 0x1A)
      {
        LOBYTE(v6) = v6 | 0x20;
      }

      *(a2 + v4) = v6;
      v4 = ++v5;
      __s = strlen(v3);
    }

    while (__s > v5);
  }

  else
  {
    v4 = 0;
  }

  *(a2 + v4) = 0;
  return __s;
}

uint64_t fe_dctlkp_LoadAddonDct(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *&__c[1] = -1;
  v7 = 2306875402;
  if (!a1)
  {
    return 2306875400;
  }

  *&__c[3] = 0;
  v15 = heap_Realloc(*(*a1 + 8), *(a1 + 496), 8 * *(a1 + 488) + 8);
  if (!v15)
  {
    goto LABEL_6;
  }

  *(a1 + 496) = v15;
  v20 = heap_Alloc(*(*a1 + 8), 640);
  v21 = *(a1 + 488);
  *(*(a1 + 496) + 8 * v21) = v20;
  v22 = *(*(a1 + 496) + 8 * v21);
  if (!v22)
  {
    goto LABEL_6;
  }

  if (a7)
  {
    v23 = strlen(a7);
    v24 = heap_Alloc(*(*a1 + 8), (v23 + 1));
    v25 = *(a1 + 496);
    v26 = *(a1 + 488);
    *(*(v25 + 8 * v26) + 632) = v24;
    v27 = *(*(v25 + 8 * v26) + 632);
    if (!v27)
    {
LABEL_6:
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0, v16, v17, v18, v19, v57);
      return v7;
    }
  }

  else
  {
    v27 = *(v22 + 632);
  }

  strcpy(v27, a7);
  v28 = *(a1 + 496);
  v29 = *(a1 + 488);
  *(*(v28 + 8 * v29) + 624) = a5;
  v30 = *(v28 + 8 * v29);
  *(v30 + 72) = *(a1 + 490);
  *(v30 + 56) = a3;
  v31 = *(v28 + 8 * v29);
  *(v31 + 64) = a4;
  v32 = open_DctRom((v31 + 8), 0, v31);
  if ((v32 & 0x80000000) != 0)
  {
    return v32;
  }

  __c[0] = 0;
  v33 = *(a1 + 496);
  v34 = *(a1 + 488);
  *(*(v33 + 8 * v34) + 48) = *(a1 + 56);
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "lang", &__c[3], &__c[1], __c, *(v33 + 8 * v34));
  if (*&__c[1])
  {
    v35 = strchr(**&__c[3], __c[0]);
    if (v35)
    {
      *v35 = 0;
      v36 = **&__c[3];
    }

    v37 = *(*(a1 + 496) + 8 * *(a1 + 488));
    __strcpy_chk();
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "cfg", &__c[3], &__c[1], __c, *(*(a1 + 496) + 8 * *(a1 + 488)));
  if (*&__c[1])
  {
    v38 = strchr(**&__c[3], __c[0]);
    if (v38)
    {
      *v38 = 0;
      v39 = **&__c[3];
    }

    v40 = *(*(a1 + 496) + 8 * *(a1 + 488));
    __strcpy_chk();
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "codecomp", &__c[3], &__c[1], __c, *(*(a1 + 496) + 8 * *(a1 + 488)));
  if (*&__c[1])
  {
    v41 = **&__c[3];
    v42 = strchr(**&__c[3], __c[0]);
    if (v42)
    {
      *v42 = 0;
      v41 = **&__c[3];
    }

    v43 = atoi(v41);
    v44 = *(*(a1 + 496) + 8 * *(a1 + 488));
    *(v44 + 104) = v43;
  }

  else
  {
    v44 = *(*(a1 + 496) + 8 * *(a1 + 488));
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "datacomp", &__c[3], &__c[1], __c, v44);
  if (*&__c[1])
  {
    v45 = **&__c[3];
    v46 = strchr(**&__c[3], __c[0]);
    if (v46)
    {
      *v46 = 0;
      v45 = **&__c[3];
    }

    v47 = atoi(v45);
    v48 = *(*(a1 + 496) + 8 * *(a1 + 488));
    *(v48 + 105) = v47;
  }

  else
  {
    v48 = *(*(a1 + 496) + 8 * *(a1 + 488));
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "g2pdcts", &__c[3], &__c[1], __c, v48);
  if (*&__c[1])
  {
    v49 = strchr(**&__c[3], __c[0]);
    if (v49)
    {
      *v49 = 0;
      v50 = **&__c[3];
    }

    v51 = *(*(a1 + 496) + 8 * *(a1 + 488));
    __strcpy_chk();
  }

  else
  {
    *(*(*(a1 + 496) + 8 * *(a1 + 488)) + 106) = 0;
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "tndcts", &__c[3], &__c[1], __c, *(*(a1 + 496) + 8 * *(a1 + 488)));
  if (*&__c[1])
  {
    v52 = strchr(**&__c[3], __c[0]);
    if (v52)
    {
      *v52 = 0;
      v53 = **&__c[3];
    }

    v54 = *(*(a1 + 496) + 8 * *(a1 + 488));
    __strcpy_chk();
  }

  else
  {
    *(*(*(a1 + 496) + 8 * *(a1 + 488)) + 362) = 0;
  }

  v7 = hlp_EnableAddon(a1, a2, *(*(a1 + 496) + 8 * *(a1 + 488)));
  v55 = *(a1 + 488);
  *a6 = *(*(a1 + 496) + 8 * v55);
  *(a6 + 8) = 62335;
  *(a1 + 488) = v55 + 1;
  ++*(a1 + 490);
  return v7;
}

uint64_t fe_dctlkp_UnLoadAddonDct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  result = 2306875400;
  if (a1)
  {
    LOWORD(v5) = *(a1 + 488);
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        v8 = *(*(a1 + 496) + 8 * i);
        if (v8 == a3)
        {
          v9 = *(v8 + 632);
          if (v9)
          {
            heap_Free(*(*a1 + 8), v9);
            v10 = *(a1 + 496);
            *(*(v10 + 8 * i) + 632) = 0;
            v8 = *(v10 + 8 * i);
            v31 = 0;
            *__s = 0;
            if (!v8)
            {
              result = 2306875400;
              goto LABEL_38;
            }
          }

          else
          {
            v31 = 0;
            *__s = 0;
          }

          LH_itoa(*(v8 + 72), __s, 0xAu);
          v11 = *(a1 + 576);
          if (v11)
          {
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            do
            {
              v16 = *(a1 + 512);
              v17 = *(v16 + 8 * v12);
              v18 = strlen(__s);
              if (!strncmp(v17, __s, v18))
              {
                v19 = *(*(a1 + 520) + 8 * v12);
                if (v19)
                {
                  heap_Free(*(*a1 + 8), v19);
                  *(*(a1 + 520) + 8 * v12) = 0;
                  v17 = *(*(a1 + 512) + 8 * v12);
                }

                if (v17)
                {
                  heap_Free(*(*a1 + 8), v17);
                  *(*(a1 + 512) + 8 * v12) = 0;
                }

                v20 = *(*(a1 + 544) + 8 * v12);
                if (v20)
                {
                  brk_DataClose(*(*a1 + 24), v20);
                  *(*(a1 + 544) + 8 * v12) = 0;
                }

                ++v15;
                v11 = *(a1 + 576);
                v14 = 1;
              }

              else
              {
                if (v14)
                {
                  *(v16 + 8 * v13) = v17;
                  *(*(a1 + 520) + 8 * v13) = *(*(a1 + 520) + 8 * v12);
                  *(*(a1 + 544) + 8 * v13) = *(*(a1 + 544) + 8 * v12);
                }

                ++v13;
              }

              ++v12;
            }

            while (v12 < v11);
            if (v15)
            {
              *(a1 + 576) = v11 - v15;
              v21 = heap_Realloc(*(*a1 + 8), *(a1 + 512), 8 * (v11 - v15) + 16);
              if (!v21 || (*(a1 + 512) = v21, (v22 = heap_Realloc(*(*a1 + 8), *(a1 + 520), 8 * *(a1 + 576) + 16)) == 0) || (*(a1 + 520) = v22, (v23 = heap_Realloc(*(*a1 + 8), *(a1 + 544), 8 * *(a1 + 576) + 16)) == 0))
              {
                result = 2306875402;
                goto LABEL_38;
              }

              *(a1 + 544) = v23;
              v24 = *(a1 + 576);
              *(*(a1 + 512) + 8 * v24) = 0;
              *(*(a1 + 512) + 8 * v24 + 8) = 0;
              *(*(a1 + 520) + 8 * v24) = 0;
              *(*(a1 + 520) + 8 * v24 + 8) = 0;
              *(*(a1 + 544) + 8 * v24) = 0;
              *(*(a1 + 544) + 8 * v24 + 8) = 0;
            }
          }

          v25 = *(*(a1 + 496) + 8 * i);
          v26 = *(v25 + 624);
          if (v26)
          {
            v27 = *(v25 + 56);
            if (v27)
            {
              brk_DataUnmap(*(*a1 + 24), v26, v27);
              v26 = *(*(*(a1 + 496) + 8 * i) + 624);
            }

            brk_DataClose(*(*a1 + 24), v26);
            v25 = *(*(a1 + 496) + 8 * i);
          }

          heap_Free(*(*a1 + 8), v25);
          v5 = *(a1 + 488) - 1;
          if (v5 > i)
          {
            v28 = i;
            do
            {
              *(*(a1 + 496) + 8 * v28) = *(*(a1 + 496) + 8 * v28 + 8);
              ++v28;
            }

            while (v5 > v28);
          }

          *(a1 + 488) = v5;
        }
      }
    }

    result = 0;
  }

LABEL_38:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_dctlkp_GetCfgParamVal(unsigned int *a1, int a2, const char *a3, char *a4, char **a5)
{
  *a5 = a4;
  __c_1 = -1;
  __c = 0;
  v10 = 0;
  v6 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", a3, &v10, &__c_1, &__c, 0);
  if ((v6 & 0x80000000) == 0 && __c_1)
  {
    v7 = *v10;
    v8 = strchr(*v10, __c);
    if (v8)
    {
      *v8 = 0;
      v7 = *v10;
    }

    *a5 = v7;
  }

  return v6;
}

uint64_t fe_dctlkp_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2306875393;
  }

  result = 0;
  *a2 = &IFeDctLkp;
  return result;
}

uint64_t loc_fe_dctlkp_getTokenDef(unsigned int *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, char **a6)
{
  v25 = *MEMORY[0x1E69E9840];
  memset(__c, 0, sizeof(__c));
  __strcpy_chk();
  __strcat_chk();
  v10 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", v24, &__c[3], &__c[1], __c, 0);
  if ((v10 & 0x80000000) == 0 && *&__c[1] == 1)
  {
    v11 = **&__c[3];
    v12 = strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
      v11 = **&__c[3];
    }

    v13 = strlen(v11);
    v18 = *a3;
    if (v13 < 0x100)
    {
      v19 = heap_Calloc(*(v18 + 8), v13 + 1, 1);
      *a6 = v19;
      if (v19)
      {
        strcpy(v19, **&__c[3]);
      }

      else
      {
        v10 = 2306875402;
      }
    }

    else
    {
      log_OutPublic(*(v18 + 32), "FE_DCTLKP", 41003, 0, v14, v15, v16, v17, v22);
      v10 = 2306875392;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

char *heap_strdup(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  result = heap_Alloc(a1, (v4 + 1));
  if (result)
  {

    return strcpy(result, __s);
  }

  return result;
}

uint64_t hlp_getUtf8CanMap(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, const char *a5, char *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (!*(a4 + 4 * *a5))
  {
    goto LABEL_14;
  }

  v18 = 0;
  v16 = 0;
  *a6 = 0;
  __strcpy_chk();
  __strcat_chk();
  __strcat_chk();
  if ((loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", v19, &v18, &v17, &v16, 0) & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  if (!v17)
  {
    __strcpy_chk();
    if ((loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", v19, &v18, &v17, &v16, 0) & 0x80000000) != 0 || !v17)
    {
      goto LABEL_14;
    }
  }

  if (*a6)
  {
    goto LABEL_11;
  }

  for (i = 0; i < v17; ++i)
  {
    v11 = *(v18 + 8 * i);
    v12 = utf8_determineUTF8CharLength(*v11);
    v11[utf8_determineUTF8CharLength(*v11)] = 0;
    v13 = strlen(v11);
    if (!strncmp(v11, a5, v13))
    {
      strcpy(a6, &v11[v12 + 1]);
    }

    if (*a6)
    {
      break;
    }
  }

  if (*a6)
  {
LABEL_11:
    result = 1;
  }

  else
  {
LABEL_14:
    result = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_nn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2706382849;
  }

  result = 0;
  *a2 = &IFeNn;
  return result;
}

uint64_t WordScanner_ResetFrom(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2 || (v3 = a2, utf8_BelongsToSet(1u, *(a1 + 8), a2, v2)))
  {
LABEL_3:

    return kaldi::OffsetFileInputImpl::MyType("u16From");
  }

  PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(*(a1 + 8), v3, *(a1 + 16));
  v7 = *(a1 + 16);
  if (PreviousUtf8OffsetLimit < v7)
  {
    if (!utf8_BelongsToSet(1u, *(a1 + 8), PreviousUtf8OffsetLimit, v7))
    {
      goto LABEL_3;
    }

    v7 = *(a1 + 16);
  }

  for (*(a1 + 18) = v3; v7 > v3; v7 = *(a1 + 16))
  {
    if (utf8_BelongsToSet(1u, *(a1 + 8), v3, v7))
    {
      break;
    }

    LODWORD(v3) = utf8_GetNextUtf8OffsetLimit(*(a1 + 8), v3, *(a1 + 16));
  }

  *(a1 + 20) = v3;
  return 0;
}

uint64_t WordScanner_ConFrom(uint64_t a1, const char *a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__WordScanner;
    if (a2)
    {
      *(a1 + 8) = a2;
      *(a1 + 16) = strlen(a2);

      return WordScanner_ResetFrom(a1, a3);
    }

    else
    {

      return kaldi::OffsetFileInputImpl::MyType("szString");
    }
  }

  return result;
}

uint64_t WordScanner_NextWord(uint64_t a1)
{
  NextUtf8OffsetLimit = *(a1 + 20);
  for (i = *(a1 + 16); i > NextUtf8OffsetLimit; i = *(a1 + 16))
  {
    v4 = utf8_BelongsToSet(1u, *(a1 + 8), NextUtf8OffsetLimit, i);
    i = *(a1 + 16);
    if (!v4)
    {
      break;
    }

    NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(*(a1 + 8), NextUtf8OffsetLimit, *(a1 + 16));
  }

  if (NextUtf8OffsetLimit >= i)
  {
    return 0;
  }

  *(a1 + 18) = NextUtf8OffsetLimit;
  do
  {
    if (utf8_BelongsToSet(1u, *(a1 + 8), NextUtf8OffsetLimit, i))
    {
      break;
    }

    LODWORD(NextUtf8OffsetLimit) = utf8_GetNextUtf8OffsetLimit(*(a1 + 8), NextUtf8OffsetLimit, *(a1 + 16));
    i = *(a1 + 16);
  }

  while (i > NextUtf8OffsetLimit);
  *(a1 + 20) = NextUtf8OffsetLimit;
  return 1;
}

uint64_t WordScanner_PrevWord(uint64_t a1)
{
  v2 = *(a1 + 18);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v2;
  while (1)
  {
    PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(v3, v5, v4);
    v7 = *(a1 + 16);
    if (PreviousUtf8OffsetLimit >= v7)
    {
      break;
    }

    v8 = utf8_BelongsToSet(1u, *(a1 + 8), PreviousUtf8OffsetLimit, v7);
    v7 = *(a1 + 16);
    if (!v8)
    {
      break;
    }

    LOWORD(v2) = PreviousUtf8OffsetLimit;
    v3 = *(a1 + 8);
    v5 = PreviousUtf8OffsetLimit;
    v4 = *(a1 + 16);
  }

  if (PreviousUtf8OffsetLimit >= v7)
  {
    return 0;
  }

  *(a1 + 20) = v2;
  while (!utf8_BelongsToSet(1u, *(a1 + 8), PreviousUtf8OffsetLimit, v7))
  {
    LOWORD(v2) = PreviousUtf8OffsetLimit;
    v9 = utf8_GetPreviousUtf8OffsetLimit(*(a1 + 8), PreviousUtf8OffsetLimit, *(a1 + 16));
    v7 = *(a1 + 16);
    if (v7 <= v9)
    {
      break;
    }

    PreviousUtf8OffsetLimit = v9;
  }

  *(a1 + 18) = v2;
  return 1;
}

uint64_t PNEW_WordScanner_ConFrom(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 24, &v10);
  result = v10;
  if (!v10)
  {
    result = WordScanner_ConFrom(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t ooc_utils_createAllocator(uint64_t a1, _WORD *a2, int a3)
{
  v8 = 0;
  *&v5 = heap_Alloc;
  *(&v5 + 1) = heap_Calloc;
  v6 = heap_Realloc;
  v7 = heap_Free;
  if ((InitRsrcFunction(a2, a3, &v8) & 0x80000000) == 0)
  {
    return OOCAllocator_Con(a1, &v5, *(v8 + 8));
  }

  err_GenerateErrorInternalMsg("InitRsrcFunction");
  return 9;
}

uint64_t err_GenerateErrorInternalMsg(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  err_ErrorGetCallback(&v4, &v3);
  if (v4)
  {
    v4(v3, 9, "Internal Error.", a1);
  }

  return 9;
}

uint64_t Params_Con(void *a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__Params;
    a1[1] = a2;
    a1[2] = a3;
    a1[3] = 0;
    if ((InitRsrcFunction(a2, a3, a1 + 3) & 0x80000000) != 0)
    {

      return err_GenerateErrorInternalMsg("InitRsrcFunction");
    }

    else
    {
      result = ooc_utils_createAllocator((a1 + 4), a1[1], a1[2]);
      if (!result)
      {
        a1[9] = a4;
      }
    }
  }

  return result;
}

uint64_t Params_Des(uint64_t a1)
{
  kaldi::nnet1::Component::IsUpdatable((a1 + 32));

  return Object_Des();
}

uint64_t Params_GetCfgParamValueFloat(uint64_t a1, _BYTE *a2, float *a3, float a4)
{
  v10 = 0;
  if (a3)
  {
    *a3 = a4;
    CfgParamValueString = Params_GetCfgParamValueString(a1, a2, &v10);
    v7 = v10;
    if (CfgParamValueString || !v10)
    {
      if (!v10)
      {
        return CfgParamValueString;
      }
    }

    else
    {
      CfgParamValueString = 0;
      if (*v10)
      {
        v8 = atof(v10);
        *a3 = v8;
      }
    }

    heap_Free(*(*(a1 + 24) + 8), v7);
    return CfgParamValueString;
  }

  return kaldi::OffsetFileInputImpl::MyType("pVal");
}

uint64_t Params_GetCfgParamValueString(uint64_t a1, _BYTE *a2, char **a3)
{
  v18 = 0;
  v19 = 0;
  v17 = -1;
  *&__c[1] = 0;
  __c[0] = 0;
  if (!a2 || !*a2)
  {
    v12 = "szParamName";
LABEL_17:
    ErrorInternalMsg = kaldi::OffsetFileInputImpl::MyType(v12);
LABEL_18:
    v7 = ErrorInternalMsg;
    goto LABEL_19;
  }

  if (!a3)
  {
    v12 = "pszParamValue";
    goto LABEL_17;
  }

  *a3 = 0;
  if ((objc_GetObject(*(*(a1 + 24) + 48), "FE_DCTLKP", &v19) & 0x80000000) != 0)
  {
    v15 = "objc_GetObject";
LABEL_26:
    ErrorInternalMsg = err_GenerateErrorInternalMsg(v15);
    goto LABEL_18;
  }

  v6 = *(a1 + 72);
  if (!strcmp(v6, "fecfg"))
  {
    goto LABEL_9;
  }

  if (((*(v19[1] + 72))(v19[2], v19[3], v6, &__c[1]) & 0x80000000) != 0)
  {
    v15 = "pIDctlkp->pfQueryDictExists";
    goto LABEL_26;
  }

  if (!*&__c[1])
  {
    v7 = 0;
    v17 = 0;
    goto LABEL_19;
  }

  v17 = 1;
  v6 = *(a1 + 72);
LABEL_9:
  if (((*(v19[1] + 96))(v19[2], v19[3], v6, a2, &v18, &v17, __c) & 0x80000000) != 0)
  {
    v15 = "pIDctlkp->pfLookupUtf";
    goto LABEL_26;
  }

  v7 = 0;
  if (v17 == 1 && v18)
  {
    v8 = *v18;
    v9 = strchr(*v18, __c[0]);
    if (v9)
    {
      *v9 = 0;
      v8 = *v18;
    }

    v10 = strlen(v8);
    v11 = heap_Calloc(*(*(a1 + 24) + 8), 1, (v10 + 1));
    *a3 = v11;
    if (v11)
    {
      strcpy(v11, *v18);
      v7 = 0;
      goto LABEL_19;
    }

    ErrorInternalMsg = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
    goto LABEL_18;
  }

LABEL_19:
  if (v19)
  {
    objc_ReleaseObject(*(*(a1 + 24) + 48), "FE_DCTLKP");
  }

  return v7;
}

uint64_t Params_GetCfgParamValueInteger(uint64_t a1, _BYTE *a2, int a3, int *a4)
{
  v9 = 0;
  if (a4)
  {
    *a4 = a3;
    CfgParamValueString = Params_GetCfgParamValueString(a1, a2, &v9);
    v7 = v9;
    if (CfgParamValueString || !v9)
    {
      if (!v9)
      {
        return CfgParamValueString;
      }
    }

    else
    {
      CfgParamValueString = 0;
      if (*v9)
      {
        *a4 = atoi(v9);
      }
    }

    heap_Free(*(*(a1 + 24) + 8), v7);
    return CfgParamValueString;
  }

  return kaldi::OffsetFileInputImpl::MyType("pVal");
}

uint64_t Params_GetCfgParamValueListOfStrings(uint64_t a1, _BYTE *a2, unsigned __int8 a3, uint64_t *a4)
{
  v11 = 0;
  if (*a4 || (CfgParamValueString = PNEW_StringList_Con(a1 + 32, *(a1 + 8), *(a1 + 16), a4), !CfgParamValueString))
  {
    CfgParamValueString = Params_GetCfgParamValueString(a1, a2, &v11);
    v9 = v11;
    if (!CfgParamValueString && v11)
    {
      CfgParamValueString = StringList_FromSplitString(*a4, v11, a3);
      v9 = v11;
    }

    if (v9)
    {
      heap_Free(*(*(a1 + 24) + 8), v9);
    }
  }

  return CfgParamValueString;
}

uint64_t PNEW_Params_Con(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = 0;
  v10 = OOCAllocator_Malloc(a1, 80, &v12);
  result = v12;
  if (!v12)
  {
    result = Params_Con(v10, a2, a3, a4);
    v12 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v10);
      *a5 = 0;
      return v12;
    }

    else
    {
      *a5 = v10;
    }
  }

  return result;
}

uint64_t StringList_Con(uint64_t a1, _WORD *a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__StringList;
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = -1;
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
    inited = InitRsrcFunction(a2, a3, (a1 + 24));
    result = 0;
    if (inited < 0)
    {

      return err_GenerateErrorInternalMsg("InitRsrcFunction");
    }
  }

  return result;
}

uint64_t StringList_Des(void *a1)
{
  StringList_Reset(a1);

  return Object_Des();
}

void *StringList_Reset(void *result)
{
  v1 = result;
  v2 = result[4];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        heap_Free(*(v1[3] + 8), v3);
        *(v1[4] + 8 * v4) = 0;
        ++v5;
        v2 = v1[4];
        v4 = v5;
        v3 = v2[v5];
      }

      while (v3);
    }

    result = heap_Free(*(v1[3] + 8), v2);
    v1[4] = 0;
    *(v1 + 20) = 0;
  }

  v1[6] = 0;
  v1[7] = 0;
  *(v1 + 32) = -1;
  return result;
}

uint64_t StringList_Append(uint64_t a1, char *__s)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v3;
    }

    while (*(v2 + 8 * v3++));
  }

  else
  {
    v4 = 0;
  }

  return StringList_InsertAt(a1, v4, __s);
}

uint64_t StringList_InsertAt(uint64_t a1, unsigned int a2, char *__s)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = v7;
    }

    while (*(v6 + 8 * v7++));
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  if (v8 < a2)
  {
    return 3;
  }

  v12 = *(a1 + 40);
  if (v8 + 2 > v12)
  {
    v13 = v12 + 20;
    v14 = heap_Realloc(*(*(a1 + 24) + 8), v6, 8 * (v12 + 20));
    if (!v14)
    {
      goto LABEL_15;
    }

    v15 = v14;
    if (v10 < v13)
    {
      bzero(v14 + 8 * v10, 8 * (v12 - v10 + 19) + 8);
    }

    *(a1 + 32) = v15;
    *(a1 + 40) = v13;
  }

  v16 = strlen(__s);
  v14 = __StringList_hlpDuplicateSubString(a1, __s, 0, v16);
  if (v14)
  {
    v17 = v14;
    v18 = *(a1 + 32) + 8 * a2;
    memmove((v18 + 8), v18, 8 * (v10 - a2));
    result = 0;
    *(*(a1 + 32) + 8 * a2) = v17;
    return result;
  }

LABEL_15:

  return kaldi::nnet1::UpdatableComponent::IsUpdatable(v14);
}

uint64_t StringList_GetCountStrings(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = 0;
    do
    {
      v3 = v2;
    }

    while (*(v1 + 8 * v2++));
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t StringList_FromSplitString(uint64_t a1, const char *a2, unsigned __int8 a3)
{
  v5 = a3;
  StringList_Reset(a1);
  v6 = strlen(a2);
  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  if (v6 + 1 > 1)
  {
    v10 = v6 + 1;
  }

  do
  {
    v11 = a2[v8];
    if (v11 == v5 || v11 == 0)
    {
      ++v9;
    }

    ++v8;
  }

  while (v10 != v8);
  v13 = v9 + 1;
  v14 = heap_Calloc(*(*(a1 + 24) + 8), 1, (8 * v13));
  *(a1 + 32) = v14;
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *(a1 + 40) = v13;
    do
    {
      v18 = a2[v16];
      if (v18 == v5 || v18 == 0)
      {
        v14 = __StringList_hlpDuplicateSubString(a1, a2, v15, v16);
        *(*(a1 + 32) + 8 * v17) = v14;
        if (!*(*(a1 + 32) + 8 * v17))
        {
          goto LABEL_20;
        }

        ++v16;
        ++v17;
        v15 = v16;
      }

      else
      {
        ++v16;
      }
    }

    while (v16 <= v7);
    return 0;
  }

  else
  {
LABEL_20:
    IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(v14);
    if (IsUpdatable)
    {
      StringList_Reset(a1);
    }
  }

  return IsUpdatable;
}

char *__StringList_hlpDuplicateSubString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - a3;
  result = heap_Calloc(*(*(a1 + 24) + 8), 1, a4 - a3 + 1);
  if (result)
  {

    return strncpy(result, (a2 + a3), v6);
  }

  return result;
}

uint64_t StringList_FromSplitStringInUtf8(uint64_t a1, char *__s, int a3, char *__src, const char *a5, _WORD *a6)
{
  v11 = *(a1 + 32);
  if (v11 && ((v12 = *(a1 + 64), v12 >= 7) ? (v13 = v12 == 0xFFFF) : (v13 = 1), !v13 || (StringList_Reset(a1), (v11 = *(a1 + 32)) != 0)))
  {
    v14 = 0;
    do
    {
      v15 = v14;
    }

    while (*(v11 + 8 * v14++));
    v17 = 0;
  }

  else
  {
    v15 = 0;
    v17 = 1;
  }

  if (a3 == 0xFFFF)
  {
    LOWORD(a3) = strlen(__s);
  }

  if (v15 < a3)
  {
    v18 = *(*(a1 + 24) + 8);
    v19 = 8 * a3;
    if (v17)
    {
      v20 = heap_Alloc(v18, v19 + 8);
      if (!v20)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v20 = heap_Realloc(v18, v11, v19 + 8);
      if (!v20)
      {
LABEL_42:

        return kaldi::nnet1::UpdatableComponent::IsUpdatable(v20);
      }
    }

    v21 = v15;
    do
    {
      *(v20 + v21++) = 0;
    }

    while (v21 <= a3);
    *(a1 + 32) = v20;
    *(a1 + 40) = a3 + 1;
    v22 = v15;
    while (1)
    {
      v20 = heap_Calloc(*(*(a1 + 24) + 8), 1, 7);
      *(*(a1 + 32) + 8 * v22) = v20;
      if (!*(*(a1 + 32) + 8 * v22))
      {
        goto LABEL_42;
      }

      if (a3 == ++v22)
      {
        *(a1 + 64) = 7;
        break;
      }
    }
  }

  LOWORD(v23) = 0;
  if (*__s && a3)
  {
    v30 = a6;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = Utf8_LengthInBytes(&__s[v24], 1);
      if (a5 && !strncmp(&__s[v24], " ", v26))
      {
        strcpy(*(*(a1 + 32) + 8 * v23), a5);
      }

      else
      {
        strncpy(*(*(a1 + 32) + 8 * v23), &__s[v24], v26);
        *(*(*(a1 + 32) + 8 * v23) + v26) = 0;
      }

      ++v23;
      v25 += v26;
      if (strlen(__s) <= v25)
      {
        break;
      }

      v24 = v25;
    }

    while (v23 < a3);
    a6 = v30;
  }

  *a6 = v23;
  if (v23 < a3)
  {
    v27 = v23;
    do
    {
      v28 = *(*(a1 + 32) + 8 * v27);
      if (__src)
      {
        strcpy(v28, __src);
      }

      else
      {
        *v28 = 0;
      }

      ++v27;
    }

    while (a3 != v27);
  }

  return 0;
}

uint64_t StringList_GetAt(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = v3;
  }

  while (*(v2 + 8 * v3++));
  if (a2 < v4)
  {
    return *(v2 + 8 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t StringList_GetIndex(uint64_t a1, char *__s2)
{
  if (__s2 && (v2 = *(a1 + 32), (v3 = *v2) != 0))
  {
    v5 = 0;
    while (strcmp(v3, __s2))
    {
      v3 = v2[++v5];
      if (!v3)
      {
        return -1;
      }
    }
  }

  else
  {
    return -1;
  }

  return v5;
}

uint64_t StringList_RemoveAt(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 3;
  }

  v5 = 0;
  do
  {
    v6 = v5;
  }

  while (*(v2 + 8 * v5++));
  if (v6 <= a2)
  {
    return 3;
  }

  heap_Free(*(*(a1 + 24) + 8), *(v2 + 8 * a2));
  *(*(a1 + 32) + 8 * a2) = 0;
  v8 = *(a1 + 32) + 8 * a2;
  memmove(v8, (v8 + 8), 8 * (v6 + ~a2));
  result = 0;
  *(*(a1 + 32) + 8 * v6 - 8) = 0;
  return result;
}

uint64_t PNEW_StringList_Con(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 72, &v10);
  result = v10;
  if (!v10)
  {
    result = StringList_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t NN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  result = Object_Con(a1);
  if (!result)
  {
    *(a1 + 136) = 0;
    *(a1 + 152) = 0;
    *(a1 + 128) = 0;
    *(a1 + 144) = 0;
    *(a1 + 160) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *a1 = &__NN;
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
    *(a1 + 32) = a4;
    *(a1 + 40) = a5;
    *(a1 + 96) = 0;
    if ((InitRsrcFunction(a4, a5, (a1 + 48)) & 0x80000000) != 0 || (InitRsrcFunction(*(a1 + 8), *(a1 + 16), (a1 + 24)) & 0x80000000) != 0)
    {

      return err_GenerateErrorInternalMsg("InitRsrcFunction");
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);

      return ooc_utils_createAllocator(a1 + 56, v11, v12);
    }
  }

  return result;
}

uint64_t NN_Des(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 96);
    if (v2)
    {
      OOCAllocator_Free(result + 56, v2);
      v1[12] = 0;
    }

    v3 = v1[13];
    if (v3)
    {
      OOC_PlacementDeleteObject((v1 + 7), v3);
      v1[13] = 0;
    }

    v4 = v1[14];
    if (v4)
    {
      OOC_PlacementDeleteObject((v1 + 7), v4);
      v1[14] = 0;
    }

    __NN_CGN_Deinitialize(v1);
    __NN_TN_Deinitialize(v1);
    __NN_CLM_Deinitialize(v1);
    kaldi::nnet1::Component::IsUpdatable((v1 + 7));

    return Object_Des();
  }

  return result;
}

uint64_t __NN_CGN_Deinitialize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 120);
  if (*(result + 120))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 128) + 8 * v3);
      if (v4)
      {
        result = OOC_PlacementDeleteObject(v1 + 56, v4);
        *(*(v1 + 128) + 8 * v3) = 0;
        v2 = *(v1 + 120);
      }

      ++v3;
    }

    while (v3 < v2);
    if (v2)
    {
      result = OOCAllocator_Free(v1 + 56, *(v1 + 128));
      *(v1 + 128) = 0;
    }
  }

  *(v1 + 120) = 0;
  return result;
}

uint64_t __NN_TN_Deinitialize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 136);
  if (*(result + 136))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 144) + 8 * v3);
      if (v4)
      {
        result = OOC_PlacementDeleteObject(v1 + 56, v4);
        *(*(v1 + 144) + 8 * v3) = 0;
        v2 = *(v1 + 136);
      }

      ++v3;
    }

    while (v3 < v2);
    if (v2)
    {
      result = OOCAllocator_Free(v1 + 56, *(v1 + 144));
      *(v1 + 144) = 0;
    }
  }

  *(v1 + 136) = 0;
  return result;
}

uint64_t __NN_CLM_Deinitialize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 152);
  if (*(result + 152))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 160) + 8 * v3);
      if (v4)
      {
        result = OOC_PlacementDeleteObject(v1 + 56, v4);
        *(*(v1 + 160) + 8 * v3) = 0;
        v2 = *(v1 + 152);
      }

      ++v3;
    }

    while (v3 < v2);
    if (v2)
    {
      result = OOCAllocator_Free(v1 + 56, *(v1 + 160));
      *(v1 + 160) = 0;
    }
  }

  *(v1 + 152) = 0;
  return result;
}

uint64_t NN_CGN_Predict(uint64_t a1, int a2, const char *a3, const char *a4, uint64_t a5, void *a6, int *a7)
{
  v13 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v13 & 0x80000000) == 0 && a1)
  {
    if (NN_IsInitializedForCurrent(a1))
    {
      v15 = *(a1 + 120);
      if (!*(a1 + 120))
      {
        goto LABEL_9;
      }

      v16 = *(a1 + 128);
      while (1)
      {
        v17 = *v16;
        if (*v16)
        {
          if (!strcmp(a3, *(v17 + 120)))
          {
            break;
          }
        }

        ++v16;
        if (!--v15)
        {
          goto LABEL_9;
        }
      }

      result = CGN_Predict(v17, a4, a5, a6, a7);
      if (result)
      {
        result = LH_ERROR_to_VERROR(result);
        if ((result & 0x1FFF) == 7)
        {
LABEL_9:
          result = 0;
          *a7 = 0;
        }
      }
    }

    else
    {
      return 2706382848;
    }
  }

  return result;
}

BOOL NN_IsInitializedForCurrent(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  result = !__NN_GetIdentificationForCurrent(a1, __s1) && (v3 = *(a1 + 96)) != 0 && strcmp(__s1, v3) == 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL NN_CGN_QueryModelExists(uint64_t a1, int a2, const char *a3)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v5 = *(a1 + 120);
  if (!*(a1 + 120))
  {
    return 0;
  }

  for (i = *(a1 + 128); ; ++i)
  {
    v7 = *i;
    if (*i)
    {
      if (!strcmp(a3, *(v7 + 120)))
      {
        break;
      }
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return Model_QueryExists(v7);
}

uint64_t NN_CLM_Predict(uint64_t a1, int a2, const char *a3, _BYTE **a4, _BYTE **a5, _BYTE **a6, unsigned int *a7, uint64_t a8, uint64_t a9)
{
  v16 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v16 & 0x80000000) == 0 && a1)
  {
    if (NN_IsInitializedForCurrent(a1))
    {
      v18 = *(a1 + 152);
      if (!*(a1 + 152))
      {
        goto LABEL_9;
      }

      v19 = *(a1 + 160);
      while (1)
      {
        v20 = *v19;
        if (*v19)
        {
          if (!strcmp(a3, *(v20 + 120)))
          {
            break;
          }
        }

        ++v19;
        if (!--v18)
        {
          goto LABEL_9;
        }
      }

      result = CLM_Predict(v20, a4, a5, a6, *a7, a8, a9);
      if (result)
      {
        result = LH_ERROR_to_VERROR(result);
        if ((result & 0x1FFF) == 7)
        {
LABEL_9:
          result = 0;
          *a7 = 0;
        }
      }
    }

    else
    {
      return 2706382848;
    }
  }

  return result;
}

BOOL NN_CLM_QueryModelExists(uint64_t a1, int a2, const char *a3)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v5 = *(a1 + 152);
  if (!*(a1 + 152))
  {
    return 0;
  }

  for (i = *(a1 + 160); ; ++i)
  {
    v7 = *i;
    if (*i)
    {
      if (!strcmp(a3, *(v7 + 120)))
      {
        break;
      }
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return Model_QueryExists(v7);
}

uint64_t NN_ClassOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2706382855;
  }

  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t NN_G2POneWord_Predict(uint64_t a1, int a2, char *a3, void *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v7 & 0x80000000) == 0 && a1)
  {
    if (NN_IsInitializedForCurrent(a1))
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        v10 = G2POneWord_Predict(v9, a3, a4);
        result = v7;
        if (v10)
        {

          return LH_ERROR_to_VERROR(v10);
        }
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 2706382848;
    }
  }

  return result;
}

BOOL NN_G2POneWord_QueryModelExists(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v3 = *(a1 + 112);
  if (!v3)
  {
    return 0;
  }

  return Model_QueryExists(v3);
}

uint64_t NN_InitializeForCurrent(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (NN_IsInitializedForCurrent(a1))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      OOCAllocator_Free(a1 + 56, v3);
      *(a1 + 96) = 0;
    }

    v5 = (a1 + 104);
    v4 = *(a1 + 104);
    if (v4)
    {
      OOC_PlacementDeleteObject(a1 + 56, v4);
      *(a1 + 104) = 0;
    }

    v6 = *(a1 + 112);
    if (v6)
    {
      OOC_PlacementDeleteObject(a1 + 56, v6);
      *(a1 + 112) = 0;
    }

    __NN_CGN_Deinitialize(a1);
    __NN_TN_Deinitialize(a1);
    __NN_CLM_Deinitialize(a1);
    IdentificationForCurrent = __NN_GetIdentificationForCurrent(a1, __s);
    v12 = IdentificationForCurrent;
    if (!IdentificationForCurrent)
    {
      v8 = strlen(__s);
      v9 = OOCAllocator_Malloc(a1 + 56, v8 + 1, &v12);
      *(a1 + 96) = v9;
      v2 = v12;
      if (v12)
      {
        goto LABEL_12;
      }

      strcpy(v9, __s);
      v13 = 0;
      IdentificationForCurrent = PNEW_ToBeSpelled_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (a1 + 104));
      if (!IdentificationForCurrent)
      {
        v2 = ToBeSpelled_LoadModel(*v5, &v13);
        if (v2 || !v13)
        {
          OOC_PlacementDeleteObject(a1 + 56, *v5);
          *v5 = 0;
          v12 = v2;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v12 = 0;
        }

        IdentificationForCurrent = __NN_G2POneWord_Initialize(a1);
        v12 = IdentificationForCurrent;
        if (!IdentificationForCurrent)
        {
          IdentificationForCurrent = __NN_CGN_Initialize(a1);
          v12 = IdentificationForCurrent;
          if (!IdentificationForCurrent)
          {
            IdentificationForCurrent = __NN_TN_Initialize(a1);
            v12 = IdentificationForCurrent;
            if (!IdentificationForCurrent)
            {
              IdentificationForCurrent = __NN_CLM_Initialize(a1);
            }
          }
        }
      }
    }

    v2 = IdentificationForCurrent;
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __NN_GetIdentificationForCurrent(uint64_t a1, char *a2)
{
  __s2 = 0;
  __src = 0;
  v7 = 0;
  if ((paramc_ParamGetStr(*(*(a1 + 48) + 40), "langcode", &__src) & 0x80000000) != 0 || (paramc_ParamGetStr(*(*(a1 + 48) + 40), "fecfg", &__s2) & 0x80000000) != 0)
  {
    return err_GenerateErrorInternalMsg("paramc_ParamGetStr");
  }

  if ((paramc_ParamGetStr(*(*(a1 + 48) + 40), "voice", &v7) & 0x80000000) != 0)
  {
    v7 = 0;
  }

  v4 = strcpy(a2, __src);
  *&a2[strlen(v4)] = 95;
  strcat(a2, __s2);
  if (v7)
  {
    *&a2[strlen(a2)] = 95;
    strcat(a2, v7);
  }

  if (*a2)
  {
    v5 = 0;
    do
    {
      a2[v5] = __tolower(a2[v5]);
      ++v5;
    }

    while (v5 < strlen(a2));
  }

  return 0;
}

uint64_t __NN_G2POneWord_Initialize(uint64_t a1)
{
  v6 = 0;
  v2 = PNEW_G2POneWord_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (a1 + 112));
  if (!v2)
  {
    v3 = G2POneWord_LoadModel(*(a1 + 112), &v6);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v6 == 0;
    }

    if (v4)
    {
      v2 = v3;
      OOC_PlacementDeleteObject(a1 + 56, *(a1 + 112));
      *(a1 + 112) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t __NN_CGN_Initialize(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  ErrorInternalMsg = PNEW_StringList_Con(a1 + 56, *(a1 + 32), *(a1 + 40), &v10);
  if (!ErrorInternalMsg)
  {
    ErrorInternalMsg = CGN_Models(*(a1 + 32), *(a1 + 40), v10);
    if (!ErrorInternalMsg)
    {
      CountStrings = StringList_GetCountStrings(v10);
      *(a1 + 120) = CountStrings;
      if (CountStrings)
      {
        *(a1 + 128) = OOCAllocator_Malloc(a1 + 56, 8 * CountStrings, &ErrorInternalMsg);
        if (!ErrorInternalMsg)
        {
          if (*(a1 + 120))
          {
            for (i = 0; i < *(a1 + 120); ++i)
            {
              ErrorInternalMsg = PNEW_CGN_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (*(a1 + 128) + 8 * i));
              if (ErrorInternalMsg)
              {
                break;
              }

              v5 = *(*(a1 + 128) + 8 * i);
              v6 = StringList_GetAt(v10, i);
              v7 = CGN_LoadModel(v5, v6, &v9);
              ErrorInternalMsg = v7;
              if (v7)
              {
                v8 = 1;
              }

              else
              {
                v8 = v9 == 0;
              }

              if (v8)
              {
                if (!v7)
                {
                  ErrorInternalMsg = err_GenerateErrorInternalMsg("not loaded");
                }

                OOC_PlacementDeleteObject(a1 + 56, *(*(a1 + 128) + 8 * i));
                *(*(a1 + 128) + 8 * i) = 0;
                break;
              }
            }
          }
        }
      }
    }
  }

  if (v10)
  {
    OOC_PlacementDeleteObject(a1 + 56, v10);
  }

  return ErrorInternalMsg;
}

uint64_t __NN_TN_Initialize(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  ErrorInternalMsg = PNEW_StringList_Con(a1 + 56, *(a1 + 32), *(a1 + 40), &v10);
  if (!ErrorInternalMsg)
  {
    ErrorInternalMsg = TN_Models(*(a1 + 32), *(a1 + 40), v10);
    if (!ErrorInternalMsg)
    {
      CountStrings = StringList_GetCountStrings(v10);
      *(a1 + 136) = CountStrings;
      if (CountStrings)
      {
        *(a1 + 144) = OOCAllocator_Malloc(a1 + 56, 8 * CountStrings, &ErrorInternalMsg);
        if (!ErrorInternalMsg)
        {
          if (*(a1 + 136))
          {
            for (i = 0; i < *(a1 + 136); ++i)
            {
              ErrorInternalMsg = PNEW_TN_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (*(a1 + 144) + 8 * i));
              if (ErrorInternalMsg)
              {
                break;
              }

              v5 = *(*(a1 + 144) + 8 * i);
              v6 = StringList_GetAt(v10, i);
              v7 = TN_LoadModel(v5, v6, &v9);
              ErrorInternalMsg = v7;
              if (v7)
              {
                v8 = 1;
              }

              else
              {
                v8 = v9 == 0;
              }

              if (v8)
              {
                if (!v7)
                {
                  ErrorInternalMsg = err_GenerateErrorInternalMsg("not loaded");
                }

                OOC_PlacementDeleteObject(a1 + 56, *(*(a1 + 144) + 8 * i));
                *(*(a1 + 144) + 8 * i) = 0;
                break;
              }
            }
          }
        }
      }
    }
  }

  if (v10)
  {
    OOC_PlacementDeleteObject(a1 + 56, v10);
  }

  return ErrorInternalMsg;
}

uint64_t __NN_CLM_Initialize(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  ErrorInternalMsg = PNEW_StringList_Con(a1 + 56, *(a1 + 32), *(a1 + 40), &v10);
  if (!ErrorInternalMsg)
  {
    ErrorInternalMsg = CLM_Models(*(a1 + 32), *(a1 + 40), v10);
    if (!ErrorInternalMsg)
    {
      CountStrings = StringList_GetCountStrings(v10);
      *(a1 + 152) = CountStrings;
      if (CountStrings)
      {
        *(a1 + 160) = OOCAllocator_Malloc(a1 + 56, 8 * CountStrings, &ErrorInternalMsg);
        if (!ErrorInternalMsg)
        {
          if (*(a1 + 152))
          {
            for (i = 0; i < *(a1 + 152); ++i)
            {
              ErrorInternalMsg = PNEW_CLM_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (*(a1 + 160) + 8 * i));
              if (ErrorInternalMsg)
              {
                break;
              }

              v5 = *(*(a1 + 160) + 8 * i);
              v6 = StringList_GetAt(v10, i);
              v7 = CLM_LoadModel(v5, v6, &v9);
              ErrorInternalMsg = v7;
              if (v7)
              {
                v8 = 1;
              }

              else
              {
                v8 = v9 == 0;
              }

              if (v8)
              {
                if (!v7)
                {
                  ErrorInternalMsg = err_GenerateErrorInternalMsg("not loaded");
                }

                OOC_PlacementDeleteObject(a1 + 56, *(*(a1 + 160) + 8 * i));
                *(*(a1 + 160) + 8 * i) = 0;
                break;
              }
            }
          }
        }
      }
    }
  }

  if (v10)
  {
    OOC_PlacementDeleteObject(a1 + 56, v10);
  }

  return ErrorInternalMsg;
}

uint64_t NN_ObjClose(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) == 0)
  {
    if (a1)
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      Allocator = ooc_utils_createAllocator(v5, *(a1 + 32), *(a1 + 40));
      if (Allocator || (Allocator = OOC_PlacementDeleteObject(v5, a1)) != 0)
      {
        LH_ERROR_to_VERROR(Allocator);
      }
    }
  }

  return 0;
}

uint64_t NN_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  if (!a5)
  {
    return 2706382855;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  *a5 = 0;
  *(a5 + 8) = 0;
  Allocator = ooc_utils_createAllocator(v16, a3, a4);
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  v12 = PNEW_NN_Con(v16, a1, a2, a3, a4, &v18);
  if (v12)
  {
    v13 = LH_ERROR_to_VERROR(v12);
  }

  else
  {
    v14 = v18;
    *a5 = v18;
    *(a5 + 8) = 1067;
    v13 = NN_ObjReopen(v14, *(a5 + 8));
  }

  v11 = v13;
  kaldi::nnet1::Component::IsUpdatable(v16);
  return v11;
}

uint64_t PNEW_NN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 168, &v14);
  result = v14;
  if (!v14)
  {
    result = NN_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t NN_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v3 & 0x80000000) == 0 && a1)
  {
    v5 = NN_InitializeForCurrent(a1);
    if (v5)
    {

      return LH_ERROR_to_VERROR(v5);
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t NN_TN_Predict(uint64_t a1, int a2, const char *a3, unsigned int a4, char *a5, unsigned int a6, unsigned int a7, void *a8, int *a9)
{
  v16 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v16 & 0x80000000) == 0 && a1)
  {
    if (NN_IsInitializedForCurrent(a1))
    {
      v18 = *(a1 + 136);
      if (!*(a1 + 136))
      {
        goto LABEL_9;
      }

      v19 = *(a1 + 144);
      while (1)
      {
        v20 = *v19;
        if (*v19)
        {
          if (!strcmp(a3, *(v20 + 120)))
          {
            break;
          }
        }

        ++v19;
        if (!--v18)
        {
          goto LABEL_9;
        }
      }

      result = TN_Predict(v20, a4, a5, a6, a7, a8, a9);
      if (result)
      {
        result = LH_ERROR_to_VERROR(result);
        if ((result & 0x1FFF) == 7)
        {
LABEL_9:
          result = 0;
          *a9 = 0;
        }
      }
    }

    else
    {
      return 2706382848;
    }
  }

  return result;
}

BOOL NN_TN_QueryModelExists(uint64_t a1, int a2, const char *a3)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v5 = *(a1 + 136);
  if (!*(a1 + 136))
  {
    return 0;
  }

  for (i = *(a1 + 144); ; ++i)
  {
    v7 = *i;
    if (*i)
    {
      if (!strcmp(a3, *(v7 + 120)))
      {
        break;
      }
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return Model_QueryExists(v7);
}

uint64_t NN_ToBeSpelled_Predict(uint64_t a1, int a2, char *a3, _DWORD *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v7 & 0x80000000) == 0 && a1)
  {
    if (NN_IsInitializedForCurrent(a1))
    {
      v9 = *(a1 + 104);
      if (v9)
      {
        v10 = ToBeSpelled_Predict(v9, a3, a4);
        result = v7;
        if (v10)
        {

          return LH_ERROR_to_VERROR(v10);
        }
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 2706382848;
    }
  }

  return result;
}

BOOL NN_ToBeSpelled_QueryModelExists(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v3 = *(a1 + 104);
  if (!v3)
  {
    return 0;
  }

  return Model_QueryExists(v3);
}

uint64_t _Model_Con(void *a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  result = Object_Con(a1);
  if (!result)
  {
    a1[12] = 0;
    a1[13] = 0;
    a1[14] = -1;
    *a1 = &__Model;
    a1[1] = a2;
    a1[2] = a3;
    a1[4] = a4;
    a1[5] = a5;
    a1[3] = 0;
    a1[6] = 0;
    if ((InitRsrcFunction(a4, a5, a1 + 6) & 0x80000000) == 0)
    {
      result = ooc_utils_createAllocator((a1 + 7), a1[4], a1[5]);
      if (result)
      {
        return result;
      }

      if ((InitRsrcFunction(a1[1], a1[2], a1 + 3) & 0x80000000) == 0)
      {
        return 0;
      }
    }

    return err_GenerateErrorInternalMsg("InitRsrcFunction");
  }

  return result;
}

uint64_t Model_Des(uint64_t a1)
{
  kaldi::nnet1::Component::IsUpdatable((a1 + 56));

  return Object_Des();
}

BOOL Model_QueryExists(_BOOL8 result)
{
  if (result)
  {
    return *(result + 104) != 0;
  }

  return result;
}

uint64_t _Model_Load(uint64_t a1, char *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 24))(a1, a3);
  if (result)
  {
    goto LABEL_2;
  }

  if (!*a3)
  {
    result = 0;
    goto LABEL_2;
  }

  v13 = "";
  *v14 = 0;
  memset(v15, 0, sizeof(v15));
  v8 = heap_Calloc(*(*(a1 + 48) + 8), 1, 1024);
  *(a1 + 96) = v8;
  if (!v8)
  {
    kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
    goto LABEL_15;
  }

  v9 = v8;
  if (strchr(a2, 58))
  {
    strcpy(v9, a2);
    goto LABEL_15;
  }

  if ((paramc_ParamGetStr(*(*(a1 + 48) + 40), "langcode", v14) & 0x80000000) != 0 || (paramc_ParamGetStr(*(*(a1 + 48) + 40), "fecfg", &v13) & 0x80000000) != 0)
  {
    v10 = "paramc_ParamGetStr";
  }

  else
  {
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    if ((brokeraux_ComposeBrokerString(*(a1 + 48), v15, 1, 1, *v14, 0, 0, *(a1 + 96), 0x400uLL) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v10 = "brokeraux_ComposeBrokerString";
  }

  err_GenerateErrorInternalMsg(v10);
LABEL_15:
  if ((fi_init(*(a1 + 32), *(a1 + 40), *(a1 + 8), *(a1 + 16), (a1 + 104), 0, *(a1 + 96), "FINN", 1, 0) & 0x80000000) != 0)
  {
    result = err_GenerateErrorInternalMsg("fi_init");
  }

  else
  {
    v11 = **(a1 + 104);
    v12 = v11[13];
    *(a1 + 112) = v11[14];
    if (v12 >= 2)
    {
      *(a1 + 116) = v11[15];
    }

    result = (*(*a1 + 32))(a1);
  }

LABEL_2:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _Model_Unload(uint64_t *a1)
{
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    return result;
  }

  v3 = a1[12];
  if (v3)
  {
    heap_Free(*(a1[6] + 8), v3);
    a1[12] = 0;
  }

  v4 = a1[13];
  if (!v4)
  {
    goto LABEL_7;
  }

  if ((fi_deinit(a1[6], a1[3], v4) & 0x80000000) == 0)
  {
    a1[13] = 0;
    a1[14] = -1;
LABEL_7:
    v5 = *(*a1 + 48);

    return v5(a1);
  }

  return err_GenerateErrorInternalMsg("fi_deinit");
}

uint64_t ToBeSpelled_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (v6)
  {
    (*(*a1 + 16))(a1);
  }

  else
  {
    *a1 = &__ToBeSpelled;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = safeh_GetNullHandle();
    *(a1 + 144) = v7;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 188) = 0;
    *(a1 + 192) = 0;
  }

  return v6;
}

uint64_t ToBeSpelled_Des(uint64_t *a1)
{
  result = _Model_Unload(a1);
  if (!result)
  {

    return Model_Des(a1);
  }

  return result;
}

uint64_t ToBeSpelled_Predict(uint64_t a1, char *a2, _DWORD *a3)
{
  v59 = 0;
  v60 = 0;
  v58 = 0;
  *a3 = 0;
  v61 = 0;
  v5 = StringList_FromSplitStringInUtf8(*(a1 + 192), a2, *(a1 + 120), "\v", "<sp>", &v61);
  if (v5)
  {
    goto LABEL_34;
  }

  log_OutText(*(*(a1 + 48) + 32), "NN_TOBESPELLED", 5, 0, "char lookup:", v6, v7, v8, 0);
  v9 = *(a1 + 120);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(*(a1 + 48) + 32);
      StringList_GetAt(*(a1 + 192), v11);
      log_OutText(v12, "NN_TOBESPELLED", 5, 0, "[%d] %s", v13, v14, v15, v10);
      v10 = ++v11;
      v9 = *(a1 + 120);
    }

    while (v9 > v11);
  }

  v16 = *(a1 + 152) * v9;
  v17 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v16);
  v60 = v17;
  if (v17)
  {
    v22 = v17;
    if (v16)
    {
      v23 = 0;
      do
      {
        v17[v23++] = 0;
      }

      while (v16 > v23);
    }

    if (!v61)
    {
      goto LABEL_21;
    }

    v24 = 0;
    while (1)
    {
      v25 = *(*(a1 + 128) + 56);
      v26 = StringList_GetAt(*(a1 + 192), v24);
      v27 = v25(*(a1 + 136), *(a1 + 144), v26, *(a1 + 160));
      if ((v27 & 0x1FFF) == 0x14)
      {
        v27 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", *(a1 + 160));
        if ((v27 & 0x1FFF) == 0x14)
        {
          break;
        }
      }

      if (v27 < 0)
      {
        v29 = "__pIWordLkp->pfWord2fVector";
        goto LABEL_19;
      }

      memcpy(&v22[*(a1 + 152) * v24++], *(a1 + 160), 4 * *(a1 + 152));
      if (v24 >= v61)
      {
        goto LABEL_21;
      }
    }

    v29 = "mean vector $MEANW2V$ not found";
LABEL_19:
    ErrorInternalMsg = err_GenerateErrorInternalMsg(v29);
  }

  else
  {
    ErrorInternalMsg = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
  }

  v30 = ErrorInternalMsg;
  if (ErrorInternalMsg)
  {
    goto LABEL_35;
  }

LABEL_21:
  if ((fi_predict(*(a1 + 104), &v60, *(a1 + 120), &v59, v18, v19, v20, v21) & 0x80000000) != 0)
  {
    v37 = "fi_predict";
LABEL_33:
    v5 = err_GenerateErrorInternalMsg(v37);
LABEL_34:
    v30 = v5;
    goto LABEL_35;
  }

  if ((fi_shape_get_size((**(a1 + 104) + 92), &v58) & 0x80000000) != 0)
  {
    v37 = "fi_shape_get_size";
    goto LABEL_33;
  }

  if (v58 != *(a1 + 184))
  {
    v37 = "Unexpected";
    goto LABEL_33;
  }

  v57 = a3;
  v34 = 0;
  if (v58)
  {
    v35 = 0;
    v36 = 0.0;
    do
    {
      if (v36 < *(v59 + 4 * v35))
      {
        v36 = *(v59 + 4 * v35);
        v34 = v35;
      }

      ++v35;
    }

    while (v58 > v35);
  }

  else
  {
    v36 = 0.0;
  }

  log_OutText(*(*(a1 + 48) + 32), "NN_TOBESPELLED", 5, 0, "results (threshold=%1.5lf)", v31, v32, v33, COERCE__INT64(*(a1 + 188)));
  if (v58)
  {
    v39 = 0;
    for (i = 0; i < v58; v39 = ++i)
    {
      v41 = *(*(a1 + 48) + 32);
      v42 = *(v59 + 4 * i);
      StringList_GetAt(*(a1 + 176), i);
      log_OutText(v41, "NN_TOBESPELLED", 5, 0, "[%3d] %1.5lf : %s %s", v43, v44, v45, v39);
    }
  }

  if (*(a1 + 168) != v34)
  {
    v51 = *(*(a1 + 48) + 32);
    v52 = StringList_GetAt(*(a1 + 176), v34);
    StringList_GetAt(*(a1 + 176), *(a1 + 168));
    log_OutText(v51, "NN_TOBESPELLED", 5, 0, "blocked selected prediction %s; not target label %s", v53, v54, v55, v52);
    goto LABEL_46;
  }

  if (v36 < *(a1 + 188))
  {
    v46 = *(*(a1 + 48) + 32);
    v47 = StringList_GetAt(*(a1 + 176), v34);
    v56 = *(a1 + 188);
    log_OutText(v46, "NN_TOBESPELLED", 5, 0, "blocked selected prediction %s; value %1.5lf below pattern threshold %1.5lf", v48, v49, v50, v47);
LABEL_46:
    v30 = 0;
    goto LABEL_35;
  }

  v30 = 0;
  *v57 = 1;
LABEL_35:
  if (v60)
  {
    heap_Free(*(*(a1 + 48) + 8), v60);
  }

  return v30;
}

uint64_t _ToBeSpelled_PostFIDeinit(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1)
  {
    OOC_PlacementDeleteObject(a1 + 56, v1);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  return 0;
}

uint64_t _ToBeSpelled_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0 || (v2 = *(*(a1 + 128) + 16), NullHandle = safeh_GetNullHandle(), v4 = *(a1 + 32), v5 = *(a1 + 40), (v2(NullHandle) & 0x80000000) != 0))
  {
    v11 = "nn_word_lkp_GetInterface";
  }

  else
  {
    if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), a1 + 152) & 0x80000000) == 0)
    {
      v6 = *(a1 + 152);
      if (v6 != *(a1 + 116))
      {
        err_GenerateErrorInternalMsg("Mismatch between __word2vecVecLength and __inshape_dim2");
        v6 = *(a1 + 152);
      }

      *(a1 + 120) = *(a1 + 112);
      v7 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v6);
      *(a1 + 160) = v7;
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);

        return PNEW_StringList_Con(a1 + 56, v8, v9, (a1 + 192));
      }

      else
      {

        return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
      }
    }

    v11 = "__pIWordLkp->pfGetVectorLength";
  }

  return err_GenerateErrorInternalMsg(v11);
}

uint64_t _ToBeSpelled_PreFIDeinit(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[20] = 0;
  }

  v3 = a1[24];
  if (v3)
  {
    OOC_PlacementDeleteObject((a1 + 7), v3);
    a1[24] = 0;
  }

  if (a1[16])
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[17], a1[18], NullHandle, v5))
    {
      (*(a1[16] + 24))(a1[17], a1[18]);
      a1[17] = safeh_GetNullHandle();
      a1[18] = v6;
    }

    a1[16] = 0;
  }

  return 0;
}

uint64_t _ToBeSpelled_PreFIInit(uint64_t a1, _DWORD *a2)
{
  __s2 = 0;
  v14 = 0;
  *a2 = 0;
  CfgParamValueString = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", &v14);
  if (CfgParamValueString || ((CfgParamValueString = Params_GetCfgParamValueString(v14, "nntobespelled_prediction", &__s2), !CfgParamValueString) ? (v5 = __s2 == 0) : (v5 = 1), v5 || (CfgParamValueString = Params_GetCfgParamValueListOfStrings(v14, "nntobespelled_labels", 0x3Bu, (a1 + 176)), CfgParamValueString)))
  {
LABEL_17:
    CfgParamValueFloat = CfgParamValueString;
    goto LABEL_18;
  }

  v6 = *(a1 + 176);
  if (!v6)
  {
    *(a1 + 184) = 0;
LABEL_15:
    v10 = "Unexpected";
LABEL_16:
    CfgParamValueString = err_GenerateErrorInternalMsg(v10);
    goto LABEL_17;
  }

  CountStrings = StringList_GetCountStrings(v6);
  *(a1 + 184) = CountStrings;
  if (!CountStrings)
  {
    goto LABEL_15;
  }

  v8 = 0;
  *a2 = 0;
  while (1)
  {
    if (*(a1 + 184) <= v8)
    {
      v10 = "Prediction does not exists";
      goto LABEL_16;
    }

    v9 = StringList_GetAt(*(a1 + 176), v8);
    if (!strcmp(v9, __s2))
    {
      break;
    }

    ++v8;
    if (*a2)
    {
      goto LABEL_25;
    }
  }

  *(a1 + 168) = v8;
  *a2 = 1;
LABEL_25:
  CfgParamValueFloat = Params_GetCfgParamValueFloat(v14, "nntobespelled_patternThreshold", (a1 + 188), 0.6);
  if (CfgParamValueFloat)
  {
    *a2 = 0;
  }

LABEL_18:
  if (v14)
  {
    OOC_PlacementDeleteObject(a1 + 56, v14);
  }

  if (__s2)
  {
    heap_Free(*(*(a1 + 48) + 8), __s2);
  }

  return CfgParamValueFloat;
}

uint64_t PNEW_ToBeSpelled_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 200, &v14);
  result = v14;
  if (!v14)
  {
    result = ToBeSpelled_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t G2POneWord_Des(uint64_t *a1)
{
  result = _Model_Unload(a1);
  if (!result)
  {
    v3 = a1[18];
    if (v3)
    {
      heap_Free(*(a1[6] + 8), v3);
      a1[18] = 0;
    }

    return Model_Des(a1);
  }

  return result;
}

uint64_t G2POneWord_Predict(uint64_t a1, char *a2, void *a3)
{
  v43 = 0;
  v44 = 0;
  v42 = 0;
  if (!a2 || !*a2)
  {
    v11 = 0;
LABEL_8:
    IsUpdatable = 0;
    *a3 = "";
    goto LABEL_9;
  }

  v47 = 0;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v6 = StringList_Con(v45, *(a1 + 32), *(a1 + 40));
  if (v6 || (v6 = StringList_FromSplitStringInUtf8(v45, a2, 0xFFFF, 0, 0, &v47), v6))
  {
    IsUpdatable = v6;
    StringList_Des(v45);
    v11 = 0;
LABEL_6:
    log_OutText(*(*(a1 + 48) + 32), "NN_G2PONEWORD", 0, 0, "%s : Error extracting features", v8, v9, v10, a2);
    goto LABEL_9;
  }

  v13 = strlen(a2);
  v14 = heap_Alloc(*(*(a1 + 48) + 8), v13 + 1);
  v11 = v14;
  if (v14 && (*v14 = 0, v14 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 132)), (v44 = v14) != 0))
  {
    v16 = v14;
    v17 = *(a1 + 132);
    if (v17)
    {
      v18 = 0;
      LOWORD(v15) = *(a1 + 136);
      v15 = LODWORD(v15);
      do
      {
        *(v14 + v18++) = v15;
      }

      while (v17 > v18);
    }

    if (v47)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = StringList_GetAt(v45, v20);
        Index = StringList_GetIndex(*(a1 + 120), v21);
        if (Index != 0xFFFF)
        {
          v23 = Index;
          strcat(v11, v21);
          v15 = v23;
          *(v16 + v19++) = v23;
          if (*(a1 + 132) - 1 == v19)
          {
            break;
          }
        }

        ++v20;
      }

      while (v47 > v20);
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    LOWORD(v15) = *(a1 + 138);
    *(v16 + v24) = LODWORD(v15);
    StringList_Des(v45);
  }

  else
  {
    IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(v14);
    StringList_Des(v45);
    if (IsUpdatable)
    {
      goto LABEL_6;
    }
  }

  if (!*v11)
  {
    goto LABEL_8;
  }

  if ((fi_predict(*(a1 + 104), &v44, 1, &v43, v25, v8, v9, v10) & 0x80000000) != 0)
  {
    v31 = "nn_g2poneword:fi_predict";
LABEL_41:
    ErrorInternalMsg = err_GenerateErrorInternalMsg(v31);
LABEL_42:
    IsUpdatable = ErrorInternalMsg;
    goto LABEL_9;
  }

  if ((fi_shape_get_size((**(a1 + 104) + 92), &v42) & 0x80000000) != 0)
  {
    v31 = "nn_g2poneword:fi_shape_get_size";
    goto LABEL_41;
  }

  if (v42)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *(v43 + 4 * v26);
      if (*(a1 + 138) == v28)
      {
        break;
      }

      v29 = StringList_GetAt(*(a1 + 120), v28);
      if (v29)
      {
        v27 += strlen(v29);
      }

      ++v26;
    }

    while (v26 < v42);
    v30 = v27 + 1;
  }

  else
  {
    v30 = 1;
  }

  v33 = heap_Realloc(*(*(a1 + 48) + 8), *(a1 + 144), v30);
  *(a1 + 144) = v33;
  if (!a3)
  {
    ErrorInternalMsg = kaldi::nnet1::UpdatableComponent::IsUpdatable(v33);
    goto LABEL_42;
  }

  *v33 = 0;
  if (v42)
  {
    for (i = 0; i < v42; ++i)
    {
      v35 = *(v43 + 4 * i);
      if (*(a1 + 138) == v35)
      {
        break;
      }

      v36 = StringList_GetAt(*(a1 + 120), v35);
      if (v36)
      {
        strcat(*(a1 + 144), v36);
      }
    }
  }

  *a3 = *(a1 + 144);
  v40 = strcmp(a2, v11);
  v41 = *(*(a1 + 48) + 32);
  if (v40)
  {
    log_OutText(v41, "NN_G2PONEWORD", 4, 0, "(warning: word was [%s]) [%s]  --> [%s]", v37, v38, v39, a2);
  }

  else
  {
    log_OutText(v41, "NN_G2PONEWORD", 4, 0, "[%s] --> [%s]", v37, v38, v39, v11);
  }

  IsUpdatable = 0;
LABEL_9:
  if (v44)
  {
    heap_Free(*(*(a1 + 48) + 8), v44);
    v44 = 0;
  }

  if (v11)
  {
    heap_Free(*(*(a1 + 48) + 8), v11);
  }

  return IsUpdatable;
}

uint64_t _G2POneWord_PostFIDeinit(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    OOC_PlacementDeleteObject(a1 + 56, v1);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  return 0;
}

uint64_t _G2POneWord_PostFIInit(_DWORD *a1)
{
  v1 = a1[29];
  a1[33] = a1[28];
  if (v1 == -1)
  {
    return 0;
  }

  else
  {
    return err_GenerateErrorInternalMsg("nn_g2poneword:only supports 1D inshape");
  }
}

uint64_t _G2POneWord_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v13 = 0;
  __s = 0;
  *a2 = 0;
  CfgParamValueString = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", &v13);
  if (CfgParamValueString)
  {
    goto LABEL_8;
  }

  CfgParamValueString = Params_GetCfgParamValueString(v13, "nn_g2poneword_vocab_separator", &__s);
  if (CfgParamValueString)
  {
    goto LABEL_8;
  }

  v5 = __s && strlen(__s) == 1 ? *__s : 124;
  CfgParamValueString = Params_GetCfgParamValueListOfStrings(v13, "nn_g2poneword_vocab", v5, (a1 + 120));
  if (CfgParamValueString)
  {
    goto LABEL_8;
  }

  v8 = *(a1 + 120);
  if (v8)
  {
    CountStrings = StringList_GetCountStrings(v8);
    *(a1 + 128) = CountStrings;
    if (CountStrings)
    {
      Index = StringList_GetIndex(*(a1 + 120), "<pad>");
      *(a1 + 136) = Index;
      if (Index == 0xFFFF)
      {
        v12 = "nn_g2poneword:missing <pad> in vocab";
      }

      else
      {
        v11 = StringList_GetIndex(*(a1 + 120), "<EOS>");
        *(a1 + 138) = v11;
        if (v11 != 0xFFFF)
        {
          v6 = 0;
          *a2 = 1;
          goto LABEL_9;
        }

        v12 = "nn_g2poneword:missing <EOS> in vocab";
      }

      CfgParamValueString = err_GenerateErrorInternalMsg(v12);
LABEL_8:
      v6 = CfgParamValueString;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  if (__s)
  {
    heap_Free(*(*(a1 + 48) + 8), __s);
    __s = 0;
  }

  if (v13)
  {
    OOC_PlacementDeleteObject(a1 + 56, v13);
  }

  return v6;
}

uint64_t PNEW_G2POneWord_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 152, &v14);
  result = v14;
  if (!v14)
  {
    result = _Model_Con(v12, a2, a3, a4, a5);
    if (result)
    {
      v14 = result;
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *v12 = &__G2POneWord;
      *(v12 + 120) = 0;
      *(v12 + 128) = 0;
      *(v12 + 132) = 0xFFFFFFFF00000000;
      *(v12 + 144) = 0;
      *a6 = v12;
    }
  }

  return result;
}

uint64_t CGN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a1 = &__CGN;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = safeh_GetNullHandle();
    *(a1 + 144) = v7;
    *(a1 + 152) = safeh_GetNullHandle();
    *(a1 + 160) = v8;
    *(a1 + 208) = 0;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0;
  }

  return v6;
}

uint64_t CGN_Des(uint64_t *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  result = _Model_Unload(a1);
  if (!result)
  {

    return Model_Des(a1);
  }

  return result;
}

uint64_t CGN_LoadModel(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (strcpy(v8, __s), v9 = strlen(__s), (v8 = heap_Alloc(*(*(a1 + 48) + 8), v9 + 8)) != 0))
  {
    v10 = v8;
    *v8 = 0x5F6E67635F6E6ELL;
    strcat(v8, __s);
    v11 = _Model_Load(a1, v10, a3);
    heap_Free(*(*(a1 + 48) + 8), v10);
    return v11;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(v8);
  }
}

uint64_t CGN_Models(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v11 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  Allocator = ooc_utils_createAllocator(v9, a1, a2);
  if (!Allocator)
  {
    v6 = PNEW_Params_Con(v9, a1, a2, "fecfg", &v11);
    v7 = v11;
    if (!v6)
    {
      Allocator = Params_GetCfgParamValueListOfStrings(v11, "nn_cgn_models", 0x3Bu, &v12);
      v7 = v11;
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    Allocator = v6;
    if (v11)
    {
LABEL_4:
      OOC_PlacementDeleteObject(v9, v7);
    }
  }

LABEL_5:
  kaldi::nnet1::Component::IsUpdatable(v9);
  return Allocator;
}

uint64_t CGN_Predict(uint64_t a1, const char *a2, uint64_t a3, void *a4, int *a5)
{
  __s = 0;
  v30 = 0;
  v10 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 184) * *(a1 + 186));
  v28 = v10;
  if (!v10)
  {
    IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
LABEL_16:
    ErrorInternalMsg = IsUpdatable;
    goto LABEL_17;
  }

  v11 = v10;
  IsUpdatable = PNEW_WordScanner_ConFrom(a1 + 56, a2, a3, &v30);
  if (IsUpdatable)
  {
    goto LABEL_16;
  }

  v17 = *(a1 + 194);
  v18 = *(a1 + 186);
  IsUpdatable = __CGN_CloneWord(a1, v30, &__s);
  if (IsUpdatable)
  {
    goto LABEL_16;
  }

  v19 = (v11 + 4 * v18 * v17);
  IsUpdatable = __CGN_FeaturesCurrent(a1, __s, v19);
  if (IsUpdatable)
  {
    goto LABEL_16;
  }

  if (*(a1 + 194))
  {
    v20 = 0;
    do
    {
      v19 += 4 * *(a1 + 186);
      if (WordScanner_NextWord(v30))
      {
        IsUpdatable = __CGN_CloneWord(a1, v30, &__s);
        if (IsUpdatable)
        {
          goto LABEL_16;
        }

        IsUpdatable = __CGN_FeaturesCurrent(a1, __s, v19);
        if (IsUpdatable)
        {
          goto LABEL_16;
        }
      }

      else if (*(a1 + 186))
      {
        memset_pattern16(v19, &unk_1C37BD390, 4 * *(a1 + 186));
      }

      ++v20;
      v21 = *(a1 + 194);
    }

    while (v20 < v21);
    v11 = v28;
  }

  else
  {
    v21 = 0;
  }

  v25 = *(a1 + 186);
  IsUpdatable = WordScanner_ResetFrom(v30, a3);
  if (IsUpdatable)
  {
    goto LABEL_16;
  }

  if (*(a1 + 194))
  {
    v26 = 0;
    v27 = (v11 + 4 * v21 * v25);
    while (1)
    {
      v27 -= 4 * *(a1 + 186);
      if (WordScanner_PrevWord(v30))
      {
        IsUpdatable = __CGN_CloneWord(a1, v30, &__s);
        if (IsUpdatable)
        {
          goto LABEL_16;
        }

        IsUpdatable = __CGN_FeaturesCurrent(a1, __s, v27);
        if (IsUpdatable)
        {
          goto LABEL_16;
        }
      }

      else if (*(a1 + 186))
      {
        memset_pattern16(v27, &unk_1C37BD390, 4 * *(a1 + 186));
      }

      ErrorInternalMsg = 0;
      if (++v26 >= *(a1 + 194))
      {
        goto LABEL_17;
      }
    }
  }

  ErrorInternalMsg = 0;
LABEL_17:
  if (v30)
  {
    OOC_PlacementDeleteObject(a1 + 56, v30);
  }

  if (__s)
  {
    heap_Free(*(*(a1 + 48) + 8), __s);
  }

  if (!ErrorInternalMsg)
  {
    if ((fi_predict(*(a1 + 104), &v28, *(a1 + 184), a4, v13, v14, v15, v16) & 0x80000000) != 0)
    {
      v23 = "fi_predict";
    }

    else
    {
      if ((fi_shape_get_size((**(a1 + 104) + 92), a5) & 0x80000000) == 0)
      {
        ErrorInternalMsg = 0;
        goto LABEL_28;
      }

      v23 = "fi_shape_get_size";
    }

    ErrorInternalMsg = err_GenerateErrorInternalMsg(v23);
  }

LABEL_28:
  if (v28)
  {
    heap_Free(*(*(a1 + 48) + 8), v28);
  }

  return ErrorInternalMsg;
}

uint64_t _CGN_PostFIDeinit(void *a1)
{
  *(a1 + 196) = 0;
  *(a1 + 190) = 0;
  v2 = a1[26];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
  }

  a1[26] = 0;
  return 0;
}

uint64_t _CGN_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v15 = "nn_word_lkp_GetInterface";
  }

  else
  {
    v2 = *(*(a1 + 128) + 16);
    NullHandle = safeh_GetNullHandle();
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    if ((v2(NullHandle) & 0x80000000) == 0)
    {
      v6 = *(*(a1 + 128) + 16);
      v7 = safeh_GetNullHandle();
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      if ((v6(v7) & 0x80000000) == 0)
      {
        v17 = 0;
        if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v17) & 0x80000000) == 0)
        {
          if (v17 != *(a1 + 196))
          {
            v16 = "word embedding dimension";
            return err_GenerateErrorInternalMsg(v16);
          }

          if (((*(*(a1 + 128) + 40))(*(a1 + 152), *(a1 + 160), &v17) & 0x80000000) == 0)
          {
            if (v17 == *(a1 + 198))
            {
              v10 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 196));
              *(a1 + 168) = v10;
              if (!v10)
              {
                return kaldi::nnet1::UpdatableComponent::IsUpdatable(v10);
              }

              v10 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 198));
              *(a1 + 176) = v10;
              if (!v10)
              {
                return kaldi::nnet1::UpdatableComponent::IsUpdatable(v10);
              }

              v11 = (2 * *(a1 + 194)) | 1;
              *(a1 + 184) = v11;
              if (*(a1 + 112) == v11)
              {
                v12 = strlen(*(a1 + 208));
                *(a1 + 188) = v12;
                v13 = *(a1 + 196) + (*(a1 + 192) + *(a1 + 190)) * *(a1 + 198);
                *(a1 + 186) = v13;
                if (*(a1 + 200))
                {
                  v13 += v12 + 2;
                  *(a1 + 186) = v13;
                }

                if (*(a1 + 116) == v13)
                {
                  return 0;
                }

                v16 = "inshape dimension 2";
              }

              else
              {
                v16 = "inshape dimension 1";
              }
            }

            else
            {
              v16 = "char embedding dimension";
            }

            return err_GenerateErrorInternalMsg(v16);
          }
        }

        v16 = "__pIWordLkp->pfGetVectorLength";
        return err_GenerateErrorInternalMsg(v16);
      }
    }

    v15 = "__pIWordLkp->pfObjOpen";
  }

  return err_GenerateErrorInternalMsg(v15);
}

uint64_t _CGN_PreFIDeinit(void *a1)
{
  if (a1[16])
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[17], a1[18], NullHandle, v3))
    {
      (*(a1[16] + 24))(a1[17], a1[18]);
      a1[17] = safeh_GetNullHandle();
      a1[18] = v4;
    }

    v5 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[19], a1[20], v5, v6))
    {
      (*(a1[16] + 24))(a1[19], a1[20]);
      a1[19] = safeh_GetNullHandle();
      a1[20] = v7;
    }

    a1[16] = 0;
  }

  v8 = a1[21];
  if (v8)
  {
    heap_Free(*(a1[6] + 8), v8);
  }

  v9 = a1[22];
  a1[21] = 0;
  if (v9)
  {
    heap_Free(*(a1[6] + 8), v9);
  }

  *(a1 + 182) = 0;
  a1[22] = 0;
  return 0;
}

uint64_t _CGN_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v11 = 0;
  *v12 = 0;
  __s1 = 0;
  *a2 = 0;
  ParamValueUnsignedShort = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", v12);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v12, "concatenatedLeftChars", 0, (a1 + 190), &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v12, "concatenatedRightChars", 3, (a1 + 192), &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v12, "wordContextWindow", 5, (a1 + 194), &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v12, "wordEmbeddingDimension", 0, (a1 + 196), &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v12, "charEmbeddingDimension", 0, (a1 + 198), &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_FullParamName(a1, "wordPUNCTFeatureEnabled", &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = Params_GetCfgParamValueString(*v12, v11, &__s1);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  *(a1 + 200) = 1;
  v5 = __s1;
  if (__s1)
  {
    if (!strcmp(__s1, "False"))
    {
      *(a1 + 200) = 0;
    }

    heap_Free(*(*(a1 + 48) + 8), v5);
  }

  ParamValueUnsignedShort = __CGN_FullParamName(a1, "wordPUNCTLoadList", &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = Params_GetCfgParamValueString(*v12, v11, &__s1);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  v8 = __s1;
  if (!__s1)
  {
    v9 = heap_Alloc(*(*(a1 + 48) + 8), 1);
    __s1 = v9;
    if (!v9)
    {
      ParamValueUnsignedShort = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
LABEL_15:
      v6 = ParamValueUnsignedShort;
      goto LABEL_16;
    }

    *v9 = 0;
    v8 = __s1;
  }

  v6 = 0;
  *(a1 + 208) = v8;
  *a2 = 1;
LABEL_16:
  if (*v12)
  {
    OOC_PlacementDeleteObject(a1 + 56, *v12);
  }

  if (v11)
  {
    heap_Free(*(*(a1 + 48) + 8), v11);
  }

  return v6;
}

uint64_t __CGN_GetParamValueUnsignedShort(uint64_t a1, uint64_t a2, char *__s, int a4, _WORD *a5, uint64_t *a6)
{
  result = __CGN_FullParamName(a1, __s, a6);
  if (!result)
  {
    v11 = 0;
    result = Params_GetCfgParamValueInteger(a2, *a6, a4, &v11);
    if (!result)
    {
      *a5 = v11;
    }
  }

  return result;
}

uint64_t __CGN_FullParamName(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *a3;
  v8 = strlen(__s);
  v9 = strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    *v10 = 0x5F6E67635F6E6ELL;
    v12 = strcat(v10, *(a1 + 120));
    *&v11[strlen(v12)] = 95;
    strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
  }
}

uint64_t PNEW_CGN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 216, &v14);
  result = v14;
  if (!v14)
  {
    result = CGN_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t __CGN_CloneWord(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = WordScanner_WordLen(a2);
  v7 = *(*(a1 + 48) + 8);
  v8 = v6;
  v9 = heap_Realloc(v7, *a3, v6 + 1);
  if (v9)
  {
    v10 = strncpy(v9, (*(a2 + 8) + *(a2 + 18)), v8);
    v10[v8] = 0;
    *a3 = v10;
    return 0;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
  }
}

uint64_t __CGN_FeaturesCurrent(uint64_t a1, char *__s, char *a3)
{
  v6 = __s;
  do
  {
    if (!__CGN_IsPunct(v6))
    {
      v8 = strlen(__s);
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v8);
      v10 = v8;
      if (__CGN_IsPunct(&__s[PreviousUtf8Offset]))
      {
        v11 = PreviousUtf8Offset;
        do
        {
          v10 = PreviousUtf8Offset;
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v11);
          v11 = PreviousUtf8Offset;
        }

        while (__CGN_IsPunct(&__s[PreviousUtf8Offset]));
      }

      i = 0;
      if (*(a1 + 200))
      {
        v12 = &a3[4 * *(a1 + 186) + -4 * (*(a1 + 188) + 2)];
        bzero(v12, 4 * (*(a1 + 188) + 2));
        i = 1;
        if (v6 > __s)
        {
          v13 = __s;
          do
          {
            __CGN_InPunctList(a1, v13, v12, &i);
            v14 = utf8_determineUTF8CharLength(*v13);
            if (i)
            {
              *&v12[4 * *(a1 + 188)] = 1065353216;
            }

            v13 += v14;
          }

          while (v13 < v6);
        }

        v15 = v10;
        v16 = &__s[v10];
        for (i = 1; *v16; v16 += v17)
        {
          __CGN_InPunctList(a1, v16, v12, &i);
          v17 = utf8_determineUTF8CharLength(*v16);
          if (i)
          {
            *&v12[4 * *(a1 + 188) + 4] = 1065353216;
          }
        }
      }

      else
      {
        v15 = v10;
      }

      __s[v15] = 0;
      v18 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), v6, *(a1 + 168));
      if ((v18 & 0x1FFF) != 0x14)
      {
        v22 = 0;
        goto LABEL_31;
      }

      v19 = *(*(a1 + 48) + 8);
      v20 = Utf8_Utf8NbrOfSymbols(v6);
      v21 = heap_Alloc(v19, (6 * v20) | 1);
      if (!v21)
      {
        IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
        goto LABEL_41;
      }

      v22 = v21;
      v23 = strlen(v6);
      v24 = v22;
      v25 = v23;
      if (v23)
      {
        NextUtf8OffsetLimit = 0;
        v24 = v22;
        do
        {
          utf8_ToLower(v6, NextUtf8OffsetLimit, v24);
          v24 += utf8_determineUTF8CharLength(*v24);
          NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(v6, NextUtf8OffsetLimit, v25);
        }

        while (NextUtf8OffsetLimit < v25);
      }

      *v24 = 0;
      v27 = strcmp(v22, v6);
      v28 = *(a1 + 136);
      v29 = *(*(a1 + 128) + 56);
      v30 = *(a1 + 168);
      v31 = *(a1 + 144);
      if (v27)
      {
        v18 = v29(v28, v31, v22, v30);
        if ((v18 & 0x1FFF) != 0x14)
        {
          goto LABEL_31;
        }

        v18 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", *(a1 + 168));
      }

      else
      {
        v18 = v29(v28, v31, "$MEANW2V$", v30);
      }

      if ((v18 & 0x1FFF) == 0x14)
      {
        v33 = "mean vector";
        goto LABEL_39;
      }

LABEL_31:
      if ((v18 & 0x80000000) == 0)
      {
        IsUpdatable = 0;
        if (!v22)
        {
LABEL_41:
          if (!IsUpdatable)
          {
            memcpy(a3, *(a1 + 168), 4 * *(a1 + 196));
            v34 = &a3[4 * *(a1 + 196)];
            v35 = Utf8_Utf8NbrOfSymbols(v6);
            v36 = *(a1 + 192);
            v37 = v36 + *(a1 + 190);
            if (v37 + 1 >= v35)
            {
              if (v36 + *(a1 + 190))
              {
                v47 = 0;
                do
                {
                  if (*v6)
                  {
                    v48 = utf8_determineUTF8CharLength(*v6);
                    __strncpy_chk();
                    v50[v48] = 0;
                    v41 = __CGN_CharLookup(a1, v50);
                    if (v41)
                    {
                      return v41;
                    }

                    v6 += v48;
                    memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                  }

                  else
                  {
                    bzero(v34, 4 * *(a1 + 198));
                  }

                  v34 += 4 * *(a1 + 198);
                  ++v47;
                }

                while (v47 < v37);
              }
            }

            else
            {
              if (*(a1 + 190))
              {
                v38 = 0;
                v39 = v6;
                while (1)
                {
                  v40 = utf8_determineUTF8CharLength(*v39);
                  __strncpy_chk();
                  v50[v40] = 0;
                  v41 = __CGN_CharLookup(a1, v50);
                  if (v41)
                  {
                    return v41;
                  }

                  v39 += v40;
                  memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                  v34 += 4 * *(a1 + 198);
                  if (++v38 >= *(a1 + 190))
                  {
                    v36 = *(a1 + 192);
                    break;
                  }
                }
              }

              if (v36)
              {
                v42 = strlen(v6);
                v43 = 0;
                do
                {
                  v42 = utf8_GetPreviousUtf8Offset(v6, v42);
                  ++v43;
                }

                while (v43 < *(a1 + 192));
                if (*(a1 + 192))
                {
                  v44 = 0;
                  v45 = &v6[v42];
                  do
                  {
                    v46 = utf8_determineUTF8CharLength(*v45);
                    __strncpy_chk();
                    v50[v46] = 0;
                    IsUpdatable = __CGN_CharLookup(a1, v50);
                    if (IsUpdatable)
                    {
                      break;
                    }

                    v45 += v46;
                    memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                    v34 += 4 * *(a1 + 198);
                    ++v44;
                  }

                  while (v44 < *(a1 + 192));
                  return IsUpdatable;
                }
              }
            }

            return 0;
          }

          return IsUpdatable;
        }

LABEL_40:
        heap_Free(*(*(a1 + 48) + 8), v22);
        goto LABEL_41;
      }

      v33 = "__pIWordLkp->pfWord2fVector";
LABEL_39:
      IsUpdatable = err_GenerateErrorInternalMsg(v33);
      if (!v22)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    v6 += utf8_determineUTF8CharLength(*v6);
  }

  while (*v6);

  return kaldi::OffsetFileInputImpl::MyType("szWord");
}