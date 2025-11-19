uint64_t printMSTree(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, unsigned int a6, const char **a7, char *a8, unsigned __int16 *a9, char *a10, unsigned __int16 a11)
{
  if (!a4)
  {
    return 0;
  }

  v16 = a3;
  kbsymtab_ConsSymString(a3, *(a4 + 16), a10, a11);
  v42 = a5;
  if (a6)
  {
    cstdlib_strcpy(a8, "");
    v18 = 0;
    do
    {
      cstdlib_strcat(a8, "  ");
      ++v18;
    }

    while (a6 > v18);
    result = add2Str(a1, a7, a9, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  result = add2Str(a1, a7, a9, a10);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = add2Str(a1, a7, a9, "(");
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (*(a4 + 24) < 1)
  {
LABEL_18:
    result = add2Str(a1, a7, a9, ")");
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a4 + 8))
    {
      v25 = cstdlib_strlen(a5);
      v26 = *(a4 + 56);
      if (v26 > v25)
      {
        *(a4 + 56) = v25;
        v26 = v25;
      }

      v27 = *(a4 + 52);
      if (v27 > v25 || v26 > v25 || (v28 = __OFSUB__(v26, v27), v29 = v26 - v27, (v29 < 0) ^ v28 | (v29 == 0)))
      {
        v33 = "<ERROR>";
        v30 = a1;
        v31 = a7;
        v32 = a9;
      }

      else
      {
        cstdlib_strncpy(a10, &a5[v27], (v29 - 1));
        a10[(*(a4 + 56) + ~*(a4 + 52))] = 0;
        a5 = v42;
        sprintf(a8, " <%s>", a10);
        v30 = a1;
        v31 = a7;
        v32 = a9;
        v33 = a8;
      }

      result = add2Str(v30, v31, v32, v33);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", v22, v23, v24, *a7);
    cstdlib_strcpy(*a7, "");
    v34 = *(a4 + 8);
    if (v34)
    {
      v41 = v16;
      do
      {
        if (a6 && v34 != *(a4 + 8))
        {
          v35 = a5;
          cstdlib_strcpy(a8, "");
          v36 = 0;
          do
          {
            cstdlib_strcat(a8, "  ");
            ++v36;
          }

          while (a6 > v36);
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s,", v37, v38, v39, a8);
          cstdlib_strcpy(*a7, "");
          a5 = v35;
          v16 = v41;
        }

        LOWORD(v40) = a11;
        result = printMSTree(a1, a2, v16, v34, a5, (a6 + 1), a7, a8, a9, a10, v40);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = 0;
        v34 = *v34;
      }

      while (v34);
      return result;
    }

    return 0;
  }

  v20 = 0;
  while (1)
  {
    if (v20)
    {
      result = add2Str(a1, a7, a9, ",");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v21 = *(a4 + 26 + 2 * v20);
    if (v21 < 0)
    {
      result = mosyntkbsymtab_AtomSymString(a2, v16, -v21, a10, a11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(a1, a7, a9, a10);
      a5 = v42;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      sprintf(a8, "?%d", *(a4 + 26 + 2 * v20));
      result = add2Str(a1, a7, a9, a8);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*(a4 + 24) <= ++v20)
    {
      goto LABEL_18;
    }
  }
}

uint64_t getStartAndEndFromMSTree(uint64_t a1, _WORD *a2, _WORD *a3, _DWORD *a4)
{
  if (a1)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      do
      {
        getStartAndEndFromMSTree(v7, a2, a3, a4);
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      if (!*a4)
      {
        *a2 = *(a1 + 52);
        *a4 = 1;
      }

      *a3 = *(a1 + 56);
    }
  }

  return 0;
}

uint64_t addMSNode(uint64_t a1, char *__s, __int16 a3, __int16 a4, uint64_t a5)
{
  if (!*(a5 + 8))
  {
    v17 = heap_Calloc(*(a1 + 8), 1, 513);
    *a5 = v17;
    if (v17)
    {
      v16 = 32;
      goto LABEL_7;
    }

LABEL_10:
    v21 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v12, v13, v14, v15, v25);
    return v21;
  }

  v10 = *(a5 + 10);
  if (*(a5 + 8) + 1 < v10)
  {
    goto LABEL_8;
  }

  v11 = heap_Realloc(*(a1 + 8), *a5, 16 * v10 + 257);
  if (!v11)
  {
    goto LABEL_10;
  }

  *a5 = v11;
  v16 = *(a5 + 10) + 16;
LABEL_7:
  *(a5 + 10) = v16;
LABEL_8:
  v18 = *(a1 + 8);
  v19 = cstdlib_strlen(__s);
  v20 = heap_Calloc(v18, 1, (v19 + 1));
  *(*a5 + 16 * *(a5 + 8)) = v20;
  if (!v20)
  {
    goto LABEL_10;
  }

  cstdlib_strcpy(v20, __s);
  v21 = 0;
  v22 = *(a5 + 8);
  v23 = *a5 + 16 * v22;
  *(v23 + 8) = a3;
  *(v23 + 10) = a4;
  *(v23 + 12) = 1;
  *(a5 + 8) = v22 + 1;
  return v21;
}

uint64_t printMSNodes(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", a6, a7, a8, a5);
  if (*(a4 + 8))
  {
    v14 = 0;
    for (i = 8; ; i += 16)
    {
      v16 = (*a4 + i);
      v17 = v16[1];
      v18 = *v16;
      v19 = (v17 - v18);
      v20 = v19 >= 0x3FF ? 1023 : v19;
      result = cstdlib_strncpy(a2, (a3 + v18), v20);
      a2[v20] = 0;
      if (v8 == 1)
      {
        break;
      }

      if (*(*a4 + i + 4) == 1)
      {
        v24 = *(a1 + 32);
        goto LABEL_10;
      }

LABEL_11:
      if (++v14 >= *(a4 + 8))
      {
        return result;
      }
    }

    v24 = *(a1 + 32);
LABEL_10:
    result = log_OutText(v24, "FE_PHRASING", 5, 0, "%d [%d] %s : <%d - %d> <%s>", v21, v22, v23, v14);
    goto LABEL_11;
  }

  return result;
}

uint64_t validateMSNodes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 4);
  if (!*(a2 + 4))
  {
    return 0;
  }

  v9 = 0;
  v10 = *a2;
  while (2)
  {
    v11 = v9;
    v12 = (*a2 + 12 + 16 * v9);
    while (1)
    {
      v13 = *v12;
      v12 += 4;
      if (v13)
      {
        break;
      }

      if (++v11 >= v8)
      {
        goto LABEL_12;
      }
    }

    v14 = v11;
    do
    {
      ++v14;
    }

    while (v8 > v14 && !*(v10 + 16 * v14 + 12));
    if (v14 + 1 < v8 && *(v10 + 16 * v11 + 10) != *(v10 + 16 * v14 + 8))
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "could not extract from MS tree : node=%d", a6, a7, a8, v11);
      return 2315264000;
    }

LABEL_12:
    v9 = v11 + 1;
    if (v8 > (v11 + 1))
    {
      continue;
    }

    return 0;
  }
}

uint64_t getWordIdxForMSPhr(uint64_t a1, _WORD *a2, uint64_t a3, int a4, _WORD *a5, _WORD *a6, uint64_t a7, uint64_t a8)
{
  if (!a2[4])
  {
LABEL_5:
    v11 = 2315264000;
    v12 = *(a1 + 32);
    v13 = "cant match MS terminal node with start word : start position=%d";
LABEL_13:
    log_OutText(v12, "FE_PHRASING", 5, 0, v13, a6, a7, a8, a3);
    return v11;
  }

  v8 = 0;
  v9 = (*a2 + 2);
  v10 = 1;
  while (*(*a2 + 224 * v8) != a3)
  {
    ++v8;
    ++v10;
    v9 += 112;
    if (v8 >= a2[4])
    {
      goto LABEL_5;
    }
  }

  *a5 = v8;
  *a6 = v8;
  LODWORD(v14) = a2[4];
  if (v8 >= v14)
  {
LABEL_12:
    v11 = 2315264000;
    v12 = *(a1 + 32);
    v13 = "cant match MS terminal node with end word : start position=%d start word=%d unknown end=%d";
    goto LABEL_13;
  }

  while (1)
  {
    v16 = *v9;
    v9 += 112;
    v15 = v16;
    if (a4 - 1 == v16 || v10 == v14 && v15 == a4)
    {
      return 0;
    }

    *a6 = v10;
    v14 = a2[4];
    if (v10++ >= v14)
    {
      goto LABEL_12;
    }
  }
}

uint64_t mapMSNodes2PHR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = 0;
  v31 = 0;
  v8 = *(a2 + 8);
  if (v8)
  {
    v11 = 0;
    while (2)
    {
      v12 = v11;
      v13 = (*a2 + 16 * v11 + 12);
      while (1)
      {
        v14 = *v13;
        v13 += 4;
        if (v14)
        {
          break;
        }

        if (++v12 >= v8)
        {
          goto LABEL_23;
        }
      }

      v15 = 0;
      v31 = 0;
      do
      {
        if (v15 >= *(a1 + 640))
        {
          goto LABEL_18;
        }

        if (*(*(a1 + 632) + 4 * v15) == 1)
        {
          v16 = *(*(*(a1 + 624) + 8 * v15) + 2);
          v17 = *(*a2 + 16 * v12);
          v18 = cstdlib_strlen(v17);
          result = do_pcre_exec(a1 + 8, v16, v17, v18, 0, &v31, v19, v20);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else if (!cstdlib_strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * **(*(a1 + 624) + 8 * v15))), *(*a2 + 16 * v12)))
        {
          v31 = 1;
        }

        v22 = v15++;
      }

      while (!v31);
      if (v31 != 1)
      {
LABEL_18:
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "no rules FIRE on %s -> %s", a6, a7, a8, *(*a2 + 16 * v12));
        v27 = "O";
        goto LABEL_20;
      }

      v23 = *(a1 + 536);
      v24 = *(a1 + 544);
      v25 = *(*(a1 + 624) + 8 * v22);
      v26 = *(*a1 + 32);
      if (*(*(a1 + 632) + 4 * v22) == 1)
      {
        v27 = (v23 + *(v24 + 4 * *(v25 + 8)));
        log_OutText(v26, "FE_PHRASING", 5, 0, "regex rule %d FIRED %s -> %s", a6, a7, a8, *(v25 + 2));
      }

      else
      {
        v27 = (v23 + *(v24 + 4 * *(v25 + 4)));
        log_OutText(v26, "FE_PHRASING", 5, 0, "normal rule FIRED %s -> %s", a6, a7, a8, *(*a2 + 16 * v12));
      }

LABEL_20:
      result = getWordIdxForMSPhr(*a1, (a1 + 672), *(*a2 + 16 * v12 + 8), *(*a2 + 16 * v12 + 10), &v30 + 1, &v30, v28, v29);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = addPHRRange(*a1, HIWORD(v30), v30, v27, (a1 + 672));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v8 = *(a2 + 8);
LABEL_23:
      v11 = v12 + 1;
      if ((v12 + 1) < v8)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t sortMSNodes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Sort MS Nodes Pass 1 : constrain nodes containing primitives", a6, a7, a8, 0);
  LODWORD(v13) = *(a2 + 4);
  if (*(a2 + 4))
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *a2 + 16 * v14;
      if (*(v17 + 12) == 1)
      {
        v18 = *(v17 + 8);
        v19 = *(v17 + 10);
        if (*(a1 + 16) >= 2u)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "doing node %d", v10, v11, v12, v15);
          LODWORD(v13) = *(a2 + 4);
        }

        if (v13)
        {
          v20 = 0;
          v48 = v19;
          while (1)
          {
            if (v14 != v20)
            {
              v21 = *a2 + 16 * v20;
              if (*(v21 + 12) == 1 && *(v21 + 8) >= v18 && *(v21 + 10) <= v19)
              {
                break;
              }
            }

LABEL_32:
            ++v20;
            v13 = *(a2 + 4);
            if (v20 >= v13)
            {
              goto LABEL_33;
            }
          }

          if (*(a1 + 16) >= 2u)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "checking node %d apply %d basicdef rules", v10, v11, v12, v20);
          }

          v22 = 0;
          v49 = 0;
          do
          {
            if (v22 >= *(a1 + 616))
            {
              v19 = v48;
              goto LABEL_32;
            }

            if (*(*(a1 + 608) + 4 * v22) == 1)
            {
              v23 = *(*(*(a1 + 600) + 8 * v22) + 2);
              v24 = *(*a2 + 16 * v20);
              v25 = cstdlib_strlen(v24);
              v16 = do_pcre_exec(a1 + 8, v23, v24, v25, 0, &v49, v26, v27);
              if ((v16 & 0x80000000) != 0)
              {
                return v16;
              }

              if (*(a1 + 16) >= 2u)
              {
                v28 = "NOMATCH ";
                if (v49 == 1)
                {
                  v28 = "FIRED ";
                }

                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           %sbasicDef: rule %d : regexNum %d [%s] target %s", v10, v11, v12, v28);
              }
            }

            else if (cstdlib_strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * **(*(a1 + 600) + 8 * v22))), *(*a2 + 16 * v20)))
            {
              if (*(a1 + 16) >= 2u)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           basicDef: rule %d %s does not match string %s", v10, v11, v12, v22);
              }
            }

            else
            {
              v49 = 1;
              if (*(a1 + 16) >= 2u)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           basicDef: rule %d %s matched string with rule %s", v10, v11, v12, v22);
              }
            }

            ++v22;
          }

          while (!v49);
          v19 = v48;
          if (v49 != 1)
          {
            goto LABEL_32;
          }

          v29 = *(*a1 + 32);
          if (*(*a2 + 16 * v14 + 8) == *(*a2 + 16 * v20 + 8))
          {
            log_OutText(v29, "FE_PHRASING", 5, 0, "BLOCK decrease node %d from %d to %d, since matches entire node", v10, v11, v12, v15);
            goto LABEL_32;
          }

          log_OutText(v29, "FE_PHRASING", 5, 0, "decrease node %d from %d to %d", v10, v11, v12, v15);
          *(*a2 + 16 * v14 + 10) = *(*a2 + 16 * v20 + 8);
          LODWORD(v13) = *(a2 + 4);
        }
      }

LABEL_33:
      v15 = ++v14;
    }

    while (v14 < v13);
  }

  else
  {
    v16 = 0;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Sort MS Nodes Pass 2 : delete consumed nodes", v10, v11, v12, 0);
  v30 = *(a2 + 4);
  if (*(a2 + 4))
  {
    v31 = 0;
    v32 = *a2;
    v33 = *a2 + 12;
    do
    {
      v34 = v32 + 16 * v31;
      if (*(v34 + 12) == 1)
      {
        v35 = 0;
        v36 = *(v34 + 8);
        v37 = *(v34 + 10);
        v38 = v33;
        v39 = v31;
        do
        {
          if (*v38 == 1 && *(v38 - 2) == v36 && *(v38 - 1) > v37)
          {
            v37 = *(v38 - 1);
            v39 = v35;
          }

          ++v35;
          v38 += 4;
        }

        while (v30 != v35);
        v40 = v39;
        v41 = v30;
        v42 = v33;
        v43 = v32 + 16 * v39;
        do
        {
          v44 = *(v42 - 2);
          if (v44 == v36 && *v42 == 1 && v40 != 0)
          {
            *v42 = 0;
          }

          if (v44 > v36 && *v42 == 1 && *(v42 - 1) <= *(v43 + 10) && v40 != 0)
          {
            *v42 = 0;
          }

          v42 += 4;
          --v40;
          --v41;
        }

        while (v41);
      }

      ++v31;
    }

    while (v31 != v30);
  }

  return v16;
}

void *freeMSNodes(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  v5 = *a2;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      heap_Free(v3[1], *(v5 + v6));
      v5 = *a2;
      *(*a2 + v6) = 0;
      ++v7;
      v6 += 16;
    }

    while (v7 < *(a2 + 8));
    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    result = heap_Free(v3[1], v5);
    *a2 = 0;
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t extractFromMSTree(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, unsigned __int16 a12)
{
  if (!a4)
  {
    return 0;
  }

  kbsymtab_ConsSymString(a3, *(a4 + 16), a11, a12);
  v18 = 0;
  v39 = 0;
  while (v18 < *(a1 + 592))
  {
    if (*(*(a1 + 584) + 4 * v18) == 1)
    {
      v19 = *(*(*(a1 + 576) + 8 * v18) + 2);
      v20 = cstdlib_strlen(a11);
      result = do_pcre_exec(a1 + 8, v19, a11, v20, 0, &v39, v21, v22);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else if (!cstdlib_strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * **(*(a1 + 576) + 8 * v18))), a11))
    {
      v39 = 1;
    }

    ++v18;
    if (v39)
    {
      if (v39 == 1)
      {
        v37 = 0;
        v38 = 0;
        getStartAndEndFromMSTree(a4, &v38 + 1, &v38, &v37);
        result = addMSNode(*a1, a11, SHIWORD(v38), v38, a10);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      break;
    }
  }

  v24 = *(a4 + 8);
  if (v24)
  {
    do
    {
      LOWORD(v34) = a12;
      result = extractFromMSTree(a1, a2, a3, v24, a5, (a6 + 1), a7, a8, a9, a10, a11, v34);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v24 = *v24;
    }

    while (v24);
    return result;
  }

  v25 = a5;
  v26 = cstdlib_strlen(a5);
  v30 = *(a4 + 56);
  if (v30 > v26)
  {
    *(a4 + 56) = v26;
    v30 = v26;
  }

  v31 = *(a4 + 52);
  if (v31 > v26 || v30 > v26 || v30 <= v31)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "error extracting from MS tree : OUTOFRANGE s32StartPos=%d s32EndPos=%d len=%d", v27, v28, v29, v31);
    return 2315264000;
  }

  if (v30 - v31 == 1)
  {
    v32 = 0;
    v33 = a4;
  }

  else
  {
    v32 = utf8_BelongsToSet(0, a5, v30 - 1, v26) ? -1 : 0;
    v33 = a4;
    LODWORD(v31) = *(a4 + 52);
    v30 = *(a4 + 56);
  }

  cstdlib_strncpy(a11, &v25[v31], (v32 - v31 + v30));
  a11[*(v33 + 56) + v32 - *(v33 + 52)] = 0;
  result = addMSNode(*a1, a11, *(v33 + 52), *(v33 + 56), a10);
  if ((result & 0x80000000) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t setNNPausingDefault(uint64_t a1, char **a2, char *__s)
{
  v6 = *(a1 + 8);
  v7 = cstdlib_strlen(__s);
  v8 = heap_Calloc(v6, 1, (v7 + 1));
  *a2 = v8;
  if (v8)
  {
    cstdlib_strcpy(v8, __s);
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v9, v10, v11, v12, v14);
    return 2315264010;
  }
}

uint64_t getStartOfOrthPunc(const char *a1, _DWORD *a2)
{
  v4 = cstdlib_strlen(a1);
  *a2 = 0;
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = utf8_determineUTF8CharLength(a1[v5]);
      v7 = a1[v5];
      if (v6 == 1 && v7 == 44)
      {
        break;
      }

      v8 = v7 > 0x3F;
      v9 = (1 << v7) & 0x8C00430200000000;
      if (!v8 && v9 != 0)
      {
        break;
      }

      v5 += v6;
      if (v5 >= v4)
      {
        return v4;
      }
    }

    *a2 = 1;
  }

  else
  {
    return v4;
  }

  return v5;
}

