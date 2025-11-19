uint64_t twoPassIgtreePhrasing(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v53 = 0;
  v54 = 0;
  if (*(a2 + 8) >= 2u)
  {
    v9 = *(a5[8] + 1296) - 1;
    v10 = a5[15];
    if (v10)
    {
      v11 = *(v10 + 1296) - 1;
      if (v11 > v9)
      {
        v9 = v11;
      }
    }

    v55 = 0;
    v12 = allocateFeatureVector(a1, v9, &v55, &v54);
    if (v12 < 0)
    {
      return v12 | 0x8A002000;
    }

    v13 = *(a5[8] + 1296);
    a5[12] = a3;
    a5[13] = a4;
    if (*(a2 + 8) < 2u)
    {
      v5 = 0;
      if (a5[15])
      {
        a5[19] = a3;
        a5[20] = a4;
      }
    }

    else
    {
      v48 = a4;
      v5 = 0;
      v14 = 0;
      v15 = v55;
      v49 = (v13 - 1);
      do
      {
        v16 = *a2 + 32 * v14;
        if (*(v16 + 4) != 2 || *(v16 + 36) != 2)
        {
          v17 = *(v16 + 2) - 1;
          if (v49)
          {
            for (i = 0; i != v49; ++i)
            {
              (*(a5[9] + i * 8))(a5 + 7, v17, v15[i], 128);
            }
          }

          v5 = igtree_Process(a5[8], v15, &v53);
          if ((v5 & 0x80000000) == 0)
          {
            v21 = "?";
            if ((*(*a3 + 224 * v17 + 75) - 1) <= 3u)
            {
              v21 = off_1E81A4428[(*(*a3 + 224 * v17 + 75) - 1)];
            }

            v22 = v53;
            traceFeatureVector(a1, (a5 + 7), v17, v15, v53, v21, v19, v20);
            if (*(*a3 + 224 * v17 + 75))
            {
              v23 = v21;
            }

            else
            {
              v23 = v22;
            }

            v24 = *v23;
            if (v24 == 43)
            {
              v25 = -v23[1];
            }

            else
            {
              v25 = 43 - v24;
            }

            if (v25)
            {
              v26 = 2;
            }

            else
            {
              v26 = 4;
            }

            *(*a3 + 224 * v17 + 73) = v26;
          }
        }

        ++v14;
        v27 = *(a2 + 8);
      }

      while ((v27 - 1) > v14);
      v28 = a5[15];
      if (v28)
      {
        v29 = *(v28 + 1296);
        a5[19] = a3;
        a5[20] = v48;
        v30 = v55;
        if (v27 >= 2)
        {
          v31 = 0;
          v50 = (v29 - 1);
          do
          {
            v32 = *a2 + 32 * v31;
            if (*(v32 + 4) != 2 || *(v32 + 36) != 2)
            {
              v33 = (*(v32 + 2) - 1);
              v34 = *a3 + 224 * v33;
              if (*(v34 + 73) != 4 || *(v34 + 75) != 4)
              {
                if (v50)
                {
                  for (j = 0; j != v50; ++j)
                  {
                    (*(a5[16] + j * 8))(a5 + 14, v33, v30[j], 128);
                  }
                }

                v5 = igtree_Process(a5[15], v30, &v53);
                if ((v5 & 0x80000000) == 0)
                {
                  v38 = "?";
                  if ((*(*a3 + 224 * v33 + 75) - 1) <= 3u)
                  {
                    v38 = off_1E81A4448[(*(*a3 + 224 * v33 + 75) - 1)];
                  }

                  v39 = v53;
                  traceFeatureVector(a1, (a5 + 14), v33, v30, v53, v38, v36, v37);
                  v40 = *a3 + 224 * v33;
                  v42 = *(v40 + 73);
                  v41 = (v40 + 73);
                  if (v42 != 4)
                  {
                    if (*(*a3 + 224 * v33 + 75))
                    {
                      v43 = v38;
                    }

                    else
                    {
                      v43 = v39;
                    }

                    v44 = *v43;
                    if (v44 == 43)
                    {
                      v45 = -v43[1];
                    }

                    else
                    {
                      v45 = 43 - v44;
                    }

                    if (v45)
                    {
                      v46 = 2;
                    }

                    else
                    {
                      v46 = 3;
                    }

                    *v41 = v46;
                  }
                }
              }
            }

            ++v31;
          }

          while (*(a2 + 8) - 1 > v31);
        }

        goto LABEL_59;
      }
    }

    v30 = v55;
LABEL_59:
    heap_Free(*(a1 + 8), v30);
    heap_Free(*(a1 + 8), v54);
    return v5;
  }

  return 0;
}

uint64_t threePassIgtreePhrasing(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v8 = a2;
  v38 = 0;
  v39 = 0;
  v10 = twoPassIgtreePhrasing(a1, a2, a3, a4, a5);
  if (v10 < 0)
  {
    return v10 | 0x8A002000;
  }

  v40 = 0;
  v10 = allocateFeatureVector(a1, (*(a5[22] + 1296) - 1), &v40, &v39);
  if (v10 < 0)
  {
    return v10 | 0x8A002000;
  }

  v35 = a1;
  v11 = *(a5[22] + 1296);
  a5[26] = a3;
  a5[27] = a4;
  LODWORD(v12) = *(v8 + 8);
  v13 = v40;
  if (*(v8 + 8))
  {
    v14 = 0;
    v15 = 0;
    v37 = 0;
    v36 = (v11 - 1);
    v34 = v8;
    while (1)
    {
      v16 = *a3;
      v17 = (*(*v8 + 32 * v14 + 2) - 1);
      v18 = *a3 + 224 * v17;
      if (*(v18 + 216) == 2)
      {
        *(v18 + 73) = 4;
      }

      if (v12 - 1 == v15 || *(v16 + 224 * v17 + 73) - 3 <= 1)
      {
        if (v36)
        {
          for (i = 0; i != v36; ++i)
          {
            (*(a5[23] + i * 8))(a5 + 21, v17, v13[i], 128);
          }
        }

        v37 = igtree_Process(a5[22], v13, &v38);
        if ((v37 & 0x80000000) == 0)
        {
          v22 = v38;
          if (*(*a3 + 224 * v17 + 120))
          {
            v23 = *(*a3 + 224 * v17 + 120);
          }

          else
          {
            v23 = "?";
          }

          traceFeatureVector(v35, (a5 + 21), v17, v13, v38, v23, v20, v21);
          v24 = *a3 + 224 * v17;
          v25 = *(v24 + 112);
          if (*(v24 + 120))
          {
            v22 = v23;
          }

          v26 = strlen(v22);
          v27 = heap_Realloc(*(v35 + 8), v25, (v26 + 1));
          if (!v27)
          {
            log_OutPublic(*(v35 + 32), "FE_PHRASING", 37000, 0, v28, v29, v30, v31, v33);
            return 2315264010;
          }

          *(*a3 + 224 * v17 + 112) = v27;
          strcpy(v27, v22);
          v8 = v34;
        }
      }

      ++v14;
      v12 = *(v8 + 8);
      v15 = v14;
      if (v14 >= v12)
      {
        goto LABEL_24;
      }
    }
  }

  v37 = 0;
LABEL_24:
  heap_Free(*(v35 + 8), v13);
  heap_Free(*(v35 + 8), v39);
  return v37;
}

uint64_t simplifiedTokenPhrasing(uint64_t a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  if (*(a2 + 4) >= 2u)
  {
    v32 = v4;
    v33 = v5;
    v10 = 0;
    v11 = 0;
    v12 = *a2;
    do
    {
      v31 = 0;
      v13 = v12 + 32 * v11;
      if (*(v13 + 4) == 2)
      {
        v14 = v12 + v10;
        if (*(v12 + v10 + 36) == 2)
        {
          v30 = 0;
          v28 = 0;
          v29 = 0;
          FLOATSUR_PLUS(&v30, a4 + 194, a4 + 196);
          FLOATSUR_PLUS(&v28, a4 + 192, &v30);
          FLOATSUR_TIMES(&v30, (v13 + 8), a4 + 192);
          FLOATSUR_TIMES(&v29 + 2, (v14 + 40), a4 + 194);
          FLOATSUR_TIMES(&v29, (v13 + 12), a4 + 196);
          FLOATSUR_PLUS(&v28 + 2, &v30, &v29 + 2);
          FLOATSUR_PLUS(&v28 + 2, &v28 + 2, &v29);
          FLOATSUR_DIV(&v30, &v28 + 2, &v28);
          FLOATSUR_TIMES_INT(&v31, &v30, 0xAu, 0);
          v26 = *(v14 + 40);
          v27 = *(v14 + 42);
          v24 = *(v13 + 12);
          v25 = *(v13 + 14);
          v22 = *(v13 + 8);
          v23 = *(v13 + 10);
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "bndVal[%d] = %d.%d (thisphraseWeight=%d.%d thisBndWeight=%d.%d nextphraseWeight=%d.%d)", v15, v16, v17, v11);
          if (FLOATSUR_LT(&v31, a4 + 186))
          {
            v12 = *a2;
            v18 = *a3 + 224 * *(*a2 + 32 * v11 + 2);
            v19 = 2;
          }

          else
          {
            v20 = FLOATSUR_LT(&v31, a4 + 188);
            v12 = *a2;
            v18 = *a3 + 224 * *(*a2 + 32 * v11 + 2);
            if (v20)
            {
              v19 = 3;
            }

            else
            {
              v19 = 4;
            }
          }

          *(v18 - 151) = v19;
        }
      }

      v11 = (v11 + 1);
      v10 += 32;
    }

    while (*(a2 + 4) - 1 > v11);
  }

  return 0;
}

uint64_t tryLoadingIgtreeModel(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v41 = *MEMORY[0x1E69E9840];
  memset(v32, 0, sizeof(v32));
  *(a6 + 8) = 0;
  __s1 = 0;
  v31 = 0;
  v28 = 0;
  v29 = "";
  memset(v40, 0, sizeof(v40));
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  Str = paramc_ParamGetStr(*(a5 + 40), "langcode", &v31);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  Str = paramc_ParamGetStr(*(a5 + 40), "fecfg", &v29);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  v33 = 0;
  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  if (a8 == 1)
  {
    Str = paramc_ParamGetStr(*(a5 + 40), "voice", &__s1);
    if (Str < 0)
    {
LABEL_11:
      v24 = Str;
      log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "Could not assemble broker string for IGtree phrasing model %s", v17, v18, v19, a7);
      result = v24 | 0x8A002000;
      goto LABEL_12;
    }

    if (strstr(__s1, "uni"))
    {
      __s1 = 0;
    }

    else
    {
      __strcat_chk();
      __strcat_chk();
    }
  }

  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  Str = brokeraux_ComposeBrokerString(a5, &v33, 1, 1, v31, __s1, 0, v32, 0x80uLL);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  if ((igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, &v28, 2, v32, "IGTR", 1031, 0) & 0x80000000) != 0)
  {
    log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "failed to read IGtree phrasing model data - going on without", v20, v21, v22, v27);
    v23 = 0;
  }

  else
  {
    v23 = v28;
  }

  result = 0;
  *(a6 + 8) = v23;
LABEL_12:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

char *BND_pos_current(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  LODWORD(v4) = a4;
  *__s1 = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 8) <= a2)
  {
    v4 = a4;
    v11 = a4 - 1;
    v12 = "%";
LABEL_8:
    result = strncat(__s1, v12, v11);
    goto LABEL_9;
  }

  v7 = *v6 + 224 * a2;
  if (!*(v7 + 104))
  {
    v12 = *(v7 + 88);
    if (!v12)
    {
      v12 = *(*(v7 + 16) + 8 * *(*(a1 + 48) + 18));
    }

    v4 = a4;
    v11 = a4 - 1;
    goto LABEL_8;
  }

  v8 = strncat(__s1, "_", (a4 - 1));
  strncat(v8, *(v7 + 104), v4 - 2);
  v9 = strlen(*(v7 + 104));
  result = strncat(__s1, "_", v4 - 2 - v9);
  v4 = v4;
LABEL_9:
  __s1[v4 - 1] = 0;
  return result;
}

char *BND_pos_prev(char *result, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = *(**(result + 5) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(result + 6) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_pos_current(result, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
LABEL_6:
    *a3 = 37;
    return result;
  }

  v7 = v6 - 1;
  return BND_pos_current(result, v7, a3, a4);
}

size_t BND_syn_boundary_current(size_t result, unsigned int a2, char *__s1, unsigned int a4)
{
  v6 = *(*(result + 48) + 24);
  *__s1 = 0;
  v7 = *(result + 40);
  if (*(v7 + 4) <= a2)
  {

    return strncat(__s1, "%", a4 - 1);
  }

  v8 = *v7;
  for (i = a2; ; --i)
  {
    v10 = *(v8 + 224 * i + 56);
    if (!v10)
    {
LABEL_9:
      if (!i)
      {
        goto LABEL_23;
      }

      continue;
    }

    v11 = v10 + 32 * v6;
    if (*v11 == 1)
    {
      break;
    }

    if (a2 <= i)
    {
      goto LABEL_9;
    }

    if (!i || *(v11 + 4) == 1)
    {
      goto LABEL_23;
    }
  }

  v12 = *(v11 + 16);
  if (*v12 == 79 && !*(v12 + 1))
  {
LABEL_23:
    *__s1 = 79;
    return result;
  }

  if (a2 == i)
  {
    v13 = 66;
  }

  else
  {
    v13 = 73;
  }

  *__s1 = v13;
  *(__s1 + 1) = 45;
  v14 = strncat(__s1, v12, a4 - 3);
  __s1[a4 - 1] = 0;
  result = strlen(v14);
  if (result >= 5)
  {
    v15 = &__s1[result];
    if (__s1[result - 2] == 45 && *(v15 - 1) == 80)
    {
      *(v15 - 2) = 0;
    }
  }

  return result;
}

size_t BND_syn_boundary_prev(size_t result, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = *(**(result + 40) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(result + 48) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_syn_boundary_current(result, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
LABEL_6:
    *a3 = 37;
    return result;
  }

  v7 = v6 - 1;
  return BND_syn_boundary_current(result, v7, a3, a4);
}

char *BND_orth_uni200(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  LODWORD(v4) = a4;
  *__s1 = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 8) <= a2)
  {
    v4 = a4;
    v11 = a4 - 1;
    v12 = "%";
LABEL_5:
    v13 = __s1;
LABEL_6:
    result = strncat(v13, v12, v11);
    goto LABEL_7;
  }

  v7 = *v6 + 224 * a2;
  if (*(v7 + 104))
  {
    v8 = strncat(__s1, "_", (a4 - 1));
    strncat(v8, *(v7 + 104), v4 - 2);
    v9 = strlen(*(v7 + 104));
    result = strncat(__s1, "_", v4 - 2 - v9);
    v4 = v4;
    goto LABEL_7;
  }

  v15 = *(v7 + 16);
  v16 = *(*(a1 + 48) + 16);
  v17 = *(v15 + 8 * v16);
  if (!v17)
  {
    v4 = a4;
    v11 = a4 - 1;
    v12 = "?";
    goto LABEL_5;
  }

  v18 = strlen(*(v15 + 8 * v16));
  v19 = strncat(__s1, " ", v4 - 1);
  v20 = strncat(v19, v17, v4 - 2);
  v4 = v4;
  strncat(v20, " ", v4 - v18 - 2);
  if (v18 >= 2)
  {
    v21 = __s1[1];
    if (v21 != 32)
    {
      v22 = __s1 + 2;
      do
      {
        if ((v21 - 91) >= 0xFFFFFFE6)
        {
          *(v22 - 1) = v21 | 0x60;
        }

        v23 = *v22++;
        v21 = v23;
      }

      while (v23 != 32);
    }
  }

  result = strstr(*(a1 + 24), __s1);
  if (!result)
  {
    *__s1 = 0;
    v12 = "?";
    v13 = __s1;
    v11 = v4 - 1;
    goto LABEL_6;
  }

  if (v18)
  {
    v24 = 0;
    v25 = __s1 + 1;
    do
    {
      *(v25 - 1) = *v25;
      ++v24;
      ++v25;
    }

    while (v18 > v24);
  }

  __s1[v18] = 0;
LABEL_7:
  __s1[v4 - 1] = 0;
  return result;
}

char *BND_punct_current(char *result, unsigned int a2, char *__s1, unsigned int a4)
{
  v4 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v6 = *(*(**(result + 5) + 224 * a2 + 16) + 8 * *(*(result + 6) + 16));
  *__s1 = 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        result = strchr(__s, v7);
        if (result)
        {
          v9 = 1;
          result = strncat(__s1, v6, 1uLL);
          --v4;
        }

        else
        {
          if (v9 == 1 || !v8)
          {
            result = strncat(__s1, "_", --v4);
          }

          v9 = 0;
        }

        v10 = *++v6;
        v7 = v10;
        --v8;
      }

      while (v10);
    }

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = *MEMORY[0x1E69E9840];

    return strncat(__s1, "?", a4 - 1);
  }

  return result;
}

uint64_t BND_phr1_dist(uint64_t result, int a2, _WORD *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    result = bnd_dist(result, a2, 4);
    if (result >= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | 0x30;
  }

  return result;
}

uint64_t BND_phr1_dist3(uint64_t result, int a2, _WORD *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    result = bnd_dist(result, a2, 4);
    if (result >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | 0x30;
  }

  return result;
}

uint64_t BND_phr1_dist3_fwd(uint64_t result, unsigned int a2, char *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v4 = *(result + 40);
    v5 = *(v4 + 4);
    if (v5 <= a2)
    {
      v14 = 48;
    }

    else
    {
      v6 = 0;
      v7 = *v4;
      while (1)
      {
        v8 = v7 + 224 * a2;
        v9 = *(v8 + 56);
        if (v9)
        {
          v10 = v9 + 32 * *(*(result + 48) + 22);
          if (*v10 == 1)
          {
            LOWORD(a2) = *(v10 + 10);
            v8 = v7 + 224 * a2;
          }
        }

        if (*(v8 + 73) == 4 || v5 - 1 == a2)
        {
          break;
        }

        v12 = v6 + 1;
        LOWORD(a2) = a2 + 1;
        if (v5 > a2 && v6++ < 2)
        {
          continue;
        }

        goto LABEL_17;
      }

      v12 = v6;
LABEL_17:
      v14 = v12 + 48;
    }

    *a3 = v14;
    a3[1] = 0;
  }

  return result;
}

uint64_t BND_phr2_dist(uint64_t result, int a2, _WORD *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    result = bnd_dist(result, a2, 3);
    if (result >= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = result;
    }

    *a3 = v5 | 0x30;
  }

  return result;
}

uint64_t BND_bnd1_dist_min_passed(uint64_t result, int a2, char *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v5 = result;
    result = bnd_dist(result, a2, 4);
    if (*(v5 + 32) >= result)
    {
      v6 = 45;
    }

    else
    {
      v6 = 43;
    }

    *a3 = v6;
    a3[1] = 0;
  }

  return result;
}

char *BND_trailpunct(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(*(**(a1 + 40) + 224 * a2 + 16) + 8 * *(*(a1 + 48) + 16));
  *__s1 = 0;
  if (v6 && (v7 = strlen(v6), *v6))
  {
    v8 = &v6[v7 - 1];
    *&__s1[strlen(__s1)] = 95;
    result = strchr(__s, *v8);
    if (result)
    {
      result = strncat(__s1, v8, 1uLL);
    }

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return strncat(__s1, "?", a4 - 1);
  }

  return result;
}

char *BND_doc_class(char *result, unsigned int a2, char *__s1, unsigned int a4)
{
  v4 = **(result + 5);
  *__s1 = 0;
  if (a4 >= 2)
  {
    v5 = *(v4 + 224 * a2 + 152);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = "%";
    }

    return strncat(__s1, v6, a4 - 1);
  }

  return result;
}

size_t BND_doc_punc(size_t result, unsigned int a2, char *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    __n_2[9] = v4;
    __n_2[10] = v5;
    v6 = a3;
    if (*(*(result + 40) + 8) <= a2)
    {
LABEL_45:
      *v6 = 37;
      return result;
    }

    __n_2[0] = 0;
    __n = 0;
    *a3 = 0;
    v8 = *(result + 40);
    v9 = *v8 + 224 * a2;
    if (*(v8 + 8) - 1 > a2 && hlp_NLUStrFind(*(v9 + 384), "S_PUNC", __n_2, &__n))
    {
      v10 = 0;
      do
      {
        if (v10 && v10 + 1 < a4)
        {
          *&v6[strlen(v6)] = 59;
          v10 = (v10 + 1);
        }

        if (v10 + 7 < a4)
        {
          *&v6[strlen(v6)] = 0x3A434E55505F53;
          v10 = (v10 + 7);
        }

        v11 = __n;
        v12 = v10 + __n;
        if (v12 < a4)
        {
          strncat(v6, __n_2[0], __n);
          v10 = v12;
          v11 = __n;
        }
      }

      while (hlp_NLUStrFind(&__n_2[0][v11], "S_PUNC", __n_2, &__n));
    }

    else
    {
      v10 = 0;
    }

    if (hlp_NLUStrFind(*(v9 + 160), "I_PUNC", __n_2, &__n))
    {
      do
      {
        if (v10 && v10 + 1 < a4)
        {
          *&v6[strlen(v6)] = 59;
          v10 = (v10 + 1);
        }

        if (v10 + 7 < a4)
        {
          *&v6[strlen(v6)] = 0x3A434E55505F49;
          v10 = (v10 + 7);
        }

        v13 = __n;
        v14 = v10 + __n;
        if (v14 < a4)
        {
          strncat(v6, __n_2[0], __n);
          v10 = v14;
          v13 = __n;
        }
      }

      while (hlp_NLUStrFind(&__n_2[0][v13], "I_PUNC", __n_2, &__n));
    }

    if (hlp_NLUStrFind(*(v9 + 160), "S_PUNC", __n_2, &__n))
    {
      do
      {
        if (v10 && v10 + 1 < a4)
        {
          *&v6[strlen(v6)] = 59;
          v10 = (v10 + 1);
        }

        if (v10 + 7 < a4)
        {
          *&v6[strlen(v6)] = 0x3A434E55505F49;
          v10 = (v10 + 7);
        }

        v15 = __n;
        v16 = v10 + __n;
        if (v16 < a4)
        {
          strncat(v6, __n_2[0], __n);
          v10 = v16;
          v15 = __n;
        }
      }

      while (hlp_NLUStrFind(&__n_2[0][v15], "S_PUNC", __n_2, &__n));
    }

    for (result = hlp_NLUStrFind(*(v9 + 160), "E_PUNC", __n_2, &__n); result; result = hlp_NLUStrFind(&__n_2[0][v17], "E_PUNC", __n_2, &__n))
    {
      if (v10 && v10 + 1 < a4)
      {
        *&v6[strlen(v6)] = 59;
        v10 = (v10 + 1);
      }

      if (v10 + 7 < a4)
      {
        *&v6[strlen(v6)] = 0x3A434E55505F45;
        v10 = (v10 + 7);
      }

      v17 = __n;
      v18 = v10 + __n;
      if (v18 < a4)
      {
        strncat(v6, __n_2[0], __n);
        v10 = v18;
        v17 = __n;
      }
    }

    if (!v10)
    {
      result = strlen(v6);
      v6 += result;
      goto LABEL_45;
    }
  }

  return result;
}

