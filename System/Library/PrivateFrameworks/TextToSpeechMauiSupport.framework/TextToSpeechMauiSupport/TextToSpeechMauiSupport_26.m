uint64_t count_inserted_oneword_bytes(const char *a1)
{
  if (a1 && cstdlib_strlen(a1) && (v2 = cstdlib_strlen(a1)) != 0)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = cstdlib_strlen("↕");
      if (!cstdlib_strncmp(&a1[v5], "↕", v6))
      {
        v4 += cstdlib_strlen("↕");
      }

      v7 = cstdlib_strlen("§");
      if (!cstdlib_strncmp(&a1[v5], "§", v7))
      {
        v4 += cstdlib_strlen("§");
      }

      v5 += utf8_determineUTF8CharLength(a1[v5]);
    }

    while (v5 < v3);
  }

  else
  {
    LOWORD(v4) = 0;
  }

  return v4;
}

uint64_t printNode(int a1, const char **a2, char *a3, unsigned __int16 *a4, void *a5, uint64_t a6, unsigned __int16 *a7, int a8)
{
  if (!a1)
  {
    return 0;
  }

  sprintf(a3, "[%3d] ", a8);
  v14 = add2Str(*a6, a2, a4, a3);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v15 = *(a7 + 1);
  if (v15 == 2)
  {
    v16 = *a6;
    v17 = "(T) ";
  }

  else
  {
    if (v15 != 1)
    {
      goto LABEL_9;
    }

    v16 = *a6;
    v17 = "(S) ";
  }

  v14 = add2Str(v16, a2, a4, v17);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

LABEL_9:
  v14 = add2Str(*a6, a2, a4, a3);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  sprintf(a3, "NODE <%3d,%3d > ", *a7, a7[1]);
  v18 = add2Str(*a6, a2, a4, a3);
  if ((v18 & 0x80000000) == 0)
  {
    v19 = *a7;
    if (v19 < a7[1])
    {
      v20 = 224 * v19;
      do
      {
        v14 = add2Str(*a6, a2, a4, *(*(*a5 + v20 + 16) + 8 * *(a6 + 16)));
        if ((v14 & 0x80000000) != 0)
        {
          return v14;
        }

        if (*(*a5 + v20 + 72) != 255)
        {
          sprintf(a3, "_%d", *(*a5 + v20 + 72));
          v14 = add2Str(*a6, a2, a4, a3);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        v18 = add2Str(*a6, a2, a4, " ");
        if ((v18 & 0x80000000) != 0)
        {
          return v18;
        }

        ++v19;
        v20 += 224;
      }

      while (v19 < a7[1]);
    }

    if (!FLOATSUR_GT_INT(a7 + 4, 0, 0) || (sprintf(a3, "phraseWeight=%d.%d ", a7[4], a7[5]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
    {
      if (!FLOATSUR_GT_INT(a7 + 6, 0, 0) || (sprintf(a3, "bndWeight=%d.%d ", a7[6], a7[7]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
      {
        if (!FLOATSUR_GT_INT(a7 + 8, 0, 0) || (sprintf(a3, "bndValue=%d.%d ", a7[8], a7[9]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
        {
          v24 = *(a7 + 5);
          if (v24 > 2)
          {
            if (v24 == 4)
            {
              v25 = "bndType=S ";
            }

            else
            {
              if (v24 != 3)
              {
                goto LABEL_35;
              }

              v25 = "bndType=W ";
            }
          }

          else
          {
            if (!v24)
            {
LABEL_36:
              if (*(a7 + 6) != 1 || (sprintf(a3, "bProcessed=%d ", 1), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
              {
                if (*(a7 + 7) != 1 || (sprintf(a3, "bBndBefore=%d ", 1), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
                {
                  log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "%s", v21, v22, v23, *a2);
                  cstdlib_strcpy(*a2, "");
                }
              }

              return v18;
            }

            if (v24 != 1)
            {
LABEL_35:
              v18 = add2Str(*a6, a2, a4, a3);
              if ((v18 & 0x80000000) != 0)
              {
                return v18;
              }

              goto LABEL_36;
            }

            v25 = "bndType=U ";
          }

          cstdlib_strcpy(a3, v25);
          goto LABEL_35;
        }
      }
    }
  }

  return v18;
}

uint64_t printLevel(uint64_t result, const char **a2, char *a3, unsigned __int16 *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v14 = result;
    log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "Level dump : %s", a6, a7, a8, a8);
    if (*(a7 + 8))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        result = printNode(v14, a2, a3, a4, a5, a6, (*a7 + v15), v16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        ++v16;
        v15 += 32;
      }

      while (v16 < *(a7 + 8));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t printAsString(int a1, char **a2, char *a3, unsigned __int16 *a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  cstdlib_strcpy(*a2, "");
  if (*(a7 + 4))
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = *a7;
      v20 = (*a7 + 32 * v17);
      v21 = *v20;
      if (v21 < v20[1])
      {
        v22 = 224 * v21;
        do
        {
          v23 = *a5 + v22;
          if (!*(v23 + 220))
          {
            v24 = add2Str(*a6, a2, a4, *(*(v23 + 16) + 8 * *(a6 + 16)));
            if ((v24 & 0x80000000) != 0)
            {
              return v24;
            }

            if (*(*a5 + v22 + 72) != 255)
            {
              sprintf(a3, "_%d", *(*a5 + v22 + 72));
              v24 = add2Str(*a6, a2, a4, a3);
              if ((v24 & 0x80000000) != 0)
              {
                return v24;
              }
            }

            v18 = add2Str(*a6, a2, a4, " ");
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            v19 = *a7;
          }

          ++v21;
          v22 += 224;
        }

        while (v21 < *(v19 + 32 * v17 + 2));
      }

      v25 = *(v19 + 32 * v17 + 20);
      if (v25 == 4)
      {
        break;
      }

      if (v25 == 3)
      {
        v26 = *a6;
        v27 = a2;
        v28 = a4;
        v29 = "| ";
        goto LABEL_17;
      }

LABEL_18:
      if (++v17 >= *(a7 + 4))
      {
        goto LABEL_22;
      }
    }

    v26 = *a6;
    v27 = a2;
    v28 = a4;
    v29 = "|| ";
LABEL_17:
    v18 = add2Str(v26, v27, v28, v29);
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    goto LABEL_18;
  }

  v18 = 0;
LABEL_22:
  log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "%s%s", v14, v15, v16, a8);
  cstdlib_strcpy(*a2, "");
  return v18;
}

unsigned __int16 *removeNode(unsigned __int16 *result, unsigned int a2)
{
  v2 = result;
  v3 = a2 + 1;
  v4 = result[4];
  if (v4 != v3)
  {
    result = cstdlib_memmove((*result + 32 * a2), (*result + 32 * v3), 32 * (v4 - v3));
    LOWORD(v4) = v2[4];
  }

  v2[4] = v4 - 1;
  return result;
}

uint64_t addNode(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, int a5, unsigned int a6)
{
  NodeMem = getNodeMem(a1, a6, a2, 1u);
  if ((NodeMem & 0x80000000) == 0)
  {
    v11 = *a2 + 32 * *(a2 + 8);
    *v11 = a3;
    *(v11 + 2) = a4;
    *(v11 + 4) = a5;
    FLOATSUR_SET_INT((v11 + 8), 0, 0);
    FLOATSUR_SET_INT((*a2 + 32 * *(a2 + 8) + 12), 0, 0);
    FLOATSUR_SET_INT((*a2 + 32 * *(a2 + 8) + 16), 0, 0);
    v12 = *(a2 + 8);
    v13 = *a2 + 32 * v12;
    *(v13 + 24) = 0;
    *(v13 + 20) = 0;
    *(a2 + 8) = v12 + 1;
  }

  return NodeMem;
}

uint64_t getNodeMem(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (!*a3)
  {
    if (a4 <= a2)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4;
    }

    v14 = v13 + a2;
    v15 = heap_Calloc(*(a1 + 8), 1, (32 * (v13 + a2)) | 1);
    *a3 = v15;
    if (v15)
    {
      v12 = 0;
      *(a3 + 10) = v14;
      return v12;
    }

LABEL_11:
    v12 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v8, v9, v10, v11, v17);
    return v12;
  }

  v6 = *(a3 + 10);
  if (*(a3 + 8) + a4 <= v6)
  {
    return 0;
  }

  v7 = heap_Realloc(*(a1 + 8), *a3, 32 * v6 + 321);
  if (!v7)
  {
    goto LABEL_11;
  }

  v12 = 0;
  *a3 = v7;
  *(a3 + 10) += 10;
  return v12;
}

uint64_t addNewNode(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  NodeMem = getNodeMem(a1, a4, a2, 1u);
  if ((NodeMem & 0x80000000) == 0)
  {
    cstdlib_memcpy((*a2 + 32 * *(a2 + 8)), a3, 0x20uLL);
    ++*(a2 + 8);
  }

  return NodeMem;
}

uint64_t addLevel(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  NodeMem = getNodeMem(a1, a4, a2, *(a3 + 8));
  if ((NodeMem & 0x80000000) == 0)
  {
    v7 = *(a2 + 8);
    LOWORD(v8) = *(a3 + 8);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        cstdlib_memcpy((*a2 + 32 * v7), (*a3 + v9), 0x20uLL);
        ++v10;
        ++v7;
        v8 = *(a3 + 8);
        v9 += 32;
      }

      while (v10 < v8);
      LOWORD(v7) = *(a2 + 8);
    }

    *(a2 + 8) = v7 + v8;
  }

  return NodeMem;
}

uint64_t createLevel0ProsodicStructure(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO createLevel0ProsodicStructure()", a6, a7, a8, 0);
  v27 = 0;
  v12 = a1 + 336;
  LOWORD(v13) = a1[340];
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = a1 + 15;
    v17 = a1 + 16;
    do
    {
      v18 = v15;
      v19 = *(*v12 + 224 * v15 + 56);
      if (v19)
      {
        if (*(v19 + 32 * *v16) == 1)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get phrasing for token (%d,%d)", v9, v10, v11, v14);
          result = getPhrasingForToken(a1, &v27, v15);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = addLevel(*a1, (a1 + 360), &v27, a1[340]);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v21 = a1 + 15;
          if (v27)
          {
            heap_Free(*(*a1 + 8), v27);
            v27 = 0;
            LODWORD(v28) = 0;
            v21 = a1 + 15;
          }

          goto LABEL_11;
        }

        v22 = v19 + 32 * *v17;
        if (*v22 == 1)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "add syntactic node (%d,%d)", v9, v10, v11, *(v22 + 8));
          v23 = *(*(a1 + 84) + 224 * v15 + 56) + 32 * a1[16];
          result = addNode(*a1, (a1 + 360), *(v23 + 8), *(v23 + 10) + 1, 1, a1[340]);
          v21 = a1 + 16;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

LABEL_11:
          v15 = *(*(*v12 + 224 * v15 + 56) + 32 * *v21 + 10) + 1;
          goto LABEL_21;
        }
      }

      v24 = v15;
      if (v15 < v13)
      {
        v25 = (*v12 + 224 * v15 + 56);
        while (1)
        {
          v26 = *v25;
          if (*v25)
          {
            if (*(v26 + 32 * *v16) == 1 || *(v26 + 32 * *v17) == 1)
            {
              break;
            }
          }

          ++v18;
          v25 += 28;
          if (v13 == v18)
          {
            v15 = v13;
            goto LABEL_20;
          }
        }

        v15 = v18;
      }

LABEL_20:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "handle in between node (%d,%d)", v9, v10, v11, v14);
      result = addNode(*a1, (a1 + 360), v24, v15, 1, a1[340]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_21:
      v14 = v15;
      v13 = a1[340];
    }

    while (v15 < v13);
  }

  return printLevel(*(a1 + 277), a1 + 136, *(a1 + 137), a1 + 552, a1 + 84, (a1 + 4), (a1 + 360), "LEVEL0");
}

uint64_t checkStructure(uint64_t a1, unsigned __int16 **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO checkStructure()", a6, a7, a8, 0);
  v13 = *(a2 + 4);
  if (!*(a2 + 4))
  {
    return 0;
  }

  v14 = 0;
  for (i = *a2; ; i += 16)
  {
    v16 = v14 + 1;
    if (v14 + 1 < v13 && i[1] != i[16])
    {
      break;
    }

    if (*(i + 1) == 1)
    {
      v17 = *(*(a1 + 672) + 224 * *i + 56);
      if (!v17 || !*(v17 + 32 * *(a1 + 32)))
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "WARNING : wordindex=%d starts node %d but syntactic phrase doesnt start here", v10, v11, v12, *i);
        return 0;
      }
    }

    ++v14;
    if (v13 == v16)
    {
      return 0;
    }
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "nodeindex=%d and %d do not follow in sequence", v10, v11, v12, v14);
  return 2315264000;
}

uint64_t createLevel1ProsodicStructure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __b = 0u;
  v39 = 0u;
  memset(v37, 0, 12);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO createLevel1ProsodicStructure()", a6, a7, a8, 0);
  if (*(a1 + 728))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing node %d", v9, v10, v11, v13);
      result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, (*(a1 + 720) + 32 * v12), v12);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      cstdlib_memset(&__b, 0, 0x20uLL);
      LOWORD(__b) = v15;
      v17 = *(a1 + 720);
      v18 = (v17 + 32 * v12);
      WORD1(__b) = v18[1];
      v19 = *(v18 + 1);
      DWORD1(__b) = v19;
      DWORD1(v39) = 1;
      v20 = v13 + 1;
      if (v20 != *(a1 + 728))
      {
        if (v19 == 2)
        {
          if (v15 != *v18)
          {
            cstdlib_memset(&__b, 0, 0x20uLL);
            LOWORD(__b) = v15;
            WORD1(__b) = *(*(a1 + 720) + 32 * v12);
            DWORD1(__b) = 1;
            DWORD1(v39) = 1;
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding (S) node before this token node", v21, v22, v23, 0);
            result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, &__b, 0);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = addNewNode(*a1, a1 + 736, &__b, *(a1 + 728));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v17 = *(a1 + 720);
          }

          cstdlib_memcpy(&__b, (v17 + 32 * v12), 0x20uLL);
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  token node - copy verbatim", v24, v25, v26, 0);
LABEL_20:
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding new node", v27, v28, v29, 0);
          result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, &__b, 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = addNewNode(*a1, a1 + 736, &__b, *(a1 + 728));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v15 = WORD1(__b);
          v14 = v20;
        }

        else
        {
          v36 = 0;
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  apply general rules on WordIdx %d", v9, v10, v11, *v18);
          v30 = 0;
          v31 = 0;
          WORD2(v37[0]) = *(*(a1 + 720) + 32 * v12);
          LODWORD(v37[0]) = 4;
          *(v37 + 6) = 0;
          while (!HIDWORD(v36))
          {
            if (v31 >= *(a1 + 168))
            {
              goto LABEL_23;
            }

            result = matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, (*(a1 + 160) + v30), v37, &v36 + 1, &v36);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (HIDWORD(v36) == 1)
            {
              log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  general rule %d FIRED -> set bndWeight = %d.%d", v27, v28, v29, v31);
            }

            ++v31;
            v30 += 32;
          }

          if (HIDWORD(v36) == 1)
          {
            HIDWORD(__b) = v36;
            goto LABEL_20;
          }

LABEL_23:
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  no rules fire", v27, v28, v29, 0);
        }
      }

      v13 = ++v12;
      if (v12 >= *(a1 + 728))
      {
        v32 = v14;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v15 = 0;
    v32 = 0;
LABEL_27:
    if (v15 == *(a1 + 680))
    {
      return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "LEVEL1");
    }

    cstdlib_memset(&__b, 0, 0x20uLL);
    LOWORD(__b) = v15;
    WORD1(__b) = *(a1 + 680);
    *(&__b + 4) = *(*(a1 + 720) + 32 * v32 + 4);
    FLOATSUR_SET_INT((&__b | 0xC), 50, 0);
    DWORD1(v39) = 1;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding end node", v33, v34, v35, 0);
    result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, &__b, 0);
    if ((result & 0x80000000) == 0)
    {
      result = addNewNode(*a1, a1 + 736, &__b, *(a1 + 728));
      if ((result & 0x80000000) == 0)
      {
        return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "LEVEL1");
      }
    }
  }

  return result;
}

uint64_t setLevel1StructureWeights(uint64_t a1)
{
  v77 = 0;
  v76 = 0;
  v75 = 0uLL;
  v2 = isStrSetting(a1 + 8, "PHRASE_WEIGHT_ALG", "AVERAGE");
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setLevel1StructureWeights(bApplyWeighting=%d)", v3, v4, v5, 0);
  v9 = (a1 + 736);
  if (!*(a1 + 744))
  {
    return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "AFTER SET PHRASEWEIGHT");
  }

  v10 = 0;
  while (1)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing node %d", v6, v7, v8, v10);
    result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, (*(a1 + 736) + 32 * v10), v10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v12 = (*v9 + 32 * v10);
    if (*(v12 + 1) == 2)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "skip token node", v6, v7, v8, 0);
    }

    else
    {
      v13 = *(*(a1 + 672) + 224 * *v12 + 56);
      if (v13 && *(v13 + 32 * *(a1 + 32)) == 1)
      {
        v73 = v2;
        v74 = 0;
        FLOATSUR_SET_INT(&v74 + 2, 0, 0);
        FLOATSUR_SET_INT(&v74, 0, 0);
        v17 = (*v9 + 32 * v10);
        v18 = *v17;
        if (v18 < v17[1])
        {
          do
          {
            FLOATSUR_PLUS_INT(&v74, &v74, *(*(a1 + 672) + 224 * v18 + 24), 0);
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  word[%d] : nodeSyllableWeight=%d.%d (word[%d].nsyll=%d)", v19, v20, v21, v18);
            v22 = 0;
            v23 = 0;
            v77 = 0;
            do
            {
              if (v23 >= *(a1 + 216))
              {
                break;
              }

              WORD2(v75) = v18;
              LODWORD(v75) = 1;
              *(&v75 + 6) = 0;
              result = matchMMAPREGEX2NUM_TRule((a1 + 8), a1 + 672, (*(a1 + 208) + v22), &v75, &v77, &v74 + 2, v15, v16);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v24 = v77;
              if (v77 == 1)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  word[%d] : pos weight rule %d FIRED nodePOSWeight=%d.%d", v14, v15, v16, v18);
                v24 = v77;
              }

              ++v23;
              v22 += 10;
            }

            while (!v24);
            ++v18;
          }

          while (v18 < *(*v9 + 32 * v10 + 2));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted nodePOSWeight = %d.%d", v14, v15, v16, WORD2(v74));
        if (v2)
        {
          FLOATSUR_TIMES(&v74 + 2, &v74 + 2, (a1 + 200));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted nodePOSWeight = %d.%d", v25, v26, v27, WORD2(v74));
        v31 = 0;
        v32 = 0;
        v77 = 0;
        do
        {
          if (v32 >= *(a1 + 240))
          {
            break;
          }

          matchMAPNUMNUM_TRule(*(a1 + 232) + v31, &v74, &v77);
          v33 = v77;
          if (v77 == 1)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  syll weight rule %d FIRED nodeSyllableWeight=%d.%d", v28, v29, v30, v32);
            v33 = v77;
          }

          ++v32;
          v31 += 12;
        }

        while (!v33);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted nodeSyllableWeight = %d.%d", v28, v29, v30, v74);
        if (v2)
        {
          FLOATSUR_TIMES(&v74, &v74, (a1 + 224));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted nodeSyllableWeight = %d.%d", v34, v35, v36, v74);
        if (*(a1 + 256))
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  apply %d gen weight rules", v37, v38, v39, *(a1 + 256));
          v40 = heap_Calloc(*(*a1 + 8), 1, (4 * *(a1 + 256)) | 1);
          if (!v40)
          {
            log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v41, v37, v38, v39, v71);
            return 2315264010;
          }

          v42 = v40;
          v43 = *(a1 + 736);
          v46 = (v43 + 32 * v10);
          v44 = *v46;
          v45 = v46[1];
          LODWORD(v46) = *(a1 + 256);
          if (v44 < v45)
          {
            v47 = *(a1 + 256);
            do
            {
              if (v47)
              {
                v48 = 0;
                v72 = v44;
                while (2)
                {
                  v77 = 0;
                  WORD2(v75) = v44;
                  LODWORD(v75) = 4;
                  *(&v75 + 6) = 0;
                  v49 = *(*(a1 + 248) + 12 * v48 + 8);
                  v50 = 32 * v49;
                  do
                  {
                    if (v49 >= *(*(a1 + 248) + 12 * v48 + 10))
                    {
                      break;
                    }

                    if ((matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, (*(a1 + 264) + v50), &v75, &v77, &v76) & 0x80000000) != 0)
                    {
                      heap_Free(*(*a1 + 8), v42);
                      return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "AFTER SET PHRASEWEIGHT");
                    }

                    v51 = v77;
                    if (v77 == 1)
                    {
                      *(v42 + 4 * v48) = v76;
                      v51 = v77;
                      if (v77 == 1)
                      {
                        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  general weight rule %d FIRED genRuleValues[%d]=%d.%d", v37, v38, v39, v49);
                        v51 = v77;
                      }
                    }

                    ++v49;
                    v50 += 32;
                  }

                  while (!v51);
                  v46 = *(a1 + 256);
                  ++v48;
                  LOWORD(v44) = v72;
                  if (v48 < v46)
                  {
                    continue;
                  }

                  break;
                }

                v43 = *v9;
                v47 = *(a1 + 256);
                v2 = v73;
              }

              LOWORD(v44) = *(*(*(a1 + 672) + 224 * v44 + 56) + 32 * *(a1 + 32) + 10) + 1;
            }

            while (*(v43 + 32 * v10 + 2) > v44);
          }

          if (v46)
          {
            v52 = 0;
            v53 = 4;
            v54 = v42;
            do
            {
              log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted genRuleValues[%d]  = %d.%d", v37, v38, v39, v52);
              if (v2)
              {
                FLOATSUR_TIMES(v54, v54, (*(a1 + 248) + v53));
              }

              log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted genRuleValues[%d]  = %d.%d", v55, v56, v57, v52++);
              v54 += 2;
              v53 += 12;
            }

            while (v52 < *(a1 + 256));
          }
        }

        else
        {
          v42 = 0;
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  compute final phraseweight = %d.%d", v37, v38, v39, *(*(a1 + 736) + 32 * v10 + 8));
        FLOATSUR_PLUS(&v75 + 6, &v74 + 2, &v74);
        v58 = (*(a1 + 736) + 32 * v10 + 8);
        FLOATSUR_PLUS(v58, v58, &v75 + 6);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add weighted nodePOSWeight(%d.%d) and nodeSyllableWeight(%d.%d) -> %d.%d", v59, v60, v61, WORD2(v74));
        if (*(a1 + 256))
        {
          v65 = 0;
          v66 = v42;
          do
          {
            v67 = (*(a1 + 736) + 32 * v10 + 8);
            FLOATSUR_PLUS(v67, v67, v66);
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add weighted genRuleValues[%d](%d.%d) -> %d.%d", v68, v69, v70, v65++);
            v66 += 2;
          }

          while (v65 < *(a1 + 256));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  final phraseweight = %d.%d", v62, v63, v64, *(*(a1 + 736) + 32 * v10 + 8));
        if (v42)
        {
          heap_Free(*(*a1 + 8), v42);
        }
      }
    }

    if (++v10 >= *(a1 + 744))
    {
      return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "AFTER SET PHRASEWEIGHT");
    }
  }
}

uint64_t setLevel1Boundaries(uint64_t a1)
{
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  FLOATSUR_PLUS(&v53 + 2, (a1 + 396), (a1 + 400));
  FLOATSUR_PLUS(&v55, (a1 + 392), &v53 + 2);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setLevel1Boundaries(threshold_bnd_val_weak=%d threshold_weak_frag=%d threshold_bnd_val_strong=%d)", v2, v3, v4, *(a1 + 380));
  getLowestBnd(a1, &v54);
  v5 = v54;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "START lowestBnd : node %d", v6, v7, v8, v54);
  if (HIDWORD(v54) == 1 && FLOATSUR_LT((*(a1 + 736) + 32 * v5 + 12), (a1 + 376)))
  {
    v12 = 0;
    v13 = (a1 + 736);
    v14 = v5;
    while (1)
    {
      v15 = v14;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "LOOP[%d] lowestBnd : node %d (bndWeight=%d.%d)", v9, v10, v11, v12);
      FLOATSUR_SET(&v51 + 1, (*(a1 + 736) + 32 * v5 + 8));
      FLOATSUR_SET_INT(&v51, 0, 0);
      v16 = v15 + 1;
      if (v16 < *(a1 + 744))
      {
        FLOATSUR_SET(&v51, (*v13 + 32 * v16 + 8));
      }

      FLOATSUR_SET(&v50, (*(a1 + 736) + 32 * v5 + 12));
      FLOATSUR_TIMES(&v53 + 2, &v51 + 2, (a1 + 392));
      FLOATSUR_TIMES(&v53, &v51, (a1 + 396));
      FLOATSUR_TIMES(&v52 + 2, &v50, (a1 + 400));
      FLOATSUR_PLUS(&v52, &v53 + 2, &v53);
      FLOATSUR_PLUS(&v52, &v52, &v52 + 2);
      FLOATSUR_DIV(&v53 + 2, &v52, &v55);
      FLOATSUR_TIMES_INT(&v50 + 1, &v53 + 2, 0xAu, 0);
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted mean bndVal = %d.%d (thisphraseWeight=%d.%d thisBndWeight=%d.%d nextphraseWeight=%d.%d)", v17, v18, v19, WORD2(v50));
      if (!FLOATSUR_LT(&v50 + 2, (a1 + 380)) && !FLOATSUR_LT(&v51 + 2, (a1 + 388)) && !FLOATSUR_LT(&v51, (a1 + 388)))
      {
        break;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  [bnd_val < threshold_weak(%d.%d) or one thisphraseWeight or nextphraseWeight < threshold_weak_frag(%d.%d)] remove node (merge %d and %d)", v20, v21, v22, *(a1 + 380));
      if (v16 == *(a1 + 744))
      {
        goto LABEL_10;
      }

      v26 = (*v13 + 32 * v5);
      *(*v13 + 32 * (v15 + 1)) = *v26;
      FLOATSUR_PLUS(v26 + 20, v26 + 20, v26 + 4);
      removeNode((a1 + 736), v15);
LABEL_12:
      getLowestBnd(a1, &v54);
      v5 = v54;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "END LOOP lowestBnd : node %d", v27, v28, v29, v54);
      if (HIDWORD(v54) != 1)
      {
        goto LABEL_23;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "ITERATION %d", v30, v31, v32, v12);
      result = printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "ITER");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (FLOATSUR_EQUAL_INT((*v13 + 32 * v5 + 12), 0, 0))
      {
        *(*(a1 + 736) + 32 * v5 + 24) = 1;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  NO CHANGE - marked node as processed", v34, v35, v36, 0);
      }

      ++v12;
      v37 = FLOATSUR_LT((*v13 + 32 * v5 + 12), (a1 + 376));
      v14 = v5;
      if (!v37)
      {
        goto LABEL_23;
      }
    }

    if (FLOATSUR_LT(&v50 + 2, (a1 + 384)))
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set WEAK BND", v38, v39, v40, 0);
      v41 = *(a1 + 736) + 32 * v5;
      v42 = 3;
    }

    else
    {
      if (!FLOATSUR_GTOREQUAL(&v50 + 2, (a1 + 384)))
      {
LABEL_10:
        *(*(a1 + 736) + 32 * v5 + 24) = 1;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  NO CHANGE - marked node as processed", v23, v24, v25, 0);
        goto LABEL_12;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set STRONG BND", v23, v24, v25, 0);
      v41 = *(a1 + 736) + 32 * v5;
      v42 = 4;
    }

    *(v41 + 20) = v42;
    *(v41 + 16) = HIDWORD(v50);
    goto LABEL_10;
  }