uint64_t getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  *v233 = 0;
  v232 = 0;
  v230 = 0;
  v231 = 0;
  v228 = 0;
  v229 = 0;
  v226 = 0;
  v227 = 0;
  __s = 0;
  v224 = 0;
  v222 = 0;
  v223 = 0;
  __b[0] = 0;
  __b[1] = 0;
  v220 = 0;
  v219 = 0;
  cstdlib_memset(__b, 0, 0x10uLL);
  *(a6 + 1108) = log_GetLogLevel(*(a1 + 32)) > 4;
  v16 = (*(a3 + 104))(a4, a5, 1, 0, &v233[1]);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = (*(a3 + 184))(a4, a5, v233[1], 0, &v232);
  if ((v17 & 0x80000000) == 0 && v232 == 1)
  {
    v17 = (*(a3 + 176))(a4, a5, v233[1], 0, &v231, &v229);
    if ((v17 & 0x80000000) == 0 && v229 >= 2u)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Method PandP : processing=%s", v18, v19, v20, v231);
      v21 = heap_Calloc(*(a1 + 8), 1, 1024);
      *(a6 + 1088) = v21;
      if (v21 && (*(a6 + 1104) = 1024, v26 = heap_Calloc(*(a1 + 8), 1, 1024), (*(a6 + 1096) = v26) != 0))
      {
        v27 = cstdlib_strlen(v231) + 1;
        v32 = heap_Calloc(*(a1 + 8), 1, v27);
        if (v32)
        {
          v212 = v27;
          v33 = (*(a3 + 104))(a4, a5, 2, v233[1], v233);
          if ((v33 & 0x80000000) != 0)
          {
            v17 = v33;
          }

          else
          {
            v213 = a2;
            v214 = 0;
            v211 = (a6 + 1104);
            v17 = 2315271857;
            v216 = (a6 + 672);
            while (v233[0])
            {
              v34 = (*(a3 + 168))(a4, a5);
              if ((v34 & 0x80000000) != 0)
              {
                goto LABEL_72;
              }

              if (v228 <= 0xA && ((1 << v228) & 0x610) != 0)
              {
                v34 = (*(a3 + 168))(a4, a5, v233[0], 1, 1, &v224, &v229);
                if ((v34 & 0x80000000) != 0)
                {
                  goto LABEL_72;
                }

                v34 = (*(a3 + 168))(a4, a5, v233[0], 2, 1, &v224 + 2, &v229);
                if ((v34 & 0x80000000) != 0)
                {
                  goto LABEL_72;
                }

                if (v224 > HIWORD(v224))
                {
                  goto LABEL_73;
                }

                v34 = (*(a3 + 176))(a4, a5, v233[0], 3, &v226, &v229);
                if ((v34 & 0x80000000) != 0)
                {
                  goto LABEL_72;
                }

                cstdlib_strncpy(v32, &v231[v224], HIWORD(v224) - v224);
                v32[HIWORD(v224) - v224] = 0;
                if (HIWORD(v224) == v224)
                {
                  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v36, v37, v38, HIWORD(v224));
                }

                else
                {
                  v218 = 0;
                  v217 = 0;
                  v39 = doesWordEndInComma(v32);
                  v40 = v32;
                  v41 = v39;
                  v42 = v40;
                  v43 = addWord(a1, v40, &v224, v226, a6 + 8, v216);
                  if ((v43 & 0x80000000) != 0)
                  {
                    goto LABEL_56;
                  }

                  v215 = *(a6 + 680);
                  if (((*(a3 + 184))(a4, a5, v233[0], 8, &v232) & 0x80000000) == 0 && v232 == 1)
                  {
                    v16 = (*(a3 + 168))(a4, a5, v233[0], 8, 1, &v217, &v229);
                    if ((v16 & 0x80000000) != 0)
                    {
                      return v16;
                    }
                  }

                  if (v217)
                  {
                    *(*(a6 + 672) + 224 * *(a6 + 680) - 8) = 2;
                  }

                  if (v41)
                  {
                    *(*(a6 + 672) + 224 * *(a6 + 680) - 196) = 1;
                  }

                  v43 = (*(a3 + 184))(a4, a5, v233[0], 14, &v232);
                  if ((v43 & 0x80000000) != 0 || (v44 = v215 - 1, v232) && ((*(a3 + 176))(a4, a5, v233[0], 14, &v218, &v229) & 0x80000000) == 0 && (v219 = 1, v43 = parse_NLU_string(a6, v218, (v215 - 1), v215, &v219, a8), (v43 & 0x80000000) != 0) || (v43 = (*(a3 + 176))(a4, a5, v233[0], 5, &__s, &v229), (v43 & 0x80000000) != 0) || (v214 = v219) == 0 && (v43 = addMSPOS(a1, v44, __s, a6 + 8, v216), (v43 & 0x80000000) != 0) || (v43 = checkMSPOSForCompound(a1, v44, __s, a6 + 8, v216), (v43 & 0x80000000) != 0))
                  {
LABEL_56:
                    v17 = v43;
                    v32 = v42;
                    goto LABEL_73;
                  }

                  v32 = v42;
                }
              }

              v34 = (*(a3 + 120))(a4, a5, v233[0], v233);
              if ((v34 & 0x80000000) != 0)
              {
                goto LABEL_72;
              }
            }

            expandAndValidateCompounds(a1, v216, a6 + 8);
            v34 = (*(a3 + 104))(a4, a5, 2, v233[1], v233);
            if ((v34 & 0x80000000) == 0)
            {
              v210 = v32;
              while (v233[0])
              {
                POSString = (*(a3 + 168))(a4, a5);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                if (v228 != 6)
                {
                  goto LABEL_211;
                }

                POSString = (*(a3 + 168))(a4, a5, v233[0], 1, 1, &v224, &v229);
                if ((POSString & 0x80000000) == 0)
                {
                  POSString = (*(a3 + 168))(a4, a5, v233[0], 2, 1, &v224 + 2, &v229);
                  if ((POSString & 0x80000000) == 0)
                  {
                    if (v224 > HIWORD(v224))
                    {
                      goto LABEL_71;
                    }

                    POSString = (*(a3 + 176))(a4, a5, v233[0], 4, &v227, &v229);
                    if ((POSString & 0x80000000) == 0)
                    {
                      if (!cstdlib_strcmp(v227, "_PR_") || (POSString = addToken(a1, &v224, v227, a6 + 8, v216, a8, v51, v52), (POSString & 0x80000000) == 0) || POSString == -1979703296)
                      {
LABEL_211:
                        POSString = (*(a3 + 120))(a4, a5, v233[0], v233);
                        if ((POSString & 0x80000000) == 0)
                        {
                          continue;
                        }
                      }
                    }
                  }
                }

                goto LABEL_70;
              }

              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Added words from lingdb", v47, v48, v49, 0);
              v17 = (*(a3 + 176))(a4, a5, v233[1], 1, &v230, &v229 + 2);
              if ((v17 & 0x80000000) != 0)
              {
LABEL_71:
                a2 = v213;
                v32 = v210;
                goto LABEL_43;
              }

              if (v214 || *(a6 + 568) != 1)
              {
                goto LABEL_86;
              }

              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "USE MS - get PHR from MS tree", v53, v54, v55, 0);
              v16 = (*(a3 + 176))(a4, a5, v233[1], 2, &v223, &v229);
              if ((v16 & 0x80000000) == 0)
              {
                if (!a7)
                {
                  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "empty symbol table for MS rules", v56, v57, v58, 0);
                  return 2315264000;
                }

                mosynt_StringToSyntTree(v213, a7, v223, &v222);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                POSString = printMSTree(a1, v213, a7, v222, v231, 0, (a6 + 1088), *(a6 + 1096), v211, v32, v212);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                POSString = extractFromMSTree(a6, v213, a7, v222, v231, 0, a6 + 1088, *(a6 + 1096), v211, __b, v32, v212);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                printMSNodes(a1, *(a6 + 1096), v231, __b, "START", 1, v59, v60);
                POSString = sortMSNodes(a6, __b, v61, v62, v63, v64, v65, v66);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                printMSNodes(a1, *(a6 + 1096), v231, __b, "END", 0, v67, v68);
                POSString = validateMSNodes(a1, __b, v69, v70, v71, v72, v73, v74);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                POSString = mapMSNodes2PHR(a6, __b, v75, v76, v77, v78, v79, v80);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                freeMSNodes(a1, __b);
                v17 = 0;
LABEL_86:
                LOWORD(v81) = HIWORD(v229);
                v82 = (a6 + 672);
                if (HIWORD(v229))
                {
                  v83 = 0;
                  v84 = 0;
                  do
                  {
                    v85 = v230 + 32 * v84;
                    if (*v85 == 21)
                    {
                      DomainFromPausingDefs = getDomainFromPausingDefs(a6 + 8, *(v85 + 24), &v220);
                      v81 = HIWORD(v229);
                      if (DomainFromPausingDefs == 1)
                      {
                        v87 = v84 + 1;
                        while (v81 > v87)
                        {
                          v88 = v87;
                          v89 = v230 + 32 * v87;
                          if (*v89 == 21 && cstdlib_strcmp(*(v230 + 32 * v84 + 24), *(v89 + 24)))
                          {
                            if (*(a6 + 680))
                            {
                              v97 = *(v230 + 12);
                              v98 = (*(v230 + 32 * v84 + 12) - v97);
                              v99 = (*(v230 + 32 * v88 + 12) - v97);
                              v100 = v220;
                              v101 = *v216;
                              v102 = *(a6 + 680) - 1;
                              do
                              {
                                v103 = *v101;
                                if (v103 >= v98 && v101[1] <= v99)
                                {
                                  *(v101 + 13) = v100;
                                }

                                v104 = v103 > v99 || v102-- == 0;
                                v101 += 112;
                              }

                              while (!v104);
                            }

                            LOWORD(v81) = HIWORD(v229);
                            v84 = v88 - (v88 + 1 != v83);
                            goto LABEL_117;
                          }

                          v87 = v88 + 1;
                          v81 = HIWORD(v229);
                        }

                        if (*(a6 + 680))
                        {
                          v90 = (*(v230 + 32 * v84 + 12) - *(v230 + 12));
                          v91 = *(v230 + 16);
                          v92 = v220;
                          v93 = *v216;
                          v94 = *(a6 + 680) - 1;
                          do
                          {
                            v95 = *v93;
                            if (v95 >= v90 && v93[1] <= v91)
                            {
                              *(v93 + 13) = v92;
                            }

                            v96 = v95 > v91 || v94-- == 0;
                            v93 += 112;
                          }

                          while (!v96);
                        }
                      }
                    }

LABEL_117:
                    v83 = ++v84;
                  }

                  while (v84 < v81);
                  v82 = (a6 + 672);
                  if (v81)
                  {
                    v105 = 0;
                    v106 = v230;
                    do
                    {
                      v107 = v105;
                      if (*(v106 + 32 * v105) == 34)
                      {
                        ++v105;
                        v108 = v106 + 32 * v107;
                        if (v105 >= v81)
                        {
                          goto LABEL_212;
                        }

                        do
                        {
                          v109 = *(v106 + 32 * v105);
                          if (v109 != 21)
                          {
                            ++v105;
                          }
                        }

                        while (v105 < v81 && v109 != 21);
                        if (v109 == 21)
                        {
                          if (*(a6 + 680))
                          {
                            v117 = *(v106 + 12);
                            v118 = (*(v108 + 12) - v117);
                            v119 = (*(v106 + 32 * v105 + 12) - v117);
                            v120 = *v216;
                            v121 = *(a6 + 680) - 1;
                            do
                            {
                              v122 = *v120;
                              if (v122 >= v118 && v120[1] <= v119)
                              {
                                *(v120 + 12) = 1;
                              }

                              v123 = v122 > v119 || v121-- == 0;
                              v120 += 112;
                            }

                            while (!v123);
                          }
                        }

                        else
                        {
LABEL_212:
                          if (*(a6 + 680))
                          {
                            v111 = (*(v108 + 12) - *(v106 + 12));
                            v112 = *(v106 + 16);
                            v113 = *v216;
                            v114 = *(a6 + 680) - 1;
                            do
                            {
                              v115 = *v113;
                              if (v115 >= v111 && v113[1] <= v112)
                              {
                                *(v113 + 12) = 1;
                              }

                              v116 = v115 > v112 || v114-- == 0;
                              v113 += 112;
                            }

                            while (!v116);
                          }
                        }
                      }

                      ++v105;
                    }

                    while (v105 < v81);
                  }
                }

                if (a8 == 1)
                {
                  if (*(a6 + 680))
                  {
                    v124 = 0;
                    v125 = 168;
                    v126 = -1;
                    do
                    {
                      v127 = *v82;
                      v128 = *(*v82 + v125 + 8);
                      if (v128)
                      {
                        v129 = cstdlib_strcmp(v128, "COMP]");
                        v127 = *v82;
                        if (v125 != 168 && !v129)
                        {
                          v130 = *(v127 + 224 * v126 + 176);
                          if (v130)
                          {
                            v131 = cstdlib_strcmp(v130, "COMP]");
                            v127 = *v216;
                            if (!v131)
                            {
                              v132 = 224 * v126;
                              heap_Free(*(a1 + 8), *(v127 + v132 + 176));
                              v133 = *v216 + v132;
                              *(v133 + 176) = 0;
                              setNNPausingDefault(a1, (v133 + 176), "-");
                              v127 = *v216;
                            }
                          }
                        }
                      }

                      if (!*(v127 + v125 + 8))
                      {
                        setNNPausingDefault(a1, (v127 + v125 + 8), "-");
                        v127 = *v216;
                      }

                      if (!*(v127 + v125))
                      {
                        setNNPausingDefault(a1, (v127 + v125), "-");
                        v127 = *v216;
                      }

                      LODWORD(v218) = 0;
                      StartOfOrthPunc = getStartOfOrthPunc(*(*(v127 + v125 - 152) + 8 * *(a6 + 24)), &v218);
                      cstdlib_strlen(*(*(*(a6 + 672) + v125 - 152) + 8 * *(a6 + 24)));
                      v135 = *(a1 + 8);
                      if (v218 == 1)
                      {
                        v136 = cstdlib_strlen((*(*(*(a6 + 672) + v125 - 152) + 8 * *(a6 + 24)) + StartOfOrthPunc));
                        v137 = heap_Calloc(v135, 1, (v136 + 1));
                        v142 = *(a6 + 672) + v125;
                        *(v142 + 40) = v137;
                        if (!v137)
                        {
                          goto LABEL_203;
                        }

                        cstdlib_strcpy(v137, (*(*(v142 - 152) + 8 * *(a6 + 24)) + StartOfOrthPunc));
                        v82 = (a6 + 672);
                      }

                      else
                      {
                        v143 = cstdlib_strlen("X");
                        v144 = heap_Calloc(v135, 1, (v143 + 1));
                        v82 = (a6 + 672);
                        *(*v216 + v125 + 40) = v144;
                        if (!v144)
                        {
LABEL_203:
                          log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v138, v139, v140, v141, v209);
                          return 2315264010;
                        }

                        cstdlib_strcpy(v144, "X");
                      }

                      v145 = *v82;
                      v146 = *v82 + v125;
                      v148 = *(v146 + 16);
                      v147 = (v146 + 16);
                      if (!v148)
                      {
                        setNNPausingDefault(a1, v147, "X");
                        v145 = *v82;
                      }

                      if (!*(v145 + v125 + 24))
                      {
                        setNNPausingDefault(a1, (v145 + v125 + 24), "X");
                        v145 = *v82;
                      }

                      if (!*(v145 + v125 + 32))
                      {
                        setNNPausingDefault(a1, (v145 + v125 + 32), "X");
                      }

                      ++v124;
                      v125 += 224;
                      ++v126;
                    }

                    while (v124 < *(a6 + 680));
                  }

                  POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v211, a6 + 8, v82, "At Start of NN Phrasing", 1);
                  if ((POSString & 0x80000000) == 0)
                  {
                    heap_Free(*(a1 + 8), v210);
                    return 0;
                  }

                  goto LABEL_70;
                }

                if (!*(a6 + 8))
                {
                  heap_Free(*(a1 + 8), v210);
                  return v17;
                }

                POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v211, a6 + 8, v82, "At Start", a8);
                if ((POSString & 0x80000000) == 0)
                {
                  POSString = resolvePHR(v231, a1, a6 + 8, v216, a8, v150, v151, v152);
                  if ((POSString & 0x80000000) == 0)
                  {
                    POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v211, a6 + 8, v216, "Initialized data", a8);
                    if ((POSString & 0x80000000) == 0)
                    {
                      POSString = createPOSString(a1, a6 + 8, v216);
                      if ((POSString & 0x80000000) == 0)
                      {
                        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Created POS string for retagging : %s", v153, v154, v155, *(a6 + 688));
                        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "do retagging", v156, v157, v158, 0);
                        POSString = doRetagging(*(a6 + 1108), (a6 + 1088), v211, *(a6 + 1096), a1, a6 + 8, v216, v159);
                        if ((POSString & 0x80000000) == 0)
                        {
                          POSString = printAsChunks(*(a6 + 1108), (a6 + 1088), v211, a6 + 8, v216, v160, v161, v162);
                          if ((POSString & 0x80000000) == 0)
                          {
                            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "do subtagging", v163, v164, v165, 0);
                            POSString = doSubtagging(*(a6 + 1108), (a6 + 1088), v211, *(a6 + 1096), a1, a6 + 8, v216, v166);
                            if ((POSString & 0x80000000) == 0)
                            {
                              v167 = *(a6 + 688);
                              if (v167)
                              {
                                heap_Free(*(a1 + 8), v167);
                                *(a6 + 688) = 0;
                                heap_Free(*(a1 + 8), *(a6 + 696));
                                *(a6 + 696) = 0;
                              }

                              POSString = createPOSString(a1, a6 + 8, v216);
                              if ((POSString & 0x80000000) == 0)
                              {
                                log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "set phrase type", v168, v169, v170, 0);
                                POSString = setPhraseType(*(a6 + 1108), (a6 + 1088), v211, *(a6 + 1096), a1, a6 + 8, v216, v231);
                                if ((POSString & 0x80000000) == 0)
                                {
                                  v174 = *(a6 + 688);
                                  if (v174)
                                  {
                                    heap_Free(*(a1 + 8), v174);
                                    *(a6 + 688) = 0;
                                    heap_Free(*(a1 + 8), *(a6 + 696));
                                    *(a6 + 696) = 0;
                                  }

                                  if (*(a6 + 816) || *(a6 + 760))
                                  {
                                    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "skip extending PHR containing token tags", v171, v172, v173, 0);
                                    goto LABEL_198;
                                  }

                                  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "extend PHR containing token tags", v171, v172, v173, 0);
                                  POSString = extendPHRContainingTokenTags(a6, v201, v202, v203, v204, v205, v206, v207);
                                  if ((POSString & 0x80000000) == 0)
                                  {
                                    POSString = annotateTokenTypeOnEachWord(a6);
                                    if ((POSString & 0x80000000) == 0)
                                    {
                                      POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v211, a6 + 8, v216, "After token tag extension", a8);
                                      if ((POSString & 0x80000000) == 0)
                                      {
LABEL_198:
                                        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "assign token tags", v175, v176, v177, 0);
                                        POSString = assignTokenTags(a6, v178, v179, v180, v181, v182, v183, v184);
                                        if ((POSString & 0x80000000) == 0)
                                        {
                                          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "assign token POS", v185, v186, v187, 0);
                                          POSString = assignTokenPOS(a6, v188, v189, v190, v191, v192, v193, v194);
                                          if ((POSString & 0x80000000) == 0)
                                          {
                                            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "creating working lists (regex domains)", v195, v196, v197, 0);
                                            POSString = createLists(a1, a6 + 8, v216);
                                            if ((POSString & 0x80000000) == 0)
                                            {
                                              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "get phon weights (nsyll)", v198, v199, v200, 0);
                                              getPhonWeights(v216);
                                              POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v211, a6 + 8, v216, "AFTER GET PHON WEIGHTS", a8);
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

LABEL_70:
                v17 = POSString;
                goto LABEL_71;
              }

              return v16;
            }

LABEL_72:
            v17 = v34;
LABEL_73:
            a2 = v213;
          }
        }

        else
        {
          v17 = 2315264010;
          log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v28, v29, v30, v31, v208);
        }
      }

      else
      {
        v17 = 2315264010;
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v22, v23, v24, v25, v208);
        v32 = 0;
      }

LABEL_43:
      if (*(a6 + 568) == 1)
      {
        freeMSNodes(a1, __b);
      }

      if (v32)
      {
        heap_Free(*(a1 + 8), v32);
      }

      if (v222)
      {
        v45 = mosyntdata_DisposeSyntTree(a2, &v222);
        if (v17 >= 0 && v45 <= -1)
        {
          return v45;
        }

        else
        {
          return v17;
        }
      }
    }
  }

  return v17;
}

uint64_t parse_NLU_string(uint64_t *a1, char *__s, uint64_t a3, int a4, _DWORD *a5, unsigned int a6)
{
  v11 = a1;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v12 = *(*a1 + 8);
  v13 = cstdlib_strlen(__s);
  v14 = heap_Calloc(v12, 1, (v13 + 1));
  if (v14)
  {
    v19 = v14;
    v62 = a6;
    __sa = __s;
    cstdlib_strcpy(v14, __s);
    for (i = &v19[cstdlib_strlen(v19) - 1]; i >= v19; --i)
    {
      v21 = *i;
      v22 = v21 > 0x3B;
      v23 = (1 << v21) & 0x800000100002600;
      if (v22 || v23 == 0)
      {
        break;
      }

      *i = 0;
    }

    v60 = a5;
    v25 = 0;
    v72 = 0;
    v70 = 0;
    v71 = 0uLL;
    v69 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v26 = 0;
    v63 = a4;
    v61 = a4 - 1;
    v27 = v19;
    while (1)
    {
      v28 = cstdlib_strchr(v27, 59);
      v29 = v28;
      if (v28)
      {
        *v28 = 0;
      }

      v30 = cstdlib_strchr(v27, 58);
      v31 = v30;
      if (v30)
      {
        *v30 = 0;
        v32 = v30 + 1;
      }

      else
      {
        v32 = "null";
      }

      if (!cstdlib_strcmp(v27, "POS"))
      {
        inserted = 0;
        v26 = v32;
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v27, "PHR"))
      {
        inserted = 0;
        v25 = v32;
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v27, "BND"))
      {
        inserted = 0;
        v72 = v32;
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v27, "BNDSHAPE"))
      {
        inserted = 0;
        v70 = v32;
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v27, "S_POI"))
      {
        inserted = 0;
        v38 = "B";
LABEL_42:
        *(&v71 + 1) = v38;
        *&v71 = v32;
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v27, "I_POI"))
      {
        inserted = 0;
        v38 = "I";
        goto LABEL_42;
      }

      if (!cstdlib_strcmp(v27, "E_POI"))
      {
        inserted = 0;
        v38 = "S";
        if (!*(&v71 + 1))
        {
          v38 = "E";
        }

        goto LABEL_42;
      }

      if (!cstdlib_strcmp(v27, "PRM"))
      {
        inserted = 0;
        v69 = v32;
        goto LABEL_43;
      }

      v36 = *(v11 + 166);
      if (!v36)
      {
        if (!cstdlib_strcmp(v27, "COMP"))
        {
          inserted = 0;
          v68 = v32;
          goto LABEL_43;
        }

        v36 = *(v11 + 166);
      }

      if (v36 == 1 && !cstdlib_strcmp(v27 + 1, "_COMP"))
      {
        v39 = *(*v11 + 8);
        v40 = cstdlib_strlen(v32);
        v41 = heap_Calloc(v39, 1, (v40 + 3));
        if (!v41)
        {
          goto LABEL_71;
        }

        v42 = v41;
        if (cstdlib_strcmp(v27, "S_COMP"))
        {
          v43 = "I-";
        }

        else
        {
          v43 = "B-";
        }

        cstdlib_strcpy(v42, v43);
        cstdlib_strcat(v42, v32);
        v44 = v42;
        inserted = 0;
        v67 = v44;
        v68 = v44;
        goto LABEL_43;
      }

      v59 = v11;
      if (!v31 || v31 <= v27 + 1)
      {
LABEL_33:
        inserted = addMarkerType(*v11, v27, v32, a3, v61, (v11 + 1), v11 + 84);
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v27 + 1, "_CLASS"))
      {
        inserted = 0;
        v65 = v32;
        goto LABEL_43;
      }

      if (v62 != 1 || cstdlib_strcmp(v27, "PUNC"))
      {
        break;
      }

      if (!v66)
      {
        v49 = *(*v11 + 8);
        v50 = cstdlib_strlen(__sa);
        v51 = heap_Calloc(v49, 1, (v50 + 4));
        if (!v51)
        {
          goto LABEL_71;
        }

        v52 = v51;
        cstdlib_strcpy(v51, "X_");
        cstdlib_strcat(v52, v27);
        cstdlib_strcat(v52, ":");
        v66 = v52;
        cstdlib_strcat(v52, v32);
LABEL_58:
        inserted = 0;
        goto LABEL_43;
      }

      inserted = 0;
LABEL_43:
      if (v29)
      {
        v27 = v29 + 1;
        if ((inserted & 0x80000000) == 0)
        {
          continue;
        }
      }

      *&v76 = v66;
      *(&v76 + 1) = v68;
      *&v75 = v69;
      *(&v75 + 1) = v65;
      v77 = v71;
      *&v74 = v72;
      *(&v74 + 1) = v70;
      *&v73 = v26;
      *(&v73 + 1) = v25;
      log_OutText(*(*v11 + 32), "FE_PHRASING", 5, 0, "parsed NLU %s[%d,%d] -> POS=%s, PHR=%s, BND=%s, BNDSHAPE=%s, PRM=%s, CLASS=%s, PUNC=%s, COMP=%s, POIClass=%s, POIPosi=%s", v33, v34, v35, __sa);
      if ((inserted & 0x80000000) == 0)
      {
        if (!v26)
        {
          log_OutText(*(*v11 + 32), "FE_PHRASING", 5, 0, "missing POS in NLU string: arg=%s", v53, v54, v55, v19);
          *v60 = 0;
        }

        inserted = insert_NLU_info(*v11, a3, v63, &v73, (v11 + 1), (v11 + 84), v62);
      }

      heap_Free(*(*v11 + 8), v19);
      if (v66)
      {
        heap_Free(*(*v11 + 8), v66);
      }

      if (v67)
      {
        heap_Free(*(*v11 + 8), v67);
      }

      return inserted;
    }

    if (cstdlib_strcmp(v27 + 1, "_PUNC"))
    {
      goto LABEL_33;
    }

    v45 = v66;
    if (!v66)
    {
      v46 = *(*v11 + 8);
      v47 = cstdlib_strlen(__sa);
      v48 = heap_Calloc(v46, 1, (v47 + 1));
      if (!v48)
      {
        inserted = 2315264010;
        v56 = *v59;
        goto LABEL_72;
      }

      v45 = v48;
      cstdlib_strcpy(v48, "");
      v11 = v59;
    }

    *v31 = 58;
    v66 = v45;
    hlp_NLUStrJoin(v45, v27);
    goto LABEL_58;
  }

LABEL_71:
  inserted = 2315264010;
  v56 = *v11;
LABEL_72:
  log_OutPublic(*(v56 + 32), "FE_PHRASING", 37000, 0, v15, v16, v17, v18, v58);
  return inserted;
}

void *freeSentenceData(uint64_t a1)
{
  v2 = *(a1 + 1088);
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    *(a1 + 1088) = 0;
    *(a1 + 1104) = 0;
  }

  v3 = *(a1 + 1096);
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
    *(a1 + 1096) = 0;
  }

  v4 = *(a1 + 672);
  if (*(a1 + 680))
  {
    v5 = 0;
    do
    {
      if (*(v4 + 224 * v5 + 80))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 80));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 80) = 0;
      }

      if (*(v4 + 224 * v5 + 112))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 112));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 112) = 0;
      }

      if (*(v4 + 224 * v5 + 120))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 120));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 120) = 0;
      }

      if (*(v4 + 224 * v5 + 152))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 152));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 152) = 0;
      }

      if (*(v4 + 224 * v5 + 160))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 160));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 160) = 0;
      }

      if (*(v4 + 224 * v5 + 184))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 184));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 184) = 0;
      }

      if (*(v4 + 224 * v5 + 192))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 192));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 192) = 0;
      }

      if (*(v4 + 224 * v5 + 200))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 200));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 200) = 0;
      }

      if (*(v4 + 224 * v5 + 208))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 208));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 208) = 0;
      }

      if (*(v4 + 224 * v5 + 168))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 168));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 168) = 0;
      }

      if (*(v4 + 224 * v5 + 88))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 88));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 88) = 0;
      }

      v6 = *(v4 + 224 * v5 + 16);
      if (v6)
      {
        v7 = *(a1 + 80);
        if (v7)
        {
          for (i = 0; i < v7; ++i)
          {
            v6 = *(v4 + 224 * v5 + 16);
            v9 = *(v6 + 8 * i);
            if (v9)
            {
              heap_Free(*(*a1 + 8), v9);
              v4 = *(a1 + 672);
              v6 = *(v4 + 224 * v5 + 16);
              *(v6 + 8 * i) = 0;
              v7 = *(a1 + 80);
            }
          }
        }

        heap_Free(*(*a1 + 8), v6);
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 16) = 0;
      }

      v10 = *(v4 + 224 * v5 + 56);
      if (v10)
      {
        v11 = *(a1 + 80);
        if (v11)
        {
          v12 = 0;
          v13 = 16;
          do
          {
            v10 = *(v4 + 224 * v5 + 56);
            v14 = *(v10 + v13);
            if (v14)
            {
              heap_Free(*(*a1 + 8), v14);
              v4 = *(a1 + 672);
              v10 = *(v4 + 224 * v5 + 56);
              *(v10 + v13) = 0;
              v11 = *(a1 + 80);
            }

            ++v12;
            v13 += 32;
          }

          while (v12 < v11);
        }

        heap_Free(*(*a1 + 8), v10);
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 56) = 0;
      }

      v15 = *(v4 + 224 * v5 + 64);
      if (v15)
      {
        v16 = *(a1 + 80);
        if (v16)
        {
          for (j = 0; j < v16; ++j)
          {
            v15 = *(v4 + 224 * v5 + 64);
            v18 = *(v15 + 8 * j);
            if (v18)
            {
              heap_Free(*(*a1 + 8), v18);
              v4 = *(a1 + 672);
              v15 = *(v4 + 224 * v5 + 64);
              *(v15 + 8 * j) = 0;
              v16 = *(a1 + 80);
            }
          }
        }

        heap_Free(*(*a1 + 8), v15);
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 64) = 0;
      }

      if (*(v4 + 224 * v5 + 8))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 8));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 8) = 0;
      }

      if (*(v4 + 224 * v5 + 96))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 96));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 96) = 0;
      }

      if (*(v4 + 224 * v5 + 176))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 176));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 176) = 0;
      }

      if (*(v4 + 224 * v5 + 128))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 128));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 128) = 0;
      }

      ++v5;
    }

    while (v5 < *(a1 + 680));
  }

  else if (!v4)
  {
    goto LABEL_62;
  }

  heap_Free(*(*a1 + 8), v4);
  *(a1 + 672) = 0;
LABEL_62:
  v19 = *(a1 + 688);
  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
    *(a1 + 688) = 0;
  }

  v20 = *(a1 + 696);
  if (v20)
  {
    heap_Free(*(*a1 + 8), v20);
    *(a1 + 696) = 0;
  }

  v21 = *(a1 + 712);
  if (v21)
  {
    heap_Free(*(*a1 + 8), v21);
    *(a1 + 712) = 0;
  }

  return cstdlib_memset((a1 + 672), 0, 0x30uLL);
}

