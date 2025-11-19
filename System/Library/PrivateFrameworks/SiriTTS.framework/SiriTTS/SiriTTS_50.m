uint64_t normOutFncPost(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a4;
  if (*(*a4 + 104) && !**(a4 + 48))
  {
    v7 = *(a4 + 64);
    if (v7)
    {
      v8 = **(a4 + 88);
      v9 = 2 * strlen(v7) - 2;
      *&v4[12][strlen(v4[12])] = 88;
      v10 = strlen(*(a4 + 64));
      strncat(v4[12], (*(a4 + 64) + 1), v10 - 2);
      if (v9 >= v8)
      {
        *&v4[12][strlen(v4[12])] = 89;
        v15 = strlen(*(a4 + 64));
        strncat(v4[12], (*(a4 + 64) + 1), v15 - 2);
        v16 = **(a4 + 88);
        if (2 * strlen(*(a4 + 64)) - 2 > v16)
        {
          do
          {
            *&v4[8][strlen(v4[8])] = 126;
            *&v4[9][strlen(v4[9])] = 126;
            *&v4[10][strlen(v4[10])] = 126;
            *&v4[11][strlen(v4[11])] = 126;
            LODWORD(v16) = v16 + 1;
          }

          while (2 * strlen(*(a4 + 64)) - 2 > v16);
        }
      }

      else
      {
        v11 = 2 * strlen(*(a4 + 64)) - 2;
        if ((v11 & 0xFFFEu) < **(a4 + 88))
        {
          do
          {
            *&v4[12][strlen(v4[12])] = 126;
            ++v11;
          }

          while (**(a4 + 88) > v11);
        }

        *&v4[12][strlen(v4[12])] = 89;
        v12 = *(a4 + 64);
        v13 = strlen(v12);
        strncat(v4[12], v12 + 1, v13 - 2);
      }
    }

    else if (**(a4 + 72))
    {
      v14 = 0;
      do
      {
        *&v4[12][strlen(v4[12])] = 32;
        ++v14;
      }

      while (v14 < **(a4 + 72));
    }
  }

  return 0;
}

uint64_t fe_normout_split_words(void *a1, uint64_t a2, uint64_t a3, char *__s, uint64_t a5, unsigned __int16 *a6)
{
  v12 = strlen(__s);
  *a6 = 0;
  if (!v12)
  {
    v44 = 0;
    goto LABEL_93;
  }

  v48 = a3;
  v49 = a2;
  v47 = a6;
  v50 = a5;
  v51 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = &__s[v14];
    v16 = *v15;
    if (v16 != 32 && v16 != 95 && (v16 != 226 || v15[1] != 150 || v15[2] != 172))
    {
      goto LABEL_87;
    }

    v17 = v14;
    if (a5 && v51 >= 0x80u)
    {
      v18 = heap_Realloc(*(*a1 + 8), a1[14], (v51 & 0xFF80u) + 128);
      if (!v18)
      {
        log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0, v19, v20, v21, v22, v46);
        return 2340429834;
      }

      a1[14] = v18;
      bzero((v18 + v51), (v51 & 0xFF80) + 128 - v51);
      v16 = *v15;
      a5 = v50;
    }

    else if (!a5)
    {
      goto LABEL_73;
    }

    if (v16 != 226)
    {
      goto LABEL_77;
    }

    if (v15[1] != 150 || v15[2] != 172)
    {
      goto LABEL_74;
    }

    v60 = 0;
    v59 = 0;
    v58 = 0;
    v57 = -1;
    v56 = -1;
    v55 = 0;
    v54 = 11;
    v53 = 0;
    v52 = 0;
    if (((*(a1[1] + 104))(v49, v48, 1, 0, &v60) & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    if (((*(a1[1] + 152))(v49, v48, 2, v60, &v55) & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    if (!v55)
    {
      goto LABEL_68;
    }

    if (((*(a1[1] + 104))(v49, v48, 2, v60, &v59 + 2) & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v23 = HIWORD(v59);
    if (!HIWORD(v59))
    {
      goto LABEL_68;
    }

    v24 = 0;
    do
    {
      if (v57 != -1 && v56 != 0xFFFF)
      {
        goto LABEL_42;
      }

      if (((*(a1[1] + 168))(v49, v48, v23, 0, 1, &v54, &v59) & 0x80000000) != 0)
      {
        goto LABEL_68;
      }

      if (v54 <= 0xA && ((1 << v54) & 0x610) != 0)
      {
        if (v24 == v13)
        {
          v27 = (*(a1[1] + 168))(v49, v48, HIWORD(v59), 1, 1, &v57, &v59);
        }

        else
        {
          if (v13 + 1 != v24)
          {
LABEL_37:
            ++v24;
            goto LABEL_38;
          }

          v27 = (*(a1[1] + 168))(v49, v48, HIWORD(v59), 2, 1, &v56, &v59);
        }

        if (v27 < 0)
        {
          goto LABEL_68;
        }

        goto LABEL_37;
      }

LABEL_38:
      if (((*(a1[1] + 120))(v49, v48, HIWORD(v59), &v59 + 2) & 0x80000000) != 0)
      {
        goto LABEL_68;
      }

      v23 = HIWORD(v59);
    }

    while (HIWORD(v59));
    if (v57 != -1 && v56 != 0xFFFF)
    {
LABEL_42:
      if (((*(a1[1] + 176))(v49, v48, v60, 1, &v53, &v58) & 0x80000000) == 0)
      {
        v28 = v58;
        if (v58 < 2u)
        {
          v32 = 1;
        }

        else
        {
          v29 = (v53 + 44);
          v30 = 1;
          while (1)
          {
            v31 = *v29;
            v29 += 8;
            if (v31 - *(v53 + 12) > v57)
            {
              break;
            }

            if (v58 == ++v30)
            {
              goto LABEL_68;
            }
          }

          v32 = v30;
        }

        v33 = v52 || v32 >= v58;
        if (!v33)
        {
          v34 = v32 + 1;
          v35 = 32 * v32;
          while (1)
          {
            v36 = (v53 + v35);
            if (*(v53 + v35 + 12) - *(v53 + 12) >= v56)
            {
              break;
            }

            v37 = *v36;
            v38 = *(v36 + 3);
            v62 = 0;
            v61 = 0;
            if (v37 <= 0x39)
            {
              if (v37 == 51)
              {
                if (!hlp_NLUStrFind(v38, "PUNC", &v62, &v61))
                {
                  goto LABEL_67;
                }

                v39 = v52 == 0;
                v28 = v58;
                goto LABEL_63;
              }

              if (((1 << v37) & 0x3C0010124001140) != 0)
              {
                goto LABEL_67;
              }
            }

            if (v37 == 17)
            {
LABEL_67:
              v52 = 1;
              break;
            }

            v39 = 1;
LABEL_63:
            if (v39)
            {
              v35 += 32;
              v33 = v34++ >= v28;
              if (!v33)
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

LABEL_68:
    if (!v52)
    {
      fe_normout_check_if_word_in_prompt(a1, v49, v48, v13, &v52);
      if (!v52)
      {
        fe_normout_check_if_word_in_prompt(a1, v49, v48, (v13 + 1), &v52);
        if (!v52)
        {
          *(a1[14] + v51++) = v13 + 1;
        }
      }
    }

    a5 = v50;
    v16 = *v15;
LABEL_73:
    if (v16 == 226)
    {
LABEL_74:
      if (v15[1] == 150 && v15[2] == 172)
      {
        *v15 = 0;
        v14 += 2;
        v17 = v14;
      }
    }

LABEL_77:
    __s[v17] = 0;
    for (i = v14 + 1; v12 > i; ++i)
    {
      v41 = i;
      v42 = &__s[i];
      v43 = *v42;
      if (v43 != 32 && v43 != 95)
      {
        if (v43 != 226 || v42[1] != 150 || v42[2] != 172)
        {
          break;
        }

        *v42 = 0;
        i = v14 + 3;
        v41 = (v14 + 3);
      }

      v14 = i;
      __s[v41] = 0;
    }

    ++v13;
LABEL_87:
    ++v14;
  }

  while (v14 < v12);
  if (__s[v14 - 1])
  {
    v44 = v13 + 1;
  }

  else
  {
    v44 = v13;
  }

  a6 = v47;
LABEL_93:
  result = 0;
  *a6 = v44;
  return result;
}

uint64_t getNextWord(_WORD *a1, _WORD *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a1;
  *a2 = v4;
  if (v4 >= a4)
  {
    return 0;
  }

  v5 = (a3 + v4);
  for (i = v4 + 1; !*v5++; ++i)
  {
    *a1 = i;
    if (a4 == i)
    {
      return 0;
    }
  }

  v10 = *a2;
  v11 = a3 + (v10 + 1) + 1;
  do
  {
    v12 = v11;
    *a2 = ++v10;
    if (a4 <= v10)
    {
      break;
    }

    ++v11;
  }

  while (*(a3 + v10));
  for (j = v10 + 1; j < a4; j = v15 + 2)
  {
    if (*v12++)
    {
      break;
    }

    v15 = v10++;
    *a2 = v10;
  }

  return 1;
}

uint64_t updateWordRecFnc(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v8 = *a4;
  result = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v20, &v19 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(v8[1] + 168))(a1, a2, *a3, 1, 1, &v18, &v19 + 2);
    if ((result & 0x80000000) == 0 && v18 > **(a4 + 168) && v20 == 7)
    {
      v11 = strstr((*(a4 + 152) + 3), "▼");
      *(a4 + 160) = v11;
      if (v11)
      {
        *v11 = 0;
        v16 = *(a4 + 152);
        v17 = strlen(v16);
        LODWORD(result) = (*(v8[1] + 160))(a1, a2, *a3, 4, v17, v16 + 3, &v19);
        if (result >= 0)
        {
          return 2340437532;
        }

        else
        {
          return result;
        }
      }

      else
      {
        log_OutPublic(*(*v8 + 32), "FE_NORMOUT", 43001, "%s%s", v12, v13, v14, v15, "message");
        return 2340429831;
      }
    }
  }

  return result;
}

uint64_t updateWordRecs(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, __int16 a8)
{
  v30 = result;
  if (a5)
  {
    v9 = 0;
    v10 = (a8 - a7);
    v11 = a7 + a6;
    v12 = a5;
    v27 = (a4 + 14);
    v28 = a7 + a6;
    v29 = a6;
    do
    {
      v13 = a4 + 16 * v9;
      v14 = *(v13 + 4);
      v15 = v14 > 0xA;
      v16 = (1 << v14) & 0x610;
      v17 = v15 || v16 == 0;
      if (!v17 && *(v13 + 8) == a6 && v11 == *(v13 + 10))
      {
        *(v13 + 14) += v10;
        v18 = v27;
        v19 = v9;
        v20 = v12;
        do
        {
          if (v19)
          {
            v21 = *(v18 - 1);
            if (v21 > *(v13 + 12))
            {
              *(v18 - 1) = (v21 + v10) & ~((v21 + v10) >> 15);
              *v18 += v10;
            }

            v22 = *(v18 - 5);
            if (v22 <= 0xF && ((1 << v22) & 0x8060) != 0)
            {
              v24 = *(v13 + 8);
              if (v24 >= *(v18 - 3))
              {
                v25 = *(v18 - 2);
                if (v24 < v25 && v25 + 1 >= *(v13 + 10))
                {
                  if (v22 != 6 || (memset(__n, 0, sizeof(__n)), result = (*(*(v30 + 8) + 176))(a2, a3, *(v18 - 7), 4, &__n[1], __n), !__n[0]) || (result = strncmp(*&__n[1], "_PR_", __n[0]), (v10 & 0x80000000) == 0) || result)
                  {
                    *v18 += v10;
                  }
                }
              }
            }
          }

          --v19;
          v18 += 8;
          --v20;
        }

        while (v20);
        if (v9 + 1 < v12 && *(v13 + 4) == 4)
        {
          v26 = a4 + 16 * (v9 + 1);
          if (*(v26 + 4) == 16 && *(v26 + 12) == *(v13 + 12))
          {
            *(v26 + 14) = *(v13 + 14);
          }
        }

        v11 = v28;
        a6 = v29;
        if (v9 && *(v13 + 4) == 4 && *(v13 - 12) == 16 && *(v13 - 4) == *(v13 + 12))
        {
          *(v13 - 2) = *(v13 + 14);
        }
      }

      ++v9;
    }

    while (v9 != v12);
  }

  return result;
}

uint64_t MvToEqWordRecUpdFieldsFnc(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4)
{
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v8 = *a4;
  v9 = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v38, &v37 + 2);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = **(a4 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = "-*";
      do
      {
        v13 = (*(a4 + 136) + 16 * v11);
        *(a4 + 144) = v13;
        if (*v13 == *a3)
        {
          v14 = (*(v8[1] + 160))(a1, a2);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }

          v9 = (*(v8[1] + 160))(a1, a2, *a3, 2, 1, *(a4 + 144) + 14, &v37);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }

          if (v38 <= 0xA && ((1 << v38) & 0x610) != 0)
          {
            __s = 0;
            v15 = *(a4 + 112);
            v16 = *v15;
            if (*v15)
            {
              v17 = *(a4 + 128);
              if (v16 == *(v8[14] + *v17))
              {
                if (**(a4 + 120))
                {
                  __src = 0;
                  ++*v17;
                  *(*(a4 + 176) + *(*(a4 + 144) + 12) - 1) = 45;
                  v14 = (*(v8[1] + 176))(a1, a2, *a3, 3, &__s, &v37 + 2);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v14 = (*(v8[1] + 176))(a1, a2, **(a4 + 120), 3, &__src, &v37 + 2);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v18 = v12;
                  v19 = strlen(__s);
                  v20 = strlen(__src);
                  v21 = heap_Realloc(*(*v8 + 8), *(a4 + 184), (v19 + v20 + 2));
                  if (!v21)
                  {
                    log_OutPublic(*(*v8 + 32), "FE_NORMOUT", 43000, 0, v22, v23, v24, v25, __src);
                    return 2340429834;
                  }

                  *(a4 + 184) = v21;
                  strcpy(v21, __src);
                  v26 = strlen(*(a4 + 184));
                  if (*(v8 + 27))
                  {
                    v27 = 61;
                  }

                  else
                  {
                    v27 = 45;
                  }

                  *(*(a4 + 184) + v26) = v27;
                  strcat(*(a4 + 184), __s);
                  v28 = strlen(*(a4 + 184));
                  v14 = (*(v8[1] + 160))(a1, a2, **(a4 + 120), 3, (v28 + 1), *(a4 + 184), &v37);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v14 = (*(v8[1] + 160))(a1, a2, **(a4 + 120), 2, 1, *(a4 + 144) + 14, &v37);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v12 = v18;
                  if (((*(v8[1] + 184))(a1, a2, **(a4 + 144), 8, &v35) & 0x80000000) == 0 && v35 == 1)
                  {
                    v14 = (*(v8[1] + 168))(a1, a2, **(a4 + 144), 8, 1, &v35 + 2, &v37 + 2);
                    if ((v14 & 0x80000000) != 0)
                    {
                      return v14;
                    }

                    v14 = (*(v8[1] + 160))(a1, a2, **(a4 + 120), 8, 1, &v35 + 2, &v37);
                    if ((v14 & 0x80000000) != 0)
                    {
                      return v14;
                    }
                  }

                  if (((*(v8[1] + 184))(a1, a2, **(a4 + 144), 14, &v35) & 0x80000000) == 0 && v35 == 1)
                  {
                    v14 = MvToEqWordRecUpdNLU(a1, a2, v8, a4);
                    if ((v14 & 0x80000000) != 0)
                    {
                      return v14;
                    }
                  }

                  v14 = (*(v8[1] + 192))(a1, a2, *a3);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  *a3 = **(a4 + 120);
                }
              }
            }

            v9 = (*(v8[1] + 176))(a1, a2, *a3, 3, &__s, &v37 + 2);
            if ((v9 & 0x80000000) != 0)
            {
              return v9;
            }

            if (*__s && strstr(__s, v12))
            {
              v14 = (*(v8[1] + 168))(a1, a2, *a3, 1, 1, &v36 + 2, &v37 + 2);
              if ((v14 & 0x80000000) != 0)
              {
                return v14;
              }

              v9 = (*(v8[1] + 168))(a1, a2, *a3, 2, 1, &v36, &v37 + 2);
              if ((v9 & 0x80000000) != 0)
              {
                return v9;
              }

              for (i = (*(a4 + 176) + HIWORD(v36)); ; i = v30 + 1)
              {
                v30 = strchr(i, 45);
                if (!v30 || v30 >= *(a4 + 176) + v36)
                {
                  break;
                }

                *v30 = 95;
              }
            }

            v31 = *(a4 + 120);
            ++**(a4 + 112);
            *v31 = *a3;
          }

          v10 = **(a4 + 16);
          v11 = v10;
        }

        ++v11;
      }

      while (v11 < v10);
    }
  }

  return v9;
}

uint64_t fe_normout_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62387, 120);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2340429832;
  }
}

uint64_t fe_normout_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2340429825;
  }

  result = 0;
  *a2 = &IFeNormout;
  return result;
}

uint64_t fe_normout_check_if_word_in_prompt(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  v15 = 0;
  v16 = 0;
  v14 = 11;
  v13 = -1;
  *a5 = 0;
  result = (*(*(a1 + 8) + 104))(a2, a3, 1, 0, &v16 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 8) + 152))(a2, a3, 2, HIWORD(v16), &v15);
    if ((result & 0x80000000) == 0)
    {
      if (v15)
      {
        result = (*(*(a1 + 8) + 104))(a2, a3, 2, HIWORD(v16), &v16);
        if ((result & 0x80000000) == 0)
        {
          v10 = v16;
          if (v16)
          {
            v11 = 0;
            while (1)
            {
              result = (*(*(a1 + 8) + 168))(a2, a3, v10, 0, 1, &v14, &v15 + 2);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (v14 <= 0xA && ((1 << v14) & 0x610) != 0)
              {
                if (a4 == v11)
                {
                  result = (*(*(a1 + 8) + 168))(a2, a3, v16, 1, 1, &v13, &v15 + 2);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                ++v11;
              }

              result = (*(*(a1 + 8) + 120))(a2, a3, v16, &v16);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v10 = v16;
              if (!v16 || a4 < v11)
              {
                if (v13 != 0xFFFF)
                {
                  return (*(*(a1 + 8) + 312))(a2, a3);
                }

                return result;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t MvToEqWordRecUpdNLU(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v49 = 0;
  __s = 0;
  memset(v47, 0, sizeof(v47));
  *&__n[1] = 0;
  __n[0] = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v8 = (*(a3[1] + 176))(a1, a2, **(a4 + 144), 14, &v49, &v40);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (!hlp_NLUStrFind(v49, "POS", &v47[1], v47))
  {
    if (!hlp_NLUStrFind(v49, "PUNC", &v41, &v40 + 1))
    {
      return v8;
    }

    v23 = (*(a3[1] + 184))(a1, a2, **(a4 + 120), 14, &v39);
    v24 = a3[1];
    v25 = **(a4 + 120);
    if (v23 < 0 || v39 != 1)
    {
      v30 = *(v24 + 160);
      v31 = strlen(v49);
      return v30(a1, a2, v25, 14, (v31 + 1), v49, &v39 + 2);
    }

    (*(v24 + 176))(a1, a2, v25, 14, &__s, &v40);
    v26 = strlen(__s);
    v27 = strlen(v49);
    v28 = heap_Calloc(*(*a3 + 8), 1, (v26 + v27 + 2));
    if (v28)
    {
      v21 = v28;
      strcpy(v28, __s);
      hlp_NLUStrRemoveKeyVal(__s, "BND");
      hlp_NLUStrJoin(v21, v49);
      v29 = strlen(v21);
      v8 = (*(a3[1] + 160))(a1, a2, **(a4 + 120), 14, (v29 + 1), v21, &v39 + 2);
LABEL_32:
      heap_Free(*(*a3 + 8), v21);
      return v8;
    }

    goto LABEL_18;
  }

  hlp_NLUStrFind(v49, "BNDSHAPE", &v45, &v44);
  hlp_NLUStrFind(v49, "BND", &v43, &v42);
  hlp_NLUStrFind(v49, "PUNC", &v41, &v40 + 1);
  if (((*(a3[1] + 184))(a1, a2, **(a4 + 120), 14, &v39) & 0x80000000) != 0)
  {
    return v8;
  }

  if (v39 != 1)
  {
    return v8;
  }

  v8 = (*(a3[1] + 176))(a1, a2, **(a4 + 120), 14, &__s, &v40);
  if (!hlp_NLUStrFind(__s, "POS", &__n[1], __n))
  {
    return v8;
  }

  v9 = heap_Calloc(*(*a3 + 8), 1, __n[0] + v47[0] + 2);
  if (!v9)
  {
LABEL_18:
    v8 = 2340429834;
    log_OutPublic(*(*a3 + 32), "FE_NORMOUT", 43000, 0, v10, v11, v12, v13, v39);
    return v8;
  }

  v14 = v9;
  v15 = (strlen(__s) + v47[0] + v44 + v42 + HIWORD(v40) + 24);
  v16 = heap_Calloc(*(*a3 + 8), 1, v15);
  v21 = v16;
  if (v16)
  {
    strcpy(v16, __s);
    strncpy(v14, *&__n[1], __n[0]);
    if (!*(a3 + 27))
    {
      *&v14[strlen(v14)] = 45;
    }

    strncat(v14, *&v47[1], v47[0]);
    hlp_NLUStrSet(v21, "POS", v14);
    if (v45)
    {
      v22 = v45[v44];
      v45[v44] = 0;
      hlp_NLUStrSet(v21, "BNDSHAPE", v45);
      v45[v44] = v22;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v21, "BNDSHAPE");
    }

    if (v43)
    {
      v32 = v43[v44];
      v43[v44] = 0;
      hlp_NLUStrSet(v21, "BND", v43);
      v43[v44] = v32;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v21, "BND");
    }

    if (v41)
    {
      v33 = v41[HIWORD(v40)];
      v41[HIWORD(v40)] = 0;
      hlp_NLUStrSet(v21, "PUNC", v41);
      v41[HIWORD(v40)] = v33;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v21, "PUNC");
    }

    hlp_NLUStrRemoveKeyVal(v49, "POS");
    hlp_NLUStrRemoveKeyVal(v49, "PHR");
    hlp_NLUStrRemoveKeyVal(v49, "PUNC");
    hlp_NLUStrRemoveKeyVal(v49, "BNDSHAPE");
    hlp_NLUStrRemoveKeyVal(v49, "BND");
    if (!*v49)
    {
      goto LABEL_29;
    }

    v34 = strlen(v49);
    v35 = heap_Realloc(*(*a3 + 8), v21, v34 + v15);
    if (v35)
    {
      v36 = v35;
      hlp_NLUStrJoin(v35, v49);
      v21 = v36;
LABEL_29:
      v37 = strlen(v21);
      v8 = (*(a3[1] + 160))(a1, a2, **(a4 + 120), 14, (v37 + 1), v21, &v39 + 2);
      goto LABEL_31;
    }
  }

  v8 = 2340429834;
  log_OutPublic(*(*a3 + 32), "FE_NORMOUT", 43000, 0, v17, v18, v19, v20, v39);
LABEL_31:
  heap_Free(*(*a3 + 8), v14);
  if (v21)
  {
    goto LABEL_32;
  }

  return v8;
}

uint64_t fe_normout_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v29 = 0;
  v30 = 0;
  fecfg = 2340429834;
  v27 = 0;
  v28 = 0;
  if (!a5)
  {
    return 2340429831;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v30);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v30[6], "LINGDB", &v29);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v30[6], "FE_DEPES", &v28);
  v9 = v30[6];
  if ((Object & 0x80000000) != 0)
  {
    v25 = "LINGDB";
LABEL_15:
    objc_ReleaseObject(v9, v25);
    return Object;
  }

  v10 = objc_GetObject(v9, "FE_DCTLKP", &v27);
  if ((v10 & 0x80000000) != 0)
  {
    Object = v10;
    objc_ReleaseObject(v30[6], "LINGDB");
    v9 = v30[6];
    v25 = "FE_DEPES";
    goto LABEL_15;
  }

  v11 = heap_Alloc(v30[1], 120);
  v16 = v30;
  if (v11)
  {
    v17 = v11;
    *v11 = v30;
    *(v11 + 8) = *(v29 + 8);
    v18 = v27;
    v19 = v28;
    *(v11 + 32) = *(v28 + 8);
    *(v11 + 16) = *(v19 + 16);
    *(v11 + 56) = *(v18 + 8);
    *(v11 + 40) = *(v18 + 16);
    *(v11 + 112) = 0;
    *(v11 + 96) = 0;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0u;
    v20 = heap_Alloc(v16[1], 128);
    v17[14] = v20;
    if (v20)
    {
      fecfg = fe_normout_get_fecfg(v17);
      if ((fecfg & 0x80000000) != 0)
      {
        fe_normout_ObjClose(*a5, *(a5 + 8));
      }

      *a5 = v17;
      *(a5 + 8) = 62387;
    }

    else
    {
      log_OutPublic(*(*v17 + 32), "FE_NORMOUT", 43000, 0, v21, v22, v23, v24, v27);
      objc_ReleaseObject(v30[6], "LINGDB");
      objc_ReleaseObject(v30[6], "FE_DEPES");
      objc_ReleaseObject(v30[6], "FE_DCTLKP");
      heap_Free(*(*v17 + 8), v17);
    }
  }

  else
  {
    log_OutPublic(v30[4], "FE_NORMOUT", 43000, 0, v12, v13, v14, v15, v27);
    objc_ReleaseObject(v30[6], "LINGDB");
    objc_ReleaseObject(v30[6], "FE_DEPES");
    objc_ReleaseObject(v30[6], "FE_DCTLKP");
  }

  return fecfg;
}

uint64_t oneword_crosstoken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6, int a7, int a8, const char *a9, char *a10, const char *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, char **a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t *a19, const char **a20, const char **a21, const char **a22, const char **a23)
{
  v30 = a12;
  v135 = *MEMORY[0x1E69E9840];
  strcpy(__s, "cross_token");
  v31 = (2 * strlen(*a20)) | 1u;
  if (*a16 < v31)
  {
    v32 = heap_Realloc(*(a1 + 8), *a12, v31);
    if (!v32)
    {
      goto LABEL_106;
    }

    *a12 = v32;
    *a16 = v31;
  }

  v124 = a3;
  if (*a17 < v31)
  {
    v37 = heap_Realloc(*(a1 + 8), *a13, v31);
    if (!v37)
    {
      goto LABEL_106;
    }

    *a13 = v37;
    *a17 = v31;
  }

  v38 = a14;
  if (*a18 < v31)
  {
    v39 = heap_Realloc(*(a1 + 8), *a14, v31);
    if (!v39)
    {
      goto LABEL_106;
    }

    *a14 = v39;
    *a18 = v31;
  }

  if (*a19 >= v31)
  {
LABEL_13:
    v128 = a4;
    v122 = a5;
    __s1 = a6;
    v121 = a8;
    v133 = 0;
    v131 = 0;
    __s2 = 0;
    v130 = 0;
    strcpy(*a12, *a20);
    v41 = a13;
    strcpy(*a13, *a21);
    strcpy(*a14, *a22);
    strcpy(*a15, *a23);
    v42 = *a12;
    if (**a12)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      do
      {
        v46 = &v42[v43];
        v47 = v42[v43];
        if (v47 == 226)
        {
          if (*(v46 + 1) == 151 && *(v46 + 2) == 132)
          {
            v45 = !v45;
          }
        }

        else if (v47 == 126 && v45)
        {
          v49 = strlen(&v42[v43]);
          memmove((v46 + 1), &v42[v43], v49 + 1);
          *(*a12 + v43) = -24126;
          v42 = *a12;
          v45 = 1;
        }

        v43 = ++v44;
      }

      while (strlen(v42) > v44);
    }

    v50 = 0;
    **a20 = 0;
    **a21 = 0;
    **a22 = 0;
    while (1)
    {
      strcpy(__s, "cross_token");
      v127 = strlen(__s);
      v51 = v50;
      if (v50)
      {
        *&(*a20)[strlen(*a20)] = 32;
        *&(*a21)[strlen(*a21)] = 32;
        *&(*a22)[strlen(*a22)] = 32;
      }

      v52 = *v30;
      v53 = v50;
      v54 = (*v30)[v50];
      if ((*v30)[v50])
      {
        v55 = v50;
        while ((v54 > 0x20 || ((1 << v54) & 0x100002600) == 0) && v54 != 95)
        {
          v55 = ++v50;
          v54 = v52[v50];
          if (!v52[v50])
          {
            v126 = 1;
            goto LABEL_36;
          }
        }

        v126 = 0;
LABEL_36:
        v56 = v50;
      }

      else
      {
        v126 = 1;
        v56 = v50;
        v55 = v50;
      }

      v52[v55] = 0;
      v57 = Utf8_LengthInUtf8chars(*v30, v56);
      v58 = Utf8_LengthInUtf8chars(*v30, v51);
      *(*v41 + v57) = 0;
      *(*v38 + v57) = 0;
      (*a15)[v57] = 0;
      v117 = &(*v30)[v53];
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v59, v60, v61, __s);
      v62 = v30;
      v63 = a1;
      v64 = v41;
      v65 = *v62;
      v66 = strlen(&(*v62)[v53]);
      v67 = (*(v128 + 120))(a2, v124, 0, &v65[v53], v66);
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_107;
      }

      v118 = *v64 + v58;
      log_OutText(*(v63 + 32), "FE_ONEWORD", 5, 0, "%s L2: %s", v68, v69, v70, __s);
      v71 = strlen((*v64 + v58));
      v67 = (*(v128 + 120))(a2, v124, 1, *v64 + v58, v71);
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_107;
      }

      v119 = *a14 + v58;
      log_OutText(*(v63 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", v72, v73, v74, __s);
      v75 = strlen((*a14 + v58));
      v67 = (*(v128 + 120))(a2, v124, 2, *a14 + v58, v75);
      if ((v67 & 0x80000000) != 0 || (a1 = v63, v120 = &(*a15)[v58], log_OutText(*(v63 + 32), "FE_ONEWORD", 5, 0, "%s L4: %s", v76, v77, v78, __s), v79 = strlen(&(*a15)[v58]), v67 = (*(v128 + 136))(a2, v124, 3, &(*a15)[v58], v79), (v67 & 0x80000000) != 0))
      {
LABEL_107:
        v91 = v67;
        goto LABEL_108;
      }

      v80 = __s1;
      if (strcmp(__s1, "normal") && strlen(__s1) + v127 + 2 <= 0x7F)
      {
        __strcat_chk();
        __strcat_chk();
      }

      v30 = a12;
      if (((*(v128 + 80))(a2, v124, __s) & 0x80000000) != 0)
      {
        __s[v127] = 0;
        v67 = (*(v128 + 80))(a2, v124, __s);
        if ((v67 & 0x80000000) != 0)
        {
          goto LABEL_107;
        }
      }

      else if (!a7)
      {
        if (!v122)
        {
          a7 = *__s1;
          v81 = __s1;
LABEL_53:
          strncpy(a10, v81, 0x14uLL);
          goto LABEL_54;
        }

        v81 = a9;
        a7 = v121;
        if (a9)
        {
          goto LABEL_53;
        }

        a7 = 0;
      }

LABEL_54:
      v67 = (*(v128 + 128))(a2, v124, 0, &__s2, &v133);
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_107;
      }

      __s2[v133] = 0;
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v82, v83, v84, __s);
      v67 = (*(v128 + 128))(a2, v124, 1, &v131, &v133);
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_107;
      }

      *(v131 + v133) = 0;
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s O2: %s", v85, v86, v87, __s);
      v91 = (*(v128 + 128))(a2, v124, 2, &v130, &v133);
      if ((v91 & 0x80000000) != 0)
      {
        goto LABEL_108;
      }

      *(v130 + v133) = 0;
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s O3: %s", v88, v89, v90, __s);
      v92 = __s2;
      if (*__s2)
      {
        v93 = 0;
        v94 = 0;
        v38 = a14;
        do
        {
          v95 = &v92[v93];
          v96 = *v95;
          if (v96 == 194)
          {
            if (v95[1] == 161)
            {
              v98 = strlen(v95 + 2);
              memmove(v95 + 1, v95 + 2, v98 + 1);
              __s2[v93] = 126;
            }
          }

          else if (v96 == 126)
          {
            v97 = strlen(v95 + 1);
            memmove(v95, v95 + 1, v97 + 1);
            --v94;
          }

          v93 = ++v94;
          v92 = __s2;
          v99 = strlen(__s2);
        }

        while (v99 > v94);
        v100 = v99 + 2;
        v80 = __s1;
      }

      else
      {
        v100 = 2;
        v38 = a14;
      }

      v101 = *a20;
      v102 = v100 + strlen(*a20);
      if (v102 < 0x81u)
      {
        v41 = a13;
      }

      else
      {
        v103 = heap_Realloc(*(a1 + 8), v101, v102);
        v41 = a13;
        if (!v103)
        {
          goto LABEL_106;
        }

        v101 = v103;
        *a20 = v103;
        v92 = __s2;
      }

      if (strlen(v92) == 3)
      {
        v129 = 0;
        utf8_Utf8ToUtf32_Tolerant(v92, 3u, &v129 + 4, 1u, &v129);
        if (HIDWORD(v129) == 8230)
        {
          *&(*a20)[strlen(*a20)] = 46;
          goto LABEL_77;
        }

        v105 = __s2;
        v104 = *a20;
      }

      else
      {
        v104 = v101;
        v105 = v92;
      }

      strcat(v104, v105);
