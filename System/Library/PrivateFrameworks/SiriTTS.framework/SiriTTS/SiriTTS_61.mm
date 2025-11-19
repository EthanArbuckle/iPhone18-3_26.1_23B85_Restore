uint64_t hlp_udwl_Lookup(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *__s, uint64_t a8, uint64_t a9, _DWORD *a10, char *a11, unsigned __int16 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, _WORD *a18, _WORD *a19)
{
  v87[1] = *MEMORY[0x1E69E9840];
  v62 = 0;
  v86 = 0;
  v87[0] = 0;
  __s1 = __s;
  v64[0] = udwl_nbs_TakeAsIs;
  v64[1] = &__s1;
  v64[2] = &__s1;
  v65 = 0;
  v66 = udwl_nbs_TrimBlanksAndMatchingQuotes;
  p_s1 = &__s1;
  v68 = &v86;
  v69 = 0;
  v70 = udwl_nbs_TrimHeadAndTail;
  v71 = &v86;
  v72 = v87;
  v73 = 0;
  v74 = udwl_nbs_TrimTrailingDots;
  v75 = v87;
  v76 = &v86;
  v77 = 0;
  v78 = udwl_nbs_ToLower;
  v79 = v87;
  v80 = &v86;
  v82 = udwl_nbs_TrimTrailingDots;
  v83 = &v86;
  v84 = v87;
  v81 = 0;
  v85 = 0;
  if (__s)
  {
    v20 = 2323652628;
    if (a3 && a4)
    {
      v27 = strlen(__s) + 1;
      v28 = heap_Alloc(*(a2 + 8), v27);
      v86 = v28;
      if (v28 && (bzero(v28, v27), v29 = heap_Alloc(*(a2 + 8), v27), (v87[0] = v29) != 0))
      {
        v60 = a1;
        v59 = a5;
        v61 = a6;
        bzero(v29, v27);
        v30 = 0;
        v57 = *a12;
        v58 = v27;
        while (1)
        {
          v31 = &v64[4 * v30];
          v20 = (*v31)(*v31[1], *v31[2], v27, &v62, v31 + 3);
          if ((v20 & 0x80001FFF) == 0x80000009)
          {
            v32 = 0;
            while (v32 < 3)
            {
              v27 = 2 * v27 + 10;
              v33 = heap_Realloc(*(a2 + 8), v86, v27 & 0xFFFE);
              v86 = v33;
              if (!v33)
              {
                goto LABEL_27;
              }

              bzero(v33, v27 & 0xFFFE);
              v34 = heap_Realloc(*(a2 + 8), v87[0], v27 & 0xFFFE);
              v87[0] = v34;
              if (!v34)
              {
                goto LABEL_27;
              }

              ++v32;
              bzero(v34, v27 & 0xFFFE);
              v20 = (*v31)(*v31[1], *v31[2], v27, &v62, v31 + 3);
              if ((v20 & 0x80001FFF) != 0x80000009)
              {
                goto LABEL_13;
              }
            }

            goto LABEL_36;
          }

LABEL_13:
          if (v62)
          {
            v35 = *v31[2];
            v36 = v60 ? (*(a3 + 120))(a4, v59, v35, a12, a11, a16) : (*(a3 + 112))(a4, v59, v35, a8, a9, a12, a11, a10, a13, a14, a15, a17);
            v20 = v36;
            if ((v36 & 0x1FFF) != 0x14 && (v36 & 0x1FFF) != 0x404 && v36 < 1)
            {
              break;
            }
          }

          v38 = 0;
          v39 = v30 + 1;
          if (v61)
          {
            if (v30++ < 5)
            {
              continue;
            }
          }

          goto LABEL_43;
        }

        if ((v36 & 0x80000000) == 0)
        {
          LODWORD(v20) = 0;
          v38 = 1;
          if (a18 && a19)
          {
            v43 = __s1;
            *a18 = 0;
            v44 = &v64[4 * v30];
            v45 = *v44[1];
            v20 = *v44[2];
            v46 = strstr(v45, v20);
            if (v46)
            {
              v47 = v46 - v45;
              *a18 = v46 - v45;
              if (v30)
              {
                v47 += v69;
                *a18 = v47;
                if (v30 != 1)
                {
                  v47 += v73;
                  *a18 = v47;
                }
              }
            }

            else
            {
              v47 = 0;
            }

            v48 = strlen(v43);
            v49 = strlen(v20);
            LODWORD(v20) = 0;
            *a19 = v48 - v47 - v49;
          }

          v39 = v30;
LABEL_43:
          if (*a10 == 4)
          {
            if (v39 == 4 && v62)
            {
              v50 = __s1;
              v51 = *v80;
              v52 = *v79;
              v53 = v58;
              v54 = a11;
              v55 = a12;
              v56 = v57;
              goto LABEL_49;
            }

            if (v38)
            {
              v50 = __s1;
              v51 = *v64[4 * v39 + 2];
              v53 = v58;
              v54 = a11;
              v55 = a12;
              v56 = v57;
              v52 = 0;
LABEL_49:
              LODWORD(v20) = udwl_RestoreHeadAndTail(v54, v55, v56, v50, v53, v51, v52);
            }
          }

          if (v86)
          {
            heap_Free(*(a2 + 8), v86);
          }

          if (v87[0])
          {
            heap_Free(*(a2 + 8), v87[0]);
          }

          if (v38)
          {
            v20 = v20;
          }

          else
          {
            v20 = 2323652628;
          }

          goto LABEL_28;
        }

LABEL_36:
        if (v86)
        {
          heap_Free(*(a2 + 8), v86);
        }

        if (v87[0])
        {
          heap_Free(*(a2 + 8), v87[0]);
        }
      }

      else
      {
LABEL_27:
        v20 = 2323652618;
      }
    }
  }

  else
  {
    v20 = 2323652615;
  }

LABEL_28:
  v41 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t udwl_nbs_TakeAsIs(char *__s, char *a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v9 = 2323652615;
  if (__s && a2)
  {
    if (__s == a2)
    {
      if (a4)
      {
        *a4 = 1;
      }

      if (!a5)
      {
        return 0;
      }
    }

    else
    {
      if (strlen(__s) >= a3)
      {
        return 2323652617;
      }

      strcpy(a2, __s);
      if (a4)
      {
        *a4 = 1;
      }

      if (!a5)
      {
        return 0;
      }
    }

    v9 = 0;
    *a5 = 0;
  }

  return v9;
}

uint64_t udwl_nbs_TrimBlanksAndMatchingQuotes(char *__s, char *a2, uint64_t a3, _DWORD *a4, unsigned int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  result = 2323652615;
  if (__s && a2 && *__s)
  {
    NextUtf8Offset = 0;
    v11 = strlen(__s);
    if (!v11)
    {
      goto LABEL_12;
    }

    while (utf8_BelongsToSet(0, __s, NextUtf8Offset, v11))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
      if (NextUtf8Offset >= v11)
      {
        goto LABEL_12;
      }
    }

    if (utf8_BelongsToSet(7u, __s, NextUtf8Offset, v11))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
      v12 = 0;
    }

    else
    {
LABEL_12:
      v12 = 1;
    }

    if (NextUtf8Offset >= v11)
    {
      return 2323652628;
    }

    else
    {
      while (utf8_BelongsToSet(0, __s, NextUtf8Offset, v11))
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
        if (NextUtf8Offset >= v11)
        {
          return 2323652628;
        }
      }

      if (a5)
      {
        *a5 = NextUtf8Offset;
      }

      PreviousUtf8Offset = v11;
      do
      {
        v14 = PreviousUtf8Offset;
        if (PreviousUtf8Offset <= NextUtf8Offset)
        {
          v17 = 1;
          goto LABEL_25;
        }

        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, PreviousUtf8Offset);
      }

      while (utf8_BelongsToSet(0, __s, PreviousUtf8Offset, v11));
      v15 = utf8_GetPreviousUtf8Offset(__s, v14);
      v16 = utf8_BelongsToSet(7u, __s, v15, v11);
      v17 = v16 == 0;
      if (v16)
      {
        v14 = v15;
      }

      do
      {
LABEL_25:
        v18 = v14 - NextUtf8Offset;
        if (v14 <= NextUtf8Offset)
        {
          break;
        }

        v14 = utf8_GetPreviousUtf8Offset(__s, v14);
      }

      while (utf8_BelongsToSet(0, __s, v14, v11));
      if (v18 == v11)
      {
        strcpy(a2, __s);
      }

      else
      {
        strncpy(a2, &__s[NextUtf8Offset], v18);
        a2[v18] = 0;
        if (a4)
        {
          *a4 = 1;
        }
      }

      if (v12 | v17)
      {
        return 2323652628;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t udwl_nbs_TrimHeadAndTail(char *__s, char *a2, unsigned int a3, _DWORD *a4, unsigned int *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = strlen(__s);
    if (!v11)
    {
      return 2323652628;
    }

    v12 = 0;
    while (1)
    {
      WCharFromUtf8 = utf8_GetWCharFromUtf8(__s, v12, v11);
      if (WCharFromUtf8 <= 129)
      {
        if (((WCharFromUtf8 - 60) > 0x3F || ((1 << (WCharFromUtf8 - 60)) & 0x8000000180000001) == 0) && (WCharFromUtf8 - 39) >= 2)
        {
LABEL_20:
          if (a5)
          {
            *a5 = v12;
          }

          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v11);
          NextUtf8Offset = v11;
          if (v12 < v11)
          {
            v17 = v11;
            do
            {
              NextUtf8Offset = v17;
              v17 = PreviousUtf8Offset;
              v18 = utf8_GetWCharFromUtf8(__s, PreviousUtf8Offset, v11);
              if (((v18 - 33) > 0x3C || ((1 << (v18 - 33)) & 0x1800000066000947) == 0) && ((v18 - 125) > 0x3E || ((1 << (v18 - 125)) & 0x4080000000A000A1) == 0) && ((v18 - 8217) > 0x21 || ((1 << (v18 - 25)) & 0x200000055) == 0) && utf8_GetWCharFromUtf8(__s, v17, v11) != 46)
              {
                break;
              }

              PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v17);
              NextUtf8Offset = v17;
            }

            while (v17 > v12);
          }

          if (utf8_GetWCharFromUtf8(__s, NextUtf8Offset, v11) == 46)
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
          }

          v19 = NextUtf8Offset - v12;
          if (a4 && v19 != v11)
          {
            *a4 = 1;
          }

          v10 = 2323652617;
          if (NextUtf8Offset != v12 && v19 < a3)
          {
            v10 = 0;
            strncpy(a2, &__s[v12], NextUtf8Offset - v12)[v19] = 0;
          }

          return v10;
        }
      }

      else if (((WCharFromUtf8 - 130) > 0x3D || ((1 << (WCharFromUtf8 + 126)) & 0x2004020080028005) == 0) && ((WCharFromUtf8 - 8216) > 0x21 || ((1 << (WCharFromUtf8 - 24)) & 0x200000055) == 0))
      {
        goto LABEL_20;
      }

      v12 = utf8_GetNextUtf8Offset(__s, v12);
      if (v12 >= v11)
      {
        return 2323652628;
      }
    }
  }

  return v10;
}

uint64_t udwl_nbs_TrimTrailingDots(char *__s, char *a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = strlen(__s);
    v12 = v11;
    if (a5)
    {
      *a5 = 0;
    }

    PreviousUtf8Offset = v11;
    do
    {
      v14 = PreviousUtf8Offset;
      if (!PreviousUtf8Offset)
      {
        break;
      }

      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, PreviousUtf8Offset);
    }

    while (utf8_GetWCharFromUtf8(__s, PreviousUtf8Offset, v12) == 46);
    if (a4 && v14 != v12)
    {
      *a4 = 1;
    }

    if (v14 >= a3)
    {
      return 2323652617;
    }

    else
    {
      strncpy(a2, __s, v14);
      v10 = 0;
      a2[v14] = 0;
    }
  }

  return v10;
}

uint64_t udwl_nbs_ToLower(char *__s, char *a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 2323652615;
  if (__s && a2 && *__s)
  {
    v11 = strlen(__s);
    v12 = v11;
    if (a5)
    {
      *a5 = 0;
    }

    *a2 = 0;
    if (v11)
    {
      NextUtf8Offset = 0;
      v14 = a3;
      while (1)
      {
        v15 = utf8_ToLower(__s, NextUtf8Offset, __sa);
        if (a4 && v15)
        {
          *a4 = 1;
        }

        v16 = strlen(__sa);
        if (strlen(a2) + v16 >= v14)
        {
          break;
        }

        strcat(a2, __sa);
        NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
        if (NextUtf8Offset >= v12)
        {
          goto LABEL_15;
        }
      }

      v10 = 2323652617;
    }

    else
    {
LABEL_15:
      v10 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t udwl_RestoreHeadAndTail(char *a1, _WORD *a2, signed int a3, char *__s1, __int16 a5, char *__s2, const char *a7)
{
  v14 = strstr(__s1, __s2);
  if (v14)
  {
    v15 = (v14 - __s1);
  }

  else if (a7)
  {
    v16 = strstr(__s1, a7);
    if (v16)
    {
      v15 = (v16 - __s1);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = 2323652615;
  if (a1 && a2 && __s1 && __s2)
  {
    v18 = a5 - 1;
    v19 = strlen(__s2);
    v20 = v19;
    v21 = *a2;
    if ((v21 + v18 - v19) <= a3)
    {
      v22 = v19;
      v23 = &a1[v15];
      if (v15)
      {
        memmove(&a1[v15], a1, v21);
        memmove(a1, __s1, v15);
        LODWORD(v21) = *a2;
      }

      v24 = v18 - v22;
      if ((v24 - v15) >= 1)
      {
        memmove(&v23[v21], &__s1[v15 + v20], v24 - v15);
        LOWORD(v21) = *a2;
      }

      v17 = 0;
      *a2 = v21 + v24;
    }

    else
    {
      return 2323652617;
    }
  }

  return v17;
}

uint64_t unixlit_replace_utf8char(unsigned __int8 *a1, char *a2)
{
  v3 = a1;
  v4 = utf8_determineUTF8CharLength(*a1);
  result = utf8_determineUTF8CharLength(*a2);
  v6 = result;
  if (v6 != v4)
  {
    v7 = &v3[v4];
    v8 = strlen(v7);
    result = memmove(&v3[v6], v7, v8 + 1);
  }

  if (v6 >= 1)
  {
    do
    {
      v9 = *a2++;
      *v3++ = v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t fe_unixlit_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v28 = 0;
  v29 = 0;
  v5 = 2321555463;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v29);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v29[6], "SYNTHSTREAM", &v28);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v29[6], "FE_DEPES", &v26);
  v9 = v29[6];
  if ((Object & 0x80000000) != 0)
  {
    v20 = "SYNTHSTREAM";
LABEL_29:
    objc_ReleaseObject(v9, v20);
    return Object;
  }

  v10 = objc_GetObject(v9, "FE_DCTLKP", &v27);
  if ((v10 & 0x80000000) != 0)
  {
    Object = v10;
    objc_ReleaseObject(v29[6], "SYNTHSTREAM");
    v9 = v29[6];
    v20 = "FE_DEPES";
    goto LABEL_29;
  }

  v11 = heap_Alloc(v29[1], 984);
  if (v11)
  {
    v16 = v11;
    *v11 = v29;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 56) = *(v28 + 8);
    v17 = v26;
    v18 = v27;
    v19 = *(v27 + 8);
    *(v11 + 24) = v19;
    *(v11 + 8) = *(v18 + 16);
    *(v11 + 48) = *(v17 + 8);
    *(v11 + 32) = *(v17 + 16);
    *(v11 + 952) = 0;
    *(v11 + 960) = 0;
    *(v11 + 968) = 0;
    *(v11 + 976) = 0;
    if (((*(v19 + 96))(*(v11 + 8), *(v11 + 16), "fecfg", "uselatin", &v25, &v24, &v23) & 0x80000000) != 0)
    {
      fe_unixlit_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    if (v24 == 1 && v25 && **v25 == 49)
    {
      *(v16 + 952) = 1;
    }

    v24 = 0;
    if (((*(*(v16 + 24) + 96))(*(v16 + 8), *(v16 + 16), "fecfg", "unixlitlatinsp", &v25, &v24, &v23) & 0x80000000) != 0)
    {
      fe_unixlit_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    if (v24 == 1 && v25 && **v25 == 49)
    {
      *(v16 + 956) = 1;
    }

    v24 = 0;
    v5 = (*(*(v16 + 24) + 96))(*(v16 + 8), *(v16 + 16), "fecfg", "lookupa2z", &v25, &v24, &v23);
    if ((v5 & 0x80000000) != 0)
    {
      fe_unixlit_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    if (v24 == 1 && v25 && **v25 == 49)
    {
      *(v16 + 960) = 1;
    }

    *a5 = v16;
    *(a5 + 8) = 62345;
    synstrmaux_InitStreamOpener(v16 + 64, *(*v16 + 32), "FE_UNIXLIT");
  }

  else
  {
    log_OutPublic(v29[4], "FE_UNIXLIT", 39000, 0, v12, v13, v14, v15, v22);
    objc_ReleaseObject(v29[6], "SYNTHSTREAM");
    objc_ReleaseObject(v29[6], "FE_DEPES");
    objc_ReleaseObject(v29[6], "FE_DCTLKP");
    return 2321555466;
  }

  return v5;
}

uint64_t fe_unixlit_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62345, 984);
  if ((result & 0x80000000) != 0)
  {
    return 2321555464;
  }

  if (a1)
  {
    v4 = *(a1 + 968);
    if (v4)
    {
      if (*(a1 + 976))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          heap_Free(*(*a1 + 8), *(v4 + v5));
          v7 = (*(a1 + 968) + v5);
          *v7 = 0;
          heap_Free(*(*a1 + 8), v7[1]);
          v4 = *(a1 + 968);
          *(v4 + v5 + 8) = 0;
          ++v6;
          v5 += 16;
        }

        while (v6 < *(a1 + 976));
      }

      heap_Free(*(*a1 + 8), v4);
      *(a1 + 968) = 0;
    }

    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_unixlit_ObjReopen(uint64_t a1, int a2)
{
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  synstrmaux_InitStreamOpener(a1 + 64, *(*a1 + 32), "FE_UNIXLIT");
  *(a1 + 952) = 0;
  *(a1 + 960) = 0;
  result = (*(*(a1 + 24) + 96))(*(a1 + 8), *(a1 + 16), "fecfg", "uselatin", &v6, &v5, &v4);
  if ((result & 0x80000000) == 0)
  {
    if (v5 == 1 && v6 && **v6 == 49)
    {
      *(a1 + 952) = 1;
    }

    v5 = 0;
    result = (*(*(a1 + 24) + 96))(*(a1 + 8), *(a1 + 16), "fecfg", "unixlitlatinsp", &v6, &v5, &v4);
    if ((result & 0x80000000) == 0)
    {
      if (v5 == 1 && v6 && **v6 == 49)
      {
        *(a1 + 956) = 1;
      }

      v5 = 0;
      result = (*(*(a1 + 24) + 96))(*(a1 + 8), *(a1 + 16), "fecfg", "lookupa2z", &v6, &v5, &v4);
      if ((result & 0x80000000) == 0 && v5 == 1 && v6 && **v6 == 49)
      {
        *(a1 + 960) = 1;
      }
    }
  }

  return result;
}

uint64_t fe_unixlit_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  synstrmaux_InitStreamOpener(a1 + 64, *(*a1 + 32), "FE_UNIXLIT");
  synstrmaux_RegisterInStream((a1 + 64), "text/plain;charset=utf-8", 0, a1 + 888);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 904);
  synstrmaux_RegisterOutStream((a1 + 64), "text/plain;charset=utf-8", a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", a1 + 936);
  v7 = synstrmaux_OpenStreams((a1 + 64), *(a1 + 56), a3, a4);
  if ((v7 & 0x80000000) != 0 || (v7 = (*(*(a1 + 48) + 104))(*(a1 + 32), *(a1 + 40), 0, 1), (v7 & 0x80000000) != 0))
  {
    v8 = v7;
LABEL_7:
    synstrmaux_CloseStreams((a1 + 64), *(a1 + 56));
    return v8;
  }

  v8 = (*(*(a1 + 48) + 104))(*(a1 + 32), *(a1 + 40), 0, 0);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t unixlit_growMapCharStr(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned int a4, int a5)
{
  v6 = a5 + a4;
  v7 = *a3;
  if (a5 + a4 < v7)
  {
    return 0;
  }

  v13 = v7 + 32;
  if (v6 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6 + 32;
  }

  v15 = heap_Realloc(*(*a1 + 8), *a2, 8 * v14);
  if (v15)
  {
    *a2 = v15;
    if (a4 < v14)
    {
      v20 = (v15 + 8 * a4 + 4);
      v21 = v14 - a4;
      do
      {
        *(v20 - 2) = 9999;
        *v20 = 0;
        v20 += 2;
        --v21;
      }

      while (v21);
    }

    result = 0;
    *a3 = v14;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0, v16, v17, v18, v19, v5);
    return 2321555466;
  }

  return result;
}

uint64_t unixlit_addLangStrs(uint64_t *a1, uint64_t *a2, __int16 *a3, char *__s2, __int16 *a5)
{
  v10 = *a3;
  if (*a3)
  {
    v11 = 0;
    v12 = *a2;
    v13 = *a2;
    do
    {
      if (!strcmp(*v13, __s2))
      {
        v31 = 0;
        *a5 = v11;
        return v31;
      }

      ++v11;
      v13 += 2;
    }

    while (v10 != v11);
    v14 = heap_Realloc(*(*a1 + 8), v12, 16 * v10 + 17);
    if (v14)
    {
      v19 = v14;
      *a2 = v14;
      v20 = strlen(__s2);
      v21 = heap_Calloc(*(*a1 + 8), 1, v20 + 1);
      *(v19 + 16 * *a3) = v21;
      v22 = *a1;
      if (!v21)
      {
        goto LABEL_14;
      }

      v23 = *(v22 + 8);
      v24 = strlen(__s2);
      v25 = heap_Calloc(v23, 1, (v24 + 1));
      v30 = *a3;
      *(v19 + 16 * v30 + 8) = v25;
      if (!v25)
      {
        v31 = 2321555466;
        log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0, v26, v27, v28, v29, v52);
        v32 = *(*a1 + 8);
        v33 = *(v19 + 16 * *a3);
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v31 = 2321555466;
    v22 = *a1;
LABEL_16:
    log_OutPublic(*(v22 + 32), "FE_UNIXLIT", 40000, 0, v15, v16, v17, v18, v52);
    return v31;
  }

  v34 = heap_Calloc(*(*a1 + 8), 1, 17);
  v22 = *a1;
  if (!v34)
  {
LABEL_14:
    v31 = 2321555466;
    goto LABEL_16;
  }

  v19 = v34;
  v35 = *(v22 + 8);
  v36 = strlen(__s2);
  v37 = heap_Calloc(v35, 1, v36 + 1);
  *(v19 + 16 * *a3) = v37;
  v42 = *a1;
  if (v37)
  {
    v43 = *(v42 + 8);
    v44 = strlen(__s2);
    v45 = heap_Calloc(v43, 1, (v44 + 1));
    v30 = *a3;
    *(v19 + 16 * v30 + 8) = v45;
    if (v45)
    {
LABEL_12:
      strcpy(*(v19 + 16 * v30), __s2);
      strcpy(*(v19 + 16 * *a3 + 8), __s2);
      v31 = 0;
      v50 = *a3;
      *a5 = *a3;
      *a3 = v50 + 1;
      *a2 = v19;
      return v31;
    }

    v31 = 2321555466;
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0, v46, v47, v48, v49, v52);
    heap_Free(*(*a1 + 8), *(v19 + 16 * *a3));
  }

  else
  {
    v31 = 2321555466;
    log_OutPublic(*(v42 + 32), "FE_UNIXLIT", 40000, 0, v38, v39, v40, v41, v52);
  }

  v32 = *(*a1 + 8);
  v33 = v19;
LABEL_20:
  heap_Free(v32, v33);
  return v31;
}

uint64_t unixlit_lookup(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  if (*a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      LH_itoa(a3[v12], v16, 0x10u);
      __strcat_chk();
      v12 = ++v13;
    }

    while (strlen(a3) > v13);
  }

  result = (*(a1[3] + 96))(a1[1], a1[2], a2, v17, a4, a5, a6);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_unixlit_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v446 = *MEMORY[0x1E69E9840];
  v7 = 2321555466;
  memset(v443, 0, sizeof(v443));
  v436 = 0;
  v434 = 0;
  v433 = 0;
  v432 = 9999;
  v431[3] = 9999;
  strcpy(v431, "latin");
  strcpy(v430, "normal");
  v429 = 0;
  strcpy(v435, "spell");
  strcpy(__s2, "normal");
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    v9 = 2321555464;
    goto LABEL_57;
  }

  v442 = 0;
  v441 = 0;
  v440 = 0;
  v439 = 0;
  v437 = 0;
  *a5 = 1;
  v8 = (*(a1[7] + 144))(a1[111], a1[112], &v443[8], v443);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_56;
  }

  v9 = (*(a1[7] + 144))(a1[113], a1[114], &v443[4], v443);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_57;
  }

  if (!*&v443[8])
  {
    v55 = *v443;
    if (!*v443)
    {
      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v429) & 0x80000000) != 0 || !v429 || !*v429)
      {
        *a5 = 0;
      }

      goto LABEL_57;
    }

    if (*&v443[4])
    {
      v8 = (*(a1[7] + 88))(a1[113], a1[114], &v441, &v440);
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_56;
      }

      v8 = (*(a1[7] + 104))(a1[117], a1[118], v441, v440);
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_56;
      }

      v9 = (*(a1[7] + 96))(a1[113], a1[114], v440);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      v55 = *v443;
    }

    if (!v55)
    {
      goto LABEL_57;
    }

    v8 = synstrmaux_CloseOutStreamsOnly(a1 + 32, a1[7]);
LABEL_56:
    v9 = v8;
    goto LABEL_57;
  }

  v8 = (*(a1[6] + 112))(a1[4], a1[5], &v436 + 4, 1);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_56;
  }

  v8 = (*(a1[6] + 112))(a1[4], a1[5], &v436, 0);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_56;
  }

  v8 = (*(a1[7] + 88))(a1[111], a1[112], &v439, &v442);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_56;
  }

  v10 = v442;
  v8 = (*(a1[7] + 88))(a1[113], a1[114], &v441, &v440);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_56;
  }

  v11 = v440;
  v12 = v440 >> 5;
  v13 = v12;
  v14 = heap_Calloc(*(*a1 + 8), 1, (32 * v12) | 1);
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0, v15, v16, v17, v18, v367);
    v26 = 0;
    v9 = 2321555466;
    goto LABEL_598;
  }

  v425 = v14;
  memcpy(v14, v441, v440);
  if (v12)
  {
    v19 = (v425 + 16);
    v20 = (v11 >> 5);
    do
    {
      if (*(v19 - 4) == 1)
      {
        *v19 = 0;
      }

      v19 += 8;
      --v20;
    }

    while (v20);
  }

  v21 = heap_Alloc(*(*a1 + 8), 8 * v12);
  if (!v21)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0, v22, v23, v24, v25, v367);