uint64_t updateLingdb(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v25 = 0;
  cstdlib_memset(__b, 0, 0x20uLL);
  PhraseStartingAtThisWord = (*(a1 + 104))(a2, a3, 1, 0, &v35 + 2);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
    return PhraseStartingAtThisWord;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v35), 0, &v36);
  if ((v9 & 0x80000000) == 0 && v36 == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, HIWORD(v35), 0, &v26, &v34);
    if ((v9 & 0x80000000) == 0 && v34 >= 2u)
    {
      v9 = (*(a1 + 104))(a2, a3, 2, HIWORD(v35), &v35);
      if ((v9 & 0x80000000) == 0)
      {
        v27 = 0;
        cstdlib_strcpy(__dst, "");
        cstdlib_strcpy(__s1, "");
        cstdlib_strcpy(*(a4 + 1088), "");
        for (i = v35; v35; i = v35)
        {
          PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, i, 0, 1, &v32, &v34);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          if (v32 <= 0xA && ((1 << v32) & 0x610) != 0)
          {
            PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v35, 1, 1, &v29, &v34);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v35, 2, 1, &v29 + 2, &v34);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, v35, 3, &v31, &v34);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            if (v29 != HIWORD(v29))
            {
              PhraseStartingAtThisWord = getPhraseStartingAtThisWord((a4 + 672), a4 + 8, v29, &v28 + 1, __dst, &v30, &v27 + 1, &v27);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }

              if (__dst[0])
              {
                cstdlib_strcpy(__s1, __dst);
                LOWORD(v28) = 0;
                if (HIWORD(v28) <= 1u)
                {
                  if (HIWORD(v27))
                  {
                    setSilDurOnWord(a4 + 672, (a4 + 8), (HIWORD(v27) - 1), &v28);
                  }

                  else
                  {
                    LOWORD(v28) = 200;
                  }
                }

                PhraseStartingAtThisWord = (*(a1 + 88))(a2, a3, v35, &v34 + 2);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                v32 = 15;
                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v34), 0, 1, &v32, &v33);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v34), 1, 1, &v29, &v33);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v34), 2, 1, &v30, &v33);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                v12 = *(a1 + 160);
                v13 = HIWORD(v34);
                v14 = cstdlib_strlen(__dst);
                PhraseStartingAtThisWord = v12(a2, a3, v13, 4, (v14 + 1), __dst, &v33);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v34), 7, 1, &v28 + 2, &v33);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v34), 8, 1, &v28, &v33);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }
              }

              v15 = HIWORD(v27);
              setSilDurOnWord(a4 + 672, (a4 + 8), HIWORD(v27), &v28);
              PhraseStartingAtThisWord = checkForExternalSildur(a1, a2, a3, v35, &v25);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }

              if (!v25)
              {
                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v35, 8, 1, &v28, &v33);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }
              }

              v16 = *(*(a4 + 672) + 224 * v15 + 72);
              get_phr_for_nlu_output(a4, v15, __b);
              get_pos_for_nlu_output(a4, v15, v38);
              PhraseStartingAtThisWord = updateNLUField(a1, a2, a3, v35, a4, v15, v38, __b, *(*(a4 + 672) + 224 * v15 + 96), *(*(a4 + 672) + 224 * v15 + 112));
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }

              log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", v17, v18, v19, v35);
              LH_itoa(v16, __s, 0xAu);
              v20 = *(a1 + 160);
              v21 = v35;
              v22 = cstdlib_strlen(__s);
              PhraseStartingAtThisWord = v20(a2, a3, v21, 13, (v22 + 1), __s, &v33);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }
            }
          }

          v9 = (*(a1 + 120))(a2, a3, v35, &v35);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }
        }

        cstdlib_strcpy(*(a4 + 1088), "");
        if (cstdlib_strcmp(__s1, "Y"))
        {
          v23 = cstdlib_strrchr(v26, 63);
          if (v23)
          {
            if (v23 != v26 && *(v23 - 1) != 32)
            {
              *v23 = 46;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t getPhraseStartingAtThisWord(uint64_t *a1, uint64_t a2, uint64_t a3, __int16 *a4, char *__dst, _WORD *a6, __int16 *a7, _WORD *a8)
{
  *a4 = 0;
  if (!*(a1 + 4))
  {
LABEL_5:
    v16 = 2315264000;
    if (a2)
    {
      log_OutText(*(*a2 + 32), "FE_PHRASING", 5, 0, "cant align lingdb word : no word found with fromPos=%d", a6, a7, a8, a3);
    }

    return v16;
  }

  v13 = 0;
  v14 = *a1;
  v15 = (*a1 + 73);
  while (*(v14 + 224 * v13) != a3)
  {
    ++v13;
    v15 += 224;
    if (v13 >= *(a1 + 4))
    {
      goto LABEL_5;
    }
  }

  v17 = *a8;
  *a7 = v13;
  if (v13 | v17)
  {
    v18 = v13 > v17;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v16 = 0;
    *__dst = 0;
    return v16;
  }

  v19 = *(a1 + 4);
  v20 = v13;
  if (v13 < v19)
  {
    LOWORD(v20) = v13;
    while (1)
    {
      v21 = *v15;
      v15 += 224;
      if ((v21 - 5) > 0xFFFFFFFD)
      {
        break;
      }

      LOWORD(v20) = v20 + 1;
      if (v19 == v20)
      {
        goto LABEL_19;
      }
    }

    v20 = v20;
  }

  if (v20 == v19)
  {
LABEL_19:
    *a6 = *(v14 + 224 * *(a1 + 4) - 222);
    *a8 = *(a1 + 4);
    goto LABEL_21;
  }

  *a8 = v20;
  *a6 = *(v14 + 224 * v20 + 2);
  if (v20 + 1 == *(a1 + 4))
  {
LABEL_21:
    if (a1[5])
    {
      v22 = a1[5];
    }

    else
    {
      v22 = "T";
    }

    goto LABEL_24;
  }

  *a6 = *(v14 + 224 * (v20 + 1));
  v22 = "P";
LABEL_24:
  cstdlib_strcpy(__dst, v22);
  v26 = *a7;
  if (*a7)
  {
    *a4 = 1;
    if (*(*a1 + 224 * *a7 - 151) == 3)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }
  }

  *a4 = v26;
  if (a2)
  {
    log_OutText(*(*a2 + 32), "FE_PHRASING", 5, 0, "Phrase lingdb=%d,%d PHRTYPE=%s BNDTYPE=%d internal word %d,%d", v23, v24, v25, a3);
  }

  return 0;
}

size_t setSilDurOnWord(size_t result, void *a2, int a3, _WORD *a4)
{
  v6 = result;
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  *a4 = 0;
  v7 = *(result + 8);
  v8 = *result;
  if (a3 + 1 < v7 && *(v8 + 224 * (a3 + 1) + 220) == 1)
  {
    do
    {
      LOWORD(a3) = a3 + 1;
      v9 = a3;
      v10 = a3 + 1;
    }

    while (v10 < v7 && *(v8 + 224 * v10 + 220) == 1);
  }

  else
  {
    v9 = a3;
  }

  v11 = a3;
  v12 = v8 + 224 * a3;
  v13 = v7 - 1;
  if (*(v12 + 73) == 4 && v13 != v9)
  {
    *a4 = *(a2[6] + 8 * *(v12 + 52) + 4);
    cstdlib_strcpy(__dst, "tnpausedur");
    v15 = cstdlib_strlen((a2[66] + *(a2[67] + 4 * *(a2[6] + 8 * *(*v6 + 224 * v11 + 52)))));
    result = cstdlib_strlen(__dst);
    if (v15 < 255 - result)
    {
      cstdlib_strcat(__dst, (a2[66] + *(a2[67] + 4 * *(a2[6] + 8 * *(*v6 + 224 * v11 + 52)))));
      result = paramc_ParamGetUInt(*(*a2 + 40), __dst, &v16);
      if ((result & 0x80000000) == 0)
      {
        *a4 = v16;
      }
    }
  }

  return result;
}

unint64_t get_phr_for_nlu_output(unint64_t result, unsigned int a2, char *__s1)
{
  v4 = *(*(result + 672) + 224 * a2 + 56);
  if (v4 && (v5 = result, (result = *(v4 + 32 * *(result + 32) + 16)) != 0))
  {
    if (cstdlib_strcmp(result, "O") && cstdlib_strcmp(*(*(*(v5 + 672) + 224 * a2 + 56) + 32 * *(v5 + 32) + 16), "O-P"))
    {
      cstdlib_strcpy(__s1, "B-");
      cstdlib_strcat(__s1, *(*(*(v5 + 672) + 224 * a2 + 56) + 32 * *(v5 + 32) + 16));
    }

    else
    {
      cstdlib_strcpy(__s1, *(*(*(v5 + 672) + 224 * a2 + 56) + 32 * *(v5 + 32) + 16));
    }

    result = cstdlib_strlen(__s1);
    if (result >= 2)
    {
      v7 = cstdlib_strlen(__s1);
      result = cstdlib_strcmp(&__s1[v7 - 2], "-P");
      if (!result)
      {
        result = cstdlib_strlen(__s1);
        __s1[result - 2] = 0;
      }
    }
  }

  else if (*__s1)
  {
    result = cstdlib_strcmp(__s1, "O");
    if (result)
    {
      *__s1 = 73;
    }
  }

  return result;
}

char *get_pos_for_nlu_output(uint64_t a1, unsigned int a2, char *__dst)
{
  v3 = *(a1 + 672) + 224 * a2;
  v4 = *(v3 + 88);
  if (!v4)
  {
    v4 = *(*(v3 + 16) + 8 * *(a1 + 26));
  }

  return cstdlib_strcpy(__dst, v4);
}

uint64_t updateNLUField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, char *a8, char *a9, char *a10)
{
  v38 = 0;
  v37 = 0;
  __src = 0;
  result = (*(a1 + 184))(a2, a3, a4, 14, &v38 + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!HIWORD(v38))
  {
    v35 = a3;
LABEL_7:
    v18 = "";
    __src = "";
    goto LABEL_8;
  }

  result = (*(a1 + 176))(a2, a3, a4, 14, &__src, &v38);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v35 = a3;
  if (v38 < 2u)
  {
    goto LABEL_7;
  }

  v18 = __src;
LABEL_8:
  v19 = cstdlib_strlen(v18) + 1;
  if (a7)
  {
    v20 = cstdlib_strlen(";POS:");
    v19 += v20 + cstdlib_strlen(a7);
  }

  if (a8)
  {
    v21 = cstdlib_strlen(";PHR:");
    v19 += v21 + cstdlib_strlen(a8);
  }

  if (a9 && !*(a5 + 664))
  {
    v22 = cstdlib_strlen(";COMP:");
    v19 += v22 + cstdlib_strlen(a9);
  }

  if (a10)
  {
    v23 = cstdlib_strlen(";BNDSHAPE:");
    v19 += v23 + cstdlib_strlen(a10);
  }

  if (v19 <= *(a5 + 1104))
  {
    v24 = *(a5 + 1088);
  }

  else
  {
    v24 = heap_Realloc(*(*a5 + 8), *(a5 + 1088), v19);
    if (!v24)
    {
      log_OutPublic(*(*a5 + 32), "FE_PHRASING", 37000, 0, v25, v26, v27, v28, v34);
      return 2315264010;
    }

    *(a5 + 1088) = v24;
    *(a5 + 1104) = v19;
  }

  cstdlib_strcpy(v24, __src);
  if (a7 && *a7)
  {
    hlp_NLUStrSet(*(a5 + 1088), "POS", a7);
  }

  if (a8 && *a8)
  {
    hlp_NLUStrSet(*(a5 + 1088), "PHR", a8);
  }

  if (a9 && !*(a5 + 664) && *a9)
  {
    hlp_NLUStrSet(*(a5 + 1088), "COMP", a9);
  }

  if (a10)
  {
    if (*a10)
    {
      hlp_NLUStrSet(*(a5 + 1088), "BNDSHAPE", a10);
    }
  }

  log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", v29, v30, v31, a4);
  v32 = *(a1 + 160);
  v33 = cstdlib_strlen(*(a5 + 1088));
  return v32(a2, v35, a4, 14, (v33 + 1), *(a5 + 1088), &v37);
}

uint64_t updateLingdbCrfPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  cstdlib_memset(__b, 0, 0x20uLL);
  PhraseStartingAtThisWord = (*(a1 + 104))(a2, a3, 1, 0, &v41);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
    return PhraseStartingAtThisWord;
  }

  v9 = (*(a1 + 184))(a2, a3, v41, 0, &v41 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (HIWORD(v41) != 1)
  {
    return v9;
  }

  v9 = (*(a1 + 176))(a2, a3, v41, 0, &v32, &v39 + 2);
  if ((v9 & 0x80000000) != 0 || HIWORD(v39) < 2u)
  {
    return v9;
  }

  PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, v41, 1, &v31, &v30);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
    return PhraseStartingAtThisWord;
  }

  v9 = (*(a1 + 104))(a2, a3, 2, v41, &v40 + 2);
  if ((v9 & 0x80000000) == 0)
  {
    v33 = 0;
    cstdlib_strcpy(__dst, "");
    cstdlib_strcpy(*(a4 + 1088), "");
    for (i = HIWORD(v40); HIWORD(v40); i = HIWORD(v40))
    {
      PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, i, 0, 1, &v38, &v39 + 2);
      if ((PhraseStartingAtThisWord & 0x80000000) != 0)
      {
        return PhraseStartingAtThisWord;
      }

      if (v38 <= 0xA && ((1 << v38) & 0x610) != 0)
      {
        PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, HIWORD(v40), 1, 1, &v35, &v39 + 2);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          return PhraseStartingAtThisWord;
        }

        PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, HIWORD(v40), 2, 1, &v35 + 2, &v39 + 2);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          return PhraseStartingAtThisWord;
        }

        PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, HIWORD(v40), 3, &v37, &v39 + 2);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          return PhraseStartingAtThisWord;
        }

        if (v35 != HIWORD(v35))
        {
          PhraseStartingAtThisWord = getPhraseStartingAtThisWord((a4 + 672), 0, v35, &v34 + 1, __dst, &v36, &v33 + 1, &v33);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          if (__dst[0])
          {
            LOWORD(v34) = 0;
            if (HIWORD(v34) <= 1u)
            {
              if (HIWORD(v33))
              {
                setSilDurOnWordCrf(a4 + 672, a4 + 8, (HIWORD(v33) - 1), &v34, v12, v13, v14, v15);
              }

              else
              {
                LOWORD(v34) = 200;
              }
            }

            PhraseStartingAtThisWord = (*(a1 + 88))(a2, a3, HIWORD(v40), &v40);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            v38 = 15;
            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v40, 0, 1, &v38, &v39);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v40, 1, 1, &v35, &v39);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v40, 2, 1, &v36, &v39);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            v16 = *(a1 + 160);
            v17 = v40;
            v18 = cstdlib_strlen(__dst);
            PhraseStartingAtThisWord = v16(a2, a3, v17, 4, (v18 + 1), __dst, &v39);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v40, 7, 1, &v34 + 2, &v39);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v40, 8, 1, &v34, &v39);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }
          }

          v19 = HIWORD(v33);
          setSilDurOnWordCrf(a4 + 672, a4 + 8, HIWORD(v33), &v34, v12, v13, v14, v15);
          PhraseStartingAtThisWord = checkForExternalSildur(a1, a2, a3, HIWORD(v40), &v29);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          if (!v29)
          {
            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v40), 8, 1, &v34, &v39);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }
          }

          v20 = *(*(a4 + 672) + 224 * v19 + 72);
          get_phr_for_nlu_output(a4, v19, __b);
          get_pos_for_nlu_output(a4, v19, v43);
          PhraseStartingAtThisWord = updateNLUField(a1, a2, a3, HIWORD(v40), a4, v19, v43, __b, *(*(a4 + 672) + 224 * v19 + 96), *(*(a4 + 672) + 224 * v19 + 112));
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", v21, v22, v23, HIWORD(v40));
          LH_itoa(v20, __s, 0xAu);
          v24 = *(a1 + 160);
          v25 = HIWORD(v40);
          v26 = cstdlib_strlen(__s);
          PhraseStartingAtThisWord = v24(a2, a3, v25, 13, (v26 + 1), __s, &v39);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }
        }
      }

      v9 = (*(a1 + 120))(a2, a3, HIWORD(v40), &v40 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }
    }

    cstdlib_strcpy(*(a4 + 1088), "");
    if (!cstdlib_strcmp(__dst, "W") || !cstdlib_strcmp(__dst, "AF"))
    {
      v27 = cstdlib_strrchr(v32, 63);
      if (v27 && v27 != v32 && *(v27 - 1) != 32)
      {
        *v27 = 46;
      }
    }
  }

  return v9;
}

uint64_t setSilDurOnWordCrf(uint64_t result, uint64_t a2, int a3, __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  if (a2)
  {
    result = log_OutText(*(*a2 + 32), "FE_PHRASING", 5, 0, "the parameter %s is ready", a6, a7, a8, "pandpRules");
  }

  *a4 = 0;
  v11 = *(v10 + 8);
  v12 = *v10;
  if (a3 + 1 < v11 && *(v12 + 224 * (a3 + 1) + 220) == 1)
  {
    do
    {
      LOWORD(a3) = a3 + 1;
      v13 = a3;
      v14 = a3 + 1;
    }

    while (v14 < v11 && *(v12 + 224 * v14 + 220) == 1);
  }

  else
  {
    v13 = a3;
  }

  v15 = a3;
  v16 = v12 + 224 * a3;
  v17 = v11 - 1;
  if (*(v16 + 73) == 4 && v17 != v13)
  {
    v19 = cstdlib_strlen(**(v16 + 16));
    *a4 = 100;
    result = doesWordEndInComma(**(*v10 + 224 * v15 + 16));
    if (result)
    {
      v20 = 300;
    }

    else
    {
      if (*(**(*v10 + 224 * v15 + 16) + (v19 - 1)) != 46)
      {
        return result;
      }

      v20 = 600;
    }

    *a4 = v20;
  }

  return result;
}

uint64_t doesCustermizedFE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = 2315264010;
  v40 = 0;
  *__s2 = -22590;
  *a6 = 0;
  if (!a1)
  {
    return 2315264007;
  }

  v13 = heap_Calloc(*(a1 + 8), 256, 1);
  if (v13)
  {
    v18 = v13;
    v46 = 0;
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v19 = (*(a2 + 104))(a3, a4, 1, 0, &v45 + 2);
    if ((v19 & 0x80000000) != 0)
    {
      v20 = v19;
      goto LABEL_35;
    }

    v20 = (*(a2 + 184))(a3, a4, HIWORD(v45), 0, &v46);
    if ((v20 & 0x80000000) == 0 && v46 == 1)
    {
      (*(a2 + 176))(a3, a4, HIWORD(v45), 0, &v42, &v44);
      if (v44 >= 2u)
      {
        v20 = (*(a2 + 104))(a3, a4, 2, HIWORD(v45), &v45);
        if ((v20 & 0x80000000) == 0)
        {
          cstdlib_strcpy(__dst, "");
          cstdlib_strcpy(*(a5 + 1088), "");
          v21 = v45;
          if (v45)
          {
            v22 = 0;
            v38 = 256;
            while (1)
            {
              v23 = (*(a2 + 168))(a3, a4, v21, 0, 1, &v43, &v44);
              if ((v23 & 0x80000000) != 0)
              {
                goto LABEL_30;
              }

              if (v43 <= 0xA && ((1 << v43) & 0x610) != 0)
              {
                v23 = (*(a2 + 168))(a3, a4, v45, 1, 1, &v41, &v44);
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_30;
                }

                v23 = (*(a2 + 168))(a3, a4, v45, 2, 1, &v41 + 2, &v44);
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_30;
                }

                v25 = v41;
                v26 = HIWORD(v41);
                if (v41 != HIWORD(v41))
                {
                  v27 = HIWORD(v41) - v41 + 1;
                  if (v38 < v27)
                  {
                    v28 = heap_Realloc(*(a1 + 8), v18, HIWORD(v41) - v41 + 1);
                    if (!v28)
                    {
                      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v29, v30, v31, v32, v37);
LABEL_31:
                      v20 = v6;
                      break;
                    }

                    v25 = v41;
                    v26 = HIWORD(v41);
                    v38 = v27;
                    v18 = v28;
                  }

                  cstdlib_memcpy(v18, (v42 + v25), v26 - v25);
                  v18[HIWORD(v41) - v41] = 0;
                  v33 = cstdlib_strlen(v18);
                  v34 = Utf8_LengthInUtf8chars(v18, v33);
                  if (v34)
                  {
                    v35 = 0;
                    do
                    {
                      utf8_getUTF8Char(v18, v35, __s1);
                      if (!cstdlib_strcmp(__s1, __s2))
                      {
                        ++v22;
                      }

                      v35 += utf8_determineUTF8CharLength(__s1[0]);
                      --v34;
                    }

                    while (v34);
                  }
                }
              }

              v23 = (*(a2 + 120))(a3, a4, v45, &v45);
              if ((v23 & 0x80000000) != 0)
              {
                goto LABEL_30;
              }

              v21 = v45;
              if (!v45)
              {
                if (v22 >= 3u)
                {
                  *a6 = 1;
                }

LABEL_30:
                v6 = v23;
                goto LABEL_31;
              }
            }
          }
        }
      }
    }

LABEL_35:
    heap_Free(*(a1 + 8), v18);
    return v20;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v37);
  }

  return v6;
}

uint64_t heapAdjustDown(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (2 * a2) | 1;
  if (v3 < a3)
  {
    v4 = *(result + 8 * a2);
    v5 = 2 * a2;
    v6 = a2;
    do
    {
      if (v3 < a3 - 1)
      {
        v7 = v5 + 2;
        if (*(*(result + 8 * v3) + 2) < *(*(result + 8 * v7) + 2))
        {
          v3 = v7;
        }
      }

      v8 = *(result + 8 * v3);
      if (*(*(result + 8 * v6) + 2) >= *(v8 + 2))
      {
        break;
      }

      *(result + 8 * v6) = v8;
      *(result + 8 * v3) = v4;
      v6 = v3;
      v5 = 2 * v3;
      v3 = v5 | 1;
    }

    while ((v5 | 1u) < a3);
  }

  return result;
}

uint64_t heapPop(uint64_t **a1)
{
  v1 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    return 0;
  }

  if (v1 == 2)
  {
    result = **a1;
    **a1 = (*a1)[1];
    *(a1 + 4) = 1;
  }

  else if (v1 == 1)
  {
    *(a1 + 4) = 0;
    return **a1;
  }

  else
  {
    v4 = **a1;
    **a1 = (*a1)[(v1 - 1)];
    (*a1)[v1 - 1] = v4;
    heapAdjustDown(*a1, 0, (v1 - 1));
    v5 = *(a1 + 4) - 1;
    *(a1 + 4) = v5;
    return (*a1)[v5];
  }

  return result;
}

uint64_t heapAdd(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(*result + 8 * *(result + 8)) = a2;
  *(result + 8) = v2 + 1;
  if (v2)
  {
    v3 = v2 == 0xFFFF;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = result;
    v5 = (v2 + 1) >> 1;
    do
    {
      v6 = v5--;
      result = heapAdjustDown(*v4, v5, *(v4 + 8));
    }

    while (v6 > 1);
  }

  return result;
}

uint64_t astar_search(uint64_t a1, uint64_t *a2, __int16 a3, int a4, unsigned __int16 *a5, uint64_t *a6)
{
  v12 = *(a1 + 8);
  v13 = a5[1] + 2;
  if (a5[1] == 0xFFFE)
  {
    v18 = 16;
  }

  else
  {
    v14 = 2;
    v15 = 1;
    do
    {
      v16 = v13;
      if (v13)
      {
        v17 = v14;
      }

      else
      {
        v17 = 1;
      }

      v15 *= v17;
      v13 >>= 1;
      v14 *= v14;
    }

    while (v16 > 1);
    v18 = 16 * v15;
  }

  v19 = 2315264010;
  v20 = heap_Alloc(v12, v18);
  if (v20)
  {
    v21 = v20;
    v22 = a5[1] + 2;
    if (a5[1] == 0xFFFE)
    {
      v27 = 8;
    }

    else
    {
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = v22;
        if (v22)
        {
          v26 = v23;
        }

        else
        {
          v26 = 1;
        }

        v24 *= v26;
        v22 >>= 1;
        v23 *= v23;
      }

      while (v25 > 1);
      v27 = 8 * v24;
    }

    v28 = heap_Alloc(*(a1 + 8), v27);
    v41 = v28;
    if (!v28)
    {
      goto LABEL_36;
    }

    v29 = 0;
    v42 = 0;
    *v21 = 0xFFFF;
    *(v21 + 4) = a3 - 1;
    *(v21 + 6) = 0;
    *(v21 + 12) = 0;
    *(v21 + 14) = *a5;
    *(v21 + 8) = 0;
    *v28 = v21;
    v30 = 1;
    LOWORD(v42) = 1;
    do
    {
      v31 = heapPop(&v41);
      v32 = v31;
      if (*(v31 + 4) == a4 && (!v29 || *(v31 + 2) > *(v29 + 2)))
      {
        v29 = v31;
      }

      v33 = 0;
      v34 = 1;
      do
      {
        v35 = v34;
        if (generateNewState(a1, v32, v21 + 16 * v30, v33, a2, a4, a5, a6))
        {
          *(v21 + 16 * v30 + 6) = v30;
          heapAdd(&v41, v21 + 16 * v30++);
        }

        v34 = 0;
        v33 = 1;
      }

      while ((v35 & 1) != 0);
    }

    while (v42);
    if (v29 && *(v29 + 6) >= 1)
    {
      v36 = *(v29 + 6);
      do
      {
        v37 = (v21 + 16 * v36);
        if (!*(v37 + 2))
        {
          *(*a2 + 224 * v37[2] + 73) = 4;
        }

        v38 = *v37;
        v36 = *v37;
      }

      while (v38 > 0);
    }

    v39 = v41;
    heap_Free(*(a1 + 8), v21);
    v19 = 0;
    v21 = v39;
    if (v39)
    {
LABEL_36:
      heap_Free(*(a1 + 8), v21);
    }
  }

  return v19;
}

uint64_t ipow(__int16 a1, unsigned int a2)
{
  v2 = 1;
  if (a2)
  {
    do
    {
      if (a2)
      {
        v3 = a1;
      }

      else
      {
        v3 = 1;
      }

      v2 *= v3;
      a1 *= a1;
      v4 = a2 > 1;
      a2 >>= 1;
    }

    while (v4);
  }

  return v2;
}

_WORD *generateNewState(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, int a6, unsigned __int16 *a7, uint64_t *a8)
{
  *a3 = *(a2 + 6);
  *(a3 + 8) = a4;
  v8 = *(a2 + 4) + 1;
  *(a3 + 4) = v8;
  if (a6 >= v8)
  {
    v9 = a3;
    v16 = 0;
    v17 = *a5;
    do
    {
      v18 = **(v17 + 224 * v8 + 16);
      v19 = cstdlib_strlen(v18);
      v16 += Utf8_LengthInUtf8chars(v18, v19);
      v17 = *a5;
      v20 = v9[2];
      if (*(*a5 + 224 * v9[2] + 73) == 3)
      {
        break;
      }

      v8 = v20 + 1;
      v9[2] = v20 + 1;
      v20 = (v20 + 1);
    }

    while (v20 <= a6);
    if (v20 > a6)
    {
      v9[2] = a6;
    }

    v9[7] = *(a2 + 14) - v16;
    v21 = *(a2 + 2);
    v9[1] = calculateScore(a1, a4, v9, (*(a2 + 12) + v16), *a7, *(a2 + 8), a8, a5) + v21;
    if (a4)
    {
      if (a4 != 1)
      {
        return v9;
      }

      v22 = *(a2 + 12) + v16;
    }

    else
    {
      v22 = 0;
    }

    v9[6] = v22;
    return v9;
  }

  return 0;
}