LABEL_23:
  if (*(a1 + 744))
  {
    v43 = 0;
    v44 = *(a1 + 736);
    v45 = 20;
    do
    {
      if (*(v44 + v45) <= 1u)
      {
        v46 = FLOATSUR_GT((v44 + v45 - 8), (a1 + 376));
        v44 = *(a1 + 736);
        if (v46)
        {
          *(v44 + v45) = 4;
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set node %d STRONG BND", v47, v48, v49, v43);
          v44 = *(a1 + 736);
        }
      }

      *(*(a1 + 672) + 224 * *(v44 + v45 - 18) - 151) = *(v44 + v45);
      ++v43;
      v45 += 32;
    }

    while (v43 < *(a1 + 744));
  }

  return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), a1 + 8, a1 + 736, "AFTER SET BOUNDARIES");
}

uint64_t getLowestBnd(uint64_t result, unsigned __int16 *a2)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v2 = *(result + 744);
  if (*(result + 744))
  {
    v4 = result;
    v5 = 0;
    for (i = 24; *(*(result + 736) + i) == 1; i += 32)
    {
      if (v2 == ++v5)
      {
        return result;
      }
    }

    v7 = v5;
    *a2 = v5;
    *(a2 + 1) = 1;
    v8 = v5;
    if (v2 > v5)
    {
      v9 = i - 24;
      v8 = v5;
      do
      {
        v10 = *(v4 + 736);
        if (*(v10 + v9 + 20) == 1)
        {
          if ((result = FLOATSUR_LT((v10 + v9 + 12), (v10 + 32 * *a2 + 12)), v11 = *(v4 + 736), result) && !*(v11 + v9 + 24) || (result = FLOATSUR_LT_INT((v11 + v9 + 12), 0, 0), result))
          {
            v8 = v5;
            *a2 = v5;
            *(a2 + 1) = 1;
          }
        }

        ++v5;
        v2 = *(v4 + 744);
        v9 += 32;
      }

      while (v5 < v2);
    }

    if (v8 == v7 && v8 < v2 && !*(*(v4 + 736) + i))
    {
      *a2 = v7;
      *(a2 + 1) = 1;
    }
  }

  return result;
}

uint64_t getProsodicStructure(uint64_t a1)
{
  cstdlib_memset((a1 + 720), 0, 0x10uLL);
  cstdlib_memset((a1 + 736), 0, 0x10uLL);
  result = createLevel0ProsodicStructure(a1, v2, v3, v4, v5, v6, v7, v8);
  if ((result & 0x80000000) == 0)
  {
    result = checkStructure(a1, (a1 + 720), v10, v11, v12, v13, v14, v15);
    if ((result & 0x80000000) == 0)
    {
      if (*(a1 + 928))
      {
        result = simplifiedTokenPhrasing(*a1, (a1 + 720), (a1 + 672), (a1 + 8));
        if ((result & 0x80000000) == 0)
        {
          v23 = *a1;

          return threePassIgtreePhrasing(v23, a1 + 720, (a1 + 672), a1 + 8, (a1 + 752));
        }
      }

      else if (*(a1 + 816))
      {
        result = simplifiedTokenPhrasing(*a1, (a1 + 720), (a1 + 672), (a1 + 8));
        if ((result & 0x80000000) == 0)
        {
          v24 = *a1;

          return twoPassIgtreePhrasing(v24, a1 + 720, (a1 + 672), a1 + 8, (a1 + 752));
        }
      }

      else if (*(a1 + 760))
      {
        result = simplifiedTokenPhrasing(*a1, (a1 + 720), (a1 + 672), (a1 + 8));
        if ((result & 0x80000000) == 0)
        {
          v25 = *a1;

          return singlePassIgtreePhrasing(v25, a1 + 720, (a1 + 672), a1 + 8, (a1 + 752));
        }
      }

      else
      {
        result = createLevel1ProsodicStructure(a1, v16, v17, v18, v19, v20, v21, v22);
        if ((result & 0x80000000) == 0)
        {
          result = checkStructure(a1, (a1 + 736), v26, v27, v28, v29, v30, v31);
          if ((result & 0x80000000) == 0)
          {
            result = setLevel1StructureWeights(a1);
            if ((result & 0x80000000) == 0)
            {

              return setLevel1Boundaries(a1);
            }
          }
        }
      }
    }
  }

  return result;
}

void *freeProsodicStructure(void *a1)
{
  v2 = a1[90];
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    a1[90] = 0;
  }

  v3 = a1[92];
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
    a1[92] = 0;
  }

  return cstdlib_memset(a1 + 90, 0, 0x20uLL);
}

uint64_t getPwPredict(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, _WORD *a6, uint64_t a7)
{
  v7 = *a5;
  if (result)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = result;
    while (1)
    {
      v13 = 0;
      v14 = 0;
      v15 = v9;
      v17 = 0.0;
      do
      {
        v16 = a2 + 28 * (v10 + v8);
        if (v17 < *(v16 + 4 * v13))
        {
          v17 = *(v16 + 4 * v13);
          v14 = v13;
        }

        ++v13;
      }

      while (v13 != 7);
      if (a3 > v10 && v8 == *(a4 + 2 * v10))
      {
        v18 = 0;
        v14 = 0;
        v19 = v10 + 1;
        v20 = a2 + 28 * (v10 + v11);
        v21 = 0.0;
        do
        {
          if (v21 < *(v20 + 4 * v18))
          {
            v21 = *(v20 + 4 * v18);
            v14 = v18;
          }

          ++v18;
        }

        while (v18 != 7);
        result = 0;
        v10 = v19;
      }

      else
      {
        result = 1;
      }

      v22 = *(a7 + 4 * v8);
      v23 = v22 == 1 || v14 == 0;
      if (v23 || v14 == 3)
      {
        break;
      }

      v25 = (v7 + 2 * v8);
      *v25 = 0;
      if ((result & 1) == 0)
      {
        v26 = 1;
LABEL_30:
        *v25 = 1;
        v9 = (v15 + v26);
        goto LABEL_31;
      }

      v9 = v15;
LABEL_31:
      ++v8;
      ++v11;
      if (v8 == v12)
      {
        goto LABEL_34;
      }
    }

    v9 = (v15 + 1);
    *(v7 + 2 * v8) = 1;
    if (!v8)
    {
      goto LABEL_31;
    }

    if (v22 != 1)
    {
      goto LABEL_31;
    }

    v25 = (v7 + 2 * (v8 - 1));
    result = *v25;
    if (*v25)
    {
      goto LABEL_31;
    }

    v26 = 2;
    goto LABEL_30;
  }

  v12 = 0;
  LOWORD(v9) = 0;
LABEL_34:
  v27 = v7 + 2 * v12;
  if (*(v27 - 2) != 1)
  {
    LOWORD(v9) = v9 + 1;
    *(v27 - 2) = 1;
  }

  *a6 = v9;
  return result;
}

uint64_t findLabel(uint64_t result, uint64_t a2, _WORD *a3)
{
  v3 = 0;
  v4 = 0;
  v6 = 0.0;
  do
  {
    v5 = a2 + 28 * result;
    if (v6 < *(v5 + 4 * v3))
    {
      v6 = *(v5 + 4 * v3);
      v4 = v3;
    }

    ++v3;
  }

  while (v3 != 7);
  *a3 = v4;
  return result;
}