LABEL_65:
    heap_Free(*(*a1 + 8), v425);
    v9 = 2321555466;
    goto LABEL_57;
  }

  v26 = v21;
  if (v12)
  {
    bzero(v21, 8 * v12);
  }

  v27 = v425;
  v416 = *(v425 + 12);
  if (!v416)
  {
    HIDWORD(v436) = 0;
    v28 = (*(a1[6] + 104))(a1[4], a1[5], 0, 1);
    if ((v28 & 0x80000000) != 0)
    {
      v7 = v28;
      goto LABEL_597;
    }
  }

  v433 = v10 + 32;
  v29 = heap_Calloc(*(*a1 + 8), 1, (8 * (v10 + 32)) | 1);
  v434 = v29;
  if (!v29)
  {
    log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 40000, 0, v30, v31, v32, v33, v367);
    heap_Free(*(*a1 + 8), v26);
    goto LABEL_65;
  }

  v34 = (v10 + 32);
  if (v10 != 0xFFE0)
  {
    v35 = (v34 + 7) & 0x1FFF8;
    v36 = vdupq_n_s64(v34 - 1);
    v37 = xmmword_1C37BDD80;
    v38 = xmmword_1C37BDD90;
    v39 = xmmword_1C378AEF0;
    v40 = xmmword_1C378AF00;
    v41 = (v29 + 32);
    v42 = vdupq_n_s64(8uLL);
    do
    {
      v43 = vmovn_s64(vcgeq_u64(v36, v40));
      if (vuzp1_s8(vuzp1_s16(v43, *v36.i8), *v36.i8).u8[0])
      {
        *(v41 - 16) = 9999;
      }

      if (vuzp1_s8(vuzp1_s16(v43, *&v36), *&v36).i8[1])
      {
        *(v41 - 12) = 9999;
      }

      if (vuzp1_s8(vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, *&v39))), *&v36).i8[2])
      {
        *(v41 - 8) = 9999;
        *(v41 - 4) = 9999;
      }

      v44 = vmovn_s64(vcgeq_u64(v36, v38));
      if (vuzp1_s8(*&v36, vuzp1_s16(v44, *&v36)).i32[1])
      {
        *v41 = 9999;
      }

      if (vuzp1_s8(*&v36, vuzp1_s16(v44, *&v36)).i8[5])
      {
        v41[4] = 9999;
      }

      if (vuzp1_s8(*&v36, vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, *&v37)))).i8[6])
      {
        v41[8] = 9999;
        v41[12] = 9999;
      }

      v38 = vaddq_s64(v38, v42);
      v39 = vaddq_s64(v39, v42);
      v40 = vaddq_s64(v40, v42);
      v41 += 32;
      v37 = vaddq_s64(v37, v42);
      v35 -= 8;
    }

    while (v35);
  }

  log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, " ", v31, v32, v33, v367);
  do
  {
    v45 = v10;
    v46 = v10;
  }

  while (!*(v439 - 1 + v10--));
  v387 = (32 * (v11 >> 5)) | 1;
  if (v45)
  {
    v48 = 0;
    while (1)
    {
      v49 = *(v439 + v48);
      v50 = v49 > 0x20;
      v51 = (1 << v49) & 0x100002600;
      v52 = v50 || v51 == 0;
      if (v52)
      {
        break;
      }

      if (v45 == ++v48)
      {
        LOBYTE(v48) = v45;
LABEL_46:
        LOWORD(v53) = v45;
        v54 = v45;
        goto LABEL_78;
      }
    }
  }

  else
  {
    LOWORD(v48) = 0;
  }

  if (v48 >= v45)
  {
    LOWORD(v53) = v48;
    v54 = v48;
  }

  else
  {
    v53 = v48;
    while (1)
    {
      v58 = *(v439 + v53);
      v50 = v58 > 0x20;
      v59 = (1 << v58) & 0x100002600;
      if (!v50 && v59 != 0)
      {
        break;
      }

      if (++v53 >= v46)
      {
        goto LABEL_46;
      }
    }

    v54 = v53;
  }

LABEL_78:
  v61 = v48;
  v414 = v45;
  v415 = (v11 >> 5);
  if (v48 >= v45 || v48 + utf8_determineUTF8CharLength(*(v439 + v48)) != v53)
  {
    goto LABEL_90;
  }

  if (v53 < v414)
  {
    v53 = v53;
    while (1)
    {
      v62 = *(v439 + v53);
      v50 = v62 > 0x20;
      v63 = (1 << v62) & 0x100002600;
      if (v50 || v63 == 0)
      {
        break;
      }

      if (++v53 >= v46)
      {
        goto LABEL_89;
      }
    }
  }

  if (v53 == v414)
  {
LABEL_89:
    v385 = (v414 - v54);
    v65 = 1;
  }

  else
  {
LABEL_90:
    v65 = 0;
    v385 = 0;
  }

  if (paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v429))
  {
    v69 = 1;
  }

  else
  {
    v69 = v429 == 0;
  }

  if (!v69 && !strcmp(v429, "internal"))
  {
    v65 = 0;
  }

  v386 = v61;
  v384 = v54;
  v388 = v11;
  v399 = v26;
  log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "Markers IN", v66, v67, v68, v368);
  v73 = (v11 >> 5);
  if ((v11 >> 5))
  {
    v74 = v425;
    v75 = v65;
    while (1)
    {
      v76 = *(*a1 + 32);
      v77 = *v74;
      v78 = v74[2];
      v79 = v74[3];
      v80 = v74[4];
      if (v77 == 0x4000)
      {
        v374 = v74[3];
        log_OutText(v76, "FE_UNIXLIT", 5, 0, "Marker [type=SYNC] Ref (%u,%u) Cur(%u,%u)", v70, v71, v72, v74[1]);
      }

      else
      {
        v379 = v74[3];
        log_OutText(v76, "FE_UNIXLIT", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v70, v71, v72, v77);
      }

      v81 = *v74;
      if (*v74 > 33)
      {
        if (v81 != 34 && v81 != 40)
        {
          goto LABEL_110;
        }
      }

      else if (v81 != 7 && (v81 != 21 || !strcmp(*(v74 + 3), __s2)))
      {
        goto LABEL_110;
      }

      v75 = 0;
LABEL_110:
      v74 += 8;
      if (!--v73)
      {
        goto LABEL_113;
      }
    }
  }

  v75 = v65;
LABEL_113:
  v82 = unixlit_addLangStrs(a1, a1 + 121, a1 + 488, v431, &v432);
  if ((v82 & 0x80000000) != 0)
  {
    v7 = v82;
    v26 = v399;
    v27 = v425;
    v13 = v415;
    goto LABEL_597;
  }

  v83 = unixlit_addLangStrs(a1, a1 + 121, a1 + 488, v430, &v432);
  v27 = v425;
  v13 = v415;
  if ((v83 & 0x80000000) != 0)
  {
    goto LABEL_596;
  }

  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v407 = 0;
  v393 = 0;
  v88 = 0;
  v391 = 0;
  v89 = 0;
  v90 = v414;
  v383 = a1 + 121;
  __s = __s2;
  v389 = 2;
  v400 = 1;
  v401 = 0;
  v406 = v75;
  while (1)
  {
    v428 = 0;
    v427 = 0;
    v426 = 0;
    v91 = v416;
    if (v13 > v89)
    {
      break;
    }

    v122 = v86;
    v123 = v85;
LABEL_305:
    v405 = v123;
    v184 = v84;
    if (v84 >= v90)
    {
      goto LABEL_534;
    }

    v432 = 9999;
    v421 = v87;
    v423 = v438;
    UTF8Char = utf8_getUTF8Char(v439, v84, v438);
    if (v401)
    {
      v403 = v184;
      v410 = 0;
      v186 = 2;
      v391 = v438;
      goto LABEL_308;
    }

    v193 = (v439 + v184);
    v194 = *v193;
    if (v194 == 32 && v400 != 0)
    {
      v391 = 0;
LABEL_382:
      v27 = v425;
      goto LABEL_490;
    }

    v305 = UTF8Char;
    v196 = *(a1 + 240);
    v200 = v407 == 1 || v393 || v196 != 1 || v75 == 1;
    if (v196 && v200)
    {
      if (v194 == 32 && v196 == 1 && v75 == 1)
      {
        goto LABEL_427;
      }
    }

    else
    {
      v230 = v194 - 48 >= 0xA && (v194 & 0xFFFFFFDF) - 65 >= 0x1A;
      if (!v230 || v194 == 32)
      {
LABEL_427:
        v403 = v184;
        if (*(a1 + 238) == 1 && (v194 > 0x60 || v194 - 65 <= 0x19))
        {
          v95 = unixlit_addLangStrs(a1, v383, a1 + 488, v431, &v432);
          if ((v95 & 0x80000000) != 0)
          {
            goto LABEL_531;
          }

          v410 = 0;
          v391 = v438;
          v186 = 1;
        }

        else
        {
LABEL_430:
          v410 = 0;
          v391 = v438;
          v186 = 2;
        }

        v423 = v438;
LABEL_308:
        v27 = v425;
LABEL_309:
        if (*v423 != 32)
        {
          v187 = v122 + 1;
          goto LABEL_318;
        }

        if (v423[1] || v403 + v88 || v75)
        {
          v187 = 0;
          if (!HIDWORD(v407) || !v122)
          {
            v405 = 0;
            goto LABEL_318;
          }

          v52 = v122 == v405;
          v405 = 0;
          if (v52)
          {
            (*(a1[7] + 104))(a1[115], a1[116], "§", 2);
            v95 = unixlit_growMapCharStr(a1, &v434, &v433, v421, 2);
            if ((v95 & 0x80000000) != 0)
            {
              goto LABEL_531;
            }

            v188 = 0;
            v405 = 0;
            v187 = 0;
            v400 = 0;
            v189 = v431[3];
            v190 = v434;
            *(v434 + 8 * v421) = v431[3];
            *(v190 + 8 * (v421 + 1)) = v189;
            LODWORD(v88) = v88 + 2;
            v27 = v425;
            v191 = (v421 + 2);
LABEL_320:
            v192 = v423;
          }

          else
          {
LABEL_318:
            if (HIDWORD(v407))
            {
              v188 = 0;
              v191 = v421;
              goto LABEL_320;
            }

            v192 = v423;
            if (v389 == 1 && !v186 || (v188 = 1, !v389) && v186 == 1)
            {
              v396 = v186;
              v203 = v187;
              v95 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
              if ((v95 & 0x80000000) != 0)
              {
                goto LABEL_531;
              }

              v95 = unixlit_growMapCharStr(a1, &v434, &v433, v421, 1);
              if ((v95 & 0x80000000) != 0)
              {
                goto LABEL_531;
              }

              v188 = 1;
              *(v434 + 8 * v421 + 4) = 1;
              LODWORD(v88) = v88 + 1;
              v191 = (v421 + 1);
              v187 = v203;
              v192 = v423;
              v27 = v425;
              v186 = v396;
LABEL_360:
              v389 = v186;
LABEL_361:
              v421 = v191;
              v397 = v187;
              if (v401 || !(v407 | v75) || !v407 && *(v439 + v403) <= 0x20u)
              {
                if ((v188 & 1) != 0 || strlen(v192) == 1 || !strchr(v192, 32) && !strchr(v192, 95))
                {
                  goto LABEL_375;
                }

                if (*v192)
                {
                  v204 = 0;
                  v205 = 0;
                  do
                  {
                    v206 = v192[v204];
                    if (v206 == 95 || v206 == 32)
                    {
                      v192[v204] = 45;
                    }

                    v204 = ++v205;
                  }

                  while (strlen(v192) > v205);
LABEL_375:
                  if (*v192)
                  {
                    v207 = strlen(v192);
                    v208 = (*(a1[7] + 104))(a1[115], a1[116], v192, v207);
                    v305 = v208;
                    v209 = *v192;
                    if (v209 == 21)
                    {
                      if (v192[1])
                      {
                        goto LABEL_388;
                      }

                      v246 = strlen(v192);
                      v95 = unixlit_growMapCharStr(a1, &v434, &v433, v421, v246);
                      if ((v95 & 0x80000000) != 0)
                      {
                        goto LABEL_531;
                      }

                      if (v431[3] == 9999)
                      {
                        v247 = v434;
                        if (v421)
                        {
                          v248 = v421;
                          *(v434 + 8 * v421) = *(v434 + 8 * (v421 - 1));
                        }

                        else
                        {
                          v248 = 0;
                        }

                        v400 = 0;
                        v421 = (v421 + 1);
                        *(v247 + 8 * v248 + 4) = 1;
                        v13 = v415;
                        v184 = v403;
                        goto LABEL_525;
                      }

                      v400 = 0;
                      *(v434 + 8 * v421) = v431[3];
                      v421 = (v421 + 1);
                    }

                    else
                    {
                      if (v209 == 32 && !v192[1])
                      {
                        v210 = strlen(v192);
                        v95 = unixlit_growMapCharStr(a1, &v434, &v433, v421, v210);
                        if ((v95 & 0x80000000) != 0)
                        {
                          goto LABEL_531;
                        }

                        v211 = v434;
                        if (v421)
                        {
                          v212 = v421;
                          *(v434 + 8 * v421) = *(v434 + 8 * (v421 - 1));
                        }

                        else
                        {
                          v212 = 0;
                        }

                        v184 = v403;
                        v400 = 0;
                        v421 = (v421 + 1);
                        *(v211 + 8 * v212 + 4) = 1;
                        goto LABEL_526;
                      }

LABEL_388:
                      v213 = v432;
                      v214 = v431[3];
                      if (!v410 && v432 == 9999 && v431[3] == 9999)
                      {
                        v192 = v423;
                        v215 = strlen(v423);
                        v95 = unixlit_growMapCharStr(a1, &v434, &v433, v421, v215);
                        v184 = v403;
                        if ((v95 & 0x80000000) != 0)
                        {
                          goto LABEL_531;
                        }

                        v216 = v215;
                        v52 = v215 == 0;
                        v75 = v406;
                        if (v52)
                        {
                          v400 = 0;
                        }

                        else
                        {
                          v217 = v434;
                          v218 = v423;
                          LODWORD(v219) = v421;
                          do
                          {
                            v220 = *v218++;
                            if (v220 == 32)
                            {
                              *(v217 + 8 * v219 + 4) = 1;
                            }

                            v219 = (v219 + 1);
                            --v216;
                          }

                          while (v216);
                          v400 = 0;
                          v421 = v219;
                        }

                        goto LABEL_526;
                      }

                      v184 = v403;
                      if (v432 == 9999 && v431[3] == 9999)
                      {
                        v75 = v406;
                        if ((v208 & 0x80000000) != 0)
                        {
                          goto LABEL_532;
                        }

                        v400 = 0;
LABEL_525:
                        v192 = v423;
LABEL_526:
                        v264 = strlen(v192);
                        v88 = v88 + v264 - utf8_determineUTF8CharLength(*(v439 + v184));
                        v27 = v425;
                        goto LABEL_527;
                      }

                      v240 = strlen(v423);
                      v95 = unixlit_growMapCharStr(a1, &v434, &v433, v421, v240);
                      if ((v95 & 0x80000000) != 0)
                      {
                        goto LABEL_531;
                      }

                      if (!*v423)
                      {
                        v400 = 0;
                        v75 = v406;
                        goto LABEL_525;
                      }

                      v412 = v88;
                      v241 = 0;
                      v242 = 0;
                      v243 = v434;
                      if (v214 == 9999)
                      {
                        v244 = v213;
                      }

                      else
                      {
                        v244 = v214;
                      }

                      LOWORD(v245) = v421;
                      v192 = v423;
                      do
                      {
                        *(v243 + 8 * v245) = v244;
                        if (v192[v241] == 32)
                        {
                          *(v243 + 8 * v245 + 4) = 1;
                        }

                        v245 = v245 + 1;
                        v241 = ++v242;
                        v192 = v423;
                      }

                      while (strlen(v423) > v242);
                      v400 = 0;
                      v421 = v245;
                      v75 = v406;
                      LODWORD(v88) = v412;
                      v13 = v415;
                    }
                  }
                }

                v184 = v403;
                goto LABEL_526;
              }

              v184 = v403;
              if (!v393 || (v221 = *(v439 + v403), v222 = *(v439 + v403), v221 <= 122) && (v221 - 91) >= 6u && (v221 - 58) >= 7u && v222 >= 0xE && (v221 & 0xFFFFFFF0) != 0x20)
              {
                v223 = v391;
                v224 = strlen(v391);
                if (Utf8_LengthInUtf8chars(v391, v224) < 2)
                {
                  v229 = v421;
                }

                else
                {
                  v444 = 9668;
                  utf8_Utf16ToUtf8(&v444, 1u, 0, v438, 5u, &v437, 0);
                  v95 = (*(a1[7] + 104))(a1[115], a1[116], v438, v437);
                  if ((v95 & 0x80000000) != 0)
                  {
                    goto LABEL_531;
                  }

                  v95 = unixlit_growMapCharStr(a1, &v434, &v433, v421, v437);
                  if ((v95 & 0x80000000) != 0)
                  {
                    goto LABEL_531;
                  }

                  v225 = v437;
                  if (v437)
                  {
                    v226 = 0;
                    v227 = v434;
                    LODWORD(v228) = v421;
                    do
                    {
                      if (v438[v226] == 32)
                      {
                        *(v227 + 8 * v228 + 4) = 1;
                        v225 = v437;
                      }

                      v228 = (v228 + 1);
                      ++v226;
                    }

                    while (v225 > v226);
                    v229 = v228;
                    v223 = v391;
                  }

                  else
                  {
                    v223 = v391;
                    v229 = v421;
                  }

                  LODWORD(v88) = v88 + v225;
                }

                v252 = strlen(v223);
                v95 = (*(a1[7] + 104))(a1[115], a1[116], v223, v252);
                if ((v95 & 0x80000000) != 0)
                {
                  goto LABEL_531;
                }

                v253 = strlen(v223);
                v95 = unixlit_growMapCharStr(a1, &v434, &v433, v229, v253);
                if ((v95 & 0x80000000) != 0)
                {
                  goto LABEL_531;
                }

                v254 = v253;
                if (v253)
                {
                  v255 = v434;
                  v256 = v391;
                  v257 = v391;
                  do
                  {
                    v258 = *v257++;
                    if (v258 == 32)
                    {
                      *(v255 + 8 * v229 + 4) = 1;
                    }

                    v229 = (v229 + 1);
                    --v254;
                  }

                  while (v254);
                }

                else
                {
                  v256 = v391;
                }

                v259 = strlen(v256);
                v88 = v88 + v259 - utf8_determineUTF8CharLength(*(v439 + v403));
                v260 = strlen(v256);
                if (Utf8_LengthInUtf8chars(v256, v260) >= 2)
                {
                  v444 = 9668;
                  utf8_Utf16ToUtf8(&v444, 1u, 0, v438, 5u, &v437, 0);
                  v95 = (*(a1[7] + 104))(a1[115], a1[116], v438, v437);
                  if ((v95 & 0x80000000) != 0)
                  {
                    goto LABEL_531;
                  }

                  v95 = unixlit_growMapCharStr(a1, &v434, &v433, v229, v437);
                  if ((v95 & 0x80000000) != 0)
                  {
                    goto LABEL_531;
                  }

                  v261 = v437;
                  if (v437)
                  {
                    v262 = 0;
                    v263 = v434;
                    do
                    {
                      if (v438[v262] == 32)
                      {
                        *(v263 + 8 * v229 + 4) = 1;
                        v261 = v437;
                      }

                      v229 = (v229 + 1);
                      ++v262;
                    }

                    while (v261 > v262);
                  }

                  v27 = v425;
                  v184 = v403;
                  v400 = 0;
                  v88 = v88 + v261;
                  v421 = v229;
                  goto LABEL_527;
                }

                v400 = 0;
                v421 = v229;
                goto LABEL_522;
              }

              v88 = v88 - utf8_determineUTF8CharLength(v222);
              goto LABEL_527;
            }

            v191 = v421;
          }

          if (v186 < 2u || !*(a1 + 239) || *v192 == 32)
          {
            goto LABEL_360;
          }

          goto LABEL_361;
        }

        goto LABEL_489;
      }
    }

    if (HIDWORD(v407) && v194 == 194 && v193[1] == 167)
    {
      v403 = v184;
      goto LABEL_430;
    }

    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_532;
    }

    v427 = -1;
    v95 = unixlit_lookup(a1, "utfunixlit", v438, &v428, &v427, &v426);
    if ((v95 & 0x80000000) != 0)
    {
LABEL_531:
      v305 = v95;
      goto LABEL_532;
    }

    if (!v427)
    {
      goto LABEL_382;
    }

    v231 = v88;
    v232 = " ";
    if (HIDWORD(v407))
    {
      v232 = "-";
    }

    v411 = v232;
    v233 = *v428;
    if (**v428 == 226 && v233[1] == 150 && v233[2] == 145 && strcmp(__s, v435))
    {
      unixlit_replace_utf8char(v233, v411);
    }

    v403 = v184;
    v234 = strchr(v233, v426);
    v423 = v233;
    if (!v234)
    {
      goto LABEL_477;
    }

    v235 = v234;
    if (v234 != v233)
    {
      v236 = &v234[-utf8_determineUTF8CharLength(0xE2u)];
      if (v236 >= v423 && *v236 == 226 && v236[1] == 150 && v236[2] == 145 && strcmp(__s, v435))
      {
        unixlit_replace_utf8char(v236, v411);
        v235 += -utf8_determineUTF8CharLength(0xE2u) + 1;
      }
    }

    *v235 = 0;
    v391 = v235 + 1;
    v237 = strchr(v235 + 1, v426);
    if (!v237)
    {
      goto LABEL_477;
    }

    *v237 = 0;
    if (!*v423)
    {
      goto LABEL_488;
    }

    v238 = v237 + 1;
    if (v237[1])
    {
      v145 = unixlit_addLangStrs(a1, v383, a1 + 488, v238, &v432);
      if ((v145 & 0x80000000) != 0)
      {
        goto LABEL_607;
      }

      if (!strcmp(v238, "normal"))
      {
        v239 = 0;
      }

      else if (!strcmp(v238, "latin"))
      {
        v239 = 1;
      }

      else
      {
        v239 = 2;
      }
    }

    else
    {
LABEL_477:
      v238 = 0;
      v239 = 2;
    }

    if (*v423)
    {
      v410 = v238;
      if (!v391 || !*v391)
      {
        v391 = v423;
      }

      v27 = v425;
      LODWORD(v88) = v231;
      v13 = v415;
      v186 = v239;
      goto LABEL_309;
    }

LABEL_488:
    v27 = v425;
    LODWORD(v88) = v231;
    v13 = v415;
LABEL_489:
    v184 = v403;
LABEL_490:
    v88 = v88 - utf8_determineUTF8CharLength(*(v439 + v184));
    if (*(v439 + v184) == 32)
    {
      if (HIDWORD(v407) && v122 && v122 == v405)
      {
        v403 = v184;
        (*(a1[7] + 104))(a1[115], a1[116], "§", 2);
        v95 = unixlit_growMapCharStr(a1, &v434, &v433, v421, 2);
        if ((v95 & 0x80000000) != 0)
        {
          goto LABEL_531;
        }

        v249 = v431[3];
        v250 = v434;
        *(v434 + 8 * v421) = v431[3];
        *(v250 + 8 * (v421 + 1)) = v249;
        (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
        v95 = unixlit_growMapCharStr(a1, &v434, &v433, (v421 + 2), 1);
        if ((v95 & 0x80000000) != 0)
        {
          goto LABEL_531;
        }

        v400 = 0;
        v397 = 0;
        v405 = 0;
        v251 = v434 + 8 * (v421 + 2);
        *v251 = v249;
        *(v251 + 4) = 1;
        v421 = (v421 + 3);
        v88 = (v88 + 3);
LABEL_522:
        v27 = v425;
        v184 = v403;
        goto LABEL_527;
      }

      v397 = 0;
      v405 = 0;
    }

    else
    {
      v397 = v122 + 1;
      ++v405;
    }

LABEL_527:
    v265 = utf8_determineUTF8CharLength(*(v439 + v184));
    v84 = (v184 + v265);
    v90 = v414;
    v85 = v405;
    v87 = v421;
    v86 = v397;
    if ((v184 + v265) > v414)
    {
LABEL_534:
      for (i = v87; v13 > v89; ++v89)
      {
        *(v27 + 32 * v89 + 12) = (*(v27 + 32 * v89 + 12) + v88 + HIDWORD(v436)) & ~((*(v27 + 32 * v89 + 12) + v88 + HIDWORD(v436)) >> 31);
      }

      v83 = (*(a1[7] + 104))(a1[115], a1[116], "", 1);
      if ((v83 & 0x80000000) == 0)
      {
        v83 = unixlit_growMapCharStr(a1, &v434, &v433, i, 1);
        if ((v83 & 0x80000000) == 0)
        {
          v83 = (*(a1[7] + 96))(a1[111], a1[112], v442);
          if ((v83 & 0x80000000) == 0)
          {
            v270 = i + 1;
            v413 = v88;
            *(v27 + 16) += v88;
            if (!v270)
            {
              goto LABEL_650;
            }

            v271 = 0;
            v272 = v434;
            do
            {
              v273 = v271;
              v274 = v271;
              v275 = (v271 + 1);
              v276 = v270;
              if (v275 > v270)
              {
                v276 = v275;
              }

              v277 = 8 * v274;
              v278 = (v272 + 4 + 8 * v273);
              v279 = v274;
              while (1)
              {
                v280 = *v278;
                v278 += 2;
                if (v280 == 1)
                {
                  break;
                }

                if (++v279 >= v270)
                {
                  goto LABEL_548;
                }
              }

              v276 = v279;
LABEL_548:
              v281 = v270;
              if ((v276 + 1) > v270)
              {
                v281 = v276 + 1;
              }

              v271 = v276;
              while (++v271 < v270)
              {
                if (*(v272 + 8 * v271 + 4) != 1)
                {
                  goto LABEL_555;
                }
              }

              v271 = v281;
LABEL_555:
              if (v274 < v276 && v274 < v270)
              {
                v282 = (v272 + v277);
                v283 = v274 + 1;
                do
                {
                  v285 = *v282;
                  v282 += 4;
                  v284 = v285;
                  if (v285)
                  {
                    v286 = v283 >= v276;
                  }

                  else
                  {
                    v286 = 1;
                  }
                }

                while (!v286 && v283++ < v270);
                if (!v284 && v274 < v271)
                {
                  v288 = 0;
                  v289 = v271 - v274;
                  v290 = vdupq_n_s64(v289 - 1);
                  v291 = (v272 + 32 + v277);
                  do
                  {
                    v292 = vdupq_n_s64(v288);
                    v293 = vmovn_s64(vcgeq_u64(v290, vorrq_s8(v292, xmmword_1C378AF00)));
                    if (vuzp1_s8(vuzp1_s16(v293, 6), 6).u8[0])
                    {
                      *(v291 - 16) = 0;
                    }

                    if (vuzp1_s8(vuzp1_s16(v293, 6), 6).i8[1])
                    {
                      *(v291 - 12) = 0;
                    }

                    if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v290, vorrq_s8(v292, xmmword_1C378AEF0)))), 6).i8[2])
                    {
                      *(v291 - 8) = 0;
                      *(v291 - 4) = 0;
                    }

                    v294 = vmovn_s64(vcgeq_u64(v290, vorrq_s8(v292, xmmword_1C37BDD90)));
                    if (vuzp1_s8(6, vuzp1_s16(v294, 6)).i32[1])
                    {
                      *v291 = 0;
                    }

                    if (vuzp1_s8(6, vuzp1_s16(v294, 6)).i8[5])
                    {
                      v291[4] = 0;
                    }

                    if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v290, vorrq_s8(v292, xmmword_1C37BDD80))))).i8[6])
                    {
                      v291[8] = 0;
                      v291[12] = 0;
                    }

                    v288 += 8;
                    v291 += 32;
                  }

                  while (((v289 + 7) & 0xFFFFFFFFFFFFFFF8) != v288);
                }
              }
            }

            while (v271 < v270);
            v295 = v434;
            v296 = v270;
            do
            {
              if (*v295 == 9999)
              {
                *v295 = 1;
              }

              v295 += 4;
              --v296;
            }

            while (v296);
            LOWORD(v297) = 0;
            v298 = 0;
            while (1)
            {
              v297 = v297;
              v299 = *(v434 + 8 * v297);
              if (v299 != 9999)
              {
                break;
              }

              v300 = v297 == 0;
              LOWORD(v297) = v297 + 1;
LABEL_594:
              v298 += v300;
              if (v297 >= v270)
              {
                goto LABEL_612;
              }
            }

            v301 = (v434 + 8 + 8 * v297);
            while (++v297 < v270)
            {
              v302 = *v301;
              v301 += 4;
              if (v299 != v302)
              {
                v300 = 1;
                goto LABEL_594;
              }
            }

            ++v298;