uint64_t calculateScore(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, uint64_t *a7, uint64_t a8)
{
  if (a2 == 1 && a4 < 6)
  {
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  if (a2 == 0 && a4 > 7)
  {
    v10 += 5;
  }

  v11 = *(a3 + 14);
  if (a2 == 1 && v11 < 6)
  {
    v10 += 10;
  }

  if (a2 == 0 && 1000 * v11 / a5 - 400 < 0xC9)
  {
    v12 = v10 + 5;
  }

  else
  {
    v12 = v10;
  }

  if (a2 == 1 && applyRules(a1, a8, *(a3 + 4), a7) == 1)
  {
    v12 += 20;
  }

  if (a6 | a2)
  {
    return v12;
  }

  else
  {
    return (v12 - 10);
  }
}

uint64_t fe_phrasing_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v42 = 0;
  v43 = 0;
  v41 = 0;
  stress_models = 2315264010;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v36 = -1;
  v35 = 0;
  if (!a5)
  {
    return 2315264007;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v43);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v42);
    if ((inited & 0x80000000) == 0)
    {
      v12 = heap_Calloc(v43[1], 1, 1728);
      v17 = v43;
      if (!v12 || (v18 = v12, v19 = heap_Calloc(v43[1], 1, 1040), *(v18 + 48) = v19, v17 = v43, !v19))
      {
        log_OutPublic(v17[4], "FE_PHRASING", 37000, 0, v13, v14, v15, v16, __b);
        goto LABEL_46;
      }

      *v18 = v43;
      *(v18 + 8) = a3;
      v20 = v42;
      *(v18 + 16) = a4;
      *(v18 + 24) = v20;
      *(v18 + 32) = a1;
      *(v18 + 40) = a2;
      *v19 = a3;
      v19[1] = a4;
      *(*(v18 + 48) + 1020) = 0;
      *(v18 + 1456) = 0;
      *(v18 + 1520) = 0;
      *(v18 + 1448) = 0;
      *(v18 + 1464) = 0;
      *(v18 + 144) = 0u;
      *(v18 + 136) = 0;
      *(v18 + 1680) = 0;
      *(v18 + 1664) = 0u;
      *(v18 + 1688) = 0u;
      *(v18 + 1704) = safeh_GetNullHandle();
      *(v18 + 1712) = v21;
      *(v18 + 1536) = 0;
      Object = objc_GetObject(v43[6], "LINGDB", &v41);
      if ((Object & 0x80000000) != 0 || (*(v18 + 56) = *(v41 + 8), Object = objc_GetObject(v43[6], "FE_DEPES", &v40), (Object & 0x80000000) != 0) || (v23 = v40, *(v18 + 80) = *(v40 + 8), *(v18 + 64) = *(v23 + 16), Object = objc_GetObject(v43[6], "FE_DCTLKP", &v39), (Object & 0x80000000) != 0) || (v24 = v39, *(v18 + 104) = *(v39 + 8), *(v18 + 88) = *(v24 + 16), *(v18 + 1296) = 0, Object = nn_phrasing_checkIfActive(a3, a4, v43, (v18 + 1296)), (Object & 0x80000000) != 0) || *(v18 + 1296) == 1 && (Object = nn_phrasing_Load(a3, a4, *(v18 + 32), *(v18 + 40), v43, *(v18 + 104), *(v18 + 88), *(v18 + 96), (v18 + 1304)), (Object & 0x80000000) != 0) || (Object = isCorpusAlignmentEnabled(v43, &v38), (Object & 0x80000000) != 0))
      {
LABEL_45:
        stress_models = Object;
        goto LABEL_46;
      }

      if (v38 == 1)
      {
        *(v18 + 160) = 0;
        *(v18 + 116) = 0;
      }

      else
      {
        Object = usePandP(v43, (v18 + 160));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_45;
        }

        if (*(v18 + 160))
        {
          Object = paramc_ParamSetUInt(v43[5], "prmigactive", 1u);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          Object = pandpIgtreeInit(a3, a4, a1, a2, v43, v42, (v18 + 920));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          *(v18 + 600) = 0;
          *(v18 + 608) = 0;
          Object = nuance_pcre_ObjOpen(a3, a4, v18 + 600);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          Object = nuance_pcre_Init(*(v18 + 600), *(v18 + 608), 0x1Eu, 50);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v25 = v43;
          *(v18 + 168) = v43;
          Object = readPandPRules(a3, a4, v25, (v18 + 176));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }
        }

        Object = com_mosynt_UseMosynt(*(v18 + 88), *(v18 + 96), *(v18 + 104), (v18 + 116));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_45;
        }

        if (*(v18 + 116))
        {
LABEL_30:
          __s1 = 0;
          Object = com_mosynt_GetCfgParamVal(*(v18 + 88), *(v18 + 96), *(v18 + 104), "mosynt_enablegraphsymcache", "yes", &__s1);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v26 = cstdlib_strcmp(__s1, "yes") == 0;
          Object = kbsymtab_LoadData(a3, a4, *(v18 + 32), *(v18 + 40), (v18 + 120), v26);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          Object = accphr_LoadData(a3, a4, (v18 + 128));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

LABEL_33:
          Object = com_IncludeCRF(*(v18 + 88), *(v18 + 96), *(v18 + 104), (v18 + 112));
          if ((Object & 0x80000000) == 0)
          {
            if (!*(v18 + 112) || (v29 = v42, v28 = v43, *(v18 + 168) = v43, Object = pandpCrfInit(a3, a4, a1, a2, v28, v29, *(v18 + 104), v27, *(v18 + 88), *(v18 + 96), v18 + 920), (Object & 0x80000000) == 0))
            {
              (*(*(v18 + 104) + 96))(*(v18 + 88), *(v18 + 96), "fecfg", "statbnd_enable_nnets", &v37, &v36, &v35);
              if (v36 && v37)
              {
                v30 = *v37;
                v30[cstdlib_strlen(*v37) - 1] = 0;
                *(v18 + 1456) = cstdlib_strcmp(*v37, "yes") == 0;
              }

              Object = fe_phrasing_InitNNPhrasing(v18);
              if ((Object & 0x80000000) == 0)
              {
                Object = hlp_useNLUPOSMap(*(v18 + 88), *(v18 + 96), *(v18 + 104), (v18 + 1280));
                if ((Object & 0x80000000) == 0)
                {
                  if (*(v18 + 1280) != 1 || (Object = hlp_loadNLUPOSMap(v43, *(v18 + 104), *(v18 + 88), *(v18 + 96), (v18 + 1288)), (Object & 0x80000000) == 0))
                  {
                    fe_phraseing_tryLoadingIGTree(*(v18 + 8), *(v18 + 16), *(v18 + 32), *(v18 + 40), *v18, (v18 + 1648));
                    stress_models = load_stress_models(*(v18 + 8), *(v18 + 16), *v18, *(v18 + 88), *(v18 + 96), *(v18 + 104), a1, a2, (v18 + 1680), (v18 + 1696), (v18 + 1688), *(v18 + 1464), (v18 + 1472), (v18 + 1704), (v18 + 1720), (v18 + 1684));
                    if ((stress_models & 0x80000000) == 0)
                    {
                      v31 = 62343;
LABEL_47:
                      *a5 = v18;
                      *(a5 + 8) = v31;
                      return stress_models;
                    }

LABEL_46:
                    fe_phrasing_ObjClose(*a5, *(a5 + 8));
                    v18 = 0;
                    v31 = 0;
                    goto LABEL_47;
                  }
                }
              }
            }
          }

          goto LABEL_45;
        }
      }

      Object = paramc_ParamSetUInt(v43[5], "prmigactive", 1u);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_45;
      }

      if (!*(v18 + 116))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }
  }

  return inited;
}

uint64_t isCorpusAlignmentEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  *a2 = 0;
  result = paramc_ParamGetUInt(*(a1 + 40), "statpos_do_corpus_alignment", &v4);
  if ((result & 0x1FFF) == 0x14)
  {
    return 0;
  }

  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v4 != 1)
  {
    return 0;
  }

  result = 0;
  *a2 = 1;
  return result;
}

uint64_t fe_phrasing_InitNNPhrasing(uint64_t a1)
{
  v10 = 0;
  v9 = -1;
  v8 = 0;
  if (*(a1 + 1456) != 1)
  {
    return 0;
  }

  result = ruleNNInit(*(a1 + 8), *(a1 + 16), *a1, *(a1 + 104), *(a1 + 88), *(a1 + 96), a1 + 1544, (a1 + 1560));
  if ((result & 0x80000000) == 0)
  {
    result = initFiModel(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), *(a1 + 88), *(a1 + 96), *(a1 + 104), (a1 + 1460), (a1 + 1448));
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 1464) = 0;
      *(a1 + 1472) = safeh_GetNullHandle();
      *(a1 + 1480) = v3;
      *(a1 + 1520) = 1;
      result = loadEmbedding(*(a1 + 8), *(a1 + 16), (a1 + 1464), (a1 + 1472), (a1 + 1488), *(a1 + 88), *(a1 + 96), *(a1 + 104), (a1 + 1520));
      if ((result & 0x80000000) == 0)
      {
        v4 = heap_Calloc(*(*a1 + 8), 1, 1776);
        *(a1 + 1528) = v4;
        if (!v4)
        {
          return 2315264010;
        }

        result = load_pw_cfg(*(a1 + 104), *(a1 + 88), *(a1 + 96), v4, *a1);
        if ((result & 0x80000000) == 0)
        {
          result = getphraseCfg(*a1, *(a1 + 104), *(a1 + 88), *(a1 + 96), (a1 + 1656), (a1 + 1664), (a1 + 1672));
          if ((result & 0x80000000) == 0)
          {
            v7 = 0;
            *(a1 + 1524) = 0;
            result = (*(*(a1 + 104) + 96))(*(a1 + 88), *(a1 + 96), "fecfg", "statbnd_nopos", &v10, &v9, &v8);
            if ((result & 0x80000000) == 0)
            {
              if (v9 == 1)
              {
                v5 = *v10;
                v5[cstdlib_strlen(*v10) - 1] = 0;
                if (!cstdlib_strcmp(*v10, "yes"))
                {
                  *(a1 + 1524) = 1;
                }
              }

              result = load_pw_igtree_cfg(*(a1 + 88), *(a1 + 96), *(a1 + 104), &v7);
              if ((result & 0x80000000) == 0)
              {
                if (v7)
                {
                  v6 = (a1 + 1536);
                  result = load_pw_igtree(*(a1 + 8), *(a1 + 16), *a1, (a1 + 1536));
                  if ((result & 0x80000000) != 0)
                  {
                    if (*v6)
                    {
                      igtree_Deinit(*a1, *v6);
                      result = 0;
                      *(a1 + 1536) = 0;
                      return result;
                    }

                    return 0;
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

uint64_t hlp_useNLUPOSMap(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  result = (*(a3 + 96))(a1, a2, "fecfg", "nluposmap", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    if (*&__c[1] != 1 || *&__c[3] == 0)
    {
      return 0;
    }

    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (cstdlib_strcmp(**&__c[3], "YES") && cstdlib_strcmp(**&__c[3], "yes"))
    {
      return 0;
    }

    else
    {
      result = 0;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t hlp_loadNLUPOSMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v31 = 0;
  __b = 0u;
  v30 = 0u;
  v10 = (*(a2 + 96))(a3, a4, "fecfg", "nluposmapcounter", &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v12 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
    }

    v13 = cstdlib_atoi(**&__c[3]);
    if (v13)
    {
      v14 = v13;
      cstdlib_memset(&__b, 0, 0x28uLL);
      *&__b = ssftmap_ElemCopyString;
      *(&v30 + 1) = ssftmap_ElemCopyString;
      *(&__b + 1) = ssftmap_ElemFreeString;
      v31 = ssftmap_ElemFreeString;
      *&v30 = ssftmap_ElemCompareKeysString;
      v15 = *(a1 + 8);
      *__dst = __b;
      v35 = v30;
      v36 = ssftmap_ElemFreeString;
      v16 = ssftmap_ObjOpen(v15, 0, __dst, a5);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = v14;
        v20 = "nluposmap";
        v28 = v19;
        do
        {
          cstdlib_memset(__dst, 0, 0x20uLL);
          cstdlib_strcpy(__dst, v20);
          v21 = LH_itoa(v17, v32, 0xAu);
          cstdlib_strcat(&__dst[9], v21);
          *&__c[1] = -1;
          v10 = (*(a2 + 96))(a3, a4, "fecfg", __dst, &__c[3], &__c[1], __c);
          if ((v10 & 0x80000000) != 0)
          {
            break;
          }

          if (*&__c[1])
          {
            v22 = **&__c[3];
            v23 = cstdlib_strchr(**&__c[3], __c[0]);
            if (v23)
            {
              *v23 = 0;
              v18 = (v23 + 1);
            }

            if (v22)
            {
              v24 = v20;
              while (1)
              {
                v25 = cstdlib_strchr(v22, 124);
                v26 = v25;
                if (v25)
                {
                  *v25 = 0;
                }

                v10 = ssftmap_Insert(*a5, v22, v18);
                if ((v10 & 0x80000000) != 0)
                {
                  return v10;
                }

                v22 = v26 + 1;
                if (!v26)
                {
                  v20 = v24;
                  v19 = v28;
                  break;
                }
              }
            }
          }

          v17 = v17 + 1;
        }

        while (v17 < v19);
      }
    }
  }

  return v10;
}

uint64_t fe_phraseing_tryLoadingIGTree(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  *a6 = 0;
  result = nn_model_getBrokerString(a5, v19, "wprules_", 0x100uLL);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  result = igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, &v18, 2, v19, "IGTR", 1031, 0);
  if ((result & 0x80000000) != 0)
  {
    result = log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "failed to read IGtree phrasing model data - going on without", v13, v14, v15, v17);
LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v16 = v18;
LABEL_6:
  *a6 = v16;
  return result;
}

uint64_t fe_phrasing_ObjClose(void **a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62343, 1728);
  if ((result & 0x80000000) != 0)
  {
    return 2315264008;
  }

  if (a1)
  {
    if (*(a1 + 40))
    {
      pandpIgtreeDeinit(a1[21], a1[3], a1 + 115);
      freePandPRules(a1 + 22);
    }

    if (*(a1 + 364) == 1)
    {
      v4 = a1[181];
      if (v4)
      {
        if (*v4)
        {
          fi_deinit(*a1, a1[3], *v4);
          v4 = a1[181];
        }

        if (!*(a1 + 365))
        {
          fi_deinit(*a1, a1[3], v4[1]);
          v4 = a1[181];
        }

        heap_Free((*a1)[1], v4);
        a1[181] = 0;
      }

      v5 = a1[183];
      if (v5)
      {
        (v5[3])(a1[186], a1[187]);
        if (*(a1 + 380))
        {
          (a1[183][3])(a1[188], a1[189]);
        }

        if (!*(a1 + 420))
        {
          a1[183] = 0;
          objc_UnregisterObject((*a1)[6], "NNWRDLKP");
        }
      }

      v6 = a1[192];
      if (v6)
      {
        igtree_Deinit(*a1, v6);
        heap_Free((*a1)[1], a1[192]);
        a1[192] = 0;
      }

      freeSpRules(*a1, (a1 + 193));
      freePwInObjClose(*a1, a1[191]);
      freeSPPunc(*a1, a1[208]);
      freeSPPunc(*a1, a1[209]);
    }

    if (a1[15])
    {
      kbsymtab_UnloadData(a1[1], a1[2], a1[4], a1[5], a1 + 15);
    }

    if (a1[16])
    {
      accphr_UnloadData(a1[1], a1[2], a1 + 16);
    }

    if (a1[7])
    {
      objc_ReleaseObject((*a1)[6], "LINGDB");
    }

    if (a1[10])
    {
      objc_ReleaseObject((*a1)[6], "FE_DEPES");
    }

    if (a1[13])
    {
      objc_ReleaseObject((*a1)[6], "FE_DCTLKP");
    }

    v7 = a1[6];
    if (v7)
    {
      heap_Free((*a1)[1], v7);
    }

    if (*(a1 + 28))
    {
      pandpCrfDeinit(a1[21], a1[3], (a1 + 115));
    }

    if (*(a1 + 324) != 1 || (result = nn_phrasing_UnLoad(*a1, a1[3], (a1 + 163)), (result & 0x80000000) == 0))
    {
      if (*(a1 + 320) == 1)
      {
        ssftmap_ObjClose(a1[161]);
      }

      v8 = a1[206];
      if (v8)
      {
        igtree_Deinit_ReadOnly_DereferenceCnt(*a1, a1[3], v8);
        a1[206] = 0;
      }

      if (*(a1 + 420))
      {
        free_stress_model(*a1, a1[3], a1[212], a1[211], a1[183], a1[213], a1[214]);
        a1[212] = 0;
        a1[183] = 0;
        objc_UnregisterObject((*a1)[6], "NNWRDLKP");
      }

      heap_Free((*a1)[1], a1);
      return 0;
    }
  }

  return result;
}

uint64_t fe_phrasing_ObjReopen(void **a1, int a2)
{
  v3 = 2315264006;
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  if (a1)
  {
    if (*(a1 + 324) == 1)
    {
      nn_option = nn_phrasing_UnLoad(*a1, a1[3], (a1 + 163));
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }
    }

    *(a1 + 324) = 0;
    nn_option = nn_phrasing_checkIfActive(a1[1], a1[2], *a1, a1 + 324);
    if ((nn_option & 0x80000000) != 0)
    {
      return nn_option;
    }

    if (*(a1 + 324) == 1)
    {
      nn_option = nn_phrasing_Load(a1[1], a1[2], a1[4], a1[5], *a1, a1[13], a1[11], a1[12], a1 + 163);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }
    }

    if (*(a1 + 28))
    {
      pandpCrfDeinit(a1[21], a1[3], (a1 + 115));
    }

    v5 = a1 + 182;
    if (*(a1 + 364))
    {
      freeSpRules(*a1, (a1 + 193));
      v6 = *a1;
      v7 = a1[191];
      *(v7 + 138) = *a1;
      freePwInObjClose(v6, v7);
      freeSPPunc(*a1, a1[208]);
      freeSPPunc(*a1, a1[209]);
      v8 = a1[192];
      if (v8)
      {
        igtree_Deinit(*a1, v8);
        heap_Free((*a1)[1], a1[192]);
        a1[192] = 0;
      }

      v9 = a1[206];
      if (v9)
      {
        igtree_Deinit_ReadOnly_DereferenceCnt(*a1, a1[3], v9);
        a1[206] = 0;
      }

      if (*(a1 + 420))
      {
        free_stress_model(*a1, a1[3], a1[212], a1[211], a1[183], a1[213], a1[214]);
        *(a1 + 211) = 0u;
      }

      nn_option = load_nn_option(a1, a1 + 364);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      if (*v5)
      {
        nn_option = nnEmbeddingReLoad(a1[1], a1[2], a1 + 183, a1 + 184, a1 + 186, a1[11], a1[12], a1[13], a1 + 380);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = nnModelReload(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[11], a1[12], a1[13], a1 + 365, a1 + 181);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = ruleNNInit(a1[1], a1[2], *a1, a1[13], a1[11], a1[12], (a1 + 193), a1 + 780);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        v10 = heap_Calloc((*a1)[1], 1, 1776);
        a1[191] = v10;
        nn_option = load_pw_cfg(a1[13], a1[11], a1[12], v10, *a1);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = getphraseCfg(*a1, a1[13], a1[11], a1[12], a1 + 414, a1 + 208, a1 + 209);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        v26 = 0;
        nn_option = load_pw_igtree_cfg(a1[11], a1[12], a1[13], &v26);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        if (v26)
        {
          v11 = (a1 + 192);
          if ((load_pw_igtree(a1[1], a1[2], *a1, a1 + 192) & 0x80000000) != 0)
          {
            if (*v11)
            {
              igtree_Deinit(*a1, *v11);
              a1[192] = 0;
            }
          }
        }

        fe_phraseing_tryLoadingIGTree(a1[1], a1[2], a1[4], a1[5], *a1, a1 + 206);
      }

      else
      {
        nn_option = releaseEmbedding((a1 + 183), a1 + 184, a1 + 186, a1 + 380);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = releaseFIModel(*a1, a1[3], *(a1 + 365), a1 + 181);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }
      }

      a1[213] = safeh_GetNullHandle();
      a1[214] = v13;
      *(a1 + 420) = 0;
      nn_option = load_stress_models(a1[1], a1[2], *a1, a1[11], a1[12], a1[13], a1[4], a1[5], a1 + 420, a1 + 212, a1 + 211, a1[183], a1 + 184, a1 + 213, a1 + 860, a1 + 421);
    }

    else
    {
      nn_option = load_nn_option(a1, a1 + 364);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      if (!*v5)
      {
        goto LABEL_39;
      }

      nn_option = fe_phrasing_InitNNPhrasing(a1);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      fe_phraseing_tryLoadingIGTree(a1[1], a1[2], a1[4], a1[5], *a1, a1 + 206);
      a1[213] = safeh_GetNullHandle();
      a1[214] = v12;
      *(a1 + 420) = 0;
      nn_option = load_stress_models(a1[1], a1[2], *a1, a1[11], a1[12], a1[13], a1[4], a1[5], a1 + 420, a1 + 212, a1 + 211, a1[183], a1 + 184, a1 + 213, a1 + 860, a1 + 421);
    }

    if ((nn_option & 0x80000000) != 0)
    {
      return nn_option;
    }

LABEL_39:
    v14 = a1 + 20;
    if (*(a1 + 40) == 1)
    {
      pandpIgtreeDeinit(a1[21], a1[3], a1 + 115);
      freePandPRules(a1 + 22);
    }

    cstdlib_memset(a1 + 22, 0, 0x298uLL);
    nn_option = usePandP(*a1, a1 + 40);
    if ((nn_option & 0x80000000) != 0)
    {
      return nn_option;
    }

    if (*v14 != 1 || (PandPRules = paramc_ParamSetUInt((*a1)[5], "prmigactive", 1u), (PandPRules & 0x80000000) == 0) && (PandPRules = pandpIgtreeInit(a1[1], a1[2], a1[4], a1[5], *a1, a1[3], a1 + 115), (PandPRules & 0x80000000) == 0) && (a1[75] = 0, *(a1 + 152) = 0, PandPRules = nuance_pcre_ObjOpen(a1[1], a1[2], (a1 + 75)), (PandPRules & 0x80000000) == 0) && (PandPRules = nuance_pcre_Init(a1[75], a1[76], 0x1Eu, 50), (PandPRules & 0x80000000) == 0) && (v17 = *a1, v16 = a1[1], a1[21] = *a1, PandPRules = readPandPRules(v16, a1[2], v17, a1 + 88), (PandPRules & 0x80000000) == 0))
    {
      v18 = a1 + 29;
      v19 = *(a1 + 29);
      nn_option = com_mosynt_UseMosynt(a1[11], a1[12], a1[13], a1 + 29);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      v20 = *v18;
      if (v19 == 1)
      {
        if (v20 == 1)
        {
          goto LABEL_58;
        }

        if (!v20)
        {
          nn_option = paramc_ParamSetUInt((*a1)[5], "prmigactive", 1u);
          if ((nn_option & 0x80000000) != 0)
          {
            return nn_option;
          }

          if (a1[15])
          {
            nn_option = kbsymtab_UnloadData(a1[1], a1[2], a1[4], a1[5], a1 + 15);
            a1[15] = 0;
            if ((nn_option & 0x80000000) != 0)
            {
              return nn_option;
            }
          }

          if (a1[16])
          {
            nn_option = accphr_UnloadData(a1[1], a1[2], a1 + 16);
            a1[16] = 0;
            if ((nn_option & 0x80000000) != 0)
            {
              return nn_option;
            }
          }

          if (*v18 == 1)
          {
LABEL_58:
            __s1 = 0;
            if (a1[15])
            {
              nn_option = kbsymtab_UnloadData(a1[1], a1[2], a1[4], a1[5], a1 + 15);
              a1[15] = 0;
              if ((nn_option & 0x80000000) != 0)
              {
                return nn_option;
              }
            }

            if (a1[16])
            {
              nn_option = accphr_UnloadData(a1[1], a1[2], a1 + 16);
              a1[16] = 0;
              if ((nn_option & 0x80000000) != 0)
              {
                return nn_option;
              }
            }

LABEL_66:
            nn_option = com_mosynt_GetCfgParamVal(a1[11], a1[12], a1[13], "mosynt_enablegraphsymcache", "yes", &__s1);
            if ((nn_option & 0x80000000) == 0)
            {
              v21 = cstdlib_strcmp(__s1, "yes") == 0;
              nn_option = kbsymtab_LoadData(a1[1], a1[2], a1[4], a1[5], a1 + 15, v21);
              if ((nn_option & 0x80000000) == 0)
              {
                nn_option = accphr_LoadData(a1[1], a1[2], a1 + 16);
                if ((nn_option & 0x80000000) == 0)
                {
                  goto LABEL_69;
                }
              }
            }

            return nn_option;
          }
        }
      }

      else if (v20 == 1)
      {
        __s1 = 0;
        goto LABEL_66;
      }

LABEL_69:
      nn_option = com_IncludeCRF(a1[11], a1[12], a1[13], a1 + 28);
      if ((nn_option & 0x80000000) == 0)
      {
        if (!*(a1 + 28) || (v22 = *a1, a1[21] = *a1, pandpCrfDeinit(v22, a1[3], (a1 + 115)), nn_option = pandpCrfInit(a1[1], a1[2], a1[4], a1[5], *a1, a1[3], a1[13], v23, a1[11], a1[12], (a1 + 115)), (nn_option & 0x80000000) == 0))
        {
          if (*(a1 + 320) == 1)
          {
            ssftmap_ObjClose(a1[161]);
          }

          nn_option = hlp_useNLUPOSMap(a1[11], a1[12], a1[13], a1 + 320);
          if ((nn_option & 0x80000000) == 0)
          {
            if (*(a1 + 320) != 1)
            {
              return 0;
            }

            return hlp_loadNLUPOSMap(*a1, a1[13], a1[11], a1[12], a1 + 161);
          }
        }
      }

      return nn_option;
    }

    v3 = PandPRules;
    *v14 = 0;
  }

  return v3;
}

uint64_t load_nn_option(void *a1, int *a2)
{
  v9 = 0;
  v8 = -1;
  v7 = 0;
  *a2 = 0;
  v3 = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", "statbnd_enable_nnets", &v9, &v8, &v7);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v8;
    if (v8)
    {
      v5 = *v9;
      v5[cstdlib_strlen(*v9) - 1] = 0;
      v4 = cstdlib_strcmp(*v9, "yes") == 0;
    }

    *a2 = v4;
  }

  return v3;
}

uint64_t fe_phrasing_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62343, 1728);
  if ((result & 0x80000000) != 0)
  {
    return 2315264008;
  }

  if (*(a1 + 160))
  {
    v4 = *a1;
    v5 = *(a1 + 96);
    v6 = *(a1 + 104);
    v7 = *(a1 + 88);

    return setParams(v4, v7, v5, v6, a1 + 176);
  }

  return result;
}

uint64_t fe_phrasing_Process_PandP(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  *a5 = 1;
  SentenceData = getSentenceData(*a1, *(a1 + 48), *(a1 + 56), a3, a4, a1 + 168, *(a1 + 120), 0);
  if ((SentenceData & 0x80000000) == 0 && *(a1 + 848))
  {
    ProsodicStructure = getProsodicStructure(a1 + 168);
    if ((ProsodicStructure & 0x80000000) == 0)
    {
      ProsodicStructure = getProminence(a1 + 168, v11, v12, v13, v14, v15, v16, v17);
      if ((ProsodicStructure & 0x80000000) == 0)
      {
        ProsodicStructure = updateLingdb(*(a1 + 56), a3, a4, a1 + 168);
      }
    }

    SentenceData = ProsodicStructure;
  }

  freeSentenceData(a1 + 168);
  freeProsodicStructure((a1 + 168));
  return SentenceData;
}