uint64_t storeResult(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t *a6, _WORD *a7, _DWORD *a8, unsigned __int8 a9, const char **a10)
{
  v51 = *a6;
  if (!a3)
  {
LABEL_51:
    result = 0;
    *a6 = v51;
    return result;
  }

  v11 = 0;
  v49 = 0;
  v12 = 0;
  v50 = 0;
  v13 = a2 + 64;
  if (a9)
  {
    v14 = a10 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  v46 = v15;
  v44 = a3;
  v45 = a2;
  while (1)
  {
    v16 = a2 + 40 * v11;
    if (v46)
    {
LABEL_13:
      v20 = (a4 + 2 * v11);
      v21 = *v20;
      v22 = 1;
      if (*v20)
      {
        v23 = a8;
        v24 = v51;
        v25 = v49;
        if (v21 == 1)
        {
          goto LABEL_32;
        }

        if (!*a8)
        {
          goto LABEL_50;
        }

        goto LABEL_16;
      }

      v23 = a8;
      v24 = v51;
      v25 = v49;
    }

    else
    {
      v17 = *v16;
      v19 = a9;
      v18 = a10;
      while (!cstdlib_strstr(v17, *v18))
      {
        ++v18;
        if (!--v19)
        {
          goto LABEL_13;
        }
      }

      v22 = 0;
      v20 = (a4 + 2 * v11);
      v25 = v49;
      if (*v20)
      {
        v23 = a8;
        v24 = v51;
        goto LABEL_32;
      }

      LOBYTE(v21) = 1;
      v23 = a8;
      v24 = v51;
    }

    if (!*v23 || v25 >= *(v23 + 2))
    {
      if (!v22)
      {
        goto LABEL_32;
      }

LABEL_31:
      ++v12;
      goto LABEL_50;
    }

    if (*(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
    {
      LOBYTE(v21) = 1;
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_31;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

LABEL_16:
    if (v25 < *(v23 + 2) && *(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
    {
      LOBYTE(v22) = 1;
      goto LABEL_32;
    }

LABEL_50:
    ++v11;
    v13 += 40;
    a2 = v45;
    if (v11 == v44)
    {
      goto LABEL_51;
    }
  }

  LOBYTE(v22) = 0;
LABEL_32:
  v26 = v12 + 1;
  *(v24 + 184 * v50 + 8) = v26;
  if (*v23 && v25 < *(v23 + 2) && *(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
  {
    if (!*v20)
    {
      v27 = heap_Realloc(*(a1 + 8), v24, 184 * *a7 + 184);
      if (!v27)
      {
        return 2315264010;
      }

      v52 = v27;
      cstdlib_memset((v27 + 184 * *a7), 0, 0xB8uLL);
      v24 = v52;
      ++*a7;
      *v20 = 1;
      v25 = v49;
    }

    ++v25;
  }

  v28 = v24 + 184 * v50;
  v51 = v24;
  v49 = v25;
  if (*(a5 + 2 * v11) == 1)
  {
    *(v28 + 72) = 1;
  }

  else
  {
    *(v28 + 72) = 0;
    if ((v22 & 1) == 0 && !*v20)
    {
      v29 = heap_Realloc(*(a1 + 8), v24, 184 * *a7 + 184);
      if (!v29)
      {
        return 2315264010;
      }

      v51 = v29;
      cstdlib_memset((v29 + 184 * *a7), 0, 0xB8uLL);
      ++*a7;
    }
  }

  v30 = v26;
  v31 = 2 * v26;
  v32 = heap_Alloc(*(a1 + 8), v31);
  v36 = (v51 + 184 * v50);
  *v36 = v32;
  if (v32)
  {
    v36[7] = "";
    if (v26)
    {
      v37 = 0;
      v38 = (v13 - 40 * v30);
      do
      {
        v39 = *v38;
        v38 += 20;
        *(*v36 + v37) = v39;
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "pw:%d , tid=%d", v33, v34, v35, v50);
        v37 += 2;
      }

      while (v31 != v37);
    }

    v12 = 0;
    ++v50;
    goto LABEL_50;
  }

  return 2315264010;
}

uint64_t storePwResult(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v22 = *a5;
  v13 = a2 + 64;
  v14 = a3;
  while (*(a4 + 2 * v9) != 1)
  {
    if (*(a4 + 2 * v9))
    {
      if (!*a6)
      {
        goto LABEL_21;
      }
    }

    else if (!*a6 || *(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      ++v11;
      goto LABEL_21;
    }

    if (*(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      break;
    }

LABEL_21:
    ++v9;
    v13 += 40;
    if (v9 == v14)
    {
      return 0;
    }
  }

  v15 = v11 + 1;
  v16 = v22 + 184 * v12;
  *(v16 + 8) = v15;
  v17 = v15;
  v18 = heap_Alloc(*(a1 + 8), 2 * v15);
  *v16 = v18;
  if (v18)
  {
    *(v16 + 56) = "";
    if (v17)
    {
      v19 = (v13 - 40 * v17);
      do
      {
        v20 = *v19;
        v19 += 20;
        *v18++ = v20;
        --v17;
      }

      while (v17);
    }

    if (*a6 && *(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      ++v10;
    }

    v11 = 0;
    ++v12;
    goto LABEL_21;
  }

  return 2315264010;
}

uint64_t pw_nn_process(uint64_t a1, uint64_t ****a2, uint64_t *a3, uint64_t a4, uint64_t *a5, _WORD *a6, uint64_t a7, void *a8, int a9, _DWORD *a10, unsigned __int8 a11, const char **a12, int a13)
{
  v70 = 0;
  v78[0] = *a5;
  v77 = 0;
  v20 = 2315264010;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v21 = 2 * a4;
  v22 = heap_Alloc(*(a1 + 8), v21);
  v76 = v22;
  if (!v22)
  {
    v28 = 0;
    v24 = 0;
    goto LABEL_48;
  }

  v23 = v22;
  v66 = a2;
  v24 = heap_Alloc(*(a1 + 8), v21);
  if (!v24)
  {
    goto LABEL_28;
  }

  v65 = a6;
  v67 = a3;
  v64 = a5;
  if (a4)
  {
    v25 = 0;
    v26 = 0;
    v27 = v67;
    do
    {
      if (checkAttachedPunc(*v27))
      {
        *(v24 + 2 * v26++) = v25;
      }

      ++v25;
      v27 += 5;
    }

    while (a4 != v25);
  }

  else
  {
    v26 = 0;
  }

  v29 = heap_Calloc(*(a1 + 8), a4, 4);
  v71 = v29;
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = v29;
  v31 = *(a1 + 8);
  if (a9 != 1)
  {
    v74 = heap_Calloc(v31, (100 * a4), 4);
    if (!v74)
    {
      v28 = 0;
      v20 = 2315264010;
      goto LABEL_50;
    }

    Embedding = getEmbedding(a1, a7, a8, a9, a4, v67, v26, v24, &v74, &v71, a13);
    if ((Embedding & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    Embedding = fi_predict(v66[1], &v74, a4, &v75, v44, v45, v46, v47);
    if ((Embedding & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    getPwPredict(a4, v75, v26, v24, &v76, &v77, v30);
    v48 = v77;
    *a6 = v77;
    v49 = heap_Calloc(*(a1 + 8), v48, 184);
    v78[0] = v49;
    if (!v49)
    {
      goto LABEL_29;
    }

    v50 = v49;
    Embedding = storePwResult(a1, v67, a4, v23, v78, a10);
    if ((Embedding & 0x80000000) != 0)
    {
LABEL_30:
      v28 = 0;
      v20 = Embedding;
      goto LABEL_48;
    }

    v72 = heap_Calloc(*(a1 + 8), 100 * v48, 4);
    if (!v72)
    {
      goto LABEL_29;
    }

    if (v66[1])
    {
      v20 = fi_predict(*v66, &v72, v48, &v75, v51, v52, v53, v54);
      if ((v20 & 0x80000000) != 0)
      {
LABEL_28:
        v28 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v20 = 0;
    }

    if (v48)
    {
      v58 = 0;
      for (i = 0; i != v48; ++i)
      {
        v60 = 0;
        v61 = 0;
        v62 = 0.0;
        do
        {
          if (v62 < *(v75 + v58 + 4 * v60))
          {
            v62 = *(v75 + v58 + 4 * v60);
            v61 = v60;
          }

          ++v60;
        }

        while (v60 != 4);
        *(v50 + 184 * i + 72) = v61 == 3 || v61 == 0 || v48 - 1 == i;
        v58 += 16;
      }
    }

    if (v72)
    {
      heap_Free(*(a1 + 8), v72);
      v28 = 0;
      v72 = 0;
    }

    else
    {
      v28 = 0;
    }

    v56 = v64;
LABEL_77:
    *v56 = v50;
    if (!v28)
    {
      goto LABEL_54;
    }

LABEL_53:
    heap_Free(*(a1 + 8), v28);
    goto LABEL_54;
  }

  v32 = heap_Alloc(v31, v21);
  v73 = v32;
  if (!v32)
  {
LABEL_29:
    v28 = 0;
    v20 = 2315264010;
    goto LABEL_48;
  }

  v33 = v32;
  v34 = *(a1 + 8);
  if (a13)
  {
    v28 = 0;
    v74 = heap_Calloc(v34, 100 * (a4 + v26), 4);
    v35 = v26;
    v36 = v67;
    if (v74)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v28 = heap_Alloc(v34, v21);
    v70 = v28;
    if (v28)
    {
      v36 = v67;
      v37 = getcharNum(a4, v67, &v71, &v77 + 1, v26, v24, &v70);
      if ((v37 & 0x80000000) != 0)
      {
LABEL_44:
        v20 = v37;
        goto LABEL_47;
      }

      v35 = HIWORD(v77);
      v74 = heap_Calloc(*(a1 + 8), HIWORD(v77) + 2, 4);
      if (v74)
      {
LABEL_16:
        v37 = getEmbedding(a1, a7, a8, 1, a4, v36, v26, v24, &v74, &v71, a13);
        if ((v37 & 0x80000000) == 0)
        {
          if (a4 == 1)
          {
            v42 = 1;
            *v23 = 1;
            v69 = v33;
            *v33 = 1;
            LOWORD(v77) = 1;
            if (v74)
            {
              heap_Free(*(a1 + 8), v74);
              v74 = 0;
              v42 = 1;
            }

LABEL_41:
            v20 = 2315264010;
            v56 = v64;
            *v65 = v42;
            v78[0] = heap_Calloc(*(a1 + 8), v42, 184);
            if (v78[0])
            {
              v20 = storeResult(a1, v36, a4, v23, v69, v78, &v77, a10, a11, a12);
              if ((v20 & 0x80000000) == 0)
              {
                *v65 = v77;
                heap_Free(*(a1 + 8), v69);
                v73 = 0;
                v50 = v78[0];
                goto LABEL_77;
              }

              v33 = v69;
            }

            else
            {
              v33 = v69;
            }

            goto LABEL_47;
          }

          if (a13)
          {
            v55 = a4;
          }

          else
          {
            v55 = 2;
          }

          v37 = fi_predict(*v66, &v74, v55 + v35, &v75, v38, v39, v40, v41);
          if ((v37 & 0x80000000) == 0)
          {
            v69 = v33;
            getJointResult(&v76, &v73, a4, v26, v24, &v77, v75, v71, a13, v28);
            v42 = v77;
            goto LABEL_41;
          }
        }

        goto LABEL_44;
      }
    }
  }

  v20 = 2315264010;
LABEL_47:
  heap_Free(*(a1 + 8), v33);
LABEL_48:
  if (v74)
  {
    heap_Free(*(a1 + 8), v74);
  }

LABEL_50:
  if (v72)
  {
    heap_Free(*(a1 + 8), v72);
  }

  if (v28)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
  }

  if (v71)
  {
    heap_Free(*(a1 + 8), v71);
  }

  heap_Free(*(a1 + 8), v76);
  return v20;
}

uint64_t getcharNum(unsigned int a1, uint64_t *a2, uint64_t *a3, _WORD *a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  v23 = 0;
  v22 = 0;
  v7 = *a3;
  if (a1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a7;
    v15 = a1;
    do
    {
      UTF8Char = utf8_getUTF8Char(*a2, 0, &v22);
      if ((UTF8Char & 0x80000000) != 0)
      {
        break;
      }

      if (utf8_IsChineseLetter(&v22))
      {
        v17 = Utf8_Utf8NbrOfSymbols(*a2) - 1;
        *(v14 + 2 * v11) = v17;
        if (a5 > v13 && v11 == *(a6 + 2 * v13))
        {
          ++v13;
        }
      }

      else
      {
        if (a5 > v13 && v11 == *(a6 + 2 * v13))
        {
          ++v13;
          v18 = Utf8_Utf8NbrOfSymbols(*a2);
          v17 = 1;
          if (v18 >= 3)
          {
            *(v7 + 4 * v11) = 1;
            v17 = 2;
          }
        }

        else
        {
          v17 = 1;
          *(v7 + 4 * v11) = 1;
        }

        *(v14 + 2 * v11) = v17;
      }

      v12 += v17;
      ++v11;
      a2 += 5;
    }

    while (v15 != v11);
  }

  else
  {
    v12 = 0;
    UTF8Char = 0;
  }

  *a3 = v7;
  *a4 = v12;
  return UTF8Char;
}

uint64_t getEmbedding(uint64_t a1, uint64_t a2, void *a3, int a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, float **a9, uint64_t *a10, int a11)
{
  v89 = *MEMORY[0x277D85DE8];
  v85 = 0;
  if (!a4)
  {
    return 0;
  }

  v15 = a2;
  v16 = *a10;
  v86 = 0;
  v17 = *a9;
  result = (*(a2 + 40))(*a3, a3[1], &v86 + 4);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (a11)
  {
    result = (*(v15 + 40))(a3[2], a3[3], &v86);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (HIDWORD(v86) != v86)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", v19, v20, v21, "ERROR: word embedding and character embedding do not have same dimension");
      return 2315264000;
    }
  }

  else
  {
    *v17 = 101.0;
    v17 += HIDWORD(v86);
  }

  if (!a5)
  {
LABEL_107:
    if (!a11)
    {
      *v17 = 102.0;
    }

    return result;
  }

  v22 = 0;
  v80 = 0;
  v83 = 0;
  v76 = a5;
  v67 = a7;
  v70 = a6;
  v71 = v16;
  v82 = v15;
  while (1)
  {
    v23 = cstdlib_strlen(*(a6 + 40 * v22));
    v24 = 0;
    v84 = *(a6 + 40 * v22);
    if (a7)
    {
      v25 = v83;
      if (v83 < a7)
      {
        if (v22 == *(a8 + 2 * v83))
        {
          if (v23 == 3 && (*__s = 0, v26 = 3, v80 = 1, v27 = v23, utf8_Utf8ToUtf32_Tolerant(v84, 3u, &__s[4], 1u, __s), v23 = v27, *&__s[4] == 8230))
          {
            v24 = 0;
          }

          else
          {
            v80 = 0;
            v85 = v84[v23 - 1];
            v26 = v23 - 1;
            v84[(v23 - 1)] = 0;
            v24 = 1;
          }

          *(a6 + 40 * v22 + 36) = 1;
          v23 = v26;
          v25 = v83 + 1;
        }

        else
        {
          v24 = 0;
          v80 = 0;
        }
      }
    }

    else
    {
      v25 = v83;
    }

    v83 = v25;
    v79 = v23;
    if (!a11)
    {
      break;
    }

    *(v16 + 4 * v22) = 0;
    result = (*(v15 + 56))(a3[2], a3[3], v84, v17);
    if (*v17 != 0.0 || result == 0)
    {
      goto LABEL_87;
    }

    v29 = HIDWORD(v86);
    v72 = a3[1];
    v73 = *a3;
    v68 = a3[2];
    v69 = a3[3];
    v88 = 0;
    *&__s[4] = 0;
    v30 = heap_Calloc(*(a1 + 8), HIDWORD(v86), 4);
    if (v30)
    {
      v35 = v30;
      v77 = v24;
      v36 = Utf8_Utf8NbrOfSymbols(v84);
      *__s = v36 - 1;
      if (v36 == 1)
      {
LABEL_64:
        heap_Free(*(a1 + 8), v35);
        a7 = v67;
        v24 = v77;
      }

      else
      {
        checkremoveNormalSym(v84, __s, 0x5Fu);
        checkremoveNormalSym(v84, __s, 0x2Du);
        v37 = *__s;
        if (*__s)
        {
          v38 = 0;
          v39 = 0;
          while (1)
          {
            v40 = v38;
            UTF8Char = utf8_getUTF8Char(v84, v38, &__s[4]);
            if (UTF8Char < 0)
            {
              goto LABEL_64;
            }

            v42 = UTF8Char;
            v43 = cstdlib_strlen(&__s[4]);
            if (!utf8_IsChineseLetter(&__s[4]))
            {
              break;
            }

            if (v37 == 1)
            {
              v44 = 115;
            }

            else if (v39)
            {
              v44 = 109;
            }

            else
            {
              v44 = 98;
            }

            __s[v43 + 4] = v44;
            __s[cstdlib_strlen(&__s[4]) + 4] = 0;
            v45 = (*(v82 + 56))(v73, v72, &__s[4], v35);
            if (*v35 == 0.0 && v45 != 0)
            {
              v46.n128_u32[0] = *v35;
              v42 = (*(v82 + 56))(v68, v69, "</s>", v17, v46);
LABEL_81:
              v25 = v83;
LABEL_82:
              *(v71 + 4 * v22) = 0;
              goto LABEL_83;
            }

            v42 = v45;
            if (!v29)
            {
              goto LABEL_81;
            }

            v48 = 0;
            v38 = v40 + v43;
            LOBYTE(v49) = 1;
            do
            {
              v50 = *&v35[v48];
              v49 = v49 & (v50 == 0.0);
              v17[v48] = v17[v48] + (v50 / v37);
              ++v48;
            }

            while (v29 > v48);
            if (++v39 >= v37)
            {
              v51 = 1;
            }

            else
            {
              v51 = v49;
            }

            v25 = v83;
            if (v51 == 1)
            {
              goto LABEL_82;
            }
          }

          if (cstdlib_strlen(&__s[4]) == 1)
          {
            a7 = v67;
            v61 = a1;
            v24 = v77;
            if (__s[4] - 48 >= 0xA)
            {
              if ((__s[4] & 0xDFu) - 65 >= 0x1A)
              {
                v62 = 0;
                goto LABEL_103;
              }

              v62 = 1;
              v63 = "ENG";
            }

            else
            {
              v62 = 0;
              v63 = "NUM";
            }
          }

          else
          {
            v62 = 0;
            v63 = "</s>";
            a7 = v67;
            v61 = a1;
            v24 = v77;
          }

          v42 = (*(v82 + 56))(v68, v69, v63, v17);
LABEL_103:
          *(v71 + 4 * v22) = v62;
          v25 = v83;
          goto LABEL_84;
        }

        v42 = (*(v82 + 56))(v68, v69, "</s>", v17);
LABEL_83:
        a7 = v67;
        v61 = a1;
        v24 = v77;
LABEL_84:
        heap_Free(*(v61 + 8), v35);
        if (!v42)
        {
          result = 0;
          a6 = v70;
          v15 = v82;
          goto LABEL_86;
        }
      }
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v31, v32, v33, v34, v66);
    }

    v15 = v82;
    result = (*(v82 + 56))(a3[2], a3[3], "</s>", v17);
    a6 = v70;
LABEL_86:
    v16 = v71;
LABEL_87:
    if (v25 && !v80 && v22 == *(a8 + 2 * (v25 - 1)))
    {
      v84[v79] = 0;
    }

    v17 += HIDWORD(v86);
    if (v24)
    {
      result = (*(v15 + 56))(a3[2], a3[3], &v85, v17);
      if (*v17 == 0.0 && result != 0)
      {
        v64.n128_f32[0] = *v17;
        result = (*(v15 + 56))(a3[2], a3[3], "</s>", v17, v64);
      }

      v17 += HIDWORD(v86);
    }

LABEL_98:
    if (++v22 == v76)
    {
      goto LABEL_107;
    }
  }

  v78 = v24;
  v52 = HIDWORD(v86);
  v53 = *(v16 + 4 * v22);
  v55 = *a3;
  v54 = a3[1];
  __s[8] = 0;
  *&__s[4] = 0;
  if (v53)
  {
    *v17 = 1.0;
    v17 += v52;
    if (v78)
    {
      result = (*(v15 + 72))(v55, v54, &v85, v17);
      if ((result & 0x80000000) != 0)
      {
        result = 0;
        *v17 = 100.0;
      }

      v17 += v52;
    }

    else
    {
      result = 0;
    }

    goto LABEL_74;
  }

  v74 = HIDWORD(v86);
  *__s = Utf8_Utf8NbrOfSymbols(v84) - 1;
  checkremoveNormalSym(v84, __s, 0x5Fu);
  checkremoveNormalSym(v84, __s, 0x2Du);
  v56 = *__s;
  if (!(v78 | *__s))
  {
    result = 0;
    *v17 = 100.0;
    a7 = v67;
LABEL_74:
    if (v83 && !v80 && v22 == *(a8 + 2 * (v83 - 1)))
    {
      v84[v79] = 0;
    }

    goto LABEL_98;
  }

  if (!*__s)
  {
    result = 0;
LABEL_69:
    if (v78)
    {
      v15 = v82;
      result = (*(v82 + 72))(v55, v54, &v85, v17);
      a7 = v67;
      a6 = v70;
      v16 = v71;
      if ((result & 0x80000000) != 0)
      {
        result = 0;
        *v17 = 100.0;
      }

      v17 += v74;
    }

    else
    {
      a7 = v67;
      a6 = v70;
      v16 = v71;
      v15 = v82;
    }

    goto LABEL_74;
  }

  v57 = 0;
  v58 = 0;
  while (1)
  {
    v59 = v57;
    result = utf8_getUTF8Char(v84, v57, &__s[4]);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v60 = cstdlib_strlen(&__s[4]);
    result = (*(v82 + 72))(v55, v54, &__s[4], v17);
    if ((result & 0x80000000) != 0)
    {
      result = 0;
      *v17 = 100.0;
    }

    v57 = v59 + v60;
    ++v58;
    v17 += v74;
    if (v58 >= v56)
    {
      goto LABEL_69;
    }
  }
}

uint64_t getJointResult(uint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4, uint64_t a5, _WORD *a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  v11 = *result;
  v12 = *a2;
  if (a3)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    v19 = a3;
    while (1)
    {
      if (a9)
      {
        v20 = 0;
        LODWORD(result) = 0;
        v22 = 0.0;
        do
        {
          v21 = a7 + 28 * (v16 + v15);
          if (v22 >= *(v21 + 4 * v20))
          {
            result = result;
          }

          else
          {
            v22 = *(v21 + 4 * v20);
            result = v20;
          }

          ++v20;
        }

        while (v20 != 7);
        if (a4 > v16 && v15 == *(a5 + 2 * v16))
        {
          v23 = 0;
          LODWORD(result) = 0;
          v24 = (v16 + 1);
          v26 = 0.0;
          do
          {
            v25 = a7 + 28 * (v16 + v18);
            if (v26 >= *(v25 + 4 * v23))
            {
              result = result;
            }

            else
            {
              v26 = *(v25 + 4 * v23);
              result = v23;
            }

            ++v23;
          }

          while (v23 != 7);
          v27 = 1;
          goto LABEL_23;
        }
      }

      else
      {
        v33 = 0;
        v17 += *(a10 + 2 * v15);
        LOBYTE(v33) = **(a7 + 8 * v17);
        v32 = v18;
        result = cstdlib_atoi(&v33);
        v18 = v32;
      }

      v27 = *(a8 + 4 * v15) == 1;
      if (*(a8 + 4 * v15) == 1 || (result - 3) <= 3u)
      {
        v24 = v16;
LABEL_23:
        ++*a6;
        *(v11 + 2 * v15) = 1;
        if (v15 && v27 && !*(v11 + 2 * (v15 - 1)))
        {
          *(v11 + 2 * (v15 - 1)) = 1;
          ++*a6;
        }

        *(v12 + 2 * v15) = (result & 0xFFFD) == 4;
        goto LABEL_31;
      }

      *(v11 + 2 * v15) = 0;
      *(v12 + 2 * v15) = 0;
      v24 = v16;
LABEL_31:
      ++v15;
      ++v18;
      v16 = v24;
      if (v15 == v19)
      {
        v29 = v19 - 1;
        goto LABEL_34;
      }
    }
  }

  v29 = -1;
LABEL_34:
  if (*(v11 + 2 * v29) != 1)
  {
    ++*a6;
    *(v11 + 2 * v29) = 1;
  }

  if (*(v12 + 2 * v29) != 1)
  {
    *(v12 + 2 * v29) = 1;
  }

  return result;
}

uint64_t load_pw_cfg(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if (((*(a1 + 96))(a2, a3, "fecfg", "fepw_enable_cscgroup", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    v11 = 1;
  }

  else
  {
    v10 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v10)
    {
      *v10 = 0;
    }

    v11 = cstdlib_strcmp(**&__c[3], "no") != 0;
  }

  *(a4 + 8) = v11;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if (((*(a1 + 96))(a2, a3, "fecfg", "fepw_cscgroup_stopwords", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    v13 = "";
  }

  else
  {
    v12 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
    }

    v13 = **&__c[3];
  }

  cstdlib_strcpy(a4 + 36, v13);
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v14 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_auxiliarywords", &__c[3], &__c[1], __c);
  if ((v14 & 0x80000000) != 0)
  {
    v20 = -1979703276;
  }

  else
  {
    v15 = v14;
    if (!*&__c[3] || *&__c[1] != 1)
    {
      goto LABEL_21;
    }

    v16 = **&__c[3];
    v17 = cstdlib_strlen(**&__c[3]);
    ChineseUTFCharNum = utf8_GetChineseUTFCharNum(v16, v17);
    *a4 = ChineseUTFCharNum;
    v19 = heap_Alloc(*(a5 + 8), 8 * ChineseUTFCharNum);
    *(a4 + 1) = v19;
    v20 = -1979703286;
    if (v19)
    {
      if (*a4)
      {
        v21 = 0;
        v22 = **&__c[3];
        while (1)
        {
          v23 = utf8_determineUTF8CharLength(*v22);
          *(*(a4 + 1) + 8 * v21) = heap_Calloc(*(a5 + 8), 1, v23 + 1);
          v24 = *(a4 + 1);
          v25 = *(v24 + 8 * v21);
          if (!v25)
          {
            break;
          }

          cstdlib_memcpy(v25, v22, v23);
          *(*(*(a4 + 1) + 8 * v21) + v23) = 0;
          v22 += v23;
          if (++v21 >= *a4)
          {
            goto LABEL_21;
          }
        }

        heap_Free(*(a5 + 8), v24);
        v20 = -1979703286;
        goto LABEL_24;
      }

LABEL_21:
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

LABEL_24:
  LODWORD(v15) = v20;
LABEL_25:
  *(a4 + 1) = 0;
  if (v15 == -1979703286)
  {
    v15 = 2315264010;
  }

  else
  {
    v15 = 0;
  }

LABEL_28:
  a4[16] = 0;
  *(a4 + 3) = 0;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v26 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_custermizedchar", &__c[3], &__c[1], __c);
  if (v26 < 0)
  {
    v27 = -1979703276;
  }

  else
  {
    v27 = v26;
    if (!*&__c[3] || *&__c[1] != 1)
    {
      a4[16] = 0;
      goto LABEL_39;
    }

    v28 = **&__c[3];
    *(v28 + cstdlib_strlen(**&__c[3]) - 1) = 0;
    v29 = Utf8_Utf8NbrOfSymbols(**&__c[3]);
    a4[16] = v29 - 1;
    v30 = heap_Alloc(*(a5 + 8), 8 * (v29 - 1));
    *(a4 + 3) = v30;
    if (v30)
    {
      if (!a4[16])
      {
        goto LABEL_40;
      }

      v31 = 0;
      v32 = **&__c[3];
      while (1)
      {
        v33 = utf8_determineUTF8CharLength(*v32);
        *(*(a4 + 3) + 8 * v31) = heap_Calloc(*(a5 + 8), 1, v33 + 1);
        v34 = *(a4 + 3);
        v35 = *(v34 + 8 * v31);
        if (!v35)
        {
          break;
        }

        cstdlib_memcpy(v35, v32, v33);
        *(*(*(a4 + 3) + 8 * v31) + v33) = 0;
        v32 += v33;
        if (++v31 >= a4[16])
        {
          goto LABEL_40;
        }
      }

      heap_Free(*(a5 + 8), v34);
      v27 = -1979703286;
LABEL_39:
      *(a4 + 3) = 0;
LABEL_40:
      if (!v27)
      {
        return v15;
      }

      goto LABEL_43;
    }

    v27 = -1979703286;
  }

LABEL_43:
  *(a4 + 3) = 0;
  if (v27 == -1979703286)
  {
    return 2315264010;
  }

  else
  {
    return v15;
  }
}

void *freePwTids(void *result, uint64_t a2)
{
  v2 = *(a2 + 1064);
  if (v2)
  {
    v4 = *(a2 + 1072);
    if (*(a2 + 1072))
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v2 + v6);
        if (v8)
        {
          result = heap_Free(v5[1], v8);
          v2 = *(a2 + 1064);
          *(v2 + v6) = 0;
          v4 = *(a2 + 1072);
        }

        ++v7;
        v6 += 184;
      }

      while (v7 < v4);
    }
  }

  return result;
}

void *freePWInfo(void *result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 1064);
  if (v3)
  {
    v5 = result;
    v7 = *(v3 + 184 * a3 + 40);
    if (v7)
    {
      result = heap_Free(result[1], v7);
      v3 = *(a2 + 1064);
    }

    v8 = *(v3 + 184 * a3 + 24);
    if (v8)
    {
      result = heap_Free(v5[1], v8);
      v3 = *(a2 + 1064);
    }

    v9 = v3 + 184 * a3;
    *(v9 + 40) = 0;
    *(v9 + 24) = 0;
  }

  return result;
}

uint64_t pw_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t ****a6, uint64_t a7, void *a8, int a9, void *a10, uint64_t a11, int a12, int a13)
{
  v312 = *MEMORY[0x277D85DE8];
  v308 = 0;
  v309 = 0;
  v307 = 0;
  v306 = 0;
  v304 = 0;
  v303 = "";
  v302 = 0;
  v299 = 0;
  v298 = 0;
  v297 = 0;
  v294 = 0;
  v293 = 0;
  v292 = 0;
  v291 = 0;
  v290[6] = 0;
  strcpy(v290, "latin");
  memset(__s1, 0, sizeof(__s1));
  v288 = 0;
  v289 = 0;
  v13 = 2315264007;
  if (!a3)
  {
    return v13;
  }

  v14 = a4;
  if (!a4)
  {
    return v13;
  }

  v15 = a5;
  if (!a5)
  {
    return v13;
  }

  if (!a6)
  {
    return v13;
  }

  if (!a7)
  {
    return v13;
  }

  if (!a8)
  {
    return v13;
  }

  v18 = a3;
  v305 = 0;
  v301 = 0;
  v300 = 0;
  memset(__b, 0, 512);
  cstdlib_memset(__b, 0, 0x404uLL);
  v13 = 0;
  *(v15 + 1088) = 0;
  *(v15 + 1064) = 0;
  if (*(v15 + 1098) != 1)
  {
    return v13;
  }

  v13 = (*(v18 + 176))(a1, a2, *(v15 + 1096), 0, v15 + 1088, &v309 + 2);
  if ((v13 & 0x80000000) != 0 || HIWORD(v309) < 2u)
  {
    return v13;
  }

  v275 = (v15 + 1088);
  v21 = *(v15 + 1096);
  LOWORD(__dst) = 0;
  LODWORD(__s2) = 0;
  *v285 = 0;
  LOWORD(v284) = 0;
  LOWORD(v283) = 0;
  v22 = (*(v18 + 104))(a1, a2, 2, v21, &__dst);
  v23 = v22;
  v280 = v18;
  v281 = a2;
  if ((v22 & 0x80000000) == 0)
  {
    v24 = __dst;
    if (__dst)
    {
      v276 = v15;
      v25 = 0;
      while (1)
      {
        v26 = (*(v18 + 168))(a1, a2, v24, 0, 1, &__s2, v285);
        if ((v26 & 0x80000000) != 0)
        {
          break;
        }

        if (__s2 > 0xA || ((1 << __s2) & 0x610) == 0)
        {
          v31 = 0;
          v30 = __dst;
        }

        else
        {
          v26 = (*(v18 + 168))(a1, a2, __dst, 1, 1, &v284, v285);
          if ((v26 & 0x80000000) != 0)
          {
            break;
          }

          v26 = (*(v18 + 168))(a1, a2, __dst, 2, 1, &v283, v285);
          if ((v26 & 0x80000000) != 0)
          {
            break;
          }

          v29 = v284 > v25 || v25 < v283;
          v30 = __dst;
          if (v29)
          {
            v25 = v283;
            v31 = 0;
          }

          else
          {
            v31 = __dst;
          }
        }

        v26 = (*(v280 + 120))(a1, a2, v30, &__dst);
        if ((v26 & 0x80000000) != 0)
        {
          break;
        }

        if (v31)
        {
          log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "%s", v32, v33, v34, "Dropping nested word record");
          v26 = (*(v280 + 192))(a1, a2, v31);
          if ((v26 & 0x80000000) != 0)
          {
            break;
          }
        }

        v24 = __dst;
        v18 = v280;
        if (!__dst)
        {
          goto LABEL_36;
        }
      }

      v23 = v26;
      v40 = 0;
      v101 = 0;
      v99 = 0;
      v100 = 0;
LABEL_133:
      v15 = v276;
      goto LABEL_139;
    }
  }

  if ((v22 & 0x80000000) != 0)
  {
    v40 = 0;
    v101 = 0;
    v99 = 0;
    v100 = 0;
    goto LABEL_139;
  }

LABEL_36:
  v35 = (*(v18 + 104))(a1, a2, 2, *(v15 + 1096), &v309);
  v13 = v35;
  if ((v35 & 0x80000000) != 0)
  {
    v40 = 0;
    v101 = 0;
    v99 = 0;
    v100 = 0;
    v23 = v35;
    goto LABEL_139;
  }

  v39 = v309;
  if (!v309)
  {
    goto LABEL_136;
  }

  v272 = v14;
  v273 = 0;
  v40 = 0;
  v277 = 0;
  v23 = -1979703286;
  v270 = (v15 + 1064);
  do
  {
    v41 = (*(v280 + 120))(a1, v281, v39, &v308 + 2);
    if ((v41 & 0x80000000) != 0)
    {
      v101 = 0;
      v99 = 0;
      v100 = 0;
      v23 = v41;
      goto LABEL_139;
    }

    v42 = (*(v280 + 168))(a1, v281, v309, 0, 1, &v305, &v309 + 2);
    v13 = v42;
    if ((v42 & 0x80000000) != 0)
    {
      v101 = 0;
      v99 = 0;
      v100 = 0;
      v23 = v42;
      goto LABEL_139;
    }

    v43 = v305;
    if (v305 <= 0xA && ((1 << v305) & 0x610) != 0)
    {
      v45 = (*(v280 + 168))(a1, v281, v309, 1, 1, &v308, &v309 + 2);
      if ((v45 & 0x80000000) != 0)
      {
        return v45;
      }

      v13 = (*(v280 + 168))(a1, v281, v309, 2, 1, &v307 + 2, &v309 + 2);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      if (!v308 || v277 + 1 == v308 && HIWORD(v307) > v308)
      {
        ++v40;
        v277 = HIWORD(v307);
      }

      v43 = v305;
    }

    if (v43 == 5)
    {
      v13 = (*(v280 + 176))(a1, v281, v309, 4, &v298, &v309 + 2);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      if (HIWORD(v309))
      {
        if (!cstdlib_strncmp(v298, "prompt", HIWORD(v309)))
        {
          ++v273;
          if (v296 <= 0x7F)
          {
            v45 = (*(v280 + 168))(a1, v281, v309, 1, 1, &v308, &v309 + 2);
            if ((v45 & 0x80000000) != 0)
            {
              return v45;
            }

            v13 = (*(v280 + 168))(a1, v281, v309, 2, 1, &v307 + 2, &v309 + 2);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

            *(__b + v296) = v308;
            *(&__b[32] + v296++) = HIWORD(v307);
          }
        }
      }
    }

    v39 = HIWORD(v308);
    LOWORD(v309) = HIWORD(v308);
  }

  while (HIWORD(v308));
  if (v273 >= 0x81u)
  {
    log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "Warning: the prompt number %d is large than the threshold %d, so the last %d promp not used to guide grouping", v36, v37, v38, v273);
  }

  v46 = v280;
  if (!v40)
  {
LABEL_136:
    log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "Warning: no lexicon word", v36, v37, v38, v256);
    return v13;
  }

  v276 = v15;
  v47 = v40;
  v48 = heap_Calloc(*(v272 + 8), v40, 40);
  if (!v48)
  {
    log_OutPublic(*(v272 + 32), "FE_PHRASING", 37000, 0, v49, v50, v51, v52, v256);
    v101 = 0;
    v99 = 0;
    v100 = 0;
    v14 = v272;
    goto LABEL_133;
  }

  v271 = v40;
  v274 = v48;
  v53 = (v48 + 8);
  do
  {
    v54 = heap_Calloc(*(v272 + 8), 128, 1);
    *(v53 - 1) = v54;
    if (!v54)
    {
      log_OutPublic(*(v272 + 32), "FE_PHRASING", 37000, 0, v55, v56, v57, v58, v256);
      v99 = 0;
      v100 = 0;
      v14 = v272;
LABEL_180:
      v15 = v276;
LABEL_184:
      v40 = v271;
      v101 = v274;
      goto LABEL_139;
    }

    v59 = heap_Calloc(*(v272 + 8), 1, 64);
    *v53 = v59;
    if (!v59)
    {
LABEL_179:
      v14 = v272;
      log_OutPublic(*(v272 + 32), "FE_PHRASING", 37000, 0, v60, v61, v62, v63, v256);
      v99 = 0;
      v100 = 0;
      goto LABEL_180;
    }

    v53 += 5;
    --v47;
  }

  while (v47);
  v15 = v276;
  v64 = v281;
  v65 = (*(v280 + 104))(a1, v281, 2, *(v276 + 548), &v309);
  if ((v65 & 0x80000000) != 0)
  {
LABEL_181:
    v99 = 0;
    v100 = 0;
LABEL_183:
    v23 = v65;
    v14 = v272;
    goto LABEL_184;
  }

  v65 = (*(v280 + 176))(a1, v281, *(v276 + 548), 0, v275, &v309 + 2);
  if ((v65 & 0x80000000) != 0 || HIWORD(v309) < 2u)
  {
    v99 = 0;
    v100 = 0;
    goto LABEL_183;
  }

  v66 = v309;
  if (v309)
  {
    v263 = 0;
    v67 = 0;
    do
    {
      v65 = (*(v46 + 120))(a1, v64, v66, &v308 + 2);
      if ((v65 & 0x80000000) != 0)
      {
        goto LABEL_181;
      }

      v65 = (*(v46 + 168))(a1, v64, v309, 0, 1, &v305, &v309 + 2);
      if ((v65 & 0x80000000) != 0)
      {
        goto LABEL_181;
      }

      if (v305 <= 0xA && ((1 << v305) & 0x610) != 0)
      {
        v65 = (*(v46 + 168))(a1, v64, v309, 1, 1, &v308, &v309 + 2);
        if ((v65 & 0x80000000) != 0)
        {
          goto LABEL_181;
        }

        v65 = (*(v46 + 168))(a1, v64, v309, 2, 1, &v307 + 2, &v309 + 2);
        if ((v65 & 0x80000000) != 0)
        {
          goto LABEL_181;
        }

        if (!v308 || v67 + 1 == v308 && HIWORD(v307) > v308)
        {
          TNmarker = (*(v46 + 176))(a1, v64, v309, 3, &v297, &v309 + 2);
          if ((TNmarker & 0x80000000) != 0)
          {
            goto LABEL_130;
          }

          v70 = v274;
          v71 = &v274[5 * v263];
          if (cstdlib_strstr(v297, "comma"))
          {
            *(v71 + 13) = 11;
          }

          else
          {
            *(v71 + 13) = 1;
            v81 = v297;
            while (1)
            {
              v82 = cstdlib_strstr(v81, ".");
              v302 = v82;
              if (!v82)
              {
                break;
              }

              v81 = v82 + 1;
              v302 = v81;
              ++*(v71 + 13);
            }
          }

          v72 = v308;
          if (v308 >= HIWORD(v307))
          {
            v78 = 1;
          }

          else
          {
            v73 = 0;
            do
            {
              IsChineseLetter = utf8_IsChineseLetter(&(*v275)[v72]);
              v75 = (*v275)[v72];
              if (v75 > 0x3E || ((1 << v75) & 0x4C00510000000000) == 0)
              {
                v77 = 1;
              }

              else
              {
                v77 = v73;
              }

              if (!IsChineseLetter)
              {
                v73 = v77;
              }

              v72 += utf8_determineUTF8CharLength((*v275)[v72]);
            }

            while (v72 < HIWORD(v307));
            v78 = v73 == 0;
            v70 = v274;
            v64 = v281;
          }

          v79 = &v70[5 * v263];
          *(v79 + 12) = v309;
          if (!a12)
          {
            TNmarker = (*(v280 + 176))(a1, v64);
            if ((TNmarker & 0x80000000) != 0)
            {
              goto LABEL_130;
            }

            if (!hlp_NLUStrFind(v303, "POS", &v301, &v300))
            {
              v99 = 0;
              v100 = 0;
              v23 = -1979703296;
              goto LABEL_131;
            }

            *v79[1] = 0;
            v80 = v79[1];
            if (v78)
            {
              cstdlib_strncat(v80, v301, v300);
            }

            else
            {
              cstdlib_strcat(v80, "non");
            }

            v64 = v281;
          }

          if (((*(v280 + 184))(a1, v64, v309, 9, &v309 + 2) & 0x80000000) == 0 && HIWORD(v309) == 1)
          {
            TNmarker = (*(v280 + 176))(a1, v64, v309, 9, v79 + 2, &v309 + 2);
            if ((TNmarker & 0x80000000) != 0)
            {
              goto LABEL_130;
            }
          }

          v83 = HIWORD(v307);
          v84 = v308;
          v85 = HIWORD(v307) - v308;
          v86 = *v79;
          if (v85 >= 128)
          {
            v87 = heap_Realloc(*(v272 + 8), *v79, (v85 + 1));
            *v79 = v87;
            if (!v87)
            {
              goto LABEL_179;
            }

            v86 = v87;
            v84 = v308;
            v83 = HIWORD(v307);
          }

          v15 = v276;
          cstdlib_memcpy(v86, &(*v275)[v84], v83 - v84);
          *(*v79 - v308 + HIWORD(v307)) = 0;
          v67 = HIWORD(v307);
          *(v79 + 7) = v308;
          *(v79 + 8) = v67;
          ++v263;
          v46 = v280;
        }
      }

      v66 = HIWORD(v308);
      LOWORD(v309) = HIWORD(v308);
    }

    while (HIWORD(v308));
  }

  v14 = v272;
  v264 = a1;
  word_separating_markers = pw_get_word_separating_markers(v46, v272, a1, v64, *(v15 + 1096), &v294, &v293);
  if ((word_separating_markers & 0x80000000) != 0)
  {
    v99 = 0;
    v100 = 0;
    v23 = word_separating_markers;
    goto LABEL_180;
  }

  v92 = v293;
  log_OutText(*(v272 + 32), "FE_PHRASING", 5, 0, "Info: Valid Word Seperator Markers Count:%d", v89, v90, v91, v293);
  if (v92)
  {
    v96 = 0;
    v97 = v294;
    do
    {
      log_OutText(*(v272 + 32), "FE_PHRASING", 5, 0, "Info: Valid Word Seperator Markers POS:%d", v93, v94, v95, v97[v96++]);
    }

    while (v92 > v96);
  }

  TNmarker = getTNmarker(*(v276 + 548), v272, v280, v264, v281, &v289);
  if ((TNmarker & 0x80000000) != 0)
  {
    goto LABEL_130;
  }

  v98 = v289;
  *a10 = v289;
  *(v276 + 536) = 0;
  *(v276 + 133) = 0;
  cstdlib_strlen(*(v276 + 136));
  TNmarker = pw_nn_process(v272, a6, v274, v271, &v292, &v307, a7, a8, a9, v98, v276[16], *(v276 + 3), a13);
  if ((TNmarker & 0x80000000) != 0)
  {
    goto LABEL_130;
  }

  if ((paramc_ParamGetStr(*(v272 + 40), "spaceInPYT", &v304) & 0x80000000) == 0 && !LH_stricmp(v304, "yes"))
  {
    TNmarker = pw_PYT_process(v280, v264, v281, v272, v274, v271, v294, v92, &v292, &v307);
    if ((TNmarker & 0x80000000) != 0)
    {
      goto LABEL_130;
    }
  }

  v279 = (v276 + 1072);
  if (*(v276 + 8) == 1)
  {
    TNmarker = pw_group_csc(v272, __b, v274, v271, v276 + 36, v292, v307, v270, v279, *v276, *(v276 + 1));
    if ((TNmarker & 0x80000000) != 0)
    {
LABEL_130:
      v99 = 0;
      v100 = 0;
      v23 = TNmarker;
      goto LABEL_131;
    }
  }

  else
  {
    *v279 = v307;
    *v270 = v292;
    v292 = 0;
    LOWORD(v307) = 0;
  }

  v113 = pw_respect_word_separating_markers(v280, v272, v264, v281, *(v276 + 548), v270, v279);
  if ((v113 & 0x80000000) != 0 || a11 && (v113 = pw_igtree_process(v272, v274, v270, v279, v271, a11), (v113 & 0x80000000) != 0))
  {
    v99 = 0;
    v100 = 0;
    v23 = v113;
    goto LABEL_131;
  }

  if (!*v275)
  {
    freePwTids(v272, v276);
    v99 = 0;
    v100 = 0;
    v23 = v113;
    v14 = v272;
    v15 = v276;
    goto LABEL_184;
  }

  __s = heap_Calloc(*(v272 + 8), 1024, 1);
  if (!__s)
  {
    v99 = 0;
    v100 = 0;
LABEL_131:
    v14 = v272;
    goto LABEL_180;
  }

  v100 = heap_Calloc(*(v272 + 8), 64, 1);
  if (!v100)
  {
    goto LABEL_411;
  }

  v114 = *(v272 + 8);
  v115 = *(v276 + 536);
  v116 = cstdlib_strlen(*(v276 + 136));
  v117 = heap_Calloc(v114, v115, v116 + 2);
  *(v276 + 135) = v117;
  if (!v117)
  {
    goto LABEL_411;
  }

  cstdlib_strlen(*v275);
  if (!*v279)
  {
LABEL_288:
    freePwTids(v272, v276);
    *(v276 + 537) = *(v276 + 536);
    v23 = (*(v280 + 104))(v264, v281, 2, *(v276 + 548), &v309);
    if ((v23 & 0x80000000) == 0)
    {
      cstdlib_memset(__s, 0, 0x400uLL);
      cstdlib_memset(v100, 0, 0x40uLL);
      cstdlib_memset(__s1, 0, 0x40uLL);
      HIWORD(v308) = 0;
      v185 = v309;
      if (v309)
      {
        v186 = 0;
        LOWORD(v269) = 0;
        v187 = 0;
        while (1)
        {
          v128 = (*(v280 + 120))(v264, v281, v185, &v308 + 2);
          if ((v128 & 0x80000000) != 0)
          {
            goto LABEL_410;
          }

          v23 = (*(v280 + 168))(v264, v281, v309, 0, 1, &v305, &v309 + 2);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_411;
          }

          if (v305 <= 0xA && ((1 << v305) & 0x610) != 0)
          {
            break;
          }

LABEL_379:
          v185 = HIWORD(v308);
          LOWORD(v309) = HIWORD(v308);
          if (!HIWORD(v308))
          {
            goto LABEL_411;
          }
        }

        v189 = *v270;
        v190 = *v270 + 184 * v186;
        *(v190 + 36) = v305;
        LOWORD(v308) = *(v190 + 16);
        v191 = *(v190 + 18);
        HIWORD(v307) = v191;
        if (v308)
        {
          if (v187 + 1 != v308 || v191 <= v308)
          {
LABEL_378:
            if (*v279 <= ++v186)
            {
              goto LABEL_411;
            }

            goto LABEL_379;
          }
        }

        __s2 = 0;
        v193 = v189 + 184 * v186;
        v297 = *(v193 + 24);
        v303 = 0;
        v303 = *(v193 + 40);
        if (((*(v280 + 184))(v264, v281, v309, 10, &v299) & 0x80000000) == 0 && v299 == 1)
        {
          v23 = (*(v280 + 176))(v264, v281, v309, 10, &__s2, &v309 + 2);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_411;
          }
        }

        if (HIWORD(v307) - v308 > 5)
        {
          v194 = 0;
          goto LABEL_335;
        }

        __dst = 0;
        v286 = 0;
        *v285 = 0;
        cstdlib_memcpy(&__dst, &(*v275)[v308], HIWORD(v307) - v308);
        *(&__dst + HIWORD(v307) - v308) = 0;
        if (!utf8_IsChineseLetter(&__dst))
        {
          goto LABEL_332;
        }

        v195 = v293;
        if (v293)
        {
          v196 = v294;
          do
          {
            v197 = *v196++;
            if (v197 == v308)
            {
              goto LABEL_332;
            }
          }

          while (--v195);
        }

        if (*v289 && *(v289 + 4))
        {
          v198 = *(v289 + 8);
          v199 = *(v289 + 4) - 1;
          do
          {
            v201 = *v198++;
            v200 = v201;
            if (v201 == HIWORD(v307))
            {
              goto LABEL_332;
            }
          }

          while (v200 <= HIWORD(v307) && v199-- != 0);
        }

        if (!cstdlib_strstr(v297, "11") || !utf8_IsChineseLetter(&v291))
        {
          v284 = 0;
          v203 = cstdlib_strlen(&__dst);
          v282 = 0;
          v283 = 0;
          utf8_Utf8ToUtf32_Tolerant(&__dst, v203, &v284, 1u, &v283);
          v204 = v283;
          if (v203 <= 3)
          {
            v204 = 0;
          }

          utf8_Utf32ToUtf8(&v284, 1, v285, v203 - v204, &v282);
          v285[v282] = 0;
          if (!*v276)
          {
LABEL_332:
            v194 = 0;
LABEL_333:
            if (HIWORD(v307) - v308 <= 2)
            {
              cstdlib_memcpy(&v291, &(*v275)[v308], HIWORD(v307) - v308);
              *(&v291 + HIWORD(v307) - v308) = 0;
              goto LABEL_338;
            }

LABEL_335:
            if (checkAttachedPunc(*(*v270 + 184 * v186 + 56)))
            {
              LOBYTE(v291) = 0;
            }

            else
            {
              cstdlib_memcpy(&v291, &(*v275)[HIWORD(v307) - 3], 3uLL);
              HIBYTE(v291) = 0;
            }

LABEL_338:
            if (v194)
            {
              if (v269)
              {
                LODWORD(__dst) = 0;
                v23 = pw_check_if_glue_forbidden(v280, v264, v281, *(v276 + 548), v269, v309, &__dst);
                v194 = __dst == 0;
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_411;
                }
              }
            }

            if (v303)
            {
              hlp_NLUStrFind(v303, "POS", &v301, &v300);
              if (__s2 && (v206 = cstdlib_strlen(__s1), v206 + cstdlib_strlen(__s2) - 63 < 0xFFFFFFFFFFFFFFC0) || v301 && (v210 = cstdlib_strlen(v100), v210 + cstdlib_strlen(v301) - 62 < 0xFFFFFFFFFFFFFFC0) || v297 && (v211 = cstdlib_strlen(__s), v211 + cstdlib_strlen(v297) - 1022 <= 0xFFFFFFFFFFFFFBFFLL))
              {
                log_OutText(*(v272 + 32), "FE_PHRASING", 5, 0, "skip the merging due to the length limit of prosodic word", v207, v208, v209, v257);
                goto LABEL_357;
              }
            }

            else
            {
              v300 = 0;
              v301 = 0;
            }

            if (v194 && v269 && cstdlib_strcmp(v290, "latin"))
            {
              log_OutText(*(v272 + 32), "FE_PHRASING", 5, 0, "merge special auxiliary word and neutral tone cases", v212, v213, v214, v257);
              (*v275)[v308 - 1] = 45;
              cstdlib_strcat(__s, ".");
              if (v297)
              {
                v215 = cstdlib_strlen(v297);
                if (cstdlib_strlen(__s) + v215 < 0x401)
                {
                  v219 = __s;
                }

                else
                {
                  v216 = *(v272 + 8);
                  v217 = cstdlib_strlen(__s);
                  v218 = cstdlib_strlen(v297);
                  v219 = heap_Realloc(v216, __s, v217 + v218 + 1);
                  if (!v219)
                  {
                    goto LABEL_415;
                  }
                }

                cstdlib_strcat(v219, v297);
                __s = v219;
              }

              if (v303)
              {
                if (v300)
                {
                  cstdlib_strcat(v100, "-");
                  if (v301)
                  {
                    cstdlib_strncat(v100, v301, v300);
                  }
                }
              }

              if (__s2 && cstdlib_strcmp(__s1, ""))
              {
                cstdlib_strcat(__s1, __s2);
              }

              else
              {
                cstdlib_strcpy(__s1, "");
              }

              v128 = (*(v280 + 192))(v264, v281, v309);
              if ((v128 & 0x80000000) != 0)
              {
                goto LABEL_410;
              }

              v128 = (*(v280 + 160))(v264, v281, v269, 2, 1, &v307 + 2, &v306);
              if ((v128 & 0x80000000) != 0)
              {
                goto LABEL_410;
              }

              v228 = *(v280 + 160);
              v229 = cstdlib_strlen(__s);
              v23 = v228(v264, v281, v269, 3, (v229 + 1), __s, &v306);
              if ((v23 & 0x80000000) != 0)
              {
                goto LABEL_411;
              }

              if (v303)
              {
                v230 = cstdlib_strlen(*(*v270 + 184 * (v186 - 1) + 40));
                v231 = *(v272 + 8);
                v232 = *(*v270 + 184 * (v186 - 1) + 40);
                v233 = cstdlib_strlen(v100);
                v234 = cstdlib_strlen(*(*v270 + 184 * (v186 - 1) + 40));
                v235 = heap_Realloc(v231, v232, v233 + v234 + 5);
                *(*v270 + 184 * (v186 - 1) + 40) = v235;
                if (!v235)
                {
                  log_OutPublic(*(v272 + 32), "FE_PHRASING", 37000, 0, v236, v237, v238, v239, v257);
LABEL_415:
                  v23 = -1979703286;
                  goto LABEL_411;
                }

                *(v235 + v230) = 0;
                hlp_NLUStrSet(*(*v270 + 184 * (v186 - 1) + 40), "POS", v100);
                v240 = *(v280 + 160);
                v241 = cstdlib_strlen(v303);
                v23 = v240(v264, v281, v269, 14, (v241 + 1), v303, &v306);
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_411;
                }

                v303 = "";
              }

              v242 = *v270;
              v243 = v186 - 1;
              *(*v270 + 184 * v243 + 18) = HIWORD(v307);
              v244 = *(v272 + 8);
              v245 = *(v242 + 184 * v186 + 24);
              v246 = cstdlib_strlen(__s);
              v247 = heap_Realloc(v244, v245, v246 + 1);
              *(*v270 + 184 * v186 + 24) = v247;
              cstdlib_strcpy(v247, __s);
              v248 = *v270;
              v249 = *v270 + 184 * v243;
              v251 = *(v249 + 72);
              v250 = (v249 + 72);
              if (v251)
              {
                v252 = 1;
              }

              else
              {
                v252 = *(v248 + 184 * v186 + 72) != 0;
              }

              *v250 = v252;
              cstdlib_strcat(*(v248 + 184 * v243 + 56), "-");
              cstdlib_strcat(*(*(v276 + 133) + 184 * v243 + 56), *(*(v276 + 133) + 184 * v186 + 56));
              --*(v276 + 536);
              freePWInfo(v272, v276, v186);
              v253 = *(v276 + 536);
              if (v186 != v253)
              {
                cstdlib_memmove((*v270 + 184 * v186), (*v270 + 184 * v186 + 184), 184 * (v253 - v186));
              }

              --v186;
              if (cstdlib_strcmp(__s1, ""))
              {
                v254 = *(v280 + 160);
                v255 = cstdlib_strlen(__s1);
                v23 = v254(v264, v281, v269, 10, (v255 + 1), __s1, &v306);
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_411;
                }
              }

              goto LABEL_377;
            }

LABEL_357:
            if (v297)
            {
              if (cstdlib_strlen(v297) < 0x401 || (v220 = cstdlib_strlen(v297), v220 <= cstdlib_strlen(__s)))
              {
                v224 = __s;
              }

              else
              {
                v221 = *(v272 + 8);
                v222 = cstdlib_strlen(__s);
                v223 = cstdlib_strlen(v297);
                v224 = heap_Realloc(v221, __s, v222 + v223 + 1);
                if (!v224)
                {
                  goto LABEL_415;
                }
              }

              cstdlib_strcpy(v224, v297);
              __s = v224;
            }

            cstdlib_strcpy(v100, "");
            if (v300 && v301)
            {
              cstdlib_strncat(v100, v301, v300);
            }

            if (__s2)
            {
              v225 = __s2;
            }

            else
            {
              v225 = "";
            }

            cstdlib_strcpy(__s1, v225);
            v269 = v309;
            if (((*(v280 + 184))(v264, v281) & 0x80000000) != 0 || HIWORD(v309) != 1)
            {
              v227 = "latin";
            }

            else
            {
              v23 = (*(v280 + 176))(v264, v281, v269, 9, &v302, &v309 + 2);
              if ((v23 & 0x80000000) != 0)
              {
                goto LABEL_411;
              }

              v226 = cstdlib_strlen(v302);
              if (v226 > cstdlib_strlen("normal"))
              {
                goto LABEL_411;
              }

              v227 = v302;
            }

            cstdlib_strcpy(v290, v227);
LABEL_377:
            v187 = HIWORD(v307);
            goto LABEL_378;
          }

          v205 = 0;
          while (cstdlib_strcmp(v285, *(*(v276 + 1) + 8 * v205)) || !utf8_IsChineseLetter(&v291))
          {
            if (++v205 >= *v276)
            {
              goto LABEL_332;
            }
          }
        }

        v194 = 1;
        goto LABEL_333;
      }
    }

LABEL_411:
    v14 = v272;
    goto LABEL_412;
  }

  v121 = 0;
  v122 = 0;
  v259 = 64;
  v261 = 1024;
  while (1)
  {
    v268 = v122;
    v123 = *(*v270 + 184 * v122 + 8);
    if (v123 == 1)
    {
      v149 = cstdlib_strlen(*v275);
      v128 = (*(v280 + 168))(v264, v281, **(*v270 + 184 * v268), 1, 1, *v270 + 184 * v268 + 16, &v309 + 2);
      if ((v128 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }

      v128 = (*(v280 + 168))(v264, v281, **(*v270 + 184 * v268), 2, 1, *v270 + 184 * v268 + 18, &v309 + 2);
      if ((v128 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }

      v128 = (*(v280 + 176))(v264, v281, **(*v270 + 184 * v268), 3, &v297, &v309 + 2);
      if ((v128 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }

      if (a12)
      {
        v128 = (*(v280 + 184))(v264, v281, v309, 14, &v299);
        v262 = v299;
        if (!v299)
        {
          goto LABEL_261;
        }

        if (v299 != 1)
        {
          if ((v128 & 0x80000000) != 0)
          {
            goto LABEL_410;
          }

          v262 = v121;
          if (!v121)
          {
LABEL_261:
            v262 = 0;
            v303 = 0;
            v150 = 1;
LABEL_281:
            v174 = v268 + v268 * v149;
            v175 = *(v276 + 133) + 184 * v268;
            v176 = *(v175 + 18);
            v177 = *(v175 + 16);
            v178 = (v176 - v177);
            cstdlib_memcpy((*(v276 + 135) + v174), (*(v276 + 136) + v177), v178);
            *(*(v276 + 135) + v174 + v178) = 0;
            v179 = *(v276 + 133);
            *(v179 + 184 * v268 + 56) = *(v276 + 135) + v174;
            if (v150)
            {
              *(v179 + 184 * v268 + 40) = 0;
            }

            else
            {
              v180 = cstdlib_strlen(v303);
              v181 = heap_Alloc(*(v272 + 8), v180 + 1);
              *(*v270 + 184 * v268 + 40) = v181;
              if (!v181)
              {
                goto LABEL_411;
              }

              cstdlib_strcpy(v181, v303);
            }

            v182 = *(v272 + 8);
            v183 = cstdlib_strlen(v297);
            v184 = heap_Alloc(v182, v183 + 1);
            *(*v270 + 184 * v268 + 24) = v184;
            if (!v184)
            {
              goto LABEL_411;
            }

            cstdlib_strcpy(v184, v297);
            goto LABEL_287;
          }
        }
      }

      else
      {
        v262 = 1;
      }

      v128 = (*(v280 + 176))(v264, v281, **(*v270 + 184 * v268), 14, &v303, &v309 + 2);
      if ((v128 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }

      v150 = 0;
      goto LABEL_281;
    }

    if (!v123)
    {
      break;
    }

    __s2 = 0;
    v258 = cstdlib_strlen(*v275);
    cstdlib_memset(__s, 0, 0x400uLL);
    cstdlib_memset(v100, 0, 0x40uLL);
    cstdlib_memset(__s1, 0, 0x40uLL);
    v124 = *v270;
    v125 = *v270 + 184 * v268;
    if (*(v125 + 8))
    {
      v126 = 0;
      v127 = 0;
      v266 = 1;
      while (1)
      {
        v128 = (*(v280 + 168))(v264, v281, *(*v125 + 2 * v126), 1, 1, &v308, &v309 + 2);
        if ((v128 & 0x80000000) != 0)
        {
          break;
        }

        v128 = (*(v280 + 168))(v264, v281, *(*(*v270 + 184 * v268) + 2 * v126), 2, 1, &v307 + 2, &v309 + 2);
        if ((v128 & 0x80000000) != 0)
        {
          break;
        }

        v128 = (*(v280 + 176))(v264, v281, *(*(*v270 + 184 * v268) + 2 * v126), 3, &v297, &v309 + 2);
        if ((v128 & 0x80000000) != 0)
        {
          break;
        }

        if (a12 && ((*(v280 + 184))(v264, v281, v309, 14, &v299), v299 != 1))
        {
          v262 = 0;
          v265 = 1;
        }

        else
        {
          v128 = (*(v280 + 176))(v264, v281, *(*(*v270 + 184 * v268) + 2 * v126), 14, &v303, &v309 + 2);
          if ((v128 & 0x80000000) != 0)
          {
            break;
          }

          v265 = 0;
          v262 = 1;
        }

        if (!v126)
        {
          *(*v270 + 184 * v268 + 16) = v308;
        }

        if ((v265 & 1) == 0)
        {
          v129 = v288;
          v130 = *(v272 + 8);
          v131 = cstdlib_strlen(v303);
          v132 = v131;
          if (v129)
          {
            v133 = cstdlib_strlen(v129);
            v134 = heap_Realloc(v130, v129, v132 + v133 + 2);
            if (!v134)
            {
              goto LABEL_411;
            }

            v135 = v134;
            v288 = v134;
            cstdlib_strcat(v134, ";");
            cstdlib_strcat(v135, v303);
          }

          else
          {
            v136 = heap_Alloc(v130, v131 + 1);
            v288 = v136;
            if (!v136)
            {
              goto LABEL_411;
            }

            cstdlib_strcpy(v136, v303);
          }
        }

        if (v266)
        {
          v266 = 0;
          v260 = 1;
          if (((*(v280 + 184))(v264, v281, *(*(*v270 + 184 * v268) + 2 * v126), 10, &v299) & 0x80000000) == 0 && v299 == 1)
          {
            v128 = (*(v280 + 176))(v264, v281, *(*(*v270 + 184 * v268) + 2 * v126), 10, &__s2, &v309 + 2);
            if ((v128 & 0x80000000) != 0)
            {
              break;
            }

            v260 = 0;
            v266 = 1;
          }
        }

        else
        {
          v266 = 0;
          v260 = 1;
        }

        if (v126)
        {
          v137 = cstdlib_strlen(__s);
          if (v137 + cstdlib_strlen(v297) + 1 > v261)
          {
            v138 = heap_Realloc(*(v272 + 8), __s, (v261 + 1024));
            if (!v138)
            {
              goto LABEL_411;
            }

            __s = v138;
            v261 += 1024;
          }

          (*v275)[v308 - 1] = 45;
          if (cstdlib_strlen(v297))
          {
            cstdlib_strcat(__s, ".");
          }

          v139 = *(*(*v270 + 184 * v268) + 2 * v126);
          v140 = cstdlib_strstr(v297, "{SEP");
          v302 = v140;
          if (v140)
          {
            v302 = v140 + 4;
            v140[4] += v127;
          }
        }

        else
        {
          v139 = 0;
        }

        cstdlib_strcat(__s, v297);
        if ((v265 & 1) == 0 && hlp_NLUStrFind(v303, "POS", &v301, &v300))
        {
          v141 = cstdlib_strlen(v100);
          if (v141 + v300 + 2 > v259)
          {
            v142 = heap_Realloc(*(v272 + 8), v100, (v259 + 64) + 1);
            if (!v142)
            {
              goto LABEL_411;
            }

            v100 = v142;
            v259 += 64;
          }

          if (cstdlib_strlen(v100))
          {
            cstdlib_strcat(v100, "-");
          }

          cstdlib_strncat(v100, v301, v300);
        }

        v143 = v266;
        if (!__s2)
        {
          v143 = 0;
        }

        if (v143 == 1)
        {
          cstdlib_strcat(__s1, __s2);
        }

        v144 = v297;
        if (v297)
        {
          do
          {
            v145 = v144;
            v146 = v127;
            v127 = 0;
            v302 = cstdlib_strstr(v144, "{SEP");
            v144 = v302 + 1;
          }

          while (v302);
          for (i = v145; ; i = v148 + 1)
          {
            v148 = cstdlib_strstr(i, ".");
            v302 = v148;
            if (!v148)
            {
              break;
            }

            ++v146;
          }
        }

        else
        {
          v146 = v127;
        }

        if (v139)
        {
          v128 = (*(v280 + 192))(v264, v281, v139);
          if ((v128 & 0x80000000) != 0)
          {
            break;
          }
        }

        v127 = v146 + 1;
        v124 = *v270;
        v125 = *v270 + 184 * v268;
        if (++v126 >= *(v125 + 8))
        {
          goto LABEL_263;
        }
      }

LABEL_410:
      v23 = v128;
      goto LABEL_411;
    }

    v260 = 0;
    v262 = v121;
LABEL_263:
    if (v262)
    {
      v128 = pw_merge_NLU(v272, &v288);
      if ((v128 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }

      v124 = *v270;
    }

    if (*(v276 + 8) == 1)
    {
      pw_split_csc_pw(v124 + 184 * v268, __s);
      v124 = *v270;
    }

    v128 = (*(v280 + 160))(v264, v281, **(v124 + 184 * v268), 2, 1, &v307 + 2, &v306);
    if ((v128 & 0x80000000) != 0)
    {
      goto LABEL_410;
    }

    v151 = v268 + v268 * v258;
    v152 = HIWORD(v307);
    v153 = *(v276 + 133) + 184 * v268;
    *(v153 + 18) = HIWORD(v307);
    v154 = *(v153 + 16);
    v155 = (v152 - v154);
    cstdlib_memcpy((*(v276 + 135) + v151), (*(v276 + 136) + v154), v155);
    *(*(v276 + 135) + v151 + v155) = 0;
    v156 = (*(v276 + 133) + 184 * v268);
    v156[7] = (*(v276 + 135) + v151);
    v157 = *(v280 + 160);
    v158 = **v156;
    v159 = cstdlib_strlen(__s);
    v128 = v157(v264, v281, v158, 3, (v159 + 1), __s, &v306);
    if ((v128 & 0x80000000) != 0)
    {
      goto LABEL_410;
    }

    v160 = *(v272 + 8);
    v161 = cstdlib_strlen(__s);
    v162 = heap_Alloc(v160, v161 + 1);
    *(*v270 + 184 * v268 + 24) = v162;
    if (!v162)
    {
      goto LABEL_411;
    }

    cstdlib_strcpy(v162, __s);
    if (v262)
    {
      v163 = v288;
      hlp_NLUStrRemoveKeyVal(v288, "POS");
      hlp_NLUStrSet(v163, "POS", v100);
      v164 = *(v280 + 160);
      v165 = **(*v270 + 184 * v268);
      v166 = v288;
      v167 = cstdlib_strlen(v288);
      v164(v264, v281, v165, 14, (v167 + 1), v166, &v306);
      v168 = *(v272 + 8);
      v169 = cstdlib_strlen(v166);
      v170 = heap_Alloc(v168, v169 + 1);
      *(*v270 + 184 * v268 + 40) = v170;
      if (!v170)
      {
        goto LABEL_411;
      }

      cstdlib_strcpy(v170, v166);
      v303 = "";
      if (v166)
      {
        heap_Free(*(v272 + 8), v166);
        v288 = 0;
      }
    }

    if ((v260 & 1) == 0)
    {
      v171 = *(v280 + 160);
      v172 = **(*v270 + 184 * v268);
      v173 = cstdlib_strlen(__s1);
      v128 = v171(v264, v281, v172, 10, (v173 + 1), __s1, &v306);
      if ((v128 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }
    }

LABEL_287:
    v122 = v268 + 1;
    v121 = v262;
    if (*v279 <= (v268 + 1))
    {
      goto LABEL_288;
    }
  }

  v14 = v272;
  log_OutText(*(v272 + 32), "FE_PHRASING", 5, 0, "Error: the prosody word should has at least one lexical word", v118, v119, v120, v257);
LABEL_412:
  v15 = v276;
  v40 = v271;
  v101 = v274;
  v99 = __s;
LABEL_139:
  if (v288)
  {
    heap_Free(*(v14 + 8), v288);
    v288 = 0;
  }

  if ((v23 & 0x80000000) != 0)
  {
    v102 = v40;
    v103 = v289;
    if (v289)
    {
      v104 = *(v289 + 8);
      if (v104)
      {
        heap_Free(*(v14 + 8), v104);
      }

      *(v103 + 8) = 0;
      heap_Free(*(v14 + 8), v103);
      v289 = 0;
    }

    freePwTids(v14, v15);
    v40 = v102;
  }

  if (v294)
  {
    heap_Free(*(v14 + 8), v294);
  }

  if (v101)
  {
    if (v40)
    {
      v105 = v40;
      v106 = (v101 + 8);
      do
      {
        v107 = *(v106 - 1);
        if (v107)
        {
          heap_Free(*(v14 + 8), v107);
          *(v106 - 1) = 0;
        }

        if (*v106)
        {
          heap_Free(*(v14 + 8), *v106);
          *v106 = 0;
        }

        v106 += 5;
        --v105;
      }

      while (v105);
    }

    heap_Free(*(v14 + 8), v101);
  }

  v108 = v292;
  if (v292)
  {
    v109 = v307;
    if (v307)
    {
      v110 = v292;
      do
      {
        if (*v110)
        {
          heap_Free(*(v14 + 8), *v110);
          *v110 = 0;
        }

        v110 += 23;
        --v109;
      }

      while (v109);
    }

    heap_Free(*(v14 + 8), v108);
    v292 = 0;
  }

  if (v99)
  {
    heap_Free(*(v14 + 8), v99);
  }

  if (v100)
  {
    heap_Free(*(v14 + 8), v100);
  }

  if (v307)
  {
    v111 = 0;
  }

  else
  {
    v111 = v23 == -1979703288;
  }

  if (v111)
  {
    return 0;
  }

  else
  {
    return v23;
  }
}

uint64_t pw_get_word_separating_markers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned int *a7)
{
  v32 = 0;
  v31 = 0;
  v13 = (*(a1 + 176))(a3, a4, a5, 1, &v31, &v32);
  if ((v13 & 0x80000000) != 0)
  {
LABEL_18:
    if (*a6)
    {
      heap_Free(*(a2 + 8), *a6);
      *a6 = 0;
    }

    return v13;
  }

  if (!v32)
  {
    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Warning: no marker in lingdb.", v10, v11, v12, v31);
    return v13;
  }

  v14 = heap_Calloc(*(a2 + 8), v32, 4);
  *a6 = v14;
  if (!v14)
  {
    goto LABEL_17;
  }

  *a7 = 0;
  v19 = v32;
  if (v32)
  {
    v20 = 0;
    v21 = v31;
    v22 = v32;
    v23 = v31;
    v24 = v31;
    do
    {
      v25 = *v24;
      v24 += 8;
      v26 = (1 << v25) & 0x3C0010124001140;
      if (v25 <= 0x39 && v26 != 0)
      {
        *(v14 + 4 * v20) = *(v23 + 12) - *(v21 + 12);
        v20 = *a7 + 1;
        *a7 = v20;
      }

      v23 = v24;
      --v22;
    }

    while (v22);
    v28 = v20 + 1;
  }

  else
  {
    v28 = 1;
  }

  if (v28 > v19)
  {
    v29 = heap_Realloc(*(a2 + 8), v14, 4 * v28);
    *a6 = v29;
    if (!v29)
    {
LABEL_17:
      log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0, v15, v16, v17, v18, v31);
      v13 = 2315264010;
      goto LABEL_18;
    }
  }

  return v13;
}

uint64_t getTNmarker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = 2315264010;
  v31 = 0;
  v30 = 0;
  v13 = heap_Alloc(*(a2 + 8), 24);
  v14 = v13;
  if (!v13)
  {
    goto LABEL_31;
  }

  *v13 = 0;
  *(v13 + 4) = 0;
  *(v13 + 8) = 0;
  v15 = (*(a3 + 176))(a4, a5, a1, 1, &v30, &v31);
  v16 = v15;
  if ((v15 & 0x80000000) != 0)
  {
    v12 = v15;
  }

  else
  {
    v17 = v31;
    if (v31)
    {
      v18 = v30;
      do
      {
        if (*v18 == 34 || *v18 == 70 && v18[6] >= 3u)
        {
          if (!*v14)
          {
            *v14 = 1;
          }

          ++*(v14 + 4);
        }

        v18 += 8;
        --v17;
      }

      while (v17);
    }

    if (!*v14)
    {
LABEL_24:
      v12 = v16;
      goto LABEL_31;
    }

    v19 = heap_Alloc(*(a2 + 8), 4 * *(v14 + 4));
    *(v14 + 8) = v19;
    if (!v19)
    {
      goto LABEL_28;
    }

    v20 = heap_Alloc(*(a2 + 8), 2 * *(v14 + 4));
    *(v14 + 16) = v20;
    if (v20)
    {
      if (v31)
      {
        v21 = 0;
        v22 = 0;
        v23 = v30 + 3;
        while (1)
        {
          v24 = *(v23 - 3);
          if (v24 == 34)
          {
            LOWORD(v26) = 0;
            v25 = v22;
            *(*(v14 + 8) + 4 * v22) = *v23;
          }

          else
          {
            if (v24 != 70 || v23[3] < 3u)
            {
              goto LABEL_23;
            }

            v25 = v22;
            *(*(v14 + 8) + 4 * v22) = *v23;
            v26 = v23[3];
          }

          *(v20 + 2 * v25) = v26;
          ++v22;
LABEL_23:
          ++v21;
          v23 += 8;
          if (v21 >= v31)
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_24;
    }
  }

  v27 = *(v14 + 8);
  if (v27)
  {
    heap_Free(*(a2 + 8), v27);
    *(v14 + 8) = 0;
  }

LABEL_28:
  v28 = *(v14 + 16);
  if (v28)
  {
    heap_Free(*(a2 + 8), v28);
    *(v14 + 16) = 0;
  }

  heap_Free(*(a2 + 8), v14);
  v14 = 0;
LABEL_31:
  *a6 = v14;
  return v12;
}

uint64_t pw_PYT_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int *a7, unsigned int a8, uint64_t *a9, unsigned __int16 *a10)
{
  v10 = *a9;
  v11 = *a10;
  v140 = 0;
  v12 = a6;
  v139 = 0;
  v138 = 0;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v129 = (a5 + 24);
    v131 = a8;
    v16 = 1;
    while (1)
    {
      v17 = (v10 + 184 * v14);
      if (*(v17 + 4) > 1u)
      {
        goto LABEL_9;
      }

      v18 = **v17;
      v139 = 0;
      v13 = (*(a1 + 184))(a2, a3, v18, 9, &v139);
      if ((v13 & 0x80000000) == 0 && v139 == 1)
      {
        v13 = (*(a1 + 176))(a2, a3, v18, 9, &v140, &v139);
        if ((v13 & 0x80000000) != 0)
        {
LABEL_76:
          heap_Free(*(a4 + 8), v10);
          return v13;
        }
      }

      if (v140 && cstdlib_strcmp(v140, "mnc!"))
      {
LABEL_9:
        v19 = 1;
        v16 = 1;
      }

      else
      {
        v20 = 0;
        if (v12)
        {
          v21 = v129;
          while (1)
          {
            v22 = *v21;
            v21 += 20;
            if (v22 == **v17)
            {
              break;
            }

            if (v12 == ++v20)
            {
              LODWORD(v20) = v12;
              goto LABEL_16;
            }
          }

          LODWORD(v20) = v20;
        }

LABEL_16:
        if (a8)
        {
          v23 = *(a5 + 40 * v20 + 28);
          v24 = a7;
          v25 = v131;
          while (1)
          {
            v26 = *v24++;
            if (v26 == v23)
            {
              break;
            }

            if (!--v25)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:
          if (v16 != 1)
          {
            v139 = 0;
            v138 = 0;
            v13 = (*(a1 + 184))(a2, a3, v18, 19, &v139);
            v16 = 0;
            v19 = 1;
            if ((v13 & 0x80000000) == 0 && v139 == 1)
            {
              v13 = (*(a1 + 176))(a2, a3, v18, 19, &v138, &v139);
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }

              v16 = 0;
              v19 = cstdlib_strcmp(v138, "left") == 0;
            }

            goto LABEL_26;
          }
        }

        v16 = 0;
        v19 = 1;
      }

LABEL_26:
      v15 += v19;
      if (v11 <= ++v14)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = 0;
  v13 = 0;
LABEL_29:
  v27 = a4;
  v28 = heap_Calloc(*(a4 + 8), v15, 184);
  if (v28)
  {
    *a10 = v15;
    *a9 = v28;
    if (v11)
    {
      v130 = v28;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 1;
      v128 = v11;
      while (1)
      {
        v37 = (v10 + 184 * v34);
        if (*(v37 + 4) < 2u)
        {
          v132 = v35;
          v50 = **v37;
          v139 = 0;
          if (((*(a1 + 184))(a2, a3, v50, 9, &v139) & 0x80000000) == 0 && v139 == 1)
          {
            v54 = (*(a1 + 176))(a2, a3, v50, 9, &v140, &v139);
            if ((v54 & 0x80000000) != 0)
            {
              v13 = v54;
              goto LABEL_76;
            }
          }

          if (v140 && cstdlib_strcmp(v140, "mnc!"))
          {
            v55 = v10;
            v27 = a4;
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> Not a PYT PW. Skip by copying pPWIn[%d] to pPWOut[%d].", v51, v52, v53, v33);
            v45 = pw_copy_pw(a4, v37, v130 + 184 * v132, v56, v57, v58, v59, v60);
            v49 = v128;
            if ((v45 & 0x80000000) != 0)
            {
              return v45;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v61, v62, v63, v33);
            v64 = (v132 + 1);
            v36 = 1;
            goto LABEL_68;
          }

          v49 = v128;
          v65 = 0;
          if (v12)
          {
            v66 = (a5 + 24);
            while (1)
            {
              v67 = *v66;
              v66 += 20;
              if (v67 == **v37)
              {
                break;
              }

              if (v12 == ++v65)
              {
                LODWORD(v65) = v12;
                goto LABEL_48;
              }
            }

            LODWORD(v65) = v65;
          }

LABEL_48:
          if (a8)
          {
            v68 = *(a5 + 40 * v65 + 28);
            v69 = a7;
            v70 = a8;
            while (1)
            {
              v71 = *v69++;
              if (v71 == v68)
              {
                break;
              }

              if (!--v70)
              {
                goto LABEL_52;
              }
            }

            if (v36 == 1)
            {
LABEL_63:
              v55 = v10;
              v27 = a4;
              v105 = v132;
              v106 = v132;
              log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> I am First PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v51, v52, v53, v33);
            }

            else
            {
              v55 = v10;
              v27 = a4;
              v105 = v132;
              v106 = v132;
              log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> I am a PYT PW start with Marker! Copy pPWIn[%d] to pPWOut[%d].", v51, v52, v53, v33);
            }

LABEL_66:
            v45 = pw_copy_pw(v27, v37, v130 + 184 * v106, v107, v108, v109, v110, v111);
            if ((v45 & 0x80000000) != 0)
            {
              return v45;
            }

            log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v112, v113, v114, v33);
            v36 = 0;
            v64 = (v105 + 1);
LABEL_68:
            v35 = v64;
            v10 = v55;
            goto LABEL_69;
          }

LABEL_52:
          if (v36 == 1)
          {
            goto LABEL_63;
          }

          v139 = 0;
          v138 = 0;
          if (((*(a1 + 184))(a2, a3, v50, 19, &v139) & 0x80000000) != 0 || v139 != 1)
          {
            v55 = v10;
            v27 = a4;
            v105 = v132;
            v106 = v132;
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> The WORD_DCT record doesn't has field LD_W_INPUTSPACETAG. Copy pPWIn[%d] to pPWOut[%d].", v72, v73, v74, v33);
            goto LABEL_66;
          }

          v45 = (*(a1 + 176))(a2, a3, v50, 19, &v138, &v139);
          if ((v45 & 0x80000000) != 0)
          {
            return v45;
          }

          v75 = (v10 + 184 * v34);
          v79 = cstdlib_strcmp(v138, "left");
          v27 = a4;
          v80 = *(a4 + 32);
          if (v79)
          {
            v81 = v132 - 1;
            log_OutText(v80, "FE_PHRASING", 5, 0, ">>> No space before this PYT unit. Merge pPWIn[%d] to pPWOut[%d] ...", v76, v77, v78, v33);
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "pPWIn[%d] is: ", v82, v83, v84, v33);
            v85 = pw_show_pw(a4, v37);
            if ((v85 & 0x80000000) != 0)
            {
              v13 = v85;
              break;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Before merge, pPWOut[%d] is: ", v86, v87, v88, v81);
            v89 = v130 + 184 * v81;
            v90 = pw_show_pw(a4, v89);
            if ((v90 & 0x80000000) != 0)
            {
              v13 = v90;
              break;
            }

            v91 = *(v89 + 8) + 1;
            *(v89 + 8) = v91;
            v92 = heap_Realloc(*(a4 + 8), *v89, 2 * v91);
            *v89 = v92;
            if (!v92)
            {
              v13 = 2315264010;
              log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v93, v94, v95, v96, v125);
              return v13;
            }

            v97 = *v75;
            *(v92 + 2 * *(v89 + 8) - 2) = **v75;
            heap_Free(*(a4 + 8), v97);
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "After merge, pPWOut[%d] is: ", v98, v99, v100, v81);
            v101 = pw_show_pw(a4, v89);
            if ((v101 & 0x80000000) != 0)
            {
              v13 = v101;
              goto LABEL_76;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Merge pPWIn[%d] to pPWOut[%d] done!", v102, v103, v104, v33);
            v36 = 0;
            v27 = a4;
            v35 = v132;
          }

          else
          {
            log_OutText(v80, "FE_PHRASING", 5, 0, ">>> There is a space before this PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v76, v77, v78, v33);
            v45 = pw_copy_pw(a4, v37, v130 + 184 * v132, v115, v116, v117, v118, v119);
            if ((v45 & 0x80000000) != 0)
            {
              return v45;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v120, v121, v122, v33);
            v36 = 0;
            v35 = (v132 + 1);
          }
        }

        else
        {
          v38 = v35;
          v39 = v35;
          log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, ">>> Not a PYT PW. Skip by copying pPWIn[%d] to pPWOut[%d].", v30, v31, v32, v33);
          v45 = pw_copy_pw(v27, v37, v130 + 184 * v39, v40, v41, v42, v43, v44);
          if ((v45 & 0x80000000) != 0)
          {
            return v45;
          }

          log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v46, v47, v48, v33);
          v36 = 1;
          v49 = v128;
          v35 = (v38 + 1);
        }

LABEL_69:
        v33 = ++v34;
        if (v33 >= v49)
        {
          v13 = 0;
          break;
        }
      }
    }
  }

  else
  {
    v13 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v29, v30, v31, v32, v124);
  }

  if (v10)
  {
    goto LABEL_76;
  }

  return v13;
}

uint64_t pw_group_csc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, uint64_t a6, uint64_t a7, uint64_t *a8, _WORD *a9, unsigned __int16 a10, const char **a11)
{
  v12 = a7;
  v102 = *MEMORY[0x277D85DE8];
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "pw_group_csc Begin", a6, a7, a8, v86);
  v16 = heap_Calloc(*(a1 + 8), v12, 184);
  v93 = a8;
  *a8 = v16;
  if (!v16)
  {
    v83 = 2315264010;
    v84 = *(a1 + 32);
LABEL_77:
    log_OutPublic(v84, "FE_PHRASING", 37000, 0, v17, v18, v19, v20, v87);
    return v83;
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
        v53 = a6 + 184 * v22;
        v55 = *(v53 + 8);
        v54 = (v53 + 8);
        if (v55 != 1)
        {
          break;
        }

        v56 = (v96 - 1);
        if (v56 != 1 && (v56 != 2 || !v97))
        {
          break;
        }

        v57 = cstdlib_strcmp(v46, "latin") && IsChineseLetter;
        v58 = v57 ? v52 : 0;
        if (v58 != 1)
        {
          break;
        }

        if (cstdlib_strstr(a5, v37))
        {
          goto LABEL_56;
        }

        v59 = a11;
        v60 = a10;
        if (a10)
        {
          while (cstdlib_strcmp(v37, *v59))
          {
            ++v59;
            if (!--v60)
            {
              goto LABEL_51;
            }
          }

LABEL_56:
          v99 = v22 + 1;
          LOWORD(v22) = *v51;
          v63 = v88;
          v62 = v93;
LABEL_57:
          *v51 = v22 + 1;
          goto LABEL_58;
        }

LABEL_51:
        if (v97 || *(a6 + 184 * v22 + 72))
        {
          goto LABEL_56;
        }

        v61 = *v51 + 1;
        *v51 = v61;
        LOWORD(v22) = v22 + 1;
        v21 = a3;
        v62 = v93;
        v27 = (a3 + 24);
        if (v91 <= v22 || v61 >= 3u)
        {
          v99 = v22;
          v63 = v88;
          goto LABEL_58;
        }
      }

      v99 = v22;
      v63 = v88;
      v62 = v93;
      if (!*v51)
      {
        *v51 = *v54;
        v51 = &v99;
        goto LABEL_57;
      }

LABEL_58:
      ++*a9;
      v64 = v62;
      *(*v62 + 184 * v23) = heap_Calloc(*(v63 + 8), *(*v62 + 184 * v23 + 8), 2);
      v65 = *v64;
      v66 = *v64 + 184 * v23;
      v67 = *v66;
      if (!*v66)
      {
        break;
      }

      v22 = v99;
      v68 = a6 + 184 * v99;
      if (*(v66 + 8) <= *(v68 - 176))
      {
        if (*(v66 + 8))
        {
          v81 = 0;
          v82 = *(v68 - 184);
          do
          {
            *(v67 + 2 * v81) = *(v82 + 2 * v81);
            ++v81;
          }

          while (v81 < *(v66 + 8));
        }

        *(v66 + 72) = *(v68 - 112);
      }

      else
      {
        v69 = heap_Calloc(*(v63 + 8), 1, 1024);
        if (!v69)
        {
          break;
        }

        v70 = v69;
        v71 = *v93;
        v72 = *v93 + 184 * v23;
        *(v72 + 12) = 1;
        v73 = *(v72 + 8);
        if (v73)
        {
          v74 = 0;
          v75 = -v73;
          v76 = (a6 + 184 * v22 - 184 * v73);
          v77 = v73 - 1;
          do
          {
            v78 = *v76;
            v76 += 23;
            v79 = *v78;
            *(*(*v93 + 184 * v23) + 2 * (v75 + *(*v93 + 184 * v23 + 8))) = v79;
            sprintf(&v70[v74], "%d-", v79);
            v74 = cstdlib_strlen(v70);
            ++v75;
          }

          while (v77--);
          v71 = *v93;
          v63 = v88;
        }

        *(v71 + 184 * v23 + 72) = *(v68 - 112);
        log_OutText(*(v63 + 32), "FE_PHRASING", 5, 0, "\t group [tids:%s, ntok: %d]", v18, v19, v20, v70);
        heap_Free(*(v63 + 8), v70);
        v65 = *v93;
      }

      v21 = a3;
      v23 = (v89 + 1);
      v26 = (v65 + 184 * v23 + 8);
      v101 = 0;
      v100 = 0;
      v24 = v89 + 1;
      v27 = (a3 + 24);
      if (v22 >= v91)
      {
        goto LABEL_74;
      }
    }

    v83 = 2315264010;
    v84 = *(v63 + 32);
    goto LABEL_77;
  }

