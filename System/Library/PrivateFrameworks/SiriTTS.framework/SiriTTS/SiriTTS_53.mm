uint64_t pw_group_csc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, uint64_t a6, uint64_t a7, uint64_t *a8, _WORD *a9, unsigned __int16 a10, const char **a11)
{
  v12 = a7;
  v102 = *MEMORY[0x1E69E9840];
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "pw_group_csc Begin", a6, a7, a8, v86);
  v16 = heap_Calloc(*(a1 + 8), v12, 184);
  v93 = a8;
  *a8 = v16;
  if (!v16)
  {
    v82 = 2315264010;
    v83 = *(a1 + 32);
LABEL_77:
    log_OutPublic(v83, "FE_PHRASING", 37000, 0, v17, v18, v19, v20, v87);
    goto LABEL_78;
  }

  v88 = a1;
  *a9 = 0;
  v101 = 0;
  v100 = 0;
  v91 = v12;
  v21 = a3;
  if (v12)
  {
    LOWORD(v22) = 0;
    v23 = 0;
    v24 = 0;
    v25 = a4;
    v26 = (v16 + 8);
    v27 = (a3 + 24);
    while (1)
    {
      v94 = v26;
      v89 = v24;
      *v26 = 0;
      while (1)
      {
        v28 = (a6 + 184 * v22);
        if (v25)
        {
          v29 = 0;
          v30 = **v28;
          v31 = v27;
          while (1)
          {
            v32 = *v31;
            v31 += 20;
            if (v32 == v30)
            {
              break;
            }

            if (v25 == ++v29)
            {
              v95 = v25;
              goto LABEL_12;
            }
          }

          v95 = v29;
LABEL_12:
          v34 = 0;
          v35 = v27;
          while (1)
          {
            v36 = *v35;
            v35 += 20;
            if (v36 == v30)
            {
              break;
            }

            if (v25 == ++v34)
            {
              v33 = v25;
              goto LABEL_17;
            }
          }

          v33 = v34;
        }

        else
        {
          v95 = 0;
          v33 = 0;
        }

LABEL_17:
        v37 = *(v21 + 40 * v33);
        v96 = Utf8_Utf8NbrOfSymbols(v37);
        if (v25)
        {
          v38 = 0;
          v39 = **v28;
          v40 = v27;
          while (1)
          {
            v41 = *v40;
            v40 += 20;
            if (v41 == v39)
            {
              break;
            }

            if (v25 == ++v38)
            {
              v38 = v25;
              break;
            }
          }

          v42 = 0;
          v97 = *(v21 + 40 * v38 + 36);
          v43 = v27;
          while (1)
          {
            v44 = *v43;
            v43 += 20;
            if (v44 == v39)
            {
              break;
            }

            if (v25 == ++v42)
            {
              v45 = v25;
              goto LABEL_28;
            }
          }

          v45 = v42;
        }

        else
        {
          v45 = 0;
          v97 = *(v21 + 36);
        }

LABEL_28:
        v46 = *(v21 + 40 * v45 + 16);
        utf8_getUTF8Char(v37, 0, &v100);
        IsChineseLetter = utf8_IsChineseLetter(&v100);
        v48 = *(a2 + 1024);
        if (v48)
        {
          v49 = 0;
          v50 = v21 + 40 * v95;
          v51 = v94;
          while (*(a2 + 4 * v49) > *(v50 + 28) || *(v50 + 32) > *(a2 + 512 + 4 * v49))
          {
            if (v48 <= ++v49)
            {
              v52 = 1;
              goto LABEL_36;
            }
          }

          v52 = 0;
        }

        else
        {
          v52 = 1;
          v51 = v94;
        }

LABEL_36:
        v53 = *(a6 + 184 * v22 + 8);
        if (v53 != 1)
        {
          break;
        }

        v54 = (v96 - 1);
        if (v54 != 1 && (v54 != 2 || !v97))
        {
          break;
        }

        v55 = strcmp(v46, "latin") && IsChineseLetter;
        v56 = v55 ? v52 : 0;
        if (v56 != 1)
        {
          break;
        }

        if (strstr(a5, v37))
        {
          goto LABEL_56;
        }

        v57 = a11;
        v58 = a10;
        if (a10)
        {
          while (strcmp(v37, *v57))
          {
            ++v57;
            if (!--v58)
            {
              goto LABEL_51;
            }
          }

LABEL_56:
          v99 = v22 + 1;
          LOWORD(v22) = *v51;
          v61 = v88;
          v60 = v93;
LABEL_57:
          *v51 = v22 + 1;
          goto LABEL_58;
        }

LABEL_51:
        if (v97 || *(a6 + 184 * v22 + 72))
        {
          goto LABEL_56;
        }

        v59 = *v51 + 1;
        *v51 = v59;
        LOWORD(v22) = v22 + 1;
        v21 = a3;
        v60 = v93;
        v27 = (a3 + 24);
        if (v91 <= v22 || v59 >= 3u)
        {
          v99 = v22;
          v61 = v88;
          goto LABEL_58;
        }
      }

      v99 = v22;
      v61 = v88;
      v60 = v93;
      if (!*v51)
      {
        *v51 = v53;
        v51 = &v99;
        goto LABEL_57;
      }

LABEL_58:
      ++*a9;
      v62 = v60;
      *(*v60 + 184 * v23) = heap_Calloc(*(v61 + 8), *(*v60 + 184 * v23 + 8), 2);
      v63 = *v62;
      v64 = *v62 + 184 * v23;
      v65 = *v64;
      if (!*v64)
      {
        break;
      }

      v22 = v99;
      v66 = a6 + 184 * v99;
      if (*(v64 + 8) <= *(v66 - 176))
      {
        if (*(v64 + 8))
        {
          v80 = 0;
          v81 = *(v66 - 184);
          do
          {
            *(v65 + 2 * v80) = *(v81 + 2 * v80);
            ++v80;
          }

          while (v80 < *(v64 + 8));
        }

        *(v64 + 72) = *(v66 - 112);
      }

      else
      {
        v67 = heap_Calloc(*(v61 + 8), 1, 1024);
        if (!v67)
        {
          break;
        }

        v68 = v67;
        v69 = *v93;
        v70 = *v93 + 184 * v23;
        *(v70 + 12) = 1;
        v71 = *(v70 + 8);
        if (v71)
        {
          v72 = 0;
          v73 = -v71;
          v74 = (a6 + 184 * v22 - 184 * v71);
          v75 = v71 - 1;
          do
          {
            v76 = *v74;
            v74 += 23;
            v77 = *v76;
            *(*(*v93 + 184 * v23) + 2 * (v73 + *(*v93 + 184 * v23 + 8))) = v77;
            sprintf(&v68[v72], "%d-", v77);
            v72 = strlen(v68);
            ++v73;
          }

          while (v75--);
          v69 = *v93;
          v79 = *(*v93 + 184 * v23 + 8);
          v61 = v88;
        }

        *(v69 + 184 * v23 + 72) = *(v66 - 112);
        log_OutText(*(v61 + 32), "FE_PHRASING", 5, 0, "\t group [tids:%s, ntok: %d]", v18, v19, v20, v68);
        heap_Free(*(v61 + 8), v68);
        v63 = *v93;
      }

      v21 = a3;
      v23 = (v89 + 1);
      v26 = (v63 + 184 * v23 + 8);
      v101 = 0;
      v100 = 0;
      v24 = v89 + 1;
      v27 = (a3 + 24);
      if (v22 >= v91)
      {
        goto LABEL_74;
      }
    }

    v82 = 2315264010;
    v83 = *(v61 + 32);
    goto LABEL_77;
  }

LABEL_74:
  log_OutText(*(v88 + 32), "FE_PHRASING", 5, 0, "pw_group_csc End", v18, v19, v20, v87);
  v82 = 0;
LABEL_78:
  v84 = *MEMORY[0x1E69E9840];
  return v82;
}

uint64_t pw_respect_word_separating_markers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned __int16 *a7)
{
  if (!*a7)
  {
    return 0;
  }

  v7 = a7;
  v13 = 0;
  v14 = 0;
  v36 = 0;
  v15 = *a6;
  while (1)
  {
    if (*(v15 + 184 * v13 + 8) >= 2u)
    {
      v36 = 0;
      v15 = *a6;
      v16 = *a6 + 184 * v13;
      if (*(v16 + 8) >= 2u)
      {
        break;
      }
    }

LABEL_17:
    if (++v13 >= *v7)
    {
      return v14;
    }
  }

  v17 = 1;
  while (1)
  {
    v14 = pw_check_if_glue_forbidden(a1, a3, a4, a5, *(*v16 + 2 * v17 - 2), *(*v16 + 2 * v17), &v36);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    if (v36)
    {
      v18 = heap_Realloc(*(a2 + 8), *a6, 184 * *v7 + 184);
      if (!v18)
      {
        goto LABEL_21;
      }

      *a6 = v18;
      v23 = v18 + 184 * *v7;
      *(v23 + 176) = 0;
      *(v23 + 144) = 0u;
      *(v23 + 160) = 0u;
      *(v23 + 112) = 0u;
      *(v23 + 128) = 0u;
      *(v23 + 80) = 0u;
      *(v23 + 96) = 0u;
      *(v23 + 48) = 0u;
      *(v23 + 64) = 0u;
      *(v23 + 16) = 0u;
      *(v23 + 32) = 0u;
      *v23 = 0u;
      v24 = *v7 + 1;
      v34 = v7;
      *v7 = v24;
      if (v13 + 2 < v24)
      {
        memmove((*a6 + 184 * (v13 + 2)), (*a6 + 184 * v13 + 184), (0xB800000000 * (v24 - v13) - 0x17000000000) >> 32);
      }

      v25 = *a6 + 184 * v13;
      v26 = *(v25 + 8) - v17;
      v27 = 184 * v13 + 184;
      *(*a6 + v27 + 8) = v26;
      *(v25 + 8) = v17;
      *(*a6 + v27) = heap_Calloc(*(a2 + 8), 2, v26);
      v15 = *a6;
      v28 = *a6 + v27;
      v29 = *v28;
      v7 = v34;
      if (!*v28)
      {
LABEL_21:
        log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0, v19, v20, v21, v22, v33);
        return 2315264010;
      }

      if (*(v28 + 8))
      {
        v30 = 0;
        v31 = *(v15 + 184 * v13) + 2 * v17;
        do
        {
          *(v29 + 2 * v30) = *(v31 + 2 * v30);
          ++v30;
        }

        while (v30 < *(v28 + 8));
      }

      goto LABEL_17;
    }

    ++v17;
    v15 = *a6;
    v16 = *a6 + 184 * v13;
    if (*(v16 + 8) <= v17)
    {
      goto LABEL_17;
    }
  }
}

uint64_t pw_igtree_process(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4, unsigned int a5, uint64_t a6)
{
  v9 = a1;
  inited = 2315264010;
  v11 = *a4;
  v63 = 0;
  v12 = *a3;
  v13 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 1296) - 8);
  if (!v13)
  {
    return inited;
  }

  v14 = v13;
  v62 = a6;
  inited = hlp_igtree_initFeatureVector(v9, v13, (*(a6 + 1296) - 1));
  if ((inited & 0x80000000) != 0)
  {
    v15 = 0;
    goto LABEL_56;
  }

  v15 = heap_Calloc(*(v9 + 8), a5, 4);
  if (!v15)
  {
LABEL_55:
    inited = 2315264010;
    goto LABEL_56;
  }

  v51 = a4;
  v52 = a3;
  if (!v11)
  {
    v18 = a6;
LABEL_58:
    *v51 = v11;
    *v52 = v12;
    goto LABEL_61;
  }

  v16 = 0;
  v17 = 0;
  v58 = a5 - 1;
  v56 = v14;
  v18 = v62;
  v59 = v9;
  while (1)
  {
    LOWORD(v19) = *(v12 + 184 * v16 + 8);
    v57 = v11;
    if (v19)
    {
      if (v58 != v17)
      {
        break;
      }
    }

LABEL_52:
    ++v16;
    v11 = v57;
    v9 = v59;
    if (v16 >= v57)
    {
      goto LABEL_58;
    }
  }

  v20 = 0;
  v21 = 0;
  v54 = v16 + 2;
  v53 = v16 + 1;
  v22 = 2;
  while (1)
  {
    v23 = v12;
    v24 = v17;
    *(v15 + 4 * v17) = v19 - 1 == v20;
    v25 = hlp_igtree_setFeatureVector(v59, v14, *(v18 + 1312), *(v18 + 1296), a2, a5, v17);
    if ((v25 & 0x80000000) != 0)
    {
      inited = v25;
LABEL_60:
      v9 = v59;
      goto LABEL_61;
    }

    inited = igtree_Process(v18, v14, &v63);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

    v26 = v63;
    if (!strcmp(v63, "NOMATCH"))
    {
      goto LABEL_33;
    }

    v27 = *v26 == 49 && v26[1] == 0;
    v18 = v62;
    v28 = v15;
    v29 = *(v15 + 4 * v24);
    if (v29 == v27)
    {
      goto LABEL_16;
    }

    if (!v24)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      break;
    }

    v55 = a2 + 40 * v24;
    v37 = *(v55 + 16);
    if (strcmp(v37, "normal") && strcmp(v37, "mnx"))
    {
      v15 = v28;
      v14 = v56;
LABEL_33:
      v18 = v62;
      goto LABEL_47;
    }

    v18 = v62;
    if (!*(v55 + 36))
    {
      break;
    }

LABEL_16:
    v15 = v28;
    v14 = v56;
LABEL_47:
    v17 = v24 + 1;
    v20 = v21 + 1;
    v12 = v23;
    v19 = *(v23 + 184 * v16 + 8);
    v22 += 2;
    if (++v21 >= v19 || v58 == v17)
    {
      goto LABEL_52;
    }
  }

  if (!v29)
  {
    v38 = heap_Realloc(*(v59 + 8), v23, 184 * v57 + 184);
    if (!v38)
    {
      inited = 2315264010;
      v15 = v28;
      v14 = v56;
      v18 = v62;
      goto LABEL_60;
    }

    v39 = v38;
    v40 = v38 + 184 * v57;
    *(v40 + 176) = 0;
    *(v40 + 144) = 0u;
    *(v40 + 160) = 0u;
    *(v40 + 112) = 0u;
    *(v40 + 128) = 0u;
    *(v40 + 80) = 0u;
    *(v40 + 96) = 0u;
    *(v40 + 48) = 0u;
    *(v40 + 64) = 0u;
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0u;
    *v40 = 0u;
    v41 = v16 + 1;
    v15 = v28;
    if (v53 < v57)
    {
      memmove((v38 + 184 * v16 + 368), (v38 + 184 * v53), 184 * (v57 + ~v16));
      v41 = v16 + 1;
    }

    v42 = v39 + 184 * v16;
    v43 = *(v42 + 8) + ~v21;
    v23 = v39;
    v44 = v39 + 184 * v41;
    *(v44 + 8) = v43;
    v9 = v59;
    v45 = heap_Alloc(*(v59 + 8), 2 * v43);
    *v44 = v45;
    v14 = v56;
    if (!v45)
    {
      goto LABEL_55;
    }

    if (*(v44 + 8))
    {
      v46 = 0;
      v47 = *v42 + v22;
      do
      {
        *(v45 + 2 * v46) = *(v47 + 2 * v46);
        ++v46;
      }

      while (v46 < *(v44 + 8));
    }

    v48 = 0;
    *(v44 + 72) = *(v42 + 72);
    *(v42 + 72) = 0;
    *(v44 + 112) = *(v42 + 112);
    *(v42 + 112) = 0;
    if (*(v42 + 12) == 1)
    {
      *(v42 + 12) = 0;
      v48 = 1;
    }

    *(v44 + 12) = v48;
    *(v42 + 8) = v21 + 1;
    v36 = 1;
    goto LABEL_46;
  }

  v30 = v23 + 184 * v16;
  v31 = *(v30 + 8) + *(v30 + 192);
  *(v30 + 8) = v31;
  v9 = v59;
  v32 = heap_Realloc(*(v59 + 8), *v30, 2 * v31);
  *v30 = v32;
  if (v32)
  {
    LOWORD(v33) = *(v30 + 192);
    v15 = v28;
    if (v33)
    {
      v34 = 0;
      v35 = *(v30 + 184);
      do
      {
        *(v32 - 2 * v33 + 2 * *(v30 + 8) + 2 * v34) = *(v35 + 2 * v34);
        ++v34;
        v33 = *(v30 + 192);
      }

      while (v34 < v33);
    }

    v14 = v56;
    if (*(v30 + 72))
    {
      *(v30 + 72) = *(v30 + 256);
    }

    *(v30 + 12) |= *(v30 + 196);
    heap_Free(*(v59 + 8), *(v30 + 184));
    if (v54 < v57)
    {
      memmove((v30 + 184), (v23 + 184 * v54), 184 * (v57 - v16) - 368);
    }

    v36 = 0xFFFF;
LABEL_46:
    v18 = v62;
    inited = 0;
    v57 = (v36 + v57);
    goto LABEL_47;
  }

  inited = 2315264010;
  v15 = v28;
  v14 = v56;
LABEL_56:
  v18 = v62;
LABEL_61:
  hlp_igtree_freeFeatureVector(v9, v14, (*(v18 + 1296) - 1));
  heap_Free(*(v9 + 8), v14);
  if (v15)
  {
    heap_Free(*(v9 + 8), v15);
  }

  return inited;
}

uint64_t pw_merge_NLU(uint64_t a1, char **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    if (hlp_NLUStrKeyLen(v2) >= 3)
    {
      v6 = *v2 - 69;
      v7 = v6 > 0xE;
      v8 = (1 << v6) & 0x4011;
      v9 = v7 || v8 == 0;
      if (!v9 && v2[1] == 95)
      {
        ++v5;
      }
    }

    v2 = hlp_NLUStrNext(v2);
  }

  while (v2);
  if (!v5)
  {
    return 0;
  }

  v10 = 2315264010;
  v11 = heap_Calloc(*(a1 + 8), 8, v5);
  if (v11)
  {
    v12 = v11;
    v13 = *a2;
    if (*a2)
    {
      v97 = a2;
      v96 = -1979703286;
      v14 = 0;
      do
      {
        v15 = hlp_NLUStrKeyLen(v13);
        if (v15 >= 3)
        {
          v16 = *v13 - 69;
          v7 = v16 > 0xE;
          v17 = (1 << v16) & 0x4011;
          v18 = v7 || v17 == 0;
          if (!v18 && v13[1] == 95)
          {
            v19 = v15;
            v20 = heap_Calloc(*(a1 + 8), 1, v15 - 1);
            if (!v20)
            {
              v26 = v12;
              v10 = 2315264010;
              goto LABEL_182;
            }

            v21 = v20;
            strncpy(v20, v13 + 2, v19 - 2);
            if (v14)
            {
              v22 = v14;
              v23 = v12;
              v24 = v14;
              while (*v23)
              {
                if (!strcmp(*v23, v21))
                {
                  heap_Free(*(a1 + 8), v21);
                  goto LABEL_31;
                }

                ++v23;
                if (!--v24)
                {
                  break;
                }
              }
            }

            else
            {
              v22 = 0;
            }

            *(v12 + 8 * v22) = v21;
            ++v14;
          }
        }

LABEL_31:
        v13 = hlp_NLUStrNext(v13);
      }

      while (v13);
      if (!v14)
      {
        goto LABEL_161;
      }

      v25 = heap_Realloc(*(a1 + 8), v12, 8 * v14);
      if (v25)
      {
        v26 = v25;
        v27 = heap_Calloc(*(a1 + 8), 2, v14);
        if (v27)
        {
          v91 = v27;
          for (i = *v97; i; i = hlp_NLUStrNext(i))
          {
            v29 = hlp_NLUStrKeyLen(i);
            if (v29 >= 3)
            {
              v30 = *i - 69;
              v7 = v30 > 0xE;
              v31 = (1 << v30) & 0x4011;
              v32 = v7 || v31 == 0;
              if (!v32 && i[1] == 95)
              {
                v33 = 0;
                v34 = v29 - 2;
                do
                {
                  v35 = *(v26 + 8 * v33);
                  if (!v35)
                  {
                    break;
                  }

                  if (!strncmp(v35, i + 2, v34))
                  {
                    if ((v33 & 0x8000) == 0)
                    {
                      ++*(v91 + 2 * (v33 & 0x7FFF));
                    }

                    break;
                  }

                  ++v33;
                }

                while (v14 != v33);
              }
            }
          }

          v36 = heap_Calloc(*(a1 + 8), 8, v14);
          if (v36)
          {
            v37 = v36;
            for (j = 0; j != v14; ++j)
            {
              v39 = heap_Calloc(*(a1 + 8), 8, *(v91 + 2 * j));
              *(v37 + 8 * j) = v39;
              if (!v39)
              {
                v40 = 0;
                goto LABEL_167;
              }
            }

            v40 = heap_Calloc(*(a1 + 8), 2, v14);
            if (v40)
            {
              for (k = *v97; k; k = hlp_NLUStrNext(k))
              {
                v42 = hlp_NLUStrKeyLen(k);
                if (v42 >= 3)
                {
                  v43 = *k - 69;
                  v7 = v43 > 0xE;
                  v44 = (1 << v43) & 0x4011;
                  if (!v7 && v44 != 0 && k[1] == 95)
                  {
                    KeyIdx = hlp_getKeyIdx(v26, v14, k + 2, (v42 - 2));
                    if ((KeyIdx & 0x80000000) == 0)
                    {
                      v47 = KeyIdx;
                      v93 = *(v37 + 8 * KeyIdx);
                      v48 = hlp_NLUStrKeyValue(k);
                      v49 = v48;
                      v50 = v48 ? hlp_NLUStrLength(v48) : 0;
                      v51 = v50;
                      if (!hlp_checkValExist(v93, *(v40 + 2 * v47), v49, v50))
                      {
                        v52 = heap_Calloc(*(a1 + 8), 1, v51 + 2);
                        if (!v52)
                        {
                          goto LABEL_167;
                        }

                        if (v49)
                        {
                          v52 = strncpy(v52, v49, v51);
                        }

                        else
                        {
                          *v52 = 32;
                        }

                        v53 = *(v40 + 2 * v47);
                        *&v93[8 * v53] = v52;
                        *(v40 + 2 * v47) = v53 + 1;
                      }
                    }
                  }
                }
              }

              v54 = 0;
              v55 = v97;
              do
              {
                v56 = heap_Realloc(*(a1 + 8), *(v37 + 8 * v54), 8 * *(v40 + 2 * v54));
                if (!v56)
                {
                  goto LABEL_167;
                }

                *(v37 + 8 * v54++) = v56;
              }

              while (v14 != v54);
              v57 = 0;
              while (!*(v40 + 2 * v57))
              {
LABEL_158:
                if (++v57 == v14)
                {
                  v96 = 0;
                  goto LABEL_167;
                }
              }

              v58 = 0;
              v86 = v57;
              while (2)
              {
                __s = *(v26 + 8 * v57);
                v59 = *(*(v37 + 8 * v57) + 8 * v58);
                v60 = *v55;
                v99 = 0;
                __s2 = 0;
                if (!v60)
                {
                  goto LABEL_131;
                }

                v89 = v60;
                v90 = v58;
                __s1 = v59;
                if (v59)
                {
                  v88 = strlen(v59);
                }

                else
                {
                  v88 = 0;
                }

                v61 = strlen(__s);
                v62 = heap_Calloc(*(a1 + 8), 1, v61 + 3);
                if (!v62)
                {
                  goto LABEL_167;
                }

                v63 = v62;
                strcpy(v62, "S_");
                strcat(v62, __s);
                v64 = strlen(__s);
                v65 = heap_Calloc(*(a1 + 8), 1, v64 + 3);
                if (!v65)
                {
                  v95 = 0;
                  v70 = 0;
                  v72 = -1979703286;
                  goto LABEL_125;
                }

                strcpy(v65, "I_");
                v66 = v65;
                strcat(v65, __s);
                v67 = strlen(__s);
                v68 = heap_Calloc(*(a1 + 8), 1, v67 + 3);
                if (!v68)
                {
                  v95 = 0;
                  v72 = -1979703286;
                  v70 = v66;
                  goto LABEL_125;
                }

                strcpy(v68, "E_");
                v94 = v68;
                strcat(v68, __s);
                v69 = __s1;
                v70 = v66;
                if (!hlp_NLUStrFind(v89, v63, &__s2, &v99) || (!__s1 || v99 || *__s1 != 32 || __s1[1]) && (!__s1 || v88 != v99 || strncmp(__s1, __s2, v99)))
                {
                  heap_Free(*(a1 + 8), v63);
                  v63 = 0;
                }

                if (!hlp_NLUStrFind(v89, v66, &__s2, &v99) || (!__s1 || v99 || *__s1 != 32 || __s1[1]) && (!__s1 || v88 != v99 || strncmp(__s1, __s2, v99)))
                {
                  heap_Free(*(a1 + 8), v66);
                  v70 = 0;
                }

                if (hlp_NLUStrFind(v89, v94, &__s2, &v99))
                {
                  if (__s1 && !v99 && *__s1 == 32 && !__s1[1])
                  {
                    goto LABEL_117;
                  }

                  if (__s1 && v88 == v99)
                  {
                    if (strncmp(__s1, __s2, v99))
                    {
                      heap_Free(*(a1 + 8), v94);
                      v71 = 0;
LABEL_118:
                      if (*__s1 == 32 && !__s1[1])
                      {
                        v95 = v71;
                        v69 = 0;
                      }

                      else
                      {
LABEL_120:
                        v95 = v71;
                      }

                      hlp_NLUStrRemoveRangeKey(v89, __s, v69);
                      if (v63)
                      {
                        if (!v70)
                        {
                          v73 = v63;
                          if (!v95)
                          {
                            goto LABEL_124;
                          }
                        }
                      }

                      if (v63)
                      {
                        v75 = 1;
                      }

                      else
                      {
                        v75 = v70 == 0;
                      }

                      v76 = !v75;
                      if (!v75)
                      {
                        v77 = v70;
                        if (!v95)
                        {
LABEL_141:
                          hlp_NLUStrAppendKeyVal(v89, v77, v69);
                          v72 = 0;
LABEL_127:
                          heap_Free(*(a1 + 8), v70);
LABEL_128:
                          v55 = v97;
                          v58 = v90;
                          v74 = v95;
                          if (v95)
                          {
LABEL_129:
                            heap_Free(*(a1 + 8), v74);
                          }

                          v57 = v86;
                          if (v72 < 0)
                          {
                            v96 = v72;
                            goto LABEL_167;
                          }

LABEL_131:
                          if (++v58 >= *(v40 + 2 * v57))
                          {
                            goto LABEL_158;
                          }

                          continue;
                        }
                      }

                      if (!v63 && !v70 && v95)
                      {
                        hlp_NLUStrAppendKeyVal(v89, v95, v69);
                        v74 = v95;
                        v72 = 0;
                        v55 = v97;
                        v58 = v90;
                        goto LABEL_129;
                      }

                      if (v63 && v95)
                      {
                        hlp_NLUStrAppendKeyVal(v89, v63, v69);
                        v73 = v95;
                        goto LABEL_124;
                      }

                      if (v63 && v70 && (v73 = v63, !v95))
                      {
LABEL_124:
                        hlp_NLUStrAppendKeyVal(v89, v73, v69);
                        v72 = 0;
                      }

                      else
                      {
                        if (!v95)
                        {
                          v76 = 0;
                        }

                        v77 = v95;
                        if (v76)
                        {
                          goto LABEL_141;
                        }

                        v72 = 0;
                        if (!v63)
                        {
LABEL_126:
                          if (v70)
                          {
                            goto LABEL_127;
                          }

                          goto LABEL_128;
                        }
                      }

LABEL_125:
                      heap_Free(*(a1 + 8), v63);
                      goto LABEL_126;
                    }

LABEL_117:
                    v71 = v94;
                    goto LABEL_118;
                  }
                }

                break;
              }

              heap_Free(*(a1 + 8), v94);
              v71 = 0;
              if (__s1)
              {
                goto LABEL_118;
              }

              goto LABEL_120;
            }

LABEL_167:
            for (m = 0; m != v14; ++m)
            {
              v79 = *(v37 + 8 * m);
              if (v79)
              {
                if (v40)
                {
                  v80 = *(v40 + 2 * m);
                  if (v80)
                  {
                    for (n = 0; n < v80; ++n)
                    {
                      v82 = *(*(v37 + 8 * m) + 8 * n);
                      if (v82)
                      {
                        heap_Free(*(a1 + 8), v82);
                        v80 = *(v40 + 2 * m);
                      }
                    }

                    v79 = *(v37 + 8 * m);
                  }
                }

                heap_Free(*(a1 + 8), v79);
              }
            }

            heap_Free(*(a1 + 8), v37);
            if (v40)
            {
              heap_Free(*(a1 + 8), v40);
            }

            v10 = v96;
          }

          else
          {
            v10 = 2315264010;
          }

          heap_Free(*(a1 + 8), v91);
          v12 = v26;
LABEL_182:
          if (!v14)
          {
            goto LABEL_188;
          }

LABEL_183:
          for (ii = 0; ii != v14; ++ii)
          {
            v84 = *(v26 + 8 * ii);
            if (v84)
            {
              heap_Free(*(a1 + 8), v84);
            }
          }

          v12 = v26;
          goto LABEL_188;
        }
      }

      else
      {
        v26 = v12;
      }

      v10 = 2315264010;
      goto LABEL_183;
    }

LABEL_161:
    v10 = 0;
LABEL_188:
    heap_Free(*(a1 + 8), v12);
  }

  return v10;
}