LABEL_612:
            v424 = v298;
            if (v298)
            {
              v306 = 0;
              v307 = (v434 + 4);
              do
              {
                *v307;
                v375 = *(a1[121] + 16 * *(v307 - 2));
                log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "LANGMAP[%u] = %s [%s]", v267, v268, v269, v306++);
                v307 += 2;
              }

              while (v270 != v306);
              v308 = v415 + v424;
              v309 = heap_Realloc(*(*a1 + 8), v425, (32 * (v415 + v424)) | 1u);
              if (!v309)
              {
                log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0, v310, v311, v312, v313, v369);
                goto LABEL_677;
              }

              v314 = v309;
              bzero((v309 + v387), ((32 * v308) | 1) - v387);
              v315 = 0;
              v316 = 0;
              v317 = 0;
              v318 = 0;
              v319 = 0;
              v320 = v434;
              do
              {
                v321 = (v320 + 8 * v317);
                v322 = (v317 + 1);
                if (v322 <= v270)
                {
                  LOWORD(v322) = v270;
                }

                while (++v317 < v270)
                {
                  if (*v321 != *(v320 + 8 * v317))
                  {
                    goto LABEL_623;
                  }
                }

                v317 = v322;
LABEL_623:
                v323 = v319;
                if (v415 > v319)
                {
                  v324 = (v314 + 32 * (v319 + v318));
                  while (v324[3] <= (*(v314 + 12) + v315))
                  {
                    if (*v324 == 34)
                    {
                      v316 = v324;
                    }

                    if (*v324 == 21)
                    {
                      v316 = 0;
                    }

                    ++v323;
                    v324 += 8;
                    if (v415 <= v323)
                    {
                      v319 = v323;
                      v323 = v323;
                      goto LABEL_633;
                    }
                  }

                  v319 = v323;
                }

LABEL_633:
                if (v415 != v323 && v319 != (v388 >> 5))
                {
                  v325 = v323 + v318 + ((v388 >> 5) - v319);
                  v326 = ((v388 >> 5) - v319) - 1;
                  do
                  {
                    v327 = (v314 + 32 * v325);
                    v328 = *(v327 - 1);
                    *v327 = *(v327 - 2);
                    v327[1] = v328;
                    --v325;
                    LODWORD(v327) = v326--;
                  }

                  while (v327);
                }

                v329 = v314 + 32 * (v323 + v318);
                v330 = *v321;
                if (v330 == 9999)
                {
                  v331 = (*v383 + 24);
                }

                else
                {
                  v331 = (*v383 + 16 * v330 + 8);
                }

                *(v329 + 24) = *v331;
                *v329 = 36;
                v332 = *(v314 + 12) + v315;
                *(v329 + 8) = 0;
                *(v329 + 12) = v332;
                if (v316)
                {
                  v333 = v316[3];
                  v334 = *(v314 + 12);
                  v335 = (v334 + v315);
                  v336 = -v334;
                  v337 = -1;
                  do
                  {
                    ++v337;
                    if (*(v320 + 8 * (v333 + v336++) + 4))
                    {
                      v339 = v337 + v333 >= v335;
                    }

                    else
                    {
                      v339 = 1;
                    }
                  }

                  while (!v339);
                  v316[3] = v333 + v337;
                }

                *(v329 + 16) = 0;
                ++v318;
                v315 = v317;
              }

              while (v317 < v270);
              v425 = v314;
            }

            else
            {
LABEL_650:
              v308 = v415;
            }

            marker_sort(v425 + 32, (v308 - 1));
            v340 = (*(a1[7] + 104))(a1[117], a1[118], v425, 32 * v308);
            if ((v340 & 0x80000000) != 0)
            {
              goto LABEL_676;
            }

            log_OutText(*(*a1 + 32), "FE_UNIXLIT", 5, 0, "Markers OUT", v341, v342, v343, v369);
            if (v308)
            {
              v347 = 0;
              v348 = v434;
              do
              {
                v349 = (v425 + 32 * v347);
                v350 = *v349;
                v351 = *(*a1 + 32);
                if (v350 == 36)
                {
                  v352 = v349[4];
                  v353 = *(v348 + 8 * (v349[3] - *(v425 + 12)));
                  if (v353 == 9999)
                  {
                    v354 = (*v383 + 16);
                  }

                  else
                  {
                    v354 = (*v383 + 16 * v353);
                  }

                  v372 = v349[1];
                  v377 = v349[2];
                  log_OutText(v351, "FE_UNIXLIT", 5, 0, "Marker [type=SET_LANG(%s)] Ref (%u,%u) Cur(%u,%u)", v344, v345, v346, *v354);
                }

                else if (v350 == 0x4000)
                {
                  v376 = v349[3];
                  v380 = v349[4];
                  v371 = v349[2];
                  log_OutText(v351, "FE_UNIXLIT", 5, 0, "Marker[type=SYNC] Ref (%u,%u) Cur(%u,%u)", v344, v345, v346, v349[1]);
                }

                else
                {
                  v381 = v349[3];
                  v382 = v349[4];
                  v373 = v349[1];
                  v378 = v349[2];
                  log_OutText(v351, "FE_UNIXLIT", 5, 0, "Marker [type=%5u] Ref (%u,%u) Cur(%u,%u)", v344, v345, v346, v350);
                }

                ++v347;
              }

              while (v308 > v347);
            }

            v340 = (*(a1[7] + 96))(a1[113], a1[114], v440);
            if ((v340 & 0x80000000) != 0)
            {
LABEL_676:
              v7 = v340;
LABEL_677:
              v13 = v415;
              goto LABEL_533;
            }

            v441 = 0;
            if (paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v429))
            {
              v355 = 1;
            }

            else
            {
              v355 = v429 == 0;
            }

            if (!v355 && !strcmp(v429, "internal") || !v406 || !*(v425 + 16))
            {
LABEL_675:
              LODWORD(v436) = v436 + v413;
              v340 = (*(a1[6] + 104))(a1[4], a1[5]);
              goto LABEL_676;
            }

            v356 = heap_Calloc(*(*a1 + 8), 1, 32);
            if (!v356)
            {
              goto LABEL_679;
            }

            v361 = v356;
            *v356 = 21;
            *(v356 + 24) = v435;
            v362 = HIDWORD(v436) + v416;
            *(v356 + 4) = (HIDWORD(v436) + v416 + v386);
            *(v356 + 12) = v362 & ~(v362 >> 31);
            *(v356 + 16) = 0;
            v363 = (*(a1[7] + 104))(a1[117], a1[118], v356, 32);
            heap_Free(*(*a1 + 8), v361);
            if ((v363 & 0x80000000) != 0)
            {
              v7 = v363;
              goto LABEL_681;
            }

            v364 = heap_Calloc(*(*a1 + 8), 1, 32);
            if (v364)
            {
              v365 = v364;
              *v364 = 21;
              *(v364 + 24) = __s2;
              v366 = v385 + v384 + v416 + HIDWORD(v436);
              *(v364 + 4) = v366;
              *(v364 + 8) = 0;
              *(v364 + 12) = (v366 + v413) & ~((v366 + v413) >> 31);
              v7 = (*(a1[7] + 104))(a1[117], a1[118], v364, 32);
              heap_Free(*(*a1 + 8), v365);
              if ((v7 & 0x80000000) == 0)
              {
                goto LABEL_675;
              }
            }

            else
            {
LABEL_679:
              log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0, v357, v358, v359, v360, v370);
            }

LABEL_681:
            v13 = v415;
            v26 = v399;
            v27 = v425;
            goto LABEL_597;
          }
        }
      }

LABEL_596:
      v7 = v83;
      v26 = v399;
      goto LABEL_597;
    }
  }

  while (1)
  {
    v92 = v27 + 32 * v89;
    v93 = *(v92 + 12);
    v404 = v84;
    if (v84 != (v93 - v91))
    {
      v122 = v86;
      v123 = v85;
      v75 = v406;
      goto LABEL_305;
    }

    v422 = v84;
    v402 = v89;
    if (HIDWORD(v407) && v86 && v86 == v85)
    {
      v94 = v87;
      (*(a1[7] + 104))(a1[115], a1[116], "§", 2);
      v95 = unixlit_growMapCharStr(a1, &v434, &v433, v94, 2);
      if ((v95 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      v400 = 0;
      v96 = v431[3];
      v97 = v434;
      *(v434 + 8 * v94) = v431[3];
      *(v97 + 8 * (v94 + 1)) = v96;
      v88 = (v88 + 2);
      v93 = *(v92 + 12);
      v84 = v422;
      v27 = v425;
      v91 = v416;
      v90 = v414;
      v87 = (v94 + 2);
    }

    *(v92 + 12) = (v93 + v88 + HIDWORD(v436)) & ~((v93 + v88 + HIDWORD(v436)) >> 31);
    v98 = *v92;
    if (*v92 != 36)
    {
      if (v98 != 21)
      {
        if (v98 != 8 || v407 != 0 || v84 == 0)
        {
          goto LABEL_148;
        }

        goto LABEL_144;
      }

      v99 = *(v92 + 24);
      __s = v99;
      if (v407 == 1)
      {
        v408 = v88;
        v100 = v87;
        v101 = !strcmp(v99, v435) || !strncmp(v99, "spell:", 6uLL) || !strcmp(v99, "alphanumeric") || !strcmp(v99, "digits") || strcmp(v99, "characters") == 0;
        LODWORD(v407) = v101;
        v91 = v416;
        v90 = v414;
        v87 = v100;
        v88 = v408;
        v84 = v422;
      }

      else
      {
        LODWORD(v407) = 0;
      }
    }

    if (!v84)
    {
      goto LABEL_148;
    }

LABEL_144:
    if (*(v439 + v84 - 1) != 32)
    {
      v104 = v87;
      v95 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v95 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      v95 = unixlit_growMapCharStr(a1, &v434, &v433, v104, 1);
      if ((v95 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      *(v434 + 8 * v104 + 4) = 1;
      ++*(v92 + 12);
      v88 = (v88 + 1);
      v98 = *v92;
      v84 = v422;
      v27 = v425;
      v91 = v416;
      v90 = v414;
      v87 = (v104 + 1);
    }

LABEL_148:
    if (v98 > 33)
    {
      v417 = v87;
      if (v98 == 34)
      {
        v119 = strstr(*(v92 + 24), "\x14EXTCLC");
        v84 = v422;
        v90 = v414;
        v120 = v401;
        if (v119)
        {
          v120 = 1;
        }

        v401 = v120;
        HIDWORD(v407) = 1;
      }

      else if (v98 == 36)
      {
        v108 = v88;
        v109 = strlen(*(v92 + 24));
        v110 = heap_Alloc(*(*a1 + 8), (v109 + 1));
        if (!v110)
        {
          log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 30000, 0, v111, v112, v113, v114, v369);
          v305 = 2321555466;
          goto LABEL_532;
        }

        v115 = v110;
        v116 = **(v92 + 24);
        if (v116)
        {
          v117 = 0;
          v118 = 0;
          do
          {
            v115[v117] = ssft_tolower(v116);
            v117 = ++v118;
            v116 = *(*(v92 + 24) + v118);
          }

          while (v116);
        }

        else
        {
          v117 = 0;
        }

        v115[v117] = 0;
        if (!strcmp(v115, "normal"))
        {
          v431[3] = 9999;
        }

        else
        {
          v121 = unixlit_addLangStrs(a1, v383, a1 + 488, v115, &v431[3]);
          if ((v121 & 0x80000000) != 0)
          {
            v305 = v121;
            heap_Free(*(*a1 + 8), v115);
            goto LABEL_532;
          }
        }

        heap_Free(*(*a1 + 8), v115);
        *v92 = 0x4000;
        *(v92 + 16) = 0;
        *(v92 + 8) = 0;
        v84 = v422;
        v27 = v425;
        v91 = v416;
        v75 = v406;
        v88 = v108;
        v90 = v414;
LABEL_188:
        v87 = v417;
        goto LABEL_189;
      }

      v91 = v416;
      v75 = v406;
      goto LABEL_188;
    }

    if (v98 != 7)
    {
      if (v98 != 21)
      {
        goto LABEL_170;
      }

      v105 = v87;
      v106 = *(v92 + 24);
      if (!strcmp(v106, v435) || !strncmp(v106, "spell:", 6uLL) || !strcmp(v106, "alphanumeric") || !strcmp(v106, "digits") || !strcmp(v106, "characters"))
      {
        v75 = v406;
        if (!strcmp(v106, "spell:alphanumeric") || !strcmp(v106, "alphanumeric") || !strcmp(v106, "digits"))
        {
          HIDWORD(v407) = 0;
          v401 = 0;
          v393 = 1;
        }

        else
        {
          HIDWORD(v407) = 0;
          v401 = 0;
          v393 = strcmp(v106, "characters") == 0;
        }

        LODWORD(v407) = 1;
      }

      else
      {
        v401 = 0;
        v75 = v406;
        v107 = v393;
        if (v407)
        {
          v107 = 0;
        }

        v393 = v107;
        v407 = 0;
      }

      v27 = v425;
      v91 = v416;
      v90 = v414;
      v87 = v105;
      v84 = v422;
      goto LABEL_189;
    }

    if (*(v92 + 24) != 43)
    {
LABEL_170:
      v75 = v406;
      goto LABEL_189;
    }

    if (v84 && *(v439 + v84 - 1) != 32)
    {
      v124 = v87;
      v95 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v95 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      v95 = unixlit_growMapCharStr(a1, &v434, &v433, v124, 1);
      if ((v95 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      *(v434 + 8 * v124 + 4) = 1;
      ++*(v92 + 12);
      v409 = v88 + 1;
      v84 = v422;
      v27 = v425;
      v91 = v416;
      v90 = v414;
      v87 = (v124 + 1);
    }

    else
    {
      v409 = v88;
    }

    v125 = 0;
    v126 = 0;
    ++v89;
    v127 = 1;
    v392 = v431[3];
    v128 = v84;
LABEL_195:
    v129 = v128;
    v130 = v128;
    v390 = v128 < v90;
    while (1)
    {
      if (v13 <= v89)
      {
        v52 = v13 == v89;
        v138 = v52;
        if (!v52 || v128 >= v90)
        {
          goto LABEL_252;
        }

        v13 = v415;
        goto LABEL_215;
      }

      v131 = v27 + 32 * v89;
      if (*v131 == 7 && v129 >= (*(v131 + 12) - v91))
      {
        break;
      }

      v132 = (v27 + 32 * v89);
      v133 = v132 + 3;
      for (j = v132[3]; v128 == (j - v91); j = v132[3])
      {
        v135 = *v132;
        if (*v132 == 21 || v135 == 36)
        {
          *v132 = 0x4000;
          v132[4] = 0;
          v132[2] = 0;
        }

        else if (v135 == 7)
        {
          break;
        }

        *v133 = (j + v409 + HIDWORD(v436)) & ~((j + v409 + HIDWORD(v436)) >> 31);
        if (v13 <= ++v89)
        {
          break;
        }

        v136 = (v27 + 32 * v89);
        v137 = (v136[3] - v91);
        if (v128 == (*(v136 + 6) - v91) && *v136 == 7)
        {
          v126 = 1;
        }

        v132 = (v27 + 32 * v89);
        v133 = v132 + 3;
      }

LABEL_215:
      v139 = v439 + v130;
      v140 = *(v439 + v130);
      if (v126)
      {
        v141 = 1;
      }

      else
      {
        v141 = v140 == 32;
      }

      if (!v141)
      {
        v125 = 0;
      }

      if ((v140 == 95 || v140 == 35) && v128 != v84)
      {
        v142 = *(v139 - 1);
        v143 = (v142 - 32) > 0x3F || ((1 << (v142 - 32)) & 0x8000000000000009) == 0;
        if (v143 && (v128 < 4u || v142 != 92 || (*(v139 - 3) | 0x20) != 0x74 || *(v439 + v128 - 4) != 92))
        {
          if (v140 == 35)
          {
            v125 = 1;
          }

          if (v127)
          {
            v418 = v87;
          }

          else
          {
            v144 = v87;
            v145 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
            if ((v145 & 0x80000000) != 0)
            {
              goto LABEL_607;
            }

            v145 = unixlit_growMapCharStr(a1, &v434, &v433, v144, 1);
            if ((v145 & 0x80000000) != 0)
            {
              goto LABEL_607;
            }

            v146 = v434 + 8 * v144;
            *v146 = v392;
            *(v146 + 4) = 1;
            v418 = (v144 + 1);
            ++v409;
            v13 = v415;
          }

          v444 = 167;
          utf8_Utf16ToUtf8(&v444, 1u, 0, v438, 5u, &v437, 0);
          v95 = (*(a1[7] + 104))(a1[115], a1[116], v438, v437);
          if ((v95 & 0x80000000) != 0)
          {
            goto LABEL_531;
          }

          v95 = unixlit_growMapCharStr(a1, &v434, &v433, v418, v437);
          if ((v95 & 0x80000000) != 0)
          {
            goto LABEL_531;
          }

          v147 = v437;
          if (v437)
          {
            v148 = 0;
            v149 = v434;
            v84 = v422;
            v27 = v425;
            v91 = v416;
            v90 = v414;
            LOWORD(v87) = v418;
            v129 = v128;
            do
            {
              *(v149 + 8 * v87) = v392;
              if (v438[v148] == 32)
              {
                *(v149 + 8 * v87 + 4) = 1;
                v147 = v437;
              }

              v87 = v87 + 1;
              ++v148;
            }

            while (v147 > v148);
          }

          else
          {
            v84 = v422;
            v27 = v425;
            v91 = v416;
            v90 = v414;
            v87 = v418;
            v129 = v128;
          }

          v400 = 0;
          v127 = 0;
          v409 += v147;
          v130 = v128;
        }
      }

      if (!v126)
      {
        v150 = v130;
        v419 = v87;
        v394 = v127;
        v409 -= utf8_determineUTF8CharLength(*(v439 + v130));
        v151 = utf8_determineUTF8CharLength(*(v439 + v150));
        v127 = v394;
        v87 = v419;
        v84 = v422;
        v90 = v414;
        v13 = v415;
        v91 = v416;
        v128 = (v128 + v151);
        goto LABEL_195;
      }
    }

    v138 = v13 == v89;
    v390 = v128 < v90;
LABEL_252:
    v152 = v128 == v90 && v138;
    if (v415 <= v89 && !v152)
    {
      v13 = v415;
      v75 = v406;
      v88 = v409;
      goto LABEL_189;
    }

    v395 = v127;
    v420 = v87;
    v153 = v128 - v404;
    v154 = heap_Alloc(*(*a1 + 8), v153 + 1);
    if (!v154)
    {
      goto LABEL_609;
    }

    v159 = v154;
    memcpy(v154, (v439 + v422), v153);
    v159[v153] = 0;
    *v92 = 34;
    *(v92 + 24) = v159;
    *(v399 + 8 * v402) = v159;
    if (v125)
    {
      v27 = v425;
      v75 = v406;
      v90 = v414;
      v160 = v414;
      v87 = v420;
      goto LABEL_276;
    }

    v75 = v406;
    if (!v395)
    {
      v145 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
      if ((v145 & 0x80000000) == 0)
      {
        v145 = unixlit_growMapCharStr(a1, &v434, &v433, v420, 1);
        if ((v145 & 0x80000000) == 0)
        {
          v162 = v434 + 8 * v420;
          *v162 = v392;
          *(v162 + 4) = 1;
          v161 = (v420 + 1);
          ++v409;
          v75 = v406;
          goto LABEL_266;
        }
      }

LABEL_607:
      v305 = v145;
      goto LABEL_610;
    }

    v161 = v420;
LABEL_266:
    v444 = 167;
    utf8_Utf16ToUtf8(&v444, 1u, 0, v438, 5u, &v437, 0);
    v145 = (*(a1[7] + 104))(a1[115], a1[116], v438, v437);
    if ((v145 & 0x80000000) != 0)
    {
      goto LABEL_607;
    }

    v145 = unixlit_growMapCharStr(a1, &v434, &v433, v161, v437);
    if ((v145 & 0x80000000) != 0)
    {
      goto LABEL_607;
    }

    v163 = v437;
    v90 = v414;
    v160 = v414;
    if (v437)
    {
      v164 = 0;
      v165 = v434;
      v27 = v425;
      do
      {
        *(v165 + 8 * v161) = v392;
        if (v438[v164] == 32)
        {
          *(v165 + 8 * v161 + 4) = 1;
          v163 = v437;
        }

        v161 = v161 + 1;
        ++v164;
      }

      while (v163 > v164);
    }

    else
    {
      v27 = v425;
    }

    v400 = 0;
    v409 += v163;
    v87 = v161;
LABEL_276:
    if (!v138)
    {
      break;
    }

LABEL_279:
    if (v390)
    {
      v172 = v128;
      v173 = *(v439 + v128) != 32;
      v13 = v415;
      while (*(v439 + v172) == 32)
      {
        if (v160 == ++v172)
        {
          v174 = v90;
          goto LABEL_286;
        }
      }

      v174 = v172;
LABEL_286:
      v175 = v174;
    }

    else
    {
      v173 = 1;
      v174 = v128;
      v13 = v415;
      v175 = v128;
    }

    v176 = (v175 + 1);
    if (v176 != *(v27 + 16) || ((v177 = *(v439 + v174), v50 = v177 > 0x3F, v178 = (1 << v177) & 0x8800400200000000, !v50) ? (v179 = v178 == 0) : (v179 = 1), v179))
    {
      if (v173)
      {
        v183 = v87;
        v95 = (*(a1[7] + 104))(a1[115], a1[116], " ", 1);
        if ((v95 & 0x80000000) != 0)
        {
          goto LABEL_531;
        }

        v95 = unixlit_growMapCharStr(a1, &v434, &v433, v183, 1);
        if ((v95 & 0x80000000) != 0)
        {
          goto LABEL_531;
        }

        *(v434 + 8 * v183 + 4) = 1;
        v84 = v128;
        v88 = v409 + 1;
        v27 = v425;
        v91 = v416;
        v90 = v414;
        v87 = (v183 + 1);
      }

      else
      {
        v84 = v128;
        v91 = v416;
        v88 = v409;
      }
    }

    else
    {
      v180 = v87;
      utf8_getUTF8Char(v439, v175, v438);
      v95 = (*(a1[7] + 104))(a1[115], a1[116], v438, 1);
      if ((v95 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      v95 = unixlit_growMapCharStr(a1, &v434, &v433, v180, 1);
      v88 = v409;
      if ((v95 & 0x80000000) != 0)
      {
        goto LABEL_531;
      }

      v91 = v416;
      v90 = v414;
      v84 = v176;
      if (v438[0] == 32)
      {
        *(v434 + 8 * v180 + 4) = 1;
      }

      v87 = (v180 + 1);
      v27 = v425;
      v181 = v425 + 32 * v89;
      v182 = *(v181 + 12) + 1;
      for (*(v181 + 12) = v182; v13 > v89; ++v89)
      {
        *(v425 + 32 * v89 + 12) = v182;
      }
    }

LABEL_189:
    v85 = 0;
    v86 = 0;
    v122 = 0;
    v123 = 0;
    if (v13 <= ++v89)
    {
      goto LABEL_305;
    }
  }

  v166 = v87;
  v167 = strlen(__s);
  v168 = heap_Alloc(*(*a1 + 8), (v167 + 1));
  if (v168)
  {
    v169 = strcpy(v168, __s);
    v27 = v425;
    v170 = v425 + 32 * v89;
    *v170 = 21;
    *(v170 + 24) = v169;
    *(v399 + 8 * v89) = v169;
    v171 = *(v170 + 12) + v409 + HIDWORD(v436);
    *(v170 + 12) = v171 & ~(v171 >> 31);
    v90 = v414;
    v160 = v414;
    v87 = v166;
    goto LABEL_279;
  }

LABEL_609:
  log_OutPublic(*(*a1 + 32), "FE_UNIXLIT", 39000, 0, v155, v156, v157, v158, v369);
  v305 = 2321555466;
LABEL_610:
  v13 = v415;
LABEL_532:
  v7 = v305;
LABEL_533:
  v26 = v399;
  v27 = v425;
LABEL_597:
  heap_Free(*(*a1 + 8), v27);
  v9 = v7;
LABEL_598:
  if (v434)
  {
    heap_Free(*(*a1 + 8), v434);
  }

  if (v26)
  {
    if (v13 >= 2)
    {
      v303 = (v26 + 8);
      v304 = v13 - 1;
      do
      {
        if (*v303)
        {
          heap_Free(*(*a1 + 8), *v303);
        }

        ++v303;
        --v304;
      }

      while (v304);
    }

    heap_Free(*(*a1 + 8), v26);
  }

LABEL_57:
  v56 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t fe_unixlit_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  v3 = *(a1 + 56);

  return synstrmaux_CloseStreams((a1 + 64), v3);
}

uint64_t fe_unixlit_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2321555457;
  }

  result = 0;
  *a2 = &IFeUnixlit;
  return result;
}

uint64_t LhpuCreate(uint64_t a1)
{
  result = heap_Alloc(a1, 52);
  if (result)
  {
    *result = 0;
    *(result + 12) = 0;
    *(result + 18) = 0;
  }

  return result;
}

uint64_t LhpuRemove(void *a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      heap_Free(a1, v3);
      *a2 = 0;
    }
  }

  return 0;
}

uint64_t LhpuSetSymbol(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 9)
  {
    return 4294967294;
  }

  __strncpy_chk();
  result = 0;
  *(a1 + a3) = 0;
  *(a1 + 12) = 0;
  *(a1 + 18) = 0;
  return result;
}

uint64_t LhpuSetDurValue(uint64_t a1, char *a2)
{
  v4 = atoi(a2);
  *(a1 + 16) = v4;
  *(a1 + 12) = 1;
  v5 = *a2;
  if (!v4)
  {
    v7 = 0;
    if (v5 == 48)
    {
      return 0;
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  result = 0;
  v7 = 2;
  if (v5 == 45 || v5 == 43)
  {
LABEL_8:
    *(a1 + 12) = v7;
  }

  return result;
}

uint64_t LhpuAddBpTime(uint64_t a1, char *a2)
{
  v2 = *(a1 + 18);
  if (v2 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = atoi(a2);
  result = 0;
  v6 = a1 + 4 * v2;
  *(v6 + 22) = v4;
  *(v6 + 20) = 0;
  *(a1 + 18) = v2 + 1;
  return result;
}

uint64_t phonmapmrk_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2322604033;
  }

  result = 0;
  *a2 = &IPhonmapmrk;
  return result;
}

uint64_t phonmapmrk_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2322604039;
  v31 = 0;
  v32 = 0;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v32);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      log_OutText(*(v32 + 32), "PHONMAP", 4, 0, "Entering phonmapmrk_ObjOpen", v10, v11, v12, v29);
      v13 = heap_Calloc(*(v32 + 8), 1, 912);
      if (v13)
      {
        v14 = v13;
        v15 = v32;
        v13[1] = a4;
        v13[2] = v15;
        *v13 = a3;
        Object = objc_GetObject(*(v32 + 48), "SYNTHSTREAM", &v31);
        if ((Object & 0x80000000) != 0)
        {
          v5 = Object;
          log_OutPublic(*(v14[2] + 32), "PHONMAP", 45101, 0, v17, v18, v19, v20, v30);
          *a5 = v14;
          *(a5 + 8) = 29349;
          phonmapmrk_ObjClose(v14, *(a5 + 8));
          v14 = 0;
          v27 = 0;
        }

        else
        {
          v14[109] = *(v31 + 8);
          v21 = objc_GetObject(*(v32 + 48), "PHONMAP", &v31);
          if ((v21 & 0x80000000) != 0)
          {
            log_OutPublic(*(v14[2] + 32), "PHONMAP", 45102, 0, v22, v23, v24, v25, v30);
            v5 = 0;
          }

          else
          {
            v5 = v21;
            v26 = v31;
            v14[3] = *(v31 + 8);
            *(v14 + 2) = *(v26 + 16);
          }

          v27 = 29349;
        }

        *a5 = v14;
        *(a5 + 8) = v27;
        log_OutText(*(v32 + 32), "PHONMAP", 4, 0, "Leaving phonmapmrk_ObjOpen: %x", v23, v24, v25, v5);
      }

      else
      {
        return 2322604042;
      }
    }
  }

  return v5;
}