LABEL_74:
  log_OutText(*(v88 + 32), "FE_PHRASING", 5, 0, "pw_group_csc End", v18, v19, v20, v87);
  return 0;
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
  v35 = 0;
  v15 = *a6;
  while (1)
  {
    if (*(v15 + 184 * v13 + 8) >= 2u)
    {
      v35 = 0;
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
    v14 = pw_check_if_glue_forbidden(a1, a3, a4, a5, *(*v16 + 2 * v17 - 2), *(*v16 + 2 * v17), &v35);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    if (v35)
    {
      v18 = heap_Realloc(*(a2 + 8), *a6, 184 * *v7 + 184);
      if (!v18)
      {
        goto LABEL_21;
      }

      *a6 = v18;
      cstdlib_memset((v18 + 184 * *v7), 0, 0xB8uLL);
      v23 = *v7 + 1;
      v33 = v7;
      *v7 = v23;
      if (v13 + 2 < v23)
      {
        cstdlib_memmove((*a6 + 184 * (v13 + 2)), (*a6 + 184 * v13 + 184), (0xB800000000 * (v23 - v13) - 0x17000000000) >> 32);
      }

      v24 = *a6 + 184 * v13;
      v25 = *(v24 + 8) - v17;
      v26 = 184 * v13 + 184;
      *(*a6 + v26 + 8) = v25;
      *(v24 + 8) = v17;
      *(*a6 + v26) = heap_Calloc(*(a2 + 8), 2, v25);
      v15 = *a6;
      v27 = *a6 + v26;
      v28 = *v27;
      v7 = v33;
      if (!*v27)
      {
LABEL_21:
        log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0, v19, v20, v21, v22, v32);
        return 2315264010;
      }

      if (*(v27 + 8))
      {
        v29 = 0;
        v30 = *(v15 + 184 * v13) + 2 * v17;
        do
        {
          *(v28 + 2 * v29) = *(v30 + 2 * v29);
          ++v29;
        }

        while (v29 < *(v27 + 8));
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
  v60 = 0;
  v12 = *a3;
  v13 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 1296) - 8);
  if (!v13)
  {
    return inited;
  }

  v14 = v13;
  inited = hlp_igtree_initFeatureVector(v9, v13, (*(a6 + 1296) - 1));
  if ((inited & 0x80000000) != 0)
  {
    v24 = 0;
    goto LABEL_57;
  }

  v15 = heap_Calloc(*(v9 + 8), a5, 4);
  if (!v15)
  {
    v24 = 0;
    inited = 2315264010;
    goto LABEL_57;
  }

  v16 = v15;
  v49 = a4;
  v50 = a3;
  if (!v11)
  {
LABEL_49:
    *v49 = v11;
    *v50 = v12;
    goto LABEL_50;
  }

  v17 = 0;
  v18 = 0;
  v55 = a5 - 1;
  v53 = v15;
  v58 = v9;
  v56 = v14;
  while (1)
  {
    LOWORD(v19) = *(v12 + 184 * v17 + 8);
    v54 = v11;
    if (v19)
    {
      if (v55 != v18)
      {
        break;
      }
    }

LABEL_48:
    ++v17;
    v11 = v54;
    v9 = v58;
    v14 = v56;
    if (v17 >= v54)
    {
      goto LABEL_49;
    }
  }

  v20 = 0;
  v21 = 0;
  v52 = v17 + 2;
  v51 = v17 + 1;
  v22 = 2;
  while (1)
  {
    v23 = v18;
    v24 = v16;
    *(v16 + 4 * v18) = v19 - 1 == v20;
    v14 = v56;
    v25 = hlp_igtree_setFeatureVector(v58, v56, *(a6 + 1312), *(a6 + 1296), a2, a5, v18);
    if ((v25 & 0x80000000) != 0)
    {
      inited = v25;
      v9 = v58;
      goto LABEL_57;
    }

    inited = igtree_Process(a6, v56, &v60);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_56;
    }

    if (!cstdlib_strcmp(v60, "NOMATCH"))
    {
      v16 = v24;
      goto LABEL_43;
    }

    v26 = cstdlib_strcmp(v60, "1");
    v27 = *(v24 + 4 * v23);
    if (v27 != (v26 == 0))
    {
      break;
    }

    v16 = v24;
LABEL_43:
    v18 = v23 + 1;
    v20 = v21 + 1;
    v19 = *(v12 + 184 * v17 + 8);
    v22 += 2;
    if (++v21 >= v19 || v55 == (v23 + 1))
    {
      goto LABEL_48;
    }
  }

  if (!v23 || !v26)
  {
    goto LABEL_22;
  }

  v28 = a2 + 40 * v23;
  if (cstdlib_strcmp(*(v28 + 16), "normal") && cstdlib_strcmp(*(v28 + 16), "mnx") || *(v28 + 36))
  {
    v16 = v53;
    goto LABEL_43;
  }

  v27 = *(v53 + 4 * v23);