void pw_split_csc_pw(uint64_t a1, char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x400uLL);
  if (*(a1 + 12) == 1 && (*(a1 + 8) & 0xFFFE) == 4 && a2 != 0)
  {
    v5 = 1;
    v6 = a2;
    do
    {
      v7 = v5;
      v8 = strchr(v6, 46);
      if (v8)
      {
        v6 = v8 + 1;
      }

      else
      {
        v6 = 0;
      }

      if (!v8)
      {
        break;
      }

      v5 = 0;
    }

    while ((v7 & 1) != 0);
    if (v8)
    {
      __strncpy_chk();
      __strcat_chk();
      __strcat_chk();
      strcpy(a2, __src);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t checkAttachedPunc(const char *a1)
{
  v2 = strlen(a1);
  v5 = 0;
  v3 = v2;
  if (v2)
  {
    if (memchr(",:;.?!|_~'<>{}#()[]^\\=@/&$*#", a1[v2 - 1], 0x1EuLL))
    {
      return 1;
    }

    else
    {
      if (v3 != 3)
      {
        return 0;
      }

      v3 = 1;
      utf8_Utf8ToUtf32_Tolerant(a1, 3u, &v5 + 4, 1u, &v5);
      if (HIDWORD(v5) != 8230)
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t pw_check_if_glue_forbidden(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  *a7 = 0;
  result = pw_check_if_word_in_prompt(a1, a2, a3, a5, a7);
  if ((result & 0x80000000) == 0 && !*a7)
  {
    result = pw_check_if_word_in_prompt(a1, a2, a3, a6, a7);
    if ((result & 0x80000000) == 0 && !*a7)
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      result = (*(a1 + 176))(a2, a3, a4, 1, &v23, &v24);
      if ((result & 0x80000000) == 0)
      {
        (*(a1 + 168))(a2, a3, a5, 1, 1, &v25 + 2, &v24 + 2);
        result = (*(a1 + 168))(a2, a3, a6, 2, 1, &v25, &v24 + 2);
        if ((result & 0x80000000) == 0)
        {
          if (v24)
          {
            v15 = 0;
            v16 = (v23 + 12);
            while (1)
            {
              v17 = *v16;
              v16 += 8;
              if (v17 - *(v23 + 12) > HIWORD(v25))
              {
                break;
              }

              if (v24 == ++v15)
              {
                goto LABEL_24;
              }
            }

            v18 = v15;
          }

          else
          {
            v18 = 0;
          }

          if (v18 < v24)
          {
            v19 = v24 - v18;
            v20 = (v23 + 32 * v18);
            while (v20[3] - *(v23 + 12) < v25)
            {
              if (*v20 <= 0x39u && ((1 << *v20) & 0x3C0010124001140) != 0)
              {
                v22 = 1;
                goto LABEL_25;
              }

              v20 += 8;
              if (!--v19)
              {
                break;
              }
            }
          }

LABEL_24:
          v22 = 0;
LABEL_25:
          *a7 = v22;
        }
      }
    }
  }

  return result;
}

char *checkremoveNormalSym(char *a1, unsigned __int16 *a2, unsigned __int8 a3)
{
  v5 = a3;
  result = strchr(a1, a3);
  if (result)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = a1[v8];
        if (v10 != v5)
        {
          if (v8 != v9)
          {
            a1[v9] = v10;
            v7 = *a2;
          }

          ++v9;
        }

        ++v8;
      }

      while (v8 < v7);
    }

    else
    {
      v9 = 0;
    }

    a1[v9] = 0;
    *a2 = v9;
  }

  return result;
}

uint64_t pw_copy_pw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Copying PW ... ", a6, a7, a8, v19);
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "pPWIn and pPWOut is: ", v11, v12, v13, v20);
  v17 = pw_show_pw(a1, a2);
  if ((v17 & 0x80000000) == 0)
  {
    *(a3 + 8) = *(a2 + 8);
    *a3 = *a2;
    *(a3 + 12) = *(a2 + 12);
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Copy PW done!", v14, v15, v16, v21);
  }

  return v17;
}

uint64_t pw_show_pw(uint64_t a1, uint64_t a2)
{
  v4 = heap_Calloc(*(a1 + 8), 1, 1000);
  if (!v4)
  {
    return 2315264010;
  }

  v8 = v4;
  if (*(a2 + 8))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      sprintf(&v8[v10], "%d-", *(*a2 + 2 * v9));
      v10 = strlen(v8);
      ++v9;
    }

    while (v9 < *(a2 + 8));
  }

  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "\tPW [tids:%s, ntok:%d]", v5, v6, v7, v8);
  heap_Free(*(a1 + 8), v8);
  return 0;
}

uint64_t hlp_getKeyIdx(uint64_t a1, unsigned int a2, char *__s2, size_t __n)
{
  if (a2)
  {
    v6 = 0;
    v7 = __n;
    v8 = a2;
    do
    {
      v9 = *(a1 + 8 * v6);
      if (!v9)
      {
        break;
      }

      if (!strncmp(v9, __s2, v7))
      {
        return v6;
      }

      ++v6;
    }

    while (v8 != v6);
  }

  LOWORD(v6) = -1;
  return v6;
}

uint64_t hlp_checkValExist(uint64_t result, unsigned int a2, const char *a3, unsigned int a4)
{
  if (result)
  {
    if (a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = " ";
    }

    if (a2)
    {
      v5 = result;
      if (a3)
      {
        v6 = a4;
      }

      else
      {
        v6 = 1;
      }

      v7 = a2;
      while (*v5)
      {
        if (strlen(*v5) == v6 && !strncmp(*v5, v4, v6))
        {
          return 1;
        }

        ++v5;
        if (!--v7)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t pw_check_if_word_in_prompt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v10 = 0;
  *a5 = 0;
  result = (*(a1 + 168))(a2, a3, a4, 1, 1, &v10, &v10 + 2);
  if ((result & 0x80000000) == 0)
  {
    return (*(a1 + 312))(a2, a3, v10, a5);
  }

  return result;
}

uint64_t getphraseCfg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, char **a6, char **a7)
{
  v19 = 0;
  v18 = -1;
  v17 = 0;
  result = (*(a2 + 96))(a3, a4, "fecfg", "fephrase_slience", &v19, &v18, &v17);
  if ((result & 0x80000000) == 0)
  {
    if (v19)
    {
      v15 = v18 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = 300;
    }

    else
    {
      v16 = LH_atou(*v19);
    }

    *a5 = v16;
    result = getPunc(a1, a2, a3, a4, a6, "fephrase_strongphrasepunc");
    if ((result & 0x80000000) == 0)
    {
      return getPunc(a1, a2, a3, a4, a7, "fephrase_weakphrasepunc");
    }
  }

  return result;
}

uint64_t getPunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6)
{
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v8 = (*(a2 + 96))(a3, a4, "fecfg", a6, &v18, &v17, &v16);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = 2315264010;
  if (v18)
  {
    v10 = v17 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = heap_Alloc(*(a1 + 8), 10);
    if (v11)
    {
      strcpy(v11, ",;:.?!_~|");
      v12 = v11 + 9;
LABEL_11:
      *v12 = 0;
      *a5 = v11;
      return v8;
    }
  }

  else
  {
    v13 = strlen(*v18);
    v14 = heap_Alloc(*(a1 + 8), v13 + 1);
    if (v14)
    {
      v11 = strcpy(v14, *v18);
      v12 = &v11[v13 - 1];
      goto LABEL_11;
    }
  }

  return v9;
}

uint64_t ruleNNInit(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8)
{
  v84 = *MEMORY[0x1E69E9840];
  memset(v77, 0, sizeof(v77));
  v74 = 0;
  v72 = 0;
  v73 = 0;
  *__c = 0;
  v71 = 0;
  v69 = 0;
  v67 = 0;
  *v68 = 0;
  if ((com_mosynt_GetCfgParamVal(a5, a6, a4, "fephrase_max_rule", "1024", &v67) & 0x80000000) != 0)
  {
    v12 = 1024;
  }

  else
  {
    v12 = atoi(v67);
  }

  v17 = heap_Calloc(*(a3 + 8), 1, v12);
  v62 = a8;
  if (v17)
  {
    v75 = 0;
    *v76 = 0;
    memset(v83, 0, sizeof(v83));
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v76);
    if (Str < 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v75), Str < 0) || (v78 = 0x73656C75727073, __strcat_chk(), __strcat_chk(), __strcat_chk(), __strcat_chk(), Str = brokeraux_ComposeBrokerString(a3, &v78, 1, 1, *v76, 0, 0, v77, 0x100uLL), Str < 0))
    {
      v44 = Str;
      log_OutText(*(a3 + 32), "FE_PHRASING", 0, 0, "Could not assemble broker string for SP rules %s", v19, v20, v21, "sprules");
      v32 = v44 | 0x8A002000;
    }

    else
    {
      log_OutText(*(a3 + 32), "FE_PHRASING", 5, 0, "looking for SP rules %s at %s", v19, v20, v21, "sprules");
      v22 = ssftriff_reader_ObjOpen(a1, a2, 2, v77, "SPDT", 1031, v68);
      if (v22 < 0)
      {
        v32 = v22;
        log_OutText(*(a3 + 32), "FE_PHRASING", 0, 0, "no sp rules", v24, v25, v26, v61);
        *(a7 + 10) = 0;
        *a7 = 0;
      }

      else
      {
        while (1)
        {
          v27 = ssftriff_reader_OpenChunk(*v68, &v73, &v72, &v71, v23, v24, v25, v26);
          if (v27 < 0)
          {
            break;
          }

          v31 = a3;
          if (!(v73 ^ 0x52545344 | v74))
          {
            ChunkData = ssftriff_reader_GetChunkData(*v68, v72, __c, v30, v23, v24, v25, v26);
            if (ChunkData < 0)
            {
              goto LABEL_76;
            }

            v69 = 0;
            ssftriff_reader_ReadStringZ(*v68, *__c, v72, 0, 0, &v69);
            ssftriff_reader_ReadStringZ(*v68, *__c, v72, 0, v17, &v69);
            v34 = strchr(v17, 10);
            if (v34)
            {
              *v34 = 0;
            }

            v35 = strchr(v17, 58);
            if (v35)
            {
              v36 = atoi(v35 + 2);
            }

            else
            {
              v36 = 0;
            }

            v37 = v69;
            inited = initPhrasingRuleStruct(a3, a7, v36);
            if (inited < 0)
            {
              v32 = inited;
              goto LABEL_77;
            }

            if (v36)
            {
              v39 = 0;
              while (1)
              {
                do
                {
                  v69 = 0;
                  ssftriff_reader_ReadStringZ(*v68, *__c, v72, v37, 0, &v69);
                  ssftriff_reader_ReadStringZ(*v68, *__c, v72, v37, v17, &v69);
                  v37 += v69;
                  v40 = v17 + 1;
                  for (i = v17; ; ++i)
                  {
                    v42 = *i;
                    if (v42 > 0x23)
                    {
                      goto LABEL_29;
                    }

                    if (((1 << v42) & 0x100000200) == 0)
                    {
                      break;
                    }

                    ++v40;
                  }
                }

                while (((1 << v42) & 0x800002401) != 0);
LABEL_29:
                while (v42)
                {
                  if (v42 == 35)
                  {
                    *(v40 - 1) = 0;
                    break;
                  }

                  v43 = *v40++;
                  LOBYTE(v42) = v43;
                }

                ChunkData = addPhrasingRuleNN(v31, a7, v17);
                if (ChunkData < 0)
                {
                  break;
                }

                if (++v39 >= v36)
                {
                  goto LABEL_11;
                }
              }

LABEL_76:
              v32 = ChunkData;
              a3 = v31;
LABEL_77:
              a8 = v62;
              goto LABEL_37;
            }
          }

LABEL_11:
          v32 = ssftriff_reader_CloseChunk(*v68);
          a3 = v31;
          a8 = v62;
          if (v32 < 0)
          {
            goto LABEL_37;
          }
        }

        if ((v27 & 0x1FFF) == 0x14)
        {
          v32 = 0;
        }

        else
        {
          v32 = v27;
        }
      }
    }
  }

  else
  {
    log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0, v13, v14, v15, v16, v60);
    v32 = -1979703286;
  }

LABEL_37:
  if (*v68)
  {
    v45 = ssftriff_reader_ObjClose(*v68, v28, v29, v30, v23, v24, v25, v26);
    if (v45 < 0 && v32 > -1)
    {
      v32 = v45;
    }
  }

  if (v17)
  {
    heap_Free(*(a3 + 8), v17);
  }

  if (a7 && v32 < 0)
  {
    releasePhrasingRuleStructNN(a3, a7);
  }

  v47 = 0;
  v75 = 0;
  *v76 = 0;
  LOWORD(v71) = -1;
  LOBYTE(__c[0]) = 0;
  *(a8 + 1) = 0u;
  *(a8 + 9) = 0u;
  *(a8 + 17) = 0u;
  *(a8 + 25) = 0u;
  *(a8 + 33) = 0u;
  v78 = "JOY_KEYS";
  *&v79 = "DID_KEYS";
  *(&v79 + 1) = "NEU_KEYS";
  *&v80 = "COM_KEYS";
  while (1)
  {
    strcpy(v77, "statbnd_");
    v48 = *(&v78 + v47);
    __strcat_chk();
    LOWORD(v71) = 0;
    if (((*(a4 + 96))(a5, a6, "fecfg", v77, v76, &v71, __c) & 0x80000000) != 0 || !v71)
    {
      break;
    }

    v49 = **v76;
    v50 = strchr(**v76, LOBYTE(__c[0]));
    if (v50)
    {
      *v50 = 0;
      v49 = **v76;
    }

    v51 = *v49;
    if (*v49)
    {
      v52 = 0;
      do
      {
        for (j = 0; v51; v51 = v49[++j])
        {
          if (v51 == 44)
          {
            break;
          }
        }

        strcpy(v77, "statbnd_");
        __strncat_chk();
        LOWORD(v71) = 0;
        (*(a4 + 96))(a5, a6, "fecfg", v77, &v75, &v71, __c);
        if (v71)
        {
          v54 = *v75;
          v55 = strchr(*v75, LOBYTE(__c[0]));
          if (v55)
          {
            *v55 = 0;
            v54 = *v75;
          }

          v56 = atoi(v54);
          v57 = a8 + 1;
          if (v47)
          {
            v57 = a8 + 11;
            if (v47 != 1)
            {
              v57 = a8 + 31;
            }

            if (v47 == 2)
            {
              v57 = a8 + 21;
            }
          }

          v57[v52] = v56;
        }

        if (v49[j] == 44)
        {
          v49 += j + 1;
        }

        else
        {
          v49 += j;
        }

        ++v52;
        v51 = *v49;
      }

      while (*v49);
    }

    else
    {
      v52 = 0;
    }

    if (++v47 == 4)
    {
      *v62 = v52;
      break;
    }
  }

  v58 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t doesNNCustermizedFE(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    v6 = *(result + 8);
    v24 = *(a2 + 1088);
    v7 = strlen(v24);
    v8 = heap_Alloc(v6, v7 + 2);
    if (v8)
    {
      v9 = v8;
      if (*(a2 + 1072))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(a2 + 1064) + 184 * v10;
          v13 = *(v12 + 36);
          v14 = v13 > 0xA;
          v15 = (1 << v13) & 0x610;
          if (!v14 && v15 != 0)
          {
            v17 = *(v12 + 16);
            v18 = *(v12 + 18);
            if (v17 != v18)
            {
              v19 = v18 - v17;
              memcpy(v9, &v24[v17], v18 - v17);
              *(v9 + v19) = 0;
              v20 = strlen(v9);
              v21 = Utf8_LengthInUtf8chars(v9, v20);
              if (v21)
              {
                v22 = 0;
                do
                {
                  utf8_getUTF8Char(v9, v22, &v25);
                  if (!(v25 ^ 0xA7C2 | v26))
                  {
                    ++v11;
                  }

                  v22 += utf8_determineUTF8CharLength(v25);
                  --v21;
                }

                while (v21);
              }
            }
          }

          ++v10;
        }

        while (v10 < *(a2 + 1072));
        if (v11 >= 3u)
        {
          *a3 = 1;
        }
      }

      heap_Free(*(v5 + 8), v9);
      result = 0;
    }

    else
    {
      result = 2315264010;
    }
  }

  else
  {
    *a3 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t addTokenNN(uint64_t a1, unsigned __int16 *a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a4 + 1072);
  v12 = *a2;
  if (*(a4 + 1072))
  {
    v13 = 0;
    v14 = v11 + 1;
    v15 = a2[1];
    v16 = (*(a4 + 1064) + 18);
    while (1)
    {
      v17 = *(v16 - 1);
      if (v12 == v17)
      {
        v14 = v13;
      }

      v18 = *v16;
      if (v15 == v18)
      {
        break;
      }

      if (v15 >= v17 && v15 < v18)
      {
        break;
      }

      v16 += 92;
      ++v13;
      v12 = *a2;
      if (v11 == v13)
      {
        goto LABEL_12;
      }
    }

    if (v11 + 1 != v14)
    {
      v28 = *(a1 + 8);
      v29 = strlen(__s);
      v30 = heap_Calloc(v28, 1, (v29 - 1));
      *(*(a4 + 1064) + 184 * v14 + 128) = v30;
      if (v30)
      {
        v35 = v30;
        v36 = strlen(__s + 1);
        strncpy(v35, __s + 1, v36 - 1);
        return 0;
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v31, v32, v33, v34, v38);
        return 2315264010;
      }
    }
  }

  else
  {
LABEL_12:
    v20 = a2[1];
  }

  v21 = 2315264000;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a6, a7, a8, __s);
  if (*(a4 + 1072))
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = *(a4 + 1064) + v25;
      v39 = *(v27 + 16);
      v40 = *(v27 + 18);
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "word[%d] %d,%d", v22, v23, v24, v26++);
      v25 += 184;
    }

    while (v26 < *(a4 + 1072));
  }

  return v21;
}

uint64_t insert_NLU_infoNN(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = a2;
  if (a2 == a3)
  {
    if (a2 + 1 == *(a5 + 1072))
    {
      v7 = a2 + 1;
    }

    else
    {
      v7 = a2;
    }
  }

  if (a2 >= v7)
  {
    return 0;
  }

  v10 = 184 * a2 + 88;
  v11 = a2 + 1;
  while (1)
  {
    v12 = *(a4 + 8);
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = *(*(a5 + 1064) + v10);
    if (v13)
    {
      heap_Free(*(a1 + 8), v13);
      *(*(a5 + 1064) + v10) = 0;
      v12 = *(a4 + 8);
    }

    v14 = strlen(v12);
    v15 = heap_Calloc(*(a1 + 8), 1, (v14 + 1));
    *(*(a5 + 1064) + v10) = v15;
    if (!v15)
    {
      break;
    }

    strcpy(v15, *(a4 + 8));
    *(*(a5 + 1064) + v10 + 8) = v8;
LABEL_12:
    v20 = *(a4 + 56);
    if (v20)
    {
      v21 = *(*(a5 + 1064) + v10 + 32);
      if (v21)
      {
        heap_Free(*(a1 + 8), v21);
        *(*(a5 + 1064) + v10 + 32) = 0;
        v20 = *(a4 + 56);
      }

      v22 = strlen(v20);
      v23 = heap_Calloc(*(a1 + 8), 1, (v22 + 1));
      *(*(a5 + 1064) + v10 + 32) = v23;
      if (!v23)
      {
        break;
      }

      strcpy(v23, *(a4 + 56));
    }

    v24 = *(a4 + 40);
    if (v24)
    {
      v25 = strlen(v24);
      v26 = heap_Realloc(*(a1 + 8), *(*(a5 + 1064) + v10 + 56), (v25 + 32) & 0xFFFFFFE0);
      if (!v26)
      {
        break;
      }

      *(*(a5 + 1064) + v10 + 56) = strcpy(v26, *(a4 + 40));
    }

    v27 = *(a4 + 72);
    if (v27)
    {
      *(*(a5 + 1064) + v10 + 64) = v27;
      v28 = *(a4 + 64);
      if (v28)
      {
        v29 = strlen(v28);
        v30 = heap_Alloc(*(a1 + 8), v29 + 1);
        *(*(a5 + 1064) + v10 + 72) = v30;
        if (!v30)
        {
          break;
        }

        strcpy(v30, *(a4 + 64));
      }
    }

    v10 += 184;
    if (v7 == v11++)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v16, v17, v18, v19, v33);
  return 2315264010;
}

uint64_t addMarkerTypeNN(uint64_t a1, char *__s2, const char *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a5 + 74);
  if (v14 <= *(a5 + 72))
  {
    v15 = *(a5 + 72);
  }

  else
  {
    v15 = *(a5 + 74);
  }

  v16 = 8 * v14;
  v17 = v15 - v14;
  do
  {
    if (!v17 || (v18 = *(a5 + 528)) == 0)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Ignoring marker :%s, as not in DEFMAPPING list", a6, a7, a8, __s2);
      return 0;
    }

    v19 = strcmp((v18 + *(*(a5 + 536) + 4 * *(*(a5 + 64) + v16))), __s2);
    v16 += 8;
    --v17;
  }

  while (v19);
  if (v16 != 8)
  {
    return 0;
  }

  v20 = strlen(a3);
  v21 = heap_Calloc(*(a1 + 8), 1, (v20 + 1));
  *(*(a6 + 1064) + 184 * a4 + 128) = v21;
  if (v21)
  {
    strcpy(v21, a3);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v22, v23, v24, v25, v27);
  return 2315264010;
}

uint64_t getNNSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v118 = 0;
  v117 = 0;
  v5 = *(a5 + 1088);
  if (!v5)
  {
    return 0;
  }

  v6 = a5;
  v7 = *(a5 + 1096);
  v119 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  if (!*v5)
  {
    return 0;
  }

  v11 = strlen(v5);
  v12 = heap_Calloc(*(a1 + 8), 1, (v11 + 2));
  if (!v12)
  {
    inserted = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v13, v14, v15, v16, v94);
    return inserted;
  }

  v17 = v12;
  v97 = v7;
  v95 = a3;
  v96 = a4;
  if (!*(v6 + 1072))
  {
LABEL_77:
    v72 = a2;
    v73 = (*(a2 + 104))(v95, v96, 2, v97, &v119);
    if ((v73 & 0x80000000) != 0)
    {
LABEL_89:
      inserted = v73;
    }

    else
    {
      while (v119)
      {
        v73 = (*(v72 + 168))(v95, v96);
        if ((v73 & 0x80000000) != 0)
        {
          goto LABEL_89;
        }

        if (v115 == 6)
        {
          v73 = (*(a2 + 168))(v95, v96, v119, 1, 1, &v113, &v116);
          if ((v73 & 0x80000000) != 0)
          {
            goto LABEL_89;
          }

          v73 = (*(a2 + 168))(v95, v96, v119, 2, 1, &v113 + 2, &v116);
          if ((v73 & 0x80000000) != 0)
          {
            goto LABEL_89;
          }

          if (v113 > HIWORD(v113))
          {
            inserted = 2315271857;
            goto LABEL_90;
          }

          v73 = (*(a2 + 176))(v95, v96, v119, 4, &v114, &v116);
          if ((v73 & 0x80000000) != 0)
          {
            goto LABEL_89;
          }

          v77 = v114;
          if (strcmp(v114, "_PR_"))
          {
            v82 = addTokenNN(a1, &v113, v77, v6, v78, v79, v80, v81);
            if ((v82 & 0x80000000) != 0)
            {
              inserted = v82;
              if (v82 != -1979703296)
              {
                goto LABEL_90;
              }
            }
          }
        }

        v72 = a2;
        v73 = (*(a2 + 120))(v95, v96, v119, &v119);
        if ((v73 & 0x80000000) != 0)
        {
          goto LABEL_89;
        }
      }

      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Added words information", v74, v75, v76, 0);
      inserted = (*(v72 + 176))(v95, v96, v97, 1, &v118, &v117);
      if ((inserted & 0x80000000) == 0)
      {
        LOWORD(v84) = v117;
        if (v117)
        {
          v85 = 0;
          v86 = 0;
          do
          {
            v87 = v118 + 32 * v86;
            if (*v87 == 21)
            {
              DomainFromPausingDefs = getDomainFromPausingDefs(v6 + 1104, *(v87 + 24), &v112);
              v84 = v117;
              if (DomainFromPausingDefs == 1)
              {
                v89 = v86 + 1;
                if (v117 > (v86 + 1))
                {
                  v90 = a1;
                  v91 = v118;
                  v92 = v118 + 32 * v86;
                  while (1)
                  {
                    v93 = v91 + 32 * v89;
                    if (*v93 == 21)
                    {
                      if (strcmp(*(v92 + 24), *(v93 + 24)))
                      {
                        break;
                      }
                    }

                    if (v84 <= ++v89)
                    {
                      goto LABEL_106;
                    }
                  }

                  v86 = v89 - (v89 + 1 != v85);
LABEL_106:
                  a1 = v90;
                }
              }
            }

            v85 = ++v86;
          }

          while (v86 < v84);
        }
      }
    }

    goto LABEL_90;
  }

  v18 = 0;
  v100 = a1;
  v98 = v5;
  v99 = v12;
  v108 = v6;
  while (1)
  {
    v19 = *(v6 + 1064) + 184 * v18;
    *(v19 + 80) = 0;
    *(v19 + 88) = 0;
    *(v19 + 120) = 0;
    *(v19 + 128) = 0;
    *(v19 + 144) = 0u;
    *(v19 + 160) = 0u;
    v113 = *(v19 + 16);
    v20 = v113;
    v21 = v113 >> 16;
    strncpy(v17, &v5[v20], (v20 >> 16) - v20);
    v17[v21 - v113] = 0;
    if (v21 == v20)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v22, v23, v24, v20);
      goto LABEL_73;
    }

    v25 = doesWordEndInComma(v17);
    v26 = *(v6 + 1064);
    if (v25)
    {
      *(v26 + 184 * *(v6 + 1072) - 84) = 1;
    }

    v27 = *(v26 + 184 * v18 + 40);
    if (v27)
    {
      break;
    }