char *BND_orth(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  *__s1 = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 8) <= a2)
  {
    v11 = a4;
    v12 = a4 - 1;
    v13 = "%";
LABEL_5:
    v14 = __s1;
LABEL_6:
    result = strncat(v14, v13, v12);
    goto LABEL_7;
  }

  v7 = *v6 + 224 * a2;
  if (*(v7 + 104))
  {
    v8 = strncat(__s1, "_", (a4 - 1));
    strncat(v8, *(v7 + 104), (a4 - 2));
    v9 = strlen(*(v7 + 104));
    result = strncat(__s1, "_", (a4 - 2) - v9);
    v11 = a4;
    goto LABEL_7;
  }

  v16 = *(v7 + 16);
  v17 = *(*(a1 + 48) + 16);
  v18 = *(v16 + 8 * v17);
  if (!v18)
  {
    v11 = a4;
    v12 = a4 - 1;
    v13 = "?";
    goto LABEL_5;
  }

  v19 = strlen(*(v16 + 8 * v17));
  v11 = a4;
  v20 = a4 - 1;
  strncat(__s1, " ", v20);
  if (v19 >= 1)
  {
    v21 = &v18[v19];
    do
    {
      v22 = Utf8_LengthInBytes(v18, 1);
      if (!utf8_BelongsToSet(0xAu, v18, 0, v22))
      {
        if (utf8_ToLower(v18, 0, v29))
        {
          v23 = v20 - strlen(__s1);
          v24 = v29;
          v25 = __s1;
LABEL_16:
          strncat(v25, v24, v23);
          goto LABEL_17;
        }

        if (v11 - strlen(__s1) > v22)
        {
          v23 = v22;
          v25 = __s1;
          v24 = v18;
          goto LABEL_16;
        }
      }

LABEL_17:
      v18 += v22;
    }

    while (v18 < v21);
  }

  v26 = strlen(__s1);
  strncat(__s1, " ", v20 - v26);
  result = strstr(*(a1 + 24), __s1);
  if (!result)
  {
    *__s1 = 0;
    v13 = "?";
    v14 = __s1;
    v12 = v20;
    goto LABEL_6;
  }

  if (v19)
  {
    v27 = 0;
    v28 = __s1 + 1;
    do
    {
      *(v28 - 1) = *v28;
      ++v27;
      ++v28;
    }

    while (v19 > v27);
  }

  __s1[v19] = 0;
LABEL_7:
  __s1[v11 - 1] = 0;
  return result;
}

size_t BND_dummy(int a1, int a2, char *__s)
{
  result = strlen(__s);
  *&__s[result] = 63;
  return result;
}

uint64_t BND_bnd_type(uint64_t result, unsigned int a2, _BYTE *a3)
{
  v3 = *(result + 40);
  if (*(v3 + 8) <= a2)
  {
    LOBYTE(v5) = 37;
  }

  else
  {
    v4 = *(*v3 + 224 * a2 + 73);
    if (v4 > 4)
    {
      LOBYTE(v5) = 63;
    }

    else
    {
      v5 = 0x53574E3F3FuLL >> (8 * v4);
    }
  }

  *a3 = v5;
  a3[1] = 0;
  return result;
}

size_t BND_phrase_type(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  *__s1 = 0;
  v5 = *(a1 + 40);
  if (*(v5 + 8) > a2 && (v6 = *(v5 + 40)) != 0 && *v6)
  {

    return strncat(__s1, v6, a4 - 1);
  }

  else
  {
    result = strlen(__s1);
    *&__s1[result] = 37;
  }

  return result;
}

size_t BND_tn(size_t result, unsigned int a2, char *__s1, unsigned int a4)
{
  if (a4 >= 2)
  {
    if (*(*(result + 40) + 8) <= a2)
    {
      *__s1 = 37;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      *__s1 = 0;
      do
      {
        v7 = *(**(result + 40) + 224 * v6 + 56);
        if (v7)
        {
          v8 = v7 + 32 * *(*(result + 48) + 22);
          if (*(v8 + 16))
          {
            if (*v8 == 1 && *(v8 + 10) >= a2 && *(v8 + 8) <= a2)
            {
              v6 = a2;
              v5 = *(v8 + 16);
            }
          }
        }

        ++v6;
      }

      while (a2 >= v6);
      if (v5)
      {

        return strncat(__s1, v5, a4 - 1);
      }

      else
      {
        result = strlen(__s1);
        *&__s1[result] = 37;
      }
    }
  }

  return result;
}

size_t BND_doc_punc_prev(size_t result, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = *(**(result + 40) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(result + 48) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_doc_punc(result, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
LABEL_6:
    *a3 = 37;
    return result;
  }

  v7 = v6 - 1;
  return BND_doc_punc(result, v7, a3, a4);
}

uint64_t bnd_dist(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = 1;
    do
    {
      LOWORD(a2) = a2 - 1;
      v4 = **(a1 + 40) + 224 * a2;
      if (*(v4 + 73) == a3)
      {
        break;
      }

      v5 = *(v4 + 56);
      if (v5)
      {
        v6 = v5 + 32 * *(*(a1 + 48) + 22);
        if (*(v6 + 4) == 1)
        {
          LOWORD(a2) = *(v6 + 8);
        }
      }

      ++v3;
    }

    while (a2);
  }

  else
  {
    return 1;
  }

  return v3;
}

uint64_t checkForExternalSildur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v14 = 0;
  __s1 = 0;
  v12 = 0;
  *a5 = 0;
  v10 = (*(a1 + 184))(a2, a3, a4, 18, &v14);
  if ((v10 & 0x80000000) == 0)
  {
    if (v14)
    {
      v10 = (*(a1 + 176))(a2, a3, a4, 18, &__s1, &v12);
      if ((v10 & 0x80000000) == 0 && !strcmp(__s1, "external"))
      {
        *a5 = 1;
      }
    }
  }

  return v10;
}

BOOL doesWordEndInComma(const char *a1)
{
  result = 0;
  if (a1)
  {
    v2 = strlen(a1);
    if (v2)
    {
      v3 = a1[v2 - 1];
      v4 = v3 > 0x3B;
      v5 = (1 << v3) & 0xC00100000000000;
      if (!v4 && v5 != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t addWord(uint64_t a1, const char *a2, _DWORD *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  if (!*(a6 + 10))
  {
    v18 = heap_Calloc(*(a1 + 8), 1, 11200);
    *a6 = v18;
    if (v18)
    {
      v12 = v18;
      *(a6 + 10) = 50;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v12 = *a6;
  if (*(a6 + 8) >= *(a6 + 10))
  {
    v13 = heap_Realloc(*(a1 + 8), v12, 224 * *(a6 + 10) + 11200);
    if (v13)
    {
      *a6 = v13;
      bzero((v13 + 224 * *(a6 + 8)), 0x2BC0uLL);
      *(a6 + 10) += 50;
      v12 = *a6;
      goto LABEL_7;
    }

LABEL_11:
    v24 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v26);
    return v24;
  }

LABEL_7:
  *(v12 + 224 * *(a6 + 8)) = *a3;
  v19 = heap_Calloc(*(a1 + 8), 1, (8 * *(a5 + 72)) | 1);
  *(*a6 + 224 * *(a6 + 8) + 16) = v19;
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = strlen(a2);
  v21 = heap_Calloc(*(a1 + 8), 1, (v20 + 1));
  *(*(*a6 + 224 * *(a6 + 8) + 16) + 8 * *(a5 + 16)) = v21;
  if (!v21)
  {
    goto LABEL_11;
  }

  strcpy(v21, a2);
  v22 = strlen(a4);
  v23 = heap_Calloc(*(a1 + 8), 1, (v22 + 1));
  *(*a6 + 224 * *(a6 + 8) + 8) = v23;
  if (!v23)
  {
    goto LABEL_11;
  }

  strcpy(v23, a4);
  v24 = 0;
  ++*(a6 + 8);
  return v24;
}

uint64_t addToken(uint64_t a1, unsigned __int16 *a2, const char *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 + 4);
  v12 = *a2;
  if (*(a5 + 4))
  {
    v13 = a6;
    v15 = 0;
    v16 = 0;
    v17 = v11 + 1;
    v18 = *a5;
    v19 = a2[1];
    while (1)
    {
      v20 = *(v18 + v15);
      if (v12 == v20)
      {
        v17 = v16;
      }

      v21 = *(v18 + v15 + 2);
      if (v19 == v21)
      {
        break;
      }

      if (v19 >= v20 && v19 < v21)
      {
        break;
      }

      ++v16;
      v12 = *a2;
      v15 += 224;
      if (224 * v11 == v15)
      {
        goto LABEL_12;
      }
    }

    if (v11 + 1 == v17)
    {
      goto LABEL_14;
    }

    v31 = checkSpan(a1, a4, (v18 + 224 * v17 + 56));
    if ((v31 & 0x80000000) != 0)
    {
      return v31;
    }

    v31 = checkSpan(a1, a4, (*a5 + v15 + 56));
    if ((v31 & 0x80000000) != 0)
    {
      return v31;
    }

    v32 = *a5;
    v33 = 224 * v17;
    v34 = *(a4 + 22);
    v35 = *(*a5 + v33 + 56) + 32 * v34;
    *v35 = 1;
    *(v35 + 8) = v17;
    *(v35 + 10) = v16;
    v36 = *(v32 + v15 + 56) + 32 * v34;
    *(v36 + 4) = 1;
    *(v36 + 8) = v17;
    v37 = strlen(a3);
    v38 = heap_Calloc(*(a1 + 8), 1, (v37 - 1));
    v43 = *a5 + v33;
    v44 = v17;
    *(*(v43 + 56) + 32 * *(a4 + 22) + 16) = v38;
    if (v38)
    {
      v45 = v38;
      v46 = strlen(a3 + 1);
      strncpy(v45, a3 + 1, v46 - 1);
      if (v13 != 1)
      {
        return 0;
      }

      v47 = *(*a5 + 224 * v17 + 168);
      if (v47)
      {
        heap_Free(*(a1 + 8), v47);
      }

      v48 = strlen(a3);
      v49 = heap_Calloc(*(a1 + 8), 1, (v48 + 1));
      *(*a5 + 224 * v17 + 168) = v49;
      if (v49)
      {
        strcpy(v49, "B-");
        v50 = strlen(a3 + 1);
        strncpy((*(*a5 + 224 * v17 + 168) + 2), a3 + 1, v50 - 1);
        v51 = v17 + 1;
        if (v51 > v16)
        {
          return 0;
        }

        while (1)
        {
          v52 = strlen(*(*a5 + 224 * v44 + 168));
          v53 = heap_Calloc(*(a1 + 8), 1, (v52 + 1));
          v54 = *a5;
          v55 = v51;
          *(*a5 + 224 * v51 + 168) = v53;
          if (!v53)
          {
            break;
          }

          strcpy(v53, *(v54 + 224 * v44 + 168));
          v24 = 0;
          **(*a5 + 224 * v51++ + 168) = 73;
          if ((v55 + 1) > v16)
          {
            return v24;
          }
        }
      }
    }

    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v39, v40, v41, v42, v57);
    return 2315264010;
  }

LABEL_12:
  v23 = a2[1];
LABEL_14:
  v24 = 2315264000;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a6, a7, a8, a3);
  if (*(a5 + 4))
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = (*a5 + v28);
      v58 = *v30;
      v59 = v30[1];
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "word[%d] %d,%d", v25, v26, v27, v29++);
      v28 += 224;
    }

    while (v29 < *(a5 + 4));
  }

  return v24;
}

uint64_t checkSpan(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    return 0;
  }

  v13 = v3;
  v7 = heap_Calloc(*(a1 + 8), 1, (32 * *(a2 + 72)) | 1);
  if (v7)
  {
    v12 = v7;
    result = 0;
    *a3 = v12;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v8, v9, v10, v11, v13);
    return 2315264010;
  }

  return result;
}

uint64_t addTokenTag(uint64_t a1, unsigned int a2, char *__s, uint64_t a4, uint64_t *a5)
{
  v10 = *a5 + 224 * a2;
  if (!*(v10 + 88) && !strcmp("UNK", __s))
  {
    v11 = strlen(*(*(v10 + 16) + 8 * *(a4 + 18)));
    v12 = heap_Calloc(*(a1 + 8), 1, v11 + 1);
    v17 = *a5;
    *(*a5 + 224 * a2 + 88) = v12;
    if (!v12)
    {
LABEL_7:
      v20 = 2315264010;
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v13, v14, v15, v16, v22);
      return v20;
    }

    strcpy(v12, *(*(v17 + 224 * a2 + 16) + 8 * *(a4 + 18)));
  }

  v18 = strlen(__s);
  v19 = heap_Calloc(*(a1 + 8), 1, (v18 + 1));
  *(*(*a5 + 224 * a2 + 16) + 8 * *(a4 + 20)) = v19;
  if (!v19)
  {
    goto LABEL_7;
  }

  strcpy(v19, __s);
  return 0;
}

uint64_t addSynChunk(uint64_t a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  if (a4 > a5 || *(a7 + 8) <= a5)
  {
    v30 = 2315264000;
    v34 = *(a7 + 8);
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "syntactic chunks out of order : fromWordIdx=%d toWordIdx=%d numWords=%d", a6, a7, a8, a4);
  }

  else
  {
    v15 = checkSpan(a1, a6, (*a7 + 224 * a4 + 56));
    if ((v15 & 0x80000000) == 0)
    {
      v15 = checkSpan(a1, a6, (*a7 + 224 * a5 + 56));
      if ((v15 & 0x80000000) == 0)
      {
        v16 = v9;
        v17 = *a7;
        v18 = *(a6 + 24);
        v19 = *(*a7 + 224 * v9 + 56) + 32 * v18;
        *v19 = 1;
        *(v19 + 8) = v9;
        *(v19 + 10) = a5;
        v20 = *(v17 + 224 * a5 + 56) + 32 * v18;
        *(v20 + 4) = 1;
        *(v20 + 8) = v9;
        v21 = *(a1 + 8);
        v22 = strlen(a2);
        v23 = v22;
        if (a3)
        {
          v24 = strlen(a3);
          v25 = heap_Calloc(v21, 1, (v23 + v24 + 1));
          *(*(*a7 + 224 * v16 + 56) + 32 * *(a6 + 24) + 16) = v25;
          if (v25)
          {
            strcpy(v25, a2);
            strcat(*(*(*a7 + 224 * v16 + 56) + 32 * *(a6 + 24) + 16), a3);
            return 0;
          }
        }

        else
        {
          v31 = heap_Calloc(v21, 1, (v22 + 1));
          *(*(*a7 + 224 * v16 + 56) + 32 * *(a6 + 24) + 16) = v31;
          if (v31)
          {
            strcpy(v31, a2);
            return 0;
          }
        }

        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v26, v27, v28, v29, v33);
        return 2315264010;
      }
    }

    return v15;
  }

  return v30;
}

uint64_t addPHRRange(uint64_t a1, unsigned int a2, unsigned int a3, char *__s, void *a5)
{
  if (a2 > a3)
  {
    return 0;
  }

  v21 = v5;
  v12 = a2;
  while (1)
  {
    v13 = strlen(__s);
    v14 = heap_Calloc(*(a1 + 8), 1, (v13 + 3));
    v19 = v12;
    *(*a5 + 224 * v12 + 80) = v14;
    if (!v14)
    {
      break;
    }

    if (*__s == 79 && !__s[1])
    {
      strcpy(v14, __s);
    }

    else
    {
      if (v12 == a2)
      {
        v20 = "B-";
      }

      else
      {
        v20 = "I-";
      }

      *v14 = *v20;
      v14[2] = v20[2];
      strcat(*(*a5 + 224 * v12 + 80), __s);
    }

    *(*a5 + 224 * v12++ + 4) = a2;
    if (a3 < (v19 + 1))
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v15, v16, v17, v18, v21);
  return 2315264010;
}

uint64_t addMSPOS(uint64_t a1, unsigned int a2, char *__s, uint64_t a4, void *a5)
{
  v10 = *(a1 + 8);
  v11 = strlen(__s);
  v12 = heap_Calloc(v10, 1, (v11 + 1));
  *(*(*a5 + 224 * a2 + 16) + 8 * *(a4 + 18)) = v12;
  if (v12)
  {
    strcpy(v12, __s);
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v13, v14, v15, v16, v18);
    return 2315264010;
  }
}

uint64_t expandAndValidateCompounds(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  LODWORD(v3) = *(a2 + 4);
  if (*(a2 + 4))
  {
    for (i = 0; i < v3; ++i)
    {
      v8 = *a2;
      v9 = *(*a2 + 224 * i + 96);
      if (!v9)
      {
        goto LABEL_25;
      }

      v10 = *(a3 + 656);
      if (v10 == 1)
      {
        goto LABEL_25;
      }

      if (!v10)
      {
        v11 = *v9;
        if ((v11 == 73 || v11 == 66) && v9[1] == 45)
        {
          goto LABEL_25;
        }
      }

      v12 = *(a3 + 640);
      v13 = strlen(v12);
      if (!strncmp(v9, v12, v13))
      {
        v20 = i + 1;
        if (i + 1 != v3)
        {
          if (v20 >= v3)
          {
            goto LABEL_25;
          }

          v26 = *(v8 + 224 * v20 + 96);
          if (v26)
          {
            if (strncmp(v26, v12, v13))
            {
              goto LABEL_25;
            }
          }
        }

        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "single word cannot be a compound word : word index=%d compound tag=%s", v14, v15, v16, i);
      }

      else
      {
        if (i)
        {
          v17 = i;
          while (1)
          {
            v18 = *(v8 + 224 * v17 + 96);
            if (!v18 || !strncmp(v18, v12, v13))
            {
              break;
            }

            if (!--v17)
            {
              v17 = 0;
              break;
            }
          }

          v19 = v17;
        }

        else
        {
          v19 = 0;
        }

        v21 = v8 + 224 * v19;
        v22 = *(v21 + 96);
        if (v22)
        {
          if (!strncmp(*(v21 + 96), v12, v13))
          {
            strcat(v9, (v22 + 1));
            goto LABEL_25;
          }

          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "compound word has no beginning tag : word index=%d compound tag=%s", v23, v24, v25, i);
        }

        else
        {
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no start word for internal compound word : word index=%d compound tag=%s", v14, v15, v16, i);
        }
      }

      heap_Free(*(a1 + 8), *(*a2 + 224 * i + 96));
      *(*a2 + 224 * i + 96) = 0;
LABEL_25:
      v3 = *(a2 + 4);
    }
  }

  return 0;
}