LABEL_77:
      for (i = 0; ; ++i)
      {
        v107 = i;
        v108 = *(v131 + i);
        if (v108 != 32 && v108 != 126)
        {
          break;
        }
      }

      if (*(v131 + i))
      {
        while (v108 != 32 && v108 != 126)
        {
          LOBYTE(v108) = *(v131 + ++i);
        }

        *(v131 + i) = 0;
        if (*(v131 + v107))
        {
          v109 = (v131 + v107);
        }

        else
        {
          v109 = "*";
        }
      }

      else
      {
        v109 = "*";
      }

      strcat(*a21, v109);
      if (a11 && strstr(v80, "latin"))
      {
        strcpy(*a21, a11);
      }

      for (j = 0; ; ++j)
      {
        v111 = j;
        v112 = *(v130 + j);
        if (v112 != 32 && v112 != 126)
        {
          break;
        }
      }

      if (*(v130 + j))
      {
        while (v112 != 32 && v112 != 126)
        {
          LOBYTE(v112) = *(v130 + ++j);
        }

        *(v130 + j) = 0;
        if (*(v130 + v111))
        {
          v113 = (v130 + v111);
        }

        else
        {
          v113 = "*";
        }
      }

      else
      {
        v113 = "*";
      }

      strcat(*a22, v113);
      ++v50;
      if (v126)
      {
        goto LABEL_108;
      }
    }
  }

  v40 = heap_Realloc(*(a1 + 8), *a15, v31);
  if (v40)
  {
    *a15 = v40;
    *a19 = v31;
    goto LABEL_13;
  }

LABEL_106:
  v91 = 2310021130;
  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v33, v34, v35, v36, v116);
LABEL_108:
  v114 = *MEMORY[0x1E69E9840];
  return v91;
}

uint64_t crf_mde_seg_fv_new(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 16 * a2);
  *a3 = v6;
  if (!v6)
  {
LABEL_7:
    v14 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 35000, 0, v7, v8, v9, v10, v16);
    return v14;
  }

  *(a3 + 3) = a2;
  if (a2)
  {
    v11 = 0;
    do
    {
      v12 = heap_Calloc(*(a1 + 8), 1, 65);
      v13 = *a3;
      *(*a3 + v11) = v12;
      if (!v12)
      {
        goto LABEL_7;
      }

      *(v13 + v11 + 8) = 65;
      *v12 = 45;
      v11 += 16;
    }

    while (16 * a2 != v11);
  }

  v14 = 0;
  *(a3 + 2) = a2;
  return v14;
}

void *crf_mde_seg_fv_dealloc(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      v5 = *(a2 + 8);
      if (v5)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          if (*(v3 + v6))
          {
            heap_Free(v4[1], *(v3 + v6));
            v3 = *a2;
            *(*a2 + v6) = 0;
            v5 = *(a2 + 8);
          }

          v6 += 16;
        }
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t crf_mde_seg_fv_add(uint64_t a1, void *a2, unsigned int a3, char *__s)
{
  v8 = strlen(__s);
  v9 = *a2 + 16 * a3;
  if (*(v9 + 8) >= v8)
  {
    v11 = *v9;
    goto LABEL_5;
  }

  v10 = v8 + 1;
  v11 = heap_Realloc(*(a1 + 8), *v9, v10);
  if (v11)
  {
    v16 = *a2 + 16 * a3;
    *v16 = v11;
    *(v16 + 8) = v10;
LABEL_5:
    strcpy(v11, __s);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 35000, 0, v12, v13, v14, v15, v18);
  return 2310021130;
}

uint64_t crf_mde_seg_get_features(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, __int16 a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10, unsigned int a11, unsigned int a12)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a9)
  {
    v14 = 0;
    while (2)
    {
      v15 = *(a8 + 8 * v14);
      v16 = &byte_1F42D2CF8;
      v17 = "char";
      while (strcmp(v15, v17))
      {
        v17 = *(v16 + 1);
        v16 += 24;
        if (!v17)
        {
          goto LABEL_9;
        }
      }

      BYTE2(v20) = *v16;
      LOWORD(v20) = a6;
      result = (*(v16 - 1))(a1, a2, a3, a4, a5, a11, a12, a7, v20, __s);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

      result = crf_mde_seg_fv_add(a1, a10, v14, __s);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      if (++v14 != a9)
      {
        continue;
      }

      break;
    }
  }

  result = 0;
LABEL_11:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t crf_mde_seg_set_padding_features(uint64_t a1, unsigned int a2, int a3, void *a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = 0;
    if (a5 == 1)
    {
      v10 = 62;
    }

    else
    {
      v10 = 60;
    }

    while (1)
    {
      if (v9)
      {
        strcpy(__s, "-");
      }

      else
      {
        v14 = v10;
        LH_itoa(a2, v13, 0xAu);
        __strcat_chk();
        __strcpy_chk();
      }

      result = crf_mde_seg_fv_add(a1, a4, v9, __s);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (a3 == ++v9)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t crf_mde_seg_fe_char(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    *a11 = 45;
    v14 = 1;
  }

  else
  {
    v12 = *(a2 + 8 * v11);
    v13 = strlen(v12);
    if ((v13 & 0xFE00) != 0)
    {
      v14 = 512;
    }

    else
    {
      v14 = v13;
    }

    strncpy(a11, v12, v14);
  }

  a11[v14] = 0;
  return 0;
}

uint64_t crf_mde_seg_fe_isvowel(int a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, int a7, char *__s, unsigned __int16 a9, char a10, _WORD *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    v17 = "-";
  }

  else if (__s && (v14 = strlen(__s)) != 0)
  {
    v15 = v14;
    v16 = 0;
    v17 = "0";
    while (1)
    {
      v18 = Utf8_LengthInBytes(&__s[v16], 1);
      if (!strncmp(*(a2 + 8 * v11), &__s[v16], v18))
      {
        break;
      }

      v16 += v18;
      if (v16 >= v15)
      {
        goto LABEL_11;
      }
    }

    v17 = "1";
  }

  else
  {
    v17 = "0";
  }

LABEL_11:
  *a11 = *v17;
  return 0;
}

uint64_t crf_mde_seg_fe_char_count(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  if (a10 + a9 >= a3)
  {
    *a11 = 45;
  }

  else
  {
    LH_itoa(a9, __s, 0xAu);
    v11 = strlen(__s);
    if ((v11 & 0xFE00) != 0)
    {
      v12 = 512;
    }

    else
    {
      v12 = v11;
    }

    strncpy(a11, __s, v12);
    a11[v12] = 0;
  }

  return 0;
}

uint64_t crf_mde_seg_fe_char_revcount(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 < 0 || v11 >= a3)
  {
    *a11 = 45;
  }

  else
  {
    LH_itoa(~a9 + a3, __s, 0xAu);
    v12 = strlen(__s);
    if ((v12 & 0xFE00) != 0)
    {
      v13 = 512;
    }

    else
    {
      v13 = v12;
    }

    strncpy(a11, __s, v13);
    a11[v13] = 0;
  }

  return 0;
}

uint64_t crf_mde_seg_fe_morpheme(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, unsigned __int16 a9, char a10, char *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    if (a6 == 1 && (v11 & 0x80000000) != 0)
    {
      a11[2] = 83;
      v15 = 20307;
    }

    else
    {
      if (a7 != 1 || v11 < a3)
      {
        *a11 = 45;
        v14 = 1;
        goto LABEL_14;
      }

      a11[2] = 83;
      v15 = 20293;
    }

    *a11 = v15;
    v14 = 3;
  }

  else
  {
    v12 = *(a2 + 8 * v11);
    v13 = strlen(v12);
    if ((v13 & 0xFE00) != 0)
    {
      v14 = 512;
    }

    else
    {
      v14 = v13;
    }

    strncpy(a11, v12, v14);
  }

LABEL_14:
  a11[v14] = 0;
  return 0;
}

uint64_t crf_mde_seg_fe_punc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, char a10, _BYTE *a11)
{
  v11 = a10 + a9;
  if (v11 >= a3)
  {
    *a11 = 45;
    v12 = 1;
  }

  else if (*(a4 + 4 * v11) == 1)
  {
    a11[2] = 83;
    *a11 = 17753;
    v12 = 3;
  }

  else
  {
    *a11 = 20302;
    v12 = 2;
  }

  a11[v12] = 0;
  return 0;
}

uint64_t crf_mde_utils_add2Str(uint64_t a1, const char **a2, _WORD *a3, char *__s)
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
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v14, v15, v16, v17, v19);
      return 2310021130;
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