LABEL_73:
    if (++v18 >= *(v6 + 1072))
    {
      goto LABEL_77;
    }
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v120 = 0u;
  v28 = strlen(v27);
  v29 = heap_Calloc(*(a1 + 8), 1, (v28 + 1));
  if (!v29)
  {
LABEL_93:
    inserted = 2315264010;
    a1 = v100;
    log_OutPublic(*(v100 + 32), "FE_PHRASING", 37000, 0, v30, v31, v32, v33, v94);
    v17 = v99;
    goto LABEL_90;
  }

  v34 = v29;
  v101 = v27;
  v35 = strcpy(v29, v27);
  for (i = (v34 + strlen(v35) - 1); i >= v34; --i)
  {
    v37 = *i;
    v38 = v37 > 0x3B;
    v39 = (1 << v37) & 0x800000100002600;
    if (v38 || v39 == 0)
    {
      break;
    }

    *i = 0;
  }

  v41 = 0;
  v111 = 0;
  v109 = 0;
  v110 = 0uLL;
  v107 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v42 = 0;
  v43 = v34;
  do
  {
    v44 = strchr(v43, 59);
    v45 = v44;
    if (v44)
    {
      *v44 = 0;
    }

    v46 = strchr(v43, 58);
    v47 = v46;
    if (v46)
    {
      *v46 = 0;
      v48 = v46 + 1;
    }

    else
    {
      v48 = "null";
    }

    if (!strcmp(v43, "POS"))
    {
      inserted = 0;
      v42 = v48;
      goto LABEL_45;
    }

    if (!strcmp(v43, "PHR"))
    {
      inserted = 0;
      v41 = v48;
      goto LABEL_45;
    }

    if (!strcmp(v43, "BND"))
    {
      inserted = 0;
      v111 = v48;
      goto LABEL_45;
    }

    if (!strcmp(v43, "BNDSHAPE"))
    {
      inserted = 0;
      v109 = v48;
      goto LABEL_45;
    }

    if (!strcmp(v43, "S_POI"))
    {
      inserted = 0;
      v54 = "B";
LABEL_44:
      *(&v110 + 1) = v54;
      *&v110 = v48;
      goto LABEL_45;
    }

    if (!strcmp(v43, "I_POI"))
    {
      inserted = 0;
      v54 = "I";
      goto LABEL_44;
    }

    if (!strcmp(v43, "E_POI"))
    {
      inserted = 0;
      v54 = "S";
      if (!*(&v110 + 1))
      {
        v54 = "E";
      }

      goto LABEL_44;
    }

    if (!strcmp(v43, "PRM"))
    {
      inserted = 0;
      v107 = v48;
      goto LABEL_45;
    }

    v52 = *(v108 + 1760);
    if (v52 == 1)
    {
      if (!strcmp((v43 + 1), "_COMP"))
      {
        v55 = strlen(v48);
        v56 = heap_Calloc(*(v100 + 8), 1, (v55 + 3));
        if (!v56)
        {
          goto LABEL_93;
        }

        v57 = v56;
        v58 = strcmp(v43, "S_COMP");
        v59 = "I-";
        if (!v58)
        {
          v59 = "B-";
        }

        *v57 = *v59;
        v57[2] = v59[2];
        strcat(v57, v48);
        v60 = v57;
        inserted = 0;
        v104 = v60;
        v105 = v60;
        goto LABEL_45;
      }
    }

    else if (!v52 && !strcmp(v43, "COMP"))
    {
      inserted = 0;
      v105 = v48;
      goto LABEL_45;
    }

    if (!v47 || v47 <= v43 + 1)
    {
      goto LABEL_54;
    }

    if (!strcmp((v43 + 1), "_CLASS"))
    {
      inserted = 0;
      v102 = v48;
      goto LABEL_45;
    }

    if (!strcmp((v43 + 1), "_PUNC"))
    {
      v61 = v103;
      if (!v103)
      {
        v62 = strlen(v101);
        v61 = heap_Calloc(*(v100 + 8), 1, (v62 + 1));
        if (!v61)
        {
          inserted = 2315264010;
          a1 = v100;
          log_OutPublic(*(v100 + 32), "FE_PHRASING", 37000, 0, v63, v64, v65, v66, v94);
          v67 = v34;
          v17 = v99;
          v71 = v104;
LABEL_69:
          heap_Free(*(a1 + 8), v67);
          goto LABEL_70;
        }

        *v61 = 0;
      }

      *v47 = 58;
      v103 = v61;
      hlp_NLUStrJoin(v61, v43);
      inserted = 0;
    }

    else
    {
LABEL_54:
      inserted = addMarkerTypeNN(v100, v43, v48, v18, v108 + 1104, v108, v50, v51);
    }

LABEL_45:
    if (!v45)
    {
      break;
    }

    v43 = (v45 + 1);
  }

  while ((inserted & 0x80000000) == 0);
  v67 = v103;
  *&v123 = v103;
  *(&v123 + 1) = v105;
  *&v122 = v107;
  *(&v122 + 1) = v102;
  v124 = v110;
  *&v121 = v111;
  *(&v121 + 1) = v109;
  *&v120 = v42;
  *(&v120 + 1) = v41;
  a1 = v100;
  log_OutText(*(v100 + 32), "FE_PHRASING", 5, 0, "parsed NLU %s[%d,%d] -> POS=%s, PHR=%s, BND=%s, BNDSHAPE=%s, PRM=%s, CLASS=%s, PUNC=%s, COMP=%s, POIClass=%s, POIPosi=%s", v49, v50, v51, v101);
  v17 = v99;
  v71 = v104;
  if ((inserted & 0x80000000) == 0)
  {
    if (!v42)
    {
      log_OutText(*(v100 + 32), "FE_PHRASING", 5, 0, "missing POS in NLU string: arg=%s", v68, v69, v70, v34);
    }

    inserted = insert_NLU_infoNN(v100, v18, (v18 + 1), &v120, v108);
  }

  heap_Free(*(v100 + 8), v34);
  if (v103)
  {
    goto LABEL_69;
  }

LABEL_70:
  v5 = v98;
  if (v71)
  {
    heap_Free(*(a1 + 8), v71);
  }

  v6 = v108;
  if ((inserted & 0x80000000) == 0)
  {
    goto LABEL_73;
  }

LABEL_90:
  heap_Free(*(a1 + 8), v17);
  return inserted;
}

uint64_t getDocumentClassNN(uint64_t a1)
{
  v1 = *(a1 + 1072);
  if (!*(a1 + 1072))
  {
    return 0;
  }

  v2 = 0;
  v3 = *(a1 + 1064);
  while (1)
  {
    v4 = v3 + 184 * v2;
    v5 = *(v4 + 144);
    if (v5)
    {
      if (strstr(*(v4 + 144), "joyfulstyle"))
      {
        return 1;
      }

      if (strstr(v5, "didacticstyle"))
      {
        return 2;
      }

      if (strstr(v5, "neutralstyle"))
      {
        break;
      }
    }

    if (v1 <= ++v2)
    {
      return 0;
    }
  }

  return 3;
}

uint64_t nnpuncPhrasing(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, const char *a6, char *__s)
{
  v7 = __s;
  if (strchr(__s, 44))
  {
  }

  DocumentClassNN = getDocumentClassNN(a2);
  v19 = *(a5 + *&aF_4[8 * DocumentClassNN]);
  if (!*(a5 + *&aF_4[8 * DocumentClassNN]))
  {
    v19 = 9;
  }

  v43 = v19;
  if (!*(a2 + 1088))
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "%s\n", v16, v17, v18, "input parameter: sent is NULL");
    return 0;
  }

  v42 = a1;
  if (*(a2 + 1072))
  {
    v20 = 0;
    v21 = 176;
    v22 = *(a2 + 1064);
    v23 = -1;
    while (1)
    {
      v24 = doesWordEndInCommaNN(*(v22 + v21 - 112), a6);
      v22 = *(a2 + 1064);
      if ((v24 || *(v22 + v21 - 76) == 1 && *(v22 + v21 - 72)) && *(v22 + v21 - 68) && *(a2 + 1072))
      {
        *(v22 + v21 - 100) = 4;
      }

      v25 = v22 + v21;
      if (*(v22 + v21 - 76) == 1)
      {
        v26 = *(v25 - 72);
        v27 = strchr(v7, v26);
        if (v26)
        {
          v28 = v27 == 0;
        }

        else
        {
          v28 = 1;
        }

        if (!v28 && !*(v22 + v21 - 68))
        {
          *(v22 + v21 - 100) = 3;
        }
      }

      v29 = *(v25 - 24);
      if (!v29)
      {
        goto LABEL_31;
      }

      v30 = *v29;
      if (v30 == 83)
      {
        break;
      }

      if (v30 == 69)
      {
        if (v29[1] || *(v22 + v21) < v43)
        {
          goto LABEL_31;
        }

        v31 = (v22 + v21 - 100);
LABEL_28:
        *v31 = 4;
        goto LABEL_31;
      }

      if (v30 == 66)
      {
        break;
      }

LABEL_31:
      ++v20;
      v21 += 184;
      ++v23;
      if (v20 >= *(a2 + 1072))
      {
        goto LABEL_34;
      }
    }

    if (v29[1] || v21 == 176)
    {
      goto LABEL_31;
    }

    v31 = (v22 + 184 * v23 + 76);
    goto LABEL_28;
  }

LABEL_34:
  printPhrasesNN(v42, a2, v13, v14, v15, v16, v17, v18);
  v32 = heap_Calloc(*(v42 + 8), 1024, 2);
  if (v32)
  {
    v39 = v32;
    printPhrasesNN(v42, a2, v33, v34, v35, v36, v37, v38);
    heap_Free(*(v42 + 8), v39);
    return 0;
  }

  log_OutPublic(*(v42 + 32), "FE_PHRASING", 37000, 0, v35, v36, v37, v38, v41);
  return 2315264010;
}

uint64_t doesWordEndInCommaNN(uint64_t result, const char *a2)
{
  *__s2 = 0;
  if (result)
  {
    v2 = result;
    if (*result)
    {
      v4 = Utf8_Utf8NbrOfSymbols(a2);
      if (v4 != 1)
      {
        v5 = 0;
        v6 = 0;
        v7 = (v4 - 1);
        do
        {
          v8 = v5;
          if ((utf8_getUTF8Char(a2, v5, __s2) & 0x80000000) != 0)
          {
            break;
          }

          if (strstr(v2, __s2))
          {
            return 1;
          }

          v5 = v8 + strlen(__s2);
          ++v6;
        }

        while (v6 < v7);
      }
    }

    return 0;
  }

  return result;
}

uint64_t printPhrasesNN(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 1072))
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(a2 + 1064) + v10;
      v13 = *(v12 + 76);
      result = log_OutText(*(v9 + 32), "FE_PHRASING", 5, 0, "%s\t\t%c\n", a6, a7, a8, *(v12 + 56));
      ++v11;
      v10 += 184;
    }

    while (v11 < *(a2 + 1072));
  }

  return result;
}

uint64_t updateLingdbNNPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, const char *a7, int a8)
{
  v120 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  v16 = heap_Calloc(*(a1 + 8), 32, 1);
  if (v16)
  {
    v21 = v16;
    v22 = a5;
    v23 = a1;
    v113 = 0;
    v112 = 0;
    v111 = 0;
    v110 = 0;
    v108 = 0;
    v109 = 0;
    v107 = 0;
    v106 = 0;
    v24 = a4;
    v25 = *(v22 + 1096);
    v102 = v22;
    v101 = *(v22 + 1088);
    v26 = (*(a2 + 176))(a3, v24, v25, 1, &v107, &v106);
    if ((v26 & 0x80000000) != 0)
    {
      v27 = v26;
    }

    else
    {
      __s[0] = 0;
      v99 = a2;
      v104 = a3;
      v103 = v24;
      v27 = (*(a2 + 104))(a3, v24, 2, v25, &v113 + 2);
      if ((v27 & 0x80000000) != 0)
      {
        v29 = v23;
        v35 = v21;
        goto LABEL_138;
      }

      v28 = HIWORD(v113);
      v29 = v23;
      if (HIWORD(v113))
      {
        v94 = a7;
        v30 = 0;
        v100 = 0;
        v31 = a6;
        v32 = v103;
        v33 = a3;
        v34 = a8;
        v35 = v21;
        v95 = v31;
        v96 = a8;
        while (1)
        {
          v27 = (*(v99 + 168))(v33, v32, v28, 0, 1, &v111, &v112 + 2);
          if ((v27 & 0x80000000) != 0)
          {
            goto LABEL_138;
          }

          if (v111 <= 0xA && ((1 << v111) & 0x610) != 0)
          {
            break;
          }

LABEL_120:
          v27 = (*(v99 + 120))(v33, v32, HIWORD(v113), &v113 + 2);
          if ((v27 & 0x80000000) != 0)
          {
            goto LABEL_138;
          }

          v28 = HIWORD(v113);
          if (!HIWORD(v113))
          {
            goto LABEL_130;
          }
        }

        v37 = *(v102 + 1064);
        v109 = *(v37 + 184 * v30 + 16);
        if (v109 == HIWORD(v109))
        {
          v29 = v23;
LABEL_119:
          if (*(v102 + 1072) <= ++v30)
          {
            goto LABEL_130;
          }

          goto LABEL_120;
        }

        HIWORD(v108) = 0;
        if (v30 | v100 && v100 >= v30)
        {
          __s[0] = 0;
          goto LABEL_46;
        }

        v38 = *(v102 + 1072);
        LOWORD(v39) = v30;
        if (v38 > v30)
        {
          v40 = (v37 + 184 * v30 + 112);
          v39 = v30;
          while (*(v40 - 36) - 3 >= 2 && !*v40)
          {
            ++v39;
            v40 += 46;
            if (v38 == v39)
            {
              goto LABEL_23;
            }
          }
        }

        if (v38 == v39)
        {
LABEL_23:
          v110 = *(v37 + 184 * *(v102 + 1072) - 166);
          if (*(v102 + 1768))
          {
            __strcpy_chk();
          }

          else
          {
            strcpy(__s, "T");
          }

          goto LABEL_33;
        }

        v110 = *(v37 + 184 * v39 + 18);
        if (v39 + 1 == v38)
        {
          if (*(v102 + 1768))
          {
            __strcpy_chk();
LABEL_32:
            LOWORD(v38) = v39;
LABEL_33:
            v100 = v38;
            if (v30)
            {
              if (*(*(v102 + 1064) + 184 * (v30 - 1) + 76) == 3)
              {
                v42 = 2;
              }

              else
              {
                v42 = 1;
              }
            }

            else
            {
              v42 = 0;
            }

            HIWORD(v108) = v42;
            if (__s[0])
            {
              LOWORD(v108) = 0;
              v43 = (*(v99 + 88))(v104, v32, HIWORD(v113), &v113);
              if ((v43 & 0x80000000) != 0)
              {
                goto LABEL_136;
              }

              v111 = 15;
              v43 = (*(v99 + 160))(v104, v32, v113, 0, 1, &v111, &v112);
              if ((v43 & 0x80000000) != 0 || (v43 = (*(v99 + 160))(v104, v32, v113, 1, 1, &v109, &v112), (v43 & 0x80000000) != 0) || (v43 = (*(v99 + 160))(v104, v32, v113, 2, 1, &v110, &v112), (v43 & 0x80000000) != 0) || (v44 = strlen(__s), v43 = (*(v99 + 160))(v104, v32, v113, 4, (v44 + 1), __s, &v112), (v43 & 0x80000000) != 0) || (v43 = (*(v99 + 160))(v104, v32, v113, 7, 1, &v108 + 2, &v112), (v43 & 0x80000000) != 0) || (v43 = (*(v99 + 160))(v104, v32, v113, 8, 1, &v108, &v112), (v43 & 0x80000000) != 0))
              {
LABEL_136:
                v27 = v43;
LABEL_137:
                v29 = v23;
                goto LABEL_138;
              }
            }

LABEL_46:
            LOWORD(v108) = 0;
            v45 = *(v102 + 1064) + 184 * v30;
            if (*(v45 + 76) != 4 || *(v102 + 1072) - 1 == v30 || ((v46 = *(v45 + 56), v47 = strlen(v46), LOWORD(v108) = 100, !doesWordEndInCommaNN(v46, v94)) && (v48 = *(v102 + 1064) + 184 * v30, !*(v48 + 100)) && *(*(v48 + 56) + (v47 - 1)) != 46 ? (v49 = v108) : (v49 = v95, LOWORD(v108) = v95), v32 = v103, !v49))
            {
              if (*(*(v102 + 1064) + 184 * v30 + 112))
              {
                LOWORD(v108) = v95;
              }
            }

            v50 = HIWORD(v113);
            v116 = 0;
            v115 = 0;
            v114 = 0;
            v51 = (*(v99 + 184))(v104, v32, HIWORD(v113), 18, &v116);
            v27 = v51;
            if ((v51 & 0x80000000) != 0 || !v116)
            {
              v52 = v104;
              if ((v51 & 0x80000000) != 0)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v43 = (*(v99 + 176))(v104, v32, v50, 18, &v115, &v114);
              if ((v43 & 0x80000000) != 0)
              {
                goto LABEL_136;
              }

              v52 = v104;
              if (!strcmp(v115, "external"))
              {
                goto LABEL_62;
              }
            }

            v43 = (*(v99 + 160))(v52, v32, HIWORD(v113), 8, 1, &v108, &v112);
            if ((v43 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

LABEL_62:
            v43 = (*(v99 + 176))(v52, v32, HIWORD(v113), 9, &__s1, &v112 + 2);
            if ((v43 & 0x80000000) != 0)
            {
              goto LABEL_136;
            }

            v53 = __s1;
            if (!strcmp(__s1, "normal"))
            {
              v59 = 0;
              v58 = *(v102 + 1064);
            }

            else
            {
              v57 = strcmp(v53, "mnx");
              v58 = *(v102 + 1064);
              if (v57)
              {
                v59 = *(v58 + 184 * v30 + 77);
              }

              else
              {
                v59 = 0;
              }
            }

            v60 = v58 + 184 * v30;
            v61 = *(v60 + 128);
            if (v61)
            {
              v62 = strlen(*(v60 + 128)) + 1;
              if (v62 >= 0x21)
              {
                v63 = heap_Realloc(*(v23 + 8), v35, v62);
                if (!v63)
                {
                  goto LABEL_140;
                }

                v61 = *(*(v102 + 1064) + 184 * v30 + 128);
                v35 = v63;
              }

              if (*v61 == 79 && !*(v61 + 1) || !strcmp(v61, "O-P"))
              {
                strcpy(v35, v61);
              }

              else
              {
                strcpy(v35, "B-");
                strcat(v35, *(*(v102 + 1064) + 184 * v30 + 128));
              }

              v68 = strlen(v35);
              if (v68 >= 2)
              {
                v69 = &v35[v68];
                if (v35[v68 - 2] == 45 && *(v69 - 1) == 80 && !*v69)
                {
                  v35[v68 - 2] = 0;
                }
              }
            }

            else if (*v35 && (*v35 != 79 || v35[1]))
            {
              *v35 = 73;
            }

            v70 = *(v102 + 1064) + 184 * v30;
            v71 = *(v70 + 80);
            if (v71)
            {
              v72 = strlen(v71);
              v73 = heap_Alloc(*(v23 + 8), v72 + 1);
              if (!v73)
              {
                goto LABEL_140;
              }

              v74 = v73;
              strcpy(v73, *(*(v102 + 1064) + 184 * v30 + 80));
            }

            else
            {
              v75 = *(v70 + 48);
              if (v75)
              {
                v76 = hlp_NLUStrValueLen(v75);
                v77 = heap_Alloc(*(v23 + 8), v76 + 1);
                if (!v77)
                {
LABEL_140:
                  v27 = 2315264010;
                  v29 = v23;
                  log_OutPublic(*(v23 + 32), "FE_PHRASING", 37000, 0, v64, v65, v66, v67, v93);
                  goto LABEL_138;
                }

                v74 = v77;
                strncpy(v77, *(*(v102 + 1064) + 184 * v30 + 48), v76)[v76] = 0;
              }

              else
              {
                v74 = 0;
              }
            }

            v78 = *(v102 + 1064) + 184 * v30;
            v79 = *(v78 + 168);
            v80 = *(v78 + 40);
            v98 = v59;
            v97 = HIWORD(v113);
            if (v34)
            {
              if (!v80)
              {
                if (!*v35)
                {
LABEL_116:
                  v29 = v23;
                  if (v74)
                  {
                    heap_Free(*(v23 + 8), v74);
                  }

                  log_OutText(*(v23 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", v54, v55, v56, HIWORD(v113));
                  LH_itoa(v98, v117, 0xAu);
                  strlen(v117);
                  v33 = v104;
                  v32 = v103;
                  v27 = (*(v99 + 160))();
                  if ((v27 & 0x80000000) != 0)
                  {
                    goto LABEL_138;
                  }

                  goto LABEL_119;
                }

                v80 = 0;
                v81 = 1;
                v82 = 1;
                if (!v74)
                {
LABEL_101:
                  v83 = v82 + strlen(v35) + 5;
                  if (v79)
                  {
                    v83 += strlen(v79) + 10;
                  }

                  v84 = heap_Alloc(*(v23 + 8), v83);
                  if (!v84)
                  {
                    v27 = 2315264010;
                    goto LABEL_137;
                  }

                  v88 = v84;
                  LOWORD(v115) = 0;
                  if (v81)
                  {
                    *v84 = 0;
                    if (!v74)
                    {
                      goto LABEL_110;
                    }
                  }

                  else
                  {
                    strcpy(v84, v80);
                    if (!v74)
                    {
                      goto LABEL_110;
                    }
                  }

                  if (*v74)
                  {
                    hlp_NLUStrSet(v88, "POS", v74);
                  }

LABEL_110:
                  if (*v35)
                  {
                    hlp_NLUStrSet(v88, "PHR", v35);
                  }

                  if (v79 && *v79)
                  {
                    hlp_NLUStrSet(v88, "BNDSHAPE", v79);
                  }

                  log_OutText(*(v23 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", v85, v86, v87, v97);
                  v89 = strlen(v88);
                  v27 = (*(v99 + 160))(v104, v103, v97, 14, (v89 + 1), v88, &v115);
                  heap_Free(*(v23 + 8), v88);
                  v34 = v96;
                  if ((v27 & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  goto LABEL_116;
                }

LABEL_100:
                v82 += strlen(v74) + 5;
                goto LABEL_101;
              }
            }

            else if (!v80)
            {
              v82 = 1;
              v81 = 1;
              if (!v74)
              {
                goto LABEL_101;
              }

              goto LABEL_100;
            }

            v81 = 0;
            v82 = strlen(v80) + 1;
            if (!v74)
            {
              goto LABEL_101;
            }

            goto LABEL_100;
          }

          v41 = 84;
        }

        else
        {
          v41 = 80;
        }

        *__s = v41;
        goto LABEL_32;
      }

      v35 = v21;
LABEL_130:
      if (*__s == 87 || !(*__s ^ 0x4641 | v119))
      {
        v90 = strrchr(v101, 63);
        if (v90 && v90 != v101 && *(v90 - 1) != 32)
        {
          *v90 = 46;
        }
      }

LABEL_138:
      heap_Free(*(v29 + 8), v35);
    }
  }

  else
  {
    v27 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v17, v18, v19, v20, v93);
  }

  v91 = *MEMORY[0x1E69E9840];
  return v27;
}

void *freePwInObjClose(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 1);
  if (v10)
  {
    v11 = *a2;
    if (*a2)
    {
      v12 = 0;
      do
      {
        v13 = *(*(a2 + 1) + 8 * v12);
        if (v13)
        {
          heap_Free(*(a1 + 8), v13);
          *(*(a2 + 1) + 8 * v12) = 0;
          v11 = *a2;
        }

        ++v12;
      }

      while (v12 < v11);
      v10 = *(a2 + 1);
    }

    heap_Free(*(a1 + 8), v10);
    *(a2 + 1) = 0;
    *a2 = 0;
  }

  v14 = *(a2 + 3);
  if (v14)
  {
    v15 = a2[16];
    if (a2[16])
    {
      v16 = 0;
      do
      {
        v17 = *(*(a2 + 3) + 8 * v16);
        if (v17)
        {
          heap_Free(*(a1 + 8), v17);
          *(*(a2 + 3) + 8 * v16) = 0;
          v15 = a2[16];
        }

        ++v16;
      }

      while (v16 < v15);
      v14 = *(a2 + 3);
    }

    heap_Free(*(a1 + 8), v14);
    *(a2 + 3) = 0;
    a2[16] = 0;
  }

  freePandPRules(a2 + 138, v14, a3, a4, a5, a6, a7, a8);
  v18 = *(a1 + 8);

  return heap_Free(v18, a2);
}

void *freeSPPunc(void *result, uint64_t a2)
{
  if (a2)
  {
    return heap_Free(result[1], a2);
  }

  return result;
}

void *freeSentenceDataNN(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 1768);
  if (v4)
  {
    result = heap_Free(result[1], v4);
    *(a2 + 1768) = 0;
  }

  v5 = *(a2 + 1080);
  if (v5)
  {
    result = heap_Free(v3[1], v5);
    *(a2 + 1080) = 0;
  }

  v6 = *(a2 + 1064);
  if (v6)
  {
    if (*(a2 + 1072))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (*(v6 + v7 + 40))
        {
          heap_Free(v3[1], *(v6 + v7 + 40));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 40) = 0;
        }

        if (*(v6 + v7 + 24))
        {
          heap_Free(v3[1], *(v6 + v7 + 24));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 24) = 0;
        }

        if (*(v6 + v7 + 128))
        {
          heap_Free(v3[1], *(v6 + v7 + 128));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 128) = 0;
        }

        if (*(v6 + v7 + 144))
        {
          heap_Free(v3[1], *(v6 + v7 + 144));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 144) = 0;
        }

        if (*(v6 + v7 + 160))
        {
          heap_Free(v3[1], *(v6 + v7 + 160));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 160) = 0;
        }

        if (*(v6 + v7 + 168))
        {
          heap_Free(v3[1], *(v6 + v7 + 168));
          v6 = *(a2 + 1064);
          *(v6 + v7 + 168) = 0;
        }

        if (*(v6 + v7))
        {
          heap_Free(v3[1], *(v6 + v7));
          v6 = *(a2 + 1064);
          *(v6 + v7) = 0;
        }

        ++v8;
        v7 += 184;
      }

      while (v8 < *(a2 + 1072));
    }

    result = heap_Free(v3[1], v6);
    *(a2 + 1064) = 0;
  }

  *(a2 + 1072) = 0;
  *(a2 + 1096) = 0;
  return result;
}