uint64_t phonmapmrk_ObjClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 29349, 912);
  if ((v3 & 0x80000000) != 0)
  {
    return 2322604040;
  }

  v7 = v3;
  v8 = a1[2];
  log_OutText(*(v8 + 32), "PHONMAP", 4, 0, "Entering phonmapmrk_ObjClose", v4, v5, v6, v16);
  if (a1[109])
  {
    v9 = objc_ReleaseObject(*(v8 + 48), "SYNTHSTREAM");
    if (v9 >= 0)
    {
      v7 = v7;
    }

    else
    {
      v7 = v9;
    }
  }

  if (a1[3])
  {
    v10 = objc_ReleaseObject(*(v8 + 48), "PHONMAP");
    if (v10 >= 0 || v7 <= -1)
    {
      v7 = v7;
    }

    else
    {
      v7 = v10;
    }
  }

  heap_Free(*(v8 + 8), a1);
  log_OutText(*(v8 + 32), "PHONMAP", 4, 0, "Leaving phonmapmrk_ObjClose: %x", v12, v13, v14, v7);
  return v7;
}

uint64_t phonmapmrk_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 1;
  v9 = 0;
  if ((safeh_HandleCheck(a1, a2, 29349, 912) & 0x80000000) != 0)
  {
    return 2322604040;
  }

  synstrmaux_InitStreamOpener(a1 + 48, *(*(a1 + 16) + 32), "PHONMAP");
  if (!*(a1 + 32))
  {
    return 0;
  }

  result = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "markermode", &v9);
  if ((result & 0x80000000) == 0)
  {
    if ((v9 & 4) == 0 || (paramc_ParamGetInt(*(*(a1 + 16) + 40), "phonmapmrkenabled", &v8) & 0x80000000) == 0 && !v8)
    {
      return 0;
    }

    synstrmaux_RegisterInStream((a1 + 48), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 880);
    synstrmaux_RegisterOutStream((a1 + 48), "application/x-realspeak-markers-pp;version=4.0", a1 + 896);
    return synstrmaux_OpenStreams((a1 + 48), *(a1 + 872), a3, a4);
  }

  return result;
}

uint64_t phonmapmrk_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v7 = safeh_HandleCheck(a1, a2, 29349, 912);
  if ((v7 & 0x80000000) != 0)
  {
    return 2322604040;
  }

  v8 = v7;
  *a5 = 1;
  v9 = *(a1 + 880);
  if (v9)
  {
    v8 = (*(*(a1 + 872) + 144))(v9, *(a1 + 888), &v48 + 4, &v48);
    if ((v8 & 0x80000000) != 0)
    {
LABEL_10:
      log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45105, "%s%x", v10, v11, v12, v13, "lhError");
      return v8;
    }

    if (HIDWORD(v48))
    {
      v14 = (*(*(a1 + 872) + 88))(*(a1 + 880), *(a1 + 888), &v47, &v48 + 4);
      if ((v14 & 0x80000000) != 0)
      {
        v8 = v14;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45105, "%s%x", v15, v16, v17, v18, "lhError");
        return v8;
      }

      v19 = (*(*(a1 + 872) + 112))(*(a1 + 896), *(a1 + 904), &v46, HIDWORD(v48));
      if ((v19 & 0x80000000) != 0)
      {
        v8 = v19;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45106, "%s%x", v20, v21, v22, v23, "lhError");
        (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), 0);
        return v8;
      }

      v24 = HIDWORD(v48);
      v25 = HIDWORD(v48) >> 5;
      HIDWORD(v48) >>= 5;
      if (v24 >= 0x20)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v28 = (v46 + v26);
          v29 = (v47 + v26);
          v30 = *(v47 + v26 + 16);
          *v28 = *(v47 + v26);
          v28[1] = v30;
          if (*v29 == 33)
          {
            v44 = 0;
            *v28 = 38;
            v45[0] = v29[6];
            v45[1] = 0;
            if (((*(*(a1 + 24) + 64))(*(a1 + 32), *(a1 + 40), 0, v45, &v44, 0) & 0x80000000) != 0)
            {
              v43 = *(v47 + v26 + 24);
              log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45107, "%s%u%s%x", v31, v32, v33, v34, "phonemeID");
              v35 = &szEMPTY;
            }

            else
            {
              v35 = v44;
            }

            *(v46 + v26 + 24) = v35;
            v25 = HIDWORD(v48);
          }

          ++v27;
          v26 += 32;
        }

        while (v27 < v25);
      }

      else
      {
        v26 = 0;
      }

      v36 = (*(*(a1 + 872) + 120))(*(a1 + 896), *(a1 + 904), v26);
      if ((v36 & 0x80000000) != 0)
      {
        v41 = v36;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45106, "%s%x", v37, v38, v39, v40, "lhError");
        (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), 0);
        return v41;
      }

      v8 = (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), v26);
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_10;
      }
    }

    else if (v48)
    {
      return synstrmaux_CloseOutStreamsOnly((a1 + 48), *(a1 + 872));
    }

    else
    {
      *a5 = 0;
    }
  }

  return v8;
}

uint64_t phonmapmrk_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 29349, 912) & 0x80000000) != 0)
  {
    return 2322604040;
  }

  v3 = *(a1 + 872);

  return synstrmaux_CloseStreams((a1 + 48), v3);
}

uint64_t LhplGetSymbol(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v7 = a1;
  v8 = 0;
  k = a1;
  v10 = "0123456789+-";
  v11 = a1;
  v12 = "0123456789";
LABEL_2:
  v13 = k;
  while (1)
  {
    while (v8 > 1)
    {
      if (v8 == 2)
      {
        v14 = *v13;
        if (v14 <= 0x20)
        {
          if (v14 > 0xC)
          {
            if (v14 != 13 && v14 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            result = 0xFFFFFFFFLL;
            if (v14 < 9 || v14 == 12)
            {
              return result;
            }
          }

          v25 = v13 + 1;
          v24 = v13[1];
          if (v24 > 0x20)
          {
            if (v24 > 0x2C)
            {
              if (v24 != 45)
              {
LABEL_108:
                if (v24 - 48 >= 0xA)
                {
                  return 0xFFFFFFFFLL;
                }

                goto LABEL_109;
              }

LABEL_107:
              v32 = *++v25;
              v24 = v32;
              goto LABEL_108;
            }
          }

          else
          {
            if (v24 > 0xC)
            {
              if (v24 != 32 && v24 != 13)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              result = 0xFFFFFFFFLL;
              if (v24 < 9 || v24 == 12)
              {
                return result;
              }
            }

            v25 = v13 + 2;
            v24 = v13[2];
            if (v24 <= 0x20)
            {
              do
              {
                if (v24 > 0xC)
                {
                  if (v24 != 13 && v24 != 32)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

                else
                {
                  result = 0xFFFFFFFFLL;
                  if (v24 < 9 || v24 == 12)
                  {
                    return result;
                  }
                }

                v31 = *++v25;
                v24 = v31;
              }

              while (v31 < 0x21);
            }

            if (v24 > 0x2C)
            {
              if (v24 != 45)
              {
                if (v24 - 48 > 9)
                {
                  return 0xFFFFFFFFLL;
                }

LABEL_109:
                ++v25;
                while (1)
                {
                  v24 = *v25;
                  if (v24 <= 0x1F)
                  {
                    break;
                  }

                  if (v24 <= 0x2C)
                  {
                    goto LABEL_154;
                  }

                  ++v25;
                  if (v24 - 48 >= 0xA)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

LABEL_85:
                if (v24 <= 0xB)
                {
                  if (v24 >= 9)
                  {
                    goto LABEL_213;
                  }

                  return 0xFFFFFFFFLL;
                }

                v29 = v24 == 13;
                goto LABEL_221;
              }

              goto LABEL_107;
            }
          }

          if (v24 != 43)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_107;
        }

        if (v14 <= 0x2C)
        {
          if (v14 != 43)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_57:
          v25 = v13;
          goto LABEL_107;
        }

        if (v14 == 45)
        {
          goto LABEL_57;
        }

        if (v14 - 48 >= 0xA)
        {
          return 0xFFFFFFFFLL;
        }

        v25 = v13 + 1;
        v24 = v13[1];
        if (v24 <= 0x1F)
        {
          goto LABEL_85;
        }

        if (v24 > 0x2C)
        {
          goto LABEL_108;
        }

LABEL_154:
        if (v24 == 32)
        {
          while (1)
          {
LABEL_213:
            while (1)
            {
              v24 = *++v25;
              if (v24 > 0xD)
              {
                break;
              }

              if (v24 < 9 || v24 == 12)
              {
                return 0xFFFFFFFFLL;
              }
            }

            v29 = v24 == 32;
            if (v24 > 0x20)
            {
              break;
            }

LABEL_221:
            if (!v29)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v24 != 44)
        {
          return 0xFFFFFFFFLL;
        }

        v52 = (v13 - 1);
        do
        {
          v53 = *++v52;
        }

        while (!memchr(v10, v53, 0xDuLL));
        v13 = v25 + 1;
        LhpuAddBpTime(a2, v52);
        v8 = 3;
      }

      else
      {
        v17 = *v13;
        if (v17 <= 0xD)
        {
          v18 = v17 < 9 || v17 == 12;
          if (v18)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_28:
          i = v13 + 1;
          v20 = v13[1];
          if (v20 > 0xD)
          {
            if (v20 > 0x20)
            {
LABEL_131:
              if (v20 - 48 >= 0xA)
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_132;
            }

            if (v20 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            result = 0xFFFFFFFFLL;
            if (v20 < 9 || v20 == 12)
            {
              return result;
            }
          }

          for (i = v13 + 2; ; ++i)
          {
            v22 = *i;
            if (v22 > 0xD)
            {
              if (v22 > 0x20)
              {
                if (v22 - 48 > 9)
                {
                  return 0xFFFFFFFFLL;
                }

LABEL_132:
                ++i;
                while (1)
                {
                  v20 = *i;
                  if (v20 <= 0x1F)
                  {
                    break;
                  }

                  if (v20 <= 0x29)
                  {
                    goto LABEL_129;
                  }

                  ++i;
                  if (v20 - 48 >= 0xA)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

LABEL_60:
                if (v20 <= 0xB)
                {
                  if (v20 < 9)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  goto LABEL_188;
                }

                v28 = v20 == 13;
                goto LABEL_196;
              }

              if (v22 != 32)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else if (v22 < 9 || v22 == 12)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v17 <= 0x20)
        {
          if (v17 != 32)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_28;
        }

        if (v17 - 48 >= 0xA)
        {
          return 0xFFFFFFFFLL;
        }

        i = v13 + 1;
        v20 = v13[1];
        if (v20 <= 0x1F)
        {
          goto LABEL_60;
        }

        if (v20 > 0x29)
        {
          goto LABEL_131;
        }

LABEL_129:
        if (v20 == 32)
        {
          while (1)
          {
LABEL_188:
            while (1)
            {
              v20 = *++i;
              if (v20 > 0xD)
              {
                break;
              }

              if (v20 < 9 || v20 == 12)
              {
                return 0xFFFFFFFFLL;
              }
            }

            v28 = v20 == 32;
            if (v20 > 0x20)
            {
              break;
            }

LABEL_196:
            if (!v28)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v20 != 41)
        {
          return 0xFFFFFFFFLL;
        }

        for (j = i + 2; ; ++j)
        {
          v48 = *(j - 1);
          if (v48 <= 0x1F)
          {
            if (v48 > 0xB)
            {
              if (v48 != 13)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else if (v48 < 9)
            {
              return 0xFFFFFFFFLL;
            }

            continue;
          }

          if (v48 > 0x28)
          {
            if (v48 != 93)
            {
              return 0xFFFFFFFFLL;
            }

            --v13;
            do
            {
              v75 = *++v13;
            }

            while (!memchr("0123456789", v75, 0xBuLL));
            LhpuSetBpPitch(a2, v13);
            LOBYTE(v13) = v11;
            goto LABEL_408;
          }

          if (v48 != 32)
          {
            break;
          }
        }

        if (v48 != 40)
        {
          return 0xFFFFFFFFLL;
        }

        v49 = (v13 - 1);
        do
        {
          v50 = *++v49;
        }

        while (!memchr(v12, v50, 0xBuLL));
        LhpuSetBpPitch(a2, v49);
        v8 = 2;
        v13 = j;
      }
    }

    if (v8 != 1)
    {
      v54 = *v13;
      if (v54 > 0x2D)
      {
        if (v54 > 0x4A)
        {
          result = 0xFFFFFFFFLL;
          if (v54 > 0x5D)
          {
            if (v54 == 96 || v54 > 0x7A)
            {
              return result;
            }
          }

          else if (v54 == 75 || v54 > 0x5A)
          {
            return result;
          }
        }

        else if (v54 > 0x39)
        {
          result = 0xFFFFFFFFLL;
          if (v54 < 0x3F || v54 == 70)
          {
            return result;
          }
        }

        else if (v54 != 46 && v54 < 0x37)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (v54 <= 0x20)
        {
          if (v54 > 0xB)
          {
            if (v54 != 13 && v54 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            if (!*v13)
            {
              return 1;
            }

            if (v54 < 9)
            {
              return 0xFFFFFFFFLL;
            }
          }

          for (k = v13 + 1; ; ++k)
          {
            v55 = *k;
            if (v55 > 0xC)
            {
              if (v55 != 32 && v55 != 13)
              {
LABEL_262:
                v8 = 0;
                v11 = v13;
                goto LABEL_2;
              }
            }

            else if (v55 < 9 || v55 == 12)
            {
              goto LABEL_262;
            }
          }
        }

        if (v54 > 0x26)
        {
          if (v54 != 39)
          {
            if (v54 != 42)
            {
              return 0xFFFFFFFFLL;
            }

            j = v13 + 1;
            v76 = v13[1];
            if (v76 > 0x2D)
            {
              if (v76 > 0x3B)
              {
                v77 = v76 == 63;
                goto LABEL_424;
              }

              if (v76 != 46 && v76 <= 0x39)
              {
                return 0xFFFFFFFFLL;
              }

LABEL_427:
              ++j;
            }

            else
            {
              v77 = v76 == 33;
              if (v76 > 0x21)
              {
                if (v76 != 44)
                {
                  return 0xFFFFFFFFLL;
                }

                goto LABEL_427;
              }

LABEL_424:
              if (!v77)
              {
                return 0xFFFFFFFFLL;
              }

              j = v13 + 2;
              if (v13[2] == 92)
              {
                goto LABEL_427;
              }
            }

LABEL_428:
            LhpuSetSymbol(a2, v13, j - v13);
LABEL_408:
            result = 0;
            *a3 = v13 - v7;
            *a4 = j + ~v7;
            return result;
          }
        }

        else
        {
          result = 0xFFFFFFFFLL;
          if (v54 == 33 || v54 > 0x24)
          {
            return result;
          }
        }
      }

      for (j = v13 + 1; ; ++j)
      {
        v58 = *j;
        if (v58 > 0x3C)
        {
          if (v58 > 0x5B)
          {
            if (v58 > 0x7A)
            {
              if (v58 == 124 || v58 >= 0x7F)
              {
                goto LABEL_428;
              }
            }

            else if (v58 != 96 && v58 != 92)
            {
              goto LABEL_428;
            }
          }

          else if (v58 > 0x46)
          {
            if (v58 != 75)
            {
              goto LABEL_398;
            }
          }

          else if (v58 != 62 && v58 != 70)
          {
            goto LABEL_428;
          }
        }

        else if (v58 > 0x2B)
        {
          if (v58 > 0x36)
          {
            if (v58 != 58 && v58 != 60)
            {
              goto LABEL_428;
            }
          }

          else if (v58 != 45 && v58 < 0x30)
          {
            goto LABEL_428;
          }
        }

        else if (v58 > 0x24)
        {
          if (v58 == 37)
          {
            do
            {
              v59 = j[1];
              if (v59 > 0x22)
              {
                if (v59 == 37)
                {
                  goto LABEL_428;
                }

                v62 = j;
                if (v59 >= 0x7F)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v59 < 0x21)
                {
                  goto LABEL_428;
                }

                if (v59 == 34)
                {
                  v60 = j + 2;
                  v61 = j[2];
                  if (v61 > 0x22)
                  {
                    if (v61 == 37 || v61 > 0x7E)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v61 != 33)
                  {
                    goto LABEL_428;
                  }

                  do
                  {
                    while (1)
                    {
                      v63 = v60[1];
                      if (v63 <= 0x22)
                      {
                        break;
                      }

                      if (v63 != 37)
                      {
                        ++v60;
                        if (v63 < 0x7F)
                        {
                          continue;
                        }
                      }

                      goto LABEL_428;
                    }

                    if (v63 < 0x21)
                    {
                      goto LABEL_428;
                    }

                    v62 = v60++;
                  }

                  while (v63 != 34);
                }

                else
                {
                  v62 = j;
                }
              }

              v58 = v62[2];
              j = v62 + 2;
              if (v58 > 0x26)
              {
                goto LABEL_398;
              }

              if (v58 < 0x25)
              {
                goto LABEL_428;
              }
            }

            while (v58 != 38);
LABEL_384:
            while (2)
            {
              v69 = j[1];
              if (v69 > 0x3E)
              {
                if (v69 > 0x5A)
                {
                  if (v69 > 0x5F)
                  {
                    if (v69 == 96 || v69 > 0x7A)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v69 < 0x5E)
                  {
                    goto LABEL_428;
                  }
                }

                else
                {
                  v71 = v69 == 70;
                  if (v69 > 0x46)
                  {
                    v71 = v69 == 75;
                  }

                  if (v71)
                  {
                    goto LABEL_428;
                  }
                }
              }

              else if (v69 > 0x27)
              {
                v70 = v69 == 46;
                if (v69 <= 0x2E)
                {
                  goto LABEL_396;
                }

                if (v69 - 55 >= 3)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v69 < 0x22)
                {
                  goto LABEL_428;
                }

                if (v69 >= 0x25)
                {
                  v70 = v69 == 39;
LABEL_396:
                  if (!v70)
                  {
                    goto LABEL_428;
                  }
                }
              }

              j += 2;
              while (2)
              {
                v58 = *j;
                if (v58 > 0x3C)
                {
                  if (v58 > 0x5B)
                  {
                    if (v58 > 0x7A)
                    {
                      if (v58 == 124 || v58 >= 0x7F)
                      {
                        goto LABEL_428;
                      }
                    }

                    else if (v58 != 92 && v58 != 96)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v58 > 0x46)
                  {
                    if (v58 != 75)
                    {
                      goto LABEL_398;
                    }
                  }

                  else if (v58 != 62 && v58 != 70)
                  {
                    goto LABEL_428;
                  }

                  goto LABEL_361;
                }

                if (v58 > 0x2B)
                {
                  if (v58 > 0x36)
                  {
                    if (v58 != 58 && v58 != 60)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v58 != 45 && v58 < 0x30)
                  {
                    goto LABEL_428;
                  }

                  goto LABEL_361;
                }

                if (v58 <= 0x24)
                {
                  if (v58 != 33)
                  {
                    goto LABEL_428;
                  }

LABEL_361:
                  ++j;
                  continue;
                }

                break;
              }

              if (v58 != 37)
              {
                if (v58 < 0x27)
                {
                  continue;
                }

                if (v58 != 43)
                {
                  goto LABEL_428;
                }

                goto LABEL_361;
              }

              break;
            }

            while (1)
            {
              v67 = j[1];
              if (v67 > 0x22)
              {
                if (v67 == 37)
                {
                  goto LABEL_428;
                }

                v65 = j;
                if (v67 > 0x7E)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v67 < 0x21)
                {
                  goto LABEL_428;
                }

                if (v67 == 34)
                {
                  v66 = j + 2;
                  v68 = j[2];
                  if (v68 > 0x22)
                  {
                    if (v68 == 37 || v68 > 0x7E)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v68 != 33)
                  {
                    goto LABEL_428;
                  }

                  do
                  {
                    while (1)
                    {
                      v64 = v66[1];
                      if (v64 <= 0x22)
                      {
                        break;
                      }

                      if (v64 != 37)
                      {
                        ++v66;
                        if (v64 < 0x7F)
                        {
                          continue;
                        }
                      }

                      goto LABEL_428;
                    }

                    if (v64 < 0x21)
                    {
                      goto LABEL_428;
                    }

                    v65 = v66++;
                  }

                  while (v64 != 34);
                }

                else
                {
                  v65 = j;
                }
              }

              v58 = v65[2];
              j = v65 + 2;
              if (v58 > 0x26)
              {
                break;
              }

              if (v58 < 0x25)
              {
                goto LABEL_428;
              }

              if (v58 == 38)
              {
                goto LABEL_384;
              }
            }

LABEL_398:
            if (v58 != 91)
            {
              goto LABEL_428;
            }

            k = j + 1;
            LhpuSetSymbol(a2, v13, j - v13);
            v8 = 1;
            v11 = v13;
            goto LABEL_2;
          }

          if (v58 < 0x27)
          {
            goto LABEL_384;
          }

          if (v58 != 43)
          {
            goto LABEL_428;
          }
        }

        else if (v58 != 33)
        {
          goto LABEL_428;
        }
      }
    }

    v16 = *v13;
    if (v16 > 0x27)
    {
      break;
    }

    if (v16 > 0xC)
    {
      if (v16 != 13 && v16 != 32)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      result = 0xFFFFFFFFLL;
      if (v16 < 9 || v16 == 12)
      {
        return result;
      }
    }

    v21 = v13 + 1;
    v26 = v13[1];
    if (v26 > 0x27)
    {
      if (v26 > 0x2C)
      {
        if (v26 != 45)
        {
          if (v26 - 48 >= 0xA)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_165;
        }

        goto LABEL_141;
      }
    }

    else
    {
      if (v26 > 0xC)
      {
        if (v26 != 32 && v26 != 13)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        result = 0xFFFFFFFFLL;
        if (v26 < 9 || v26 == 12)
        {
          return result;
        }
      }

      v21 = v13 + 2;
      v26 = v13[2];
      if (v26 <= 0x27)
      {
        do
        {
          if (v26 > 0xC)
          {
            if (v26 != 13 && v26 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            result = 0xFFFFFFFFLL;
            if (v26 < 9 || v26 == 12)
            {
              return result;
            }
          }

          v33 = *++v21;
          v26 = v33;
        }

        while (v33 < 0x28);
      }

      if (v26 > 0x2C)
      {
        if (v26 != 45)
        {
          if (v26 - 48 > 9)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_165;
        }

        goto LABEL_141;
      }
    }

    if (v26 != 40)
    {
      if (v26 != 43)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_141:
      v34 = v21[1];
      v27 = v21 + 1;
      if ((v34 - 48) > 9)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_142:
      v21 = v27 + 1;
      while (1)
      {
        v30 = *v21;
        if (v30 <= 0x20)
        {
          break;
        }

        if (v30 <= 0x2F)
        {
          goto LABEL_157;
        }

        ++v21;
        if (v30 >= 0x3A)
        {
          goto LABEL_400;
        }
      }

      if (v30 > 0xC)
      {
        if (v30 != 32 && v30 != 13)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_179;
      }

      goto LABEL_171;
    }

LABEL_158:
    v78 = v11;
    v36 = v10;
    v37 = v7;
    v38 = v12;
    v39 = a2;
    v40 = a3;
    v41 = a4;
    v42 = (v13 - 1);
    do
    {
      v44 = *++v42;
      v43 = v44;
    }

    while (!memchr("0123456789+-(", v44, 0xEuLL));
    v13 = v21 + 1;
    v8 = 2;
    v18 = v43 == 40;
    a4 = v41;
    a3 = v40;
    a2 = v39;
    v12 = v38;
    v7 = v37;
    v10 = v36;
    v11 = v78;
    if (!v18)
    {
      LhpuSetDurValue(a2, v42);
      v8 = 2;
    }
  }

  if (v16 <= 0x2C)
  {
    v21 = v13;
    if (v16 != 40)
    {
      if (v16 != 43)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_71:
      v27 = v13 + 1;
      if (v13[1] - 48 >= 0xA)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_142;
    }

    goto LABEL_158;
  }

  if (v16 == 45)
  {
    goto LABEL_71;
  }

  if (v16 - 48 >= 0xA)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = v13 + 1;
  v30 = v13[1];
  if (v30 <= 0x20)
  {
    if (v30 <= 0xC)
    {
      result = 0xFFFFFFFFLL;
      if (v30 < 9 || v30 == 12)
      {
        return result;
      }

      goto LABEL_179;
    }

    goto LABEL_177;
  }

  if (v30 <= 0x2F)
  {
LABEL_157:
    if (v30 != 40)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_158;
  }

  if (v30 >= 0x3A)
  {
    goto LABEL_402;
  }

LABEL_165:
  ++v21;
  while (1)
  {
    v30 = *v21;
    if (v30 <= 0x20)
    {
      break;
    }

    if (v30 <= 0x2F)
    {
      goto LABEL_157;
    }

    ++v21;
    if (v30 >= 0x3A)
    {
LABEL_400:
      if (v30 != 93)
      {
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v21) = v21 - 1;
LABEL_403:
      v72 = (v13 - 1);
      do
      {
        v74 = *++v72;
        v73 = v74;
      }

      while (!memchr("0123456789+-]", v74, 0xEuLL));
      LOBYTE(j) = v21 + 1;
      if (v73 != 93)
      {
        LhpuSetDurValue(a2, v72);
      }

      LOBYTE(v13) = v11;
      goto LABEL_408;
    }
  }

  if (v30 > 0xC)
  {
LABEL_177:
    if (v30 != 13 && v30 != 32)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_179;
  }

LABEL_171:
  if (v30 < 9 || v30 == 12)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
LABEL_179:
    while (1)
    {
      v30 = *++v21;
      if (v30 > 0x1F)
      {
        break;
      }

      if (v30 > 0xB)
      {
        if (v30 != 13)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (v30 < 9)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (v30 > 0x28)
    {
      break;
    }

    if (v30 != 32)
    {
      goto LABEL_157;
    }
  }

LABEL_402:
  if (v30 == 93)
  {
    goto LABEL_403;
  }

  return 0xFFFFFFFFLL;
}

uint64_t phonmap_GetLanguagesInVoiceMaps(uint64_t a1, int a2, _WORD *a3, unsigned __int16 *a4, char *a5)
{
  v5 = 2322604039;
  if (!a3 || !a4)
  {
    return 2322604039;
  }

  v10 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v10 & 0x80000000) == 0)
  {
    Size = ssftmap_GetSize(*(a1 + 56));
    *a3 = Size;
    if (!a5)
    {
      *a4 = 4 * Size;
      return v10;
    }

    v12 = *a4;
    if (v12 < 4)
    {
      return 2322604041;
    }

    v14 = *(a1 + 56);
    v24 = 0;
    if (v14)
    {
      *a5 = 0;
      *a4 = 1;
      if ((ssftmap_IteratorOpen(v14, 0, 1, &v24) & 0x80000000) == 0)
      {
        v22 = 0;
        __s = 0;
        if ((ssftmap_IteratorNext(v24, &__s, &v22) & 0x80000000) != 0)
        {
          v18 = 0;
        }

        else
        {
          v15 = strlen(a5);
          v16 = __s;
          if (v15 + strlen(__s) + 1 > v12)
          {
            v17 = 0;
LABEL_19:
            a5[v17 - 1] = 0;
            ssftmap_IteratorClose(v24);
            return 2322604041;
          }

          while (1)
          {
            v19 = strcat(a5, v16);
            *&a5[strlen(v19)] = 44;
            v20 = strlen(a5);
            *a4 = v20;
            if ((ssftmap_IteratorNext(v24, &__s, &v22) & 0x80000000) != 0)
            {
              break;
            }

            v21 = strlen(a5);
            v16 = __s;
            if (v21 + strlen(__s) + 1 > v12)
            {
              v17 = v20;
              goto LABEL_19;
            }
          }

          v18 = v20;
        }

        a5[v18 - 1] = 0;
        ssftmap_IteratorClose(v24);
      }

      return 0;
    }

    return v5;
  }

  return v10;
}

uint64_t phonmap_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 2)
  {
    return 2322604033;
  }

  result = 0;
  *a2 = &IPhonmap;
  return result;
}

uint64_t phonmap_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Data = 2322604038;
  v38 = 0;
  v39 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v39);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v39 + 32), "PHONMAP", 4, 0, "PHONMAP ObjOpen: Begin", v10, v11, v12, v32);
      v13 = heap_Calloc(*(v39 + 8), 1, 624);
      if (v13)
      {
        v18 = v13;
        *v13 = a3;
        v13[1] = a4;
        v19 = v39;
        v13[2] = v39;
        if ((paramc_ParamGetStr(*(v19 + 40), "fevoice", &v38) & 0x80000000) != 0 && (Str = paramc_ParamGetStr(*(v39 + 40), "voice", &v38), (Str & 0x80000000) != 0))
        {
          Data = Str;
        }

        else
        {
          Data = phonmap_loc_LoadData(v18, v38, v20, v21, v22, v23, v24, v25);
          if (v38)
          {
            paramc_ParamRelease(*(v39 + 40));
          }

          if ((Data & 0x80000000) == 0)
          {
            v27 = *(v18[2] + 8);
            *&v34 = ssftmap_ElemCopyString;
            *(&v34 + 1) = ssftmap_ElemFreeString;
            v35 = ssftmap_ElemCompareKeysString;
            v36 = stringmap_loc_ElemCopyPtr_0;
            v37 = stringmap_loc_ElemFreeNoOp_0;
            Data = ssftmap_ObjOpen(v27, 0, &v34, v18 + 77);
            if ((Data & 0x80000000) == 0)
            {
              *a5 = v18;
              *(a5 + 8) = 29348;
LABEL_15:
              log_OutText(*(v39 + 32), "PHONMAP", 4, 0, "PHONMAP ObjOpen: End (%x)", v28, v29, v30, Data);
              return Data;
            }
          }
        }

        *a5 = v18;
        *(a5 + 8) = 29348;
        phonmap_ObjClose(v18, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
        goto LABEL_15;
      }

      log_OutPublic(*(v39 + 32), "PHONMAP", 29000, 0, v14, v15, v16, v17, v33);
      Data = 2322604042;
      goto LABEL_15;
    }

    return inited;
  }

  return Data;
}

uint64_t phonmap_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 29348, 624);
  v7 = v3;
  if (v3 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v9 = a1[2];
    log_OutText(*(v9 + 32), "PHONMAP", 4, 0, "PHONMAP ObjClose : Begin", v4, v5, v6, v67);
    v17 = a1[3];
    if (v17)
    {
      v7 = stringmap_reader_ObjClose(v17, v10, v11, v12, v13, v14, v15, v16);
    }

    v18 = a1[4];
    if (v18)
    {
      v7 = stringmap_reader_ObjClose(v18, v10, v11, v12, v13, v14, v15, v16);
    }

    v19 = a1[5];
    if (v19)
    {
      v7 = stringmap_reader_ObjClose(v19, v10, v11, v12, v13, v14, v15, v16);
    }

    v20 = a1[6];
    if (v20)
    {
      v7 = stringmap_reader_ObjClose(v20, v10, v11, v12, v13, v14, v15, v16);
    }

    v21 = a1[7];
    if (v21)
    {
      v70 = 0;
      if ((ssftmap_IteratorOpen(v21, 0, 1, &v70) & 0x80000000) == 0)
      {
        v68 = 0;
        v69 = 0;
        while ((ssftmap_IteratorNext(v70, &v69, &v68) & 0x80000000) == 0)
        {
          v7 = stringmap_reader_ObjClose(v68, v22, v23, v24, v25, v26, v27, v28);
        }

        ssftmap_IteratorClose(v70);
      }

      ssftmap_ObjClose(a1[7]);
    }

    v29 = v8[9];
    if (v29)
    {
      v70 = 0;
      if ((ssftmap_IteratorOpen(v29, 0, 1, &v70) & 0x80000000) == 0)
      {
        v68 = 0;
        v69 = 0;
        while ((ssftmap_IteratorNext(v70, &v69, &v68) & 0x80000000) == 0)
        {
          v7 = stringmap_reader_ObjClose(v68, v30, v31, v32, v33, v34, v35, v36);
        }

        ssftmap_IteratorClose(v70);
      }

      ssftmap_ObjClose(v8[9]);
    }

    v37 = v8[8];
    if (v37)
    {
      v70 = 0;
      if ((ssftmap_IteratorOpen(v37, 0, 1, &v70) & 0x80000000) == 0)
      {
        v68 = 0;
        v69 = 0;
        while ((ssftmap_IteratorNext(v70, &v69, &v68) & 0x80000000) == 0)
        {
          v7 = stringmap_reader_ObjClose(v68, v38, v39, v40, v41, v42, v43, v44);
        }

        ssftmap_IteratorClose(v70);
      }

      ssftmap_ObjClose(v8[8]);
    }

    v45 = v8[10];
    if (v45)
    {
      v70 = 0;
      if ((ssftmap_IteratorOpen(v45, 0, 1, &v70) & 0x80000000) == 0)
      {
        v68 = 0;
        v69 = 0;
        while ((ssftmap_IteratorNext(v70, &v69, &v68) & 0x80000000) == 0)
        {
          v7 = stringmap_reader_ObjClose(v68, v46, v47, v48, v49, v50, v51, v52);
        }

        ssftmap_IteratorClose(v70);
      }

      ssftmap_ObjClose(v8[10]);
    }

    v53 = v8[75];
    if (v53)
    {
      v7 = stringmap_reader_ObjClose(v53, v10, v11, v12, v13, v14, v15, v16);
    }

    v54 = v8[76];
    if (v54)
    {
      v7 = stringmap_reader_ObjClose(v54, v10, v11, v12, v13, v14, v15, v16);
    }

    v55 = v8[77];
    if (v55)
    {
      v70 = 0;
      if ((ssftmap_IteratorOpen(v55, 0, 1, &v70) & 0x80000000) == 0)
      {
        v68 = 0;
        v69 = 0;
        while ((ssftmap_IteratorNext(v70, &v69, &v68) & 0x80000000) == 0)
        {
          v7 = stringmap_reader_ObjClose(v68, v56, v57, v58, v59, v60, v61, v62);
        }

        ssftmap_IteratorClose(v70);
      }

      ssftmap_ObjClose(v8[77]);
    }

    heap_Free(*(v9 + 8), v8);
    log_OutText(*(v9 + 32), "PHONMAP", 4, 0, "PHONMAP ObjClose : End (%x)", v63, v64, v65, v7);
  }

  return v7;
}