uint64_t hlp_Write2WordRec(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, __int16 a5, __int16 a6, int a7, const char *a8, char *__s, char *a10, char *a11, int a12, int a13)
{
  v27 = a5;
  v26 = a6;
  v25 = 0;
  v24 = 8;
  v23 = 0;
  if (a7)
  {
    result = (*(a1 + 80))(a2, a3, *a4, &v23);
    goto LABEL_3;
  }

  if (!a13)
  {
    result = (*(a1 + 88))(a2, a3, *a4, &v23);
LABEL_3:
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v23 = *a4;
LABEL_7:
  result = (*(a1 + 160))(a2, a3, v23, 0, 1, &v24, &v25);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 160))(a2, a3, v23, 1, 1, &v27, &v25);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a1 + 160))(a2, a3, v23, 2, 1, &v26, &v25);
      if ((result & 0x80000000) == 0)
      {
        v19 = strlen(__s);
        result = (*(a1 + 160))(a2, a3, v23, 3, (v19 + 1), __s, &v25);
        if ((result & 0x80000000) == 0)
        {
          v20 = strlen(a8);
          result = (*(a1 + 160))(a2, a3, v23, 5, (v20 + 1), a8, &v25);
          if ((result & 0x80000000) == 0)
          {
            v21 = strlen(a10);
            result = (*(a1 + 160))(a2, a3, v23, 6, (v21 + 1), a10, &v25);
            if ((result & 0x80000000) == 0)
            {
              v22 = strlen(a11);
              result = (*(a1 + 160))(a2, a3, v23, 9, (v22 + 1), a11, &v25);
              if ((result & 0x80000000) == 0)
              {
                result = (*(a1 + 160))(a2, a3, v23, 7, 1, &a12, &v25);
                if ((result & 0x80000000) == 0)
                {
                  *a4 = v23;
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

uint64_t crf_mde_utils_POS_dctlkp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v13 = (*(a2 + 96))(a3, a4, a5, a6, &__c[3], &__c[1], __c);
  if ((v13 & 0x80000000) == 0)
  {
    if (*&__c[1] || (log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : no result", v10, v11, v12, a5), *&__c[1]))
    {
      v14 = **&__c[3];
      v15 = strchr(**&__c[3], __c[0]);
      if (v15)
      {
        *v15 = 0;
        v14 = **&__c[3];
      }

      v16 = strlen(v14);
      v17 = heap_Calloc(*(a1 + 8), 1, v16 + 1);
      *a7 = v17;
      if (v17)
      {
        strcpy(v17, **&__c[3]);
        v27 = *a7;
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s POS dct look up %s : adding %s %s %s", v22, v23, v24, a5);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v18, v19, v20, v21, v26);
        return 2310021130;
      }
    }
  }

  return v13;
}

uint64_t crf_mde_utils_write_morphemes(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 *a11, unsigned __int16 a12, __int16 a13, unsigned __int16 *a14, const char *a15, unsigned __int16 *a16)
{
  v89 = *MEMORY[0x1E69E9840];
  v87 = 0;
  v86 = *a11;
  v19 = strlen(a15);
  strcpy(v88, "normal");
  v20 = *a14;
  if (*a14)
  {
    v21 = 0;
    v22 = *(a14 + 1);
    do
    {
      v23 = *v22;
      v22 += 6;
      v21 += strlen(v23) + 1;
      --v20;
    }

    while (v20);
    v24 = v21 + 1;
  }

  else
  {
    v24 = 1;
  }

  v25 = heap_Calloc(*(a1 + 8), 1, v24);
  if (!v25)
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v26, v27, v28, v29, __s);
    v61 = 2310021130;
    goto LABEL_69;
  }

  v30 = v25;
  v81 = a1;
  strcpy(v25, **(a14 + 1));
  if (*a14 >= 2u)
  {
    *&v30[strlen(v30)] = 95;
    if (*a14 >= 2u)
    {
      v31 = 1;
      v32 = 48;
      do
      {
        strcat(v30, *(*(a14 + 1) + v32));
        v33 = *a14;
        if (v31 + 1 < v33)
        {
          *&v30[strlen(v30)] = 95;
          v33 = *a14;
        }

        ++v31;
        v32 += 48;
      }

      while (v31 < v33);
    }
  }

  v85 = strlen(v30);
  v34 = a13 + a12 + v85;
  *a16 = v34;
  v35 = Utf8_LengthInBytes(&a15[v34], 1);
  v36 = *a16;
  if (v19 > v36)
  {
    v37 = v35;
    do
    {
      if (!(*(a4 + 128))(a5, a6, &a15[v36]))
      {
        break;
      }

      v38 = *a16;
      if (!strncmp(&a15[v38], "_", v37))
      {
        break;
      }

      *a16 = v38 + v37;
      v37 = Utf8_LengthInBytes(&a15[(v38 + v37)], 1);
      v36 = *a16;
    }

    while (v19 > v36);
  }

  v80 = a13 + a12;
  v39 = Utf8_LengthInBytes(&a15[v80], 1);
  v40 = a12 - v39 + a13;
  v83 = a5;
  if (v40 >= 0 && (v41 = v39, v42 = &a15[v40], (*(a4 + 128))(a5, a6, v42)))
  {
    v43 = 0;
    v44 = v41;
    LOWORD(v45) = v41;
    do
    {
      v46 = v45;
      if (!strncmp(v42, "_", v44))
      {
        break;
      }

      v47 = Utf8_LengthInBytes(&a15[v80 - v45], 1);
      v45 = v45 + v47;
      v48 = a12 - v45 + a13;
      if (v48 < 0)
      {
        v43 = v46;
        break;
      }

      v44 = v47;
      v42 = &a15[v48];
      v43 = v46;
    }

    while ((*(a4 + 128))(v83, a6, v42));
  }

  else
  {
    v43 = 0;
  }

  if (!v85)
  {
    v50 = 0;
    v49 = 0;
LABEL_48:
    if (a2 == 1 && a3)
    {
      v55 = crf_mde_utils_POS_dctlkp(v81, a4, v83, a6, a3, *(*(a14 + 1) + 48 * v49), &v87);
      if ((v55 & 0x80000000) != 0)
      {
LABEL_64:
        v61 = v55;
        goto LABEL_69;
      }

      v56 = v87;
      v62 = a12 - v43 + v50;
      v63 = *a16 - a13;
      if (v87)
      {
        LOWORD(v74) = 0;
        v61 = hlp_Write2WordRec(a7, a9, a10, &v86, v62, v63, v49, v87, "", "", v88, v74, 1);
        v64 = v81;
        v65 = a11;
        if ((v61 & 0x80000000) != 0)
        {
          goto LABEL_72;
        }

        heap_Free(*(v81 + 8), v56);
        goto LABEL_56;
      }

      LOWORD(v74) = 0;
      v66 = hlp_Write2WordRec(a7, a9, a10, &v86, v62, v63, v49, "*", "", "", v88, v74, 1);
    }

    else
    {
      LOWORD(v74) = 0;
      v66 = hlp_Write2WordRec(a7, a9, a10, &v86, a12 - v43 + v50, *a16 - a13, v49, "", "", "", v88, v74, 1);
    }

    v61 = v66;
    v64 = v81;
    v65 = a11;
    if ((v66 & 0x80000000) != 0)
    {
LABEL_67:
      *v65 = v86;
      goto LABEL_68;
    }

LABEL_56:
    v67 = (v80 + v85);
    if (v67 > v80 && v85)
    {
      v68 = 0;
      v69 = v80;
      do
      {
        v70 = v30[v68];
        if (a15[v69] != v70)
        {
          a15[v69] = v70;
        }

        if (v67 <= ++v69)
        {
          break;
        }

        ++v68;
      }

      while (v85 > v68);
    }

    goto LABEL_67;
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  v53 = a2 == 1 && a3 != 0;
  v77 = a12 - v43;
  v78 = v53;
  v76 = a6;
  while (1)
  {
    v54 = Utf8_LengthInBytes(&v30[v51], 1);
    if (!strncmp(&v30[v51], "_", v54))
    {
      break;
    }

LABEL_44:
    v51 += v54;
    if (v51 >= v85)
    {
      goto LABEL_48;
    }
  }

  if (!v78)
  {
    LOWORD(v74) = 0;
    v60 = hlp_Write2WordRec(a7, a9, a10, &v86, v77 + v50, v51 + a12, v49, "", "", "", v88, v74, 1);
    goto LABEL_42;
  }

  v55 = crf_mde_utils_POS_dctlkp(v81, a4, v83, a6, a3, *(*(a14 + 1) + 48 * v49), &v87);
  if ((v55 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  v56 = v87;
  v57 = v77 + v50;
  v58 = v51 + a12;
  if (!v87)
  {
    LOWORD(v74) = 0;
    v60 = hlp_Write2WordRec(a7, a9, a10, &v86, v57, v58, v49, "*", "", "", v88, v74, 1);
LABEL_42:
    if ((v60 & 0x80000000) != 0)
    {
      v61 = v60;
      v64 = v81;
      v65 = a11;
      goto LABEL_67;
    }

    goto LABEL_43;
  }

  LOWORD(v74) = 0;
  v59 = hlp_Write2WordRec(a7, a9, a10, &v86, v57, v58, v49, v87, "", "", v88, v74, 1);
  if ((v59 & 0x80000000) == 0)
  {
    heap_Free(*(v81 + 8), v56);
    v87 = 0;
LABEL_43:
    ++v49;
    v50 = v51 + 1;
    a6 = v76;
    goto LABEL_44;
  }

  v61 = v59;
  v64 = v81;
  v65 = a11;
LABEL_72:
  *v65 = v86;
  heap_Free(*(v64 + 8), v56);
LABEL_68:
  heap_Free(*(v64 + 8), v30);
LABEL_69:
  v71 = *MEMORY[0x1E69E9840];
  return v61;
}

uint64_t crf_mde_utils_adddctres(uint64_t a1, uint64_t a2, const char *a3, char *__s, const char *a5, int a6)
{
  v12 = *(a1 + 8);
  v13 = strlen(__s);
  v14 = heap_Calloc(v12, 1, v13 + 1);
  if (v14)
  {
    v19 = v14;
    strcpy(v14, __s);
    v20 = strchr(__s, 92);
    for (i = 1; v20; ++i)
    {
      *v20 = 0;
      v20 = strchr(v20 + 1, 92);
    }

    v22 = *(a2 + 24);
    if (*(a2 + 24))
    {
      if (*(a2 + 8) + i >= v22)
      {
        v23 = heap_Realloc(*(a1 + 8), *(a2 + 16), 32 * (v22 + i) + 160);
        if (!v23)
        {
          goto LABEL_33;
        }

        *(a2 + 16) = v23;
        v28 = i + *(a2 + 24) + 5;
        *(a2 + 24) = v28;
        v29 = *(a2 + 8);
        if (v29 < v28)
        {
          v30 = v28;
          v31 = (v23 + 32 * v29 + 8);
          v32 = v30 - v29;
          do
          {
            *(v31 - 2) = 0;
            v31[1] = 0;
            v31[2] = 0;
            *v31 = 0;
            v31 += 4;
            --v32;
          }

          while (v32);
        }
      }
    }

    else
    {
      if (i >= 5u)
      {
        v34 = i + 1;
      }

      else
      {
        v34 = 5;
      }

      v35 = heap_Calloc(*(a1 + 8), 1, 32 * v34);
      *(a2 + 16) = v35;
      if (!v35)
      {
        goto LABEL_33;
      }

      *(a2 + 24) = v34;
    }

    v36 = strchr(v19, 92);
    v37 = v19;
    if (v36)
    {
      v38 = v36;
      v37 = v19;
      do
      {
        *v38 = 0;
        v39 = strlen(v37);
        v40 = heap_Calloc(*(a1 + 8), 1, v39 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 8) = v40;
        if (!v40)
        {
          goto LABEL_33;
        }

        strcpy(v40, v37);
        v41 = strlen(a3);
        v42 = heap_Calloc(*(a1 + 8), 1, v41 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 16) = v42;
        if (!v42)
        {
          goto LABEL_33;
        }

        strcpy(v42, a3);
        if (a5)
        {
          v43 = strlen(a5);
          if (v43)
          {
            v44 = heap_Calloc(*(a1 + 8), 1, v43 + 1);
            *(*(a2 + 16) + 32 * *(a2 + 8) + 24) = v44;
            if (!v44)
            {
              goto LABEL_33;
            }

            strcpy(v44, a5);
          }
        }

        v45 = *(a2 + 8);
        *(*(a2 + 16) + 32 * v45) = a6;
        *(a2 + 8) = v45 + 1;
        v37 = v38 + 1;
        v38 = strchr(v38 + 1, 92);
      }

      while (v38);
    }

    v46 = strlen(v37);
    v47 = heap_Calloc(*(a1 + 8), 1, v46 + 1);
    *(*(a2 + 16) + 32 * *(a2 + 8) + 8) = v47;
    if (v47)
    {
      strcpy(v47, v37);
      v48 = strlen(a3);
      v49 = heap_Calloc(*(a1 + 8), 1, v48 + 1);
      *(*(a2 + 16) + 32 * *(a2 + 8) + 16) = v49;
      if (v49)
      {
        strcpy(v49, a3);
        if (!a5)
        {
          goto LABEL_32;
        }

        v50 = strlen(a5);
        if (!v50)
        {
          goto LABEL_32;
        }

        v51 = heap_Calloc(*(a1 + 8), 1, v50 + 1);
        *(*(a2 + 16) + 32 * *(a2 + 8) + 24) = v51;
        if (v51)
        {
          strcpy(v51, a5);
LABEL_32:
          v33 = 0;
          v52 = *(a2 + 8);
          *(*(a2 + 16) + 32 * v52) = a6;
          *(a2 + 8) = v52 + 1;
          *(a2 + 28) = 1;
          *(a2 + 40) = 1;
LABEL_34:
          heap_Free(*(a1 + 8), v19);
          return v33;
        }
      }
    }

LABEL_33:
    v33 = 2310021130;
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v24, v25, v26, v27, v54);
    goto LABEL_34;
  }

  v33 = 2310021130;
  log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v15, v16, v17, v18, v54);
  return v33;
}

uint64_t crf_mde_utils_sysdctlkp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10)
{
  v75 = 0;
  v73 = 0;
  v72 = 0;
  v74 = -1;
  v13 = "xps";
  if (((*(a2 + 96))(a3, a4, "fecfg", "mde_affixtags", &v75, &v74, &v73) & 0x80000000) == 0)
  {
    if (v74)
    {
      v13 = *v75;
      v14 = strchr(*v75, v73);
      if (v14)
      {
        *v14 = 0;
        v13 = *v75;
      }
    }
  }

  if ((paramc_ParamGetStr(*(a1 + 40), "sysdctlookup", &v72) & 0x80000000) == 0 && *v72 == 110 && v72[1] == 111 && !v72[2])
  {
    return 0;
  }

  v15 = a9;
  v74 = 0;
  v71 = 7352935;
  if (a5)
  {
    v16 = 3 * *a9;
    __strcat_chk();
    v17 = (*(a2 + 232))(a3, a4, &v71, a9, &v75, &v74, &v73, 0);
  }

  else
  {
    v65 = 0;
    v17 = (*(a2 + 240))(a3, a4, &v71, a9, &v75, &v74, &v73, a7);
  }

  v21 = v17;
  if ((v17 & 0x80000000) == 0)
  {
    if (v74 || (log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s : no result", v18, v19, v20, a9), v74))
    {
      __s1 = v13;
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = v75[v22];
        v25 = strchr(v24, v73);
        if (!v25 || (*v25 = 0, (v29 = strchr(v25 + 1, v73)) == 0) || (*v29 = 0, (v30 = strchr(v29 + 1, v73)) == 0))
        {
LABEL_41:
          if (!v23)
          {
            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s : found entry, but discarded (mde field))", v26, v27, v28, v15);
          }

          v23 = 1;
          goto LABEL_44;
        }

        *v30 = 0;
        v31 = v30 + 1;
        v32 = strchr(v30 + 1, v73);
        v33 = v32;
        if (v32)
        {
          *v32 = 0;
          v33 = v32 + 1;
          v34 = strchr(v32 + 1, v73);
          if (v34)
          {
            *v34 = 0;
            v35 = strchr(v34 + 1, v73);
            if (v35)
            {
              v36 = v35;
              *v35 = 0;
              v37 = (v35 + 1);
              v38 = strchr(v35 + 1, v73);
              if (v38)
              {
                *v38 = 0;
                v39 = strchr(v38 + 1, v73);
                if (v39)
                {
                  *v39 = 0;
                }
              }

              v40 = *v37;
              if (v40 == 50)
              {
                v41 = v36[2];
              }

              else
              {
                if (v40 != 48)
                {
                  goto LABEL_31;
                }

                v41 = v36[2];
              }

              if (!v41)
              {
                goto LABEL_41;
              }
            }
          }
        }

LABEL_31:
        if (v24)
        {
          v42 = *v31 == 0;
        }

        else
        {
          v42 = 1;
        }

        if (v42)
        {
          goto LABEL_41;
        }

        v43 = strlen(v24);
        if (!v43)
        {
          goto LABEL_41;
        }

        v44 = heap_Calloc(*(a1 + 8), 1, v43 + 1);
        if (!v44 || (v49 = v44, strcpy(v44, v24), (v50 = heap_Calloc(*(a1 + 8), 1, 256)) == 0))
        {
          log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v45, v46, v47, v48, v65);
          return 2310021130;
        }

        v51 = v50;
        if (strlen(v31) == 1 && strstr(__s1, v31))
        {
          strcpy(v51, v31);
          v55 = 2;
        }

        else
        {
          strcpy(v51, v31);
          if (a8)
          {
            v56 = v51;
            while (1)
            {
              v57 = strchr(v31, 92);
              if (v57)
              {
                strncpy(v56, v31, (v57 - v31));
                v56[(v57 - v31)] = 0;
              }

              else
              {
                strcpy(v56, v31);
              }

              v74 = -1;
              v58 = (*(a2 + 96))(a3, a4, a8, v56, &v75, &v74, &v73);
              if ((v58 & 0x80000000) != 0)
              {
                return v58;
              }

              if (v74 == 1)
              {
                v59 = *v75;
                v60 = strchr(*v75, v73);
                if (v60)
                {
                  *v60 = 0;
                  v59 = *v75;
                }

                strcpy(v56, v59);
              }

              if (!v57)
              {
                break;
              }

              v61 = &v56[strlen(v56)];
              *v61 = 92;
              v56 = v61 + 1;
              v31 = v57 + 1;
            }
          }

          v55 = 1;
        }

        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "G2P look up %s : adding %s %s %s", v52, v53, v54, a9);
        v62 = crf_mde_utils_adddctres(a1, a10, v49, v51, v33, v55);
        v63 = v49;
        v15 = a9;
        heap_Free(*(a1 + 8), v63);
        heap_Free(*(a1 + 8), v51);
        v21 = 0;
        if ((v62 & 0x80000000) != 0)
        {
          return v62;
        }

LABEL_44:
        ++v22;
      }

      while (v22 < v74);
    }
  }

  return v21;
}

uint64_t crf_mde_utils_dctlkp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  memset(__c, 0, sizeof(__c));
  v13 = (*(a2 + 96))(a3, a4, a5, a6, &__c[3], &__c[1], __c);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (!*&__c[1])
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : no result", v10, v11, v12, a5);
    if (!*&__c[1])
    {
      return v13;
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(*&__c[3] + 8 * v14);
    v18 = strchr(v17, __c[0]);
    if (v18)
    {
      *v18 = 0;
      v19 = v18 + 1;
      v17 = *(*&__c[3] + 8 * v14);
    }

    else
    {
      v19 = v16;
    }

    v20 = strlen(v17);
    v21 = heap_Calloc(*(a1 + 8), 1, v20 + 1);
    if (!v21)
    {
LABEL_27:
      v13 = 2310021130;
      v38 = *(a1 + 32);
      v39 = 34000;
      goto LABEL_29;
    }

    v26 = v21;
    strcpy(v21, *(*&__c[3] + 8 * v14));
    v27 = strchr(v19, __c[0]);
    if (!v27)
    {
      v16 = v19;
      if (v15)
      {
        goto LABEL_13;
      }

LABEL_28:
      v13 = 2310021130;
      v38 = *(a1 + 32);
      v39 = 34008;
LABEL_29:
      log_OutPublic(v38, "FE_ONEWORD", v39, 0, v22, v23, v24, v25, v41);
      return v13;
    }

    *v27 = 0;
    v16 = v27 + 1;
    v15 = v19;
    if (!v19)
    {
      goto LABEL_28;
    }

LABEL_13:
    v28 = strlen(v15);
    v29 = heap_Calloc(*(a1 + 8), 1, v28 + 1);
    if (!v29)
    {
      goto LABEL_27;
    }

    v30 = v29;
    strcpy(v29, v15);
    v31 = strchr(v16, __c[0]);
    if (v31)
    {
      *v31 = 0;
    }

    if (v16 && *v16 != __c[0] && (v35 = strlen(v16)) != 0)
    {
      v36 = heap_Calloc(*(a1 + 8), 1, v35 + 1);
      if (!v36)
      {
        goto LABEL_27;
      }

      v37 = v36;
      strcpy(v36, v16);
    }

    else
    {
      v37 = 0;
    }

    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s dct look up %s : adding %s %s %s", v32, v33, v34, a5);
    v13 = crf_mde_utils_adddctres(a1, a7, v30, v26, v37, a8);
    heap_Free(*(a1 + 8), v30);
    heap_Free(*(a1 + 8), v26);
    if ((v13 & 0x80000000) != 0)
    {
      break;
    }

    if (v37)
    {
      heap_Free(*(a1 + 8), v37);
    }

    if (++v14 >= *&__c[1])
    {
      return 0;
    }
  }

  if (v37)
  {
    heap_Free(*(a1 + 8), v37);
  }

  return v13;
}

uint64_t crf_mde_utils_dynstr_add(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v8 = 2310021120;
  v9 = *a2;
  v10 = strlen(*a2);
  v11 = strlen(a3);
  v12 = *(a2 + 8);
  if (v10 + v11 + 2 >= v12)
  {
    v13 = heap_Realloc(*(a1 + 8), v9, v11 + v12 + *(a2 + 10));
    if (!v13)
    {
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v14, v15, v16, v17, v19);
      return 2310021130;
    }

    v9 = v13;
    *a2 = v13;
    *(a2 + 8) += v11 + *(a2 + 10);
  }

  if (a4 == 1)
  {
    strcat(v9, a3);
    return 0;
  }

  if (a4 == 2)
  {
    strcpy(v9, a3);
    return 0;
  }

  return v8;
}

void *crf_mde_utils_dynstr_free(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    result = heap_Free(result[1], v3);
    *a2 = 0;
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t crf_mde_utils_dynstr_init(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v5 = a3;
  v8 = heap_Calloc(*(a1 + 8), 1, a3);
  *a2 = v8;
  if (v8)
  {
    v13 = v8;
    result = 0;
    *(a2 + 8) = v5;
    *(a2 + 10) = a4;
    *v13 = 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v9, v10, v11, v12, v15);
    return 2310021130;
  }

  return result;
}

uint64_t crf_mde_utils_CRF_MDE_SEGPAT_T_init(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 80 * a3);
  *a2 = v6;
  if (v6)
  {
    if (a3)
    {
      v11 = 0;
      v12 = 80 * a3;
      while (1)
      {
        result = crf_mde_utils_dynstr_init(a1, *a2 + v11, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v11 + 32, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v11 + 48, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v11 + 16, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = crf_mde_utils_dynstr_init(a1, *a2 + v11 + 64, 0x20u, 16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v11 += 80;
        if (v12 == v11)
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
    log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v7, v8, v9, v10, v14);
    return 2310021130;
  }

  return result;
}

void *crf_mde_utils_CRF_MDE_SEGPAT_T_free(void *result, uint64_t *a2, unsigned int a3)
{
  v4 = *a2;
  if (v4)
  {
    v5 = result;
    if (a3)
    {
      v6 = 0;
      v7 = 80 * a3;
      do
      {
        v8 = *a2;
        v9 = *(*a2 + v6);
        if (v9)
        {
          heap_Free(v5[1], v9);
          *(v8 + v6) = 0;
        }

        v10 = *a2;
        *(v8 + v6 + 8) = 0;
        v11 = v10 + v6;
        v12 = *(v10 + v6 + 32);
        if (v12)
        {
          heap_Free(v5[1], v12);
          *(v11 + 32) = 0;
          v10 = *a2;
        }

        *(v11 + 40) = 0;
        v13 = v10 + v6;
        v14 = *(v10 + v6 + 48);
        if (v14)
        {
          heap_Free(v5[1], v14);
          *(v13 + 48) = 0;
          v10 = *a2;
        }

        *(v13 + 56) = 0;
        v15 = v10 + v6;
        v16 = *(v10 + v6 + 16);
        if (v16)
        {
          heap_Free(v5[1], v16);
          *(v15 + 16) = 0;
          v10 = *a2;
        }

        *(v15 + 24) = 0;
        v17 = v10 + v6;
        v18 = *(v10 + v6 + 64);
        if (v18)
        {
          heap_Free(v5[1], v18);
          *(v17 + 64) = 0;
        }

        *(v17 + 72) = 0;
        v6 += 80;
      }

      while (v7 != v6);
      v4 = *a2;
    }

    result = heap_Free(v5[1], v4);
    *a2 = 0;
  }

  return result;
}

uint64_t crf_mde_utils_do_validation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int16 a13, int a14, const char *a15, uint64_t a16, uint64_t a17)
{
  v169 = a7;
  v17 = a13;
  if (a13)
  {
    v18 = 0;
    v19 = a1;
    do
    {
      v20 = *(a12 + 8 * v18);
      if (*(v20 + 8) == 5)
      {
        log_OutText(*(v19 + 32), "FE_ONEWORD", 5, 0, "skip nbest[%d] as contains split umlaut", a6, a7, a8, v18);
      }

      else if (*v20)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v182 = v22;
          v23 = *(v20 + 1) + 48 * v22;
          if (!*(v23 + 8) && !*(v23 + 40))
          {
            *(v23 + 40) = 1;
            v24 = crf_mde_utils_sysdctlkp(v19, a2, a3, a4, a5, a6, v169, a8, *v23, v23);
            if ((v24 & 0x80000000) != 0)
            {
              return v24;
            }

            v178 = v21;
            v25 = (*(*(a12 + 8 * v18) + 8) + 48 * v182);
            v24 = crf_mde_utils_dctlkp(v19, a2, a3, a4, a9, *v25, v25, 1);
            if ((v24 & 0x80000000) != 0)
            {
              return v24;
            }

            if (a10)
            {
              v26 = (*(*(a12 + 8 * v18) + 8) + 48 * v182);
              v24 = crf_mde_utils_dctlkp(v19, a2, a3, a4, a10, *v26, v26, 2);
              if ((v24 & 0x80000000) != 0)
              {
                return v24;
              }
            }

            v20 = *(a12 + 8 * v18);
            v27 = *(v20 + 1) + 48 * v182;
            if (*(v27 + 8))
            {
              v28 = 0;
              v29 = 0;
              *(v27 + 32) = 0;
              do
              {
                v30 = *(v27 + 16) + v28;
                if (*(v30 + 16))
                {
                  v31 = strstr(*(v30 + 16), "◈");
                  if (v31)
                  {
                    v32 = v31;
                    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "segment %s has phon with special umlaut character=%s", a6, a7, a8, *v27);
                    v36 = v182;
                    v37 = *(*(a12 + 8 * v18) + 8) + 48 * v182;
                    if (*(v37 + 36) == 1)
                    {
                      v38 = "umlauted segment; modified to=%s";
                    }

                    else
                    {
                      v39 = *(*(v37 + 16) + v28 + 16);
                      v40 = strlen((v32 + 3));
                      v36 = v182;
                      memcpy(v39, (v32 + 3), v40);
                      v32 = *(*(*(*(a12 + 8 * v18) + 8) + 48 * v182 + 16) + v28 + 16) + strlen((v32 + 3));
                      v38 = "non-umlauted segment; modified to=%s";
                    }

                    *v32 = 0;
                    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, v38, v33, v34, v35, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v36 + 16) + v28 + 16));
                    v21 = v178;
                  }
                }

                v20 = *(a12 + 8 * v18);
                v41 = *(v20 + 1);
                v42 = *(v41 + 48 * v182 + 16) + v28;
                v43 = *(v42 + 24);
                if (v43)
                {
                  v44 = strstr(*(v42 + 24), "force");
                  if (v44)
                  {
                    v45 = v44;
                    v46 = strlen(v43);
                    if (v46 < 7)
                    {
                      v47 = 5;
                    }

                    else if (v45[5] == 44)
                    {
                      v47 = 6;
                    }

                    else
                    {
                      v47 = 5;
                    }

                    if (!strcmp(v43, "force") || (memmove(v45, &v45[v47], (v46 - v47 + 1)), v48 = a12, v49 = v182, v43 = *(*(*(*(a12 + 8 * v18) + 8) + 48 * v182 + 16) + v28 + 24), !*v43))
                    {
                      heap_Free(*(a1 + 8), v43);
                      v48 = a12;
                      v49 = v182;
                      *(*(*(*(a12 + 8 * v18) + 8) + 48 * v182 + 16) + v28 + 24) = 0;
                    }

                    v20 = *(v48 + 8 * v18);
                    v41 = *(v20 + 1);
                    *(v41 + 48 * v49 + 32) = 1;
                  }
                }

                ++v29;
                v27 = v41 + 48 * v182;
                v28 += 32;
              }

              while (v29 < *(v27 + 8));
              for (i = 0; i != a13; ++i)
              {
                v51 = *(a12 + 8 * i);
                if (*v51)
                {
                  for (j = 0; j < *v51; ++j)
                  {
                    if ((v18 != i || v182 != j) && *(v51 + 8) != 5)
                    {
                      v53 = *(v51 + 1) + 48 * j;
                      if (!*(v53 + 8))
                      {
                        v54 = *(v20 + 1) + 48 * v182;
                        if (!strcmp(*v54, *v53))
                        {
                          *(*(*(a12 + 8 * i) + 8) + 48 * j + 16) = heap_Calloc(*(a1 + 8), 1, 32 * *(v54 + 8));
                          v51 = *(a12 + 8 * i);
                          v56 = *(v51 + 1);
                          v57 = v56 + 48 * j;
                          if (!*(v57 + 16))
                          {
                            v109 = 2310021130;
                            v154 = *(a1 + 32);
                            goto LABEL_209;
                          }

                          v20 = *(a12 + 8 * v18);
                          v58 = *(v20 + 1);
                          v59 = *(v58 + 48 * v182 + 8);
                          *(v57 + 24) = v59;
                          v60 = v56 + 48 * j;
                          *(v60 + 8) = v59;
                          *(v60 + 28) = 1;
                          *(v60 + 40) = 1;
                          if (v59)
                          {
                            v61 = 0;
                            v62 = 0;
                            while (1)
                            {
                              v63 = v182;
                              v64 = *(v58 + 48 * v182 + 16) + v61;
                              *(*(v56 + 48 * j + 16) + v61) = *v64;
                              v65 = *(v64 + 8);
                              if (v65)
                              {
                                v66 = strlen(v65);
                                *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v61 + 8) = heap_Calloc(*(a1 + 8), 1, v66 + 1);
                                v67 = *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v61 + 8);
                                if (!v67)
                                {
                                  break;
                                }

                                v63 = v182;
                                strcpy(v67, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v182 + 16) + v61 + 8));
                                v20 = *(a12 + 8 * v18);
                              }

                              v68 = strlen(*(*(*(v20 + 1) + 48 * v63 + 16) + v61 + 16));
                              *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v61 + 16) = heap_Calloc(*(a1 + 8), 1, v68 + 1);
                              v69 = *(*(*(*(a12 + 8 * i) + 8) + 48 * j + 16) + v61 + 16);
                              if (!v69)
                              {
                                break;
                              }

                              strcpy(v69, *(*(*(*(a12 + 8 * v18) + 8) + 48 * v63 + 16) + v61 + 16));
                              v20 = *(a12 + 8 * v18);
                              v58 = *(v20 + 1);
                              v70 = v58 + 48 * v63;
                              v51 = *(a12 + 8 * i);
                              v56 = *(v51 + 1);
                              *(v56 + 48 * j + 32) = *(v70 + 32);
                              ++v62;
                              v61 += 32;
                              v21 = v178;
                              if (v62 >= *(v70 + 8))
                              {
                                goto LABEL_43;
                              }
                            }

LABEL_208:
                            v109 = 2310021130;
                            v154 = *(a1 + 32);
LABEL_209:
                            log_OutPublic(v154, "FE_ONEWORD", 34000, 0, v55, a6, a7, a8, v156);
                            return v109;
                          }
                        }
                      }
                    }

LABEL_43:
                    ;
                  }
                }

                v19 = a1;
              }
            }

            else
            {
              for (k = 0; k != a13; ++k)
              {
                v72 = *(a12 + 8 * k);
                if (*v72)
                {
                  v73 = 0;
                  v74 = 48 * *v72;
                  do
                  {
                    if (v18 != k || v21 != v73)
                    {
                      v75 = *(v72 + 1);
                      if (!strcmp(*v27, *(v75 + v73)))
                      {
                        *(v75 + v73 + 40) = 1;
                      }
                    }

                    v73 += 48;
                  }

                  while (v74 != v73);
                }
              }

              v19 = a1;
            }
          }

          v22 = v182 + 1;
          v21 += 48;
        }

        while (v182 + 1 < *v20);
      }

      ++v18;
      v17 = a13;
    }

    while (v18 != a13);
    for (m = 0; m != a13; ++m)
    {
      v77 = *(a12 + 8 * m);
      v78 = *v77;
      if (*v77)
      {
        v79 = 0;
        v80 = 0;
        v81 = (*(v77 + 1) + 32);
        do
        {
          if (!*(v81 - 12))
          {
            *(v81 - 1) = 0;
            v80 = 1;
          }

          v82 = *v81;
          v81 += 12;
          if (v82 == 1)
          {
            v79 = 1;
          }

          --v78;
        }

        while (v78);
        if (v80 == 1)
        {
          *(v77 + 8) = 2;
          if (v79 == 1)
          {
            v83 = 0;
            *(v77 + 8) = 1;
            do
            {
              v84 = *(v77 + 1);
              if (*(v84 + 48 * v83 + 8))
              {
                v85 = 0;
                v86 = 8;
                do
                {
                  if (**(v84 + 48 * v83 + 16) == 2)
                  {
                    *(*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) + v86) = heap_Calloc(*(a1 + 8), 1, 2);
                    v87 = *(*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) + v86);
                    if (!v87)
                    {
                      goto LABEL_208;
                    }

                    *v87 = 42;
                    v77 = *(a12 + 8 * m);
                  }

                  ++v85;
                  v84 = *(v77 + 1);
                  v86 += 32;
                }

                while (v85 < *(v84 + 48 * v83 + 8));
              }

              else
              {
                *(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) = heap_Calloc(*(a1 + 8), 1, 32);
                if (!*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) || (*(*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) + 8) = heap_Calloc(*(a1 + 8), 1, 2), (v88 = *(*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) + 8)) == 0))
                {
                  v109 = 2310021130;
                  v154 = *(a1 + 32);
                  goto LABEL_209;
                }

                *v88 = 42;
                v89 = strlen(*(*(*(a12 + 8 * m) + 8) + 48 * v83));
                *(*(*(*(a12 + 8 * m) + 8) + 48 * v83 + 16) + 16) = heap_Calloc(*(a1 + 8), 1, v89 + 1);
                v90 = *(*(a12 + 8 * m) + 8) + 48 * v83;
                v91 = *(*(v90 + 16) + 16);
                if (!v91)
                {
                  goto LABEL_208;
                }

                strcpy(v91, *v90);
                v77 = *(a12 + 8 * m);
                v92 = *(v77 + 1) + 48 * v83;
                **(v92 + 16) = 0;
                *(v92 + 8) = 1;
              }

              ++v83;
            }

            while (v83 < *v77);
          }
        }
      }
    }
  }

  v93 = a1;
  v24 = crf_mde_dump(a1, "After mlex lookup", a12, v17, a14, a16, a17, a8);
  if ((v24 & 0x80000000) != 0)
  {
    return v24;
  }

  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "get pattern combinations for valid/partial segmentations:", v94, v95, v96, 0);
  if (!v17)
  {
    return crf_mde_dump(v93, "results after mlex/pattern validation", a12, v17, a14, a16, a17, v99);
  }

  v100 = 0;
  v176 = v17;
  while (1)
  {
    v101 = *(v93 + 32);
    if (*(*(a12 + 8 * v100) + 32) <= 1u)
    {
      break;
    }

    log_OutText(v101, "FE_ONEWORD", 5, 0, "skip invalid nbest[%d]", v97, v98, v99, v100);
LABEL_202:
    if (++v100 == v17)
    {
      return crf_mde_dump(v93, "results after mlex/pattern validation", a12, v17, a14, a16, a17, v99);
    }
  }

  log_OutText(v101, "FE_ONEWORD", 5, 0, "doing valid nbest[%d]", v97, v98, v99, v100);
  v102 = *(a12 + 8 * v100);
  v186 = 0;
  v187[0] = 0;
  v185 = 0;
  v184 = -1;
  v103 = *v102;
  if (*v102)
  {
    v104 = (*(v102 + 1) + 8);
    v105 = 1;
    do
    {
      v106 = *v104;
      v104 += 24;
      v105 *= v106;
      --v103;
    }

    while (v103);
  }

  else
  {
    v105 = 1;
  }

  v183 = 0;
  v107 = v105;
  v108 = crf_mde_utils_CRF_MDE_SEGPAT_T_init(a1, v187, v105);
  if ((v108 & 0x80000000) != 0 || (v108 = crf_mde_utils_CRF_MDE_SEGPAT_T_init(a1, &v186, v107), (v108 & 0x80000000) != 0))
  {
LABEL_198:
    v109 = v108;
    goto LABEL_199;
  }

  v184 = -1;
  v109 = (*(a2 + 96))(a3, a4, "fecfg", "mde_addpos", &v185, &v184, &v183);
  v177 = 1;
  if ((v109 & 0x80000000) == 0 && v184)
  {
    v110 = *v185;
    v111 = strchr(*v185, v183);
    if (v111)
    {
      *v111 = 0;
      v110 = *v185;
    }

    v177 = strcmp(v110, "YES") && strcmp(v110, "yes");
  }

  if (!*v102)
  {
LABEL_199:
    crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, v187, v107);
    crf_mde_utils_CRF_MDE_SEGPAT_T_free(a1, &v186, v107);
    if ((v109 & 0x80000000) != 0)
    {
      return v109;
    }

    v93 = a1;
    v153 = *(a12 + 8 * v100);
    if (!*(v153 + 16))
    {
      *(v153 + 32) = 3;
    }

    goto LABEL_202;
  }

  v112 = 0;
  LOWORD(v113) = 0;
  v179 = v186;
  v170 = v187[0] + 64;
  v160 = v187[0];
  v161 = v187[0] + 32;
  v162 = v102;
  do
  {
    v172 = v112;
    v114 = *(v102 + 1) + 48 * v112;
    if (*(v114 + 8))
    {
      v115 = 0;
      v116 = 0;
      v164 = v113;
      v167 = v113;
      do
      {
        if (v113)
        {
          v118 = v167;
          v117 = v170;
          while (1)
          {
            v119 = v179 + 80 * v116;
            v120 = crf_mde_utils_dynstr_add(a1, v119 + 32, *(v117 - 4), 2);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v120 = crf_mde_utils_dynstr_add(a1, v119 + 32, a15, 1);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v121 = *(v114 + 16) + 32 * v115;
            if (*v121 == 2)
            {
              v120 = crf_mde_utils_dynstr_add(a1, v119 + 32, *v114, 1);
              if ((v120 & 0x80000000) != 0)
              {
                goto LABEL_174;
              }

              v122 = a1;
              if (v177)
              {
                goto LABEL_126;
              }

              v120 = crf_mde_utils_dynstr_add(a1, v119 + 32, "_", 1);
              if ((v120 & 0x80000000) != 0)
              {
                goto LABEL_174;
              }

              v123 = *(*(v114 + 16) + 32 * v115 + 8);
              v124 = v119 + 32;
            }

            else
            {
              v123 = *(v121 + 8);
              v124 = v119 + 32;
              v122 = a1;
            }

            v120 = crf_mde_utils_dynstr_add(v122, v124, v123, 1);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

LABEL_126:
            v120 = crf_mde_utils_dynstr_add(v122, v119 + 48, *(v117 - 2), 2);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v120 = crf_mde_utils_dynstr_add(v122, v119 + 48, a15, 1);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v120 = crf_mde_utils_dynstr_add(v122, v119 + 48, *(*(v114 + 16) + 32 * v115 + 8), 1);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v120 = crf_mde_utils_dynstr_add(v122, v119, *(v117 - 8), 2);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v120 = crf_mde_utils_dynstr_add(v122, v119, a15, 1);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v120 = crf_mde_utils_dynstr_add(v122, v119, *(*(v114 + 16) + 32 * v115 + 16), 1);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v120 = crf_mde_utils_dynstr_add(v122, v119 + 64, *v117, 2);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v120 = crf_mde_utils_dynstr_add(v122, v119 + 64, a15, 1);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            v125 = *(*(v114 + 16) + 32 * v115 + 24);
            if (!v125)
            {
              v125 = "*";
            }

            v120 = crf_mde_utils_dynstr_add(a1, v119 + 64, v125, 1);
            if ((v120 & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            ++v116;
            v117 += 10;
            if (!--v118)
            {
              goto LABEL_152;
            }
          }
        }

        v126 = *(v114 + 16) + 32 * v115;
        v127 = v179 + 80 * v116;
        if (*v126 == 2)
        {
          v128 = crf_mde_utils_dynstr_add(a1, v127 + 32, *v114, 2);
          if ((v128 & 0x80000000) != 0 || (v129 = a1, !v177) && ((v128 = crf_mde_utils_dynstr_add(a1, v127 + 32, "_", 1), (v128 & 0x80000000) != 0) || (v128 = crf_mde_utils_dynstr_add(a1, v127 + 32, *(*(v114 + 16) + 32 * v115 + 8), 1), (v128 & 0x80000000) != 0)))
          {
LABEL_175:
            v109 = v128;
            v17 = v176;
            goto LABEL_199;
          }
        }

        else
        {
          v129 = a1;
          v128 = crf_mde_utils_dynstr_add(a1, v127 + 32, *(v126 + 8), 2);
          if ((v128 & 0x80000000) != 0)
          {
            goto LABEL_175;
          }
        }

        v130 = v179 + 80 * v116;
        v120 = crf_mde_utils_dynstr_add(v129, v130 + 48, *(*(v114 + 16) + 32 * v115 + 8), 2);
        if ((v120 & 0x80000000) != 0 || (v120 = crf_mde_utils_dynstr_add(v129, v130, *(*(v114 + 16) + 32 * v115 + 16), 2), (v120 & 0x80000000) != 0))
        {
LABEL_174:
          v109 = v120;
          v17 = v176;
          goto LABEL_199;
        }

        v131 = *(*(v114 + 16) + 32 * v115 + 24);
        if (!v131)
        {
          v131 = "*";
        }

        v132 = crf_mde_utils_dynstr_add(a1, v130 + 64, v131, 2);
        if ((v132 & 0x80000000) != 0)
        {
          v109 = v132;
          v17 = v176;
          goto LABEL_199;
        }

        ++v116;
LABEL_152:
        ++v115;
        LOWORD(v113) = v164;
      }

      while (v115 < *(v114 + 8));
      if (v116)
      {
        v113 = 0;
        v133 = 0;
        v134 = 0;
        v168 = v116;
        v17 = v176;
        while (1)
        {
          v165 = v113;
          v135 = *(v179 + 80 * v134 + 32);
          if (v133)
          {
            v136 = 0;
            v137 = v133;
            v138 = v161;
            v139 = v133;
            do
            {
              v140 = *v138;
              v138 += 10;
              if (!strcmp(v140, v135))
              {
                v136 = 1;
              }

              --v139;
            }

            while (v139);
            v17 = v176;
            if (v136)
            {
              v113 = v165;
              goto LABEL_168;
            }
          }

          else
          {
            v137 = 0;
          }

          v141 = crf_mde_utils_dynstr_add(a1, v160 + 80 * v137 + 32, v135, 2);
          if ((v141 & 0x80000000) != 0 || (v142 = (v179 + 80 * v134), v141 = crf_mde_utils_dynstr_add(a1, v160 + 80 * v165 + 48, v142[6], 2), (v141 & 0x80000000) != 0) || (v141 = crf_mde_utils_dynstr_add(a1, v160 + 80 * v165, *v142, 2), (v141 & 0x80000000) != 0) || (v141 = crf_mde_utils_dynstr_add(a1, v160 + 80 * v165 + 64, v142[8], 2), (v141 & 0x80000000) != 0))
          {
            v109 = v141;
            goto LABEL_199;
          }

          v113 = (v165 + 1);
          v133 = v165 + 1;
LABEL_168:
          ++v134;
          v102 = v162;
          if (v134 == v168)
          {
            goto LABEL_171;
          }
        }
      }

      LOWORD(v113) = 0;
      v17 = v176;
      v102 = v162;
    }

    else
    {
      LOWORD(v113) = 0;
    }

LABEL_171:
    v112 = v172 + 1;
  }

  while (v172 + 1 < *v102);
  if (!v113)
  {
    v109 = 0;
    goto LABEL_199;
  }

  v180 = v113;
  v143 = heap_Calloc(*(a1 + 8), 1, 80 * v113);
  *(v102 + 3) = v143;
  if (!v143)
  {
    goto LABEL_208;
  }

  v144 = v102;
  v145 = 0;
  v109 = 0;
  v144[8] = 0;
  v146 = v161;
  while (1)
  {
    if (a11)
    {
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "   check pattern %s", a6, a7, a8, *v146);
      v184 = -1;
      v109 = (*(a2 + 96))(a3, a4, "mde_segpatterns", *v146, &v185, &v184, &v183);
      if ((v109 & 0x80000000) != 0)
      {
        return v109;
      }
    }

    if (v184)
    {
      v147 = strchr(*v185, v183);
      if (v147)
      {
        *v147 = 0;
        v151 = *v185;
      }

      v159 = *(v146 - 4);
      v157 = *v146;
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     Found Solution %d %s : Valid, PRON=%s POS=%s", v148, v149, v150, v145);
      v152 = crf_mde_utils_dynstr_init(a1, *(v162 + 3) + 80 * v162[8] + 16, 0x20u, 16);
      if ((v152 & 0x80000000) != 0)
      {
        v109 = v152;
        goto LABEL_199;
      }

      v108 = crf_mde_utils_dynstr_add(a1, *(v162 + 3) + 80 * v162[8] + 16, *v185, 2);
      if ((v108 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v108 = crf_mde_utils_dynstr_init(a1, *(v162 + 3) + 80 * v162[8] + 32, 0x20u, 16);
      if ((v108 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v108 = crf_mde_utils_dynstr_add(a1, *(v162 + 3) + 80 * v162[8] + 32, *v146, 2);
      if ((v108 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v108 = crf_mde_utils_dynstr_init(a1, *(v162 + 3) + 80 * v162[8] + 48, 0x20u, 16);
      if ((v108 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v108 = crf_mde_utils_dynstr_add(a1, *(v162 + 3) + 80 * v162[8] + 48, v146[2], 2);
      if ((v108 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v108 = crf_mde_utils_dynstr_init(a1, *(v162 + 3) + 80 * v162[8], 0x20u, 16);
      if ((v108 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v108 = crf_mde_utils_dynstr_add(a1, *(v162 + 3) + 80 * v162[8], *(v146 - 4), 2);
      if ((v108 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v108 = crf_mde_utils_dynstr_init(a1, *(v162 + 3) + 80 * v162[8] + 64, 0x20u, 16);
      if ((v108 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v108 = crf_mde_utils_dynstr_add(a1, *(v162 + 3) + 80 * v162[8] + 64, v146[4], 2);
      if ((v108 & 0x80000000) != 0)
      {
        goto LABEL_198;
      }

      v109 = 0;
      ++v162[8];
    }

    else
    {
      v158 = *v146;
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     pattern [%d] %s : Invalid", a6, a7, a8, v145);
    }

    ++v145;
    v146 += 10;
    if (v180 == v145)
    {
      goto LABEL_199;
    }
  }
}

uint64_t crf_mde_dump(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    return 0;
  }

  v8 = a7;
  v9 = a6;
  log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s:", a6, a7, a8, a2);
  if (!a4)
  {
    return 0;
  }

  v16 = 0;
  v57 = a4;
  v58 = v9;
  v59 = v8;
  while (1)
  {
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "nbest[%d]", v13, v14, v15, v16);
    strcpy(*v9, "MSD: ");
    v20 = *(a3 + 8 * v16);
    v21 = *v20;
    if (*v20)
    {
      v22 = 0;
      v23 = (*(v20 + 1) + 28);
      do
      {
        v24 = *v23;
        v23 += 12;
        if (!v24)
        {
          v22 = 1;
        }

        --v21;
      }

      while (v21);
      if (v22 != 1)
      {
        break;
      }

      result = crf_mde_utils_add2Str(a1, v9, v8, " !! ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v20 = *(a3 + 8 * v16);
      if (*v20)
      {
        break;
      }
    }

LABEL_18:
    log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s", v17, v18, v19, *v9);
    v29 = *(*(a3 + 8 * v16) + 32) - 1;
    if (v29 <= 4)
    {
      log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, off_1E81A4200[v29], v13, v14, v15, 0);
    }

    v30 = *(a3 + 8 * v16);
    if (*v30)
    {
      v31 = 0;
      do
      {
        v32 = *(v30 + 1) + 48 * v31;
        v33 = "   ";
        if (!*(v32 + 28))
        {
          v33 = "!! ";
        }

        v56 = *v32;
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "%s %s", v13, v14, v15, v33);
        v30 = *(a3 + 8 * v16);
        v34 = *(v30 + 1);
        if (*(v34 + 48 * v31 + 8))
        {
          v35 = 0;
          v36 = 0;
          do
          {
            v37 = *(v34 + 48 * v31 + 16) + v35;
            v38 = " ISAffix";
            if (*v37 != 2)
            {
              v38 = "";
            }

            *(v37 + 8);
            *(v37 + 16);
            *(v37 + 24);
            log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "     %s%s%s%s%s%s%s", v13, v14, v15, v38);
            v30 = *(a3 + 8 * v16);
            ++v36;
            v34 = *(v30 + 1);
            v35 += 32;
          }

          while (v36 < *(v34 + 48 * v31 + 8));
        }

        ++v31;
      }

      while (v31 < *v30);
    }

    if (v30[8])
    {
      v39 = 0;
      v40 = 0;
      do
      {
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "    solution[%d]", v13, v14, v15, v40);
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      segpat:%s", v41, v42, v43, *(*(*(a3 + 8 * v16) + 24) + v39 + 32));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      segpatPOS:%s", v44, v45, v46, *(*(*(a3 + 8 * v16) + 24) + v39 + 48));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      wordPOS:%s", v47, v48, v49, *(*(*(a3 + 8 * v16) + 24) + v39 + 16));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      pron:%s", v50, v51, v52, *(*(*(a3 + 8 * v16) + 24) + v39));
        log_OutText(*(a1 + 32), "FE_ONEWORD", 5, 0, "      feat:%s", v53, v54, v55, *(*(*(a3 + 8 * v16) + 24) + v39 + 64));
        ++v40;
        v39 += 80;
      }

      while (v40 < *(*(a3 + 8 * v16) + 16));
    }

    ++v16;
    v9 = v58;
    v8 = v59;
    if (v16 == v57)
    {
      return 0;
    }
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    result = crf_mde_utils_add2Str(a1, v9, v8, *(*(v20 + 1) + v26));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v20 = *(a3 + 8 * v16);
    v28 = *v20;
    if (v27 + 1 < v28)
    {
      result = crf_mde_utils_add2Str(a1, v9, v8, " | ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v20 = *(a3 + 8 * v16);
      v28 = *v20;
    }

    ++v27;
    v26 += 48;
    if (v27 >= v28)
    {
      goto LABEL_18;
    }
  }
}

char *dynamic_strcat(const char **a1, const char *a2, size_t *a3, uint64_t *a4)
{
  v8 = *a1;
  v9 = strlen(*a1);
  v10 = strlen(a2) + v9;
  if (v10 >= *a3)
  {
    v11 = v10 + 128;
    result = heap_Realloc(a4, v8, (v10 + 128));
    if (!result)
    {
      return result;
    }

    v8 = result;
    *a1 = result;
    *a3 = v11;
  }

  return strcat(v8, a2);
}

char *dynamic_strncat(const char **a1, const char *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v10 = *a1;
  v11 = strlen(*a1) + a3;
  if (v11 >= *a4)
  {
    v12 = v11 + 128;
    result = heap_Realloc(a5, v10, (v11 + 128));
    if (!result)
    {
      return result;
    }

    v10 = result;
    *a1 = result;
    *a4 = v12;
  }

  return strncat(v10, a2, a3);
}

uint64_t fe_oneword_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v5 = 2310021130;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  if (!a5)
  {
    return 2310021127;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v67);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(v67 + 8), 1, 2288);
  v17 = v67;
  if (!v12)
  {
    log_OutPublic(*(v67 + 32), "FE_ONEWORD", 34000, 0, v13, v14, v15, v16, v56);
    return v5;
  }

  v18 = v12;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  *v12 = v17;
  v12[1] = a1;
  v19 = heap_Calloc(*(v17 + 8), 1, 1040);
  *(v18 + 48) = v19;
  if (!v19)
  {
LABEL_52:
    v38 = v67;
LABEL_53:
    log_OutPublic(*(v38 + 32), "FE_ONEWORD", 34000, 0, v20, v21, v22, v23, v56);
LABEL_64:
    fe_oneword_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return v5;
  }

  *v19 = a3;
  v19[1] = a4;
  Object = objc_GetObject(*(v67 + 48), "LINGDB", &v66);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  *(v18 + 56) = *(v66 + 8);
  Object = objc_GetObject(*(v67 + 48), "FE_DCTLKP", &v65);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v25 = v65;
  *(v18 + 80) = *(v65 + 8);
  *(v18 + 64) = *(v25 + 16);
  Object = objc_GetObject(*(v67 + 48), "FE_DEPES", &v64);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v26 = v64;
  *(v18 + 104) = *(v64 + 8);
  *(v18 + 88) = *(v26 + 16);
  Object = objc_GetObject(*(v67 + 48), "CLMOBJECT", &v63);
  if ((Object & 0x80000000) != 0 || (v27 = v63, *(v18 + 128) = *(v63 + 8), *(v18 + 112) = *(v27 + 16), Object = objc_GetObject(*(v67 + 48), "PHONMAP", &v62), (Object & 0x80000000) != 0))
  {
LABEL_63:
    v5 = Object;
    goto LABEL_64;
  }

  v28 = v62;
  *(v18 + 152) = *(v62 + 8);
  *(v18 + 136) = *(v28 + 16);
  inited = checkStatCOMP(*(v18 + 64), *(v18 + 72), *(v18 + 80), (v18 + 2000));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkSkipCrosstoken(*(v18 + 64), *(v18 + 72), *(v18 + 80), (v18 + 936));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkFeOneWordCLM(*(v18 + 64), *(v18 + 72), *(v18 + 80), (v18 + 940));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = checkParaDCT(*(v18 + 64), *(v18 + 72), *(v18 + 80), (v18 + 1996));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = oneword_posparser_Open(v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v29 = *(v18 + 2176);
  if (v29)
  {
    heap_Free(*(*v18 + 8), v29);
  }

  *(v18 + 2176) = 0;
  inited = hlp_setKeyword(*v18, *(v18 + 64), *(v18 + 72), *(v18 + 80), "feoneword_latinPOStag", (v18 + 2176));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v30 = *(v18 + 2184);
  if (v30)
  {
    heap_Free(*(*v18 + 8), v30);
  }

  *(v18 + 2184) = 0;
  inited = hlp_setKeyword(*v18, *(v18 + 64), *(v18 + 72), *(v18 + 80), "feoneword_latin2enx", (v18 + 2184));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v18 + 2168) = 0;
  inited = crf_mde_seg_load(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *v18, *(v18 + 8), *(v18 + 64), *(v18 + 72), *(v18 + 80), v18 + 2016, (v18 + 2168));
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v18 + 2192) = 0;
  if (!*(v18 + 2168))
  {
    Object = com_mosynt_UseMosynt(*(v18 + 64), *(v18 + 72), *(v18 + 80), (v18 + 2192));
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_63;
    }

    if (*(v18 + 2192))
    {
      LODWORD(v57) = 1;
      Object = hlp_GetParams(v18, (v18 + 2248), &v57);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = wgram_LoadData(a3, a4, *(v18 + 32), *(v18 + 40), (v18 + 2232));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kbsymtab_LoadData(a3, a4, *(v18 + 32), *(v18 + 40), (v18 + 2200), v57);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = fst_LoadData(a3, a4, (v18 + 2240));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), v18 + 1228, *(v18 + 64), *(v18 + 72), *(v18 + 80), 0, (v18 + 2208));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), v18 + 1228, *(v18 + 64), *(v18 + 72), *(v18 + 80), 1u, (v18 + 2216));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }

      Object = kblex_InitLex(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), v18 + 1228, *(v18 + 64), *(v18 + 72), *(v18 + 80), 2u, (v18 + 2224));
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_63;
      }
    }
  }

  *a5 = v18;
  *(a5 + 8) = 62340;
  Object = (*(*(v18 + 80) + 88))(*(v18 + 64), *(v18 + 72), &v61 + 4, &v61);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v31 = v61 == 1 && HIDWORD(v61) == 1;
  v32 = v31;
  *(v18 + 560) = v32;
  *(v18 + 160) = 0u;
  *(v18 + 176) = 0u;
  *(v18 + 192) = 0u;
  *(v18 + 208) = 0u;
  *(v18 + 224) = 0;
  *(v18 + 232) = 0u;
  *(v18 + 248) = 0u;
  *(v18 + 264) = 0;
  *(v18 + 556) = 1;
  *(v18 + 568) = 0;
  Object = paramc_ParamGet(*(*v18 + 40), "langcode", (v18 + 1208), 0);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v33 = heap_Alloc(*(*v18 + 8), 128);
  *(v18 + 160) = v33;
  if (!v33)
  {
    goto LABEL_66;
  }

  *(v18 + 192) = 128;
  v34 = heap_Alloc(*(*v18 + 8), 128);
  *(v18 + 168) = v34;
  if (!v34)
  {
    goto LABEL_66;
  }

  *(v18 + 200) = 128;
  v35 = heap_Alloc(*(*v18 + 8), 128);
  *(v18 + 176) = v35;
  if (!v35)
  {
    goto LABEL_66;
  }

  *(v18 + 208) = 128;
  v36 = heap_Alloc(*(*v18 + 8), 128);
  *(v18 + 184) = v36;
  if (!v36)
  {
    goto LABEL_66;
  }

  *(v18 + 216) = 128;
  v37 = heap_Alloc(*(*v18 + 8), 128);
  *(v18 + 232) = v37;
  v38 = *v18;
  if (!v37)
  {
    goto LABEL_53;
  }

  v39 = heap_Alloc(*(v38 + 8), 128);
  *(v18 + 240) = v39;
  v38 = *v18;
  if (!v39)
  {
    goto LABEL_53;
  }

  v40 = heap_Alloc(*(v38 + 8), 128);
  *(v18 + 248) = v40;
  v38 = *v18;
  if (!v40)
  {
    goto LABEL_53;
  }

  v41 = heap_Alloc(*(v38 + 8), 128);
  *(v18 + 256) = v41;
  v38 = *v18;
  if (!v41)
  {
    goto LABEL_53;
  }

  v42 = heap_Alloc(*(v38 + 8), 128);
  *(v18 + 264) = v42;
  if (!v42)
  {
LABEL_66:
    v38 = *v18;
    goto LABEL_53;
  }

  strcpy((v18 + 300), "normal");
  Object = oneword_GetMdeSettings(v18);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  Object = hlp_GetPart(v18);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v43 = *(*v18 + 8);
  *&v57 = ssftmap_ElemCopyString;
  *(&v57 + 1) = ssftmap_ElemFreeString;
  v58 = ssftmap_ElemCompareKeysString;
  v59 = stringmap_loc_ElemCopyPtr;
  v60 = stringmap_loc_ElemFreeNoOp;
  Object = ssftmap_ObjOpen(v43, 0, &v57, (v18 + 568));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  *(v18 + 856) = heap_Alloc;
  *(v18 + 864) = heap_Calloc;
  *(v18 + 872) = heap_Realloc;
  *(v18 + 880) = heap_Free;
  v44 = OOCAllocator_Con(v18 + 888, (v18 + 856), *(*v18 + 8));
  v45 = LH_ERROR_to_VERROR(v44);
  v50 = *v18;
  if ((v45 & 0x80000000) != 0)
  {
    v55 = v45;
    log_OutPublic(*(v50 + 32), "FE_ONEWORD", 34004, 0, v46, v47, v48, v49, v56);
    v5 = v55;
    goto LABEL_64;
  }

  v51 = heap_Alloc(*(v50 + 8), 64);
  *(v18 + 2256) = v51;
  if (!v51)
  {
    goto LABEL_52;
  }

  *v51 = 0;
  v52 = heap_Alloc(*(*v18 + 8), 64);
  *(v18 + 2264) = v52;
  if (!v52)
  {
    goto LABEL_52;
  }

  *v52 = 0;
  v53 = heap_Alloc(*(*v18 + 8), 16);
  *(v18 + 2280) = v53;
  if (!v53)
  {
    goto LABEL_52;
  }

  *v53 = 0;
  v5 = hlp_common_ObjOpenReopen(v18);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  return v5;
}