uint64_t nn_model_getBrokerString(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  *v11 = 0;
  memset(v12, 0, sizeof(v12));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v11);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v10);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v8 = brokeraux_ComposeBrokerString(a1, v12, 1, 1, *v11, 0, 0, a2, a4);
      result = v8 & (v8 >> 31);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t initFiModel(uint64_t a1, _WORD *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, void *a10)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  memset(v39, 0, sizeof(v39));
  v37 = -1;
  BrokerString = (*(a8 + 96))(a6, a7, "fecfg", "statbnd_phrase_nn_type_joint", &v38, &v37, &v36);
  if ((BrokerString & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  v16 = 2315264010;
  if (v37)
  {
    (*v38)[strlen(*v38) - 1] = 0;
    if (!strcmp(*v38, "yes"))
    {
      *a9 = 1;
      v17 = *(a1 + 8);
      v18 = 8;
    }

    else
    {
      *a9 = 0;
      v17 = *(a1 + 8);
      v18 = 16;
    }

    v19 = heap_Alloc(v17, v18);
    if (!v19)
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v20, v21, v22, v23, v32);
      goto LABEL_19;
    }

    v24 = v19;
    BrokerString = nn_model_getBrokerString(a1, v39, "nnphrase_", 0x100uLL);
    if ((BrokerString & 0x80000000) == 0)
    {
      v16 = fi_init(a2, a3, a4, a5, &v35, 0, v39, "FINN", 1031, 0);
      if ((v16 & 0x80000000) != 0)
      {
        v28 = *(a1 + 32);
        v29 = "load FI model failed";
        goto LABEL_14;
      }

      *v24 = v35;
      if (*a9)
      {
LABEL_11:
        *a10 = v24;
        goto LABEL_19;
      }

      BrokerString = nn_model_getBrokerString(a1, v39, "nnword_", 0x100uLL);
      if ((BrokerString & 0x80000000) == 0)
      {
        v16 = fi_init(a2, a3, a4, a5, &v34, 0, v39, "FINN", 1031, 0);
        if ((v16 & 0x80000000) == 0)
        {
          v24[1] = v34;
          goto LABEL_11;
        }

        v28 = *(a1 + 32);
        v29 = "load FI pw model failed";
LABEL_14:
        log_OutText(v28, "FE_PHRASING", 5, 0, v29, v25, v26, v27, v33);
        goto LABEL_19;
      }
    }

LABEL_18:
    v16 = BrokerString;
    goto LABEL_19;
  }

  v16 = 2315264020;
LABEL_19:
  v30 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t loadEmbedding(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, _BOOL4 *a9)
{
  v25 = 0;
  v26 = 0;
  __lasts = 0;
  v23 = -1;
  v22 = 0;
  result = (*(a8 + 96))(a6, a7, "fecfg", "statbnd_embed_type", &v25, &v23, &v22);
  if ((result & 0x80000000) == 0)
  {
    result = 2315264020;
    if (v23)
    {
      if (v25)
      {
        (*v25)[strlen(*v25) - 1] = 0;
        v15 = strtok_r(*v25, "|", &__lasts);
        v16 = !strcmp(v15, "joint_char") && !strcmp(__lasts, "joint_word");
        *a9 = v16;
        result = nn_word_lkp_GetInterface(1u, &v26);
        if ((result & 0x80000000) == 0)
        {
          *a5 = safeh_GetNullHandle();
          a5[1] = v17;
          a5[2] = safeh_GetNullHandle();
          a5[3] = v18;
          v19 = *(v26 + 16);
          v20 = *a4;
          v21 = a4[1];
          if (*a9)
          {
            result = v19(v20, v21, "joint_char", a1, a2, a5);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(v26 + 16))(*a4, a4[1], "joint_word", a1, a2, a5 + 2);
          }

          else
          {
            result = v19(v20, v21, "albert", a1, a2, a5);
          }

          if ((result & 0x80000000) == 0)
          {
            *a3 = v26;
          }
        }
      }
    }
  }

  return result;
}

void *freeSpRules(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      v5 = *(a2 + 10);
      if (*(a2 + 10))
      {
        v6 = 0;
        do
        {
          v7 = v3 + 16 * v6;
          v8 = *v7;
          if (*v7)
          {
            if (*(v7 + 8))
            {
              v9 = 0;
              v10 = 0;
              do
              {
                if (*(v8 + v9 + 24))
                {
                  heap_Free(v4[1], *(v8 + v9 + 24));
                  v3 = *a2;
                  v8 = *(*a2 + 16 * v6);
                  *(v8 + v9 + 24) = 0;
                }

                if (*(v8 + v9 + 16))
                {
                  heap_Free(v4[1], *(v8 + v9 + 16));
                  v3 = *a2;
                  v8 = *(*a2 + 16 * v6);
                  *(v8 + v9 + 16) = 0;
                }

                ++v10;
                v9 += 40;
              }

              while (v10 < *(v3 + 16 * v6 + 8));
            }

            heap_Free(v4[1], v8);
            v3 = *a2;
            v11 = *a2 + 16 * v6;
            *v11 = 0;
            *(v11 + 8) = 0;
            v5 = *(a2 + 10);
          }

          ++v6;
        }

        while (v6 < v5);
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
      *(a2 + 10) = 0;
    }
  }

  return result;
}