uint64_t checkMSPOSForCompound(uint64_t a1, uint64_t a2, char *__s, uint64_t a4, void *a5)
{
  v10 = 0;
  CompoundAccent = 0;
  v44 = 0;
  v45 = 0;
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
      v14 = strlen(__s);
      CompoundAccent = do_pcre_exec(a4, v13, __s, v14, 0, &v45, v15, v16);
      if ((CompoundAccent & 0x80000000) != 0)
      {
        return CompoundAccent;
      }

      v17 = v45;
    }

    else if (!strcmp((*(a4 + 528) + *(*(a4 + 536) + 4 * **(*(a4 + 344) + 8 * v10))), __s))
    {
      v17 = 1;
      v45 = 1;
    }

    else
    {
      v17 = 0;
    }

    v10 = v12 + 1;
    v18 = v12;
  }

  while (!v17);
  if (v17 != 1)
  {
    return CompoundAccent;
  }

  v19 = *(a4 + 528);
  v20 = 4;
  if (*(*(a4 + 352) + 4 * v12) == 1)
  {
    v20 = 8;
  }

  v21 = *(*(a4 + 536) + 4 * *(*(*(a4 + 344) + 8 * v12) + v20));
  if (strcmp((v19 + v21), *(a4 + 640)))
  {
    LODWORD(v22) = a2;
    v23 = *(*a5 + 224 * a2 + 96);
    if (v23)
    {
      heap_Free(*(a1 + 8), v23);
      *(*a5 + 224 * a2 + 96) = 0;
    }

    v24 = strlen((v19 + v21));
    v25 = heap_Calloc(*(a1 + 8), 1, (v24 + 52));
    *(*a5 + 224 * a2 + 96) = v25;
    if (v25)
    {
      strcpy(v25, (v19 + v21));
      goto LABEL_18;
    }

LABEL_25:
    CompoundAccent = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v26, v27, v28, v29, v42);
    return CompoundAccent;
  }

  v44 = 0;
  v45 = 0;
  CompoundAccent = getCompoundAccent(a4, __s, &v45, &v44 + 1, &v44);
  if ((CompoundAccent & 0x80000000) != 0)
  {
    return CompoundAccent;
  }

  if (v45)
  {
    v37 = strlen((v19 + v21));
    v38 = heap_Calloc(*(a1 + 8), 1, v37 + v44 - HIWORD(v44) + 2);
    *(*a5 + 224 * a2 + 96) = v38;
    if (!v38)
    {
      goto LABEL_25;
    }

    v22 = a2;
    strcpy(v38, (v19 + v21));
    v39 = *(*a5 + 224 * a2 + 96);
    *&v39[strlen(v39)] = 45;
    strncat(*(*a5 + 224 * v22 + 96), &__s[HIWORD(v44)], v44 - HIWORD(v44));
  }

  else
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no stress information on first word of compound word : word index=%d pos=%s", v34, v35, v36, a2);
    LODWORD(v22) = a2;
    v41 = 224 * a2;
    heap_Free(*(a1 + 8), *(*a5 + v41 + 96));
    *(*a5 + v41 + 96) = 0;
  }

LABEL_18:
  if (*(*a5 + 224 * v22 + 96))
  {
    v33 = *(a1 + 32);
    if (*(*(a4 + 352) + 4 * v18) == 1)
    {
      v43 = *(*a5 + 224 * v22 + 96);
      log_OutText(v33, "FE_PHRASING", 5, 0, "COMPOUND regex rule %d FIRED : SET %s -> %s", v30, v31, v32, *(*(*(a4 + 344) + 8 * v18) + 2));
    }

    else
    {
      log_OutText(v33, "FE_PHRASING", 5, 0, "COMPOUND normal rule FIRED : SET %s -> %s", v30, v31, v32, __s);
    }
  }

  return CompoundAccent;
}

uint64_t insert_NLU_info(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  v9 = a3;
  v10 = a2;
  if (a2 == a3)
  {
    if (a2 + 1 == *(a6 + 4))
    {
      v9 = a2 + 1;
    }

    else
    {
      v9 = a2;
    }
  }

  if (a2 >= v9)
  {
    return 0;
  }

  v77 = v9 - 1;
  v12 = v77 - a2;
  v13 = (224 * a2) | 4;
  v14 = a2 + 1;
  while (1)
  {
    v15 = *a4;
    if (!*a4)
    {
      goto LABEL_12;
    }

    v16 = *(*(*a6 + v13 + 12) + 8 * *(a5 + 18));
    if (v16)
    {
      heap_Free(*(a1 + 8), v16);
      *(*(*a6 + v13 + 12) + 8 * *(a5 + 18)) = 0;
      v15 = *a4;
    }

    v17 = strlen(v15);
    v18 = heap_Calloc(*(a1 + 8), 1, (v17 + 1));
    *(*(*a6 + v13 + 12) + 8 * *(a5 + 18)) = v18;
    if (!v18)
    {
      break;
    }

    strcpy(v18, *a4);
LABEL_12:
    v23 = *(a4 + 8);
    if (v23)
    {
      v24 = *(*a6 + v13 + 76);
      if (v24)
      {
        heap_Free(*(a1 + 8), v24);
        *(*a6 + v13 + 76) = 0;
        v23 = *(a4 + 8);
      }

      v25 = strlen(v23);
      v26 = heap_Calloc(*(a1 + 8), 1, (v25 + 1));
      *(*a6 + v13 + 76) = v26;
      if (!v26)
      {
        break;
      }

      strcpy(v26, *(a4 + 8));
      *(*a6 + v13) = v10;
    }

    v27 = *(a4 + 16);
    if (v27)
    {
      v28 = v12 == 0;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      v29 = *v27;
      if (v29 == 78)
      {
        if (!v27[1])
        {
          v30 = 2;
          goto LABEL_31;
        }
      }

      else if (v29 == 83)
      {
        if (!v27[1])
        {
          v30 = 4;
          goto LABEL_31;
        }
      }

      else if (v29 == 87 && !v27[1])
      {
        v30 = 3;
LABEL_31:
        *(*a6 + 224 * v77 + 75) = v30;
        goto LABEL_32;
      }

      v30 = 1;
      goto LABEL_31;
    }

LABEL_32:
    v31 = *(a4 + 32);
    if (!v31)
    {
      goto LABEL_43;
    }

    v32 = *v31;
    if (v32 == 50)
    {
      if (!v31[1])
      {
        LOBYTE(v33) = 2;
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (v32 != 49)
    {
      if (v32 == 48)
      {
        v33 = v31[1];
        if (!v33)
        {
          goto LABEL_42;
        }
      }

LABEL_41:
      LOBYTE(v33) = 0;
      goto LABEL_42;
    }

    if (v31[1])
    {
      goto LABEL_41;
    }

    LOBYTE(v33) = 1;
LABEL_42:
    *(*a6 + v13 + 70) = v33;
LABEL_43:
    v34 = *(a4 + 56);
    if (v34)
    {
      v35 = *(*a6 + v13 + 92);
      if (v35)
      {
        heap_Free(*(a1 + 8), v35);
        *(*a6 + v13 + 92) = 0;
        v34 = *(a4 + 56);
      }

      v36 = strlen(v34);
      v37 = heap_Calloc(*(a1 + 8), 1, (v36 + 1));
      *(*a6 + v13 + 92) = v37;
      if (!v37)
      {
        break;
      }

      strcpy(v37, *(a4 + 56));
      v38 = heap_Calloc(*(a1 + 8), 1, 6);
      *(*a6 + v13 + 172) = v38;
      if (!v38)
      {
        break;
      }

      v39 = *(a4 + 56);
      if (*v39 != 66 || (v40 = v39[1], v41 = "[COMP", v40 != 45))
      {
        v41 = "COMP]";
      }

      *v38 = *v41;
      *(v38 + 4) = *(v41 + 2);
    }

    v42 = *(a4 + 24);
    if (v42 && !v12)
    {
      v43 = strlen(v42);
      v44 = heap_Realloc(*(a1 + 8), *(*a6 + 224 * v77 + 120), (v43 + 1));
      if (!v44)
      {
        break;
      }

      *(*a6 + 224 * v77 + 120) = v44;
      strcpy(v44, *(a4 + 24));
    }

    v45 = *(a4 + 40);
    if (v45)
    {
      v46 = strlen(v45);
      v47 = heap_Realloc(*(a1 + 8), *(*a6 + v13 + 148), (v46 + 32) & 0xFFFFFFE0);
      if (!v47)
      {
        break;
      }

      *(*a6 + v13 + 148) = strcpy(v47, *(a4 + 40));
    }

    v48 = *(a4 + 48);
    if (v48)
    {
      v49 = strlen(v48);
      v50 = heap_Realloc(*(a1 + 8), *(*a6 + v13 + 156), (v49 + 32) & 0xFFFFFFE0);
      if (!v50)
      {
        break;
      }

      v51 = v50;
      v52 = strcpy(v50, *(a4 + 48));
      v53 = *a6;
      *(*a6 + v13 + 156) = v52;
      if (v13 != 4 && strstr(v51, "S_PUNC"))
      {
        *(v53 + v13 - 200) = 1;
      }

      if (strstr(v51, "E_PUNC"))
      {
        *(v53 + v13 + 24) = 1;
      }

      if (a7 == 1)
      {
        v54 = *(a4 + 48);
        v55 = strstr(v54, "S_PUNC:");
        if (v55)
        {
          v56 = v55 + 7;
          v57 = strchr(v55 + 7, 59);
          if (v57)
          {
            v58 = v57 - v56;
          }

          else
          {
            v58 = strlen(v56);
          }

          v59 = v58;
          v60 = heap_Calloc(*(a1 + 8), 1, v58 + 1);
          *(*a6 + v13 + 180) = v60;
          if (!v60)
          {
            break;
          }

          strncpy(v60, v56, v59);
          v54 = *(a4 + 48);
        }

        v61 = strstr(v54, "E_PUNC:");
        if (v61)
        {
          v62 = v61;
          v63 = strlen(v61 + 7);
          v64 = heap_Calloc(*(a1 + 8), 1, v63 + 1);
          *(*a6 + v13 + 188) = v64;
          if (!v64)
          {
            break;
          }

          strcpy(v64, v62 + 7);
          v54 = *(a4 + 48);
        }

        v65 = strstr(v54, "X_PUNC:");
        if (v65)
        {
          v66 = v65;
          v67 = strlen(v65 + 7);
          v68 = heap_Calloc(*(a1 + 8), 1, v67 + 1);
          *(*a6 + v13 + 196) = v68;
          if (!v68)
          {
            break;
          }

          strcpy(v68, v66 + 7);
        }
      }
    }

    v69 = *(a4 + 72);
    if (v69)
    {
      *(*a6 + v13 + 132) = v69;
      v70 = *(a4 + 64);
      if (v70)
      {
        v71 = strlen(v70);
        v72 = heap_Alloc(*(a1 + 8), v71 + 1);
        *(*a6 + v13 + 124) = v72;
        if (!v72)
        {
          break;
        }

        strcpy(v72, *(a4 + 64));
      }
    }

    v13 += 224;
    --v12;
    v28 = v9 == v14++;
    if (v28)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v19, v20, v21, v22, v74);
  return 2315264010;
}

uint64_t resolvePHR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v97 = *MEMORY[0x1E69E9840];
  if (*(a4 + 8))
  {
    v13 = 0;
    v14 = -208;
    while (1)
    {
      if (v14 == -208)
      {
        goto LABEL_25;
      }

      v15 = *a4 + v14;
      if (*(v15 + 288))
      {
        goto LABEL_25;
      }

      v16 = *a4 + v14;
      v17 = *(v16 + 64);
      if (v17)
      {
        v18 = *(v15 + 208);
        if (v18 >= 2 && *(a1 + (v18 - 1)) == 95)
        {
          break;
        }
      }

      v33 = *(v16 + 64);
      if (v33)
      {
        v34 = *v33;
        if (v34 == 66)
        {
          v39 = strlen(v33);
          v40 = heap_Calloc(*(a2 + 8), 1, (v39 + 3));
          v41 = *a4 + v14;
          *(v41 + 288) = v40;
          if (!v40)
          {
            goto LABEL_87;
          }

          strcpy(v40, *(v41 + 64));
          **(*a4 + v14 + 288) = 73;
          v42 = strlen(*(*(*a4 + v14) + 8 * *(a3 + 18)));
          v29 = heap_Calloc(*(a2 + 8), 1, (v42 + 3));
          v30 = *a4;
          v31 = *(a3 + 18);
          *(*(*a4 + v14 + 224) + 8 * v31) = v29;
          if (!v29)
          {
            goto LABEL_87;
          }

          v32 = "[3] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        else
        {
          if (v34 != 79 && v34 != 73)
          {
            goto LABEL_25;
          }

          v35 = strlen(v33);
          v36 = heap_Calloc(*(a2 + 8), 1, (v35 + 3));
          v37 = *a4 + v14;
          *(v37 + 288) = v36;
          if (!v36)
          {
            goto LABEL_87;
          }

          strcpy(v36, *(v37 + 64));
          v38 = strlen(*(*(*a4 + v14) + 8 * *(a3 + 18)));
          v29 = heap_Calloc(*(a2 + 8), 1, (v38 + 3));
          v30 = *a4;
          v31 = *(a3 + 18);
          *(*(*a4 + v14 + 224) + 8 * v31) = v29;
          if (!v29)
          {
            goto LABEL_87;
          }

          v32 = "[2] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        goto LABEL_24;
      }

LABEL_25:
      ++v13;
      v47 = *(a4 + 8);
      v14 += 224;
      if (v13 >= v47)
      {
        if (*(a4 + 8))
        {
          v48 = 0;
          v49 = 80;
          do
          {
            if (!*(*a4 + v49))
            {
              if ((insert_NLU_info(a2, v48, (v48 + 1), &unk_1E81A4468, a3, a4, a5) & 0x80000000) != 0)
              {
                log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Failed to fill out PHR=B-NIL on word : word index=%d", a6, a7, a8, v48);
LABEL_90:
                v85 = 2315264000;
                goto LABEL_97;
              }

              LODWORD(v47) = *(a4 + 8);
            }

            ++v48;
            v49 += 224;
          }

          while (v48 < v47);
          if (v47)
          {
            v50 = 0;
            v51 = (*a4 + 80);
            do
            {
              if (!*v51)
              {
                log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "could not work out PHR on word : word index=%d", a6, a7, a8, v50);
                goto LABEL_90;
              }

              ++v50;
              v51 += 28;
            }

            while (v47 != v50);
            v52 = 0;
            v53 = 0;
            v54 = *a4;
            do
            {
              v55 = *(v54 + v52 + 80);
              if (*v55 == 73 && v55[1] == 45)
              {
                if (v52)
                {
                  if (strcmp(*(v54 + v52 - 144), *(v54 + v52 + 80)))
                  {
                    __strcpy_chk();
                    __s2[0] = 66;
                    v56 = *a4 + v52;
                    if (strcmp(*(v56 - 144), __s2))
                    {
                      **(v56 + 80) = 66;
                      v93 = *(*a4 + v52 + 80);
                      log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", a6, a7, a8, v53);
                    }
                  }
                }

                else
                {
                  *v55 = 66;
                  v94 = *(*a4 + 80);
                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", a6, a7, a8, 0);
                }
              }

              v54 = *a4;
              v57 = *(*a4 + v52 + 176);
              if (v57)
              {
                v58 = strcmp(v57, "COMP]");
                if (v52)
                {
                  if (!v58)
                  {
                    v59 = *(v54 + v52 - 48);
                    if (v59)
                    {
                      if (!strcmp(*(v54 + v52 - 48), "COMP]"))
                      {
                        heap_Free(*(a2 + 8), v59);
                        v54 = *a4;
                        *(*a4 + v52 - 48) = 0;
                      }
                    }
                  }
                }
              }

              ++v53;
              v52 += 224;
            }

            while (v53 < *(a4 + 8));
            if (*(a4 + 8))
            {
              v60 = 0;
              v61 = *a4;
              do
              {
                v62 = *(v61 + 224 * v60 + 80);
                __strcpy_chk();
                if (*__s2 == 11586)
                {
                  v66 = *(*a4 + 224 * v60 + 80);
                  __strcpy_chk();
                }

                v67 = *(a4 + 8);
                LODWORD(v68) = v60;
                if (v67 > v60)
                {
                  v68 = v60;
                  v69 = *a4 + 224 * v60;
                  v70 = (v69 + 80);
                  while (1)
                  {
                    v71 = *v70;
                    if (!*v70 || strcmp(*v70, __s2) && (strlen(v71) < 3 || strcmp(v71 + 2, __s2) || *v71 != 73 || v71[1] != 45) && *(v70 - 38) != *(v69 + 4))
                    {
                      break;
                    }

                    ++v68;
                    v70 += 28;
                    if (v67 == v68)
                    {
                      LODWORD(v68) = v67;
                      break;
                    }
                  }
                }

                v72 = v68 - 1;
                if (v72 <= v60)
                {
LABEL_76:
                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[3] add syn chunk %s from %d to %d", v63, v64, v65, __s2);
                  v80 = (v68 - 1);
                  v81 = a2;
                  v82 = 0;
                  v83 = v60;
                }

                else
                {
                  v73 = 1;
                  v74 = v60;
                  while (1)
                  {
                    v75 = v74;
                    v76 = v74;
                    if (*(*a4 + 224 * v74 + 28) != 1)
                    {
                      break;
                    }

LABEL_72:
                    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[1] add syn chunk %s%s from %d to %d", v63, v64, v65, __s2);
                    v78 = addSynChunk(a2, __s2, "-P", v74, v75, a3, a4, v77);
                    if ((v78 & 0x80000000) != 0)
                    {
                      goto LABEL_91;
                    }

                    v73 = 0;
                    v74 = v75 + 1;
                    if (v72 <= (v75 + 1))
                    {
                      goto LABEL_85;
                    }
                  }

                  while (v72 > ++v76)
                  {
                    if (*(*a4 + 224 * v76 + 28) == 1)
                    {
                      v75 = v76;
                      goto LABEL_72;
                    }
                  }

                  if (v73)
                  {
                    goto LABEL_76;
                  }

LABEL_85:
                  if (v68 <= v74)
                  {
                    goto LABEL_78;
                  }

                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[2] add syn chunk %s%s from %d to %d", v63, v64, v65, __s2);
                  v83 = v74;
                  v80 = (v68 - 1);
                  v81 = a2;
                  v82 = "-P";
                }

                v78 = addSynChunk(v81, __s2, v82, v83, v80, a3, a4, v79);
                if ((v78 & 0x80000000) != 0)
                {
LABEL_91:
                  v85 = v78;
                  goto LABEL_97;
                }

LABEL_78:
                v61 = *a4;
                *(*a4 + 224 * v60 + 44) = 1;
                v84 = v61 + 224 * v72;
                *(v84 + 40) = 1;
                if (*(v84 + 28) == 1)
                {
                  *(v61 + 224 * v60 + 32) = 1;
                }

                if (v60 == v68)
                {
                  v60 = v68 + 1;
                }

                else
                {
                  v60 = v68;
                }
              }

              while (v60 < *(a4 + 8));
              if (*(a4 + 8))
              {
                v86 = 0;
                v87 = *a4;
                v88 = 80;
                do
                {
                  heap_Free(*(a2 + 8), *(v87 + v88));
                  v85 = 0;
                  v87 = *a4;
                  *(*a4 + v88) = 0;
                  ++v86;
                  v88 += 224;
                }

                while (v86 < *(a4 + 8));
                goto LABEL_97;
              }
            }
          }
        }

        goto LABEL_96;
      }
    }

    v19 = strlen(v17);
    v20 = heap_Calloc(*(a2 + 8), 1, (v19 + 3));
    v25 = *a4 + v14;
    *(v25 + 288) = v20;
    if (!v20)
    {
      goto LABEL_87;
    }

    strcpy(v20, *(v25 + 64));
    v26 = *a4;
    v27 = *(*a4 + v14 + 288);
    if (*v27 != 79 || v27[1])
    {
      *v27 = 73;
      v26 = *a4;
    }

    v28 = strlen(*(*(v26 + v14) + 8 * *(a3 + 18)));
    v29 = heap_Calloc(*(a2 + 8), 1, (v28 + 3));
    v30 = *a4;
    v31 = *(a3 + 18);
    *(*(*a4 + v14 + 224) + 8 * v31) = v29;
    if (!v29)
    {
LABEL_87:
      v85 = 2315264010;
      log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0, v21, v22, v23, v24, v91);
      goto LABEL_97;
    }

    v32 = "[1] set missing PHR on word : word index=%d to %s (also copy POS %s)";
LABEL_24:
    strcpy(v29, *(*(v30 + v14) + 8 * v31));
    v43 = *a4 + v14;
    v92 = *(v43 + 288);
    v95 = *(*(v43 + 224) + 8 * *(a3 + 18));
    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, v32, v44, v45, v46, v13);
    goto LABEL_25;
  }

LABEL_96:
  v85 = 0;
LABEL_97:
  v89 = *MEMORY[0x1E69E9840];
  return v85;
}

uint64_t addMarkerType(uint64_t a1, const char *a2, const char *a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  result = checkSpan(a1, a6, (*a7 + 224 * a4 + 56));
  if ((result & 0x80000000) == 0)
  {
    result = checkSpan(a1, a6, (*a7 + 224 * a5 + 56));
    if ((result & 0x80000000) == 0)
    {
      v36 = a3;
      v18 = *(a6 + 74);
      if (v18 <= *(a6 + 72))
      {
        v19 = *(a6 + 72);
      }

      else
      {
        v19 = *(a6 + 74);
      }

      v20 = 1 - v18;
      v21 = v19 - v18;
      v22 = 8 * v18;
      do
      {
        if (!v21 || (v23 = *(a6 + 528)) == 0)
        {
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Ignoring marker :%s, as not in DEFMAPPING list", v15, v16, v17, a2);
          return 0;
        }

        v24 = strcmp((v23 + *(*(a6 + 536) + 4 * *(*(a6 + 64) + v22))), a2);
        --v20;
        --v21;
        v22 += 8;
      }

      while (v24);
      v25 = *a7;
      v26 = -v20;
      v27 = *(*a7 + 224 * a4 + 56) + 32 * v26;
      *v27 = 1;
      *(v27 + 8) = a4;
      *(v27 + 10) = a5;
      v28 = *(v25 + 224 * a5 + 56) + 32 * v26;
      *(v28 + 4) = 1;
      *(v28 + 8) = a4;
      v29 = strlen(v36);
      v30 = heap_Calloc(*(a1 + 8), 1, (v29 + 1));
      *(*(*a7 + 224 * a4 + 56) + 32 * v26 + 16) = v30;
      if (v30)
      {
        strcpy(v30, v36);
        return 0;
      }

      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v31, v32, v33, v34, v35);
      return 2315264010;
    }
  }

  return result;
}