uint64_t checkStatCOMP(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp("yes", v7) || !strcmp("YES", v7))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t checkFeOneWordCLM(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_clm", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp("yes", v7) || !strcmp("YES", v7))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t checkParaDCT(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_parallel", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp("yes", v7) || !strcmp("YES", v7))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t hlp_setKeyword(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  memset(__c, 0, sizeof(__c));
  *a6 = 0;
  v8 = (*(a4 + 96))(a2, a3, "fecfg", a5, &__c[3], &__c[1], __c);
  result = 0;
  if ((v8 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v11 = **&__c[3];
    v12 = strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
      v11 = **&__c[3];
    }

    v13 = strlen(v11);
    v14 = heap_Calloc(*(a1 + 8), 1, v13 + 1);
    *a6 = v14;
    if (v14)
    {
      strcpy(v14, **&__c[3]);
      return 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_ONEWORD", 34000, 0, v15, v16, v17, v18, v19);
      return 2310021130;
    }
  }

  return result;
}

uint64_t hlp_GetParams(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  __s1 = 0;
  CfgParamVal = com_mosynt_GetCfgParamVal(a1[8], a1[9], a1[10], "mosynt_usesubmorphana", "yes", &__s1);
  if ((CfgParamVal & 0x80000000) != 0)
  {
    return CfgParamVal;
  }

  *a2 = strcmp(__s1, "yes") == 0;
  v7 = com_mosynt_GetCfgParamVal(a1[8], a1[9], a1[10], "mosynt_enablegraphsymcache", "yes", &__s1);
  if ((v7 & 0x80000000) == 0)
  {
    *a3 = strcmp(__s1, "yes") == 0;
  }

  return v7;
}

uint64_t hlp_GetPart(uint64_t a1)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "nrpart_g2p", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) == 0 && *&__c[1])
  {
    v3 = **&__c[3];
    v4 = strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
      v3 = **&__c[3];
    }

    *(a1 + 556) = atoi(v3);
  }

  return v2;
}

uint64_t hlp_common_ObjOpenReopen(uint64_t a1)
{
  v28 = -1;
  __s1 = 0;
  v20 = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  DTData = hlp_LoadDTData(a1);
  if ((DTData & 0x80000000) != 0)
  {
    return DTData;
  }

  v27 = 0;
  v21 = 0;
  DTData = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "esctn", &v21, &v28, &v27);
  if ((DTData & 0x80000000) != 0)
  {
    return DTData;
  }

  if (v28)
  {
    v3 = *(a1 + 1216);
    v4 = strlen(*v21) + 1;
    v5 = *(*a1 + 8);
    if (v3)
    {
      v6 = heap_Realloc(v5, v3, v4);
      if (v6)
      {
LABEL_6:
        *(a1 + 1216) = v6;
        strcpy(v6, *v21);
        *(*(a1 + 1216) + strlen(*v21) - 1) = 124;
        goto LABEL_7;
      }
    }

    else
    {
      v6 = heap_Alloc(v5, v4);
      if (v6)
      {
        goto LABEL_6;
      }
    }

    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v7, v8, v9, v10, v19);
    return 2310021130;
  }

LABEL_7:
  *(a1 + 1224) = 1;
  v25 = 0;
  v26 = 0;
  v24 = 7352935;
  v11 = (a1 + 1327);
  v12 = -223;
  while (1)
  {
    LH_itoa(v12 + 256, __s, 0xAu);
    strlen(__s);
    __memcpy_chk();
    v28 = -1;
    v13 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", &v24, &v21, &v28, &v27);
    if ((v13 & 0x80000000) != 0)
    {
      break;
    }

    if (v28)
    {
      *v11 = 0;
      v14 = strlen(*v21);
      strncat(v11, *v21, v14 - 1);
    }

    else
    {
      *(a1 + 1224) = 0;
    }

    if (!__CFADD__(v12++, 1))
    {
      v11 += 3;
      if (*(a1 + 1224))
      {
        continue;
      }
    }

    *(a1 + 2272) = 0;
    if ((com_mosynt_GetCfgParamVal(*(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_enable_POIenhancement", "no", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 2272) = strcmp(__s1, "yes") == 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "enablePOIenhancement", &v20) & 0x80000000) == 0)
    {
      v16 = v20;
      v17 = !strcmp(v20, "yes") || strcmp(v16, "YES") == 0;
      *(a1 + 2272) = v17;
    }

    *(a1 + 2276) = 1;
    if ((com_mosynt_GetCfgParamVal(*(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_MW_replace_spaces_with_underscores", "yes", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 2276) = strcmp(__s1, "yes") == 0;
    }

    return v13;
  }

  return v13;
}

uint64_t fe_oneword_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (a1)
  {
    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[10])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    if (a1[13])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[19])
    {
      objc_ReleaseObject(*(*a1 + 48), "PHONMAP");
    }

    if (a1[16])
    {
      objc_ReleaseObject(*(*a1 + 48), "CLMOBJECT");
    }

    oneword_posparser_Close(a1, v4, v5, v6, v7, v8, v9, v10);
    v11 = a1[272];
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
    }

    a1[272] = 0;
    v12 = a1[273];
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
    }

    a1[273] = 0;
    if (*(a1 + 542) == 1)
    {
      crf_mde_seg_unload(*a1, a1[1], (a1 + 252));
      *(a1 + 542) = 0;
    }

    v13 = a1[20];
    if (v13)
    {
      heap_Free(*(*a1 + 8), v13);
    }

    a1[20] = 0;
    a1[24] = 0;
    v14 = a1[21];
    if (v14)
    {
      heap_Free(*(*a1 + 8), v14);
    }

    a1[21] = 0;
    a1[25] = 0;
    v15 = a1[22];
    if (v15)
    {
      heap_Free(*(*a1 + 8), v15);
    }

    a1[22] = 0;
    a1[26] = 0;
    v16 = a1[23];
    if (v16)
    {
      heap_Free(*(*a1 + 8), v16);
    }

    a1[23] = 0;
    a1[27] = 0;
    v17 = a1[29];
    if (v17)
    {
      heap_Free(*(*a1 + 8), v17);
    }

    a1[29] = 0;
    v18 = a1[30];
    if (v18)
    {
      heap_Free(*(*a1 + 8), v18);
    }

    a1[30] = 0;
    v19 = a1[31];
    if (v19)
    {
      heap_Free(*(*a1 + 8), v19);
    }

    a1[31] = 0;
    v20 = a1[32];
    if (v20)
    {
      heap_Free(*(*a1 + 8), v20);
    }

    a1[32] = 0;
    v21 = a1[33];
    if (v21)
    {
      heap_Free(*(*a1 + 8), v21);
    }

    a1[33] = 0;
    v22 = a1[152];
    if (v22)
    {
      heap_Free(*(*a1 + 8), v22);
    }

    a1[152] = 0;
    if (a1[71])
    {
      hlp_UnLoadDTData(a1);
      ssftmap_ObjClose(a1[71]);
    }

    if (a1[275])
    {
      kbsymtab_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 275);
    }

    if (a1[279])
    {
      wgram_UnloadData(a1[2], a1[3], a1[4], a1[5], a1 + 279);
    }

    if (a1[280])
    {
      fst_UnloadData(a1[2], a1[3], a1 + 280);
    }

    v23 = a1[276];
    if (v23)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v23);
    }

    v24 = a1[277];
    if (v24)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v24);
    }

    v25 = a1[278];
    if (v25)
    {
      kblex_FinishLex(a1[2], a1[3], a1[4], a1[5], v25);
    }

    v26 = a1[6];
    if (v26)
    {
      heap_Free(*(*a1 + 8), v26);
    }

    v27 = a1[282];
    if (v27)
    {
      heap_Free(*(*a1 + 8), v27);
    }

    v28 = a1[283];
    if (v28)
    {
      heap_Free(*(*a1 + 8), v28);
    }

    v29 = a1[285];
    if (v29)
    {
      heap_Free(*(*a1 + 8), v29);
      a1[285] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t hlp_UnLoadDTData(uint64_t *a1)
{
  v23[100] = *MEMORY[0x1E69E9840];
  v22 = 0;
  bzero(v23, 0x320uLL);
  if ((ssftmap_IteratorOpen(a1[71], 0, 1, &v22) & 0x80000000) != 0)
  {
    result = ssftmap_Clear(a1[71]);
    goto LABEL_19;
  }

  v20 = 0;
  v21 = 0;
  if ((ssftmap_IteratorNext(v22, &v21, &v20) & 0x80000000) != 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

  LOBYTE(v2) = 0;
  do
  {
    if (!v2)
    {
      v3 = 0;
LABEL_11:
      LOBYTE(v2) = v2 + 1;
      v23[v3] = v20;
      continue;
    }

    v3 = v2;
    v4 = v23;
    v5 = 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (v5 >= v2)
      {
        break;
      }

      ++v5;
    }

    while (v6 != v20);
    if (v6 != v20)
    {
      goto LABEL_11;
    }
  }

  while ((ssftmap_IteratorNext(v22, &v21, &v20) & 0x80000000) == 0);
  v2 = v2;
LABEL_16:
  ssftmap_IteratorClose(v22);
  result = ssftmap_Clear(a1[71]);
  if (v2)
  {
    v9 = v2;
    v10 = v23;
    do
    {
      v11 = *v10++;
      OOC_PlacementDeleteObject((a1 + 111), *(v11 + 16));
      ssftriff_reader_ReleaseChunkData(*v11, v12, v13, v14, v15, v16, v17, v18);
      result = heap_Free(*(*a1 + 8), v11);
      --v9;
    }

    while (v9);
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_oneword_ObjReopen(uint64_t a1, int a2)
{
  v26 = 0;
  v25 = 0;
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (!a1)
  {
    return result;
  }

  result = (*(*(a1 + 80) + 88))(*(a1 + 64), *(a1 + 72), &v26, &v25);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v4 = v25 == 1 && v26 == 1;
  v5 = v4;
  *(a1 + 560) = v5;
  *(a1 + 556) = 1;
  result = checkStatCOMP(*(a1 + 64), *(a1 + 72), *(a1 + 80), (a1 + 2000));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkSkipCrosstoken(*(a1 + 64), *(a1 + 72), *(a1 + 80), (a1 + 936));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkFeOneWordCLM(*(a1 + 64), *(a1 + 72), *(a1 + 80), (a1 + 940));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = checkParaDCT(*(a1 + 64), *(a1 + 72), *(a1 + 80), (a1 + 1996));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = oneword_posparser_Reopen(a1, v6, v7, v8, v9, v10, v11, v12);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v13 = *(a1 + 2176);
  if (v13)
  {
    heap_Free(*(*a1 + 8), v13);
  }

  *(a1 + 2176) = 0;
  result = hlp_setKeyword(*a1, *(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_latinPOStag", (a1 + 2176));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v14 = *(a1 + 2184);
  if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
  }

  *(a1 + 2184) = 0;
  result = hlp_setKeyword(*a1, *(a1 + 64), *(a1 + 72), *(a1 + 80), "feoneword_latin2enx", (a1 + 2184));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (*(a1 + 2168) == 1)
  {
    crf_mde_seg_unload(*a1, *(a1 + 8), a1 + 2016);
  }

  *(a1 + 2168) = 0;
  result = crf_mde_seg_load(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *a1, *(a1 + 8), *(a1 + 64), *(a1 + 72), *(a1 + 80), a1 + 2016, (a1 + 2168));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v15 = (a1 + 2192);
  v16 = *(a1 + 2192);
  result = com_mosynt_UseMosynt(*(a1 + 64), *(a1 + 72), *(a1 + 80), (a1 + 2192));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v17 = *v15;
  if (v16 != 1)
  {
    if (v17 == 1)
    {
      v24 = 1;
      goto LABEL_57;
    }

    goto LABEL_64;
  }

  if (v17 != 1)
  {
    if (v17)
    {
      goto LABEL_64;
    }

    if (*(a1 + 2200))
    {
      result = kbsymtab_UnloadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2200));
      *(a1 + 2200) = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*(a1 + 2232))
    {
      result = wgram_UnloadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2232));
      *(a1 + 2232) = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*(a1 + 2240))
    {
      result = fst_UnloadData(*(a1 + 16), *(a1 + 24), (a1 + 2240));
      *(a1 + 2240) = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v18 = *(a1 + 2208);
    if (v18)
    {
      kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v18);
      *(a1 + 2208) = 0;
    }

    v19 = *(a1 + 2216);
    if (v19)
    {
      kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v19);
      *(a1 + 2216) = 0;
    }

    v20 = *(a1 + 2224);
    if (v20)
    {
      kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v20);
      *(a1 + 2224) = 0;
    }

    if (*v15 != 1)
    {
LABEL_64:
      strcpy((a1 + 300), "normal");
      result = oneword_GetMdeSettings(a1);
      if ((result & 0x80000000) == 0)
      {
        result = hlp_GetPart(a1);
        if ((result & 0x80000000) == 0)
        {
          hlp_UnLoadDTData(a1);
          return hlp_common_ObjOpenReopen(a1);
        }
      }

      return result;
    }
  }

  v24 = 1;
  if (!*(a1 + 2200) || (result = kbsymtab_UnloadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2200)), *(a1 + 2200) = 0, (result & 0x80000000) == 0))
  {
    if (!*(a1 + 2232) || (result = wgram_UnloadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2232)), *(a1 + 2232) = 0, (result & 0x80000000) == 0))
    {
      if (!*(a1 + 2240) || (result = fst_UnloadData(*(a1 + 16), *(a1 + 24), (a1 + 2240)), *(a1 + 2240) = 0, (result & 0x80000000) == 0))
      {
        v21 = *(a1 + 2208);
        if (v21)
        {
          kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v21);
          *(a1 + 2208) = 0;
        }

        v22 = *(a1 + 2216);
        if (v22)
        {
          kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v22);
          *(a1 + 2216) = 0;
        }

        v23 = *(a1 + 2224);
        if (v23)
        {
          kblex_FinishLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v23);
          *(a1 + 2224) = 0;
        }