uint64_t nnEmbeddingReLoad(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, _BOOL4 *a9)
{
  if (*a3)
  {
    result = (*(*a3 + 24))(*a5, a5[1]);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (*a9)
    {
      result = (*(*a3 + 24))(a5[2], a5[3]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    *a3 = 0;
  }

  *a4 = safeh_GetNullHandle();
  a4[1] = v18;
  *a9 = 1;

  return loadEmbedding(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t nnModelReload(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t ***a11)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  memset(v42, 0, sizeof(v42));
  v17 = *a11;
  v40 = -1;
  (*(a9 + 96))(a7, a8, "fecfg", "statbnd_phrase_nn_type_joint", &v41, &v40, &v39);
  (*v41)[strlen(*v41) - 1] = 0;
  v18 = strcmp(*v41, "yes");
  BrokerString = nn_model_getBrokerString(a1, v42, "nnphrase_", 0x100uLL);
  if ((BrokerString & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v23 = fi_init(a2, a3, a5, a6, &v38, 0, v42, "FINN", 1031, 0);
  if ((v23 & 0x80000000) != 0)
  {
    v24 = *(a1 + 32);
    v25 = "load FI model failed";
    goto LABEL_10;
  }

  if (!v17)
  {
    v26 = *(a1 + 8);
    if (v18)
    {
      v27 = heap_Alloc(v26, 16);
      if (v27)
      {
        v17 = v27;
        *v27 = v38;
        goto LABEL_14;
      }
    }

    else
    {
      v33 = heap_Alloc(v26, 8);
      if (v33)
      {
        v17 = v33;
        *v33 = v38;
        goto LABEL_23;
      }
    }

    v23 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v28, v29, v30, v31, v36);
    goto LABEL_25;
  }

  if (!*v17 || (v23 = fi_deinit(a1, a4, *v17), (v23 & 0x80000000) == 0))
  {
    if (*a10 || (v32 = v17[1]) == 0 || (v23 = fi_deinit(a1, a4, v32), (v23 & 0x80000000) == 0))
    {
      *v17 = v38;
      if (!v18)
      {
        goto LABEL_23;
      }

LABEL_14:
      BrokerString = nn_model_getBrokerString(a1, v42, "nnword_", 0x100uLL);
      if ((BrokerString & 0x80000000) == 0)
      {
        v23 = fi_init(a2, a3, a5, a6, &v37, 0, v42, "FINN", 1031, 0);
        if ((v23 & 0x80000000) == 0)
        {
          v17[1] = v37;
LABEL_23:
          *a10 = v18 == 0;
          *a11 = v17;
          goto LABEL_25;
        }

        v24 = *(a1 + 32);
        v25 = "load FI pw model failed";
LABEL_10:
        log_OutText(v24, "FE_PHRASING", 5, 0, v25, v20, v21, v22, v36);
        goto LABEL_25;
      }

LABEL_17:
      v23 = BrokerString;
    }
  }

LABEL_25:
  v34 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t releaseEmbedding(uint64_t a1, uint64_t *a2, void *a3, _DWORD *a4)
{
  if (!*a1)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = (*(*a1 + 24))(*a3, a3[1]);
  if ((v8 & 0x80000000) == 0)
  {
    if (!*a4 || (v8 = (*(*a1 + 24))(a3[2], a3[3]), (v8 & 0x80000000) == 0))
    {
      *a1 = 0;
LABEL_7:
      *a2 = safeh_GetNullHandle();
      a2[1] = v9;
      *a4 = 1;
    }
  }

  return v8;
}

uint64_t releaseFIModel(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v5 = *a4;
  if (!*a4)
  {
    v8 = 0;
    goto LABEL_10;
  }

  if (!*v5)
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_10:
    heap_Free(*(a1 + 8), v5);
    return v8;
  }

  v8 = fi_deinit(a1, a2, *v5);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (a3)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = *(v5 + 8);
  if (!v9)
  {
    goto LABEL_10;
  }

  v8 = fi_deinit(a1, a2, v9);
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  return v8;
}

void *setbndfromTN(void *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    if (*a2)
    {
      v5 = *(a3 + 1072);
      if (*(a3 + 1072))
      {
        v6 = 0;
        v7 = 0;
        v8 = *(a2 + 4);
        v9 = *(a3 + 1064);
        v10 = (v9 + 112);
        v11 = -1;
        do
        {
          if (v7 < v8 && *(*(a2 + 8) + 4 * v7) == *(v10 - 48))
          {
            if (v6)
            {
              v12 = *(*(a2 + 16) + 2 * v7);
              *(v9 + 184 * v11 + 112) = v12 > 2;
              if (v12 == 4)
              {
                *(v9 + 184 * v11 + 100) = 1;
              }
            }

            ++v7;
          }

          else
          {
            *v10 = 0;
          }

          ++v6;
          v10 += 46;
          ++v11;
        }

        while (v5 != v6);
      }

      v13 = *(a2 + 8);
      if (v13)
      {
        heap_Free(v4[1], v13);
      }

      v14 = *(a2 + 16);
      if (v14)
      {
        heap_Free(v4[1], v14);
      }
    }

    v15 = v4[1];

    return heap_Free(v15, a2);
  }

  return result;
}

uint64_t last_POS(uint64_t result, void *a2, unsigned int a3, const char **a4, unsigned int a5)
{
  if (!result)
  {
    return result;
  }

  v6 = 0;
  for (i = *(*(*a2 + 224 * a3 + 16) + 8) + 1; *(i - 1) == 45; ++i)
  {
    v6 = i;
LABEL_7:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(*(*a2 + 224 * a3 + 16) + 8);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a5;
  while (strcmp(*a4, v8))
  {
    ++a4;
    if (!--v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t first_POS(uint64_t a1, void *a2, unsigned int a3, const char **a4, int a5)
{
  LODWORD(v5) = a5;
  v10 = *(a1 + 8);
  v11 = strlen(*(*(*a2 + 224 * a3 + 16) + 8));
  v12 = heap_Alloc(v10, (v11 + 1));
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  for (i = *(*(*a2 + 224 * a3 + 16) + 8); ; ++i)
  {
    v16 = *i;
    if (!*i || v16 == 45)
    {
      break;
    }

    v17 = v14++;
    *(v12 + v17) = v16;
  }

  *(v12 + v14) = 0;
  if (v5)
  {
    v5 = v5;
    while (strcmp(v13, *a4))
    {
      ++a4;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_10:
    v18 = 0;
  }

  heap_Free(*(a1 + 8), v13);
  return v18;
}

uint64_t has_POS(uint64_t a1, void *a2, unsigned int a3, const char **a4, unsigned int a5)
{
  result = 0;
  if (a1 && a5)
  {
    v8 = *(*(*a2 + 224 * a3 + 16) + 8);
    v9 = a5;
    while (!strstr(v8, *a4))
    {
      ++a4;
      if (!--v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t first_character(uint64_t result, void *a2, unsigned int a3, const char **a4, int a5)
{
  if (result)
  {
    LODWORD(v5) = a5;
    utf8_getUTF8Char(**(*a2 + 224 * a3 + 16), 0, __s2);
    if (v5)
    {
      v5 = v5;
      while (strcmp(*a4, __s2))
      {
        ++a4;
        if (!--v5)
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

  return result;
}

uint64_t last_character(uint64_t result, void *a2, unsigned int a3, const char **a4, int a5)
{
  v15 = 0;
  *__s2 = 0;
  if (result)
  {
    LODWORD(v5) = a5;
    v7 = **(*a2 + 224 * a3 + 16);
    v8 = strlen(v7);
    v9 = v8 - utf8_GetCurrentUtf8Offset(v7, v8 - 1);
    v10 = strlen(v7);
    CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v7, v10 - 1);
    if (v9 >= Utf8_LengthInBytes(&v7[CurrentUtf8Offset], 1))
    {
      v12 = strlen(v7);
      v13 = utf8_GetCurrentUtf8Offset(v7, v12 - 1);
      utf8_getUTF8Char(v7, v13, __s2);
    }

    if (v5)
    {
      v5 = v5;
      while (strcmp(*a4, __s2))
      {
        ++a4;
        if (!--v5)
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

  return result;
}

uint64_t initPhrasingRuleStruct(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 10) = a3;
  v4 = heap_Calloc(*(a1 + 8), a3, 16);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 2315264010;
  }
}

uint64_t addPhrasingRule(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = 1;
  for (i = a3; *i == 94; ++i)
  {
    ++v6;
LABEL_6:
    ;
  }

  if (*i)
  {
    goto LABEL_6;
  }

  v8 = heap_Calloc(*(a1 + 8), v6, 40);
  v9 = *a2 + 16 * *(a2 + 8);
  *v9 = v8;
  if (!v8)
  {
    return 2315264010;
  }

  *(v9 + 8) = v6;
  result = parseOneRule(a1, v8, v6, a3);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    ++*(a2 + 8);
  }

  return result;
}

uint64_t parseOneRule(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  for (i = 0; ; ++i)
  {
    v7 = &a4[i];
    if (*v7 == 45 && v7[1] == 45 && v7[2] == 62)
    {
      break;
    }
  }

  *v7 = 0;
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  v9 = a3;
  while (2)
  {
    v10 = a4 - 1;
    do
    {
      v12 = *++v10;
      v11 = v12;
    }

    while (v12 == 32);
    v13 = v10;
    while (v11 != 95)
    {
      v14 = *++v13;
      v11 = v14;
    }

    *v13 = 0;
    v15 = a2 + 40 * v8;
    *(v15 + 8) = atoi(v10);
    do
    {
      v17 = *++v13;
      v16 = v17;
    }

    while (v17 == 32);
    v18 = v13;
    while (v16 != 40)
    {
      v19 = *++v18;
      v16 = v19;
    }

    *v18 = 0;
    if (!strcmp(v13, "last-pos"))
    {
      *v15 = last_POS;
    }

    if (!strcmp(v13, "first-pos"))
    {
      *v15 = first_POS;
    }

    if (!strcmp(v13, "has-pos"))
    {
      *v15 = has_POS;
    }

    if (!strcmp(v13, "first-character"))
    {
      *v15 = first_character;
    }

    if (!strcmp(v13, "last-character"))
    {
      *v15 = last_character;
    }

    *(v15 + 32) = 1;
    do
    {
      v21 = *++v18;
      v20 = v21;
    }

    while (v21 == 32);
    v22 = 0;
    v23 = 1;
    while (v20 == 124)
    {
      *(v15 + 32) = ++v23;
LABEL_35:
      v20 = v18[++v22];
    }

    if (v20 != 41)
    {
      goto LABEL_35;
    }

    v18[v22] = 0;
    v24 = &v18[v22 + 1];
    v25 = heap_Alloc(*(a1 + 8), (v22 + 2));
    *(v15 + 16) = v25;
    if (v25)
    {
      strcpy(v25, v18);
      v26 = heap_Alloc(*(a1 + 8), 8 * *(v15 + 32));
      *(v15 + 24) = v26;
      if (v26)
      {
        *v26 = *(v15 + 16);
        if (*(v15 + 32) >= 2u)
        {
          v27 = 1;
          do
          {
            v28 = (*(v15 + 24) + 8 * v27);
            for (j = *(v28 - 1); ; j = v30 + 1)
            {
              *v28 = j;
              v28 = (*(v15 + 24) + 8 * v27);
              v30 = *v28;
              if (**v28 == 124)
              {
                break;
              }
            }

            *v28 = v30 + 1;
            *v30 = 0;
            ++v27;
          }

          while (v27 < *(v15 + 32));
        }

        while (1)
        {
          v31 = *v24;
          if (!*v24 || v31 == 94)
          {
            break;
          }

          ++v24;
        }

        if (v31 == 94)
        {
          a4 = v24 + 1;
        }

        else
        {
          a4 = v24;
        }

        if (++v8 == v9)
        {
          return 0;
        }

        continue;
      }
    }

    return 2315264010;
  }
}

uint64_t releasePhrasingRuleStruct(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v5 = *(a2 + 10);
    if (*(a2 + 10))
    {
      v6 = 0;
      do
      {
        v7 = *a2;
        v8 = *a2 + 16 * v6;
        v9 = *v8;
        if (*v8)
        {
          if (*(v8 + 8))
          {
            v10 = 0;
            v11 = 0;
            do
            {
              v12 = *(*v8 + v10 + 16);
              if (v12)
              {
                heap_Free(*(a1 + 8), v12);
                v7 = *a2;
              }

              v13 = *(*(v7 + 16 * v6) + v10 + 24);
              if (v13)
              {
                heap_Free(*(a1 + 8), v13);
                v7 = *a2;
              }

              ++v11;
              v8 = v7 + 16 * v6;
              v10 += 40;
            }

            while (v11 < *(v8 + 8));
            v9 = *v8;
          }

          heap_Free(*(a1 + 8), v9);
          v5 = *(a2 + 10);
        }

        ++v6;
      }

      while (v6 < v5);
      v3 = *a2;
    }

    heap_Free(*(a1 + 8), v3);
  }

  *(a2 + 10) = 0;
  *a2 = 0;
  return 0;
}

uint64_t applyRules(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (!*(a4 + 5))
  {
    return 0;
  }

  v8 = 0;
  v9 = *a4;
  while (1)
  {
    v10 = v9 + 16 * v8;
    if (!*(v10 + 8))
    {
      return 1;
    }

    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(a2 + 8);
      v14 = *v10 + 40 * v11;
      v15 = *(v14 + 8) + a3;
      if (v15 >= v13)
      {
        v16 = v9 + 16 * v8;
        v17 = 40 * v11;
        while (++v11 < *(v16 + 8))
        {
          v15 = *(*v16 + v17 + 48) + a3;
          v17 += 40;
          if (v15 < v13)
          {
            v12 = 0;
            v14 = *v16 + v17;
            goto LABEL_10;
          }
        }

        goto LABEL_14;
      }

LABEL_10:
      if ((*v14)(a1, a2, v15, *(v14 + 24), *(v14 + 32)) != 1)
      {
        v12 = 0;
      }

      v9 = *a4;
      ++v11;
      v10 = *a4 + 16 * v8;
    }

    while (v11 < *(v10 + 8));
    if (v12 == 1)
    {
      return 1;
    }

LABEL_14:
    if (++v8 >= *(a4 + 5))
    {
      return 0;
    }
  }
}

uint64_t setPhraseProminences(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setPhraseProminences()", a6, a7, a8, 0);
  v30 = (a1 + 736);
  if (((*(a1 + 744) - 1) & 0x8000) != 0)
  {
LABEL_20:
    v26 = *(a1 + 1108);
    v27 = *(a1 + 1096);

    return printLevel(v26, (a1 + 1088), v27, (a1 + 1104), (a1 + 672), a1 + 8, v30, "AFTER SET PHRASE PROMINENCE");
  }

  else
  {
    v12 = (*(a1 + 744) - 1);
    while (1)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing (phrase) node %d", v9, v10, v11, v12);
      result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, (*(a1 + 736) + 32 * v12), v12);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v14 = *v30;
      v29 = v12;
      v15 = (*v30 + 32 * v12);
      v16 = (v15[1] - 1);
      if (v16 >= *v15)
      {
        v17 = 0;
        v18 = *(a1 + 304);
        do
        {
          v19 = v16;
          if (v18)
          {
            for (i = 0; i < v18; ++i)
            {
              v21 = *(a1 + 672) + 224 * v19;
              v22 = *(v21 + 16);
              if (!strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * *(*(a1 + 296) + 4 * i))), *(v22 + 8 * *(a1 + 26))))
              {
                v23 = v17 == 0;
                v17 = 1;
                if (v23)
                {
                  v24 = 2;
                }

                else
                {
                  v24 = 1;
                }

                if (v23)
                {
                  v25 = "set word[%d] %s to _MAINACCENT";
                }

                else
                {
                  v25 = "set word[%d] %s to _ACCENTED";
                }

                *(v21 + 72) = v24;
                v28 = *(v22 + 8 * *(a1 + 24));
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, v25, v9, v10, v11, v19);
              }

              v18 = *(a1 + 304);
            }

            v14 = *v30;
          }

          v16 = (v19 - 1);
        }

        while (v16 >= *(v14 + 32 * v29));
      }

      v12 = v29 - 1;
      if (v29 < 1)
      {
        goto LABEL_20;
      }
    }
  }

  return result;
}

uint64_t setCompoundProminences(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = 0;
  v49 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setCompoundProminences()", a6, a7, a8, 0);
  if (((*(a1 + 744) - 1) & 0x8000) == 0)
  {
    v12 = (a1 + 672);
    v13 = (*(a1 + 744) - 1);
    memset(v48, 0, sizeof(v48));
    v47 = 0;
    while (1)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing (phrase) node %d", v9, v10, v11, v13);
      matched = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, (*(a1 + 736) + 32 * v13), v13);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      v15 = (*(a1 + 736) + 32 * v13);
      v16 = (v15[1] - 1);
      v17 = *v15;
      if (v16 >= v17)
      {
        break;
      }

LABEL_5:
      v30 = v13-- < 1;
      if (v30)
      {
        return matched;
      }
    }

    while (1)
    {
      v18 = *(*v12 + 224 * v16 + 56);
      if (v18)
      {
        v19 = *(a1 + 32);
        v20 = v18 + 32 * v19;
        if (*(v20 + 4) == 1)
        {
          v21 = *(v20 + 8);
          if (v21 >= v17)
          {
            v22 = *(*(*v12 + 224 * *(v20 + 8) + 56) + 32 * v19 + 16);
            if (*v22 == 78 && v22[1] == 80 && !v22[2])
            {
              break;
            }
          }
        }
      }

LABEL_16:
      v16 = (v16 - 1);
      v17 = *(*(a1 + 736) + 32 * v13);
      if (v16 < v17)
      {
        goto LABEL_5;
      }
    }

    v23 = v16;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  processing (NP phrase) node %d,%d", v9, v10, v11, *(v20 + 8));
    v50 = 0;
    v49 = 0;
    if (v16 < v21)
    {
LABEL_15:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    no rules fire", v24, v25, v26, 0);
      goto LABEL_16;
    }

    v27 = v16;
    while (1)
    {
      v28 = *v12 + 224 * v27;
      v29 = v27 - 1;
      v30 = *(v28 + 72) != 2 || v27 < 1;
      if (!v30 && v23 > v21)
      {
        v32 = *v12 + 224 * (v27 - 1);
        if (*(v32 + 72) == 1)
        {
          v44 = (v27 - 1);
          v45 = v27;
          v33 = *(a1 + 24);
          v43 = *(*(v28 + 16) + 8 * v33);
          v46 = v27 - 1;
          v42 = *(*(v32 + 16) + 8 * v33);
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    found PRM pattern word[%d]=%s PRM=%d word[%d]=%s PRM=%d : apply rules", v24, v25, v26, (v27 - 1));
          *&v48[4] = v27;
          *v48 = 1;
          *&v48[6] = 0;
          if (*(a1 + 320))
          {
            v34 = 0;
            v35 = 0;
            while (1)
            {
              v36 = *(a1 + 312);
              v37 = v35;
              v38 = *(v36 + 24 * v35);
              if (v38)
              {
                matched = matchPANDPCONTEXT_TRule("LEFT", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v38, v48, &v50 + 1, &v47, 1u);
                if ((matched & 0x80000000) != 0)
                {
                  return matched;
                }

                if (HIDWORD(v50) != 1)
                {
                  goto LABEL_46;
                }

                v36 = *(a1 + 312);
              }

              else
              {
                HIDWORD(v50) = 1;
              }

              v39 = *(v36 + 24 * v37 + 8);
              if (v39)
              {
                matched = matchPANDPCONTEXT_TRule("CUR", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v39, v48, &v50, &v47, 0);
                if ((matched & 0x80000000) != 0)
                {
                  return matched;
                }

                if (v50 != 1)
                {
                  goto LABEL_46;
                }

                v36 = *(a1 + 312);
              }

              else
              {
                LODWORD(v50) = 1;
              }

              v25 = *(v36 + 24 * v37 + 16);
              if (!v25)
              {
                v49 = 1;
LABEL_46:
                v29 = v46;
                goto LABEL_47;
              }

              matched = matchPANDPCONTEXT_TRule("RIGHT", (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, v25, v48, &v49, &v47, 2u);
              v29 = v46;
              if ((matched & 0x80000000) != 0)
              {
                return matched;
              }

LABEL_47:
              if (v50 == 0x100000001 && v49 == 1)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  stress shift rule %d FIRED", v24, v25, v26, v34);
                v40 = *(a1 + 672);
                *(v40 + 224 * v45 + 72) = 1;
                *(v40 + 224 * v44 + 72) = 2;
                goto LABEL_16;
              }

              v35 = v37 + 1;
              v34 = (v37 + 1);
              if (v34 >= *(a1 + 320))
              {
                goto LABEL_27;
              }
            }
          }

          v29 = v27 - 1;
        }
      }

LABEL_27:
      v23 = v29;
      v27 = v29;
      if (v29 < v21)
      {
        goto LABEL_15;
      }
    }
  }

  return 0;
}

uint64_t getProminence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = setPhraseProminences(a1, a2, a3, a4, a5, a6, a7, a8);
  if ((result & 0x80000000) == 0)
  {
    result = setCompoundProminences(a1, v10, v11, v12, v13, v14, v15, v16);
    if ((result & 0x80000000) == 0)
    {
      v17 = *(a1 + 1108);
      v18 = *(a1 + 1096);

      return printAsString(v17, (a1 + 1088), v18, (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "FEPHRRES: ");
    }
  }

  return result;
}

uint64_t logPANDPRULE_TRule(uint64_t result, const char **a2, _WORD *a3, char *__s, uint64_t *a5, uint64_t **a6)
{
  if (result)
  {
    if (!*a6 || (result = logPANDPCONTEXT_TRule(a2, a3, __s, a5, *a6), (result & 0x80000000) == 0))
    {
      *__s = 2121504;
      result = add2Str(*a5, a2, a3, __s);
      if ((result & 0x80000000) == 0)
      {
        v11 = a6[1];
        if (!v11 || (result = logPANDPCONTEXT_TRule(a2, a3, __s, a5, v11), (result & 0x80000000) == 0))
        {
          *__s = 2121504;
          result = add2Str(*a5, a2, a3, __s);
          if ((result & 0x80000000) == 0)
          {
            v12 = a6[2];
            if (v12)
            {

              return logPANDPCONTEXT_TRule(a2, a3, __s, a5, v12);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t logPANDPCONTEXT_TRule(const char **a1, _WORD *a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  if (*(a5 + 4))
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *a5;
      v13 = (*a5 + v10);
      if (*(v13 + 4))
      {
        break;
      }

LABEL_17:
      result = add2Str(*a4, a1, a2, "[");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(*a4, a1, a2, (a4[66] + *(a4[67] + 4 * *(a4[8] + 8 * *v13 + 4))));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      sprintf(__s, " %d(", *(v12 + v10 + 2));
      result = add2Str(*a4, a1, a2, __s);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(*a4, a1, a2, (a4[61] + *(a4[62] + 4 * *(v12 + v10 + 2))));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(*a4, a1, a2, ")] ");
LABEL_22:
      if ((result & 0x80000000) == 0)
      {
        ++v11;
        v10 += 6;
        if (v11 < *(a5 + 4))
        {
          continue;
        }
      }

      return result;
    }

    if (v13[2])
    {
      *__s = 33;
    }

    else
    {
      if ((v13[2] & 2) != 0)
      {
        v14 = 0;
        strcpy(__s, "HASCOMMA ");
        goto LABEL_15;
      }

      if ((v13[2] & 4) != 0)
      {
        v14 = 0;
        strcpy(__s, "DIRECTIVE_MOVE2NEXT ");
        goto LABEL_15;
      }

      if ((v13[2] & 8) != 0)
      {
        v14 = 0;
        strcpy(__s, "ISLASTINPHR ");
        goto LABEL_15;
      }

      if ((v13[2] & 0x10) != 0)
      {
        v14 = 0;
        strcpy(__s, "ISFIRSTINPHR ");
LABEL_15:
        result = add2Str(*a4, a1, a2, __s);
        if (!v14 || (result & 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }
    }

    v14 = 1;
    goto LABEL_15;
  }

  return 0;
}

void *freePANDPRULE_TRule(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2)
  {
    if (*(v4 + 8))
    {
      heap_Free(result[1], *v4);
      *v4 = 0;
      v4 = *a2;
    }

    result = heap_Free(v3[1], v4);
    *a2 = 0;
  }

  v5 = a2[1];
  if (v5)
  {
    if (*(v5 + 8))
    {
      heap_Free(v3[1], *v5);
      *v5 = 0;
      v5 = a2[1];
    }

    result = heap_Free(v3[1], v5);
    a2[1] = 0;
  }

  v6 = a2[2];
  if (v6)
  {
    if (*(v6 + 8))
    {
      heap_Free(v3[1], *v6);
      *v6 = 0;
      v6 = a2[2];
    }

    result = heap_Free(v3[1], v6);
    a2[2] = 0;
  }

  return result;
}

uint64_t freePandPRules(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = a1[62];
  if (v10)
  {
    heap_Free(*(v9 + 8), v10);
    a1[62] = 0;
  }

  v11 = a1[64];
  if (v11)
  {
    v12 = ssftriff_reader_ReleaseChunkData(v11, v10, a3, a4, a5, a6, a7, a8);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    a1[64] = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[67];
  if (v13)
  {
    heap_Free(*(v9 + 8), v13);
    a1[67] = 0;
  }

  v14 = a1[69];
  if (v14)
  {
    v12 = ssftriff_reader_ReleaseChunkData(v14, v13, a3, a4, a5, a6, a7, a8);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    a1[69] = 0;
  }

  v15 = a1[57];
  if (v15)
  {
    heap_Free(*(v9 + 8), v15);
    a1[57] = 0;
  }

  v16 = a1[59];
  if (v16)
  {
    v12 = ssftriff_reader_ReleaseChunkData(v16, v15, a3, a4, a5, a6, a7, a8);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    a1[59] = 0;
  }

  v17 = a1[8];
  if (v17)
  {
    heap_Free(*(v9 + 8), v17);
    a1[8] = 0;
    *(a1 + 36) = 0;
  }

  if (*(a1 + 44))
  {
    v18 = 0;
    v19 = 8;
    do
    {
      freePANDPRULE_TRule(v9, (a1[10] + v19));
      ++v18;
      v19 += 32;
    }

    while (v18 < *(a1 + 44));
  }

  v20 = a1[10];
  if (v20)
  {
    heap_Free(*(v9 + 8), v20);
    a1[10] = 0;
  }

  *(a1 + 44) = 0;
  if (*(a1 + 52))
  {
    v21 = 0;
    v22 = 8;
    do
    {
      freePANDPRULE_TRule(v9, (a1[12] + v22));
      ++v21;
      v22 += 32;
    }

    while (v21 < *(a1 + 52));
  }

  v23 = a1[12];
  if (v23)
  {
    heap_Free(*(v9 + 8), v23);
    a1[12] = 0;
  }

  *(a1 + 52) = 0;
  if (*(a1 + 60))
  {
    v24 = 0;
    v25 = 8;
    do
    {
      freePANDPRULE_TRule(v9, (a1[14] + v25));
      ++v24;
      v25 += 32;
    }

    while (v24 < *(a1 + 60));
  }

  v26 = a1[14];
  if (v26)
  {
    heap_Free(*(v9 + 8), v26);
    a1[14] = 0;
  }

  *(a1 + 60) = 0;
  if (*(a1 + 72))
  {
    v27 = 0;
    do
    {
      heap_Free(*(v9 + 8), *(a1[16] + 8 * v27));
      *(a1[16] + 8 * v27++) = 0;
    }

    while (v27 < *(a1 + 72));
  }

  *(a1 + 72) = 0;
  v28 = a1[17];
  if (v28)
  {
    heap_Free(*(v9 + 8), v28);
    a1[17] = 0;
  }

  v29 = a1[16];
  if (v29)
  {
    heap_Free(*(v9 + 8), v29);
    a1[16] = 0;
  }

  if (*(a1 + 80))
  {
    v30 = 0;
    v31 = 8;
    do
    {
      freePANDPRULE_TRule(v9, (a1[19] + v31));
      ++v30;
      v31 += 32;
    }

    while (v30 < *(a1 + 80));
  }

  v32 = a1[19];
  if (v32)
  {
    heap_Free(*(v9 + 8), v32);
    a1[19] = 0;
  }

  *(a1 + 80) = 0;
  if (*(a1 + 92))
  {
    v33 = 0;
    v34 = a1[22];
    do
    {
      freePANDPRULE_TRule(v9, *(v34 + 40 * v33));
      v35 = a1[22];
      v36 = *(v35 + 40 * v33);
      if (v36)
      {
        heap_Free(*(v9 + 8), v36);
        v35 = a1[22];
        *(v35 + 40 * v33) = 0;
      }

      if (*(v35 + 40 * v33 + 16))
      {
        v37 = 0;
        v38 = 8;
        do
        {
          freePANDPRULE_TRule(v9, (*(v35 + 40 * v33 + 8) + v38));
          ++v37;
          v35 = a1[22];
          v38 += 32;
        }

        while (v37 < *(v35 + 40 * v33 + 16));
      }

      freePANDPRULE_TRule(v9, (*(v35 + 40 * v33 + 8) + 8));
      v34 = a1[22];
      if (*(v34 + 40 * v33 + 8))
      {
        heap_Free(*(v9 + 8), *(v34 + 40 * v33 + 8));
        v34 = a1[22];
        *(v34 + 40 * v33 + 8) = 0;
      }

      v39 = v34 + 40 * v33;
      *(v39 + 16) = 0;
      if (*(v39 + 32))
      {
        v40 = 0;
        v41 = 0;
        do
        {
          freePANDPRULE_TRule(v9, (*(v34 + 40 * v33 + 24) + v40));
          ++v41;
          v34 = a1[22];
          v40 += 32;
        }

        while (v41 < *(v34 + 40 * v33 + 32));
      }

      if (*(v34 + 40 * v33 + 24))
      {
        heap_Free(*(v9 + 8), *(v34 + 40 * v33 + 24));
        v34 = a1[22];
        *(v34 + 40 * v33 + 24) = 0;
      }

      *(v34 + 40 * v33++ + 32) = 0;
    }

    while (v33 < *(a1 + 92));
  }

  else
  {
    v34 = a1[22];
    if (!v34)
    {
      goto LABEL_64;
    }
  }

  heap_Free(*(v9 + 8), v34);
  a1[22] = 0;
LABEL_64:
  *(a1 + 92) = 0;
  v42 = a1[25];
  if (v42)
  {
    heap_Free(*(v9 + 8), v42);
    a1[25] = 0;
  }

  *(a1 + 104) = 0;
  v43 = a1[28];
  if (v43)
  {
    heap_Free(*(v9 + 8), v43);
    a1[28] = 0;
  }

  *(a1 + 116) = 0;
  v44 = a1[30];
  if (v44)
  {
    heap_Free(*(v9 + 8), v44);
    a1[30] = 0;
  }

  *(a1 + 124) = 0;
  if (*(a1 + 132))
  {
    v45 = 0;
    v46 = 8;
    do
    {
      freePANDPRULE_TRule(v9, (a1[32] + v46));
      ++v45;
      v46 += 32;
    }

    while (v45 < *(a1 + 132));
  }

  *(a1 + 132) = 0;
  v47 = a1[32];
  if (v47)
  {
    heap_Free(*(v9 + 8), v47);
    a1[32] = 0;
  }

  v48 = a1[34];
  if (v48)
  {
    heap_Free(*(v9 + 8), v48);
    a1[34] = 0;
  }

  *(a1 + 140) = 0;
  v49 = a1[4];
  if (v49)
  {
    heap_Free(*(v9 + 8), v49);
    a1[4] = 0;
  }

  *(a1 + 20) = 0;
  v50 = a1[6];
  if (v50)
  {
    heap_Free(*(v9 + 8), v50);
    a1[6] = 0;
  }

  *(a1 + 28) = 0;
  v51 = a1[36];
  if (v51)
  {
    heap_Free(*(v9 + 8), v51);
    a1[36] = 0;
  }

  v52 = a1[38];
  if (v52)
  {
    if (*(a1 + 156))
    {
      v53 = 0;
      v54 = 0;
      do
      {
        freePANDPRULE_TRule(v9, (a1[38] + v53));
        ++v54;
        v53 += 24;
      }

      while (v54 < *(a1 + 156));
      v52 = a1[38];
    }

    *(a1 + 156) = 0;
    heap_Free(*(v9 + 8), v52);
    a1[38] = 0;
  }

  if (*(a1 + 160))
  {
    v55 = 0;
    v56 = a1[42];
    do
    {
      v57 = (v56 + 16 * v55);
      if (*v57)
      {
        v58 = 0;
        v59 = 0;
        do
        {
          freePANDPRULE_TRule(v9, (*(v56 + 16 * v55 + 8) + v58));
          ++v59;
          v56 = a1[42];
          v58 += 24;
        }

        while (v59 < *(v56 + 16 * v55));
        v57 = (v56 + 16 * v55);
      }

      *v57 = 0;
      heap_Free(*(v9 + 8), *(v56 + 16 * v55 + 8));
      v56 = a1[42];
      *(v56 + 16 * v55++ + 8) = 0;
    }

    while (v55 < *(a1 + 160));
    goto LABEL_98;
  }

  v56 = a1[42];
  if (v56)
  {
LABEL_98:
    heap_Free(*(v9 + 8), v56);
    a1[42] = 0;
  }

  v60 = a1[41];
  if (v60)
  {
    heap_Free(*(v9 + 8), v60);
    a1[41] = 0;
  }

  *(a1 + 160) = 0;
  if (*(a1 + 292))
  {
    v61 = 0;
    do
    {
      heap_Free(*(v9 + 8), *(a1[71] + 8 * v61));
      *(a1[71] + 8 * v61++) = 0;
    }

    while (v61 < *(a1 + 292));
  }

  v62 = a1[72];
  if (v62)
  {
    heap_Free(*(v9 + 8), v62);
    a1[72] = 0;
  }

  v63 = a1[71];
  if (v63)
  {
    heap_Free(*(v9 + 8), v63);
    a1[71] = 0;
  }

  *(a1 + 292) = 0;
  if (*(a1 + 304))
  {
    v64 = 0;
    do
    {
      heap_Free(*(v9 + 8), *(a1[74] + 8 * v64));
      *(a1[74] + 8 * v64++) = 0;
    }

    while (v64 < *(a1 + 304));
  }

  v65 = a1[75];
  if (v65)
  {
    heap_Free(*(v9 + 8), v65);
    a1[75] = 0;
  }

  v66 = a1[74];
  if (v66)
  {
    heap_Free(*(v9 + 8), v66);
    a1[74] = 0;
  }

  *(a1 + 304) = 0;
  if (*(a1 + 316))
  {
    v67 = 0;
    do
    {
      heap_Free(*(v9 + 8), *(a1[77] + 8 * v67));
      *(a1[77] + 8 * v67++) = 0;
    }

    while (v67 < *(a1 + 316));
  }

  v68 = a1[78];
  if (v68)
  {
    heap_Free(*(v9 + 8), v68);
    a1[78] = 0;
  }

  v69 = a1[77];
  if (v69)
  {
    heap_Free(*(v9 + 8), v69);
    a1[77] = 0;
  }

  *(a1 + 316) = 0;
  if (*(a1 + 180))
  {
    v70 = 0;
    do
    {
      heap_Free(*(v9 + 8), *(a1[43] + 8 * v70));
      *(a1[43] + 8 * v70++) = 0;
    }

    while (v70 < *(a1 + 180));
  }

  v71 = a1[44];
  if (v71)
  {
    heap_Free(*(v9 + 8), v71);
    a1[44] = 0;
  }

  v72 = a1[43];
  if (v72)
  {
    heap_Free(*(v9 + 8), v72);
    a1[43] = 0;
  }

  *(a1 + 180) = 0;
  v73 = a1[81];
  if (v73)
  {
    heap_Free(*(v9 + 8), v73);
    a1[81] = 0;
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(a1[53], a1[54], NullHandle, v75))
  {
    nuance_pcre_DeInit(a1[53], a1[54]);
    nuance_pcre_ObjClose(a1[53], a1[54]);
  }

  bzero(a1, 0x298uLL);
  return v12;
}

uint64_t do_pcre_exec(uint64_t a1, unsigned int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3 || (v9 = a6, a7 = a5, a6 = a4, a5 >= a4))
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "invalid arg for regex", a6, a7, a8, 0);
    v11 = 2315264007;
    goto LABEL_14;
  }

  *v9 = 0;
  v10 = nuance_pcre_exec(*(a1 + 424), *(a1 + 432), *(a1 + 448) + *(*(a1 + 456) + 4 * a2), 0, a3, a4, a5, 0, v23, 30);
  if ((v10 & 0x80000000) == 0)
  {
    if (v10)
    {
      v11 = 0;
      *v9 = 1;
      goto LABEL_14;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_14;
  }

  v12 = nuance_pcre_ErrorToLhError(v10);
  v11 = v12;
  if (v12 >> 20 != 2213)
  {
    goto LABEL_14;
  }

  if ((v12 & 0x1FFF) == 0x14)
  {
    goto LABEL_11;
  }

  if ((v12 & 0x1FFF) == 0xA)
  {
    v17 = *(*a1 + 32);
    v18 = 11002;
    v19 = 0;
  }

  else
  {
    v17 = *(*a1 + 32);
    v22 = "lhError";
    v19 = "%s%x";
    v18 = 11027;
  }

  log_OutPublic(v17, "FE_PHRASING", v18, v19, v13, v14, v15, v16, v22);
LABEL_14:
  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t getCompoundAccent(uint64_t a1, char *__s, _DWORD *a3, _WORD *a4, _WORD *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v13 = 2315264007;
    goto LABEL_13;
  }

  *a3 = 0;
  v10 = *(a1 + 648);
  v11 = strlen(__s);
  v12 = nuance_pcre_exec(*(a1 + 424), *(a1 + 432), v10, 0, __s, v11, 0, 0, &v25, 30);
  if ((v12 & 0x80000000) == 0)
  {
    if (v12)
    {
      v13 = 0;
      *a3 = 1;
      *a4 = v25 + 1;
      *a5 = v26 - 1;
      goto LABEL_13;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_13;
  }

  v14 = nuance_pcre_ErrorToLhError(v12);
  v13 = v14;
  if (v14 >> 20 != 2213)
  {
    goto LABEL_13;
  }

  if ((v14 & 0x1FFF) == 0x14)
  {
    goto LABEL_10;
  }

  if ((v14 & 0x1FFF) == 0xA)
  {
    v19 = *(*a1 + 32);
    v20 = 11002;
    v21 = 0;
  }

  else
  {
    v19 = *(*a1 + 32);
    v24 = "lhError";
    v21 = "%s%x";
    v20 = 11027;
  }

  log_OutPublic(v19, "FE_PHRASING", v20, v21, v15, v16, v17, v18, v24);
LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t matchPANDPCONTEXT_TRule(uint64_t a1, const char **a2, _WORD *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, uint64_t a10, unsigned int a11)
{
  v26 = 1;
  *a9 = 0;
  *(a8 + 6) = 0;
  if (*(a5 + 8))
  {
    matched = logPANDPCONTEXT_TRule(a2, a3, __s, a5, a7);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v25 = *a2;
    log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "         %s %s", v17, v18, v19, a1);
    **a2 = 0;
  }

  else
  {
    matched = 0;
  }

  if (*(a7 + 8))
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      matched = matchREGEX_TRule(a5, a6, (*a7 + v21), a8, &v26, a10, a11, a8);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v23 = v26;
      if (v26 != 1)
      {
        goto LABEL_11;
      }

      ++v22;
      v21 += 6;
      if (v22 >= *(a7 + 8))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v23 = 1;
LABEL_11:
    *a9 = v23;
  }

  return matched;
}

uint64_t matchREGEX_TRule(unsigned __int16 *a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v10 = a5;
  v51 = 0;
  v15 = a4[2];
  v50 = a4[2];
  *a5 = 0;
  if (a1[4])
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           regex %d", a6, a7, a8, a3[1]);
  }

  v16 = *(a3 + 4);
  if (*(a3 + 4))
  {
    if ((v16 & 4) != 0)
    {
      if (v8 == 2)
      {
        ++a4[4];
      }

      else if (v8 == 1)
      {
        ++a4[3];
      }

      if (a1[4])
      {
        v43 = a4[4];
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           DIRECTIVE_MOVE2NEXT - window increased (ruleDef->left_window=%d ruleDef->right_window=%d)", a6, a7, a8, a4[3]);
      }

      v22 = 0;
      goto LABEL_29;
    }

    v49 = v10;
    v17 = a6;
    v18 = (v16 >> 1) & 1;
    v19 = (v16 >> 3) & 1;
    v20 = (v16 >> 4) & 1;
    v48 = v16 & 1;
  }

  else
  {
    v49 = v10;
    v17 = a6;
    v48 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  if (a1[4] >= 2u)
  {
    v47 = *(a1 + 66) + *(*(a1 + 67) + 4 * *(*(a1 + 8) + 8 * *a3 + 4));
    v45 = a4[3];
    v46 = a4[4];
    v44 = a4[2];
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d bHasComma=%d", a6, a7, a8, DOMAIN2STRING[*a4]);
  }

  if (v18)
  {
    v21 = a4[2];
    if (a1[4])
    {
      v40 = *(*a2 + 224 * a4[2] + 28);
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bHasComma = %d", a6, a7, a8, a4[2]);
      v21 = a4[2];
    }

    v10 = v49;
    v22 = 0;
    v23 = *(*a2 + 224 * v21 + 28);
LABEL_24:
    v26 = v48 ^ (v23 == 1);
LABEL_30:
    *v10 = v26;
    return v22;
  }

  if (v19)
  {
    v24 = a4[2];
    if (a1[4])
    {
      v41 = *(*a2 + 224 * a4[2] + 40);
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bIsLastInPhr = %d", a6, a7, a8, a4[2]);
      v24 = a4[2];
    }

    v10 = v49;
    v22 = 0;
    v23 = *(*a2 + 224 * v24 + 40);
    goto LABEL_24;
  }

  if (v20)
  {
    v25 = a4[2];
    if (a1[4])
    {
      v42 = *(*a2 + 224 * a4[2] + 44);
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bIsFirstInPhr = %d", a6, a7, a8, a4[2]);
      v25 = a4[2];
    }

    v10 = v49;
    v22 = 0;
    v23 = *(*a2 + 224 * v25 + 44);
    goto LABEL_24;
  }

  v28 = *a4;
  v29 = v17;
  if ((*a4 - 1) <= 2)
  {
    v10 = v49;
    switch(v8)
    {
      case 0:
        goto LABEL_39;
      case 2:
        v15 += a4[4] + 1;
        if (v15 < *(a2 + 8))
        {
LABEL_37:
          v50 = v15;
          goto LABEL_39;
        }

        break;
      case 1:
        v15 += ~a4[3];
        if (v15 >= 0)
        {
          goto LABEL_37;
        }

        break;
    }

    v26 = a1[4];
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           context not found. rule not applicable. RETURN LH_FALSE", a6, a7, a8, 0);
      v26 = 0;
    }

    goto LABEL_61;
  }

  v10 = v49;
LABEL_39:
  if (v28 <= 2)
  {
    if (v28 == 1)
    {
      v30 = *(*(*a2 + 224 * v15 + 16) + 8 * *a3);
      goto LABEL_64;
    }

    if (v28 == 2)
    {
      v30 = *(*(*a2 + 224 * v15 + 56) + 32 * *a3 + 16);
      goto LABEL_64;
    }

    goto LABEL_57;
  }

  if (v28 == 3)
  {
    if (*a3 == a1[9])
    {
      v30 = (*(a2 + 16) + *(*(a2 + 24) + 2 * v15));
    }

    else
    {
      v30 = *(*(*a2 + 224 * v15 + 16) + 8 * *a3);
    }

LABEL_64:
    v32 = a1[4];
    if (v30)
    {
      goto LABEL_65;
    }

LABEL_69:
    *v10 = 0;
    if (!v32)
    {
      v22 = 0;
      goto LABEL_80;
    }

    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           NULL STR FOUND - no match", a6, a7, a8, 0);
    v22 = 0;
    goto LABEL_71;
  }

  if (v28 != 4)
  {
    if (v28 == 5)
    {
      if (*a3 == a1[9])
      {
        v30 = *(a2 + 16);
      }

      else
      {
        v30 = *(a2 + 32);
      }

      goto LABEL_64;
    }

LABEL_57:
    v32 = a1[4];
    goto LABEL_69;
  }

  v31 = adjustWordIdxByWindow(a1, a2, a4, v8, &v51, &v50, a7, a8);
  if ((v31 & 0x80000000) != 0)
  {
    return v31;
  }

  v26 = v51;
  if (!v51)
  {
LABEL_61:
    v22 = 0;
    goto LABEL_30;
  }

  v30 = *(*(*a2 + 224 * v50 + 64) + 8 * *a3);
  v32 = a1[4];
  if (!v30)
  {
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           NULL STR FOUND - no match", a6, a7, a8, 0);
      v32 = a1[4];
    }

    v22 = 0;
    *v10 = 0;
LABEL_77:
    if (v32)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           REGEX FAILED", a6, a7, a8, 0);
    }

LABEL_80:
    if (!v48)
    {
      v26 = a1[4];
      if (!a1[4])
      {
        goto LABEL_30;
      }

      v36 = *(*a1 + 32);
      v37 = "           return LH_FALSE";
      goto LABEL_85;
    }

    *v29 = a3[1];
    if (a1[4])
    {
      v38 = *(*a1 + 32);
      v39 = "           negate match - return LH_TRUE";
LABEL_88:
      log_OutText(v38, "FE_PHRASING", 5, 0, v39, a6, a7, a8, 0);
    }

LABEL_29:
    v26 = 1;
    goto LABEL_30;
  }

LABEL_65:
  if (v32)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           STR=%s", a6, a7, a8, v30);
  }

  v33 = strlen(v30);
  v22 = do_pcre_exec(a1, a3[1], v30, v33, 0, v10, v34, v35);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_71:
    v32 = a1[4];
    if (*v10 == 1)
    {
      if (a1[4])
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           REGEX FIRED", a6, a7, a8, 0);
      }

      if (v48)
      {
        v26 = a1[4];
        if (!a1[4])
        {
          goto LABEL_30;
        }

        v36 = *(*a1 + 32);
        v37 = "           negate match - return LH_FALSE";
LABEL_85:
        log_OutText(v36, "FE_PHRASING", 5, 0, v37, a6, a7, a8, 0);
        v26 = 0;
        goto LABEL_30;
      }

      *v29 = a3[1];
      if (a1[4])
      {
        v38 = *(*a1 + 32);
        v39 = "           return LH_TRUE";
        goto LABEL_88;
      }

      goto LABEL_29;
    }

    goto LABEL_77;
  }

  return v22;
}

uint64_t matchPANDPRULE_TRule(uint64_t a1, const char **a2, _WORD *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  v25 = 1;
  if (*(a5 + 8))
  {
    matched = logPANDPRULE_TRule(a1, a2, a3, __s, a5, a7);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "       <%s>", v16, v17, v18, *a2);
    **a2 = 0;
  }

  else
  {
    matched = 0;
  }

  *a9 = 0;
  if (*a7)
  {
    matched = matchPANDPCONTEXT_TRule("LEFT", a2, a3, __s, a5, a6, *a7, a8, &v25, v24, 1u);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
      goto LABEL_15;
    }
  }

  v21 = *(a7 + 8);
  if (v21)
  {
    v25 = 0;
    matched = matchPANDPCONTEXT_TRule("CUR", a2, a3, __s, a5, a6, v21, a8, &v25, v24, 0);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
LABEL_15:
      *a9 = v20;
      return matched;
    }
  }

  v22 = *(a7 + 16);
  if (!v22)
  {
    v20 = 1;
    goto LABEL_15;
  }

  v25 = 0;
  matched = matchPANDPCONTEXT_TRule("RIGHT", a2, a3, __s, a5, a6, v22, a8, &v25, v24, 2u);
  if ((matched & 0x80000000) == 0)
  {
    v20 = v25;
    goto LABEL_15;
  }

  return matched;
}