uint64_t fe_phrasing_Process_Mosynt(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v31 = 0;
  PhrasingOutput = 2315264010;
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  v33 = 0;
  __s = 0;
  v32 = 0;
  *a5 = 1;
  v10 = (*(a1[7] + 104))(a3, a4, 1, 0, &v32 + 2);
  if ((v10 & 0x80000000) == 0 && ((*(a1[7] + 184))(a3, a4, HIWORD(v32), 0, &v31) & 0x80000000) == 0 && v31 == 1)
  {
    v10 = (*(a1[7] + 176))(a3, a4, HIWORD(v32), 0, &__s, &v32);
    if ((v10 & 0x80000000) == 0 && v32 >= 2u)
    {
      v11 = cstdlib_strlen(__s);
      v12 = heap_Alloc(*(*a1 + 8), v11 + 1);
      if (v12)
      {
        v17 = v12;
        cstdlib_memset(v12, 32, v11);
        *(v17 + v11) = 0;
        v18 = (*(a1[7] + 176))(a3, a4, HIWORD(v32), 2, &v33, &v32);
        if ((v18 & 0x80000000) != 0)
        {
          PhrasingOutput = v18;
          goto LABEL_29;
        }

        v19 = heap_Alloc(*(*a1 + 8), 32);
        if (!v19)
        {
          log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v20, v21, v22, v23, v27);
          goto LABEL_29;
        }

        v24 = v19;
        cstdlib_memset(v19, 0, 0x20uLL);
        started = mosynt_StartAccentPhrasing(a1[6], a1[11], a1[12], a1[13], a1[15], a1[16], v24);
        if ((started & 0x80000000) == 0)
        {
          started = fe_phrasing_mosynt_SetupInput(a1, a3, a4, HIWORD(v32), v24);
          if ((started & 0x80000000) == 0)
          {
            mosynt_DoAccentPhrasing(a1[6], v24, v33);
            if ((started & 0x80000000) == 0)
            {
              started = fe_phrasing_mosynt_SetProminenceValues(a1, a3, a4, HIWORD(v32), v24);
              if ((started & 0x80000000) == 0)
              {
                v30 = 0;
                started = fe_phrasing_mosynt_DeleteAuxWords(a1, a3, a4, HIWORD(v32), v17, &v30);
                if ((started & 0x80000000) == 0)
                {
                  v28 = 0;
                  started = fe_phrasing_mosynt_SplitWords(a1, a3, a4, HIWORD(v32), v17, &v28);
                  if ((started & 0x80000000) == 0)
                  {
                    v29 = 0;
                    started = fe_phrasing_mosynt_MeltClitics(a1, a3, a4, HIWORD(v32), v17, &v29);
                    if ((started & 0x80000000) == 0)
                    {
                      PhrasingOutput = fe_phrasing_mosynt_CreatePhrasingOutput(a1, a3, a4, HIWORD(v32), v24);
                      if ((PhrasingOutput & 0x80000000) != 0 || !v28 && !v30 && !v29)
                      {
                        goto LABEL_23;
                      }

                      started = fe_phrasing_mosynt_AdjustSentenceAndMarkers(a1, a3, a4, HIWORD(v32), v11, (v28 + v11 - (v30 + v29)), v17);
                    }
                  }
                }
              }
            }
          }
        }

        PhrasingOutput = started;
LABEL_23:
        mosynt_FinishAccentPhrasing(a1[6], v24);
        heap_Free(*(*a1 + 8), v24);
LABEL_29:
        heap_Free(*(*a1 + 8), v17);
        return PhrasingOutput;
      }

      log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v13, v14, v15, v16, v27);
      return 2315264010;
    }
  }

  return v10;
}

uint64_t fe_phrasing_mosynt_SetupInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v20 = 0;
  v17 = 0;
  __s = 0;
  result = (*(*(a1 + 56) + 176))(a2, a3, a4, 0, &v17, &v23);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v23 + 2);
    if ((result & 0x80000000) == 0)
    {
      v21 = 0;
      v11 = HIWORD(v23);
      if (HIWORD(v23))
      {
        v12 = 0;
        v13 = 0;
        v19 = 0;
        while (1)
        {
          result = (*(*(a1 + 56) + 168))(a2, a3, v11, 0, 1, &v22[1], &v23);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (*&v22[1] <= 0xAu && ((1 << SLOBYTE(v22[1])) & 0x610) != 0)
          {
            result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v23), 1, 1, v22, &v23);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v23), 2, 1, &v21, &v23);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v23), 3, &__s, &v23);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v12)
            {
              result = hlp_ReadSildur(a1, a2, a3, v12, &v20, &v19);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v19 && v20)
              {
                mosynt_InsertAccPhrPunct(*(a1 + 48), a5, v13 + 1, 44);
              }
            }

            mosynt_InsertAccPhrTermWord(*(a1 + 48), a5, v22[0], v21 + 1, HIWORD(v23), __s);
            if (v21)
            {
              v15 = *(v17 + v21 - 1);
              if (mosynt_IsPunctChar(*(a1 + 48), a5, v15))
              {
                mosynt_InsertAccPhrPunct(*(a1 + 48), a5, v21 + 1, v15);
              }

              v13 = v21;
              if (v21)
              {
                if (!*(v17 + v21))
                {
                  IsPunctChar = mosynt_IsPunctChar(*(a1 + 48), a5, *(v17 + v21 - 1));
                  v13 = v21;
                  if (!IsPunctChar)
                  {
                    mosynt_InsertAccPhrPunct(*(a1 + 48), a5, v21 + 1, 46);
                    v13 = v21;
                  }
                }
              }
            }

            else
            {
              v13 = 0;
            }

            v12 = HIWORD(v23);
          }

          result = (*(*(a1 + 56) + 120))(a2, a3);
          if ((result & 0x80000000) == 0)
          {
            v11 = HIWORD(v23);
            if (HIWORD(v23))
            {
              continue;
            }
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_mosynt_SetProminenceValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  result = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v19);
  if ((result & 0x80000000) == 0)
  {
    for (i = v19; v19; i = v19)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, i, 0, 1, &v17, &v18);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (v17 <= 0xA && ((1 << v17) & 0x610) != 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, v19, 1, 1, &v16 + 2, &v18);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosynt_GetWordProminence(*(a1 + 48), a5, HIWORD(v16), &v16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        LH_itoa(v16, __s, 0xAu);
        v12 = *(*(a1 + 56) + 160);
        v13 = v19;
        v14 = cstdlib_strlen(__s);
        result = v12(a2, a3, v13, 13, (v14 + 1), __s, &v15);
        if ((result & 0x80000000) != 0)
        {
          break;
        }
      }

      result = (*(*(a1 + 56) + 120))(a2, a3, v19, &v19);
      if ((result & 0x80000000) != 0)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_mosynt_DeleteAuxWords(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  __s1 = 0;
  v36 = 0;
  *a6 = 0;
  v12 = (*(a1[7] + 176))(a2, a3, a4, 0, &v37, &v42);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = (*(a1[7] + 104))(a2, a3, 2, a4, &v42 + 2);
  if ((v13 & 0x80000000) == 0 && HIWORD(v42))
  {
    v12 = (*(a1[7] + 168))(a2, a3);
    if ((v12 & 0x80000000) == 0)
    {
      v14 = 0;
      v35 = a5 - 1;
      while (1)
      {
        if (v40 > 0xA || ((1 << v40) & 0x610) == 0)
        {
          goto LABEL_18;
        }

        v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v42), 1, 1, &v39 + 2, &v42);
        if ((v16 & 0x80000000) != 0 || (v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v42), 2, 1, &v39, &v42), (v16 & 0x80000000) != 0) || (v16 = (*(a1[7] + 176))(a2, a3, HIWORD(v42), 3, &__s1, &v42), (v16 & 0x80000000) != 0))
        {
LABEL_38:
          v13 = v16;
LABEL_39:
          if (!v14)
          {
            return v13;
          }

LABEL_40:
          heap_Free(*(*a1 + 8), v14);
          return v13;
        }

        if (!cstdlib_strstr(__s1, "{DEL}"))
        {
          goto LABEL_18;
        }

        v16 = (*(a1[7] + 312))(a2, a3, HIWORD(v39), &v36);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }

        if (v36)
        {
          break;
        }

        v27 = HIWORD(v39);
        v28 = v39;
        if (HIWORD(v39) < v39)
        {
          v29 = (a5 + HIWORD(v39));
          v30 = v39 - HIWORD(v39);
          do
          {
            *v29++ = 100;
            ++*a6;
            --v30;
          }

          while (v30);
        }

        v26 = HIWORD(v42);
        v31 = *(v37 + v28);
        if (v31 == 95 || v31 == 32)
        {
          v32 = (a5 + v28);
        }

        else
        {
          if (!v27)
          {
            goto LABEL_19;
          }

          v33 = *(v37 + (v27 - 1));
          if (v33 != 95 && v33 != 32)
          {
            goto LABEL_19;
          }

          v32 = (v35 + v27);
        }

        *v32 = 100;
        ++*a6;
LABEL_19:
        v13 = (*(a1[7] + 120))(a2, a3, HIWORD(v42), &v42 + 2);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_39;
        }

        if (v26)
        {
          v13 = (*(a1[7] + 192))(a2, a3, v26);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_39;
          }
        }

        if (!HIWORD(v42))
        {
          goto LABEL_39;
        }

        v16 = (*(a1[7] + 168))(a2, a3);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }
      }

      v17 = heap_Alloc(*(*a1 + 8), 5000);
      if (!v17)
      {
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v18, v19, v20, v21, v35);
        return 2315264010;
      }

      v14 = v17;
      cstdlib_strcpy(v17, __s1);
      mosynt_RemoveAllSubstrOcc(v14, "{DEL}");
      v22 = *(a1[7] + 160);
      v23 = HIWORD(v42);
      v24 = cstdlib_strlen(v14);
      v25 = v22(a2, a3, v23, 3, (v24 + 1), v14, &v41);
      if ((v25 & 0x80000000) != 0)
      {
        v13 = v25;
        goto LABEL_40;
      }

LABEL_18:
      v26 = 0;
      goto LABEL_19;
    }

    return v12;
  }

  return v13;
}

uint64_t fe_phrasing_mosynt_SplitWords(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v98 = 0;
  v97 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v90 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  __s = 0;
  v86 = 0;
  *a6 = 0;
  if ((com_crf_GetCfgParamVal(a1[11], a1[12], a1[13], "fephrase_max_utf8_sym", "5", &v86) & 0x80000000) != 0)
  {
    v12 = 5;
  }

  else
  {
    v12 = cstdlib_atoi(v86);
  }

  v13 = heap_Alloc(*(*a1 + 8), v12);
  v18 = *a1;
  if (v13)
  {
    v19 = v13;
    v20 = heap_Alloc(*(v18 + 8), 5000);
    if (v20)
    {
      v25 = v20;
      UTF8Char = (*(a1[7] + 176))(a2, a3, a4, 0, &v93, &v98);
      if ((UTF8Char & 0x80000000) != 0)
      {
LABEL_105:
        v27 = UTF8Char;
      }

      else
      {
        v27 = (*(a1[7] + 104))(a2, a3, 2, a4, &v98 + 2);
        if ((v27 & 0x80000000) == 0)
        {
          v28 = HIWORD(v98);
          if (HIWORD(v98))
          {
            v74 = a5;
            while (1)
            {
              UTF8Char = (*(a1[7] + 168))(a2, a3, v28, 0, 1, &v96, &v98);
              if ((UTF8Char & 0x80000000) != 0)
              {
                goto LABEL_105;
              }

              if (v96 <= 0xA && ((1 << v96) & 0x610) != 0)
              {
                UTF8Char = (*(a1[7] + 168))(a2, a3, HIWORD(v98), 1, 1, &v95 + 2, &v98);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                UTF8Char = (*(a1[7] + 168))(a2, a3, HIWORD(v98), 2, 1, &v95, &v98);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                UTF8Char = (*(a1[7] + 176))(a2, a3, HIWORD(v98), 3, &v94, &v98);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                v88 = 0;
                v30 = cstdlib_strstr(v94, "{SEP");
                if (!v30)
                {
                  v38 = 0;
LABEL_72:
                  if (v30)
                  {
                    v90 = 0;
                    mosynt_App(v25, 5000, &v90, v94, &v91);
                    v90 = v38;
                    v45 = cstdlib_strlen("{SEP");
                    mosynt_App(v25, 5000, &v90, &v30[v45 + 2], &v91);
                    v46 = *(a1[7] + 160);
                    v47 = HIWORD(v98);
                    v48 = cstdlib_strlen(v25);
                    UTF8Char = v46(a2, a3, v47, 3, (v48 + 1), v25, &v97);
                    if ((UTF8Char & 0x80000000) != 0)
                    {
                      goto LABEL_105;
                    }
                  }

                  goto LABEL_100;
                }

                UTF8Char = (*(a1[7] + 312))(a2, a3, HIWORD(v95), &v88);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                v31 = v30[4];
                if ((v31 - 48) <= 9 && v30[5] == 125 && v30[6])
                {
                  v32 = (v30 - v94);
                  v77 = v31 & 0xF;
                }

                else
                {
                  v77 = 0;
                  v32 = 0;
                }

                v33 = HIWORD(v95);
                UTF8Char = utf8_getUTF8Char(v93, HIWORD(v95), v19);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                v79 = v32;
                v75 = v25;
                if (v33 >= v95)
                {
                  v34 = 0;
                  v36 = 0;
                }

                else
                {
                  v34 = 0;
                  do
                  {
                    v35 = *v19 && v77 > v34;
                    v36 = !v35;
                    if (!v35)
                    {
                      break;
                    }

                    v33 += cstdlib_strlen(v19);
                    v37 = utf8_getUTF8Char(v93, v33, v19);
                    if ((v37 & 0x80000000) != 0)
                    {
LABEL_109:
                      v27 = v37;
                      v25 = v75;
                      goto LABEL_106;
                    }

                    ++v34;
                    while (!cstdlib_strcmp(v19, "-"))
                    {
                      v33 += cstdlib_strlen(v19);
                      v37 = utf8_getUTF8Char(v93, v33, v19);
                      if ((v37 & 0x80000000) != 0)
                      {
                        goto LABEL_109;
                      }
                    }
                  }

                  while (v95 > v33);
                }

                if (v77 == v34)
                {
                  v39 = !v36;
                  if (HIWORD(v95) >= v33)
                  {
                    v39 = 1;
                  }

                  if (v39)
                  {
                    v40 = 0;
                  }

                  else
                  {
                    v40 = (v33 - HIWORD(v95));
                  }
                }

                else
                {
                  v40 = 0;
                }

                v25 = v75;
                v38 = v79;
                if (!v40 || v88 || !v79)
                {
                  goto LABEL_72;
                }

                v83 = 0;
                v84 = 0;
                v82 = 0;
                v41 = (*(a1[7] + 184))(a2, a3, HIWORD(v98), 14, &v98) >= 0 && v98 == 1;
                v42 = v41;
                if (v41)
                {
                  UTF8Char = (*(a1[7] + 176))(a2, a3, HIWORD(v98), 14, &v84, &v98);
                  if ((UTF8Char & 0x80000000) != 0)
                  {
                    goto LABEL_105;
                  }

                  hlp_NLUStrFind(v84, "POS", &v83, &v82);
                }

                HIWORD(v89) = HIWORD(v98);
                v43 = HIWORD(v98);
                LOWORD(v89) = HIWORD(v95);
                if (HIWORD(v98))
                {
                  while (1)
                  {
                    v44 = v43;
                    UTF8Char = (*(a1[7] + 120))(a2, a3, v43, &v89 + 2);
                    if ((UTF8Char & 0x80000000) != 0)
                    {
                      goto LABEL_105;
                    }

                    if (!HIWORD(v89))
                    {
                      goto LABEL_76;
                    }

                    UTF8Char = (*(a1[7] + 168))(a2, a3);
                    if ((UTF8Char & 0x80000000) != 0)
                    {
                      goto LABEL_105;
                    }

                    v43 = HIWORD(v89);
                    if (!HIWORD(v89) || v89 != HIWORD(v95))
                    {
                      goto LABEL_76;
                    }
                  }
                }

                v44 = 0;
LABEL_76:
                UTF8Char = (*(a1[7] + 80))(a2, a3, v44, &v92);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                hlp_CopyWordRec(a1, a2, a3, HIWORD(v98), v92);
                v49 = v95;
                LOWORD(v95) = HIWORD(v95) + v40;
                UTF8Char = (*(a1[7] + 160))(a2, a3, HIWORD(v98), 2, 1, &v95, &v97);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                UTF8Char = (*(a1[7] + 160))(a2, a3, v92, 1, 1, &v95, &v97);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                v78 = v49;
                if (v82)
                {
                  v50 = v42;
                }

                else
                {
                  v50 = 0;
                }

                v51 = v79;
                if (v50 == 1)
                {
                  *v80 = 0;
                  *v81 = 0;
                  UTF8Char = hlp_splitNLURangeTags(a1, v84, v81, v80);
                  if ((UTF8Char & 0x80000000) != 0)
                  {
                    goto LABEL_105;
                  }

                  SubPosForSEPX = hlp_GetSubPosForSEPX(a1, HIWORD(v95), v95, v93, v83, v82, 0, &__s);
                  v53 = __s;
                  if ((SubPosForSEPX & 0x80000000) != 0)
                  {
                    goto LABEL_110;
                  }

                  v54 = *v81;
                  hlp_NLUStrSet(*v81, "POS", __s);
                  v55 = *(a1[7] + 160);
                  v56 = HIWORD(v98);
                  v57 = cstdlib_strlen(v54);
                  v76 = v54;
                  SubPosForSEPX = v55(a2, a3, v56, 14, (v57 + 1), v54, &v97);
                  if ((SubPosForSEPX & 0x80000000) != 0)
                  {
                    goto LABEL_110;
                  }

                  if (v53)
                  {
                    heap_Free(*(*a1 + 8), v53);
                    __s = 0;
                  }

                  SubPosForSEPX = hlp_GetSubPosForSEPX(a1, v95, v78, v93, v83, v82, 1, &__s);
                  v53 = __s;
                  if ((SubPosForSEPX & 0x80000000) != 0 || (v58 = *v80, hlp_NLUStrSet(*v80, "POS", __s), v59 = *(a1[7] + 160), v60 = v92, v61 = cstdlib_strlen(v58), SubPosForSEPX = v59(a2, a3, v60, 14, (v61 + 1), v58, &v97), (SubPosForSEPX & 0x80000000) != 0))
                  {
LABEL_110:
                    v27 = SubPosForSEPX;
                    if (v53)
                    {
                      heap_Free(*(*a1 + 8), v53);
                    }

                    break;
                  }

                  if (v53)
                  {
                    heap_Free(*(*a1 + 8), v53);
                    __s = 0;
                  }

                  v51 = v79;
                  if (v76)
                  {
                    heap_Free(*(*a1 + 8), v76);
                  }

                  if (v58)
                  {
                    heap_Free(*(*a1 + 8), v58);
                  }
                }

                v90 = 0;
                mosynt_App(v25, 5000, &v90, v94, &v91);
                v25[v51] = 0;
                v62 = *(a1[7] + 160);
                v63 = HIWORD(v98);
                v64 = cstdlib_strlen(v25);
                UTF8Char = v62(a2, a3, v63, 3, (v64 + 1), v25, &v97);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                v65 = v25;
                v66 = v94;
                v67 = &v66[cstdlib_strlen("{SEP") + v51];
                v68 = *(a1[7] + 160);
                v69 = v92;
                v70 = cstdlib_strlen(v67 + 2);
                v71 = v68(a2, a3, v69, 3, (v70 + 1), v67 + 2, &v97);
                if ((v71 & 0x80000000) != 0 || (v71 = (*(a1[7] + 160))(a2, a3, HIWORD(v98), 8, 1, &v87, &v97), (v71 & 0x80000000) != 0))
                {
                  v27 = v71;
                  v25 = v65;
                  break;
                }

                *(v74 + v95) = 105;
                ++*a6;
                v25 = v65;
              }

LABEL_100:
              v27 = (*(a1[7] + 120))(a2, a3, HIWORD(v98), &v98 + 2);
              if ((v27 & 0x80000000) == 0)
              {
                v28 = HIWORD(v98);
                if (HIWORD(v98))
                {
                  continue;
                }
              }

              break;
            }
          }
        }
      }

LABEL_106:
      heap_Free(*(*a1 + 8), v25);
    }

    else
    {
      v27 = 2315264010;
      log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v21, v22, v23, v24, v73);
    }

    heap_Free(*(*a1 + 8), v19);
  }

  else
  {
    v27 = 2315264010;
    log_OutPublic(*(v18 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v73);
  }

  return v27;
}

uint64_t fe_phrasing_mosynt_MeltClitics(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v54 = 0;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v48 = 0;
  __s1 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  *a6 = 0;
  v12 = (*(a1[7] + 176))(a2, a3, a4, 0, &v45, &v54);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = heap_Alloc(*(*a1 + 8), 5000);
  if (v13)
  {
    v18 = v13;
    v50 = 0;
    v19 = (*(a1[7] + 104))(a2, a3, 2, a4, &v54 + 2);
    if ((v19 & 0x80000000) == 0)
    {
      v42 = a6;
      if (HIWORD(v54))
      {
        v20 = (*(a1[7] + 168))(a2, a3);
        if ((v20 & 0x80000000) == 0)
        {
          v43 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v41 = a5 - 1;
          do
          {
            if (v52 > 0xA || ((1 << v52) & 0x610) == 0)
            {
              v29 = v23;
              v30 = 0;
              v31 = HIWORD(v54);
              v27 = v21;
            }

            else
            {
              v20 = (*(a1[7] + 168))(a2, a3, HIWORD(v54), 1, 1, &v51 + 2, &v54);
              if ((v20 & 0x80000000) != 0)
              {
                break;
              }

              v20 = (*(a1[7] + 168))(a2, a3, HIWORD(v54), 2, 1, &v51, &v54);
              if ((v20 & 0x80000000) != 0)
              {
                break;
              }

              v20 = (*(a1[7] + 176))(a2, a3, HIWORD(v54), 3, &__s1, &v54);
              if ((v20 & 0x80000000) != 0)
              {
                break;
              }

              v20 = (*(a1[7] + 312))(a2, a3, HIWORD(v51), &v47);
              if ((v20 & 0x80000000) != 0)
              {
                break;
              }

              if (cstdlib_strstr(__s1, "{"))
              {
                v25 = cstdlib_strstr(__s1, "{LPC}") != 0;
                v26 = cstdlib_strstr(__s1, "{LEC}") != 0;
                v44 = cstdlib_strstr(__s1, "{RPC}") != 0;
                v27 = cstdlib_strstr(__s1, "{REC}") != 0;
                if (cstdlib_strstr(__s1, "{LPCC}") && HIWORD(v51) && *(v45 + HIWORD(v51) - 1) == 95)
                {
                  v25 = 1;
                }

                if (cstdlib_strstr(__s1, "{LECC}") && HIWORD(v51) && *(v45 + HIWORD(v51) - 1) == 95)
                {
                  v26 = 1;
                }

                if (cstdlib_strstr(__s1, "{RPCC}"))
                {
                  v28 = v44;
                  if (*(v45 + v51) == 95)
                  {
                    v28 = 1;
                  }

                  v44 = v28;
                }

                if (cstdlib_strstr(__s1, "{RECC}"))
                {
                  if (*(v45 + v51) == 95)
                  {
                    v27 = 1;
                  }

                  else
                  {
                    v27 = v27;
                  }
                }
              }

              else
              {
                v25 = 0;
                v26 = 0;
                v44 = 0;
                v27 = 0;
              }

              if (v23 && (v32 = v25 || v22, v32 | v26 | v21))
              {
                v20 = (*(a1[7] + 168))(a2, a3, v23, 1, 1, &v50, &v54);
                if ((v20 & 0x80000000) != 0)
                {
                  break;
                }

                v20 = (*(a1[7] + 176))(a2, a3, v23, 3, &v48, &v54);
                if ((v20 & 0x80000000) != 0)
                {
                  break;
                }

                if (v32 && !v43 && !v47)
                {
                  hlp_CopyWordRec(a1, a2, a3, HIWORD(v54), v23);
                }

                HIDWORD(v47) = 0;
                mosynt_App(v18, 5000, &v47 + 1, v48, &v46);
                if (!(v43 | v47))
                {
                  mosynt_App(v18, 5000, &v47 + 1, __s1, &v46);
                }

                mosynt_RemoveAllSubstrOcc(v18, "{LEC}");
                mosynt_RemoveAllSubstrOcc(v18, "{LPC}");
                mosynt_RemoveAllSubstrOcc(v18, "{RPC}");
                mosynt_RemoveAllSubstrOcc(v18, "{REC}");
                mosynt_RemoveAllSubstrOcc(v18, "{LECC}");
                mosynt_RemoveAllSubstrOcc(v18, "{LPCC}");
                mosynt_RemoveAllSubstrOcc(v18, "{RPCC}");
                mosynt_RemoveAllSubstrOcc(v18, "{RECC}");
                v33 = *(a1[7] + 160);
                v34 = cstdlib_strlen(v18);
                v20 = v33(a2, a3, v23, 3, (v34 + 1), v18, &v53);
                if ((v20 & 0x80000000) != 0)
                {
                  break;
                }

                if (v43 | v47)
                {
                  v35 = v26;
                  v29 = v23;
                  v30 = 0;
                  v22 = v44;
                }

                else
                {
                  v20 = (*(a1[7] + 160))(a2, a3, v23, 1, 1, &v50, &v53);
                  v22 = v44;
                  if ((v20 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v20 = (*(a1[7] + 160))(a2, a3, v23, 2, 1, &v51, &v53);
                  if ((v20 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v35 = v26;
                  v29 = v23;
                  *(v41 + HIWORD(v51)) = 100;
                  ++*v42;
                  v30 = HIWORD(v54);
                }
              }

              else
              {
                v35 = v26;
                v29 = v23;
                v30 = 0;
                v22 = v44;
              }

              v31 = v30;
              if (v30 != HIWORD(v54))
              {
                if ((v35 || v25) | v22 | v27)
                {
                  HIDWORD(v47) = 0;
                  mosynt_App(v18, 5000, &v47 + 1, __s1, &v46);
                  mosynt_RemoveAllSubstrOcc(v18, "{LEC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{LPC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{RPC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{REC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{LECC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{LPCC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{RPCC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{RECC}");
                  v36 = *(a1[7] + 160);
                  v37 = HIWORD(v54);
                  v38 = cstdlib_strlen(v18);
                  v20 = v36(a2, a3, v37, 3, (v38 + 1), v18, &v53);
                  if ((v20 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v31 = HIWORD(v54);
                  v29 = HIWORD(v54);
                  v22 = v44;
                }

                else
                {
                  v31 = HIWORD(v54);
                  v29 = HIWORD(v54);
                }
              }

              v43 = v47;
            }

            v19 = (*(a1[7] + 120))(a2, a3, v31, &v54 + 2);
            if ((v19 & 0x80000000) != 0)
            {
              goto LABEL_63;
            }

            if (v30)
            {
              v19 = (*(a1[7] + 192))(a2, a3, v30);
              if ((v19 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }
            }

            if (!HIWORD(v54))
            {
              goto LABEL_63;
            }

            v20 = (*(a1[7] + 168))(a2, a3);
            v21 = v27;
            v23 = v29;
          }

          while ((v20 & 0x80000000) == 0);
        }

        v19 = v20;
      }
    }

LABEL_63:
    heap_Free(*(*a1 + 8), v18);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v40);
    return 2315264010;
  }

  return v19;
}

uint64_t fe_phrasing_mosynt_CreatePhrasingOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  __s = 0;
  PhraseInfo = (*(*(a1 + 56) + 176))(a2, a3, a4, 0, &__s, &v28);
  if ((PhraseInfo & 0x80000000) != 0)
  {
    return PhraseInfo;
  }

  v11 = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v28 + 2);
  if ((v11 & 0x80000000) == 0)
  {
    v26 = 0;
    cstdlib_strcpy(__dst, "");
    v23 = 0;
    v12 = HIWORD(v28);
    if (HIWORD(v28))
    {
      v13 = 0;
      v14 = 0;
      while (1)
      {
        PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, v12, 0, 1, &v27, &v28);
        if ((PhraseInfo & 0x80000000) != 0)
        {
          return PhraseInfo;
        }

        if (v27 <= 0xA && ((1 << v27) & 0x610) != 0)
        {
          PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v28), 1, 1, &v26 + 2, &v28);
          if ((PhraseInfo & 0x80000000) != 0)
          {
            return PhraseInfo;
          }

          PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v28), 2, 1, &v26, &v28);
          if ((PhraseInfo & 0x80000000) != 0)
          {
            return PhraseInfo;
          }

          v23 = 0;
          if (v14)
          {
            PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, v14, 2, 1, &v23, &v28);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }
          }

          HIWORD(v25) = 0;
          cstdlib_strcpy(__dst, "");
          v16 = v23;
          if (v23 <= HIWORD(v26))
          {
            do
            {
              PhraseInfo = mosynt_GetPhraseInfo(*(a1 + 48), a5, v16, &v25, __s1, 10);
              if ((PhraseInfo & 0x80000000) != 0)
              {
                return PhraseInfo;
              }

              if (cstdlib_strcmp(__s1, ""))
              {
                cstdlib_strcpy(__dst, __s1);
                if ((HIWORD(v25) - 1) >= v25)
                {
                  HIWORD(v25) = v25;
                }
              }
            }

            while (HIWORD(v26) >= ++v16);
          }

          if (cstdlib_strcmp(__dst, ""))
          {
            if (v13)
            {
              PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, v13, 2, 1, &v26 + 2, &v24);
              if ((PhraseInfo & 0x80000000) != 0)
              {
                return PhraseInfo;
              }
            }

            PhraseInfo = (*(*(a1 + 56) + 88))(a2, a3, HIWORD(v28), &v24 + 2);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }

            v13 = HIWORD(v24);
            v27 = 15;
            PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v24), 0, 1, &v27, &v24);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }

            PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v24), 1, 1, &v26 + 2, &v24);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }

            v17 = *(*(a1 + 56) + 160);
            v18 = HIWORD(v24);
            v19 = cstdlib_strlen(__dst);
            PhraseInfo = v17(a2, a3, v18, 4, (v19 + 1), __dst, &v24);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }

            PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v24), 7, 1, &v25 + 2, &v24);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }
          }

          v14 = HIWORD(v28);
        }

        v11 = (*(*(a1 + 56) + 120))(a2, a3);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        v12 = HIWORD(v28);
        if (!HIWORD(v28))
        {
          if (v13)
          {
            v11 = (*(*(a1 + 56) + 160))(a2, a3, v13, 2, 1, &v26, &v24);
            if ((v11 & 0x80000000) != 0)
            {
              return v11;
            }
          }

          break;
        }
      }
    }

    if (!cstdlib_strcmp(__dst, "W") || !cstdlib_strcmp(__dst, "AF"))
    {
      v20 = cstdlib_strrchr(__s, 63);
      if (v20 && v20 != __s && *(v20 - 1) != 32)
      {
        *v20 = 46;
      }
    }
  }

  return v11;
}