uint64_t phonmap_ObjReopen(uint64_t *a1, int a2)
{
  v18 = 0;
  v3 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v7 = a1[2];
  log_OutText(*(v7 + 32), "PHONMAP", 4, 0, "PHONMAP ObjReopen : Begin", v4, v5, v6, v17);
  if ((paramc_ParamGetStr(*(v7 + 40), "fevoice", &v18) & 0x80000000) != 0 && (Str = paramc_ParamGetStr(*(v7 + 40), "voice", &v18), (Str & 0x80000000) != 0))
  {
    Data = Str;
  }

  else
  {
    Data = phonmap_loc_LoadData(a1, v18, v8, v9, v10, v11, v12, v13);
    if (v18)
    {
      paramc_ParamRelease(*(v7 + 40));
    }
  }

  log_OutText(*(v7 + 32), "PHONMAP", 4, 0, "PHONMAP ObjReopen : End (%x)", v11, v12, v13, Data);
  return Data;
}

uint64_t phonmap_LhTtsToLhPSym(void *a1, int a2, int a3, char *a4, uint64_t *a5, char *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = 0;
  if (!a4 || !a5 || !*a4)
  {
    v29 = 2322604039;
    goto LABEL_14;
  }

  v11 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v11 & 0x80000000) != 0)
  {
    v29 = v11;
    goto LABEL_14;
  }

  v12 = a1[2];
  v13 = strlen(a4);
  v14 = Utf8_DepesLengthInBytesUtf8(a4, v13);
  v15 = heap_Alloc(*(v12 + 8), v14 + 1);
  if (!v15)
  {
    log_OutPublic(*(v12 + 32), "PHONMAP", 29000, 0, v16, v17, v18, v19, v36);
    v29 = 2322604042;
    goto LABEL_14;
  }

  v20 = v15;
  StrMap = utf8_DepesToUtf8(a4, v13, 0, v15, v14, 0, 0);
  if ((StrMap & 0x80000000) != 0)
  {
LABEL_17:
    v29 = StrMap;
    goto LABEL_18;
  }

  *(v20 + v14) = 0;
  log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "PHONMAP LhTtsToLhPSym : Begin (%s)", v22, v23, v24, v20);
  if (a3)
  {
    if (a3 != 1)
    {
      v32 = *(v12 + 32);
      v29 = 2322604039;
      goto LABEL_29;
    }

    if (!a6 || !*a6)
    {
      MapTroughLng = a1[3];
      v37 = MapTroughLng;
      goto LABEL_25;
    }

    strcpy(v38, "phonmap/");
    __strcat_chk();
    StrMap = phonmap_loc_GetStrMap(a1, v38, "LANG", &v37, 0);
    if ((StrMap & 0x80000000) == 0)
    {
      MapTroughLng = v37;
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (!a6 || !*a6)
  {
    v33 = phonmap_reader_Maps(a1[7], 1, a4, a5);
LABEL_27:
    v29 = v33;
    v32 = *(v12 + 32);
    if ((v29 & 0x80000000) == 0)
    {
      v34 = *a5;
    }

LABEL_29:
    log_OutText(v32, "PHONMAP", 4, 0, "PHONMAP LhTtsToLhPSym : End (%x, %s)", v25, v26, v27, v29);
    heap_Free(*(v12 + 8), v20);
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

  MapTroughLng = phonmap_findMapTroughLng(a1[7], a6);
  if (MapTroughLng)
  {
LABEL_25:
    v33 = stringmap_reader_ReverseMap(MapTroughLng, a4, a5);
    goto LABEL_27;
  }

  v29 = 2322604052;
LABEL_18:
  heap_Free(*(v12 + 8), v20);
LABEL_30:
  if ((v29 & 0x1FFFu) <= 0x14 && ((1 << v29) & 0x10001A) != 0)
  {
    v29 = (v29 & 0x1FFF) - 1972363264;
  }

LABEL_14:
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t phonmap_LhPToLhTtsSequence(void *a1, int a2, int a3, char *a4, unsigned int a5, char *a6, char *a7)
{
  v7 = phonmap_LhPToLhTtsSequenceLng(a1, a2, a3, a4, a5, a6, a7);
  v8 = v7 & 0x1FFF | 0x8A702000;
  if (((1 << v7) & 0x10001A) == 0)
  {
    v8 = v7;
  }

  if ((v7 & 0x1FFFu) <= 0x14)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 >= 0)
  {
    v9 = v7;
  }

  if (v7 == 1)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t phonmap_LhPToLhTtsSequenceWithCheck(void *a1, int a2, int a3, char *a4, unsigned int a5, char *a6)
{
  LODWORD(result) = phonmap_LhPToLhTtsSequenceLng(a1, a2, a3, a4, a5, a6, 0);
  v7 = (result & 0x1FFFu) > 0x14 || ((1 << result) & 0x10001A) == 0;
  v8 = result & 0x1FFF | 0x8A702000;
  if (v7)
  {
    v8 = result;
  }

  if (result < 0)
  {
    return v8;
  }

  else
  {
    return result;
  }
}

uint64_t phonmap_LhPToIpaSym(uint64_t a1, int a2, char *a3, uint64_t *a4)
{
  v4 = 2322604039;
  if (a3 && a4 && *a3)
  {
    v8 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP LhPToIpaSym : Begin", v9, v10, v11, v20);
      v15 = *(a1 + 600);
      if (v15)
      {
        v16 = stringmap_reader_WReverseMap(v15, a3, a4);
      }

      else
      {
        v16 = 2322604033;
      }

      log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP LhPToIpaSym : End (%x)", v12, v13, v14, v16);
      if (((1 << v16) & 0x10001A) != 0)
      {
        v17 = (v16 & 0x1FFF) - 1972363264;
      }

      else
      {
        v17 = v16;
      }

      if ((v16 & 0x1FFFu) <= 0x14)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (v16 < 0)
      {
        return v18;
      }

      else
      {
        return v16;
      }
    }
  }

  return v4;
}

uint64_t phonmap_IpaToLhPSequence(uint64_t a1, int a2, _WORD *a3, unsigned int a4, _WORD *a5, char *a6, _BYTE *a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v45 = 0;
  v46 = 0;
  memset(v50, 0, sizeof(v50));
  memset(v49, 0, sizeof(v49));
  __s = 0;
  if (a3)
  {
    StrMap = 2322604039;
    if (a5 && a4 && *a3)
    {
      *a5 = 0;
      v14 = safeh_HandleCheck(a1, a2, 29348, 624);
      StrMap = v14;
      v18 = v14 >= 0 ? a1 : 0;
      if ((v14 & 0x80000000) == 0)
      {
        log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : Begin", v15, v16, v17, v43);
        if (a6 && a7 && *a6 && *a7)
        {
          strcpy(v49, "phonmap_ipa/");
          __strcat_chk();
          paramc_ParamGetStr(*(*(a1 + 16) + 40), "fedataprefix", &__s);
          if (__s && *__s && (v22 = strlen(__s) - 1, __s[v22] == 47))
          {
            __strcpy_chk();
            v48[v22] = 0;
            v23 = 1;
            do
            {
              if (v23 == 1)
              {
                v24 = 1;
              }

              else
              {
                v24 = 2;
              }

              v25 = brokeraux_ComposeBrokerString(*(a1 + 16), v49, v24, 1, a6, v48, 0, v50, 0x80uLL);
              if (v25 < 0)
              {
                StrMap = v25 | 0x8A702000;
              }

              else
              {
                StrMap = phonmap_loc_GetStrMap(v18, v50, "IPA ", &v45, v23 == 1);
              }

              if (v23 > 1)
              {
                break;
              }

              ++v23;
            }

            while ((StrMap & 0x80000000) != 0);
          }

          else
          {
            v28 = brokeraux_ComposeBrokerString(*(a1 + 16), v49, 0, 1, a6, 0, 0, v50, 0x80uLL);
            if (v28 < 0)
            {
              StrMap = v28 | 0x8A702000;
            }

            else
            {
              StrMap = phonmap_loc_GetStrMap(a1, v50, "IPA ", &v45, 0);
            }
          }

          v26 = v45 != 0;
        }

        else
        {
          if (!*(a1 + 600))
          {
            log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", v19, v20, v21, 2322604033);
            v27 = 1;
LABEL_52:
            StrMap = v27 | 0x8A702000;
            goto LABEL_53;
          }

          v45 = *(a1 + 600);
          v26 = 1;
        }

        v29 = StrMap >= 0;
        if ((StrMap & 0x80000000) != 0 || !v26)
        {
LABEL_45:
          log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", v19, v20, v21, StrMap);
          if (v29)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
          while (1)
          {
            if (LH_wcslen(a3) <= v31)
            {
              log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", v32, v33, v34, StrMap);
              goto LABEL_53;
            }

            v35 = &a3[v31];
            if (*v35 == 32)
            {
              v36 = 1;
              v47 = 1;
              v46 = &phonmap_IpaToLhPSequence_szWordBnd;
              v37 = &phonmap_IpaToLhPSequence_szWordBnd;
            }

            else
            {
              StrMap = stringmap_reader_WMapToken(v45, v35, &v47, &v46);
              if ((StrMap & 0x80000000) != 0)
              {
                goto LABEL_49;
              }

              v36 = v47;
              v37 = v46;
            }

            if (LH_wcslen(v37) + v30 + 1 >= a4)
            {
              break;
            }

            v31 += v36;
            LH_wcscpy(&a5[v30], v46);
            v30 += LH_wcslen(v46);
            if (!v45)
            {
              v29 = 1;
              goto LABEL_45;
            }
          }

          StrMap = 2322604041;
LABEL_49:
          log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", v38, v39, v40, StrMap);
        }

        v27 = StrMap & 0x1FFF;
        if (v27 <= 0x14 && ((1 << StrMap) & 0x10001A) != 0)
        {
          goto LABEL_52;
        }
      }
    }
  }

  else
  {
    StrMap = 2322604039;
  }

LABEL_53:
  v41 = *MEMORY[0x1E69E9840];
  return StrMap;
}

uint64_t phonmap_LhPToSapi5Sym(void *a1, int a2, char *a3, uint64_t *a4)
{
  v4 = 2322604039;
  if (a3 && a4 && *a3)
  {
    v8 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    else
    {
      log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP LhPToSapi5Sym : Begin", v9, v10, v11, v20);
      v15 = a1[76];
      if (v15 || (v15 = a1[75]) != 0)
      {
        v16 = stringmap_reader_WReverseMap(v15, a3, a4);
      }

      else
      {
        v16 = 2322604033;
      }

      log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP LhPToSapi5Sym : End (%x)", v12, v13, v14, v16);
      if (((1 << v16) & 0x10001A) != 0)
      {
        v17 = (v16 & 0x1FFF) - 1972363264;
      }

      else
      {
        v17 = v16;
      }

      if ((v16 & 0x1FFFu) <= 0x14)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (v16 < 0)
      {
        return v18;
      }

      else
      {
        return v16;
      }
    }
  }

  return v4;
}

uint64_t phonmap_Sapi5ToLhPSequence(void *a1, int a2, _WORD *a3, unsigned int a4, _WORD *a5)
{
  v33 = 0;
  v32 = 0;
  v5 = 2322604039;
  if (!a3 || !a5 || !a4 || !*a3)
  {
    return v5;
  }

  *a5 = 0;
  v13 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : Begin", v10, v11, v12, v31);
  v17 = a1[76];
  if (!v17)
  {
    v17 = a1[75];
  }

  if (v17)
  {
    v18 = v13;
  }

  else
  {
    v18 = 2322604033;
  }

  if ((v18 & 0x80000000) == 0)
  {
    if (LH_wcslen(a3))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      do
      {
        v13 = stringmap_reader_WMapToken(v17, &a3[v22], &v33, &v32);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_20;
        }

        v25 = v33;
        if (LH_wcslen(v32) + v24 + 1 >= a4)
        {
          v5 = 2322604041;
          log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : End (%x)", v26, v27, v28, 2322604041);
          return v5;
        }

        v22 = (v23 + v25);
        LH_wcscpy(&a5[v24], v32);
        v24 += LH_wcslen(v32);
        v23 = v22;
      }

      while (LH_wcslen(a3) > v22);
    }

    log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : End (%x)", v19, v20, v21, v13);
    return v13;
  }

  v13 = v18;
LABEL_20:
  log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : End (%x)", v14, v15, v16, v13);
  if (((1 << v13) & 0x10001A) != 0)
  {
    v29 = (v13 & 0x1FFF) - 1972363264;
  }

  else
  {
    v29 = v13;
  }

  if ((v13 & 0x1FFFu) <= 0x14)
  {
    return v29;
  }

  else
  {
    return v13;
  }
}