LABEL_22:
  if (v27)
  {
    v29 = v12 + 184 * v17;
    v30 = *(v29 + 8) + *(v29 + 192);
    *(v29 + 8) = v30;
    v31 = heap_Realloc(*(v58 + 8), *v29, 2 * v30);
    *v29 = v31;
    if (!v31)
    {
      inited = 2315264010;
      v9 = v58;
      v14 = v56;
      v24 = v53;
      goto LABEL_57;
    }

    LOWORD(v32) = *(v29 + 192);
    if (v32)
    {
      v33 = 0;
      v34 = *(v29 + 184);
      do
      {
        *(v31 - 2 * v32 + 2 * *(v29 + 8) + 2 * v33) = *(v34 + 2 * v33);
        ++v33;
        v32 = *(v29 + 192);
      }

      while (v33 < v32);
    }

    if (*(v29 + 72))
    {
      *(v29 + 72) = *(v29 + 256);
    }

    *(v29 + 12) |= *(v29 + 196);
    heap_Free(*(v58 + 8), *(v29 + 184));
    v35 = v54;
    if (v52 < v54)
    {
      cstdlib_memmove((v29 + 184), (v12 + 184 * v52), 184 * (v54 - v17) - 368);
    }

    v46 = 0xFFFF;
    v16 = v53;
    goto LABEL_42;
  }

  v36 = heap_Realloc(*(v58 + 8), v12, 184 * v54 + 184);
  if (!v36)
  {
    inited = 2315264010;
    v24 = v53;
LABEL_56:
    v9 = v58;
    v14 = v56;
    goto LABEL_57;
  }

  v37 = v36;
  cstdlib_memset((v36 + 184 * v54), 0, 0xB8uLL);
  v38 = v17 + 1;
  if (v51 < v54)
  {
    cstdlib_memmove((v37 + 184 * v17 + 368), (v37 + 184 * v51), 184 * (v54 + ~v17));
    v38 = v17 + 1;
  }

  v39 = v37 + 184 * v17;
  v40 = *(v39 + 8) + ~v21;
  v12 = v37;
  v41 = v37 + 184 * v38;
  *(v41 + 8) = v40;
  v42 = heap_Alloc(*(v58 + 8), 2 * v40);
  *v41 = v42;
  v16 = v53;
  if (v42)
  {
    if (*(v41 + 8))
    {
      v43 = 0;
      v44 = *v39 + v22;
      do
      {
        *(v42 + 2 * v43) = *(v44 + 2 * v43);
        ++v43;
      }

      while (v43 < *(v41 + 8));
    }

    v45 = 0;
    *(v41 + 72) = *(v39 + 72);
    *(v39 + 72) = 0;
    *(v41 + 112) = *(v39 + 112);
    *(v39 + 112) = 0;
    if (*(v39 + 12) == 1)
    {
      *(v39 + 12) = 0;
      v45 = 1;
    }

    *(v41 + 12) = v45;
    *(v39 + 8) = v21 + 1;
    v46 = 1;
    v35 = v54;
LABEL_42:
    inited = 0;
    v54 = (v46 + v35);
    goto LABEL_43;
  }

  inited = 2315264010;
  v9 = v58;
  v14 = v56;
LABEL_50:
  v24 = v16;