uint64_t fe_phrasing_mosynt_AdjustSentenceAndMarkers(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, uint64_t a7)
{
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v14 = (*(a1[7] + 176))(a2, a3, a4, 0, &v52, &v51 + 2);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = (*(a1[7] + 176))(a2, a3, a4, 1, &v48, &v47);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v46 = a6;
  v15 = *(v48 + 12);
  v16 = 2 * a5;
  v17 = heap_Alloc(*(*a1 + 8), v16 + 2);
  v22 = *a1;
  if (!v17)
  {
    v42 = 2315264010;
    log_OutPublic(*(v22 + 32), "FE_PHRASING", 37000, 0, v18, v19, v20, v21, v45);
    return v42;
  }

  v23 = v17;
  v28 = heap_Alloc(*(v22 + 8), v16 + 2);
  v29 = *a1;
  if (v28)
  {
    v45 = a5;
    v30 = heap_Alloc(*(v29 + 8), (v46 + 1));
    if (v30)
    {
      v31 = v30;
      LOWORD(v32) = v45;
      if (v45)
      {
        v33 = 0;
        v32 = 0;
        do
        {
          v34 = *(a7 + v33);
          if (v34 == 105)
          {
            v30[v32] = 32;
            *(v23 + 2 * v33) = v32 + 1;
            *(v28 + 2 * v33) = v32;
            v30[(v32 + 1)] = *(v52 + v33);
            v32 += 2;
          }

          else
          {
            *(v23 + 2 * v33) = v32;
            *(v28 + 2 * v33) = v32;
            if (v34 != 100)
            {
              v30[v32++] = *(v52 + v33);
            }
          }

          ++v33;
        }

        while (v45 != v33);
      }

      v30[v32] = 0;
      *(v23 + 2 * v45) = v32;
      *(v28 + 2 * v45) = v32;
      v35 = *(a1[7] + 160);
      v36 = cstdlib_strlen(v30);
      v37 = v35(a2, a3, a4, 0, (v36 + 1), v31, &v51);
      if ((v37 & 0x80000000) != 0)
      {
LABEL_36:
        v42 = v37;
      }

      else
      {
        v38 = v47;
        v39 = v48;
        if (v47)
        {
          v40 = (v48 + 12);
          do
          {
            *v40 = v15 + *(v23 + 2 * (*v40 - v15));
            v40 += 8;
            --v38;
          }

          while (v38);
        }

        *(v39 + 16) = v46;
        v41 = (*(a1[7] + 104))(a2, a3, 2, a4, &v50 + 2);
LABEL_19:
        v42 = v41;
        if ((v41 & 0x80000000) == 0)
        {
          while (HIWORD(v50))
          {
            v37 = (*(a1[7] + 168))(a2, a3);
            if ((v37 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            v37 = (*(a1[7] + 168))(a2, a3, HIWORD(v50), 2, 1, &v49, &v51 + 2);
            if ((v37 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            LOWORD(v50) = *(v23 + 2 * v50);
            v37 = (*(a1[7] + 160))(a2, a3, HIWORD(v50), 1, 1, &v50, &v51);
            if ((v37 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            v49 = v49 <= v45 ? *(v28 + 2 * v49) : v45;
            v37 = (*(a1[7] + 160))(a2, a3, HIWORD(v50), 2, 1, &v49, &v51);
            if ((v37 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            if (v49 == v50)
            {
              v43 = HIWORD(v50);
            }

            else
            {
              v43 = 0;
            }

            v42 = (*(a1[7] + 120))(a2, a3);
            if ((v42 & 0x80000000) != 0)
            {
              goto LABEL_39;
            }

            if (v43)
            {
              v41 = (*(a1[7] + 192))(a2, a3, v43);
              goto LABEL_19;
            }
          }
        }
      }

      goto LABEL_39;
    }

    v29 = *a1;
  }

  v42 = 2315264010;
  log_OutPublic(*(v29 + 32), "FE_PHRASING", 37000, 0, v24, v25, v26, v27, v45);
  v31 = 0;
LABEL_39:
  heap_Free(*(*a1 + 8), v23);
  if (v28)
  {
    heap_Free(*(*a1 + 8), v28);
  }

  if (v31)
  {
    heap_Free(*(*a1 + 8), v31);
  }

  return v42;
}

uint64_t fe_phrasing_Process_NN_Phrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, _DWORD *a7)
{
  *a5 = 1;
  v12 = a1 + 176;
  if (!*(a1 + 176))
  {
    *(a1 + 248) = 2;
    *(a1 + 192) = 0x10000;
  }

  SentenceData = getSentenceData(*a1, *(a1 + 48), *(a1 + 56), a3, a4, a1 + 168, *(a1 + 120), 1);
  if ((SentenceData & 0x80000000) == 0 && *(a1 + 848))
  {
    SentenceData = nn_phrasing_ProcessSent(*a1, *(a1 + 56), a3, a4, a1 + 840, v12, a1 + 1304, a6, a7);
  }

  freeSentenceData(a1 + 168);
  freeProsodicStructure((a1 + 168));
  return SentenceData;
}

uint64_t fe_phrasing_Process_CRFPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v24 = 0;
  v25 = 0;
  v27 = 0;
  *a5 = 1;
  if (!*(a1 + 176))
  {
    *(a1 + 248) = 2;
    *(a1 + 192) = 0x10000;
  }

  __s = 0;
  *(a1 + 176) = 0;
  SentenceData = getSentenceData(*a1, *(a1 + 48), *(a1 + 56), a3, a4, a1 + 168, *(a1 + 120), 0);
  if ((SentenceData & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  v14 = doesCustermizedFE(*a1, *(a1 + 56), a3, a4, a1 + 168, &v27);
  if ((v14 & 0x80000000) != 0 || !*(a1 + 848))
  {
    goto LABEL_21;
  }

  if (!v27 && (SentenceData = crfWeakPhrasing(*(a1 + 104), *(a1 + 88), *(a1 + 96), *a1, 0, (a1 + 840), 0, a1 + 920), (SentenceData & 0x80000000) != 0) || (SentenceData = puncPhrasing(*a1, a1 + 840, a1 + 920, v9, v10, v11, v12, v13), (SentenceData & 0x80000000) != 0) || (*(a1 + 176) = *a1, SentenceData = updateLingdbCrfPhrasing(*(a1 + 56), a3, a4, a1 + 168), (SentenceData & 0x80000000) != 0))
  {
LABEL_20:
    v14 = SentenceData;
    goto LABEL_21;
  }

  v14 = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v25);
  if ((v14 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a3, a4, v25, 0, &v24 + 2) & 0x80000000) == 0 && HIWORD(v24) == 1)
  {
    v14 = (*(*(a1 + 56) + 176))(a3, a4, v25, 0, &__s, &v24);
    if ((v14 & 0x80000000) == 0 && v24 >= 2u)
    {
      v15 = cstdlib_strlen(__s);
      v16 = heap_Alloc(*(*a1 + 8), v15 + 1);
      if (v16)
      {
        v21 = v16;
        cstdlib_memset(v16, 32, v15);
        *(v21 + v15) = 0;
        v14 = fe_phrasing_mosynt_SplitWords(a1, a3, a4, v25, v21, &v25 + 1);
        if ((v14 & 0x80000000) == 0 && HIWORD(v25))
        {
          v14 = fe_phrasing_mosynt_AdjustSentenceAndMarkers(a1, a3, a4, v25, v15, (HIWORD(v25) + v15), v21);
        }

        heap_Free(*(*a1 + 8), v21);
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v17, v18, v19, v20, v23);
        v14 = 2315264010;
      }
    }
  }

LABEL_21:
  freeSentenceData(a1 + 168);
  return v14;
}

uint64_t fe_phrasing_Process_NNPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = a1;
  v109[0] = 0;
  v108 = 0;
  v107 = 0;
  *a6 = 1;
  v7 = *(*(a1 + 1528) + 1072);
  if (*(*(a1 + 1528) + 1072))
  {
    v8 = 0;
    v101 = *(*(a1 + 1528) + 1072);
    do
    {
      v9 = *(v6[191] + 1064) + 184 * v8;
      v10 = *(v9 + 56);
      v11 = cstdlib_strlen(v10);
      if (!v11)
      {
        break;
      }

      {
        v103 = &v10[v11];
        {
          v12 = 0;
          while (1)
          {
            v13 = Utf8_LengthInBytes(&v10[v12], 1);
            if (!utf8_IsChineseLetter(&v10[v12]))
            {
              {
                break;
              }
            }

LABEL_8:
            v12 += v13;
            if (v12 >= v11)
            {
              v17 = 0;
              LOBYTE(v18) = *(v103 - 1);
              goto LABEL_16;
            }
          }

          v14 = 0;
          v15 = 0;
          while (1)
          {
            v18 = v10[v12];
            if (v18 == asc_26EDC5527[v14])
            {
              break;
            }

            v14 = ++v15;
            {
              goto LABEL_8;
            }
          }

          v17 = 1;
LABEL_16:
          *(v9 + 104) = v18;
          *(v9 + 108) = v17;
          *(v9 + 100) = 1;
          v7 = v101;
          v6 = a1;
        }
      }

      if (v11 == 1)
      {
        if (v8)
        {
          if (v16 && *(*(v6[191] + 1064) + 184 * (v8 - 1) + 108))
          {
            *(v9 + 108) = 1;
          }
        }
      }

      ++v8;
    }

    while (v8 != v7);
  }

  v19 = a5;
  if (!*(a5 + 1104))
  {
    *(a5 + 1176) = 2;
    *(a5 + 1120) = 0x10000;
  }

  *(a5 + 1104) = 0;
  NNSentenceData = getNNSentenceData(*v6, v6[7], a3, a4, v6[191]);
  if ((NNSentenceData & 0x80000000) == 0)
  {
    if (*(a5 + 1088))
    {
      NNSentenceData = doesNNCustermizedFE(*v6, v6[191], v109);
      if ((NNSentenceData & 0x80000000) == 0)
      {
        if (*(a5 + 1072))
        {
          v106 = 0;
          if (v6[206])
          {
            v21 = heap_Calloc(*(*v6 + 8), *(v6[191] + 1072), 8);
            v26 = *v6;
            if (!v21)
            {
              NNSentenceData = 2315264010;
              log_OutPublic(*(v26 + 32), "FE_PHRASING", 37000, 0, v22, v23, v24, v25, v97);
              goto LABEL_111;
            }

            v27 = v21;
            v32 = heap_Calloc(*(v26 + 8), *(v6[191] + 1072), 8);
            v33 = *v6;
            if (!v32)
            {
              v34 = 0;
              goto LABEL_88;
            }

            v34 = heap_Calloc(*(v33 + 8), *(v6[191] + 1072), 8);
            if (!v34)
            {
LABEL_87:
              v33 = *v6;
              goto LABEL_88;
            }
          }

          else
          {
            v27 = 0;
            v32 = 0;
            v34 = 0;
          }

          v35 = v6[191];
          if (*(v35 + 1072))
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = *(v35 + 1064);
            do
            {
              v40 = *(v39 + v36 + 152);
              if (v40)
              {
                v41 = cstdlib_strcmp(v40, "B");
                v42 = *(v35 + 1064) + v36;
                if (v41)
                {
                  v43 = cstdlib_strcmp(*(v42 + 152), "E");
                  v44 = *(v35 + 1064) + v36;
                  if (v43)
                  {
                    v45 = cstdlib_strcmp(*(v44 + 152), "S");
                    v46 = cstdlib_strlen(*(*(v35 + 1064) + v36 + 56));
                    if (v45)
                    {
                      v47 = v38;
                    }

                    else
                    {
                      v47 = 0;
                    }

                    v38 = v47 + v46;
                  }

                  else
                  {
                    v38 += cstdlib_strlen(*(v44 + 56));
                  }
                }

                else
                {
                  v38 = cstdlib_strlen(*(v42 + 56));
                }
              }

              v39 = *(v35 + 1064);
              *(v39 + v36 + 176) = v38;
              ++v37;
              v36 += 184;
            }

            while (v37 < *(v35 + 1072));
          }

          v6 = a1;
          v48 = a5;
          if (!v109[0] && *(a5 + 1072))
          {
            v73 = 0;
            v74 = 76;
            do
            {
              v75 = *(v48 + 1064);
              v76 = *(v75 + v74 - 4);
              if (v76 == 1)
              {
                v77 = 3;
              }

              else
              {
                if (v76)
                {
                  goto LABEL_72;
                }

                v77 = 1;
              }

              *(v75 + v74) = v77;
LABEL_72:
              *(v75 + v74 - 28) = 0;
              hlp_NLUStrFind(*(v75 + v74 - 36), "POS", (v75 + v74 - 28), &v106);
              if (v27)
              {
                v78 = heap_Alloc(*(*a1 + 8), v106 + 1);
                *(v27 + 8 * v73) = v78;
                if (!v78)
                {
                  v19 = a5;
                  goto LABEL_87;
                }

                cstdlib_strncpy(v78, *(*(a5 + 1064) + v74 - 28), v106);
                *(*(v27 + 8 * v73) + v106) = 0;
              }

              if (v32)
              {
                v79 = heap_Alloc(*(*a1 + 8), v106 + 1);
                *(v32 + 8 * v73) = v79;
                if (!v79)
                {
                  goto LABEL_112;
                }

                cstdlib_strncpy(v79, *(*(a5 + 1064) + v74 - 28), v106);
                *(*(v32 + 8 * v73) + v106) = 0;
              }

              v48 = a5;
              if (v34)
              {
                v84 = *(*a1 + 8);
                v85 = cstdlib_strlen(*(*(a5 + 1064) + v74 - 20));
                v86 = heap_Alloc(v84, v85 + 1);
                *(v34 + 8 * v73) = v86;
                if (!v86)
                {
LABEL_112:
                  NNSentenceData = 2315264010;
                  log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v80, v81, v82, v83, v97);
                  v70 = 0;
                  v19 = a5;
                  goto LABEL_63;
                }

                cstdlib_strcpy(v86, *(*(a5 + 1064) + v74 - 20));
              }

              ++v73;
              v74 += 184;
            }

            while (v73 < *(a5 + 1072));
          }

          v19 = v48;
          if (!v32 || !v27 || !v34)
          {
LABEL_55:
            v56 = *a1;
            v57 = *(a1 + 1664);
            v58 = *(a1 + 1672);
            v59 = *(a1 + 1544);
            v60 = *(a1 + 1552);
            v61 = *(a1 + 1608);
            v104[2] = *(a1 + 1592);
            v104[3] = v61;
            v104[4] = *(a1 + 1624);
            v105 = *(a1 + 1640);
            v62 = *(a1 + 1576);
            v104[0] = *(a1 + 1560);
            v104[1] = v62;
            updated = nnpuncPhrasing(v56, v48, v59, v60, v104, v57, v58);
            if ((updated & 0x80000000) != 0 || (updated = updateLingdbNNPhrasing(*a1, *(a1 + 56), a3, a4, *(a1 + 1528), *(a1 + 1656), *(a1 + 1664), *(a1 + 1524)), (updated & 0x80000000) != 0))
            {
              NNSentenceData = updated;
              v70 = 0;
            }

            else
            {
              v64 = cstdlib_strlen(*(*(a1 + 1528) + 1088));
              v65 = heap_Alloc(*(*a1 + 8), v64 + 1);
              v70 = v65;
              if (v65)
              {
                cstdlib_memset(v65, 32, v64);
                *(v70 + v64) = 0;
                NNSentenceData = fe_phrasing_mosynt_SplitWords(a1, a3, a4, *(v48 + 1096), v70, &v108);
                if ((NNSentenceData & 0x80000000) != 0 || !v108)
                {
                  v6 = a1;
                }

                else
                {
                  v71 = v64;
                  v72 = (v108 + v64);
                  v6 = a1;
                  NNSentenceData = fe_phrasing_mosynt_AdjustSentenceAndMarkers(a1, a3, a4, *(v48 + 1096), v71, v72, v70);
                }
              }

              else
              {
                NNSentenceData = 2315264010;
                log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v66, v67, v68, v69, v97);
                v6 = a1;
              }
            }

LABEL_63:
            if (!v27)
            {
              goto LABEL_95;
            }

            goto LABEL_89;
          }

          v49 = heap_Calloc(*(*a1 + 8), *(*(a1 + 1528) + 1072), 24);
          v107 = v49;
          v33 = *a1;
          if (v49)
          {
            if ((fe_phrasing_genLW(v33, *(a1 + 1528), v32, v34, v27, &v107) & 0x80000000) == 0)
            {
              fe_phrasing_ProcessIGTree(a1, v49, v50, v51, v52, v53, v54, v55, v97);
            }

            freeIwInfo(a1, v49);
            goto LABEL_55;
          }

LABEL_88:
          NNSentenceData = 2315264010;
          log_OutPublic(*(v33 + 32), "FE_PHRASING", 37000, 0, v28, v29, v30, v31, v97);
          v70 = 0;
LABEL_89:
          v87 = *(v19 + 1072);
          if (*(v19 + 1072))
          {
            v88 = 0;
            do
            {
              v89 = *(v27 + 8 * v88);
              if (v89)
              {
                heap_Free(*(*v6 + 8), v89);
                v87 = *(v19 + 1072);
              }

              ++v88;
            }

            while (v88 < v87);
          }

          heap_Free(*(*v6 + 8), v27);
LABEL_95:
          if (v32)
          {
            v90 = *(v19 + 1072);
            if (*(v19 + 1072))
            {
              v91 = 0;
              do
              {
                v92 = *(v32 + 8 * v91);
                if (v92)
                {
                  heap_Free(*(*v6 + 8), v92);
                  v90 = *(v19 + 1072);
                }

                ++v91;
              }

              while (v91 < v90);
            }

            heap_Free(*(*v6 + 8), v32);
          }

          if (v34)
          {
            v93 = *(v19 + 1072);
            if (*(v19 + 1072))
            {
              v94 = 0;
              do
              {
                v95 = *(v34 + 8 * v94);
                if (v95)
                {
                  heap_Free(*(*v6 + 8), v95);
                  v93 = *(v19 + 1072);
                }

                ++v94;
              }

              while (v94 < v93);
            }

            heap_Free(*(*v6 + 8), v34);
          }

          if (v70)
          {
            heap_Free(*(*v6 + 8), v70);
          }
        }
      }
    }
  }

LABEL_111:
  freeSentenceDataNN(*v6, v6[191]);
  return NNSentenceData;
}

uint64_t fe_phrasing_genLW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v37 = *(a2 + 1072);
  if (!*(a2 + 1072))
  {
    return 0;
  }

  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = 0;
  v38 = *a6;
  while (1)
  {
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v12 = *(a5 + 8 * v11);
    if (!v12)
    {
      return 2315264007;
    }

    v13 = v11;
    if (!*(a4 + 8 * v11) || !*(v8 + 8 * v11))
    {
      return 2315264007;
    }

    v14 = 0;
    if (extstdlib_strtok_r(v12, "-", &v41))
    {
      do
      {
        ++v14;
      }

      while (extstdlib_strtok_r(0, "-", &v41));
    }

    v15 = heap_Calloc(*(v10 + 8), 1, 8 * v14);
    v20 = (v38 + 24 * v13);
    *(v20 + 2) = v15;
    if (!v15)
    {
      break;
    }

    v21 = cstdlib_strlen(*(v9 + 1088));
    *(v20 + 1) = v21 + 1;
    v22 = heap_Calloc(*(v10 + 8), 1, (v21 + 1) * v14);
    *(v20 + 1) = v22;
    if (!v22)
    {
      break;
    }

    v23 = *(v8 + 8 * v13);
    v24 = a4;
    v25 = *(a4 + 8 * v13);
    *v20 = v14;
    v26 = extstdlib_strtok_r(v23, "-", &v40);
    v27 = extstdlib_strtok_r(v25, "-", &v39);
    v28 = 0;
    v29 = v26 != 0;
    v30 = v27 != 0;
    if (v26)
    {
      v31 = v27;
      if (v27)
      {
        v28 = 0;
        while (v28 <= v14)
        {
          cstdlib_strcpy((*(v20 + 2) + 8 * v28), v26);
          cstdlib_strcpy((*(v20 + 1) + *(v20 + 1) * v28), v31);
          v26 = extstdlib_strtok_r(0, "-", &v40);
          v32 = extstdlib_strtok_r(0, "-", &v39);
          ++v28;
          v29 = v26 != 0;
          v30 = v32 != 0;
          if (v26)
          {
            v31 = v32;
            if (v32)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        return 2315264015;
      }
    }

LABEL_16:
    if (v29 || v30)
    {
      return 2315264007;
    }

    if (*v20 != v28)
    {
      return 2315264015;
    }

    v11 = v13 + 1;
    a4 = v24;
    v10 = a1;
    v8 = a3;
    v9 = a2;
    if (v13 + 1 >= v37)
    {
      return 0;
    }
  }

  log_OutPublic(*(v10 + 32), "FE_PHRASING", 37000, 0, v16, v17, v18, v19, a2);
  return 2315264010;
}

char **fe_phrasing_ProcessIGTree(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a1;
  v10 = *(a1[191] + 1072);
  __s1 = 0;
  v11 = a1[206];
  if (v11)
  {
    v13 = a1;
    result = heap_Alloc(*(v9 + 8), 8 * *(v11 + 1296) - 8);
    v96 = result;
    if (!result)
    {
      return result;
    }

    if (*(v11 + 1296) == 1)
    {
LABEL_7:
      v95 = a2;
      if (!v10)
      {
LABEL_222:
        if (*(v11 + 1296) != 1)
        {
          v87 = (*(v11 + 1296) - 1);
          v88 = v96;
          do
          {
            v89 = *v88++;
            heap_Free(*(v9 + 8), v89);
            --v87;
          }

          while (v87);
        }

        return heap_Free(*(v9 + 8), v96);
      }

      v22 = 0;
      v92 = v10;
      v93 = v13;
      v94 = v11;
      while (1)
      {
        v23 = *(v11 + 1312);
        v24 = *(v11 + 1296);
        v25 = v13[191];
        v98 = 0;
        v26 = heap_Calloc(*(v9 + 8), 1, 2048);
        if (!v26)
        {
          break;
        }

        v27 = v26;
        if (v24 < 2)
        {
          v30 = 0;
        }

        else
        {
          v28 = 0;
          v29 = (v24 - 1);
          while (cstdlib_strcmp(*(v23 + 8 * v28), "pw"))
          {
            if (v29 == ++v28)
            {
              v30 = 0;
              goto LABEL_17;
            }
          }

          v98 = v28;
          v31 = fe_phrasing_feat_word(v25, v22, 0);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 0, v96, v31);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_17:
          v32 = 0;
          if (v29 <= 1)
          {
            v33 = 1;
          }

          else
          {
            v33 = (v24 - 1);
          }

          while (cstdlib_strcmp(*(v23 + 8 * v32), "pwlen"))
          {
            if (v33 == ++v32)
            {
              goto LABEL_24;
            }
          }

          v98 = v32;
          *v27 = 0;
          v34 = cstdlib_strlen(v27);
          fe_phrasing_feat_wordlen(v25, v22, 0, &v27[v34]);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 1, v96, v27);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_24:
          v35 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v35), "lpwlen"))
          {
            if (v33 == ++v35)
            {
              goto LABEL_29;
            }
          }

          v98 = v35;
          *v27 = 0;
          v36 = cstdlib_strlen(v27);
          fe_phrasing_feat_wordlen(v25, v22, -1, &v27[v36]);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 2, v96, v27);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_29:
          v37 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v37), "llpwlen"))
          {
            if (v33 == ++v37)
            {
              goto LABEL_34;
            }
          }

          v98 = v37;
          *v27 = 0;
          v38 = cstdlib_strlen(v27);
          fe_phrasing_feat_wordlen(v25, v22, -2, &v27[v38]);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 3, v96, v27);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_34:
          v39 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v39), "rpwlen"))
          {
            if (v33 == ++v39)
            {
              goto LABEL_39;
            }
          }

          v98 = v39;
          *v27 = 0;
          v40 = cstdlib_strlen(v27);
          fe_phrasing_feat_wordlen(v25, v22, 1, &v27[v40]);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 4, v96, v27);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_39:
          v41 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v41), "rrpwlen"))
          {
            if (v33 == ++v41)
            {
              goto LABEL_44;
            }
          }

          v98 = v41;
          *v27 = 0;
          v42 = cstdlib_strlen(v27);
          fe_phrasing_feat_wordlen(v25, v22, 2, &v27[v42]);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 5, v96, v27);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_44:
          v43 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v43), "pos"))
          {
            if (v33 == ++v43)
            {
              goto LABEL_51;
            }
          }

          v98 = v43;
          v44 = "=";
          if (v22 < *(v25 + 1072))
          {
            v44 = *(*(v25 + 1064) + 184 * v22 + 48);
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 6, v96, v44);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_51:
          v45 = 0;
          v46 = 8 * v33;
          while (cstdlib_strcmp(*(v23 + v45), "lpos"))
          {
            v45 += 8;
            if (v46 == v45)
            {
              goto LABEL_60;
            }
          }

          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v47 = *(*(v25 + 1064) + 184 * (v22 - 1) + 48);
          }

          else
          {
            v47 = "=";
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 7, v96, v47);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_60:
          v48 = 0;
          while (cstdlib_strcmp(*(v23 + v48), "rpos"))
          {
            v48 += 8;
            if (v46 == v48)
            {
              goto LABEL_67;
            }
          }

          v49 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            v49 = *(*(v25 + 1064) + 184 * (v22 + 1) + 48);
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 8, v96, v49);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_67:
          v50 = 0;
          while (cstdlib_strcmp(*(v23 + v50), "bpos"))
          {
            v50 += 8;
            if (v46 == v50)
            {
              goto LABEL_74;
            }
          }

          v51 = "=";
          if (v22 < *(v25 + 1072))
          {
            v51 = *(v95 + 24 * v22 + 16);
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 9, v96, v51);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_74:
          v52 = 0;
          while (cstdlib_strcmp(*(v23 + v52), "blpos"))
          {
            v52 += 8;
            if (v46 == v52)
            {
              goto LABEL_83;
            }
          }

          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v53 = *(v95 + 24 * (v22 - 1) + 16);
          }

          else
          {
            v53 = "=";
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 10, v96, v53);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_83:
          v54 = 0;
          while (cstdlib_strcmp(*(v23 + v54), "brpos"))
          {
            v54 += 8;
            if (v46 == v54)
            {
              goto LABEL_90;
            }
          }

          v55 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            v55 = *(v95 + 24 * (v22 + 1) + 16);
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 11, v96, v55);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_90:
          v56 = 0;
          while (cstdlib_strcmp(*(v23 + v56), "epos"))
          {
            v56 += 8;
            if (v46 == v56)
            {
              goto LABEL_97;
            }
          }

          v57 = "=";
          if (v22 < *(v25 + 1072))
          {
            v57 = (*(v95 + 24 * v22 + 16) + 8 * *(v95 + 24 * v22) - 8);
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 12, v96, v57);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_97:
          v58 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v58), "elpos"))
          {
            if (v33 == ++v58)
            {
              goto LABEL_106;
            }
          }

          v98 = v58;
          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v59 = (*(v95 + 24 * (v22 - 1) + 16) + 8 * *(v95 + 24 * (v22 - 1)) - 8);
          }

          else
          {
            v59 = "=";
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 13, v96, v59);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_106:
          v60 = 0;
          while (cstdlib_strcmp(*(v23 + v60), "erpos"))
          {
            v60 += 8;
            if (v46 == v60)
            {
              goto LABEL_113;
            }
          }

          v61 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            v61 = (*(v95 + 24 * (v22 + 1) + 16) + 8 * *(v95 + 24 * (v22 + 1)) - 8);
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 14, v96, v61);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_113:
          v62 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v62), "bchar"))
          {
            if (v33 == ++v62)
            {
              goto LABEL_118;
            }
          }

          v98 = v62;
          fe_phrasing_feat_character(v25, v22, 0, 0, v27);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 15, v96, v27);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_118:
          v63 = 0;
          while (cstdlib_strcmp(*(v23 + v63), "echar"))
          {
            v63 += 8;
            if (v46 == v63)
            {
              goto LABEL_123;
            }
          }

          fe_phrasing_feat_character(v25, v22, -1, 0, v27);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 16, v96, v27);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_123:
          v64 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v64), "elchar"))
          {
            if (v33 == ++v64)
            {
              goto LABEL_128;
            }
          }

          v98 = v64;
          fe_phrasing_feat_character(v25, v22, -1, -1, v27);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 17, v96, v27);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_128:
          v65 = 0;
          while (cstdlib_strcmp(*(v23 + v65), "erchar"))
          {
            v65 += 8;
            if (v46 == v65)
            {
              goto LABEL_133;
            }
          }

          fe_phrasing_feat_character(v25, v22, -1, 1, v27);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 18, v96, v27);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_133:
          v66 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v66), "blwword"))
          {
            if (v33 == ++v66)
            {
              goto LABEL_140;
            }
          }

          v98 = v66;
          v67 = "=";
          if (v22 < *(v25 + 1072))
          {
            v67 = *(v95 + 24 * v22 + 8);
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 19, v96, v67);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_140:
          v68 = 0;
          while (cstdlib_strcmp(*(v23 + v68), "elwword"))
          {
            v68 += 8;
            if (v46 == v68)
            {
              goto LABEL_147;
            }
          }

          v69 = "=";
          if (v22 < *(v25 + 1072))
          {
            v69 = (*(v95 + 24 * v22 + 8) + (*(v95 + 24 * v22) - 1) * *(v95 + 24 * v22 + 4));
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 20, v96, v69);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_147:
          v70 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v70), "lpw"))
          {
            if (v33 == ++v70)
            {
              goto LABEL_152;
            }
          }

          v98 = v70;
          v71 = fe_phrasing_feat_word(v25, v22, -1);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 21, v96, v71);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_152:
          v72 = 0;
          while (cstdlib_strcmp(*(v23 + v72), "rpw"))
          {
            v72 += 8;
            if (v46 == v72)
            {
              goto LABEL_157;
            }
          }

          v73 = fe_phrasing_feat_word(v25, v22, 1);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 22, v96, v73);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_157:
          v74 = 0;
          while (cstdlib_strcmp(*(v23 + v74), "blchar"))
          {
            v74 += 8;
            if (v46 == v74)
            {
              goto LABEL_162;
            }
          }

          fe_phrasing_feat_character(v25, v22, 0, -1, v27);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 23, v96, v27);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_162:
          v75 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v75), "brchar"))
          {
            if (v33 == ++v75)
            {
              goto LABEL_167;
            }
          }

          v98 = v75;
          fe_phrasing_feat_character(v25, v22, 0, 1, v27);
          v30 = fe_phrasing_setFeature(v9, v23, v24, 24, v96, v27);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_167:
          v76 = 0;
          while (cstdlib_strcmp(*(v23 + v76), "blpwword"))
          {
            v76 += 8;
            if (v46 == v76)
            {
              goto LABEL_176;
            }
          }

          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v77 = *(v95 + 24 * (v22 - 1) + 8);
          }

          else
          {
            v77 = "=";
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 25, v96, v77);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_176:
          v78 = 0;
          while (cstdlib_strcmp(*(v23 + v78), "brpwword"))
          {
            v78 += 8;
            if (v46 == v78)
            {
              goto LABEL_183;
            }
          }

          v79 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            v79 = *(v95 + 24 * (v22 + 1) + 8);
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 26, v96, v79);
          if (v30 < 0)
          {
            goto LABEL_230;
          }