uint64_t createPOSString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, (2 * *(a3 + 8)) | 1);
  *(a3 + 24) = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  v11 = *(a3 + 8);
  if (*(a3 + 8))
  {
    v12 = 0;
    v13 = (*a3 + 16);
    do
    {
      v14 = *v13;
      v13 += 28;
      v12 += strlen(*(v14 + 8 * *(a2 + 18))) + 1;
      --v11;
    }

    while (v11);
    v15 = v12 + 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = heap_Calloc(*(a1 + 8), 1, v15);
  *(a3 + 16) = v16;
  if (v16)
  {
    if (*(a3 + 8))
    {
      v17 = 0;
      v18 = 0;
      v19 = 16;
      do
      {
        v20 = *(a3 + 16);
        *(*(a3 + 24) + 2 * v17) = v18;
        v21 = (v20 + v18);
        v22 = strlen(*(*(*a3 + v19) + 8 * *(a2 + 18)));
        memcpy(v21, *(*(*a3 + v19) + 8 * *(a2 + 18)), v22);
        v23 = v18 + strlen(*(*(*a3 + v19) + 8 * *(a2 + 18)));
        v24 = *(a3 + 8);
        if (v17 + 1 < v24)
        {
          *(*(a3 + 16) + v23 + strlen((*(a3 + 16) + v23))) = 32;
          v24 = *(a3 + 8);
        }

        v18 = v23 + 1;
        ++v17;
        v19 += 224;
      }

      while (v17 < v24);
    }

    return 0;
  }

  else
  {
LABEL_14:
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v7, v8, v9, v10, v26);
    return 2315264010;
  }
}

uint64_t getSyllCount(const char *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = strlen(a1);
    if (v2)
    {
      if (*v1 != 46 || (v3 = *(v1 + 1), v1[1]))
      {
        v3 = 1;
        v4 = v2;
        if (v2)
        {
          do
          {
            v5 = *v1++;
            if (v5 == 46)
            {
              ++v3;
            }

            --v4;
          }

          while (v4);
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
    return 0;
  }

  return v3;
}

uint64_t getPhonWeights(unsigned __int16 *a1)
{
  v1 = a1[4];
  if (a1[4])
  {
    v2 = (*a1 + 24);
    do
    {
      *v2 = getSyllCount(*(v2 - 2));
      v2 += 28;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t add2Str(uint64_t a1, const char **a2, _WORD *a3, char *__s)
{
  v8 = strlen(__s);
  v9 = *a3;
  v10 = *a2;
  v11 = strlen(*a2);
  if (v8 >= v9 - v11)
  {
    if ((v8 - v9 + v11) <= 0x80u)
    {
      v12 = 128;
    }

    else
    {
      v12 = (v8 - v9 + v11);
    }

    v13 = heap_Realloc(*(a1 + 8), v10, v9 + v12 + 1);
    if (!v13)
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v19);
      return 2315264010;
    }

    v10 = v13;
    *a2 = v13;
    *a3 += v12;
  }

  if (*v10)
  {
    strcat(v10, __s);
  }

  else
  {
    strcpy(v10, __s);
  }

  return 0;
}

uint64_t printAsChunks(uint64_t result, const char **a2, _WORD *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "CHUNKS", a6, a7, a8, 0);
    if (*(a5 + 4))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = *a5;
        v18 = *(*a5 + v15 + 56);
        if (v18 && *(v18 + 32 * *(a4 + 24)) == 1)
        {
          result = add2Str(*a4, a2, a3, "[");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = add2Str(*a4, a2, a3, *(*(*a5 + v15 + 56) + 32 * *(a4 + 24) + 16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = add2Str(*a4, a2, a3, " ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v17 = *a5;
        }

        result = add2Str(*a4, a2, a3, *(*(v17 + v15 + 16) + 8 * *(a4 + 16)));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = add2Str(*a4, a2, a3, "_");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = add2Str(*a4, a2, a3, *(*(*a5 + v15 + 16) + 8 * *(a4 + 18)));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = add2Str(*a4, a2, a3, " ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v19 = *(*a5 + v15 + 56);
        if (v19 && *(v19 + 32 * *(a4 + 24) + 4) == 1)
        {
          result = add2Str(*a4, a2, a3, "] ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "%s", v20, v21, v22, *a2);
          **a2 = 0;
        }

        ++v16;
        v15 += 224;
      }

      while (v16 < *(a5 + 4));
    }

    log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "%s", v12, v13, v14, *a2);
    result = 0;
    **a2 = 0;
  }

  return result;
}

uint64_t printSent(uint64_t a1, int a2, const char **a3, char *a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (!a2)
  {
    return 0;
  }

  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Sentence :%s", a6, a7, a8, a8);
  if (*(a7 + 8))
  {
    v15 = 0;
    v16 = "tmphr=%4s ";
    if (a9 == 1)
    {
      v16 = "%4s ";
    }

    v50 = v16;
    while (1)
    {
      sprintf(a4, "[%2d] ", v15);
      result = add2Str(a1, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v18 = 224 * v15;
      strncpy(a4, *(*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 16)), 0x14uLL);
      v19 = strlen(*(*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 16)));
      if (v19 <= 0x13)
      {
        do
        {
          *&a4[strlen(a4)] = 32;
          v20 = v19++ >= 0x13;
        }

        while (!v20);
      }

      result = add2Str(a1, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(a1, a3, a5, " ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v21 = *(*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 18));
      if (!v21)
      {
        v21 = " ";
      }

      sprintf(a4, "%6s ", v21);
      result = add2Str(a1, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v22 = *a7;
      if (*(*a7 + 224 * v15 + 80))
      {
        sprintf(a4, v50, *(*a7 + 224 * v15 + 80));
        result = add2Str(a1, a3, a5, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a7;
      }

      if (*(v22 + 224 * v15 + 88))
      {
        sprintf(a4, "retag=%4s ", *(v22 + 224 * v15 + 88));
        result = add2Str(a1, a3, a5, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a7;
      }

      v23 = *(*(v22 + 224 * v15 + 16) + 8 * *(a6 + 20));
      if (!v23)
      {
        v23 = " ";
      }

      sprintf(a4, "%6s ", v23);
      result = add2Str(a1, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      strncpy(a4, *(*a7 + v18 + 8), 0x14uLL);
      v24 = strlen(*(*a7 + v18 + 8));
      if (v24 <= 0x13)
      {
        do
        {
          *&a4[strlen(a4)] = 32;
          v20 = v24++ >= 0x13;
        }

        while (!v20);
      }

      result = add2Str(a1, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (*(*a7 + 224 * v15 + 24))
      {
        sprintf(a4, "(nsyll=%d) ", *(*a7 + 224 * v15 + 24));
        result = add2Str(a1, a3, a5, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (a9 == 1)
      {
        v28 = *a7;
        if (*(*a7 + 224 * v15 + 184))
        {
          sprintf(a4, "startDocPunc=%s ", *(*a7 + 224 * v15 + 184));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v28 = *a7;
        }

        if (*(v28 + 224 * v15 + 192))
        {
          sprintf(a4, "endDocPunc=%s ", *(v28 + 224 * v15 + 192));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v28 = *a7;
        }

        if (*(v28 + 224 * v15 + 200))
        {
          sprintf(a4, "singleDocPunc=%s ", *(v28 + 224 * v15 + 200));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v28 = *a7;
        }

        if (*(v28 + 224 * v15 + 208))
        {
          sprintf(a4, "orthPunc=%s ", *(v28 + 224 * v15 + 208));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v28 = *a7;
        }

        if (*(v28 + 224 * v15 + 168))
        {
          sprintf(a4, "tokTag=%s ", *(v28 + 224 * v15 + 168));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v28 = *a7;
        }

        if (*(v28 + 224 * v15 + 176))
        {
          sprintf(a4, "compoundInfo=%s ");
          goto LABEL_72;
        }
      }

      else if (!a9)
      {
        v29 = *a7;
        if (*(*a7 + 224 * v15 + 220))
        {
          result = add2Str(a1, a3, a5, "DUMMYWORD ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 28))
        {
          result = add2Str(a1, a3, a5, "_HASCOMMA ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 36))
        {
          result = add2Str(a1, a3, a5, "_HASBNDBEFORESET ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 44))
        {
          result = add2Str(a1, a3, a5, "_ISFIRSTINPHR ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 40))
        {
          result = add2Str(a1, a3, a5, "_ISLASTINPHR ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 32))
        {
          result = add2Str(a1, a3, a5, "_PHRENDSINCOMMA ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 96))
        {
          sprintf(a4, "compoundTag=%s ", *(v29 + 224 * v15 + 96));
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        v30 = *(v29 + 224 * v15 + 52);
        if (v30)
        {
          v49 = *(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 48) + 8 * v30));
          sprintf(a4, "domain=%s ");
LABEL_72:
          result = add2Str(a1, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      if (!*(*a7 + 224 * v15 + 48) || (result = add2Str(a1, a3, a5, " bPHONETIC "), (result & 0x80000000) == 0))
      {
        if (a9 == 1 && *(a6 + 72))
        {
          v51 = a5;
          v31 = 0;
          v32 = 4;
          v33 = 16;
          do
          {
            v34 = *a7;
            v35 = *(*a7 + 224 * v15 + 56);
            if (v35)
            {
              v36 = (v35 + v33);
              if (*(v35 + v33 - 16) != 1)
              {
                goto LABEL_85;
              }

              v37 = *(v36 + 2);
              v38 = *v36;
              if (v37 == 1)
              {
                sprintf(a4, "<%s_%s_ext ");
              }

              else
              {
                sprintf(a4, "<%s_%s ");
              }

              result = add2Str(a1, a3, v51, a4);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v34 = *a7;
              v35 = *(*a7 + 224 * v15 + 56);
              if (v35)
              {
LABEL_85:
                v39 = v35 + v33;
                if (*(v39 - 12) == 1)
                {
                  v40 = *(v34 + 224 * *(v39 - 8) + 56) + v33;
                  v41 = *(v40 + 8);
                  v42 = *v40;
                  v43 = *(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 64) + v32));
                  if (v41 == 1)
                  {
                    sprintf(a4, "%s_ext_%s> ");
                  }

                  else
                  {
                    sprintf(a4, "%s_%s> ");
                  }

                  result = add2Str(a1, a3, v51, a4);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }
              }
            }

            ++v31;
            v44 = *(a6 + 72);
            v33 += 32;
            v32 += 8;
          }

          while (v31 < v44);
          if (*(*a7 + 224 * v15 + 64))
          {
            v45 = v44 == 0;
          }

          else
          {
            v45 = 1;
          }

          a5 = v51;
          if (!v45)
          {
            v46 = 0;
            v47 = 4;
            do
            {
              v48 = *(*(*a7 + 224 * v15 + 64) + 8 * v46);
              if (v48)
              {
                snprintf(a4, 0x400uLL, "[%s %s] ", (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 64) + v47))), v48);
                result = add2Str(a1, a3, v51, a4);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                LOWORD(v44) = *(a6 + 72);
              }

              ++v46;
              v47 += 8;
            }

            while (v46 < v44);
          }
        }

        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", v25, v26, v27, *a3);
        result = 0;
        **a3 = 0;
        if (++v15 < *(a7 + 8))
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

uint64_t printMSTree(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, unsigned int a6, const char **a7, char *a8, _WORD *a9, char *a10, unsigned __int16 a11)
{
  if (!a4)
  {
    return 0;
  }

  v15 = a4;
  v16 = a3;
  v18 = a10;
  kbsymtab_ConsSymString(a3, *(a4 + 16), a10, a11);
  if (a6)
  {
    v19 = 0;
    *a8 = 0;
    do
    {
      strcat(a8, "  ");
      ++v19;
    }

    while (a6 > v19);
    result = add2Str(a1, a7, a9, a8);
    v18 = a10;
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  result = add2Str(a1, a7, a9, v18);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = add2Str(a1, a7, a9, "(");
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  __dst = v18;
  if (*(v15 + 24) < 1)
  {
LABEL_18:
    result = add2Str(a1, a7, a9, ")");
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(v15 + 8))
    {
      v27 = strlen(a5);
      v28 = *(v15 + 56);
      if (v28 > v27)
      {
        *(v15 + 56) = v27;
        v28 = v27;
      }

      v29 = *(v15 + 52);
      if (v29 > v27 || v28 > v27 || (v30 = __OFSUB__(v28, v29), v31 = v28 - v29, (v31 < 0) ^ v30 | (v31 == 0)))
      {
        v37 = "<ERROR>";
        v34 = a1;
        v35 = a7;
        v36 = a9;
      }

      else
      {
        v32 = strncpy(__dst, &a5[v29], (v31 - 1));
        v33 = ~*(v15 + 52);
        v32[(*(v15 + 56) + ~*(v15 + 52))] = 0;
        sprintf(a8, " <%s>", v32);
        v34 = a1;
        v35 = a7;
        v36 = a9;
        v37 = a8;
      }

      result = add2Str(v34, v35, v36, v37);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", v24, v25, v26, *a7);
    **a7 = 0;
    v41 = *(v15 + 8);
    if (v41)
    {
      v45 = v16;
      do
      {
        if (a6 && v41 != *(v15 + 8))
        {
          v42 = a5;
          v43 = 0;
          *a8 = 0;
          do
          {
            strcat(a8, "  ");
            ++v43;
          }

          while (a6 > v43);
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s,", v38, v39, v40, a8);
          **a7 = 0;
          a5 = v42;
          v16 = v45;
        }

        LOWORD(v44) = a11;
        result = printMSTree(a1, a2, v16, v41, a5, (a6 + 1), a7, a8, a9, __dst, v44);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = 0;
        v41 = *v41;
      }

      while (v41);
      return result;
    }

    return 0;
  }

  v21 = 0;
  v22 = v15 + 26;
  v47 = v15;
  while (1)
  {
    if (v21)
    {
      result = add2Str(a1, a7, a9, ",");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v23 = *(v22 + 2 * v21);
    if (v23 < 0)
    {
      result = mosyntkbsymtab_AtomSymString(a2, v16, -v23, __dst, a11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(a1, a7, a9, __dst);
      v15 = v47;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      sprintf(a8, "?%d", *(v22 + 2 * v21));
      result = add2Str(a1, a7, a9, a8);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*(v15 + 24) <= ++v21)
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
    v20 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v12, v13, v14, v15, v24);
    return v20;
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
  v18 = strlen(__s);
  v19 = heap_Calloc(*(a1 + 8), 1, (v18 + 1));
  *(*a5 + 16 * *(a5 + 8)) = v19;
  if (!v19)
  {
    goto LABEL_10;
  }

  strcpy(v19, __s);
  v20 = 0;
  v21 = *(a5 + 8);
  v22 = *a5 + 16 * v21;
  *(v22 + 8) = a3;
  *(v22 + 10) = a4;
  *(v22 + 12) = 1;
  *(a5 + 8) = v21 + 1;
  return v20;
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
      result = strncpy(a2, (a3 + v18), v20);
      a2[v20] = 0;
      if (v8 == 1)
      {
        break;
      }

      v30 = (*a4 + i);
      if (*(v30 + 1) == 1)
      {
        v24 = *(a1 + 32);
        v33 = v30[1];
        v31 = *(v30 - 1);
        v32 = *v30;
        goto LABEL_10;
      }

LABEL_11:
      if (++v14 >= *(a4 + 8))
      {
        return result;
      }
    }

    v24 = *(a1 + 32);
    v25 = (*a4 + i);
    v26 = *(v25 - 1);
    v27 = *v25;
    v28 = v25[1];
    v29 = *(v25 + 1);
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
LABEL_14:
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
LABEL_13:
    v11 = 2315264000;
    v12 = *(a1 + 32);
    v13 = "cant match MS terminal node with end word : start position=%d start word=%d unknown end=%d";
    goto LABEL_14;
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
      v18 = *a5;
      goto LABEL_13;
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
          goto LABEL_24;
        }
      }

      v15 = 0;
      v31 = 0;
      do
      {
        if (v15 >= *(a1 + 640))
        {
          goto LABEL_19;
        }

        if (*(*(a1 + 632) + 4 * v15) == 1)
        {
          v16 = strlen(*(*a2 + 16 * v12));
          result = do_pcre_exec(a1 + 8, *(*(*(a1 + 624) + 8 * v15) + 2), *(*a2 + 16 * v12), v16, 0, &v31, v17, v18);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v20 = v31;
        }

        else if (!strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * **(*(a1 + 624) + 8 * v15))), *(*a2 + 16 * v12)))
        {
          v20 = 1;
          v31 = 1;
        }

        else
        {
          v20 = 0;
        }

        v21 = v15++;
      }

      while (!v20);
      if (v20 != 1)
      {
LABEL_19:
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "no rules FIRE on %s -> %s", a6, a7, a8, *(*a2 + 16 * v12));
        v26 = &szOPhr;
        goto LABEL_21;
      }

      v22 = *(a1 + 536);
      v23 = *(a1 + 544);
      v24 = *(*(a1 + 624) + 8 * v21);
      v25 = *(*a1 + 32);
      if (*(*(a1 + 632) + 4 * v21) == 1)
      {
        v26 = (v22 + *(v23 + 4 * *(v24 + 8)));
        v29 = *(*a2 + 16 * v12);
        log_OutText(v25, "FE_PHRASING", 5, 0, "regex rule %d FIRED %s -> %s", a6, a7, a8, *(v24 + 2));
      }

      else
      {
        v26 = (v22 + *(v23 + 4 * *(v24 + 4)));
        log_OutText(v25, "FE_PHRASING", 5, 0, "normal rule FIRED %s -> %s", a6, a7, a8, *(*a2 + 16 * v12));
      }

LABEL_21:
      result = getWordIdxForMSPhr(*a1, (a1 + 672), *(*a2 + 16 * v12 + 8), *(*a2 + 16 * v12 + 10), &v30 + 1, &v30, v27, v28);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = addPHRRange(*a1, HIWORD(v30), v30, v26, (a1 + 672));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v8 = *(a2 + 8);
LABEL_24:
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
  v60 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Sort MS Nodes Pass 1 : constrain nodes containing primitives", a6, a7, a8, 0);
  LODWORD(v13) = *(a2 + 4);
  if (*(a2 + 4))
  {
    v14 = 0;
    v15 = 0;
    v59 = 0;
    do
    {
      v16 = *a2 + 16 * v14;
      if (*(v16 + 12) == 1)
      {
        v17 = *(v16 + 8);
        v18 = *(v16 + 10);
        if (*(a1 + 16) >= 2u)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "doing node %d", v10, v11, v12, v15);
          LODWORD(v13) = *(a2 + 4);
        }

        if (v13)
        {
          v56 = v15;
          v19 = 0;
          v57 = v18;
          v58 = v17;
          while (1)
          {
            if (v14 != v19)
            {
              v20 = *a2 + 16 * v19;
              if (*(v20 + 12) == 1 && *(v20 + 8) >= v17 && *(v20 + 10) <= v18)
              {
                break;
              }
            }

LABEL_32:
            ++v19;
            v13 = *(a2 + 4);
            if (v19 >= v13)
            {
              goto LABEL_33;
            }
          }

          if (*(a1 + 16) >= 2u)
          {
            v50 = *(a1 + 616);
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "checking node %d apply %d basicdef rules", v10, v11, v12, v19);
          }

          v21 = 0;
          v60 = 0;
          do
          {
            if (v21 >= *(a1 + 616))
            {
              v18 = v57;
              v17 = v58;
              goto LABEL_32;
            }

            if (*(*(a1 + 608) + 4 * v21) == 1)
            {
              v22 = strlen(*(*a2 + 16 * v19));
              result = do_pcre_exec(a1 + 8, *(*(*(a1 + 600) + 8 * v21) + 2), *(*a2 + 16 * v19), v22, 0, &v60, v23, v24);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v59 = result;
              if (*(a1 + 16) >= 2u)
              {
                v26 = "NOMATCH ";
                if (v60 == 1)
                {
                  v26 = "FIRED ";
                }

                v54 = *(a1 + 496) + *(*(a1 + 504) + 4 * *(*(*(a1 + 600) + 8 * v21) + 2));
                v55 = *(*a2 + 16 * v19);
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           %sbasicDef: rule %d : regexNum %d [%s] target %s", v10, v11, v12, v26);
              }
            }

            else
            {
              v27 = *(a1 + 544);
              v28 = *(*(a1 + 600) + 8 * v21);
              v29 = *(a1 + 536);
              if (!strcmp((v29 + *(v27 + 4 * *v28)), *(*a2 + 16 * v19)))
              {
                v60 = 1;
                if (*(a1 + 16) >= 2u)
                {
                  v51 = v29 + *(v27 + 4 * *v28);
                  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           basicDef: rule %d %s matched string with rule %s", v10, v11, v12, v21);
                }
              }

              else if (*(a1 + 16) >= 2u)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           basicDef: rule %d %s does not match string %s", v10, v11, v12, v21);
              }
            }

            ++v21;
          }

          while (!v60);
          v18 = v57;
          v17 = v58;
          if (v60 != 1)
          {
            goto LABEL_32;
          }

          v30 = *a2 + 16 * v14;
          v31 = *(*a1 + 32);
          v32 = *(v30 + 10);
          if (*(v30 + 8) == *(*a2 + 16 * v19 + 8))
          {
            v52 = *(v30 + 10);
            log_OutText(v31, "FE_PHRASING", 5, 0, "BLOCK decrease node %d from %d to %d, since matches entire node", v10, v11, v12, v56);
            goto LABEL_32;
          }

          v53 = *(v30 + 10);
          log_OutText(v31, "FE_PHRASING", 5, 0, "decrease node %d from %d to %d", v10, v11, v12, v56);
          *(*a2 + 16 * v14 + 10) = *(*a2 + 16 * v19 + 8);
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
    v59 = 0;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Sort MS Nodes Pass 2 : delete consumed nodes", v10, v11, v12, 0);
  v33 = *(a2 + 4);
  if (*(a2 + 4))
  {
    v34 = 0;
    v35 = *a2;
    v36 = *a2 + 12;
    do
    {
      v37 = v35 + 16 * v34;
      if (*(v37 + 12) == 1)
      {
        v38 = 0;
        v39 = *(v37 + 8);
        v40 = *(v37 + 10);
        v41 = v36;
        v42 = v34;
        do
        {
          if (*v41 == 1 && *(v41 - 2) == v39 && *(v41 - 1) > v40)
          {
            v40 = *(v41 - 1);
            v42 = v38;
          }

          ++v38;
          v41 += 4;
        }

        while (v33 != v38);
        v43 = v42;
        v44 = v33;
        v45 = v36;
        v46 = v35 + 16 * v42;
        do
        {
          v47 = *(v45 - 2);
          if (v47 == v39 && *v45 == 1 && v43 != 0)
          {
            *v45 = 0;
          }

          if (v47 > v39 && *v45 == 1 && *(v45 - 1) <= *(v46 + 10) && v43 != 0)
          {
            *v45 = 0;
          }

          v45 += 4;
          --v43;
          --v44;
        }

        while (v44);
      }

      ++v34;
    }

    while (v34 != v33);
  }

  return v59;
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
      v19 = strlen(a11);
      result = do_pcre_exec(a1 + 8, *(*(*(a1 + 576) + 8 * v18) + 2), a11, v19, 0, &v39, v20, v21);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v23 = v39;
    }

    else if (!strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * **(*(a1 + 576) + 8 * v18))), a11))
    {
      v23 = 1;
      v39 = 1;
    }

    else
    {
      v23 = 0;
    }

    ++v18;
    if (v23)
    {
      if (v23 == 1)
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
  v26 = strlen(a5);
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

  strncpy(a11, &v25[v31], (v32 - v31 + v30));
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
  v7 = strlen(__s);
  v8 = heap_Calloc(v6, 1, (v7 + 1));
  *a2 = v8;
  if (v8)
  {
    strcpy(v8, __s);
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
  v4 = strlen(a1);
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
  v225 = 0;
  v224 = 0;
  v222 = 0;
  v223 = 0;
  v220 = 0;
  v219 = 0;
  v221[0] = 0;
  v221[1] = 0;
  *(a6 + 1108) = log_GetLogLevel(*(a1 + 32)) > 4;
  v16 = (*(a3 + 104))(a4, a5, 1, 0, &v233[1]);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = (*(a3 + 184))(a4, a5, v233[1], 0, &v232);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (v232 != 1)
  {
    return v17;
  }

  v17 = (*(a3 + 176))(a4, a5, v233[1], 0, &v231, &v229);
  if ((v17 & 0x80000000) != 0 || v229 < 2u)
  {
    return v17;
  }

  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Method PandP : processing=%s", v18, v19, v20, v231);
  v21 = heap_Calloc(*(a1 + 8), 1, 1024);
  *(a6 + 1088) = v21;
  if (!v21 || (*(a6 + 1104) = 1024, v26 = heap_Calloc(*(a1 + 8), 1, 1024), (*(a6 + 1096) = v26) == 0))
  {
    v17 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v22, v23, v24, v25, v208);
    v32 = 0;
    goto LABEL_61;
  }

  v27 = strlen(v231) + 1;
  v32 = heap_Calloc(*(a1 + 8), 1, v27);
  if (!v32)
  {
    v17 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v28, v29, v30, v31, v208);
    goto LABEL_61;
  }

  v211 = v27;
  v33 = (*(a3 + 104))(a4, a5, 2, v233[1], v233);
  if ((v33 & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

  v213 = 0;
  v210 = (a6 + 1104);
  v17 = 2315271857;
  v212 = v32 - 1;
  v215 = v32;
  v216 = (a6 + 672);
  v214 = a2;
  while (v233[0])
  {
    v33 = (*(a3 + 168))(a4, a5);
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

    if (v228 <= 0xA && ((1 << v228) & 0x610) != 0)
    {
      v33 = (*(a3 + 168))(a4, a5, v233[0], 1, 1, &v224, &v229);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      v33 = (*(a3 + 168))(a4, a5, v233[0], 2, 1, &v224 + 2, &v229);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      if (v224 > HIWORD(v224))
      {
        goto LABEL_61;
      }

      v33 = (*(a3 + 176))(a4, a5, v233[0], 3, &v226, &v229);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      strncpy(v32, &v231[v224], HIWORD(v224) - v224);
      v32[HIWORD(v224) - v224] = 0;
      if (HIWORD(v224) == v224)
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v35, v36, v37, HIWORD(v224));
      }

      else
      {
        __s = 0;
        v217 = 0;
        v38 = strlen(v32);
        if (v38 && (v39 = v212[v38], v39 <= 0x3B))
        {
          v40 = 0x3FFEFFFFFFFFFFFuLL >> v39;
        }

        else
        {
          LOBYTE(v40) = 1;
        }

        v41 = addWord(a1, v215, &v224, v226, a6 + 8, v216);
        if ((v41 & 0x80000000) != 0)
        {
          goto LABEL_72;
        }

        v42 = *(a6 + 680);
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

        if ((v40 & 1) == 0)
        {
          *(*(a6 + 672) + 224 * *(a6 + 680) - 196) = 1;
        }

        v43 = (*(a3 + 184))(a4, a5, v233[0], 14, &v232);
        if ((v43 & 0x80000000) != 0)
        {
          goto LABEL_180;
        }

        v44 = v42 - 1;
        if (v232)
        {
          if (((*(a3 + 176))(a4, a5, v233[0], 14, &__s, &v229) & 0x80000000) == 0)
          {
            v219 = 1;
            v43 = parse_NLU_string(a6, __s, (v42 - 1), v42, &v219, a8);
            if ((v43 & 0x80000000) != 0)
            {
              goto LABEL_180;
            }
          }
        }

        v43 = (*(a3 + 176))(a4, a5, v233[0], 5, &v225, &v229);
        if ((v43 & 0x80000000) != 0)
        {
          goto LABEL_180;
        }

        if ((a2 = v214, (v213 = v219) == 0) && (v41 = addMSPOS(a1, v44, v225, a6 + 8, v216), (v41 & 0x80000000) != 0) || (v41 = checkMSPOSForCompound(a1, v44, v225, a6 + 8, v216), (v41 & 0x80000000) != 0))
        {
LABEL_72:
          v17 = v41;
          goto LABEL_181;
        }

        v32 = v215;
      }
    }

    v33 = (*(a3 + 120))(a4, a5, v233[0], v233);
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }
  }

  expandAndValidateCompounds(a1, v216, a6 + 8);
  v33 = (*(a3 + 104))(a4, a5, 2, v233[1], v233);
  if ((v33 & 0x80000000) != 0)
  {
LABEL_60:
    v17 = v33;
    goto LABEL_61;
  }

  while (v233[0])
  {
    v33 = (*(a3 + 168))(a4, a5);
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }

    if (v228 == 6)
    {
      v33 = (*(a3 + 168))(a4, a5, v233[0], 1, 1, &v224, &v229);
      a2 = v214;
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      v33 = (*(a3 + 168))(a4, a5, v233[0], 2, 1, &v224 + 2, &v229);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      if (v224 > HIWORD(v224))
      {
        goto LABEL_61;
      }

      v33 = (*(a3 + 176))(a4, a5, v233[0], 4, &v227, &v229);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      v48 = v227;
      if (strcmp(v227, "_PR_"))
      {
        POSString = addToken(a1, &v224, v48, a6 + 8, v216, a8, v49, v50);
        if ((POSString & 0x80000000) != 0 && POSString != -1979703296)
        {
          goto LABEL_203;
        }
      }
    }

    v33 = (*(a3 + 120))(a4, a5, v233[0], v233);
    a2 = v214;
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_60;
    }
  }

  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Added words from lingdb", v45, v46, v47, 0);
  v17 = (*(a3 + 176))(a4, a5, v233[1], 1, &v230, &v229 + 2);
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  if (!v213 && *(a6 + 568) == 1)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "USE MS - get PHR from MS tree", v54, v55, v56, 0);
    v16 = (*(a3 + 176))(a4, a5, v233[1], 2, &v223, &v229);
    if ((v16 & 0x80000000) == 0)
    {
      if (!a7)
      {
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "empty symbol table for MS rules", v57, v58, v59, 0);
        return 2315264000;
      }

      mosynt_StringToSyntTree(v214, a7, v223, &v222);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      POSString = printMSTree(a1, v214, a7, v222, v231, 0, (a6 + 1088), *(a6 + 1096), v210, v32, v211);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      POSString = extractFromMSTree(a6, v214, a7, v222, v231, 0, a6 + 1088, *(a6 + 1096), v210, v221, v32, v211);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      printMSNodes(a1, *(a6 + 1096), v231, v221, "START", 1, v60, v61);
      POSString = sortMSNodes(a6, v221, v62, v63, v64, v65, v66, v67);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      printMSNodes(a1, *(a6 + 1096), v231, v221, "END", 0, v68, v69);
      POSString = validateMSNodes(a1, v221, v70, v71, v72, v73, v74, v75);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      POSString = mapMSNodes2PHR(a6, v221, v76, v77, v78, v79, v80, v81);
      if ((POSString & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

      freeMSNodes(a1, v221);
      v17 = 0;
      goto LABEL_85;
    }

    return v16;
  }

LABEL_85:
  LOWORD(v82) = HIWORD(v229);
  if (!HIWORD(v229))
  {
    goto LABEL_152;
  }

  v83 = 0;
  v84 = 0;
  do
  {
    v85 = v230 + 32 * v84;
    if (*v85 == 21)
    {
      DomainFromPausingDefs = getDomainFromPausingDefs(a6 + 8, *(v85 + 24), &v220);
      v82 = HIWORD(v229);
      if (DomainFromPausingDefs == 1)
      {
        v87 = v84 + 1;
        if (HIWORD(v229) > (v84 + 1))
        {
          v88 = v230;
          v89 = v230 + 32 * v84;
          while (1)
          {
            v90 = v87;
            v91 = v88 + 32 * v87;
            if (*v91 == 21)
            {
              if (strcmp(*(v89 + 24), *(v91 + 24)))
              {
                break;
              }
            }

            v87 = v90 + 1;
            if (v82 <= (v90 + 1))
            {
              goto LABEL_94;
            }
          }

          if (*(a6 + 680))
          {
            v99 = *(v230 + 12);
            v100 = (*(v230 + 32 * v84 + 12) - v99);
            v101 = (*(v230 + 32 * v90 + 12) - v99);
            v102 = v220;
            v103 = *v216;
            v104 = *(a6 + 680) - 1;
            do
            {
              v105 = *v103;
              if (v105 >= v100 && v103[1] <= v101)
              {
                *(v103 + 13) = v102;
              }

              v106 = v105 > v101 || v104-- == 0;
              v103 += 112;
            }

            while (!v106);
          }

          v84 = v90 - (v90 + 1 != v83);
LABEL_116:
          v32 = v215;
          goto LABEL_117;
        }

LABEL_94:
        if (!*(a6 + 680))
        {
          goto LABEL_116;
        }

        v92 = (*(v230 + 32 * v84 + 12) - *(v230 + 12));
        v93 = *(v230 + 16);
        v94 = v220;
        v32 = v215;
        v95 = *v216;
        v96 = *(a6 + 680) - 1;
        do
        {
          v97 = *v95;
          if (v97 >= v92 && v95[1] <= v93)
          {
            *(v95 + 13) = v94;
          }

          v98 = v97 > v93 || v96-- == 0;
          v95 += 112;
        }

        while (!v98);
      }
    }

LABEL_117:
    v83 = ++v84;
  }

  while (v84 < v82);
  if (v82)
  {
    v107 = 0;
    v108 = v230;
    do
    {
      v109 = v107;
      if (*(v108 + 32 * v107) == 34)
      {
        ++v107;
        v110 = v108 + 32 * v109;
        if (v107 >= v82)
        {
          goto LABEL_213;
        }

        do
        {
          v111 = *(v108 + 32 * v107);
          if (v111 != 21)
          {
            ++v107;
          }
        }

        while (v107 < v82 && v111 != 21);
        if (v111 == 21)
        {
          if (*(a6 + 680))
          {
            v119 = *(v108 + 12);
            v120 = (*(v110 + 12) - v119);
            v121 = (*(v108 + 32 * v107 + 12) - v119);
            v122 = *v216;
            v123 = *(a6 + 680) - 1;
            do
            {
              v124 = *v122;
              if (v124 >= v120 && v122[1] <= v121)
              {
                *(v122 + 12) = 1;
              }

              v125 = v124 > v121 || v123-- == 0;
              v122 += 112;
            }

            while (!v125);
          }
        }

        else
        {
LABEL_213:
          if (*(a6 + 680))
          {
            v113 = (*(v110 + 12) - *(v108 + 12));
            v114 = *(v108 + 16);
            v115 = *v216;
            v116 = *(a6 + 680) - 1;
            do
            {
              v117 = *v115;
              if (v117 >= v113 && v115[1] <= v114)
              {
                *(v115 + 12) = 1;
              }

              v118 = v117 > v114 || v116-- == 0;
              v115 += 112;
            }

            while (!v118);
          }
        }
      }

      ++v107;
    }

    while (v107 < v82);
  }

LABEL_152:
  if (a8 != 1)
  {
    if (!*(a6 + 8))
    {
      heap_Free(*(a1 + 8), v32);
      return v17;
    }

    POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v210, a6 + 8, v216, "At Start", a8);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    POSString = resolvePHR(v231, a1, a6 + 8, v216, a8, v150, v151, v152);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v210, a6 + 8, v216, "Initialized data", a8);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    POSString = createPOSString(a1, a6 + 8, v216);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Created POS string for retagging : %s", v153, v154, v155, *(a6 + 688));
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "do retagging", v156, v157, v158, 0);
    POSString = doRetagging(*(a6 + 1108), (a6 + 1088), v210, *(a6 + 1096), a1, a6 + 8, v216, v159);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    POSString = printAsChunks(*(a6 + 1108), (a6 + 1088), v210, a6 + 8, v216, v160, v161, v162);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "do subtagging", v163, v164, v165, 0);
    POSString = doSubtagging(*(a6 + 1108), (a6 + 1088), v210, *(a6 + 1096), a1, a6 + 8, v216, v166);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    v167 = *(a6 + 688);
    if (v167)
    {
      heap_Free(*(a1 + 8), v167);
      *(a6 + 688) = 0;
      heap_Free(*(a1 + 8), *(a6 + 696));
      *(a6 + 696) = 0;
    }

    POSString = createPOSString(a1, a6 + 8, v216);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "set phrase type", v168, v169, v170, 0);
    POSString = setPhraseType(*(a6 + 1108), (a6 + 1088), v210, *(a6 + 1096), a1, a6 + 8, v216, v231);
    if ((POSString & 0x80000000) != 0)
    {
      goto LABEL_203;
    }

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
    }

    else
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "extend PHR containing token tags", v171, v172, v173, 0);
      POSString = extendPHRContainingTokenTags(a6, v201, v202, v203, v204, v205, v206, v207);
      if ((POSString & 0x80000000) != 0 || (POSString = annotateTokenTypeOnEachWord(a6), (POSString & 0x80000000) != 0) || (POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v210, a6 + 8, v216, "After token tag extension", a8), (POSString & 0x80000000) != 0))
      {
LABEL_203:
        v17 = POSString;
        a2 = v214;
        goto LABEL_61;
      }
    }

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
          POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v210, a6 + 8, v216, "AFTER GET PHON WEIGHTS", a8);
        }
      }
    }

    goto LABEL_203;
  }

  if (*(a6 + 680))
  {
    v126 = 0;
    v127 = 168;
    v128 = -1;
    do
    {
      v129 = *v216;
      v130 = *(*v216 + v127 + 8);
      if (!v130)
      {
        goto LABEL_161;
      }

      v131 = strcmp(v130, "COMP]");
      if (v127 != 168 && !v131)
      {
        v132 = v129 + 224 * v128;
        v133 = *(v132 + 176);
        if (v133)
        {
          if (!strcmp(*(v132 + 176), "COMP]"))
          {
            heap_Free(*(a1 + 8), v133);
            v134 = *v216 + 224 * v128;
            *(v134 + 176) = 0;
            setNNPausingDefault(a1, (v134 + 176), "-");
            v129 = *v216;
            if (!*(*v216 + v127 + 8))
            {
LABEL_161:
              setNNPausingDefault(a1, (v129 + v127 + 8), "-");
              v129 = *v216;
            }
          }
        }
      }

      if (!*(v129 + v127))
      {
        setNNPausingDefault(a1, (v129 + v127), "-");
        v129 = *v216;
      }

      LODWORD(__s) = 0;
      StartOfOrthPunc = getStartOfOrthPunc(*(*(v129 + v127 - 152) + 8 * *(a6 + 24)), &__s);
      if (__s == 1)
      {
        v136 = StartOfOrthPunc;
        v137 = strlen((*(*(*(a6 + 672) + v127 - 152) + 8 * *(a6 + 24)) + StartOfOrthPunc));
        v138 = heap_Calloc(*(a1 + 8), 1, (v137 + 1));
        v143 = *(a6 + 672) + v127;
        *(v143 + 40) = v138;
        if (!v138)
        {
          goto LABEL_205;
        }

        strcpy(v138, (*(*(v143 - 152) + 8 * *(a6 + 24)) + v136));
      }

      else
      {
        v144 = heap_Calloc(*(a1 + 8), 1, 2);
        *(*v216 + v127 + 40) = v144;
        if (!v144)
        {
LABEL_205:
          log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v139, v140, v141, v142, v209);
          return 2315264010;
        }

        *v144 = 88;
      }

      v145 = *v216;
      v146 = *v216 + v127;
      v148 = *(v146 + 16);
      v147 = (v146 + 16);
      if (!v148)
      {
        setNNPausingDefault(a1, v147, "X");
        v145 = *v216;
      }

      if (!*(v145 + v127 + 24))
      {
        setNNPausingDefault(a1, (v145 + v127 + 24), "X");
        v145 = *v216;
      }

      if (!*(v145 + v127 + 32))
      {
        setNNPausingDefault(a1, (v145 + v127 + 32), "X");
      }

      ++v126;
      v127 += 224;
      ++v128;
    }

    while (v126 < *(a6 + 680));
  }

  v43 = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v210, a6 + 8, v216, "At Start of NN Phrasing", 1);
  if ((v43 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), v215);
    return 0;
  }