uint64_t matchMAPSTRSTR_TRule(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0;
  if (*(a1 + 8))
  {
    v17 = *(*(*a2 + 224 * *(a4 + 4) + 16) + 8 * *(a1 + 16));
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           compare %s %s", a6, a7, a8, *(a1 + 528) + *(*(a1 + 536) + 4 * *a3));
  }

  if (!strcmp((*(a1 + 528) + *(*(a1 + 536) + 4 * *a3)), *(*(*a2 + 224 * *(a4 + 4) + 16) + 8 * *(a1 + 16))))
  {
    if (*(a1 + 8))
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           FOUND", v13, v14, v15, 0);
    }

    *a5 = 1;
  }

  return 0;
}

uint64_t matchMMAPREGEX2NUM_TRule(unsigned __int16 *a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, int *a5, unsigned __int16 *a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0;
  matched = matchREGEX_TRule(a1, a2, a3, a4, a5, v13, 0, a8);
  if ((matched & 0x80000000) == 0 && *a5 == 1)
  {
    FLOATSUR_PLUS(a6, a6, a3 + 3);
  }

  return matched;
}

uint64_t matchMAPRULE2NUMANDOPERATOR_TRule(uint64_t a1, const char **a2, _WORD *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, unsigned __int16 *a10)
{
  *a9 = 0;
  matched = matchPANDPRULE_TRule(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if ((matched & 0x80000000) == 0 && *a9 == 1)
  {
    getVal(a10, (a7 + 24), (a7 + 28));
  }

  return matched;
}

unsigned __int16 *getVal(unsigned __int16 *result, int *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  if (*a2 > 1)
  {
    if (v3 == 2)
    {
      return FLOATSUR_MINUS_INT(result, result, 1u, 0);
    }

    else if (v3 == 3)
    {
      return FLOATSUR_MINUS(result, result, a3);
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      return FLOATSUR_PLUS(result, result, a3);
    }
  }

  else
  {
    return FLOATSUR_PLUS_INT(result, result, 1u, 0);
  }

  return result;
}

uint64_t matchMAPRULE2NUM_TRule(uint64_t a1, const char **a2, _WORD *a3, char *a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, int *a9, _DWORD *a10)
{
  *a9 = 0;
  result = matchPANDPRULE_TRule(a1, a2, a3, a4, a5, a6, (a7 + 2), a8, a9);
  if ((result & 0x80000000) == 0 && *a9 == 1)
  {
    *a10 = *a7;
  }

  return result;
}

unsigned __int16 *matchMAPNUMNUM_TRule(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  *a3 = 0;
  result = FLOATSUR_EQUAL((a1 + 4), a2);
  if (result)
  {
    *a3 = 1;

    return getVal(a2, a1, (a1 + 8));
  }

  return result;
}

uint64_t setParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  __s1 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "pandpdetailtrace", &v18) & 0x80000000) == 0)
  {
    *(a5 + 8) = v18;
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdweakbnd", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 368), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdbndvalweak", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 372), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdbndvalstrong", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 376), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpthresholdweakfrag", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 380), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpprevfactor", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 384), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpnextfactor", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 388), v18, 0);
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "pandpbndfactor", &v18) & 0x80000000) == 0)
  {
    FLOATSUR_SET_INT((a5 + 392), v18, 0);
  }

  if ((paramc_ParamGetStr(*(a1 + 40), "pandpphrasesize", &__s1) & 0x80000000) == 0)
  {
    v10 = __s1;
    if (!strcmp(__s1, "min"))
    {
      FLOATSUR_SET_INT((a5 + 372), 0, 0);
      FLOATSUR_SET_INT((a5 + 380), 0, 0);
    }

    else if (!strcmp(v10, "default"))
    {
      FLOATSUR_SET((a5 + 368), (a5 + 396));
      FLOATSUR_SET((a5 + 372), (a5 + 400));
      FLOATSUR_SET((a5 + 376), (a5 + 404));
      FLOATSUR_SET((a5 + 380), (a5 + 408));
      FLOATSUR_SET((a5 + 384), (a5 + 412));
      FLOATSUR_SET((a5 + 388), (a5 + 416));
      FLOATSUR_SET((a5 + 392), (a5 + 420));
    }
  }

  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v11 = (*(a4 + 96))(a2, a3, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v11 & 0x80000000) == 0)
  {
    if (*&__c[1] != 1 || !*&__c[3])
    {
      goto LABEL_29;
    }

    v12 = **&__c[3];
    v13 = strchr(**&__c[3], __c[0]);
    if (v13)
    {
      *v13 = 0;
      v12 = **&__c[3];
    }

    if (!strcmp("yes", v12) || !strcmp("YES", v12))
    {
      if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v18) & 0x80000000) != 0)
      {
        *(a5 + 656) = 1;
        v14 = *(a1 + 40);
        v15 = 1;
        goto LABEL_36;
      }
    }

    else
    {
LABEL_29:
      if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v18) & 0x80000000) != 0)
      {
        *(a5 + 656) = 0;
        v14 = *(a1 + 40);
        v15 = 0;
LABEL_36:
        paramc_ParamSetInt(v14, "statcompwidescope", v15);
        return v11;
      }
    }

    if (v18)
    {
      *(a5 + 656) = 1;
    }

    else
    {
      *(a5 + 656) = 0;
    }
  }

  return v11;
}