LABEL_183:
          v80 = 0;
          while (cstdlib_strcmp(*(v23 + 8 * v80), "elpwword"))
          {
            if (v33 == ++v80)
            {
              goto LABEL_192;
            }
          }

          v98 = v80;
          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v81 = (*(v95 + 24 * (v22 - 1) + 8) + (*(v95 + 24 * (v22 - 1)) - 1) * *(v95 + 24 * (v22 - 1) + 4));
          }

          else
          {
            v81 = "=";
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 27, v96, v81);
          if (v30 < 0)
          {
LABEL_230:
            heap_Free(*(v9 + 8), v27);
            return heap_Free(*(v9 + 8), v96);
          }
        }

LABEL_192:
        if (fe_phrasing_isFeatureRequired(v23, v24, 28, &v98))
        {
          v82 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            v82 = (*(v95 + 24 * (v22 + 1) + 8) + (*(v95 + 24 * (v22 + 1)) - 1) * *(v95 + 24 * (v22 + 1) + 4));
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 28, v96, v82);
          if (v30 < 0)
          {
            goto LABEL_230;
          }
        }

        if (fe_phrasing_isFeatureRequired(v23, v24, 29, &v98))
        {
          v83 = "=";
          if (v22 < *(v25 + 1072))
          {
            if (**(*(v25 + 1064) + 184 * v22 + 56) - 48 >= 0xA)
            {
              v83 = "0";
            }

            else
            {
              v83 = "1";
            }
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 29, v96, v83);
          if (v30 < 0)
          {
            goto LABEL_230;
          }
        }

        if (fe_phrasing_isFeatureRequired(v23, v24, 30, &v98))
        {
          if (v22 && v22 - 1 < *(v25 + 1072))
          {
            v84 = **(*(v25 + 1064) + 184 * (v22 - 1) + 56) - 48 >= 0xA ? "0" : "1";
          }

          else
          {
            v84 = "=";
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 30, v96, v84);
          if (v30 < 0)
          {
            goto LABEL_230;
          }
        }

        if (fe_phrasing_isFeatureRequired(v23, v24, 31, &v98))
        {
          v85 = "=";
          if (v22 + 1 < *(v25 + 1072))
          {
            if (**(*(v25 + 1064) + 184 * (v22 + 1) + 56) - 48 >= 0xA)
            {
              v85 = "0";
            }

            else
            {
              v85 = "1";
            }
          }

          v30 = fe_phrasing_setFeature(v9, v23, v24, 31, v96, v85);
        }

        heap_Free(*(v9 + 8), v27);
        v11 = v94;
        if (v30 < 0 || (igtree_Process(v94, v96, &__s1) & 0x80000000) != 0)
        {
          return heap_Free(*(v9 + 8), v96);
        }

        v13 = v93;
        if (cstdlib_strcmp(__s1, "NOMATCH"))
        {
          v86 = cstdlib_atoi(__s1);
          if (v86 <= 3)
          {
            *(*(v93[191] + 1064) + 184 * v22 + 76) = v86;
          }
        }

        if (++v22 == v92)
        {
          goto LABEL_222;
        }
      }
    }

    else
    {
      v15 = (*(v11 + 1296) - 1);
      v16 = result;
      while (1)
      {
        v17 = heap_Calloc(*(v9 + 8), 1, 65);
        *v16 = v17;
        if (!v17)
        {
          break;
        }

        cstdlib_strcpy(v17, "=");
        ++v16;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }
    }

    log_OutPublic(*(v9 + 32), "FE_PHRASING", 37000, 0, v18, v19, v20, v21, v91);
    return heap_Free(*(v9 + 8), v96);
  }

  v90 = *(v9 + 32);

  return log_OutText(v90, "FE_PHRASING", 0, 0, "IGTree model for phrasing does not exist. Skip processing IGTree.", a6, a7, a8, a9);
}

void *freeIwInfo(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(result[191] + 1072))
    {
      v4 = 0;
      v5 = (a2 + 16);
      do
      {
        heap_Free(*(*v3 + 8), *(v5 - 1));
        *(v5 - 1) = 0;
        heap_Free(*(*v3 + 8), *v5);
        *v5 = 0;
        v5 += 3;
        ++v4;
      }

      while (v4 < *(v3[191] + 1072));
    }

    v6 = *(*v3 + 8);

    return heap_Free(v6, a2);
  }

  return result;
}

uint64_t fe_phrasing_Process(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  *&__c[1] = 0;
  v10 = (a1[7][13])(a3, a4, 1, 0, &__c[3]);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (((a1[7][23])(a3, a4, *&__c[3], 0, &__c[1]) & 0x80000000) != 0 || *&__c[1] != 1)
  {
    inserted = 0;
    *a5 = 1;
    return inserted;
  }

  if (*(a1 + 364))
  {
    v11 = a1[191];
    *(v11 + 548) = *&__c[3];
    *(v11 + 549) = 1;
  }

  v12 = a1[12];
  v13 = a1[13];
  v14 = a1[11];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v10 = (v13[12])(v14, v12, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v15 = 1;
  if (*&__c[1] == 1 && *&__c[3])
  {
    v16 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v16)
    {
      *v16 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      v15 = 0;
    }
  }

  v20 = paramc_ParamGetInt((*a1)[5], "nnpausingoverride", &v42) >= 0 && v42 == 1;
  v21 = !v20;
  if (v20)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN pausing Override enabled - NN pausing will skipped even if data loaded", v17, v18, v19, 0);
  }

  if ((paramc_ParamGetInt((*a1)[5], "nnpausingminwordspan", &v42) & 0x80000000) != 0 || (v25 = v42, v42 > 0x270E))
  {
    v25 = 0xFFFFFFFFLL;
    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN pausing min word span set to %d", v22, v23, v24, v42);
    if (!v21)
    {
      goto LABEL_37;
    }
  }

  if (*(a1 + 324) == 1)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN Phrasing Enabled", v22, v23, v24, 0);
    v10 = hlp_MarkSildursExternal(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_Markup(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = fe_phrasing_Process_NN_Phrasing(a1, a2, a3, a4, a5, v25, &v41);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_SetExternalSildurs(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }
  }

LABEL_37:
  if (!*(a1 + 40))
  {
LABEL_56:
    if (*(a1 + 364))
    {
      v35 = pw_Process(a3, a4, a1[7], *a1, a1[191], a1[181], a1[183], a1 + 186, *(a1 + 365), &v38, a1[192], *(a1 + 381), *(a1 + 380));
      if ((v35 & 0x80000000) != 0)
      {
        inserted = v35;
        freeSentenceDataNN(*a1, a1[191]);
        return inserted;
      }

      v10 = hlp_MarkSildursExternal(a1, a3, a4);
      if ((v10 & 0x80000000) == 0)
      {
        setbndfromTN(*a1, v38, a1[191]);
        v10 = fe_phrasing_Process_NNPhrasing(a1, a2, a3, a4, a1[191], a5);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
            if ((v10 & 0x80000000) == 0)
            {
              inserted = hlp_InsertWordPhraseBoundaries(a1, a3, a4, a1[206] != 0, 0, 0);
              if ((inserted & 0x80000000) != 0)
              {
                return inserted;
              }

              if (*(a1 + 320) == 1)
              {
                inserted = hlp_setNLUPOSMappings(a1, a3, a4);
                if ((inserted & 0x80000000) != 0)
                {
                  return inserted;
                }
              }

              if (!*(a1 + 420))
              {
                return inserted;
              }

              return fe_stress_process(*a1, a3, a4, a1[7], a1[212], a1[183], a1[213], a1[214], a1[211], *(a1 + 860), *(a1 + 421));
            }
          }
        }
      }
    }

    else if (*(a1 + 28))
    {
      log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "FEPHRRES: CRF Phrasing Enabled", v22, v23, v24, 0);
      v10 = hlp_MarkSildursExternal(a1, a3, a4);
      if ((v10 & 0x80000000) == 0)
      {
        v10 = fe_phrasing_Process_CRFPhrasing(a1, a2, a3, a4, a5);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
            if ((v10 & 0x80000000) == 0)
            {
              inserted = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 0, 0, 0);
              if ((inserted & 0x80000000) != 0 || *(a1 + 320) != 1)
              {
                return inserted;
              }

              return hlp_setNLUPOSMappings(a1, a3, a4);
            }
          }
        }
      }
    }

    else
    {
      v36 = v15 ^ 1;
      if (!*(a1 + 29))
      {
        v36 = 1;
      }

      if (v36)
      {
        return fe_phrasing_Process_Depes(a1, a2, a3, a4, a5);
      }

      else
      {
        v10 = hlp_MarkSildursExternal(a1, a3, a4);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = fe_phrasing_Process_Mosynt(a1, a2, a3, a4, a5);
            if ((v10 & 0x80000000) == 0)
            {
              return hlp_SetInternalSildurs(a1, a3, a4, 0);
            }
          }
        }
      }
    }

    return v10;
  }

  v10 = hlp_MarkSildursExternal(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if ((fe_phrasing_Process_PandP(a1, a2, a3, a4, a5) & 0x80000000) != 0)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "FEPHRRES: processing failed, fall back to alternative method", v27, v28, v29, 0);
    v10 = paramc_ParamSetUInt((*a1)[5], "prmigactive", 0);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    goto LABEL_56;
  }

  v10 = hlp_Markup(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = hlp_SetExternalSildurs(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = hlp_SetInternalSildurs(a1, a3, a4, 0);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  inserted = paramc_ParamSetUInt((*a1)[5], "prmigactive", 1u);
  if ((inserted & 0x80000000) == 0)
  {
    if (*(a1 + 320) != 1 || (inserted = hlp_setNLUPOSMappings(a1, a3, a4), (inserted & 0x80000000) == 0))
    {
      if (v21 && *(a1 + 324) == 1 && *(a1 + 720) && v41 == 1)
      {
        v30 = hlp_RemoveWordPhraseBoundaries(a1, a3, a4, *(a1 + 720), &v40, &v39);
        v31 = v40;
        if ((v30 & 0x80000000) == 0)
        {
          v30 = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 1, v40, v39);
          if ((v30 & 0x80000000) == 0)
          {
            log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN Phrasing : cleanup lingdb (numwords=%d)", v32, v33, v34, *(a1 + 720));
            v30 = NNPausing_cleanLingdb(*a1, a1[7], a3, a4, (a1 + 163));
          }
        }

        inserted = v30;
        if (v31)
        {
          heap_Free((*a1)[1], v31);
        }
      }
    }
  }

  return inserted;
}

uint64_t hlp_MarkSildursExternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v17 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v17), 0, &v18 + 2) & 0x80000000) == 0 && HIWORD(v18) == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v17), 0, &v14, &v16 + 2);
    if ((v6 & 0x80000000) == 0 && HIWORD(v16) >= 2u)
    {
      v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v17), &v17);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = v17;
        if (v17)
        {
          while (1)
          {
            v8 = (*(*(a1 + 56) + 168))(a2, a3, v7, 0, 1, &v15, &v16 + 2);
            if ((v8 & 0x80000000) != 0)
            {
              break;
            }

            if (v15 <= 0xA && ((1 << v15) & 0x610) != 0)
            {
              v8 = (*(*(a1 + 56) + 184))(a2, a3, v17, 8, &v18 + 2);
              if ((v8 & 0x80000000) != 0)
              {
                break;
              }

              if (HIWORD(v18))
              {
                v8 = (*(*(a1 + 56) + 168))(a2, a3, v17, 8, 1, &v18, &v16 + 2);
                if ((v8 & 0x80000000) != 0)
                {
                  break;
                }

                if (v18)
                {
                  v10 = *(*(a1 + 56) + 160);
                  v11 = v17;
                  v12 = cstdlib_strlen("external");
                  v8 = v10(a2, a3, v11, 18, (v12 + 1), "external", &v16);
                  if ((v8 & 0x80000000) != 0)
                  {
                    break;
                  }
                }
              }
            }

            v6 = (*(*(a1 + 56) + 120))(a2, a3, v17, &v17);
            if ((v6 & 0x80000000) == 0)
            {
              v7 = v17;
              if (v17)
              {
                continue;
              }
            }

            return v6;
          }

          return v8;
        }
      }
    }
  }

  return v6;
}

uint64_t hlp_Markup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 1;
  __s = 0;
  v28 = 0;
  v27 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v34 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v34), 0, &v28) & 0x80000000) == 0 && v28 == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v34), 0, &v27, &v36 + 2);
    if ((v6 & 0x80000000) == 0 && HIWORD(v36) >= 2u)
    {
      v7 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v34), &v34);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v34), 1, &v33, &v32 + 2);
      if ((v6 & 0x80000000) == 0)
      {
        v8 = v34;
        if (v34)
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = *(v33 + 12);
          while (1)
          {
            v7 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v35, &v36 + 2);
            if ((v7 & 0x80000000) != 0)
            {
              return v7;
            }

            if ((v35 - 9) < 2 || v35 == 4)
            {
              v7 = (*(*(a1 + 56) + 168))(a2, a3, v34, 1, 1, &v32, &v36 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              v7 = (*(*(a1 + 56) + 168))(a2, a3, v34, 2, 1, &v31 + 2, &v36 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              LOWORD(v31) = 0;
              v15 = HIWORD(v32);
              if (v9 >= HIWORD(v32))
              {
                v15 = v9;
              }

              else
              {
                v16 = 0;
                v17 = v9;
                v18 = (v33 + 32 * v9 + 12);
                while ((HIWORD(v31) - ((HIWORD(v31) - v32) > 1)) > (*v18 - v13))
                {
                  if (*(v18 - 3) == 8)
                  {
                    v16 += v18[6];
                    LOWORD(v31) = v16;
                  }

                  ++v17;
                  v18 += 16;
                  if (HIWORD(v32) == v17)
                  {
                    goto LABEL_34;
                  }
                }

                v15 = v17;
LABEL_34:
                if (v16 && v10)
                {
                  v7 = (*(*(a1 + 56) + 160))(a2, a3, v10, 8, 1, &v31, &v36);
                  if ((v7 & 0x80000000) != 0)
                  {
                    return v7;
                  }

                  v19 = *(*(a1 + 56) + 160);
                  v20 = cstdlib_strlen("external");
                  v7 = v19(a2, a3, v10, 18, (v20 + 1), "external", &v36);
                  if ((v7 & 0x80000000) != 0)
                  {
                    return v7;
                  }

                  v16 = v31;
                }

                if (v16 && v12)
                {
                  if (v11 && v32 == v11)
                  {
                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 7, 1, &v30, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 8, 1, &v31, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }
                  }

                  else if (v32 != v11)
                  {
                    v7 = (*(*(a1 + 56) + 88))(a2, a3, v34, &v34);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v35 = 15;
                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v34, 0, 1, &v35, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v34, 1, 1, &v32, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 168))(a2, a3, v12, 2, 1, &v31 + 2, &v36 + 2);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v34, 2, 1, &v31 + 2, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 2, 1, &v32, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 176))(a2, a3, v12, 4, &__s, &v36 + 2);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v21 = *(*(a1 + 56) + 160);
                    v22 = v34;
                    v23 = cstdlib_strlen(__s);
                    v7 = v21(a2, a3, v22, 4, (v23 + 1), __s, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v24 = *(*(a1 + 56) + 160);
                    v25 = cstdlib_strlen("P");
                    v7 = v24(a2, a3, v12, 4, (v25 + 1), "P", &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v34, 7, 1, &v30, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v34, 8, 1, &v31, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v12 = v34;
                    v11 = v32;
                    v7 = (*(*(a1 + 56) + 120))(a2, a3, v34, &v34);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }
                  }
                }
              }

              v10 = v34;
              v9 = v15;
            }

            else if (v35 == 15)
            {
              v12 = v34;
              v7 = (*(*(a1 + 56) + 168))(a2, a3, v34, 1, 1, &v32, &v36 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              v11 = v32;
            }

            v6 = (*(*(a1 + 56) + 120))(a2, a3, v34, &v34);
            if ((v6 & 0x80000000) == 0)
            {
              v8 = v34;
              if (v34)
              {
                continue;
              }
            }

            return v6;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t hlp_SetExternalSildurs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  HIWORD(v43) = 0;
  v42 = 0;
  v41 = 0;
  v37 = 0;
  v36 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v48 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v48), 0, &v49) & 0x80000000) == 0 && v49 == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v48), 0, &v36, &v47);
    if ((v6 & 0x80000000) == 0 && v47 >= 2u)
    {
      updated = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v48), 1, &v42, &v41);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      else
      {
        v8 = *(v42 + 12);
        v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v48), &v48);
        if ((v6 & 0x80000000) == 0)
        {
          v45 = 0;
          HIWORD(v44) = 0;
          v40 = 0;
          v39 = 0;
          cstdlib_strcpy(__dst, "normal");
          cstdlib_strcpy(__src, "normal");
          v38 = 0;
          v43 = 0;
          v9 = v48;
          if (v48)
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            while (1)
            {
              updated = (*(*(a1 + 56) + 168))(a2, a3, v9, 0, 1, &v46, &v47);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              if (v46 > 0xA || ((1 << v46) & 0x610) == 0)
              {
                v26 = v48;
                v19 = v12;
                goto LABEL_76;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, v48, 1, 1, &v45 + 2, &v47);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, v48, 2, 1, &v45, &v47);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              HIWORD(v43) = 0;
              if (v13)
              {
                updated = (*(*(a1 + 56) + 168))(a2, a3, v13, 2, 1, &v43 + 2, &v47);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }
              }

              cstdlib_strcpy(__dst, __src);
              updated = hlp_UpdateDomain(a1, a2, a3, HIWORD(v48), &v40, HIWORD(v45), v45, &v39, __src);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              if (v39)
              {
                updated = (*(*(a1 + 56) + 168))(a2, a3);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                v15 = HIWORD(v44);
              }

              else
              {
                v15 = v45;
                HIWORD(v44) = v45;
              }

              if (v15 && v11 < v41)
              {
                v16 = (v15 - 1);
                v17 = v11;
                v18 = v42 + 32 * v11;
                v19 = v12;
                if (v16 >= (*(v18 + 12) - v8))
                {
                  v19 = v12;
                  while (1)
                  {
                    if (*v18 == 31)
                    {
                      v19 = *(v18 + 24);
                    }

                    if (v41 - 1 == v17)
                    {
                      break;
                    }

                    v20 = *(v18 + 44) - v8;
                    v18 += 32;
                    ++v17;
                    if (v16 < v20)
                    {
                      v11 = v17;
                      goto LABEL_34;
                    }
                  }

                  v11 = v41;
                }
              }

              else
              {
                v19 = v12;
              }