LABEL_180:
  v17 = v43;
  a2 = v214;
LABEL_181:
  v32 = v215;
LABEL_61:
  if (*(a6 + 568) == 1)
  {
    freeMSNodes(a1, v221);
  }

  if (v32)
  {
    heap_Free(*(a1 + 8), v32);
  }

  if (v222)
  {
    v52 = mosyntdata_DisposeSyntTree(a2, &v222);
    if (v17 >= 0 && v52 <= -1)
    {
      return v52;
    }

    else
    {
      return v17;
    }
  }

  return v17;
}

uint64_t parse_NLU_string(uint64_t *a1, char *__s, unsigned int a3, int a4, _DWORD *a5, int a6)
{
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v12 = *(*a1 + 8);
  v13 = strlen(__s);
  v14 = heap_Calloc(v12, 1, (v13 + 1));
  if (v14)
  {
    v19 = v14;
    v60 = a6;
    __sa = __s;
    v20 = strcpy(v14, __s);
    for (i = (v19 + strlen(v20) - 1); i >= v19; --i)
    {
      v22 = *i;
      v23 = v22 > 0x3B;
      v24 = (1 << v22) & 0x800000100002600;
      if (v23 || v24 == 0)
      {
        break;
      }

      *i = 0;
    }

    v58 = a5;
    v26 = 0;
    v69 = 0;
    v67 = 0;
    v68 = 0uLL;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0uLL;
    v27 = 0;
    v61 = a4;
    v59 = a4 - 1;
    v28 = v19;
    while (1)
    {
      v29 = strchr(v28, 59);
      v30 = v29;
      if (v29)
      {
        *v29 = 0;
      }

      v31 = strchr(v28, 58);
      v32 = v31;
      if (v31)
      {
        *v31 = 0;
        v33 = v31 + 1;
      }

      else
      {
        v33 = "null";
      }

      if (!strcmp(v28, "POS"))
      {
        inserted = 0;
        v27 = v33;
        goto LABEL_35;
      }

      if (!strcmp(v28, "PHR"))
      {
        inserted = 0;
        v26 = v33;
        goto LABEL_35;
      }

      if (!strcmp(v28, "BND"))
      {
        inserted = 0;
        v69 = v33;
        goto LABEL_35;
      }

      if (!strcmp(v28, "BNDSHAPE"))
      {
        inserted = 0;
        v67 = v33;
        goto LABEL_35;
      }

      if (!strcmp(v28, "S_POI"))
      {
        inserted = 0;
        v39 = "B";
LABEL_34:
        *(&v68 + 1) = v39;
        *&v68 = v33;
        goto LABEL_35;
      }

      if (!strcmp(v28, "I_POI"))
      {
        inserted = 0;
        v39 = "I";
        goto LABEL_34;
      }

      if (!strcmp(v28, "E_POI"))
      {
        inserted = 0;
        v39 = "S";
        if (!*(&v68 + 1))
        {
          v39 = "E";
        }

        goto LABEL_34;
      }

      if (!strcmp(v28, "PRM"))
      {
        inserted = 0;
        v66 = v33;
        goto LABEL_35;
      }

      v37 = *(a1 + 166);
      if (v37 == 1)
      {
        if (!strcmp((v28 + 1), "_COMP"))
        {
          v40 = strlen(v33);
          v41 = heap_Calloc(*(*a1 + 8), 1, (v40 + 3));
          if (!v41)
          {
            goto LABEL_69;
          }

          v42 = v41;
          v43 = strcmp(v28, "S_COMP");
          v44 = "I-";
          if (!v43)
          {
            v44 = "B-";
          }

          *v42 = *v44;
          v42[2] = v44[2];
          strcat(v42, v33);
          v45 = v42;
          inserted = 0;
          *(&v65 + 1) = v45;
          v64 = v45;
          goto LABEL_35;
        }
      }

      else if (!v37 && !strcmp(v28, "COMP"))
      {
        inserted = 0;
        *(&v65 + 1) = v33;
        goto LABEL_35;
      }

      if (!v32 || v32 <= v28 + 1)
      {
LABEL_46:
        inserted = addMarkerType(*a1, v28, v33, a3, v59, (a1 + 1), a1 + 84);
        goto LABEL_35;
      }

      if (!strcmp((v28 + 1), "_CLASS"))
      {
        inserted = 0;
        v63 = v33;
        goto LABEL_35;
      }

      if (v60 != 1 || strcmp(v28, "PUNC"))
      {
        break;
      }

      if (!v65)
      {
        v48 = strlen(__sa);
        v49 = heap_Calloc(*(*a1 + 8), 1, (v48 + 4));
        if (!v49)
        {
          goto LABEL_69;
        }

        v50 = v49;
        strcpy(v49, "X_");
        v51 = strcat(v49, v28);
        *&v50[strlen(v51)] = 58;
        *&v65 = v50;
        strcat(v50, v33);
LABEL_56:
        inserted = 0;
        goto LABEL_35;
      }

      inserted = 0;
LABEL_35:
      if (v30)
      {
        v28 = (v30 + 1);
        if ((inserted & 0x80000000) == 0)
        {
          continue;
        }
      }

      v73 = v65;
      *&v72 = v66;
      *(&v72 + 1) = v63;
      v74 = v68;
      *&v71 = v69;
      *(&v71 + 1) = v67;
      *&v70 = v27;
      *(&v70 + 1) = v26;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "parsed NLU %s[%d,%d] -> POS=%s, PHR=%s, BND=%s, BNDSHAPE=%s, PRM=%s, CLASS=%s, PUNC=%s, COMP=%s, POIClass=%s, POIPosi=%s", v34, v35, v36, __sa);
      if ((inserted & 0x80000000) == 0)
      {
        if (!v27)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "missing POS in NLU string: arg=%s", v52, v53, v54, v19);
          *v58 = 0;
        }

        inserted = insert_NLU_info(*a1, a3, v61, &v70, (a1 + 1), a1 + 84, v60);
      }

      heap_Free(*(*a1 + 8), v19);
      if (v65)
      {
        heap_Free(*(*a1 + 8), v65);
      }

      if (v64)
      {
        heap_Free(*(*a1 + 8), v64);
      }

      return inserted;
    }

    if (strcmp((v28 + 1), "_PUNC"))
    {
      goto LABEL_46;
    }

    v46 = v65;
    if (!v65)
    {
      v47 = strlen(__sa);
      v46 = heap_Calloc(*(*a1 + 8), 1, (v47 + 1));
      if (!v46)
      {
        inserted = 2315264010;
        v55 = *a1;
        goto LABEL_70;
      }

      *v46 = 0;
    }

    *v32 = 58;
    *&v65 = v46;
    hlp_NLUStrJoin(v46, v28);
    goto LABEL_56;
  }