uint64_t phonmap_GetLhPAlphabetInfoEx(uint64_t a1, int a2, int a3, char *a4, __int16 *a5, char *a6, char *a7)
{
  v14 = 2322604039;
  if (!LH_stricmp(a4, "alphabet"))
  {
    if (!a5)
    {
      return 2322604039;
    }

    v23 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v23 & 0x80000000) != 0)
    {
      return v23;
    }

    v27 = *(a1 + 16);
    log_OutText(*(v27 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabet : Begin", v24, v25, v26, v41);
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        if (a3 == 3)
        {
          MapTroughLng = *(a1 + 40);
          goto LABEL_40;
        }

LABEL_47:
        log_OutText(*(v27 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabet : End (%x)", v28, v29, v30, v14);
        v18 = v14;
LABEL_48:
        if ((v18 & 0x1FFFu) <= 0x14)
        {
          if (((1 << v18) & 0x10001A) != 0)
          {
            return (v18 & 0x1FFF) - 1972363264;
          }

          else
          {
            return v18;
          }
        }

        return v18;
      }

      if (a7 && *a7)
      {
        v35 = *(a1 + 72);
        goto LABEL_39;
      }

      v40 = *(a1 + 72);
    }

    else
    {
      if (a3)
      {
        if (a3 == 1)
        {
          MapTroughLng = *(a1 + 24);
LABEL_40:
          LhPAlphabetCore = phonmap_GetLhPAlphabetCore(MapTroughLng, a5, a6);
          goto LABEL_44;
        }

        goto LABEL_47;
      }

      if (a7 && *a7)
      {
        v35 = *(a1 + 56);
LABEL_39:
        MapTroughLng = phonmap_findMapTroughLng(v35, a7);
        if (MapTroughLng)
        {
          goto LABEL_40;
        }

        v14 = 2322604052;
        goto LABEL_47;
      }

      v40 = *(a1 + 56);
    }

    LhPAlphabetCore = phonmap_reader_MapsGetGetLhPAlphabetCore(v40, a5, a6);
LABEL_44:
    v18 = LhPAlphabetCore;
    log_OutText(*(v27 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabet : End (%x)", v37, v38, v39, LhPAlphabetCore);
    if ((v18 & 0x80000000) == 0)
    {
      return v18;
    }

    goto LABEL_48;
  }

  if (LH_stricmp(a4, "version"))
  {
    return 2322604039;
  }

  v18 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v18 & 0x80000000) == 0)
  {
    v19 = *(a1 + 16);
    log_OutText(*(v19 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabetInfo : Begin (%s)", v15, v16, v17, a4);
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        if (a3 != 3)
        {
LABEL_32:
          log_OutText(*(v19 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabetInfo : End (%x, %s)", v20, v21, v22, v14);
          return v14;
        }

LABEL_19:
        v33 = strlen((a1 + 88));
        if (*a5)
        {
          if (v33 < *a5)
          {
            v34 = (a1 + 88);
LABEL_28:
            strcpy(a6, v34);
LABEL_30:
            log_OutText(*(v19 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabetInfo : End (%x, %s)", v20, v21, v22, v18);
            return v18;
          }

LABEL_31:
          v14 = 2322604041;
          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    v33 = strlen((a1 + 344));
    if (*a5)
    {
      if (v33 < *a5)
      {
        v34 = (a1 + 344);
        goto LABEL_28;
      }

      goto LABEL_31;
    }

LABEL_29:
    *a5 = v33 + 1;
    goto LABEL_30;
  }

  return v18;
}

uint64_t phonmap_GetLhPSampleEx(void *a1, int a2, int a3, char *a4, uint64_t *a5, char *a6)
{
  v6 = 2322604039;
  if (!a4 || !a5 || !*a4)
  {
    return v6;
  }

  v12 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v16 = a1[2];
  log_OutText(*(v16 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPSample : Begin (%s)", v13, v14, v15, a4);
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        MapTroughLng = a1[4];
LABEL_20:
        v22 = stringmap_reader_Map(MapTroughLng, a4, a5);
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (a6 && *a6)
    {
      v21 = a1[8];
LABEL_19:
      MapTroughLng = phonmap_findMapTroughLng(v21, a6);
      if (MapTroughLng)
      {
        goto LABEL_20;
      }

      v6 = 2322604052;
      goto LABEL_27;
    }

    v23 = a1[8];
    goto LABEL_23;
  }

  if (a3 == 2)
  {
    if (a6 && *a6)
    {
      v21 = a1[10];
      goto LABEL_19;
    }

    v23 = a1[10];
LABEL_23:
    v22 = phonmap_reader_Maps(v23, 0, a4, a5);
LABEL_24:
    v6 = v22;
    v24 = *(v16 + 32);
    if ((v6 & 0x80000000) == 0)
    {
      v27 = *a5;
      log_OutText(v24, "PHONMAP", 4, 0, "PHONMAP phonmap_GetLhPSample : End (%x, %s)", v17, v18, v19, v6);
      return v6;
    }

    goto LABEL_28;
  }

  if (a3 == 3)
  {
    MapTroughLng = a1[6];
    goto LABEL_20;
  }

LABEL_27:
  v24 = *(v16 + 32);
LABEL_28:
  log_OutText(v24, "PHONMAP", 4, 0, "PHONMAP phonmap_GetLhPSample : End (%x, %s)", v17, v18, v19, v6);
  if (((1 << v6) & 0x10001A) != 0)
  {
    v25 = (v6 & 0x1FFF) - 1972363264;
  }

  else
  {
    v25 = v6;
  }

  if ((v6 & 0x1FFFu) <= 0x14)
  {
    return v25;
  }

  else
  {
    return v6;
  }
}

uint64_t phonmap_LhPToLhTtsSymEx(void *a1, int a2, int a3, char *a4, uint64_t *a5, char *a6)
{
  v6 = 2322604039;
  if (!a4 || !a5 || !*a4)
  {
    return v6;
  }

  v12 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v16 = a1[2];
  log_OutText(*(v16 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSym : Begin (%s)", v13, v14, v15, a4);
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        MapTroughLng = a1[3];
LABEL_20:
        v22 = stringmap_reader_Map(MapTroughLng, a4, a5);
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (a6 && *a6)
    {
      v21 = a1[7];
LABEL_19:
      MapTroughLng = phonmap_findMapTroughLng(v21, a6);
      if (MapTroughLng)
      {
        goto LABEL_20;
      }

      v6 = 2322604052;
      goto LABEL_27;
    }

    v23 = a1[7];
    goto LABEL_23;
  }

  if (a3 == 2)
  {
    if (a6 && *a6)
    {
      v21 = a1[9];
      goto LABEL_19;
    }

    v23 = a1[9];
LABEL_23:
    v22 = phonmap_reader_Maps(v23, 0, a4, a5);
LABEL_24:
    v6 = v22;
    v24 = *(v16 + 32);
    if ((v6 & 0x80000000) == 0)
    {
      v27 = *a5;
      log_OutText(v24, "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSym : End (%x, %s)", v17, v18, v19, v6);
      return v6;
    }

    goto LABEL_28;
  }

  if (a3 == 3)
  {
    MapTroughLng = a1[5];
    goto LABEL_20;
  }

LABEL_27:
  v24 = *(v16 + 32);
LABEL_28:
  log_OutText(v24, "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSym : End (%x, %s)", v17, v18, v19, v6);
  if (((1 << v6) & 0x10001A) != 0)
  {
    v25 = (v6 & 0x1FFF) - 1972363264;
  }

  else
  {
    v25 = v6;
  }

  if ((v6 & 0x1FFFu) <= 0x14)
  {
    return v25;
  }

  else
  {
    return v6;
  }
}

uint64_t phonmap_LhPToLhPSequenceEx(void *a1, int a2, int a3, const char **a4, char *a5)
{
  v5 = 2322604039;
  if (a4 && *a4)
  {
    v10 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        a5 = a1[3];
        v11 = 1;
LABEL_14:
        v13 = a1[2];
        v14 = *a4;
        v15 = strlen(*a4);
        log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhPSequence : Begin (%s)", v16, v17, v18, *a4);
        v49 = LhpuCreate(*(v13 + 8));
        if (!v49)
        {
          log_OutPublic(*(v13 + 32), "PHONMAP", 29000, 0, v19, v20, v21, v22, v43);
          return 2322604042;
        }

        v48 = 0;
        v47 = 0;
        if (v15 >= 1)
        {
          v23 = &v14[v15];
          while (1)
          {
            if (*v14 == 18)
            {
              ++v14;
              goto LABEL_39;
            }

            if (LhplGetSymbol(v14, v49, &v48 + 1, &v48))
            {
              memmove(v14, v14 + 1, (v23 + ~v14));
              *--v23 = 0;
              log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v24, v25, v26, v43);
              goto LABEL_39;
            }

            if (!a5)
            {
              goto LABEL_24;
            }

            v47 = 0;
            v27 = v49;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(v49);
            stringmap_reader_Map(a5, v28, &v47);
            if (v47)
            {
              break;
            }

            kaldi::CuMatrixBase<float>::~CuMatrixBase(v27);
            if (*v31 == 95 && !v31[1])
            {
              break;
            }

            memmove(v14, &v14[v48 + 1], (~(v48 + v14) + v23));
            v23 += ~v48;
            *v23 = 0;
            log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v32, v33, v34, v43);
            if (!v11)
            {
LABEL_25:
              v46 = 0;
              if ((ssftmap_IteratorOpen(a1[7], 0, 1, &v46) & 0x80000000) == 0)
              {
                v44 = 0;
                v45 = 0;
                v47 = 0;
                while ((ssftmap_IteratorNext(v46, &v45, &v44) & 0x80000000) == 0)
                {
                  v47 = 0;
                  v29 = v44;
                  kaldi::CuMatrixBase<float>::~CuMatrixBase(v49);
                  stringmap_reader_Map(v29, v30, &v47);
                  if (v47)
                  {
                    v14 += v48 + 1;
                    goto LABEL_38;
                  }
                }

                if (!v47)
                {
                  kaldi::CuMatrixBase<float>::~CuMatrixBase(v49);
                  if (*v35 != 95 || v35[1])
                  {
                    memmove(v14, &v14[v48 + 1], (~(v48 + v14) + v23));
                    v23 += ~v48;
                    *v23 = 0;
                    log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v36, v37, v38, v43);
                  }
                }

LABEL_38:
                ssftmap_IteratorClose(v46);
              }
            }

LABEL_39:
            if (v14 >= v23)
            {
              goto LABEL_40;
            }
          }

          v14 += v48 + 1;
LABEL_24:
          if (!v11)
          {
            goto LABEL_25;
          }

          goto LABEL_39;
        }

LABEL_40:
        LhpuRemove(*(v13 + 8), &v49);
        log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhPSequence : End (%s)", v39, v40, v41, *a4);
        return v10;
      }
    }

    else
    {
      MapTroughLng = phonmap_findMapTroughLng(a1[7], a5);
      if (MapTroughLng)
      {
        if (a5)
        {
          v11 = *a5 != 0;
          if (*a5)
          {
            a5 = MapTroughLng;
          }

          else
          {
            a5 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_14;
      }

      return 2322604052;
    }
  }

  return v5;
}

uint64_t phonmap_LhPToLhTtsSequenceWithCheckEx(void *a1, int a2, int a3, char *a4, unsigned int a5, char *a6, char *a7)
{
  LODWORD(result) = phonmap_LhPToLhTtsSequenceLng(a1, a2, a3, a4, a5, a6, a7);
  v8 = (result & 0x1FFFu) > 0x14 || ((1 << result) & 0x10001A) == 0;
  v9 = result & 0x1FFF | 0x8A702000;
  if (v8)
  {
    v9 = result;
  }

  if (result < 0)
  {
    return v9;
  }

  else
  {
    return result;
  }
}

uint64_t phonmap_loc_LoadData(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v139 = *MEMORY[0x1E69E9840];
  *v127 = 0;
  v126 = 0;
  v124 = 0;
  v125 = 0;
  *v122 = 0;
  *v123 = 0;
  v121 = 0;
  v119 = 0;
  v138[0] = 0;
  v137[0] = 0;
  v136[0] = 0;
  v120[0] = 0;
  v11 = a1 + 3;
  v10 = a1[3];
  if (v10)
  {
    stringmap_reader_ObjClose(v10, a2, a3, a4, a5, a6, a7, a8);
    *v11 = 0;
  }

  v12 = a1[4];
  if (v12)
  {
    stringmap_reader_ObjClose(v12, a2, a3, a4, a5, a6, a7, a8);
    a1[4] = 0;
  }

  v13 = a1[5];
  if (v13)
  {
    stringmap_reader_ObjClose(v13, a2, a3, a4, a5, a6, a7, a8);
    a1[5] = 0;
  }

  v14 = a1[6];
  if (v14)
  {
    stringmap_reader_ObjClose(v14, a2, a3, a4, a5, a6, a7, a8);
    a1[6] = 0;
  }

  v16 = a1 + 7;
  v15 = a1[7];
  if (v15)
  {
    *&v130 = 0;
    if ((ssftmap_IteratorOpen(v15, 0, 1, &v130) & 0x80000000) == 0)
    {
      __dst[0] = 0;
      v128[0] = 0;
      while ((ssftmap_IteratorNext(v130, __dst, v128) & 0x80000000) == 0)
      {
        stringmap_reader_ObjClose(v128[0], v17, v18, v19, v20, v21, v22, v23);
      }

      ssftmap_IteratorClose(v130);
    }

    ssftmap_ObjClose(*v16);
    *v16 = 0;
  }

  v24 = *(a1[2] + 8);
  *&v130 = ssftmap_ElemCopyString;
  *(&v130 + 1) = ssftmap_ElemFreeString;
  v131 = ssftmap_ElemCompareKeysString;
  v132 = stringmap_loc_ElemCopyPtr_0;
  v133 = stringmap_loc_ElemFreeNoOp_0;
  v25 = ssftmap_ObjOpen(v24, 0, &v130, a1 + 7);
  if ((v25 & 0x80000000) == 0)
  {
    v27 = a1 + 8;
    v26 = a1[8];
    if (v26)
    {
      *&v130 = 0;
      if ((ssftmap_IteratorOpen(v26, 0, 1, &v130) & 0x80000000) == 0)
      {
        __dst[0] = 0;
        v128[0] = 0;
        while ((ssftmap_IteratorNext(v130, __dst, v128) & 0x80000000) == 0)
        {
          stringmap_reader_ObjClose(v128[0], v28, v29, v30, v31, v32, v33, v34);
        }

        ssftmap_IteratorClose(v130);
      }

      ssftmap_ObjClose(*v27);
      *v27 = 0;
    }

    v35 = *(a1[2] + 8);
    *&v130 = ssftmap_ElemCopyString;
    *(&v130 + 1) = ssftmap_ElemFreeString;
    v131 = ssftmap_ElemCompareKeysString;
    v132 = stringmap_loc_ElemCopyPtr_0;
    v133 = stringmap_loc_ElemFreeNoOp_0;
    v25 = ssftmap_ObjOpen(v35, 0, &v130, a1 + 8);
    if ((v25 & 0x80000000) == 0)
    {
      v37 = a1 + 9;
      v36 = a1[9];
      if (v36)
      {
        *&v130 = 0;
        if ((ssftmap_IteratorOpen(v36, 0, 1, &v130) & 0x80000000) == 0)
        {
          __dst[0] = 0;
          v128[0] = 0;
          while ((ssftmap_IteratorNext(v130, __dst, v128) & 0x80000000) == 0)
          {
            stringmap_reader_ObjClose(v128[0], v38, v39, v40, v41, v42, v43, v44);
          }

          ssftmap_IteratorClose(v130);
        }

        ssftmap_ObjClose(*v37);
        *v37 = 0;
      }

      v45 = *(a1[2] + 8);
      *&v130 = ssftmap_ElemCopyString;
      *(&v130 + 1) = ssftmap_ElemFreeString;
      v131 = ssftmap_ElemCompareKeysString;
      v132 = stringmap_loc_ElemCopyPtr_0;
      v133 = stringmap_loc_ElemFreeNoOp_0;
      v25 = ssftmap_ObjOpen(v45, 0, &v130, a1 + 9);
      if ((v25 & 0x80000000) == 0)
      {
        v47 = a1 + 10;
        v46 = a1[10];
        if (v46)
        {
          *&v130 = 0;
          if ((ssftmap_IteratorOpen(v46, 0, 1, &v130) & 0x80000000) == 0)
          {
            __dst[0] = 0;
            v128[0] = 0;
            while ((ssftmap_IteratorNext(v130, __dst, v128) & 0x80000000) == 0)
            {
              stringmap_reader_ObjClose(v128[0], v48, v49, v50, v51, v52, v53, v54);
            }

            ssftmap_IteratorClose(v130);
          }

          ssftmap_ObjClose(*v47);
          *v47 = 0;
        }

        v55 = *(a1[2] + 8);
        *&v130 = ssftmap_ElemCopyString;
        *(&v130 + 1) = ssftmap_ElemFreeString;
        v131 = ssftmap_ElemCompareKeysString;
        v132 = stringmap_loc_ElemCopyPtr_0;
        v133 = stringmap_loc_ElemFreeNoOp_0;
        v25 = ssftmap_ObjOpen(v55, 0, &v130, a1 + 10);
        if ((v25 & 0x80000000) == 0)
        {
          v63 = a1[75];
          if (v63)
          {
            stringmap_reader_ObjClose(v63, v56, v57, v58, v59, v60, v61, v62);
            a1[75] = 0;
          }

          v64 = a1[76];
          if (v64)
          {
            stringmap_reader_ObjClose(v64, v56, v57, v58, v59, v60, v61, v62);
            a1[76] = 0;
          }

          if ((paramc_ParamGetStr(*(a1[2] + 40), "langcode", v122) & 0x80000000) != 0)
          {
            *v122 = "";
          }

          if ((paramc_ParamGetStr(*(a1[2] + 40), "voicemodel", &v121) & 0x80000000) != 0)
          {
            v121 = 0;
          }

          strcpy(&v130, "phonmap/");
          __strcat_chk();
          __strcat_chk();
          __strcat_chk();
          brokeraux_ComposeBrokerString(a1[2], &v130, 1, 1, *v122, a2, v121, v136, 0x80uLL);
          strcpy(v134, "phonmap_ipa/");
          __strcat_chk();
          brokeraux_ComposeBrokerString(a1[2], v134, 1, 1, *v122, 0, 0, v137, 0x80uLL);
          __strcpy_chk();
          brokeraux_ComposeBrokerString(a1[2], v135, 1, 1, *v122, a2, 0, v138, 0x80uLL);
          v65 = 0;
          v66 = a1[2];
          while (1)
          {
            if (*(v66 + 3))
            {
              v67 = 2;
              goto LABEL_58;
            }

            for (i = &v136[128 * v65]; *i == 47; ++i)
            {
              *i = 95;
LABEL_57:
              ;
            }

            if (*i)
            {
              goto LABEL_57;
            }

            strcat(&v136[128 * v65], ".dat");
            v67 = 3;
LABEL_58:
            *(&__dst[32] + ++v65) = v67;
            if (v65 == 3)
            {
              v69 = 0;
              v116 = 0;
              v70 = 0;
              v71 = 1;
              while (1)
              {
                v117 = &v136[128 * v70];
                v72 = v70;
                v77 = ssftriff_reader_ObjOpen(*a1, a1[1], *(&__dst[32] + v70 + 1), v117, "PHMP", 1031, v127);
                if ((v77 & 0x80000000) != 0)
                {
                  if (!v71 && !v69)
                  {
                    goto LABEL_141;
                  }

                  v112 = v72;
                  v77 = 0;
                }

                else
                {
                  v78 = v116;
                  if (!v72)
                  {
                    v78 = 1;
                  }

                  v116 = v78;
                  v115 = v72;
                  if ((ssftriff_reader_OpenChunk(*v127, &v125, &v124, v123, v73, v74, v75, v76) & 0x80000000) == 0)
                  {
                    v86 = a1 + 76;
                    while (1)
                    {
                      if (!(v125 ^ 0x464E494C | v126) || !(v125 ^ 0x464E4956 | v126))
                      {
                        if ((v77 & 0x80000000) == 0)
                        {
                          v92 = v124;
                          if (v124)
                          {
                            v93 = 0;
                            do
                            {
                              LOBYTE(v128[0]) = 0;
                              LOBYTE(__dst[0]) = 0;
                              v118 = 256;
                              LODWORD(v77) = ssftriff_reader_ReadStringZ(*v127, *v123, v92, v93, __dst, &v118);
                              if ((v77 & 0x80000000) == 0 && v93 < v124)
                              {
                                v93 += v118;
                                v118 = 256;
                                LODWORD(v77) = ssftriff_reader_ReadStringZ(*v127, *v123, v124, v93, v128, &v118);
                              }

                              if ((v77 & 0x80000000) != 0)
                              {
                                break;
                              }

                              v94 = v118;
                              if (!LH_stricmp(__dst, "version"))
                              {
                                __strcpy_chk();
                              }

                              if (!(v125 ^ 0x464E4956 | v126) && !LH_stricmp(__dst, "language"))
                              {
                                __strcpy_chk();
                              }

                              if (!(v125 ^ 0x464E4956 | v126) && !LH_stricmp(__dst, "version"))
                              {
                                __strcpy_chk();
                              }

                              v93 += v94;
                              v92 = v124;
                            }

                            while (v93 < v124);
                          }
                        }

                        v86 = a1 + 76;
                        goto LABEL_101;
                      }

                      if (!(v125 ^ 0x474E414C | v126))
                      {
                        v87 = *v127;
                        v88 = v117;
                        v89 = *a1;
                        v90 = a1[1];
                        v91 = v11;
                        goto LABEL_99;
                      }

                      if (!(v125 ^ 0x4158454C | v126))
                      {
                        v87 = *v127;
                        v88 = v117;
                        v89 = *a1;
                        v90 = a1[1];
                        v91 = a1 + 4;
                        goto LABEL_99;
                      }

                      if (!(v125 ^ 0x4E414C53 | v126))
                      {
                        v87 = *v127;
                        v88 = v117;
                        v89 = *a1;
                        v90 = a1[1];
                        v91 = a1 + 5;
                        goto LABEL_99;
                      }

                      if (!(v125 ^ 0x58454C53 | v126))
                      {
                        v87 = *v127;
                        v88 = v117;
                        v89 = *a1;
                        v90 = a1[1];
                        v91 = a1 + 6;
                        goto LABEL_99;
                      }

                      if (!(v125 ^ 0x43494F56 | v126))
                      {
                        break;
                      }

                      if (!(v125 ^ 0x41584556 | v126))
                      {
                        ReadOnly = ssftmap_FindReadOnly(a1[8], v120, &v119);
                        if (ReadOnly < 0)
                        {
                          ReadOnly = stringmap_reader_ObjOpen(*a1, a1[1], v117, *v127, &v119);
                          if ((ReadOnly & 0x80000000) == 0)
                          {
                            v102 = a1 + 8;
                            goto LABEL_123;
                          }
                        }

                        goto LABEL_100;
                      }

                      if (!(v125 ^ 0x494F5653 | v126))
                      {
                        ReadOnly = ssftmap_FindReadOnly(a1[9], v120, &v119);
                        if (ReadOnly < 0)
                        {
                          ReadOnly = stringmap_reader_ObjOpen(*a1, a1[1], v117, *v127, &v119);
                          if ((ReadOnly & 0x80000000) == 0)
                          {
                            v102 = a1 + 9;
                            goto LABEL_123;
                          }
                        }

                        goto LABEL_100;
                      }

                      if (!(v125 ^ 0x58455653 | v126))
                      {
                        ReadOnly = ssftmap_FindReadOnly(a1[10], v120, &v119);
                        if (ReadOnly < 0)
                        {
                          ReadOnly = stringmap_reader_ObjOpen(*a1, a1[1], v117, *v127, &v119);
                          if ((ReadOnly & 0x80000000) == 0)
                          {
                            v102 = a1 + 10;
LABEL_123:
                            LODWORD(v77) = ssftmap_Insert(*v102, v120, v119);
                            if ((v77 & 0x80000000) != 0)
                            {
                              stringmap_reader_ObjClose(v119, v103, v104, v105, v106, v107, v108, v109);
                            }

                            goto LABEL_101;
                          }
                        }

                        goto LABEL_100;
                      }

                      if (!(v125 ^ 0x20415049 | v126))
                      {
                        v87 = *v127;
                        v88 = v117;
                        v89 = *a1;
                        v90 = a1[1];
                        v91 = a1 + 75;
LABEL_99:
                        ReadOnly = stringmap_reader_ObjOpen(v89, v90, v88, v87, v91);
LABEL_100:
                        LODWORD(v77) = ReadOnly;
                        goto LABEL_101;
                      }

                      if (!(v125 ^ 0x49504153 | v126))
                      {
                        v87 = *v127;
                        v88 = v117;
                        v89 = *a1;
                        v90 = a1[1];
                        v91 = v86;
                        goto LABEL_99;
                      }

LABEL_101:
                      v96 = ssftriff_reader_CloseChunk(*v127);
                      if (v77 > -1 && v96 < 0)
                      {
                        v77 = v96;
                      }

                      else
                      {
                        v77 = v77;
                      }

                      if ((ssftriff_reader_OpenChunk(*v127, &v125, &v124, v123, v97, v98, v99, v100) & 0x80000000) != 0)
                      {
                        goto LABEL_126;
                      }
                    }

                    if (!v120[0])
                    {
                      __strcpy_chk();
                    }

                    ReadOnly = ssftmap_FindReadOnly(a1[7], v120, &v119);
                    if (ReadOnly < 0)
                    {
                      ReadOnly = stringmap_reader_ObjOpen(*a1, a1[1], v117, *v127, &v119);
                      if ((ReadOnly & 0x80000000) == 0)
                      {
                        v102 = a1 + 7;
                        goto LABEL_123;
                      }
                    }

                    goto LABEL_100;
                  }

LABEL_126:
                  if (*v127)
                  {
                    v110 = ssftriff_reader_ObjClose(*v127, v79, v80, v81, v82, v83, v84, v85);
                    *v127 = 0;
                    if (v77 > -1 && v110 < 0)
                    {
                      v77 = v110;
                    }

                    else
                    {
                      v77 = v77;
                    }
                  }

                  v112 = v115;
                }

                v70 = v112 + 1;
                if (v70 != 3)
                {
                  v69 = v116 != 0;
                  v71 = v70 != 2;
                  if (v70 != 2 || !v116)
                  {
                    continue;
                  }
                }

                goto LABEL_141;
              }
            }
          }
        }
      }
    }
  }

  v77 = v25;
LABEL_141:
  v113 = *MEMORY[0x1E69E9840];
  return v77;
}

uint64_t phonmap_loc_GetStrMap(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v26 = 0;
  v25 = 0;
  *a4 = 0;
  __strcpy_chk();
  __strcat_chk();
  __strcat_chk();
  v10 = 0;
  if ((ssftmap_FindReadOnly(*(a1 + 616), v28, a4) & 0x80000000) != 0)
  {
    Chunk = ssftriff_reader_ObjOpen(*a1, *(a1 + 8), 2 * (a5 != 0), a2, "PHMP", 1031, &v27);
    if ((Chunk & 0x80000000) != 0 || (Chunk = ssftriff_reader_FindChunk(v27, a3, 1, &v26, &v25), (Chunk & 0x80000000) != 0) || (Chunk = stringmap_reader_ObjOpen(*a1, *(a1 + 8), a2, v27, a4), (Chunk & 0x80000000) != 0))
    {
      v10 = Chunk;
    }

    else
    {
      v10 = ssftmap_Insert(*(a1 + 616), v28, *a4);
      if ((v10 & 0x80000000) != 0)
      {
        stringmap_reader_ObjClose(*a4, v12, v13, v14, v15, v16, v17, v18);
        *a4 = 0;
      }
    }

    if (v25)
    {
      v19 = ssftriff_reader_CloseChunk(v27);
      if (v19 >= 0 || v10 <= -1)
      {
        v10 = v10;
      }

      else
      {
        v10 = v19;
      }
    }

    if (v27)
    {
      v21 = ssftriff_reader_ObjClose(v27, v12, v13, v14, v15, v16, v17, v18);
      if (v21 >= 0 || v10 <= -1)
      {
        v10 = v10;
      }

      else
      {
        v10 = v21;
      }
    }

    if ((v10 & 0x80000000) == 0)
    {
      if (*a4)
      {
        v10 = v10;
      }

      else
      {
        v10 = 2322604033;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t phonmap_findMapTroughLng(uint64_t result, char *a2)
{
  if (result)
  {
    v5 = 0;
    if ((ssftmap_IteratorOpen(result, 0, 1, &v5) & 0x80000000) == 0)
    {
      v3 = 0;
      v4 = 0;
      while ((ssftmap_IteratorNext(v5, &v4, &v3) & 0x80000000) == 0)
      {
        if (!a2 || !LH_stricmp(v4, a2))
        {
          ssftmap_IteratorClose(v5);
          return v3;
        }
      }

      ssftmap_IteratorClose(v5);
    }

    return 0;
  }

  return result;
}

uint64_t phonmap_reader_Maps(uint64_t a1, int a2, char *a3, uint64_t *a4)
{
  v12 = 0;
  v4 = 2322604052;
  if (!a1)
  {
    return 2322604039;
  }

  if ((ssftmap_IteratorOpen(a1, 0, 1, &v12) & 0x80000000) == 0)
  {
    *v10 = 0;
    v11 = 0;
    while ((ssftmap_IteratorNext(v12, &v11, v10) & 0x80000000) == 0)
    {
      if (a2)
      {
        v8 = stringmap_reader_ReverseMap(*v10, a3, a4);
      }

      else
      {
        v8 = stringmap_reader_Map(*v10, a3, a4);
      }

      v4 = v8;
      if ((v8 & 0x80000000) == 0)
      {
        v4 = 0;
        break;
      }
    }

    ssftmap_IteratorClose(v12);
  }

  return v4;
}

uint64_t phonmap_LhPToLhTtsSequenceLng(void *a1, int a2, int a3, char *a4, unsigned int a5, char *a6, char *a7)
{
  v119 = *MEMORY[0x1E69E9840];
  v7 = 2322604039;
  v110 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

  v8 = a6;
  if (!a6 || !a5 || !*a4)
  {
    goto LABEL_12;
  }

  StrMap = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((StrMap & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v108 = a1[2];
  if (a3)
  {
    if (a3 == 1)
    {
      if (a7 && *a7)
      {
        strcpy(v114, "phonmap/");
        __strcat_chk();
        StrMap = phonmap_loc_GetStrMap(a1, v114, "LANG", &v110, 0);
        if ((StrMap & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v19 = v110;
      }

      else
      {
        v19 = a1[3];
        v110 = v19;
      }

      v106 = v19;
      v23 = v108;
      if (!v19)
      {
        goto LABEL_95;
      }

      goto LABEL_20;
    }

LABEL_12:
    StrMap = 2322604039;
    goto LABEL_13;
  }

  MapTroughLng = phonmap_findMapTroughLng(a1[7], a7);
  if (!MapTroughLng)
  {
    StrMap = 2322604052;
    goto LABEL_13;
  }

  if (a7 && *a7)
  {
    v106 = MapTroughLng;
    v110 = MapTroughLng;
    v23 = v108;
LABEL_20:
    if (*a4)
    {
      v24 = a4;
      v7 = safeh_HandleCheck(a1, a2, 29348, 624);
      if ((v7 & 0x80000000) == 0)
      {
        v25 = a1[2];
        v26 = strlen(a4);
        *v8 = 0;
        log_OutText(*(v25 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : Begin (%s)", v27, v28, v29, a4);
        v113 = LhpuCreate(*(v25 + 8));
        if (v113)
        {
          v112 = 0;
          __s = 0;
          if (v26 >= 1)
          {
            v34 = 0;
            v35 = &a4[v26];
            v105 = a5;
            v36 = v106;
            v102 = v35;
            v103 = v8;
            while (1)
            {
              v37 = v113;
              Symbol = LhplGetSymbol(v24, v113, &v112 + 1, &v112);
              if (Symbol)
              {
                if (Symbol == 1)
                {
                  goto LABEL_92;
                }

                v107 = v7;
                v39 = 1;
                v40 = 1;
              }

              else
              {
                __s2[0] = 0;
                __s = 0;
                kaldi::CuMatrixBase<float>::~CuMatrixBase(v37);
                stringmap_reader_Map(v36, v41, &__s);
                if (__s)
                {
                  v107 = v7;
                  if (LhpuHasDurSpec(v37) || LhpuGetcBp(v37))
                  {
                    v104 = v34;
                    v42 = __s;
                    v43 = strchr(__s, 124);
                    if (v43)
                    {
                      v44 = 0;
                      do
                      {
                        v45 = v44;
                        v46 = &v42[v44++];
                      }

                      while (v46 < v43);
                    }

                    else
                    {
                      v45 = strlen(v42);
                    }

                    if (v45 < 2u)
                    {
                      __strcpy_chk();
                      if (LhpuHasDurSpec(v37))
                      {
                        DurValue = LhpuGetDurValue(v37);
                        v116[0] = 91;
                        IsAbs = LhpuDurSpecIsAbs(v37);
                        v61 = &v116[1];
                        v8 = v103;
                        if (!IsAbs)
                        {
                          v61 = &v116[1];
                          if (DurValue >= 1)
                          {
                            v116[1] = 43;
                            v61 = v117;
                          }
                        }

                        LH_itoa(DurValue, v61, 0xAu);
                        __strcat_chk();
                        if (LhpuGetcBp(v37))
                        {
                          v62 = 0;
                          v63 = 0;
                          do
                          {
                            v116[0] = 40;
                            v64 = LhpuGetpBp(v37);
                            LH_itoa(*(v64 + v62 + 2), &v116[1], 0xAu);
                            __strcat_chk();
                            v65 = *(LhpuGetpBp(v37) + v62);
                            v66 = strlen(v116);
                            LH_itoa(v65, &v116[v66], 0xAu);
                            __strcat_chk();
                            __strcat_chk();
                            ++v63;
                            v62 += 4;
                          }

                          while (v63 < LhpuGetcBp(v37));
                        }
                      }

                      else
                      {
                        __strcat_chk();
                        v8 = v103;
                        if (LhpuGetcBp(v37))
                        {
                          v73 = 0;
                          v74 = 0;
                          do
                          {
                            v116[0] = 40;
                            v75 = LhpuGetpBp(v37);
                            LH_itoa(*(v75 + v73 + 2), &v116[1], 0xAu);
                            __strcat_chk();
                            v76 = *(LhpuGetpBp(v37) + v73);
                            v77 = strlen(v116);
                            LH_itoa(v76, &v116[v77], 0xAu);
                            __strcat_chk();
                            __strcat_chk();
                            ++v74;
                            v73 += 4;
                          }

                          while (v74 < LhpuGetcBp(v37));
                        }
                      }

                      __strcat_chk();
                      v35 = v102;
                      v23 = v108;
                      v36 = v106;
                      v34 = v104;
                    }

                    else
                    {
                      v47 = 0;
                      v115 = 0;
                      v48 = v45;
                      do
                      {
                        if (v43)
                        {
                          v116[v47 - 8] = atoi(v43 + 1);
                          v43 = strchr(v43 + 1, 58);
                        }

                        ++v47;
                      }

                      while (v48 != v47);
                      v109 = v48;
                      if (LhpuHasDurSpec(v37))
                      {
                        if (LhpuDurSpecIsAbs(v37))
                        {
                          v49 = 0;
                          LODWORD(v50) = 0;
                          v51 = 0;
                          v52 = v113;
                          do
                          {
                            *v116 = __s[v49];
                            __strcat_chk();
                            v53 = 1374389535 * (v116[v49 - 8] * LhpuGetDurValue(v37) + 50);
                            v54 = (v53 >> 37) + (v53 >> 63);
                            v116[0] = 91;
                            LH_itoa(v54, &v116[1], 0xAu);
                            __strcat_chk();
                            if (v50 < LhpuGetcBp(v52))
                            {
                              v55 = 4 * v50;
                              v50 = v50;
                              do
                              {
                                if (v54 + v51 < *(LhpuGetpBp(v52) + v55 + 2))
                                {
                                  break;
                                }

                                v116[0] = 40;
                                v56 = LhpuGetpBp(v52);
                                LH_itoa(*(v56 + v55 + 2) - v51, &v116[1], 0xAu);
                                __strcat_chk();
                                v57 = *(LhpuGetpBp(v52) + v55);
                                v58 = strlen(v116);
                                LH_itoa(v57, &v116[v58], 0xAu);
                                __strcat_chk();
                                __strcat_chk();
                                ++v50;
                                v55 += 4;
                              }

                              while (v50 < LhpuGetcBp(v52));
                              LODWORD(v50) = v50;
                            }

                            __strcat_chk();
                            v51 += v54;
                            ++v49;
                            v37 = v52;
                          }

                          while (v49 != v109);
                        }

                        else
                        {
                          *v116 = *__s;
                          __strcat_chk();
                          v116[0] = 91;
                          v79 = LhpuGetDurValue(v37);
                          v80 = 1374389535 * (v115 * v79 + 50);
                          v81 = ((v80 >> 37) + (v80 >> 63));
                          v82 = &v116[1];
                          if (v81 >= 1)
                          {
                            v116[1] = 43;
                            v82 = v117;
                          }

                          LH_itoa(v81, v82, 0xAu);
                          __strcat_chk();
                          if (LhpuGetcBp(v37))
                          {
                            v83 = 0;
                            v84 = 0;
                            do
                            {
                              v116[0] = 40;
                              v85 = LhpuGetpBp(v37);
                              LH_itoa(*(v85 + v83 + 2), &v116[1], 0xAu);
                              __strcat_chk();
                              v86 = *(LhpuGetpBp(v37) + v83);
                              v87 = strlen(v116);
                              LH_itoa(v86, &v116[v87], 0xAu);
                              __strcat_chk();
                              __strcat_chk();
                              ++v84;
                              v83 += 4;
                            }

                            while (v84 < LhpuGetcBp(v37));
                          }

                          __strcat_chk();
                          v88 = 1;
                          do
                          {
                            *v116 = __s[v88];
                            __strcat_chk();
                            v116[0] = 91;
                            v89 = 1374389535 * (v116[v88 - 8] * LhpuGetDurValue(v37) + 50);
                            v90 = ((v89 >> 37) + (v89 >> 63));
                            v91 = &v116[1];
                            if (v90 >= 1)
                            {
                              v116[1] = 43;
                              v91 = v117;
                            }

                            LH_itoa(v90, v91, 0xAu);
                            __strcat_chk();
                            __strcat_chk();
                            ++v88;
                          }

                          while (v109 != v88);
                        }
                      }

                      else
                      {
                        *v116 = *__s;
                        __strcat_chk();
                        __strcat_chk();
                        if (LhpuGetcBp(v37))
                        {
                          v67 = 0;
                          v68 = 0;
                          do
                          {
                            v116[0] = 40;
                            v69 = LhpuGetpBp(v37);
                            LH_itoa(*(v69 + v67 + 2), &v116[1], 0xAu);
                            __strcat_chk();
                            v70 = *(LhpuGetpBp(v37) + v67);
                            v71 = strlen(v116);
                            LH_itoa(v70, &v116[v71], 0xAu);
                            __strcat_chk();
                            __strcat_chk();
                            ++v68;
                            v67 += 4;
                          }

                          while (v68 < LhpuGetcBp(v37));
                        }

                        __strcat_chk();
                        v72 = 1;
                        do
                        {
                          *v116 = __s[v72];
                          __strcat_chk();
                          ++v72;
                        }

                        while (v109 != v72);
                      }

                      v8 = v103;
                      v34 = v104;
                      v23 = v108;
                      v35 = v102;
                      v36 = v106;
                    }
                  }

                  else
                  {
                    __strcpy_chk();
                    v78 = strchr(__s2, 124);
                    if (v78)
                    {
                      *v78 = 0;
                    }
                  }
                }

                else
                {
                  v107 = 1;
                }

                v92 = strlen(__s2) + v34;
                v40 = v92 < v105;
                if (v92 < v105)
                {
                  strcat(v8, __s2);
                  v34 = v34 + strlen(__s2);
                }

                v39 = v112 + 1;
              }

              if (!v40)
              {
                break;
              }

              v24 += v39;
              v7 = v107;
              if (v24 >= v35)
              {
                goto LABEL_92;
              }
            }

            v7 = v107;
          }

LABEL_92:
          LhpuRemove(*(v25 + 8), &v113);
          log_OutText(*(v25 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : End (%x, %s)", v93, v94, v95, v7);
          if (v7 == 1)
          {
            log_OutText(*(v25 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v15, v16, v17, v100);
            v7 = 1;
          }
        }

        else
        {
          log_OutPublic(*(v25 + 32), "PHONMAP", 29000, 0, v30, v31, v32, v33, v99);
          v7 = 2322604042;
        }
      }
    }

    StrMap = v7;
    goto LABEL_95;
  }

  StrMap = phonmap_LhPToLhTtsSequenceLngMoreMaps(a1, a2, a1[7], a4, a5, v8);
  v23 = v108;
LABEL_95:
  log_OutText(*(v23 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSequence : End (%x, %s)", v15, v16, v17, StrMap);
  if (StrMap == 1)
  {
    log_OutText(*(v23 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v96, v97, v98, v101);
    StrMap = 1;
  }

  else if ((StrMap & 0x80000000) != 0 && (StrMap & 0x1FFFu) <= 0x14 && ((1 << StrMap) & 0x10001A) != 0)
  {
    StrMap = (StrMap & 0x1FFF) - 1972363264;
  }

LABEL_13:
  v20 = *MEMORY[0x1E69E9840];
  return StrMap;
}

uint64_t phonmap_LhPToLhTtsSequenceLngMoreMaps(uint64_t a1, int a2, uint64_t a3, char *a4, unsigned int a5, char *a6)
{
  v111 = *MEMORY[0x1E69E9840];
  v6 = 2322604039;
  if (a5)
  {
    v7 = a4;
    if (*a4)
    {
      v12 = safeh_HandleCheck(a1, a2, 29348, 624);
      if ((v12 & 0x80000000) != 0)
      {
        v6 = v12;
      }

      else
      {
        v95 = v12;
        v13 = *(a1 + 16);
        v14 = strlen(v7);
        *a6 = 0;
        log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : Begin (%s)", v15, v16, v17, v7);
        v105 = LhpuCreate(*(v13 + 8));
        if (v105)
        {
          v104 = 0;
          v103 = 0;
          if (v14 >= 1)
          {
            v22 = &v7[v14];
            v23 = a5;
            v24 = 0;
            v91 = v13;
            v92 = a6;
            v93 = v22;
            v94 = a3;
            do
            {
              Symbol = LhplGetSymbol(v7, v105, &v104 + 1, &v104);
              if (Symbol)
              {
                if (Symbol == 1)
                {
                  break;
                }

                ++v7;
                v26 = 1;
              }

              else
              {
                v102 = 0;
                v26 = 1;
                if ((ssftmap_IteratorOpen(a3, 0, 1, &v102) & 0x80000000) == 0)
                {
                  v100 = 0;
                  v101 = 0;
                  v103 = 0;
                  if ((ssftmap_IteratorNext(v102, &v101, &v100) & 0x80000000) != 0)
                  {
                    v30 = 0;
                  }

                  else
                  {
                    v27 = v105;
                    __s[0] = 0;
                    v103 = 0;
                    v28 = v100;
                    kaldi::CuMatrixBase<float>::~CuMatrixBase(v105);
                    stringmap_reader_Map(v28, v29, &v103);
                    if (v103)
                    {
                      v30 = 0;
LABEL_22:
                      if (LhpuHasDurSpec(v27) || LhpuGetcBp(v27))
                      {
                        v96 = v24;
                        v33 = v103;
                        v34 = strchr(v103, 124);
                        if (v34)
                        {
                          v35 = 0;
                          do
                          {
                            v36 = v35;
                            v37 = &v33[v35++];
                          }

                          while (v37 < v34);
                        }

                        else
                        {
                          v36 = strlen(v33);
                        }

                        v97 = v7;
                        if (v36 < 2u)
                        {
                          __strcpy_chk();
                          if (LhpuHasDurSpec(v27))
                          {
                            DurValue = LhpuGetDurValue(v27);
                            v107 = 91;
                            IsAbs = LhpuDurSpecIsAbs(v27);
                            v50 = &v108;
                            if (!IsAbs)
                            {
                              v50 = &v108;
                              if (DurValue >= 1)
                              {
                                v108 = 43;
                                v50 = v109;
                              }
                            }

                            LH_itoa(DurValue, v50, 0xAu);
                            __strcat_chk();
                            if (LhpuGetcBp(v27))
                            {
                              v51 = 0;
                              v52 = 0;
                              do
                              {
                                v107 = 40;
                                v53 = LhpuGetpBp(v27);
                                LH_itoa(*(v53 + v51 + 2), &v108, 0xAu);
                                __strcat_chk();
                                v54 = *(LhpuGetpBp(v27) + v51);
                                v55 = strlen(&v107);
                                LH_itoa(v54, &v107 + v55, 0xAu);
                                __strcat_chk();
                                __strcat_chk();
                                ++v52;
                                v51 += 4;
                              }

                              while (v52 < LhpuGetcBp(v27));
                            }
                          }

                          else
                          {
                            __strcat_chk();
                            if (LhpuGetcBp(v27))
                            {
                              v62 = 0;
                              v63 = 0;
                              do
                              {
                                v107 = 40;
                                v64 = LhpuGetpBp(v27);
                                LH_itoa(*(v64 + v62 + 2), &v108, 0xAu);
                                __strcat_chk();
                                v65 = *(LhpuGetpBp(v27) + v62);
                                v66 = strlen(&v107);
                                LH_itoa(v65, &v107 + v66, 0xAu);
                                __strcat_chk();
                                __strcat_chk();
                                ++v63;
                                v62 += 4;
                              }

                              while (v63 < LhpuGetcBp(v27));
                            }
                          }

                          __strcat_chk();
                          v24 = v96;
                          v7 = v97;
                          v13 = v91;
                          a6 = v92;
                          a3 = v94;
                        }

                        else
                        {
                          v38 = 0;
                          v106 = 0;
                          v99 = v36;
                          do
                          {
                            if (v34)
                            {
                              *(&v106 + v38) = atoi(v34 + 1);
                              v34 = strchr(v34 + 1, 58);
                            }

                            ++v38;
                          }

                          while (v99 != v38);
                          if (LhpuHasDurSpec(v27))
                          {
                            if (LhpuDurSpecIsAbs(v27))
                            {
                              v39 = 0;
                              LODWORD(v40) = 0;
                              v41 = 0;
                              v98 = v23;
                              do
                              {
                                v107 = v103[v39];
                                v108 = 0;
                                __strcat_chk();
                                v42 = 1374389535 * (*(&v106 + v39) * LhpuGetDurValue(v27) + 50);
                                v43 = (v42 >> 37) + (v42 >> 63);
                                v107 = 91;
                                LH_itoa(v43, &v108, 0xAu);
                                __strcat_chk();
                                v27 = v105;
                                if (v40 < LhpuGetcBp(v105))
                                {
                                  v44 = 4 * v40;
                                  v40 = v40;
                                  do
                                  {
                                    if (v43 + v41 < *(LhpuGetpBp(v27) + v44 + 2))
                                    {
                                      break;
                                    }

                                    v107 = 40;
                                    v45 = LhpuGetpBp(v27);
                                    LH_itoa(*(v45 + v44 + 2) - v41, &v108, 0xAu);
                                    __strcat_chk();
                                    v46 = *(LhpuGetpBp(v27) + v44);
                                    v47 = strlen(&v107);
                                    LH_itoa(v46, &v107 + v47, 0xAu);
                                    __strcat_chk();
                                    __strcat_chk();
                                    ++v40;
                                    v44 += 4;
                                  }

                                  while (v40 < LhpuGetcBp(v27));
                                  LODWORD(v40) = v40;
                                  v23 = v98;
                                }

                                __strcat_chk();
                                v41 += v43;
                                ++v39;
                              }

                              while (v39 != v99);
                            }

                            else
                            {
                              v107 = *v103;
                              v108 = 0;
                              __strcat_chk();
                              v107 = 91;
                              v68 = LhpuGetDurValue(v27);
                              v69 = 1374389535 * (v106 * v68 + 50);
                              v70 = ((v69 >> 37) + (v69 >> 63));
                              v71 = &v108;
                              if (v70 >= 1)
                              {
                                v108 = 43;
                                v71 = v109;
                              }

                              LH_itoa(v70, v71, 0xAu);
                              __strcat_chk();
                              if (LhpuGetcBp(v27))
                              {
                                v72 = 0;
                                v73 = 0;
                                do
                                {
                                  v107 = 40;
                                  v74 = LhpuGetpBp(v27);
                                  LH_itoa(*(v74 + v72 + 2), &v108, 0xAu);
                                  __strcat_chk();
                                  v75 = *(LhpuGetpBp(v27) + v72);
                                  v76 = strlen(&v107);
                                  LH_itoa(v75, &v107 + v76, 0xAu);
                                  __strcat_chk();
                                  __strcat_chk();
                                  ++v73;
                                  v72 += 4;
                                }

                                while (v73 < LhpuGetcBp(v27));
                              }

                              __strcat_chk();
                              v77 = 1;
                              do
                              {
                                v107 = v103[v77];
                                v108 = 0;
                                __strcat_chk();
                                v107 = 91;
                                v78 = 1374389535 * (*(&v106 + v77) * LhpuGetDurValue(v27) + 50);
                                v79 = ((v78 >> 37) + (v78 >> 63));
                                v80 = &v108;
                                if (v79 >= 1)
                                {
                                  v108 = 43;
                                  v80 = v109;
                                }

                                LH_itoa(v79, v80, 0xAu);
                                __strcat_chk();
                                __strcat_chk();
                                ++v77;
                              }

                              while (v99 != v77);
                            }
                          }

                          else
                          {
                            v107 = *v103;
                            v108 = 0;
                            __strcat_chk();
                            __strcat_chk();
                            if (LhpuGetcBp(v27))
                            {
                              v56 = 0;
                              v57 = 0;
                              do
                              {
                                v107 = 40;
                                v58 = LhpuGetpBp(v27);
                                LH_itoa(*(v58 + v56 + 2), &v108, 0xAu);
                                __strcat_chk();
                                v59 = *(LhpuGetpBp(v27) + v56);
                                v60 = strlen(&v107);
                                LH_itoa(v59, &v107 + v60, 0xAu);
                                __strcat_chk();
                                __strcat_chk();
                                ++v57;
                                v56 += 4;
                              }

                              while (v57 < LhpuGetcBp(v27));
                            }

                            __strcat_chk();
                            v61 = 1;
                            do
                            {
                              v107 = v103[v61];
                              v108 = 0;
                              __strcat_chk();
                              ++v61;
                            }

                            while (v99 != v61);
                          }

                          v13 = v91;
                          a6 = v92;
                          a3 = v94;
                          v24 = v96;
                          v7 = v97;
                        }
                      }

                      else
                      {
                        __strcpy_chk();
                        v67 = strchr(__s, 124);
                        a3 = v94;
                        if (v67)
                        {
                          *v67 = 0;
                        }
                      }

                      v22 = v93;
                      if (strlen(__s) + v24 >= v23)
                      {
                        v30 = 1;
                      }

                      else
                      {
                        strcat(a6, __s);
                        v24 = v24 + strlen(__s);
                      }

                      v7 += v104 + 1;
                    }

                    else
                    {
                      v30 = 0;
                      while (1)
                      {
                        if (strlen(__s) + v24 >= v23)
                        {
                          v30 = 1;
                        }

                        else
                        {
                          strcat(a6, __s);
                          v24 = v24 + strlen(__s);
                        }

                        v7 += v104 + 1;
                        if ((ssftmap_IteratorNext(v102, &v101, &v100) & 0x80000000) != 0)
                        {
                          break;
                        }

                        __s[0] = 0;
                        v103 = 0;
                        v31 = v100;
                        kaldi::CuMatrixBase<float>::~CuMatrixBase(v27);
                        stringmap_reader_Map(v31, v32, &v103);
                        if (v103)
                        {
                          v95 = 1;
                          goto LABEL_22;
                        }
                      }

                      v95 = 1;
                      v22 = v93;
                      a3 = v94;
                    }
                  }

                  ssftmap_IteratorClose(v102);
                  v26 = v30 == 0;
                }
              }
            }

            while (v26 && v7 < v22);
          }

          LhpuRemove(*(v13 + 8), &v105);
          log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : End (%x, %s)", v81, v82, v83, v95);
          v6 = v95;
          if (v95 == 1)
          {
            log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme", v84, v85, v86, v90);
          }
        }

        else
        {
          log_OutPublic(*(v13 + 32), "PHONMAP", 29000, 0, v18, v19, v20, v21, v89);
          v6 = 2322604042;
        }
      }
    }
  }

  v87 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t phonmap_GetLhPAlphabetCore(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v13 = 0;
  v12 = 0;
  result = stringmap_reader_MapGetRawData(a1, &v13, &v12);
  if ((result & 0x80000000) == 0)
  {
    v6 = v13;
    if (v13)
    {
      v7 = 0;
      v8 = 0;
      v9 = v12;
      v10 = 1;
      while (1)
      {
        if (*(v9 + v7))
        {
          if (v6 > v7)
          {
            while (*(v9 + v7))
            {
              if (v10)
              {
                v11 = *a2;
                if (*a2)
                {
                  if (v11 <= v8)
                  {
                    goto LABEL_26;
                  }

                  *(a3 + v8) = *(v9 + v7);
                }

                ++v8;
              }

              if (++v7 >= v6)
              {
                v7 = v6;
                if (v10)
                {
                  goto LABEL_19;
                }

                goto LABEL_23;
              }
            }
          }

          v7 = v7;
          if (v10)
          {
LABEL_19:
            v11 = *a2;
            if (*a2)
            {
              if (v11 <= v8)
              {
                goto LABEL_26;
              }

              *(a3 + v8) = 32;
            }

            ++v8;
          }

LABEL_23:
          v10 ^= 1u;
        }

        else
        {
          ++v7;
        }

        if (v7 >= v6)
        {
          goto LABEL_25;
        }
      }
    }
  }

  LOWORD(v8) = 0;
LABEL_25:
  v11 = *a2;
  if (*a2)
  {
LABEL_26:
    if (v11 <= v8)
    {
      result = 2322604041;
    }

    else
    {
      *(a3 + v8) = 0;
    }
  }

  *a2 = v8 + 1;
  return result;
}

uint64_t phonmap_reader_MapsGetGetLhPAlphabetCore(uint64_t a1, __int16 *a2, uint64_t a3)
{
  LhPAlphabetCore = 2322604052;
  v14 = 0;
  v4 = 2322604039;
  if (a1 && a3)
  {
    v7 = *a2;
    v13 = *a2;
    if ((ssftmap_IteratorOpen(a1, 0, 1, &v14) & 0x80000000) != 0)
    {
      return 2322604052;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      if ((ssftmap_IteratorNext(v14, &v12, &v11) & 0x80000000) == 0)
      {
        v8 = 0;
        v9 = v7;
        while (1)
        {
          LhPAlphabetCore = phonmap_GetLhPAlphabetCore(v11, &v13, a3 + v8);
          if ((LhPAlphabetCore & 0x80000000) != 0)
          {
            break;
          }

          v9 -= v13 - 1;
          v8 += v13 - 1;
          v13 = v9;
          if ((ssftmap_IteratorNext(v14, &v12, &v11) & 0x80000000) != 0)
          {
            v7 = v7 - v9 + 1;
            break;
          }
        }
      }

      *a2 = v7;
      ssftmap_IteratorClose(v14);
      return LhPAlphabetCore;
    }
  }

  return v4;
}

uint64_t charcount_CountBlanks(uint64_t a1, unsigned int a2)
{
  if (a1 && a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (utf8_BelongsToSet(4u, a1, v4, a2))
      {
        ++v5;
      }

      v4 = (utf8_determineUTF8CharLength(*(a1 + v4)) + v4);
    }

    while (v4 < a2);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t charcount_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 2)
  {
    return 2709528577;
  }

  result = 0;
  *a2 = &ICharcount;
  return result;
}

uint64_t charcount_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2709528586;
  v34 = 0;
  if (!a5)
  {
    return 2709528582;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v34);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v34 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjOpen: Begin", v10, v11, v12, v29);
  v13 = heap_Calloc(*(v34 + 8), 1, 48);
  if (!v13)
  {
    v22 = v34;
    goto LABEL_11;
  }

  v18 = v13;
  *v13 = a3;
  v13[1] = a4;
  v19 = v34;
  v13[2] = v34;
  v20 = *(v19 + 8);
  v31 = xmmword_1F42D3BC0;
  *&v32 = off_1F42D3BD0;
  v21 = vector_ObjOpen(v20, &v31, 1, v18 + 3);
  v22 = v34;
  if (!v21)
  {
LABEL_11:
    log_OutPublic(*(v22 + 32), "CHARCOUNT", 16000, 0, v14, v15, v16, v17, v30);
    return v5;
  }

  v23 = *(v34 + 8);
  v31 = xmmword_1F42D3BD8;
  v32 = *off_1F42D3BE8;
  v33 = off_1F42D3BF8;
  v5 = ssftmap_ObjOpen(v23, 0, &v31, v18 + 4);
  v27 = 29350;
  if ((v5 & 0x80000000) != 0)
  {
    *a5 = v18;
    *(a5 + 8) = 29350;
    charcount_ObjClose(v18, *(a5 + 8));
    v18 = 0;
    v27 = 0;
  }

  *a5 = v18;
  *(a5 + 8) = v27;
  log_OutText(*(v34 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjOpen: End (%x)", v24, v25, v26, v5);
  return v5;
}

uint64_t charcount_ObjClose(void *a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = a1[2];
    log_OutText(*(v7 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjClose : Begin", v3, v4, v5, v12);
    vector_ObjClose(a1[3]);
    ssftmap_ObjClose(a1[4]);
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjClose : End (%x)", v8, v9, v10, v6);
  }

  return v6;
}

uint64_t charcount_ObjReopen(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 16);
    log_OutText(*(v7 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjReopen : Begin", v3, v4, v5, v12);
    log_OutText(*(v7 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjReopen : End (%x)", v8, v9, v10, v6);
  }

  return v6;
}

uint64_t charcount_AddCharcountEvent(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int16 a4)
{
  __s2 = 0;
  __s = 0;
  Str = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v26[0] = 0;
  v8 = *(a1 + 16);
  v9 = Utf8_LengthInUtf8chars(a3, a4);
  v10 = v9 - charcount_CountBlanks(a3, a4);
  *(a1 + 40) += v10;
  Str = paramc_ParamGetStr(*(v8 + 40), "voice", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v11 = paramc_ParamGetStr(*(v8 + 40), "voiceoperatingpoint", &__s2);
  if ((v11 & 0x80000000) == 0 || (v11 = paramc_ParamGetStr(*(v8 + 40), "voicemodel", &__s2), (v11 & 0x80000000) == 0))
  {
    v12 = strlen(__s);
    v13 = strlen(__s2);
    v14 = heap_Calloc(*(v8 + 8), 1, (v12 + v13 + 2));
    if (v14)
    {
      v19 = v14;
      v20 = strcpy(v14, __s);
      *&v19[strlen(v20)] = 95;
      strcat(v19, __s2);
      LODWORD(v26[0]) = v10;
      v26[1] = v19;
      if (!vector_Add(*(a1 + 24), v26))
      {
        v11 = 2709528586;
        log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0, v21, v22, v23, v24, v26[0]);
      }

      heap_Free(*(v8 + 8), v19);
    }

    else
    {
      v11 = 2709528586;
      log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0, v15, v16, v17, v18, v26[0]);
    }
  }

  return v11;
}

uint64_t charcount_ReportCharcounts(void *a1, int a2)
{
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v3 = safeh_HandleCheck(a1, a2, 29350, 48);
  v4 = v3;
  if (v3 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v35 = 0;
    v6 = a1[2];
    Size = vector_GetSize(a1[3]);
    if (Size)
    {
      v8 = Size;
      v9 = 0;
      while (vector_GetElemAt(a1[3], v9, &v35))
      {
        if ((ssftmap_FindReadOnly(a1[4], *(v35 + 8), &v34) & 0x80000000) != 0)
        {
          v10 = v35;
          v33 = *v35;
        }

        else
        {
          v33 = *v35 + *v34;
          ssftmap_Remove(a1[4], *(v35 + 8));
          v10 = v35;
        }

        v4 = ssftmap_Insert(a1[4], *(v10 + 8), &v33);
        if ((v4 & 0x80000000) != 0)
        {
          return v4;
        }

        if (v8 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v4 = 2709528576;
    }

    else
    {
LABEL_13:
      if ((ssftmap_IteratorOpen(v5[4], 0, 0, &v32) & 0x80000000) == 0)
      {
        while ((ssftmap_IteratorNext(v32, &v31, &v34) & 0x80000000) == 0)
        {
          v30 = *v34;
          log_OutEvent(*(v6 + 32), 31, "%s%s%s%u", v16, v17, v18, v19, v20, "VOICE_VOP");
          v28 = *v34;
          log_OutText(*(v6 + 32), "CHARCOUNT", 5, 0, "Number of utf-8 characters processed for voice_model%s=%d", v21, v22, v23, v31);
        }

        ssftmap_IteratorClose(v32);
      }

      v29 = *(v5 + 10);
      log_OutEvent(*(v6 + 32), 30, "%s%u", v11, v12, v13, v14, v15, "CHARS");
      log_OutText(*(v6 + 32), "CHARCOUNT", 5, 0, "Total number of utf-8 characters processed %d", v24, v25, v26, *(v5 + 10));
    }

    vector_Clear(a1[3]);
    ssftmap_Clear(v5[4]);
    *(v5 + 10) = 0;
  }

  return v4;
}

uint64_t charcount_CheckAndModifyLastCharcountEvent(uint64_t a1, int a2, uint64_t a3, unsigned __int16 a4)
{
  __s2 = 0;
  __s = 0;
  v7 = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = *(a1 + 16);
    if (charcount_CountBlanks(a3, a4) != a4)
    {
      v26 = 0;
      Str = paramc_ParamGetStr(*(v8 + 40), "voice", &__s);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      else
      {
        v10 = paramc_ParamGetStr(*(v8 + 40), "voiceoperatingpoint", &__s2);
        if ((v10 & 0x80000000) == 0 || (v10 = paramc_ParamGetStr(*(v8 + 40), "voicemodel", &__s2), v7 = v10, (v10 & 0x80000000) == 0))
        {
          v7 = 2709528586;
          v11 = strlen(__s);
          v12 = strlen(__s2);
          v13 = heap_Calloc(*(v8 + 8), 1, (v11 + v12 + 2));
          if (v13)
          {
            v14 = v13;
            v15 = strcpy(v13, __s);
            *&v14[strlen(v15)] = 95;
            strcat(v14, __s2);
            Size = vector_GetSize(*(a1 + 24));
            if (vector_GetElemAt(*(a1 + 24), Size - 1, &v26))
            {
              v17 = *(v26 + 8);
              if (strcmp(v17, v14))
              {
                v18 = strlen(v14);
                v19 = heap_Realloc(*(v8 + 8), v17, v18 + 1);
                if (!v19)
                {
                  log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0, v20, v21, v22, v23, v25);
                  goto LABEL_15;
                }

                *(v26 + 8) = v19;
                strcpy(v19, v14);
              }

              v7 = v10;
            }

            else
            {
              v7 = 2709528576;
            }

LABEL_15:
            heap_Free(*(v8 + 8), v14);
          }
        }
      }
    }
  }

  return v7;
}

uint64_t charcount_ElemCopyParts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    v7 = strlen(*(a1 + 8));
    result = heap_Alloc(a2, v7 + 1);
    *(a3 + 8) = result;
    if (result)
    {
      *a3 = *a1;
      strcpy(result, *(a1 + 8));
      return 1;
    }
  }

  return result;
}

void *charcount_ElemFreeParts(void *result, void *a2)
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

uint64_t charcount_IElemValueCopy(_DWORD *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 4);
  if (!v5)
  {
    return 2709528586;
  }

  v6 = v5;
  result = 0;
  *v6 = *a1;
  *a3 = v6;
  return result;
}

uint64_t wordSeg_stricmp(char *a1, unsigned __int8 *a2)
{
  LOBYTE(v2) = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = a2;
  do
  {
    v5 = *a1;
    v6 = v5 - v2;
    if (v5 == v2)
    {
      ++a1;
      ++v3;
    }

    else if (v5 >= 1 && ssft_tolower(v2) == v5)
    {
      ++a1;
      ++v3;
      v6 = 0;
    }

    v2 = *v3;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v2 == 0;
    }
  }

  while (!v7);
  result = v6 != 0;
  if (v6 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t fe_word_seg_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v28 = 0;
  v29 = 0;
  v5 = 2359304199;
  v26 = 0;
  v27 = 0;
  if (a5)
  {
    v25 = 0;
    v23 = 0;
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v29);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = objc_GetObject(v29[6], "SYNTHSTREAM", &v28);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    Object = objc_GetObject(v29[6], "FE_DEPES", &v27);
    v9 = v29[6];
    if ((Object & 0x80000000) != 0)
    {
      v20 = "SYNTHSTREAM";
    }

    else
    {
      v10 = objc_GetObject(v9, "FE_DCTLKP", &v26);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = heap_Alloc(v29[1], 1208);
        if (v11)
        {
          v16 = v11;
          *v11 = v29;
          *(v11 + 8) = *(v28 + 8);
          v17 = v26;
          v18 = v27;
          *(v11 + 32) = *(v27 + 8);
          *(v11 + 16) = *(v18 + 16);
          v19 = *(v17 + 8);
          *(v11 + 56) = v19;
          *(v11 + 40) = *(v17 + 16);
          *(v11 + 1032) = 0;
          *(v11 + 1040) = 0;
          *(v11 + 1048) = 0;
          *(v11 + 1056) = 0;
          *(v11 + 1188) = 0x100000000;
          *(v11 + 952) = 0u;
          *(v11 + 968) = 0u;
          *(v11 + 984) = 0u;
          *(v11 + 1000) = 0u;
          *(v11 + 1010) = 0u;
          v24 = -1;
          v5 = (*(v19 + 96))(*(v11 + 40), *(v11 + 48), "fecfg", "backtrans", &v25, &v24, &v23);
          if ((v5 & 0x80000000) != 0)
          {
            heap_Free(v29[1], v16);
          }

          else
          {
            *(v16 + 1200) = v24 != 0;
            *a5 = v16;
            *(a5 + 8) = 86237;
          }
        }

        else
        {
          log_OutPublic(v29[4], "FE_WORDSEG", 61000, 0, v12, v13, v14, v15, v22);
          objc_ReleaseObject(v29[6], "SYNTHSTREAM");
          objc_ReleaseObject(v29[6], "FE_DEPES");
          objc_ReleaseObject(v29[6], "FE_DCTLKP");
          return 2359304202;
        }

        return v5;
      }

      Object = v10;
      objc_ReleaseObject(v29[6], "SYNTHSTREAM");
      v9 = v29[6];
      v20 = "FE_DEPES";
    }

    objc_ReleaseObject(v9, v20);
    return Object;
  }

  return v5;
}

uint64_t fe_word_seg_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 86237, 1208);
  if ((result & 0x80000000) != 0)
  {
    return 2359304200;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_word_seg_ObjReopen(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 86237, 1208);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2359304200;
  }
}

uint64_t fe_word_seg_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 86237, 1208) & 0x80000000) != 0)
  {
    return 2359304200;
  }

  synstrmaux_InitStreamOpener(a1 + 64, *(*a1 + 32), "FE_WORDSEG");
  synstrmaux_RegisterInStream((a1 + 64), "text/plain;charset=utf-8", 0, a1 + 888);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 904);
  synstrmaux_RegisterOutStream((a1 + 64), "text/plain;charset=utf-8", a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", a1 + 936);
  v7 = synstrmaux_OpenStreams((a1 + 64), *(a1 + 8), a3, a4);
  if ((v7 & 0x80000000) != 0 || (v7 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 0, &unk_1C37BDF1D, 0), (v7 & 0x80000000) != 0))
  {
    v11 = v7;
    *(a1 + 1196) = 54;
    synstrmaux_CloseStreams((a1 + 64), *(a1 + 8));
  }

  else
  {
    v11 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), "word_segmentation");
    if ((v11 & 0x80000000) != 0)
    {
      *(a1 + 1192) = 0;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "depes grammar %s not present", v8, v9, v10, "word_segmentation");
      v11 = 0;
    }

    *(a1 + 1196) = 54;
  }

  return v11;
}

uint64_t fe_word_seg_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v169 = 0;
  v170 = 0;
  v168 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  if ((safeh_HandleCheck(a1, a2, 86237, 1208) & 0x80000000) != 0)
  {
    return 2359304200;
  }

  __src = 0;
  *a5 = 1;
  v7 = (*(*(a1 + 8) + 88))(*(a1 + 888), *(a1 + 896), &v170, &v169 + 4);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = HIDWORD(v169);
  v9 = (*(*(a1 + 8) + 144))(*(a1 + 904), *(a1 + 912), &v168 + 4, &v168);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (!HIDWORD(v169))
  {
    v106 = v168;
    if (!v168)
    {
      v163 = 0;
      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v163) & 0x80000000) != 0 || !v163 || !*v163)
      {
        *a5 = 0;
      }

      return v9;
    }

    if (HIDWORD(v168))
    {
      v7 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &__src, &v169);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v7 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), __src, v169);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v9 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), v169);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }

      v106 = v168;
    }

    if (!v106)
    {
      return v9;
    }

    return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 8));
  }

  *(a1 + 1188) = log_GetLogLevel(*(*a1 + 32)) > 4;
  log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Processing Sentence=%s", v10, v11, v12, v170);
  v7 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &__src, &v169);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v13 = v169;
  *(a1 + 1040) = v169 >> 5;
  *(a1 + 1042) = v13 >> 5;
  v14 = heap_Alloc(*(*a1 + 8), v13);
  *(a1 + 1032) = v14;
  if (!v14 || (memcpy(v14, __src, v169), v19 = heap_Calloc(*(*a1 + 8), 1, (HIDWORD(v169) + 33)), (*(a1 + 1016) = v19) == 0))
  {
    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0, v15, v16, v17, v18, v156);
    v9 = 2359304202;
    goto LABEL_130;
  }

  *(a1 + 1024) = WORD2(v169) + 32;
  strcpy(v19, v170);
  v20 = strlen(*(a1 + 1016));
  v21 = v20;
  v22 = Utf8_LengthInUtf8chars(*(a1 + 1016), v20);
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 1000), v22);
  if ((NewCharStr & 0x80000000) != 0 || (v161 = (a1 + 1000), memset(*(a1 + 1000), 110, v22), *(*(a1 + 1000) + v22) = 0, NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 1008), v22), (NewCharStr & 0x80000000) != 0))
  {
    v9 = NewCharStr;
    goto LABEL_130;
  }

  v159 = v13;
  v160 = v8;
  memset(*(a1 + 1008), 32, v22);
  LOWORD(v24) = 0;
  *(*(a1 + 1008) + v22) = 0;
  if (*(a1 + 1040) < 2u)
  {
    goto LABEL_70;
  }

  v24 = 0;
  v25 = 1;
  v26 = 88;
  v27 = 3;
  do
  {
    v28 = (*(*(a1 + 1032) + 32 * v25 + 12) - *(*(a1 + 1032) + 12));
    v29 = Utf8_LengthInUtf8chars(*(a1 + 1016), v28);
    v30 = *(a1 + 1032);
    v31 = (v30 + 32 * v25);
    v32 = *v31;
    if (*v31 != 34)
    {
      if (v32 != 21)
      {
        if (v32 == 1)
        {
          v24 = (v24 + 1);
        }

        else
        {
          v24 = v24;
        }

        goto LABEL_38;
      }

      if (!*(v31 + 3))
      {
        goto LABEL_38;
      }
    }

    v33 = *(a1 + 1040);
    LOWORD(v34) = v20;
    if (v25 + 1 >= v33)
    {
      goto LABEL_28;
    }

    v35 = (v30 + v26);
    v36 = v27;
    while (1)
    {
      v37 = *(v35 - 6);
      if (v37 == 21)
      {
        break;
      }

      if (v37 == 34)
      {
        goto LABEL_27;
      }

LABEL_24:
      v35 += 4;
      if (v33 == v36++)
      {
        LOWORD(v34) = v20;
        goto LABEL_28;
      }
    }

    if (!*v35)
    {
      goto LABEL_24;
    }

LABEL_27:
    v34 = *(v35 - 3) - *(v30 + 12);
LABEL_28:
    v39 = v24;
    if (v32 == 34)
    {
      v40 = 112;
    }

    else if (wordSeg_stricmp(*(v31 + 3), "normal"))
    {
      if (wordSeg_stricmp(*(*(a1 + 1032) + 32 * v25 + 24), "spell"))
      {
        v40 = 110;
      }

      else
      {
        v40 = 115;
      }
    }

    else
    {
      v40 = 110;
    }

    for (; v28 < v34; v28 = (utf8_determineUTF8CharLength(*(*(a1 + 1016) + v28)) + v28))
    {
      *(*(a1 + 1000) + v29++) = v40;
    }

    v24 = v39;
LABEL_38:
    ++v25;
    v41 = *(a1 + 1040);
    v26 += 32;
    ++v27;
  }

  while (v25 < v41);
  if (v41 < 2)
  {
    goto LABEL_69;
  }

  v158 = v24;
  v42 = 2;
  v43 = 1;
  v44 = 88;
  while (2)
  {
    v45 = *(a1 + 1032);
    v46 = *(v45 + 32 * v43 + 12);
    LODWORD(v45) = *(v45 + 12);
    v47 = v46 - v45;
    v48 = Utf8_LengthInUtf8chars(*(a1 + 1016), (v46 - v45));
    v49 = *(a1 + 1032);
    v50 = v49 + 32 * v43;
    if (*v50 == 7)
    {
      v56 = *(v50 + 24);
      if (!v56)
      {
        goto LABEL_67;
      }

      v57 = *(v50 + 16) + v47;
      if (v20 >= v57)
      {
        v58 = v57;
      }

      else
      {
        v58 = v20;
      }

      if (v56 == 43)
      {
        v59 = 112;
      }

      else
      {
        if (v56 != 16)
        {
          goto LABEL_67;
        }

        v59 = 116;
      }

      for (; v47 < v58; ++v48)
      {
        *(*(a1 + 1000) + v48) = v59;
        v47 += utf8_determineUTF8CharLength(*(*(a1 + 1016) + v47));
      }
    }

    else if (*v50 == 36)
    {
      v51 = *(v50 + 24);
      if (v51)
      {
        v52 = *(a1 + 1040);
        LOWORD(v53) = v20;
        if (v43 + 1 < v52)
        {
          v54 = (v49 + v44);
          v55 = v42;
          while (*(v54 - 6) != 36 || !*v54)
          {
            ++v55;
            v54 += 4;
            if (v52 == v55)
            {
              LOWORD(v53) = v20;
              goto LABEL_64;
            }
          }

          v60 = v49 + 32 * v55;
          LOWORD(v53) = v20;
          if (*v60 == 36)
          {
            LOWORD(v53) = v20;
            if (*(v60 + 24))
            {
              v53 = *(v60 + 12) - *(v49 + 12);
            }
          }
        }

LABEL_64:
        if (!wordSeg_stricmp(v51, "latin") && v53 > v47)
        {
          do
          {
            *(*(a1 + 1000) + v48) = 108;
            v47 += utf8_determineUTF8CharLength(*(*(a1 + 1016) + v47));
            ++v48;
          }

          while (v47 < v53);
        }
      }
    }

LABEL_67:
    ++v43;
    ++v42;
    v44 += 32;
    if (v43 < *(a1 + 1040))
    {
      continue;
    }

    break;
  }

  LOWORD(v24) = v158;