LABEL_34:
              hlp_GetDomainPauseDur(a1, "spell", &v38, &v37);
              if (cstdlib_strstr(__dst, "spell"))
              {
                if (cstdlib_strstr(__src, "spell"))
                {
                  break;
                }
              }

              if (cstdlib_strstr(__src, "spell"))
              {
                if (!v19)
                {
                  goto LABEL_52;
                }

                v25 = 0;
                LOWORD(v12) = v19;
              }

              else
              {
                if (!cstdlib_strstr(__dst, "spell"))
                {
                  goto LABEL_51;
                }

                if (!v12)
                {
LABEL_52:
                  v25 = 0;
                  if (v37)
                  {
                    LOWORD(v12) = v38;
                  }

                  else
                  {
                    LOWORD(v12) = 200;
                  }

                  goto LABEL_55;
                }

                v25 = 0;
              }

LABEL_55:
              if (v10 >= v41)
              {
                v27 = 0;
              }

              else
              {
                v27 = 0;
                v28 = v10;
                v29 = (v42 + 32 * v10 + 12);
                while ((v45 - ((v45 - HIWORD(v45)) > 1)) > (*v29 - v8))
                {
                  if (*(v29 - 3) == 8)
                  {
                    v27 += v29[6];
                  }

                  ++v28;
                  v29 += 16;
                  if (v41 == v28)
                  {
                    v10 = v41;
                    goto LABEL_64;
                  }
                }

                v10 = v28;
              }

LABEL_64:
              if (v25)
              {
                v30 = 0;
              }

              else
              {
                v30 = v12;
              }

              v31 = v25 ^ 1;
              v32 = v27 == 0;
              if (!v27)
              {
                v27 = v30;
              }

              LOWORD(v43) = v27;
              if (!v32)
              {
                v31 = 1;
              }

              if (v13)
              {
                if (v31)
                {
                  updated = (*(*(a1 + 56) + 160))(a2, a3, v13, 8, 1, &v43, &v44);
                  if ((updated & 0x80000000) != 0)
                  {
                    return updated;
                  }

                  v33 = *(*(a1 + 56) + 160);
                  v34 = cstdlib_strlen("external");
                  updated = v33(a2, a3, v13, 18, (v34 + 1), "external", &v44);
                  if ((updated & 0x80000000) != 0)
                  {
                    return updated;
                  }
                }
              }

              v26 = v48;
              v13 = v48;
LABEL_76:
              v6 = (*(*(a1 + 56) + 120))(a2, a3, v26, &v48);
              if ((v6 & 0x80000000) == 0)
              {
                v9 = v48;
                v12 = v19;
                if (v48)
                {
                  continue;
                }
              }

              return v6;
            }

            if (HIWORD(v43))
            {
              v21 = *(v36 + HIWORD(v43) - 1);
              v22 = v21 > 0x3F;
              v23 = (1 << v21) & 0x8C00500200000000;
              if (!v22 && v23 != 0)
              {
                v25 = 0;
                if (!v12)
                {
                  LOWORD(v12) = v38;
                }

                goto LABEL_55;
              }
            }

LABEL_51:
            LOWORD(v12) = 0;
            v25 = 1;
            goto LABEL_55;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t hlp_SetInternalSildurs(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v22 = 0;
  v19 = 0;
  v8 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v32 + 2);
  if ((v8 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v32), 0, &v33) & 0x80000000) == 0 && v33 == 1)
  {
    v8 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v32), 0, &v19, &v31);
    if ((v8 & 0x80000000) == 0 && v31 >= 2u)
    {
      v8 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v32), &v32);
      if ((v8 & 0x80000000) == 0)
      {
        LOWORD(v28) = 0;
        v27 = 0;
        v29 = 0;
        v23 = 0;
        cstdlib_strcpy(__dst, "normal");
        cstdlib_strcpy(__src, "normal");
        v25 = 0;
        v26 = 0;
        v9 = v32;
        if (v32)
        {
          LOWORD(v10) = 0;
          v11 = 0;
          while (1)
          {
            updated = (*(*(a1 + 56) + 168))(a2, a3, v9, 0, 1, &v30, &v31);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if ((v30 - 9) < 2 || v30 == 4)
            {
              break;
            }

            if (v30 == 15)
            {
              v10 = v32;
              updated = (*(*(a1 + 56) + 168))(a2, a3, v32, 1, 1, &v28, &v31);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, v10, 7, 1, &v27, &v31);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }
            }

LABEL_48:
            v8 = (*(*(a1 + 56) + 120))(a2, a3, v32, &v32);
            if ((v8 & 0x80000000) != 0)
            {
              return v8;
            }

            v9 = v32;
            if (!v32)
            {
              if (!v11)
              {
                return v8;
              }

              HIWORD(v25) = 0;
              return (*(*(a1 + 56) + 160))(a2, a3, v11, 8, 1, &v25 + 2, &v28 + 2);
            }
          }

          updated = (*(*(a1 + 56) + 168))(a2, a3, v32, 1, 1, &v29 + 2, &v31);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 56) + 168))(a2, a3, v32, 2, 1, &v29, &v31);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          v26 = 0;
          if (v11)
          {
            updated = (*(*(a1 + 56) + 168))(a2, a3, v11, 2, 1, &v26, &v31);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            LOWORD(v25) = 0;
            v24 = 0;
            updated = hlp_ReadSildur(a1, a2, a3, v11, &v25, &v24);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if (v24)
            {
              v14 = 0;
            }

            else
            {
              if (v25)
              {
                v15 = a4 == 0;
              }

              else
              {
                v15 = 1;
              }

              v14 = v15;
            }
          }

          else
          {
            LOWORD(v25) = 0;
            v24 = 0;
            v14 = 1;
          }

          cstdlib_strcpy(__dst, __src);
          updated = hlp_UpdateDomain(a1, a2, a3, HIWORD(v32), &v23 + 1, HIWORD(v29), v29, &v23, __src);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          hlp_GetDomainPauseDur(a1, __dst, &v22, &v20);
          hlp_GetDomainPauseDur(a1, __src, &v21, &v20);
          v16 = v22;
          HIWORD(v25) = 0;
          v17 = v10 != 0;
          if (v14)
          {
            if (!HIWORD(v29) || !v10 || (v17 = 1, v28 != HIWORD(v29)) || v27 > 1u)
            {
LABEL_42:
              if (v11)
              {
                updated = (*(*(a1 + 56) + 160))(a2, a3, v11, 8, 1, &v25 + 2, &v28 + 2);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }
              }

              if (v17 && v28 == HIWORD(v29))
              {
                updated = (*(*(a1 + 56) + 160))(a2, a3, v10, 8, 1, &v25 + 2, &v28 + 2);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }
              }

              v11 = v32;
              goto LABEL_48;
            }
          }

          else
          {
            v16 = v25;
          }

          HIWORD(v25) = v16;
          goto LABEL_42;
        }
      }
    }
  }

  return v8;
}

uint64_t hlp_setNLUPOSMappings(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = 0;
  v43 = 0;
  v41 = 0;
  *v40 = 0;
  v39 = 0;
  *&__n[1] = 0;
  __n[0] = 0;
  v36 = 0;
  __s = 0;
  v34 = 0;
  v35 = 0;
  if ((com_crf_GetCfgParamVal(a1[11], a1[12], a1[13], "fephrase_max_search_key", "64", &v34) & 0x80000000) != 0)
  {
    v6 = 64;
  }

  else
  {
    v6 = cstdlib_atoi(v34);
  }

  v7 = heap_Calloc(*(*a1 + 8), 1, v6);
  if (v7)
  {
    v12 = v7;
    v13 = (*(a1[7] + 104))(a2, a3, 1, 0, &v43 + 2);
    if ((v13 & 0x80000000) != 0)
    {
LABEL_33:
      v14 = v13;
    }

    else
    {
      v14 = (*(a1[7] + 184))(a2, a3, HIWORD(v43), 0, &v39);
      if ((v14 & 0x80000000) == 0 && v39 == 1)
      {
        v14 = (*(a1[7] + 176))(a2, a3, HIWORD(v43), 0, &v35, &v42 + 2);
        if ((v14 & 0x80000000) == 0 && HIWORD(v42) >= 2u)
        {
          v14 = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v43), &v43);
          if ((v14 & 0x80000000) == 0)
          {
            v15 = v43;
            if (v43)
            {
              while (1)
              {
                v13 = (*(a1[7] + 168))(a2, a3, v15, 0, 1, &v41, &v42 + 2);
                if ((v13 & 0x80000000) != 0)
                {
                  goto LABEL_33;
                }

                if (v41 <= 0xA && ((1 << v41) & 0x610) != 0)
                {
                  v13 = (*(a1[7] + 176))(a2, a3, v43, 5, &__s, &v42 + 2);
                  if ((v13 & 0x80000000) != 0)
                  {
                    goto LABEL_33;
                  }

                  if (cstdlib_strlen(__s) != 1)
                  {
                    v13 = (*(a1[7] + 184))(a2, a3, v43, 14, &v39);
                    if ((v13 & 0x80000000) != 0)
                    {
                      goto LABEL_33;
                    }

                    if (v39)
                    {
                      break;
                    }
                  }
                }

LABEL_29:
                v14 = (*(a1[7] + 120))(a2, a3, v43, &v43);
                if ((v14 & 0x80000000) == 0)
                {
                  v15 = v43;
                  if (v43)
                  {
                    continue;
                  }
                }

                goto LABEL_34;
              }

              v13 = (*(a1[7] + 176))(a2, a3, v43, 14, v40, &v42 + 2);
              if ((v13 & 0x80000000) != 0)
              {
                goto LABEL_33;
              }

              if (HIWORD(v42))
              {
                hlp_NLUStrFind(*v40, "POS", &__n[1], __n);
                cstdlib_strncpy(v12, *&__n[1], __n[0]);
                v12[__n[0]] = 0;
                if ((ssftmap_Find(a1[161], v12, &v36) & 0x1FFF) != 0x14)
                {
                  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s (NLU %s) to %s", v17, v18, v19, __s);
                  v23 = *(a1[7] + 160);
                  v30 = v43;
                  v31 = cstdlib_strlen(v36);
                  v29 = v36;
                  v25 = (v31 + 1);
                  v26 = a2;
                  v27 = a3;
                  v28 = v30;
LABEL_28:
                  v13 = v23(v26, v27, v28, 5, v25, v29, &v42);
                  if ((v13 & 0x80000000) != 0)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_29;
                }

                v12[1] = 0;
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s (NLU %s) to %s", v17, v18, v19, __s);
              }

              else
              {
                cstdlib_strncpy(v12, __s, 1uLL);
                v12[1] = 0;
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s to %s (default in lieu of NLU field)", v20, v21, v22, __s);
              }

              v23 = *(a1[7] + 160);
              v24 = v43;
              v25 = (cstdlib_strlen(v12) + 1);
              v26 = a2;
              v27 = a3;
              v28 = v24;
              v29 = v12;
              goto LABEL_28;
            }
          }
        }
      }
    }

LABEL_34:
    heap_Free(*(*a1 + 8), v12);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v8, v9, v10, v11, v33);
    return 2315264010;
  }

  return v14;
}

uint64_t hlp_RemoveWordPhraseBoundaries(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, _WORD *a6)
{
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  *a6 = 0;
  result = (*(a1[7] + 104))(a2, a3, 1, 0, &v27 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1[7] + 152))(a2, a3, 2, HIWORD(v27), &v23);
    if ((result & 0x80000000) == 0)
    {
      if (!v23)
      {
        goto LABEL_26;
      }

      result = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v27), &v27);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v13 = v27;
      if (v27)
      {
        v14 = 0;
        v15 = 4 * a4;
        do
        {
          result = (*(a1[7] + 168))(a2, a3, v13, 0, 1, &v26, &v25 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v16 = v27;
          if (v26 <= 0xA && ((1 << v26) & 0x610) != 0)
          {
            result = (*(a1[7] + 168))(a2, a3, v27, 1, 1, &v24, &v25 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = (*(a1[7] + 168))(a2, a3, v27, 2, 1, &v23 + 2, &v25 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (*a6 && v14)
            {
              *(v14 + 4 * (*a6 - 1) + 2) = HIWORD(v23);
            }
          }

          result = (*(a1[7] + 120))(a2, a3, v27, &v27);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v26 == 15)
          {
            result = (*(a1[7] + 168))(a2, a3, v16, 1, 1, &v25, &v25 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = (*(a1[7] + 168))(a2, a3, v16, 2, 1, &v24 + 2, &v25 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (!v14)
            {
              v14 = heap_Calloc(*(*a1 + 8), 1, v15);
              if (!v14)
              {
                log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v18, v19, v20, v21, v22);
                result = 2315264010;
                break;
              }
            }

            *(v14 + 4 * *a6) = v25;
            *(v14 + 4 * (*a6)++ + 2) = HIWORD(v24);
            result = (*(a1[7] + 192))(a2, a3, v16);
          }

          v13 = v27;
        }

        while (v27);
      }

      else
      {
LABEL_26:
        v14 = 0;
      }

      *a5 = v14;
    }
  }

  return result;
}

uint64_t hlp_InsertWordPhraseBoundaries(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v46[0] = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v39 = 0;
  __s = 0;
  __s1 = 0;
  v37 = 0;
  result = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, v46);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 56) + 152))(a2, a3, 2, v46[0], &v37);
    if ((result & 0x80000000) == 0)
    {
      if (!v37 || (result = (*(*(a1 + 56) + 104))(a2, a3, 2, v46[0], &v45 + 2), (result & 0x80000000) == 0))
      {
        v13 = HIWORD(v45);
        v14 = 1;
        if (HIWORD(v45))
        {
          v15 = 0;
          v36 = 0;
          if (a4 == 1)
          {
            v16 = 0;
          }

          else
          {
            v16 = 200;
          }

          v34 = v16;
          v35 = (a5 + 2);
          v17 = -1;
          v18 = "*?";
          while (1)
          {
            result = (*(*(a1 + 56) + 168))(a2, a3, v13, 0, 1, &v44, &v43 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if ((v44 - 9) < 2 || v44 == 4)
            {
              break;
            }

            if (v44 == 15)
            {
              LOWORD(v45) = HIWORD(v45);
            }

LABEL_71:
            result = (*(*(a1 + 56) + 120))(a2, a3, HIWORD(v45), &v45 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v13 = HIWORD(v45);
            if (!HIWORD(v45))
            {
              v14 = v15 == 0;
              goto LABEL_82;
            }
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v45), 1, 1, &v42 + 2, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v45), 2, 1, &v42, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v45), 8, 1, &v41, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 184))(a2, a3, HIWORD(v45), 18, &v37 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LOWORD(v37) = 0;
          if (a6)
          {
            v21 = v35;
            v20 = a6;
            do
            {
              v22 = *v21;
              v21 += 2;
              if (v22 == v42)
              {
                LOWORD(v37) = 1;
              }

              --v20;
            }

            while (v20);
          }

          if (HIWORD(v37))
          {
            result = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v45), 18, &__s1, &v43 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v36 = cstdlib_strcmp(__s1, "external") == 0;
          }

          result = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v45), 3, &v39, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (cstdlib_strstr(v39, v18))
          {
            v15 = 1;
          }

          v23 = HIWORD(v42);
          v24 = v42;
          if (HIWORD(v42) > v42)
          {
            return 2315271857;
          }

          if (!v45)
          {
            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v45), SHIWORD(v42), v42, 0, v34, &v45);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

LABEL_48:
            if (v41)
            {
              v25 = v18;
              v48 = HIWORD(v45);
              v47 = 0;
              v46[1] = 0;
              if (((*(*(a1 + 56) + 120))(a2, a3) & 0x80000000) == 0)
              {
                v26 = 0;
                while (v48 && ((*(*(a1 + 56) + 168))(a2, a3) & 0x80000000) == 0)
                {
                  if (v47 == 15)
                  {
                    v26 = 1;
                  }

                  else if ((v47 - 9) < 2 || v47 == 4)
                  {
                    if (v26)
                    {
                      break;
                    }

                    v17 = v41;
                    v18 = v25;
                    if (v41 <= 0x1Du && !v36)
                    {
                      v41 = 0;
                      result = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v45), 8, 1, &v41, &v43);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v17 = v41;
                    }

                    goto LABEL_71;
                  }

                  if (((*(*(a1 + 56) + 120))(a2, a3, v48, &v48) & 0x80000000) != 0)
                  {
                    break;
                  }
                }
              }

              v18 = v25;
            }

            else if (v37 == 1 && a4 == 1)
            {
              v17 = 0;
            }

            goto LABEL_71;
          }

          if (v17 < 1)
          {
            if (v17)
            {
LABEL_45:
              if (!a4)
              {
                result = (*(*(a1 + 56) + 160))(a2, a3, v45, 2, 1, &v42, &v43);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              v17 = -1;
              goto LABEL_48;
            }

            if (a4 == 1)
            {
              result = (*(*(a1 + 56) + 160))(a2, a3);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v23 = HIWORD(v42);
              v24 = v42;
            }

            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v45), v23, v24, 2, 0, &v45);
          }

          else
          {
            if (a4 == 1)
            {
              result = (*(*(a1 + 56) + 160))(a2, a3);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v23 = HIWORD(v42);
              v24 = v42;
            }

            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v45), v23, v24, 1, v17, &v45);
          }

          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_45;
        }

LABEL_82:
        if (a4 == 1 && v45)
        {
          result = (*(*(a1 + 56) + 160))(a2, a3, v45, 2, 1, &v42, &v43);
          if ((result & 0x80000000) != 0 || !v45)
          {
            return result;
          }
        }

        else if (!v45)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 176))(a2, a3, v46[0], 0, &__s, &v43 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v29 = __s;
        if (__s && *__s)
        {
          if (v29[cstdlib_strlen(__s) - 1] == 63 || !v14)
          {
LABEL_92:
            v30 = *(*(a1 + 56) + 160);
            v31 = v45;
            v32 = "Y";
LABEL_95:
            v33 = cstdlib_strlen(v32);
            return v30(a2, a3, v31, 4, (v33 + 1), v32, &v43);
          }
        }

        else if (!v14)
        {
          goto LABEL_92;
        }

        v30 = *(*(a1 + 56) + 160);
        v31 = v45;
        v32 = "T";
        goto LABEL_95;
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_Process_Depes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v55 = 0;
  __s = 0;
  v54 = 0;
  v53 = 0;
  __s1 = 0;
  v51 = 0;
  *a5 = 1;
  v8 = (*(a1[7] + 104))(a3, a4, 1, 0, &v61 + 2);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (((*(a1[7] + 184))(a3, a4, HIWORD(v61), 0, &v53) & 0x80000000) != 0)
  {
    return v8;
  }

  if (v53 != 1)
  {
    return v8;
  }

  v8 = (*(a1[7] + 176))(a3, a4, HIWORD(v61), 0, &v62, &v59 + 2);
  if ((v8 & 0x80000000) != 0 || HIWORD(v59) < 2u)
  {
    return v8;
  }

  v9 = (*(a1[7] + 176))(a3, a4, HIWORD(v61), 1, &v55, &v54 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = *(v55 + 12);
  LastTnMarkerUpToPos = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v61), &v61);
  if ((LastTnMarkerUpToPos & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v12 = 1;
  v13 = 1;
  while (1)
  {
    if (!v61)
    {
      v21 = heap_Alloc(*(*a1 + 8), v12 + 128);
      a1[17] = v21;
      if (!v21 || (cstdlib_strcpy(v21, ""), v26 = heap_Alloc(*(*a1 + 8), v12), (a1[18] = v26) == 0) || (cstdlib_strcpy(v26, ""), v27 = heap_Alloc(*(*a1 + 8), v12), (a1[19] = v27) == 0))
      {
        v8 = 2315264010;
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v22, v23, v24, v25, v46);
        goto LABEL_26;
      }

      cstdlib_strcpy(v27, "");
      LastTnMarkerUpToPos = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v61), &v61);
      if ((LastTnMarkerUpToPos & 0x80000000) == 0)
      {
        LOWORD(v28) = v61;
        HIWORD(v60) = v61;
        if (v61)
        {
          v29 = 0;
          v48 = v10;
          do
          {
            LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v28, 0, 1, &v57, &v59 + 2);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              goto LABEL_25;
            }

            if (v57 - 9 < 2 || v57 == 4)
            {
              *__dst = 0;
              v50 = 0;
              v53 = 0;
              LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v60), 1, 1, &v59, &v59 + 2);
              if ((LastTnMarkerUpToPos & 0x80000000) != 0)
              {
                goto LABEL_25;
              }

              LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v60), 2, 1, &v58, &v59 + 2);
              if ((LastTnMarkerUpToPos & 0x80000000) != 0)
              {
                goto LABEL_25;
              }

              if ((v58 - v59) <= 1)
              {
                v31 = 0;
              }

              else
              {
                v31 = -1;
              }

              *__dst = 0;
              v32 = v54;
              v33 = HIWORD(v54);
              if (v54 < HIWORD(v54))
              {
                v47 = v29;
                v34 = v60;
                v35 = 32 * v54;
                do
                {
                  if ((*(v55 + v35 + 12) - v10) >= (v58 + v31))
                  {
                    break;
                  }

                  if (*(v55 + v35) == 8 && v34 != 0)
                  {
                    *__dst += *(v55 + v35 + 24);
                    LastTnMarkerUpToPos = (*(a1[7] + 160))(a3, a4, v34, 8, 1, __dst, &v50);
                    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                    {
                      goto LABEL_25;
                    }

                    v49 = *(a1[7] + 160);
                    v37 = cstdlib_strlen("external");
                    LastTnMarkerUpToPos = v49(a3, a4, v34, 18, (v37 + 1), "external", &v50);
                    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                    {
                      goto LABEL_25;
                    }

                    v33 = HIWORD(v54);
                    LOWORD(v10) = v48;
                  }

                  ++v32;
                  v35 += 32;
                }

                while (v32 < v33);
                v29 = v47;
              }

              LOWORD(v54) = v32;
              *__dst = 0;
              if (((*(a1[7] + 184))(a3, a4, HIWORD(v60), 8, &v53) & 0x80000000) != 0 || !v53)
              {
                LastTnMarkerUpToPos = (*(a1[7] + 160))(a3, a4, HIWORD(v60), 8, 1, __dst, &v50);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }
              }

              v38 = HIWORD(v60);
              LOWORD(v60) = HIWORD(v60);
            }

            else if (v57 == 5)
            {
              v39 = HIWORD(v60);
              v38 = v29;
              if (HIWORD(v60) != v29)
              {
                LastTnMarkerUpToPos = (*(a1[7] + 176))(a3, a4, HIWORD(v60), 4, &__s1, &v59 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v60), 1, 1, &v59, &v59 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v60), 2, 1, &v58, &v59 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                LastTnMarkerUpToPos = hlp_GetLastTnMarkerUpToPos(a1, a3, a4, HIWORD(v61), v59, v64);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                if (cstdlib_strcmp(__s1, "phon"))
                {
                  v40 = __s1;
                }

                else
                {
                  v40 = v64;
                  __s1 = v64;
                }

                LastTnMarkerUpToPos = hlp_Remap(a1, a3, a4, HIWORD(v61), HIWORD(v60), v40, &v58);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                v51 = 0;
                cstdlib_strcpy(__dst, "tnpausedur");
                v41 = cstdlib_strlen(__s1);
                if (v41 < 255 - cstdlib_strlen(__dst))
                {
                  cstdlib_strcat(__dst, __s1);
                  if ((paramc_ParamGetUInt(*(*a1 + 40), __dst, &v51) & 0x80000000) != 0)
                  {
                    v51 = 0;
                  }
                }

                if (cstdlib_strstr(__s1, "spell"))
                {
                  v42 = HIWORD(v54);
                  v43 = v58;
                  v44 = v55;
                  if (HIWORD(v54))
                  {
                    v45 = v55 + 12;
                    do
                    {
                      if (v58 <= (*v45 - v10))
                      {
                        break;
                      }

                      if (*(v45 - 12) == 31)
                      {
                        v51 = *(v45 + 12);
                      }

                      v45 += 32;
                      --v42;
                    }

                    while (v42);
                  }
                }

                else
                {
                  v43 = v58;
                  v44 = v55;
                }

                LastTnMarkerUpToPos = hlp_Phrasing(a1, v62, v43, __s1, a3, a4, &v61, v44, &v54, &v54 + 1, v10, v51, &v60, v12);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                v28 = v61;
                HIWORD(v60) = v61;
                v29 = v39;
                if (!v61)
                {
                  break;
                }

                continue;
              }
            }

            else
            {
              v38 = HIWORD(v60);
            }

            LastTnMarkerUpToPos = (*(a1[7] + 120))(a3, a4, v38, &v60 + 2);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              goto LABEL_25;
            }

            v28 = HIWORD(v60);
            if (!v61)
            {
              break;
            }
          }

          while (v28);
        }

        LastTnMarkerUpToPos = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 0, 0, 0);
      }

LABEL_25:
      v8 = LastTnMarkerUpToPos;
      goto LABEL_26;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    if (v57 > 0xA || ((1 << v57) & 0x610) == 0)
    {
      goto LABEL_24;
    }

    if (!v13)
    {
      ++v12;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v61, 1, 1, &v59, &v59 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v61, 2, 1, &v58, &v59 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 176))(a3, a4, v61, 5, &__s, &v59 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    if (v59 > v58)
    {
      break;
    }

    v15 = cstdlib_strlen(__s);
    v16 = v58 - v59;
    if (v15 > (v58 - v59))
    {
      v16 = cstdlib_strlen(__s);
    }

    v13 = 0;
    v12 += v16;
LABEL_24:
    LastTnMarkerUpToPos = (*(a1[7] + 120))(a3, a4, v61, &v61);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_25;
    }
  }

  v8 = 2315271857;
LABEL_26:
  v17 = a1[17];
  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
  }

  a1[17] = 0;
  v18 = a1[18];
  if (v18)
  {
    heap_Free(*(*a1 + 8), v18);
  }

  a1[18] = 0;
  v19 = a1[19];
  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
  }

  a1[19] = 0;
  return v8;
}