LABEL_69:
  inserted = 2315264010;
  v55 = *a1;
LABEL_70:
  log_OutPublic(*(v55 + 32), "FE_PHRASING", 37000, 0, v15, v16, v17, v18, v57);
  return inserted;
}

double freeSentenceData(uint64_t a1)
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
  }

  result = 0.0;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 672) = 0u;
  return result;
}

uint64_t updateLingdb(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v23 = 0;
  *__dst = 0u;
  v38 = 0u;
  PhraseStartingAtThisWord = (*(a1 + 104))(a2, a3, 1, 0, &v33 + 2);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
LABEL_42:
    v9 = PhraseStartingAtThisWord;
    goto LABEL_43;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v33), 0, &v34);
  if ((v9 & 0x80000000) == 0 && v34 == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, HIWORD(v33), 0, &v24, &v32);
    if ((v9 & 0x80000000) == 0 && v32 >= 2u)
    {
      v9 = (*(a1 + 104))(a2, a3, 2, HIWORD(v33), &v33);
      if ((v9 & 0x80000000) == 0)
      {
        v25 = 0;
        __s[0] = 0;
        LOBYTE(v39) = 0;
        **(a4 + 1088) = 0;
        for (i = v33; v33; i = v33)
        {
          PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, i, 0, 1, &v30, &v32);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            goto LABEL_42;
          }

          if (v30 <= 0xA && ((1 << v30) & 0x610) != 0)
          {
            PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v33, 1, 1, &v27, &v32);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              goto LABEL_42;
            }

            PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v33, 2, 1, &v27 + 2, &v32);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              goto LABEL_42;
            }

            PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, v33, 3, &v29, &v32);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              goto LABEL_42;
            }

            if (v27 != HIWORD(v27))
            {
              PhraseStartingAtThisWord = getPhraseStartingAtThisWord((a4 + 672), a4 + 8, v27, &v26 + 1, __s, &v28, &v25 + 1, &v25);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                goto LABEL_42;
              }

              if (__s[0])
              {
                __strcpy_chk();
                LOWORD(v26) = 0;
                if (HIWORD(v26) <= 1u)
                {
                  if (HIWORD(v25))
                  {
                    setSilDurOnWord(a4 + 672, (a4 + 8), (HIWORD(v25) - 1), &v26);
                  }

                  else
                  {
                    LOWORD(v26) = 200;
                  }
                }

                PhraseStartingAtThisWord = (*(a1 + 88))(a2, a3, v33, &v32 + 2);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  goto LABEL_42;
                }

                v30 = 15;
                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v32), 0, 1, &v30, &v31);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  goto LABEL_42;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v32), 1, 1, &v27, &v31);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  goto LABEL_42;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v32), 2, 1, &v28, &v31);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  goto LABEL_42;
                }

                v12 = strlen(__s);
                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v32), 4, (v12 + 1), __s, &v31);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  goto LABEL_42;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v32), 7, 1, &v26 + 2, &v31);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  goto LABEL_42;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v32), 8, 1, &v26, &v31);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  goto LABEL_42;
                }
              }

              v13 = HIWORD(v25);
              setSilDurOnWord(a4 + 672, (a4 + 8), HIWORD(v25), &v26);
              PhraseStartingAtThisWord = checkForExternalSildur(a1, a2, a3, v33, &v23);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                goto LABEL_42;
              }

              if (!v23)
              {
                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v33, 8, 1, &v26, &v31);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  goto LABEL_42;
                }
              }

              v14 = *(*(a4 + 672) + 224 * v13 + 72);
              get_phr_for_nlu_output(a4, v13, __dst);
              get_pos_for_nlu_output(a4, v13, v36);
              PhraseStartingAtThisWord = updateNLUField(a1, a2, a3, v33, a4, v13, v36, __dst, *(*(a4 + 672) + 224 * v13 + 96), *(*(a4 + 672) + 224 * v13 + 112));
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                goto LABEL_42;
              }

              log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", v15, v16, v17, v33);
              LH_itoa(v14, v35, 0xAu);
              v18 = strlen(v35);
              PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v33, 13, (v18 + 1), v35, &v31);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                goto LABEL_42;
              }
            }
          }

          v9 = (*(a1 + 120))(a2, a3, v33, &v33);
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_43;
          }
        }

        **(a4 + 1088) = 0;
        if (v39 != 89)
        {
          v19 = v24;
          v20 = strrchr(v24, 63);
          if (v20)
          {
            if (v20 != v19 && *(v20 - 1) != 32)
            {
              *v20 = 46;
            }
          }
        }
      }
    }
  }

LABEL_43:
  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t getPhraseStartingAtThisWord(uint64_t *a1, uint64_t a2, uint64_t a3, __int16 *a4, char *__dst, _WORD *a6, __int16 *a7, _WORD *a8)
{
  *a4 = 0;
  if (!*(a1 + 4))
  {
LABEL_5:
    v18 = 2315264000;
    if (a2)
    {
      log_OutText(*(*a2 + 32), "FE_PHRASING", 5, 0, "cant align lingdb word : no word found with fromPos=%d", a6, a7, a8, a3);
    }

    return v18;
  }

  v15 = 0;
  v16 = *a1;
  v17 = (*a1 + 73);
  while (*(v16 + 224 * v15) != a3)
  {
    ++v15;
    v17 += 224;
    if (v15 >= *(a1 + 4))
    {
      goto LABEL_5;
    }
  }

  v19 = *a8;
  *a7 = v15;
  if (v15 | v19)
  {
    v20 = v15 > v19;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v18 = 0;
    *__dst = 0;
    return v18;
  }

  v21 = *(a1 + 4);
  v22 = v15;
  if (v15 < v21)
  {
    LOWORD(v22) = v15;
    while (1)
    {
      v23 = *v17;
      v17 += 224;
      if ((v23 - 5) > 0xFFFFFFFD)
      {
        break;
      }

      LOWORD(v22) = v22 + 1;
      if (v21 == v22)
      {
        goto LABEL_19;
      }
    }

    v22 = v22;
  }

  if (v22 == v21)
  {
LABEL_19:
    *a6 = *(v16 + 224 * *(a1 + 4) - 222);
    *a8 = *(a1 + 4);
  }

  else
  {
    *a8 = v22;
    *a6 = *(v16 + 224 * v22 + 2);
    if (v22 + 1 != *(a1 + 4))
    {
      *a6 = *(v16 + 224 * (v22 + 1));
      v25 = 80;
      goto LABEL_25;
    }
  }

  v24 = a1[5];
  if (!v24)
  {
    v25 = 84;
LABEL_25:
    *__dst = v25;
    goto LABEL_26;
  }

  strcpy(__dst, v24);
LABEL_26:
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
    v29 = *a8;
    v28 = *a6;
    log_OutText(*(*a2 + 32), "FE_PHRASING", 5, 0, "Phrase lingdb=%d,%d PHRTYPE=%s BNDTYPE=%d internal word %d,%d", a6, a7, a8, a3);
  }

  return 0;
}

size_t setSilDurOnWord(size_t result, void *a2, int a3, _WORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  *a4 = 0;
  v6 = *(result + 8);
  v7 = *result;
  if (a3 + 1 < v6 && *(v7 + 224 * (a3 + 1) + 220) == 1)
  {
    do
    {
      LOWORD(a3) = a3 + 1;
      v8 = a3;
      v9 = a3 + 1;
    }

    while (v9 < v6 && *(v7 + 224 * v9 + 220) == 1);
  }

  else
  {
    v8 = a3;
  }

  v10 = v7 + 224 * a3;
  v11 = v6 - 1;
  if (*(v10 + 73) == 4 && v11 != v8)
  {
    v13 = (a2[6] + 8 * *(v10 + 52));
    *a4 = *(v13 + 2);
    strcpy(__s, "tnpausedur");
    v14 = strlen((a2[66] + *(a2[67] + 4 * *v13)));
    result = strlen(__s);
    if (v14 < 255 - result)
    {
      __strcat_chk();
      result = paramc_ParamGetUInt(*(*a2 + 40), __s, &v16);
      if ((result & 0x80000000) == 0)
      {
        *a4 = v16;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

size_t get_phr_for_nlu_output(size_t result, unsigned int a2, char *__dst)
{
  v4 = *(*(result + 672) + 224 * a2 + 56);
  if (v4 && (v5 = result, (v6 = *(v4 + 32 * *(result + 32) + 16)) != 0))
  {
    if (*v6 == 79 && !*(v6 + 1) || !strcmp(v6, "O-P"))
    {
      strcpy(__dst, v6);
    }

    else
    {
      strcpy(__dst, "B-");
      strcat(__dst, *(*(*(v5 + 672) + 224 * a2 + 56) + 32 * *(v5 + 32) + 16));
    }

    result = strlen(__dst);
    if (result >= 2)
    {
      v8 = &__dst[result];
      if (__dst[result - 2] == 45 && *(v8 - 1) == 80 && !*v8)
      {
        *(v8 - 2) = 0;
      }
    }
  }

  else if (*__dst && (*__dst != 79 || __dst[1]))
  {
    *__dst = 73;
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

  return strcpy(__dst, v4);
}

uint64_t updateNLUField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *a7, char *a8, char *a9, char *a10)
{
  v36 = 0;
  v35 = 0;
  __s = 0;
  result = (*(a1 + 184))(a2, a3, a4, 14, &v36 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (!HIWORD(v36))
    {
      goto LABEL_6;
    }

    result = (*(a1 + 176))(a2, a3, a4, 14, &__s, &v36);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v36 >= 2u)
    {
      v18 = __s;
    }

    else
    {
LABEL_6:
      v18 = "";
      __s = "";
    }

    v33 = a3;
    v19 = strlen(v18);
    if (a7)
    {
      v20 = v19 + strlen(a7) + 6;
    }

    else
    {
      v20 = v19 + 1;
    }

    if (a8)
    {
      v20 += strlen(a8) + 5;
    }

    if (a9 && !*(a5 + 664))
    {
      v20 += strlen(a9) + 6;
    }

    if (a10)
    {
      v20 += strlen(a10) + 10;
    }

    if (v20 <= *(a5 + 1104))
    {
      v21 = *(a5 + 1088);
    }

    else
    {
      v21 = heap_Realloc(*(*a5 + 8), *(a5 + 1088), v20);
      if (!v21)
      {
        log_OutPublic(*(*a5 + 32), "FE_PHRASING", 37000, 0, v22, v23, v24, v25, v31);
        return 2315264010;
      }

      *(a5 + 1088) = v21;
      *(a5 + 1104) = v20;
      v18 = __s;
    }

    strcpy(v21, v18);
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

    v32 = *(a5 + 1088);
    log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", v26, v27, v28, a4);
    v29 = *(a5 + 1088);
    v30 = strlen(v29);
    return (*(a1 + 160))(a2, v33, a4, 14, (v30 + 1), v29, &v35);
  }

  return result;
}

uint64_t updateLingdbCrfPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  *__dst = 0u;
  v44 = 0u;
  PhraseStartingAtThisWord = (*(a1 + 104))(a2, a3, 1, 0, &v39 + 2);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v39), 0, &v40);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_45;
  }

  if (v40 != 1)
  {
    goto LABEL_45;
  }

  v9 = (*(a1 + 176))(a2, a3, HIWORD(v39), 0, &v30, &v38);
  if ((v9 & 0x80000000) != 0 || v38 < 2u)
  {
    goto LABEL_45;
  }

  PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, HIWORD(v39), 1, &v29, &v28);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
LABEL_44:
    v9 = PhraseStartingAtThisWord;
    goto LABEL_45;
  }

  v9 = (*(a1 + 104))(a2, a3, 2, HIWORD(v39), &v39);
  if ((v9 & 0x80000000) == 0)
  {
    v31 = 0;
    __s[0] = 0;
    **(a4 + 1088) = 0;
    for (i = v39; v39; i = v39)
    {
      PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, i, 0, 1, &v36, &v38);
      if ((PhraseStartingAtThisWord & 0x80000000) != 0)
      {
        goto LABEL_44;
      }

      if (v36 <= 0xA && ((1 << v36) & 0x610) != 0)
      {
        PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v39, 1, 1, &v33, &v38);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          goto LABEL_44;
        }

        PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v39, 2, 1, &v33 + 2, &v38);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          goto LABEL_44;
        }

        PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, v39, 3, &v35, &v38);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          goto LABEL_44;
        }

        if (v33 != HIWORD(v33))
        {
          PhraseStartingAtThisWord = getPhraseStartingAtThisWord((a4 + 672), 0, v33, &v32 + 1, __s, &v34, &v31 + 1, &v31);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            goto LABEL_44;
          }

          if (__s[0])
          {
            LOWORD(v32) = 0;
            if (HIWORD(v32) <= 1u)
            {
              if (HIWORD(v31))
              {
                setSilDurOnWordCrf(a4 + 672, a4 + 8, (HIWORD(v31) - 1), &v32, v12, v13, v14, v15);
              }

              else
              {
                LOWORD(v32) = 200;
              }
            }

            PhraseStartingAtThisWord = (*(a1 + 88))(a2, a3, v39, &v38 + 2);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            v36 = 15;
            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v38), 0, 1, &v36, &v37);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v38), 1, 1, &v33, &v37);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v38), 2, 1, &v34, &v37);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            v16 = strlen(__s);
            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v38), 4, (v16 + 1), __s, &v37);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v38), 7, 1, &v32 + 2, &v37);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v38), 8, 1, &v32, &v37);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              goto LABEL_44;
            }
          }

          v17 = HIWORD(v31);
          setSilDurOnWordCrf(a4 + 672, a4 + 8, HIWORD(v31), &v32, v12, v13, v14, v15);
          PhraseStartingAtThisWord = checkForExternalSildur(a1, a2, a3, v39, &v27);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            goto LABEL_44;
          }

          if (!v27)
          {
            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v39, 8, 1, &v32, &v37);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              goto LABEL_44;
            }
          }

          v18 = *(*(a4 + 672) + 224 * v17 + 72);
          get_phr_for_nlu_output(a4, v17, __dst);
          get_pos_for_nlu_output(a4, v17, v42);
          PhraseStartingAtThisWord = updateNLUField(a1, a2, a3, v39, a4, v17, v42, __dst, *(*(a4 + 672) + 224 * v17 + 96), *(*(a4 + 672) + 224 * v17 + 112));
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            goto LABEL_44;
          }

          log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", v19, v20, v21, v39);
          LH_itoa(v18, v41, 0xAu);
          v22 = strlen(v41);
          PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v39, 13, (v22 + 1), v41, &v37);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            goto LABEL_44;
          }
        }
      }

      v9 = (*(a1 + 120))(a2, a3, v39, &v39);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_45;
      }
    }

    **(a4 + 1088) = 0;
    if (*__s == 87 || !(*__s ^ 0x4641 | v46))
    {
      v23 = v30;
      v24 = strrchr(v30, 63);
      if (v24 && v24 != v23 && *(v24 - 1) != 32)
      {
        *v24 = 46;
      }
    }
  }

LABEL_45:
  v25 = *MEMORY[0x1E69E9840];
  return v9;
}