LABEL_69:
  v21 = v20;
LABEL_70:
  if (!v21)
  {
    goto LABEL_106;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  do
  {
    v64 = v63;
    if (*(*(a1 + 1016) + v63) == 32)
    {
      v65 = v62;
      *(*v161 + v62) = 32;
      *(*(a1 + 1008) + v62) = 32;
    }

    else
    {
      v65 = v62;
    }

    v66 = *(*v161 + v65);
    if (v66 == 115 || v66 == 110)
    {
      v61 = 1;
    }

    v63 = v64 + utf8_determineUTF8CharLength(*(*(a1 + 1016) + v64));
    ++v62;
  }

  while (v63 < v20);
  if (v61 != 1)
  {
    goto LABEL_106;
  }

  LODWORD(v163) = 0;
  wordSeg_logMarkers(a1, "Start of Chinese Word Segmentation", v67, v68, v69, v70, v71, v72);
  if (*(a1 + 1188) == 1)
  {
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Orth   =%s", v73, v74, v75, *(a1 + 1016));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Region =%s", v76, v77, v78, *(a1 + 1000));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Hex    =%s", v79, v80, v81, *(a1 + 1008));
  }

  WordDefs = wordSeg_GetWordDefs(a1, &v166, &v165, v24);
  if ((WordDefs & 0x80000000) != 0)
  {
    v9 = WordDefs;
    v104 = 0;
    goto LABEL_128;
  }

  v83 = v166;
  v84 = v165;
  wordSeg_ParseOutPOSAndAttributes(a1, v166, v165);
  if (*(a1 + 1188) == 1)
  {
    wordSeg_logMarkers(a1, "After POS and ATTRIBUTE processing", v85, v86, v87, v88, v89, v90);
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", v91, v92, v93, *(a1 + 1016));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", v94, v95, v96, *(a1 + 1000));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", v97, v98, v99, *(a1 + 1008));
  }

  if (*(a1 + 1192) != 1)
  {
LABEL_106:
    v102 = 0;
    v104 = 0;
    goto LABEL_107;
  }

  v100 = strlen(*(a1 + 1016));
  HIDWORD(v169) = v100 + 1;
  v101 = heap_Calloc(*(*a1 + 8), 1, (v100 + 2));
  v102 = v101;
  if (!v101)
  {
    v104 = 0;
    goto LABEL_115;
  }

  strcpy(v101, *(a1 + 1016));
  v103 = heap_Alloc(*(*a1 + 8), v169);
  v104 = v103;
  if (!v103)
  {
LABEL_115:
    v105 = 0;
    goto LABEL_116;
  }

  memcpy(v103, *(a1 + 1032), v169);
  v105 = 1;