LABEL_57:
  hlp_igtree_freeFeatureVector(v9, v14, (*(a6 + 1296) - 1));
  heap_Free(*(v9 + 8), v14);
  if (v24)
  {
    heap_Free(*(v9 + 8), v24);
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
    if (!*a2)
    {
      goto LABEL_158;
    }

    v106 = a2;
    v105 = -1979703286;
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
            goto LABEL_180;
          }

          v21 = v20;
          cstdlib_strncpy(v20, v13 + 2, v19 - 2);
          if (v14)
          {
            v22 = v14;
            v23 = v12;
            v24 = v14;
            while (1)
            {
              if (!*v23)
              {
                goto LABEL_29;
              }

              if (!cstdlib_strcmp(*v23, v21))
              {
                break;
              }

              ++v23;
              if (!--v24)
              {
                goto LABEL_29;
              }
            }

            heap_Free(*(a1 + 8), v21);
          }

          else
          {
            v22 = 0;
LABEL_29:
            *(v12 + 8 * v22) = v21;
            ++v14;
          }
        }
      }

      v13 = hlp_NLUStrNext(v13);
    }

    while (v13);
    if (!v14)
    {
LABEL_158:
      v10 = 0;
      goto LABEL_186;
    }

    v25 = heap_Realloc(*(a1 + 8), v12, 8 * v14);
    if (v25)
    {
      v26 = v25;
      v27 = heap_Calloc(*(a1 + 8), 2, v14);
      if (v27)
      {
        v99 = v27;
        for (i = *v106; i; i = hlp_NLUStrNext(i))
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
              while (1)
              {
                v35 = *(v26 + 8 * v33);
                if (!v35)
                {
                  goto LABEL_49;
                }

                if (!cstdlib_strncmp(v35, i + 2, v34))
                {
                  break;
                }

                if (v14 == ++v33)
                {
                  goto LABEL_49;
                }
              }

              if ((v33 & 0x8000) == 0)
              {
                ++*(v99 + 2 * (v33 & 0x7FFF));
              }
            }
          }

LABEL_49:
          ;
        }

        v36 = heap_Calloc(*(a1 + 8), 8, v14);
        if (!v36)
        {
          v10 = 2315264010;
          v88 = v99;
          goto LABEL_179;
        }

        v37 = v36;
        v38 = 0;
        v39 = v99;
        do
        {
          v40 = heap_Calloc(*(a1 + 8), 8, *(v99 + 2 * v38));
          *(v37 + 8 * v38) = v40;
          if (!v40)
          {
            v88 = v99;
            v41 = 0;
            goto LABEL_165;
          }

          ++v38;
        }

        while (v14 != v38);
        v41 = heap_Calloc(*(a1 + 8), 2, v14);
        if (!v41)
        {
LABEL_164:
          v88 = v39;
          goto LABEL_165;
        }

        for (j = *v106; j; j = hlp_NLUStrNext(j))
        {
          v43 = hlp_NLUStrKeyLen(j);
          if (v43 >= 3)
          {
            v44 = *j - 69;
            v7 = v44 > 0xE;
            v45 = (1 << v44) & 0x4011;
            if (!v7 && v45 != 0 && j[1] == 95)
            {
              KeyIdx = hlp_getKeyIdx(v26, v14, j + 2, (v43 - 2));
              if ((KeyIdx & 0x80000000) == 0)
              {
                v48 = KeyIdx;
                v103 = *(v37 + 8 * KeyIdx);
                v49 = hlp_NLUStrKeyValue(j);
                v50 = v49;
                v51 = v49 ? hlp_NLUStrLength(v49) : 0;
                v52 = v51;
                if (!hlp_checkValExist(v103, *(v41 + 2 * v48), v50, v51))
                {
                  v53 = heap_Calloc(*(a1 + 8), 1, v52 + 2);
                  if (!v53)
                  {
LABEL_188:
                    v88 = v99;
                    goto LABEL_165;
                  }

                  if (v50)
                  {
                    v54 = v50;
                    v55 = v53;
                    cstdlib_strncpy(v53, v54, v52);
                  }

                  else
                  {
                    v55 = v53;
                    cstdlib_strcpy(v53, " ");
                  }

                  v56 = *(v41 + 2 * v48);
                  *&v103[8 * v56] = v55;
                  *(v41 + 2 * v48) = v56 + 1;
                }
              }
            }
          }
        }

        v57 = 0;
        v39 = v99;
        do
        {
          v58 = heap_Realloc(*(a1 + 8), *(v37 + 8 * v57), 8 * *(v41 + 2 * v57));
          if (!v58)
          {
            goto LABEL_164;
          }

          *(v37 + 8 * v57++) = v58;
        }

        while (v14 != v57);
        v59 = 0;
        while (!*(v41 + 2 * v59))
        {
LABEL_155:
          if (++v59 == v14)
          {
            v88 = v99;
            v105 = 0;
LABEL_165:
            for (k = 0; k != v14; ++k)
            {
              v90 = *(v37 + 8 * k);
              if (v90)
              {
                if (v41)
                {
                  v91 = *(v41 + 2 * k);
                  if (v91)
                  {
                    for (m = 0; m < v91; ++m)
                    {
                      v93 = *(*(v37 + 8 * k) + 8 * m);
                      if (v93)
                      {
                        heap_Free(*(a1 + 8), v93);
                        v91 = *(v41 + 2 * k);
                      }
                    }

                    v90 = *(v37 + 8 * k);
                  }
                }

                heap_Free(*(a1 + 8), v90);
              }
            }

            heap_Free(*(a1 + 8), v37);
            if (v41)
            {
              heap_Free(*(a1 + 8), v41);
            }

            v10 = v105;
LABEL_179:
            heap_Free(*(a1 + 8), v88);
            v12 = v26;
LABEL_180:
            if (v14)
            {
LABEL_181:
              for (n = 0; n != v14; ++n)
              {
                v95 = *(v26 + 8 * n);
                if (v95)
                {
                  heap_Free(*(a1 + 8), v95);
                }
              }

              v12 = v26;
            }

LABEL_186:
            heap_Free(*(a1 + 8), v12);
            return v10;
          }
        }

        v60 = 0;
        while (1)
        {
          v61 = *(v26 + 8 * v59);
          v62 = *(*(v37 + 8 * v59) + 8 * v60);
          v63 = *v106;
          v108 = 0;
          __s2 = 0;
          v104 = v63;
          if (!v63)
          {
            goto LABEL_129;
          }

          __s1 = v62;
          if (v62)
          {
            v97 = cstdlib_strlen(v62);
          }

          else
          {
            v97 = 0;
          }

          v64 = *(a1 + 8);
          v65 = cstdlib_strlen(v61);
          v66 = heap_Calloc(v64, 1, v65 + 3);
          if (!v66)
          {
            goto LABEL_188;
          }

          v67 = v66;
          cstdlib_strcpy(v66, "S_");
          __s = v67;
          cstdlib_strcat(v67, v61);
          v68 = *(a1 + 8);
          v69 = cstdlib_strlen(v61);
          v70 = heap_Calloc(v68, 1, v69 + 3);
          if (!v70)
          {
            v101 = 0;
            v102 = 0;
LABEL_122:
            v82 = -1979703286;
            v80 = __s;
            goto LABEL_123;
          }

          v71 = v70;
          cstdlib_strcpy(v70, "I_");
          v101 = v71;
          cstdlib_strcat(v71, v61);
          v72 = *(a1 + 8);
          v73 = cstdlib_strlen(v61);
          v74 = heap_Calloc(v72, 1, v73 + 3);
          if (!v74)
          {
            v102 = 0;
            goto LABEL_122;
          }

          v75 = v74;
          cstdlib_strcpy(v74, "E_");
          v102 = v75;
          cstdlib_strcat(v75, v61);
          v76 = __s1;
          if (!hlp_NLUStrFind(v104, __s, &__s2, &v108))
          {
            goto LABEL_94;
          }

          v77 = v108;
          if (!__s1 || v108)
          {
            goto LABEL_91;
          }

          if (cstdlib_strcmp(__s1, " "))
          {
            break;
          }

LABEL_95:
          if (!hlp_NLUStrFind(v104, v101, &__s2, &v108))
          {
            goto LABEL_103;
          }

          v78 = v108;
          if (__s1 && !v108)
          {
            if (!cstdlib_strcmp(__s1, " "))
            {
              goto LABEL_104;
            }

            v78 = v108;
          }

          if (!__s1 || v97 != v78 || cstdlib_strncmp(__s1, __s2, v78))
          {
LABEL_103:
            heap_Free(*(a1 + 8), v101);
            v101 = 0;
          }

LABEL_104:
          if (!hlp_NLUStrFind(v104, v102, &__s2, &v108))
          {
            goto LABEL_114;
          }

          v79 = v108;
          if (__s1 && !v108)
          {
            if (!cstdlib_strcmp(__s1, " "))
            {
              goto LABEL_115;
            }

            v79 = v108;
          }

          if (!__s1 || v97 != v79)
          {
LABEL_114:
            heap_Free(*(a1 + 8), v102);
            v102 = 0;
            if (!__s1)
            {
              goto LABEL_117;
            }

            goto LABEL_115;
          }

          if (cstdlib_strncmp(__s1, __s2, v79))
          {
            heap_Free(*(a1 + 8), v102);
            v102 = 0;
          }

LABEL_115:
          if (!cstdlib_strcmp(__s1, " "))
          {
            v76 = 0;
          }

LABEL_117:
          hlp_NLUStrRemoveRangeKey(v104, v61, v76);
          v80 = __s;
          if (__s)
          {
            if (!v101)
            {
              v81 = __s;
              if (!v102)
              {
                goto LABEL_120;
              }
            }
          }

          if (__s)
          {
            v85 = 1;
          }

          else
          {
            v85 = v101 == 0;
          }

          v86 = !v85;
          if (!v85)
          {
            v87 = v101;
            if (!v102)
            {
              goto LABEL_139;
            }
          }

          if (__s || v101 || !v102)
          {
            if (__s && v102)
            {
              hlp_NLUStrAppendKeyVal(v104, __s, v76);
              v81 = v102;
              goto LABEL_120;
            }

            if (__s && v101 && (v81 = __s, !v102))
            {
LABEL_120:
              hlp_NLUStrAppendKeyVal(v104, v81, v76);
              v80 = __s;
              v82 = 0;
            }

            else
            {
              if (!v102)
              {
                v86 = 0;
              }

              v87 = v102;
              if (v86)
              {
LABEL_139:
                hlp_NLUStrAppendKeyVal(v104, v87, v76);
                v83 = v101;
                v82 = 0;
LABEL_125:
                heap_Free(*(a1 + 8), v83);
LABEL_126:
                v84 = v102;
                if (!v102)
                {
                  goto LABEL_128;
                }

                goto LABEL_127;
              }

              v82 = 0;
              if (!__s)
              {
LABEL_124:
                v83 = v101;
                if (v101)
                {
                  goto LABEL_125;
                }

                goto LABEL_126;
              }
            }

LABEL_123:
            heap_Free(*(a1 + 8), v80);
            goto LABEL_124;
          }

          hlp_NLUStrAppendKeyVal(v104, v102, v76);
          v84 = v102;
          v82 = 0;
LABEL_127:
          heap_Free(*(a1 + 8), v84);
LABEL_128:
          if (v82 < 0)
          {
            v88 = v99;
            v105 = v82;
            goto LABEL_165;
          }

LABEL_129:
          if (++v60 >= *(v41 + 2 * v59))
          {
            goto LABEL_155;
          }
        }

        v77 = v108;
LABEL_91:
        if (__s1 && v97 == v77 && !cstdlib_strncmp(__s1, __s2, v77))
        {
          goto LABEL_95;
        }

LABEL_94:
        heap_Free(*(a1 + 8), __s);
        __s = 0;
        goto LABEL_95;
      }
    }

    else
    {
      v26 = v12;
    }

    v10 = 2315264010;
    goto LABEL_181;
  }

  return v10;
}

void pw_split_csc_pw(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  bzero(__dst, 0x400uLL);
  if (*(a1 + 12) == 1 && (*(a1 + 8) & 0xFFFE) == 4 && a2 != 0)
  {
    v5 = 1;
    v6 = a2;
    do
    {
      v7 = v5;
      v8 = cstdlib_strstr(v6, ".");
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
      cstdlib_strncpy(__dst, a2, (v6 + ~a2));
      cstdlib_strcat(__dst, "{SEP2}");
      cstdlib_strcat(__dst, v6);
      cstdlib_strcpy(a2, __dst);
    }
  }
}

uint64_t checkAttachedPunc(const char *a1)
{
  v2 = cstdlib_strlen(a1);
  v5 = 0;
  v3 = v2;
  if (v2)
  {
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
  result = cstdlib_strchr(a1, a3);
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
      v10 = cstdlib_strlen(v8);
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

      if (!cstdlib_strncmp(v9, __s2, v7))
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

char *hlp_checkValExist(char *result, unsigned int a2, const char *a3, unsigned int a4)
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
      while (1)
      {
        result = *v5;
        if (!*v5)
        {
          break;
        }

        if (cstdlib_strlen(result) == v6 && !cstdlib_strncmp(*v5, v4, v6))
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

    else
    {
      return 0;
    }
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
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v8 = (*(a2 + 96))(a3, a4, "fecfg", a6, &v19, &v18, &v17);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = 2315264010;
  if (v19)
  {
    v10 = v18 == 0;
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
      v12 = v11;
      cstdlib_strcpy(v11, ",;:.?!_~|");
      v13 = v12 + 9;
LABEL_11:
      *v13 = 0;
      *a5 = v12;
      return v8;
    }
  }

  else
  {
    v14 = cstdlib_strlen(*v19);
    v15 = heap_Alloc(*(a1 + 8), v14 + 1);
    if (v15)
    {
      v12 = v15;
      cstdlib_strcpy(v15, *v19);
      v13 = &v12[v14 - 1];
      goto LABEL_11;
    }
  }

  return v9;
}

uint64_t com_crf_GetCfgParamValNN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char **a6)
{
  *a6 = a5;
  __c_1 = -1;
  __c = 0;
  v10 = 0;
  v7 = (*(a3 + 96))(a1, a2, "fecfg", a4, &v10, &__c_1, &__c);
  if ((v7 & 0x80000000) == 0 && __c_1)
  {
    v8 = cstdlib_strchr(*v10, __c);
    if (v8)
    {
      *v8 = 0;
    }

    *a6 = *v10;
  }

  return v7;
}

uint64_t ruleNNInit(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8)
{
  v106 = *MEMORY[0x277D85DE8];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  *v83 = 0u;
  v84 = 0u;
  v80 = 0;
  v78 = 0;
  *__s1 = 0;
  *__c = 0;
  v77 = 0;
  v75 = 0;
  v73 = 0;
  *v74 = 0;
  if ((com_crf_GetCfgParamValNN(a5, a6, a4, "fephrase_max_rule", "1024", &v73) & 0x80000000) != 0)
  {
    v12 = 1024;
  }

  else
  {
    v12 = cstdlib_atoi(v73);
  }

  v17 = heap_Calloc(*(a3 + 8), 1, v12);
  v68 = a8;
  if (!v17)
  {
    v27 = a3;
    log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0, v13, v14, v15, v16, v66);
    v37 = -1979703286;
    goto LABEL_39;
  }

  v81 = 0;
  __s2 = 0;
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  *__dst = 0u;
  v100 = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &__s2);
  if (Str < 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v81), Str < 0))
  {
    v49 = Str;
LABEL_37:
    v27 = a3;
    log_OutText(*(a3 + 32), "FE_PHRASING", 0, 0, "Could not assemble broker string for SP rules %s", v19, v20, v21, "sprules");
    v37 = v49 | 0x8A002000;
    goto LABEL_39;
  }

  cstdlib_strcpy(__dst, "sprules");
  cstdlib_strcat(__dst, "_");
  cstdlib_strcat(__dst, __s2);
  cstdlib_strcat(__dst, "_");
  cstdlib_strcat(__dst, v81);
  v22 = brokeraux_ComposeBrokerString(a3, __dst, 1, 1, __s2, 0, 0, v83, 0x100uLL);
  if (v22 < 0)
  {
    v49 = v22;
    goto LABEL_37;
  }

  log_OutText(*(a3 + 32), "FE_PHRASING", 5, 0, "looking for SP rules %s at %s", v19, v20, v21, "sprules");
  v23 = ssftriff_reader_ObjOpen(a1, a2, 2, v83, "SPDT", 1031, v74);
  if (v23 < 0)
  {
    v37 = v23;
    v27 = a3;
    log_OutText(*(a3 + 32), "FE_PHRASING", 0, 0, "no sp rules", v24, v25, v26, v67);
    *(a7 + 10) = 0;
    *a7 = 0;
  }

  else
  {
    v27 = a3;
    while (1)
    {
      v28 = ssftriff_reader_OpenChunk(*v74, __s1, &v78, &v77);
      if (v28 < 0)
      {
        break;
      }

      if (!cstdlib_strcmp(__s1, "DSTR"))
      {
        ssftriff_reader_GetChunkData(*v74, v78, __c, v36);
        if (inited < 0)
        {
          goto LABEL_80;
        }

        v75 = 0;
        ssftriff_reader_ReadStringZ(*v74, *__c, v78, 0, 0, &v75);
        ssftriff_reader_ReadStringZ(*v74, *__c, v78, 0, v17, &v75);
        v39 = cstdlib_strchr(v17, 10);
        if (v39)
        {
          *v39 = 0;
        }

        v40 = cstdlib_strchr(v17, 58);
        v41 = v40 ? cstdlib_atoi(v40 + 2) : 0;
        v42 = v75;
        inited = initPhrasingRuleStructNN(a3, a7, v41);
        if (inited < 0)
        {
          goto LABEL_80;
        }

        if (v41)
        {
          v43 = v41;
          v44 = 0;
          while (1)
          {
            do
            {
              v75 = 0;
              ssftriff_reader_ReadStringZ(*v74, *__c, v78, v42, 0, &v75);
              ssftriff_reader_ReadStringZ(*v74, *__c, v78, v42, v17, &v75);
              v42 += v75;
              v45 = v17 + 1;
              for (i = v17; ; ++i)
              {
                v47 = *i;
                if (v47 > 0x23)
                {
                  goto LABEL_30;
                }

                if (((1 << v47) & 0x100000200) == 0)
                {
                  break;
                }

                ++v45;
              }
            }

            while (((1 << v47) & 0x800002401) != 0);
LABEL_30:
            while (v47)
            {
              if (v47 == 35)
              {
                *(v45 - 1) = 0;
                break;
              }

              v48 = *v45++;
              LOBYTE(v47) = v48;
            }

            inited = addPhrasingRuleNN(a3, a7, v17);
            if (inited < 0)
            {
              break;
            }

            if (++v44 >= v43)
            {
              goto LABEL_12;
            }
          }

LABEL_80:
          v37 = inited;
          a8 = v68;
          goto LABEL_39;
        }
      }

LABEL_12:
      v37 = ssftriff_reader_CloseChunk(*v74);
      a8 = v68;
      if (v37 < 0)
      {
        goto LABEL_39;
      }
    }

    if ((v28 & 0x1FFF) == 0x14)
    {
      v37 = 0;
    }

    else
    {
      v37 = v28;
    }
  }

LABEL_39:
  if (*v74)
  {
    v50 = ssftriff_reader_ObjClose(*v74, v29, v30, v31, v32, v33, v34, v35);
    if (v50 < 0 && v37 > -1)
    {
      v37 = v50;
    }
  }

  if (v17)
  {
    heap_Free(*(v27 + 8), v17);
  }

  if (a7 && v37 < 0)
  {
    releasePhrasingRuleStructNN(v27, a7);
  }

  v52 = 0;
  v81 = 0;
  __s2 = 0;
  LOWORD(v77) = -1;
  LOBYTE(__c[0]) = 0;
  *(a8 + 1) = 0u;
  v53 = a8 + 1;
  v54 = a8 + 11;
  v55 = a8 + 21;
  v56 = a8 + 31;
  v53[1] = 0u;
  v53[2] = 0u;
  __dst[0] = "JOY_KEYS";
  __dst[1] = "DID_KEYS";
  *&v100 = "NEU_KEYS";
  *(&v100 + 1) = "COM_KEYS";
  v53[3] = 0u;
  v53[4] = 0u;
  while (1)
  {
    cstdlib_strcpy(v83, "statbnd_");
    cstdlib_strcat(v83, __dst[v52]);
    LOWORD(v77) = 0;
    if (((*(a4 + 96))(a5, a6, "fecfg", v83, &__s2, &v77, __c) & 0x80000000) != 0 || !v77)
    {
      break;
    }

    v57 = cstdlib_strchr(*__s2, LOBYTE(__c[0]));
    if (v57)
    {
      *v57 = 0;
    }

    v58 = *__s2;
    v59 = **__s2;
    if (**__s2)
    {
      v60 = 0;
      do
      {
        for (j = 0; v59; v59 = v58[++j])
        {
          if (v59 == 44)
          {
            break;
          }
        }

        cstdlib_strcpy(v83, "statbnd_");
        cstdlib_strncat(v83, v58, j);
        LOWORD(v77) = 0;
        (*(a4 + 96))(a5, a6, "fecfg", v83, &v81, &v77, __c);
        if (v77)
        {
          v62 = cstdlib_strchr(*v81, LOBYTE(__c[0]));
          if (v62)
          {
            *v62 = 0;
          }

          v63 = cstdlib_atoi(*v81);
          v64 = v53;
          if (v52)
          {
            v64 = v52 == 1 ? v54 : v56;
            if (v52 == 2)
            {
              v64 = v55;
            }
          }

          *(v64 + v60) = v63;
        }

        if (v58[j] == 44)
        {
          v58 += j + 1;
        }

        else
        {
          v58 += j;
        }

        ++v60;
        v59 = *v58;
      }

      while (*v58);
    }

    else
    {
      v60 = 0;
    }

    if (++v52 == 4)
    {
      *v68 = v60;
      return 0;
    }
  }

  return 0;
}

uint64_t doesNNCustermizedFE(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0;
  *__s2 = -22590;
  if (result)
  {
    v5 = result;
    v6 = *(a2 + 1088);
    v7 = *(result + 8);
    v8 = cstdlib_strlen(v6);
    v9 = heap_Alloc(v7, v8 + 2);
    if (v9)
    {
      v10 = v9;
      if (*(a2 + 1072))
      {
        v24 = v5;
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = *(a2 + 1064) + 184 * v11;
          v14 = *(v13 + 36);
          v15 = v14 > 0xA;
          v16 = (1 << v14) & 0x610;
          if (!v15 && v16 != 0)
          {
            v18 = *(v13 + 16);
            v19 = *(v13 + 18);
            if (v18 != v19)
            {
              v20 = v19 - v18;
              cstdlib_memcpy(v10, &v6[v18], v19 - v18);
              *(v10 + v20) = 0;
              v21 = cstdlib_strlen(v10);
              v22 = Utf8_LengthInUtf8chars(v10, v21);
              if (v22)
              {
                v23 = 0;
                do
                {
                  utf8_getUTF8Char(v10, v23, __s1);
                  if (!cstdlib_strcmp(__s1, __s2))
                  {
                    ++v12;
                  }

                  v23 += utf8_determineUTF8CharLength(__s1[0]);
                  --v22;
                }

                while (v22);
              }
            }
          }

          ++v11;
        }

        while (v11 < *(a2 + 1072));
        v5 = v24;
        if (v12 >= 3u)
        {
          *a3 = 1;
        }
      }

      heap_Free(*(v5 + 8), v10);
      return 0;
    }

    else
    {
      return 2315264010;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t addPOS(uint64_t a1, unsigned int a2, char *__s, uint64_t a4)
{
  v8 = *(a1 + 8);
  v9 = cstdlib_strlen(__s);
  v10 = heap_Calloc(v8, 1, (v9 + 1));
  *(*(a4 + 1064) + 184 * a2 + 48) = v10;
  if (v10)
  {
    cstdlib_strcpy(v10, __s);
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v11, v12, v13, v14, v16);
    return 2315264010;
  }
}

uint64_t checkMSPOSForCompoundNN(uint64_t a1, uint64_t a2, char *__s2, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  CompoundAccent = 0;
  v45 = 0;
  v46 = 0;
  do
  {
    v12 = v10;
    if (v10 >= *(a4 + 360))
    {
      return CompoundAccent;
    }

    if (*(*(a4 + 352) + 4 * v10) == 1)
    {
      v13 = *(*(*(a4 + 344) + 8 * v10) + 2);
      v14 = cstdlib_strlen(__s2);
      CompoundAccent = do_pcre_exec(a4, v13, __s2, v14, 0, &v46, v15, v16);
      if ((CompoundAccent & 0x80000000) != 0)
      {
        return CompoundAccent;
      }
    }

    else if (!cstdlib_strcmp((*(a4 + 528) + *(*(a4 + 536) + 4 * **(*(a4 + 344) + 8 * v10))), __s2))
    {
      v46 = 1;
    }

    v10 = v12 + 1;
    v17 = v12;
  }

  while (!v46);
  if (v46 != 1)
  {
    return CompoundAccent;
  }

  v18 = *(*(a4 + 352) + 4 * v12);
  v19 = *(a4 + 528);
  v20 = v18 == 1;
  v21 = 4;
  if (v20)
  {
    v21 = 8;
  }

  v22 = *(*(a4 + 536) + 4 * *(*(*(a4 + 344) + 8 * v17) + v21));
  if (cstdlib_strcmp((v19 + v22), *(a4 + 640)))
  {
    v23 = a2;
    v24 = *(*(a5 + 1064) + 184 * a2 + 120);
    if (v24)
    {
      heap_Free(*(a1 + 8), v24);
      *(*(a5 + 1064) + 184 * a2 + 120) = 0;
    }

    v25 = *(a1 + 8);
    v26 = cstdlib_strlen((v19 + v22));
    v27 = heap_Calloc(v25, 1, (v26 + 52));
    *(*(a5 + 1064) + 184 * v23 + 120) = v27;
    if (v27)
    {
      cstdlib_strcpy(v27, (v19 + v22));
      goto LABEL_17;
    }

LABEL_24:
    CompoundAccent = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v28, v29, v30, v31, v44);
    return CompoundAccent;
  }

  v45 = 0;
  v46 = 0;
  CompoundAccent = getCompoundAccent(a4, __s2, &v46, &v45 + 1, &v45);
  if ((CompoundAccent & 0x80000000) != 0)
  {
    return CompoundAccent;
  }

  if (!v46)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no stress information on first word of compound word : word index=%d pos=%s", v36, v37, v38, a2);
    v23 = a2;
    v43 = *(*(a5 + 1064) + 184 * a2 + 120);
    if (v43)
    {
      heap_Free(*(a1 + 8), v43);
      *(*(a5 + 1064) + 184 * a2 + 120) = 0;
    }

    goto LABEL_17;
  }

  v39 = *(a1 + 8);
  v40 = cstdlib_strlen((v19 + v22));
  v41 = heap_Calloc(v39, 1, v40 + v45 - HIWORD(v45) + 2);
  *(*(a5 + 1064) + 184 * a2 + 120) = v41;
  if (!v41)
  {
    goto LABEL_24;
  }

  v23 = a2;
  cstdlib_strcpy(v41, (v19 + v22));
  cstdlib_strcat(*(*(a5 + 1064) + 184 * a2 + 120), "-");
  cstdlib_strncat(*(*(a5 + 1064) + 184 * a2 + 120), &__s2[HIWORD(v45)], v45 - HIWORD(v45));