LABEL_57:
        result = hlp_GetParams(a1, (a1 + 2248), &v24);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = wgram_LoadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2232));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kbsymtab_LoadData(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), (a1 + 2200), v24);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = fst_LoadData(*(a1 + 16), *(a1 + 24), (a1 + 2240));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a1 + 1228, *(a1 + 64), *(a1 + 72), *(a1 + 80), 0, (a1 + 2208));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a1 + 1228, *(a1 + 64), *(a1 + 72), *(a1 + 80), 1u, (a1 + 2216));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = kblex_InitLex(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), a1 + 1228, *(a1 + 64), *(a1 + 72), *(a1 + 80), 2u, (a1 + 2224));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_64;
      }
    }
  }

  return result;
}

uint64_t fe_oneword_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62340, 2288);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (*(a1 + 2004))
  {

    return oneword_posparser_Start(a1);
  }

  return result;
}

uint64_t fe_oneword_MosyntGetMosyntParamVal(void *a1, uint64_t a2, char *__src, char *__dst, int a5)
{
  v16 = 0;
  v15 = -1;
  v14 = 0;
  v12 = 0;
  strcpy(__dst, __src);
  TermSubstr = (*(a1[10] + 96))(a1[8], a1[9], "fecfg", a2, &v16, &v15, &v14);
  if ((TermSubstr & 0x80000000) == 0)
  {
    if (v15)
    {
      v13 = 0;
      TermSubstr = mosynt_GetTermSubstr(*v16, &v13, v14, &v12, __dst, a5);
      if ((TermSubstr & 0x80000000) == 0 && !v12)
      {
        strcpy(__dst, __src);
      }
    }
  }

  return TermSubstr;
}

const char *hlp_FindWordSep(const char *a1, unsigned int a2, unsigned int a3)
{
  v6 = strlen(a1);
  v7 = a3;
  if (v6 < a3)
  {
    v7 = v6;
  }

  if (v7 <= a2)
  {
    return 0;
  }

  v8 = v7 - a2;
  for (result = &a1[a2]; ; ++result)
  {
    v10 = *result;
    if (v10 == 32 || v10 == 95)
    {
      break;
    }

    if (!--v8)
    {
      return 0;
    }
  }

  return result;
}

uint64_t hlp_ShouldAddAsVariant(const char *a1, char *a2, char *__s2)
{
  result = strcmp(a1, __s2);
  if (result)
  {
    v6 = strstr(a2, __s2);
    if (!v6)
    {
      return 1;
    }

    v7 = v6;
    v8 = a2;
    while (1)
    {
      if (v7 == a2 || *(v7 - 1) != 18)
      {
        v9 = strlen(__s2);
        if (v8[v9])
        {
          v10 = v8[v9] == 18;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          return 0;
        }
      }

      else
      {
        v9 = strlen(__s2);
      }

      v8 = &v7[v9];
      v7 = strstr(&v7[v9], __s2);
      if (!v7)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t fe_oneword_SplitMW(void *a1, uint64_t a2, uint64_t a3)
{
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v73 = 0;
  v6 = (*(a1[7] + 104))(a2, a3, 1, 0, &v89 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v6 = (*(a1[7] + 176))(a2, a3, HIWORD(v89), 0, &v82, &v86 + 2);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v89), &v89);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v89;
    if (v89)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = (*(a1[7] + 168))(a2, a3, v8, 0, 1, &v87 + 4, &v86 + 2);
        if ((v13 & 0x80000000) != 0)
        {
LABEL_119:
          v7 = v13;
LABEL_120:
          if (!v11)
          {
            goto LABEL_122;
          }

          goto LABEL_121;
        }

        if (HIDWORD(v87) == 4)
        {
          if (v11)
          {
            *v11 = 0;
          }

          if (v10)
          {
            *v10 = 0;
          }

          v13 = (*(a1[7] + 176))(a2, a3, v89, 3, &v85, &v86 + 2);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_119;
          }

          PhonWordSep = oneword_FindPhonWordSep(v85, &v78);
          if (PhonWordSep)
          {
            v15 = PhonWordSep;
            v13 = (*(a1[7] + 168))(a2, a3, v89, 1, 1, &v81 + 2, &v86 + 2);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_119;
            }

            v13 = (*(a1[7] + 168))(a2, a3, v89, 2, 1, &v80 + 2, &v86 + 2);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_119;
            }

            v16 = v82;
            v17 = HIWORD(v80);
            WordSep = hlp_FindWordSep(v82, HIWORD(v81), HIWORD(v80));
            if (WordSep)
            {
              break;
            }
          }
        }