size_t setSilDurOnWordCrf(size_t result, uint64_t a2, int a3, __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  v15 = v12 + 224 * a3;
  v16 = v11 - 1;
  if (*(v15 + 73) == 4 && v16 != v13)
  {
    v18 = **(v15 + 16);
    result = strlen(v18);
    v19 = result;
    *a4 = 100;
    if (v18 && (result = strlen(v18)) != 0 && ((v20 = v18[result - 1], v21 = v20 > 0x3B, v22 = (1 << v20) & 0xC00100000000000, !v21) ? (v23 = v22 == 0) : (v23 = 1), !v23))
    {
      v24 = 300;
    }

    else
    {
      if (v18[v19 - 1] != 46)
      {
        return result;
      }

      v24 = 600;
    }

    *a4 = v24;
  }

  return result;
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
      v19 = strlen(v18);
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
  v41 = 0;
  v42 = 0;
  v40 = 0;
  stress_models = 2315264010;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v35 = -1;
  v34 = 0;
  if (!a5)
  {
    return 2315264007;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v42);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v41);
    if ((inited & 0x80000000) == 0)
    {
      v12 = heap_Calloc(v42[1], 1, 1728);
      v17 = v42;
      if (!v12 || (v18 = v12, v19 = heap_Calloc(v42[1], 1, 1040), *(v18 + 48) = v19, v17 = v42, !v19))
      {
        log_OutPublic(v17[4], "FE_PHRASING", 37000, 0, v13, v14, v15, v16, v32);
        goto LABEL_46;
      }

      *v18 = v42;
      *(v18 + 8) = a3;
      v20 = v41;
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
      Object = objc_GetObject(v42[6], "LINGDB", &v40);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_45;
      }

      *(v18 + 56) = *(v40 + 8);
      Object = objc_GetObject(v42[6], "FE_DEPES", &v39);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_45;
      }

      v23 = v39;
      *(v18 + 80) = *(v39 + 8);
      *(v18 + 64) = *(v23 + 16);
      Object = objc_GetObject(v42[6], "FE_DCTLKP", &v38);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_45;
      }

      v24 = v38;
      *(v18 + 104) = *(v38 + 8);
      *(v18 + 88) = *(v24 + 16);
      *(v18 + 1296) = 0;
      Object = nn_phrasing_checkIfActive(a3, a4, v42, (v18 + 1296));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_45;
      }

      if (*(v18 + 1296) == 1)
      {
        Object = nn_phrasing_Load(a3, a4, *(v18 + 32), *(v18 + 40), v42, *(v18 + 104), *(v18 + 88), *(v18 + 96), (v18 + 1304));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_45;
        }
      }

      Object = isCorpusAlignmentEnabled(v42, &v37);
      if ((Object & 0x80000000) != 0)
      {
LABEL_45:
        stress_models = Object;
        goto LABEL_46;
      }

      if (v37 == 1)
      {
        *(v18 + 160) = 0;
        *(v18 + 116) = 0;
      }

      else
      {
        Object = usePandP(v42, (v18 + 160));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_45;
        }

        if (*(v18 + 160))
        {
          Object = paramc_ParamSetUInt(v42[5], "prmigactive", 1u);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          Object = pandpIgtreeInit(a3, a4, a1, a2, v42, v41, (v18 + 920));
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

          v25 = v42;
          *(v18 + 168) = v42;
          Object = readPandPRules(a3, a4, v25, v18 + 176);
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

          v26 = strcmp(__s1, "yes") == 0;
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
            if (!*(v18 + 112) || (v29 = v41, v28 = v42, *(v18 + 168) = v42, Object = pandpCrfInit(a3, a4, a1, a2, v28, v29, *(v18 + 104), v27, *(v18 + 88), *(v18 + 96), v18 + 920), (Object & 0x80000000) == 0))
            {
              (*(*(v18 + 104) + 96))(*(v18 + 88), *(v18 + 96), "fecfg", "statbnd_enable_nnets", &v36, &v35, &v34);
              if (v35 && v36)
              {
                (*v36)[strlen(*v36) - 1] = 0;
                *(v18 + 1456) = strcmp(*v36, "yes") == 0;
              }

              Object = fe_phrasing_InitNNPhrasing(v18);
              if ((Object & 0x80000000) == 0)
              {
                Object = hlp_useNLUPOSMap(*(v18 + 88), *(v18 + 96), *(v18 + 104), (v18 + 1280));
                if ((Object & 0x80000000) == 0)
                {
                  if (*(v18 + 1280) != 1 || (Object = hlp_loadNLUPOSMap(v42, *(v18 + 104), *(v18 + 88), *(v18 + 96), (v18 + 1288)), (Object & 0x80000000) == 0))
                  {
                    fe_phraseing_tryLoadingIGTree(*(v18 + 8), *(v18 + 16), *(v18 + 32), *(v18 + 40), *v18, (v18 + 1648));
                    stress_models = load_stress_models(*(v18 + 8), *(v18 + 16), *v18, *(v18 + 88), *(v18 + 96), *(v18 + 104), a1, a2, (v18 + 1680), (v18 + 1696), (v18 + 1688), *(v18 + 1464), (v18 + 1472), (v18 + 1704), (v18 + 1720), (v18 + 1684));
                    if ((stress_models & 0x80000000) == 0)
                    {
                      v30 = 62343;
LABEL_47:
                      *a5 = v18;
                      *(a5 + 8) = v30;
                      return stress_models;
                    }

LABEL_46:
                    fe_phrasing_ObjClose(*a5, *(a5 + 8));
                    v18 = 0;
                    v30 = 0;
                    goto LABEL_47;
                  }
                }
              }
            }
          }

          goto LABEL_45;
        }
      }

      Object = paramc_ParamSetUInt(v42[5], "prmigactive", 1u);
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
  v15 = 0;
  v14 = -1;
  v13 = 0;
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
            v12 = 0;
            *(a1 + 1524) = 0;
            result = (*(*(a1 + 104) + 96))(*(a1 + 88), *(a1 + 96), "fecfg", "statbnd_nopos", &v15, &v14, &v13);
            if ((result & 0x80000000) == 0)
            {
              if (v14 == 1)
              {
                (*v15)[strlen(*v15) - 1] = 0;
                if (!strcmp(*v15, "yes"))
                {
                  *(a1 + 1524) = 1;
                }
              }

              result = load_pw_igtree_cfg(*(a1 + 88), *(a1 + 96), *(a1 + 104), &v12);
              if ((result & 0x80000000) == 0)
              {
                if (v12)
                {
                  v5 = (a1 + 1536);
                  result = load_pw_igtree(*(a1 + 8), *(a1 + 16), *a1, (a1 + 1536));
                  if ((result & 0x80000000) != 0)
                  {
                    if (*v5)
                    {
                      igtree_Deinit(*a1, *v5, v6, v7, v8, v9, v10, v11);
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

    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp(v7, "YES") || !strcmp(v7, "yes"))
    {
      result = 0;
      *a4 = 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t hlp_loadNLUPOSMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v10 = (*(a2 + 96))(a3, a4, "fecfg", "nluposmapcounter", &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v12 = **&__c[3];
    v13 = strchr(**&__c[3], __c[0]);
    if (v13)
    {
      *v13 = 0;
      v12 = **&__c[3];
    }

    v14 = atoi(v12);
    if (v14)
    {
      v15 = v14;
      v16 = *(a1 + 8);
      *v30 = ssftmap_ElemCopyString;
      *&v30[8] = ssftmap_ElemFreeString;
      *&v30[16] = ssftmap_ElemCompareKeysString;
      *&v30[24] = ssftmap_ElemCopyString;
      v31 = ssftmap_ElemFreeString;
      v17 = ssftmap_ObjOpen(v16, 0, v30, a5);
      if ((v17 & 0x80000000) != 0)
      {
        v10 = v17;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = v15;
        do
        {
          memset(&v30[10], 0, 22);
          strcpy(v30, "nluposmap");
          LH_itoa(v18, v28, 0xAu);
          __strcat_chk();
          *&__c[1] = -1;
          v10 = (*(a2 + 96))(a3, a4, "fecfg", v30, &__c[3], &__c[1], __c);
          if ((v10 & 0x80000000) != 0)
          {
            break;
          }

          if (*&__c[1])
          {
            v21 = v20;
            v22 = **&__c[3];
            v23 = strchr(**&__c[3], __c[0]);
            if (v23)
            {
              *v23 = 0;
              v19 = (v23 + 1);
            }

            if (v22)
            {
              do
              {
                v24 = strchr(v22, 124);
                v25 = v24;
                if (v24)
                {
                  *v24 = 0;
                }

                v10 = ssftmap_Insert(*a5, v22, v19);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_24;
                }

                v22 = v25 + 1;
              }

              while (v25);
            }

            v20 = v21;
          }

          v18 = v18 + 1;
        }

        while (v18 < v20);
      }
    }
  }

LABEL_24:
  v26 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t fe_phraseing_tryLoadingIGTree(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  *a6 = 0;
  result = nn_model_getBrokerString(a5, v20, "wprules_", 0x100uLL);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  result = igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, &v19, 2, v20, "IGTR", 1031, 0);
  if ((result & 0x80000000) != 0)
  {
    result = log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "failed to read IGtree phrasing model data - going on without", v13, v14, v15, v18);
LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v16 = v19;
LABEL_6:
  *a6 = v16;
  v17 = *MEMORY[0x1E69E9840];
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
      freePandPRules(a1 + 22, v10, v11, v12, v13, v14, v15, v16);
    }

    if (*(a1 + 364) == 1)
    {
      v17 = a1[181];
      if (v17)
      {
        if (*v17)
        {
          fi_deinit(*a1, a1[3], *v17);
          v17 = a1[181];
        }

        if (!*(a1 + 365))
        {
          fi_deinit(*a1, a1[3], v17[1]);
          v17 = a1[181];
        }

        heap_Free((*a1)[1], v17);
        a1[181] = 0;
      }

      v18 = a1[183];
      if (v18)
      {
        (v18[3])(a1[186], a1[187]);
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

      v19 = a1[192];
      if (v19)
      {
        igtree_Deinit(*a1, v19, v4, v5, v6, v7, v8, v9);
        heap_Free((*a1)[1], a1[192]);
        a1[192] = 0;
      }

      freeSpRules(*a1, (a1 + 193));
      freePwInObjClose(*a1, a1[191], v20, v21, v22, v23, v24, v25);
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

    v26 = a1[6];
    if (v26)
    {
      heap_Free((*a1)[1], v26);
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

      v27 = a1[206];
      if (v27)
      {
        igtree_Deinit_ReadOnly_DereferenceCnt(*a1, a1[3], v27);
        a1[206] = 0;
      }

      if (*(a1 + 420))
      {
        free_stress_model(*a1, a1[3], a1[212], a1[211], a1[183], a1[213], a1[214], v9);
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
      nn_option = nn_phrasing_Load(a1[1], a1[2], a1[4], a1[5], *a1, a1[13], a1[11], a1[12], a1 + 652);
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
      freePwInObjClose(v6, v7, v8, v9, v10, v11, v12, v13);
      freeSPPunc(*a1, a1[208]);
      freeSPPunc(*a1, a1[209]);
      v20 = a1[192];
      if (v20)
      {
        igtree_Deinit(*a1, v20, v14, v15, v16, v17, v18, v19);
        heap_Free((*a1)[1], a1[192]);
        a1[192] = 0;
      }

      v21 = a1[206];
      if (v21)
      {
        igtree_Deinit_ReadOnly_DereferenceCnt(*a1, a1[3], v21);
        a1[206] = 0;
      }

      if (*(a1 + 420))
      {
        free_stress_model(*a1, a1[3], a1[212], a1[211], a1[183], a1[213], a1[214], v19);
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

        v22 = heap_Calloc((*a1)[1], 1, 1776);
        a1[191] = v22;
        nn_option = load_pw_cfg(a1[13], a1[11], a1[12], v22, *a1);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = getphraseCfg(*a1, a1[13], a1[11], a1[12], a1 + 414, a1 + 208, a1 + 209);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        v51 = 0;
        nn_option = load_pw_igtree_cfg(a1[11], a1[12], a1[13], &v51);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        if (v51)
        {
          v23 = (a1 + 192);
          if ((load_pw_igtree(a1[1], a1[2], *a1, a1 + 192) & 0x80000000) != 0)
          {
            if (*v23)
            {
              igtree_Deinit(*a1, *v23, v24, v25, v26, v27, v28, v29);
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
      a1[214] = v31;
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
      a1[214] = v30;
      *(a1 + 420) = 0;
      nn_option = load_stress_models(a1[1], a1[2], *a1, a1[11], a1[12], a1[13], a1[4], a1[5], a1 + 420, a1 + 212, a1 + 211, a1[183], a1 + 184, a1 + 213, a1 + 860, a1 + 421);
    }

    if ((nn_option & 0x80000000) != 0)
    {
      return nn_option;
    }

LABEL_39:
    v32 = a1 + 20;
    if (*(a1 + 40) == 1)
    {
      pandpIgtreeDeinit(a1[21], a1[3], a1 + 115);
      freePandPRules(a1 + 22, v33, v34, v35, v36, v37, v38, v39);
    }

    bzero(a1 + 22, 0x298uLL);
    nn_option = usePandP(*a1, a1 + 40);
    if ((nn_option & 0x80000000) != 0)
    {
      return nn_option;
    }

    if (*v32 != 1)
    {
      goto LABEL_48;
    }

    PandPRules = paramc_ParamSetUInt((*a1)[5], "prmigactive", 1u);
    if ((PandPRules & 0x80000000) == 0)
    {
      PandPRules = pandpIgtreeInit(a1[1], a1[2], a1[4], a1[5], *a1, a1[3], a1 + 115);
      if ((PandPRules & 0x80000000) == 0)
      {
        a1[75] = 0;
        *(a1 + 152) = 0;
        PandPRules = nuance_pcre_ObjOpen(a1[1], a1[2], (a1 + 75));
        if ((PandPRules & 0x80000000) == 0)
        {
          PandPRules = nuance_pcre_Init(a1[75], a1[76], 0x1Eu, 50);
          if ((PandPRules & 0x80000000) == 0)
          {
            v42 = *a1;
            v41 = a1[1];
            a1[21] = *a1;
            PandPRules = readPandPRules(v41, a1[2], v42, (a1 + 22));
            if ((PandPRules & 0x80000000) == 0)
            {
LABEL_48:
              v43 = a1 + 29;
              v44 = *(a1 + 29);
              nn_option = com_mosynt_UseMosynt(a1[11], a1[12], a1[13], a1 + 29);
              if ((nn_option & 0x80000000) != 0)
              {
                return nn_option;
              }

              v45 = *v43;
              if (v44 == 1)
              {
                if (v45 == 1)
                {
                  goto LABEL_58;
                }

                if (!v45)
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

                  if (*v43 == 1)
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
                      v46 = strcmp(__s1, "yes") == 0;
                      nn_option = kbsymtab_LoadData(a1[1], a1[2], a1[4], a1[5], a1 + 15, v46);
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

              else if (v45 == 1)
              {
                __s1 = 0;
                goto LABEL_66;
              }

LABEL_69:
              nn_option = com_IncludeCRF(a1[11], a1[12], a1[13], a1 + 28);
              if ((nn_option & 0x80000000) == 0)
              {
                if (!*(a1 + 28) || (v47 = *a1, a1[21] = *a1, pandpCrfDeinit(v47, a1[3], (a1 + 115)), nn_option = pandpCrfInit(a1[1], a1[2], a1[4], a1[5], *a1, a1[3], a1[13], v48, a1[11], a1[12], (a1 + 115)), (nn_option & 0x80000000) == 0))
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
          }
        }
      }
    }

    v3 = PandPRules;
    *v32 = 0;
  }

  return v3;
}

uint64_t load_nn_option(void *a1, int *a2)
{
  v8 = 0;
  v7 = -1;
  v6 = 0;
  *a2 = 0;
  v3 = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", "statbnd_enable_nnets", &v8, &v7, &v6);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v7;
    if (v7)
    {
      (*v8)[strlen(*v8) - 1] = 0;
      v4 = strcmp(*v8, "yes") == 0;
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
    ProsodicStructure = getProsodicStructure(a1 + 168, v9, v10, v11, v12, v13, v14, v15);
    if ((ProsodicStructure & 0x80000000) == 0)
    {
      ProsodicStructure = getProminence(a1 + 168, v18, v19, v20, v21, v22, v23, v24);
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
      v11 = strlen(__s);
      v12 = heap_Alloc(*(*a1 + 8), v11 + 1);
      if (v12)
      {
        v17 = v12;
        memset(v12, 32, v11);
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
        *v19 = 0u;
        v19[1] = 0u;
        started = mosynt_StartAccentPhrasing(a1[6], a1[11], a1[12], a1[13], a1[15], a1[16], v19);
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
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  result = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v18);
  if ((result & 0x80000000) == 0)
  {
    for (i = v18; v18; i = v18)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, i, 0, 1, &v16, &v17);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (v16 <= 0xA && ((1 << v16) & 0x610) != 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, v18, 1, 1, &v15 + 2, &v17);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosynt_GetWordProminence(*(a1 + 48), a5, HIWORD(v15), &v15);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        LH_itoa(v15, __s, 0xAu);
        v12 = strlen(__s);
        result = (*(*(a1 + 56) + 160))(a2, a3, v18, 13, (v12 + 1), __s, &v14);
        if ((result & 0x80000000) != 0)
        {
          break;
        }
      }

      result = (*(*(a1 + 56) + 120))(a2, a3, v18, &v18);
      if ((result & 0x80000000) != 0)
      {
        break;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_phrasing_mosynt_DeleteAuxWords(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  __s1 = 0;
  v35 = 0;
  *a6 = 0;
  v12 = (*(a1[7] + 176))(a2, a3, a4, 0, &v36, &v41);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = (*(a1[7] + 104))(a2, a3, 2, a4, &v41 + 2);
  if ((v13 & 0x80000000) == 0 && HIWORD(v41))
  {
    v12 = (*(a1[7] + 168))(a2, a3);
    if ((v12 & 0x80000000) == 0)
    {
      v14 = 0;
      v34 = a5 - 1;
      while (1)
      {
        if (v39 > 0xA || ((1 << v39) & 0x610) == 0)
        {
          goto LABEL_18;
        }

        v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v41), 1, 1, &v38 + 2, &v41);
        if ((v16 & 0x80000000) != 0 || (v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v41), 2, 1, &v38, &v41), (v16 & 0x80000000) != 0) || (v16 = (*(a1[7] + 176))(a2, a3, HIWORD(v41), 3, &__s1, &v41), (v16 & 0x80000000) != 0))
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

        if (!strstr(__s1, "{DEL}"))
        {
          goto LABEL_18;
        }

        v16 = (*(a1[7] + 312))(a2, a3, HIWORD(v38), &v35);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }

        if (v35)
        {
          break;
        }

        v26 = HIWORD(v38);
        v27 = v38;
        if (HIWORD(v38) < v38)
        {
          v28 = (a5 + HIWORD(v38));
          v29 = v38 - HIWORD(v38);
          do
          {
            *v28++ = 100;
            ++*a6;
            --v29;
          }

          while (v29);
        }

        v25 = HIWORD(v41);
        v30 = *(v36 + v27);
        if (v30 == 95 || v30 == 32)
        {
          v31 = (a5 + v27);
        }

        else
        {
          if (!v26)
          {
            goto LABEL_19;
          }

          v32 = *(v36 + (v26 - 1));
          if (v32 != 95 && v32 != 32)
          {
            goto LABEL_19;
          }

          v31 = (v34 + v26);
        }

        *v31 = 100;
        ++*a6;
LABEL_19:
        v13 = (*(a1[7] + 120))(a2, a3, HIWORD(v41), &v41 + 2);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_39;
        }

        if (v25)
        {
          v13 = (*(a1[7] + 192))(a2, a3, v25);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_39;
          }
        }

        if (!HIWORD(v41))
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
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v18, v19, v20, v21, v34);
        return 2315264010;
      }

      v14 = v17;
      v22 = strcpy(v17, __s1);
      mosynt_RemoveAllSubstrOcc(v22, "{DEL}");
      v23 = strlen(v14);
      v24 = (*(a1[7] + 160))(a2, a3, HIWORD(v41), 3, (v23 + 1), v14, &v40);
      if ((v24 & 0x80000000) != 0)
      {
        v13 = v24;
        goto LABEL_40;
      }

LABEL_18:
      v25 = 0;
      goto LABEL_19;
    }

    return v12;
  }

  return v13;
}

uint64_t fe_phrasing_mosynt_SplitWords(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v86 = 0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  __s = 0;
  v74 = 0;
  *a6 = 0;
  if ((com_mosynt_GetCfgParamVal(a1[11], a1[12], a1[13], "fephrase_max_utf8_sym", "5", &v74) & 0x80000000) != 0)
  {
    v12 = 5;
  }

  else
  {
    v12 = atoi(v74);
  }

  v13 = heap_Alloc(*(*a1 + 8), v12);
  v18 = *a1;
  if (v13)
  {
    v19 = v13;
    v20 = heap_Alloc(*(v18 + 8), 5000);
    if (!v20)
    {
      v27 = 2315264010;
      log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v21, v22, v23, v24, v61);
LABEL_109:
      heap_Free(*(*a1 + 8), v19);
      return v27;
    }

    v25 = v20;
    UTF8Char = (*(a1[7] + 176))(a2, a3, a4, 0, &v81, &v86);
    if ((UTF8Char & 0x80000000) == 0)
    {
      v27 = (*(a1[7] + 104))(a2, a3, 2, a4, &v86 + 2);
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_108;
      }

      v28 = HIWORD(v86);
      if (!HIWORD(v86))
      {
        goto LABEL_108;
      }

      v62 = a5;
      while (1)
      {
        UTF8Char = (*(a1[7] + 168))(a2, a3, v28, 0, 1, &v84, &v86);
        if ((UTF8Char & 0x80000000) != 0)
        {
          break;
        }

        if (v84 <= 0xA && ((1 << v84) & 0x610) != 0)
        {
          UTF8Char = (*(a1[7] + 168))(a2, a3, HIWORD(v86), 1, 1, &v83 + 2, &v86);
          if ((UTF8Char & 0x80000000) != 0)
          {
            break;
          }

          UTF8Char = (*(a1[7] + 168))(a2, a3, HIWORD(v86), 2, 1, &v83, &v86);
          if ((UTF8Char & 0x80000000) != 0)
          {
            break;
          }

          UTF8Char = (*(a1[7] + 176))(a2, a3, HIWORD(v86), 3, &v82, &v86);
          if ((UTF8Char & 0x80000000) != 0)
          {
            break;
          }

          v76 = 0;
          v30 = strstr(v82, "{SEP");
          if (v30)
          {
            UTF8Char = (*(a1[7] + 312))(a2, a3, HIWORD(v83), &v76);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            v31 = v30[4];
            if ((v31 - 48) <= 9 && v30[5] == 125 && v30[6])
            {
              v32 = (v30 - v82);
              v66 = v31 & 0xF;
            }

            else
            {
              v66 = 0;
              v32 = 0;
            }

            v33 = HIWORD(v83);
            UTF8Char = utf8_getUTF8Char(v81, HIWORD(v83), v19);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            v64 = v32;
            v63 = v25;
            if (v33 >= v83)
            {
              v34 = 0;
              v37 = 0;
            }

            else
            {
              v34 = 0;
              v35 = *v19;
              do
              {
                v36 = v35 && v66 > v34;
                v37 = !v36;
                if (!v36)
                {
                  break;
                }

                v33 += strlen(v19);
                v38 = utf8_getUTF8Char(v81, v33, v19);
                if ((v38 & 0x80000000) != 0)
                {
LABEL_111:
                  v27 = v38;
                  v25 = v63;
                  goto LABEL_108;
                }

                ++v34;
                while (1)
                {
                  v35 = *v19;
                  if (v35 != 45 || v19[1])
                  {
                    break;
                  }

                  v33 += strlen(v19);
                  v38 = utf8_getUTF8Char(v81, v33, v19);
                  if ((v38 & 0x80000000) != 0)
                  {
                    goto LABEL_111;
                  }
                }
              }

              while (v83 > v33);
            }

            if (v66 == v34)
            {
              v41 = !v37;
              if (HIWORD(v83) >= v33)
              {
                v41 = 1;
              }

              if (v41)
              {
                v39 = 0;
              }

              else
              {
                v39 = (v33 - HIWORD(v83));
              }
            }

            else
            {
              v39 = 0;
            }

            v25 = v63;
            v40 = v64;
          }

          else
          {
            v39 = 0;
            v40 = 0;
          }

          if (v39 && !v76 && v40)
          {
            v71 = 0;
            v72 = 0;
            v70 = 0;
            v42 = (*(a1[7] + 184))(a2, a3, HIWORD(v86), 14, &v86) >= 0 && v86 == 1;
            v43 = v42;
            if (v42)
            {
              UTF8Char = (*(a1[7] + 176))(a2, a3, HIWORD(v86), 14, &v72, &v86);
              if ((UTF8Char & 0x80000000) != 0)
              {
                break;
              }

              hlp_NLUStrFind(v72, "POS", &v71, &v70);
            }

            v65 = v40;
            HIWORD(v77) = HIWORD(v86);
            v44 = HIWORD(v86);
            LOWORD(v77) = HIWORD(v83);
            if (HIWORD(v86))
            {
              while (1)
              {
                v45 = v44;
                UTF8Char = (*(a1[7] + 120))(a2, a3, v44, &v77 + 2);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_107;
                }

                if (!HIWORD(v77))
                {
                  goto LABEL_78;
                }

                UTF8Char = (*(a1[7] + 168))(a2, a3);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_107;
                }

                v44 = HIWORD(v77);
                if (!HIWORD(v77) || v77 != HIWORD(v83))
                {
                  goto LABEL_78;
                }
              }
            }

            v45 = 0;
LABEL_78:
            UTF8Char = (*(a1[7] + 80))(a2, a3, v45, &v80);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            hlp_CopyWordRec(a1, a2, a3, HIWORD(v86), v80);
            v47 = v83;
            LOWORD(v83) = HIWORD(v83) + v39;
            UTF8Char = (*(a1[7] + 160))(a2, a3, HIWORD(v86), 2, 1, &v83, &v85);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            UTF8Char = (*(a1[7] + 160))(a2, a3, v80, 1, 1, &v83, &v85);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            v67 = v47;
            if (v70)
            {
              v48 = v43;
            }

            else
            {
              v48 = 0;
            }

            v49 = v65;
            if (v48 == 1)
            {
              *v68 = 0;
              *v69 = 0;
              UTF8Char = hlp_splitNLURangeTags(a1, v72, v69, v68);
              if ((UTF8Char & 0x80000000) != 0)
              {
                break;
              }

              SubPosForSEPX = hlp_GetSubPosForSEPX(a1, HIWORD(v83), v83, v81, v71, v70, 0, &__s);
              v51 = __s;
              if ((SubPosForSEPX & 0x80000000) != 0)
              {
                goto LABEL_112;
              }

              v52 = *v69;
              hlp_NLUStrSet(*v69, "POS", __s);
              v53 = strlen(v52);
              SubPosForSEPX = (*(a1[7] + 160))(a2, a3, HIWORD(v86), 14, (v53 + 1), v52, &v85);
              if ((SubPosForSEPX & 0x80000000) != 0)
              {
                goto LABEL_112;
              }

              if (v51)
              {
                heap_Free(*(*a1 + 8), v51);
                __s = 0;
              }

              SubPosForSEPX = hlp_GetSubPosForSEPX(a1, v83, v67, v81, v71, v70, 1, &__s);
              v51 = __s;
              if ((SubPosForSEPX & 0x80000000) != 0 || (v54 = *v68, hlp_NLUStrSet(*v68, "POS", __s), v55 = strlen(v54), SubPosForSEPX = (*(a1[7] + 160))(a2, a3, v80, 14, (v55 + 1), v54, &v85), (SubPosForSEPX & 0x80000000) != 0))
              {
LABEL_112:
                v27 = SubPosForSEPX;
                if (v51)
                {
                  heap_Free(*(*a1 + 8), v51);
                }

                goto LABEL_108;
              }

              if (v51)
              {
                heap_Free(*(*a1 + 8), v51);
                __s = 0;
              }

              v49 = v65;
              if (v52)
              {
                heap_Free(*(*a1 + 8), v52);
              }

              if (v54)
              {
                heap_Free(*(*a1 + 8), v54);
              }
            }

            v78 = 0;
            mosynt_App(v25, 5000, &v78, v82, &v79);
            v25[v49] = 0;
            v56 = strlen(v25);
            UTF8Char = (*(a1[7] + 160))(a2, a3, HIWORD(v86), 3, (v56 + 1), v25, &v85);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }

            v57 = &v82[v49];
            v58 = strlen(v57 + 6);
            v59 = (*(a1[7] + 160))(a2, a3, v80, 3, (v58 + 1), v57 + 6, &v85);
            if ((v59 & 0x80000000) != 0 || (v59 = (*(a1[7] + 160))(a2, a3, HIWORD(v86), 8, 1, &v75, &v85), (v59 & 0x80000000) != 0))
            {
              v27 = v59;
              goto LABEL_108;
            }

            *(v62 + v83) = 105;
            ++*a6;
          }

          else if (v30)
          {
            v78 = 0;
            mosynt_App(v25, 5000, &v78, v82, &v79);
            v78 = v40;
            mosynt_App(v25, 5000, &v78, v30 + 6, &v79);
            v46 = strlen(v25);
            UTF8Char = (*(a1[7] + 160))(a2, a3, HIWORD(v86), 3, (v46 + 1), v25, &v85);
            if ((UTF8Char & 0x80000000) != 0)
            {
              break;
            }
          }
        }

        v27 = (*(a1[7] + 120))(a2, a3, HIWORD(v86), &v86 + 2);
        if ((v27 & 0x80000000) == 0)
        {
          v28 = HIWORD(v86);
          if (HIWORD(v86))
          {
            continue;
          }
        }

        goto LABEL_108;
      }
    }

LABEL_107:
    v27 = UTF8Char;
LABEL_108:
    heap_Free(*(*a1 + 8), v25);
    goto LABEL_109;
  }

  v27 = 2315264010;
  log_OutPublic(*(v18 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v61);
  return v27;
}

uint64_t fe_phrasing_mosynt_MeltClitics(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v48 = 0;
  __s = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  *a6 = 0;
  v12 = (*(a1[7] + 176))(a2, a3, a4, 0, &v45, &v55);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = heap_Alloc(*(*a1 + 8), 5000);
  if (v13)
  {
    v18 = v13;
    v50 = 0;
    v19 = (*(a1[7] + 104))(a2, a3, 2, a4, &v55 + 2);
    if ((v19 & 0x80000000) == 0)
    {
      v40 = a6;
      if (HIWORD(v55))
      {
        v20 = (*(a1[7] + 168))(a2, a3);
        if ((v20 & 0x80000000) == 0)
        {
          v41 = 0;
          v21 = 0;
          v22 = 0;
          v43 = 0;
          v39 = a5 - 1;
          do
          {
            if (v53 > 0xA || ((1 << v53) & 0x610) == 0)
            {
              v32 = 0;
              v33 = HIWORD(v55);
            }

            else
            {
              v20 = (*(a1[7] + 168))(a2, a3, HIWORD(v55), 1, 1, &v52, &v55);
              if ((v20 & 0x80000000) != 0)
              {
                break;
              }

              v20 = (*(a1[7] + 168))(a2, a3, HIWORD(v55), 2, 1, &v51, &v55);
              if ((v20 & 0x80000000) != 0)
              {
                break;
              }

              v20 = (*(a1[7] + 176))(a2, a3, HIWORD(v55), 3, &__s, &v55);
              if ((v20 & 0x80000000) != 0)
              {
                break;
              }

              v20 = (*(a1[7] + 312))(a2, a3, v52, &v47);
              if ((v20 & 0x80000000) != 0)
              {
                break;
              }

              v24 = __s;
              if (strchr(__s, 123))
              {
                v25 = strstr(v24, "{LPC}") != 0;
                v26 = strstr(v24, "{LEC}") != 0;
                v44 = strstr(v24, "{RPC}") != 0;
                v42 = strstr(v24, "{REC}") != 0;
                v27 = strstr(v24, "{LPCC}");
                v28 = v52;
                if (v27 && v52 && *(v45 + v52 - 1) == 95)
                {
                  v25 = 1;
                }

                if (strstr(v24, "{LECC}") && v28 && *(v45 + (v28 - 1)) == 95)
                {
                  v26 = 1;
                }

                if (strstr(v24, "{RPCC}"))
                {
                  v29 = v44;
                  if (*(v45 + v51) == 95)
                  {
                    v29 = 1;
                  }

                  v44 = v29;
                }

                v30 = v43;
                if (strstr(v24, "{RECC}"))
                {
                  v31 = v42;
                  if (*(v45 + v51) == 95)
                  {
                    v31 = 1;
                  }

                  v42 = v31;
                }
              }

              else
              {
                v25 = 0;
                v26 = 0;
                v44 = 0;
                v42 = 0;
                v30 = v43;
              }

              if (v30 && (v34 = v25 || v22, v34 | (v26 || v21)))
              {
                v20 = (*(a1[7] + 168))(a2, a3, v30, 1, 1, &v50, &v55);
                if ((v20 & 0x80000000) != 0)
                {
                  break;
                }

                v20 = (*(a1[7] + 176))(a2, a3, v30, 3, &v48, &v55);
                if ((v20 & 0x80000000) != 0)
                {
                  break;
                }

                if (v34 && !v41 && !v47)
                {
                  hlp_CopyWordRec(a1, a2, a3, HIWORD(v55), v43);
                }

                HIDWORD(v47) = 0;
                mosynt_App(v18, 5000, &v47 + 1, v48, &v46);
                if (!(v41 | v47))
                {
                  mosynt_App(v18, 5000, &v47 + 1, __s, &v46);
                }

                mosynt_RemoveAllSubstrOcc(v18, "{LEC}");
                mosynt_RemoveAllSubstrOcc(v18, "{LPC}");
                mosynt_RemoveAllSubstrOcc(v18, "{RPC}");
                mosynt_RemoveAllSubstrOcc(v18, "{REC}");
                mosynt_RemoveAllSubstrOcc(v18, "{LECC}");
                mosynt_RemoveAllSubstrOcc(v18, "{LPCC}");
                mosynt_RemoveAllSubstrOcc(v18, "{RPCC}");
                mosynt_RemoveAllSubstrOcc(v18, "{RECC}");
                v35 = strlen(v18);
                v20 = (*(a1[7] + 160))(a2, a3, v43, 3, (v35 + 1), v18, &v54);
                if ((v20 & 0x80000000) != 0)
                {
                  break;
                }

                if (v41 | v47)
                {
                  v32 = 0;
                  v21 = v42;
                  v30 = v43;
                }

                else
                {
                  v20 = (*(a1[7] + 160))(a2, a3, v43, 1, 1, &v50, &v54);
                  v21 = v42;
                  if ((v20 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v20 = (*(a1[7] + 160))(a2, a3, v43, 2, 1, &v51, &v54);
                  if ((v20 & 0x80000000) != 0)
                  {
                    break;
                  }

                  *(v39 + v52) = 100;
                  ++*v40;
                  v32 = HIWORD(v55);
                  v30 = v43;
                }
              }

              else
              {
                v32 = 0;
                v21 = v42;
              }

              v33 = v32;
              v22 = v44;
              if (v32 != HIWORD(v55))
              {
                if (v26 || v25 || v44 || v21)
                {
                  HIDWORD(v47) = 0;
                  mosynt_App(v18, 5000, &v47 + 1, __s, &v46);
                  mosynt_RemoveAllSubstrOcc(v18, "{LEC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{LPC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{RPC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{REC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{LECC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{LPCC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{RPCC}");
                  mosynt_RemoveAllSubstrOcc(v18, "{RECC}");
                  v36 = strlen(v18);
                  v20 = (*(a1[7] + 160))(a2, a3, HIWORD(v55), 3, (v36 + 1), v18, &v54);
                  if ((v20 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v33 = HIWORD(v55);
                  v30 = HIWORD(v55);
                  v22 = v44;
                }

                else
                {
                  v33 = HIWORD(v55);
                  v30 = HIWORD(v55);
                }
              }

              v43 = v30;
              v41 = v47;
            }

            v19 = (*(a1[7] + 120))(a2, a3, v33, &v55 + 2);
            if ((v19 & 0x80000000) != 0)
            {
              goto LABEL_63;
            }

            if (v32)
            {
              v19 = (*(a1[7] + 192))(a2, a3, v32);
              if ((v19 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }
            }

            if (!HIWORD(v55))
            {
              goto LABEL_63;
            }

            v20 = (*(a1[7] + 168))(a2, a3);
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
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v38);
    return 2315264010;
  }

  return v19;
}

uint64_t fe_phrasing_mosynt_CreatePhrasingOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  PhraseInfo = (*(*(a1 + 56) + 176))(a2, a3, a4, 0, &v22, &v28);
  if ((PhraseInfo & 0x80000000) != 0)
  {
LABEL_41:
    v11 = PhraseInfo;
    goto LABEL_42;
  }

  v11 = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v28 + 2);
  if ((v11 & 0x80000000) == 0)
  {
    v26 = 0;
    __s[0] = 0;
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
          goto LABEL_41;
        }

        if (v27 <= 0xA && ((1 << v27) & 0x610) != 0)
        {
          PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v28), 1, 1, &v26 + 2, &v28);
          if ((PhraseInfo & 0x80000000) != 0)
          {
            goto LABEL_41;
          }

          PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v28), 2, 1, &v26, &v28);
          if ((PhraseInfo & 0x80000000) != 0)
          {
            goto LABEL_41;
          }

          v23 = 0;
          if (!v14)
          {
            v16 = 0;
            HIWORD(v25) = 0;
            __s[0] = 0;
LABEL_17:
            while (1)
            {
              PhraseInfo = mosynt_GetPhraseInfo(*(a1 + 48), a5, v16, &v25, v29, 10);
              if ((PhraseInfo & 0x80000000) != 0)
              {
                goto LABEL_41;
              }

              if (v29[0])
              {
                __strcpy_chk();
                if ((HIWORD(v25) - 1) >= v25)
                {
                  HIWORD(v25) = v25;
                }
              }

              if (HIWORD(v26) < ++v16)
              {
                if (__s[0])
                {
                  if (v13)
                  {
                    PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, v13, 2, 1, &v26 + 2, &v24);
                    if ((PhraseInfo & 0x80000000) != 0)
                    {
                      goto LABEL_41;
                    }
                  }

                  PhraseInfo = (*(*(a1 + 56) + 88))(a2, a3, HIWORD(v28), &v24 + 2);
                  if ((PhraseInfo & 0x80000000) != 0)
                  {
                    goto LABEL_41;
                  }

                  v13 = HIWORD(v24);
                  v27 = 15;
                  PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v24), 0, 1, &v27, &v24);
                  if ((PhraseInfo & 0x80000000) != 0)
                  {
                    goto LABEL_41;
                  }

                  PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v24), 1, 1, &v26 + 2, &v24);
                  if ((PhraseInfo & 0x80000000) != 0)
                  {
                    goto LABEL_41;
                  }

                  v17 = strlen(__s);
                  PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v24), 4, (v17 + 1), __s, &v24);
                  if ((PhraseInfo & 0x80000000) != 0)
                  {
                    goto LABEL_41;
                  }

                  PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v24), 7, 1, &v25 + 2, &v24);
                  if ((PhraseInfo & 0x80000000) != 0)
                  {
                    goto LABEL_41;
                  }
                }

                goto LABEL_30;
              }
            }
          }

          PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, v14, 2, 1, &v23, &v28);
          if ((PhraseInfo & 0x80000000) != 0)
          {
            goto LABEL_41;
          }

          v16 = v23;
          HIWORD(v25) = 0;
          __s[0] = 0;
          if (v23 <= HIWORD(v26))
          {
            goto LABEL_17;
          }