LABEL_17:
  if (*(*(a5 + 1064) + 184 * v23 + 120))
  {
    v35 = *(a1 + 32);
    if (*(*(a4 + 352) + 4 * v17) == 1)
    {
      log_OutText(v35, "FE_PHRASING", 5, 0, "COMPOUND regex rule %d FIRED : SET %s -> %s", v32, v33, v34, *(*(*(a4 + 344) + 8 * v17) + 2));
    }

    else
    {
      log_OutText(v35, "FE_PHRASING", 5, 0, "COMPOUND normal rule FIRED : SET %s -> %s", v32, v33, v34, __s2);
    }
  }

  return CompoundAccent;
}

uint64_t expandAndValidateCompoundsNN(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 1072))
  {
    for (i = 0; i < *(a2 + 1072); ++i)
    {
      v7 = *(*(a2 + 1064) + 184 * i + 120);
      if (v7)
      {
        v8 = *(a3 + 656);
        if (!v8)
        {
          if (!cstdlib_strncmp(v7, "B-", 2uLL) || !cstdlib_strncmp(*(*(a2 + 1064) + 184 * i + 120), "I-", 2uLL))
          {
            continue;
          }

          v8 = *(a3 + 656);
        }

        if (v8 != 1)
        {
          v9 = *(*(a2 + 1064) + 184 * i + 120);
          v10 = *(a3 + 640);
          v11 = cstdlib_strlen(v10);
          if (cstdlib_strncmp(v9, v10, v11))
          {
            if (i)
            {
              LOWORD(v15) = i;
              while (1)
              {
                v16 = *(*(a2 + 1064) + 184 * v15 + 120);
                if (!v16)
                {
                  break;
                }

                v17 = *(a3 + 640);
                v18 = cstdlib_strlen(v17);
                if (!cstdlib_strncmp(v16, v17, v18))
                {
                  break;
                }

                LOWORD(v15) = v15 - 1;
                if (!v15)
                {
                  LOWORD(v15) = 0;
                  break;
                }
              }

              v15 = v15;
            }

            else
            {
              v15 = 0;
            }

            v28 = *(*(a2 + 1064) + 184 * v15 + 120);
            if (!v28)
            {
LABEL_26:
              v27 = 184 * i;
              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no start word for internal compound word : word index=%d compound tag=%s", v12, v13, v14, i);
LABEL_27:
              v34 = *(*(a2 + 1064) + v27 + 120);
              if (v34)
              {
                heap_Free(*(a1 + 8), v34);
                *(*(a2 + 1064) + 184 * i + 120) = 0;
              }

              continue;
            }

            v29 = *(a3 + 640);
            v30 = cstdlib_strlen(v29);
            v31 = cstdlib_strncmp(v28, v29, v30);
            v32 = *(a2 + 1064);
            if (v31)
            {
              v27 = 184 * i;
              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "compound word has no beginning tag : word index=%d compound tag=%s", v12, v13, v14, i);
              goto LABEL_27;
            }

            v33 = *(v32 + 184 * v15 + 120);
            if (!v33)
            {
              goto LABEL_26;
            }

            cstdlib_strcat(*(v32 + 184 * i + 120), (v33 + 1));
          }

          else
          {
            v19 = *(*(a2 + 1064) + 184 * i + 120);
            v20 = *(a3 + 640);
            v21 = cstdlib_strlen(v20);
            if (!cstdlib_strncmp(v19, v20, v21))
            {
              v25 = i + 1;
              v26 = *(a2 + 1072);
              if (i + 1 == v26 || i + 1 < v26 && ((v35 = *(*(a2 + 1064) + 184 * v25 + 120)) == 0 || (v36 = *(a3 + 640), v37 = cstdlib_strlen(v36), !cstdlib_strncmp(v35, v36, v37)) || !*(*(a2 + 1064) + 184 * v25 + 120)))
              {
                v27 = 184 * i;
                log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "single word cannot be a compound word : word index=%d compound tag=%s", v22, v23, v24, i);
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t getWordIdxForMSPhrNN(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _WORD *a5, _WORD *a6, uint64_t a7, uint64_t a8)
{
  if (!*(a2 + 1072))
  {
LABEL_5:
    v12 = 2315264000;
    v13 = *(a1 + 32);
    v14 = "cant match MS terminal node with start word : start position=%d";
LABEL_13:
    log_OutText(v13, "FE_PHRASING", 5, 0, v14, a6, a7, a8, a3);
    return v12;
  }

  v8 = 0;
  v9 = *(a2 + 1064);
  v10 = (v9 + 18);
  v11 = 1;
  while (*(v9 + 184 * v8 + 16) != a3)
  {
    ++v8;
    ++v11;
    v10 += 92;
    if (v8 >= *(a2 + 1072))
    {
      goto LABEL_5;
    }
  }

  *a5 = v8;
  *a6 = v8;
  LODWORD(v15) = *(a2 + 1072);
  if (v8 >= v15)
  {
LABEL_12:
    v12 = 2315264000;
    v13 = *(a1 + 32);
    v14 = "cant match MS terminal node with end word : start position=%d start word=%d unknown end=%d";
    goto LABEL_13;
  }

  while (1)
  {
    v17 = *v10;
    v10 += 92;
    v16 = v17;
    if (a4 - 1 == v17 || v11 == v15 && v16 == a4)
    {
      return 0;
    }

    *a6 = v11;
    v15 = *(a2 + 1072);
    if (v11++ >= v15)
    {
      goto LABEL_12;
    }
  }
}

uint64_t addPHRRangeNN(uint64_t a1, unsigned int a2, unsigned int a3, char *__s, uint64_t a5)
{
  if (a2 > a3)
  {
    return 0;
  }

  v12 = a2;
  while (1)
  {
    v13 = *(a1 + 8);
    v14 = cstdlib_strlen(__s);
    v15 = heap_Calloc(v13, 1, (v14 + 3));
    v20 = v12;
    *(*(a5 + 1064) + 184 * v12 + 88) = v15;
    if (!v15)
    {
      break;
    }

    if (cstdlib_strcmp(__s, "O"))
    {
      if (v12 == a2)
      {
        v21 = "B-";
      }

      else
      {
        v21 = "I-";
      }

      cstdlib_strcpy(*(*(a5 + 1064) + 184 * v12 + 88), v21);
      cstdlib_strcat(*(*(a5 + 1064) + 184 * v12 + 88), __s);
    }

    else
    {
      cstdlib_strcpy(*(*(a5 + 1064) + 184 * v12 + 88), __s);
    }

    *(*(a5 + 1064) + 184 * v12++ + 96) = a2;
    if (a3 < (v20 + 1))
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v16, v17, v18, v19, v5);
  return 2315264010;
}

uint64_t addTokenNN(uint64_t a1, unsigned __int16 *a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a4 + 1072);
  v12 = *a2;
  if (!*(a4 + 1072))
  {
    goto LABEL_14;
  }

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
      goto LABEL_14;
    }
  }

  if (v11 + 1 != v14)
  {
    v26 = *(a1 + 8);
    v27 = cstdlib_strlen(__s);
    v28 = heap_Calloc(v26, 1, (v27 - 1));
    *(*(a4 + 1064) + 184 * v14 + 128) = v28;
    if (v28)
    {
      v33 = v28;
      v34 = cstdlib_strlen(__s + 1);
      cstdlib_strncpy(v33, __s + 1, v34 - 1);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v29, v30, v31, v32, v36);
      return 2315264010;
    }
  }

  else
  {
LABEL_14:
    v20 = 2315264000;
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a6, a7, a8, __s);
    if (*(a4 + 1072))
    {
      v24 = 0;
      v25 = 0;
      do
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "word[%d] %d,%d", v21, v22, v23, v25++);
        v24 += 184;
      }

      while (v25 < *(a4 + 1072));
    }
  }

  return v20;
}

uint64_t doMapStrNN(uint64_t a1, const char **a2, char *__s)
{
  v6 = cstdlib_strlen(__s);
  v7 = cstdlib_strlen(*a2);
  v8 = *a2;
  if (v6 <= v7)
  {
    goto LABEL_4;
  }

  v9 = *(a1 + 8);
  v10 = cstdlib_strlen(__s);
  v11 = heap_Realloc(v9, v8, (v10 + 1));
  if (v11)
  {
    v8 = v11;
    *a2 = v11;
LABEL_4:
    cstdlib_strcpy(v8, __s);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v12, v13, v14, v15, v17);
  return 2315264010;
}

uint64_t doRetaggingnn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v30[2] = 0;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "applying %d retagging rules", a6, a7, a8, *(a2 + 88));
  if (!*(a3 + 1072))
  {
    return 0;
  }

  v11 = 0;
  result = 0;
  while (1)
  {
    v31 = 0;
    if (*(a2 + 88))
    {
      break;
    }

LABEL_12:
    if (++v11 >= *(a3 + 1072))
    {
      return result;
    }
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v29 = v11;
    v28 = 3;
    *v30 = 0;
    result = matchMAPRULE2STR_TRuleNN(0, 0, 0, 0, a2, a3, *(a2 + 80) + v13, &v28, &v31);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v18 = v31;
    if (v31 == 1)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "FIRED RETAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v15, v16, v17, v14);
      result = doMapStrNN(a1, (*(a3 + 1064) + 184 * v11 + 48), (*(a2 + 528) + *(*(a2 + 536) + 4 * *(*(a2 + 80) + v13))));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v19 = *(a1 + 8);
      v20 = cstdlib_strlen(*(*(a3 + 1064) + 184 * v11 + 48));
      v21 = heap_Calloc(v19, 1, v20 + 1);
      v26 = *(a3 + 1064);
      *(v26 + 184 * v11 + 80) = v21;
      if (!v21)
      {
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v22, v23, v24, v25, v27);
        return 2315264010;
      }

      cstdlib_strcpy(v21, *(v26 + 184 * v11 + 48));
      result = 0;
      v18 = v31;
    }

    if (!v18)
    {
      ++v14;
      v13 += 32;
      if (v14 < *(a2 + 88))
      {
        continue;
      }
    }

    goto LABEL_12;
  }
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

    v14 = *(a1 + 8);
    v15 = cstdlib_strlen(v12);
    v16 = heap_Calloc(v14, 1, (v15 + 1));
    *(*(a5 + 1064) + v10) = v16;
    if (!v16)
    {
      break;
    }

    cstdlib_strcpy(v16, *(a4 + 8));
    *(*(a5 + 1064) + v10 + 8) = v8;
LABEL_12:
    v21 = *(a4 + 56);
    if (v21)
    {
      v22 = *(*(a5 + 1064) + v10 + 32);
      if (v22)
      {
        heap_Free(*(a1 + 8), v22);
        *(*(a5 + 1064) + v10 + 32) = 0;
        v21 = *(a4 + 56);
      }

      v23 = *(a1 + 8);
      v24 = cstdlib_strlen(v21);
      v25 = heap_Calloc(v23, 1, (v24 + 1));
      *(*(a5 + 1064) + v10 + 32) = v25;
      if (!v25)
      {
        break;
      }

      cstdlib_strcpy(v25, *(a4 + 56));
    }

    v26 = *(a4 + 40);
    if (v26)
    {
      v27 = cstdlib_strlen(v26);
      v28 = heap_Realloc(*(a1 + 8), *(*(a5 + 1064) + v10 + 56), (v27 + 32) & 0xFFFFFFE0);
      if (!v28)
      {
        break;
      }

      v29 = v28;
      cstdlib_strcpy(v28, *(a4 + 40));
      *(*(a5 + 1064) + v10 + 56) = v29;
    }

    v30 = *(a4 + 72);
    if (v30)
    {
      *(*(a5 + 1064) + v10 + 64) = v30;
      v31 = *(a4 + 64);
      if (v31)
      {
        v32 = *(a1 + 8);
        v33 = cstdlib_strlen(v31);
        v34 = heap_Alloc(v32, v33 + 1);
        *(*(a5 + 1064) + v10 + 72) = v34;
        if (!v34)
        {
          break;
        }

        cstdlib_strcpy(v34, *(a4 + 64));
      }
    }

    v10 += 184;
    if (v7 == v11++)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v17, v18, v19, v20, v37);
  return 2315264010;
}

uint64_t addSynChunkNN(uint64_t a1, char *__s, const char *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  if (a4 <= a5 && *(a6 + 1072) > a5)
  {
    v13 = *(a1 + 8);
    v14 = cstdlib_strlen(__s);
    v15 = v14;
    if (a3)
    {
      v16 = cstdlib_strlen(a3);
      v17 = heap_Calloc(v13, 1, (v15 + v16 + 1));
      *(*(a6 + 1064) + 184 * v8 + 128) = v17;
      if (v17)
      {
        cstdlib_strcpy(v17, __s);
        cstdlib_strcat(*(*(a6 + 1064) + 184 * v8 + 128), a3);
        return 0;
      }
    }

    else
    {
      v23 = heap_Calloc(v13, 1, (v14 + 1));
      *(*(a6 + 1064) + 184 * v8 + 128) = v23;
      if (v23)
      {
        cstdlib_strcpy(v23, __s);
        return 0;
      }
    }

    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v18, v19, v20, v21, v25);
    return 2315264010;
  }

  v22 = 2315264000;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "syntactic chunks out of order : fromWordIdx=%d toWordIdx=%d numWords=%d", a6, a7, a8, a4);
  return v22;
}

uint64_t resolvePHRNN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = *MEMORY[0x277D85DE8];
  if (*(a3 + 1072))
  {
    v11 = 0;
    v12 = 88;
    while (1)
    {
      if (v12 == 88)
      {
        goto LABEL_24;
      }

      v13 = *(a3 + 1064);
      if (*(v13 + v12))
      {
        goto LABEL_24;
      }

      v14 = v13 + v12;
      v15 = *(v14 - 184);
      if (v15)
      {
        v16 = *(v14 - 72);
        if (v16 >= 2 && *(a1 + (v16 - 1)) == 95)
        {
          break;
        }
      }

      v30 = *(v14 - 184);
      if (v30)
      {
        v31 = *v30;
        if (v31 == 66)
        {
          v38 = *(a2 + 8);
          v39 = cstdlib_strlen(v30);
          v40 = heap_Calloc(v38, 1, (v39 + 3));
          v41 = *(a3 + 1064);
          *(v41 + v12) = v40;
          if (!v40)
          {
            goto LABEL_76;
          }

          cstdlib_strcpy(v40, *(v41 + v12 - 184));
          **(*(a3 + 1064) + v12) = 73;
          v42 = *(a2 + 8);
          v43 = cstdlib_strlen(*(*(a3 + 1064) + v12 - 224));
          v27 = heap_Calloc(v42, 1, (v43 + 3));
          v28 = *(a3 + 1064);
          *(v28 + v12 - 40) = v27;
          if (!v27)
          {
            goto LABEL_76;
          }

          v29 = "[3] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        else
        {
          if (v31 != 79 && v31 != 73)
          {
            goto LABEL_24;
          }

          v32 = *(a2 + 8);
          v33 = cstdlib_strlen(v30);
          v34 = heap_Calloc(v32, 1, (v33 + 3));
          v35 = *(a3 + 1064);
          *(v35 + v12) = v34;
          if (!v34)
          {
            goto LABEL_76;
          }

          cstdlib_strcpy(v34, *(v35 + v12 - 184));
          v36 = *(a2 + 8);
          v37 = cstdlib_strlen(*(*(a3 + 1064) + v12 - 224));
          v27 = heap_Calloc(v36, 1, (v37 + 3));
          v28 = *(a3 + 1064);
          *(v28 + v12 - 40) = v27;
          if (!v27)
          {
            goto LABEL_76;
          }

          v29 = "[2] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        goto LABEL_23;
      }

LABEL_24:
      ++v11;
      v47 = *(a3 + 1072);
      v12 += 184;
      if (v11 >= v47)
      {
        if (!*(a3 + 1072))
        {
          goto LABEL_75;
        }

        v48 = 0;
        v49 = 88;
        do
        {
          if (!*(*(a3 + 1064) + v49))
          {
            if ((insert_NLU_infoNN(a2, v48, (v48 + 1), &unk_279DACA10, a3) & 0x80000000) != 0)
            {
              log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Failed to fill out PHR=B-NIL on word : word index=%d", a6, a7, a8, v48);
LABEL_79:
              v84 = 2315264000;
              goto LABEL_80;
            }

            LODWORD(v47) = *(a3 + 1072);
          }

          ++v48;
          v49 += 184;
        }

        while (v48 < v47);
        if (!v47)
        {
          goto LABEL_75;
        }

        v50 = 0;
        v51 = (*(a3 + 1064) + 88);
        do
        {
          if (!*v51)
          {
            log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "could not work out PHR on word : word index=%d", a6, a7, a8, v50);
            goto LABEL_79;
          }

          ++v50;
          v51 += 23;
        }

        while (v47 != v50);
        v52 = 0;
        v53 = 88;
        do
        {
          if (!cstdlib_strncmp(*(*(a3 + 1064) + v53), "I-", 2uLL))
          {
            v57 = *(a3 + 1064);
            if (v53 == 88)
            {
              **(v57 + 88) = 66;
              log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", v54, v55, v56, 0);
            }

            else if (cstdlib_strcmp(*(v57 + v53 - 184), *(v57 + v53)))
            {
              cstdlib_strcpy(__dst, *(*(a3 + 1064) + v53));
              __dst[0] = 66;
              if (cstdlib_strcmp(*(*(a3 + 1064) + v53 - 184), __dst))
              {
                **(*(a3 + 1064) + v53) = 66;
                log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", v58, v59, v60, v52);
              }
            }
          }

          ++v52;
          v53 += 184;
        }

        while (v52 < *(a3 + 1072));
        if (!*(a3 + 1072))
        {
          return 0;
        }

        v61 = 0;
        v62 = *(a3 + 1064);
        while (1)
        {
          cstdlib_strcpy(__dst, *(v62 + 184 * v61 + 88));
          if (!cstdlib_strncmp(__dst, "B-", 2uLL))
          {
            cstdlib_strcpy(__dst, (*(*(a3 + 1064) + 184 * v61 + 88) + 2));
          }

          LODWORD(v66) = v61;
          if (*(a3 + 1072) > v61)
          {
            v67 = 184 * v61 + 88;
            v66 = v61;
            do
            {
              v68 = *(*(a3 + 1064) + v67);
              if (!v68 || cstdlib_strcmp(v68, __dst) && (cstdlib_strlen(*(*(a3 + 1064) + v67)) < 3 || cstdlib_strcmp((*(*(a3 + 1064) + v67) + 2), __dst) || cstdlib_strncmp(*(*(a3 + 1064) + v67), "I-", 2uLL)) && *(*(a3 + 1064) + v67 + 8) != *(*(a3 + 1064) + 184 * v61 + 96))
              {
                break;
              }

              ++v66;
              v67 += 184;
            }

            while (v66 < *(a3 + 1072));
          }

          v69 = v66 - 1;
          if (v69 <= v61)
          {
LABEL_66:
            log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[3] add syn chunk %s from %d to %d", v63, v64, v65, __dst);
            v80 = (v66 - 1);
            v81 = a2;
            v82 = 0;
            v83 = v61;
          }

          else
          {
            v70 = 1;
            v71 = v61;
            while (1)
            {
              v72 = *(a3 + 1064);
              v73 = v71;
              v74 = v71;
              if (*(v72 + 184 * v71 + 100) != 1)
              {
                break;
              }

LABEL_62:
              log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[1] add syn chunk %s%s from %d to %d", v63, v64, v65, __dst);
              v77 = addSynChunkNN(a2, __dst, "-P", v71, v73, a3, v75, v76);
              if ((v77 & 0x80000000) != 0)
              {
                return v77;
              }

              v70 = 0;
              v71 = v73 + 1;
              if (v69 <= (v73 + 1))
              {
                goto LABEL_73;
              }
            }

            while (v69 > ++v74)
            {
              if (*(v72 + 184 * v74 + 100) == 1)
              {
                v73 = v74;
                goto LABEL_62;
              }
            }

            if (v70)
            {
              goto LABEL_66;
            }

LABEL_73:
            if (v66 <= v71)
            {
              goto LABEL_68;
            }

            log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[2] add syn chunk %s%s from %d to %d", v63, v64, v65, __dst);
            v83 = v71;
            v80 = (v66 - 1);
            v81 = a2;
            v82 = "-P";
          }

          v77 = addSynChunkNN(v81, __dst, v82, v83, v80, a3, v78, v79);
          if ((v77 & 0x80000000) != 0)
          {
            return v77;
          }

LABEL_68:
          v84 = 0;
          v62 = *(a3 + 1064);
          *(v62 + 184 * v61 + 136) = 1;
          *(v62 + 184 * v69 + 140) = 1;
          if (v61 == v66)
          {
            v61 = v66 + 1;
          }

          else
          {
            v61 = v66;
          }

          v85 = *(a3 + 1072);
          if (v61 >= v85)
          {
            goto LABEL_81;
          }
        }
      }
    }

    v17 = *(a2 + 8);
    v18 = cstdlib_strlen(v15);
    v19 = heap_Calloc(v17, 1, (v18 + 3));
    v24 = *(a3 + 1064);
    *(v24 + v12) = v19;
    if (!v19)
    {
      goto LABEL_76;
    }

    cstdlib_strcpy(v19, *(v24 + v12 - 184));
    if (cstdlib_strcmp(*(*(a3 + 1064) + v12), "O"))
    {
      **(*(a3 + 1064) + v12) = 73;
    }

    v25 = *(a2 + 8);
    v26 = cstdlib_strlen(*(*(a3 + 1064) + v12 - 224));
    v27 = heap_Calloc(v25, 1, (v26 + 3));
    v28 = *(a3 + 1064);
    *(v28 + v12 - 40) = v27;
    if (!v27)
    {
LABEL_76:
      v84 = 2315264010;
      log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0, v20, v21, v22, v23, v91);
      goto LABEL_80;
    }

    v29 = "[1] set missing PHR on word : word index=%d to %s (also copy POS %s)";
LABEL_23:
    cstdlib_strcpy(v27, *(v28 + v12 - 224));
    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, v29, v44, v45, v46, v11);
    goto LABEL_24;
  }

LABEL_75:
  v84 = 0;
LABEL_80:
  v85 = *(a3 + 1072);
LABEL_81:
  if (v85)
  {
    v86 = 0;
    v87 = *(a3 + 1064);
    v88 = 88;
    do
    {
      v89 = *(v87 + v88);
      if (v89)
      {
        heap_Free(*(a2 + 8), v89);
        v87 = *(a3 + 1064);
        *(v87 + v88) = 0;
        LOWORD(v85) = *(a3 + 1072);
      }

      ++v86;
      v88 += 184;
    }

    while (v86 < v85);
  }

  return v84;
}

uint64_t addMarkerTypeNN(uint64_t a1, char *__s2, const char *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a5 + 74);
  v15 = 8 * v14;
  do
  {
    if (v14 >= *(a5 + 72) || (v16 = *(a5 + 528)) == 0)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Ignoring marker :%s, as not in DEFMAPPING list", a6, a7, a8, __s2);
      return 0;
    }

    v17 = cstdlib_strcmp((v16 + *(*(a5 + 536) + 4 * *(*(a5 + 64) + v15))), __s2);
    ++v14;
    v15 += 8;
  }

  while (v17);
  if (v14 != 1)
  {
    return 0;
  }

  v18 = *(a1 + 8);
  v19 = cstdlib_strlen(a3);
  v20 = heap_Calloc(v18, 1, (v19 + 1));
  *(*(a6 + 1064) + 184 * a4 + 128) = v20;
  if (v20)
  {
    cstdlib_strcpy(v20, a3);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v21, v22, v23, v24, v26);
  return 2315264010;
}

uint64_t getNNSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v117 = 0;
  v116 = 0;
  v6 = *(a5 + 1088);
  if (!v6)
  {
    return 0;
  }

  v7 = a5;
  v11 = *(a5 + 1096);
  v99 = *(a5 + 1088);
  if (!cstdlib_strcmp(v6, ""))
  {
    return 0;
  }

  v12 = cstdlib_strlen(*(v7 + 1088));
  v13 = heap_Calloc(*(a1 + 8), 1, (v12 + 2));
  if (!v13)
  {
    inserted = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v93);
    return inserted;
  }

  v18 = v13;
  v106 = a2;
  v94 = v11;
  v95 = a3;
  v96 = a4;
  v118 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v19 = v99;
  if (!*(v7 + 1072))
  {
LABEL_79:
    v76 = (*(v106 + 104))(v95, v96, 2, v94, &v118);
    if ((v76 & 0x80000000) != 0)
    {
LABEL_91:
      inserted = v76;
    }

    else
    {
      while (v118)
      {
        v76 = (*(v106 + 168))(v95, v96);
        if ((v76 & 0x80000000) != 0)
        {
          goto LABEL_91;
        }

        if (v114 == 6)
        {
          v76 = (*(v106 + 168))(v95, v96, v118, 1, 1, &v112, &v115);
          if ((v76 & 0x80000000) != 0)
          {
            goto LABEL_91;
          }

          v76 = (*(v106 + 168))(v95, v96, v118, 2, 1, &v112 + 2, &v115);
          if ((v76 & 0x80000000) != 0)
          {
            goto LABEL_91;
          }

          if (v112 > HIWORD(v112))
          {
            inserted = 2315271857;
            goto LABEL_92;
          }

          v76 = (*(v106 + 176))(v95, v96, v118, 4, &v113, &v115);
          if ((v76 & 0x80000000) != 0)
          {
            goto LABEL_91;
          }

          if (cstdlib_strcmp(v113, "_PR_"))
          {
            v84 = addTokenNN(a1, &v112, v113, v7, v80, v81, v82, v83);
            if ((v84 & 0x80000000) != 0)
            {
              inserted = v84;
              if (v84 != -1979703296)
              {
                goto LABEL_92;
              }
            }
          }
        }

        v76 = (*(v106 + 120))(v95, v96, v118, &v118);
        if ((v76 & 0x80000000) != 0)
        {
          goto LABEL_91;
        }
      }

      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Added words information", v77, v78, v79, 0);
      inserted = (*(v106 + 176))(v95, v96, v94, 1, &v117, &v116);
      if ((inserted & 0x80000000) == 0)
      {
        LOWORD(v86) = v116;
        if (v116)
        {
          v87 = 0;
          v88 = 0;
          do
          {
            v89 = v117 + 32 * v88;
            if (*v89 == 21)
            {
              DomainFromPausingDefs = getDomainFromPausingDefs(v7 + 1104, *(v89 + 24), &v111);
              v86 = v116;
              if (DomainFromPausingDefs == 1)
              {
                for (i = v88 + 1; v86 > i; ++i)
                {
                  v92 = v117 + 32 * i;
                  if (*v92 == 21 && cstdlib_strcmp(*(v117 + 32 * v88 + 24), *(v92 + 24)))
                  {
                    LOWORD(v86) = v116;
                    v88 = i - (i + 1 != v87);
                    break;
                  }

                  v86 = v116;
                }
              }
            }

            v87 = ++v88;
          }

          while (v88 < v86);
        }
      }
    }

    goto LABEL_92;
  }

  v20 = 0;
  v98 = a1;
  v97 = v13;
  v107 = v7;
  while (1)
  {
    v21 = *(v7 + 1064) + 184 * v20;
    *(v21 + 80) = 0;
    *(v21 + 88) = 0;
    *(v21 + 120) = 0;
    *(v21 + 128) = 0;
    *(v21 + 144) = 0u;
    *(v21 + 160) = 0u;
    v112 = *(v21 + 16);
    v22 = v112;
    v23 = v112 >> 16;
    cstdlib_strncpy(v18, (v19 + v22), (v22 >> 16) - v22);
    v18[v23 - v112] = 0;
    if (v23 == v22)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v24, v25, v26, v22);
      goto LABEL_75;
    }

    v27 = doesWordEndInComma(v18);
    v28 = *(v7 + 1064);
    if (v27)
    {
      *(v28 + 184 * *(v7 + 1072) - 84) = 1;
    }

    v29 = *(v28 + 184 * v20 + 40);
    if (v29)
    {
      break;
    }