LABEL_114:
        v7 = (*(a1[7] + 120))(a2, a3, v89, &v89);
        if ((v7 & 0x80000000) == 0)
        {
          v8 = v89;
          if (v89)
          {
            continue;
          }
        }

        goto LABEL_120;
      }

      __s = 0;
      LOWORD(v80) = v17;
      HIWORD(v80) = WordSep - v16;
      v13 = (*(a1[7] + 160))(a2, a3, v89, 2, 1, &v80 + 2, &v86);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_119;
      }

      v79 = HIWORD(v80) + 1;
      if (((*(a1[7] + 184))(a2, a3, v89, 11, &v73) & 0x80000000) != 0 || v73 != 1 || ((*(a1[7] + 176))(a2, a3, v89, 11, &__s, &v86 + 2) & 0x80000000) != 0)
      {
        v71 = v11;
LABEL_68:
        v42 = v15;
        *v15 = 0;
        v43 = v78;
        WordDctBeforOrAfter = (*(a1[7] + 176))(a2, a3, v89, 5, &v83, &v86 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        v45 = v83;
        v46 = strchr(v83, 92);
        if (v46)
        {
          *v46 = 0;
          v45 = v46 + 1;
        }

        WordDctBeforOrAfter = (*(a1[7] + 176))(a2, a3, v89, 6, &v84, &v86 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        WordDctBeforOrAfter = (*(a1[7] + 176))(a2, a3, v89, 9, &v76, &v86 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        WordDctBeforOrAfter = (*(a1[7] + 176))(a2, a3, v89, 4, &v75, &v86 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        WordDctBeforOrAfter = (*(a1[7] + 168))(a2, a3, v89, 7, 1, &v74 + 2, &v86 + 2);
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        v68 = v9;
        v47 = (*(a1[7] + 184))(a2, a3, v89, 17, &v73) >= 0 && v73 == 1;
        v48 = v47;
        if (v47)
        {
          WordDctBeforOrAfter = (*(a1[7] + 168))(a2, a3, v89, 17, 1, &v74, &v86 + 2);
          if ((WordDctBeforOrAfter & 0x80000000) != 0)
          {
            goto LABEL_125;
          }
        }

        __s1a = v10;
        v77 = 0;
        v49 = (*(a1[7] + 184))(a2, a3, v89, 12, &v73) >= 0 && v73 == 1;
        v50 = v49;
        if (v49)
        {
          v51 = (*(a1[7] + 176))(a2, a3, v89, 12, &v77, &v86 + 2);
          if ((v51 & 0x80000000) != 0)
          {
            goto LABEL_124;
          }
        }

        v52 = v89;
        v88 = v89;
        if (v89)
        {
          v53 = &v74;
          if (!v48)
          {
            v53 = 0;
          }

          __s2a = v53;
          while (1)
          {
            v12 = v52;
            v51 = (*(a1[7] + 168))(a2, a3, v52, 1, 1, &v81, &v86 + 2);
            if ((v51 & 0x80000000) != 0)
            {
              break;
            }

            v51 = (*(a1[7] + 168))(a2, a3, v88, 0, 1, &v87, &v86 + 2);
            if ((v51 & 0x80000000) != 0)
            {
              break;
            }

            if (HIWORD(v80) + 1 < v81 || v81 >= HIWORD(v80) && v87 == 16)
            {
              v56 = v77;
              if (!v50)
              {
                v56 = 0;
              }

              v10 = __s1a;
              WordDctBeforOrAfter = hlp_CreateWordDctBeforOrAfter(a1, a2, a3, 1, v88, &v79, &v80, &v42[v43], __s1a, v45, v84, v76, v75, &v74 + 2, __s2a, v56);
              goto LABEL_112;
            }

            v51 = (*(a1[7] + 120))(a2, a3, v88, &v88);
            if ((v51 & 0x80000000) != 0)
            {
              break;
            }

            v52 = v88;
            if (!v88)
            {
              goto LABEL_104;
            }
          }

LABEL_124:
          v7 = v51;
          v10 = __s1a;
LABEL_126:
          v11 = v71;
          if (!v71)
          {
LABEL_122:
            if (v10)
            {
              heap_Free(*(*a1 + 8), v10);
            }

            return v7;
          }

LABEL_121:
          heap_Free(*(*a1 + 8), v11);
          goto LABEL_122;
        }

LABEL_104:
        v54 = &v74;
        if (!v48)
        {
          v54 = 0;
        }

        v55 = v77;
        if (!v50)
        {
          v55 = 0;
        }

        v10 = __s1a;
        WordDctBeforOrAfter = hlp_CreateWordDctBeforOrAfter(a1, a2, a3, 0, v12, &v79, &v80, &v42[v43], __s1a, v45, v84, v76, v75, &v74 + 2, v54, v55);
LABEL_112:
        if ((WordDctBeforOrAfter & 0x80000000) != 0)
        {
LABEL_125:
          v7 = WordDctBeforOrAfter;
          goto LABEL_126;
        }

        v9 = v68;
        v11 = v71;
        goto LABEL_114;
      }

      v64 = v15;
      if (v11 | v10)
      {
        v22 = __s;
        v23 = strlen(__s) + 1;
        if (v23 <= v9)
        {
          goto LABEL_27;
        }

        v11 = heap_Realloc(*(*a1 + 8), v11, v23);
        v24 = strlen(__s);
        v21 = heap_Realloc(*(*a1 + 8), v10, v24 + 1);
      }

      else
      {
        v19 = strlen(__s);
        v11 = heap_Alloc(*(*a1 + 8), v19 + 1);
        v20 = strlen(__s);
        v21 = heap_Alloc(*(*a1 + 8), v20 + 1);
      }

      v10 = v21;
      v22 = __s;
      v9 = strlen(__s) + 1;
LABEL_27:
      v7 = 2310021130;
      if (!v11 || !v10)
      {
        goto LABEL_120;
      }

      v25 = v85;
      v71 = v11;
      if (v85 && v22 && strlen(v22) + 1 <= v9)
      {
        v90[0] = 0;
        *v11 = 0;
        *v10 = 0;
        v26 = strlen(v25);
        v27 = oneword_CountPhoneticWords(v25, &v25[v26]);
        v28 = oneword_FindPhonWordSep(v25, v90);
        __s1 = v10;
        v67 = v9;
        v63 = v25;
        if (v28)
        {
          v60 = &v28[v90[0]];
        }

        else
        {
          v60 = 0;
          v28 = &v25[strlen(v25)];
        }

        v58 = *v28;
        v59 = v28;
        *v28 = 0;
        v29 = strlen(v22);
        if (v29)
        {
          v30 = v29;
          v32 = v27 == 2 && v60 != 0;
          v61 = v32;
          v62 = v27;
          do
          {
            v33 = strchr(v22, 18);
            if (v33)
            {
              v34 = v33;
            }

            else
            {
              v34 = &v22[v30];
            }

            v35 = oneword_CountPhoneticWords(v22, v34);
            v36 = *v34;
            if (v27 == v35)
            {
              *v34 = 0;
              v37 = oneword_FindPhonWordSep(v22, v90);
              if (v37)
              {
                v38 = v37;
                __s2 = &v37[v90[0]];
              }

              else
              {
                v90[0] = 0;
                __s2 = 0;
                v38 = &v22[strlen(v22)];
              }

              v39 = *v38;
              *v38 = 0;
              v11 = v71;
              if (hlp_ShouldAddAsVariant(v63, v71, v22))
              {
                if (*v71)
                {
                  *&v71[strlen(v71)] = 18;
                }

                strcat(v71, v22);
              }

              *v38 = v39;
              v40 = v90[0];
              if (v38[v90[0]])
              {
                v41 = v61;
                if (!__s2)
                {
                  v41 = 0;
                }

                if (!v41 || hlp_ShouldAddAsVariant(v60, __s1, __s2))
                {
                  if (*__s1)
                  {
                    *&__s1[strlen(__s1)] = 18;
                    v40 = v90[0];
                  }

                  strcat(__s1, &v38[v40]);
                }
              }

              *v34 = v36;
              v27 = v62;
            }

            if (!v36)
            {
              break;
            }

            v22 = v34 + 1;
            v30 = strlen(v34 + 1);
          }

          while (v30);
        }

        *v59 = v58;
        v10 = __s1;
        v9 = v67;
      }

      else
      {
        *v11 = 0;
        *v10 = 0;
      }

      strcpy(__s, v11);
      v15 = v64;
      goto LABEL_68;
    }
  }

  return v7;
}

uint64_t hlp_CreateWordDctBeforOrAfter(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, char *__s, char *a10, char *a11, char *a12, char *a13, uint64_t a14, uint64_t a15, const char *a16)
{
  v31 = 0;
  v22 = 88;
  if (!a4)
  {
    v22 = 80;
  }

  result = (*(*(a1 + 56) + v22))(a2, a3, a5, &v31);
  if ((result & 0x80000000) == 0)
  {
    v32 = 4;
    result = (*(*(a1 + 56) + 160))(a2, a3, v31, 0, 1, &v32, &v31 + 2);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 160))(a2, a3, v31, 1, 1, a6, &v31 + 2);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 160))(a2, a3, v31, 2, 1, a7, &v31 + 2);
        if ((result & 0x80000000) == 0)
        {
          v24 = strlen(a8);
          result = (*(*(a1 + 56) + 160))(a2, a3, v31, 3, (v24 + 1), a8, &v31 + 2);
          if ((result & 0x80000000) == 0)
          {
            if (!__s || (v25 = strlen(__s)) == 0 || (result = (*(*(a1 + 56) + 160))(a2, a3, v31, 11, (v25 + 1), __s, &v31 + 2), (result & 0x80000000) == 0))
            {
              v26 = strlen(a10);
              result = (*(*(a1 + 56) + 160))(a2, a3, v31, 5, (v26 + 1), a10, &v31 + 2);
              if ((result & 0x80000000) == 0)
              {
                v27 = strlen(a11);
                result = (*(*(a1 + 56) + 160))(a2, a3, v31, 6, (v27 + 1), a11, &v31 + 2);
                if ((result & 0x80000000) == 0)
                {
                  v28 = strlen(a12);
                  result = (*(*(a1 + 56) + 160))(a2, a3, v31, 9, (v28 + 1), a12, &v31 + 2);
                  if ((result & 0x80000000) == 0)
                  {
                    v29 = strlen(a13);
                    result = (*(*(a1 + 56) + 160))(a2, a3, v31, 4, (v29 + 1), a13, &v31 + 2);
                    if ((result & 0x80000000) == 0)
                    {
                      result = (*(*(a1 + 56) + 160))(a2, a3, v31, 7, 1, a14, &v31 + 2);
                      if ((result & 0x80000000) == 0)
                      {
                        if (!a15)
                        {
                          if (!a16)
                          {
                            return result;
                          }

                          goto LABEL_19;
                        }

                        result = (*(*(a1 + 56) + 160))(a2, a3, v31, 17, 1, a15, &v31 + 2);
                        if (a16 && (result & 0x80000000) == 0)
                        {
LABEL_19:
                          v30 = strlen(a16);
                          return (*(*(a1 + 56) + 160))(a2, a3, v31, 12, (v30 + 1), a16, &v31 + 2);
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

  return result;
}

uint64_t fe_oneword_MosyntCleanup(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v47 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v32 = 0;
  __s = 0;
  __s1 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  result = paramc_ParamGetStr(*(*v1 + 40), "langcode", &v29);
  if ((result & 0x80000000) == 0)
  {
    result = fe_oneword_MosyntGetMosyntParamVal(v6, "mosynt_defaultpos_stressed", "XN()", __dst, 200);
    if ((result & 0x80000000) == 0)
    {
      result = fe_oneword_MosyntGetMosyntParamVal(v6, "mosynt_defaultpos_unstressed", "XX()", v40, 200);
      if ((result & 0x80000000) == 0)
      {
        result = fe_oneword_MosyntGetMosyntParamVal(v6, "mosynt_usepkupos", "no", v39, 10);
        if ((result & 0x80000000) == 0)
        {
          v8 = *v39 != 7562617;
          result = (*(*(v6 + 56) + 104))(v5, v3, 1, 0, &v38);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(v6 + 56) + 176))(v5, v3, v38, 0, &v26, &v35 + 2);
            if ((result & 0x80000000) == 0)
            {
              result = (*(*(v6 + 56) + 104))(v5, v3, 2, v38, &v37);
              if ((result & 0x80000000) == 0)
              {
                v9 = v37;
                if (v37)
                {
                  v24 = 0;
                  v10 = 0;
                  while (1)
                  {
                    result = (*(*(v6 + 56) + 168))(v5, v3, v9, 0, 1, &v36, &v35 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    v11 = v36;
                    if (v36 == 8)
                    {
                      v36 = 9;
                      result = (*(*(v6 + 56) + 160))(v5, v3, v37, 0, 1, &v36, &v35);
                      if ((result & 0x80000000) != 0)
                      {
                        break;
                      }

                      v11 = v36;
                    }

                    v12 = v11 > 0xA;
                    v13 = (1 << v11) & 0x610;
                    if (v12 || v13 == 0)
                    {
                      v17 = 0;
                      goto LABEL_63;
                    }

                    result = (*(*(v6 + 56) + 176))(v5, v3, v37, 3, &__s, &v35 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = mosynt_SubstAllSubstrOcc(__s, "¡", "~", v46, 5000);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = mosynt_SubstAllSubstrOcc(v46, "[SVOX]", "", __s, 5000);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    v15 = strlen(__s);
                    result = (*(*(v6 + 56) + 160))(v5, v3, v37, 3, (v15 + 1), __s, &v35);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = (*(*(v6 + 56) + 168))(v5, v3, v37, 1, 1, &v28 + 2, &v35 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = (*(*(v6 + 56) + 168))(v5, v3, v37, 2, 1, &v28, &v35 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = (*(*(v6 + 56) + 176))(v5, v3, v37, 5, &v31, &v35 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = (*(*(v6 + 56) + 176))(v5, v3, v37, 6, &v32, &v35 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    if (v36 == 9)
                    {
                      v16 = *v32;
                      if (v16 == 88)
                      {
                        if (v32[1])
                        {
                          goto LABEL_33;
                        }
                      }

                      else
                      {
                        if (v16 != 89 || v32[1])
                        {
LABEL_33:
                          if (HIWORD(v28) < v10 || v28 < v24)
                          {
                            HIWORD(v28) = v10;
                            LOWORD(v28) = v24;
                          }

                          goto LABEL_36;
                        }

                        v10 = HIWORD(v28);
                        v24 = v28;
                      }
                    }

LABEL_36:
                    result = (*(*(v6 + 56) + 176))(v5, v3, v37, 9, &__s1, &v35 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    if (!strcmp(__s1, "normal"))
                    {
                      __strcpy_chk();
                      v18 = strlen(v42);
                      result = (*(*(v6 + 56) + 160))(v5, v3, v37, 9, (v18 + 1), v42, &v35);
                      if ((result & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    result = (*(*(v6 + 56) + 160))(v5, v3, v37, 1, 1, &v28 + 2, &v35 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = (*(*(v6 + 56) + 160))(v5, v3, v37, 2, 1, &v28, &v35 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    v34 = 0;
                    result = mosynt_GetTermSubstr(v32, &v34, 0x21u, &v25, v43, 5000);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = mosynt_GetTermSubstr(v32, &v34, 0x21u, &v25, v45, 5000);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    v17 = *v32 == 89 && v32[1] == 0;
                    v27 = 0;
                    if (!v45[0])
                    {
                      if ((v27 = 1, *v31 == 42) && !v31[1] || (com_mosynt_GetBacktrans2POS(*(v6 + 64), *(v6 + 72), *(v6 + 80), v31, 0x1388u, v45), !v45[0]))
                      {
                        v19 = __s;
                        if (!strchr(__s, 39))
                        {
                          strstr(v19, "'2");
                        }

                        __strcpy_chk();
                      }
                    }

                    if (!v43[0])
                    {
                      strcpy(v43, "*");
                    }

                    if (v45[0] - 48 > 9)
                    {
                      __strcpy_chk();
                    }

                    else
                    {
                      result = mosynt_NumPOSListToPOSList(*(v6 + 48), *(v6 + 2200), v45, v44, 5000);
                      if ((result & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    if (v8)
                    {
                      v20 = strlen(v44);
                      result = (*(*(v6 + 56) + 160))(v5, v3, v37, 5, (v20 + 1), v44, &v35);
                      if ((result & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    v21 = strlen(v43);
                    result = (*(*(v6 + 56) + 160))(v5, v3, v37, 6, (v21 + 1), v43, &v35);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = (*(*(v6 + 56) + 160))(v5, v3, v37, 17, 1, &v27, &v35 + 2);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

LABEL_63:
                    v22 = v37;
                    result = (*(*(v6 + 56) + 120))(v5, v3, v37, &v37);
                    if ((result & 0x80000000) == 0)
                    {
                      if (!v17 || (result = (*(*(v6 + 56) + 192))(v5, v3, v22), (result & 0x80000000) == 0))
                      {
                        v9 = v37;
                        if (v37)
                        {
                          continue;
                        }
                      }
                    }

                    break;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_oneword_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v321 = *MEMORY[0x1E69E9840];
  v301 = 0;
  __s = 0;
  v9 = 2310021130;
  v299 = 0;
  v296 = 0;
  __src = 0;
  v294 = 0;
  v291 = 0;
  v288 = 0;
  v286 = 0;
  v285 = 1601400688;
  *&__c[1] = -1;
  v282 = 0;
  v283 = 0;
  if ((safeh_HandleCheck(a1, a2, 62340, 2288) & 0x80000000) != 0)
  {
    v11 = 2310021128;
    goto LABEL_285;
  }

  v300 = 0;
  v298 = 0;
  v297 = 0;
  v295 = 0;
  v292 = 0;
  v290 = 0;
  v289 = 0;
  v287 = 0;
  *&__c[3] = 0;
  __c[0] = 0;
  v281 = 0;
  *a5 = 1;
  v10 = (paramc_ParamGet(*(*a1 + 40), "clmvariants", &v281, 0) & 0x80000000) == 0 && LH_stricmp(v281, "no") != 0;
  *(a1 + 844) = v10;
  v12 = (paramc_ParamGetStr(*(*a1 + 40), "clcmlextramaintrans", &v281) & 0x80000000) == 0 && LH_stricmp(v281, "no") && *(a1 + 852) != 0;
  *(a1 + 848) = v12;
  __s1[0] = 0;
  LODWORD(v304[0]) = 0;
  if (((*(*(a1 + 128) + 96))(*(a1 + 112), *(a1 + 120), v304) & 0x80000000) != 0 || !LODWORD(v304[0]))
  {
    Str = paramc_ParamGetStr(*(*a1 + 40), "clm", __s1);
    v15 = 1;
    if ((Str & 0x80000000) == 0 && __s1[0])
    {
      v15 = strcmp(__s1[0], "yes") == 0;
    }

    v13 = (!v15 || *(a1 + 1204) != 1) && *(a1 + 940) != 1;
  }

  else
  {
    v13 = 1;
  }

  if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v281) & 0x80000000) == 0 && v281 && *v281)
  {
    v16 = *(a1 + 2256);
    if (v16 && *v16)
    {
      *v16 = 0;
    }

    v17 = *(a1 + 2264);
    if (v17 && *v17)
    {
      *v17 = 0;
    }
  }

  v18 = *(a1 + 1201);
  *(a1 + 1201) = 1;
  if ((paramc_ParamGet(*(*a1 + 40), "numberoutputtranscriptions", &v281, 0) & 0x80000000) == 0 && v281)
  {
    v19 = atoi(v281);
    if (v18 == v19)
    {
      *(a1 + 1201) = v18;
      v20 = *(a1 + 1200);
      if (v20 >= v19)
      {
        LOBYTE(v20) = v18;
      }
    }

    else
    {
      *(a1 + 1201) = v19;
      hlp_UnLoadDTData(a1);
      DTData = hlp_LoadDTData(a1);
      if ((DTData & 0x80000000) != 0)
      {
        goto LABEL_284;
      }

      v20 = *(a1 + 1200);
      if (v20 >= *(a1 + 1201))
      {
        LOBYTE(v20) = *(a1 + 1201);
      }
    }

    *(a1 + 1200) = v20;
  }

  v22 = (paramc_ParamGet(*(*a1 + 40), "norichtranscription", &v281, 0) & 0x80000000) == 0 && LH_stricmp(v281, "false") != 0;
  *(a1 + 840) = v22;
  v23 = paramc_ParamGet(*(*a1 + 40), "fecfg", &v281, 0);
  if (*(a1 + 840) && (v23 & 0x80000000) == 0 && LH_stricmp(v281, "mpthree") && LH_stricmp(v281, "mpthreeml") && LH_stricmp(v281, "vadvde"))
  {
    *(a1 + 840) = 0;
  }

  if (ssftmap_GetSize(*(a1 + 568)))
  {
    __s1[0] = 0;
    v304[0] = 0;
    v303[0] = 0;
    v279 = 0;
    v280 = 0;
    v278 = 0;
    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreescorepruning", __s1) & 0x80000000) != 0)
    {
      __s1[0] = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreehistogrampruning", v304) & 0x80000000) != 0)
    {
      v304[0] = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "decisiontreevariantpruning", v303) & 0x80000000) != 0)
    {
      v303[0] = 0;
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "numberoutputtranscriptions", &v280) & 0x80000000) != 0)
    {
      v280 = 0;
    }

    if ((ssftmap_IteratorOpen(*(a1 + 568), 0, 1, &v278) & 0x80000000) == 0)
    {
      v276 = 0;
      v277 = 0;
      while ((ssftmap_IteratorNext(v278, &v277, &v276) & 0x80000000) == 0)
      {
        if (!__s1[0] || (LODWORD(v279) = 1, HIDWORD(v279) = atoi(__s1[0]), v24 = LexDT_SetParamList(*(v276 + 16), &v279, 1u), v25 = LH_ERROR_to_VERROR(v24), (v25 & 0x80000000) == 0))
        {
          if (!v304[0] || (LODWORD(v279) = 2, HIDWORD(v279) = atoi(v304[0]), v30 = LexDT_SetParamList(*(v276 + 16), &v279, 1u), v25 = LH_ERROR_to_VERROR(v30), (v25 & 0x80000000) == 0))
          {
            if (!v303[0] || (LODWORD(v279) = 5, HIDWORD(v279) = atoi(v303[0]), v31 = LexDT_SetParamList(*(v276 + 16), &v279, 1u), v25 = LH_ERROR_to_VERROR(v31), (v25 & 0x80000000) == 0))
            {
              if (!v280)
              {
                continue;
              }

              LODWORD(v279) = 0;
              HIDWORD(v279) = atoi(v280);
              v32 = LexDT_SetParamList(*(v276 + 16), &v279, 1u);
              v25 = LH_ERROR_to_VERROR(v32);
              if ((v25 & 0x80000000) == 0)
              {
                continue;
              }
            }
          }
        }

        v11 = v25;
        log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0, v26, v27, v28, v29, v253);
        goto LABEL_285;
      }

      ssftmap_IteratorClose(v278);
    }
  }

  if (*(a1 + 2004))
  {
    DTData = oneword_posparser_Process(a1, a3, a4);
    if ((DTData & 0x80000000) != 0)
    {
LABEL_284:
      v11 = DTData;
      goto LABEL_285;
    }
  }

  v33 = a1 + 56;
  v11 = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v300 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_285;
  }

  if (((*(*v33 + 184))(a3, a4, HIWORD(v300), 0, &v288) & 0x80000000) != 0)
  {
    goto LABEL_285;
  }

  if (v288 != 1)
  {
    goto LABEL_285;
  }

  v11 = (*(*v33 + 176))(a3, a4, HIWORD(v300), 0, &__s, &v298);
  if ((v11 & 0x80000000) != 0 || v298 < 2u)
  {
    goto LABEL_285;
  }

  v34 = strlen(__s);
  v35 = heap_Alloc(*(*a1 + 8), (v34 + 1));
  v301 = v35;
  if (!v35)
  {
    log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v36, v37, v38, v39, v253);
    v11 = 2310021130;
    goto LABEL_285;
  }

  strcpy(v35, __s);
  v319 = 0u;
  v320 = 0u;
  v317 = 0u;
  v318 = 0u;
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v307 = 0u;
  v308 = 0u;
  *__s1 = 0u;
  v306 = 0u;
  HIWORD(v296) = 128;
  v40 = (*(*v33 + 176))(a3, a4, HIWORD(v300), 1, &v292, &v291 + 2);
  if ((v40 & 0x80000000) != 0)
  {
    goto LABEL_101;
  }

  HIWORD(v296) = 0;
  v41 = HIWORD(v291);
  if (HIWORD(v291))
  {
    v42 = 0;
    do
    {
      v43 = v292 + 32 * v42;
      if (*v43 == 34)
      {
        v44 = strchr(*(v43 + 24), 20);
        if (v44)
        {
          *v44 = 0;
          v42 = HIWORD(v296);
          v41 = HIWORD(v291);
        }
      }

      HIWORD(v296) = ++v42;
    }

    while (v42 < v41);
    v45 = v292;
    v46 = *(v292 + 12);
    *(a1 + 224) = 0;
    v273 = (a1 + 224);
    if (v291 < v41)
    {
      v47 = (v45 + 32 * v291 + 12);
      v48 = v41 - v291;
      v49 = v291 + 1;
      do
      {
        v50 = *v47;
        v47 += 8;
        if (v50 != v46)
        {
          break;
        }

        LOWORD(v291) = v49++;
        --v48;
      }

      while (v48);
    }
  }

  else
  {
    v46 = *(v292 + 12);
    *(a1 + 224) = 0;
    v273 = (a1 + 224);
  }

  v40 = (*(*(a1 + 104) + 112))(*(a1 + 88), *(a1 + 96), &v289, 0);
  if ((v40 & 0x80000000) != 0 || (*(a1 + 932) = 0, v40 = (*(*(a1 + 56) + 104))(a3, a4, 3, HIWORD(v300), &v300), (v40 & 0x80000000) != 0) || (*&__c[1] = -1, v40 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "normal", &__c[3], &__c[1], __c), (v40 & 0x80000000) != 0))
  {
LABEL_101:
    v59 = 0;
    v60 = 0;
    v9 = v40;
    goto LABEL_102;
  }

  strcpy(v304, "normal");
  if (*&__c[1])
  {
    v51 = strchr(**&__c[3], __c[0]);
    if (v51)
    {
      *v51 = 0;
      v52 = **&__c[3];
    }

    __strcpy_chk();
  }

  if (*(a1 + 560) == 1)
  {
    v53 = heap_Calloc(*(*a1 + 8), 1, 352);
    if (!v53)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v54, v55, v56, v57, v253);
      v59 = 0;
      v60 = 0;
      goto LABEL_102;
    }

    v264 = v46;
    v58 = *(v292 + 12);
    *(v53 + 12) = v58;
    *v53 = 0x4000;
    *(v53 + 44) = v58;
    *(v53 + 32) = 36;
    *(v53 + 56) = "normal";
    v268 = 10;
    v272 = v53;
    v265 = 2;
  }

  else
  {
    v264 = v46;
    v268 = 0;
    v272 = 0;
    v265 = 0;
  }

  v61 = 78;
  v62 = 1;
  while (v300)
  {
    v63 = (*(*v33 + 168))(a3, a4);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v64 = v290;
    if ((v290 - 5) <= 2)
    {
      v63 = (*(*v33 + 168))(a3, a4, v300, 1, 1, &v296, &v298);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v63 = (*(*v33 + 168))(a3, a4, v300, 2, 1, &v295, &v298);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v63 = (*(*v33 + 176))(a3, a4, v300, 4, &v294, &v298);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      if (!strcmp(v294, "phon"))
      {
        v63 = (*(*v33 + 176))(a3, a4, v300, 3, &__src, &v298);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }
      }

      v65 = v290;
      if (v290 == 5)
      {
        v288 = 0;
        v283 = 0;
        if (((*(*v33 + 184))(a3, a4, v300, 6, &v288) & 0x80000000) == 0 && v288 == 1)
        {
          v63 = (*(*v33 + 176))(a3, a4, v300, 6, &v283, &v298);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }

        v65 = v290;
      }

      if (v65 == 6)
      {
        v288 = 0;
        v282 = 0;
        if (((*(*v33 + 184))(a3, a4, v300, 7, &v288) & 0x80000000) == 0 && v288 == 1)
        {
          v63 = (*(*v33 + 176))(a3, a4, v300, 7, &v282, &v298);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }
      }

      v66 = *v33;
      if (v62)
      {
        v63 = (*(v66 + 72))(a3, a4, 2, HIWORD(v300), &v299);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }
      }

      else
      {
        v63 = (*(v66 + 80))(a3, a4, v299, &v299);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }
      }

      v63 = (*(*v33 + 160))(a3, a4, v299, 0, 1, &v290, &v297 + 2);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v63 = (*(*v33 + 160))(a3, a4, v299, 1, 1, &v296, &v297 + 2);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v63 = (*(*v33 + 160))(a3, a4, v299, 2, 1, &v295, &v297 + 2);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v67 = strlen(v294);
      v63 = (*(*v33 + 160))(a3, a4, v299, 4, (v67 + 1), v294, &v297 + 2);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      if (!strcmp(v294, "phon"))
      {
        if (__src)
        {
          v68 = strlen(__src);
          v63 = (*(*v33 + 160))(a3, a4, v299, 3, (v68 + 1), __src, &v297 + 2);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }
      }

      v64 = v290;
      if (v290 == 5 && v283)
      {
        v69 = strlen(v283);
        v63 = (*(*v33 + 160))(a3, a4, v299, 9, (v69 + 1), v283, &v297 + 2);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        v64 = v290;
      }

      v62 = 0;
      if (v64 == 6 && v282)
      {
        v70 = strlen(v282);
        v63 = (*(*v33 + 160))(a3, a4, v299, 19, (v70 + 1), v282, &v297 + 2);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        v62 = 0;
        v64 = v290;
      }
    }

    v71 = v294;
    if (*(a1 + 560) != 1 || v64 != 5 || v294 == 0)
    {
      goto LABEL_172;
    }

    if (!strcmp(v294, "phon") || !strcmp(v71, "prompt") || !strcmp(v71, "internal-nuance-system-norm"))
    {
LABEL_169:
      v78 = 78;
LABEL_170:
      v79 = v268;
      goto LABEL_171;
    }

    v74 = *(a1 + 1216);
    if (!v74)
    {
      v60 = 0;
      v59 = 0;
      v9 = 2310021126;
      goto LABEL_288;
    }

    v75 = strstr(v74, v71);
    if (!strcmp(v71, "latin"))
    {
      goto LABEL_186;
    }

    if (!strcmp(v71, v304))
    {
      goto LABEL_169;
    }

    if (!v75 || (v76 = strlen(v71), v75[v76] != 124))
    {
LABEL_186:
      v78 = 76;
      goto LABEL_170;
    }

    v77 = v76;
    if (!v76)
    {
      goto LABEL_169;
    }

    LODWORD(v78) = 78;
    v79 = v268;
    do
    {
      v80 = *v71++;
      if (v80 == 95)
      {
        v78 = 76;
      }

      else
      {
        v78 = v78;
      }

      --v77;
    }

    while (v77);
LABEL_171:
    if (v61 != v78)
    {
      v82 = v296;
      if (v296)
      {
        if (v265 >= v79)
        {
          v84 = v79;
          v83 = heap_Realloc(*(*a1 + 8), v272, 32 * v79 + 352);
          if (!v83)
          {
LABEL_507:
            v205 = *a1;
LABEL_508:
            log_OutPublic(*(v205 + 32), "FE_ONEWORD", 34000, 0, v85, v86, v87, v88, v253);
            goto LABEL_509;
          }

          v268 = v84 + 10;
          v82 = v296;
        }

        else
        {
          v83 = v272;
        }

        v272 = v83;
        v89 = v83 + 32 * v265;
        *v89 = 36;
        *(v89 + 12) = *(v292 + 12) + v82;
        v90 = "normal";
        if (v78 == 76)
        {
          v90 = "latin";
        }

        *(v89 + 24) = v90;
        ++v265;
      }

      else if (v78 == 76)
      {
        *(v272 + 56) = "latin";
        v78 = 76;
      }

      else
      {
        *(v272 + 56) = "normal";
      }

      goto LABEL_173;
    }

LABEL_172:
    v78 = v61;
LABEL_173:
    v81 = v300;
    v63 = (*(*v33 + 120))(a3, a4, v300, &v300);
    if ((v63 & 0x80000000) == 0)
    {
      v63 = (*(*v33 + 192))(a3, a4, v81);
      v61 = v78;
      if ((v63 & 0x80000000) == 0)
      {
        continue;
      }
    }

    goto LABEL_286;
  }

  if (*(a1 + 560) == 1)
  {
    v91 = *(a1 + 64);
    v92 = *(a1 + 72);
    v93 = v265;
    v94 = a3;
    v95 = a4;
    v96 = v272;
  }

  else
  {
    v96 = v292;
    v93 = HIWORD(v291);
    v91 = *(a1 + 64);
    v92 = *(a1 + 72);
    v94 = a3;
    v95 = a4;
  }

  v63 = (*(*(a1 + 80) + 56))(v91, v92, v94, v95, v96, v93);
  if ((v63 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v63 = (*(*v33 + 104))(a3, a4, 3, HIWORD(v300), &v300);
  if ((v63 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v63 = (*(*v33 + 104))(a3, a4, 2, HIWORD(v300), &v299);
  if ((v63 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v63 = (*(*v33 + 168))(a3, a4, v299, 1, 1, &v295 + 2, &v298);
  if ((v63 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  if (HIWORD(v295))
  {
    v63 = (*(*v33 + 88))(a3, a4, v299, &v299);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v63 = (*(*v33 + 168))(a3, a4, v300, 0, 1, &v290, &v298);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v63 = (*(*v33 + 168))(a3, a4, v300, 1, 1, &v296, &v298);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v63 = (*(*v33 + 168))(a3, a4, v300, 2, 1, &v295, &v298);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v63 = (*(*v33 + 160))(a3, a4, v299, 0, 1, &v290, &v297 + 2);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v63 = (*(*v33 + 160))(a3, a4, v299, 1, 1, &v296, &v297 + 2);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v63 = (*(*v33 + 160))(a3, a4, v299, 2, 1, &v295, &v297 + 2);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v63 = (*(*v33 + 120))(a3, a4, v300, &v300);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }
  }

  LOWORD(v296) = 0;
  while (1)
  {
    v97 = *v33;
    if (!v300)
    {
      break;
    }

    v63 = (*(v97 + 168))(a3, a4);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v63 = (*(*v33 + 168))(a3, a4, v300, 1, 1, &v296, &v298);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v98 = v299;
    v99 = v296;
    v100 = HIWORD(v295);
    if (v296 > HIWORD(v295) && v299 != 0)
    {
      while (1)
      {
        v102 = v98;
        v63 = (*(*v33 + 120))(a3, a4, v98, &v299);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        if (!v299)
        {
          v104 = strlen(__s);
          v100 = v104;
          HIWORD(v295) = v104;
          v99 = v296;
LABEL_223:
          v98 = v102;
          break;
        }

        v63 = (*(*v33 + 168))(a3, a4);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        v100 = HIWORD(v295);
        v98 = v299;
        v99 = v296;
        if (v296 <= HIWORD(v295) || v299 == 0)
        {
          goto LABEL_223;
        }
      }
    }

    if (v99 != v100)
    {
      v299 = v98;
    }

    v63 = (*(*v33 + 168))(a3, a4, v300, 2, 1, &v295, &v298);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v63 = (*(*v33 + 168))(a3, a4, v299, 0, 1, &v289 + 4, &v298);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    if (HIDWORD(v289) == 5 && v296 == HIWORD(v295))
    {
      v63 = (*(*v33 + 88))(a3, a4, v299, &v299);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v63 = (*(*v33 + 160))(a3, a4, v299, 0, 1, &v290, &v297 + 2);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v63 = (*(*v33 + 160))(a3, a4, v299, 1, 1, &v296, &v297 + 2);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v63 = (*(*v33 + 160))(a3, a4, v299, 2, 1, &v295, &v297 + 2);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v63 = (*(*v33 + 120))(a3, a4, v299, &v299);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }
    }

    else
    {
      v63 = (*(*v33 + 80))(a3, a4, v299, &v299);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v63 = (*(*v33 + 160))(a3, a4, v299, 0, 1, &v290, &v297 + 2);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v63 = (*(*v33 + 160))(a3, a4, v299, 1, 1, &v296, &v297 + 2);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      v63 = (*(*v33 + 160))(a3, a4, v299, 2, 1, &v295, &v297 + 2);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }
    }

    v105 = v300;
    v63 = (*(*v33 + 120))(a3, a4, v300, &v300);
    if ((v63 & 0x80000000) == 0)
    {
      v63 = (*(*v33 + 192))(a3, a4, v105);
      if ((v63 & 0x80000000) == 0)
      {
        continue;
      }
    }

    goto LABEL_286;
  }

  v63 = (*(v97 + 104))(a3, a4, 2, HIWORD(v300), &v300);
  if ((v63 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v106 = v300;
  *(a1 + 280) = v300;
  LOWORD(v297) = v106;
  if (v106)
  {
    LOWORD(v107) = 0;
    while (1)
    {
      v63 = (*(*v33 + 168))(a3, a4, v106, 0, 1, &v289 + 4, &v298);
      if ((v63 & 0x80000000) != 0)
      {
        break;
      }

      v108 = *v33;
      v109 = v297;
      if (HIDWORD(v289) != 5)
      {
        goto LABEL_267;
      }

      v63 = (*(v108 + 168))(a3, a4, v297, 1, 1, &v296, &v298);
      if ((v63 & 0x80000000) != 0)
      {
        break;
      }

      v107 = v296 <= v107 ? v107 : v296;
      v63 = (*(*v33 + 168))(a3, a4, v297, 2, 1, &v295, &v298);
      if ((v63 & 0x80000000) != 0)
      {
        break;
      }

      v108 = *v33;
      v109 = v297;
      if (v107 < v295)
      {
        v63 = (*(v108 + 176))(a3, a4, v297, 4, &v294, &v298);
        if ((v63 & 0x80000000) != 0)
        {
          break;
        }

        if (!strcmp(v294, "phon"))
        {
          v63 = (*(*v33 + 176))(a3, a4, v297, 3, &__src, &v298);
          if ((v63 & 0x80000000) != 0)
          {
            break;
          }

          v63 = oneword_ConvertPhon(a1, __s, __src, v296, v295, a3, a4, &v300, v292, &v291, &v291 + 1, v264);
          if ((v63 & 0x80000000) != 0)
          {
            break;
          }
        }

        else
        {
          v288 = 0;
          v111 = (*(*(a1 + 56) + 184))(a3, a4, v297, 9, &v288) >= 0 && v288 == 1;
          v63 = oneword_G2PLookup(a1, &v301, v107, &v295, v294, a3, a4, &v300, v292, &v291, &v291 + 1, v264, v111);
          if (v295 > v107)
          {
            LOWORD(v107) = v295;
          }

          if ((v63 & 0x80000000) != 0)
          {
            break;
          }
        }

        LOWORD(v297) = v300;
      }

      else
      {
LABEL_267:
        v63 = (*(v108 + 120))(a3, a4, v109, &v297);
        if ((v63 & 0x80000000) != 0)
        {
          break;
        }
      }

      if (v300)
      {
        LOWORD(v106) = v297;
        if (v297)
        {
          continue;
        }
      }

      goto LABEL_274;
    }

LABEL_286:
    v60 = 0;
    v59 = 0;
LABEL_287:
    v9 = v63;
    goto LABEL_288;
  }

LABEL_274:
  v112 = *v273;
  if (*v273)
  {
    v113 = HIWORD(v291);
    if (v291 < HIWORD(v291))
    {
      v114 = (v292 + 32 * v291 + 12);
      v115 = HIWORD(v291) - v291;
      do
      {
        *v114 += v112;
        v114 += 8;
        --v115;
      }

      while (v115);
      LOWORD(v291) = v113;
    }

    LOWORD(v303[0]) = 0;
    LOWORD(v280) = 0;
    if (!*(a1 + 280))
    {
      v117 = 0;
      goto LABEL_291;
    }

LABEL_280:
    v116 = (*(*v33 + 168))(a3, a4);
    if ((v116 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    while (1)
    {
      v117 = LOWORD(v303[0]);
LABEL_291:
      if (v117 > strlen(__s) || !*(a1 + 280))
      {
        break;
      }

      v116 = (*(*v33 + 168))(a3, a4);
      if ((v116 & 0x80000000) != 0)
      {
        goto LABEL_283;
      }

      if ((HIDWORD(v289) & 0xFFFFFFFC) == 4 || (HIDWORD(v289) - 9) <= 1)
      {
        v116 = (*(*v33 + 168))(a3, a4, *(a1 + 280), 2, 1, &v280, &v298);
        if ((v116 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        v121 = *v273;
        LOWORD(v303[0]) += *v273;
        LOWORD(v280) = v280 + v121;
        v116 = (*(*v33 + 160))(a3, a4, *(a1 + 280), 1, 1, v303, &v297 + 2);
        if ((v116 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        v116 = (*(*v33 + 160))(a3, a4, *(a1 + 280), 2, 1, &v280, &v297 + 2);
        if ((v116 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }
      }

      v116 = (*(*v33 + 120))(a3, a4, *(a1 + 280), a1 + 280);
      if ((v116 & 0x80000000) != 0)
      {
        goto LABEL_283;
      }

      if (*(a1 + 280))
      {
        v116 = (*(*v33 + 168))(a3, a4);
        if ((v116 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        if (LOWORD(v303[0]) > strlen(__s))
        {
          while (*(a1 + 280))
          {
            v116 = (*(*v33 + 168))(a3, a4);
            if ((v116 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            if (HIDWORD(v289) != 17)
            {
              break;
            }

            v116 = (*(*v33 + 120))(a3, a4, *(a1 + 280), a1 + 280);
            if ((v116 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }
          }

          goto LABEL_280;
        }
      }
    }

    v112 = *v273;
  }

  LODWORD(v289) = v289 + v112;
  v63 = (*(*(a1 + 104) + 104))(*(a1 + 88), *(a1 + 96));
  if ((v63 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v122 = v301;
  *(v292 + 16) = strlen(v301);
  v123 = strlen(v122);
  v63 = (*(*v33 + 160))(a3, a4, HIWORD(v300), 0, (v123 + 1), v122, &v297 + 2);
  if ((v63 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v63 = (*(*v33 + 104))(a3, a4, 2, HIWORD(v300), &v300);
  if ((v63 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v124 = v300;
  if (v300)
  {
    v125 = 0;
    do
    {
      v63 = (*(*v33 + 168))(a3, a4, v124, 0, 1, &v289 + 4, &v298);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      if (HIDWORD(v289) > 3)
      {
        v126 = v300;
      }

      else
      {
        v63 = (*(*v33 + 192))(a3, a4, v300);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        LOWORD(v300) = v125;
        v126 = v125;
      }

      v127 = *v33;
      if (v126)
      {
        v63 = (*(v127 + 120))(a3, a4, v126, &v300);
        v125 = v126;
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }
      }

      else
      {
        v63 = (*(v127 + 104))(a3, a4, 2, HIWORD(v300), &v300);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }
      }

      v124 = v300;
    }

    while (v300);
  }

  LOWORD(v291) = 0;
  v128 = strlen(v301);
  v63 = (*(*v33 + 104))(a3, a4, 2, HIWORD(v300), &v300);
  if ((v63 & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v266 = 0;
  v260 = 0;
  v263 = 0;
  v274 = 0;
  v269 = v128;
  while (2)
  {
    if (!v300)
    {
      if (v263 && v260 && v266)
      {
        v166 = v266;
        v167 = __s1;
        do
        {
          v168 = *v167;
          v167 = (v167 + 2);
          v63 = (*(*v33 + 192))(a3, a4, v168);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }

        while (--v166);
      }

      if (*(a1 + 1200))
      {
        v63 = (*(*v33 + 104))(a3, a4, 2, HIWORD(v300), &v300);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        while (v300)
        {
          v63 = (*(*v33 + 168))(a3, a4);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (HIDWORD(v289) == 9)
          {
            v288 = 0;
            if (((*(*v33 + 184))(a3, a4, v300, 11, &v288) & 0x80000000) != 0)
            {
              v288 = 0;
            }

            else if (v288)
            {
              goto LABEL_505;
            }

            v279 = 0;
            v280 = 0;
            LOWORD(v276) = 0;
            v278 = 0;
            v116 = (*(*v33 + 168))(a3, a4, v300, 1, 1, &v296, &v298);
            if ((v116 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            v116 = (*(*v33 + 168))(a3, a4, v300, 2, 1, &v295, &v298);
            if ((v116 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            v169 = v295;
            v170 = v296;
            v171 = v295 - v296;
            v172 = *(a1 + 160);
            if (v171 >= *(a1 + 192))
            {
              v173 = heap_Realloc(*(*a1 + 8), *(a1 + 160), (v171 + 1));
              if (!v173)
              {
                goto LABEL_507;
              }

              v172 = v173;
              *(a1 + 160) = v173;
              v169 = v295;
              v170 = v296;
              *(a1 + 192) = v295 - v296 + 1;
            }

            strncpy(v172, &v301[v170], v169 - v170);
            *(*(a1 + 160) - v296 + v295) = 0;
            v174 = strlen(*(a1 + 160));
            (*(*(a1 + 80) + 112))(*(a1 + 64), *(a1 + 72), v294, *(a1 + 160), (v174 + 1));
            v116 = (*(*(a1 + 56) + 176))(a3, a4, v300, 3, &__src, &v298);
            if ((v116 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            v116 = (*(*v33 + 176))(a3, a4, v300, 9, &v278, &v298);
            if ((v116 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            **(a1 + 168) = 0;
            if (*(a1 + 1200))
            {
              v271 = 0;
              v267 = 3;
              do
              {
                LH_itoa(++v271, &v277, 0xAu);
                strcpy(v303, "multi_trans_");
                __strcat_chk();
                v175 = strlen(__src);
                v116 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 0, __src, v175);
                if ((v116 & 0x80000000) != 0)
                {
                  goto LABEL_283;
                }

                v116 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v280, &v276);
                if ((v116 & 0x80000000) != 0)
                {
                  goto LABEL_283;
                }

                v280[v276] = 0;
                HIWORD(v296) = 0;
                v179 = v280;
                if (*v280)
                {
                  v180 = 0;
                  v181 = 0;
                  do
                  {
                    v182 = &v179[v181];
                    if (*v182 == 126)
                    {
                      v183 = strlen(v182);
                      memmove((v182 + 1), v182, v183 + 1);
                      *&v280[HIWORD(v296)] = -24126;
                      v180 = HIWORD(v296);
                      v179 = v280;
                    }

                    HIWORD(v296) = ++v180;
                    v181 = v180;
                  }

                  while (strlen(v179) > v180);
                }

                if (*v278)
                {
                  v116 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 2, &v279, &v276);
                  if ((v116 & 0x80000000) != 0)
                  {
                    goto LABEL_283;
                  }

                  *(v279 + v276) = 0;
                  HIWORD(v296) = 0;
                  if (v276)
                  {
                    v184 = 0;
                    do
                    {
                      *(v279 + v184) = *v278;
                      v184 = HIWORD(v296) + 1;
                      HIWORD(v296) = v184;
                    }

                    while (v276 > v184);
                  }
                }

                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L1: %s", v176, v177, v178, v303);
                v254 = *(a1 + 160);
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L2: %s", v185, v186, v187, v303);
                if (*v278)
                {
                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s L3: %s", v188, v189, v190, v303);
                }

                v191 = strlen(*(a1 + 160));
                v116 = (*(*(a1 + 104) + 120))(*(a1 + 88), *(a1 + 96), 1, *(a1 + 160), v191);
                if ((v116 & 0x80000000) != 0)
                {
                  goto LABEL_283;
                }

                v116 = (*(*(a1 + 104) + 80))(*(a1 + 88), *(a1 + 96), v303);
                if ((v116 & 0x80000000) != 0)
                {
                  goto LABEL_283;
                }

                v116 = (*(*(a1 + 104) + 128))(*(a1 + 88), *(a1 + 96), 0, &v280, &v276);
                if ((v116 & 0x80000000) != 0)
                {
                  goto LABEL_283;
                }

                v280[v276] = 0;
                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "%s O1: %s", v192, v193, v194, v303);
                v195 = v280;
                if (*v280)
                {
                  v275 = 0;
                  v196 = 0;
                  do
                  {
                    v197 = &v195[v275];
                    v198 = *v197;
                    if (v198 == 194)
                    {
                      if (v197[1] == 161)
                      {
                        v200 = strlen(v197 + 2);
                        memmove(v197 + 1, v197 + 2, v200 + 1);
                        v280[v275] = 126;
                      }
                    }

                    else if (v198 == 126)
                    {
                      v199 = strlen(v197 + 1);
                      memmove(v197, v197 + 1, v199 + 1);
                    }

                    v275 = ++v196;
                    v195 = v280;
                    v201 = strlen(v280);
                  }

                  while (v201 > v196);
                  v202 = v201;
                }

                else
                {
                  v202 = 0;
                }

                if (strcmp(__src, v195))
                {
                  v267 += v202 + 1;
                  if (*(a1 + 200) < v267)
                  {
                    v203 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v267);
                    if (!v203)
                    {
                      goto LABEL_507;
                    }

                    *(a1 + 168) = v203;
                    *(a1 + 200) = v267;
                    v195 = v280;
                  }

                  v204 = dynamic_strcat((a1 + 168), v195, (a1 + 200), *(*a1 + 8));
                  v205 = *a1;
                  if (!v204)
                  {
                    goto LABEL_508;
                  }

                  if (!dynamic_strcat((a1 + 168), "\x12", (a1 + 200), *(v205 + 8)))
                  {
                    goto LABEL_507;
                  }
                }
              }

              while (v271 < *(a1 + 1200));
            }

            v206 = *(a1 + 168);
            if (*v206)
            {
              v206[strlen(*(a1 + 168)) - 1] = 0;
              v207 = strlen(*(a1 + 168));
              v116 = (*(*v33 + 160))(a3, a4, v300, 11, (v207 + 1), *(a1 + 168), &v297 + 2);
              if ((v116 & 0x80000000) != 0)
              {
                goto LABEL_283;
              }
            }
          }

LABEL_505:
          v63 = (*(*v33 + 120))(a3, a4, v300, &v300);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }
      }

      if (*(a1 + 1204) && *(a1 + 848) && *(a1 + 1201) >= 2u)
      {
        v63 = (*(*v33 + 104))(a3, a4, 2, HIWORD(v300), &v300);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        v208 = 0;
        v209 = 0;
        v210 = 0;
        v211 = 0;
        while (v300)
        {
          v63 = (*(*v33 + 168))(a3, a4);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (HIDWORD(v289) == 9 || HIDWORD(v289) == 4)
          {
            v303[0] = 0;
            v116 = (*(*v33 + 168))(a3, a4, v300, 1, 1, &v296, &v298);
            if ((v116 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            v116 = (*(*v33 + 168))(a3, a4, v300, 2, 1, &v295, &v298);
            if ((v116 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            v116 = (*(*v33 + 176))(a3, a4, v300, 9, v303, &v298);
            if ((v116 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            if (v296 != v209)
            {
              if (!v211)
              {
                if (v209 | v210)
                {
                  v116 = hlp_GenXtraMainVarMW(a1, a3, a4, v208, v209, v210, v301);
                  if ((v116 & 0x80000000) != 0)
                  {
                    goto LABEL_283;
                  }
                }
              }

              v211 = 0;
            }

            if (!LH_stricmp(v303[0], *(a1 + 1208)) || !*v303[0] || !strcmp(v303[0], "normal"))
            {
              v211 = 1;
            }

            v209 = v296;
            v210 = v295;
          }

          v208 = v300;
          v63 = (*(*v33 + 120))(a3, a4, v300, &v300);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }

        if (!v211)
        {
          if (v209 | v210)
          {
            v63 = hlp_GenXtraMainVarMW(a1, a3, a4, v208, v209, v210, v301);
            if ((v63 & 0x80000000) != 0)
            {
              goto LABEL_286;
            }
          }
        }
      }

      v213 = *(a1 + 2184);
      if (v213 && strlen(*(a1 + 2184)) == 3 && *v213 == 101 && v213[1] == 110)
      {
        v63 = (*(*v33 + 104))(a3, a4, 2, HIWORD(v300), &v300);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        while (v300)
        {
          v63 = (*(*v33 + 168))(a3, a4);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          if (HIDWORD(v289) <= 0xA && ((1 << SBYTE4(v289)) & 0x610) != 0)
          {
            v303[0] = 0;
            v116 = (*(*v33 + 176))(a3, a4, v300, 9, v303, &v298);
            if ((v116 & 0x80000000) != 0)
            {
              goto LABEL_283;
            }

            if (!strcmp(v303[0], "latin"))
            {
              v215 = strlen(*(a1 + 2184));
              v116 = (*(*(a1 + 56) + 160))(a3, a4, v300, 9, (v215 + 1), *(a1 + 2184), &v297 + 2);
              if ((v116 & 0x80000000) != 0)
              {
                goto LABEL_283;
              }
            }
          }

          v63 = (*(*v33 + 120))(a3, a4, v300, &v300);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }
        }
      }

      if (!v13)
      {
        v63 = (*(*v33 + 104))(a3, a4, 2, HIWORD(v300), &v300);
        if ((v63 & 0x80000000) == 0)
        {
          v60 = 0;
          v59 = 0;
          while (1)
          {
            if (!v300)
            {
              goto LABEL_558;
            }

            v63 = (*(*v33 + 168))(a3, a4);
            if ((v63 & 0x80000000) != 0)
            {
              goto LABEL_287;
            }

            if (HIDWORD(v289) <= 0xA && ((1 << SBYTE4(v289)) & 0x610) != 0)
            {
              v303[0] = 0;
              v63 = (*(*v33 + 176))(a3, a4, v300, 3, &__src, &v298);
              if ((v63 & 0x80000000) != 0)
              {
                goto LABEL_287;
              }

              v63 = (*(*v33 + 176))(a3, a4, v300, 9, v303, &v298);
              if ((v63 & 0x80000000) != 0)
              {
                goto LABEL_287;
              }

              v288 = 0;
              v63 = (*(*v33 + 184))(a3, a4, v300, 12, &v288);
              if ((v63 & 0x80000000) != 0)
              {
                goto LABEL_287;
              }

              if (v288 != 1)
              {
                if (v303[0] && ((v217 = strlen(v303[0]), v217 == 3) || !v217))
                {
                  v63 = (*(*v33 + 160))(a3, a4, v300, 12, (v217 + 1), v303[0], &v297 + 2);
                }

                else
                {
                  v218 = strlen(*(a1 + 1208));
                  v63 = (*(*(a1 + 56) + 160))(a3, a4, v300, 12, (v218 + 1), *(a1 + 1208), &v297 + 2);
                }

                if ((v63 & 0x80000000) != 0)
                {
                  goto LABEL_287;
                }
              }

              if (LH_stricmp(v303[0], *(a1 + 1208)))
              {
                v219 = v303[0];
                if (*v303[0])
                {
                  if (strcmp(v303[0], "normal"))
                  {
                    if (strcmp(v219, "latin"))
                    {
                      v220 = hlp_checkDoClmForForeignLanguage(a1, v219);
                      if (v220 || *(a1 + 844))
                      {
                        v221 = strlen(__src);
                        v222 = 0;
                        LOWORD(v279) = v300;
                        v223 = v303[0];
                        do
                        {
                          v224 = v223[v222];
                          if (v224 > 0x60)
                          {
                            LOBYTE(v224) = v224 - 32;
                          }

                          *(&v280 + v222++) = v224;
                        }

                        while (v222 != 3);
                        v225 = (4 * v221 + 4);
                        BYTE3(v280) = 0;
                        v226 = heap_Realloc(*(*a1 + 8), v60, v225);
                        v60 = v226;
                        if (!v226)
                        {
LABEL_633:
                          log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v227, v228, v229, v230, v253);
                          goto LABEL_634;
                        }

                        *v226 = 0;
                        if (!v220 && *(a1 + 844))
                        {
                          LOWORD(v278) = 1;
                          v231 = (*(*v33 + 80))(a3, a4, v300, &v279);
                          if ((v231 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v231 = (*(*v33 + 168))(a3, a4, v300, 1, 1, &v296, &v298);
                          if ((v231 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v231 = (*(*v33 + 168))(a3, a4, v300, 2, 1, &v295, &v298);
                          if ((v231 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          HIDWORD(v289) = 16;
                          v231 = (*(*v33 + 160))(a3, a4, v279, 0, 1, &v289 + 4, &v297 + 2);
                          if ((v231 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v231 = (*(*v33 + 160))(a3, a4, v279, 1, 1, &v296, &v297 + 2);
                          if ((v231 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v231 = (*(*v33 + 160))(a3, a4, v279, 2, 1, &v295, &v297 + 2);
                          if ((v231 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v231 = (*(*v33 + 160))(a3, a4, v279, 5, 1, "*", &v297 + 2);
                          if ((v231 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v231 = (*(*v33 + 160))(a3, a4, v279, 6, 1, "*", &v297 + 2);
                          if ((v231 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v231 = (*(*v33 + 160))(a3, a4, v279, 7, 1, &v278, &v297 + 2);
                          if ((v231 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          v63 = (*(*v33 + 160))(a3, a4, v279, 12, 4, "map", &v297 + 2);
                          if ((v63 & 0x80000000) != 0)
                          {
                            goto LABEL_287;
                          }
                        }

                        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon before %s CLM %s", v228, v229, v230, &v280);
                        if (((*(*(a1 + 128) + 64))(*(a1 + 112), *(a1 + 120), &v280, __src, v60, 0, 0, v225) & 0x80000000) != 0 && *(a1 + 940))
                        {
                          log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "CLM failed for %s", v232, v233, v234, __src);
                        }

                        else
                        {
                          v231 = (*(*v33 + 160))(a3, a4, v279, 9, 1, "", &v297 + 2);
                          if ((v231 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }
                        }

                        log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon after %s CLM %s", v235, v236, v237, &v280);
                        v238 = strlen(v60);
                        v231 = (*(*(a1 + 56) + 160))(a3, a4, v279, 3, (v238 + 1), v60, &v297 + 2);
                        if ((v231 & 0x80000000) != 0)
                        {
LABEL_632:
                          v9 = v231;
LABEL_634:
                          v63 = v9;
                          goto LABEL_287;
                        }

                        v288 = 0;
                        if (((*(*v33 + 184))(a3, a4, v300, 11, &v288) & 0x80000000) == 0 && v288 == 1)
                        {
                          v231 = (*(*v33 + 176))(a3, a4, v300, 11, &__src, &v298);
                          if ((v231 & 0x80000000) != 0)
                          {
                            goto LABEL_632;
                          }

                          if (*__src)
                          {
                            v239 = strlen(__src);
                            v240 = heap_Realloc(*(*a1 + 8), v59, (4 * v239 + 4));
                            v59 = v240;
                            if (!v240)
                            {
                              goto LABEL_633;
                            }

                            *v240 = 0;
                            v241 = __src;
                            if (__src)
                            {
                              while (1)
                              {
                                v242 = strchr(v241, 18);
                                v246 = v242;
                                if (v242)
                                {
                                  *v242 = 0;
                                }

                                if (*v59)
                                {
                                  *&v59[strlen(v59)] = 18;
                                }

                                *v60 = 95;
                                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon before %s CLM %s", v243, v244, v245, &v280);
                                v247 = __src;
                                v248 = strlen(__src);
                                if (4 * v248 + 4 > v225)
                                {
                                  v225 = (4 * v248 + 4);
                                  v60 = heap_Realloc(*(*a1 + 8), v60, v225);
                                  if (!v60)
                                  {
                                    goto LABEL_633;
                                  }

                                  v247 = __src;
                                }

                                if (((*(*(a1 + 128) + 64))(*(a1 + 112), *(a1 + 120), &v280, v247, v60, 0, 0, v225) & 0x80000000) != 0)
                                {
                                  log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "CLM failed for %s", v249, v250, v251, __src);
                                }

                                log_OutText(*(*a1 + 32), "FE_ONEWORD", 5, 0, "Phon after %s CLM %s", v249, v250, v251, &v280);
                                strcat(v59, v60);
                                if (!v246)
                                {
                                  break;
                                }

                                *v246 = 18;
                                v241 = v246 + 1;
                                __src = v241;
                              }

                              __src = 0;
                            }

                            v252 = strlen(v59);
                            v63 = (*(*v33 + 160))(a3, a4, v279, 11, (v252 + 1), v59, &v297 + 2);
                            if ((v63 & 0x80000000) != 0)
                            {
                              goto LABEL_287;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v63 = (*(*v33 + 120))(a3, a4, v300, &v300);
            if ((v63 & 0x80000000) != 0)
            {
              goto LABEL_287;
            }
          }
        }

        goto LABEL_286;
      }

      v60 = 0;
      v59 = 0;
LABEL_558:
      v63 = fe_oneword_SplitMW(a1, a3, a4);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_287;
      }

      if (*(a1 + 2192))
      {
        v63 = fe_oneword_MosyntCleanup(a1);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_287;
        }
      }

      DTData = fe_oneword_TreatNLUMarkup(a1, a3, a4);
      if ((DTData & 0x80000000) == 0)
      {
        v9 = fe_oneword_ProcessPinyinMarkup(a1, a3, a4);
        v11 = v9;
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_288;
        }

        goto LABEL_285;
      }

      goto LABEL_284;
    }

    v63 = (*(*v33 + 168))(a3, a4);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v63 = (*(*v33 + 168))(a3, a4, v300, 1, 1, &v296, &v298);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v63 = (*(*v33 + 168))(a3, a4, v300, 2, 1, &v295, &v298);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_286;
    }

    v129 = HIDWORD(v289);
    switch(HIDWORD(v289))
    {
      case 4:
LABEL_335:
        v303[0] = 0;
        v288 = 0;
        if (((*(*v33 + 184))(a3, a4, v300, 11, &v288) & 0x80000000) == 0 && v288 == 1)
        {
          v63 = (*(*v33 + 176))(a3, a4, v300, 11, v303, &v298);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          v130 = v303[0];
          v131 = strstr(v303[0], "\x12;_");
          if (v131)
          {
            *v131 = 0;
            v130 = v303[0];
          }

          v132 = strstr(v130, ";_");
          if (v132)
          {
            *v132 = 0;
          }
        }

LABEL_342:
        v261 = v296;
        if (v296 == v269)
        {
          v263 = 1;
          v261 = v269;
          v270 = v266;
        }

        else
        {
          v270 = 0;
          if (v263 && v260)
          {
            v260 = 0;
            v263 = 0;
            v274 = 0;
            if (v266)
            {
              v133 = v266;
              v134 = __s1;
              while (1)
              {
                v135 = *v134;
                v134 = (v134 + 2);
                v63 = (*(*v33 + 192))(a3, a4, v135);
                if ((v63 & 0x80000000) != 0)
                {
                  goto LABEL_286;
                }

                if (!--v133)
                {
                  v270 = 0;
                  v263 = 0;
                  v274 = 0;
                  v260 = 0;
                  v261 = v296;
                  break;
                }
              }
            }
          }

          else
          {
            v260 = 0;
            v263 = 0;
            v274 = 0;
          }
        }

        for (i = v291; HIWORD(v291) > i; LOWORD(v291) = i)
        {
          v137 = (v292 + 32 * i);
          if ((v137[3] - v264) >= (v296 + 1))
          {
            break;
          }

          if (*v137 == 14)
          {
            v140 = v137[6];
            if (v140 != 64)
            {
              v286 = v140;
              *&__c[1] = -1;
              v63 = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", &v285, &__c[3], &__c[1], __c);
              if ((v63 & 0x80000000) != 0)
              {
                goto LABEL_286;
              }

              if (*&__c[1])
              {
                v141 = ***&__c[3];
              }

              else
              {
                v141 = v286;
              }

              v274 = v141;
            }
          }

          else if (*v137 == 37)
          {
            v138 = *(v137 + 3);
            v139 = strlen(v138);
            v63 = (*(*v33 + 160))(a3, a4, v300, 10, (v139 + 1), v138, &v297 + 2);
            if ((v63 & 0x80000000) != 0)
            {
              goto LABEL_286;
            }
          }

          i = v291 + 1;
        }

        if (v274)
        {
          v63 = (*(*v33 + 176))(a3, a4, v300, 5, &v287, &v298);
          if ((v63 & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          v142 = v287;
          if (strchr(v287, v274))
          {
            v260 = 1;
          }

          else
          {
            *(__s1 + v270) = v300;
            v270 = (v270 + 1);
          }

          *v142 = v274;
          v287[1] = 0;
        }

        v266 = v270;
        if (((*(*v33 + 184))(a3, a4, v300, 21, &v288) & 0x80000000) != 0)
        {
          v288 = 0;
        }

        else if (v288)
        {
LABEL_376:
          v129 = HIDWORD(v289);
          v269 = v261;
          break;
        }

        v63 = (*(*v33 + 160))(a3, a4, v300, 21, 6, "OTHER", &v297 + 2);
        if ((v63 & 0x80000000) != 0)
        {
          goto LABEL_286;
        }

        goto LABEL_376;
      case 0xA:
        goto LABEL_342;
      case 9:
        goto LABEL_335;
    }

    if (v129 != 9)
    {
      goto LABEL_443;
    }

    v303[0] = 0;
    LOWORD(v279) = 0;
    v280 = 0;
    LOWORD(v278) = 0;
    LOWORD(v277) = 0;
    v116 = (*(*v33 + 176))(a3, a4, v300, 3, &__src, &v298);
    if ((v116 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    if (!strchr(__src, 32))
    {
LABEL_443:
      v63 = (*(*v33 + 120))(a3, a4, v300, &v300);
      if ((v63 & 0x80000000) != 0)
      {
        goto LABEL_286;
      }

      continue;
    }

    break;
  }

  v116 = (*(*v33 + 168))(a3, a4, v300, 2, 1, &v295, &v298);
  if ((v116 & 0x80000000) != 0)
  {
    goto LABEL_283;
  }

  v116 = (*(*v33 + 168))(a3, a4, v300, 7, 1, &v279, &v298);
  if ((v116 & 0x80000000) != 0)
  {
    goto LABEL_283;
  }

  v116 = (*(*v33 + 176))(a3, a4, v300, 9, &v280, &v298);
  if ((v116 & 0x80000000) != 0)
  {
    goto LABEL_283;
  }

  v288 = 0;
  if (((*(*v33 + 184))(a3, a4, v300, 8, &v288) & 0x80000000) == 0 && v288 == 1)
  {
    v116 = (*(*v33 + 168))(a3, a4, v300, 8, 1, &v278, &v298);
    if ((v116 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }
  }

  v116 = (*(*v33 + 176))(a3, a4, v300, 5, &v287, &v298);
  if ((v116 & 0x80000000) != 0)
  {
    goto LABEL_283;
  }

  v116 = (*(*v33 + 176))(a3, a4, v300, 6, v303, &v298);
  if ((v116 & 0x80000000) != 0)
  {
    goto LABEL_283;
  }

  v143 = strlen(__src);
  if (v143 - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v144 = heap_Realloc(*(*a1 + 8), *(a1 + 240), (v143 + 1));
    if (!v144)
    {
      goto LABEL_507;
    }

    *(a1 + 240) = v144;
  }

  v145 = strlen(v287);
  if (v145 - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v146 = heap_Realloc(*(*a1 + 8), *(a1 + 248), (v145 + 1));
    if (!v146)
    {
      goto LABEL_507;
    }

    *(a1 + 248) = v146;
  }

  v147 = strlen(v303[0]);
  if (v147 - 128 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v148 = heap_Realloc(*(*a1 + 8), *(a1 + 256), (v147 + 1));
    if (!v148)
    {
      goto LABEL_507;
    }

    *(a1 + 256) = v148;
  }

  strcpy(*(a1 + 240), __src);
  strcpy(*(a1 + 248), v287);
  strcpy(*(a1 + 256), v303[0]);
  v149 = *(a1 + 248);
  v150 = *(a1 + 256);
  v255 = *(a1 + 240);
  v151 = strchr(v255, 32);
  v262 = v149;
  v258 = strchr(v149, 32);
  v259 = v150;
  v256 = v151;
  v257 = strchr(v150, 32);
  HIWORD(v296) = v296;
  if (!v151)
  {
LABEL_438:
    v116 = (*(*v33 + 160))(a3, a4, v300, 2, 1, &v295, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    v163 = strlen(v255);
    v116 = (*(*v33 + 160))(a3, a4, v300, 3, (v163 + 1), v255, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    v164 = strlen(v262);
    v116 = (*(*v33 + 160))(a3, a4, v300, 5, (v164 + 1), v262, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    v165 = strlen(v259);
    v116 = (*(*v33 + 160))(a3, a4, v300, 6, (v165 + 1), v259, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    LOWORD(v277) = 0;
    v116 = (*(*v33 + 160))(a3, a4, v300, 8, 1, &v278, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      goto LABEL_283;
    }

    goto LABEL_443;
  }

  while (1)
  {
    for (j = HIWORD(v296); ; HIWORD(v296) = ++j)
    {
      v153 = v301[j];
      v154 = v153 > 0x20 || ((1 << v153) & 0x100002601) == 0;
      if (!v154 || v153 == 95)
      {
        break;
      }
    }

    v116 = (*(*v33 + 160))(a3, a4, v300, 2, 1, &v296 + 2, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      break;
    }

    ++HIWORD(v296);
    *v256 = 0;
    v155 = strlen(v255);
    v116 = (*(*v33 + 160))(a3, a4, v300, 3, (v155 + 1), v255, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      break;
    }

    if (v258)
    {
      *v258 = 0;
    }

    v156 = strlen(v262);
    v116 = (*(*v33 + 160))(a3, a4, v300, 5, (v156 + 1), v262, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      break;
    }

    v157 = v262;
    if (v258)
    {
      v157 = v258 + 1;
    }

    v262 = v157;
    if (v257)
    {
      *v257 = 0;
    }

    v158 = strlen(v259);
    v116 = (*(*v33 + 160))(a3, a4, v300, 6, (v158 + 1), v259, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      break;
    }

    v159 = v259;
    if (v257)
    {
      v159 = v257 + 1;
    }

    v259 = v159;
    LOWORD(v277) = 0;
    v116 = (*(*v33 + 160))(a3, a4, v300, 8, 1, &v277, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      break;
    }

    v160 = v300;
    if (v300 && HIWORD(v296) > v296)
    {
      while (1)
      {
        v161 = v160;
        v116 = (*(*v33 + 120))(a3, a4, v160, &v300);
        if ((v116 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        if (!v300)
        {
          goto LABEL_428;
        }

        v116 = (*(*v33 + 168))(a3, a4);
        if ((v116 & 0x80000000) != 0)
        {
          goto LABEL_283;
        }

        v160 = v300;
        if (!v300 || HIWORD(v296) <= v296)
        {
          goto LABEL_428;
        }
      }
    }

    v161 = v300;
LABEL_428:
    v116 = (*(*v33 + 80))(a3, a4, v161, &v300);
    if ((v116 & 0x80000000) != 0)
    {
      break;
    }

    v116 = (*(*v33 + 160))(a3, a4, v300, 1, 1, &v296 + 2, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      break;
    }

    v116 = (*(*v33 + 160))(a3, a4, v300, 0, 1, &v289 + 4, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      break;
    }

    v116 = (*(*v33 + 160))(a3, a4, v300, 7, 1, &v279, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      break;
    }

    v162 = strlen(v280);
    v116 = (*(*v33 + 160))(a3, a4, v300, 9, (v162 + 1), v280, &v297 + 2);
    if ((v116 & 0x80000000) != 0)
    {
      break;
    }

    v255 = v256 + 1;
    v256 = strchr(v256 + 1, 32);
    if (v262)
    {
      v258 = strchr(v262, 32);
    }

    if (v259)
    {
      v257 = strchr(v259, 32);
    }

    if (!v256)
    {
      goto LABEL_438;
    }
  }

LABEL_283:
  v9 = v116;
LABEL_509:
  v60 = 0;
  v59 = 0;
LABEL_288:
  if (v272)
  {
    heap_Free(*(*a1 + 8), v272);
  }

LABEL_102:
  if (v301)
  {
    heap_Free(*(*a1 + 8), v301);
  }

  if (v60)
  {
    heap_Free(*(*a1 + 8), v60);
  }

  if (v59)
  {
    heap_Free(*(*a1 + 8), v59);
  }

  v11 = v9;
LABEL_285:
  v118 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t hlp_LoadDTData(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  memset(v70, 0, sizeof(v70));
  memset(v69, 0, sizeof(v69));
  *&__c[3] = 0;
  v67 = 0;
  __c[0] = 0;
  v64 = 0;
  *v65 = 0;
  __s = 0;
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "dtlhp2lhtts", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  *(a1 + 576) = *&__c[1] != 0;
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "dtcharsetutf8", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  if (*&__c[1])
  {
    v3 = **&__c[3];
    __strcpy_chk();
  }

  else
  {
    *(a1 + 584) = 0;
  }

  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "phonlhp2lhtts", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  *(a1 + 580) = *&__c[1] == 0;
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "extramaintrans", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  *(a1 + 852) = *&__c[1] || strstr("eng,ena,enu,dun,frc,frf,ged,iti,ptb,ptp,sws,spe,spm", *(a1 + 1208));
  *(a1 + 1204) = (paramc_ParamGet(*(*a1 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && strlen(__s) >= 4 && (paramc_ParamGetStr(*(*a1 + 40), "extclccfg", &v67) & 0x80000000) != 0;
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "lidenx", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  *(a1 + 928) = *&__c[1] != 0;
  *(a1 + 932) = 0;
  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "lidenxchars", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  if (*&__c[1])
  {
    v4 = strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
      v5 = **&__c[3];
    }

    __strcpy_chk();
  }

  else
  {
    *(a1 + 944) = 0;
  }

  *&__c[1] = -1;
  Str = (*(*(a1 + 80) + 96))(*(a1 + 64), *(a1 + 72), "fecfg", "dpsmultitrans", &__c[3], &__c[1], __c);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  if (*&__c[1])
  {
    v6 = **&__c[3];
    v7 = strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
      v6 = **&__c[3];
    }

    v8 = atoi(v6);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 1200) = v8;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", v65);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  Str = paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v64);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  LOBYTE(v70[0]) = 0;
  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  v9 = brokeraux_ComposeBrokerString(*a1, v70, 0, 1, *v65, 0, 0, v69, 0x100uLL);
  if (v9 < 0)
  {
    v49 = v9 | 0x89B02000;
    goto LABEL_53;
  }

  if ((ssftriff_reader_ObjOpen(*(a1 + 16), *(a1 + 24), 2, v69, "DETR", 1031, &v60) & 0x80000000) != 0)
  {
    v49 = 0;
    goto LABEL_53;
  }

  while (2)
  {
    if ((ssftriff_reader_OpenChunk(v60, &v61, &v58, &v59, v10, v11, v12, v13) & 0x80000000) != 0)
    {
      Str = ssftriff_reader_ObjClose(v60, v14, v15, v16, v17, v18, v19, v20);
LABEL_52:
      v49 = Str;
      break;
    }

    v57 = 256;
    Str = ssftriff_reader_ReadStringZ(v60, v59, v58, 0, __dst, &v57);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_52;
    }

    v21 = heap_Alloc(*(*a1 + 8), 24);
    if (!v21)
    {
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v23, v24, v25, v26, v56);
      v49 = 2310021130;
      break;
    }

    v27 = v21;
    Str = ssftriff_reader_DetachChunkData(v60, v27, v27 + 1, v22, v23, v24, v25, v26);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_52;
    }

    v28 = v57;
    if ((v57 & 3) != 0)
    {
      v28 = v57 - (v57 | 0xFFFFFFFC);
      v57 = v28;
    }

    PNEW_LexDT_Con(a1 + 888, a1 + 888, 0, (v27[1] + v28), 0, v27 + 2);
    v30 = LH_ERROR_to_VERROR(v29);
    if ((v30 & 0x80000000) != 0)
    {
      v49 = v30;
      ssftriff_reader_ReleaseChunkData(*v27, v31, v32, v33, v34, v35, v36, v37);
      heap_Free(*(*a1 + 8), v27);
      log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34004, 0, v52, v53, v54, v55, v56);
    }

    else
    {
      v38 = __dst;
      do
      {
        v39 = strchr(v38, 44);
        v40 = v39;
        if (v39)
        {
          *v39 = 0;
        }

        v41 = ssftmap_Insert(*(a1 + 568), v38, v27);
        if ((v41 & 0x80000000) != 0)
        {
          v49 = v41;
          ssftriff_reader_ReleaseChunkData(*v27, v42, v43, v44, v45, v46, v47, v48);
          heap_Free(*(*a1 + 8), v27);
          goto LABEL_53;
        }

        v38 = v40 + 1;
      }

      while (v40);
      v49 = ssftriff_reader_CloseChunk(v60);
      if ((v49 & 0x80000000) == 0)
      {
        continue;
      }
    }

    break;
  }

LABEL_53:
  v50 = *MEMORY[0x1E69E9840];
  return v49;
}

uint64_t hlp_GenXtraMainVarMW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = a4;
  if (a5 < a6 && (v9 = a6 - a5, (a6 - a5) <= 127))
  {
    __strncpy_chk();
    v18 = &v21[v9];
    *v18 = 0;
    if (oneword_CountOrthographicWords(v21, v18, 0x23u, 0x23u) < 2)
    {
      v10 = hlp_GenXtraMainVar(a1, a2, a3, a4, a5, a6, a7, &v19);
    }

    else
    {
      oneword_ReplaceAllCharactersInOrthography(v21, v18, 0x23u, 32);
      v10 = 0;
      v20 = 0;
      do
      {
        oneword_FindNextWord(v21, 5u, v9, &v20 + 1, &v20);
        if (HIDWORD(v20) < v9)
        {
          v10 = hlp_GenXtraMainVar(a1, a2, a3, v19, (WORD2(v20) + a5), (v20 + a5), a7, &v19);
          if ((v10 & 0x80000000) != 0)
          {
            break;
          }
        }

        HIDWORD(v20) = v20;
      }

      while (v20 < v9);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

BOOL hlp_checkDoClmForForeignLanguage(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  v9[0] = 7171171;
  __strcat_chk();
  if ((paramc_ParamGetStr(*(*a1 + 40), v9, &__s1) & 0x80000000) == 0)
  {
    v4 = __s1;
    if (__s1)
    {
      goto LABEL_11;
    }
  }

  __s1 = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "noclmset", &__s1);
  v4 = __s1;
  if ((Str & 0x80000000) == 0 && __s1)
  {
    if (strstr(__s1, a2))
    {
      v4 = "no";
    }

    else
    {
      v4 = "yes";
    }

    __s1 = v4;
    goto LABEL_11;
  }

  if (__s1)
  {
LABEL_11:
    result = strcmp(v4, "yes") == 0;
    goto LABEL_12;
  }

  result = 1;
LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_oneword_TreatNLUMarkup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v135 = 0;
  __n = 0;
  v132 = 0;
  __dst = 0;
  v131 = 0;
  v129 = 0;
  v128 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v135 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v135), 0, &v128) & 0x80000000) == 0 && v128 == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v135), 0, &v131, &__n + 4);
    if ((v6 & 0x80000000) == 0 && WORD2(__n) >= 2u)
    {
      v7 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v135), 1, &v129, &v128 + 2);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v135), &v135);
      if ((v6 & 0x80000000) == 0)
      {
        v133 = 0;
        LOWORD(v8) = v135;
        if (v135)
        {
          v9 = 0;
          v10 = 0;
          v124 = 0;
          v11 = 0;
          while (1)
          {
            v12 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v132, &__n + 4);
            if ((v12 & 0x80000000) != 0)
            {
              break;
            }

            if ((v132 - 9) >= 6 && v132 != 4)
            {
              goto LABEL_181;
            }

            v12 = (*(*(a1 + 56) + 168))(a2, a3, v135, 1, 1, &v133 + 2, &__n + 4);
            if ((v12 & 0x80000000) != 0)
            {
              break;
            }

            v12 = (*(*(a1 + 56) + 168))(a2, a3, v135, 2, 1, &v133, &__n + 4);
            if ((v12 & 0x80000000) != 0)
            {
              break;
            }

            v14 = v11;
            if (v9 >= HIWORD(v128))
            {
LABEL_25:
              v18 = *(v129 + 16);
            }

            else
            {
              v15 = *(v129 + 12);
              v16 = (v129 + 32 * v9);
              v17 = HIWORD(v128) - v9;
              while (1)
              {
                v18 = v16[3] - v15;
                v19 = (*(v16 + 6) - v15);
                if (*v16 == 1 && v19 >= v133)
                {
                  break;
                }

                v16 += 8;
                if (!--v17)
                {
                  goto LABEL_25;
                }
              }

              v35 = *(v16 + 6) == v15 || v19 == *(v129 + 16);
              if (!v35 && *(v131 + v19) != 32)
              {
                LODWORD(v127) = v19 - 1;
                utf8_GetPreviousValidUtf8Offset(v131, &v127);
                v36 = utf8_determineUTF8CharLength(*(v131 + v19));
                v37 = v127;
                v38 = *(v131 + v127);
                if (v38 != 95 && v38 != 32)
                {
                  v37 = v36 + v18;
                }

                v18 = v37;
              }
            }

            LOWORD(__n) = 0;
            v21 = *(a1 + 2264);
            if (v21 && *v21)
            {
              LOWORD(__n) = strlen(v21) + 1;
              v22 = heap_Realloc(*(*a1 + 8), v14, __n);
              if (!v22)
              {
                goto LABEL_294;
              }

              v27 = v22;
              v28 = strcpy(v22, *(a1 + 2264));
              **(a1 + 2264) = 0;
              v14 = v28;
            }

            else
            {
              v27 = 0;
            }

            v29 = HIWORD(v128);
            v123 = v10;
            if (v9 < HIWORD(v128))
            {
              v30 = 32 * v9;
              v9 = v9;
              while (v18 << 16 > (*(v129 + v30 + 12) - *(v129 + 12)) << 16)
              {
                if (*(v129 + v30) == 51)
                {
                  LOWORD(__n) = strlen(*(v129 + v30 + 24)) + __n + 1;
                  v31 = heap_Realloc(*(*a1 + 8), v14, __n);
                  if (!v31)
                  {
                    v48 = v124;
LABEL_280:
                    v10 = v123;
                    goto LABEL_281;
                  }

                  v32 = v31;
                  if (v27)
                  {
                    v33 = v129;
                    v34 = *(v129 + v30 + 12) + 1 == *(v129 + 16) + *(v129 + 12);
                  }

                  else
                  {
                    v34 = 0;
                    *v31 = 0;
                    v33 = v129;
                  }

                  hlp_NLUStrOverride(v31, *(v33 + v30 + 24), v34);
                  v29 = HIWORD(v128);
                  v14 = v32;
                  v27 = v32;
                }

                else
                {
                  v32 = v27;
                }

                ++v9;
                v30 += 32;
                if (v9 >= v29)
                {
                  goto LABEL_53;
                }
              }

              v32 = v27;
LABEL_53:
              v9 = v9;
              v27 = v32;
              v10 = v123;
            }

            if (!v27)
            {
              v78 = (*(*(a1 + 56) + 168))(a2, a3, v135, 0, 1, &v132, &__n + 4);
              if ((v78 & 0x80000000) != 0)
              {
                v6 = v78;
                v48 = v124;
                goto LABEL_282;
              }

              v79 = (v132 - 9) < 6 || v132 == 4;
              v11 = v14;
              if (v79)
              {
                v80 = *(a1 + 2256);
                if (*v80)
                {
                  v81 = strlen(v80);
                  v82 = heap_Realloc(*(*a1 + 8), v10, (v81 + 1));
                  if (!v82)
                  {
                    goto LABEL_294;
                  }

                  v83 = v82;
                  v84 = strcpy(v82, *(a1 + 2256));
                  __dst = v84;
                  do
                  {
                    if ((*v84 | 0x20) != 0x69)
                    {
                      goto LABEL_177;
                    }

                    if (v84[1] != 95)
                    {
                      goto LABEL_177;
                    }

                    LOWORD(__n) = hlp_NLUStrLength(v84);
                    v84 = __dst;
                    if (v83 >= __dst)
                    {
                      goto LABEL_177;
                    }

                    v85 = 0;
                    v86 = v83;
                    do
                    {
                      if (*v86)
                      {
                        if (v86[1] == 95)
                        {
                          v87 = __n;
                          if (v87 == hlp_NLUStrLength(v86) && !strncmp(__dst + 2, v86 + 2, __n - 2))
                          {
                            v85 = 1;
                          }
                        }
                      }

                      v86 = hlp_NLUStrNext(v86);
                      v84 = __dst;
                    }

                    while (v86 < __dst);
                    if (v85)
                    {
                      v84 = hlp_NLUStrStrip(__dst);
                    }

                    else
                    {
LABEL_177:
                      v84 = hlp_NLUStrNext(v84);
                    }

                    __dst = v84;
                  }

                  while (v84);
                  hlp_NLUStrJoin(v83, "");
                  v88 = strlen(v83);
                  v89 = (*(*(a1 + 56) + 160))(a2, a3, v135, 14, (v88 + 1), v83, &__n + 2);
                  if ((v89 & 0x80000000) != 0)
                  {
                    v6 = v89;
                    v10 = v83;
                    goto LABEL_278;
                  }

                  v10 = v83;
                }
              }

LABEL_181:
              v6 = (*(*(a1 + 56) + 120))(a2, a3, v135, &v135);
              if ((v6 & 0x80000000) != 0)
              {
                goto LABEL_278;
              }

              v8 = v135;
              v14 = v11;
              goto LABEL_259;
            }

            v39 = 2 * strlen(v27);
            v40 = v39 + 2;
            LOWORD(__n) = v39 + 2;
            v41 = *(a1 + 2256);
            if (*v41)
            {
              v40 = v39 + strlen(v41) + 3;
              LOWORD(__n) = v40;
            }

            v42 = heap_Realloc(*(*a1 + 8), v14, v40);
            if (!v42)
            {
LABEL_294:
              v48 = v124;
LABEL_281:
              v6 = 2310021130;
              log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v23, v24, v25, v26, v122);
              goto LABEL_282;
            }

            v14 = v42;
            v122 = v9;
            v43 = heap_Realloc(*(*a1 + 8), v124, __n);
            if (!v43)
            {
              v6 = 2310021130;
              log_OutPublic(*(*a1 + 32), "FE_ONEWORD", 34000, 0, v44, v45, v46, v47, v9);
              v48 = v124;
              goto LABEL_284;
            }

            v48 = v43;
            v49 = v18;
            __dst = v14;
            v50 = v14;
            do
            {
              if ((*v50 | 0x20) == 0x72 && v50[1] == 95)
              {
                strcpy(v48, *(a1 + 2256));
                LOWORD(__n) = hlp_NLUStrKeyLen(__dst);
                if (v14 < __dst)
                {
                  v51 = v14;
                  do
                  {
                    v52 = __n;
                    if (v52 == hlp_NLUStrKeyLen(v51) && !strncmp(__dst + 2, v51 + 2, __n - 2))
                    {
                      v53 = *v51;
                      if (v53 > 0x64)
                      {
                        if (v53 == 101)
                        {
LABEL_77:
                          if (v51[1] == 95)
                          {
                            hlp_NLUStrRemoveI(v48, v51);
                          }

                          goto LABEL_66;
                        }

                        if (v53 == 115)
                        {
LABEL_74:
                          if (v51[1] == 95)
                          {
                            hlp_NLUStrAddI(v48, v51);
                          }
                        }
                      }

                      else
                      {
                        if (v53 == 69)
                        {
                          goto LABEL_77;
                        }

                        if (v53 == 83)
                        {
                          goto LABEL_74;
                        }
                      }
                    }

LABEL_66:
                    v51 = hlp_NLUStrNext(v51);
                  }

                  while (v51 < __dst);
                }

                v54 = v48;
                do
                {
                  if (*v54)
                  {
                    *v54 = 69;
                  }

                  v54 = hlp_NLUStrNext(v54);
                }

                while (v54);
                LOWORD(__n) = strlen(v48);
                v55 = strlen(__dst);
                memmove(&__dst[__n + 1], __dst, v55 + 1);
                strncpy(__dst, v48, __n);
                __dst[__n] = 59;
                __dst += __n + 1;
                v50 = hlp_NLUStrStrip(__dst);
              }

              else
              {
                v50 = hlp_NLUStrNext(v50);
              }

              __dst = v50;
            }

            while (v50);
            __dst = v14;
            v56 = v14;
            while (2)
            {
              if ((*v56 | 0x20) == 0x65 && v56[1] == 95)
              {
                v57 = hlp_NLUStrNext(v56);
                LOWORD(__n) = hlp_NLUStrLength(__dst);
                if (v57)
                {
                  while (1)
                  {
                    if ((*v57 | 0x20) == 0x73 && v57[1] == 95)
                    {
                      v58 = __n;
                      if (v58 == hlp_NLUStrLength(v57) && !strncmp(__dst + 2, v57 + 2, __n - 2))
                      {
                        break;
                      }
                    }

                    v57 = hlp_NLUStrNext(v57);
                    if (!v57)
                    {
                      goto LABEL_95;
                    }
                  }

                  hlp_NLUStrStrip(v57);
                  v56 = hlp_NLUStrStrip(__dst);
                  goto LABEL_97;
                }

LABEL_95:
                v56 = __dst;
              }

              v56 = hlp_NLUStrNext(v56);
LABEL_97:
              __dst = v56;
              if (v56)
              {
                continue;
              }

              break;
            }

            __dst = v14;
            v59 = v14;
LABEL_100:
            while (2)
            {
              if ((*v59 | 0x20) != 0x73 || v59[1] != 95)
              {
                goto LABEL_117;
              }

              v60 = hlp_NLUStrNext(v59);
              LOWORD(__n) = hlp_NLUStrLength(__dst);
              if (v60)
              {
                v61 = 0;
                do
                {
                  if (v61)
                  {
                    v62 = *v60;
                    if ((v62 | 0x20) != 0x65)
                    {
                      goto LABEL_110;
                    }

                    if (v60[1] == 95)
                    {
                      v63 = __n;
                      if (v63 == hlp_NLUStrLength(v60) && !strncmp(__dst + 2, v60 + 2, __n - 2))
                      {
                        hlp_NLUStrStrip(v60);
                        hlp_NLUStrStrip(__dst);
                        v59 = __dst;
                        if (!__dst)
                        {
                          goto LABEL_120;
                        }

                        goto LABEL_100;
                      }
                    }
                  }

                  v62 = *v60;
LABEL_110:
                  if (v62)
                  {
                    if (v60[1] == 95)
                    {
                      v64 = __n;
                      if (v64 == hlp_NLUStrLength(v60) && !strncmp(__dst + 2, v60 + 2, __n - 2))
                      {
                        v61 = 1;
                      }
                    }
                  }

                  v60 = hlp_NLUStrNext(v60);
                }

                while (v60);
              }

              v59 = __dst;
LABEL_117:
              v59 = hlp_NLUStrNext(v59);
              __dst = v59;
              if (v59)
              {
                continue;
              }

              break;
            }

LABEL_120:
            __dst = v14;
            v65 = v14;
            while (2)
            {
              if ((*v65 | 0x20) != 0x65 || v65[1] != 95 || (v66 = hlp_NLUStrSearchI(*(a1 + 2256), v65), v65 = __dst, v66))
              {
                v67 = v65;
                goto LABEL_125;
              }

              LOWORD(__n) = hlp_NLUStrLength(__dst);
              v67 = __dst;
              if (v14 >= __dst)
              {
                goto LABEL_137;
              }

              v69 = 0;
              v70 = v14;
              do
              {
                if ((*v70 | 0x20) == 0x73 && v70[1] == 95)
                {
                  v71 = __n;
                  if (v71 == hlp_NLUStrLength(v70) && !strncmp(__dst + 2, v70 + 2, __n - 2))
                  {
                    v69 = 1;
                  }
                }

                v70 = hlp_NLUStrNext(v70);
                v67 = __dst;
              }

              while (v70 < __dst);
              if (v69)
              {
LABEL_125:
                v68 = hlp_NLUStrNext(v67);
              }

              else
              {
LABEL_137:
                v68 = hlp_NLUStrStrip(v67);
              }

              v65 = v68;
              __dst = v68;
              if (v68)
              {
                continue;
              }

              break;
            }

            hlp_NLUStrJoin(v14, "");
            HIWORD(__n) = v135;
            v125 = HIWORD(v133);
            v72 = (*(*(a1 + 56) + 120))(a2, a3);
            v6 = v72;
            if ((v72 & 0x80000000) != 0)
            {
              goto LABEL_276;
            }

            if (HIWORD(__n))
            {
              v6 = (*(*(a1 + 56) + 168))(a2, a3);
              if ((v6 & 0x80000000) != 0)
              {
                goto LABEL_276;
              }

              v73 = HIWORD(__n);
              if (HIWORD(__n))
              {
                v74 = HIWORD(v133);
                v75 = v125;
                while (1)
                {
                  if (v74 >= v49)
                  {
                    goto LABEL_185;
                  }

                  v76 = (*(*(a1 + 56) + 168))(a2, a3, v73, 0, 1, &v132, &__n + 4);
                  if ((v76 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if ((v132 - 9) < 6 || v132 == 4)
                  {
                    v75 = HIWORD(v133);
                  }

                  v6 = (*(*(a1 + 56) + 120))(a2, a3, HIWORD(__n), &__n + 6);
                  if ((v6 & 0x80000000) != 0)
                  {
                    goto LABEL_276;
                  }

                  if (!HIWORD(__n))
                  {
                    v73 = 0;
                    goto LABEL_185;
                  }

                  v6 = (*(*(a1 + 56) + 168))(a2, a3);
                  if ((v6 & 0x80000000) != 0)
                  {
                    goto LABEL_276;
                  }

                  v73 = HIWORD(__n);
                  if (!HIWORD(__n))
                  {
                    goto LABEL_185;
                  }

                  v74 = HIWORD(v133);
                }

LABEL_275:
                v6 = v76;
LABEL_276:
                v11 = v14;
                v10 = v123;
                goto LABEL_283;
              }
            }

            else
            {
              v73 = 0;
            }

            v75 = v125;
LABEL_185:
            v8 = v135;
            if (v135 && v135 != v73)
            {
              v90 = 0;
              do
              {
                v76 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v132, &__n + 4);
                if ((v76 & 0x80000000) != 0)
                {
                  goto LABEL_275;
                }

                if ((v132 - 9) < 6 || v132 == 4)
                {
                  if (v90)
                  {
                    v76 = (*(*(a1 + 56) + 168))(a2, a3, v90, 1, 1, &__n, &__n + 4);
                    if ((v76 & 0x80000000) != 0)
                    {
                      goto LABEL_275;
                    }
                  }

                  v76 = (*(*(a1 + 56) + 168))(a2, a3, v135, 1, 1, &v133 + 2, &__n + 4);
                  if ((v76 & 0x80000000) != 0)
                  {
                    goto LABEL_275;
                  }

                  v76 = (*(*(a1 + 56) + 168))(a2, a3, v135, 2, 1, &v133, &__n + 4);
                  if ((v76 & 0x80000000) != 0)
                  {
                    goto LABEL_275;
                  }

                  if (!v90 || __n != HIWORD(v133))
                  {
                    v93 = strlen(v14);
                    v94 = v93 + 1;
                    LOWORD(__n) = v93 + 1;
                    v95 = *(a1 + 2256);
                    if (*v95)
                    {
                      v94 = v93 + strlen(*(a1 + 2256)) + 2;
                      LOWORD(__n) = v94;
                    }

                    v10 = v123;
                    v96 = heap_Realloc(*(*a1 + 8), v95, v94);
                    if (!v96)
                    {
                      goto LABEL_281;
                    }

                    *(a1 + 2256) = v96;
                    v97 = strlen(v14);
                    v98 = heap_Realloc(*(*a1 + 8), v123, __n + v97 + 1);
                    if (!v98)
                    {
                      goto LABEL_281;
                    }

                    v99 = v98;
                    v100 = strcpy(v98, v14);
                    while (2)
                    {
                      v101 = *v100;
                      if (v101 > 0x64)
                      {
                        if (v101 != 101)
                        {
                          if (v101 != 115)
                          {
                            goto LABEL_225;
                          }

                          goto LABEL_214;
                        }
                      }

                      else if (v101 != 69)
                      {
                        if (v101 != 83)
                        {
                          goto LABEL_225;
                        }

LABEL_214:
                        if (v100[1] != 95)
                        {
                          goto LABEL_225;
                        }

                        v102 = hlp_NLUStrSearchI(*(a1 + 2256), v100);
                        if (HIWORD(v133) == v125)
                        {
                          hlp_NLUStrAddI(*(a1 + 2256), v100);
                        }

                        if (!v102)
                        {
LABEL_225:
                          v103 = hlp_NLUStrNext(v100);
LABEL_226:
                          v100 = v103;
                          if (!v103)
                          {
                            hlp_NLUStrJoin(v99, *(a1 + 2256));
                            __dst = v99;
                            v104 = v99;
                            do
                            {
                              if ((*v104 | 0x20) != 0x69)
                              {
                                goto LABEL_240;
                              }

                              if (v104[1] != 95)
                              {
                                goto LABEL_240;
                              }

                              LOWORD(__n) = hlp_NLUStrLength(v104);
                              v104 = __dst;
                              if (v99 >= __dst)
                              {
                                goto LABEL_240;
                              }

                              v105 = 0;
                              v106 = v99;
                              do
                              {
                                if (*v106)
                                {
                                  if (v106[1] == 95)
                                  {
                                    v107 = __n;
                                    if (v107 == hlp_NLUStrLength(v106) && !strncmp(__dst + 2, v106 + 2, __n - 2))
                                    {
                                      v105 = 1;
                                    }
                                  }
                                }

                                v106 = hlp_NLUStrNext(v106);
                                v104 = __dst;
                              }

                              while (v106 < __dst);
                              if (v105)
                              {
                                v104 = hlp_NLUStrStrip(__dst);
                              }

                              else
                              {
LABEL_240:
                                v104 = hlp_NLUStrNext(v104);
                              }

                              __dst = v104;
                            }

                            while (v104);
                            hlp_NLUStrJoin(v99, "");
                            if (HIWORD(v133) == v75)
                            {
                              v127 = 0;
                              v126 = 0;
                              v108 = hlp_NLUStrFind(v99, "PUNC", &v127, &v126);
                              if (!v108)
                              {
                                goto LABEL_252;
                              }

                              v109 = v108;
                              if (!strstr(v108, ":DASH"))
                              {
                                goto LABEL_252;
                              }

LABEL_250:
                              if (*(v131 + v133 - 1) == 44)
                              {
                                goto LABEL_252;
                              }

LABEL_251:
                              hlp_NLUStrStrip(v109);
                              goto LABEL_252;
                            }

                            v127 = 0;
                            v126 = 0;
                            v110 = hlp_NLUStrFind(v99, "BND", &v127, &v126);
                            if (v110)
                            {
                              hlp_NLUStrStrip(v110);
                            }

                            v111 = hlp_NLUStrFind(v99, "PUNC", &v127, &v126);
                            if (v111)
                            {
                              v109 = v111;
                              if (strstr(v111, ":DASH"))
                              {
                                goto LABEL_250;
                              }

                              goto LABEL_251;
                            }

LABEL_252:
                            v112 = strlen(v99);
                            v113 = (*(*(a1 + 56) + 160))(a2, a3, v135, 14, (v112 + 1), v99, &__n + 2);
                            if ((v113 & 0x80000000) == 0)
                            {
                              v123 = v99;
                              goto LABEL_254;
                            }

                            v6 = v113;
                            v10 = v99;
LABEL_282:
                            v11 = v14;
LABEL_283:
                            v14 = v11;
                            if (v11)
                            {
LABEL_284:
                              heap_Free(*(*a1 + 8), v14);
                            }

                            if (v48)
                            {
                              heap_Free(*(*a1 + 8), v48);
                            }

                            if (v10)
                            {
                              heap_Free(*(*a1 + 8), v10);
                            }

                            return v6;
                          }

                          continue;
                        }

LABEL_224:
                        v103 = hlp_NLUStrStrip(v100);
                        goto LABEL_226;
                      }

                      break;
                    }

                    if (v100[1] != 95)
                    {
                      goto LABEL_225;
                    }

                    if (HIWORD(v133) == v75)
                    {
                      hlp_NLUStrRemoveI(*(a1 + 2256), v100);
                    }

                    if (!hlp_NLUStrSearchI(*(a1 + 2256), v100))
                    {
                      goto LABEL_225;
                    }

                    goto LABEL_224;
                  }

                  v76 = (*(*(a1 + 56) + 176))(a2, a3, v90, 14, &__dst, &__n + 4);
                  if ((v76 & 0x80000000) != 0)
                  {
                    goto LABEL_275;
                  }

                  v92 = strlen(__dst);
                  v76 = (*(*(a1 + 56) + 160))(a2, a3, v135, 14, (v92 + 1), __dst, &__n + 2);
                  if ((v76 & 0x80000000) != 0)
                  {
                    goto LABEL_275;
                  }

LABEL_254:
                  v90 = v135;
                }

                v6 = (*(*(a1 + 56) + 120))(a2, a3);
                if ((v6 & 0x80000000) != 0)
                {
                  goto LABEL_276;
                }

                v8 = v135;
              }

              while (v135 && v135 != HIWORD(__n));
            }

            v124 = v48;
            v9 = v122;
            v10 = v123;
LABEL_259:
            v11 = v14;
            if (!v8)
            {
              goto LABEL_264;
            }
          }

          v6 = v12;
        }

        else
        {
          v14 = 0;
          v124 = 0;
          v10 = 0;
          LODWORD(v9) = 0;
LABEL_264:
          v114 = HIWORD(v128);
          if (v9 < HIWORD(v128))
          {
            v123 = v10;
            v115 = v9;
            v116 = 32 * v9;
            v48 = v124;
            while (1)
            {
              if (*(v129 + v116) == 51)
              {
                v117 = *(a1 + 2264);
                if (v117)
                {
                  v118 = strlen(*(a1 + 2264)) + 2;
                }

                else
                {
                  v118 = 2;
                }

                v119 = strlen(*(v129 + v116 + 24));
                v120 = heap_Realloc(*(*a1 + 8), v117, (v119 + v118));
                if (!v120)
                {
                  goto LABEL_280;
                }

                *(a1 + 2264) = v120;
                hlp_NLUStrOverride(v120, *(v129 + v116 + 24), 0);
                v114 = HIWORD(v128);
              }

              ++v115;
              v116 += 32;
              if (v115 >= v114)
              {
                goto LABEL_276;
              }
            }
          }

          v11 = v14;
        }

LABEL_278:
        v48 = v124;
        goto LABEL_283;
      }
    }
  }

  return v6;
}