uint64_t readPandPRules(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v150 = *MEMORY[0x1E69E9840];
  v148 = 0;
  v147 = 0;
  v145 = 0;
  v146 = 0;
  v143 = 0;
  v144 = 0;
  memset(v149, 0, sizeof(v149));
  __s1 = 0;
  *a4 = a3;
  if ((paramc_ParamGetStr(*(a3 + 40), "basicclcprosody", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
  {
    goto LABEL_171;
  }

  log_OutText(*(a3 + 32), "FE_PHRASING", 5, 0, "trying to load voice-dependent PandP rules", v8, v9, v10, 0);
  BrokerString = getBrokerString(a3, 1, v149);
  if ((BrokerString & 0x80000000) != 0)
  {
    goto LABEL_106;
  }

  if ((brk_DataOpenEx(*(a3 + 24), v149, 1, &v143) & 0x80000000) != 0)
  {
    log_OutText(*(a3 + 32), "FE_PHRASING", 5, 0, "trying to load legacy voice-dependent PandP MS rules", v12, v13, v14, 0);
    BrokerString = getLegacyBrokerString(a3, v149);
    if ((BrokerString & 0x80000000) != 0)
    {
      goto LABEL_106;
    }

    if ((brk_DataOpenEx(*(a3 + 24), v149, 1, &v143) & 0x80000000) != 0)
    {
LABEL_171:
      log_OutText(*(a3 + 32), "FE_PHRASING", 5, 0, "trying to load voice-independent PandP rules", v8, v9, v10, 0);
      BrokerString = getBrokerString(a3, 0, v149);
      if ((BrokerString & 0x80000000) != 0)
      {
        goto LABEL_106;
      }

      BrokerString = brk_DataOpenEx(*(a3 + 24), v149, 1, &v143);
      if ((BrokerString & 0x80000000) != 0)
      {
        goto LABEL_106;
      }
    }
  }

  BrokerString = brk_DataClose(*(a3 + 24), v143);
  if ((BrokerString & 0x80000000) != 0 || (BrokerString = ssftriff_reader_ObjOpen(a1, a2, 0, v149, "PANP", 1031, &v148), (BrokerString & 0x80000000) != 0))
  {
LABEL_106:
    v22 = BrokerString;
    goto LABEL_107;
  }

  do
  {
    LODWORD(v22) = ssftriff_reader_OpenChunk(v148, &v146, &v145, &v144, v15, v16, v17, v18);
    if ((v22 & 0x80000000) != 0)
    {
      break;
    }

    if (v146 ^ 0x47494643 | v147)
    {
      if (!(v146 ^ 0x45535453 | v147))
      {
        v25 = v144;
        v26 = *v144;
        *(a4 + 40) = v26;
        v27 = heap_Calloc(*(*a4 + 8), 1, (8 * v26) | 1);
        *(a4 + 32) = v27;
        if (!v27)
        {
          goto LABEL_163;
        }

        if (*(a4 + 40))
        {
          v32 = 0;
          v33 = 0;
          v34 = 2;
          do
          {
            *(*(a4 + 32) + v32) = *(v25 + v34);
            v35 = v34 + 4;
            *(*(a4 + 32) + v32 + 4) = *(v25 + v35);
            v34 = v35 + 4;
            ++v33;
            v32 += 8;
          }

          while (v33 < *(a4 + 40));
        }

        goto LABEL_65;
      }

      if (!(v146 ^ 0x44554150 | v147))
      {
        v36 = v144;
        v37 = *v144;
        *(a4 + 56) = v37;
        v38 = heap_Calloc(*(*a4 + 8), 1, (8 * v37) | 1);
        *(a4 + 48) = v38;
        if (!v38)
        {
          goto LABEL_163;
        }

        if (*(a4 + 56))
        {
          v39 = 0;
          v40 = 0;
          v41 = (v36 + 4);
          do
          {
            v42 = *(a4 + 48) + v39;
            *v42 = *(v41 - 3);
            v43 = *(v41 - 1);
            v44 = *v41;
            v41 += 4;
            FLOATSUR_SET_INT((v42 + 4), v43, v44);
            ++v40;
            v39 += 8;
          }

          while (v40 < *(a4 + 56));
        }

        goto LABEL_65;
      }

      if (!(v146 ^ 0x4D464544 | v147))
      {
        v45 = v144;
        v46 = *v144;
        *(a4 + 72) = v46;
        *(a4 + 74) = v45[1];
        v47 = heap_Calloc(*(*a4 + 8), 1, (8 * v46) | 1);
        *(a4 + 64) = v47;
        if (!v47)
        {
          goto LABEL_163;
        }

        if (*(a4 + 74))
        {
          v48 = 0;
          v49 = 4;
          v50 = 2;
          do
          {
            *(*(a4 + 64) + v49) = *&v45[v50];
            v50 += 2;
            ++v48;
            v49 += 8;
          }

          while (v48 < *(a4 + 74));
          v51 = *(a4 + 74);
        }

        else
        {
          v51 = 0;
          v50 = 2;
        }

        if (v51 < *(a4 + 72))
        {
          v64 = v51;
          v65 = &v45[v50 + 2];
          v66 = 8 * v51;
          do
          {
            *(*(a4 + 64) + v66) = *(v65 - 1);
            v67 = *v65;
            v65 += 4;
            *(*(a4 + 64) + v66 + 4) = v67;
            ++v64;
            v66 += 8;
          }

          while (v64 < *(a4 + 72));
        }

        goto LABEL_65;
      }

      if (!(v146 ^ 0x47415452 | v147))
      {
        v52 = v144;
        v53 = *v144;
        *(a4 + 88) = v53;
        LODWORD(v141) = 2;
        v54 = heap_Calloc(*(*a4 + 8), 1, (32 * v53) | 1);
        *(a4 + 80) = v54;
        if (!v54)
        {
          goto LABEL_163;
        }

        if (*(a4 + 88))
        {
          v55 = 0;
          v56 = 0;
          while (1)
          {
            v57 = v141;
            *(*(a4 + 80) + v55) = *(v52 + v141);
            LODWORD(v141) = v57 + 4;
            BrokerString = readRULE(*a4, v52, &v141, (*(a4 + 80) + v55 + 8));
            if ((BrokerString & 0x80000000) != 0)
            {
              goto LABEL_106;
            }

            ++v56;
            v55 += 32;
            if (v56 >= *(a4 + 88))
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

      if (!(v146 ^ 0x47415453 | v147))
      {
        v58 = v144;
        v59 = *v144;
        *(a4 + 104) = v59;
        LODWORD(v141) = 2;
        v60 = heap_Calloc(*(*a4 + 8), 1, (32 * v59) | 1);
        *(a4 + 96) = v60;
        if (!v60)
        {
          goto LABEL_163;
        }

        if (*(a4 + 104))
        {
          v61 = 0;
          v62 = 0;
          while (1)
          {
            v63 = v141;
            *(*(a4 + 96) + v61) = *(v58 + v141);
            LODWORD(v141) = v63 + 4;
            BrokerString = readRULE(*a4, v58, &v141, (*(a4 + 96) + v61 + 8));
            if ((BrokerString & 0x80000000) != 0)
            {
              goto LABEL_106;
            }

            ++v62;
            v61 += 32;
            if (v62 >= *(a4 + 104))
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

      if (!(v146 ^ 0x534F5054 | v147))
      {
        v69 = v144;
        v70 = *v144;
        *(a4 + 120) = v70;
        LODWORD(v141) = 2;
        v71 = heap_Calloc(*(*a4 + 8), 1, (32 * v70) | 1);
        *(a4 + 112) = v71;
        if (!v71)
        {
          goto LABEL_163;
        }

        if (*(a4 + 120))
        {
          v72 = 0;
          v73 = 0;
          while (1)
          {
            v74 = v141;
            *(*(a4 + 112) + v72) = *(v69 + v141);
            LODWORD(v141) = v74 + 4;
            BrokerString = readRULE(*a4, v69, &v141, (*(a4 + 112) + v72 + 8));
            if ((BrokerString & 0x80000000) != 0)
            {
              goto LABEL_106;
            }

            ++v73;
            v72 += 32;
            if (v73 >= *(a4 + 120))
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

      if (!(v146 ^ 0x46454454 | v147))
      {
        v75 = v144;
        v76 = *v144;
        *(a4 + 144) = v76;
        v77 = heap_Calloc(*(*a4 + 8), 1, (4 * v76) | 1);
        *(a4 + 136) = v77;
        if (!v77)
        {
          goto LABEL_163;
        }

        v78 = *(a4 + 144);
        if (*(a4 + 144))
        {
          v79 = *(a4 + 144);
          v80 = 2;
          do
          {
            v81 = *(v75 + v80);
            v80 += 2;
            *v77++ = v81;
            --v79;
          }

          while (v79);
          v82 = (8 * v78) | 1;
        }

        else
        {
          LODWORD(v80) = 2;
          v82 = 1;
        }

        v83 = heap_Calloc(*(*a4 + 8), 1, v82);
        *(a4 + 128) = v83;
        if (!v83)
        {
LABEL_163:
          v22 = 2315264010;
          log_OutPublic(*(*a4 + 32), "FE_PHRASING", 37000, 0, v28, v29, v30, v31, v135);
          goto LABEL_107;
        }

        if (*(a4 + 144))
        {
          v84 = 0;
          do
          {
            v85 = *(*a4 + 8);
            if (*(*(a4 + 136) + 4 * v84) == 1)
            {
              *(*(a4 + 128) + 8 * v84) = heap_Calloc(v85, 1, 13);
              v86 = *(*(a4 + 128) + 8 * v84);
              if (!v86)
              {
                goto LABEL_163;
              }

              *v86 = *(v75 + v80);
              *(v86 + 2) = *(v75 + (v80 + 2));
              v87 = v80 + 6;
              *(v86 + 4) = *(v75 + (v80 + 4));
              v88 = 8;
            }

            else
            {
              *(*(a4 + 128) + 8 * v84) = heap_Calloc(v85, 1, 9);
              v89 = *(*(a4 + 128) + 8 * v84);
              if (!v89)
              {
                goto LABEL_163;
              }

              *v89 = *(v75 + v80);
              v87 = v80 + 4;
              v88 = 4;
            }

            LODWORD(v22) = 0;
            *(*(*(a4 + 128) + 8 * v84) + v88) = *(v75 + v87);
            LODWORD(v80) = v87 + 4;
            ++v84;
          }

          while (v84 < *(a4 + 144));
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      if (!(v146 ^ 0x524E4547 | v147))
      {
        BrokerString = readGeneralRulesCHUNK(v144, a4);
        if ((BrokerString & 0x80000000) != 0)
        {
          goto LABEL_106;
        }

LABEL_65:
        LODWORD(v22) = 0;
        goto LABEL_66;
      }

      if (!(v146 ^ 0x524B4F54 | v147))
      {
        TokenRulesCHUNK = readTokenRulesCHUNK(v144, a4);
        goto LABEL_104;
      }

      if (!(v146 ^ 0x54475750 | v147))
      {
        TokenRulesCHUNK = readPhraseWeightsCHUNK(v144, a4);
        goto LABEL_104;
      }

      if (!(v146 ^ 0x534D554E | v147))
      {
        TokenRulesCHUNK = readNumSettingsCHUNK(v144, a4);
        goto LABEL_104;
      }

      if (!(v146 ^ 0x4D4F5250 | v147))
      {
        TokenRulesCHUNK = readProminenceCHUNK(v144, a4);
        goto LABEL_104;
      }

      if (!(v146 ^ 0x58474552 | v147))
      {
        TokenRulesCHUNK = readRegexCHUNK(v148, v144, a4);
        goto LABEL_104;
      }

      if (!(v146 ^ 0x53525453 | v147))
      {
        TokenRulesCHUNK = readStringCHUNK(v148, v144, a4);
        goto LABEL_104;
      }

      if (!(v146 ^ 0x54534552 | v147))
      {
        TokenRulesCHUNK = readRegexStringCHUNK(v148, v144, a4);
        goto LABEL_104;
      }

      if (!(v146 ^ 0x4644534D | v147))
      {
        BrokerString = readMSCHUNK(v144, a4);
        if ((BrokerString & 0x80000000) != 0)
        {
          goto LABEL_106;
        }

        goto LABEL_65;
      }

      if (!(v146 ^ 0x54524850 | v147))
      {
        TokenRulesCHUNK = readPhraseTypeCHUNK(v144, a4);
LABEL_104:
        v22 = TokenRulesCHUNK;
        if ((TokenRulesCHUNK & 0x80000000) != 0)
        {
          goto LABEL_107;
        }

        goto LABEL_66;
      }

      if (!(v146 ^ 0x44504D43 | v147))
      {
        TokenRulesCHUNK = readMSCOMPOUNDDEFCHUNK(v144, a4);
        goto LABEL_104;
      }
    }

    else
    {
      LODWORD(v22) = 0;
      v24 = v144;
      *(a4 + 10) = *v144;
      *(a4 + 12) = v24[1];
      *(a4 + 14) = v24[2];
    }

LABEL_66:
    v68 = ssftriff_reader_CloseChunk(v148);
    if (v68 < 0)
    {
      LODWORD(v22) = v68;
    }
  }

  while ((v22 & 0x80000000) == 0);
  if ((v22 & 0x1FFF) == 0x14)
  {
    LODWORD(v22) = 0;
  }

  if ((v22 & 0x1FFF) == 0xA)
  {
    goto LABEL_111;
  }

  v92 = ssftriff_reader_ObjClose(v148, v19, v20, v21, v15, v16, v17, v18);
  v148 = 0;
  if (v92 >= 0 || v22 <= -1)
  {
    v22 = v22;
  }

  else
  {
    v22 = v92;
  }

  v94 = *(a4 + 74);
  if (*(a4 + 74))
  {
    v95 = 0;
    v96 = *(a4 + 528);
    v97 = (*(a4 + 64) + 4);
    v98 = *(a4 + 536);
    do
    {
      v99 = *v97;
      v97 += 2;
      v100 = *(v98 + 4 * v99);
      if (!strcmp("ORT", (v96 + v100)))
      {
        *(a4 + 16) = v95;
      }

      else if (!strcmp("POS", (v96 + v100)))
      {
        *(a4 + 18) = v95;
      }

      else if (!strcmp("TOK", (v96 + v100)))
      {
        *(a4 + 20) = v95;
      }

      else if (!strcmp("TOKT", (v96 + v100)))
      {
        *(a4 + 22) = v95;
      }

      else if (!strcmp("PHR", (v96 + v100)))
      {
        *(a4 + 24) = v95;
      }

      ++v95;
    }

    while (v94 != v95);
  }

  FLOATSUR_SET_INT((a4 + 368), 0, 0);
  FLOATSUR_SET_INT((a4 + 372), 0, 0);
  FLOATSUR_SET_INT((a4 + 376), 0, 0);
  FLOATSUR_SET_INT((a4 + 380), 0, 0);
  FLOATSUR_SET_INT((a4 + 384), 0, 0);
  FLOATSUR_SET_INT((a4 + 388), 0, 0);
  FLOATSUR_SET_INT((a4 + 392), 0, 0);
  if (!*(a4 + 280))
  {
    goto LABEL_164;
  }

  v105 = 0;
  v106 = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v107 = 0;
  do
  {
    v108 = *(a4 + 528);
    v109 = *(a4 + 272);
    v110 = *(*(a4 + 536) + 4 * *(v109 + v105));
    if (!strcmp((v108 + v110), "threshold_weak_bnd"))
    {
      v111 = *(v109 + v105 + 4);
      *(a4 + 368) = v111;
      *(a4 + 396) = v111;
      v107 = 1;
    }

    else if (!strcmp((v108 + v110), "threshold_bnd_val_weak"))
    {
      v112 = *(v109 + v105 + 4);
      *(a4 + 372) = v112;
      *(a4 + 400) = v112;
      v139 = 1;
    }

    else if (!strcmp((v108 + v110), "threshold_bnd_val_strong"))
    {
      v113 = *(v109 + v105 + 4);
      *(a4 + 376) = v113;
      *(a4 + 404) = v113;
      HIDWORD(v138) = 1;
    }

    else if (!strcmp((v108 + v110), "threshold_weak_frag"))
    {
      v114 = *(v109 + v105 + 4);
      *(a4 + 380) = v114;
      *(a4 + 408) = v114;
      LODWORD(v138) = 1;
    }

    else if (!strcmp((v108 + v110), "prevFactor"))
    {
      v115 = *(v109 + v105 + 4);
      *(a4 + 384) = v115;
      *(a4 + 412) = v115;
      HIDWORD(v137) = 1;
    }

    else if (!strcmp((v108 + v110), "nextFactor"))
    {
      v116 = *(v109 + v105 + 4);
      *(a4 + 388) = v116;
      *(a4 + 416) = v116;
      LODWORD(v137) = 1;
    }

    else if (!strcmp((v108 + v110), "bndFactor"))
    {
      v117 = *(v109 + v105 + 4);
      *(a4 + 392) = v117;
      *(a4 + 420) = v117;
      v136 = 1;
    }

    else if (!strcmp((v108 + v110), "mapfromBIO") && !FLOATSUR_EQUAL_INT((v109 + v105 + 4), 0, 0))
    {
      log_OutText(*(a3 + 32), "FE_PHRASING", 1, 0, "mapfromBIO PandP setting is no longer honored", v102, v103, v104, v135);
    }

    ++v106;
    v105 += 8;
  }

  while (v106 < *(a4 + 280));
  if (!v107 || !v139 || !HIDWORD(v138) || !v138 || !HIDWORD(v137) || !v137 || !v136)
  {
LABEL_164:
    v133 = *(a3 + 32);
    v134 = 62004;
LABEL_166:
    log_OutPublic(v133, "FE_PHRASING", v134, 0, v101, v102, v103, v104, v135);
    goto LABEL_167;
  }

  v141 = 0;
  v140 = 0;
  StrSetting = getStrSetting(a4, "COMPOUND_FEATURE_STR");
  if (!StrSetting || (v119 = StrSetting, v120 = getStrSetting(a4, "COMPOUND_START_TAG"), (*(a4 + 640) = v120) == 0))
  {
    v133 = *(a3 + 32);
    v134 = 62000;
    goto LABEL_166;
  }

  v121 = strlen(v119);
  v122 = heap_Calloc(*(a3 + 8), 1, v121 + 3);
  if (!v122)
  {
    log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0, v123, v124, v125, v126, v135);
LABEL_111:
    v22 = 2315264010;
    goto LABEL_107;
  }

  v127 = v122;
  *v122 = 44;
  v128 = strcat(v122, v119);
  *&v127[strlen(v128)] = 44;
  *(a4 + 648) = nuance_pcre_compile(*(a4 + 424), *(a4 + 432), v127, 0, &v141, &v140, 0);
  heap_Free(*(a3 + 8), v127);
  if (!*(a4 + 648))
  {
    log_OutPublic(*(a3 + 32), "FE_PHRASING", 11006, "%s%s%s%s%s%d", v129, v130, v131, v132, "regularExpression");
LABEL_167:
    v22 = 2315264000;
  }

LABEL_107:
  v90 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t getBrokerString(uint64_t a1, int a2, char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  __s = 0;
  memset(v16, 0, sizeof(v16));
  *__s2 = 0;
  *a3 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((result & 0x80000000) == 0)
  {
    v7 = __s;
    if (*__s)
    {
      v8 = 0;
      do
      {
        v9 = v8;
        __s2[v8] = __tolower(v7[v8]);
        ++v8;
        v7 = __s;
        v10 = strlen(__s);
      }

      while (v9 <= 1 && v8 < v10);
    }

    else
    {
      v8 = 0;
    }

    __s2[v8] = 0;
    if (strcmp(v7, __s2))
    {
      result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      __s = __s2;
    }

    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    if (a2 != 1)
    {
      v11 = 0;
      goto LABEL_15;
    }

    result = paramc_ParamGetStr(*(a1 + 40), "voice", &v14);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      v11 = v14;
LABEL_15:
      result = brokeraux_ComposeBrokerString(a1, v16, 0, 1, __s, v11, 0, a3, 0x80uLL);
    }
  }

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getLegacyBrokerString(uint64_t a1, char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  __s = 0;
  memset(v13, 0, sizeof(v13));
  *__s2 = 0;
  *a2 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((result & 0x80000000) == 0)
  {
    v5 = __s;
    if (*__s)
    {
      v6 = 0;
      do
      {
        v7 = v6;
        __s2[v6] = __tolower(v5[v6]);
        ++v6;
        v5 = __s;
        v8 = strlen(__s);
      }

      while (v7 <= 1 && v6 < v8);
    }

    else
    {
      v6 = 0;
    }

    __s2[v6] = 0;
    if (strcmp(v5, __s2))
    {
      result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_13;
      }

      __s = __s2;
    }

    result = paramc_ParamGetStr(*(a1 + 40), "voice", &v11);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      result = brokeraux_ComposeBrokerString(a1, v13, 1, 1, __s, v11, 0, a2, 0x80uLL);
    }
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t readGeneralRulesCHUNK(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 160) = v4;
  v17 = 2;
  v5 = heap_Calloc(*(*a2 + 8), 1, (32 * v4) | 1);
  *(a2 + 152) = v5;
  if (v5)
  {
    if (*(a2 + 160))
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        result = readRULE(*a2, a1, &v17, (*(a2 + 152) + v10 + 8));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v13 = *(a1 + v17);
        v14 = *(a2 + 152);
        v15 = *(a1 + v17 + 2);
        v17 += 4;
        FLOATSUR_SET_INT((v14 + v10), v13, v15);
        ++v11;
        v10 += 32;
        if (v11 >= *(a2 + 160))
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

  else
  {
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v6, v7, v8, v9, v16);
    return 2315264010;
  }

  return result;
}

uint64_t readTokenRulesCHUNK(_WORD *a1, uint64_t a2)
{
  *(a2 + 168) = *a1;
  v4 = a1[1];
  *(a2 + 184) = v4;
  v33 = 4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (40 * v4) | 1);
  *(a2 + 176) = v5;
  if (!v5)
  {
LABEL_18:
    v12 = *a2;
LABEL_19:
    log_OutPublic(*(v12 + 32), "FE_PHRASING", 37000, 0, v6, v7, v8, v9, v32);
    return 2315264010;
  }

  if (*(a2 + 184))
  {
    v10 = 0;
    while (1)
    {
      v11 = heap_Calloc(*(*a2 + 8), 1, 25);
      *(*(a2 + 176) + 40 * v10) = v11;
      v12 = *a2;
      if (!v11)
      {
        goto LABEL_19;
      }

      result = readRULE(v12, a1, &v33, v11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v14 = v33;
      *(*(a2 + 176) + 40 * v10 + 16) = *(a1 + v33);
      v15 = v14 + 2;
      v33 = v14 + 2;
      v16 = heap_Calloc(*(*a2 + 8), 1, (32 * *(*(a2 + 176) + 40 * v10 + 16)) | 1);
      v17 = *(a2 + 176);
      *(v17 + 40 * v10 + 8) = v16;
      if (!v16)
      {
        goto LABEL_18;
      }

      if (*(v17 + 40 * v10 + 16))
      {
        v18 = 0;
        v19 = 0;
        do
        {
          result = readRULE(*a2, a1, &v33, (*(v17 + 40 * v10 + 8) + v18 + 8));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v20 = *(a1 + v33);
          v21 = *(*(a2 + 176) + 40 * v10 + 8);
          v22 = *(a1 + v33 + 2);
          v15 = v33 + 4;
          v33 += 4;
          FLOATSUR_SET_INT((v21 + v18), v20, v22);
          ++v19;
          v17 = *(a2 + 176);
          v18 += 32;
        }

        while (v19 < *(v17 + 40 * v10 + 16));
      }

      *(v17 + 40 * v10 + 32) = *(a1 + v15);
      v33 = v15 + 2;
      v23 = heap_Calloc(*(*a2 + 8), 1, (32 * *(*(a2 + 176) + 40 * v10 + 32)) | 1);
      v24 = *(a2 + 176);
      *(v24 + 40 * v10 + 24) = v23;
      if (!v23)
      {
        goto LABEL_18;
      }

      if (*(v24 + 40 * v10 + 32))
      {
        v25 = 0;
        v26 = 0;
        do
        {
          result = readRULE(*a2, a1, &v33, (*(v24 + 40 * v10 + 24) + v25));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v27 = v33;
          v28 = v33 + 2;
          v29 = *(*(a2 + 176) + 40 * v10 + 24) + v25;
          *(v29 + 24) = *(a1 + v33);
          v30 = *(a1 + v28);
          v31 = *(a1 + v27 + 4);
          v33 = v27 + 6;
          FLOATSUR_SET_INT((v29 + 28), v30, v31);
          ++v26;
          v24 = *(a2 + 176);
          v25 += 32;
        }

        while (v26 < *(v24 + 40 * v10 + 32));
      }

      result = 0;
      if (++v10 >= *(a2 + 184))
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t readPhraseWeightsCHUNK(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 248) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (12 * v4) | 1);
  *(a2 + 240) = v5;
  if (!v5)
  {
    goto LABEL_23;
  }

  if (*(a2 + 248))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      *(*(a2 + 240) + v10 * 2) = *&a1[v10 + 1];
      FLOATSUR_SET_INT((*(a2 + 240) + v10 * 2 + 4), a1[v10 + 3], a1[v10 + 4]);
      *(*(a2 + 240) + v10 * 2 + 8) = a1[v10 + 5];
      *(*(a2 + 240) + v10 * 2 + 10) = a1[v10 + 6];
      ++v11;
      v10 += 6;
    }

    while (v11 < *(a2 + 248));
    v12 = v10 * 2 + 2;
  }

  else
  {
    v12 = 2;
  }

  v13 = *(a1 + v12);
  *(a2 + 264) = v13;
  v14 = v12 + 2;
  v35 = v12 + 2;
  v15 = heap_Calloc(*(*a2 + 8), 1, (32 * v13) | 1);
  *(a2 + 256) = v15;
  if (!v15)
  {
    goto LABEL_23;
  }

  if (!*(a2 + 264))
  {
LABEL_12:
    FLOATSUR_SET_INT((a2 + 192), *(a1 + v14), *(a1 + v14 + 2));
    v22 = *(a1 + v14 + 4);
    *(a2 + 208) = v22;
    v23 = heap_Calloc(*(*a2 + 8), 1, (10 * v22) | 1);
    *(a2 + 200) = v23;
    if (v23)
    {
      if (*(a2 + 208))
      {
        v24 = 0;
        v25 = 0;
        do
        {
          v26 = *(a2 + 200) + v24;
          *v26 = *(a1 + v14 + v24 + 6);
          *(v26 + 2) = *(a1 + v14 + v24 + 8);
          *(v26 + 4) = *(a1 + v14 + v24 + 10);
          FLOATSUR_SET_INT((*(a2 + 200) + v24 + 6), *(a1 + v14 + v24 + 12), *(a1 + v14 + v24 + 14));
          ++v25;
          v24 += 10;
        }

        while (v25 < *(a2 + 208));
        v27 = v14 + v24 + 6;
      }

      else
      {
        v27 = v14 + 6;
      }

      FLOATSUR_SET_INT((a2 + 216), *(a1 + v27), *(a1 + v27 + 2));
      v28 = *(a1 + v27 + 4);
      *(a2 + 232) = v28;
      v29 = heap_Calloc(*(*a2 + 8), 1, (12 * v28) | 1);
      *(a2 + 224) = v29;
      if (v29)
      {
        if (*(a2 + 232))
        {
          v30 = 0;
          v31 = 0;
          v32 = v27 + 14;
          do
          {
            v33 = *(a2 + 224) + v30;
            FLOATSUR_SET_INT((v33 + 4), *(a1 + v32 - 8), *(a1 + v32 - 6));
            FLOATSUR_SET_INT((v33 + 8), *(a1 + v32 - 4), *(a1 + v32 - 2));
            *v33 = *(a1 + v32);
            ++v31;
            v30 += 12;
            v32 += 10;
          }

          while (v31 < *(a2 + 232));
        }

        return 0;
      }
    }

LABEL_23:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v6, v7, v8, v9, v34);
    return 2315264010;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    result = readRULE(*a2, a1, &v35, (*(a2 + 256) + v16 + 8));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v19 = *(a1 + v35);
    v20 = *(a2 + 256);
    v21 = *(a1 + v35 + 2);
    v14 = v35 + 4;
    v35 += 4;
    FLOATSUR_SET_INT((v20 + v16), v19, v21);
    ++v17;
    v16 += 32;
    if (v17 >= *(a2 + 264))
    {
      goto LABEL_12;
    }
  }
}

uint64_t readNumSettingsCHUNK(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 280) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (8 * v4) | 1);
  *(a2 + 272) = v5;
  if (v5)
  {
    if (*(a2 + 280))
    {
      v10 = 0;
      v11 = 0;
      v12 = (a1 + 4);
      do
      {
        v13 = *(a2 + 272) + v10;
        *v13 = *(v12 - 3);
        v14 = *(v12 - 1);
        v15 = *v12;
        v12 += 4;
        FLOATSUR_SET_INT((v13 + 4), v14, v15);
        ++v11;
        v10 += 8;
      }

      while (v11 < *(a2 + 280));
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v6, v7, v8, v9, v17);
    return 2315264010;
  }
}

uint64_t readProminenceCHUNK(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 296) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (4 * v4) | 1);
  *(a2 + 288) = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  if (*(a2 + 296))
  {
    v10 = 0;
    v11 = 1;
    do
    {
      *(*(a2 + 288) + 4 * v10) = *&a1[2 * v10 + 1];
      v11 += 2;
      ++v10;
    }

    while (v10 < *(a2 + 296));
  }

  else
  {
    v11 = 1;
  }

  v12 = a1[v11];
  *(a2 + 312) = v12;
  v18 = v11 * 2 + 2;
  v13 = heap_Calloc(*(*a2 + 8), 1, (24 * v12) | 1);
  *(a2 + 304) = v13;
  if (v13)
  {
    if (*(a2 + 312))
    {
      v14 = 0;
      v15 = 0;
      while (1)
      {
        result = readRULE(*a2, a1, &v18, (*(a2 + 304) + v14));
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        ++v15;
        v14 += 24;
        if (v15 >= *(a2 + 312))
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

  else
  {
LABEL_13:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v6, v7, v8, v9, v17);
    return 2315264010;
  }

  return result;
}

uint64_t readRegexCHUNK(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v20 = a2;
  v6 = *a2;
  *(a3 + 440) = *a2;
  if (v6)
  {
    v7 = (a2[1] + 8);
    *(a3 + 448) = a2 + v7;
    v8 = (v7 + v6);
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  *(a3 + 464) = v9;
  v10 = heap_Calloc(*(*a3 + 8), 1, (4 * v9) | 1);
  *(a3 + 456) = v10;
  if (v10)
  {
    if (*(a3 + 464))
    {
      v16 = 0;
      v17 = v8 + 2;
      do
      {
        *(*(a3 + 456) + 4 * v16) = *(a2 + v17);
        v17 += 4;
        ++v16;
      }

      while (v16 < *(a3 + 464));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 472), &v20, v11, v12, v13, v14, v15);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0, v12, v13, v14, v15, v19);
    return 2315264010;
  }
}

uint64_t readStringCHUNK(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v20 = a2;
  v6 = *a2;
  *(a3 + 520) = *a2;
  if (v6)
  {
    v7 = (a2[1] + 8);
    *(a3 + 528) = a2 + v7;
    v8 = (v7 + v6);
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  *(a3 + 544) = v9;
  v10 = heap_Calloc(*(*a3 + 8), 1, (4 * v9) | 1);
  *(a3 + 536) = v10;
  if (v10)
  {
    if (*(a3 + 544))
    {
      v16 = 0;
      v17 = v8 + 2;
      do
      {
        *(*(a3 + 536) + 4 * v16) = *(a2 + v17);
        v17 += 4;
        ++v16;
      }

      while (v16 < *(a3 + 544));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 552), &v20, v11, v12, v13, v14, v15);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0, v12, v13, v14, v15, v19);
    return 2315264010;
  }
}

uint64_t readRegexStringCHUNK(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v20 = a2;
  v6 = *a2;
  *(a3 + 480) = *a2;
  if (v6)
  {
    v7 = (a2[1] + 8);
    *(a3 + 488) = a2 + v7;
    v8 = (v7 + v6);
  }

  else
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  *(a3 + 504) = v9;
  v10 = heap_Calloc(*(*a3 + 8), 1, (4 * v9) | 1);
  *(a3 + 496) = v10;
  if (v10)
  {
    if (*(a3 + 504))
    {
      v16 = 0;
      v17 = v8 + 2;
      do
      {
        *(*(a3 + 496) + 4 * v16) = *(a2 + v17);
        v17 += 4;
        ++v16;
      }

      while (v16 < *(a3 + 504));
    }

    return ssftriff_reader_DetachChunkData(a1, (a3 + 512), &v20, v11, v12, v13, v14, v15);
  }

  else
  {
    log_OutPublic(*(*a3 + 32), "FE_PHRASING", 37000, 0, v12, v13, v14, v15, v19);
    return 2315264010;
  }
}

uint64_t readMSCHUNK(unsigned __int16 *a1, uint64_t a2)
{
  *(a2 + 560) = *a1;
  v4 = a1[1];
  *(a2 + 584) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (4 * v4) | 1);
  *(a2 + 576) = v5;
  if (!v5)
  {
    goto LABEL_47;
  }

  v10 = *(a2 + 584);
  if (*(a2 + 584))
  {
    v11 = 4;
    v12 = *(a2 + 584);
    do
    {
      v13 = *(a1 + v11);
      v11 += 2;
      *v5++ = v13;
      --v12;
    }

    while (v12);
    v14 = (8 * v10) | 1;
  }

  else
  {
    LODWORD(v11) = 4;
    v14 = 1;
  }

  v15 = heap_Calloc(*(*a2 + 8), 1, v14);
  *(a2 + 568) = v15;
  if (!v15)
  {
    goto LABEL_47;
  }

  if (*(a2 + 584))
  {
    v16 = 0;
    do
    {
      v17 = *(*a2 + 8);
      if (*(*(a2 + 576) + 4 * v16) == 1)
      {
        *(*(a2 + 568) + 8 * v16) = heap_Calloc(v17, 1, 13);
        v18 = *(*(a2 + 568) + 8 * v16);
        if (!v18)
        {
          goto LABEL_47;
        }

        *v18 = *(a1 + v11);
        *(v18 + 2) = *(a1 + (v11 + 2));
        v19 = v11 + 6;
        *(v18 + 4) = *(a1 + (v11 + 4));
        v20 = 8;
      }

      else
      {
        *(*(a2 + 568) + 8 * v16) = heap_Calloc(v17, 1, 9);
        v21 = *(*(a2 + 568) + 8 * v16);
        if (!v21)
        {
          goto LABEL_47;
        }

        *v21 = *(a1 + v11);
        v19 = v11 + 4;
        v20 = 4;
      }

      *(*(*(a2 + 568) + 8 * v16) + v20) = *(a1 + v19);
      LODWORD(v11) = v19 + 4;
      ++v16;
    }

    while (v16 < *(a2 + 584));
  }

  v22 = *(a1 + v11);
  *(a2 + 608) = v22;
  v23 = heap_Calloc(*(*a2 + 8), 1, (4 * v22) | 1);
  *(a2 + 600) = v23;
  if (!v23)
  {
    goto LABEL_47;
  }

  v24 = *(a2 + 608);
  v25 = v11 + 2;
  if (*(a2 + 608))
  {
    v26 = *(a2 + 608);
    do
    {
      *v23++ = *(a1 + v25);
      v25 += 2;
      --v26;
    }

    while (v26);
    v27 = (8 * v24) | 1;
  }

  else
  {
    v27 = 1;
  }

  v28 = heap_Calloc(*(*a2 + 8), 1, v27);
  *(a2 + 592) = v28;
  if (!v28)
  {
    goto LABEL_47;
  }

  if (*(a2 + 608))
  {
    v29 = 0;
    do
    {
      v30 = *(*a2 + 8);
      if (*(*(a2 + 600) + 4 * v29) == 1)
      {
        *(*(a2 + 592) + 8 * v29) = heap_Calloc(v30, 1, 13);
        v31 = *(*(a2 + 592) + 8 * v29);
        if (!v31)
        {
          goto LABEL_47;
        }

        *v31 = *(a1 + v25);
        *(v31 + 2) = *(a1 + v25 + 2);
        v32 = v25 + 6;
        *(v31 + 4) = *(a1 + v25 + 4);
        v33 = 8;
      }

      else
      {
        *(*(a2 + 592) + 8 * v29) = heap_Calloc(v30, 1, 9);
        v34 = *(*(a2 + 592) + 8 * v29);
        if (!v34)
        {
          goto LABEL_47;
        }

        *v34 = *(a1 + v25);
        v32 = v25 + 4;
        v33 = 4;
      }

      *(*(*(a2 + 592) + 8 * v29) + v33) = *(a1 + v32);
      v25 = v32 + 4;
      ++v29;
    }

    while (v29 < *(a2 + 608));
  }

  v35 = *(a1 + v25);
  *(a2 + 632) = v35;
  v36 = heap_Calloc(*(*a2 + 8), 1, (4 * v35) | 1);
  *(a2 + 624) = v36;
  if (!v36)
  {
    goto LABEL_47;
  }

  v37 = *(a2 + 632);
  v38 = v25 + 2;
  if (*(a2 + 632))
  {
    v39 = *(a2 + 632);
    do
    {
      *v36++ = *(a1 + v38);
      v38 += 2;
      --v39;
    }

    while (v39);
    v40 = (8 * v37) | 1;
  }

  else
  {
    v40 = 1;
  }

  v41 = heap_Calloc(*(*a2 + 8), 1, v40);
  *(a2 + 616) = v41;
  if (v41)
  {
    if (*(a2 + 632))
    {
      v42 = 0;
      do
      {
        v43 = *(*a2 + 8);
        if (*(*(a2 + 624) + 4 * v42) == 1)
        {
          *(*(a2 + 616) + 8 * v42) = heap_Calloc(v43, 1, 13);
          v44 = *(*(a2 + 616) + 8 * v42);
          if (!v44)
          {
            goto LABEL_47;
          }

          *v44 = *(a1 + v38);
          *(v44 + 2) = *(a1 + v38 + 2);
          v45 = v38 + 6;
          *(v44 + 4) = *(a1 + v38 + 4);
          v46 = 8;
        }

        else
        {
          *(*(a2 + 616) + 8 * v42) = heap_Calloc(v43, 1, 9);
          v47 = *(*(a2 + 616) + 8 * v42);
          if (!v47)
          {
            goto LABEL_47;
          }

          *v47 = *(a1 + v38);
          v45 = v38 + 4;
          v46 = 4;
        }

        result = 0;
        *(*(*(a2 + 616) + 8 * v42) + v46) = *(a1 + v45);
        v38 = v45 + 4;
        ++v42;
      }

      while (v42 < *(a2 + 632));
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_47:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v6, v7, v8, v9, v49);
    return 2315264010;
  }

  return result;
}

uint64_t readPhraseTypeCHUNK(unsigned __int16 *a1, uint64_t *a2)
{
  v4 = *a1;
  *(a2 + 160) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (16 * v4) | 1);
  a2[42] = v5;
  v10 = *a2;
  if (!v5)
  {
    goto LABEL_16;
  }

  v11 = heap_Calloc(*(v10 + 8), 1, (4 * *(a2 + 160)) | 1);
  a2[41] = v11;
  if (!v11)
  {
LABEL_15:
    v10 = *a2;
LABEL_16:
    log_OutPublic(*(v10 + 32), "FE_PHRASING", 37000, 0, v6, v7, v8, v9, v22);
    return 2315264010;
  }

  if (*(a2 + 160))
  {
    v12 = 0;
    v13 = 2;
    do
    {
      *(a2[41] + 4 * v12) = *&a1[2 * v12 + 1];
      v13 += 4;
      ++v12;
      v14 = *(a2 + 160);
    }

    while (v12 < v14);
    v23 = v13;
    if (v14)
    {
      v15 = 0;
      v16 = a2[42];
      while (1)
      {
        v17 = v23;
        *(v16 + 16 * v15) = *(a1 + v23);
        v23 = v17 + 2;
        v18 = heap_Calloc(*(*a2 + 8), 1, (24 * *(a2[42] + 16 * v15)) | 1);
        v16 = a2[42];
        *(v16 + 16 * v15 + 8) = v18;
        if (!v18)
        {
          goto LABEL_15;
        }

        if (*(v16 + 16 * v15))
        {
          v19 = 0;
          v20 = 0;
          do
          {
            result = readRULE(*a2, a1, &v23, (*(v16 + 16 * v15 + 8) + v19));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            ++v20;
            v16 = a2[42];
            v19 += 24;
          }

          while (v20 < *(v16 + 16 * v15));
        }

        result = 0;
        if (++v15 >= *(a2 + 160))
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t readMSCOMPOUNDDEFCHUNK(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 360) = v4;
  v5 = heap_Calloc(*(*a2 + 8), 1, (4 * v4) | 1);
  *(a2 + 352) = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  v10 = *(a2 + 360);
  if (*(a2 + 360))
  {
    v11 = 2;
    v12 = *(a2 + 360);
    do
    {
      v13 = *(a1 + v11);
      v11 += 2;
      *v5++ = v13;
      --v12;
    }

    while (v12);
    v14 = (8 * v10) | 1;
  }

  else
  {
    LODWORD(v11) = 2;
    v14 = 1;
  }

  v15 = heap_Calloc(*(*a2 + 8), 1, v14);
  *(a2 + 344) = v15;
  if (v15)
  {
    if (*(a2 + 360))
    {
      v16 = 0;
      do
      {
        v17 = *(*a2 + 8);
        if (*(*(a2 + 352) + 4 * v16) == 1)
        {
          *(*(a2 + 344) + 8 * v16) = heap_Calloc(v17, 1, 13);
          v18 = *(*(a2 + 344) + 8 * v16);
          if (!v18)
          {
            goto LABEL_17;
          }

          *v18 = *(a1 + v11);
          *(v18 + 2) = *(a1 + (v11 + 2));
          v19 = v11 + 6;
          *(v18 + 4) = *(a1 + (v11 + 4));
          v20 = 8;
        }

        else
        {
          *(*(a2 + 344) + 8 * v16) = heap_Calloc(v17, 1, 9);
          v21 = *(*(a2 + 344) + 8 * v16);
          if (!v21)
          {
            goto LABEL_17;
          }

          *v21 = *(a1 + v11);
          v19 = v11 + 4;
          v20 = 4;
        }

        *(*(*(a2 + 344) + 8 * v16) + v20) = *(a1 + v19);
        LODWORD(v11) = v19 + 4;
        ++v16;
      }

      while (v16 < *(a2 + 360));
    }

    return 0;
  }

  else
  {
LABEL_17:
    log_OutPublic(*(*a2 + 32), "FE_PHRASING", 37000, 0, v6, v7, v8, v9, v23);
    return 2315264010;
  }
}

uint64_t getStrSetting(uint64_t a1, char *__s1)
{
  v2 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = *(a1 + 528);
  v5 = *(a1 + 536);
  for (i = (*(a1 + 32) + 4); strcmp(__s1, (v4 + *(v5 + 4 * *(i - 1)))); i += 2)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return v4 + *(v5 + 4 * *i);
}

uint64_t usePandP(uint64_t *a1, _DWORD *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  v26 = 0;
  memset(v27, 0, sizeof(v27));
  *a2 = 0;
  v4 = 0;
  if ((paramc_ParamGetStr(a1[5], "basicclcprosody", &__s1) & 0x80000000) == 0 && __s1)
  {
    if (!strcmp(__s1, "yes"))
    {
      log_OutText(a1[4], "FE_PHRASING", 5, 0, "<%s> disables voice-dependent pandp rules", v5, v6, v7, "basicclcprosody");
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  result = getBrokerString(a1, 1, v27);
  if ((result & 0x80000000) == 0)
  {
    v9 = brk_DataOpenEx(a1[3], v27, 1, &v26);
    if (v9 < 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = v4;
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_23;
    }

    v14 = v9;
    log_OutText(a1[4], "FE_PHRASING", 5, 0, "Voice-dependent PandP rules not found or disabled", v10, v11, v12, 0);
    if ((v14 & 0x80000000) == 0)
    {
      result = brk_DataClose(a1[3], v26);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_26;
      }
    }

    result = getLegacyBrokerString(a1, v27);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    v15 = brk_DataOpenEx(a1[3], v27, 1, &v26);
    v19 = v15 < 0 ? 1 : v4;
    if (v19)
    {
      v20 = v15;
      log_OutText(a1[4], "FE_PHRASING", 5, 0, "Voice-dependent legacy PandP MS rules not found or disabled", v16, v17, v18, 0);
      if ((v20 & 0x80000000) == 0)
      {
        result = brk_DataClose(a1[3], v26);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_26;
        }
      }

      result = getBrokerString(a1, 0, v27);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_26;
      }

      if ((brk_DataOpenEx(a1[3], v27, 1, &v26) & 0x80000000) != 0)
      {
        log_OutText(a1[4], "FE_PHRASING", 5, 0, "Voice-independent PandP rules not found", v21, v22, v23, 0);
        goto LABEL_25;
      }

      *a2 = 1;
    }

    else
    {
LABEL_23:
      *a2 = 1;
    }

    result = brk_DataClose(a1[3], v26);
    if ((result & 0x80000000) == 0)
    {
LABEL_25:
      result = 0;
    }
  }

LABEL_26:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t doMapStr(uint64_t a1, const char **a2, char *__s)
{
  v6 = strlen(__s);
  v7 = *a2;
  if (v6 <= strlen(*a2))
  {
    goto LABEL_4;
  }

  v8 = heap_Realloc(*(a1 + 8), v7, (v6 + 1));
  if (v8)
  {
    v7 = v8;
    *a2 = v8;
LABEL_4:
    strcpy(v7, __s);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v9, v10, v11, v12, v14);
  return 2315264010;
}

uint64_t doRetagging(uint64_t a1, const char **a2, _WORD *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v38[2] = 0;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "applying %d retagging rules", a6, a7, a8, *(a6 + 88));
  if (!*(a7 + 8))
  {
    return 0;
  }

  v15 = 0;
  result = 0;
  while (!*(a6 + 88))
  {
LABEL_13:
    if (++v15 >= *(a7 + 8))
    {
      return result;
    }
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v37 = v15;
    v36 = 3;
    *v38 = 0;
    v19 = *(a6 + 80);
    v39 = 0;
    result = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, a7, v19 + v17 + 8, &v36, &v39);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v39)
    {
      if (v39 != 1)
      {
        goto LABEL_13;
      }

      v23 = *(*a7 + 224 * v15 + 16);
      v35 = *(v23 + 8 * *(a6 + 16));
      v34 = *(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 80) + v17));
      v33 = *(v23 + 8 * *(a6 + 18));
      log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "FIRED RETAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v20, v21, v22, v18);
      v24 = 224 * v15;
      result = doMapStr(a5, (*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 80) + v17))));
      if ((result & 0x80000000) == 0)
      {
        v25 = strlen(*(*(*a7 + v24 + 16) + 8 * *(a6 + 18)));
        v26 = heap_Calloc(*(a5 + 8), 1, v25 + 1);
        v31 = *a7;
        *(*a7 + v24 + 88) = v26;
        if (v26)
        {
          strcpy(v26, *(*(v31 + 224 * v15 + 16) + 8 * *(a6 + 18)));
          result = 0;
          goto LABEL_13;
        }

        log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v27, v28, v29, v30, v32);
        return 2315264010;
      }

      return result;
    }

    ++v18;
    v17 += 32;
    if (v18 >= *(a6 + 88))
    {
      goto LABEL_13;
    }
  }
}