LABEL_116:
  v113 = wordSeg_setDepesLayers(a1, v83, v84);
  if ((v113 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  v113 = wordSeg_execDepesLayers(a1, &v163, v114, v115, v116, v117, v118, v119);
  if ((v113 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v163)
  {
    goto LABEL_124;
  }

  v162 = 0;
  v113 = wordSeg_processDepesOutput(a1, v83, v84, &v162);
  if ((v113 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v162 != 1)
  {
    goto LABEL_123;
  }

  v129 = *(*a1 + 32);
  if (v105)
  {
    log_OutPublic(v129, "FE_WORDSEG", 61005, 0, v125, v126, v127, v128, v156);
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "!! Restoring backup as post-processing fails !!", v130, v131, v132, v157);
    strcpy(*(a1 + 1016), v102);
    memcpy(*(a1 + 1032), v104, v169);
    heap_Free(*(*a1 + 8), v102);
    heap_Free(*(*a1 + 8), v104);
    v102 = 0;
    v104 = 0;
LABEL_123:
    wordSeg_logMarkers(a1, "After DEPES result processing", v123, v124, v125, v126, v127, v128);
LABEL_124:
    if (*(a1 + 1188) == 1)
    {
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", v120, v121, v122, *(a1 + 1016));
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", v133, v134, v135, *(a1 + 1000));
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", v136, v137, v138, *(a1 + 1008));
    }

LABEL_107:
    v108 = *(a1 + 1016);
    v109 = strlen(v108);
    LODWORD(v169) = 32 * *(a1 + 1040);
    HIDWORD(v169) = v109 + 1;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Final Sentence %s", v110, v111, v112, v108);
    v113 = (*(*(a1 + 8) + 104))(*(a1 + 920), *(a1 + 928), *(a1 + 1016), HIDWORD(v169));
    if ((v113 & 0x80000000) == 0)
    {
      v113 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), *(a1 + 1032), v169);
      if ((v113 & 0x80000000) == 0)
      {
        v113 = (*(*(a1 + 8) + 96))(*(a1 + 888), *(a1 + 896), v160);
        if ((v113 & 0x80000000) == 0)
        {
          v113 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), v159);
          if ((v113 & 0x80000000) == 0)
          {
            v113 = (*(*(a1 + 32) + 112))(*(a1 + 16), *(a1 + 24), &v164, 0);
            if ((v113 & 0x80000000) == 0)
            {
              v164 += HIDWORD(v169) - v160;
              v113 = (*(*(a1 + 32) + 104))(*(a1 + 16), *(a1 + 24));
            }
          }
        }
      }
    }

LABEL_126:
    v9 = v113;
    if (v102)
    {
LABEL_127:
      heap_Free(*(*a1 + 8), v102);
    }
  }

  else
  {
    log_OutPublic(v129, "FE_WORDSEG", 61005, "%s%s", v125, v126, v127, v128, "ABORT");
    v9 = 2359304192;
    if (v102)
    {
      goto LABEL_127;
    }
  }

LABEL_128:
  if (v104)
  {
    heap_Free(*(*a1 + 8), v104);
  }

LABEL_130:
  if (*(a1 + 1056))
  {
    v139 = 0;
    do
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 1048) + 8 * v139));
      *(*(a1 + 1048) + 8 * v139++) = 0;
    }

    while (v139 < *(a1 + 1056));
  }

  *(a1 + 1056) = 0;
  v140 = *(a1 + 1048);
  if (v140)
  {
    heap_Free(*(*a1 + 8), v140);
    *(a1 + 1048) = 0;
  }

  *(a1 + 1058) = 0;
  v141 = *(a1 + 1032);
  if (v141)
  {
    heap_Free(*(*a1 + 8), v141);
    *(a1 + 1032) = 0;
    *(a1 + 1040) = 0;
  }

  v142 = *(a1 + 952);
  if (v142)
  {
    heap_Free(*(*a1 + 8), v142);
    *(a1 + 952) = 0;
  }

  v143 = *(a1 + 960);
  if (v143)
  {
    heap_Free(*(*a1 + 8), v143);
    *(a1 + 960) = 0;
  }

  v144 = *(a1 + 968);
  if (v144)
  {
    heap_Free(*(*a1 + 8), v144);
    *(a1 + 968) = 0;
  }

  v145 = *(a1 + 976);
  if (v145)
  {
    heap_Free(*(*a1 + 8), v145);
    *(a1 + 976) = 0;
  }

  v146 = *(a1 + 1000);
  if (v146)
  {
    heap_Free(*(*a1 + 8), v146);
    *(a1 + 1000) = 0;
  }

  v147 = *(a1 + 1008);
  if (v147)
  {
    heap_Free(*(*a1 + 8), v147);
    *(a1 + 1008) = 0;
  }

  v148 = *(a1 + 1016);
  if (v148)
  {
    heap_Free(*(*a1 + 8), v148);
    *(a1 + 1016) = 0;
    *(a1 + 1024) = 0;
  }

  v149 = v166;
  if (v166)
  {
    v150 = v165;
    if (v165)
    {
      v151 = (v166 + 32);
      do
      {
        v152 = *(v151 - 3);
        if (v152)
        {
          heap_Free(*(*a1 + 8), v152);
          *(v151 - 3) = 0;
        }

        v153 = *(v151 - 2);
        if (v153)
        {
          heap_Free(*(*a1 + 8), v153);
          *(v151 - 2) = 0;
        }

        v154 = *(v151 - 1);
        if (v154)
        {
          heap_Free(*(*a1 + 8), v154);
          *(v151 - 1) = 0;
        }

        if (*v151)
        {
          heap_Free(*(*a1 + 8), *v151);
          *v151 = 0;
        }

        v155 = v151[3];
        if (v155)
        {
          heap_Free(*(*a1 + 8), v155);
          v151[3] = 0;
        }

        v151 += 9;
        --v150;
      }

      while (v150);
    }

    heap_Free(*(*a1 + 8), v149);
  }

  return v9;
}