LABEL_75:
    if (++v20 >= *(v7 + 1072))
    {
      goto LABEL_79;
    }
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v119 = 0u;
  v30 = *(a1 + 8);
  v31 = cstdlib_strlen(v29);
  v32 = heap_Calloc(v30, 1, (v31 + 1));
  if (!v32)
  {
LABEL_95:
    inserted = 2315264010;
    a1 = v98;
    log_OutPublic(*(v98 + 32), "FE_PHRASING", 37000, 0, v33, v34, v35, v36, v93);
    v18 = v97;
    goto LABEL_92;
  }

  v37 = v32;
  __s = v29;
  cstdlib_strcpy(v32, v29);
  for (j = &v37[cstdlib_strlen(v37) - 1]; j >= v37; --j)
  {
    v39 = *j;
    v40 = v39 > 0x3B;
    v41 = (1 << v39) & 0x800000100002600;
    if (v40 || v41 == 0)
    {
      break;
    }

    *j = 0;
  }

  v43 = 0;
  v110 = 0;
  v108 = 0;
  v109 = 0uLL;
  v104 = 0;
  v105 = 0;
  v101 = 0;
  v102 = 0;
  v44 = 0;
  v103 = 0;
  v45 = v37;
  do
  {
    v46 = cstdlib_strchr(v45, 59);
    v47 = v46;
    if (v46)
    {
      *v46 = 0;
    }

    v48 = cstdlib_strchr(v45, 58);
    v49 = v48;
    if (v48)
    {
      *v48 = 0;
      v50 = v48 + 1;
    }

    else
    {
      v50 = "null";
    }

    if (cstdlib_strcmp(v45, "POS"))
    {
      if (cstdlib_strcmp(v45, "PHR"))
      {
        if (cstdlib_strcmp(v45, "BND"))
        {
          if (!cstdlib_strcmp(v45, "BNDSHAPE"))
          {
            inserted = 0;
            v108 = v50;
            goto LABEL_51;
          }

          if (!cstdlib_strcmp(v45, "S_POI"))
          {
            inserted = 0;
            v56 = "B";
LABEL_50:
            *(&v109 + 1) = v56;
            *&v109 = v50;
            goto LABEL_51;
          }

          if (!cstdlib_strcmp(v45, "I_POI"))
          {
            inserted = 0;
            v56 = "I";
            goto LABEL_50;
          }

          if (!cstdlib_strcmp(v45, "E_POI"))
          {
            inserted = 0;
            v56 = "S";
            if (!*(&v109 + 1))
            {
              v56 = "E";
            }

            goto LABEL_50;
          }

          if (cstdlib_strcmp(v45, "PRM"))
          {
            v54 = *(v107 + 1760);
            if (!v54)
            {
              if (!cstdlib_strcmp(v45, "COMP"))
              {
                inserted = 0;
                v104 = v50;
                goto LABEL_51;
              }

              v54 = *(v107 + 1760);
            }

            if (v54 == 1 && !cstdlib_strcmp(v45 + 1, "_COMP"))
            {
              v57 = *(v98 + 8);
              v58 = cstdlib_strlen(v50);
              v59 = heap_Calloc(v57, 1, (v58 + 3));
              if (!v59)
              {
                goto LABEL_95;
              }

              v60 = v59;
              if (cstdlib_strcmp(v45, "S_COMP"))
              {
                v61 = "I-";
              }

              else
              {
                v61 = "B-";
              }

              cstdlib_strcpy(v60, v61);
              cstdlib_strcat(v60, v50);
              v62 = v60;
              inserted = 0;
              v103 = v62;
              v104 = v62;
            }

            else
            {
              if (!v49 || v49 <= v45 + 1)
              {
                goto LABEL_41;
              }

              if (!cstdlib_strcmp(v45 + 1, "_CLASS"))
              {
                inserted = 0;
                v101 = v50;
                goto LABEL_51;
              }

              if (!cstdlib_strcmp(v45 + 1, "_PUNC"))
              {
                v63 = v102;
                if (!v102)
                {
                  v64 = *(v98 + 8);
                  v65 = cstdlib_strlen(__s);
                  v66 = heap_Calloc(v64, 1, (v65 + 1));
                  if (!v66)
                  {
                    inserted = 2315264010;
                    a1 = v98;
                    log_OutPublic(*(v98 + 32), "FE_PHRASING", 37000, 0, v67, v68, v69, v70, v93);
                    v71 = v37;
                    v18 = v97;
                    v75 = v103;
LABEL_71:
                    heap_Free(*(a1 + 8), v71);
                    goto LABEL_72;
                  }

                  v63 = v66;
                  cstdlib_strcpy(v66, "");
                }

                *v49 = 58;
                v102 = v63;
                hlp_NLUStrJoin(v63, v45);
                inserted = 0;
              }

              else
              {
LABEL_41:
                inserted = addMarkerTypeNN(v98, v45, v50, v20, v107 + 1104, v107, v52, v53);
              }
            }
          }

          else
          {
            inserted = 0;
            v105 = v50;
          }
        }

        else
        {
          inserted = 0;
          v110 = v50;
        }
      }

      else
      {
        inserted = 0;
        v43 = v50;
      }
    }

    else
    {
      inserted = 0;
      v44 = v50;
    }

LABEL_51:
    if (!v47)
    {
      break;
    }

    v45 = v47 + 1;
  }

  while ((inserted & 0x80000000) == 0);
  v71 = v102;
  *&v122 = v102;
  *(&v122 + 1) = v104;
  *&v121 = v105;
  *(&v121 + 1) = v101;
  v123 = v109;
  *&v120 = v110;
  *(&v120 + 1) = v108;
  *&v119 = v44;
  *(&v119 + 1) = v43;
  a1 = v98;
  log_OutText(*(v98 + 32), "FE_PHRASING", 5, 0, "parsed NLU %s[%d,%d] -> POS=%s, PHR=%s, BND=%s, BNDSHAPE=%s, PRM=%s, CLASS=%s, PUNC=%s, COMP=%s, POIClass=%s, POIPosi=%s", v51, v52, v53, __s);
  v18 = v97;
  v75 = v103;
  if ((inserted & 0x80000000) == 0)
  {
    if (!v44)
    {
      log_OutText(*(v98 + 32), "FE_PHRASING", 5, 0, "missing POS in NLU string: arg=%s", v72, v73, v74, v37);
    }

    inserted = insert_NLU_infoNN(v98, v20, (v20 + 1), &v119, v107);
  }

  heap_Free(*(v98 + 8), v37);
  if (v102)
  {
    goto LABEL_71;
  }

LABEL_72:
  v19 = v99;
  if (v75)
  {
    heap_Free(*(a1 + 8), v75);
  }

  v7 = v107;
  if ((inserted & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

LABEL_92:
  heap_Free(*(a1 + 8), v18);
  return inserted;
}

uint64_t recursiveFindSplitNN(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, _WORD *a6, unsigned int a7)
{
  v9 = result;
  if (a2 <= a3)
  {
    v10 = 0;
    v11 = a2;
    do
    {
      v10 += *(result + 2 * v11);
      if (a4 >> 1 <= v10)
      {
        break;
      }

      ++v11;
    }

    while (a3 >= v11);
  }

  else
  {
    v10 = 0;
    v11 = a2;
  }

  if (a7 <= v10 && (a4 - v10) >= a7)
  {
    recursiveFindSplitNN(result);
    result = recursiveFindSplitNN(v9);
    *(a5 + 2 * (*a6)++) = v11;
  }

  return result;
}

uint64_t getDocumentClassNN(uint64_t a1)
{
  if (!*(a1 + 1072))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = v2;
    v4 = *(*(a1 + 1064) + 184 * v2 + 144);
    if (v4)
    {
      if (cstdlib_strstr(v4, "joyfulstyle"))
      {
        return 1;
      }

      v5 = *(*(a1 + 1064) + 184 * v3 + 144);
      if (v5)
      {
        if (cstdlib_strstr(v5, "didacticstyle"))
        {
          return 2;
        }

        v6 = *(*(a1 + 1064) + 184 * v3 + 144);
        if (v6)
        {
          if (cstdlib_strstr(v6, "neutralstyle"))
          {
            break;
          }
        }
      }
    }

    v2 = v3 + 1;
    if (*(a1 + 1072) <= (v3 + 1))
    {
      return 0;
    }
  }

  return 3;
}

uint64_t nnpuncPhrasing(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, const char *a6, char *__s)
{
  v7 = __s;
  if (cstdlib_strchr(__s, 44))
  {
  }

  DocumentClassNN = getDocumentClassNN(a2);
  v19 = *(a5 + *&aF_6[8 * DocumentClassNN]);
  if (!*(a5 + *&aF_6[8 * DocumentClassNN]))
  {
    v19 = 9;
  }

  v39 = v19;
  if (!*(a2 + 1088))
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "%s\n", v16, v17, v18, "input parameter: sent is NULL");
    return 0;
  }

  if (*(a2 + 1072))
  {
    v20 = 0;
    v21 = 100;
    v22 = -1;
    while (1)
    {
      v23 = doesWordEndInCommaNN(*(*(a2 + 1064) + v21 - 36), a6);
      v24 = *(a2 + 1064);
      if ((v23 || *(v24 + v21) == 1 && *(v24 + v21 + 4)) && *(v24 + v21 + 8) && *(a2 + 1072))
      {
        *(v24 + v21 - 24) = 4;
      }

      if (*(v24 + v21) == 1)
      {
        v25 = cstdlib_strchr(v7, *(v24 + v21 + 4));
        v24 = *(a2 + 1064);
        if (v25)
        {
          if (*(v24 + v21 + 4) && !*(v24 + v21 + 8))
          {
            *(v24 + v21 - 24) = 3;
          }
        }
      }

      v26 = *(v24 + v21 + 52);
      if (!v26)
      {
        goto LABEL_28;
      }

      if (cstdlib_strcmp(v26, "B") && cstdlib_strcmp(*(*(a2 + 1064) + v21 + 52), "S"))
      {
        break;
      }

      if (v21 != 100)
      {
        v28 = (*(a2 + 1064) + 184 * v22 + 76);
LABEL_27:
        *v28 = 4;
      }

LABEL_28:
      ++v20;
      v21 += 184;
      ++v22;
      if (v20 >= *(a2 + 1072))
      {
        goto LABEL_29;
      }
    }

    if (cstdlib_strcmp(*(*(a2 + 1064) + v21 + 52), "E"))
    {
      goto LABEL_28;
    }

    v27 = *(a2 + 1064) + v21;
    if (*(v27 + 76) < v39)
    {
      goto LABEL_28;
    }

    v28 = (v27 - 24);
    goto LABEL_27;
  }

LABEL_29:
  printPhrasesNN(a1, a2, v13, v14, v15, v16, v17, v18);
  v29 = heap_Calloc(*(a1 + 8), 1024, 2);
  if (v29)
  {
    v36 = v29;
    printPhrasesNN(a1, a2, v30, v31, v32, v33, v34, v35);
    heap_Free(*(a1 + 8), v36);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v32, v33, v34, v35, v38);
  return 2315264010;
}

size_t doesWordEndInCommaNN(size_t result, const char *a2)
{
  *__s = 0;
  if (result)
  {
    v3 = result;
    result = cstdlib_strlen(result);
    if (result)
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
          if ((utf8_getUTF8Char(a2, v5, __s) & 0x80000000) != 0)
          {
            break;
          }

          v9 = cstdlib_strlen(__s);
          if (cstdlib_strstr(v3, __s))
          {
            return 1;
          }

          v5 = v8 + v9;
          ++v6;
        }

        while (v6 < v7);
      }

      return 0;
    }
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
      result = log_OutText(*(v9 + 32), "FE_PHRASING", 5, 0, "%s\t\t%c\n", a6, a7, a8, *(*(a2 + 1064) + v10 + 56));
      ++v11;
      v10 += 184;
    }

    while (v11 < *(a2 + 1072));
  }

  return result;
}

uint64_t updateLingdbNNPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, const char *a7, int a8)
{
  LODWORD(v8) = a8;
  v15 = a1;
  v121 = *MEMORY[0x277D85DE8];
  __s1 = 0;
  v16 = heap_Calloc(*(a1 + 8), 32, 1);
  if (v16)
  {
    v105 = v16;
    v115 = 0;
    v114 = 0;
    v113 = 0;
    v112 = 0;
    v110 = 0;
    v111 = 0;
    v109 = 0;
    v108 = 0;
    v21 = *(a5 + 1096);
    v22 = a5;
    v101 = *(a5 + 1088);
    v23 = (*(a2 + 176))(a3, a4, v21, 1, &v109, &v108);
    if ((v23 & 0x80000000) != 0)
    {
      return v23;
    }

    else
    {
      cstdlib_strcpy(__dst, "");
      v102 = a3;
      v24 = (*(a2 + 104))(a3, a4, 2, v21, &v115 + 2);
      if ((v24 & 0x80000000) != 0)
      {
        v93 = v105;
      }

      else
      {
        v25 = HIWORD(v115);
        if (HIWORD(v115))
        {
          v97 = a7;
          v99 = v8;
          v26 = 0;
          LOWORD(v8) = 0;
          v98 = a6;
          v103 = a4;
          v104 = v15;
          v27 = a3;
          v28 = v22;
          while (1)
          {
            v24 = (*(a2 + 168))(v27, a4, v25, 0, 1, &v113, &v114 + 2);
            if ((v24 & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

            if (v113 <= 0xA && ((1 << v113) & 0x610) != 0)
            {
              break;
            }

LABEL_113:
            v24 = (*(a2 + 120))(v27, a4, HIWORD(v115), &v115 + 2);
            if ((v24 & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

            v25 = HIWORD(v115);
            if (!HIWORD(v115))
            {
              goto LABEL_123;
            }
          }

          v30 = *(v28 + 1064);
          v111 = *(v30 + 184 * v26 + 16);
          if (v111 == HIWORD(v111))
          {
            v15 = v104;
            v31 = v105;
            goto LABEL_112;
          }

          HIWORD(v110) = 0;
          if (v26 | v8 && v8 >= v26)
          {
            __dst[0] = 0;
            goto LABEL_41;
          }

          v32 = *(v28 + 1072);
          LOWORD(v8) = v26;
          if (v32 > v26)
          {
            v33 = (v30 + 184 * v26 + 112);
            v8 = v26;
            while (*(v33 - 36) - 3 >= 2 && !*v33)
            {
              ++v8;
              v33 += 46;
              if (v32 == v8)
              {
                goto LABEL_23;
              }
            }
          }

          if (v32 == v8)
          {
LABEL_23:
            v112 = *(v30 + 184 * *(v28 + 1072) - 166);
            LOWORD(v8) = v32;
          }

          else
          {
            v112 = *(v30 + 184 * v8 + 18);
            v34 = "P";
            if (v8 + 1 != v32)
            {
LABEL_28:
              cstdlib_strcpy(__dst, v34);
              if (v26)
              {
                if (*(*(v28 + 1064) + 184 * (v26 - 1) + 76) == 3)
                {
                  v35 = 2;
                }

                else
                {
                  v35 = 1;
                }
              }

              else
              {
                v35 = 0;
              }

              HIWORD(v110) = v35;
              if (__dst[0])
              {
                LOWORD(v110) = 0;
                v36 = (*(a2 + 88))(v27, a4, HIWORD(v115), &v115);
                if ((v36 & 0x80000000) != 0 || (v113 = 15, v36 = (*(a2 + 160))(v27, a4, v115, 0, 1, &v113, &v114), (v36 & 0x80000000) != 0) || (v36 = (*(a2 + 160))(v27, a4, v115, 1, 1, &v111, &v114), (v36 & 0x80000000) != 0) || (v36 = (*(a2 + 160))(v27, a4, v115, 2, 1, &v112, &v114), (v36 & 0x80000000) != 0) || (v37 = *(a2 + 160), v38 = v115, v39 = cstdlib_strlen(__dst), v36 = v37(v27, a4, v38, 4, (v39 + 1), __dst, &v114), (v36 & 0x80000000) != 0) || (v36 = (*(a2 + 160))(v27, a4, v115, 7, 1, &v110 + 2, &v114), (v36 & 0x80000000) != 0) || (v36 = (*(a2 + 160))(v27, a4, v115, 8, 1, &v110, &v114), (v36 & 0x80000000) != 0))
                {
LABEL_130:
                  v24 = v36;
LABEL_131:
                  v15 = v104;
                  v31 = v105;
                  goto LABEL_132;
                }
              }

LABEL_41:
              LOWORD(v110) = 0;
              v40 = *(v28 + 1064) + 184 * v26;
              if (*(v40 + 76) == 4 && *(v28 + 1072) - 1 != v26)
              {
                v41 = cstdlib_strlen(*(v40 + 56));
                LOWORD(v110) = 100;
                if (doesWordEndInCommaNN(*(*(v28 + 1064) + 184 * v26 + 56), v97) || (v42 = *(v28 + 1064) + 184 * v26, *(v42 + 100)) || *(*(v42 + 56) + (v41 - 1)) == 46)
                {
                  LOWORD(v110) = v98;
                  if (v98)
                  {
                    goto LABEL_49;
                  }
                }

                else if (v110)
                {
                  goto LABEL_49;
                }
              }

              if (*(*(v28 + 1064) + 184 * v26 + 112))
              {
                LOWORD(v110) = v98;
              }

LABEL_49:
              v43 = HIWORD(v115);
              v118 = 0;
              v117 = 0;
              v116 = 0;
              v44 = (*(a2 + 184))(v27, a4, HIWORD(v115), 18, &v118);
              v24 = v44;
              if ((v44 & 0x80000000) != 0 || !v118)
              {
                if ((v44 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }
              }

              else
              {
                v36 = (*(a2 + 176))(v27, a4, v43, 18, &v117, &v116);
                if ((v36 & 0x80000000) != 0)
                {
                  goto LABEL_130;
                }

                if (!cstdlib_strcmp(v117, "external"))
                {
                  goto LABEL_56;
                }
              }

              v36 = (*(a2 + 160))(v27, a4, HIWORD(v115), 8, 1, &v110, &v114);
              if ((v36 & 0x80000000) != 0)
              {
                goto LABEL_130;
              }

LABEL_56:
              v36 = (*(a2 + 176))(v27, a4, HIWORD(v115), 9, &__s1, &v114 + 2);
              if ((v36 & 0x80000000) != 0)
              {
                goto LABEL_130;
              }

              if (cstdlib_strcmp(__s1, "normal"))
              {
                v45 = cstdlib_strcmp(__s1, "mnx");
                v46 = *(v28 + 1064);
                if (v45)
                {
                  v47 = *(v46 + 184 * v26 + 77);
                }

                else
                {
                  v47 = 0;
                }
              }

              else
              {
                v47 = 0;
                v46 = *(v28 + 1064);
              }

              v48 = *(v46 + 184 * v26 + 128);
              if (v48)
              {
                if (cstdlib_strlen(v48) - 32 > 0xFFFFFFFFFFFFFFDELL)
                {
                  v31 = v105;
                }

                else
                {
                  v49 = *(v104 + 8);
                  v50 = cstdlib_strlen(*(*(v28 + 1064) + 184 * v26 + 128));
                  v31 = heap_Realloc(v49, v105, v50 + 1);
                  if (!v31)
                  {
                    v24 = 2315264010;
                    v15 = v104;
                    log_OutPublic(*(v104 + 32), "FE_PHRASING", 37000, 0, v51, v52, v53, v54, v96);
                    v31 = v105;
                    goto LABEL_132;
                  }
                }

                if (cstdlib_strcmp(*(*(v28 + 1064) + 184 * v26 + 128), "O") && cstdlib_strcmp(*(*(v28 + 1064) + 184 * v26 + 128), "O-P"))
                {
                  cstdlib_strcpy(v31, "B-");
                  cstdlib_strcat(v31, *(*(v28 + 1064) + 184 * v26 + 128));
                }

                else
                {
                  cstdlib_strcpy(v31, *(*(v28 + 1064) + 184 * v26 + 128));
                }

                if (cstdlib_strlen(v31) >= 2)
                {
                  v55 = cstdlib_strlen(v31);
                  if (!cstdlib_strcmp(&v31[v55 - 2], "-P"))
                  {
                    v31[cstdlib_strlen(v31) - 2] = 0;
                  }
                }
              }

              else
              {
                if (*v105 && cstdlib_strcmp(v105, "O"))
                {
                  *v105 = 73;
                }

                v31 = v105;
              }

              v56 = *(v28 + 1064) + 184 * v26;
              v57 = *(v56 + 80);
              v100 = v47;
              if (v57)
              {
                v58 = *(v104 + 8);
                v59 = cstdlib_strlen(v57);
                v60 = heap_Alloc(v58, v59 + 1);
                if (!v60)
                {
                  goto LABEL_136;
                }

                v65 = v60;
                cstdlib_strcpy(v60, *(*(v28 + 1064) + 184 * v26 + 80));
              }

              else
              {
                v66 = *(v56 + 48);
                if (v66)
                {
                  v67 = hlp_NLUStrValueLen(v66);
                  v68 = heap_Alloc(*(v104 + 8), v67 + 1);
                  if (!v68)
                  {
LABEL_136:
                    v24 = 2315264010;
                    v15 = v104;
                    log_OutPublic(*(v104 + 32), "FE_PHRASING", 37000, 0, v61, v62, v63, v64, v96);
                    goto LABEL_132;
                  }

                  v65 = v68;
                  cstdlib_strncpy(v68, *(*(v28 + 1064) + 184 * v26 + 48), v67);
                  v65[v67] = 0;
                }

                else
                {
                  v65 = 0;
                }
              }

              v69 = HIWORD(v115);
              v70 = *(v28 + 1064);
              v71 = *(v70 + 184 * v26 + 168);
              if (v99 && !*(v70 + 184 * v26 + 40))
              {
                if (!cstdlib_strcmp(v31, ""))
                {
                  v15 = v104;
                  if (!v65)
                  {
LABEL_111:
                    log_OutText(*(v15 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", v72, v73, v74, HIWORD(v115));
                    LH_itoa(v100, __s, 0xAu);
                    v89 = *(a2 + 160);
                    v90 = HIWORD(v115);
                    v91 = cstdlib_strlen(__s);
                    v92 = v89(v102, v103, v90, 13, (v91 + 1), __s, &v114);
                    v27 = v102;
                    v24 = v92;
                    if ((v92 & 0x80000000) != 0)
                    {
                      goto LABEL_132;
                    }

LABEL_112:
                    ++v26;
                    v105 = v31;
                    a4 = v103;
                    if (*(v28 + 1072) <= v26)
                    {
                      goto LABEL_123;
                    }

                    goto LABEL_113;
                  }

LABEL_110:
                  heap_Free(*(v15 + 8), v65);
                  goto LABEL_111;
                }

                v70 = *(v28 + 1064);
              }

              v106 = v69;
              v75 = v70 + 184 * v26;
              v76 = *(v75 + 40);
              if (v76)
              {
                v77 = cstdlib_strlen(*(v75 + 40)) + 1;
                if (!v65)
                {
                  goto LABEL_92;
                }
              }

              else
              {
                v77 = 1;
                if (!v65)
                {
LABEL_92:
                  v79 = cstdlib_strlen(";PHR:");
                  v80 = v79 + v77 + cstdlib_strlen(v31);
                  if (v71)
                  {
                    v81 = cstdlib_strlen(";BNDSHAPE:");
                    v80 += v81 + cstdlib_strlen(v71);
                  }

                  v82 = heap_Alloc(*(v104 + 8), v80);
                  if (!v82)
                  {
                    v24 = 2315264010;
                    v15 = v104;
                    goto LABEL_132;
                  }

                  v86 = v82;
                  LOWORD(v117) = 0;
                  if (v76)
                  {
                    cstdlib_strcpy(v82, v76);
                    if (!v65)
                    {
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    *v82 = 0;
                    if (!v65)
                    {
                      goto LABEL_103;
                    }
                  }

                  if (*v65)
                  {
                    hlp_NLUStrSet(v86, "POS", v65);
                  }

LABEL_103:
                  if (*v31)
                  {
                    hlp_NLUStrSet(v86, "PHR", v31);
                  }

                  if (v71 && *v71)
                  {
                    hlp_NLUStrSet(v86, "BNDSHAPE", v71);
                  }

                  v15 = v104;
                  log_OutText(*(v104 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", v83, v84, v85, v106);
                  v87 = *(a2 + 160);
                  v88 = cstdlib_strlen(v86);
                  v24 = v87(v102, v103, v106, 14, (v88 + 1), v86, &v117);
                  heap_Free(*(v104 + 8), v86);
                  if ((v24 & 0x80000000) != 0)
                  {
                    goto LABEL_132;
                  }

                  if (!v65)
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_110;
                }
              }

              v78 = cstdlib_strlen(";POS:");
              v77 += v78 + cstdlib_strlen(v65);
              goto LABEL_92;
            }
          }

          if (*(v28 + 1768))
          {
            v34 = *(v28 + 1768);
          }

          else
          {
            v34 = "T";
          }

          goto LABEL_28;
        }

LABEL_123:
        if (cstdlib_strcmp(__dst, "W") && cstdlib_strcmp(__dst, "AF"))
        {
LABEL_125:
          v31 = v105;
        }

        else
        {
          v94 = cstdlib_strrchr(v101, 63);
          v31 = v105;
          if (v94 && v94 != v101 && *(v94 - 1) != 32)
          {
            *v94 = 46;
          }
        }

LABEL_132:
        v93 = v31;
      }

      heap_Free(*(v15 + 8), v93);
    }
  }

  else
  {
    v24 = 2315264010;
    log_OutPublic(*(v15 + 32), "FE_PHRASING", 37000, 0, v17, v18, v19, v20, v96);
  }

  return v24;
}