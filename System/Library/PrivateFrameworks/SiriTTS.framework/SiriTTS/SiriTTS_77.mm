uint64_t hlp_RemoveSetPhonInRange(uint64_t result, _DWORD **a2, unsigned __int16 *a3, unsigned int a4, int a5)
{
  v5 = *a3;
  if (*a3)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    v19 = 0;
    v17 = 0;
    v16 = 0;
    v12 = a5 + a4;
    do
    {
      v13 = &(*a2)[8 * v10];
      if (*v13 != 34 || ((result = hlp_GetRangeForSETPHON(*v9, *a2, v5, v11, &v19, &v18, &v17, &v16 + 1, &v16), result) ? (v14 = HIDWORD(v16) >= a4) : (v14 = 0), v14 ? (v15 = v16 >= v12) : (v15 = 1), v15))
      {
        ++v11;
      }

      else
      {
        result = memmove(v13, v13 + 8, 32 * (~v10 + v5));
        v5 = *a3 - 1;
        *a3 = v5;
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
    v8 = strlen(__s);
    *(a1[2] + 8 * a2) = heap_Alloc(*(*a1 + 8), (v8 + 1));
    v9 = *(a1[2] + 8 * a2);
    if (v9)
    {
      strcpy(v9, __s);
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
        result = strncpy((a5 + 4), __src, 8uLL);
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
        v13 = *(v10[2] + 8 * v11);
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
                if (memchr("seiSEI", *i, 7uLL) && i[1] == 95)
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
          if (!memchr("seiSEI", *v42, 7uLL) || v42[1] != 95)
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
      v12 = strlen(v10);
      v13 = heap_Alloc(v11, (v12 + 1));
      if (v13)
      {
        v14 = v13;
        v15 = strcpy(v13, v10);
        do
        {
          if ((*v15 | 0x20) == 0x73 && v15[1] == 95)
          {
            v16 = hlp_NLUStrLength(v15);
            v17 = 1;
            v18 = v15;
            do
            {
              if ((*v18 | 0x20) == 0x65 && v18[1] == 95 && v16 == hlp_NLUStrLength(v18) && !strncmp(v15 + 2, v18 + 2, v16 - 2))
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

uint64_t hlp_AlignOrthAndPhonWords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5, void *a6, _WORD *a7, uint64_t a8, int a9, unsigned __int16 a10, _WORD *a11)
{
  v16 = a10;
  *a11 = 0;
  v17 = *(a4 + 48);
  v18 = hlp_SearchWordBoundaryInOrth(v17);
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
      v18 = hlp_SearchWordBoundaryInOrth(&v17[v20]);
    }

    while (v18 != 0xFFFF);
  }

  v21 = *a5;
  v22 = (*a5)[a10];
  if ((*a5)[a10])
  {
    do
    {
      if (v22 == 32)
      {
        break;
      }

      if (v22 == 95)
      {
        break;
      }

      v16 = (v16 + 1);
      v22 = v21[v16];
    }

    while (v21[v16]);
  }

  v23 = *(a4 + 56);
  if (v23 < 2)
  {
    v26 = 1;
    LOWORD(v55) = v16;
LABEL_78:
    while (v26 < v19)
    {
      v21[v55] = 45;
      v21 = *a5;
      do
      {
        LOWORD(v55) = v55 + 1;
        v56 = v21[v55];
      }

      while (v21[v55] && v56 != 95 && v56 != 32);
      ++v26;
    }

    return 0;
  }

  v58 = a8;
  v24 = v19;
  v25 = 1;
  v26 = 1;
  v59 = a1;
  while (1)
  {
    v27 = *(*a4 + 8);
    v28 = *(v27 + 280);
    if (v28)
    {
      v29 = *(v28 + 4 * *(a4 + 96));
      if (v29 != -1)
      {
        v30 = *(*(v27 + 288) + (v29 + v25));
LABEL_14:
        if (!v30)
        {
          goto LABEL_28;
        }

        if (v30 != 1)
        {
          v31 = (v30 - 2);
          do
          {
            v21[v16] = 45;
            v21 = *a5;
            do
            {
              v16 = (v16 + 1);
              v32 = v21[v16];
            }

            while (v21[v16] && v32 != 95 && v32 != 32);
            --v30;
          }

          while (v30 > 1u);
          v26 += v31 + 1;
        }

        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if (v19 <= v23)
    {
      break;
    }

    if (v25 == 1)
    {
      v30 = v19 - v23 + 1;
      goto LABEL_14;
    }

LABEL_27:
    ++v26;
LABEL_65:
    while (1)
    {
      v53 = v21[v16];
      if (v53 != 32)
      {
        v54 = v21[v16];
        if (v54 != 95)
        {
          if (!v21[v16])
          {
            v55 = v16;
            goto LABEL_75;
          }

          if (!strchr(*(*(*a4 + 8) + 192), v53))
          {
            break;
          }
        }
      }

      v16 = (v16 + 1);
    }

    v55 = v16;
    do
    {
      if (v54 == 32)
      {
        break;
      }

      if (v54 == 95)
      {
        break;
      }

      v55 = (v55 + 1);
      v54 = v21[v55];
    }

    while (v54);
LABEL_75:
    ++v25;
    v23 = *(a4 + 56);
    v16 = v55;
    if (v25 >= v23)
    {
      goto LABEL_78;
    }
  }

  if (v23 - v24 < v25)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v16)
  {
    v33 = *(*(*a4 + 8) + 192);
    v16 = v16;
    while (strchr(v33, v21[(v16 - 1)]))
    {
      if (!--v16)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    v16 = 0;
  }

  v34 = strlen(v21);
  if (v34 < v16)
  {
    v35 = 0;
LABEL_64:
    *a11 += v35;
    v21 = *a5;
    goto LABEL_65;
  }

  v36 = v34;
  v37 = a7;
  v38 = *(**a4 + 16);
  v39 = heap_Realloc(*(v38 + 8), v21, (v34 + 4));
  if (v39)
  {
    *a5 = v39;
    memmove((v39 + v16 + 3), (v39 + v16), v36 - v16 + 1);
    (*a5)[v16] = 32;
    *&(*a5)[v16 + 1] = -22590;
    a7 = v37;
    v44 = *v37;
    if (*v37)
    {
      v45 = a9 + v16;
      v46 = (*a6 + 16);
      do
      {
        v47 = *(v46 - 1);
        if (v47 >= v45)
        {
          *(v46 - 1) = v47 + 3;
        }

        else if (*v46 + v47 >= v45)
        {
          *v46 += 3;
        }

        v46 += 8;
        --v44;
      }

      while (v44);
    }

    v64 = 0;
    v65 = 0;
    v63 = 0;
    result = (*(a3 + 104))(v59, a2, 1, 0, &v65 + 2);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a3 + 104))(v59, a2, 2, HIWORD(v65), &v65);
      if ((result & 0x80000000) == 0)
      {
        v49 = v65;
        if (!v65)
        {
          goto LABEL_55;
        }

        do
        {
          result = (*(a3 + 168))(v59, a2, v49, 1, 1, &v63 + 2, &v64 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(a3 + 168))(v59, a2, v65, 2, 1, &v63, &v64 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIWORD(v63) > v16)
          {
            HIWORD(v63) += 3;
            result = (*(a3 + 160))(v59, a2, v65, 1, 1, &v63 + 2, &v64);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          if (v63 > v16)
          {
            LOWORD(v63) = v63 + 3;
            result = (*(a3 + 160))(v59, a2, v65, 2, 1, &v63, &v64);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          result = (*(a3 + 120))(v59, a2, v65, &v65);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v49 = v65;
        }

        while (v65);
        if ((result & 0x80000000) == 0)
        {
LABEL_55:
          v50 = *(v58 + 8);
          if (v50 <= -3)
          {
            v50 = -3;
          }

          *(v58 + 8) = v50 + 3;
          v51 = *(v58 + 16);
          if (v51)
          {
            v24 = v19;
            do
            {
              v52 = *(v51 + 4);
              if (v52 <= -3)
              {
                v52 = -3;
              }

              *(v51 + 4) = v52 + 3;
              v51 = *(v51 + 16);
            }

            while (v51);
            v35 = 3;
          }

          else
          {
            v35 = 3;
            v24 = v19;
          }

          goto LABEL_64;
        }
      }
    }
  }

  else
  {
    log_OutPublic(*(v38 + 32), "DOMAIN_MNGR", 47000, 0, v40, v41, v42, v43, v57);
    return 2296389642;
  }

  return result;
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
  v15 = 0;
  v14 = 15;
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

  v13 = 0;
  result = (*(a3 + 160))(a1, a2, *a6, 0, 1, &v14, &v13);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a3 + 160))(a1, a2, *a6, 1, 1, &v15, &v13);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a3 + 160))(a1, a2, *a6, 2, 1, &v15, &v13);
      if ((result & 0x80000000) == 0)
      {
        result = (*(a3 + 160))(a1, a2, *a6, 7, 1, a5 + 2, &v13);
        if ((result & 0x80000000) == 0)
        {
          result = (*(a3 + 160))(a1, a2, *a6, 8, 1, a5, &v13);
          if ((result & 0x80000000) == 0)
          {
            v12 = strlen((a5 + 4));
            return (*(a3 + 160))(a1, a2, *a6, 4, (v12 + 1), a5 + 4, &v13);
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_SearchWordBoundaryInOrth(char *a1)
{
  v2 = strstr(a1, "%Ä");
  if (v2)
  {
    v3 = v2 - a1;
  }

  else
  {
    v3 = strlen(a1);
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
  v93 = *MEMORY[0x1E69E9840];
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

  v90 = v27;
  strcpy(__s, "*");
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v81 = v25;
  v82 = *v25;
  v83 = v24;
  v85 = 0;
  if (*a18)
  {
    v28 = a1;
    v29 = a2;
    v30 = (*(a3 + 80))();
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v28 = a1;
    v29 = a2;
    v30 = (*(a3 + 72))(a1, a2, 2, a9, a18);
    if ((v30 & 0x80000000) != 0)
    {
LABEL_37:
      v45 = v30;
      goto LABEL_38;
    }
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 0, 1, &v90, &v86);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 1, 1, &a10, &v86);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 2, 1, &a12, &v86);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v78 = v26;
  v79 = a3;
  v31 = *(a3 + 160);
  v32 = strlen((v83 + v82));
  v33 = v28;
  v30 = v31(v28, v29, *v23, 3, (v32 + 1), v83 + v82, &v86);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  if (a5)
  {
    v34 = *(a5 + 16);
    if (v34)
    {
      if (*(a5 + 8) > a7)
      {
        v35 = *(v34 + 8 * a7);
        if (v35)
        {
          v36 = strlen(*(v34 + 8 * a7));
          v30 = (*(v79 + 160))(v28, v29, *v23, 14, (v36 + 1), v35, &v86);
          if ((v30 & 0x80000000) != 0)
          {
            goto LABEL_37;
          }
        }
      }
    }
  }

  if (a6 && (v37 = *(a6 + 16)) != 0 && *(a6 + 8) > a7 && (v38 = *(v37 + 8 * a7)) != 0)
  {
    v39 = *(v79 + 160);
    v40 = (strlen(*(v37 + 8 * a7)) + 1);
    v41 = v28;
    v42 = v29;
    v43 = *v23;
    v44 = v38;
  }

  else
  {
    v39 = *(v79 + 160);
    v40 = (strlen(__s) + 1);
    v44 = __s;
    v41 = v28;
    v42 = v29;
    v43 = *v23;
  }

  v30 = v39(v41, v42, v43, 5, v40, v44, &v86);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v45 = 2296389642;
  v87 = strlen((v83 + v82)) + 1;
  v46 = heap_Calloc(*(v78 + 8), v87, 1);
  if (v46)
  {
    v47 = v46;
    v48 = strlen((v83 + v82));
    utf8_Utf8ToDepes(v83 + v82, v48, 0, v47, v87, &v87, 0);
    v49 = strlen(v47);
    v50 = (*(v79 + 160))(v28, v29, *v23, 15, (v49 + 1), v47, &v86);
    if ((v50 & 0x80000000) != 0)
    {
      v74 = v47;
      v45 = v50;
      goto LABEL_84;
    }

    if ((domain_mngr_utils_IsActiveVoiceAddon(v78, *(*(*a4 + 8) + 72), (*(*a4 + 8) + 80), (*(*a4 + 8) + 88), (*(*a4 + 8) + 100), &v85) & 0x80000000) != 0 || !v85 || (v91[0] = 0, (paramc_ParamGetInt(*(v78 + 40), *(*a4 + 72), v91) & 0x80000000) != 0) || (v51 = v91[0]) == 0)
    {
      v84 = 0;
      v52 = v81;
      v61 = *(a4 + 72) + 4 * v81[1];
      v62 = v81[2];
    }

    else
    {
      v52 = v81;
      v53 = heap_Calloc(*(v78 + 8), v81[2], 4);
      if (!v53)
      {
        v74 = v47;
        goto LABEL_84;
      }

      v54 = v53;
      memcpy(v53, (*(a4 + 72) + 4 * v81[1]), 4 * v81[2]);
      v55 = v81[2];
      v84 = v54;
      if (v81[2])
      {
        v56 = 0;
        v57 = v29;
        do
        {
          v58 = *&v54[v56];
          if (v58 != -1)
          {
            *&v54[v56] = v58 + v51;
          }

          v56 += 4;
        }

        while (4 * v55 != v56);
LABEL_41:
        v63 = *v23;
        v64 = v57;
        v65 = (*(v79 + 160))(v33);
        if ((v65 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v65 = (*(v79 + 160))(v33, v64, *v23, 6, 2, __s, &v86);
        if ((v65 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v65 = (*(v79 + 160))(v33, v64, *v23, 9, 1, &v88, &v86);
        if ((v65 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v66 = *(*a4 + 8);
        if (*(v66 + 208) == 1)
        {
          __sprintf_chk(v92, 0, 8uLL, "%u", *(*(v66 + 272) + *(v66 + 214) + (*(a4 + 60) + a7) * *(v66 + 212)));
          v67 = strlen(v92);
          v65 = (*(v79 + 160))(v33, v29, *v23, 13, (v67 + 1), v92, &v86);
          if ((v65 & 0x80000000) != 0)
          {
            goto LABEL_83;
          }

          v66 = *(*a4 + 8);
          v52 = v81;
        }

        v68 = a16;
        v69 = a17;
        v70 = a15;
        v71 = v52[3];
        *a15 = v71;
        if (*(v66 + 220) == 1)
        {
          v72 = *(*(v66 + 272) + *(v66 + 216) + (*(a4 + 60) + a7) * *(v66 + 212));
          *v68 = v72;
          if (v72 < 2)
          {
            if (*v70 != 0xFFFF && *v70)
            {
              v73 = 0;
            }

            else
            {
              v73 = 0;
              *v70 = 1;
            }

LABEL_63:
            v75 = a14;
            *v69 = 0;
            v76 = *v70;
            if (a8)
            {
              if (v75 || v76 == 0xFFFF)
              {
                v76 = a13;
                *v70 = a13;
                *v69 = 1;
              }
            }

            else if (v76 == 0xFFFF)
            {
              *v70 = 0;
LABEL_71:
              if (*(v66 + 228) == 1)
              {
                v77 = v73;
              }

              else
              {
                v77 = 1;
              }

              if (((v77 & 1) != 0 || *v70 == 65533 || !*v70) && (a8 != 1 || v75 != 1) || (strcpy(v91, "external"), v65 = (*(v79 + 160))(v33, v29, *v23, 18, 9, v91, &v86), (v65 & 0x80000000) == 0))
              {
                if (*v70 == -3)
                {
                  *v70 = 200;
                }

                v65 = (*(v79 + 160))(v33, v29, *v23, 8, 1, v70, &v86);
              }

LABEL_83:
              v45 = v65;
              heap_Free(*(v78 + 8), v47);
              v74 = v84;
              if (!v84)
              {
                goto LABEL_38;
              }

LABEL_84:
              heap_Free(*(v78 + 8), v74);
              goto LABEL_38;
            }

            if (v76)
            {
              *v68 = 1;
            }

            goto LABEL_71;
          }

          if (v72 == 2)
          {
            *v70 = 0;
          }
        }

        else
        {
          if (v71 && v71 != 0xFFFF)
          {
            v73 = 0;
            *v68 = 1;
            goto LABEL_63;
          }

          *v68 = 255;
        }

        v73 = 1;
        goto LABEL_63;
      }
    }

    v57 = v29;
    goto LABEL_41;
  }

LABEL_38:
  v59 = *MEMORY[0x1E69E9840];
  return v45;
}

uint64_t hlp_CreateOrUpdatePhraseRecord(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 a6, int a7, __int16 a8, _WORD *a9)
{
  v18 = a6;
  v17 = a7;
  v16 = a8;
  v15 = 15;
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
    v14 = 0;
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

      result = (*(a3 + 160))(a1, a2, *a9, 0, 1, &v15, &v14);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 1, 1, &v18, &v14);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 2, 1, &v18, &v14);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 4, 1, "", &v14);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      a5 = *a9;
    }

    result = (*(a3 + 160))(a1, a2, a5, 7, 1, &v17, &v14);
    if ((result & 0x80000000) == 0)
    {
      return (*(a3 + 160))(a1, a2, *a9, 8, 1, &v16, &v14);
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
  v108[0] = a2;
  v15 = **a1;
  v16 = *(v15 + 16);
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 5;
  v101 = 0;
  __s = 0;
  v17 = *(v15 + 56);
  v99 = 0;
  v18 = a1[6];
  v19 = strstr(v18, "%Ä");
  v20 = v19;
  if (v19)
  {
    v21 = v19 - v18;
    v22 = (v19 - v18);
    v23 = heap_Alloc(*(v16 + 8), v22 + 1);
    if (!v23)
    {
      v28 = 2296389642;
      log_OutPublic(*(v16 + 32), "DOMAIN_MNGR", 47000, 0, v24, v25, v26, v27, v80);
      return v28;
    }

    v18 = v23;
    v91 = a7;
    strncpy(v23, a1[6], v22)[v22] = 0;
  }

  else
  {
    v91 = a7;
    v21 = strlen(v18);
  }

  v28 = 2296389642;
  if (!v21)
  {
    v28 = 2296389639;
    goto LABEL_153;
  }

  v84 = v21;
  v85 = a6;
  v95 = v16;
  v96 = v21;
  v89 = v20;
  v90 = v17;
  v29 = v108[0];
  v30 = *a4;
  v31 = strlen(*a4);
  v32 = v108[0];
  if (v31 > v108[0])
  {
    v33 = *(*(*a1 + 1) + 192);
    v32 = v108[0];
    do
    {
      if (!strchr(v33, v30[v32]))
      {
        break;
      }

      ++v32;
    }

    while (v31 > v32);
  }

  if (v32 == v31)
  {
    v82 = 0;
    v86 = 0;
    v34 = v21;
  }

  else
  {
    if (v30[v32] == 32)
    {
      v35 = 0;
    }

    else
    {
      v35 = -1;
    }

    v82 = v35;
    v86 = v30[v32] != 32;
    if (v30[v32] == 32)
    {
      v34 = v21;
    }

    else
    {
      v34 = v21 + 1;
    }

    if (v30[v32] == 32)
    {
      ++v32;
    }

    else
    {
      v32 = v108[0];
    }
  }

  if (v108[0])
  {
    v36 = v108[0] - 1;
  }

  else
  {
    v36 = 0;
  }

  if (v108[0] < 2u)
  {
LABEL_30:
    if (!v108[0])
    {
      v87 = 0;
      v39 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v37 = *(*(*a1 + 1) + 192);
    v38 = v36;
    while (strchr(v37, v30[v38]))
    {
      if (!--v38)
      {
        v36 = 0;
        goto LABEL_30;
      }
    }

    v36 = v38;
  }

  if (v30[v36] != 32)
  {
    ++v34;
    v83 = v108[0] + 1;
    v101 = v108[0] + 1;
    v87 = 1;
    v88 = 0;
    v39 = 1;
    goto LABEL_38;
  }

  v87 = 0;
  v39 = 0;
  ++v36;
LABEL_37:
  v83 = v36;
  v101 = v36;
  v88 = 1;
LABEL_38:
  v40 = strlen(v30);
  v41 = heap_Realloc(*(v95 + 8), v30, v40 + v34 + 2);
  if (!v41)
  {
    log_OutPublic(*(v95 + 32), "DOMAIN_MNGR", 47000, 0, v42, v43, v44, v45, v80);
    v16 = v95;
LABEL_70:
    v20 = v89;
    goto LABEL_153;
  }

  v46 = v34;
  *a4 = v41;
  v47 = strlen(v41) + 1;
  if (v47 >= v29)
  {
    do
    {
      (*a4)[v34 + v47] = (*a4)[v47];
      v29 = v108[0];
    }

    while (v47-- > v108[0]);
  }

  v81 = v34 + v32;
  if (v39)
  {
    (*a4)[v29] = 32;
  }

  v49 = 0;
  v50 = v87;
  v16 = v95;
  v20 = v89;
  do
  {
    (*a4)[v108[0] + v50++] = v18[v49++];
  }

  while (v96 != v49);
  if (v86)
  {
    (*a4)[v108[0] - 1 + v46] = 32;
  }

  *a11 += v46;
  v51 = *a5;
  v52 = *a5 + 32 * v91;
  v55 = *(v52 + 12);
  v53 = (v52 + 12);
  v54 = v55;
  v53[1] = v84;
  if ((v88 & 1) == 0 && v54 == v108[0] + a3)
  {
    *v53 = v54 + 1;
  }

  v56 = *v85;
  if (v56 > (v91 + 1))
  {
    v57 = (v91 + 1);
    v58 = (v51 + 32 * v57 + 12);
    v59 = v57 + 1;
    do
    {
      *v58 += v46;
      v58 += 8;
    }

    while (v56 != v59++);
  }

  v61 = (*(v90 + 104))(a9, a10, 1, 0, &v107 + 2);
  if ((v61 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  if (((*(v90 + 152))(a9, a10, 3, HIWORD(v107), &v99) & 0x80000000) == 0 && v99)
  {
    v61 = (*(v90 + 104))(a9, a10, 3, HIWORD(v107), &v107);
    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    while (v107)
    {
      v61 = (*(v90 + 168))(a9, a10);
      if ((v61 & 0x80000000) != 0)
      {
        goto LABEL_152;
      }

      v61 = (*(v90 + 168))(a9, a10, v107, 2, 1, &v103, &v105);
      if ((v61 & 0x80000000) != 0)
      {
        goto LABEL_152;
      }

      v62 = v108[0];
      if (v104 >= v108[0])
      {
        LOWORD(v104) = v104 + v46;
        v61 = (*(v90 + 160))(a9, a10, v107, 1, 1, &v104, &v104 + 2);
        if ((v61 & 0x80000000) != 0)
        {
          goto LABEL_152;
        }

        v62 = v108[0];
      }

      if (v103 > v62)
      {
        v103 += v46;
        v61 = (*(v90 + 160))(a9, a10, v107, 2, 1, &v103, &v104 + 2);
        if ((v61 & 0x80000000) != 0)
        {
          goto LABEL_152;
        }
      }

      v28 = (*(v90 + 120))(a9, a10, v107, &v107);
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_153;
      }
    }
  }

  v61 = (*(v90 + 104))(a9, a10, 1, 0, &v107 + 2);
  if ((v61 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  v63 = 0;
  if (((*(v90 + 152))(a9, a10, 3, HIWORD(v107), &v99) & 0x80000000) != 0)
  {
    v64 = 0;
    v98 = 0;
    v65 = 0;
  }

  else
  {
    v64 = 0;
    v98 = 0;
    v65 = 0;
    if (v99)
    {
      v61 = (*(v90 + 104))(a9, a10, 3, HIWORD(v107), &v107);
      if ((v61 & 0x80000000) != 0)
      {
        goto LABEL_152;
      }

      v66 = v107;
      if (v107)
      {
        v63 = 0;
        v67 = 0;
        v92 = 0;
        v98 = 0;
        while (1)
        {
          v68 = (*(v90 + 168))(a9, a10, v66, 1, 1, &v104, &v105);
          if ((v68 & 0x80000000) != 0 || (v68 = (*(v90 + 168))(a9, a10, v107, 2, 1, &v103, &v105), (v68 & 0x80000000) != 0) || (v68 = (*(v90 + 168))(a9, a10, v107, 0, 1, &v102, &v105), (v68 & 0x80000000) != 0))
          {
LABEL_107:
            v28 = v68;
            goto LABEL_70;
          }

          v69 = v102;
          if (v102 == 3)
          {
            if (v104 >= v108[0] || v103 <= v108[0])
            {
LABEL_92:
              v70 = v104;
              goto LABEL_93;
            }

            v68 = (*(v90 + 160))(a9, a10, v107, 2, 1, v108, &v104 + 2);
            if ((v68 & 0x80000000) != 0)
            {
              goto LABEL_107;
            }

            v68 = (*(v90 + 80))(a9, a10, v107, &v107);
            if ((v68 & 0x80000000) != 0)
            {
              goto LABEL_107;
            }

            v68 = (*(v90 + 160))(a9, a10, v107, 0, 1, &v102, &v104 + 2);
            if ((v68 & 0x80000000) != 0)
            {
              goto LABEL_107;
            }

            LOWORD(v104) = v108[0] + v46;
            v68 = (*(v90 + 160))(a9, a10, v107, 1, 1, &v104, &v104 + 2);
            if ((v68 & 0x80000000) != 0)
            {
              goto LABEL_107;
            }

            v68 = (*(v90 + 160))(a9, a10, v107, 2, 1, &v103, &v104 + 2);
            if ((v68 & 0x80000000) != 0)
            {
              goto LABEL_107;
            }

            LOWORD(v104) = v108[0];
            v69 = v102;
          }

          if (v69 != 5)
          {
            goto LABEL_92;
          }

          WORD2(v92) = v107;
          v68 = (*(v90 + 176))(a9, a10);
          if ((v68 & 0x80000000) != 0)
          {
            goto LABEL_107;
          }

          v70 = v104;
          LOWORD(v92) = v103;
          v98 = v104;
LABEL_93:
          v71 = v107;
          if (!HIWORD(v106) && v70 >= v108[0])
          {
            HIWORD(v106) = v107;
          }

          if (!v67)
          {
            if (v70 >= v83)
            {
              LOWORD(v106) = v107;
              v63 = v107;
              v67 = v107;
            }

            else
            {
              v67 = 0;
            }
          }

          if (!HIWORD(v105) && v70 >= v81)
          {
            HIWORD(v105) = v107;
            if (v107)
            {
              v61 = (*(v90 + 88))(a9, a10, HIWORD(v106), &v106 + 2);
              goto LABEL_136;
            }

            goto LABEL_138;
          }

          v68 = (*(v90 + 120))(a9, a10, v107, &v107);
          if ((v68 & 0x80000000) != 0)
          {
            goto LABEL_107;
          }

          v66 = v107;
          if (!v107)
          {
            if (v71)
            {
              v61 = (*(v90 + 80))(a9, a10, v71, &v106 + 2);
LABEL_136:
              v20 = v89;
              v64 = v92;
              if ((v61 & 0x80000000) == 0)
              {
                goto LABEL_110;
              }

              goto LABEL_152;
            }

LABEL_138:
            v20 = v89;
            v64 = v92;
            v65 = WORD2(v92);
            goto LABEL_109;
          }
        }
      }

      v63 = 0;
      v64 = 0;
      v98 = 0;
      v65 = 0;
    }
  }

LABEL_109:
  WORD2(v92) = v65;
  v61 = (*(v90 + 72))(a9, a10, 3, HIWORD(v107), &v106 + 2);
  if ((v61 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

LABEL_110:
  if (HIWORD(v105))
  {
    v61 = (*(v90 + 120))(a9, a10);
    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    if (!v107)
    {
      goto LABEL_169;
    }

    v61 = (*(v90 + 168))(a9, a10);
    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    if (v102 == 5)
    {
      HIWORD(v105) = 0;
    }

    else
    {
LABEL_169:
      if (HIWORD(v105))
      {
        v61 = (*(v90 + 80))(a9, a10);
        if ((v61 & 0x80000000) != 0)
        {
          goto LABEL_152;
        }
      }
    }
  }

  v93 = v64;
  if ((v88 & 1) == 0)
  {
    LOWORD(v104) = v108[0];
    v103 = v108[0] + 1;
    v102 = 3;
    v61 = (*(v90 + 160))(a9, a10, HIWORD(v106), 0, 1, &v102, &v104 + 2);
    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    v61 = (*(v90 + 160))(a9, a10, HIWORD(v106), 1, 1, &v104, &v104 + 2);
    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    v61 = (*(v90 + 160))(a9, a10, HIWORD(v106), 2, 1, &v103, &v104 + 2);
    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    v61 = (*(v90 + 80))(a9, a10, HIWORD(v106), &v106 + 2);
    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }
  }

  LOWORD(v104) = v108[0] + v87;
  v103 = v46 + v82 + v108[0];
  v102 = 6;
  v61 = (*(v90 + 160))(a9, a10, HIWORD(v106), 0, 1, &v102, &v104 + 2);
  if ((v61 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  v61 = (*(v90 + 160))(a9, a10, HIWORD(v106), 1, 1, &v104, &v104 + 2);
  if ((v61 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  v61 = (*(v90 + 160))(a9, a10, HIWORD(v106), 2, 1, &v103, &v104 + 2);
  if ((v61 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  v61 = (*(v90 + 160))(a9, a10, HIWORD(v106), 4, 5, "_PR_", &v104 + 2);
  if ((v61 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  v61 = (*(v90 + 160))(a9, a10, HIWORD(v106), 3, (v96 + 1), v18, &v104 + 2);
  if ((v61 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  LOWORD(v104) = v83;
  v72 = v81;
  v103 = v81;
  do
  {
    v73 = v72;
    v74 = (*a4)[v72++];
  }

  while (v74 == 32);
  v102 = 5;
  v75 = *(v90 + 80);
  if (v87 + v108[0] == v83)
  {
    v61 = v75(a9, a10, HIWORD(v106), &v106 + 2);
    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    LOWORD(v106) = HIWORD(v106);
  }

  else
  {
    v61 = v75(a9, a10, v63, &v106);
    if ((v61 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }
  }

  v61 = (*(v90 + 160))(a9, a10);
  if ((v61 & 0x80000000) != 0 || (v61 = (*(v90 + 160))(a9, a10, v106, 1, 1, &v104, &v104 + 2), (v61 & 0x80000000) != 0) || (v61 = (*(v90 + 160))(a9, a10, v106, 2, 1, &v103, &v104 + 2), (v61 & 0x80000000) != 0))
  {
LABEL_152:
    v28 = v61;
    goto LABEL_153;
  }

  v28 = (*(v90 + 160))(a9, a10, v106, 4, 7, "prompt", &v104 + 2);
  if ((v28 & 0x80000000) == 0)
  {
    if (v86)
    {
      v76 = (*(v90 + 80))(a9, a10, HIWORD(v106), &v106 + 2);
      if ((v76 & 0x80000000) != 0)
      {
        goto LABEL_165;
      }

      LOWORD(v104) = v108[0] + v46 - 1;
      v103 = v108[0] + v46;
      v102 = 3;
      v76 = (*(v90 + 160))(a9, a10, HIWORD(v106), 0, 1, &v102, &v104 + 2);
      if ((v76 & 0x80000000) != 0)
      {
        goto LABEL_165;
      }

      v76 = (*(v90 + 160))(a9, a10, HIWORD(v106), 1, 1, &v104, &v104 + 2);
      if ((v76 & 0x80000000) != 0)
      {
        goto LABEL_165;
      }

      v28 = (*(v90 + 160))(a9, a10, HIWORD(v106), 2, 1, &v103, &v104 + 2);
      v16 = v95;
      v20 = v89;
      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_153;
      }
    }

    if (__s)
    {
      v77 = v98 >= v83 ? (*(v90 + 192))(a9, a10, WORD2(v92)) : (*(v90 + 160))(a9, a10, WORD2(v92), 2, 1, &v101, &v104 + 2);
      v28 = v77;
      v16 = v95;
      v20 = v89;
      if ((v77 & 0x80000000) != 0)
      {
        goto LABEL_153;
      }
    }

    if (!HIWORD(v105))
    {
      goto LABEL_166;
    }

    v16 = v95;
    v20 = v89;
    if (!__s)
    {
      goto LABEL_153;
    }

    LOWORD(v104) = v73;
    v103 = v93;
    v102 = 5;
    v76 = (*(v90 + 160))(a9, a10);
    if ((v76 & 0x80000000) == 0)
    {
      v76 = (*(v90 + 160))(a9, a10, HIWORD(v105), 1, 1, &v104, &v104 + 2);
      if ((v76 & 0x80000000) == 0)
      {
        v76 = (*(v90 + 160))(a9, a10, HIWORD(v105), 2, 1, &v103, &v104 + 2);
        if ((v76 & 0x80000000) == 0)
        {
          v79 = strlen(__s);
          v76 = (*(v90 + 160))(a9, a10, HIWORD(v105), 4, (v79 + 1), __s, &v104 + 2);
        }
      }
    }

LABEL_165:
    v28 = v76;
LABEL_166:
    v16 = v95;
    goto LABEL_70;
  }

LABEL_153:
  if (v20 && v18)
  {
    heap_Free(*(v16 + 8), v18);
  }

  return v28;
}

uint64_t activeprompt_ConsultOriOrth(uint64_t a1, const char **a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5, _WORD *a6)
{
  v230[3] = *MEMORY[0x1E69E9840];
  v6 = *(**a1 + 16);
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v7 = *(a1 + 40);
  if (!v7)
  {
    v26 = 0;
    goto LABEL_269;
  }

  v11 = a2;
  v203 = strlen(*a2);
  v220 = a3;
  v13 = *(*a3 + 12);
  v14 = (*(a5 + 4) - v13);
  v219 = strlen(v7);
  v217 = v13;
  if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
  {
    v20 = a5;
    do
    {
      v21 = v20;
      v20 = *(v20 + 16);
    }

    while (v20);
    v22 = v14;
    v23 = (*(a5 + 4) - v13 + *(a5 + 8));
    if (a4)
    {
      v24 = v14;
      if (*a4)
      {
        v25 = (*(v21 + 8) + *(v21 + 4) - *(*v220 + 12));
      }

      else
      {
        v25 = 0;
      }

      v201 = *(a1 + 16);
      log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%d %s%d", v15, v16, v17, v18, v19, "BEG");
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "text/plain;charset=utf-8", *v11, v25);
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "application/x-realspeak-markers-pp;version=4.0", *v220, 32 * *a4);
      v14 = v24;
    }

    else
    {
      v200 = *(a1 + 16);
      log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%d %s%d", v15, v16, v17, v18, v19, "BEG");
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "text/plain;charset=utf-8", *v11, 0);
    }
  }

  else
  {
    v22 = v14;
  }

  v27 = v219;
  if ((*(a5 + 8) + v14) >= (v14 + v219))
  {
    v202 = a6;
    v213 = 0;
    LOWORD(__s) = 0;
    LOWORD(v207) = 0;
    v30 = 0;
    LOBYTE(v214) = 0;
    v31 = v14;
    v32 = *v11;
    v204 = v22;
    v218 = v22;
    v209 = v31;
    v33 = v31;
    v212 = v6;
    v216 = a4;
    v210 = v11;
    v215 = a5;
    while (1)
    {
      if (!v32[v33])
      {
        goto LABEL_14;
      }

      if (v203 <= v33)
      {
        v51 = 0;
        v38 = v33;
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = v33;
        v38 = v33;
        v39 = v220;
        v40 = a1;
        do
        {
          if (v35 && (v41 = v37 + 1, v41 < v203) && v32[v38] == 32 && (v42 = &v32[v41], *v42 == 194) && *(v42 + 1) == 167)
          {
            v38 += 2;
            --v35;
            v43 = 1;
          }

          else
          {
            if (a4)
            {
              v44 = *a4;
              v45 = v34 <= v44 ? *a4 : v34;
              if (v34 >= v44)
              {
LABEL_41:
                v34 = v45;
LABEL_43:
                LOWORD(v47) = *a4;
              }

              else
              {
                v46 = v37 + v217;
                v47 = v34;
                v48 = (*v39 + 32 * v34);
                while (1)
                {
                  v49 = v48[3];
                  if (v49 > v46)
                  {
                    v34 = v47;
                    goto LABEL_43;
                  }

                  if (v49 >= v46 && *v48 == 34)
                  {
                    break;
                  }

                  v48 += 8;
                  if (v45 == ++v47)
                  {
                    goto LABEL_41;
                  }
                }

                v34 = v47;
              }

              if (v44 > v47)
              {
                if (!hlp_GetRangeForSETPHON(v32, *v39, v44, v47, &v224, &v223, &v224 + 1, &v222 + 1, &v222))
                {
                  goto LABEL_65;
                }

                if (v223)
                {
                  v35 = HIWORD(v224);
                }

                v39 = v220;
                v40 = a1;
                v27 = v219;
              }
            }

            if (v36 >= v27)
            {
              goto LABEL_59;
            }

            v43 = *(*(v40 + 40) + v36++) == v32[v38];
          }

          v37 = ++v38;
        }

        while (v43 && v203 > v38);
        if (!v43)
        {
LABEL_65:
          v53 = 0;
          v211 = v38 - v33;
          v6 = v212;
          goto LABEL_98;
        }

LABEL_59:
        v51 = v38 - v33;
        v52 = v222 >= v37 || v35 == 0;
        v11 = v210;
        if (v52)
        {
          v6 = v212;
          goto LABEL_76;
        }

        v54 = v38;
        if (v203 <= v38)
        {
          v6 = v212;
        }

        else
        {
          v6 = v212;
          while (1)
          {
            v55 = &v32[v54];
            if (*v55 == 194 && *(v55 + 1) == 167)
            {
              break;
            }

            if (v203 <= ++v54)
            {
              v38 = v54;
              v54 = v54;
              goto LABEL_74;
            }
          }

          v38 = v54;
        }

LABEL_74:
        if (v203 == v54 || (v38 = 3 * v35 + v38 - 1, v38 > v203))
        {
          v26 = 0;
          a4 = v216;
          a5 = v215;
          goto LABEL_15;
        }
      }

LABEL_76:
      v211 = v38 - v33;
      v213 = v51;
      v56 = v51 + v33;
      if (v203 > (v51 + v33))
      {
        while (1)
        {
          v57 = v32[v56];
          if (memchr(" \t\r\n", v57, 5uLL))
          {
            break;
          }

          v58 = strchr(*(*(*a1 + 8) + 192), v57);
          ++v56;
          if (v58)
          {
            v59 = v203 > v56;
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

            v53 = 0;
            a4 = v216;
            goto LABEL_99;
          }
        }
      }

      a4 = v216;
      if (v216 && (v60 = *v216) != 0)
      {
        v61 = 0;
        v62 = v218 + v211;
        v63 = *v220;
        v64 = *v220;
        while (1)
        {
          v65 = *v64;
          v64 += 8;
          if (v65 == 34 && (!hlp_GetRangeForSETPHON(v32, v63, v60, v61, &v224, &v223, &v224 + 1, &v222 + 1, &v222) || v223 && (HIDWORD(v222) < v218 && v222 >= v218 || HIDWORD(v222) < v62 && v62 <= v222)))
          {
            break;
          }

          if (v60 == ++v61)
          {
            v53 = 1;
            goto LABEL_97;
          }
        }

        v53 = 0;
LABEL_97:
        v6 = v212;
        a4 = v216;
LABEL_98:
        v11 = v210;
      }

      else
      {
        v53 = 1;
      }

LABEL_99:
      if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
      {
        v71 = *(v215 + 8) + v204;
        log_OutTraceTuningData(*(v6 + 32), 220, "%s%d %s%d %s%s", v66, v67, v68, v69, v70, "IDXBEG");
        if (!v53)
        {
          goto LABEL_231;
        }

        v77 = v220;
        v78 = a1;
        v79 = *(a1 + 28);
        if (v79)
        {
LABEL_106:
          v208 = 0;
          if (!a4)
          {
            goto LABEL_116;
          }

          goto LABEL_107;
        }

        if (*(a1 + 32))
        {
          break;
        }

        log_OutTraceTuningData(*(v6 + 32), 221, "%s%s %s%s", v72, v73, v74, v75, v76, "RES");
        log_OutTraceTuningData(*(v6 + 32), 222, "%s%s %s%s", v80, v81, v82, v83, v84, "RES");
        v78 = a1;
      }

      else
      {
        v78 = a1;
        if (!v53)
        {
          goto LABEL_231;
        }
      }

      v79 = v78[7];
      v77 = v220;
      if (v79)
      {
        goto LABEL_106;
      }

      if (v78[8])
      {
        break;
      }

LABEL_213:
      if (v78[2] != 2 || !a4 || !*a4)
      {
        goto LABEL_248;
      }

      v141 = 0;
      v142 = 1;
      while (1)
      {
        v143 = *(*v77 + v141);
        v144 = (v143 - 16) < 4 || v143 == 24;
        if (v144 && v78[2] == 2)
        {
          v145 = *(*v77 + v141 + 12);
          if (v145 > v217 + v33 && v145 < v217 + v38)
          {
            break;
          }
        }

        v152 = 1;
        v141 += 32;
        v122 = v142++ >= *a4;
        if (v122)
        {
          goto LABEL_230;
        }
      }

      v198 = *(a1 + 16);
      log_OutText(*(v6 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC pitch, volume or rate", v68, v69, v70, *(*(*a1 + 8) + 168));
      log_OutTraceTuningData(*(v6 + 32), 223, "%s%s %s%s", v147, v148, v149, v150, v151, "RES");
      v152 = 0;
LABEL_230:
      v11 = v210;
      if (v152)
      {
LABEL_248:
        if (log_GetLogLevel(*(v6 + 32)) >= 5)
        {
          __dst[0] = 0;
          v225[0] = 0;
          hlp_ContextToString(1, *(a1 + 28), *(a1 + 24), v207, &v229, v214, __dst);
          hlp_ContextToString(1, *(a1 + 32), *(a1 + 25), __s, &v227, v30, v225);
          v199 = *(a1 + 16);
          log_OutText(*(v6 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s], begPos %ld, endPos %ld, begCtxt %s, endCtxt %s", v164, v165, v166, *(*(*a1 + 8) + 168));
        }

        hlp_RemoveSetPhonInRange(v11, v220, a4, v33, (v38 - v33));
        v167 = v218;
        if (!a4)
        {
          v171 = 0;
          a5 = v215;
          goto LABEL_272;
        }

        v168 = *a4;
        v169 = v218 - v204;
        v170 = *v220;
        a5 = v215;
        if (*a4)
        {
          v171 = 0;
          while (*(v170 + 32 * v171 + 12) <= v169 + *(v215 + 4))
          {
            if (v168 <= ++v171)
            {
              goto LABEL_255;
            }
          }
        }

        else
        {
LABEL_255:
          v171 = *a4;
        }

        v172 = heap_Realloc(*(v6 + 8), v170, 32 * v168 + 32);
        if (!v172)
        {
          goto LABEL_285;
        }

        v177 = v220;
        *v220 = v172;
        v178 = *a4;
        if (v178 > v171)
        {
          memmove((v172 + 32 * v171 + 32), (v172 + 32 * v171), 32 * (v178 - v171));
          v177 = v220;
          LOWORD(v178) = *a4;
          v172 = *v220;
        }

        *a4 = v178 + 1;
        v179 = (v172 + 32 * v171);
        *v179 = 0u;
        v179[1] = 0u;
        v180 = (*v177 + 32 * v171);
        *v180 = 40;
        if (v171)
        {
          v180[1] = *(v180 - 7);
        }

        v180[3] = v169 + *(v215 + 4);
        v180[4] = v211;
        v181 = strlen(*(*(*a1 + 8) + 168));
        v182 = strlen(*(a1 + 16));
        *(*v220 + 32 * v171 + 24) = heap_Alloc(*(v6 + 8), (v181 + v182 + 3));
        v183 = *v220 + 32 * v171;
        v185 = *(v183 + 24);
        v184 = (v183 + 24);
        if (!v185)
        {
          goto LABEL_285;
        }

        if (vector_Add(*(**a1 + 88), v184))
        {
          strcpy(*(*v220 + 32 * v171 + 24), *(*(*a1 + 8) + 168));
          strcat(*(*v220 + 32 * v171 + 24), "::");
          strcat(*(*v220 + 32 * v171 + 24), *(a1 + 16));
          v167 = v218;
LABEL_272:
          v188 = v167 + v211;
          v189 = strlen(*v11);
          memmove((*v11 + v33), (*v11 + v188), v189 - (v33 + v211) + 1);
          *v202 -= v211;
          if (a4)
          {
            v190 = *a4;
            if (v190 > (v171 + 1))
            {
              v191 = *(*v220 + 32 * v171 + 12);
              v192 = (*v220 + 32 * (v171 + 1) + 12);
              v193 = (v171 + 1) + 1;
              do
              {
                v194 = *v192 - v211;
                if (v211 > (*v192 - v191))
                {
                  v194 = v191;
                }

                *v192 = v194;
                v192 += 8;
                v52 = v190 == v193++;
              }

              while (!v52);
            }
          }

          for (i = *(a5 + 16); i; i = *(i + 16))
          {
            *(i + 4) -= v211;
          }

          v196 = CILE_New(*(v6 + 8), 1, v167 - v204 + *(a5 + 4), v204 - v188 + *(a5 + 8));
          if (v196)
          {
            *(v196 + 2) = *(a5 + 16);
            *(a5 + 8) = v167 - v204;
            if (v167 == v204)
            {
              *a5 = 0;
            }

            v26 = 0;
            *(a5 + 16) = v196;
            goto LABEL_15;
          }

LABEL_285:
          v26 = 2296389642;
        }

        else
        {
          v26 = 2296389642;
          heap_Free(*(v6 + 8), *(*v220 + 32 * v171 + 24));
          *(*v220 + 32 * v171 + 24) = 0;
        }

        log_OutPublic(*(v6 + 32), "DOMAIN_MNGR", 47000, 0, v173, v174, v175, v176, v197);
        goto LABEL_15;
      }

LABEL_231:
      v32 = *v11;
      v153 = *(*v11 + v33);
      if (*(*v11 + v33))
      {
        a5 = v215;
        while (!memchr(" \t\r\n", v153, 5uLL))
        {
          v33 = (v33 + 1);
          v153 = v32[v33];
          if (!v32[v33])
          {
            goto LABEL_242;
          }
        }

        v154 = v33;
        while (memchr(" \t\r\n", v153, 5uLL))
        {
          v154 = (v154 + 1);
          v153 = v32[v154];
          v33 = v154;
          if (!v32[v154])
          {
            goto LABEL_242;
          }
        }

        v33 = v154;
      }

      else
      {
        a5 = v215;
      }

LABEL_242:
      v218 = v33;
      v27 = v219;
      if ((*(a5 + 8) + v209) < (v33 + v219))
      {
        goto LABEL_14;
      }
    }

    v79 = 0;
    v208 = 1;
    if (!a4)
    {
LABEL_116:
      v88 = *v11;
      goto LABEL_130;
    }

LABEL_107:
    v85 = *a4;
    if (*a4)
    {
      v86 = 0;
      v87 = *v77;
      while (*v87 != 40 || v87[3] < v217 + v38)
      {
        ++v86;
        v87 += 8;
        if (v85 == v86)
        {
          v88 = *v11;
          goto LABEL_120;
        }
      }

      LODWORD(v86) = v86;
    }

    else
    {
      LODWORD(v86) = 0;
    }

    v88 = *v11;
    if (v86 == v85)
    {
LABEL_120:
      v89 = strlen(v88);
      v90 = v38;
      if (v89 > v38)
      {
        v91 = v38;
        do
        {
          v92 = v88[v90];
          if (!memchr(" \t\r\n", v92, 5uLL))
          {
            v93 = strlen(*(*(*a1 + 8) + 192));
            if (!v93)
            {
              break;
            }

            v94 = 0;
            v95 = 0;
            while (*(*(*(*a1 + 8) + 192) + v94) != v92)
            {
              v94 = ++v95;
              if (v93 <= v95)
              {
                goto LABEL_129;
              }
            }
          }

          v90 = ++v91;
        }

        while (v89 > v91);
      }

LABEL_129:
      v96 = v89 != v90;
      v11 = v210;
      v78 = a1;
    }

    else
    {
LABEL_130:
      v96 = 1;
    }

    v97 = *(*v78 + 8);
    v98 = *(v97 + 192);
    __sa = *(v97 + 184);
    v99 = v33;
    do
    {
      if (!v99)
      {
        goto LABEL_140;
      }

      v100 = v99 - 1;
      v101 = memchr(" \t\r\n", v88[v99 - 1], 5uLL);
      v99 = v100;
    }

    while (v101);
    if ((v100 & 0x8000) != 0 || (v102 = v88[v100 & 0xFFFF7FFF], (v103 = strlen(v98)) == 0))
    {
LABEL_140:
      v214 = 0;
      v106 = v213;
      goto LABEL_141;
    }

    v104 = 0;
    v105 = 0;
    v106 = v213;
    while (v98[v104] != v102)
    {
      v104 = ++v105;
      if (v103 <= v105)
      {
        v214 = 0;
        goto LABEL_141;
      }
    }

    v214 = v102;
LABEL_141:
    v107 = v106 + v33;
    if (v107 << 16 >= (strlen(v88) << 16))
    {
      goto LABEL_152;
    }

    v30 = v88[v107];
    if (v30)
    {
      v108 = &v88[v107 + 1];
      do
      {
        if (!memchr(" \t\r\n", v30, 5uLL))
        {
          break;
        }

        v109 = *v108++;
        v30 = v109;
      }

      while (v109);
    }

    v110 = strlen(v98);
    if (v110)
    {
      v111 = 0;
      v112 = 0;
      a4 = v216;
      while (v98[v111] != v30)
      {
        v111 = ++v112;
        if (v110 <= v112)
        {
          v30 = 0;
          break;
        }
      }

      v113 = a1;
    }

    else
    {
LABEL_152:
      v30 = 0;
      a4 = v216;
      v113 = a1;
    }

    v6 = v212;
    if (v33)
    {
      if (!v214)
      {
        v229 = 0x600000004;
        v114 = 2;
        goto LABEL_163;
      }

      if (strchr(__sa, v214))
      {
        v229 = 0x300000002;
        v114 = 3;
        v115 = v230;
      }

      else
      {
        LODWORD(v229) = 4;
        v114 = 2;
        v115 = &v229 + 1;
      }

      v113 = a1;
      *v115 = 6;
    }

    else
    {
      v229 = 0x300000001;
      v114 = 2;
      if (!v214)
      {
LABEL_163:
        *(&v230[-1] + v114) = 0;
        if (v96)
        {
          if (!v30)
          {
            v227 = 0x600000004;
            v116 = 2;
            goto LABEL_173;
          }

          if (strchr(__sa, v30))
          {
            v227 = 0x300000002;
            v116 = 3;
            v117 = &v228;
          }

          else
          {
            LODWORD(v227) = 4;
            v116 = 2;
            v117 = (&v227 + 4);
          }

          v113 = a1;
          *v117 = 6;
        }

        else
        {
          v227 = 0x300000001;
          v116 = 2;
          if (!v30)
          {
LABEL_173:
            *(&v227 + v116) = 0;
            if (v208)
            {
              v118 = 1;
            }

            else
            {
              v119 = 0;
              while (1)
              {
                v120 = *(&v230[-1] + v119);
                if (v120 == v79 && v79 == 5)
                {
                  break;
                }

                v122 = v120 == v79 || v119++ >= v114;
                if (v122)
                {
                  v123 = v120 == v79;
                  goto LABEL_187;
                }
              }

              v123 = *(v113 + 24) == v214;
LABEL_187:
              v118 = v123;
            }

            v207 = v114 + 1;
            if (log_HasTraceTuningDataSubscriber(*(v212 + 32)))
            {
              __dst[0] = 0;
              hlp_ContextToString(v118, *(a1 + 28), *(a1 + 24), v207, &v229, v214, __dst);
              log_OutTraceTuningData(*(v212 + 32), 221, "%s%s %s%s", v124, v125, v126, v127, v128, "RES");
            }

            __s = v116 + 1;
            if (!v118)
            {
              goto LABEL_231;
            }

            v129 = *(a1 + 32);
            if (v129)
            {
              v130 = 0;
              while (1)
              {
                v131 = *(&v227 + v130);
                if (v131 == v129 && v129 == 5)
                {
                  break;
                }

                if (v131 == v129 || v130++ >= v116)
                {
                  v134 = v131 == v129;
                  goto LABEL_207;
                }
              }

              v134 = *(a1 + 25) == v30;
LABEL_207:
              v135 = v134;
            }

            else
            {
              v135 = 1;
            }

            if (log_HasTraceTuningDataSubscriber(*(v212 + 32)))
            {
              __dst[0] = 0;
              hlp_ContextToString(v135, *(a1 + 32), *(a1 + 25), __s, &v227, v30, __dst);
              log_OutTraceTuningData(*(v212 + 32), 222, "%s%s %s%s", v136, v137, v138, v139, v140, "RES");
            }

            v77 = v220;
            v78 = a1;
            if (!v135)
            {
              goto LABEL_231;
            }

            goto LABEL_213;
          }
        }

        *(&v227 + v116++) = 5;
        goto LABEL_173;
      }
    }

    *(&v230[-1] + v114++) = 5;
    goto LABEL_163;
  }

LABEL_14:
  v26 = 0;
LABEL_15:
  if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
  {
    do
    {
      if (!a5)
      {
        log_OutTraceTuningDataBinary(*(v6 + 32), 219, "", "text/plain;charset=utf-8", *v11, 0);
        if (!a4)
        {
          goto LABEL_268;
        }

        goto LABEL_266;
      }

      v28 = a5;
      a5 = *(a5 + 16);
    }

    while (a5);
    if (!a4)
    {
      v160 = *(v6 + 32);
      v161 = *v11;
      v162 = "text/plain;charset=utf-8";
      v163 = 0;
      goto LABEL_267;
    }

    if (*a4)
    {
      v29 = (*(v28 + 8) + *(v28 + 4) - *(*v220 + 12));
    }

    else
    {
      v29 = 0;
    }

    log_OutTraceTuningDataBinary(*(v6 + 32), 219, "", "text/plain;charset=utf-8", *v11, v29);
LABEL_266:
    v160 = *(v6 + 32);
    v161 = *v220;
    v163 = 32 * *a4;
    v162 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_267:
    log_OutTraceTuningDataBinary(v160, 219, "", v162, v161, v163);
LABEL_268:
    log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%u", v155, v156, v157, v158, v159, "END");
  }

LABEL_269:
  v186 = *MEMORY[0x1E69E9840];
  return v26;
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

  v16 = 1;
  if (*v14)
  {
    v38 = v13;
    *a5 = 1;
    if (strlen(v14) - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      LOWORD(v16) = 1;
      v19 = 1;
      v20 = 1;
      do
      {
        v21 = v14[v19];
        if (v21 == 95 || v21 == 35)
        {
          LOWORD(v16) = v16 + 1;
          *a5 = v16;
        }

        v19 = ++v20;
      }

      while (strlen(v14) - 1 > v20);
    }

    LOWORD(v22) = v10 + 1;
    if (a3 <= (v10 + 1))
    {
      v28 = 0;
      v24 = a7;
      v25 = a9;
    }

    else
    {
      v22 = (v10 + 1);
      v23 = &a2[8 * v22];
      v24 = a7;
      v25 = a9;
      while (1)
      {
        if (*v23 == 34 || *v23 == 21)
        {
          v27 = v23[3];
          if (v11[3] != v27)
          {
            break;
          }
        }

        LOWORD(v22) = v22 + 1;
        v23 += 8;
        if (a3 == v22)
        {
          goto LABEL_25;
        }
      }

      v28 = v27 - v38;
    }

    if (a3 == v22)
    {
LABEL_25:
      v28 = strlen(a1);
    }

    v29 = v28 - 1;
    *v25 = v28 - 1;
    v30 = *a8;
    if (v28 - 1 > *a8)
    {
      v31 = a6;
      while (1)
      {
        if (memchr(" \t\r\n", a1[v29], 5uLL))
        {
          v32 = -1;
        }

        else
        {
          if (v29 < 3)
          {
            goto LABEL_37;
          }

          v33 = &a1[v29 - 1];
          if (*v33 != 194 || *(v33 + 1) != 167)
          {
            goto LABEL_37;
          }

          v32 = -2;
        }

        v29 += v32;
        *v25 = v29;
        v30 = *a8;
        if (v29 <= *a8)
        {
          goto LABEL_37;
        }
      }
    }

    v31 = a6;
LABEL_37:
    if (v29 > v30)
    {
      while (!memchr(" \t\r\n", a1[v29], 5uLL))
      {
        *v25 = --v29;
        v30 = *a8;
        if (v29 <= *a8)
        {
          goto LABEL_42;
        }
      }

      *v25 = v29 + 1;
      v30 = *a8;
    }

LABEL_42:
    if (v30 < v28)
    {
      v34 = &a1[v30 + 1];
      v35 = v28 - v30;
      do
      {
        if (*(v34 - 1) == 194 && *v34 == 167)
        {
          ++*v24;
        }

        ++v34;
        --v35;
      }

      while (v35);
      LOWORD(v16) = *a5;
    }

    v36 = *v24;
    if (v36 > v16)
    {
      return 0;
    }

    *v31 = v16 - v36;
    return 1;
  }

  return v16;
}

size_t hlp_ContextToString(int a1, int a2, char a3, unsigned int a4, uint64_t a5, char a6, char *__dst)
{
  if (a2 == 5)
  {
    *__dst = 91;
    __dst[1] = a3;
    *(__dst + 1) = 93;
  }

  else
  {
    strcpy(__dst, AP_BOUNDARYCND_STR_0[a2]);
  }

  if (a1 == 1)
  {
    v12 = " matches (";
  }

  else
  {
    v12 = " does not match (";
  }

  strcat(__dst, v12);
  if (a4)
  {
    v13 = 0;
    v14 = 4 * a4;
    do
    {
      if (v13)
      {
        *&__dst[strlen(__dst)] = 32;
      }

      v15 = *(a5 + v13);
      if (v15 == 5)
      {
        v16 = strlen(__dst);
        __dst[v16] = 91;
        __dst[v16 + 1] = a6;
        __dst[v16 + 2] = 93;
        __dst[v16 + 3] = 0;
      }

      else
      {
        strcat(__dst, AP_BOUNDARYCND_STR_0[v15]);
      }

      v13 += 4;
    }

    while (v14 != v13);
  }

  result = strlen(__dst);
  *&__dst[result] = 41;
  return result;
}

uint64_t activeprompt_Consult(uint64_t **a1, uint64_t a2, const char **a3, uint64_t *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 *a9, int a10)
{
  v329 = *MEMORY[0x1E69E9840];
  v16 = **a1;
  v17 = *(v16 + 16);
  v318 = 0;
  v309 = *(v16 + 56);
  v316 = 0;
  v315 = 0;
  v314 = 0;
  v313 = 0;
  v287 = strlen(*a3);
  v18 = *(*a4 + 12);
  v301 = a6;
  v19 = (*(a6 + 4) - v18);
  v312 = a1;
  v20 = a1[6];
  v21 = strstr(v20, "%Ä");
  v289 = v21;
  if (v21)
  {
    v307 = v21 - v20;
  }

  else
  {
    v307 = strlen(v20);
  }

  v27 = v19;
  v292 = a7;
  v297 = v19;
  if (log_HasTraceTuningDataSubscriber(*(v17 + 32)))
  {
    v274 = v312[2];
    v276 = (*(v301 + 4) - v18 + *(v301 + 8));
    log_OutTraceTuningData(*(v17 + 32), 277, "%s%s %s%s %s%d %s%d", v22, v23, v24, v25, v26, "BEG");
    v28 = strlen(*a3);
    log_OutTraceTuningDataBinary(*(v17 + 32), 278, "", "text/plain;charset=depes", *a3, v28);
    v27 = v19;
    log_OutTraceTuningDataBinary(*(v17 + 32), 278, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
  }

  v310 = v18;
  v311 = a4;
  v29 = 0;
  v322 = 0;
  v321 = 0;
  v320 = 0;
  __s = 0;
  v317 = 0;
  v30 = v307;
  v31 = v312;
  if (*(v301 + 8) + v27 < (v19 + v307))
  {
    goto LABEL_376;
  }

  v29 = 0;
  v293 = 0;
  v283 = 0;
  v284 = 0;
  v285 = 0;
  v294 = 0;
  v296 = 0;
  v290 = 0;
  v295 = 0;
  v32 = v287;
  v33 = *a3;
  v306 = a5;
  v288 = v17;
  v308 = a8;
  while (2)
  {
    if (!v33[v19])
    {
      goto LABEL_376;
    }

    v303 = v27;
    v34 = v19;
    if (v32 <= v19)
    {
      v47 = 0;
      v35 = 0;
      v41 = 1;
      v38 = v19;
      goto LABEL_43;
    }

    v35 = 0;
    v36 = 0;
    v37 = v33 - 1;
    v38 = v19;
    while (1)
    {
      if (v35)
      {
        v39 = v34 + 1;
        if (v39 < v32 && v33[v38] == 32)
        {
          v40 = &v33[v39];
          if (*v40 == 194 && *(v40 + 1) == 167)
          {
            v38 += 2;
            --v35;
            v41 = 1;
            goto LABEL_35;
          }
        }
      }

      v42 = *a5;
      if (!v38 || (v43 = v37[v38], !v37[v38]) || v43 == 95 || v43 == 32)
      {
        if (*a5)
        {
          v44 = 0;
          v45 = *v311;
          while (*v45 != 34 || v45[3] != v34 + v310)
          {
            ++v44;
            v45 += 8;
            if (v42 == v44)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
          LOWORD(v44) = 0;
        }

        if (v42 > v44)
        {
          break;
        }
      }

LABEL_33:
      if (v36 >= v30)
      {
        v41 = 1;
        goto LABEL_42;
      }

      v41 = *(v312[6] + v36++) == v33[v38];
LABEL_35:
      v34 = ++v38;
      v46 = v41 && v32 > v38;
      if (!v46)
      {
        goto LABEL_42;
      }
    }

    if (hlp_GetRangeForSETPHON(v33, *v311, v42, v44, &v315 + 1, &v315, &v316, &v314, &v313))
    {
      if (v315)
      {
        v35 = v316;
      }

      v30 = v307;
      v32 = v287;
      goto LABEL_33;
    }

    v41 = 0;
    v32 = v287;
LABEL_42:
    v47 = v36;
    v31 = v312;
LABEL_43:
    v48 = 0;
    v298 = v38 - v19;
    v49 = v307 > v47 && v32 == v34;
    if (v49 || !v41)
    {
      v291 = v38 - v19;
      goto LABEL_114;
    }

    v50 = v38 - v19;
    v51 = v38;
    if (v313 < v34)
    {
      v50 = v38 - v19;
      v51 = v38;
      if (v35)
      {
        v52 = v38;
        if (v32 <= v38)
        {
          v54 = v38;
        }

        else
        {
          while (1)
          {
            v53 = &v33[v52];
            if (*v53 == 194 && *(v53 + 1) == 167)
            {
              break;
            }

            if (v32 <= ++v52)
            {
              v54 = v52;
              v52 = v52;
              goto LABEL_59;
            }
          }

          v54 = v52;
        }

LABEL_59:
        if (v32 == v52)
        {
          goto LABEL_376;
        }

        v51 = 3 * v35 + v54 - 1;
        if ((3 * v35 + v54 - 1) > v287)
        {
          goto LABEL_376;
        }

        v50 = v51 - v19;
      }
    }

    v278 = v51;
    v291 = v50;
    v55 = *a5;
    if (*a5)
    {
      v56 = 0;
      v57 = v303 + v50;
      v58 = *v311;
      v59 = *v311;
      while (1)
      {
        v60 = *v59;
        v59 += 8;
        if (v60 == 34 && (!hlp_GetRangeForSETPHON(v33, v58, v55, v56, &v315 + 1, &v315, &v316, &v314, &v313) || v315 && (v314 < v303 && v313 >= v303 || v314 < v57 && v57 <= v313)))
        {
          break;
        }

        if (v55 == ++v56)
        {
          goto LABEL_72;
        }
      }

      v48 = 0;
      v285 = v38 - v19;
      a5 = v306;
LABEL_113:
      v31 = v312;
LABEL_114:
      v61 = v308;
      goto LABEL_145;
    }

LABEL_72:
    v31 = v312;
    v61 = v308;
    if (!v289)
    {
LABEL_118:
      v81 = strlen(v33);
      while (v81 > v38)
      {
        v82 = v33[v38];
        v48 = 1;
        if (!v33[v38] || v82 == 32 || v82 == 95)
        {
          goto LABEL_126;
        }

        LOWORD(v38) = v38 + 1;
        if (!strchr(*((*v31)[1] + 192), v82))
        {
          v48 = 0;
          goto LABEL_126;
        }
      }

      v48 = 1;
LABEL_126:
      if (a10)
      {
        a5 = v306;
        if (!v19)
        {
          if (strlen(v33) <= v278)
          {
            v293 = 0;
          }

          else
          {
            v293 = 0;
            if (v33[v278] == 95)
            {
              v48 = 0;
            }
          }

          v285 = v298;
          v284 = v278;
          goto LABEL_144;
        }

        if (strlen(v33) == v278 && v33[v19 - 1] == 95)
        {
          v48 = 0;
          v285 = v298;
          v284 = v278;
          v293 = v19;
          goto LABEL_145;
        }

        if (strlen(v33) <= v278)
        {
          v285 = v298;
          v83 = v278;
          goto LABEL_141;
        }

        if (v33[v19 - 1] == 95 || v33[v278] == 95)
        {
          v48 = 0;
        }
      }

      v285 = v298;
      v83 = v278;
LABEL_141:
      v284 = v83;
      v293 = v19;
LABEL_144:
      a5 = v306;
      goto LABEL_145;
    }

    v62 = v292;
    v63 = (*(v309 + 104))(v292, v308, 1, 0, &v317);
    if ((v63 & 0x80000000) != 0)
    {
      v29 = v63;
      goto LABEL_381;
    }

    v29 = (*(v309 + 104))(v292, v308, 2, v317, &v322);
    if ((v29 & 0x80000000) != 0)
    {
LABEL_381:
      a5 = v306;
      goto LABEL_376;
    }

    v64 = strstr(v312[6], "§");
    a5 = v306;
    if (!v64)
    {
      goto LABEL_117;
    }

    v65 = v64;
    v66 = v289 + 3;
    do
    {
      while (2)
      {
        if (v322)
        {
          v67 = (*(v309 + 168))(v62, v61, v322, 1, 1, &v318 + 2, &v320);
          if ((v67 & 0x80000000) != 0 || (v67 = (*(v309 + 168))(v62, v61, v322, 0, 1, &v321, &v320), (v67 & 0x80000000) != 0))
          {
LABEL_374:
            v29 = v67;
LABEL_375:
            v17 = v288;
            goto LABEL_376;
          }

          if (v321 != 5 || (v68 = (v19 + v65 - *(v31 + 12)), HIWORD(v318) != (v19 + v65 - *(v31 + 24))))
          {
            v29 = (*(v309 + 120))(v62, v61, v322, &v322);
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_375;
            }

            continue;
          }

          v29 = (*(v309 + 176))(v62, v61, v322, 3, &__s, &v320);
          v17 = v288;
          if ((v29 & 0x80000000) != 0)
          {
            goto LABEL_376;
          }

          v80 = strlen(__s);
          v286 = !strncmp(v66, __s, v80) && (!v66[v80] || !strcmp(&v66[v80], "%Ä"));
          v62 = v292;
        }

        else
        {
          v286 = 1;
          v17 = v288;
        }

        break;
      }

      LOBYTE(v69) = *v66;
      v282 = v322;
      if (*v66)
      {
        v70 = 1;
        do
        {
          v71 = strcmp(v66, "%Ä");
          v72 = v71 == 0;
          if (!v71)
          {
            break;
          }

          v66 += utf8_determineUTF8CharLength(v69);
          v69 = *v66;
          if (v69 == 95 || v69 == 35)
          {
            v73 = *(v66 - 1) - 32;
            v46 = v73 > 0x3F;
            v74 = (1 << v73) & 0x8000000000000009;
            if (v46 || v74 == 0)
            {
              ++v70;
            }
          }
        }

        while (*v66);
        v76 = v70;
        v62 = v292;
      }

      else
      {
        v72 = 0;
        v76 = 1;
      }

      v77 = strstr(&v65[3 * v76 - 1], "§");
      v65 = v77;
      if (!v72 && v77)
      {
        v48 = 0;
        v285 = v38 - v19;
        goto LABEL_113;
      }

      v78 = utf8_determineUTF8CharLength(v69);
      v79 = v286;
      if (!v282)
      {
        v79 = 0;
      }

      v31 = v312;
      v61 = v308;
      if (!v65)
      {
        break;
      }

      v66 += v78;
    }

    while (v79);
    if (v79)
    {
LABEL_117:
      v33 = *a3;
      goto LABEL_118;
    }

    v48 = 0;
    v285 = v38 - v19;
LABEL_145:
    if (log_HasTraceTuningDataSubscriber(*(v17 + 32)))
    {
      v89 = *(v17 + 32);
      v90 = (*(v301 + 8) + v297);
      if (v48)
      {
        log_OutTraceTuningData(v89, 280, "%s%d %s%d %s%s", v84, v85, v86, v87, v88, "IDXBEG");
        v96 = *(v31 + 7);
        if (!v96)
        {
          if (!*(v31 + 8))
          {
            log_OutTraceTuningData(*(v17 + 32), 281, "%s%s %s%s", v91, v92, v93, v94, v95, "RES");
            log_OutTraceTuningData(*(v17 + 32), 282, "%s%s %s%s", v97, v98, v99, v100, v101, "RES");
            goto LABEL_151;
          }

LABEL_153:
          v96 = 0;
        }

        goto LABEL_154;
      }

      v275 = (*(v301 + 8) + v297);
      log_OutTraceTuningData(v89, 280, "%s%d %s%d %s%s", v84, v85, v86, v87, v88, "IDXBEG");
LABEL_360:
      v30 = v307;
      v32 = v287;
      v33 = *a3;
      v210 = (*a3)[v19];
      if ((*a3)[v19])
      {
        while (v210 != 95 && v210 != 32)
        {
          v19 = (v19 + 1);
          v210 = v33[v19];
          v211 = v19;
          if (!v33[v19])
          {
            goto LABEL_371;
          }
        }

        v211 = v19;
        do
        {
          if (v210 != 95 && v210 != 32)
          {
            break;
          }

          v211 = (v211 + 1);
          v210 = v33[v211];
        }

        while (v33[v211]);
      }

      else
      {
        v211 = v19;
      }

LABEL_371:
      v27 = v211;
      v19 = v211;
      if (*(v301 + 8) + v297 < (v211 + v307))
      {
        goto LABEL_376;
      }

      continue;
    }

    break;
  }

  if (!v48)
  {
    goto LABEL_360;
  }

LABEL_151:
  v96 = *(v31 + 7);
  if (!v96)
  {
    if (!*(v31 + 8))
    {
      v131 = v292;
      goto LABEL_320;
    }

    goto LABEL_153;
  }

LABEL_154:
  v102 = *a3;
  v103 = strlen(*a3);
  v104 = v103;
  v105 = v284;
  v106 = v284;
  for (i = v293; v103 > v105; v106 = ++v105)
  {
    v108 = v102[v106];
    if (!v102[v106])
    {
      break;
    }

    if (v108 == 95)
    {
      break;
    }

    if (v108 == 32)
    {
      break;
    }
  }

  v109 = (*v312)[1];
  v110 = *(v109 + 192);
  v299 = *(v109 + 184);
  if (!v293)
  {
    goto LABEL_165;
  }

  v111 = v293 - 1;
  while (1)
  {
    v112 = v102[v111];
    if (v102[v111])
    {
      if (v112 != 95 && v112 != 32)
      {
        break;
      }
    }

    if (--v111 == -1)
    {
      goto LABEL_165;
    }
  }

  if ((v111 & 0x8000) != 0)
  {
LABEL_165:
    v295 = 0;
  }

  else
  {
    v145 = v102[v111 & 0xFFFF7FFF];
    if (strchr(v110, v145))
    {
      v146 = v145;
    }

    else
    {
      v146 = 0;
    }

    v295 = v146;
    i = v293;
  }

  v304 = i;
  v113 = i + v285;
  if ((v113 << 16) >= (strlen(v102) << 16))
  {
    v290 = 0;
  }

  else
  {
    v114 = &v102[v113];
    do
    {
      do
      {
        v116 = *v114++;
        v115 = v116;
      }

      while (!v116);
    }

    while (v115 == 32 || v115 == 95);
    v117 = v115;
    if (strchr(v110, v115))
    {
      v118 = v117;
    }

    else
    {
      v118 = 0;
    }

    v290 = v118;
  }

  a5 = v306;
  if (v293)
  {
    if (v295 && strchr(v299, v295))
    {
      v327 = 0x300000002;
      v328 = 6;
      v119 = 3;
      goto LABEL_183;
    }

    v327 = 0x700000004;
    v328 = 6;
    v119 = 3;
  }

  else
  {
    v327 = 0x300000001;
    v119 = 2;
  }

  if (v295)
  {
LABEL_183:
    *(&v327 + v119++) = 5;
  }

  *(&v327 + v119) = 0;
  if (v104 == v106)
  {
    v325 = 0x300000001;
    v120 = 2;
    v121 = v290;
    goto LABEL_191;
  }

  v121 = v290;
  if (v290 && strchr(v299, v290))
  {
    v325 = 0x300000002;
    v326 = 6;
    v120 = 3;
    goto LABEL_192;
  }

  v325 = 0x700000004;
  v326 = 6;
  v120 = 3;
LABEL_191:
  if (v121)
  {
LABEL_192:
    *(&v325 + v120++) = 5;
  }

  v296 = v119 + 1;
  *(&v325 + v120) = 0;
  v294 = v120 + 1;
  if (*v306)
  {
    v122 = 0;
    v123 = 0;
    v124 = (v293 + v291);
    v125 = *v311;
    do
    {
      if (*(v125 + v122) == 50)
      {
        v126 = *(v125 + v122 + 24);
        if (v126)
        {
          if (*v126)
          {
            strncpy(*(v125 + v122 + 24), *(v125 + v122 + 24), 8uLL);
            v125 = *v311;
            v127 = *(*v311 + v122 + 12) - v310;
            if (v127 == v304)
            {
              if (!strcmp(v126, "medial"))
              {
                v327 = 0x700000004;
                v128 = 2;
              }

              else
              {
                v128 = 0;
              }

              if (!strcmp(v126, "phrase-break"))
              {
                *(&v327 + 4 * v128) = 0x300000002;
                v128 += 2;
              }

              if (!strcmp(v126, "sentence-break"))
              {
                *(&v327 + 4 * v128) = 0x300000001;
                v128 += 2;
              }

              *(&v327 + v128) = 0;
              v296 = v128 + 1;
              a5 = v306;
            }

            if (v127 == v124 || v127 - 1 == v124)
            {
              if (!strcmp(v126, "medial"))
              {
                v325 = 0x700000004;
                v130 = 2;
              }

              else
              {
                v130 = 0;
              }

              if (!strcmp(v126, "phrase-break"))
              {
                *(&v325 + 4 * v130) = 0x300000002;
                v130 += 2;
              }

              if (!strcmp(v126, "sentence-break"))
              {
                *(&v325 + 4 * v130) = 0x300000001;
                v130 += 2;
              }

              *(&v325 + v130) = 0;
              v294 = v130 + 1;
              a5 = v306;
            }
          }
        }
      }

      ++v123;
      v122 += 32;
    }

    while (v123 < *a5);
    v31 = v312;
    v96 = *(v312 + 7);
  }

  else
  {
    v31 = v312;
  }

  v131 = v292;
  v132 = v308;
  if (!v96)
  {
LABEL_266:
    LODWORD(v136) = 1;
    goto LABEL_268;
  }

  if (!v296)
  {
    goto LABEL_267;
  }

  v133 = 0;
  while (2)
  {
    v134 = *(&v327 + v133);
    if (v134 != *(v31 + 7))
    {
      goto LABEL_240;
    }

    if (v134 == 7)
    {
      if (*(*((*v31)[1] + 232) + 8 * *(v31 + 24)))
      {
        v324[0] = 0;
        v67 = (*(v309 + 104))(v131, v132, 1, 0, &v317);
        if ((v67 & 0x80000000) != 0)
        {
          goto LABEL_374;
        }

        for (j = (*(v309 + 104))(v131, v132, 2, v317, &v322); ; j = (*(v309 + 120))(v131, v132, v322, &v322))
        {
          v29 = j;
          if ((j & 0x80000000) != 0)
          {
            goto LABEL_375;
          }

          if (!v322)
          {
            goto LABEL_240;
          }

          v67 = (*(v309 + 168))(v131, v132, v322, 1, 1, &v318 + 2, &v320);
          if ((v67 & 0x80000000) != 0)
          {
            goto LABEL_374;
          }

          v67 = (*(v309 + 168))(v131, v132, v322, 2, 1, &v318, &v320);
          if ((v67 & 0x80000000) != 0)
          {
            goto LABEL_374;
          }

          if (v318 + 1 == v304)
          {
            v67 = (*(v309 + 168))(v131, v132, v322, 0, 1, &v321, &v320);
            if ((v67 & 0x80000000) != 0)
            {
              goto LABEL_374;
            }

            if (v321 <= 0xE && ((1 << v321) & 0x7E10) != 0)
            {
              break;
            }
          }
        }

        v29 = (*(v309 + 176))(v131, v132, v322, 3, v324, &v320);
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_375;
        }

        v137 = strlen(*(*((*v31)[1] + 232) + 8 * *(v31 + 24)));
        v138 = heap_Calloc(*(v288 + 8), (v137 + 1), 1);
        v139 = strcpy(v138, *(*((*v31)[1] + 232) + 8 * *(v31 + 24)));
        v140 = strchr(v139, 32);
        v141 = v138;
        if (v138 | v140)
        {
          v136 = v140;
          v279 = v141;
          v142 = v141;
          if (v140)
          {
LABEL_248:
            *v136 = 0;
          }

          while (1)
          {
            v143 = strlen(v324[0]);
            v144 = v143 - strlen(v142);
            if (v144 >= 0 && !strcmp(v142, &v324[0][v144]))
            {
              break;
            }

            v132 = v308;
            if (!v136)
            {
              v131 = v292;
              goto LABEL_255;
            }

            v142 = v136 + 1;
            v136 = strchr(v136 + 1, 32);
            if (v136)
            {
              goto LABEL_248;
            }
          }

          LODWORD(v136) = 1;
          v131 = v292;
          v132 = v308;
LABEL_255:
          v141 = v279;
        }

        else
        {
          LODWORD(v136) = 0;
        }

        heap_Free(*(v288 + 8), v141);
        if (v136)
        {
          goto LABEL_268;
        }

        goto LABEL_241;
      }

LABEL_240:
      LODWORD(v136) = 0;
LABEL_241:
      if (++v133 >= v296)
      {
        goto LABEL_268;
      }

      continue;
    }

    break;
  }

  if (v134 != 5 || *(v31 + 24) == v295)
  {
    goto LABEL_266;
  }

LABEL_267:
  LODWORD(v136) = 0;
LABEL_268:
  v17 = v288;
  if (log_HasTraceTuningDataSubscriber(*(v288 + 32)))
  {
    LOBYTE(v324[0]) = 0;
    hlp_ContextToString(v136, *(v31 + 7), *(v31 + 24), v296, &v327, v295, v324);
    log_OutTraceTuningData(*(v288 + 32), 281, "%s%s %s%s", v147, v148, v149, v150, v151, "RES");
  }

  if (!v136)
  {
    goto LABEL_360;
  }

  if (!*(v31 + 8))
  {
LABEL_315:
    LODWORD(v158) = 1;
    goto LABEL_317;
  }

  v152 = v309;
  if (!v294)
  {
LABEL_316:
    LODWORD(v158) = 0;
    goto LABEL_317;
  }

  v153 = 0;
  v154 = v294;
  do
  {
    v155 = *(&v325 + v153);
    if (v155 != *(v31 + 8))
    {
LABEL_289:
      LODWORD(v158) = 0;
      goto LABEL_310;
    }

    if (v155 != 7)
    {
      if (v155 != 5 || *(v31 + 25) == v290)
      {
        goto LABEL_315;
      }

      goto LABEL_316;
    }

    if (!*(*((*v31)[1] + 232) + 8 * *(v31 + 25)))
    {
      goto LABEL_289;
    }

    v324[0] = 0;
    v156 = (*(v152 + 104))(v131, v308, 1, 0, &v317);
    if ((v156 & 0x80000000) != 0)
    {
LABEL_379:
      v29 = v156;
      goto LABEL_376;
    }

    v29 = (*(v152 + 104))(v131, v308, 2, v317, &v322);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_376;
    }

    v157 = v322;
    v152 = v309;
    if (!v322)
    {
LABEL_288:
      LODWORD(v158) = 0;
      goto LABEL_309;
    }

    while (1)
    {
      v156 = (*(v152 + 168))(v131, v308, v157, 1, 1, &v318 + 2, &v320);
      if ((v156 & 0x80000000) != 0)
      {
        goto LABEL_379;
      }

      if (HIWORD(v318) - 1 == v284)
      {
        v156 = (*(v152 + 168))(v131, v308, v322, 2, 1, &v318, &v320);
        if ((v156 & 0x80000000) != 0)
        {
          goto LABEL_379;
        }

        v156 = (*(v152 + 168))(v131, v308, v322, 0, 1, &v321, &v320);
        if ((v156 & 0x80000000) != 0)
        {
          goto LABEL_379;
        }

        v152 = v309;
        if (v321 <= 0xE && ((1 << v321) & 0x7E10) != 0)
        {
          break;
        }
      }

      v29 = (*(v152 + 120))(v131, v308, v322, &v322);
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_376;
      }

      v157 = v322;
      if (!v322)
      {
        goto LABEL_288;
      }
    }

    v29 = (*(v309 + 176))(v131, v308, v322, 3, v324, &v320);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_376;
    }

    v159 = strlen(*(*((*v31)[1] + 232) + 8 * *(v31 + 25)));
    v160 = heap_Calloc(*(v288 + 8), (v159 + 1), 1);
    v161 = strcpy(v160, *(*((*v31)[1] + 232) + 8 * *(v31 + 25)));
    v162 = strchr(v161, 32);
    v163 = v160;
    if (!(v160 | v162))
    {
      LODWORD(v158) = 0;
      v152 = v309;
      goto LABEL_308;
    }

    v158 = v162;
    v277 = v160;
    v164 = v160;
    v152 = v309;
    if (!v162)
    {
      goto LABEL_294;
    }

LABEL_293:
    *v158 = 0;
LABEL_294:
    while (1)
    {
      v165 = v324[0];
      v166 = strstr(v324[0], v164);
      if (v166)
      {
        break;
      }

LABEL_303:
      v131 = v292;
      if (!v158)
      {
        goto LABEL_307;
      }

      v164 = v158 + 1;
      v158 = strchr(v158 + 1, 32);
      if (v158)
      {
        goto LABEL_293;
      }
    }

    v167 = v166;
    v168 = strlen(v165);
    v169 = v168 - strlen(v167);
    if (v169 >= 1)
    {
      v152 = v309;
      while (1)
      {
        v170 = *v165++;
        v171 = (1 << v170) & 0x4008400000000;
        if (v170 > 0x32 || v171 == 0)
        {
          goto LABEL_303;
        }

        if (!--v169)
        {
          LODWORD(v158) = 1;
          v131 = v292;
          goto LABEL_307;
        }
      }
    }

    LODWORD(v158) = 1;
    v131 = v292;
    v152 = v309;
LABEL_307:
    v163 = v277;
LABEL_308:
    heap_Free(*(v288 + 8), v163);
LABEL_309:
    v154 = v294;
    if (v158)
    {
      break;
    }

LABEL_310:
    ++v153;
  }

  while (v153 < v154);
LABEL_317:
  if (log_HasTraceTuningDataSubscriber(*(v288 + 32)))
  {
    LOBYTE(v324[0]) = 0;
    hlp_ContextToString(v158, *(v31 + 8), *(v31 + 25), v294, &v325, v290, v324);
    log_OutTraceTuningData(*(v288 + 32), 282, "%s%s %s%s", v173, v174, v175, v176, v177, "RES");
  }

  v61 = v308;
  if (!v158)
  {
    goto LABEL_360;
  }

LABEL_320:
  v178 = domain_mngr_utils_ListContainsString(a2, "*");
  v182 = v283;
  if (!v178)
  {
    v182 = 1;
  }

  LODWORD(v183) = *a5;
  if (*(v31 + 2) != 2 && v182 != 1)
  {
    goto LABEL_384;
  }

  v184 = v310 + v284;
  if (!*a5)
  {
    if (v182 != 1)
    {
      LOWORD(v183) = 0;
LABEL_389:
      v226 = v311;
      v228 = v310;
      v229 = v296;
      goto LABEL_391;
    }

LABEL_359:
    v271 = v31[2];
    log_OutText(*(v17 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC tn", v179, v180, v181, *((*v31)[1] + 168));
    log_OutTraceTuningData(*(v17 + 32), 283, "%s%s %s%s", v205, v206, v207, v208, v209, "RES");
    v283 = 1;
    goto LABEL_360;
  }

  v185 = 0;
  v186 = 0;
  v187 = 56;
  v188 = 2;
  v189 = v310 + v293;
  v283 = v182;
  while (2)
  {
    v190 = *v311 + 32 * v185;
    v191 = *v190;
    if ((*v190 - 16) >= 4)
    {
      if (v191 == 21)
      {
        if (v182 == 1)
        {
          if (v185 + 1 >= v183)
          {
            v198 = -1;
          }

          else
          {
            v280 = v189;
            v300 = v186;
            v305 = v184;
            v194 = (*v311 + v187);
            v195 = v188;
            while (1)
            {
              if (*(v194 - 6) == 21)
              {
                v196 = *(v194 - 3);
                v197 = *(v190 + 12);
                v198 = v196 - v197;
                if (v196 >= v197)
                {
                  v199 = strcmp(*v194, *(v190 + 24));
                  v182 = v283;
                  if (v199)
                  {
                    break;
                  }
                }
              }

              v49 = v183 == v195++;
              v194 += 4;
              if (v49)
              {
                v198 = -1;
                break;
              }
            }

            v184 = v305;
            a5 = v306;
            v186 = v300;
            v189 = v280;
          }

          v200 = *(v190 + 12);
          if (v200 <= v189 && (v198 == -1 || v200 + v198 >= v184))
          {
            v201 = *(v190 + 24);
            v202 = v186;
            v203 = v189;
            v204 = domain_mngr_utils_ListContainsString(a2, v201);
            v182 = v283;
            v189 = v203;
            if (v204 == 1)
            {
              v186 = 1;
            }

            else
            {
              v186 = v202;
            }
          }

          v17 = v288;
        }
      }

      else if (v191 == 24)
      {
        goto LABEL_327;
      }
    }

    else
    {
LABEL_327:
      if (*(v312 + 2) == 2)
      {
        v192 = *(v190 + 12);
        if (v192 > v189 && v192 < v184)
        {
          v31 = v312;
          v272 = v312[2];
          log_OutText(*(v17 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC pitch, volume or rate", v179, v180, v181, *((*v312)[1] + 168));
          log_OutTraceTuningData(*(v17 + 32), 283, "%s%s %s%s", v212, v213, v214, v215, v216, "RES");
          goto LABEL_360;
        }
      }
    }

    ++v185;
    v183 = *a5;
    ++v188;
    v187 += 32;
    if (v185 < v183)
    {
      continue;
    }

    break;
  }

  v131 = v292;
  v61 = v308;
  if (v182 != 1)
  {
    v31 = v312;
    goto LABEL_384;
  }

  v31 = v312;
  if (!v186)
  {
    goto LABEL_359;
  }

LABEL_384:
  if (!v183)
  {
    goto LABEL_389;
  }

  v225 = 0;
  v226 = v311;
  v227 = (*v311 + 12);
  v228 = v310;
  v229 = v296;
  while (1)
  {
    v230 = *v227;
    v227 += 8;
    if (v230 - v310 >= v293)
    {
      break;
    }

    if (v183 == ++v225)
    {
      goto LABEL_391;
    }
  }

  LOWORD(v183) = v225;
LABEL_391:
  if (log_GetLogLevel(*(v17 + 32)) >= 5)
  {
    LOBYTE(v324[0]) = 0;
    __dst[0] = 0;
    hlp_ContextToString(1, *(v31 + 7), *(v31 + 24), v229, &v327, v295, v324);
    hlp_ContextToString(1, *(v31 + 8), *(v31 + 25), v294, &v325, v290, __dst);
    v234 = *a5;
    LOWORD(v235) = v183;
    if (v234 > v183)
    {
      v235 = v183;
      v236 = (*v226 + 32 * v183);
      while (v236[3] - v228 <= v293 && *v236 == 36)
      {
        v236 += 8;
        if (v234 == ++v235)
        {
          goto LABEL_399;
        }
      }
    }

    if (v234 == v235)
    {
LABEL_399:
      v237 = (*v226 + 32 * (v234 - 1));
      if (*v237 != 36)
      {
        v238 = (v237[2] + v237[1]);
      }
    }

    else
    {
      v239 = *(*v226 + 32 * v235 + 4);
      if (*a5)
      {
        v240 = (*v226 + 8);
        do
        {
          if (v240[1] - v228 >= v284)
          {
            break;
          }

          if (*(v240 - 2) != 36)
          {
            v241 = (*v240 + *(v240 - 1));
          }

          v240 += 8;
          --v234;
        }

        while (v234);
      }
    }

    v273 = v31[2];
    log_OutText(*(v17 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s], begPos %ld, endPos %ld, begCtxt %s, endCtxt %s", v231, v232, v233, *((*v31)[1] + 168));
  }

  v242 = v31;
  v243 = *a9;
  v29 = activeprompt_Insert(v242, v293, v291, v228, a3, v226, a5, v183, v301, v131, v61, a9);
  if ((v29 & 0x80000000) != 0)
  {
    goto LABEL_376;
  }

  v244 = *a5;
  v245 = *v226;
  v246 = v228 + v293;
  if (*a5)
  {
    v247 = 0;
    v248 = v245 + 3;
    while (1)
    {
      v249 = *v248;
      v248 += 8;
      if (v249 > v246)
      {
        break;
      }

      if (v244 == ++v247)
      {
        v250 = *a5;
        goto LABEL_416;
      }
    }

    v250 = v247;
  }

  else
  {
    v250 = 0;
  }

LABEL_416:
  v251 = *a9;
  v252 = heap_Realloc(*(v17 + 8), v245, 32 * v244 + 32);
  if (!v252)
  {
    v29 = 2296389642;
    log_OutPublic(*(v17 + 32), "DOMAIN_MNGR", 47000, 0, v253, v254, v255, v256, v270);
    goto LABEL_381;
  }

  *v311 = v252;
  v257 = *v306;
  if (v250 < v257)
  {
    memmove((v252 + 32 * v250 + 32), (v252 + 32 * v250), 32 * (v257 - v250));
    LOWORD(v257) = *v306;
    v252 = *v311;
  }

  v258 = v251 - v243;
  *v306 = v257 + 1;
  v259 = (v252 + 32 * v250);
  *v259 = 0u;
  v259[1] = 0u;
  v260 = (*v311 + 32 * v250);
  *v260 = 40;
  a5 = v306;
  if (v250)
  {
    v260[1] = *(v260 - 7);
  }

  v260[3] = v246;
  v260[4] = (v284 - v293 + v258) & ~((v284 - v293 + v258) >> 31);
  v261 = strlen(*((*v312)[1] + 168));
  v262 = strlen(v312[2]);
  *(*v311 + 32 * v250 + 24) = heap_Alloc(*(v17 + 8), (v261 + v262 + 3));
  v267 = *v311 + 32 * v250;
  v269 = *(v267 + 24);
  v268 = (v267 + 24);
  if (v269)
  {
    if (vector_Add(*(**v312 + 88), v268))
    {
      strcpy(*(*v311 + 32 * v250 + 24), *((*v312)[1] + 168));
      strcat(*(*v311 + 32 * v250 + 24), "::");
      strcat(*(*v311 + 32 * v250 + 24), v312[2]);
      goto LABEL_376;
    }

    v29 = 2296389642;
    heap_Free(*(v17 + 8), *(*v311 + 32 * v250 + 24));
    *(*v311 + 32 * v250 + 24) = 0;
  }

  else
  {
    v29 = 2296389642;
  }

  log_OutPublic(*(v17 + 32), "DOMAIN_MNGR", 47000, 0, v263, v264, v265, v266, v270);
LABEL_376:
  if (log_HasTraceTuningDataSubscriber(*(v17 + 32)))
  {
    v217 = strlen(*a3);
    log_OutTraceTuningDataBinary(*(v17 + 32), 279, "", "text/plain;charset=depes", *a3, v217);
    log_OutTraceTuningDataBinary(*(v17 + 32), 279, "", "application/x-realspeak-markers-pp;version=4.0", *v311, 32 * *a5);
    log_OutTraceTuningData(*(v17 + 32), 277, "%s%s", v218, v219, v220, v221, v222, "END");
  }

  v223 = *MEMORY[0x1E69E9840];
  return v29;
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
  v40 = xmmword_1F42D69F0;
  *&v41 = off_1F42D6A00;
  v24 = vector_ObjOpen(v23, &v40, 1, (v20 + 88));
  v29 = v45;
  if (!v24)
  {
    goto LABEL_16;
  }

  v30 = *(v45 + 8);
  v40 = xmmword_1F42D6A08;
  v41 = *&off_1F42D6A18;
  v42 = off_1F42D6A28;
  v31 = ssftmap_ObjOpen(v30, 0, &v40, (v20 + 112));
  v29 = v45;
  if ((v31 & 0x80000000) != 0)
  {
    v14 = v31;
    goto LABEL_16;
  }

  v32 = *(v45 + 8);
  v40 = xmmword_1C3810D30;
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

  ReadOnly = ssftmap_FindReadOnly(*(a1 + 112), a3, &v19);
  if ((ReadOnly & 0x80000000) != 0)
  {
LABEL_8:
    log_OutPublic(*(v20 + 32), "DOMAIN_MNGR", 47008, "%s%s%s%x", v6, v7, v8, v9, "domain");
    return ReadOnly;
  }

  v15 = vector_Add(*(a1 + 120), &v19);
  v16 = *(v20 + 32);
  if (!v15)
  {
    log_OutPublic(v16, "DOMAIN_MNGR", 47000, 0, v11, v12, v13, v14, v18);
    ReadOnly = 2296389642;
    goto LABEL_8;
  }

  log_OutText(v16, "DOMAIN_MNGR", 4, 0, "    Enable domain [%s]", v12, v13, v14, a3);
  return ReadOnly;
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

  ReadOnly = ssftmap_FindReadOnly(*(a1 + 112), a3, &v12);
  if ((ReadOnly & 0x80000000) == 0 && *(a1 + 100))
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
        return ReadOnly;
      }
    }

    vector_Remove(*(a1 + 120), v7);
    --*(a1 + 100);
    log_OutText(*(v14 + 32), "DOMAIN_MNGR", 4, 0, "    Disable domain [%s]", v9, v10, v11, a3);
  }

  return ReadOnly;
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
  v119 = 0;
  v17 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v119);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v119 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ConsultActivePromptDbs", v18, v19, v20, v111);
  vector_Clear(*(a1 + 88));
  v26 = *a5;
  if (v26 < 2)
  {
LABEL_7:
    v117 = a6;
    log_OutText(*(v119 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", v23, v24, v25, *a3);
    v114 = a8;
    v28 = strlen(*a3);
    v118 = CILE_New(*(v119 + 8), 1, *(*a4 + 12) + *a8, v28);
    if (!v118)
    {
      inited = 2296389642;
      log_OutPublic(*(v119 + 32), "DOMAIN_MNGR", 47000, 0, v32, v33, v34, v35, v113);
      return inited;
    }

    v116 = a7;
    if (!*a5)
    {
LABEL_32:
      if (!**a3)
      {
        goto LABEL_103;
      }

      v49 = *(a1 + 16);
      v126 = 0;
      memset(v125, 0, sizeof(v125));
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v120 = 0;
      v50 = *(*a4 + 12);
      if (log_HasTraceTuningDataSubscriber(*(v49 + 32)))
      {
        log_OutTraceTuningData(*(v49 + 32), 250, "%s%s", v51, v52, v53, v54, v55, "BEG");
        v56 = strlen(*a3);
        log_OutTraceTuningDataBinary(*(v49 + 32), 251, "", "text/plain;charset=depes", *a3, v56);
        log_OutTraceTuningDataBinary(*(v49 + 32), 251, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
      }

      v57 = *a5;
      v115 = v49;
      if (!*a5)
      {
        inited = 0;
        v68 = 0;
        goto LABEL_59;
      }

      v58 = 0;
      v59 = 0;
      inited = 2296389642;
      v60 = v118;
      while (1)
      {
        v61 = *a4 + 32 * v58;
        if (*v61 == 40)
        {
          v62 = strlen(*(v61 + 24));
          v63 = heap_Alloc(*(v115 + 8), (v62 + 1));
          v68 = v63;
          if (!v63)
          {
            v49 = v115;
            log_OutPublic(*(v115 + 32), "DOMAIN_MNGR", 47000, 0, v64, v65, v66, v67, v113);
LABEL_59:
            if (log_HasTraceTuningDataSubscriber(*(v49 + 32)))
            {
              v83 = strlen(*a3);
              log_OutTraceTuningDataBinary(*(v49 + 32), 252, "", "text/plain;charset=depes", *a3, v83);
              log_OutTraceTuningDataBinary(*(v49 + 32), 252, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              log_OutTraceTuningData(*(v49 + 32), 250, "%s%s %s%u", v84, v85, v86, v87, v88, "END");
            }

            v89 = v117;
            if ((inited & 0x80000000) == 0 && *(a1 + 96))
            {
              if (log_HasTraceTuningDataSubscriber(*(v49 + 32)))
              {
                log_OutTraceTuningData(*(v49 + 32), 270, "%s%s", v90, v91, v92, v93, v94, "BEG");
                v95 = strlen(*a3);
                v89 = v117;
                log_OutTraceTuningDataBinary(*(v49 + 32), 271, "", "text/plain;charset=depes", *a3, v95);
                log_OutTraceTuningDataBinary(*(v49 + 32), 271, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              }

              if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v121) & 0x80000000) == 0)
              {
                while ((ssftmap_IteratorNext(v121, &v123, &v122) & 0x80000000) == 0)
                {
                  domain_SetConsulted(v122, 0);
                }

                ssftmap_IteratorClose(v121);
              }

              Size = vector_GetSize(*(a1 + 120));
              if (Size)
              {
                v97 = Size;
                while (vector_GetElemAt(*(a1 + 120), --v97, &v124))
                {
                  if (accphr_getAccPhrType(*v124))
                  {
                    if (!v97)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v98 = vector_GetSize(*(*v124 + 16));
                    if (v98)
                    {
                      v99 = v98;
                      if (vector_GetElemAt(*(*v124 + 16), v98 - 1, &v120))
                      {
                        v100 = v99 - 2;
                        while (1)
                        {
                          inited = activeprompt_db_Consult(*v120, a3, a4, a5, v89, v116, v118, a9);
                          if ((inited & 0x80000000) != 0)
                          {
                            goto LABEL_82;
                          }

                          if (v100 != -1)
                          {
                            if (vector_GetElemAt(*(*v124 + 16), v100--, &v120))
                            {
                              continue;
                            }
                          }

                          break;
                        }
                      }
                    }

                    domain_SetConsulted(*v124, 1);
                    if (!v97)
                    {
                      break;
                    }
                  }
                }
              }
            }

LABEL_82:
            if (v68)
            {
              heap_Free(*(v115 + 8), v68);
            }

            if (log_HasTraceTuningDataSubscriber(*(v115 + 32)))
            {
              v102 = strlen(*a3);
              log_OutTraceTuningDataBinary(*(v115 + 32), 272, "", "text/plain;charset=depes", *a3, v102);
              log_OutTraceTuningDataBinary(*(v115 + 32), 272, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              v103 = *(a1 + 56);
              v131 = 0;
              *v132 = 0;
              v130 = 0;
              v129 = 0;
              v128 = 0;
              v127 = 0;
              if (((*(v103 + 104))(v89, v116, 1, 0, &v132[1]) & 0x80000000) == 0 && ((*(v103 + 152))(v117, v116, 2, v132[1], &v130) & 0x80000000) == 0)
              {
                if (v130)
                {
                  if (((*(v103 + 104))(v117, v116, 2, v132[1], v132) & 0x80000000) == 0)
                  {
                    v109 = v132[0];
                    if (v132[0])
                    {
                      while (((*(v103 + 168))(v117, v116, v109, 0, 1, &v128, &v131 + 2) & 0x80000000) == 0)
                      {
                        if (v128 == 5)
                        {
                          if (((*(v103 + 176))(v117, v116, v132[0], 4, &v129, &v131 + 2) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (HIWORD(v131) && !strncmp(v129, "phon", HIWORD(v131)))
                          {
                            if (((*(v103 + 176))(v117, v116, v132[0], 3, &v127, &v131 + 2) & 0x80000000) != 0 || ((*(v103 + 168))(v117, v116, v132[0], 1, 1, &v131, &v131 + 2) & 0x80000000) != 0 || ((*(v103 + 168))(v117, v116, v132[0], 2, 1, &v130 + 2, &v131 + 2) & 0x80000000) != 0)
                            {
                              break;
                            }

                            log_OutTraceTuningData(*(v115 + 32), 272, "%s%s %s%d %s%d", v104, v105, v106, v107, v108, "PHON");
                          }
                        }

                        if (((*(v103 + 120))(v117, v116, v132[0], v132) & 0x80000000) == 0)
                        {
                          v109 = v132[0];
                          if (v132[0])
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

              log_OutTraceTuningData(*(v115 + 32), 270, "%s%s %s%u", v104, v105, v106, v107, v108, "END");
            }

LABEL_103:
            if (v119)
            {
              CILE_Free(v118, *(v119 + 8));
              goto LABEL_105;
            }

            return inited;
          }

          strcpy(v63, *(*a4 + 32 * v58 + 24));
          ActivePrompt = hlp_FindActivePrompt(a1, v68, v125);
          if ((ActivePrompt & 0x80000000) != 0)
          {
            inited = ActivePrompt;
            goto LABEL_57;
          }

          log_OutText(*(v115 + 32), "DOMAIN_MNGR", 5, 0, "    Do User Prompt Insertion for [%s]", v70, v71, v72, v68);
          heap_Free(*(v115 + 8), v68);
          v73 = *(*a4 + 32 * v58 + 12);
          while (1)
          {
            v74 = *(v60 + 4);
            v75 = *(v60 + 8) + v74;
            v76 = v74 > v73 || v73 >= v75;
            if (!v76 || v73 == v75 && v73 == v50 + strlen(*a3))
            {
              break;
            }

            v60 = *(v60 + 16);
            if (!v60)
            {
              v68 = 0;
              inited = 2296389632;
              goto LABEL_57;
            }
          }

          v59 = activeprompt_Insert(v125, (v73 - v50), 0, v50, a3, a4, a5, v58, v60, v117, v116, v114);
          if ((v59 & 0x80000000) != 0)
          {
LABEL_53:
            v68 = 0;
            inited = v59;
LABEL_57:
            v49 = v115;
            goto LABEL_59;
          }

          log_OutText(*(v115 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", v77, v78, v79, *a3);
          v57 = *a5;
        }

        if (++v58 >= v57)
        {
          goto LABEL_53;
        }
      }
    }

    v36 = 0;
    v37 = 0;
    v38 = v118;
    while (1)
    {
      v39 = *a4;
      v40 = *(*a4 + v36);
      if (v40 > 25)
      {
        if (v40 == 26 || v40 == 29)
        {
LABEL_24:
          v46 = *(v39 + v36 + 12);
          v31 = *(v38 + 1);
          v32 = v46 - v31;
          if (v46 > v31)
          {
            v47 = *(v38 + 2);
            if ((v47 - (v46 - v31)) >= 1)
            {
              inited = CI_Update(*(v119 + 8), v38, *v38, v31, v32);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_103;
              }

              v48 = CILE_New(*(v119 + 8), *v38, *(*a4 + v36 + 12), v47 - *(v38 + 2));
              if (!v48)
              {
LABEL_102:
                inited = 2296389642;
                log_OutPublic(*(v119 + 32), "DOMAIN_MNGR", 47000, 0, v32, v33, v34, v35, v113);
                goto LABEL_103;
              }

              v38[2] = v48;
              v38 = v48;
            }
          }
        }
      }

      else
      {
        if (v40 == 8)
        {
          goto LABEL_24;
        }

        if (v40 == 12)
        {
          v41 = *(v39 + v36 + 24);
          if (v41 && *v41 && strcmp(v41, "normal"))
          {
            if (!*(a1 + 128))
            {
              v42 = strlen(v41);
              v43 = heap_Alloc(*(v119 + 8), (v42 + 1));
              if (!v43)
              {
                goto LABEL_102;
              }

              v44 = v43;
              strcpy(v43, *(*a4 + v36 + 24));
              domain_mngr_EnableDomain(a1, a2, v44);
              heap_Free(*(v119 + 8), v44);
            }
          }

          else if (!*(a1 + 128))
          {
            hlp_DisableLastDomain(a1, v29, v30, v31, v32, v33, v34, v35, v113);
          }
        }
      }

      ++v37;
      v36 += 32;
      if (v37 >= *a5)
      {
        goto LABEL_32;
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

  log_OutPublic(*(v119 + 32), "DOMAIN_MNGR", 47015, 0, v22, v23, v24, v25, v112);
  inited = 2296389639;
LABEL_105:
  if (v119)
  {
    log_OutText(*(v119 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ConsultActivePromptDbs", v80, v81, v82, v113);
  }

  return inited;
}

uint64_t domain_mngr_ConsultOriOrth(uint64_t a1, int a2, const char **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v91 = *MEMORY[0x1E69E9840];
  v84 = 0;
  strcpy(__s2, "normal");
  v10 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v10 & 0x80000000) != 0)
  {
    inited = v10;
  }

  else
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v84);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v84 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ConsultOriOrth", v11, v12, v13, v77);
      *(a1 + 128) = 1;
      v15 = CILE_New(*(v84 + 8), 1, *(*a4 + 12), *(*a4 + 16));
      if (v15)
      {
        v81 = v15;
        if (*a5)
        {
          v79 = a2;
          v80 = a3;
          v23 = 0;
          __s1 = __s2;
          v83 = __s2;
          v24 = v15;
          while (1)
          {
            v25 = *a4;
            v26 = (*a4 + 32 * v23);
            v27 = *v26;
            if (v27 > 0x28)
            {
              break;
            }

            if (((1 << v27) & 0x10024000100) != 0)
            {
              v28 = v26[3];
              v18 = v24[1];
              v19 = v28 - v18;
              if (v28 > v18)
              {
                v29 = v24[2];
                if (v29 != v19)
                {
                  inited = CI_Update(*(v84 + 8), v24, *v24, v18, v19);
                  if ((inited & 0x80000000) != 0)
                  {
                    goto LABEL_96;
                  }

                  v30 = CILE_New(*(v84 + 8), *v24, *(*a4 + 32 * v23 + 12), v29 - v24[2]);
                  if (!v30)
                  {
                    goto LABEL_95;
                  }

                  *(v24 + 2) = v30;
                  v24 = v30;
                }
              }

              goto LABEL_51;
            }

            if (v27 == 12)
            {
              v40 = *(v26 + 3);
              if (v40 && *v40 && strcmp(*(v26 + 3), "normal"))
              {
                v41 = strlen(v40);
                v42 = heap_Alloc(*(v84 + 8), (v41 + 1));
                if (!v42)
                {
                  goto LABEL_95;
                }

                v43 = v42;
                strcpy(v42, *(*a4 + 32 * v23 + 24));
                domain_mngr_EnableDomain(a1, v79, v43);
                heap_Free(*(v84 + 8), v43);
                a3 = v80;
              }

              else
              {
                hlp_DisableLastDomain(a1, v16, v17, v18, v19, v20, v21, v22, v78);
              }

              goto LABEL_51;
            }

            if (v27 != 21)
            {
              break;
            }

            if (!strcmp(__s1, *(v26 + 3)))
            {
              goto LABEL_51;
            }

LABEL_16:
            v31 = v25 + 32 * v23;
            v32 = *(v31 + 24);
            v33 = strcmp(v32, __s2);
            v34 = *v31;
            if (v33)
            {
              v35 = 0;
              if (v34 != 21)
              {
                goto LABEL_39;
              }
            }

            else
            {
              if (v34 == 36)
              {
                v35 = strcmp(__s1, __s2) == 0;
LABEL_39:
                v44 = v83;
                if (v34 == 36)
                {
                  v44 = v32;
                }

                v83 = v44;
                goto LABEL_42;
              }

              if (v34 != 21)
              {
                v35 = 0;
                goto LABEL_39;
              }

              v35 = strcmp(v83, __s2) == 0;
            }

            __s1 = v32;
LABEL_42:
            v18 = *(v31 + 12);
            v45 = v24[1];
            v19 = v18 - v45;
            if (v18 <= v45 || (v46 = v24[2], v46 == v19))
            {
              if (v18 == v45)
              {
                inited = CI_Update(*(v84 + 8), v24, v35, v18, v24[2]);
                a3 = v80;
                if ((inited & 0x80000000) != 0)
                {
                  goto LABEL_96;
                }

                goto LABEL_51;
              }
            }

            else
            {
              inited = CI_Update(*(v84 + 8), v24, *v24, v24[1], v19);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_96;
              }

              v47 = CILE_New(*(v84 + 8), v35, *(*a4 + 32 * v23 + 12), v46 - v24[2]);
              if (!v47)
              {
LABEL_95:
                inited = 2296389642;
                log_OutPublic(*(v84 + 32), "DOMAIN_MNGR", 47000, 0, v19, v20, v21, v22, v78);
                goto LABEL_96;
              }

              *(v24 + 2) = v47;
              v24 = v47;
            }

            a3 = v80;
LABEL_51:
            if (++v23 >= *a5)
            {
              goto LABEL_66;
            }
          }

          v36 = v84;
          v89 = 0;
          if (!v83 || !v84 || v27 != 36 || !strcmp(v83, *(v26 + 3)) || (paramc_ParamGetStr(*(v36 + 40), "langcode", &v89) & 0x80000000) != 0)
          {
            goto LABEL_51;
          }

          v37 = strcmp(v83, "normal");
          v38 = *(v26 + 3);
          if (v37)
          {
            if (strcmp(v38, "normal"))
            {
LABEL_55:
              v48 = *a5;
              v25 = *a4;
              if (*a5)
              {
                v49 = 0;
                v50 = *(v25 + 32 * v23 + 12);
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
                  goto LABEL_51;
                }
              }

              goto LABEL_16;
            }

            v39 = v89;
            v38 = v83;
          }

          else
          {
            v39 = v89;
          }

          if (!strcmp(v38, v39))
          {
            goto LABEL_51;
          }

          goto LABEL_55;
        }

LABEL_66:
        if (*a3 && **a3)
        {
          v53 = *(a1 + 16);
          v89 = 0;
          v87 = 0;
          v88 = 0;
          v85 = 0;
          v86 = 0;
          if (log_HasTraceTuningDataSubscriber(*(v53 + 32)))
          {
            log_OutTraceTuningData(*(v53 + 32), 210, "%s%s", v54, v55, v56, v57, v58, "BEG");
            v59 = strlen(*a3);
            log_OutTraceTuningDataBinary(*(v53 + 32), 211, "", "text/plain;charset=utf-8", *a3, v59);
            log_OutTraceTuningDataBinary(*(v53 + 32), 211, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
          }

          if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v86) & 0x80000000) == 0)
          {
            while ((ssftmap_IteratorNext(v86, &v88, &v87) & 0x80000000) == 0)
            {
              domain_SetConsulted(v87, 0);
            }

            ssftmap_IteratorClose(v86);
          }

          Size = vector_GetSize(*(a1 + 120));
          if (Size)
          {
            v61 = Size;
            inited = 0;
            while (vector_GetElemAt(*(a1 + 120), --v61, &v89))
            {
              if (accphr_getAccPhrType(*v89))
              {
                if (!v61)
                {
                  break;
                }
              }

              else
              {
                v62 = vector_GetSize(*(*v89 + 16));
                if (v62)
                {
                  v63 = v62;
                  if (vector_GetElemAt(*(*v89 + 16), v62 - 1, &v85))
                  {
                    v64 = v63 - 2;
                    while (1)
                    {
                      inited = activeprompt_db_ConsultOriOrth(*v85, a3, a4, a5, v81);
                      if ((inited & 0x80000000) != 0)
                      {
                        goto LABEL_91;
                      }

                      if (v64 != -1)
                      {
                        if (vector_GetElemAt(*(*v89 + 16), v64--, &v85))
                        {
                          continue;
                        }
                      }

                      break;
                    }
                  }
                }

                domain_SetConsulted(*v89, 1);
                if (!v61)
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

LABEL_91:
          if (log_HasTraceTuningDataSubscriber(*(v53 + 32)))
          {
            if ((inited & 0x80000000) == 0)
            {
              v71 = strlen(*a3);
              log_OutTraceTuningDataBinary(*(v53 + 32), 212, "", "text/plain;charset=utf-8", *a3, v71);
              log_OutTraceTuningDataBinary(*(v53 + 32), 212, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
            }

            log_OutTraceTuningData(*(v53 + 32), 210, "%s%s %s%u", v66, v67, v68, v69, v70, "END");
          }
        }

LABEL_96:
        if (v84)
        {
          CILE_Free(v81, *(v84 + 8));
          if (v84)
          {
            log_OutText(*(v84 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ConsultOriOrth", v72, v73, v74, v78);
          }
        }
      }

      else
      {
        inited = 2296389642;
        log_OutPublic(*(v84 + 32), "DOMAIN_MNGR", 47000, 0, v19, v20, v21, v22, v78);
      }
    }
  }

  v75 = *MEMORY[0x1E69E9840];
  return inited;
}

uint64_t domain_mngr_InsertPromptOrth(uint64_t a1, int a2, const char **a3, uint64_t *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _WORD *a8)
{
  v40 = 0;
  v12 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v40);
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
          v18 = strlen(*(*a4 + v15 + 24));
          v19 = heap_Alloc(*(v40 + 8), (v18 + 1));
          if (!v19)
          {
            log_OutPublic(*(v40 + 32), "DOMAIN_MNGR", 47000, 0, v20, v21, v22, v23, v34);
            return 2296389642;
          }

          v24 = v19;
          strcpy(v19, *(*a4 + v15 + 24));
          ActivePrompt = hlp_FindActivePrompt(a1, v24, v38);
          if ((ActivePrompt & 0x80000000) != 0)
          {
            inited = ActivePrompt;
            heap_Free(*(v40 + 8), v24);
            return inited;
          }

          log_OutText(*(v40 + 32), "DOMAIN_MNGR", 5, 0, "    Do User Prompt Insertion for [%s]", v26, v27, v28, v24);
          heap_Free(*(v40 + 8), v24);
          inited = activeprompt_InsertOrth(v38, *(*a4 + v15 + 12) - v17, v17, a3, a4, a5, v16, v29, a6, a7, a8);
          if ((inited & 0x80000000) != 0)
          {
            return inited;
          }

          log_OutText(*(v40 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", v30, v31, v32, *a3);
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

uint64_t domain_mngr_ActivePromptFind(uint64_t a1, int a2, char *a3, unsigned int *a4, uint64_t a5, char **a6, void *a7)
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

uint64_t domain_mngr_ResourceLoad(_WORD **a1, int a2, char *a3, char *a4, const void *a5, int a6, uint64_t a7)
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
  inited = InitRsrcFunction(*a1, a1[1], &v74);
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
    goto LABEL_42;
  }

  v28 = v72;
  if (!v72)
  {
    goto LABEL_52;
  }

  v29 = *(v72 + 80);
  if (v29)
  {
    if (strstr(a3, "application/x-vocalizer-activeprompt-db"))
    {
      v30 = (*(a1[8] + 13))(a1[9], a1[10], v29);
      active = v30;
      if ((v30 & 0x80000000) != 0 || (v28 = v72) == 0)
      {
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_42;
      }
    }
  }

  v31 = *(*(v28 + 8) + 168);
  if ((ssftmap_FindReadOnly(a1[14], v31, &v73) & 0x80000000) != 0)
  {
    v41 = domain_ObjOpen(0, *a1, a1[1], v71);
    if ((v41 & 0x80000000) != 0)
    {
      v51 = v41;
      log_OutPublic(*(v74 + 32), "DOMAIN_MNGR", 47004, "%s%s%s%x", v42, v43, v44, v45, "domain");
      v52 = 0;
      v53 = 1;
      active = v51;
      goto LABEL_44;
    }

    ReadOnly = ssftmap_Insert(a1[14], v31, v71);
    if ((ReadOnly & 0x80000000) != 0 || (ReadOnly = ssftmap_FindReadOnly(a1[14], v31, &v73), (ReadOnly & 0x80000000) != 0))
    {
      active = ReadOnly;
      log_OutPublic(*(v74 + 32), "DOMAIN_MNGR", 47005, "%s%s%s%x", v47, v48, v49, v50, "domain");
      domain_ObjClose(v71);
      goto LABEL_42;
    }

    log_OutText(*(v74 + 32), "DOMAIN_MNGR", 4, 0, "Adding %s", v48, v49, v50, v31);
  }

  v32 = domain_checkIfPresent(v73, v72);
  if ((v32 & 0x80000000) != 0)
  {
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
LABEL_44:
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

  active = domain_AddActivePromptDb(v73, v72);
  if ((active & 0x80000000) != 0)
  {
    log_OutPublic(*(v74 + 32), "DOMAIN_MNGR", 47009, "%s%s%s%x", v33, v34, v35, v36, "domain");
LABEL_42:
    v52 = 0;
    v53 = 1;
LABEL_43:
    v51 = active;
    goto LABEL_44;
  }

  if (!strstr(a3, ";mode=automatic") && strcmp((*(v72 + 8) + 52), "automatic"))
  {
    goto LABEL_51;
  }

  active = domain_mngr_EnableDomain(a1, a2, v31);
  if ((active & 0x80000000) != 0)
  {
    log_OutPublic(*(v74 + 32), "DOMAIN_MNGR", 47010, "%s%s%s%x", v37, v38, v39, v40, "domain");
    v52 = 0;
    v53 = 0;
    goto LABEL_43;
  }

  ++*(a1 + 25);
LABEL_51:
  hlp_RefreshTNTypes(a1);
  *a7 = v72;
  *(a7 + 8) = 316;
LABEL_52:
  if (log_HasTraceTuningDataSubscriber(*(v74 + 32)))
  {
    log_OutTraceTuningData(*(v74 + 32), 201, "%s%s %s%u", v65, v66, v67, v68, v69, "END");
  }

  return active;
}

uint64_t domain_mngr_ResourceUnload(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
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

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v34);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = 2296390669;
  if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v33) & 0x80000000) == 0)
  {
    if ((ssftmap_IteratorNext(v33, &v32, &v31) & 0x80000000) != 0)
    {
      ssftmap_IteratorClose(v33);
    }

    else
    {
      do
      {
        if (vector_GetElemAt(*(v31 + 16), 0, &v30))
        {
          v15 = 0;
          while (*v30 != a3)
          {
            if (!vector_GetElemAt(*(v31 + 16), ++v15, &v30))
            {
              goto LABEL_16;
            }
          }

          v29 = *(*v30 + 56);
          log_OutTraceTuningData(*(v34 + 32), 202, "%s%s %s%s", v10, v11, v12, v13, v14, "BEG");
          v16 = *v30;
          if (*(*v30 + 80))
          {
            inited = (*(*(a1 + 64) + 112))(*(a1 + 72), *(a1 + 80));
            if ((inited & 0x80000000) != 0)
            {
              return inited;
            }

            v16 = *v30;
          }

          v17 = domain_mngr_DisableDomain(a1, a2, *(*(v16 + 8) + 168));
          if ((v17 & 0x80000000) != 0)
          {
            v9 = v17;
            log_OutTraceTuningData(*(v34 + 32), 202, "%s%s %s%u", v18, v19, v20, v21, v22, "END");
            return v9;
          }

          vector_Remove(*(v31 + 16), v15);
          log_OutTraceTuningData(*(v34 + 32), 202, "%s%s %s%u", v23, v24, v25, v26, v27, "END");
          v9 = 0;
        }

LABEL_16:
        ;
      }

      while ((ssftmap_IteratorNext(v33, &v32, &v31) & 0x80000000) == 0);
      ssftmap_IteratorClose(v33);
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

uint64_t domain_mngr_IElemDomainCopy(_OWORD *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 32);
  if (!v5)
  {
    return 2296389642;
  }

  v6 = v5;
  result = 0;
  v8 = a1[1];
  *v6 = *a1;
  v6[1] = v8;
  *(a1 + 2) = 0;
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

uint64_t hlp_FindActivePrompt(uint64_t a1, char *__s, uint64_t a3)
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

  if (a3)
  {
    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  ReadOnly = domain_mngr_utils_DuplicateString(*(v3 + 8), __s, &__s1);
  if ((ReadOnly & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  v13 = __s1;
  v14 = strstr(__s1, "::");
  if (v14)
  {
    *v14 = 0;
    v15 = v14 + 2;
    ReadOnly = ssftmap_FindReadOnly(*(a1 + 112), __s1, &v29);
    if ((ReadOnly & 0x80000000) == 0)
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
            v4 = activeprompt_db_Get(*v27, v15, a3);
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

LABEL_16:
      v13 = __s1;
      if (!__s1)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_15:
    v4 = ReadOnly;
    goto LABEL_16;
  }

  v4 = 2296389633;
  if (v13)
  {
LABEL_17:
    heap_Free(*(v3 + 8), v13);
    __s1 = 0;
  }

LABEL_18:
  v20 = *(v3 + 32);
  if ((v4 & 0x80000000) != 0)
  {
    log_OutPublic(v20, "DOMAIN_MNGR", 47016, "%s%s", v9, v10, v11, v12, "prompt");
    log_OutTraceTuningData(*(v3 + 32), 253, "%s%s %s%d", v21, v22, v23, v24, v25, "NAME");
  }

  else
  {
    log_OutTraceTuningData(v20, 253, "%s%s", v8, v9, v10, v11, v12, "NAME");
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

uint64_t domain_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  inited = InitRsrcFunction(a2, a3, &v16);
  if ((inited & 0x80000000) == 0)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = a2;
    *(a4 + 8) = a3;
    v8 = *(v16 + 8);
    v14 = xmmword_1F42D6A30;
    v15 = off_1F42D6A40;
    if (!vector_ObjOpen(v8, &v14, 1, (a4 + 16)))
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
        if (!v8 && *v7 && !strcmp(v7, v6))
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
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  if ((safeh_HandleCheck(a1, a2, 62338, 920) & 0x80000000) != 0)
  {
    return 2342526984;
  }

  v51 = 0;
  v46 = 0;
  __src = 0;
  *a5 = 1;
  v9 = (*(a1[1] + 104))(a3, a4, 1, 0, &v46);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (((*(a1[1] + 184))(a3, a4, v46, 0, &v41) & 0x80000000) == 0 && v41 == 1)
  {
    v9 = (*(a1[1] + 176))(a3, a4, v46, 0, &v51, &v45);
    if ((v9 & 0x80000000) != 0)
    {
LABEL_23:
      if (v50)
      {
        heap_Free(*(*a1 + 8), v50);
      }

      v50 = 0;
      if (v42)
      {
        heap_Free(*(*a1 + 8), v42);
      }

      return v9;
    }

    if (v45 < 2u)
    {
      return v9;
    }

    v10 = (*(a1[1] + 176))(a3, a4, v46, 1, &__src, &v45);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = v45;
      HIWORD(v41) = v45;
      v12 = strlen(v51);
      v13 = heap_Alloc(*(*a1 + 8), (v12 + 1));
      v50 = v13;
      if (v13)
      {
        v18 = v13;
        strcpy(v13, v51);
        v19 = 32 * v11;
        v20 = heap_Calloc(*(*a1 + 8), 1, v19);
        v42 = v20;
        if (v20)
        {
          memcpy(v20, __src, v19);
          v10 = (*(a1[114] + 96))(a1[112], a1[113], "fecfg", "mdesegpos_morpheme_processing", &v49, &v47, &v48);
          if ((v10 & 0x80000000) == 0)
          {
            v25 = 0;
            if (v47 == 1 && v49)
            {
              v25 = **v49 == 49;
            }

            v10 = (*(a1[3] + 104))(a1[4], a1[5], &v50, &v42, &v41 + 2, a3, a4, &v40, v25);
            if ((v10 & 0x80000000) == 0)
            {
              if (!v50 || (v26 = strlen(v50), v10 = (*(a1[1] + 160))(a3, a4, v46, 0, (v26 + 1), v50, &v44), (v10 & 0x80000000) == 0))
              {
                if (!v42 || !HIWORD(v41) || (v42[4] += v40, v10 = (*(a1[1] + 160))(a3, a4, v46, 1), (v10 & 0x80000000) == 0))
                {
                  v10 = (*(a1[6] + 112))(a1[7], a1[8], &v39, 0);
                  if ((v10 & 0x80000000) == 0)
                  {
                    v39 += v40;
                    v10 = (*(a1[6] + 104))(a1[7], a1[8]);
                  }
                }
              }
            }
          }

          goto LABEL_22;
        }

        log_OutPublic(*(*a1 + 32), "FE_PROMPT", 45200, 0, v21, v22, v23, v24, v38);
        heap_Free(*(*a1 + 8), v18);
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "FE_PROMPT", 45200, 0, v14, v15, v16, v17, v38);
      }

      return 2342526986;
    }

LABEL_22:
    v9 = v10;
    goto LABEL_23;
  }

  if (log_HasTraceTuningDataSubscriber(*(*a1 + 32)) && ((*(a1[1] + 184))(a3, a4, v46, 1, &v41) & 0x80000000) == 0 && v41 == 1 && ((*(a1[1] + 176))(a3, a4, v46, 1, &__src, &v45) & 0x80000000) == 0)
  {
    log_OutTraceTuningData(*(*a1 + 32), 270, "%s%s", v27, v28, v29, v30, v31, "BEG");
    log_OutTraceTuningDataBinary(*(*a1 + 32), 271, "", "text/plain;charset=depes", "", 0);
    log_OutTraceTuningDataBinary(*(*a1 + 32), 271, "", "application/x-realspeak-markers-pp;version=4.0", __src, 32 * v45);
    log_OutTraceTuningDataBinary(*(*a1 + 32), 272, "", "text/plain;charset=depes", "", 0);
    log_OutTraceTuningDataBinary(*(*a1 + 32), 272, "", "application/x-realspeak-markers-pp;version=4.0", __src, 32 * v45);
    log_OutTraceTuningData(*(*a1 + 32), 270, "%s%s %s%u", v32, v33, v34, v35, v36, "END");
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
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  if ((safeh_HandleCheck(a1, a2, 62339, 64) & 0x80000000) != 0)
  {
    return 2343575560;
  }

  __s = 0;
  v38 = 0;
  __src = 0;
  *a5 = 1;
  v9 = (*(a1[1] + 104))(a3, a4, 1, 0, &v38);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v10 = (*(a1[1] + 184))(a3, a4, v38, 0, &v33);
  v11 = a1[1];
  if (v10 < 0 || v33 != 1)
  {
    v12 = (*(v11 + 184))(a3, a4, v38, 1, &v33);
  }

  else
  {
    v9 = (*(v11 + 176))(a3, a4, v38, 0, &__s, &v37);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    if (v37 > 1u)
    {
      goto LABEL_13;
    }

    v12 = (*(a1[1] + 184))(a3, a4, v38, 1, &v33);
  }

  if (v12 < 0 || v33 != 1)
  {
    return v9;
  }

  __s = "";
LABEL_13:
  v13 = (*(a1[1] + 176))(a3, a4, v38, 1, &__src, &v37);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v37;
    HIWORD(v33) = v37;
    v15 = strlen(__s);
    v16 = heap_Alloc(*(*a1 + 8), (v15 + 1));
    v39 = v16;
    if (v16)
    {
      v21 = v16;
      strcpy(v16, __s);
      v22 = 32 * v14;
      v23 = heap_Calloc(*(*a1 + 8), 1, v22);
      v34 = v23;
      if (v23)
      {
        memcpy(v23, __src, v22);
        v13 = (*(a1[2] + 120))(a1[3], a1[4], &v39, &v34, &v33 + 2, a3, a4, &v32);
        if ((v13 & 0x80000000) == 0)
        {
          if (!v39 || !*v39 || (v28 = strlen(v39), v13 = (*(a1[1] + 160))(a3, a4, v38, 0, (v28 + 1), v39, &v36), (v13 & 0x80000000) == 0))
          {
            if (!v34 || !HIWORD(v33) || (v34[4] += v32, v13 = (*(a1[1] + 160))(a3, a4, v38, 1), (v13 & 0x80000000) == 0))
            {
              v13 = (*(a1[5] + 112))(a1[6], a1[7], &v31, 0);
              if ((v13 & 0x80000000) == 0)
              {
                v31 += v32;
                v13 = (*(a1[5] + 104))(a1[6], a1[7]);
              }
            }
          }
        }

        goto LABEL_25;
      }

      log_OutPublic(*(*a1 + 32), "FE_PROMPTORTH", 45000, 0, v24, v25, v26, v27, v30);
      heap_Free(*(*a1 + 8), v21);
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_PROMPTORTH", 45000, 0, v17, v18, v19, v20, v30);
    }

    return 2343575562;
  }

LABEL_25:
  v9 = v13;
LABEL_26:
  if (v39)
  {
    heap_Free(*(*a1 + 8), v39);
  }

  v39 = 0;
  if (v34)
  {
    heap_Free(*(*a1 + 8), v34);
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
  v29 = 0;
  v7 = 2357207050;
  v28 = 0;
  __src = 0;
  memset(__n, 0, sizeof(__n));
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  if ((safeh_HandleCheck(a1, a2, 62500, 952) & 0x80000000) != 0)
  {
    return 2357207048;
  }

  *a5 = 1;
  result = (*(*(a1 + 8) + 144))(*(a1 + 888), *(a1 + 896), &v29 + 4, &v28);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 8) + 144))(*(a1 + 904), *(a1 + 912), &v29, &v28);
    if ((result & 0x80000000) == 0)
    {
      if (!v29)
      {
        if (v28 == 1)
        {
          return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 8));
        }

        *a5 = 0;
        return result;
      }

      v9 = (*(*(a1 + 8) + 88))(*(a1 + 888), *(a1 + 896), &__src, __n);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      v10 = heap_Alloc(*(*a1 + 8), (__n[0] + 1));
      *&__n[1] = v10;
      if (!v10)
      {
        goto LABEL_25;
      }

      v15 = v10;
      if (__src)
      {
        memcpy(v10, __src, __n[0]);
      }

      v15[__n[0]] = 0;
      v9 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &v25, &v23 + 4);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      v16 = HIDWORD(v23);
      LODWORD(v23) = HIDWORD(v23) >> 5;
      HIDWORD(v23) >>= 5;
      v17 = heap_Calloc(*(*a1 + 8), 1, v16 & 0xFFFFFFE0);
      v24 = v17;
      if (!v17)
      {
LABEL_25:
        log_OutPublic(*(*a1 + 32), "FE_PROMPTORIORTH", 57000, 0, v11, v12, v13, v14, v21);
        goto LABEL_26;
      }

      memcpy(v17, v25, 32 * HIDWORD(v23));
      v9 = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), &v22, 0);
      if ((v9 & 0x80000000) == 0)
      {
        v9 = (*(*(a1 + 16) + 112))(*(a1 + 24), *(a1 + 32), &__n[1], &v24, &v23);
        if ((v9 & 0x80000000) == 0)
        {
          v18 = *&__n[1];
          v19 = __n[0];
          v24[4] = v24[4] + strlen(*&__n[1]) - __n[0] + 1;
          v20 = strlen(v18);
          if (!v20)
          {
LABEL_19:
            v9 = (*(*(a1 + 8) + 96))(*(a1 + 888), *(a1 + 896), v19);
            if ((v9 & 0x80000000) == 0)
            {
              v9 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), v24, (32 * v23));
              if ((v9 & 0x80000000) == 0)
              {
                v9 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), (32 * HIDWORD(v23)));
                if ((v9 & 0x80000000) == 0)
                {
                  v22 = v22 + strlen(*&__n[1]) - __n[0] + 1;
                  v9 = (*(*(a1 + 56) + 104))(*(a1 + 40), *(a1 + 48));
                }
              }
            }

            goto LABEL_23;
          }

          v9 = (*(*(a1 + 8) + 104))(*(a1 + 920), *(a1 + 928), v18, (v20 + 1));
          if ((v9 & 0x80000000) == 0)
          {
            v19 = __n[0];
            goto LABEL_19;
          }
        }
      }

LABEL_23:
      v7 = v9;
LABEL_26:
      if (*&__n[1])
      {
        heap_Free(*(*a1 + 8), *&__n[1]);
      }

      if (v24)
      {
        heap_Free(*(*a1 + 8), v24);
      }

      return v7;
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
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v5 = 2372935687;
  __s = 0;
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
        if (strlen(v23) >= 1)
        {
          v24 = 0;
          do
          {
            v23[v24] = __tolower(v23[v24]);
            ++v24;
            v23 = v14[130];
          }

          while (strlen(v23) > v24);
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
        v33 = xmmword_1F42D6BB8;
        v35 = xmmword_1F42D6BB8;
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
  if (!strcmp(__s1, "lidscope"))
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

  else
  {
    result = strcmp(__s1, "lidmode");
    if (!result)
    {
LABEL_13:
      v10 = 1;
      goto LABEL_14;
    }

    if (strcmp(__s1, "lidvoiceswitch"))
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
  if (!strcmp(__s1, "lidscope"))
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

  else
  {
    result = strcmp(__s1, "lidmode");
    if (!result)
    {
      return result;
    }

    if (strcmp(__s1, "lidvoiceswitch"))
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

  return result;
}

uint64_t fe_voice_switch_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62466, 1048);
  if ((result & 0x80000000) != 0)
  {
    return 2372935688;
  }

  if (a1)
  {
    if (*(a1 + 1000) == 21)
    {
      v4 = *(a1 + 1024);
      if (v4)
      {
        heap_Free(*(*a1 + 8), v4);
      }
    }

    *(a1 + 1000) = 0u;
    *(a1 + 1016) = 0u;
    *(a1 + 968) = 0u;
    *(a1 + 984) = 0u;
    *(a1 + 936) = 0u;
    *(a1 + 952) = 0u;
    if (*(a1 + 8))
    {
      objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    }

    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(*a1 + 48), "COMPQUERY");
    }

    v5 = *(*a1 + 40);
    v9 = a1;
    v8 = xmmword_1F42D6BB8;
    v10 = xmmword_1F42D6BB8;
    paramc_ListenerRemove(v5, "lidscope", &v9);
    v6 = *(*a1 + 40);
    v9 = a1;
    v10 = v8;
    paramc_ListenerRemove(v6, "lidmode", &v9);
    v7 = *(*a1 + 40);
    v9 = a1;
    v10 = v8;
    paramc_ListenerRemove(v7, "lidvoiceswitch", &v9);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t hlp_TrackStartMsgMarkers(void *a1, int a2, int *a3, unsigned int a4)
{
  if (a2)
  {
    v7 = a1 + 117;
    if (*(a1 + 250) == 21)
    {
      v8 = a1[128];
      if (v8)
      {
        heap_Free(*(*a1 + 8), v8);
      }
    }

    *(a1 + 125) = 0u;
    *(a1 + 127) = 0u;
    *(a1 + 121) = 0u;
    *(a1 + 123) = 0u;
    *v7 = 0u;
    *(a1 + 119) = 0u;
  }

  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 232) != 1 || a4 == 0)
  {
    return 0;
  }

  v10 = a1 + 125;
  v11 = a4;
  while (1)
  {
    v12 = *a3;
    if (*a3 == 31)
    {
      v22 = *(a3 + 1);
      *(a1 + 121) = *a3;
      *(a1 + 123) = v22;
      goto LABEL_23;
    }

    if (v12 != 21)
    {
      if (v12 == 7)
      {
        v13 = *(a3 + 1);
        *(a1 + 117) = *a3;
        *(a1 + 119) = v13;
      }

      goto LABEL_23;
    }

    v14 = a1[128];
    if (v14)
    {
      heap_Free(*(*a1 + 8), v14);
    }

    if (!strcmp(*(a3 + 3), "normal"))
    {
      *v10 = 0u;
      *(a1 + 127) = 0u;
      goto LABEL_23;
    }

    v15 = *(a3 + 1);
    *v10 = *a3;
    *(a1 + 127) = v15;
    v16 = strlen(*(a3 + 3));
    v17 = heap_Alloc(*(*a1 + 8), (v16 + 1));
    a1[128] = v17;
    if (!v17)
    {
      break;
    }

    strcpy(v17, *(a3 + 3));
LABEL_23:
    a3 += 8;
    if (!--v11)
    {
      return 0;
    }
  }

  log_OutPublic(*(*a1 + 32), "FE_LID", 48000, 0, v18, v19, v20, v21, v24);
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
  v72 = *MEMORY[0x1E69E9840];
  memset(v70, 0, sizeof(v70));
  v69 = 0;
  v68 = 0;
  __src = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  __s1 = 0;
  bzero(v71, 0x400uLL);
  v8 = safeh_HandleCheck(a1, a2, 62466, 1048);
  if ((v8 & 0x80000000) != 0)
  {
    BestVoiceForLidLang = 2372935688;
    goto LABEL_122;
  }

  BestVoiceForLidLang = v8;
  *a5 = 1;
  v10 = *(a1 + 864);
  if (v10)
  {
    Object = (*(*(a1 + 8) + 144))(v10, *(a1 + 872), &v70[8], v70);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_121;
    }

    BestVoiceForLidLang = (*(*(a1 + 8) + 144))(*(a1 + 880), *(a1 + 888), &v70[4], v70);
    if ((BestVoiceForLidLang & 0x80000000) != 0)
    {
      goto LABEL_122;
    }

    if (!*&v70[8])
    {
      v13 = *v70;
      if (!*v70)
      {
        *a5 = 0;
        goto LABEL_122;
      }

      if (*&v70[4])
      {
        InputOutputMarkers_0 = hlp_GetInputOutputMarkers_0(a1, &v67, &__src, &v65 + 1, &v65);
        if ((InputOutputMarkers_0 & 0x80000000) != 0)
        {
          goto LABEL_149;
        }

        BestVoiceForLidLang = (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), (32 * v65));
        __src = 0;
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          goto LABEL_122;
        }

        if (HIDWORD(v65))
        {
          BestVoiceForLidLang = (*(*(a1 + 8) + 96))(*(a1 + 880), *(a1 + 888), (32 * HIDWORD(v65)));
          if ((BestVoiceForLidLang & 0x80000000) != 0)
          {
            goto LABEL_154;
          }
        }

        v13 = *v70;
      }

      if (!v13)
      {
        goto LABEL_122;
      }

      Object = synstrmaux_CloseOutStreamsOnly((a1 + 40), *(a1 + 8));
      goto LABEL_121;
    }

    Object = (*(*(a1 + 8) + 88))(*(a1 + 864), *(a1 + 872), &v69, &v68);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_121;
    }

    v12 = v68;
    BestVoiceForLidLang = hlp_GetInputOutputMarkers_0(a1, &v67, &__src, &v65 + 1, &v65);
    if ((BestVoiceForLidLang & 0x80000000) != 0)
    {
      goto LABEL_154;
    }

    if (*__src == 0x4000)
    {
      v64 = *(__src + 3);
    }

    else
    {
      (*(*(a1 + 8) + 136))(*(a1 + 864), *(a1 + 872), &v64);
    }

    v15 = v65;
    if (v65 >= 2)
    {
      v16 = 1;
      v17 = __src;
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

    if ((paramc_ParamGetStr(*(*a1 + 40), "lidstate", &__s1) & 0x80000000) == 0)
    {
      v19 = __s1;
      if (__s1)
      {
        if (*__s1)
        {
          v20 = strcmp(__s1, "__NUAN_LID_voiceswitch");
          v21 = *(*a1 + 40);
          if (v20)
          {
            v22 = v19;
            goto LABEL_107;
          }

          BestVoiceForLidLang = paramc_ParamRemove(v21, "lidstate");
          if ((BestVoiceForLidLang & 0x80000000) != 0)
          {
            goto LABEL_154;
          }

          if (*(a1 + 928) == 1 && v15)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = __src;
            while (1)
            {
              v46 = v44;
              v47 = &v45[32 * v44];
              if (*v47 == 36)
              {
                break;
              }

LABEL_102:
              v44 = v46 + 1;
              v42 = (v46 + 1);
              if (v15 <= v42)
              {
                goto LABEL_111;
              }
            }

            if (v43)
            {
              v48 = *(v47 + 3);
              if (*(v48 + 3) == 95 && (*(v48 + 4) == 108 && *(v48 + 5) == 105 || *(v48 + 4) == 118 && *(v48 + 5) == 108) || !strcmp(v48, "normal"))
              {
                v12 = (*(v47 + 3) - v64);
                v68 = *(v47 + 3) - v64;
                LODWORD(v65) = v42;
                *a5 = 2;
                v15 = v42;
                goto LABEL_111;
              }

              goto LABEL_101;
            }

            v49 = *(v47 + 3);
            if (v49[3] == 95)
            {
              if (v49[4] == 108 && v49[5] == 105)
              {
                v43 = 1;
LABEL_101:
                ++v43;
                goto LABEL_102;
              }

              if (v49[4] == 118)
              {
                v43 = v49[5] == 108;
                goto LABEL_101;
              }
            }

            v43 = 0;
            goto LABEL_101;
          }

LABEL_111:
          if (!v12)
          {
LABEL_114:
            if (!v15)
            {
              v55 = 0;
LABEL_138:
              if (v68)
              {
                BestVoiceForLidLang = (*(*(a1 + 8) + 96))(*(a1 + 864), *(a1 + 872));
                if ((BestVoiceForLidLang & 0x80000000) != 0)
                {
                  goto LABEL_154;
                }
              }

              if (!HIDWORD(v65))
              {
                goto LABEL_154;
              }

              if (*a5 == 2)
              {
                InputOutputMarkers_0 = hlp_TrackStartMsgMarkers(a1, v55 == 0, v67, HIDWORD(v65));
                if ((InputOutputMarkers_0 & 0x80000000) != 0)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                if (*(a1 + 1000) == 21)
                {
                  v58 = *(a1 + 1024);
                  if (v58)
                  {
                    heap_Free(*(*a1 + 8), v58);
                  }
                }

                *(a1 + 1000) = 0u;
                *(a1 + 1016) = 0u;
                *(a1 + 968) = 0u;
                *(a1 + 984) = 0u;
                *(a1 + 936) = 0u;
                *(a1 + 952) = 0u;
              }

              InputOutputMarkers_0 = (*(*(a1 + 8) + 96))(*(a1 + 880), *(a1 + 888), (32 * HIDWORD(v65)));
LABEL_149:
              BestVoiceForLidLang = InputOutputMarkers_0;
              goto LABEL_154;
            }

            if (*a5 == 2)
            {
              if (*(__src + 3) - v64 >= v12)
              {
                v52 = 0;
              }

              else
              {
                v51 = 0;
                do
                {
                  v52 = ++v51;
                }

                while (v15 > v51 && *(__src + 8 * v51 + 3) - v64 < v12);
              }

              LODWORD(v65) = v52;
              if (HIDWORD(v65) && v67[3] - v64 < v68)
              {
                v56 = 0;
                do
                {
                  v57 = ++v56;
                }

                while (HIDWORD(v65) > v56 && v67[8 * v56 + 3] - v64 < v68);
              }

              else
              {
                v57 = 0;
              }

              HIDWORD(v65) = v57;
              if (!v52)
              {
                goto LABEL_136;
              }
            }

            else
            {
              v52 = v15;
            }

            if (*__src == 0x4000)
            {
              v55 = 0;
              *(__src + 4) = v12;
              goto LABEL_137;
            }

LABEL_136:
            hlp_AddStartMsgMarkers(a1, __src, &v65, v12);
            v55 = 1;
            v52 = v65;
LABEL_137:
            BestVoiceForLidLang = (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), 32 * v52);
            __src = 0;
            if ((BestVoiceForLidLang & 0x80000000) != 0)
            {
              goto LABEL_122;
            }

            goto LABEL_138;
          }

          v60 = 0;
          Object = objc_GetObject(*(*a1 + 48), "CHARCOUNT", &v60);
          if ((Object & 0x80000000) == 0)
          {
            (*(v60[1] + 72))(v60[2], v60[3], v69, v12);
            objc_ReleaseObject(*(*a1 + 48), "CHARCOUNT");
            BestVoiceForLidLang = (*(*(a1 + 8) + 104))(*(a1 + 896), *(a1 + 904), v69, v12);
            if ((BestVoiceForLidLang & 0x80000000) != 0)
            {
              goto LABEL_154;
            }

            goto LABEL_114;
          }

LABEL_121:
          BestVoiceForLidLang = Object;
          goto LABEL_122;
        }
      }
    }

    if (*(a1 + 928) == 2)
    {
      if (v15)
      {
        v23 = 0;
        while (*(__src + 8 * v23) != 36)
        {
          if (v15 <= ++v23)
          {
            goto LABEL_105;
          }
        }

        BestVoiceForLidLang = hlp_FindBestVoiceForLidLang(a1, *(a1 + 932) == 0, *(__src + 4 * v23 + 3), v71);
        if ((BestVoiceForLidLang & 0x80000000) != 0)
        {
          goto LABEL_154;
        }
      }

LABEL_105:
      if (!v71[0])
      {
        goto LABEL_111;
      }

      v21 = *(*a1 + 40);
      v22 = v71;
LABEL_107:
      v50 = paramc_ParamSetStr(v21, "pipelineswitchvoice", v22);
      if ((v50 & 0x80000000) != 0)
      {
LABEL_152:
        BestVoiceForLidLang = v50;
        goto LABEL_153;
      }

      BestVoiceForLidLang = paramc_ParamSetStr(*(*a1 + 40), "lidstate", "__NUAN_LID_voiceswitch");
      if ((BestVoiceForLidLang & 0x80000000) != 0)
      {
        goto LABEL_153;
      }

      *a5 = 3;
      v68 = 0;
      HIDWORD(v65) = 0;
LABEL_154:
      if (__src)
      {
        (*(*(a1 + 8) + 120))(*(a1 + 912), *(a1 + 920), 0);
      }

      goto LABEL_122;
    }

    if (!v15)
    {
LABEL_80:
      LODWORD(v65) = v15;
      goto LABEL_111;
    }

    v24 = 0;
    while (1)
    {
      if (*a5 != 1)
      {
        goto LABEL_80;
      }

      v25 = __src;
      v26 = __src + 32 * v24;
      if (*v26 == 36)
      {
        v27 = *(v26 + 3);
        if (!strcmp(v27, "normal"))
        {
          if (*(a1 + 1032) && (paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &v62) & 0x80000000) == 0 && v62 && *v62 && ((paramc_ParamGetStr(*(*a1 + 40), "voice", &v63) & 0x80000000) != 0 || !v63 || LH_stricmp(v63, v62)))
          {
            v35 = *(*a1 + 40);
            v36 = v62;
            if (*(__src + 8 * v24 + 3) == v64)
            {
              v59 = "pipelineswitchvoice";
LABEL_157:
              BestVoiceForLidLang = paramc_ParamSetStr(v35, v59, v36);
              if ((BestVoiceForLidLang & 0x80000000) == 0)
              {
                v15 = 0;
                v12 = 0;
                *a5 = 3;
                v68 = 0;
                HIDWORD(v65) = 0;
                goto LABEL_80;
              }

LABEL_153:
              log_OutPublic(*(*a1 + 32), "FE_LID", 48000, 0, v37, v38, v39, v40, v60);
              goto LABEL_154;
            }

            goto LABEL_77;
          }
        }

        else if (strcmp(v27, "unknown") && strncmp(v27, "vceunkn", 7uLL))
        {
          v28 = *(v26 + 3);
          v29 = v12 - v28 + v64;
          v30 = v24;
          while (v15 > ++v30)
          {
            v31 = v25[8 * v30];
            if (v31 == 36 || v31 == 7)
            {
              v29 = v25[8 * v30 + 3] - v28;
              break;
            }
          }

          if (v29)
          {
            v33 = *(a1 + 932);
            if (v27 && strstr(v27, "_vli"))
            {
              v33 = 0;
            }

            BestVoiceForLidLang = hlp_FindBestVoiceForLidLang(a1, v33 == 0, v27, v71);
            if ((BestVoiceForLidLang & 0x80000000) != 0)
            {
              goto LABEL_154;
            }

            v34 = v71[0];
            if (!(v33 | v71[0]))
            {
              if ((paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &v62) & 0x80000000) == 0 && v62 && *v62)
              {
                __strcpy_chk();
              }

              v34 = v71[0];
            }

            if (v34)
            {
              v35 = *(*a1 + 40);
              if (*(__src + 8 * v24 + 3) == v64)
              {
                v50 = paramc_ParamSetStr(v35, "pipelineswitchvoice", v71);
                if ((v50 & 0x80000000) == 0)
                {
                  v35 = *(*a1 + 40);
                  v59 = "lidstate";
                  v36 = "__NUAN_LID_voiceswitch";
                  goto LABEL_157;
                }

                goto LABEL_152;
              }

              v36 = v71;
LABEL_77:
              BestVoiceForLidLang = paramc_ParamSetStr(v35, "lidstate", v36);
              if ((BestVoiceForLidLang & 0x80000000) != 0)
              {
                goto LABEL_153;
              }

              *a5 = 2;
              v41 = *(__src + 8 * v24 + 3);
              v12 = (v41 - v64);
              v68 = v41 - v64;
            }
          }
        }
      }

      if (v15 <= ++v24)
      {
        goto LABEL_80;
      }
    }
  }

LABEL_122:
  v53 = *MEMORY[0x1E69E9840];
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
      memcpy(*a3, *a2, 32 * v13);
      *a5 = *a4;
    }
  }

  return v12;
}

uint64_t hlp_FindBestVoiceForLidLang(void *a1, int a2, char *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "lidoriginalvoice", &v15);
  if ((Str & 0x80000000) != 0)
  {
    v15 = 0;
  }

  v20 = 0;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  if (a3)
  {
    v9 = strstr(a3, "_vli");
    if (v9)
    {
      v10 = v9;
      VoiceParamExtract((v9 + 4), "gender", &v19[8]);
      VoiceParamExtract((v10 + 4), "age", &v19[148]);
      VoiceParamExtract((v10 + 4), "model", &v19[28]);
    }

    v11 = 4;
    if (a3[2] == 120)
    {
      v11 = 20;
    }

    if (!a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v11 = 4;
    if (!a2)
    {
LABEL_23:
      result = 0;
      *a4 = 0;
      goto LABEL_26;
    }
  }

  v12 = a1[4];
  if (!v12)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    strncpy(&v16[v11], a3, 3uLL);
  }

  if (v15)
  {
    __strcpy_chk();
    v12 = a1[4];
  }

  if (((*(v12 + 136))(a1[2], a1[3], *(*a1 + 24), *(*a1 + 40), v16, a4, 1024) & 0x80000000) != 0)
  {
    result = Str;
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    BYTE8(v17) = 0;
    result = (*(a1[4] + 136))(a1[2], a1[3], *(*a1 + 24), *(*a1 + 40), v16, a4, 1024);
    goto LABEL_26;
  }

  if (*a4)
  {
    result = 0;
  }

  else
  {
    result = Str;
  }

  if ((Str & 0x80000000) == 0 && !*a4)
  {
    goto LABEL_25;
  }

LABEL_26:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hlp_AddStartMsgMarkers(void *a1, char *__src, int *a3, int a4)
{
  v8 = *a3;
  if (v8)
  {
    memmove(__src + 32, __src, 32 * v8);
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
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0;
  if (result)
  {
    result = strlen(result);
    if (result <= 0x7F)
    {
      __strcpy_chk();
      result = strhelper_SafeStrtok(v13, "{}();,", &v12);
      if (result)
      {
        v5 = result;
        while (1)
        {
          v6 = strchr(v5, 58);
          if (v6)
          {
            v7 = v6;
            v8 = strlen(a2);
            result = strncmp(v5, a2, v8);
            if (!result)
            {
              break;
            }
          }

          result = strhelper_SafeStrtok(v13, "{}();,", &v12);
          v5 = result;
          if (!result)
          {
            goto LABEL_11;
          }
        }

        v10 = v7[1];
        v9 = v7 + 1;
        if (v10)
        {
          result = strcpy(a3, v9);
        }
      }
    }
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
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

uint64_t fxd_LinSpace(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a4 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = ((((a3 - a2) << 16) >> 7) / ((a4 << 8) + 256)) >> 1;
  v5 = (a4 + 7) & 0xFFFFFFF8;
  v6 = vdupq_n_s16(v4);
  v7 = vmlaq_s16(vdupq_n_s16(a2), v6, xmmword_1C3810EB0);
  v8 = vdupq_n_s16(8 * v4);
  v9 = vdupq_n_s64(a4 - 1);
  v10 = xmmword_1C37BDD80;
  v11 = xmmword_1C37BDD90;
  v12 = xmmword_1C378AEF0;
  v13 = xmmword_1C378AF00;
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

uint64_t fxd_HighPrecisionCosLspToAi(uint64_t result, _DWORD *a2, int a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v3 = &v47 + a3;
  v3[3] = 0x800000;
  v49 = 0x800000;
  v3[1] = 0x800000;
  v40 = v3 + 1;
  v4 = -512 * *result;
  v47 = 0x800000;
  v48 = v4;
  v3[2] = -512 * *(result + 2);
  if (a3 >= 3)
  {
    v5 = result;
    v39 = ((a3 - 3) >> 1) + 2;
    v6 = &v49;
    v46 = &v48;
    v7 = 1;
    v8 = 2;
    v9 = 16;
    v44 = 2;
    v45 = v50;
    v10 = &v50[a3];
    do
    {
      v41 = v9;
      v42 = v7;
      v11 = v44;
      v12 = *(v5 + 2 * v44);
      v43 = v6;
      v44 += 2;
      *(&v47 + v44) = 0x800000;
      v13 = v11 | 1;
      *(&v47 + (v11 | 1)) = *(&v46 + v11 + 1) - (v12 << 9);
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
      v18 = v45;
      v19 = v46;
      v20 = v8;
      do
      {
        v21 = *v18++;
        *v19-- = v21;
        --v20;
      }

      while (v20 > 1);
      v22 = *(v5 + 2 * v13);
      v40[v44] = 0x800000;
      v40[v13] = v3[v11] - (v22 << 9);
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
      v26 = v41;
      v27 = v8;
      do
      {
        v3[v27--] = *(v3 + v26);
        v26 += 4;
      }

      while (v27 > 1);
      v7 = v42 + 1;
      v6 = v43 + 2;
      ++v8;
      ++v45;
      ++v46;
      v10 += 2;
      v9 = v41 + 4;
    }

    while (v42 + 1 != v39);
  }

  v28 = a2;
  if (a3 >= 1)
  {
    v29 = a3;
    v30 = *v40;
    v31 = v47;
    v32 = &v49;
    do
    {
      v33 = *(v32 - 1);
      v34 = v32[v38];
      *v28++ = 16 * (v34 + v33 - v30 + v31);
      ++v32;
      v31 = v33;
      v30 = v34;
      --v29;
    }

    while (v29);
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}