uint64_t doSubtagging(uint64_t a1, const char **a2, _WORD *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v40[2] = 0;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "applying %d subtagging rules", a6, a7, a8, *(a6 + 104));
  if (!*(a7 + 8))
  {
    return 0;
  }

  v37 = a5;
  v15 = 0;
  result = 0;
  while (!*(a6 + 104))
  {
LABEL_15:
    if (++v15 >= *(a7 + 8))
    {
      return result;
    }
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v39 = v15;
    v38 = 3;
    *v40 = 0;
    v19 = *(a6 + 96);
    v41 = 0;
    result = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, a7, v19 + v17 + 8, &v38, &v41);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v41)
    {
      if (v41 != 1)
      {
        goto LABEL_15;
      }

      v23 = *(*a7 + 224 * v15 + 16);
      v36 = *(v23 + 8 * *(a6 + 16));
      v35 = *(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 96) + v17));
      v34 = *(v23 + 8 * *(a6 + 18));
      log_OutText(*(v37 + 32), "FE_PHRASING", 5, 0, "FIRED SUBTAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v20, v21, v22, v18);
      v24 = *a7;
      v25 = *a7 + 224 * v15;
      if (!*(v25 + 88))
      {
        v26 = strlen(*(*(v25 + 16) + 8 * *(a6 + 18)));
        v27 = heap_Calloc(*(v37 + 8), 1, v26 + 1);
        v32 = *a7;
        *(*a7 + 224 * v15 + 88) = v27;
        if (!v27)
        {
          log_OutPublic(*(v37 + 32), "FE_PHRASING", 37000, 0, v28, v29, v30, v31, v33);
          return 2315264010;
        }

        strcpy(v27, *(*(v32 + 224 * v15 + 16) + 8 * *(a6 + 18)));
        v24 = *a7;
      }

      result = doMapStr(v37, (*(v24 + 224 * v15 + 16) + 8 * *(a6 + 18)), (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 96) + v17))));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = 0;
      goto LABEL_15;
    }

    ++v18;
    v17 += 32;
    if (v18 >= *(a6 + 104))
    {
      goto LABEL_15;
    }
  }
}

uint64_t setPhraseType(uint64_t a1, const char **a2, _WORD *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a7 + 32) = a8;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  Using ORT %s", a6, a7, a8, a8);
  v40 = a7;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  Using POS %s", v15, v16, v17, *(a7 + 16));
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "  applying %d phrase type rules", v18, v19, v20, *(a6 + 320));
  if (!*(a6 + 320))
  {
    return 0;
  }

  v24 = 0;
  matched = 0;
  v42 = 0;
  while (1)
  {
    v41 = 5;
    LOWORD(v42) = 0;
    v43 = 1;
    v26 = *(a6 + 336);
    v27 = *(v26 + 16 * v24);
    if (*(v26 + 16 * v24))
    {
      break;
    }

    v30 = 0;
LABEL_10:
    if (v27 == v30)
    {
      v39 = *(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 328) + 4 * v24));
      log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "ALL %d RULES FIRE -> SET Phrase type %s", v21, v22, v23, v27);
      v32 = strlen((*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 328) + 4 * v24))));
      v33 = heap_Calloc(*(a5 + 8), 1, (v32 + 1));
      *(v40 + 40) = v33;
      if (v33)
      {
        strcpy(v33, (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 328) + 4 * v24))));
      }

      else
      {
        log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v34, v35, v36, v37, v38);
        return 2315264010;
      }

      return matched;
    }

LABEL_12:
    if (++v24 >= *(a6 + 320))
    {
      return matched;
    }
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    matched = matchPANDPRULE_TRule(a1, a2, a3, a4, a6, v40, *(v26 + 16 * v24 + 8) + v28, &v41, &v43);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    if (v43 != 1)
    {
      goto LABEL_12;
    }

    ++v29;
    v26 = *(a6 + 336);
    v27 = *(v26 + 16 * v24);
    v28 += 24;
    if (v29 >= v27)
    {
      v30 = v29;
      goto LABEL_10;
    }
  }
}

uint64_t getDomainFromPausingDefs(uint64_t a1, char *__s1, _WORD *a3)
{
  v3 = *(a1 + 56);
  if (!*(a1 + 56))
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 528);
  v8 = *(a1 + 536);
  v9 = *(a1 + 48);
  while (1)
  {
    v10 = *v9;
    v9 += 2;
    if (!strcmp(__s1, (v7 + *(v8 + 4 * v10))))
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  *a3 = v6;
  return 1;
}

uint64_t createLists(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a3 + 4);
  if (!v3)
  {
    return 0;
  }

  v5 = a2;
  v6 = 0;
  v7 = *(a2 + 24);
  v8 = *a3;
  v9 = 32 * v7;
  while (1)
  {
    v10 = v6;
    v11 = *(v8 + 224 * v6 + 56);
    if (v11)
    {
      if (*(v11 + v9) == 1)
      {
        break;
      }
    }

LABEL_33:
    if (++v6 >= v3)
    {
      return 0;
    }
  }

  v12 = heap_Calloc(*(a1 + 8), 1, (8 * *(v5 + 72)) | 1);
  v8 = *a3;
  *(*a3 + 224 * v10 + 64) = v12;
  if (v12)
  {
    if (*(v5 + 72))
    {
      v17 = 0;
      do
      {
        v18 = *(v8 + 224 * v10 + 56) + 32 * v7;
        v19 = *(v18 + 8);
        v20 = *(v18 + 10);
        if (v19 > v20)
        {
          goto LABEL_30;
        }

        v21 = v5;
        v22 = 0;
        do
        {
          v23 = v19;
          v24 = *(v8 + 224 * v19 + 16);
          if (v24)
          {
            v25 = *(v24 + 8 * v17);
            if (v25)
            {
              v22 += strlen(v25) + 1;
            }
          }

          v26 = *(v8 + 224 * v23 + 56);
          if (v26)
          {
            v27 = v26 + 32 * v17;
            v28 = *(v27 + 16);
            if (v28)
            {
              if (*v27 == 1)
              {
                v22 += strlen(v28) + 1;
              }
            }
          }

          LOWORD(v19) = v23 + 1;
        }

        while (v20 >= (v23 + 1));
        v5 = v21;
        if (v22)
        {
          v29 = heap_Calloc(*(a1 + 8), 1, v22 + 2);
          *(*(*a3 + 224 * v10 + 64) + 8 * v17) = v29;
          if (!v29)
          {
            goto LABEL_35;
          }

          *v29 = 0;
          v8 = *a3;
          v30 = *(*a3 + 224 * v10 + 56) + 32 * v7;
          v31 = *(v30 + 8);
          if (v31 <= *(v30 + 10))
          {
            do
            {
              v32 = v31;
              v33 = *(v8 + 224 * v31 + 16);
              if (v33)
              {
                v34 = *(v33 + 8 * v17);
                if (v34)
                {
                  strcat(*(*(v8 + 224 * v10 + 64) + 8 * v17), v34);
                  *(*(*(*a3 + 224 * v10 + 64) + 8 * v17) + strlen(*(*(*a3 + 224 * v10 + 64) + 8 * v17))) = 32;
                  v8 = *a3;
                }
              }

              v35 = *(v8 + 224 * v32 + 56);
              if (v35)
              {
                v36 = v35 + 32 * v17;
                v37 = *(v36 + 16);
                if (v37)
                {
                  if (*v36 == 1)
                  {
                    strcat(*(*(v8 + 224 * v10 + 64) + 8 * v17), v37);
                    *(*(*(*a3 + 224 * v10 + 64) + 8 * v17) + strlen(*(*(*a3 + 224 * v10 + 64) + 8 * v17))) = 32;
                    v8 = *a3;
                  }
                }
              }

              LOWORD(v31) = v32 + 1;
            }

            while (*(*(v8 + 224 * v10 + 56) + 32 * v7 + 10) >= (v32 + 1));
          }
        }

        else
        {
LABEL_30:
          *(*(v8 + 224 * v10 + 64) + 8 * v17) = 0;
        }

        ++v17;
      }

      while (v17 < *(v5 + 72));
    }

    v6 = *(*(v8 + 224 * v10 + 56) + 32 * v7 + 10);
    v3 = *(a3 + 4);
    v9 = 32 * v7;
    goto LABEL_33;
  }

LABEL_35:
  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v13, v14, v15, v16, 32 * v7);
  return 2315264010;
}

BOOL isStrSetting(uint64_t a1, char *__s1, const char *a3)
{
  v3 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    return 0;
  }

  v6 = *(a1 + 528);
  v7 = *(a1 + 536);
  for (i = (*(a1 + 32) + 4); strcmp(__s1, (v6 + *(v7 + 4 * *(i - 1)))); i += 2)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return strcmp(a3, (v6 + *(v7 + 4 * *i))) == 0;
}

uint64_t adjustWordIdxByWindow(unsigned __int16 *a1, uint64_t *a2, unsigned __int16 *a3, int a4, _DWORD *a5, unsigned __int16 *a6, uint64_t a7, uint64_t a8)
{
  *a5 = 1;
  v8 = *a2;
  v9 = a3[2];
  v10 = *(*a2 + 224 * a3[2] + 56);
  if (!v10 || (v11 = a1[12], !*(v10 + 32 * v11)))
  {
    result = 0;
    *a5 = 0;
    return result;
  }

  if (a4 == 2)
  {
    v20 = *(a2 + 4);
    if (v9 + 1 == v20)
    {
      *a5 = 0;
      if (a1[4] >= 2u)
      {
        v21 = *(*a1 + 32);
        v22 = "           [1] _RIGHT doesnt exist, return LH_FALSE";
LABEL_38:
        log_OutText(v21, "FE_PHRASING", 5, 0, v22, a6, a7, a8, 0);
LABEL_39:
        LOWORD(v9) = a3[2];
      }
    }

    else
    {
      v23 = a3[4] + 1;
      v24 = a3[2];
      if ((v23 & 0x10000) != 0)
      {
LABEL_21:
        if (v20 > v24)
        {
          *a6 = v24;
          if (a1[4] >= 2u)
          {
            v17 = *(*a1 + 32);
            v18 = a3[2];
            v19 = "           [3] _RIGHT wordIdx=%d";
            goto LABEL_24;
          }

          return 0;
        }
      }

      else
      {
        v24 = a3[2];
        while (v20 > v24)
        {
          v24 = *(*(v8 + 224 * v24 + 56) + 32 * v11 + 10) + 1;
          if (!--v23)
          {
            goto LABEL_21;
          }
        }
      }

      *a5 = 0;
      if (a1[4] >= 2u)
      {
        v21 = *(*a1 + 32);
        v22 = "           [2] _RIGHT doesnt exist, return LH_FALSE";
        goto LABEL_38;
      }
    }

LABEL_40:
    result = 0;
    *a6 = v9;
    return result;
  }

  if (a4 != 1)
  {
    if (a4 || a1[4] < 2u)
    {
      goto LABEL_40;
    }

    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           _CUR wordIdx=%d", a6, a7, a8, a3[2]);
    goto LABEL_39;
  }

  if (a3[2])
  {
    v15 = a3[3] + 1;
    if ((v15 & 0x10000) == 0)
    {
      v16 = a3[2];
      do
      {
        v25 = v16 - 1;
        v26 = *(v8 + 224 * v25 + 56) + 32 * v11;
        if (!*(v26 + 4))
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "wordindex=%d does not end previous phrase", a6, a7, a8, v25);
          return 2315264000;
        }

        v16 = *(v26 + 8);
        --v15;
      }

      while (v15 && *(v26 + 8));
      if (!v15)
      {
        goto LABEL_12;
      }

      *a5 = 0;
      if (a1[4] >= 2u)
      {
        v21 = *(*a1 + 32);
        v22 = "           [2] _LEFT doesnt exist, return LH_FALSE";
        goto LABEL_38;
      }

      goto LABEL_40;
    }

    v16 = a3[2];
LABEL_12:
    *a6 = v16;
    if (a1[4] >= 2u)
    {
      v17 = *(*a1 + 32);
      v18 = a3[2];
      v19 = "           [3] _LEFT wordIdx=%d";
LABEL_24:
      log_OutText(v17, "FE_PHRASING", 5, 0, v19, a6, a7, a8, v18);
      return 0;
    }

    return 0;
  }

  *a5 = 0;
  if (a1[4] >= 2u)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           [1] _LEFT doesnt exist, return LH_FALSE", a6, a7, a8, 0);
    LOWORD(v9) = a3[2];
  }

  result = 0;
  *a6 = v9;
  return result;
}

uint64_t readRULE(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  result = readCONTEXT(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    result = readCONTEXT(a1, a2, a3, a4 + 1);
    if ((result & 0x80000000) == 0)
    {

      return readCONTEXT(a1, a2, a3, a4 + 2);
    }
  }

  return result;
}

uint64_t readCONTEXT(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = *(a2 + v4);
  *a3 = v4 + 2;
  if (!v5)
  {
    return 0;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, 17);
  if (v10 && (v15 = v10, *(v10 + 8) = v5, v16 = heap_Calloc(*(a1 + 8), 1, (6 * v5) | 1), (*v15 = v16) != 0))
  {
    if (*(v15 + 8))
    {
      v17 = 0;
      v18 = 0;
      v19 = *a3;
      do
      {
        *(v16 + v17) = *(a2 + v19);
        v20 = *a3 + 2;
        *a3 = v20;
        *(*v15 + v17 + 2) = *(a2 + v20);
        v21 = *a3;
        v22 = *a3 + 2;
        *a3 = v22;
        LOBYTE(v22) = *(a2 + v22);
        v19 = v21 + 4;
        *a3 = v19;
        v16 = *v15;
        *(*v15 + v17 + 4) = v22;
        ++v18;
        v17 += 6;
      }

      while (v18 < *(v15 + 8));
    }

    v23 = 0;
    *a4 = v15;
  }

  else
  {
    v23 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v11, v12, v13, v14, v25);
  }

  return v23;
}

uint64_t nn_phrasing_checkIfActive(_WORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v19 = 0;
  v20 = 0;
  *a4 = 0;
  BrokerString = nn_phrasing_getBrokerString(a3, &v20);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v9 = v20;
  if ((ssftriff_reader_ObjOpen(a1, a2, 2, v20, "FINN", 1, &v19) & 0x80000000) != 0)
  {
    v17 = 0;
    if (!v9)
    {
      return v17;
    }

LABEL_9:
    heap_Free(*(a3 + 8), v9);
    return v17;
  }

  v17 = ssftriff_reader_ObjClose(v19, v10, v11, v12, v13, v14, v15, v16);
  if ((v17 & 0x80000000) == 0)
  {
    *a4 = 1;
  }

  if (v9)
  {
    goto LABEL_9;
  }

  return v17;
}

uint64_t nn_phrasing_getBrokerString(uint64_t a1, char **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = "";
  *v13 = 0;
  memset(v14, 0, sizeof(v14));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v13);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v12);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v5 = heap_Calloc(*(a1 + 8), 1, 1024);
      *a2 = v5;
      if (v5)
      {
        result = brokeraux_ComposeBrokerString(a1, v14, 1, 1, *v13, 0, 0, v5, 0x400uLL);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v6, v7, v8, v9, v11);
        result = 2315264010;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nn_phrasing_Load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9)
{
  v152[4] = *MEMORY[0x1E69E9840];
  v141 = 0;
  *(a9 + 7) = 0u;
  *(a9 + 8) = 0u;
  *(a9 + 5) = 0u;
  *(a9 + 6) = 0u;
  *(a9 + 3) = 0u;
  *(a9 + 4) = 0u;
  *(a9 + 1) = 0u;
  *(a9 + 2) = 0u;
  *a9 = 0u;
  v150 = 0;
  v149 = -1;
  v148 = 0;
  v146 = 0;
  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_puncpause", a9);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_resppause", a9 + 1);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_numadditionalfields", a9 + 2);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_maxwordsinsent", a9 + 3);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_thresholdpercent", a9 + 4);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_numfeats", a9 + 5);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_dolenverification", a9 + 8);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_dophrverification", a9 + 7);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_docompverification", a9 + 6);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  NumericFeatureValue = getNumericFeatureValue(a6, a7, a8, "nnpausing_usedynamicstep", a9 + 9);
  if ((NumericFeatureValue & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  v140 = 0;
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_puncpause %d", v18, v19, v20, *a9);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_resppause %d", v21, v22, v23, a9[1]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_numadditionalfields %d", v24, v25, v26, a9[2]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_maxwordsinsent %d", v27, v28, v29, a9[3]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_thresholdpercent %d", v30, v31, v32, a9[4]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_numfeats %d", v33, v34, v35, a9[5]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_dolenverification %d", v36, v37, v38, a9[8]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_dophrverification %d", v39, v40, v41, a9[7]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_docompverification %d", v42, v43, v44, a9[6]);
  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "nnpausing_usedynamicstep %d", v45, v46, v47, a9[9]);
  if (a9[5])
  {
    v48 = heap_Calloc(*(a5 + 8), 1, 32 * a9[5]);
    *(a9 + 4) = v48;
    if (!v48)
    {
      v86 = 2315264010;
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v49, v50, v51, v52, v125);
      goto LABEL_67;
    }

    if (a9[5])
    {
      v53 = 0;
      v54 = 0;
      v136 = 0;
      strcpy(&v131, "ng_feat");
      v132 = *"nnpausing_feat";
      *v137 = a5;
      while (1)
      {
        v138 = v54;
        v139 = v53;
        memset(&v152[1] + 7, 0, 17);
        v152[0] = v132;
        *(v152 + 7) = v131;
        LH_itoa(v54, v147, 0xAu);
        __strcat_chk();
        v149 = -1;
        NumericFeatureValue = (*(a6 + 96))(a7, a8, "fecfg", v152, &v150, &v149, &v148);
        if ((NumericFeatureValue & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

        if (v149)
        {
          break;
        }

        v65 = v139;
LABEL_34:
        v54 = v138 + 1;
        v53 = v65 + 32;
        if (v138 + 1 >= a9[5])
        {
          goto LABEL_35;
        }
      }

      v55 = *v150;
      v56 = strchr(*v150, 124);
      if (v56)
      {
        *v56 = 0;
        __s1 = v56 + 1;
        v62 = strchr(v56 + 1, 124);
        if (v62)
        {
          *v62 = 0;
          __s = v62 + 1;
          v63 = strchr(v62 + 1, 124);
          if (v63)
          {
            *v63 = 0;
            v133 = v63 + 1;
            v64 = strchr(v63 + 1, v148);
            if (v64)
            {
              *v64 = 0;
            }

LABEL_26:
            NumericFeatureValue = setStr(a5, (*(a9 + 4) + v139), v55, v57, v58, v59, v60, v61);
            if ((NumericFeatureValue & 0x80000000) != 0)
            {
              goto LABEL_66;
            }

            if (__s1)
            {
              v71 = strcmp(__s1, "NUMERIC");
              v72 = *(a9 + 4);
              if (!v71)
              {
                v73 = v139;
                *(v72 + v139 + 8) = 1;
LABEL_32:
                NumericFeatureValue = setStr(*v137, (v72 + v73 + 16), __s, v66, v67, v68, v69, v70);
                if ((NumericFeatureValue & 0x80000000) != 0)
                {
                  goto LABEL_66;
                }

                v74 = atoi(v133);
                v75 = *(a9 + 4) + v73;
                *(v75 + 26) = v74;
                *(v75 + 28) = v136;
                v136 += v74;
                v65 = v73;
                a5 = *v137;
                goto LABEL_34;
              }
            }

            else
            {
              v72 = *(a9 + 4);
            }

            v73 = v139;
            goto LABEL_32;
          }

LABEL_25:
          v133 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        __s1 = 0;
      }

      __s = 0;
      goto LABEL_25;
    }

LABEL_35:
    v76 = *(a5 + 8);
    *&v142 = ssftmap_ElemCopyString;
    *(&v142 + 1) = ssftmap_ElemFreeString;
    v143 = ssftmap_ElemCompareKeysString;
    v144 = ssftmap_ElemCopyString;
    v145 = ssftmap_ElemFreeString;
    NumericFeatureValue = ssftmap_ObjOpen(v76, 0, &v142, a9 + 3);
    if ((NumericFeatureValue & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v149 = -1;
    NumericFeatureValue = (*(a6 + 96))(a7, a8, "fecfg", "nnpausing_cols", &v150, &v149, &v148);
    if ((NumericFeatureValue & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    if (v149)
    {
      v77 = *v150;
      v78 = strchr(*v150, v148);
      if (v78)
      {
        *v78 = 0;
        v77 = *v150;
      }

      v79 = strchr(v77, 124);
      if (v79)
      {
        v80 = v79;
        v81 = 0;
        while (1)
        {
          *v80 = 0;
          LH_itoa(v81, v151, 0xAu);
          log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "Feature to index mappings %s -> %s", v82, v83, v84, v77);
          NumericFeatureValue = ssftmap_Insert(*(a9 + 3), v77, v151);
          if ((NumericFeatureValue & 0x80000000) != 0)
          {
            goto LABEL_66;
          }

          ++v81;
          v77 = v80 + 1;
          v80 = strchr(v80 + 1, 124);
          if (!v80)
          {
            v85 = v81;
            goto LABEL_48;
          }
        }
      }

      if (v77)
      {
        v85 = 0;
LABEL_48:
        LH_itoa(v85, v151, 0xAu);
        NumericFeatureValue = ssftmap_Insert(*(a9 + 3), v77, v151);
        if ((NumericFeatureValue & 0x80000000) != 0)
        {
          goto LABEL_66;
        }
      }
    }

    if (a9[5])
    {
      v87 = 0;
      v88 = 0;
      v89 = *(a9 + 4);
      do
      {
        ReadOnly = ssftmap_FindReadOnly(*(a9 + 3), *(v89 + v87 + 16), &v146);
        if ((ReadOnly & 0x1FFF) == 0x14)
        {
          v128 = *(*(a9 + 4) + v87 + 16);
          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37005, "%s%s", v91, v92, v93, v94, "expected default value for");
          v86 = 2315264000;
          goto LABEL_67;
        }

        v86 = ReadOnly;
        v95 = atoi(v146);
        v89 = *(a9 + 4);
        *(v89 + v87 + 24) = v95;
        ++v88;
        v87 += 32;
      }

      while (v88 < a9[5]);
      if ((v86 & 0x80000000) != 0)
      {
        goto LABEL_67;
      }
    }
  }

  NumericFeatureValue = nn_word_lkp_GetInterface(1u, a9 + 9);
  if ((NumericFeatureValue & 0x80000000) != 0 || (*(a9 + 10) = safeh_GetNullHandle(), *(a9 + 11) = v96, *(a9 + 12) = safeh_GetNullHandle(), *(a9 + 13) = v97, NumericFeatureValue = (*(*(a9 + 9) + 16))(*(a9 + 10), *(a9 + 11), "word", a1, a2), (NumericFeatureValue & 0x80000000) != 0) || (NumericFeatureValue = (*(*(a9 + 9) + 40))(*(a9 + 12), *(a9 + 13), a9 + 56), (NumericFeatureValue & 0x80000000) != 0))
  {
LABEL_66:
    v86 = NumericFeatureValue;
    goto LABEL_67;
  }

  log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "word2vec length %d", v98, v99, v100, *(a9 + 28));
  v101 = heap_Alloc(*(a5 + 8), 4 * *(a9 + 28));
  *(a9 + 15) = v101;
  if (v101)
  {
    BrokerString = nn_phrasing_getBrokerString(a5, &v141);
    v107 = v141;
    if ((BrokerString & 0x80000000) != 0)
    {
      v86 = BrokerString;
    }

    else
    {
      v108 = fi_init(a1, a2, a3, a4, &v140, 0, v141, "FINN", 1, 0);
      if ((v108 & 0x80000000) != 0)
      {
        log_OutPublic(*(a5 + 32), "FE_PHRASING", 37006, 0, v109, v110, v111, v112, v127);
        v86 = 2315264000;
      }

      else
      {
        v86 = v108;
        v113 = *v140;
        v114 = *(*v140 + 52);
        if (a9[9])
        {
          if (v114 == 2 && *(v113 + 60) == *(a9 + 28) + a9[2])
          {
            v115 = a9[3];
            goto LABEL_64;
          }

          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37003, "%s%d%s%d", v109, v110, v111, v112, "expected");
        }

        else
        {
          v115 = a9[3];
          if (v114 == 2)
          {
            if (*(v113 + 56) == v115 && *(v113 + 60) == *(a9 + 28) + a9[2])
            {
LABEL_64:
              *(a9 + 6) = v140;
              v116 = heap_Calloc(*(a5 + 8), 1, (12 * v115) | 1);
              *(a9 + 16) = v116;
              if (!v116)
              {
                v86 = 2315264010;
                log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v117, v118, v119, v120, v127);
              }

              goto LABEL_80;
            }
          }

          else
          {
            v123 = *(a9 + 28);
            v124 = a9[2];
          }

          v130 = a9[3];
          v129 = *(v113 + 60);
          log_OutPublic(*(a5 + 32), "FE_PHRASING", 37003, "%s%d%d%s%d%d", v109, v110, v111, v112, "expected");
        }

        v86 = 2315264025;
      }
    }
  }

  else
  {
    v86 = 2315264010;
    log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v102, v103, v104, v105, v126);
    v107 = v141;
  }

LABEL_80:
  if (v107)
  {
    heap_Free(*(a5 + 8), v107);
  }

LABEL_67:
  v121 = *MEMORY[0x1E69E9840];
  return v86;
}