LABEL_30:
          v14 = HIWORD(v28);
        }

        v11 = (*(*(a1 + 56) + 120))(a2, a3);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_42;
        }

        v12 = HIWORD(v28);
        if (!HIWORD(v28))
        {
          if (v13)
          {
            v11 = (*(*(a1 + 56) + 160))(a2, a3, v13, 2, 1, &v26, &v24);
            if ((v11 & 0x80000000) != 0)
            {
              goto LABEL_42;
            }
          }

          break;
        }
      }
    }

    if (*__s == 87 || !(*__s ^ 0x4641 | v31))
    {
      v18 = v22;
      v19 = strrchr(v22, 63);
      if (v19 && v19 != v18 && *(v19 - 1) != 32)
      {
        *v19 = 46;
      }
    }
  }

LABEL_42:
  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t fe_phrasing_mosynt_AdjustSentenceAndMarkers(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, uint64_t a7)
{
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v14 = (*(a1[7] + 176))(a2, a3, a4, 0, &v51, &v50 + 2);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = (*(a1[7] + 176))(a2, a3, a4, 1, &v47, &v46);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v45 = a6;
  v15 = *(v47 + 12);
  v16 = 2 * a5;
  v17 = heap_Alloc(*(*a1 + 8), v16 + 2);
  v22 = *a1;
  if (!v17)
  {
    v41 = 2315264010;
    log_OutPublic(*(v22 + 32), "FE_PHRASING", 37000, 0, v18, v19, v20, v21, v44);
    return v41;
  }

  v23 = v17;
  v28 = heap_Alloc(*(v22 + 8), v16 + 2);
  v29 = *a1;
  if (v28)
  {
    v44 = a5;
    v30 = heap_Alloc(*(v29 + 8), (v45 + 1));
    if (v30)
    {
      v31 = v30;
      LOWORD(v32) = v44;
      if (v44)
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
            v30[(v32 + 1)] = *(v51 + v33);
            v32 += 2;
          }

          else
          {
            *(v23 + 2 * v33) = v32;
            *(v28 + 2 * v33) = v32;
            if (v34 != 100)
            {
              v30[v32++] = *(v51 + v33);
            }
          }

          ++v33;
        }

        while (v44 != v33);
      }

      v30[v32] = 0;
      *(v23 + 2 * v44) = v32;
      *(v28 + 2 * v44) = v32;
      v35 = strlen(v30);
      v36 = (*(a1[7] + 160))(a2, a3, a4, 0, (v35 + 1), v31, &v50);
      if ((v36 & 0x80000000) != 0)
      {
LABEL_36:
        v41 = v36;
      }

      else
      {
        v37 = v46;
        v38 = v47;
        if (v46)
        {
          v39 = (v47 + 12);
          do
          {
            *v39 = v15 + *(v23 + 2 * (*v39 - v15));
            v39 += 8;
            --v37;
          }

          while (v37);
        }

        *(v38 + 16) = v45;
        v40 = (*(a1[7] + 104))(a2, a3, 2, a4, &v49 + 2);
LABEL_19:
        v41 = v40;
        if ((v40 & 0x80000000) == 0)
        {
          while (HIWORD(v49))
          {
            v36 = (*(a1[7] + 168))(a2, a3);
            if ((v36 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            v36 = (*(a1[7] + 168))(a2, a3, HIWORD(v49), 2, 1, &v48, &v50 + 2);
            if ((v36 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            LOWORD(v49) = *(v23 + 2 * v49);
            v36 = (*(a1[7] + 160))(a2, a3, HIWORD(v49), 1, 1, &v49, &v50);
            if ((v36 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            v48 = v48 <= v44 ? *(v28 + 2 * v48) : v44;
            v36 = (*(a1[7] + 160))(a2, a3, HIWORD(v49), 2, 1, &v48, &v50);
            if ((v36 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            if (v48 == v49)
            {
              v42 = HIWORD(v49);
            }

            else
            {
              v42 = 0;
            }

            v41 = (*(a1[7] + 120))(a2, a3);
            if ((v41 & 0x80000000) != 0)
            {
              goto LABEL_39;
            }

            if (v42)
            {
              v40 = (*(a1[7] + 192))(a2, a3, v42);
              goto LABEL_19;
            }
          }
        }
      }

      goto LABEL_39;
    }

    v29 = *a1;
  }

  v41 = 2315264010;
  log_OutPublic(*(v29 + 32), "FE_PHRASING", 37000, 0, v24, v25, v26, v27, v44);
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

  return v41;
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
  v25 = 0;
  v26 = 0;
  v28 = 0;
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

  v9 = *(a1 + 56);
  IsUpdatable = kaldi::nnet1::Component::IsUpdatable(*a1);
  if ((IsUpdatable & 0x80000000) != 0 || !*(a1 + 848))
  {
    goto LABEL_21;
  }

  if (!v28 && (SentenceData = crfWeakPhrasing(*(a1 + 104), *(a1 + 88), *(a1 + 96), *a1, 0, a1 + 840, 0, a1 + 920), (SentenceData & 0x80000000) != 0) || (SentenceData = puncPhrasing(*a1, (a1 + 840), a1 + 920, v10, v11, v12, v13, v14), (SentenceData & 0x80000000) != 0) || (*(a1 + 176) = *a1, SentenceData = updateLingdbCrfPhrasing(*(a1 + 56), a3, a4, a1 + 168), (SentenceData & 0x80000000) != 0))
  {
LABEL_20:
    IsUpdatable = SentenceData;
    goto LABEL_21;
  }

  IsUpdatable = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v26);
  if ((IsUpdatable & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a3, a4, v26, 0, &v25 + 2) & 0x80000000) == 0 && HIWORD(v25) == 1)
  {
    IsUpdatable = (*(*(a1 + 56) + 176))(a3, a4, v26, 0, &__s, &v25);
    if ((IsUpdatable & 0x80000000) == 0 && v25 >= 2u)
    {
      v16 = strlen(__s);
      v17 = heap_Alloc(*(*a1 + 8), v16 + 1);
      if (v17)
      {
        v22 = v17;
        memset(v17, 32, v16);
        *(v22 + v16) = 0;
        IsUpdatable = fe_phrasing_mosynt_SplitWords(a1, a3, a4, v26, v22, &v26 + 1);
        if ((IsUpdatable & 0x80000000) == 0 && HIWORD(v26))
        {
          IsUpdatable = fe_phrasing_mosynt_AdjustSentenceAndMarkers(a1, a3, a4, v26, v16, (HIWORD(v26) + v16), v22);
        }

        heap_Free(*(*a1 + 8), v22);
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v18, v19, v20, v21, v24);
        IsUpdatable = 2315264010;
      }
    }
  }

LABEL_21:
  freeSentenceData(a1 + 168);
  return IsUpdatable;
}