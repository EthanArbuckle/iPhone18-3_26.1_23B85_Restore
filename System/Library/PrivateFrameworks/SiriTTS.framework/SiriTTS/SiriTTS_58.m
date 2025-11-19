uint64_t printSent_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a3 + 25))
  {
    return 0;
  }

  v8 = a6;
  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Sentence :%s", a6, a7, a8, a4);
  if (*(a3 + 4))
  {
    v13 = 0;
    while (1)
    {
      sprintf(a3[11], "[%2d] ", v13);
      result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v15 = *a3;
      if (*(*a3 + 160 * v13 + 44) == 1)
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "*DUMMY* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v15 = *a3;
      }

      if (*(v15 + 160 * v13 + 8) == 1)
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "*OOV* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v15 = *a3;
      }

      if (*(v15 + 160 * v13 + 72) >= 2u)
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "*AMB* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v15 = *a3;
      }

      strncpy(a3[11], **(v15 + 160 * v13 + 48), 0x14uLL);
      v16 = strlen(**(*a3 + 160 * v13 + 48));
      if (v16 <= 0x13)
      {
        do
        {
          *(a3[11] + strlen(a3[11])) = 32;
        }

        while (v16++ < 0x13);
      }

      result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statcomp_add2Str(a1, a3 + 10, a3 + 48, " ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (*(*a3 + 160 * v13 + 120))
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "canon=");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v13 + 120));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, " ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (v8 == 1)
      {
        v18 = *a3;
        if (*(*a3 + 160 * v13 + 24) == 1)
        {
          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "DCTWORD ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v18 = *a3;
        }

        if (*(v18 + 160 * v13 + 16) == 1)
        {
          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "FollowedByUnderscore ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v18 = *a3;
        }

        if (*(v18 + 160 * v13 + 20) == 1)
        {
          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "FollowedBySpace ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      v19 = *a3 + 160 * v13;
      if (a5 == 1)
      {
        break;
      }

      if (*(v19 + 88))
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "PREDICTEDPOS=");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v21 = *(*a3 + 160 * v13 + 88);
LABEL_39:
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, v21);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      v22 = *a3;
      if (*(*a3 + 160 * v13 + 104))
      {
        sprintf(a3[11], "tmphr=%4s ", *(*a3 + 160 * v13 + 104));
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a3;
      }

      if (*(v22 + 160 * v13 + 112))
      {
        sprintf(a3[11], "retag=%4s ", *(v22 + 160 * v13 + 112));
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a3;
      }

      v23 = *(*(v22 + 160 * v13 + 48) + 16);
      if (!v23)
      {
        v23 = " ";
      }

      sprintf(a3[11], " %6s ", v23);
      result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v24 = *a3;
      if (*(*a3 + 160 * v13 + 12))
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "_HASCOMMA ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v24 = *a3;
      }

      if (*(v24 + 160 * v13 + 40))
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, " bPHONETIC ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (*(a2 + 376))
      {
        v25 = 0;
        v26 = 0;
        do
        {
          v27 = *a3;
          v28 = *(*a3 + 160 * v13 + 56);
          if (v28)
          {
            if (*(v28 + v25) != 1)
            {
              goto LABEL_96;
            }

            sprintf(a3[11], "<%s ", *(v28 + v25 + 16));
            result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v27 = *a3;
            v28 = *(*a3 + 160 * v13 + 56);
            if (v28)
            {
LABEL_96:
              v29 = v28 + v25;
              if (*(v29 + 4) == 1)
              {
                sprintf(a3[11], "%s> ", *(*(v27 + 160 * *(v29 + 8) + 56) + v25 + 16));
                result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }
            }
          }

          ++v26;
          v25 += 24;
        }

        while (v26 < *(a2 + 376));
      }

      result = statcomp_add2Str(a1, a3 + 10, a3 + 48, " uniqueTagRecs:");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v33 = *a3;
      if (*(*a3 + 160 * v13 + 72))
      {
        v34 = 0;
        v41 = v8;
        v42 = a5;
        while (1)
        {
          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "<RETAG=");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(*a3 + 160 * v13 + 64) + 24 * v34))));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, ",");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v35 = *(*a3 + 160 * v13 + 64);
          if (*(v35 + 24 * v34 + 16))
          {
            v36 = 0;
            v37 = 0;
            do
            {
              v38 = (*(v35 + 24 * v34 + 8) + v36);
              v39 = "*KEEP*";
              if (*(v38 + 1) != 1)
              {
                v39 = "";
              }

              v40 = "*SPLIT*";
              if (*(v38 + 2) != 1)
              {
                v40 = "";
              }

              sprintf(a3[11], "[%s%s%d,", v39, v40, *v38);
              result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = statcomp_add2Str(a1, a3 + 10, a3 + 48, *(*(*(*a3 + 160 * v13 + 64) + 24 * v34 + 8) + v36 + 16));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "]");
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              ++v37;
              v35 = *(*a3 + 160 * v13 + 64);
              v36 += 24;
            }

            while (v37 < *(v35 + 24 * v34 + 16));
          }

          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "> ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          ++v34;
          v33 = *a3;
          v8 = v41;
          a5 = v42;
          if (v34 >= *(*a3 + 160 * v13 + 72))
          {
            if (!*(*a3 + 160 * v13 + 72) || !*(v33 + 160 * v13 + 80))
            {
              break;
            }

            result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "<POTENTIALTAGS=");
            if ((result & 0x80000000) == 0)
            {
              result = statcomp_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v13 + 80));
              if ((result & 0x80000000) == 0)
              {
                result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "> ");
                if ((result & 0x80000000) == 0)
                {
                  v33 = *a3;
                  break;
                }
              }
            }

            return result;
          }
        }
      }

      if (!*(v33 + 160 * v13 + 88) || (result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "PREDICTEDPOS="), (result & 0x80000000) == 0) && (result = statcomp_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v13 + 88)), (result & 0x80000000) == 0))
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v30, v31, v32, a3[10]);
        result = 0;
        *a3[10] = 0;
        if (++v13 < *(a3 + 4))
        {
          continue;
        }
      }

      return result;
    }

    v20 = *(*(v19 + 48) + 24);
    if (!v20)
    {
      v20 = " ";
    }

    sprintf(a3[11], "%4s ", v20);
    v21 = a3[11];
    goto LABEL_39;
  }

  return 0;
}

double statpos_freeSentenceData(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[91];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[91] = 0;
    *(a1 + 372) = 0;
  }

  v4 = a1[92];
  if (v4)
  {
    heap_Free(*(v2 + 8), v4);
    a1[92] = 0;
  }

  v5 = a1 + 81;
  v6 = a1[81];
  if (*(a1 + 328))
  {
    v7 = 0;
    do
    {
      if (*(v6 + 160 * v7 + 104))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 104));
        v6 = *v5;
        *(*v5 + 160 * v7 + 104) = 0;
      }

      if (*(v6 + 160 * v7 + 136))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 136));
        v6 = *v5;
        *(*v5 + 160 * v7 + 136) = 0;
      }

      if (*(v6 + 160 * v7 + 112))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 112));
        v6 = *v5;
        *(*v5 + 160 * v7 + 112) = 0;
      }

      v8 = *(v6 + 160 * v7 + 48);
      if (v8)
      {
        v9 = *(a1 + 192);
        if (v9)
        {
          for (i = 0; i < v9; ++i)
          {
            v8 = *(v6 + 160 * v7 + 48);
            if (*(v8 + 8 * i))
            {
              heap_Free(*(v2 + 8), *(v8 + 8 * i));
              v6 = a1[81];
              v8 = *(v6 + 160 * v7 + 48);
              *(v8 + 8 * i) = 0;
              v9 = *(a1 + 192);
            }
          }
        }

        heap_Free(*(v2 + 8), v8);
        v6 = *v5;
        *(*v5 + 160 * v7 + 48) = 0;
      }

      v11 = *(v6 + 160 * v7 + 56);
      if (v11)
      {
        v12 = *(a1 + 192);
        if (v12)
        {
          v13 = 0;
          v14 = 16;
          do
          {
            v11 = *(v6 + 160 * v7 + 56);
            if (*(v11 + v14))
            {
              heap_Free(*(v2 + 8), *(v11 + v14));
              v6 = a1[81];
              v11 = *(v6 + 160 * v7 + 56);
              *(v11 + v14) = 0;
              v12 = *(a1 + 192);
            }

            ++v13;
            v14 += 24;
          }

          while (v13 < v12);
        }

        heap_Free(*(v2 + 8), v11);
        v6 = *v5;
        *(*v5 + 160 * v7 + 56) = 0;
      }

      if (*(v6 + 160 * v7 + 72))
      {
        v15 = 0;
        do
        {
          v16 = *(v6 + 160 * v7 + 64);
          if (*(v16 + 24 * v15 + 16))
          {
            v17 = 0;
            v18 = 16;
            do
            {
              v19 = *(*(v16 + 24 * v15 + 8) + v18);
              if (v19)
              {
                heap_Free(*(v2 + 8), v19);
                v16 = *(*v5 + 160 * v7 + 64);
                *(*(v16 + 24 * v15 + 8) + v18) = 0;
              }

              ++v17;
              v18 += 24;
            }

            while (v17 < *(v16 + 24 * v15 + 16));
            heap_Free(*(v2 + 8), *(v16 + 24 * v15 + 8));
            v6 = *v5;
            v20 = *(*v5 + 160 * v7 + 64) + 24 * v15;
            *(v20 + 8) = 0;
            *(v20 + 16) = 0;
          }

          ++v15;
        }

        while (v15 < *(v6 + 160 * v7 + 72));
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 64));
        v6 = *v5;
        v21 = *v5 + 160 * v7;
        *(v21 + 64) = 0;
        *(v21 + 72) = 0;
      }

      if (*(v6 + 160 * v7 + 80))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 80));
        v6 = *v5;
        *(*v5 + 160 * v7 + 80) = 0;
      }

      if (*(v6 + 160 * v7 + 88))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 88));
        v6 = *v5;
        *(*v5 + 160 * v7 + 88) = 0;
      }

      if (*(v6 + 160 * v7 + 120))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 120));
        v6 = *v5;
        *(*v5 + 160 * v7 + 120) = 0;
      }

      if (*(v6 + 160 * v7 + 32))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 32));
        v6 = *v5;
        *(*v5 + 160 * v7 + 32) = 0;
      }

      ++v7;
    }

    while (v7 < *(a1 + 328));
    goto LABEL_48;
  }

  if (v6)
  {
LABEL_48:
    heap_Free(*(v2 + 8), v6);
  }

  a1[97] = 0;
  result = 0.0;
  *(a1 + 93) = 0u;
  *(a1 + 95) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 91) = 0u;
  *(a1 + 85) = 0u;
  *(a1 + 87) = 0u;
  *v5 = 0u;
  *(a1 + 83) = 0u;
  return result;
}

uint64_t statpos_updateNLULingdbField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v8 = (a4 + 648);
  v9 = *a4;
  v10 = *(a4 + 656);
  if (*(a4 + 656))
  {
    v11 = *v8;
    v12 = (v10 + 3) & 0x1FFFC;
    v13 = xmmword_1C378AEF0;
    v14 = xmmword_1C378AF00;
    v15 = vdupq_n_s64(v10 - 1);
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, v14));
      if (vuzp1_s16(v17, *v13.i8).u8[0])
      {
        v11[38] = 0;
      }

      if (vuzp1_s16(v17, *&v13).i8[2])
      {
        v11[78] = 0;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v15, *&v13))).i32[1])
      {
        v11[118] = 0;
        v11[158] = 0;
      }

      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v11 += 160;
      v12 -= 4;
    }

    while (v12);
  }

  v37 = 0;
  v38 = 0;
  v36 = 0;
  v39[0] = *(a4 + 128);
  v39[1] = 0;
  *__s = 0u;
  v41 = 0u;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v38);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 184))(a2, a3, v38, 0, &v38 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v38) == 1)
    {
      result = (*(a1 + 176))(a2, a3, v38, 0, &v32, &v36);
      if ((result & 0x80000000) == 0 && v36 >= 2u)
      {
        result = (*(a1 + 104))(a2, a3, 2, v38, &v37 + 2);
        if ((result & 0x80000000) == 0)
        {
          v33 = 0;
          **(a4 + 728) = 0;
          v19 = HIWORD(v37);
          if (HIWORD(v37))
          {
            while (1)
            {
              result = (*(a1 + 120))(a2, a3, v19, &v37);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              result = (*(a1 + 168))(a2, a3, HIWORD(v37), 0, 1, &v35, &v36);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (v35 <= 0xA && ((1 << v35) & 0x610) != 0)
              {
                result = (*(a1 + 168))(a2, a3, HIWORD(v37), 1, 1, &v34, &v36);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                result = (*(a1 + 168))(a2, a3, HIWORD(v37), 2, 1, &v34 + 2, &v36);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                if (v34 != HIWORD(v34))
                {
                  result = getWordIdx_0(v9, v8, v34, HIWORD(v34), &v33, v21, v22, v23);
                  if ((result & 0x80000000) != 0)
                  {
                    break;
                  }

                  v24 = *v8;
                  v25 = v33;
                  v26 = *v8 + 160 * v33;
                  if (*(v26 + 44) || *(v26 + 152))
                  {
                    result = (*(a1 + 192))(a2, a3, HIWORD(v37));
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v27 = *(v26 + 56);
                    if (v27 && (v28 = *(v27 + 112)) != 0)
                    {
                      if (*v28 == 79 && !v28[1])
                      {
                        __strcpy_chk();
                      }

                      else
                      {
                        strcpy(__s, "B-");
                        v29 = *(*&v24[40 * v33 + 14] + 112);
                        __strcat_chk();
                        v30 = strlen(__s);
                        if (__s[v30 - 2] == 45 && __s[v30 - 1] == 80 && !__s[v30])
                        {
                          __s[v30 - 2] = 0;
                        }
                      }
                    }

                    else if (__s[0] && *__s != 79)
                    {
                      __s[0] = 73;
                    }

                    result = updateNLUField_0(v9, a1, a2, a3, HIWORD(v37), a4 + 8, v8, v25, *(*(*v8 + 160 * v25 + 48) + 24), __s, v39, 1);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    *(*v8 + 160 * v25 + 152) = 1;
                  }
                }
              }

              v19 = v37;
              HIWORD(v37) = v37;
              if (!v37)
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
LABEL_46:
            **(a4 + 728) = 0;
          }
        }
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getWordIdx_0(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2[4])
  {
    v8 = 0;
    v9 = (*a2 + 2);
    while (*(v9 - 1) != a3 || *v9 != a4)
    {
      ++v8;
      v9 += 80;
      if (a2[4] == v8)
      {
        goto LABEL_6;
      }
    }

    result = 0;
    *a5 = v8;
  }

  else
  {
LABEL_6:
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "cant align lingdb word : no word found with pos=%d,%d", a6, a7, a8, a3);
    return 2313166848;
  }

  return result;
}

uint64_t updateNLUField_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned int a8, char *a9, char *a10, char *__s, int a12)
{
  v17 = a3;
  v18 = a2;
  v55[0] = 0;
  v54 = 0;
  v53 = 0;
  result = (*(a2 + 184))(a3, a4, a5, 14, v55 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (!HIWORD(v55[0]))
    {
      goto LABEL_5;
    }

    result = (*(v18 + 176))(v17, a4, a5, 14, &v53, v55);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (LOWORD(v55[0]) >= 2u)
    {
      v21 = v53;
    }

    else
    {
LABEL_5:
      v21 = "";
      v53 = "";
    }

    __src = v21;
    v22 = strlen(v21);
    if (a9)
    {
      v23 = v22 + strlen(a9) + 6;
    }

    else
    {
      v23 = v22 + 1;
    }

    if (a10)
    {
      v23 += strlen(a10) + 5;
    }

    v51 = v18;
    v52 = v17;
    v49 = a1;
    v50 = a8;
    if (__s && a12 == 1)
    {
      v24 = v23 + 9;
      v47 = a8;
      v25 = *a7 + 160 * a8;
      v26 = *(v25 + 72);
      if (*(v25 + 72))
      {
        v27 = *(v25 + 64);
        v28 = strlen(__s);
        do
        {
          v29 = *v27;
          v27 += 6;
          v24 += strlen((*(a6 + 296) + *(*(a6 + 304) + 4 * v29))) + v28;
          --v26;
        }

        while (v26);
      }

      if (*(v25 + 8) == 1)
      {
        v23 = v24 + 6;
      }

      else
      {
        v23 = v24;
      }

      v30 = *(*a7 + 160 * v47 + 120);
      if (v30)
      {
        v23 += strlen(v30) + 11;
      }

      v18 = v51;
      v17 = v52;
      a1 = v49;
      a8 = v50;
    }

    if (v23 <= *(a7 + 48))
    {
      v31 = a7[10];
      v36 = __src;
    }

    else
    {
      v31 = heap_Realloc(*(a1 + 8), a7[10], v23);
      if (!v31)
      {
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v32, v33, v34, v35, v45);
        return 2313166858;
      }

      *(a7 + 48) = v23;
      a7[10] = v31;
      v36 = v53;
    }

    strcpy(v31, v36);
    if (a9)
    {
      hlp_NLUStrSet(a7[10], "POS", a9);
    }

    if (a10)
    {
      hlp_NLUStrSet(a7[10], "PHR", a10);
    }

    if (a12 == 1)
    {
      v40 = *a7;
      if (*(*a7 + 160 * a8 + 72))
      {
        v41 = 0;
        v42 = 0;
        do
        {
          hlp_NLUStrAppend(a7[10], "MAPTAGS", (*(a6 + 296) + *(*(a6 + 304) + 4 * *(*(v40 + 160 * a8 + 64) + v41))), __s);
          ++v42;
          v40 = *a7;
          v41 += 24;
        }

        while (v42 < *(*a7 + 160 * a8 + 72));
      }

      v18 = v51;
      v17 = v52;
      a1 = v49;
      if (*(v40 + 160 * a8 + 8) == 1)
      {
        hlp_NLUStrSet(a7[10], "OOV", "1");
        v40 = *a7;
      }

      v43 = *(v40 + 160 * a8 + 120);
      if (v43)
      {
        hlp_NLUStrSet(a7[10], "CANONICAL", v43);
      }
    }

    v46 = a7[10];
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", v37, v38, v39, a5);
    v44 = strlen(a7[10]);
    return (*(v18 + 160))(v17, a4, a5, 14, (v44 + 1), a7[10], &v54);
  }

  return result;
}

uint64_t checkWordRecPOS(uint64_t *a1, unsigned int a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  v4 = *a1;
  v5 = *(*a1 + 160 * a2 + 72);
  if (!*(*a1 + 160 * a2 + 72))
  {
    return 0;
  }

  v6 = 0;
  result = 0;
  v8 = *(v4 + 160 * a2 + 64);
  do
  {
    v9 = v8 + 24 * v6;
    v10 = *(v9 + 16);
    if (*(v9 + 16))
    {
      v11 = *(v9 + 8);
      do
      {
        if (*(v11 + 2) == 1 && *v11 == a3)
        {
          *a4 = 1;
        }

        if (*(v11 + 1) == 1)
        {
          if (*v11 == a3)
          {
            result = 1;
          }

          else
          {
            result = result;
          }
        }

        v11 += 12;
        --v10;
      }

      while (v10);
    }

    ++v6;
  }

  while (v6 != v5);
  return result;
}

uint64_t getNewPOS(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, char **a5)
{
  v7 = a1;
  v9 = *a2 + 160 * a3;
  v10 = *(v9 + 72);
  if (*(v9 + 72))
  {
    v33 = a1;
    v11 = 0;
    v12 = 0;
    v13 = *(*a2 + 160 * a3 + 64);
    do
    {
      v14 = v13 + 24 * v11;
      v15 = *(v14 + 16);
      if (*(v14 + 16))
      {
        v16 = *(v14 + 8);
        do
        {
          if (*v16 == a4 && *(v16 + 1) == 1)
          {
            if (v12)
            {
              v17 = v12 + 1;
            }

            else
            {
              v17 = 0;
            }

            v12 = v17 + strlen(v16[2]);
          }

          v16 += 3;
          --v15;
        }

        while (v15);
      }

      ++v11;
    }

    while (v11 != v10);
    v18 = v12 + 2;
    v7 = v33;
  }

  else
  {
    v18 = 2;
  }

  v19 = heap_Calloc(*(v7 + 8), 1, v18);
  if (v19)
  {
    v24 = v19;
    v25 = *a2;
    if (*(*a2 + 160 * a3 + 72))
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *(v25 + 160 * a3 + 64);
        if (*(v28 + 24 * v26 + 16))
        {
          v29 = 0;
          v30 = 0;
          do
          {
            v31 = *(v28 + 24 * v26 + 8);
            if (*(v31 + v29) == a4 && *(v31 + v29 + 4) == 1)
            {
              if (v27)
              {
                *&v24[strlen(v24)] = 92;
                strcat(v24, *(*(*(*a2 + 160 * a3 + 64) + 24 * v26 + 8) + v29 + 16));
              }

              else
              {
                strcpy(v24, *(v31 + v29 + 16));
              }

              ++v27;
              v25 = *a2;
            }

            ++v30;
            v28 = *(v25 + 160 * a3 + 64);
            v29 += 24;
          }

          while (v30 < *(v28 + 24 * v26 + 16));
        }

        ++v26;
      }

      while (v26 < *(v25 + 160 * a3 + 72));
    }

    result = 0;
    *a5 = v24;
  }

  else
  {
    log_OutPublic(*(v7 + 32), "FE_POS", 35000, 0, v20, v21, v22, v23, v33);
    return 2313166858;
  }

  return result;
}

uint64_t wordRecSplit(void *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(*a1 + 160 * a2 + 72);
  if (!*(*a1 + 160 * a2 + 72))
  {
    return 0;
  }

  v5 = 0;
  v6 = *(*a1 + 160 * a2 + 64);
  while (1)
  {
    v7 = v6 + 24 * v5;
    v8 = *(v7 + 16);
    if (*(v7 + 16))
    {
      break;
    }

LABEL_10:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  v9 = 0;
  v10 = 24 * v8;
  while (1)
  {
    if (v5 != a3 || 24 * a4 != v9)
    {
      v11 = *(v6 + 24 * v5 + 8);
      if (*(v11 + v9) == *(*(v6 + 24 * a3 + 8) + 24 * a4) && !*(v11 + v9 + 4))
      {
        return 1;
      }
    }

    v9 += 24;
    if (v10 == v9)
    {
      goto LABEL_10;
    }
  }
}

uint64_t statpos_alignDisambiguatedPOSToLingdb(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a1 + 648);
  v79 = *a1;
  if (!*(a1 + 656))
  {
    goto LABEL_82;
  }

  v9 = 0;
  v81 = 0;
  v10 = 0;
  v11 = *(a1 + 648);
  v82 = vdupq_n_s64(4uLL);
  do
  {
    v83 = v10;
    v84 = v9;
    v85 = v11;
    v91 = v11 + 160 * v9;
    v12 = *(v91 + 72);
    if (*(v91 + 72))
    {
      v13 = 0;
      v15 = *(a1 + 304);
      v14 = *(a1 + 312);
      v16 = *(v91 + 64);
      v17 = *(v91 + 88);
      do
      {
        v18 = (v16 + 24 * v13);
        if (!strcmp((v15 + *(v14 + 4 * *v18)), v17))
        {
          *(v91 + 96) = 1;
          v19 = *(v18 + 8);
          if (*(v18 + 8))
          {
            v20 = (v19 + 3) & 0x1FFFC;
            v21 = vdupq_n_s64(v19 - 1);
            v22 = (*(v18 + 1) + 52);
            v23 = xmmword_1C378AF00;
            v24 = xmmword_1C378AEF0;
            do
            {
              v25 = vmovn_s64(vcgeq_u64(v21, v23));
              if (vuzp1_s16(v25, *v21.i8).u8[0])
              {
                *(v22 - 12) = 1;
              }

              if (vuzp1_s16(v25, *&v21).i8[2])
              {
                *(v22 - 6) = 1;
              }

              if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v24))).i32[1])
              {
                *v22 = 1;
                v22[6] = 1;
              }

              v26 = vdupq_n_s64(4uLL);
              v24 = vaddq_s64(v24, v26);
              v23 = vaddq_s64(v23, v26);
              v22 += 24;
              v20 -= 4;
            }

            while (v20);
          }
        }

        ++v13;
      }

      while (v13 != v12);
    }

    if (*(a1 + 144) != 1)
    {
      v10 = v83;
      v27 = v84;
LABEL_20:
      v11 = v85;
      goto LABEL_21;
    }

    v11 = v85;
    if (*(v91 + 96))
    {
      v10 = v83;
      v27 = v84;
      goto LABEL_21;
    }

    v10 = v83;
    if (!v12)
    {
      v27 = v84;
      goto LABEL_21;
    }

    v44 = 0;
    LOWORD(v45) = 0;
    v88 = *(a1 + 312);
    v89 = *(a1 + 304);
    v87 = *(v91 + 64);
    v46 = strlen(*(v91 + 88));
    do
    {
      v47 = strlen((v89 + *(v88 + 4 * *(v87 + 24 * v44))));
      if (v46 >= v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = v46;
      }

      if (v48)
      {
        for (i = 0; i < v48; ++i)
        {
          if (*(v89 + *(v88 + 4 * *(v87 + 24 * v44)) + i) != *(*(v91 + 88) + i))
          {
            break;
          }
        }
      }

      else
      {
        i = 0;
      }

      v50 = i > v45;
      if (i <= v45)
      {
        v45 = v45;
      }

      else
      {
        v45 = i;
      }

      if (v50)
      {
        v10 = v44;
      }

      else
      {
        v10 = v10;
      }

      ++v44;
    }

    while (v44 != v12);
    if (!v45)
    {
      v27 = v84;
      goto LABEL_20;
    }

    v51 = v10;
    v52 = 3 * v10;
    v77 = *(a1 + 304) + *(*(a1 + 312) + 4 * *(*(v91 + 64) + 8 * v52));
    v75 = **(v91 + 48);
    log_OutText(*(v79 + 32), "FE_POS", 5, 0, "Word[%d] %s select word record with POS %s, (closest to predicted POS %s using longest match)", a6, a7, a8, v81);
    v11 = *(a1 + 648);
    v27 = v84;
    v53 = v11 + 160 * v84;
    *(v53 + 96) = 1;
    v54 = *(v53 + 64) + 8 * v52;
    v55 = *(v54 + 16);
    if (*(v54 + 16))
    {
      v56 = *(v54 + 8);
      v57 = (v55 + 3) & 0x1FFFC;
      v58 = vdupq_n_s64(v55 - 1);
      v59 = (v56 + 52);
      v60 = xmmword_1C378AF00;
      v61 = xmmword_1C378AEF0;
      v10 = v51;
      do
      {
        v62 = vmovn_s64(vcgeq_u64(v58, v60));
        if (vuzp1_s16(v62, *v58.i8).u8[0])
        {
          *(v59 - 12) = 1;
        }

        if (vuzp1_s16(v62, *&v58).i8[2])
        {
          *(v59 - 6) = 1;
        }

        if (vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v61))).i32[1])
        {
          *v59 = 1;
          v59[6] = 1;
        }

        v61 = vaddq_s64(v61, v82);
        v60 = vaddq_s64(v60, v82);
        v59 += 24;
        v57 -= 4;
      }

      while (v57);
    }

    else
    {
      v10 = v51;
    }

LABEL_21:
    v28 = v11 + 160 * v27;
    if (!*(v28 + 96))
    {
      if (!a2)
      {
        v76 = *(v28 + 88);
        v78 = *(v28 + 80);
        v74 = **(v28 + 48);
        log_OutText(*(v79 + 32), "FE_POS", 5, 0, "Warning : no matching tags for word[%d] %s (predicted=%s, lexicon=%s)", a6, a7, a8, v81);
        v11 = *v8;
      }

      v29 = v11 + 160 * v27;
      *(v29 + 96) = 1;
      v30 = *(v29 + 72);
      if (v30)
      {
        v31 = 0;
        v32 = *(v11 + 160 * v27 + 64);
        do
        {
          v33 = v32 + 24 * v31;
          v34 = *(v33 + 16);
          if (*(v33 + 16))
          {
            v35 = *(v33 + 8);
            v36 = (v34 + 3) & 0x1FFFC;
            v37 = vdupq_n_s64(v34 - 1);
            v38 = (v35 + 52);
            v39 = xmmword_1C378AF00;
            v40 = xmmword_1C378AEF0;
            do
            {
              v41 = vmovn_s64(vcgeq_u64(v37, v39));
              if (vuzp1_s16(v41, *v37.i8).u8[0])
              {
                *(v38 - 12) = 1;
              }

              if (vuzp1_s16(v41, *&v37).i8[2])
              {
                *(v38 - 6) = 1;
              }

              if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v40))).i32[1])
              {
                *v38 = 1;
                v38[6] = 1;
              }

              v42 = vdupq_n_s64(4uLL);
              v40 = vaddq_s64(v40, v42);
              v39 = vaddq_s64(v39, v42);
              v38 += 24;
              v36 -= 4;
            }

            while (v36);
          }

          ++v31;
        }

        while (v31 != v30);
      }
    }

    v9 = v27 + 1;
    v43 = *(a1 + 656);
    v81 = v9;
  }

  while (v9 < v43);
  if (*(a1 + 656))
  {
    v63 = 0;
    v90 = *v8;
    do
    {
      v92 = v43;
      v64 = v90 + 160 * v63;
      v65 = *(v64 + 72);
      if (*(v64 + 72))
      {
        v66 = 0;
        v67 = *(v90 + 160 * v63 + 64);
        do
        {
          v68 = v67 + 24 * v66;
          v69 = *(v68 + 16);
          if (*(v68 + 16))
          {
            v70 = 0;
            v71 = (*(v68 + 8) + 8);
            do
            {
              if (*(v71 - 1) == 1 && wordRecSplit(v8, v63, v66, v70))
              {
                *v71 = 1;
              }

              v71 += 6;
              ++v70;
            }

            while (v69 != v70);
          }

          ++v66;
        }

        while (v66 != v65);
      }

      ++v63;
      v43 = v92;
    }

    while (v63 != v92);
  }

LABEL_82:
  v72 = *(a1 + 1416);

  return printSent_0(v79, a1 + 8, v8, "after statpos_alignDisambiguatedPOSToLingdb()", v72, a2, a7, a8);
}

uint64_t statpos_updatePOSLingdbWithDisambiguatedPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v126[33] = *MEMORY[0x1E69E9840];
  v123 = 0;
  v124 = 0;
  v121 = 0;
  v122 = 0;
  v120 = 0;
  __s = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v13 = a4 + 8;
  v12 = *a4;
  v14 = (*(a1 + 104))(a2, a3, 1, 0, &v124);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  v15 = (*(a1 + 184))(a2, a3, v124, 0, &v124 + 2);
  if ((v15 & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (HIWORD(v124) != 1)
  {
    goto LABEL_50;
  }

  v15 = (*(a1 + 176))(a2, a3, v124, 0, &v118, &v122 + 2);
  if ((v15 & 0x80000000) != 0 || HIWORD(v122) < 2u)
  {
    goto LABEL_50;
  }

  v14 = (*(a1 + 104))(a2, a3, 2, v124, &v123 + 2);
  if ((v14 & 0x80000000) != 0)
  {
LABEL_49:
    v15 = v14;
    goto LABEL_50;
  }

  v110 = a5;
  v112 = v12;
  v16 = (a4 + 648);
  v119 = 0;
  **(a4 + 728) = 0;
  while (HIWORD(v123))
  {
    WordIdx_0 = (*(a1 + 168))(a2, a3);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    if (v121 > 0xA || ((1 << v121) & 0x610) == 0)
    {
      goto LABEL_44;
    }

    WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v123), 1, 1, &v120, &v122 + 2);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v123), 2, 1, &v120 + 2, &v122 + 2);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    if (v120 == HIWORD(v120))
    {
      goto LABEL_44;
    }

    WordIdx_0 = getWordIdx_0(*a4, v16, v120, HIWORD(v120), &v119, v19, v20, v21);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    v22 = *(a4 + 1436);
    v23 = v119;
    if (!v22)
    {
      if (subsumedWordRec(v16, v119))
      {
        goto LABEL_44;
      }
    }

    v114 = 0;
    v24 = HIWORD(v123);
    if (!(checkWordRecPOS(v16, v23, HIWORD(v123), &v114) | v22))
    {
      goto LABEL_44;
    }

    WordIdx_0 = (*(a1 + 176))(a2, a3, v24, 5, &__s, &v122 + 2);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }

    v28 = v112;
    if (a6 == 1 && v121 == 4)
    {
      updated = updateNLUField_0(v112, a1, a2, a3, HIWORD(v123), v13, v16, v23, __s, 0, 0, 0);
      if ((updated & 0x80000000) != 0)
      {
        goto LABEL_139;
      }

      v33 = v112;
      v34 = v16;
      v103 = **(*v16 + 160 * v23 + 48);
      log_OutText(*(v112 + 32), "FE_POS", 5, 0, "SET DCT WORD Word[%d] %s POS %s to NLU POS", v30, v31, v32, v23);
    }

    else
    {
      if (v114 == 1)
      {
        updated = getNewPOS(v112, v16, v23, HIWORD(v123), &v115);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v104 = **(*v16 + 160 * v23 + 48);
        log_OutText(*(v112 + 32), "FE_POS", 5, 0, "REPLACE Word[%d] %s POS %s", v38, v39, v40, v23);
        v41 = v115;
        log_OutText(*(v112 + 32), "FE_POS", 5, 0, "\twith %s", v42, v43, v44, v115);
        v45 = strlen(v41);
        v46 = (*(a1 + 160))(a2, a3, HIWORD(v123), 5, (v45 + 1), v41, &v122);
        if ((v46 & 0x80000000) != 0)
        {
          v15 = v46;
          v28 = v112;
          goto LABEL_47;
        }

        heap_Free(*(v112 + 8), v41);
        v115 = 0;
        v28 = v112;
      }

      else if (*(a4 + 1440))
      {
        if (*__s == 42 && !__s[1])
        {
          v105 = **(*v16 + 160 * v23 + 48);
          log_OutText(*(v112 + 32), "FE_POS", 5, 0, "REPLACE Word[%d] %s POS %s", v25, v26, v27, v23);
          log_OutText(*(v112 + 32), "FE_POS", 5, 0, "\twith %s", v47, v48, v49, *(*v16 + 160 * v23 + 88));
          v50 = strlen(*(*v16 + 160 * v23 + 88));
          v28 = v112;
          updated = (*(a1 + 160))(a2, a3, HIWORD(v123), 5, (v50 + 1), *(*v16 + 160 * v23 + 88), &v122);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_139;
          }
        }
      }

      updated = updateNLUField_0(v28, a1, a2, a3, HIWORD(v123), v13, v16, v23, *(*v16 + 160 * v23 + 88), 0, 0, 0);
      if ((updated & 0x80000000) != 0)
      {
        goto LABEL_139;
      }

      if (a6 != 1)
      {
        goto LABEL_44;
      }

      v106 = *(*v16 + 160 * v23 + 88);
      log_OutText(*(v112 + 32), "FE_POS", 5, 0, "set Word[%d] POS to %s", v51, v52, v53, v23);
      v54 = strlen(*(*v16 + 160 * v23 + 88));
      v33 = v112;
      v34 = v16;
      v55 = (*(a1 + 160))(a2, a3, HIWORD(v123), 5, (v54 + 1), *(*v16 + 160 * v23 + 88), &v122);
      if ((v55 & 0x80000000) != 0)
      {
        v15 = v55;
        v28 = v112;
        goto LABEL_47;
      }
    }

    v56 = *v34 + 160 * v23;
    if (*(v56 + 24))
    {
      v107 = *(v56 + 32);
      log_OutText(*(v33 + 32), "FE_POS", 5, 0, "keep Word[%d] PHON", v35, v36, v37, v23);
      v16 = v34;
    }

    else
    {
      v57 = (*(a1 + 176))(a2, a3, HIWORD(v123), 3, &v116, &v122 + 2);
      if ((v57 & 0x80000000) != 0)
      {
        v15 = v57;
        v28 = v33;
        goto LABEL_47;
      }

      v16 = v34;
      v58 = strlen(*(*v34 + 160 * v23 + 32));
      v59 = (*(a1 + 160))(a2, a3, HIWORD(v123), 3, (v58 + 1), *(*v34 + 160 * v23 + 32), &v122);
      if ((v59 & 0x80000000) != 0)
      {
        v15 = v59;
        v28 = v112;
        goto LABEL_47;
      }

      v108 = *(*v34 + 160 * v23 + 32);
      log_OutText(*(v112 + 32), "FE_POS", 5, 0, "set Word[%d] PHON to %s", v60, v61, v62, v23);
    }

    a6 = 1;
LABEL_44:
    WordIdx_0 = (*(a1 + 120))(a2, a3, HIWORD(v123), &v123 + 2);
    if ((WordIdx_0 & 0x80000000) != 0)
    {
      goto LABEL_45;
    }
  }

  v15 = (*(a1 + 104))(a2, a3, 2, v124, &v123 + 2);
  v28 = v112;
  if ((v15 & 0x80000000) != 0)
  {
    goto LABEL_47;
  }

  v68 = HIWORD(v123);
  if (!HIWORD(v123))
  {
LABEL_73:
    if (v110 != 1)
    {
      goto LABEL_47;
    }

    v113 = 0;
    log_OutText(*(v28 + 32), "FE_POS", 5, 0, "No SGRAM : removing duplicate tags on lingdb words", v65, v66, v67, 0);
    memset(v125, 0, sizeof(v125));
    memset(v126, 0, 256);
    v119 = 0;
    WordIdx_0 = (*(a1 + 104))(a2, a3, 2, v124, &v123 + 2);
    if ((WordIdx_0 & 0x80000000) == 0)
    {
      v111 = v16;
      v77 = HIWORD(v123);
      if (HIWORD(v123))
      {
        LODWORD(v78) = 0;
        v79 = 0xFFFFLL;
        while (1)
        {
          WordIdx_0 = (*(a1 + 120))(a2, a3, v77, &v123);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v123), 0, 1, &v121, &v122 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          if (v121 > 0xA || ((1 << v121) & 0x610) == 0)
          {
            goto LABEL_86;
          }

          WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v123), 1, 1, &v120, &v122 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v123), 2, 1, &v120 + 2, &v122 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          if (v120 == HIWORD(v120))
          {
LABEL_86:
            v84 = v79;
          }

          else
          {
            WordIdx_0 = getWordIdx_0(*a4, v111, v120, HIWORD(v120), &v119, v81, v82, v83);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            v84 = v119;
            if (subsumedWordRec(v111, v119))
            {
              WordIdx_0 = (*(a1 + 192))(a2, a3, HIWORD(v123));
              if ((WordIdx_0 & 0x80000000) != 0)
              {
                goto LABEL_45;
              }

              goto LABEL_112;
            }

            WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v123), 5, &__s, &v122 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v123), 3, &v116, &v122 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            WordIdx_0 = (*(a1 + 168))(a2, a3, HIWORD(v123), 7, 1, &v113, &v122 + 2);
            if ((WordIdx_0 & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            if (v79 == 0xFFFF || v84 == v79)
            {
              if (v78 > 0x7F)
              {
                goto LABEL_112;
              }
            }

            else
            {
              if (v78 >= 2)
              {
                v85 = 0;
                v86 = -1;
                v87 = -1;
                v78 = v78;
                do
                {
                  v88 = *(v125 + v85);
                  if (v88 <= v86)
                  {
                    v87 = v85;
                  }

                  if (v88 < v86)
                  {
                    v86 = *(v125 + v85);
                  }

                  ++v85;
                }

                while (v78 != v85);
                v89 = v87;
                v90 = v126;
                while (1)
                {
                  if (v89)
                  {
                    WordIdx_0 = (*(a1 + 192))(a2, a3, *v90);
                    if ((WordIdx_0 & 0x80000000) != 0)
                    {
                      goto LABEL_45;
                    }
                  }

                  v90 = (v90 + 2);
                  --v89;
                  if (!--v78)
                  {
                    goto LABEL_111;
                  }
                }
              }

              LODWORD(v78) = 0;
            }

LABEL_111:
            *(v126 + v78) = HIWORD(v123);
            *(v125 + v78) = v113;
            LODWORD(v78) = v78 + 1;
          }

LABEL_112:
          v77 = v123;
          HIWORD(v123) = v123;
          v79 = v84;
          if (!v123)
          {
            if (v78 < 2)
            {
              break;
            }

            v91 = 0;
            v92 = -1;
            v93 = -1;
            v78 = v78;
            do
            {
              v94 = *(v125 + v91);
              if (v94 <= v92)
              {
                v93 = v91;
              }

              if (v94 < v92)
              {
                v92 = *(v125 + v91);
              }

              ++v91;
            }

            while (v78 != v91);
            v95 = v93;
            v96 = v126;
            while (1)
            {
              if (v95)
              {
                WordIdx_0 = (*(a1 + 192))(a2, a3, *v96);
                if ((WordIdx_0 & 0x80000000) != 0)
                {
                  goto LABEL_45;
                }
              }

              v96 = (v96 + 2);
              --v95;
              if (!--v78)
              {
                goto LABEL_124;
              }
            }
          }
        }
      }

LABEL_124:
      v15 = (*(a1 + 104))(a2, a3, 2, v124, &v123 + 2);
      if ((v15 & 0x80000000) != 0 || (v97 = HIWORD(v123)) == 0)
      {
LABEL_46:
        v28 = v112;
        goto LABEL_47;
      }

      v98 = 0;
      while (1)
      {
        WordIdx_0 = (*(a1 + 168))(a2, a3, v97, 0, 1, &v121, &v122 + 2);
        if ((WordIdx_0 & 0x80000000) != 0)
        {
          break;
        }

        if (v121 <= 0xA && ((1 << v121) & 0x610) != 0)
        {
          WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v123), 5, &__s, &v122 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            break;
          }

          WordIdx_0 = (*(a1 + 176))(a2, a3, HIWORD(v123), 3, &v116, &v122 + 2);
          if ((WordIdx_0 & 0x80000000) != 0)
          {
            break;
          }

          if (v98 < *(a4 + 656))
          {
            v109 = **(*v111 + 160 * v98 + 48);
            log_OutText(*(v112 + 32), "FE_POS", 5, 0, "(no sgram) word %d %s POS=%s PHON=%s recId=%d", v100, v101, v102, v98);
            v98 = (v98 + 1);
          }
        }

        v15 = (*(a1 + 120))(a2, a3, HIWORD(v123), &v123);
        if ((v15 & 0x80000000) == 0)
        {
          v97 = v123;
          HIWORD(v123) = v123;
          if (v123)
          {
            continue;
          }
        }

        goto LABEL_46;
      }
    }

LABEL_45:
    v15 = WordIdx_0;
    goto LABEL_46;
  }

  while (1)
  {
    updated = (*(a1 + 120))(a2, a3, v68, &v123);
    if ((updated & 0x80000000) != 0)
    {
      break;
    }

    v15 = (*(a1 + 168))(a2, a3, HIWORD(v123), 0, 1, &v121, &v122 + 2);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    if (v121 <= 0xA && ((1 << v121) & 0x610) != 0)
    {
      updated = (*(a1 + 176))(a2, a3, HIWORD(v123), 5, &__s, &v122 + 2);
      if ((updated & 0x80000000) != 0)
      {
        break;
      }

      v70 = __s;
      v71 = strlen(__s);
      v72 = *__s;
      v73 = __s;
      while (v72 == 92)
      {
        --v71;
        v74 = *++v73;
        v72 = v74;
      }

      memmove(__s, v73, (v71 + 1));
      v75 = strchr(v70, 92);
      if (v75)
      {
        *v75 = 0;
      }

      v76 = strlen(__s);
      WordIdx_0 = (*(a1 + 160))(a2, a3, HIWORD(v123), 5, (v76 + 1), __s, &v122);
      if ((WordIdx_0 & 0x80000000) != 0)
      {
        goto LABEL_45;
      }

      updated = (*(a1 + 184))(a2, a3, HIWORD(v123), 14, &v124 + 2);
      v28 = v112;
      if ((updated & 0x80000000) != 0)
      {
        break;
      }

      if (HIWORD(v124) != 1)
      {
        goto LABEL_146;
      }

      v126[0] = 0;
      *&v125[0] = 0;
      v113 = 0;
      v15 = (*(a1 + 176))(a2, a3, HIWORD(v123), 14, v126, &v122 + 2);
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_47;
      }

      if (HIWORD(v122) < 2u || !hlp_NLUStrFind(v126[0], "POS", v125, &v113))
      {
LABEL_146:
        v15 = (*(a1 + 192))(a2, a3, HIWORD(v123));
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_47;
        }
      }
    }

    v68 = v123;
    HIWORD(v123) = v123;
    if (!v123)
    {
      goto LABEL_73;
    }
  }

LABEL_139:
  v15 = updated;
LABEL_47:
  **(a4 + 728) = 0;
  if (v115)
  {
    heap_Free(*(v28 + 8), v115);
  }

LABEL_50:
  v63 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t subsumedWordRec(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    if (160 * a2 != v2)
    {
      v3 = (*a1 + 160 * a2);
      if (*v3 >= *(*a1 + v2) && v3[1] <= *(*a1 + v2 + 2))
      {
        break;
      }
    }

    v2 += 160;
    if (160 * *(a1 + 8) == v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t statpos_disambiguatePOSTags(uint64_t a1)
{
  v2 = *a1;
  v3 = heap_Calloc(*(*a1 + 8), 1, 1024);
  *(a1 + 776) = v3;
  if (!v3)
  {
    log_OutPublic(*(v2 + 32), "FE_POS", 35000, 0, v4, v5, v6, v7, v12);
    return 2313166858;
  }

  if (*(a1 + 1336) == 1)
  {
    v8 = statpos_crf_label(v2, a1 + 1320, (a1 + 648), (a1 + 8), 1);
LABEL_7:
    v9 = v8;
    goto LABEL_9;
  }

  if (*(a1 + 804) == 1)
  {
    v8 = statpos_igtrees_label(v2, a1 + 8, a1 + 648, a1 + 784);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_9:
  v10 = *(a1 + 776);
  if (v10)
  {
    heap_Free(*(v2 + 8), v10);
    *(a1 + 776) = 0;
  }

  return v9;
}

uint64_t statpos_setMorphemePRON(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 656))
  {
    v6 = 0;
    v7 = (a4 + 728);
    v8 = 120;
    v9 = *a4;
    while (1)
    {
      **(a4 + 728) = 0;
      v10 = *(a4 + 648);
      v11 = *(v10 + v8);
      if (!v11)
      {
        v11 = **(v10 + v8 - 72);
      }

      v12 = statcomp_add2Str(v9, (a4 + 728), (a4 + 744), v11);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v16 = *(a4 + 648) + v8;
      if (*(v16 - 96) == 1)
      {
        break;
      }

      if (!*(v16 - 32))
      {
        goto LABEL_14;
      }

      v12 = statcomp_add2Str(v9, (a4 + 728), (a4 + 744), "/");
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v12 = statcomp_add2Str(v9, (a4 + 728), (a4 + 744), *(*(a4 + 648) + v8 - 32));
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      info_from_dct = statpos_get_info_from_dct(v9, *(a4 + 752), *(a4 + 760), *(a4 + 768), "morph_pos", *(a4 + 728), (*(a4 + 648) + v8 - 88), 0, "STR");
      if ((info_from_dct & 0x80000000) != 0)
      {
        return info_from_dct;
      }

      v21 = *(v9 + 32);
      v22 = *(a4 + 728);
      if (*(*(a4 + 648) + v8 - 88))
      {
        v33 = *(*(a4 + 648) + v8 - 88);
        log_OutText(v21, "FE_POS", 5, 0, "lookup %s ; transcription %s", v17, v18, v19, *(a4 + 728));
      }

      else
      {
        v23 = a3;
        log_OutText(v21, "FE_POS", 5, 0, "lookup %s ; FAILED", v17, v18, v19, *(a4 + 728));
        v24 = strlen(v11);
        v25 = Utf8_LengthInUtf8chars(v11, v24);
        v26 = strlen(*(*(a4 + 648) + v8 - 32));
        if (Utf8_LengthInUtf8chars(*(*(a4 + 648) + v8 - 32), v26) > v25)
        {
          v27 = strlen(*(*(a4 + 648) + v8 - 32));
          v25 = Utf8_LengthInUtf8chars(*(*(a4 + 648) + v8 - 32), v27);
        }

        v12 = statpos_growAndSetLayer(v9, (a4 + 1384), (a4 + 1400), v11, v25);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v12 = statpos_growAndSetLayer(v9, (a4 + 1392), (a4 + 1408), *(*(a4 + 648) + v8 - 32), v25);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        a3 = v23;
        info_from_dct = statPOS_call_one_word(v9, a1, a2, v23, (a4 + 1384), (a4 + 1392), (*(a4 + 648) + v8 - 88), v28);
        if ((info_from_dct & 0x80000000) != 0)
        {
          return info_from_dct;
        }

        v34 = *(*(a4 + 648) + v8 - 88);
        log_OutText(*(v9 + 32), "FE_POS", 5, 0, "%s ; one_word transcription %s", v29, v30, v31, v11);
      }

LABEL_15:
      ++v6;
      v8 += 160;
      if (v6 >= *(a4 + 656))
      {
        goto LABEL_24;
      }
    }

    log_OutText(*(v9 + 32), "FE_POS", 5, 0, "SKIP DCT LOOKUP WORD %s", v13, v14, v15, *v7);
LABEL_14:
    info_from_dct = 0;
    goto LABEL_15;
  }

  info_from_dct = 0;
LABEL_24:
  **(a4 + 728) = 0;
  return info_from_dct;
}

uint64_t statpos_growAndSetLayer(uint64_t a1, const char **a2, void *a3, char *__src, unsigned int a5)
{
  v8 = *a2;
  if (*a3 < a5)
  {
    v11 = heap_Realloc(*(a1 + 8), v8, a5 + 2);
    if (!v11)
    {
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v12, v13, v14, v15, v18);
      return 2313166858;
    }

    v8 = v11;
    *a2 = v11;
    *a3 = a5 + 2;
  }

  strcpy(v8, __src);
  for (i = strlen(__src); i < a5; ++i)
  {
    *&(*a2)[strlen(*a2)] = 126;
  }

  return 0;
}

uint64_t statpos_getUniqDynamicPOS(uint64_t a1, uint64_t a2, char *__s, _DWORD *a4)
{
  *a4 = -1;
  v8 = *(a2 + 312);
  if (!*(a2 + 312))
  {
LABEL_5:
    v12 = strlen(__s);
    v13 = v12;
    v14 = v12;
    v15 = *(a2 + 316);
    if (*(a2 + 324) + v12 >= v15)
    {
      if (v12 >= 0x80u)
      {
        v16 = (v12 + 32);
      }

      else
      {
        v16 = 128;
      }

      v17 = heap_Realloc(*(a1 + 8), *(a2 + 296), (v16 + v15));
      if (!v17)
      {
        goto LABEL_17;
      }

      *(a2 + 296) = v17;
      *(a2 + 316) += v16;
      LODWORD(v8) = *(a2 + 312);
    }

    v22 = *(a2 + 320);
    if (v8 < v22)
    {
LABEL_14:
      v24 = *(a2 + 296);
      if (*(a2 + 324))
      {
        strcat(&v24[*(a2 + 324)], __s);
      }

      else
      {
        strcpy(v24, __s);
      }

      v25 = 0;
      *(*(a2 + 296) + v14 + *(a2 + 324) + 1) = 0;
      v26 = *(a2 + 324);
      v27 = *(a2 + 312);
      *(*(a2 + 304) + 4 * *(a2 + 312)) = v26;
      *(a2 + 324) = v13 + v26 + 1;
      *a4 = v27;
      *(a2 + 312) = v27 + 1;
      return v25;
    }

    v23 = heap_Realloc(*(a1 + 8), *(a2 + 304), 4 * (v22 + 16));
    if (v23)
    {
      *(a2 + 304) = v23;
      *(a2 + 320) += 16;
      goto LABEL_14;
    }

LABEL_17:
    v25 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v18, v19, v20, v21, v29);
    return v25;
  }

  v9 = 0;
  v10 = *(a2 + 296);
  v11 = *(a2 + 304);
  while (strcmp(__s, (v10 + *(v11 + 4 * v9))))
  {
    if (v8 == ++v9)
    {
      goto LABEL_5;
    }
  }

  v25 = 0;
  *a4 = v9;
  return v25;
}

uint64_t addPOSandPHR(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, int a5, const char *a6, unsigned int a7, const char *a8, unsigned __int16 a9)
{
  v11 = a4;
  if (a4 == a5)
  {
    if (a4 + 1 == *(a3 + 4))
    {
      LOWORD(a5) = a4 + 1;
    }

    else
    {
      LOWORD(a5) = a4;
    }
  }

  if (a4 >= a5)
  {
    return 0;
  }

  v14 = a7;
  v15 = a4;
  v29 = a5;
  v16 = *a3;
  for (i = 160 * a4 + 104; ; i += 160)
  {
    v18 = *(*(v16 + i - 56) + 24);
    if (v18)
    {
      heap_Free(*(a1 + 8), v18);
      v19 = (*a3 + i);
      *(*(v19 - 7) + 24) = 0;
      heap_Free(*(a1 + 8), *v19);
      *(*a3 + i) = 0;
    }

    v20 = heap_Calloc(*(a1 + 8), 1, v14 + 1);
    *(*(*a3 + i - 56) + 24) = v20;
    if (!v20)
    {
      break;
    }

    if (a6)
    {
      strncat(v20, a6, v14);
      v20 = *(*(*a3 + i - 56) + 24);
    }

    a3[6] = v20;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag REF POS %s", v22, v23, v24, v20);
    v25 = statpos_retagREFPOS(a1, a2, a3, v15);
    if ((v25 & 0x80000000) != 0)
    {
      return v25;
    }

    v26 = heap_Calloc(*(a1 + 8), 1, a9 + 1);
    v16 = *a3;
    *(*a3 + i) = v26;
    if (!v26)
    {
      break;
    }

    if (a8)
    {
      strncat(v26, a8, a9);
      v16 = *a3;
    }

    *(v16 + i - 100) = v11;
    if (v29 == ++v15)
    {
      return v25;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v21, v22, v23, v24, v28);
  return 2313166858;
}

uint64_t checkSpan_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    return 0;
  }

  v13 = v3;
  v7 = heap_Calloc(*(a1 + 8), 1, (24 * *(a2 + 376)) | 1);
  if (v7)
  {
    v12 = v7;
    result = 0;
    *a3 = v12;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v8, v9, v10, v11, v13);
    return 2313166858;
  }

  return result;
}

uint64_t checkAllocAndZero(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = a3;
  if (v5)
  {
    v8 = heap_Realloc(v6, v5, a3);
    if (v8)
    {
      v13 = v8;
      bzero(v8, v7);
LABEL_5:
      result = 0;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    v13 = heap_Calloc(v6, 1, a3);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v9, v10, v11, v12, v15);
  return 2313166858;
}

uint64_t loc_CopyValue(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = 2313166855;
  if (a1 && a2 && a3)
  {
    v6 = heap_Alloc(a2, 5);
    if (v6)
    {
      v3 = 0;
      *v6 = *a1;
      *a3 = v6;
    }

    else
    {
      return 2313166858;
    }
  }

  return v3;
}

void *loc_FreeValue(void *result, void *a2)
{
  if (result)
  {
    return heap_Free(a2, result);
  }

  return result;
}

uint64_t logSTATPOSRULE_TRule(uint64_t result, const char **a2, _WORD *a3, char *__s, uint64_t *a5, uint64_t **a6)
{
  if (result)
  {
    if (!*a6 || (result = logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, *a6), (result & 0x80000000) == 0))
    {
      *__s = 2121504;
      result = statcomp_add2Str(*a5, a2, a3, __s);
      if ((result & 0x80000000) == 0)
      {
        v11 = a6[1];
        if (!v11 || (result = logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, v11), (result & 0x80000000) == 0))
        {
          *__s = 2121504;
          result = statcomp_add2Str(*a5, a2, a3, __s);
          if ((result & 0x80000000) == 0)
          {
            v12 = a6[2];
            if (v12)
            {

              return logSTATPOSCONTEXT_TRule(a2, a3, __s, a5, v12);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t logSTATPOSCONTEXT_TRule(const char **a1, _WORD *a2, char *__s, uint64_t *a4, uint64_t *a5)
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
      result = statcomp_add2Str(*a4, a1, a2, "[");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statcomp_add2Str(*a4, a1, a2, (a4[37] + *(a4[38] + 4 * *v13)));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      sprintf(__s, " %d(", *(v12 + v10 + 2));
      result = statcomp_add2Str(*a4, a1, a2, __s);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statcomp_add2Str(*a4, a1, a2, (a4[32] + *(a4[33] + 4 * *(v12 + v10 + 2))));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statcomp_add2Str(*a4, a1, a2, ")] ");
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
        result = statcomp_add2Str(*a4, a1, a2, __s);
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

uint64_t statpos_rules_unload(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = a1[33];
  if (v10)
  {
    heap_Free(*(v9 + 8), v10);
    a1[33] = 0;
  }

  v11 = a1[35];
  if (v11)
  {
    v12 = ssftriff_reader_ReleaseChunkData(v11, v10, a3, a4, a5, a6, a7, a8);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    a1[35] = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[38];
  if (v13)
  {
    heap_Free(*(v9 + 8), v13);
    a1[38] = 0;
  }

  v14 = a1[41];
  if (v14)
  {
    v12 = ssftriff_reader_ReleaseChunkData(v14, v13, a3, a4, a5, a6, a7, a8);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    a1[41] = 0;
  }

  v15 = a1[28];
  if (v15)
  {
    heap_Free(*(v9 + 8), v15);
    a1[28] = 0;
  }

  v16 = a1[30];
  if (v16)
  {
    v12 = ssftriff_reader_ReleaseChunkData(v16, v15, a3, a4, a5, a6, a7, a8);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    a1[30] = 0;
  }

  v17 = a1[42];
  if (v17)
  {
    heap_Free(*(v9 + 8), v17);
    a1[42] = 0;
  }

  v18 = a1[43];
  if (v18)
  {
    heap_Free(*(v9 + 8), v18);
    a1[43] = 0;
  }

  v19 = a1[44];
  if (v19)
  {
    heap_Free(*(v9 + 8), v19);
    a1[44] = 0;
  }

  v20 = a1[45];
  if (v20)
  {
    heap_Free(*(v9 + 8), v20);
    a1[45] = 0;
  }

  v21 = a1[46];
  if (v21)
  {
    heap_Free(*(v9 + 8), v21);
    a1[46] = 0;
  }

  v22 = a1[6];
  if (v22)
  {
    if (*(a1 + 28))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        freeMAPRULE2STR_TRule(v9, (a1[6] + v23));
        ++v24;
        v23 += 32;
      }

      while (v24 < *(a1 + 28));
      v22 = a1[6];
    }

    heap_Free(*(v9 + 8), v22);
    a1[6] = 0;
  }

  *(a1 + 28) = 0;
  v25 = a1[8];
  if (v25)
  {
    if (*(a1 + 36))
    {
      v26 = 0;
      v27 = 0;
      do
      {
        freeMAPRULE2STR_TRule(v9, (a1[8] + v26));
        ++v27;
        v26 += 32;
      }

      while (v27 < *(a1 + 36));
      v25 = a1[8];
    }

    heap_Free(*(v9 + 8), v25);
    a1[8] = 0;
  }

  *(a1 + 36) = 0;
  v28 = a1[10];
  if (v28)
  {
    v29 = *(a1 + 44);
    if (*(a1 + 44))
    {
      v30 = 0;
      v31 = 0;
      do
      {
        if (*(v28 + v30 + 16))
        {
          heap_Free(*(v9 + 8), *(v28 + v30 + 8));
          v28 = a1[10];
          v32 = v28 + v30;
          *(v32 + 8) = 0;
          *(v32 + 16) = 0;
          v29 = *(a1 + 44);
        }

        ++v31;
        v30 += 24;
      }

      while (v31 < v29);
    }

    heap_Free(*(v9 + 8), v28);
    a1[10] = 0;
  }

  *(a1 + 44) = 0;
  if (*(a1 + 52))
  {
    heap_Free(*(v9 + 8), a1[12]);
    a1[12] = 0;
    *(a1 + 52) = 0;
    ssftmap_ObjClose(a1[14]);
  }

  if (a1[18])
  {
    v33 = 0;
    v34 = a1 + 48;
    do
    {
      heap_Free(*(v9 + 8), v34[v33]);
      v34[v33++] = 0;
    }

    while (v33 != 32);
    v35 = a1[18];
    if (v35)
    {
      ssftmap_ObjClose(v35);
      a1[18] = 0;
    }
  }

  v36 = a1[4];
  if (v36)
  {
    heap_Free(*(v9 + 8), v36);
    a1[4] = 0;
  }

  *(a1 + 20) = 0;
  return v12;
}

void *freeMAPRULE2STR_TRule(void *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  if (v4)
  {
    if (*(v4 + 8))
    {
      heap_Free(result[1], *v4);
      *v4 = 0;
      v4 = a2[1];
    }

    result = heap_Free(v3[1], v4);
    a2[1] = 0;
  }

  v5 = a2[2];
  if (v5)
  {
    if (*(v5 + 8))
    {
      heap_Free(v3[1], *v5);
      *v5 = 0;
      v5 = a2[2];
    }

    result = heap_Free(v3[1], v5);
    a2[2] = 0;
  }

  v6 = a2[3];
  if (v6)
  {
    if (*(v6 + 8))
    {
      heap_Free(v3[1], *v6);
      *v6 = 0;
      v6 = a2[3];
    }

    result = heap_Free(v3[1], v6);
    a2[3] = 0;
  }

  return result;
}

uint64_t matchSTATPOSCONTEXT_TRule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int *a6, uint64_t a7, uint64_t a8)
{
  v26 = 1;
  v15 = *a2;
  *a6 = 0;
  *(a5 + 6) = 0;
  if (*(a2 + 8))
  {
    matched = logSTATPOSCONTEXT_TRule((a3 + 80), (a3 + 96), *(a3 + 88), a2, a4);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v25 = *(a3 + 80);
    log_OutText(*(v15 + 32), "FE_POS", 5, 0, "         %s %s", v17, v18, v19, a1);
    **(a3 + 80) = 0;
  }

  else
  {
    matched = 0;
  }

  if (*(a4 + 8))
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      matched = matchREGEX_TRule_0(a2, a3, (*a4 + v21), a5, &v26, a7, a8, a8);
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
      if (v22 >= *(a4 + 8))
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
    *a6 = v23;
  }

  return matched;
}

uint64_t matchREGEX_TRule_0(uint64_t *a1, uint64_t *a2, unsigned __int16 *a3, unsigned int *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v70 = *MEMORY[0x1E69E9840];
  v15 = *(a4 + 2);
  v16 = *a1;
  *a5 = 0;
  if (*(a1 + 4))
  {
    log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           regex %d", a6, a7, a8, a3[1]);
  }

  v17 = *(a3 + 4);
  if (*(a3 + 4))
  {
    if ((v17 & 4) != 0)
    {
      if (v8 == 2)
      {
        ++*(a4 + 4);
      }

      else if (v8 == 1)
      {
        ++*(a4 + 3);
      }

      if (*(a1 + 4))
      {
        v63 = *(a4 + 4);
        log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           DIRECTIVE_MOVE2NEXT - window increased (ruleDef->left_window=%d ruleDef->right_window=%d)", a6, a7, a8, *(a4 + 3));
      }

      v21 = 0;
      goto LABEL_33;
    }

    v68 = a6;
    v18 = (v17 >> 1) & 1;
    v19 = v17 & 1;
  }

  else
  {
    v68 = a6;
    v19 = 0;
    v18 = 0;
  }

  if (*(a1 + 4) >= 2u)
  {
    v67 = a1[37] + *(a1[38] + 4 * *a3);
    v65 = *(a4 + 3);
    v66 = *(a4 + 4);
    v64 = *(a4 + 2);
    log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d bHasComma=%d", a6, a7, a8, STATPOSDOMAIN2STRING[*a4]);
  }

  if (!v18)
  {
    v23 = *a4;
    if (*a4 - 1 <= 2 && v8 != 0)
    {
      if (v8 == 2)
      {
        v15 += *(a4 + 4) + 1;
        if (v15 >= *(a2 + 4))
        {
          goto LABEL_48;
        }
      }

      else if (v8 != 1 || (v15 += ~*(a4 + 3), v15 < 0))
      {
LABEL_48:
        if (*(a1 + 4))
        {
          v29 = *(v16 + 32);
          v30 = "           context not found. rule not applicable. RETURN LH_FALSE";
LABEL_50:
          log_OutText(v29, "FE_POS", 5, 0, v30, a6, a7, a8, v61);
          goto LABEL_140;
        }

        goto LABEL_140;
      }
    }

    if (v23 <= 3)
    {
      switch(v23)
      {
        case 1:
          v26 = *(*(*a2 + 160 * v15 + 48) + 8 * *a3);
          break;
        case 2:
          v26 = *(*(*a2 + 160 * v15 + 56) + 24 * *a3 + 16);
          break;
        case 3:
          v25 = *a3;
          if (v25 == *(a1 + 9))
          {
            v26 = (a2[2] + *(a2[3] + 2 * v15));
            break;
          }

          goto LABEL_42;
        default:
          goto LABEL_71;
      }

LABEL_64:
      if (v26)
      {
        goto LABEL_65;
      }

LABEL_71:
      *a5 = 0;
      if (!*(a1 + 4))
      {
        v21 = 0;
        goto LABEL_129;
      }

      log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           NULL STR FOUND - no match", a6, a7, a8, v61);
      goto LABEL_73;
    }

    if (v23 != 4)
    {
      if (v23 == 5)
      {
        if (*a3 == *(a1 + 9))
        {
          v26 = a2[2];
        }

        else
        {
          v26 = a2[4];
        }

        goto LABEL_64;
      }

      if (v23 != 6)
      {
        goto LABEL_71;
      }

      v26 = a2[6];
      if (v26)
      {
        v25 = *a3;
        if (v25 == *(a1 + 9))
        {
          goto LABEL_65;
        }

        if (v25 == *(a1 + 8))
        {
LABEL_42:
          v26 = *(*(*a2 + 160 * v15 + 48) + 8 * v25);
          goto LABEL_64;
        }

        v50 = "           ERROR : unknown DEF index for POS/ORT rule";
      }

      else
      {
        v50 = "           ERROR : no POS string to match";
      }

      goto LABEL_125;
    }

    v31 = *a2;
    v32 = *(a4 + 2);
    v33 = *(*a2 + 160 * *(a4 + 2) + 56);
    if (!v33 || !*(v33 + 24 * *(a1 + 12)))
    {
      goto LABEL_140;
    }

    v34 = *a1;
    if (v8 == 2)
    {
      v54 = *(a2 + 4);
      if (v32 + 1 != v54)
      {
        v57 = *(a4 + 4) + 1;
        if ((v57 & 0x10000) != 0)
        {
          v58 = *(a4 + 2);
LABEL_118:
          v60 = *(a1 + 4);
          if (v54 > v58)
          {
            if (v60 >= 2)
            {
              log_OutText(*(v34 + 32), "FE_POS", 5, 0, "           [3] _RIGHT wordIdx=%d", a6, a7, a8, *(a4 + 2));
            }

            LOWORD(v32) = v58;
            goto LABEL_122;
          }
        }

        else
        {
          v58 = *(a4 + 2);
          while (v54 > v58)
          {
            v58 = *(*(v31 + 160 * v58 + 56) + 24 * *(a1 + 12) + 10) + 1;
            if (!--v57)
            {
              goto LABEL_118;
            }
          }

          v60 = *(a1 + 4);
        }

        if (v60 >= 2)
        {
          v29 = *(v34 + 32);
          v30 = "           [2] _RIGHT doesnt exist, return LH_FALSE";
          goto LABEL_50;
        }

LABEL_140:
        v21 = 0;
        goto LABEL_141;
      }

      if (*(a1 + 4) < 2u)
      {
        goto LABEL_140;
      }

      v55 = *(v34 + 32);
      v56 = "           [1] _RIGHT doesnt exist, return LH_FALSE";
    }

    else
    {
      if (v8 != 1)
      {
        if (!v8 && *(a1 + 4) >= 2u)
        {
          log_OutText(*(v34 + 32), "FE_POS", 5, 0, "           _CUR wordIdx=%d", a6, a7, a8, *(a4 + 2));
          LOWORD(v32) = *(a4 + 2);
        }

LABEL_122:
        v26 = *(*(*a2 + 160 * v32 + 144) + 8 * *a3);
        if (v26)
        {
LABEL_65:
          if (*(a1 + 4))
          {
            log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           STR=%s", a6, a7, a8, v26);
          }

          v35 = a3[1];
          v36 = strlen(v26);
          if (!v36)
          {
            log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "invalid arg for regex", v37, v38, v39, v61);
            v21 = 2313166855;
            goto LABEL_35;
          }

          *a5 = 0;
          v40 = nuance_pcre_exec(a1[24], a1[25], a1[27] + *(a1[28] + 4 * v35), 0, v26, v36, 0, 0, v69, 30);
          if ((v40 & 0x80000000) != 0)
          {
            v45 = nuance_pcre_ErrorToLhError(v40);
            v21 = v45;
            if ((v45 & 0xFFF00000) != 0x8A500000)
            {
              if ((v45 & 0x80000000) != 0)
              {
                goto LABEL_35;
              }

LABEL_74:
              if (*a5 == 1)
              {
                if (*(a1 + 4))
                {
                  log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           REGEX FIRED", a6, a7, a8, v61);
                }

                if (v19)
                {
                  if (*(a1 + 4))
                  {
                    v41 = *(v16 + 32);
                    v42 = "           negate match - return LH_FALSE";
LABEL_135:
                    log_OutText(v41, "FE_POS", 5, 0, v42, a6, a7, a8, v61);
                    goto LABEL_141;
                  }

                  goto LABEL_141;
                }

                *v68 = a3[1];
                if (*(a1 + 4))
                {
                  v43 = *(v16 + 32);
                  v44 = "           return LH_TRUE";
LABEL_132:
                  log_OutText(v43, "FE_POS", 5, 0, v44, a6, a7, a8, v61);
                  goto LABEL_33;
                }

                goto LABEL_33;
              }

              goto LABEL_127;
            }

            if ((v45 & 0x1FFF) != 0x14)
            {
              if ((v45 & 0x1FFF) == 0xA)
              {
                v47 = *(*a1 + 32);
                v48 = 11002;
                v49 = 0;
              }

              else
              {
                v47 = *(*a1 + 32);
                v61 = "lhError";
                v49 = "%s%x";
                v48 = 11027;
              }

              log_OutPublic(v47, "FE_POS", v48, v49, v46, a6, a7, a8, v61);
              goto LABEL_35;
            }
          }

          else if (v40)
          {
            *a5 = 1;
          }

LABEL_73:
          v21 = 0;
          goto LABEL_74;
        }

        if (!*(a1 + 4))
        {
LABEL_126:
          v21 = 0;
          *a5 = 0;
LABEL_127:
          if (*(a1 + 4))
          {
            log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           REGEX FAILED", a6, a7, a8, v61);
          }

LABEL_129:
          if (!v19)
          {
            if (*(a1 + 4))
            {
              v41 = *(v16 + 32);
              v42 = "           return LH_FALSE";
              goto LABEL_135;
            }

LABEL_141:
            *a5 = 0;
            goto LABEL_35;
          }

          *v68 = a3[1];
          if (*(a1 + 4))
          {
            v43 = *(v16 + 32);
            v44 = "           negate match - return LH_TRUE";
            goto LABEL_132;
          }

LABEL_33:
          v22 = 1;
          goto LABEL_34;
        }

        v50 = "           NULL STR FOUND - no match";
LABEL_125:
        log_OutText(*(v16 + 32), "FE_POS", 5, 0, v50, a6, a7, a8, v61);
        goto LABEL_126;
      }

      if (*(a4 + 2))
      {
        v51 = *(a4 + 3) + 1;
        if ((v51 & 0x10000) == 0)
        {
          v53 = *(a4 + 2);
          do
          {
            v59 = *(v31 + 160 * (v53 - 1) + 56) + 24 * *(a1 + 12);
            if (!*(v59 + 4))
            {
              v21 = 2313166848;
              log_OutText(*(v34 + 32), "FE_POS", 5, 0, "wordindex=%d does not end previous phrase", a6, a7, a8, (v53 - 1));
              goto LABEL_35;
            }

            v53 = *(v59 + 8);
            --v51;
          }

          while (v51 && *(v59 + 8));
          v52 = *(a1 + 4);
          if (!v51)
          {
            goto LABEL_97;
          }

          if (v52 >= 2)
          {
            v55 = *(v34 + 32);
            v56 = "           [2] _LEFT doesnt exist, return LH_FALSE";
            goto LABEL_114;
          }

          goto LABEL_140;
        }

        v52 = *(a1 + 4);
        v53 = *(a4 + 2);
LABEL_97:
        if (v52 >= 2)
        {
          log_OutText(*(v34 + 32), "FE_POS", 5, 0, "           [3] _LEFT wordIdx=%d", a6, a7, a8, *(a4 + 2));
        }

        LOWORD(v32) = v53;
        goto LABEL_122;
      }

      if (*(a1 + 4) < 2u)
      {
        goto LABEL_140;
      }

      v55 = *(v34 + 32);
      v56 = "           [1] _LEFT doesnt exist, return LH_FALSE";
    }

LABEL_114:
    log_OutText(v55, "FE_POS", 5, 0, v56, a6, a7, a8, 0);
    goto LABEL_140;
  }

  v20 = *(a4 + 2);
  if (*(a1 + 4))
  {
    v62 = *(*a2 + 160 * *(a4 + 2) + 12);
    log_OutText(*(v16 + 32), "FE_POS", 5, 0, "           pSent->words[%d].bHasComma = %d", a6, a7, a8, *(a4 + 2));
    v20 = *(a4 + 2);
  }

  if (*(*a2 + 160 * v20 + 12) == 1)
  {
    v21 = 0;
    v22 = v19 ^ 1;
LABEL_34:
    *a5 = v22;
    goto LABEL_35;
  }

  v21 = 0;
  *a5 = v19;
LABEL_35:
  v27 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t matchSTATPOSRULE_TRule(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, int *a5)
{
  v20 = 1;
  if (*(a1 + 8))
  {
    v10 = *a1;
    matched = logSTATPOSRULE_TRule(*(a2 + 100), (a2 + 80), (a2 + 96), *(a2 + 88), a1, a3);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(v10 + 32), "FE_POS", 5, 0, "       <%s>", v11, v12, v13, *(a2 + 80));
    **(a2 + 80) = 0;
  }

  else
  {
    matched = 0;
  }

  *a5 = 0;
  if (*a3)
  {
    matched = matchSTATPOSCONTEXT_TRule("LEFT", a1, a2, *a3, a4, &v20, v19, 1);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v15 = v20;
    if (v20 != 1)
    {
      goto LABEL_15;
    }
  }

  v16 = *(a3 + 8);
  if (v16)
  {
    v20 = 0;
    matched = matchSTATPOSCONTEXT_TRule("CUR", a1, a2, v16, a4, &v20, v19, 0);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v15 = v20;
    if (v20 != 1)
    {
LABEL_15:
      *a5 = v15;
      return matched;
    }
  }

  v17 = *(a3 + 16);
  if (!v17)
  {
    v15 = 1;
    goto LABEL_15;
  }

  v20 = 0;
  matched = matchSTATPOSCONTEXT_TRule("RIGHT", a1, a2, v17, a4, &v20, v19, 2);
  if ((matched & 0x80000000) == 0)
  {
    v15 = v20;
    goto LABEL_15;
  }

  return matched;
}

uint64_t getBrokerString_0(uint64_t a1, char *a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  __s = 0;
  memset(v14, 0, sizeof(v14));
  *__s2 = 0;
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
    if (!strcmp(v7, __s2))
    {
      goto LABEL_11;
    }

    result = paramc_ParamSetStr(*(a1 + 40), "langcode", __s2);
    if ((result & 0x80000000) == 0)
    {
      __s = __s2;
LABEL_11:
      __strcpy_chk();
      __strcat_chk();
      __strcat_chk();
      result = brokeraux_ComposeBrokerString(a1, v14, 0, 1, __s, 0, 0, a2, a3);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t statpos_setParams(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "statposdetailtrace", &v4) & 0x80000000) == 0)
  {
    *(a2 + 8) = v4;
  }

  return 0;
}

uint64_t statPOSAddUniqueTagOffset2Word(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, __int16 a5)
{
  if (a4 == -1)
  {
    return 0;
  }

  v10 = *a2;
  v11 = *a2 + 160 * a3;
  v12 = *(v11 + 72);
  if (!*(v11 + 72))
  {
LABEL_6:
    if (*(v11 + 74))
    {
      if (v12 + 2 <= *(v11 + 74))
      {
        goto LABEL_17;
      }

      v17 = heap_Realloc(*(a1 + 8), *(v11 + 64), 24 * *(v11 + 74) + 144);
      if (v17)
      {
        v22 = *a2 + 160 * a3;
        *(v22 + 64) = v17;
        v23 = v17 + 24 * *(v22 + 74);
        *(v23 + 112) = 0;
        *(v23 + 80) = 0u;
        *(v23 + 96) = 0u;
        *(v23 + 48) = 0u;
        *(v23 + 64) = 0u;
        *(v23 + 16) = 0u;
        *(v23 + 32) = 0u;
        *v23 = 0u;
        v10 = *a2;
        v24 = *a2 + 160 * a3;
        v25 = *(v24 + 74) + 5;
LABEL_16:
        *(v24 + 74) = v25;
LABEL_17:
        v29 = v10 + 160 * a3;
        v30 = *(v29 + 72);
        *(*(v29 + 64) + 24 * *(v29 + 72)) = a4;
        v31 = statPOSAddWordRec(a1, a2, a3, v30, a5);
        if ((v31 & 0x80000000) != 0)
        {
          return v31;
        }

        v26 = 0;
        ++*(*a2 + 160 * a3 + 72);
        return v26;
      }
    }

    else
    {
      v28 = heap_Calloc(*(a1 + 8), 1, 241);
      v10 = *a2;
      *(*a2 + 160 * a3 + 64) = v28;
      if (v28)
      {
        v24 = v10 + 160 * a3;
        v25 = 10;
        goto LABEL_16;
      }
    }

    v26 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v18, v19, v20, v21, v32);
    return v26;
  }

  v13 = 0;
  v14 = *(v11 + 64);
  while (1)
  {
    v15 = *v14;
    v14 += 6;
    if (v15 == a4)
    {
      break;
    }

    if (v12 == ++v13)
    {
      goto LABEL_6;
    }
  }

  return statPOSAddWordRec(a1, a2, a3, v13, a5);
}

uint64_t statPOSAddWordRec(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, __int16 a5)
{
  v8 = a3;
  v9 = *(*a2 + 160 * a3 + 64);
  v10 = a4;
  v11 = v9 + 24 * a4;
  if (!*(v11 + 18))
  {
    v21 = heap_Calloc(*(a1 + 8), 1, 121);
    v9 = *(*a2 + 160 * v8 + 64);
    *(v9 + 24 * v10 + 8) = v21;
    if (v21)
    {
      v19 = v9 + 24 * v10;
      v20 = 5;
      goto LABEL_7;
    }

LABEL_10:
    v25 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v13, v14, v15, v16, v28);
    return v25;
  }

  if (*(v11 + 16) + 2 <= *(v11 + 18))
  {
    goto LABEL_8;
  }

  v12 = heap_Realloc(*(a1 + 8), *(v11 + 8), 24 * *(v11 + 18) + 144);
  if (!v12)
  {
    goto LABEL_10;
  }

  v17 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  *(v17 + 8) = v12;
  v18 = v12 + 24 * *(v17 + 18);
  *(v18 + 112) = 0;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *v18 = 0u;
  v9 = *(*a2 + 160 * v8 + 64);
  v19 = v9 + 24 * v10;
  v20 = *(v19 + 18) + 5;
LABEL_7:
  *(v19 + 18) = v20;
LABEL_8:
  *(*(v9 + 24 * v10 + 8) + 24 * *(v9 + 24 * v10 + 16)) = a5;
  v22 = strlen(*(a2 + 56));
  v23 = heap_Calloc(*(a1 + 8), 1, (v22 + 1));
  v24 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  *(*(v24 + 8) + 24 * *(v24 + 16) + 16) = v23;
  if (!v23)
  {
    goto LABEL_10;
  }

  strcpy(v23, *(a2 + 56));
  v25 = 0;
  v26 = *(*a2 + 160 * v8 + 64) + 24 * v10;
  ++*(v26 + 16);
  return v25;
}

uint64_t statpos_initCache(uint64_t result)
{
  *(result + 72) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t statpos_freeCache(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72))
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 64);
    do
    {
      heap_Free(*(a1 + 8), *(v6 + v4));
      v6 = *(a2 + 64);
      *(v6 + v4) = 0;
      ++v5;
      v4 += 16;
    }

    while (v5 < *(a2 + 72));
  }

  heap_Free(*(a1 + 8), *(a2 + 64));
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return 0;
}

uint64_t statpos_retagPOS(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _DWORD *a5, _WORD *a6, uint64_t a7, uint64_t a8)
{
  v102 = *MEMORY[0x1E69E9840];
  v99 = 0;
  v9 = *(a2 + 80);
  if (!v9)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "missing statpos data => must be included in CLC to train a POS model", a6, a7, a8, v77);
    v51 = 2313166848;
    goto LABEL_70;
  }

  memset(v98, 0, 12);
  v14 = *(v9 + 16);
  if (!*(v9 + 16))
  {
LABEL_7:
    v94 = a5;
    v95 = a1;
    if (*(a2 + 88))
    {
      v23 = 0;
      while (**(a3 + 48) != *(*(a2 + 80) + 24 * v23))
      {
LABEL_34:
        if (++v23 >= *(a2 + 88))
        {
          goto LABEL_35;
        }
      }

      if (v14)
      {
        v24 = 0;
      }

      else
      {
        v25 = 0;
        v24 = 0;
        do
        {
          v26 = *(a2 + 80) + 24 * v23;
          if (v24 >= *(v26 + 16))
          {
            break;
          }

          v27 = *(v26 + 8);
          if (*(v27 + v25 + 4))
          {
            break;
          }

          v28 = *(v27 + v25);
          WORD2(v98[0]) = a4;
          LODWORD(v98[0]) = 6;
          *(v98 + 6) = 0;
          v29 = *(a2 + 64);
          v100 = 0;
          matched = matchSTATPOSRULE_TRule(a2, a3, v29 + 32 * v28 + 8, v98, &v100);
          if ((matched & 0x80000000) != 0)
          {
            goto LABEL_39;
          }

          if (v100 == 1)
          {
            *(*(*(a2 + 80) + 24 * v23 + 8) + v25 + 4);
            v52 = 32 * v28;
            v93 = *(*(*a3 + 160 * a4 + 48) + 8 * *(a2 + 16));
            v85 = *(a3 + 48);
            v88 = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v28));
            log_OutText(*(v95 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v30, v31, v32, v28);
            *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v28));
            v53 = v95;
            goto LABEL_66;
          }

          ++v24;
          v25 += 8;
        }

        while (!v100);
        v24 = v24;
      }

      v100 = 0;
      if (!*(a3 + 72) || (statpos_getBracketlessString(__s1, *(a3 + 48)), v33 = *(a3 + 72), !*(a3 + 72)))
      {
LABEL_24:
        v38 = -1;
        v39 = 4;
        while (1)
        {
          v40 = *(a2 + 80) + 24 * v23;
          if (++v38 >= *(v40 + 16))
          {
            v14 = 0;
            goto LABEL_34;
          }

          v41 = (*(v40 + 8) + v39);
          if (*v41 == 1)
          {
            v28 = *(v41 - 2);
            WORD2(v98[0]) = a4;
            LODWORD(v98[0]) = 6;
            *(v98 + 6) = 0;
            v42 = *(a2 + 64);
            v100 = 0;
            matched = matchSTATPOSRULE_TRule(a2, a3, v42 + 32 * v28 + 8, v98, &v100);
            if ((matched & 0x80000000) != 0)
            {
              goto LABEL_39;
            }

            v14 = v100;
            if (v100 == 1)
            {
              *(*(*(a2 + 80) + 24 * v23 + 8) + v39);
              v52 = 32 * v28;
              v92 = *(*(*a3 + 160 * a4 + 48) + 8 * *(a2 + 16));
              v84 = *(a3 + 48);
              v87 = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v28));
              log_OutText(*(v95 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v43, v44, v45, v28);
              if (*(*(*(a2 + 80) + 24 * v23 + 8) + v39) == 1)
              {
                statpos_addToCache(v95, a3, v28, v65, v66, v67, v68, v69, v78);
                if (*a6 <= 0xEu)
                {
                  statpos_getBracketlessString(__s1, *(a3 + 48));
                  v70 = *a6;
                  if (!*a6)
                  {
                    goto LABEL_63;
                  }

                  v71 = 0;
                  v72 = *a6;
                  v73 = a7;
                  do
                  {
                    v74 = *v73++;
                    if (!strcmp(__s1, v74))
                    {
                      v71 = 1;
                    }

                    --v72;
                  }

                  while (v72);
                  if (!v71)
                  {
LABEL_63:
                    strncpy(*(a7 + 8 * v70), __s1, 0x10uLL);
                    ++*a6;
                  }
                }
              }

              *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v28));
              v53 = v95;
              goto LABEL_66;
            }
          }

          else
          {
            v14 = 0;
          }

          v39 += 8;
          if (v14)
          {
            goto LABEL_34;
          }
        }
      }

      v34 = (*(a3 + 64) + 8);
      while (strcmp(__s1, *(v34 - 1)))
      {
        v34 += 2;
        if (!--v33)
        {
          goto LABEL_24;
        }
      }

      v28 = *v34;
      v52 = 32 * v28;
      v90 = *(*(*a3 + 160 * a4 + 48) + 8 * *(a2 + 16));
      v83 = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v28));
      v80 = *(a3 + 48);
      log_OutText(*(v95 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE FROM CACHE %d RETAG POS %s to %s on word[%d]=%s", v35, v36, v37, v28);
      if (*(*(*(a2 + 80) + 24 * v23 + 8) + 8 * v24 + 4) == 1 && *a6 <= 0xEu)
      {
        statpos_getBracketlessString(__s1, *(a3 + 48));
        v60 = *a6;
        if (!*a6)
        {
          goto LABEL_51;
        }

        v61 = 0;
        v62 = *a6;
        v63 = a7;
        do
        {
          v64 = *v63++;
          if (!strcmp(__s1, v64))
          {
            v61 = 1;
          }

          --v62;
        }

        while (v62);
        if (!v61)
        {
LABEL_51:
          strncpy(*(a7 + 8 * v60), __s1, 0x10uLL);
          ++*a6;
        }
      }

      *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v28));
      v53 = v95;
LABEL_66:
      v54 = a2;
      v55 = a3;
      v56 = a4;
      v57 = v94;
      v58 = v94;
      v59 = v28;
    }

    else
    {
LABEL_35:
      v46 = *(a2 + 90);
      WORD2(v98[0]) = a4;
      LODWORD(v98[0]) = 6;
      *(v98 + 6) = 0;
      v47 = *(a2 + 64);
      v100 = 0;
      v51 = matchSTATPOSRULE_TRule(a2, a3, v47 + 32 * v46 + 8, v98, &v100);
      if ((v51 & 0x80000000) != 0)
      {
        goto LABEL_70;
      }

      if (v100 != 1)
      {
        if (!*(a2 + 104))
        {
          log_OutText(*(v95 + 32), "FE_POS", 5, 0, "ERROR? NO MS1 RETAGGING OF %s", v48, v49, v50, *(a3 + 48));
        }

        goto LABEL_70;
      }

      v52 = 32 * v46;
      v89 = *(*(*a3 + 160 * a4 + 48) + 8 * *(a2 + 16));
      v81 = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v46));
      v79 = *(a3 + 48);
      log_OutText(*(v95 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v48, v49, v50, v46);
      *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v46));
      v53 = v95;
      v54 = a2;
      v55 = a3;
      v56 = a4;
      v57 = a5;
      v58 = a5;
      v59 = v46;
    }

    v51 = statpos_doFurtherRetagging(v53, v54, v55, v56, v58, v59, &v99);
    if ((v51 & 0x80000000) == 0 && v99 != 1)
    {
      *v57 = *(*(a2 + 64) + v52);
    }

    goto LABEL_70;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(*(v9 + 8) + v15);
    WORD2(v98[0]) = a4;
    LODWORD(v98[0]) = 6;
    *(v98 + 6) = 0;
    v18 = *(a2 + 64);
    v100 = 0;
    matched = matchSTATPOSRULE_TRule(a2, a3, v18 + 32 * v17 + 8, v98, &v100);
    if ((matched & 0x80000000) != 0)
    {
LABEL_39:
      v51 = matched;
      goto LABEL_70;
    }

    v14 = v100;
    if (v100 == 1)
    {
      break;
    }

    ++v16;
    v9 = *(a2 + 80);
    v15 += 8;
    if (v16 >= *(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  *(*(*(a2 + 80) + 8) + v15 + 4);
  v91 = *(*(*a3 + 160 * a4 + 48) + 8 * *(a2 + 16));
  v82 = *(a3 + 48);
  v86 = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v17));
  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "FIRED MS1 RETAGGING RULE %d %s RETAG POS %s to %s on word[%d]=%s", v20, v21, v22, v17);
  *(a3 + 48) = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 64) + 32 * v17));
  v51 = statpos_doFurtherRetagging(a1, a2, a3, a4, a5, v17, &v99);
  if ((v51 & 0x80000000) == 0 && v99 != 1)
  {
    *a5 = *(*(a2 + 64) + 32 * v17);
  }

LABEL_70:
  v75 = *MEMORY[0x1E69E9840];
  return v51;
}

uint64_t statpos_doFurtherRetagging(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, _DWORD *a5, unsigned int a6, int *a7)
{
  v9 = a4;
  *a7 = 0;
  v13 = *(*a3 + 160 * a4 + 8);
  if (v13)
  {
    if (v13 != 1)
    {
      return 0;
    }

    v14 = *(a2 + 124);
  }

  else
  {
    v14 = *(a2 + 128);
  }

  if (v14 != 1)
  {
    return 0;
  }

  *&v30[2] = 0;
  if (!*(a2 + 56))
  {
    return 0;
  }

  v15 = 0;
  for (i = 0; i < *(a2 + 56); ++i)
  {
    v29 = v9;
    v28 = 6;
    *v30 = 0;
    v17 = *(a2 + 48);
    *a7 = 0;
    matched = matchSTATPOSRULE_TRule(a2, a3, v17 + v15 + 8, &v28, a7);
    if ((matched & 0x80000000) != 0)
    {
      break;
    }

    if (*a7)
    {
      if (*a7 == 1)
      {
        v23 = *(a2 + 296);
        v24 = *(a2 + 304);
        v26 = v23 + *(v24 + 4 * *(*(a2 + 48) + v15));
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "RETAGGING MS1 %s to %s", v18, v19, v20, v23 + *(v24 + 4 * *(*(a2 + 64) + 32 * a6)));
        v25 = *(*(a2 + 48) + v15);
        a3[6] = *(a2 + 296) + *(*(a2 + 304) + 4 * v25);
        *a5 = v25;
      }

      return matched;
    }

    v15 += 32;
  }

  return matched;
}

char *statpos_getBracketlessString(char *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 <= 0x10uLL)
  {
    v5 = v4;
  }

  else
  {
    v5 = 16;
  }

  result = strncpy(a1, __s, v5);
  if (v5)
  {
    v7 = 0;
    do
    {
      if (a1[v7] == 40)
      {
        a1[v7] = 0;
        v7 = v5;
      }

      ++v7;
    }

    while (v7 < v5);
  }

  return result;
}

uint64_t statpos_addToCache(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 74);
  if (!*(a2 + 74))
  {
    v13 = heap_Calloc(*(a1 + 8), 1, 801);
    *(a2 + 64) = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

    v12 = 50;
    *(a2 + 74) = 50;
  }

  if (*(a2 + 72) + 1 < v12)
  {
LABEL_7:
    statpos_getBracketlessString(__s, *(a2 + 48));
    v19 = strlen(__s);
    v20 = heap_Calloc(*(a1 + 8), 1, v19 + 1);
    *(*(a2 + 64) + 16 * *(a2 + 72)) = v20;
    if (v20)
    {
      result = strcpy(v20, __s);
      v26 = *(a2 + 72);
      *(*(a2 + 64) + 16 * v26 + 8) = a3;
      *(a2 + 72) = v26 + 1;
    }

    else
    {
      result = log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v21, v22, v23, v24, v30);
    }

    v29 = *MEMORY[0x1E69E9840];
    return result;
  }

  v18 = heap_Realloc(*(a1 + 8), *(a2 + 64), 16 * v12 + 320);
  if (v18)
  {
    *(a2 + 64) = v18;
    *(a2 + 74) += 20;
    goto LABEL_7;
  }

LABEL_9:
  v27 = *(a1 + 32);
  v28 = *MEMORY[0x1E69E9840];

  return log_OutPublic(v27, "FE_POS", 35000, 0, v14, v15, v16, v17, a9);
}

uint64_t statpos_retagREFPOS(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  *&v28[2] = 0;
  if (!*(a2 + 56))
  {
    return 0;
  }

  v8 = 0;
  for (i = 0; i < *(a2 + 56); ++i)
  {
    v27 = a4;
    v26 = 6;
    *v28 = 0;
    v10 = *(a2 + 48);
    v29 = 0;
    matched = matchSTATPOSRULE_TRule(a2, a3, v10 + v8 + 8, &v26, &v29);
    if ((matched & 0x80000000) != 0)
    {
      break;
    }

    if (v29)
    {
      if (v29 == 1)
      {
        v25 = *(*(*a3 + 160 * a4 + 48) + 8 * *(a2 + 16));
        v24 = *(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v8));
        v23 = a3[6];
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "REFRETAG : FIRED RETAGGING RULE %d RETAG REF POS %s to %s on word[%d]=%s", v11, v12, v13, i);
        v15 = strlen((*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v8))));
        v16 = heap_Calloc(*(a1 + 8), 1, (v15 + 1));
        *(*a3 + 160 * a4 + 112) = v16;
        if (v16)
        {
          strcpy(v16, (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(a2 + 48) + v8))));
        }

        else
        {
          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v17, v18, v19, v20, v22);
          return 2313166858;
        }
      }

      return matched;
    }

    v8 += 32;
  }

  return matched;
}

uint64_t statpos_getPOSOffset(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v11 = 0;
  *a4 = -1;
  if (!*(a2 + 104))
  {
    return 0;
  }

  result = ssftmap_FindReadOnly(*(a2 + 112), a3, &v11);
  if ((result & 0x1FFF) == 0x14)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "ERROR? NO LISTOFPOS RETAGGING OF %s", v8, v9, v10, a3);
    return 0;
  }

  *a4 = *v11;
  return result;
}

uint64_t statpos_getStrSetting(uint64_t a1, char *__s1)
{
  v2 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = *(a1 + 296);
  v5 = *(a1 + 304);
  for (i = (*(a1 + 32) + 4); strcmp(__s1, (v4 + *(v5 + 4 * *(i - 1)))); i += 2)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return v4 + *(v5 + 4 * *i);
}

uint64_t statpos_splitMSMappingRulesIntoTables(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v4 = a2;
  v6 = heap_Calloc(*(*a2 + 8), 1, (24 * *(a3 + 8)) | 1);
  *(v4 + 80) = v6;
  if (!v6 || (*(v4 + 88) = 655294464, *v6 = 33, *(*(v4 + 80) + 16) = 0, v11 = heap_Calloc(*(*v4 + 8), 1, (8 * *(a3 + 8)) | 1), v12 = *(v4 + 80), (*(v12 + 8) = v11) == 0))
  {
LABEL_59:
    v51 = 2313166858;
    v52 = *(*v4 + 32);
LABEL_109:
    log_OutPublic(v52, "FE_POS", 35000, 0, v7, v8, v9, v10, v88);
    return v51;
  }

  *(v4 + 88) = 1;
  v13 = *(a3 + 8);
  if (!*(a3 + 8))
  {
    v53 = 1;
    goto LABEL_92;
  }

  v14 = 0;
  v88 = 1;
  v89 = a1;
  v91 = v4;
  do
  {
    v15 = *a3 + 32 * v14;
    v17 = *(v15 + 8);
    v16 = v15 + 8;
    if (!v17)
    {
      v18 = *(v16 + 8);
      if (v18)
      {
        __s2[0] = 0;
        v19 = *(v18 + 4);
        if (!*(v18 + 4))
        {
          goto LABEL_52;
        }

        v90 = v13;
        v95 = 0;
        v20 = 0;
        v92 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = *(v4 + 256);
        v26 = *(v4 + 264);
        v27 = *v18;
        v93 = v26;
        v94 = v25;
        do
        {
          v28 = (v27 + 6 * v20);
          if (*v28 == 3)
          {
            v23 = 1;
          }

          else
          {
            v22 = 1;
          }

          if (v23 == 1 && v24 == 0)
          {
            v30 = (v25 + *(v26 + 4 * v28[1]));
            v31 = *v30;
            if (v31 == 94)
            {
              v32 = strlen((v25 + *(v26 + 4 * v28[1])));
              if (v32 < 2u)
              {
                v24 = 0;
              }

              else
              {
                v95 = v30[1];
                __s2[0] = v30[1];
                __s2[1] = 0;
                v33 = v32;
                v34 = 1;
                do
                {
                  v36 = *v30++;
                  v35 = v36;
                  if (v34 < v32 && v35 == 40)
                  {
                    v21 = 1;
                  }

                  ++v34;
                  --v33;
                }

                while (v33);
                v24 = v95;
              }

              v26 = v93;
              v25 = v94;
            }

            else if (v31 == 92 && v30[1] == 83 && (v24 = v30[2]) == 0)
            {
              *(v91 + 90) = v14;
              v92 = 1;
            }

            else
            {
              v24 = 0;
            }
          }

          ++v20;
        }

        while (v20 < v19);
        v39 = v22 != 1 && v21 != 1;
        if (v23 != 1 || (v95 - 65) > 0x19)
        {
          v4 = v91;
          a1 = v89;
          v13 = v90;
          if (v92)
          {
            goto LABEL_7;
          }

LABEL_52:
          v41 = *(v12 + 16);
          v42 = *(v12 + 8) + 8 * v41;
          *v42 = v14;
          *(v42 + 4) = 0;
          *(v12 + 16) = v41 + 1;
          goto LABEL_7;
        }

        a1 = v89;
        v43 = v12;
        v44 = 1;
        v4 = v91;
        while (v88 + v44 != 1)
        {
          v45 = strcmp(v43, __s2);
          --v44;
          v43 += 24;
          if (!v45)
          {
            v46 = -v44;
            goto LABEL_58;
          }
        }

        __strcpy_chk();
        *(*(v91 + 80) + 24 * *(v91 + 88) + 16) = 0;
        v47 = heap_Calloc(*(*v91 + 8), 1, (8 * *(a3 + 8)) | 1);
        v12 = *(v91 + 80);
        v46 = *(v91 + 88);
        *(v12 + 24 * v46 + 8) = v47;
        if (!v47)
        {
          goto LABEL_59;
        }

        v88 = v46 + 1;
        *(v91 + 88) = v46 + 1;
LABEL_58:
        v48 = v12 + 24 * v46;
        v49 = *(v48 + 16);
        v50 = *(v48 + 8) + 8 * v49;
        *v50 = v14;
        *(v50 + 4) = v39;
        *(v48 + 16) = v49 + 1;
        v13 = *(a3 + 8);
      }
    }

LABEL_7:
    ++v14;
  }

  while (v14 < v13);
  v53 = v88;
  if (v88 < 2u)
  {
LABEL_92:
    v71 = v53;
    goto LABEL_93;
  }

  v54 = 1;
  do
  {
    v55 = *(v12 + 24 * v54 + 16);
    if (*(v12 + 24 * v54 + 16))
    {
      v56 = 0;
      do
      {
        v57 = 0;
        do
        {
          if (v56 != v57)
          {
            v58 = *(v12 + 24 * v54 + 8);
            v59 = *(*a3 + 32 * *(v58 + 8 * v56) + 16);
            v60 = *(v59 + 8);
            if (*(v59 + 8))
            {
              v61 = 0;
              v62 = *(*a3 + 32 * *(v58 + 8 * v57) + 16);
              v63 = *(v62 + 8);
              v64 = v58 + 8 * v56;
              v65 = v58 + 8 * v57;
              do
              {
                if (v63)
                {
                  v66 = (*v59 + 6 * v61);
                  v67 = *v66;
                  v68 = v63;
                  v69 = 2;
                  do
                  {
                    if (v67 == 3 && v66[1] == *(*v62 + v69))
                    {
                      if (*(v64 + 4) == 1)
                      {
                        *(v64 + 4) = 0;
                      }

                      if (*(v65 + 4) == 1)
                      {
                        *(v65 + 4) = 0;
                      }
                    }

                    v69 += 6;
                    --v68;
                  }

                  while (v68);
                }

                ++v61;
              }

              while (v61 != v60);
            }
          }

          ++v57;
        }

        while (v57 != v55);
        ++v56;
      }

      while (v56 != v55);
    }

    ++v54;
  }

  while (v54 != v88);
  v70 = 1;
  v71 = v88;
  do
  {
    if (*(v12 + 24 * v70 + 16))
    {
      v72 = 0;
      v73 = 0;
      v74 = 0;
      do
      {
        if (v72)
        {
          v75 = *(v12 + 24 * v70 + 8);
          if (!*(v75 + v72 + 4))
          {
            v76 = *(v75 + v72);
            memmove((v75 + 8 * v74 + 8), (v75 + 8 * v74), v72 - 8 * v74);
            v12 = *(v4 + 80);
            v77 = *(v12 + 24 * v70 + 8) + 8 * v74;
            *(v77 + 4) = 0;
            *v77 = v76;
            ++v74;
          }
        }

        ++v73;
        v72 += 8;
      }

      while (v73 < *(v12 + 24 * v70 + 16));
      v71 = *(v4 + 88);
    }

    ++v70;
  }

  while (v70 < v71);
LABEL_93:
  v78 = heap_Realloc(*(*v4 + 8), v12, (24 * v71) | 1);
  if (!v78)
  {
LABEL_108:
    v51 = 2313166858;
    v52 = *(a1 + 32);
    goto LABEL_109;
  }

  v79 = v78;
  *(v4 + 80) = v78;
  if (!*(v4 + 88))
  {
    if (*(v4 + 90) == 9999)
    {
      goto LABEL_111;
    }

    return 0;
  }

  v80 = 0;
  v81 = 0;
  do
  {
    v82 = v79 + v80;
    if (*(v79 + v80 + 16))
    {
      v83 = heap_Realloc(*(*v4 + 8), *(v82 + 8), (8 * *(v79 + v80 + 16)) | 1);
      if (!v83)
      {
        goto LABEL_108;
      }
    }

    else
    {
      heap_Free(*(a1 + 8), *(v82 + 8));
      v83 = 0;
    }

    v79 = *(v4 + 80);
    *(v79 + v80 + 8) = v83;
    ++v81;
    v84 = *(v4 + 88);
    v80 += 24;
  }

  while (v81 < v84);
  if (*(v4 + 90) != 9999)
  {
    return 0;
  }

  if (*(v4 + 88))
  {
    v85 = 0;
    v86 = 0;
    do
    {
      if (*(v79 + v85 + 16))
      {
        heap_Free(*(a1 + 8), *(v79 + v85 + 8));
        v79 = *(v4 + 80);
        v84 = v79 + v85;
        *(v84 + 8) = 0;
        *(v84 + 16) = 0;
        LOWORD(v84) = *(v4 + 88);
      }

      ++v86;
      v85 += 24;
    }

    while (v86 < v84);
  }

LABEL_111:
  heap_Free(*(a1 + 8), v79);
  v51 = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  return v51;
}

uint64_t statpos_rules_load(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v192 = *MEMORY[0x1E69E9840];
  v186 = 0;
  v185 = 0;
  v183 = 0;
  v184 = 0;
  v181 = 0;
  v182 = 0;
  memset(v191, 0, sizeof(v191));
  v180 = 0;
  *a7 = a3;
  *(a7 + 376) = 5;
  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "loading MS StatPOS rules", a6, a7, a8, v167);
  BrokerString_0 = getBrokerString_0(a3, v191, 0x80uLL);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  BrokerString_0 = brk_DataOpenEx(*(a3 + 24), v191, 1, &v181);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  BrokerString_0 = brk_DataClose(*(a3 + 24), v181);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  BrokerString_0 = ssftriff_reader_ObjOpen(a1, a2, 0, v191, "PANP", 1031, &v186);
  if ((BrokerString_0 & 0x80000000) != 0)
  {
    goto LABEL_117;
  }

  while (1)
  {
    LODWORD(info_from_dct) = ssftriff_reader_OpenChunk(v186, &v184, &v183, &v182, v16, v17, v18, v19);
    if ((info_from_dct & 0x80000000) != 0)
    {
LABEL_67:
      if ((info_from_dct & 0x1FFF) == 0xA)
      {
        goto LABEL_73;
      }

      ssftriff_reader_ObjClose(v186, v20, v21, v22, v16, v17, v18, v19);
      v186 = 0;
      if (*(a7 + 104))
      {
        v82 = 0;
        v83 = 0;
        do
        {
          BrokerString_0 = ssftmap_Insert(*(a7 + 112), *(a7 + 296) + *(*(a7 + 304) + 4 * *(*(a7 + 96) + v82)), *(a7 + 96) + v82);
          if ((BrokerString_0 & 0x80000000) != 0)
          {
            goto LABEL_117;
          }

          ++v83;
          v82 += 4;
        }

        while (v83 < *(a7 + 104));
      }

      *(a7 + 88) = 0;
      v84 = statpos_splitMSMappingRulesIntoTables(a3, a7, a7 + 64);
      if ((v84 & 0x1FFF) == 0xA)
      {
LABEL_73:
        info_from_dct = 2313166858;
        goto LABEL_118;
      }

      info_from_dct = v84;
      *(a7 + 16) = 0x2000100030000;
      *(a7 + 24) = 4;
      StrSetting = statpos_getStrSetting(a7, "POSsep");
      if (StrSetting)
      {
        v89 = *StrSetting;
      }

      else
      {
        log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning : POSsep not defined in data file, using default '/'", v86, v87, v88, v168);
        v89 = 47;
      }

      *(a7 + 120) = v89;
      v90 = statpos_getStrSetting(a7, "HYPHEN_CHAR");
      if (!v90)
      {
        log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning : HYPHEN_CHAR not defined in data file, using default '-'", v91, v92, v93, v168);
        v90 = "-";
      }

      *(a7 + 160) = v90;
      v94 = statpos_getStrSetting(a7, "PUNCT_CHAR");
      if (v94)
      {
        v95 = v94;
      }

      else
      {
        v95 = "";
      }

      *(a7 + 168) = v95;
      v96 = statpos_getStrSetting(a7, "TERMPUNCT_CHAR");
      if (v96)
      {
        v103 = v96;
      }

      else
      {
        v103 = "";
      }

      *(a7 + 176) = v103;
      *(a7 + 124) = statpos_getStrSettingAsNumber(a7, "ApplyRetaggingToOOV", v97, v98, v99, v100, v101, v102) == 1;
      *(a7 + 128) = statpos_getStrSettingAsNumber(a7, "ApplyRetaggingToKnownAmbiguous", v104, v105, v106, v107, v108, v109) == 1;
      *(a7 + 152) = statpos_getStrSettingAsNumber(a7, "NOOOVMODEL", v110, v111, v112, v113, v114, v115) == 1;
      *(a7 + 184) = statpos_getStrSettingAsNumber(a7, "DOMSMAPPINGBEFORELISTOFPOS", v116, v117, v118, v119, v120, v121) == 1;
      *(a7 + 188) = statpos_getStrSettingAsNumber(a7, "ReEstimateEachWord", v122, v123, v124, v125, v126, v127) == 1;
      v128 = statpos_getStrSetting(a7, "POITOPOS_ns");
      *(a7 + 336) = v128;
      if (v128)
      {
        BrokerString_0 = statpos_format_POI_param(a3, v128, (a7 + 336));
        if ((BrokerString_0 & 0x80000000) != 0)
        {
          goto LABEL_117;
        }

        info_from_dct = 0;
      }

      v129 = statpos_getStrSetting(a7, "POITOPOS_nt");
      *(a7 + 344) = v129;
      if (v129)
      {
        BrokerString_0 = statpos_format_POI_param(a3, v129, (a7 + 344));
        if ((BrokerString_0 & 0x80000000) != 0)
        {
          goto LABEL_117;
        }

        info_from_dct = 0;
      }

      v130 = statpos_getStrSetting(a7, "POITOPOS_nz");
      *(a7 + 352) = v130;
      if (v130)
      {
        BrokerString_0 = statpos_format_POI_param(a3, v130, (a7 + 352));
        if ((BrokerString_0 & 0x80000000) != 0)
        {
          goto LABEL_117;
        }

        info_from_dct = 0;
      }

      v131 = statpos_getStrSetting(a7, "POITOPOS_nx");
      *(a7 + 360) = v131;
      if (v131)
      {
        BrokerString_0 = statpos_format_POI_param(a3, v131, (a7 + 360));
        if ((BrokerString_0 & 0x80000000) != 0)
        {
          goto LABEL_117;
        }

        info_from_dct = 0;
      }

      v132 = statpos_getStrSetting(a7, "POITOPOS_nr");
      *(a7 + 368) = v132;
      if (v132)
      {
        BrokerString_0 = statpos_format_POI_param(a3, v132, (a7 + 368));
        if ((BrokerString_0 & 0x80000000) != 0)
        {
          goto LABEL_117;
        }

        info_from_dct = 0;
      }

      *(a7 + 136) = statpos_getStrSettingAsNumber(a7, "lexMismatchUseStringMatch", v133, v134, v135, v136, v137, v138) == 1;
      StrSettingAsNumber = statpos_getStrSettingAsNumber(a7, "mapTagsetFromDctMappingFile", v139, v140, v141, v142, v143, v144);
      *(a7 + 132) = StrSettingAsNumber == 1;
      if (StrSettingAsNumber == 1)
      {
        info_from_dct = statpos_get_info_from_dct(a3, a4, a5, a6, "fecfg", "mde_tag_mappings_dic", &v180, 0, "STR");
        if ((info_from_dct & 0x80000000) != 0)
        {
          goto LABEL_118;
        }

        if (v180)
        {
          v179 = 0;
          info_from_dct = (*(a6 + 72))(a4, a5, v180, &v179);
          if ((info_from_dct & 0x80000000) != 0)
          {
            goto LABEL_126;
          }

          if (v179)
          {
            *&__c[1] = 0;
            __c[0] = 0;
            v155 = *(*a7 + 8);
            *&v187 = ssftmap_ElemCopyString;
            *(&v187 + 1) = ssftmap_ElemFreeString;
            v188 = ssftmap_ElemCompareKeysString;
            v189 = ssftmap_ElemCopyString;
            v190 = ssftmap_ElemFreeString;
            info_from_dct = ssftmap_ObjOpen(v155, 0, &v187, (a7 + 144));
            if ((info_from_dct & 0x80000000) != 0)
            {
              goto LABEL_126;
            }

            if (*(a7 + 104))
            {
              v156 = 0;
              do
              {
                v178 = -1;
                info_from_dct = (*(a6 + 96))(a4, a5, v180, *(a7 + 296) + *(*(a7 + 304) + 4 * *(*(a7 + 96) + 4 * v156)), &__c[1], &v178, __c);
                if ((info_from_dct & 0x80000000) != 0)
                {
                  goto LABEL_118;
                }

                if (v178 == 1)
                {
                  v157 = **&__c[1];
                  v158 = strchr(**&__c[1], __c[0]);
                  if (v158)
                  {
                    *v158 = 0;
                    v157 = **&__c[1];
                  }

                  info_from_dct = ssftmap_Insert(*(a7 + 144), *(a7 + 296) + *(*(a7 + 304) + 4 * *(*(a7 + 96) + 4 * v156)), v157);
                  if ((info_from_dct & 0x80000000) != 0)
                  {
                    goto LABEL_126;
                  }

                  v169 = **&__c[1];
                  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "POS mapping %s->%s", v159, v160, v161, *(a7 + 296) + *(*(a7 + 304) + 4 * *(*(a7 + 96) + 4 * v156)));
                }
              }

              while (++v156 < *(a7 + 104));
            }
          }

          else
          {
            log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning: mde_tag_mappings dictionary %s does not exist", v152, v153, v154, v180);
          }
        }

        else
        {
          log_OutText(*(a3 + 32), "FE_POS", 5, 0, "Warning: mde_tag_mappings dictionary does not exist", v149, v150, v151, 0);
        }
      }

      if (*(a7 + 144))
      {
        v164 = 0;
        while (1)
        {
          v165 = heap_Calloc(*(a3 + 8), 1, 32);
          *(a7 + 384 + v164) = v165;
          if (!v165)
          {
            break;
          }

          v164 += 8;
          if (v164 == 256)
          {
            goto LABEL_125;
          }
        }

        log_OutPublic(*(a3 + 32), "FE_POS", 35000, 0, v166, v146, v147, v148, v168);
        goto LABEL_73;
      }

LABEL_125:
      v176 = *(a7 + 368);
      v175 = *(a7 + 352);
      v174 = *(a7 + 336);
      v172 = *(a7 + 152);
      v173 = *(a7 + 188);
      v171 = *(a7 + 128);
      v170 = *(a7 + 124);
      log_OutText(*(a3 + 32), "FE_POS", 5, 0, "statpos data file : ambigPOSSep=%c ApplyRetaggingToOOV=%d ApplyRetaggingToKnownAmbiguous=%d NOOOVMODEL=%d ReEstimateEachWord=%d, poi_ns=%s,poi_nt=%s,poi_nz=%s,poi_nx=%s,poi_nr=%s", v146, v147, v148, *(a7 + 120));
LABEL_126:
      if (v180)
      {
        heap_Free(*(a3 + 8), v180);
      }

      goto LABEL_118;
    }

    if (!(v184 ^ 0x47494643 | v185))
    {
      LODWORD(info_from_dct) = 0;
      v29 = v182;
      *(a7 + 10) = *v182;
      *(a7 + 12) = v29[1];
      *(a7 + 14) = v29[2];
      goto LABEL_64;
    }

    if (!(v184 ^ 0x45535453 | v185))
    {
      v30 = v182;
      v31 = *v182;
      *(a7 + 40) = v31;
      v32 = heap_Calloc(*(*a7 + 8), 1, (8 * v31) | 1);
      *(a7 + 32) = v32;
      if (!v32)
      {
        goto LABEL_74;
      }

      if (*(a7 + 40))
      {
        v37 = 0;
        v38 = 0;
        v39 = 2;
        do
        {
          *(*(a7 + 32) + v37) = *(v30 + v39);
          v40 = v39 + 4;
          *(*(a7 + 32) + v37 + 4) = *(v30 + v40);
          v39 = v40 + 4;
          ++v38;
          v37 += 8;
        }

        while (v38 < *(a7 + 40));
      }

LABEL_21:
      LODWORD(info_from_dct) = 0;
      goto LABEL_64;
    }

    if (!(v184 ^ 0x47415452 | v185))
    {
      break;
    }

    if (!(v184 ^ 0x4754524D | v185))
    {
      v47 = v182;
      v48 = *v182;
      *(a7 + 72) = v48;
      LODWORD(v187) = 2;
      v49 = heap_Calloc(*(*a7 + 8), 1, (32 * v48) | 1);
      *(a7 + 64) = v49;
      if (!v49)
      {
        goto LABEL_74;
      }

      if (*(a7 + 72))
      {
        v50 = 0;
        v51 = 0;
        while (1)
        {
          v52 = v187;
          *(*(a7 + 64) + v50) = *(v47 + v187);
          LODWORD(v187) = v52 + 4;
          BrokerString_0 = readRULE_0(*a7, v47, &v187, (*(a7 + 64) + v50 + 8));
          if ((BrokerString_0 & 0x80000000) != 0)
          {
            goto LABEL_117;
          }

          ++v51;
          v50 += 32;
          if (v51 >= *(a7 + 72))
          {
            goto LABEL_33;
          }
        }
      }

      goto LABEL_33;
    }

    if (v184 ^ 0x5053494C | v185)
    {
      if (!(v184 ^ 0x58474552 | v185))
      {
        v24 = v186;
        v59 = v182;
        *&v187 = v182;
        v60 = *v182;
        *(a7 + 208) = *v182;
        if (v60)
        {
          v61 = (*(v59 + 1) + 8);
          *(a7 + 216) = v59 + v61;
          v62 = (v61 + v60);
        }

        else
        {
          v62 = 4;
        }

        v67 = *(v59 + v62);
        *(a7 + 232) = v67;
        v68 = heap_Calloc(*(*a7 + 8), 1, (4 * v67) | 1);
        *(a7 + 224) = v68;
        if (!v68)
        {
          goto LABEL_74;
        }

        if (*(a7 + 232))
        {
          v70 = 0;
          v71 = v62 + 2;
          do
          {
            *(*(a7 + 224) + 4 * v70) = *(v59 + v71);
            v71 += 4;
            ++v70;
          }

          while (v70 < *(a7 + 232));
        }

        v72 = (a7 + 240);
        goto LABEL_63;
      }

      if (!(v184 ^ 0x53525453 | v185))
      {
        v24 = v186;
        v63 = v182;
        *&v187 = v182;
        v64 = *v182;
        *(a7 + 288) = *v182;
        if (v64)
        {
          v65 = (*(v63 + 1) + 8);
          *(a7 + 296) = v63 + v65;
          v66 = (v65 + v64);
        }

        else
        {
          v66 = 4;
        }

        v73 = *(v63 + v66);
        *(a7 + 312) = v73;
        v74 = heap_Calloc(*(*a7 + 8), 1, (4 * v73) | 1);
        *(a7 + 304) = v74;
        if (!v74)
        {
          goto LABEL_74;
        }

        if (*(a7 + 312))
        {
          v75 = 0;
          v76 = v66 + 2;
          do
          {
            *(*(a7 + 304) + 4 * v75) = *(v63 + v76);
            v76 += 4;
            ++v75;
          }

          while (v75 < *(a7 + 312));
        }

        v72 = (a7 + 328);
        goto LABEL_63;
      }

      if (!(v184 ^ 0x54534552 | v185))
      {
        v24 = v186;
        v25 = v182;
        *&v187 = v182;
        v26 = *v182;
        *(a7 + 248) = *v182;
        if (v26)
        {
          v27 = (*(v25 + 1) + 8);
          *(a7 + 256) = v25 + v27;
          v28 = (v27 + v26);
        }

        else
        {
          v28 = 4;
        }

        v77 = *(v25 + v28);
        *(a7 + 272) = v77;
        v78 = heap_Calloc(*(*a7 + 8), 1, (4 * v77) | 1);
        *(a7 + 264) = v78;
        if (!v78)
        {
          goto LABEL_74;
        }

        if (*(a7 + 272))
        {
          v79 = 0;
          v80 = v28 + 2;
          do
          {
            *(*(a7 + 264) + 4 * v79) = *(v25 + v80);
            v80 += 4;
            ++v79;
          }

          while (v79 < *(a7 + 272));
        }

        v72 = (a7 + 280);
LABEL_63:
        info_from_dct = ssftriff_reader_DetachChunkData(v24, v72, &v187, v69, v33, v34, v35, v36);
        if ((info_from_dct & 0x80000000) != 0)
        {
          goto LABEL_118;
        }
      }
    }

    else
    {
      v53 = v182;
      v54 = *v182;
      *(a7 + 104) = v54;
      if (!v54)
      {
        goto LABEL_21;
      }

      v55 = *(*a7 + 8);
      *&v187 = ssftmap_ElemCopyString;
      *(&v187 + 1) = ssftmap_ElemFreeString;
      v188 = ssftmap_ElemCompareKeysString;
      v189 = loc_CopyValue;
      v190 = loc_FreeValue;
      info_from_dct = ssftmap_ObjOpen(v55, 0, &v187, (a7 + 112));
      if ((info_from_dct & 0x80000000) != 0)
      {
        goto LABEL_118;
      }

      v56 = heap_Calloc(*(*a7 + 8), 1, (4 * *(a7 + 104)) | 1);
      *(a7 + 96) = v56;
      if (!v56)
      {
LABEL_74:
        info_from_dct = 2313166858;
        log_OutPublic(*(*a7 + 32), "FE_POS", 35000, 0, v33, v34, v35, v36, v168);
        goto LABEL_118;
      }

      if (*(a7 + 104))
      {
        v57 = 0;
        v58 = 1;
        do
        {
          *(*(a7 + 96) + 4 * v57) = *&v53[v58];
          v58 += 2;
          ++v57;
        }

        while (v57 < *(a7 + 104));
      }
    }

LABEL_64:
    v81 = ssftriff_reader_CloseChunk(v186);
    if (v81 < 0)
    {
      LODWORD(info_from_dct) = v81;
    }

    if ((info_from_dct & 0x80000000) != 0)
    {
      goto LABEL_67;
    }
  }

  v41 = v182;
  v42 = *v182;
  *(a7 + 56) = v42;
  LODWORD(v187) = 2;
  v43 = heap_Calloc(*(*a7 + 8), 1, (32 * v42) | 1);
  *(a7 + 48) = v43;
  if (!v43)
  {
    goto LABEL_74;
  }

  if (!*(a7 + 56))
  {
LABEL_33:
    LODWORD(info_from_dct) = 0;
    goto LABEL_64;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = v187;
    *(*(a7 + 48) + v44) = *(v41 + v187);
    LODWORD(v187) = v46 + 4;
    BrokerString_0 = readRULE_0(*a7, v41, &v187, (*(a7 + 48) + v44 + 8));
    if ((BrokerString_0 & 0x80000000) != 0)
    {
      break;
    }

    ++v45;
    v44 += 32;
    if (v45 >= *(a7 + 56))
    {
      goto LABEL_33;
    }
  }

LABEL_117:
  info_from_dct = BrokerString_0;
LABEL_118:
  v162 = *MEMORY[0x1E69E9840];
  return info_from_dct;
}

uint64_t statpos_getStrSettingAsNumber(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v11 = *(a1 + 296);
    v12 = *(a1 + 304);
    v13 = (*(a1 + 32) + 4);
    while (strcmp(__s1, (v11 + *(v12 + 4 * *(v13 - 1)))))
    {
      v13 += 2;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v15 = (v11 + *(v12 + 4 * *v13));

    return atoi(v15);
  }

  else
  {
LABEL_5:
    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "Warning : key=%s not defined, setting to 0", a6, a7, a8, __s1);
    return 0;
  }
}

uint64_t statpos_format_POI_param(uint64_t a1, char *__s, char **a3)
{
  v4 = __s;
  v6 = strlen(__s);
  v7 = heap_Calloc(*(a1 + 8), 1, v6 + 3);
  if (v7)
  {
    v12 = v7;
    if (v6)
    {
      *v7 = 44;
      v13 = 1;
      v14 = 1;
      while (1)
      {
        if (v14)
        {
          v15 = v14;
          if (v7[v14 - 1] == 44 && *v4 == 44)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v15 = 0;
        }

        v7[v15] = *v4;
        ++v14;
LABEL_10:
        ++v4;
        if (v6 <= v13++)
        {
          v7[v14] = 0;
          *&v7[strlen(v7)] = 44;
          goto LABEL_14;
        }
      }
    }

    *v7 = 0;
LABEL_14:
    result = 0;
    *a3 = v12;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v8, v9, v10, v11, v18);
    return 2313166858;
  }

  return result;
}

uint64_t readRULE_0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  result = readCONTEXT_1(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    result = readCONTEXT_1(a1, a2, a3, a4 + 1);
    if ((result & 0x80000000) == 0)
    {

      return readCONTEXT_1(a1, a2, a3, a4 + 2);
    }
  }

  return result;
}

uint64_t readCONTEXT_1(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
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
    v23 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v11, v12, v13, v14, v25);
  }

  return v23;
}

uint64_t _statpos_char_check(char *a1, const char *a2, unsigned int a3)
{
  v6 = strlen(a1);
  v7 = Utf8_LengthInUtf8chars(a1, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = v7;
  while (1)
  {
    v11 = &a1[v8];
    v12 = utf8_determineUTF8CharLength(*v11);
    if (v12 >= a3 && !strncmp(&a1[v8], a2, v12))
    {
      break;
    }

    v8 += utf8_determineUTF8CharLength(*v11);
    if (++v9 >= v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t statpos_fv_new(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 16 * a2);
  *a3 = v6;
  if (!v6)
  {
LABEL_7:
    v14 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v7, v8, v9, v10, v16);
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
      *v12 = 61;
      v11 += 16;
    }

    while (16 * a2 != v11);
  }

  v14 = 0;
  *(a3 + 2) = a2;
  return v14;
}

uint64_t statpos_fv_clear(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = 0;
    v2 = 0;
    do
    {
      **(*a1 + v1) = 61;
      ++v2;
      v1 += 16;
    }

    while (v2 < *(a1 + 8));
  }

  return 0;
}

uint64_t statpos_fv_add(uint64_t a1, void *a2, unsigned int a3, char *__s, char *a5, uint64_t a6)
{
  if (a6)
  {
    v10 = *(a6 + 1336);
    if (v10)
    {
      v11 = strlen(a5);
      v12 = 0;
      v13 = *(a6 + 1328);
      v14 = *(*(a6 + 1312) + 8 * a3);
      while (1)
      {
        v15 = v12;
        if (!strncmp(*(v13 + 16 * v12), v14, v11))
        {
          break;
        }

        v12 = v15 + 1;
        if (v10 <= (v15 + 1))
        {
          goto LABEL_21;
        }
      }

      v16 = *(v13 + 16 * v15 + 8);
      v17 = strstr(v16, __s);
      if (v17)
      {
        v18 = v17;
        v19 = strlen(__s);
        v20 = strlen(v16);
        v21 = v20;
        v22 = &v16[v20];
        while (v18 != v16 || v21 != v19 && (v21 <= v19 + 1 || v18[v19] != 32))
        {
          if (v18 > v16)
          {
            v23 = &v18[v19];
            if (v22 > (v23 + 1) && *v23 == 32)
            {
              if (*(v18 - 1) == 32)
              {
                break;
              }
            }

            else if (v22 == v23)
            {
              break;
            }
          }

          v18 = strstr(&v18[v19], __s);
          if (!v18)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        *__s = 61;
      }
    }
  }

LABEL_21:
  v24 = strlen(__s);
  v25 = *a2 + 16 * a3;
  if (*(v25 + 8) > v24)
  {
    v26 = *v25;
LABEL_25:
    strcpy(v26, __s);
    return 0;
  }

  v27 = v24 + 1;
  v26 = heap_Realloc(*(a1 + 8), *v25, v27);
  if (v26)
  {
    v32 = *a2 + 16 * a3;
    *v32 = v26;
    *(v32 + 8) = v27;
    goto LABEL_25;
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v28, v29, v30, v31, v34);
  return 2313166858;
}

uint64_t statpos_get_features(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8)
{
  if (a6)
  {
    v13 = 0;
    v14 = a6;
    while (2)
    {
      v15 = *(a5 + 8 * v13);
      v16 = &byte_1F42D3130;
      v17 = "PREVPOS";
      while (strcmp(v15, v17))
      {
        v17 = *(v16 + 1);
        v16 += 24;
        if (!v17)
        {
          goto LABEL_9;
        }
      }

      result = (*(v16 - 1))(a1, a2, a3, a4, *v16, *(a2 + 128));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statpos_fv_add(a1, a7, v13, *(a2 + 128), *(a5 + 8 * v13), a8);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_9:
      if (++v13 != v14)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t statpos_dumpFeatureVectorAndResult(uint64_t a1, int a2, const char **a3, _WORD *a4, char *__s, char *a6, uint64_t a7, void *a8, char *a9, int a10, char *a11, char *__s1)
{
  if (!a2)
  {
    return 0;
  }

  v18 = statcomp_add2Str(a1, a3, a4, __s);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, a6);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  if (*(a7 + 1296) >= 2u)
  {
    v19 = 0;
    do
    {
      v18 = statcomp_add2Str(a1, a3, a4, *(*a8 + 16 * v19));
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v18 = statcomp_add2Str(a1, a3, a4, " ");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }
    }

    while (*(a7 + 1296) - 1 > ++v19);
  }

  if (!a11)
  {
    v18 = statcomp_add2Str(a1, a3, a4, "PRED=");
    if ((v18 & 0x80000000) == 0)
    {
      v18 = statcomp_add2Str(a1, a3, a4, a9);
      if ((v18 & 0x80000000) == 0)
      {
        v24 = " ";
LABEL_26:
        v20 = statcomp_add2Str(a1, a3, a4, v24);
        if ((v20 & 0x80000000) != 0)
        {
          return v20;
        }

        goto LABEL_27;
      }
    }

    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, "REF=");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, a11);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, "PRED=");
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v18 = statcomp_add2Str(a1, a3, a4, a9);
  if ((v18 & 0x80000000) != 0)
  {
    return v18;
  }

  v20 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  if (strcmp(a11, a9) && (!__s1 || strcmp(__s1, a9)))
  {
    v24 = "*TAGERROR ";
    goto LABEL_26;
  }

LABEL_27:
  if (a10 || (v20 = statcomp_add2Str(a1, a3, a4, "*BADTAG "), (v20 & 0x80000000) == 0))
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v21, v22, v23, *a3);
    **a3 = 0;
  }

  return v20;
}

uint64_t initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 65);
    *a2 = v6;
    if (!v6)
    {
      break;
    }

    *v6 = 61;
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v7, v8, v9, v10, v12);
  return 2313166858;
}

_WORD **clearFeatureVector(_WORD **result, unsigned int a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *result++;
      *v3 = 61;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      if (*a2)
      {
        result = heap_Free(v4[1], *a2);
        *a2 = 0;
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t statpos_get_features_for_igtree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = v6;
    v8 = 16 * v6;
    v9 = *(*a3 + v8);
    if (strlen(v9) <= 0x40)
    {
      v11 = *(a2 + 8 * v7);
      goto LABEL_7;
    }

    v10 = strlen(v9);
    v11 = heap_Realloc(*(a1 + 8), *(a2 + 8 * v7), v10 + 1);
    if (!v11)
    {
      break;
    }

    *(a2 + 8 * v7) = v11;
    v9 = *(*a3 + v8);
LABEL_7:
    strcpy(v11, v9);
    v6 = v7 + 1;
    if (*(a3 + 8) <= (v7 + 1))
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v12, v13, v14, v15, v17);
  return 2313166858;
}

uint64_t statpos_fe_prdctd_pos(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 == -1)
  {
    __dst[2] = 0;
    v7 = 16979;
    goto LABEL_7;
  }

  if ((v6 & 0x80000000) != 0 || v6 >= *(a2 + 8))
  {
    v7 = 61;
LABEL_7:
    *__dst = v7;
    return 0;
  }

  strcpy(__dst, *(*a2 + 160 * v6 + 88));
  return 0;
}

uint64_t statpos_fe_pssbl_tags(int a1, uint64_t a2, uint64_t a3, int a4, int a5, char *__dst)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a5 + a4;
  if (a5 + a4 >= 0 && (v9 = *(*a2 + 160 * v7 + 80)) != 0 && v7 < *(a2 + 8))
  {
    if (*(a3 + 144))
    {
      v26 = 0;
      v25 = 0;
      v11 = __s;
      __strcpy_chk();
      __s2[0] = *(a3 + 120);
      __s2[1] = 0;
      v12 = strchr(__s, 47);
      if (v12)
      {
        v13 = v12;
        v11 = __s;
        do
        {
          *v13 = 0;
          if ((ssftmap_FindReadOnly(*(a3 + 144), v11, &v26) & 0x1FFF) == 0x14)
          {
            v14 = (a3 + 384);
            v15 = v11;
          }

          else
          {
            v15 = v26;
            v14 = (a3 + 384);
          }

          statpos_getPOSTags(v15, v14, &v25);
          v11 = v13 + 1;
          v13 = strchr(v13 + 1, 47);
        }

        while (v13);
      }

      if ((ssftmap_FindReadOnly(*(a3 + 144), v11, &v26) & 0x1FFF) == 0x14)
      {
        v16 = (a3 + 384);
        v17 = v11;
      }

      else
      {
        v17 = v26;
        v16 = (a3 + 384);
      }

      statpos_getPOSTags(v17, v16, &v25);
      v20 = v25;
      ssft_qsort(a3 + 384, v25, 8, string_cmp_0);
      strcpy(__dst, *(a3 + 384));
      if (v20 >= 2)
      {
        v21 = v20 - 1;
        v22 = (a3 + 392);
        do
        {
          v23 = strcat(__dst, __s2);
          v24 = *v22++;
          strcat(v23, v24);
          --v21;
        }

        while (v21);
      }
    }

    else
    {
      strcpy(__dst, v9);
    }
  }

  else
  {
    *__dst = 61;
  }

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t statpos_fe_word(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    *__dst = 61;
  }

  else
  {
    strcpy(__dst, **(*a2 + 160 * v6 + 48));
  }

  return 0;
}

uint64_t statpos_fe_cword(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    *__dst = 61;
  }

  else
  {
    v7 = *a2 + 160 * v6;
    v8 = *(v7 + 120);
    if (!v8)
    {
      v8 = **(v7 + 48);
    }

    strcpy(__dst, v8);
  }

  return 0;
}

uint64_t statpos_fe_token(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 >= 0 && v6 < *(a2 + 8) && (v7 = *(*(*a2 + 160 * v6 + 48) + 16)) != 0)
  {
    strcpy(__dst, v7);
  }

  else
  {
    *__dst = 61;
  }

  return 0;
}

uint64_t statpos_fe_ends_in_aposs(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v12 = "=";
    goto LABEL_13;
  }

  v8 = **(*a2 + 160 * v7 + 48);
  v9 = strlen(v8);
  if (v9 < 3)
  {
    goto LABEL_12;
  }

  v10 = &v8[v9];
  v11 = v8[v9 - 2];
  if (v11 != 39)
  {
    v13 = 39;
    goto LABEL_11;
  }

  v11 = *(v10 - 1);
  if (v11 != 115)
  {
    v13 = 115;
LABEL_11:
    if (v13 == v11)
    {
      goto LABEL_7;
    }

LABEL_12:
    v12 = "0";
    goto LABEL_13;
  }

  if (*v10)
  {
    goto LABEL_12;
  }

LABEL_7:
  v12 = "1";
LABEL_13:
  *a6 = *v12;
  return 0;
}

uint64_t statpos_fe_wrd_len(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    *a6 = 61;
  }

  else
  {
    v8 = Utf8_Utf8NbrOfSymbols(**(*a2 + 160 * v7 + 48));
    sprintf(a6, "%d", v8 - 1);
  }

  return 0;
}

uint64_t statpos_fe_prefix(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v8 = *a2 + 160 * a4;
  v9 = *(v8 + 120);
  if (!v9)
  {
    v9 = **(v8 + 48);
  }

  if (a5 >= (Utf8_Utf8NbrOfSymbols(v9) - 1))
  {
    *a6 = 61;
  }

  else
  {
    v10 = Utf8_LengthInBytes(v9, a5);
    strncpy(a6, v9, v10);
    a6[v10] = 0;
  }

  return 0;
}

uint64_t statpos_fe_suffix(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v8 = *a2 + 160 * a4;
  v9 = *(v8 + 120);
  if (!v9)
  {
    v9 = **(v8 + 48);
  }

  v10 = (Utf8_Utf8NbrOfSymbols(v9) - 1);
  if (v10 <= a5)
  {
    *a6 = 61;
  }

  else
  {
    v11 = Utf8_LengthInBytes(v9, v10 - a5);
    strcpy(a6, &v9[v11]);
  }

  return 0;
}

uint64_t statpos_fe_fllw_by_punc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v14 = "=";
  }

  else
  {
    v9 = **(*a2 + 160 * v7 + 48);
    v10 = Utf8_Utf8NbrOfSymbols(v9);
    v11 = Utf8_LengthInBytes(v9, v10 - 2);
    if ((v10 - 3) <= 0xFFFFFFFD && (v12 = &v9[v11], v13 = strlen(v12), _statpos_char_check(*(a3 + 168), v12, v13)))
    {
      v14 = "1";
    }

    else
    {
      v14 = "0";
    }
  }

  *a6 = *v14;
  return 0;
}

uint64_t statpos_fe_fllw_by_termpunc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v14 = "=";
  }

  else
  {
    v9 = **(*a2 + 160 * v7 + 48);
    v10 = Utf8_Utf8NbrOfSymbols(v9);
    v11 = Utf8_LengthInBytes(v9, v10 - 2);
    if ((v10 - 3) <= 0xFFFFFFFD && (v12 = &v9[v11], v13 = strlen(v12), _statpos_char_check(*(a3 + 176), v12, v13)))
    {
      v14 = "1";
    }

    else
    {
      v14 = "0";
    }
  }

  *a6 = *v14;
  return 0;
}

uint64_t statpos_fe_has_hyphen(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, _WORD *a6)
{
  *a6 = 48;
  v8 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v9 = Utf8_Utf8NbrOfSymbols(v8) - 1;
  if (v9 >= 2)
  {
    v10 = 0;
    while (1)
    {
      v11 = utf8_determineUTF8CharLength(v8[v10]);
      if (_statpos_char_check(*(a3 + 160), &v8[v10], v11))
      {
        break;
      }

      v10 += v11;
      if (!--v9)
      {
        return 0;
      }
    }

    *a6 = 49;
  }

  return 0;
}

uint64_t statpos_fe_allupper(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, _WORD *a6)
{
  *a6 = 49;
  v7 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v8 = Utf8_Utf8NbrOfSymbols(v7);
  v9 = v8 - 1;
  if (v8 != 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = utf8_determineUTF8CharLength(v7[v10]);
      if (utf8_BelongsToSet(0x12u, v7, v10, v11) != 1 && utf8_BelongsToSet(0x15u, v7, v10, v11) != 1 && utf8_BelongsToSet(0x18u, v7, v10, v11) != 1 && utf8_BelongsToSet(0x1Bu, v7, v10, v11) != 1 && utf8_BelongsToSet(0x1Eu, v7, v10, v11) != 1)
      {
        break;
      }

      v10 += v11;
      if (!--v9)
      {
        return 0;
      }
    }

    *a6 = 48;
  }

  return 0;
}

uint64_t statpos_fe_leadingcap(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v8 = *(*a2 + 160 * (a5 + a4) + 48);
  v9 = *v8;
  v10 = utf8_determineUTF8CharLength(**v8);
  if (a4 && ((v11 = v10, utf8_BelongsToSet(0x12u, v9, 0, v10) == 1) || utf8_BelongsToSet(0x15u, v9, 0, v11) == 1 || utf8_BelongsToSet(0x18u, v9, 0, v11) == 1 || utf8_BelongsToSet(0x1Bu, v9, 0, v11) == 1 || utf8_BelongsToSet(0x1Eu, v9, 0, v11) == 1))
  {
    v12 = "1";
  }

  else
  {
    v12 = "0";
  }

  *a6 = *v12;
  return 0;
}

uint64_t statpos_fe_single_char(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, __int16 *a6)
{
  if (Utf8_Utf8NbrOfSymbols(**(*a2 + 160 * a4 + 160 * a5 + 48)) == 2)
  {
    v7 = 49;
  }

  else
  {
    v7 = 48;
  }

  *a6 = v7;
  return 0;
}

uint64_t statpos_fe_contains_digit(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, _WORD *a6)
{
  *a6 = 48;
  v7 = **(*a2 + 160 * a4 + 160 * a5 + 48);
  v8 = Utf8_Utf8NbrOfSymbols(v7);
  v9 = v8 - 1;
  if (v8 != 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = utf8_determineUTF8CharLength(v7[v10]);
      if (utf8_BelongsToSet(6u, v7, v10, v11) == 1)
      {
        break;
      }

      v10 += v11;
      if (!--v9)
      {
        return 0;
      }
    }

    *a6 = 49;
  }

  return 0;
}

uint64_t statpos_fe_hphn_wrd(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5, char *a6)
{
  v9 = *a2 + 160 * a4;
  v10 = *(v9 + 120);
  if (!v10)
  {
    v10 = **(v9 + 48);
  }

  v11 = Utf8_Utf8NbrOfSymbols(v10);
  v12 = v11 - 1;
  if (v11 == 1)
  {
    goto LABEL_20;
  }

  v26 = a5;
  __dst = a6;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v11 - 1;
  do
  {
    v18 = utf8_determineUTF8CharLength(v10[v16]);
    if (v12 != 1)
    {
      v19 = _statpos_char_check(*(a3 + 160), &v10[v16], v18);
      v20 = v15 ? v15 : v16;
      if (v19)
      {
        v15 = v20;
        v14 = v18 + v16;
        v13 = 1;
      }
    }

    v16 += v18;
    --v17;
  }

  while (v17);
  a6 = __dst;
  if (v13 && v15)
  {
    if (v26 == -1)
    {
      v23 = strlen(v10);
      if (v23 - v14 > 0x10)
      {
        v23 = v14 + 16;
      }

      v24 = &v10[v14];
      v25 = v23 - v14;
      strncpy(__dst, v24, v23 - v14);
      __dst[v25] = 0;
    }

    else if (v26 == 1)
    {
      if (v15 >= 0x10)
      {
        v21 = 16;
      }

      else
      {
        v21 = v15;
      }

      strncpy(__dst, v10, v21);
      __dst[v21] = 0;
    }
  }

  else
  {
LABEL_20:
    *a6 = 61;
  }

  return 0;
}

uint64_t statpos_fe_char(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _BYTE *a6)
{
  LOBYTE(v7) = a5;
  if (a5 <= 0)
  {
    v14 = -1;
    if (a5 && a4)
    {
      v15 = ~a4;
      v16 = 160 * (a4 - 1) + 48;
      do
      {
        LOBYTE(v7) = v7 + Utf8_Utf8NbrOfSymbols(**(*a2 + v16)) - 1;
        --v14;
        if ((v7 & 0x80) == 0)
        {
          break;
        }

        v16 -= 160;
      }

      while (v14 > v15);
    }

    v12 = v14 + ((v7 & 0x80) == 0);
  }

  else
  {
    v10 = 160 * a4 + 208;
    v11 = a4 + 1;
    v12 = 1;
    while (v11 < *(a2 + 8))
    {
      v13 = Utf8_Utf8NbrOfSymbols(**(*a2 + v10));
      v7 = (v7 - v13 + 1);
      ++v12;
      v10 += 160;
      ++v11;
      if (v7 <= 0)
      {
        --v12;
        LOBYTE(v7) = v13 + v7 - 2;
        break;
      }
    }
  }

  v17 = v12 + a4;
  if ((v12 + a4) < 0 || v17 >= *(a2 + 8))
  {
    *a6 = 61;
  }

  else
  {
    v18 = **(*a2 + 160 * v17 + 48);
    v19 = Utf8_LengthInBytes(v18, v7);
    v20 = strlen(v18) - v19;
    if (v20 >= Utf8_LengthInBytes(&v18[v19], 1))
    {
      utf8_getUTF8Char(v18, v19, a6);
    }
  }

  return 0;
}

uint64_t statpos_fe_wrd_prfx1(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _BYTE *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 >= 0 && v7 < *(a2 + 8) && (v8 = **(*a2 + 160 * v7 + 48), ((Utf8_Utf8NbrOfSymbols(v8) - 1) & 0xFFFE) != 0))
  {
    utf8_getUTF8Char(v8, 0, a6);
  }

  else
  {
    *a6 = 61;
  }

  return 0;
}

uint64_t statpos_fe_wrd_prfx2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8) || (v8 = **(*a2 + 160 * v7 + 48), (Utf8_Utf8NbrOfSymbols(v8) - 1) < 3u))
  {
    *a6 = 61;
  }

  else
  {
    v9 = Utf8_LengthInBytes(v8, 2);
    strncpy(a6, v8, v9);
    a6[v9] = 0;
  }

  return 0;
}

uint64_t statpos_fe_wrd_sffx1(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 >= 0 && v7 < *(a2 + 8) && (v8 = **(*a2 + 160 * v7 + 48), ((Utf8_Utf8NbrOfSymbols(v8) - 1) & 0xFFFE) != 0))
  {
    v9 = strlen(v8);
    utf8_GetUtf8Symbol(v8, v9 - 1, v9, a6);
  }

  else
  {
    *a6 = 61;
  }

  return 0;
}

uint64_t statpos_fe_wrd_sffx2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8) || (v8 = **(*a2 + 160 * v7 + 48), v9 = (Utf8_Utf8NbrOfSymbols(v8) - 1), v9 < 3))
  {
    *a6 = 61;
  }

  else
  {
    v10 = Utf8_LengthInBytes(v8, v9 - 2);
    strcpy(a6, &v8[v10]);
  }

  return 0;
}

uint64_t statpos_fe_startofword(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v7 = "=";
  }

  else
  {
    v7 = "1";
    if (v6 && *(*a2 + 160 * v6 - 140) != 1)
    {
      v7 = "0";
    }
  }

  *a6 = *v7;
  return 0;
}

uint64_t statpos_fe_fllw_by_sp(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, __int16 *a6)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    v7 = 61;
  }

  else if (*(*a2 + 160 * v6 + 20) == 1)
  {
    v7 = 49;
  }

  else
  {
    v7 = 48;
  }

  *a6 = v7;
  return 0;
}

uint64_t statpos_fe_fllw_by_anypunc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, _WORD *a6)
{
  v7 = a5 + a4;
  if (a5 + a4 < 0 || v7 >= *(a2 + 8))
  {
    v17 = "=";
  }

  else
  {
    v11 = **(*a2 + 160 * v7 + 48);
    v12 = Utf8_Utf8NbrOfSymbols(v11);
    v13 = Utf8_LengthInBytes(v11, v12 - 2);
    if (a4 + 1 == *(a2 + 8) || (v12 - 3) <= 0xFFFFFFFD && ((v14 = &v11[v13], v15 = strlen(v14), _statpos_char_check(*(a3 + 168), v14, v15)) || (v16 = strlen(v14), _statpos_char_check(*(a3 + 176), v14, v16))))
    {
      v17 = "1";
    }

    else
    {
      v17 = "0";
    }
  }

  *a6 = *v17;
  return 0;
}

uint64_t statpos_fe_cword_ambig(int a1, uint64_t a2, int a3, int a4, int a5, char *__dst)
{
  v6 = a5 + a4;
  if (a5 + a4 < 0 || v6 >= *(a2 + 8))
  {
    *__dst = 61;
  }

  else
  {
    v7 = *a2 + 160 * v6;
    if (*(v7 + 72) == 1)
    {
      v8 = *(v7 + 80);
    }

    else
    {
      v8 = **(v7 + 48);
    }

    strcpy(__dst, v8);
  }

  return 0;
}

char *statpos_getPOSTags(char *a1, const char **a2, unsigned __int16 *a3)
{
  v5 = a1;
  result = strchr(a1, 92);
  if (result)
  {
    v7 = result;
    v8 = *a3;
    do
    {
      v9 = a2;
      v10 = v8;
      while (v10)
      {
        v11 = *v9++;
        --v10;
        if (!strncmp(v11, v5, v7 - v5))
        {
          goto LABEL_8;
        }
      }

      strncpy(a2[v8], v5, v7 - v5);
      a2[*a3][v7 - v5] = 0;
      v8 = *a3 + 1;
      *a3 = v8;
LABEL_8:
      v5 = v7 + 1;
      v7 = strchr(v7 + 1, 92);
    }

    while (v7);
  }

  else if (!v5)
  {
    return result;
  }

  v12 = *a3;
  v13 = a2;
  for (i = v12; i; --i)
  {
    v15 = *v13++;
    result = strcmp(v15, v5);
    if (!result)
    {
      return result;
    }
  }

  result = strcpy(a2[v12], v5);
  ++*a3;
  return result;
}

uint64_t statpunc_setFeature(uint64_t a1, uint64_t a2, char *__s1, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 1296);
  if (v6 < 2)
  {
    return 0;
  }

  v11 = 0;
  v12 = *(a1 + 1312);
  v13 = (v6 - 1);
  while (1)
  {
    v14 = v11;
    if (!strcmp(__s1, *(v12 + 8 * v11)))
    {
      break;
    }

    v11 = v14 + 1;
    if (v13 <= (v14 + 1))
    {
      return 0;
    }
  }

  if (!*a5)
  {
    result = 0;
    **(a4 + 8 * v14) = 95;
    return result;
  }

  if (strlen(a5) <= 0x40)
  {
    v17 = *(a4 + 8 * v14);
    goto LABEL_13;
  }

  v16 = strlen(a5);
  v17 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v14), v16 + 1);
  if (v17)
  {
    *(a4 + 8 * v14) = v17;
LABEL_13:
    strcpy(v17, a5);
    return 0;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN", 33000, 0, v18, v19, v20, v21, v5);
  return 2311069706;
}

uint64_t statpunc_initFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 8 * a4 - 8;
  while (1)
  {
    if (!*(a3 + v7))
    {
      v9 = heap_Calloc(*(a2 + 8), 1, 65);
      *(a3 + v7) = v9;
      if (!v9)
      {
        break;
      }
    }

    result = statpunc_setFeature(a1, a2, *(*(a1 + 1312) + v7), a3, "_");
    if ((result & 0x80000000) == 0)
    {
      v15 = v8 == v7;
      v7 += 8;
      if (!v15)
      {
        continue;
      }
    }

    return result;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN", 33000, 0, v10, v11, v12, v13, v16);
  return 2311069706;
}

uint64_t statpunc_dumpFeatureVectorAndResult(uint64_t a1, uint64_t a2, uint64_t a3, char *__src)
{
  v16 = *MEMORY[0x1E69E9840];
  strncpy(__dst, __src, 0x100uLL);
  __dst[255] = 0;
  if (*(a1 + 1296) >= 2u)
  {
    v10 = 0;
    do
    {
      v11 = strlen(*(a3 + 8 * v10));
      if (v11 + strlen(__dst) + 2 > 0xFF)
      {
        break;
      }

      __strcat_chk();
      v12 = *(a3 + 8 * v10);
      __strcat_chk();
      ++v10;
    }

    while (*(a1 + 1296) - 1 > v10);
  }

  result = log_OutText(*(a2 + 32), "FE_PUNCSPTN", 5, 0, "traceFeatureVector %s", v7, v8, v9, __dst);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t statpunc_getIgtreeBrkStr(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  *v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v9);
  if ((result & 0x80000000) == 0)
  {
    strcpy(v10, "statpunc_");
    __strcat_chk();
    LODWORD(result) = brokeraux_ComposeBrokerString(a1, v10, 0, 1, *v9, 0, 0, a3, a4);
    if (result >= 0)
    {
      result = result;
    }

    else
    {
      result = result | 0x89C02000;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t statpunc_readIGTree(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  *v32 = 0;
  IgtreeBrkStr = statpunc_getIgtreeBrkStr(a3, a4, v33, 0x100uLL);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  IgtreeBrkStr = ssftriff_reader_ObjOpen(a1, a2, 2, v33, "IGTR", 1031, v32);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  v10 = heap_Calloc(*(a3 + 8), 1, 1600);
  *(a5 + 8) = v10;
  if (!v10)
  {
    log_OutPublic(*(a3 + 32), "FE_PUNCSPTN", 35000, 0, v11, v12, v13, v14, v31);
    v22 = 2311069706;
    goto LABEL_21;
  }

  IgtreeBrkStr = igtree_Init(a1, a2, *v32, v10);
  if ((IgtreeBrkStr & 0x80000000) != 0)
  {
LABEL_20:
    v22 = IgtreeBrkStr;
  }

  else
  {
    v22 = ssftriff_reader_ObjClose(*v32, v15, v16, v17, v18, v19, v20, v21);
    if ((v22 & 0x80000000) == 0)
    {
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      *(a5 + 32) = 393219;
      *(a5 + 40) = ":;.!?()[]{}#',-<>";
      v23 = *(a5 + 8);
      v24 = *(v23 + 1336);
      if (v24)
      {
        v25 = 0;
        v26 = *(v23 + 1328);
        do
        {
          v27 = (v26 + 16 * v25);
          v28 = *v27;
          if (!strcmp(*v27, "leftcollocation"))
          {
            *(a5 + 16) = v27[1];
          }

          else if (!strcmp(v28, "rightcollocation"))
          {
            *(a5 + 24) = v27[1];
          }

          else if (!strcmp(v28, "dist2endmaxshort"))
          {
            *(a5 + 32) = atoi(v27[1]);
          }

          else if (!strcmp(v28, "dist2endminlong"))
          {
            *(a5 + 34) = atoi(v27[1]);
          }

          else if (!strcmp(v28, "punctuation"))
          {
            *(a5 + 40) = v27[1];
          }

          ++v25;
        }

        while (v24 > v25);
      }
    }
  }

LABEL_21:
  v29 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t statpunc_freeIGTree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  v10 = igtree_Deinit(a1, a2, a3, a4, a5, a6, a7, a8);
  if ((v10 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a2);
  }

  return v10;
}

BOOL bstartword(char *__s, char *a2, char *a3)
{
  if (a3 == a2)
  {
    return 1;
  }

  v5 = a3 - 1;
  v6 = a3 - 1;
  do
  {
    v8 = *v6--;
    v7 = v8;
    v9 = strchr(__s, v8);
    if (v5 <= a2)
    {
      break;
    }

    v5 = v6;
  }

  while (v9);
  v11 = v6 + 1 == a2 && v9 != 0;
  return v7 == 32 || v11;
}

uint64_t statpunc_extractFeatures(uint64_t a1, uint64_t a2, char *a3, char *a4, const char *a5, uint64_t a6)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 && (v11 = strchr(*(a1 + 16), 124)) != 0)
  {
    v12 = v11;
    v13 = 0;
    do
    {
      *v12 = 0;
      v14 = strstr(a3, v10);
      if (v14 && v14 < a4)
      {
        v13 = statpunc_setFeature(v9, a2, "collocation", a6, "left");
      }

      *v12 = 124;
      v10 = v12 + 1;
      v12 = strchr(v12 + 1, 124);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = strchr(*(a1 + 24), 124);
    if (v16)
    {
      v17 = v16;
      do
      {
        *v17 = 0;
        if (strstr(a3, v15) > a4)
        {
          v13 = statpunc_setFeature(v9, a2, "collocation", a6, "right");
        }

        *v17 = 124;
        v15 = v17 + 1;
        v17 = strchr(v17 + 1, 124);
      }

      while (v17);
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

  v19 = *v18;
  if (strchr(*(a1 + 40), v19))
  {
    v20 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v19, 0xBuLL))
    {
      goto LABEL_30;
    }

    v20 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "lwordendchar", a6, v20);
LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

    ;
  }

  do
  {
    v23 = *i++;
    v22 = v23;
  }

  while (v23 == 32);
  if (strchr(*(a1 + 40), v22))
  {
    v24 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v22, 0xBuLL))
    {
      goto LABEL_40;
    }

    v24 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "rwordbegchar", a6, v24);
LABEL_40:
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v25 = *(a1 + 40);
  if (a4 > a3)
  {
    v26 = *(a4 - 1);
    if (strchr(*(a1 + 40), v26))
    {
      v27 = "punc";
    }

    else
    {
      if (!memchr("0123456789", v26, 0xBuLL))
      {
        goto LABEL_48;
      }

      v27 = "digit";
    }

    v13 = statpunc_setFeature(v9, a2, "lchar", a6, v27);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v25 = *(a1 + 40);
  }

LABEL_48:
  v28 = a4[1];
  if (strchr(v25, v28))
  {
    v29 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v28, 0xBuLL))
    {
      goto LABEL_54;
    }

    v29 = "digit";
  }

  v13 = statpunc_setFeature(v9, a2, "rchar", a6, v29);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v25 = *(a1 + 40);
LABEL_54:
  if (a4 == a3)
  {
    goto LABEL_60;
  }

  v30 = a4 - 1;
  v31 = a4 - 1;
  do
  {
    v32 = *v31--;
    v33 = strchr(v25, v32);
    if (v30 <= a3)
    {
      break;
    }

    v30 = v31;
  }

  while (v33);
  if (v31 + 1 == a3 && v33)
  {
LABEL_60:
    v34 = a4 + 1;
    v35 = "isolated";
    while (1)
    {
      v37 = *v34++;
      v36 = v37;
      if (!v37)
      {
        goto LABEL_80;
      }

      v38 = strchr(v25, v36);
      if (v36 != 32 && v38 == 0)
      {
        if (strcmp(a5, a1))
        {
          goto LABEL_81;
        }

        v13 = statpunc_setFeature(v9, a2, "sentpos", a6, "start");
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

        return v13;
      }
    }
  }

  v40 = a4 + 1;
  while (1)
  {
    v42 = *v40++;
    v41 = v42;
    if (!v42)
    {
      break;
    }

    v43 = strchr(v25, v41);
    if (v41 != 32 && v43 == 0)
    {
      goto LABEL_81;
    }
  }

  if (!strcmp(a5, (a1 + 4)))
  {
    v35 = "end";
LABEL_80:
    v13 = statpunc_setFeature(v9, a2, "sentpos", a6, v35);
  }

LABEL_81:
  v45 = *(a1 + 40);
  if (bstartword(v45, a3, a4))
  {
    v46 = 1;
    do
    {
      v47 = a4[v46];
      if (!a4[v46])
      {
        goto LABEL_101;
      }
    }

    while (strchr(v45, a4[v46++]));
    if ((v47 & 0xFFFFFFDF) == 0)
    {
LABEL_101:
      v57 = "pos";
      v58 = "isolated";
      goto LABEL_102;
    }

    if (!strcmp(a5, a1))
    {
      v13 = statpunc_setFeature(v9, a2, "pos", a6, "start");
      if ((v13 & 0x80000000) == 0)
      {
        v49 = strstr(a4 + 1, (a1 + 4));
        if (v49)
        {
          v50 = v49;
          v51 = *(a1 + 40);
          if (!bstartword(v51, a3, v49))
          {
            v52 = 1;
            while (1)
            {
              v53 = v50[v52];
              if (!v50[v52])
              {
                break;
              }

              if (!strchr(v51, v50[v52++]))
              {
                if ((v53 & 0xFFFFFFDF) != 0)
                {
                  return v13;
                }

                break;
              }
            }

            if (v50 <= a4)
            {
              v55 = 0;
            }

            else
            {
              v55 = 0;
              do
              {
                if (*a4 == 32)
                {
                  ++v55;
                  do
                  {
                    v56 = *++a4;
                  }

                  while (v56 == 32);
                }

                ++a4;
              }

              while (a4 < v50);
            }

            if (*(a1 + 32) <= v55)
            {
              v57 = "dist2end";
              if (*(a1 + 34) <= v55)
              {
                v58 = "long";
              }

              else
              {
                v58 = "medium";
              }
            }

            else
            {
              v57 = "dist2end";
              v58 = "short";
            }

            goto LABEL_102;
          }
        }
      }
    }

    return v13;
  }

  v60 = a4 + 1;
  while (1)
  {
    v62 = *v60++;
    v61 = v62;
    if (!v62)
    {
      break;
    }

    if (!strchr(v45, v61))
    {
      if ((v61 & 0xFFFFFFDF) != 0)
      {
        return v13;
      }

      break;
    }
  }

  if (strcmp(a5, (a1 + 4)))
  {
    return v13;
  }

  v57 = "pos";
  v58 = "end";
LABEL_102:

  return statpunc_setFeature(v9, a2, v57, a6, v58);
}

uint64_t statpunc_insertMarker(uint64_t a1, unsigned int a2, const char *a3, uint64_t *a4, unsigned __int16 *a5, uint64_t *a6, _WORD *a7, void *a8)
{
  v8 = a8;
  v11 = a5;
  v15 = a1;
  v16 = *(*a8 + 12);
  v17 = *a5;
  if ((((((-13107 * v17) & 0xFFFCu) >> 1) | (v17 << 15)) >> 1) < 0xCCDu)
  {
    v27 = heap_Realloc(*(a1 + 8), *a4, 8 * *a5 + 80);
    if (!v27 || (*a4 = v27, (v18 = heap_Realloc(*(v15 + 8), *a6, 20 * (*v11 / 0xAu + 1))) == 0))
    {
LABEL_36:
      v45 = 2311069706;
      v54 = *(v15 + 32);
LABEL_37:
      log_OutPublic(v54, "FE_PUNCSPTN", 33000, 0, v28, v29, v30, v31, v56);
      return v45;
    }

    v61 = a4;
    *a6 = v18;
    LOWORD(v17) = *v11;
  }

  else
  {
    v61 = a4;
    v18 = *a6;
  }

  *(v18 + 2 * v17) = a2;
  v19 = *a7;
  v60 = a7;
  if (!*a7)
  {
    LOWORD(v22) = 0;
    goto LABEL_34;
  }

  v56 = v15;
  v57 = v11;
  v58 = a3;
  v59 = v8;
  v20 = *v8;
  v21 = v20[3];
  if (v21 - v16 <= a2)
  {
    LOWORD(v22) = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v32 = 0;
    v33 = v20;
    do
    {
      v34 = *v33;
      if (*v33 == 1)
      {
        LOWORD(v22) = v32;
      }

      if (v34 == 1)
      {
        v24 = v21;
      }

      if (v34 == 51)
      {
        v35 = *(v33 + 3);
        v36 = strstr(v35, "PUNC");
        v26 = !v36 || v36 != v35 && *(v36 - 1) == 95;
        v23 = v32;
        v25 = v21;
      }

      else
      {
        v26 = 1;
      }

      if (v19 <= ++v32)
      {
        break;
      }

      v21 = v20[8 * v32 + 3];
      v33 += 8;
    }

    while (v21 - v16 <= a2);
  }

  else
  {
    LOWORD(v22) = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
  }

  v11 = v57;
  if (!v23)
  {
    a3 = v58;
    v8 = v59;
    v15 = v56;
    goto LABEL_34;
  }

  v37 = v24 == v25;
  a3 = v58;
  v8 = v59;
  v15 = v56;
  if (!v37)
  {
LABEL_34:
    v22 = v22;
    v46 = v22 + 1;
    memmove((*v8 + 32 * v22 + 64), (*v8 + 32 * v46), 32 * (v19 + ~v22));
    v47 = *v8;
    v48 = *v8 + 32 * v46;
    *v48 = 51;
    v49 = &v47[8 * v22];
    *(v48 + 4) = *(v49 + 1);
    *(v48 + 12) = v49[3];
    v50 = strlen(a3);
    *(*v8 + 32 * v46 + 24) = heap_Alloc(*(v15 + 8), (v50 + 1));
    v51 = *(*v8 + 32 * v46 + 24);
    if (v51)
    {
      v52 = *v61;
      v53 = *v11;
      *v11 = v53 + 1;
      *(v52 + 8 * v53) = v51;
      strcpy(*(*v8 + 32 * v46 + 24), a3);
      v45 = 0;
      ++*v60;
      return v45;
    }

    goto LABEL_36;
  }

  if (!v26 && !strstr(v58, "S_PUNC") && !strstr(v58, "E_PUNC"))
  {
    return 0;
  }

  v38 = strlen(v58);
  v39 = strlen(*(*v59 + 32 * v23 + 24));
  v40 = heap_Alloc(*(v56 + 8), (v38 + v39 + 2));
  if (!v40)
  {
    v45 = 2311069706;
    v54 = *(v56 + 32);
    goto LABEL_37;
  }

  v41 = v40;
  v42 = *v61;
  v43 = *v57;
  *v57 = v43 + 1;
  *(v42 + 8 * v43) = v40;
  v44 = strcpy(v40, *(*v59 + 32 * v23 + 24));
  *&v41[strlen(v44)] = 59;
  strcat(v41, v58);
  v45 = 0;
  *(*v59 + 32 * v23 + 24) = v41;
  return v45;
}

char *statpunc_Strpunc(char *a1, const char *a2, const char *a3, const char **a4)
{
  v8 = strstr(a1, a2);
  result = strstr(a1, a3);
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

uint64_t statpunc_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  LODWORD(v8) = a6;
  v10 = a4;
  v11 = a2;
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  v93 = 0;
  __src = 0;
  v92 = 0;
  v90 = 0;
  v91 = 0;
  v13 = (*(a2 + 104))(a3, a4, 1, 0, &v99);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  v14 = 0;
  if (((*(v11 + 184))(a3, v10, v99, 0, &v99 + 2) & 0x80000000) != 0)
  {
    goto LABEL_59;
  }

  if (HIWORD(v99) != 1)
  {
    goto LABEL_59;
  }

  v13 = (*(v11 + 176))(a3, v10, v99, 0, &v97, &v98 + 2);
  v14 = 0;
  if ((v13 & 0x80000000) != 0 || HIWORD(v98) < 2u)
  {
    goto LABEL_59;
  }

  v13 = (*(v11 + 176))(a3, v10, v99, 1, &__src, &v92 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  v85 = *(__src + 3);
  v15 = statpunc_Strpunc(v97, a5, (a5 + 4), &v95);
  if (!v15)
  {
    goto LABEL_58;
  }

  v16 = 0;
  do
  {
    ++v16;
    v15 = statpunc_Strpunc(v15 + 1, a5, (a5 + 4), &v95);
  }

  while (v15);
  if (!v16)
  {
LABEL_58:
    v14 = 0;
    goto LABEL_59;
  }

  v17 = heap_Calloc(*(a1 + 8), 1, 32 * (HIWORD(v92) + v16));
  v93 = v17;
  if (!v17)
  {
LABEL_57:
    v13 = 2311069706;
    log_OutPublic(*(a1 + 32), "FE_PUNCSPTN", 33000, 0, v18, v19, v20, v21, v75);
    goto LABEL_58;
  }

  v86 = a7;
  memcpy(v17, __src, 32 * HIWORD(v92));
  v22 = v97;
  v23 = statpunc_Strpunc(v97, a5, (a5 + 4), &v95);
  v81 = v11;
  if (!v23)
  {
    v76 = 0;
LABEL_66:
    v46 = strlen(v22);
    v47 = heap_Calloc(*(a1 + 8), 1, (v46 + 1));
    v14 = v47;
    if (v47)
    {
      strcpy(v47, v97);
      v52 = v81;
      if (v8 && v92)
      {
        v88 = 0;
        v84 = 0;
        v8 = v8;
        v53 = v86;
        v79 = v10;
        v80 = a1;
        v78 = v8;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            v55 = (v53 + (i << 9));
            if (!strcmp(v91[v88], v55))
            {
              v56 = strlen(v55 + 256);
              v57 = strlen(v14);
              v58 = heap_Realloc(*(a1 + 8), v14, v56 + v57 + 1);
              if (!v58)
              {
                goto LABEL_92;
              }

              v59 = v58;
              v60 = v90;
              v61 = *(v90 + 2 * v88);
              v62 = v61 + v84;
              v82 = &v58[v62];
              v83 = v62 + v56;
              v63 = strlen(v58);
              v64 = v61 + v84;
              v10 = v79;
              memmove(&v59[v83], v82 + 1, v63 - v64);
              memcpy(&v59[*(v60 + 2 * v88) + v84], v55 + 256, v56);
              v65 = HIWORD(v92);
              v52 = v81;
              v53 = v86;
              if (HIWORD(v92))
              {
                v66 = *(v60 + 2 * v88) + v84;
                v67 = v93 + 12;
                do
                {
                  if (v66 < (*v67 - v85))
                  {
                    *v67 += v56 - 1;
                  }

                  v67 += 8;
                  --v65;
                }

                while (v65);
              }

              v84 = v84 + v56 - 1;
              v14 = v59;
              a1 = v80;
              v8 = v78;
            }

            else
            {
              v53 = v86;
            }
          }

          ++v88;
        }

        while (v88 < v92);
      }

      v68 = (*(v52 + 160))(a3, v10, v99, 1, HIWORD(v92), v93, &v98);
      if ((v68 & 0x80000000) != 0)
      {
        v13 = v68;
      }

      else
      {
        v69 = strlen(v14);
        v13 = (*(v52 + 160))(a3, v10, v99, 0, (v69 + 1), v14, &v98);
        if ((v13 & 0x80000000) == 0)
        {
          v70 = v92;
          v37 = v76;
          if (v92)
          {
            v71 = v91;
            do
            {
              v72 = *v71++;
              heap_Free(*(a1 + 8), v72);
              --v70;
            }

            while (v70);
          }

          if (v90)
          {
            heap_Free(*(a1 + 8), v90);
          }

          if (v91)
          {
            heap_Free(*(a1 + 8), v91);
            if (v76)
            {
              goto LABEL_95;
            }

            goto LABEL_59;
          }

          goto LABEL_94;
        }
      }
    }

    else
    {
LABEL_92:
      v13 = 2311069706;
      log_OutPublic(*(a1 + 32), "FE_PUNCSPTN", 33000, 0, v48, v49, v50, v51, v75);
    }

LABEL_93:
    v37 = v76;
LABEL_94:
    if (v37)
    {
      goto LABEL_95;
    }

    goto LABEL_59;
  }

  v24 = v23;
  v25 = 0;
  v76 = 0;
  while (1)
  {
    v26 = v97;
    v101 = 0;
    v102[0] = 0;
    v100 = 0;
    v27 = (*(v11 + 104))(a3, v10, 3, v99, &v101 + 2);
    if ((v27 & 0x80000000) != 0)
    {
      goto LABEL_64;
    }

    v87 = v25;
    v31 = HIWORD(v101);
    if (HIWORD(v101))
    {
      v32 = 0;
      v33 = (v24 - v26);
      while (1)
      {
        v27 = (*(v11 + 168))(a3, v10, v31, 0, 1, v102, &v101);
        if ((v27 & 0x80000000) != 0)
        {
          break;
        }

        v27 = (*(v11 + 168))(a3, v10, HIWORD(v101), 1, 1, &v100 + 2, &v101);
        if ((v27 & 0x80000000) != 0)
        {
          break;
        }

        v27 = (*(v11 + 168))(a3, v10, HIWORD(v101), 2, 1, &v100, &v101);
        if ((v27 & 0x80000000) != 0)
        {
          break;
        }

        if (v100 > v33 && HIWORD(v100) <= v33 && (v102[0] & 0xFFFFFFFD) == 4)
        {
          v32 = 1;
        }

        v36 = (*(v11 + 120))(a3, v10, HIWORD(v101), &v101 + 2);
        v13 = v36;
        if ((v36 & 0x80000000) == 0)
        {
          v31 = HIWORD(v101);
          if (HIWORD(v101))
          {
            continue;
          }
        }

        v37 = v76;
        if ((v36 & 0x80000000) == 0)
        {
          if (v32)
          {
            goto LABEL_54;
          }

          goto LABEL_35;
        }

        v14 = 0;
        if (v76)
        {
          goto LABEL_95;
        }

        goto LABEL_59;
      }

LABEL_64:
      v13 = v27;
      v14 = 0;
      goto LABEL_93;
    }

    v37 = v76;
LABEL_35:
    if (!v37)
    {
      log_OutText(*(a1 + 32), "FE_PUNCSPTN", 5, 0, "traceFeatureVector %s", v28, v29, v30, v97);
      v37 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(a5 + 8) + 1296) - 8);
      if (!v37)
      {
        goto LABEL_57;
      }
    }

    inited = statpunc_initFeatureVector(*(a5 + 8), a1, v37, (*(*(a5 + 8) + 1296) - 1));
    if ((inited & 0x80000000) != 0 || (inited = statpunc_extractFeatures(a5, a1, v97, v24, v95, v37), (inited & 0x80000000) != 0) || (v25 = v87) != 0 && (inited = statpunc_setFeature(*(a5 + 8), a1, "startpred", v37, v87), (inited & 0x80000000) != 0) || (inited = igtree_Process(*(a5 + 8), v37, &v96), (inited & 0x80000000) != 0))
    {
      v13 = inited;
      v14 = 0;
      goto LABEL_95;
    }

    if (!strcmp(*v37, "start"))
    {
      v25 = v96;
    }

    statpunc_dumpFeatureVectorAndResult(*(a5 + 8), a1, v37, v96);
    v39 = v96;
    if (!strstr(v96, "IGNORE"))
    {
      break;
    }

LABEL_55:
    v76 = v37;
    v24 = statpunc_Strpunc(v24 + 1, a5, (a5 + 4), &v95);
    if (!v24)
    {
      v22 = v97;
      goto LABEL_66;
    }
  }

  v87 = v25;
  v77 = v37;
  v40 = v97;
  v41 = v24 - v97;
  if (!strstr(v39, "S_PUNC"))
  {
    v42 = v41;
    if (v41)
    {
      while (1)
      {
        v43 = v40[v42 - 1];
        if (v43 != 32 && !strchr(*(a5 + 40), v43))
        {
          break;
        }

        if (!--v42)
        {
          v41 = 0;
          goto LABEL_52;
        }
      }

      v41 = v42;
    }
  }

LABEL_52:
  inserted = statpunc_insertMarker(a1, v41, v39, &v91, &v92, &v90, &v92 + 1, &v93);
  if ((inserted & 0x80000000) == 0)
  {
    v37 = v77;
    v11 = v81;
LABEL_54:
    v25 = v87;
    goto LABEL_55;
  }

  v13 = inserted;
  v14 = 0;
  v37 = v77;
LABEL_95:
  if (*(*(a5 + 8) + 1296) != 1)
  {
    v73 = (*(*(a5 + 8) + 1296) - 1);
    v74 = v37;
    do
    {
      if (*v74)
      {
        heap_Free(*(a1 + 8), *v74);
      }

      ++v74;
      --v73;
    }

    while (v73);
  }

  heap_Free(*(a1 + 8), v37);
LABEL_59:
  if (v93)
  {
    heap_Free(*(a1 + 8), v93);
  }

  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
  }

  return v13;
}

uint64_t fe_puncsptn_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  v5 = 2311069703;
  v21 = 0;
  v22 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v24);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v24[6], "LINGDB", &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v24[6], "FE_DEPES", &v22);
  v11 = v24[6];
  if ((Object & 0x80000000) != 0)
  {
LABEL_11:
    objc_ReleaseObject(v11, "LINGDB");
    return Object;
  }

  v12 = objc_GetObject(v11, "FE_DCTLKP", &v21);
  if ((v12 & 0x80000000) != 0)
  {
    Object = v12;
    objc_ReleaseObject(v24[6], "FE_DEPES");
    v11 = v24[6];
    goto LABEL_11;
  }

  v13 = heap_Alloc(v24[1], 168);
  if (v13)
  {
    *(v13 + 160) = 0;
    *(v13 + 128) = 0u;
    *(v13 + 144) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *a5 = v13;
    *(a5 + 8) = 62339;
    *v13 = v24;
    *(v13 + 8) = a3;
    *(v13 + 16) = a4;
    *(v13 + 24) = *(v23 + 8);
    v18 = v21;
    v19 = v22;
    *(v13 + 48) = *(v22 + 8);
    *(v13 + 32) = *(v19 + 16);
    *(v13 + 72) = *(v18 + 8);
    *(v13 + 56) = *(v18 + 16);
    *(v13 + 112) = 0;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0u;
    v5 = hlp_open(v13);
    if ((v5 & 0x80000000) != 0)
    {
      fe_puncsptn_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }
  }

  else
  {
    log_OutPublic(v24[4], "FE_PUNCSPTN", 33000, 0, v14, v15, v16, v17, v21);
    objc_ReleaseObject(v24[6], "LINGDB");
    objc_ReleaseObject(v24[6], "FE_DEPES");
    objc_ReleaseObject(v24[6], "FE_DCTLKP");
    return 2311069706;
  }

  return v5;
}

uint64_t hlp_open(void *a1)
{
  v1 = 2311069706;
  v56 = 0;
  v53 = -1;
  v52 = 0;
  if (!a1)
  {
    return 2311069702;
  }

  v54 = 0;
  v55 = 0;
  v3 = (*(a1[9] + 88))(a1[7], a1[8], &v56 + 4, &v56);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v5 = v56 == 1 && HIDWORD(v56) == 1;
  a1[15] = 0;
  *(a1 + 29) = v5;
  if ((paramc_ParamGet(*(*a1 + 40), "fecfg", &v55, 0) & 0x80000000) == 0 && (!LH_stricmp(v55, "mpthree") || !LH_stricmp(v55, "vadvde")))
  {
    *(a1 + 30) = 1;
  }

  v53 = -1;
  v3 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "puncsptneos", &v54, &v53, &v52);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  if (v53 == 1 && v54 && **v54 == 49)
  {
    *(a1 + 31) = 1;
  }

  LOBYTE(v59) = 0;
  LOWORD(__s1) = -1;
  v6 = a1[16];
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  v60 = 0;
  a1[16] = 0;
  v7 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "esctn", &v60, &__s1, &v59);
  IGTree = v7;
  if ((v7 & 0x80000000) != 0 || !__s1)
  {
    if ((v7 & 0x80000000) != 0)
    {
      return IGTree;
    }
  }

  else
  {
    v15 = strlen(*v60);
    v16 = heap_Calloc(*(*a1 + 8), 1, (v15 + 1));
    a1[16] = v16;
    if (!v16)
    {
      log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 34000, 0, v17, v18, v19, v20, v51);
      return 2311069706;
    }

    strcpy(v16, *v60);
    *(a1[16] + strlen(*v60) - 1) = 124;
  }

  v59 = 0;
  v60 = 0;
  v58 = 0;
  v21 = a1[17];
  if (*(a1 + 72))
  {
    v22 = 0;
    v23 = 8;
    do
    {
      statpunc_freeIGTree(*a1, *(v21 + v23), v8, v9, v10, v11, v12, v13);
      v21 = a1[17];
      *(v21 + v23) = 0;
      ++v22;
      v23 += 48;
    }

    while (v22 < *(a1 + 72));
  }

  else if (!v21)
  {
    goto LABEL_33;
  }

  heap_Free(*(*a1 + 8), v21);
LABEL_33:
  a1[17] = 0;
  *(a1 + 72) = 0;
  IGTree = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "statpunc", &v60, &v59, &v58);
  if ((IGTree & 0x80000000) == 0 && v59)
  {
    __s1 = 0;
    paramc_ParamGetStr(*(*a1 + 40), "fevoice", &__s1);
    v24 = heap_Alloc(*(*a1 + 8), 48 * v59);
    a1[17] = v24;
    if (!v24)
    {
      goto LABEL_63;
    }

    if (v59)
    {
      for (i = 0; i < v59; ++i)
      {
        if (__s1)
        {
          v30 = strstr(__s1, "uni");
          v31 = v60;
          if (v30)
          {
            v32 = v60[i];
LABEL_43:
            v33 = strchr(v32, 124);
            if (v33)
            {
              *v33 = 0;
              v34 = v33 + 1;
              v35 = a1[17];
              v36 = *(a1 + 72);
              __strcpy_chk();
              v37 = strchr(v34, 124);
              if (v37)
              {
                *v37 = 0;
                v38 = v37 + 1;
                v39 = a1[17] + 48 * *(a1 + 72);
                __strcpy_chk();
                v40 = strchr(v38, 124);
                if (v40)
                {
                  *v40 = 0;
                  IGTree = statpunc_readIGTree(a1[1], a1[2], *a1, v38, a1[17] + 48 * *(a1 + 72));
                  if ((IGTree & 0x80000000) != 0)
                  {
                    return IGTree;
                  }

                  ++*(a1 + 72);
                }
              }
            }

            continue;
          }
        }

        else
        {
          v31 = v60;
        }

        v32 = v31[i];
        if (!strstr(v32, "extended"))
        {
          goto LABEL_43;
        }
      }
    }
  }

  if ((IGTree & 0x80000000) == 0)
  {
    LOBYTE(v59) = 0;
    LOWORD(__s1) = 0;
    v41 = a1[19];
    if (v41)
    {
      heap_Free(*(*a1 + 8), v41);
    }

    v60 = 0;
    a1[19] = 0;
    *(a1 + 80) = 0;
    v42 = (*(a1[9] + 96))(a1[7], a1[8], "fecfg", "statpuncorthmap", &v60, &__s1, &v59);
    if ((v42 & 0x80000000) != 0 || !__s1)
    {
      return v42;
    }

    v43 = heap_Alloc(*(*a1 + 8), __s1 << 9);
    a1[19] = v43;
    if (v43)
    {
      if (__s1)
      {
        v44 = 0;
        do
        {
          v45 = strchr(v60[v44], 124);
          if (v45)
          {
            *v45 = 0;
            v46 = v45 + 1;
            v47 = a1[19];
            v48 = *(a1 + 80);
            __strcpy_chk();
            v49 = strchr(v46, 124);
            if (v49)
            {
              *v49 = 0;
              strcpy((a1[19] + (*(a1 + 80) << 9) + 256), v46);
              ++*(a1 + 80);
            }
          }

          ++v44;
        }

        while (v44 < __s1);
      }

      return v42;
    }

LABEL_63:
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 34000, 0, v25, v26, v27, v28, v51);
    return v1;
  }

  return IGTree;
}

uint64_t fe_puncsptn_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62339, 168);
  if ((result & 0x80000000) != 0)
  {
    return 2311069704;
  }

  if (!a1)
  {
    return result;
  }

  v10 = a1[13];
  if (v10)
  {
    heap_Free(*(*a1 + 8), v10);
  }

  a1[13] = 0;
  v11 = a1[10];
  if (v11)
  {
    heap_Free(*(*a1 + 8), v11);
  }

  a1[10] = 0;
  v12 = a1[11];
  if (v12)
  {
    heap_Free(*(*a1 + 8), v12);
  }

  a1[11] = 0;
  v13 = a1[12];
  if (v13)
  {
    heap_Free(*(*a1 + 8), v13);
  }

  a1[12] = 0;
  v14 = a1[16];
  if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
  }

  a1[16] = 0;
  v15 = a1[17];
  if (*(a1 + 72))
  {
    v16 = 0;
    v17 = 8;
    do
    {
      statpunc_freeIGTree(*a1, *(v15 + v17), v4, v5, v6, v7, v8, v9);
      v15 = a1[17];
      *(v15 + v17) = 0;
      ++v16;
      v17 += 48;
    }

    while (v16 < *(a1 + 72));
    goto LABEL_19;
  }

  if (v15)
  {
LABEL_19:
    heap_Free(*(*a1 + 8), v15);
    a1[17] = 0;
  }

  v18 = a1[19];
  if (v18)
  {
    heap_Free(*(*a1 + 8), v18);
    a1[19] = 0;
  }

  objc_ReleaseObject(*(*a1 + 48), "LINGDB");
  objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
  objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t fe_puncsptn_ObjReopen(void *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62339, 168) & 0x80000000) != 0)
  {
    return 2311069704;
  }

  return hlp_open(a1);
}

uint64_t fe_puncsptn_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62339, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2311069704;
  }
}

uint64_t fe_puncsptn_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v93 = 0;
  v92 = 0;
  __s1 = 0;
  v88 = 0;
  v86 = 0;
  if ((safeh_HandleCheck(a1, a2, 62339, 168) & 0x80000000) != 0)
  {
    return 2311069704;
  }

  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v91 = 0;
  v89 = 0;
  v87 = 0;
  *a5 = 1;
  v9 = *(a1 + 24);
  LOWORD(v85) = 0;
  v100 = 0;
  v99 = 0;
  *__src = 0;
  updated = (*(v9 + 104))(a3, a4, 1, 0, &v100 + 2);
  if ((updated & 0x80000000) != 0)
  {
    return updated;
  }

  v11 = (*(v9 + 184))(a3, a4, HIWORD(v100), 0, &v99);
  if ((v11 & 0x80000000) == 0 && v99 == 1)
  {
    v11 = (*(v9 + 104))(a3, a4, 3, HIWORD(v100), &v100);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v100;
      if (v100)
      {
        v13 = 0;
        while (1)
        {
          updated = (*(v9 + 168))(a3, a4, v12, 0, 1, __src, &v85);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (*__src > 3u)
          {
            v14 = v100;
          }

          else
          {
            updated = (*(v9 + 192))(a3, a4, v100);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            LOWORD(v100) = v13;
            v14 = v13;
          }

          if (v14)
          {
            updated = (*(v9 + 120))(a3, a4, v14, &v100);
            v13 = v14;
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          else
          {
            updated = (*(v9 + 104))(a3, a4, 3, HIWORD(v100), &v100);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          v12 = v100;
          if (!v100)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

LABEL_21:
  if (*(a1 + 144))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      updated = statpunc_Process(*a1, *(a1 + 24), a3, a4, *(a1 + 136) + v15, *(a1 + 160), *(a1 + 152));
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      ++v16;
      v15 += 48;
    }

    while (v16 < *(a1 + 144));
  }

  v11 = (*(*(a1 + 24) + 104))(a3, a4, 1, 0, &v97 + 2);
  if ((v11 & 0x80000000) == 0 && ((*(*(a1 + 24) + 184))(a3, a4, HIWORD(v97), 0, &v86) & 0x80000000) == 0 && v86 == 1)
  {
    v11 = (*(*(a1 + 24) + 176))(a3, a4, HIWORD(v97), 0, &v98, &v96);
    if ((v11 & 0x80000000) == 0 && v96 >= 2u)
    {
      v17 = (a1 + 104);
      v18 = strlen(v98);
      v19 = heap_Realloc(*(*a1 + 8), *(a1 + 104), (v18 + 101));
      if (!v19)
      {
        log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v20, v21, v22, v23, v82);
        return 2311069706;
      }

      *(a1 + 104) = v19;
      strcpy(v19, v98);
      updated = (*(*(a1 + 24) + 176))(a3, a4, HIWORD(v97), 1, &v89, &v88);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v24 = (v89 + 12);
      v25 = *(v89 + 12);
      *(a1 + 112) = 0;
      v26 = v88;
      if (v88)
      {
        v27 = 0;
        while (1)
        {
          v28 = *v24;
          v24 += 8;
          if (v28 != v25)
          {
            break;
          }

          if (v88 == ++v27)
          {
            goto LABEL_39;
          }
        }

        v26 = v27;
      }

LABEL_39:
      HIWORD(v100) = v26;
      updated = (*(*(a1 + 48) + 112))(*(a1 + 32), *(a1 + 40), &v87, 0);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      __src[0] = 0;
      updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v97), &v97);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v29 = v97;
      if (v97)
      {
        v30 = 0;
        v31 = 0;
        do
        {
          updated = (*(*(a1 + 24) + 168))(a3, a4, v29, 0, 1, &v91, &v96);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v97, 1, 1, &v93, &v96);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v97, 2, 1, &v92, &v96);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v91 == 5)
          {
            if (v93 <= v30 || (v32 = __src[0], v93 >= __src[0]))
            {
              v36 = 0;
              v31 = v97;
            }

            else
            {
              v33 = v31;
              v34 = v92;
              v83 = v33;
              v35 = (*(*(a1 + 24) + 160))(a3, a4, v33, 2, 1, __src, &v95);
              v11 = v35;
              if (v34 > v32)
              {
                if ((v35 & 0x80000000) != 0)
                {
                  return v11;
                }

                updated = (*(*(a1 + 24) + 160))(a3, a4, v97, 1, 1, __src, &v95);
                v31 = v83;
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

LABEL_56:
                v36 = 0;
                goto LABEL_57;
              }

              if ((v35 & 0x80000000) != 0)
              {
                return v11;
              }

              v36 = v97;
              v31 = v83;
            }
          }

          else
          {
            if ((v91 & 0xFFFFFFFD) != 4)
            {
              goto LABEL_56;
            }

            v36 = 0;
            v30 = v93;
            __src[0] = v92;
          }

LABEL_57:
          updated = (*(*(a1 + 24) + 120))(a3, a4, v97, &v97);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v36)
          {
            updated = (*(*(a1 + 24) + 192))(a3, a4, v36);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }
          }

          v29 = v97;
        }

        while (v97);
      }

      updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v97), &v97);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      v94 = v97;
      v37 = v97;
      if (!v97)
      {
        goto LABEL_81;
      }

      while (1)
      {
        updated = (*(*(a1 + 24) + 168))(a3, a4, v37, 0, 1, &v91, &v96);
        if ((updated & 0x80000000) != 0)
        {
          return updated;
        }

        v38 = *(a1 + 24);
        if (v91 == 5)
        {
          updated = (*(v38 + 168))(a3, a4, v94, 1, 1, &v93, &v96);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 168))(a3, a4, v94, 2, 1, &v92, &v96);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 24) + 176))(a3, a4, v94, 4, &__s1, &v96);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (v92 >= v93)
          {
            updated = hlp_Normalize(a1, (a1 + 104), v98, v93, v92, __s1, a3, a4, &v97, v89, &v100 + 1, &v88, v25);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v94 = v97;
            goto LABEL_78;
          }

          updated = (*(*(a1 + 24) + 120))(a3, a4, v94, &v94);
        }

        else
        {
          updated = (*(v38 + 120))(a3, a4, v94, &v94);
        }

        if ((updated & 0x80000000) != 0)
        {
          return updated;
        }

LABEL_78:
        if (v97)
        {
          v37 = v94;
          if (v94)
          {
            continue;
          }
        }

        v26 = HIWORD(v100);
LABEL_81:
        v39 = v88;
        if (v26 < v88)
        {
          v40 = strlen(*v17);
          v41 = 0;
          v42 = v25 + v40;
          v43 = v88 - v26;
          v44 = vdupq_n_s64(v43 - 1);
          v45 = (v43 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v46 = (v89 + 32 * v26 + 76);
          do
          {
            v47 = vdupq_n_s64(v41);
            v48 = vmovn_s64(vcgeq_u64(v44, vorrq_s8(v47, xmmword_1C378AF00)));
            if (vuzp1_s16(v48, *v44.i8).u8[0])
            {
              *(v46 - 16) = v42;
            }

            if (vuzp1_s16(v48, *&v44).i8[2])
            {
              *(v46 - 8) = v42;
            }

            if (vuzp1_s16(*&v44, vmovn_s64(vcgeq_u64(v44, vorrq_s8(v47, xmmword_1C378AEF0)))).i32[1])
            {
              *v46 = v42;
              v46[8] = v42;
            }

            v41 += 4;
            v46 += 32;
          }

          while (v45 != v41);
          LOWORD(v26) = v39;
        }

        HIWORD(v100) = v26;
        updated = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v97), &v97);
        if ((updated & 0x80000000) == 0)
        {
          for (i = v97; v97; i = v97)
          {
            updated = (*(*(a1 + 24) + 168))(a3, a4, i, 0, 1, &v91, &v96);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v50 = v97;
            if (v91 != 5)
            {
LABEL_130:
              v62 = 0;
              goto LABEL_131;
            }

            updated = (*(*(a1 + 24) + 168))(a3, a4, v97, 1, 1, &v93, &v96);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            updated = (*(*(a1 + 24) + 168))(a3, a4, v97, 2, 1, &v92, &v96);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v51 = v93;
            if (v93)
            {
              v52 = *v17;
              if (v93 < strlen(*v17))
              {
                do
                {
                  v53 = v52[v51 - 1];
                  if (v53 == 32)
                  {
                    break;
                  }

                  if (v53 == 95)
                  {
                    break;
                  }

                  v93 = ++v51;
                }

                while (v51 < strlen(v52));
              }
            }

            v54 = v92;
            if (v92)
            {
              v55 = *v17;
              if (v92 < strlen(*v17))
              {
                do
                {
                  v56 = v55[v54 - 1];
                  if (v56 == 32)
                  {
                    break;
                  }

                  if (v56 == 95)
                  {
                    break;
                  }

                  v92 = ++v54;
                }

                while (v54 < strlen(v55));
              }

              if (v54 < strlen(v55) && (*(*(a1 + 72) + 128))(*(a1 + 56), *(a1 + 64), &v55[v54]))
              {
                v57 = v92;
                LOWORD(v100) = 0;
                v85 = 0;
                updated = (*(*(a1 + 24) + 120))(a3, a4, v97, &v100);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (!v100)
                {
                  v85 = 2;
LABEL_119:
                  v58 = strlen(*v17);
                  Utf8Symbol = utf8_GetUtf8Symbol(*v17, v92, v58, __src);
                  do
                  {
                    v60 = v57--;
                  }

                  while (v57 && (*v17)[v57] == 32);
                  if (v92 > v60)
                  {
                    v61 = Utf8Symbol;
                    memmove(&(*v17)[v60 + Utf8Symbol], &(*v17)[v60], v92 - v60);
                    strncpy(&(*v17)[v60], __src, v61);
                  }

                  goto LABEL_124;
                }

                updated = (*(*(a1 + 24) + 168))(a3, a4);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (v85 != 5)
                {
                  goto LABEL_119;
                }

                updated = (*(*(a1 + 24) + 176))(a3, a4, v100, 4, &__s1, &v96);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                if (v85 != 5 || !__s1 || strcmp(__s1, "phon"))
                {
                  goto LABEL_119;
                }
              }
            }

LABEL_124:
            updated = (*(*(a1 + 24) + 160))(a3, a4, v97, 1, 1, &v93, &v95);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            updated = (*(*(a1 + 24) + 160))(a3, a4, v97, 2, 1, &v92, &v95);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            v50 = v97;
            if (v91 != 5)
            {
              goto LABEL_130;
            }

            if (v93 == v92)
            {
              v62 = v97;
            }

            else
            {
              v62 = 0;
            }

LABEL_131:
            updated = (*(*(a1 + 24) + 120))(a3, a4, v50, &v97);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if (v62)
            {
              updated = (*(*(a1 + 24) + 192))(a3, a4, v62);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }
            }
          }

          if (*(a1 + 116) != 1 || (updated = updateTokenDomainLanguageTags(a1, a3, a4, HIWORD(v97), *(a1 + 104)), (updated & 0x80000000) == 0))
          {
            hlp_AdjustMarkersToWordBoundaries(*(a1 + 104), v89, v88);
            hlp_AdjustUserTnToWordBoundaries(*(a1 + 104), a3, a4, *(a1 + 24));
            v63 = *(a1 + 104);
            if (strlen(v63))
            {
              v64 = 0;
              v65 = 1;
              v66 = 1;
              while (1)
              {
                v67 = v65 - 1;
                v68 = v63[v67];
                if (v68 == 44)
                {
                  if (v63[v66] != 44)
                  {
                    goto LABEL_157;
                  }

                  v63[v66] = 32;
                  v63 = *v17;
                  v68 = (*v17)[v67];
                }

                if (v68 && v68 != 95 && v68 != 32 || v66 != 1 && v66 != strlen(v63) && (v70 = v63[v66], v63[v66]) && v70 != 95 && v70 != 32)
                {
LABEL_157:
                  ++v66;
                  goto LABEL_158;
                }

                if (v66 != strlen(v63))
                {
                  if (v68 == 32 && v63[v66] == 95)
                  {
                    v63[v66] = 32;
                    v63 = *v17;
                  }

                  v69 = strlen(v63);
                  memmove(&v63[v66 - 1], &v63[v66], v69 - v66);
                  v63 = *v17;
                }

                v63[strlen(v63) - 1] = 0;
                updated = hlp_UpdateLingDBTokensForDeletion(a3, a4, *(a1 + 24), v67);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                hlp_UpdateMarkersForDeletion(v89, v88, v67);
                --v64;
                v63 = *v17;
LABEL_158:
                v65 = v66;
                if (v66 > strlen(v63))
                {
                  goto LABEL_161;
                }
              }
            }

            v64 = 0;
LABEL_161:
            v71 = *(a1 + 112) + v64;
            *(a1 + 112) = v71;
            v87 += v71;
            updated = (*(*(a1 + 48) + 104))(*(a1 + 32), *(a1 + 40));
            if ((updated & 0x80000000) == 0)
            {
              v72 = *(a1 + 104);
              *(v89 + 16) = strlen(v72);
              log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Space normalization: |%s|", v73, v74, v75, v72);
              hlp_AdjustPuncMarkers(*(a1 + 104), v89, v88);
              v76 = strlen(*(a1 + 104));
              v11 = (*(*(a1 + 24) + 160))(a3, a4, HIWORD(v97), 0, (v76 + 1), *(a1 + 104), &v95);
              if ((v11 & 0x80000000) == 0)
              {
                v86 = 0;
                if (((*(*(a1 + 24) + 152))(a3, a4, 3, HIWORD(v97), &v86) & 0x80000000) == 0)
                {
                  if (v86)
                  {
                    v11 = (*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v97), &v97);
                    if ((v11 & 0x80000000) == 0)
                    {
                      v77 = v97;
                      if (v97)
                      {
                        v78 = 0;
                        while (1)
                        {
                          updated = (*(*(a1 + 24) + 168))(a3, a4, v77, 0, 1, &v91, &v96);
                          if ((updated & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (v91 == 4)
                          {
                            updated = (*(*(a1 + 24) + 192))(a3, a4, v97);
                            if ((updated & 0x80000000) != 0)
                            {
                              return updated;
                            }

                            LOWORD(v97) = v78;
                            v79 = v78;
                          }

                          else
                          {
                            v79 = v97;
                          }

                          v80 = *(a1 + 24);
                          if (v79)
                          {
                            v11 = (*(v80 + 120))(a3, a4, v79, &v97);
                            v78 = v79;
                            if ((v11 & 0x80000000) != 0)
                            {
                              return v11;
                            }
                          }

                          else
                          {
                            v11 = (*(v80 + 104))(a3, a4, 3, HIWORD(v97), &v97);
                            if ((v11 & 0x80000000) != 0)
                            {
                              return v11;
                            }
                          }

                          v77 = v97;
                          if (!v97)
                          {
                            return v11;
                          }
                        }

                        return updated;
                      }
                    }
                  }
                }
              }

              return v11;
            }
          }
        }

        return updated;
      }
    }
  }

  return v11;
}

uint64_t hlp_Normalize(uint64_t a1, const char **a2, const char *a3, unsigned int a4, unsigned int a5, char *a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9, uint64_t a10, _WORD *a11, unsigned __int16 *a12, int a13)
{
  v16 = a4;
  v17 = a2;
  v263 = *MEMORY[0x1E69E9840];
  v261 = 0;
  v260 = a4;
  v259 = a4;
  v257 = 0;
  v253 = 0;
  v252 = *a9;
  v251 = a4;
  v19 = strlen(*a2);
  v249 = 0;
  v20 = a5 - v16;
  v247 = 0;
  v248 = 0;
  v246 = 0;
  strcpy(__s, "disambiguate_punctuation");
  v242 = strlen(__s);
  v21 = (a5 - v16 + 129);
  v22 = heap_Realloc(*(*a1 + 8), *(a1 + 80), v21);
  if (!v22)
  {
    goto LABEL_109;
  }

  *(a1 + 80) = v22;
  *v22 = 0;
  v27 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v21);
  if (!v27)
  {
    goto LABEL_109;
  }

  *(a1 + 88) = v27;
  *v27 = 0;
  v28 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v21);
  if (!v28)
  {
    goto LABEL_109;
  }

  __s1 = a6;
  v240 = a8;
  v234 = v19;
  v241 = a5;
  v29 = 0;
  v258 = 0;
  v255 = 0;
  v256 = 0;
  v254 = 0;
  v250 = 0;
  *(a1 + 96) = v28;
  v30 = 128;
  v31 = *a9;
  if (!*a9)
  {
    v32 = v16;
    v33 = 0;
    v34 = 0;
    goto LABEL_53;
  }

  v32 = v16;
  v33 = 0;
  v34 = 0;
  if (v241 > v16)
  {
    v237 = v17;
    v35 = 0;
    v29 = 0;
    v235 = v20 + 1;
    v236 = 1;
    v32 = v16;
    v36 = v241;
    v37 = v240;
    v38 = a7;
    while (1)
    {
      v39 = (*(*(a1 + 24) + 168))(v38, v37, v31, 0, 1, &v257, &v261);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v34 = (*(*(a1 + 24) + 168))(v38, v37, *a9, 1, 1, &v260, &v261);
      if ((v34 & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      v40 = v260;
      if (v260 >= v36 || (v257 & 0xFFFFFFFD) != 4)
      {
        goto LABEL_46;
      }

      (*(*(a1 + 24) + 168))(v38, v37, *a9, 2, 1, &v259, &v261);
      if (v257 == 6)
      {
        v39 = (*(*(a1 + 24) + 176))(v38, v37, *a9, 4, &v258, &v261);
        if ((v39 & 0x80000000) != 0)
        {
          goto LABEL_274;
        }
      }

      else
      {
        v258 = "_DT_";
      }

      v34 = (*(*(a1 + 24) + 176))(v38, v37, *a9, 3, &v250, &v261);
      if ((v34 & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      v41 = v259;
      v29 = v29 + strlen(v250) - v259 + v260;
      v42 = strstr(v250, "▲");
      if (v42)
      {
        v47 = v236;
        do
        {
          v48 = v42[3];
          if (!v42[3])
          {
            goto LABEL_246;
          }

          v49 = v29 - 3;
          v50 = v42 + 6;
          while (v48 != 226 || *(v50 - 2) != 150 || *(v50 - 1) != 188)
          {
            --v49;
            v48 = *(v50 - 2);
            ++v50;
            if (!v48)
            {
              goto LABEL_246;
            }
          }

          v29 = v49 - 3;
          v250 = v50;
          v42 = strstr(v50, "▲");
        }

        while (v42);
      }

      else
      {
        v47 = v236;
      }

      strncat(*(a1 + 80), &(*v237)[v32 + *(a1 + 112)], v41 - v32);
      if (v260 > v32)
      {
        for (i = Utf8_LengthInUtf8chars(&(*v237)[v32 + *(a1 + 112)], v260 - v32); i; --i)
        {
          *(*(a1 + 88) + strlen(*(a1 + 88))) = 32;
        }
      }

      v52 = Utf8_LengthInUtf8chars(&(*v237)[v260 + *(a1 + 112)], v259 - v260);
      v53 = strlen(v258);
      if (v52 >= (2 * v53 - 2))
      {
        *(*(a1 + 88) + strlen(*(a1 + 88))) = 88;
        v61 = strlen(v258);
        strncat(*(a1 + 88), v258 + 1, v61 - 2);
        v62 = v52 + 2;
        if (v62 != 2 * strlen(v258))
        {
          v63 = 0;
          v38 = a7;
          do
          {
            *(*(a1 + 88) + strlen(*(a1 + 88))) = 126;
            ++v63;
          }

          while (v62 - 2 * strlen(v258) > v63);
          goto LABEL_45;
        }
      }

      else
      {
        v54 = -2 - v52;
        if (v54 + 2 * v53)
        {
          for (j = 0; v54 + 2 * strlen(v258) > j; ++j)
          {
            if (v47 << 7 == v35)
            {
              v47 = (v47 + 1);
              v56 = v235 + (v47 << 7);
              v57 = heap_Realloc(*(*a1 + 8), *(a1 + 80), v56);
              if (!v57)
              {
                goto LABEL_109;
              }

              *(a1 + 80) = v57;
              v58 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v56);
              if (!v58)
              {
                goto LABEL_109;
              }

              *(a1 + 88) = v58;
              v59 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v56);
              if (!v59)
              {
                goto LABEL_109;
              }

              *(a1 + 96) = v59;
            }

            *(*(a1 + 80) + strlen(*(a1 + 80))) = 126;
            ++v35;
          }
        }

        v236 = v47;
        *(*(a1 + 88) + strlen(*(a1 + 88))) = 88;
        v60 = strlen(v258);
        strncat(*(a1 + 88), v258 + 1, v60 - 2);
      }

      v38 = a7;
LABEL_45:
      *(*(a1 + 88) + strlen(*(a1 + 88))) = 89;
      v64 = strlen(v258);
      strncat(*(a1 + 88), v258 + 1, v64 - 2);
      v32 = v259;
      v251 = v259;
      v40 = v260;
      v36 = v241;
      v37 = v240;
LABEL_46:
      if (v40 < v36)
      {
        v34 = (*(*(a1 + 24) + 120))(v38, v37, *a9, a9);
        if ((v34 & 0x80000000) != 0)
        {
          goto LABEL_110;
        }

        v40 = v260;
      }

      v31 = *a9;
      if (!*a9 || v40 >= v36)
      {
        v33 = v35;
        v17 = v237;
        v30 = v236 << 7;
        break;
      }
    }
  }

LABEL_53:
  v65 = v241 - v32;
  if (v241 > v32)
  {
    strncat(*(a1 + 80), &(*v17)[v32 + *(a1 + 112)], v65);
    for (k = Utf8_LengthInUtf8chars(&(*v17)[v32 + *(a1 + 112)], v65); k; --k)
    {
      *(*(a1 + 88) + strlen(*(a1 + 88))) = 32;
    }
  }

  if (strstr(__s1, "spell"))
  {
    v67 = strlen(*(a1 + 80));
    if (v67)
    {
      do
      {
        v68 = *(a1 + 80);
        v69 = (v67 - 1);
        if (*(v68 + v69) != 32)
        {
          break;
        }

        *(v68 + v69) = 0;
        *(*(a1 + 88) + Utf8_LengthInUtf8chars(*(a1 + 80), v69)) = 0;
        --v29;
        v67 = v69;
      }

      while (v69);
    }
  }

  if (v30 < v33)
  {
    goto LABEL_61;
  }

  v72 = strlen(*(a1 + 80));
  v73 = Utf8_LengthInUtf8chars(*(a1 + 80), v72);
  v74 = v73;
  if (v73)
  {
    v75 = 0;
    do
    {
      *(*(a1 + 96) + v75++) = 1;
    }

    while (v73 != v75);
  }

  v238 = v17;
  v76 = *(a1 + 88);
  v77 = strlen(v76);
  v78 = v77;
  if (v77)
  {
    v79 = 0;
    v80 = 0;
    v81 = *(a1 + 88);
    do
    {
      v83 = *v81++;
      v82 = v83;
      if (v83 == 88)
      {
        ++v80;
      }

      if (v82 == 89)
      {
        ++v79;
      }

      --v78;
    }

    while (v78);
  }

  else
  {
    v77 = 0;
    v80 = 0;
    v79 = 0;
  }

  v251 = v77;
  if (*(a1 + 124))
  {
    if (!v16 && *v76 == 32)
    {
      *v76 = 40;
    }

    if (v241 == strlen(a3))
    {
      v84 = *(a1 + 88) + strlen(*(a1 + 88));
      if (*(v84 - 1) == 32)
      {
        *(v84 - 1) = 41;
      }
    }
  }

  if (!strcmp(__s1, "internal-nuance-system-norm") || !strcmp(__s1, "phon"))
  {
    goto LABEL_87;
  }

  if (*(a1 + 120))
  {
    v88 = strcmp(__s1, "spell");
    v89 = *(a1 + 80);
    if (v88 && !ToNorm(*(a1 + 80)))
    {
LABEL_87:
      v90 = *(a1 + 80);
      v255 = *(a1 + 88);
      v256 = v90;
      v254 = *(a1 + 96);
      goto LABEL_88;
    }
  }

  else
  {
    v198 = *(a1 + 80);
  }

  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s L1: %s", v85, v86, v87, __s);
  v199 = strlen(*(a1 + 80));
  v39 = (*(*(a1 + 48) + 120))(*(a1 + 32), *(a1 + 40), 0, *(a1 + 80), v199);
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_274;
  }

  v223 = *(a1 + 88);
  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s L2: %s", v200, v201, v202, __s);
  v203 = strlen(*(a1 + 88));
  v39 = (*(*(a1 + 48) + 120))(*(a1 + 32), *(a1 + 40), 1, *(a1 + 88), v203);
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_274;
  }

  v39 = (*(*(a1 + 48) + 88))(*(a1 + 32), *(a1 + 40), *(a1 + 96), v74);
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_274;
  }

  if (strcmp(__s1, "normal") && strlen(__s1) + v242 + 2 <= 0x7F)
  {
    __strcat_chk();
    __strcat_chk();
  }

  if (((*(*(a1 + 48) + 80))(*(a1 + 32), *(a1 + 40), __s) & 0x80000000) != 0)
  {
    __s[v242] = 0;
    v39 = (*(*(a1 + 48) + 80))(*(a1 + 32), *(a1 + 40), __s);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_274;
    }
  }

  v39 = (*(*(a1 + 48) + 128))(*(a1 + 32), *(a1 + 40), 0, &v256, &v253);
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_274;
  }

  if (strstr(__s1, "spell"))
  {
    v207 = v253++;
    v256[v207] = 32;
  }

  v256[v253] = 0;
  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s O1: %s", v204, v205, v206, __s);
  v39 = (*(*(a1 + 48) + 128))(*(a1 + 32), *(a1 + 40), 1, &v255, &v253);
  if ((v39 & 0x80000000) != 0)
  {
LABEL_274:
    v34 = v39;
    goto LABEL_110;
  }

  if (strstr(__s1, "spell"))
  {
    v208 = v253++;
    v255[v208] = 32;
  }

  v255[v253] = 0;
  v209 = strlen(v256);
  v210 = Utf8_LengthInUtf8chars(v256, v209);
  v211 = strlen(v255);
  v212 = Utf8_LengthInUtf8chars(v255, v211) ^ v210;
  v70 = *(*a1 + 32);
  if (v212)
  {
    v34 = 2311069696;
    goto LABEL_62;
  }

  log_OutText(v70, "FE_PUNCSPTN", 5, 0, "%s O2: %s", v44, v45, v46, __s);
  v214 = strlen(v255);
  if (v214)
  {
    v215 = 0;
    v216 = v214;
    v217 = v255;
    do
    {
      v218 = *v217++;
      if (v218 == 88)
      {
        ++v215;
      }

      --v216;
    }

    while (v216);
    v251 = v214;
    if (v215 != v80)
    {
      goto LABEL_61;
    }

    v219 = 0;
    v220 = 0;
    do
    {
      if (v255[v219] == 89)
      {
        ++v220;
      }

      ++v219;
    }

    while (v214 != v219);
  }

  else
  {
    if (v80)
    {
LABEL_61:
      v34 = 2311069696;
      v70 = *(*a1 + 32);
LABEL_62:
      v71 = 33002;
      goto LABEL_247;
    }

    LOWORD(v219) = 0;
    v220 = 0;
  }

  v251 = v219;
  if (v220 != v79)
  {
    goto LABEL_61;
  }

  v34 = (*(*(a1 + 48) + 96))(*(a1 + 32), *(a1 + 40), &v254, &v253);
  if ((v34 & 0x80000000) != 0)
  {
    goto LABEL_110;
  }

  if (strstr(__s1, "spell"))
  {
    v221 = v253++;
    v254[v221] = 0;
  }

LABEL_88:
  v91 = *(a1 + 80);
  v92 = v241;
  v93 = a7;
  if (*v91 != 32)
  {
    v94 = 0;
    v95 = 0;
    while (v256[v94] == 32)
    {
      v94 = ++v95;
      if (v91[v95] == 32)
      {
        goto LABEL_94;
      }
    }

    LODWORD(v94) = v95;
LABEL_94:
    if (v94)
    {
      v96 = *a12;
      if (v96 >= 2)
      {
        v97 = *(a10 + 12) + v16 + *(a1 + 112);
        v98 = v97 + v94;
        v99 = (a10 + 44);
        v100 = v96 - 1;
        do
        {
          v101 = v97 > *v99 || *v99 >= v98;
          if (!v101)
          {
            *v99 = v98;
          }

          v99 += 8;
          --v100;
        }

        while (v100);
      }
    }
  }

  v102 = v29 + strlen(v256);
  v103 = (v102 - strlen(v91));
  if (v103 <= 0)
  {
    if (v103 < 0)
    {
      for (m = *(a1 + 112) + v241; m <= strlen(*v238); ++m)
      {
        (*v238)[m + v103] = (*v238)[m];
      }
    }

    goto LABEL_112;
  }

  v104 = heap_Realloc(*(*a1 + 8), *v238, (v234 + v103 + 101));
  if (!v104)
  {
LABEL_109:
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0, v23, v24, v25, v26, v222);
    v34 = 2311069706;
    goto LABEL_110;
  }

  *v238 = v104;
  bzero((v104 + v234), (v103 + 101));
  v105 = strlen(*v238);
  if ((*(a1 + 112) + v241) <= v105)
  {
    v106 = v105;
    do
    {
      (*v238)[v106 + v103] = (*v238)[v105--];
      v106 = v105;
    }

    while ((*(a1 + 112) + v241) <= v105);
  }

LABEL_112:
  v233 = v103;
  v109 = 0;
  v110 = 0;
  v260 = v16;
  v251 = 0;
  LOWORD(v246) = 0;
  v111 = *(a1 + 112) + v16;
  v112 = v252;
  if (!v252 || v241 <= v16)
  {
    v185 = 0;
    LODWORD(v113) = 0;
    goto LABEL_249;
  }

  v230 = *(a1 + 112) + v16;
  v113 = 0;
  v228 = 0;
  v227 = a10 + 12;
  v114 = v233;
  v115 = v238;
  while (1)
  {
    v39 = (*(*(a1 + 24) + 168))(v93, v240, v112, 0, 1, &v257, &v261);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    if (v257 != 7)
    {
      v39 = (*(*(a1 + 24) + 168))(v93, v240, v252, 1, 1, &v260, &v261);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v39 = (*(*(a1 + 24) + 168))(v93, v240, v252, 2, 1, &v259, &v261);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    if (v260 >= v92)
    {
      goto LABEL_242;
    }

    if ((v257 & 0xFFFFFFFD) == 4)
    {
      break;
    }

    if (v257 == 5)
    {
      v119 = *(a1 + 112);
      HIWORD(v248) = v119 + v260;
      LOWORD(v248) = v119 + v114 + v259;
      v120 = v240;
      v39 = (*(*(a1 + 24) + 160))(v93, v240, v252, 1, 1, &v248 + 2, &v247 + 2);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

LABEL_239:
      v39 = (*(*(a1 + 24) + 160))(v93, v120, v252, 2, 1, &v248, &v247 + 2);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

LABEL_242:
    v34 = (*(*(a1 + 24) + 120))(v93, v240, v252, &v252);
    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_110;
    }

    v112 = v252;
    if (!v252 || v260 >= v92)
    {
      v109 = v251;
      v110 = v246;
      v185 = v228;
      v111 = v230;
LABEL_249:
      v186 = v113;
      do
      {
        v187 = v186;
      }

      while (v255[v186++]);
      hlp_updateBytePositions(v187, v256, v254, *(a1 + 80), &v251, &v246);
      if ((v251 - v109 + v111) <= v233 + v234 + 100)
      {
        memcpy(&(*v238)[v111], &v256[v109], v251 - v109);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "Normalizing to: |%s|", v189, v190, v191, *v238);
        v192 = *a11;
        if (v192 < *a12)
        {
          v193 = a13 + v16;
          v194 = v187 - v113;
          do
          {
            v195 = a10 + 32 * v192;
            v197 = *(v195 + 12);
            v196 = (v195 + 12);
            if (v241 < (v197 - a13))
            {
              break;
            }

            hlp_updateMarkerPosition((*(a1 + 80) + v110), &v254[v113], &v256[v109], v193, v194, v185 + *(a1 + 112), v196);
            LOWORD(v192) = *a11 + 1;
            *a11 = v192;
          }

          while (*a12 > v192);
        }

        *(a1 + 112) += v233;
        goto LABEL_110;
      }

      goto LABEL_61;
    }
  }

  v116 = v251;
  v117 = v246;
    ;
  }

  hlp_updateBytePositions(n, v256, v254, *(a1 + 80), &v251, &v246);
  v121 = v251;
  memcpy(&(*v115)[v230], &v256[v116], v251 - v116);
  v122 = *a11;
  if (v122 < *a12)
  {
    v123 = v113;
    v124 = n - v113;
    do
    {
      v125 = a10 + 32 * v122;
      v127 = *(v125 + 12);
      v126 = (v125 + 12);
      if (v260 <= (v127 - a13))
      {
        break;
      }

      hlp_updateMarkerPosition((*(a1 + 80) + v117), &v254[v123], &v256[v116], a13 + v16, v124, *(a1 + 112) + v228, v126);
      LOWORD(v122) = *a11 + 1;
      *a11 = v122;
    }

    while (*a12 > v122);
  }

  v128 = 0;
  v129 = v121 - v116 + v230;
  v130 = v16 + v228 + v121 - v116 - v260;
  v16 = v259;
  v92 = v241;
  v93 = a7;
  while (2)
  {
    v131 = v255[n];
    if (v131 == 88)
    {
      v128 = n;
LABEL_138:
      n = (n + 1);
      continue;
    }

    break;
  }

  if (v255[n] && v131 != 89)
  {
    goto LABEL_138;
  }

  v132 = 2 * n;
  if (v131 != 89)
  {
    v132 = 0;
  }

  v133 = v132 - v128;
  v113 = n;
  v115 = v238;
  do
  {
    if (v131 == 41 && *(a1 + 124))
    {
      break;
    }

    if (!v131)
    {
      break;
    }

    if (v131 == 32)
    {
      break;
    }

    if (v131 == 126)
    {
      break;
    }

    if (v133 == v113)
    {
      break;
    }

    v113 = (v113 + 1);
    v131 = v255[v113];
  }

  while (v131 != 88);
  v229 = v129;
  hlp_updateBytePositions(v113, v256, v254, *(a1 + 80), &v251, &v246);
  v39 = (*(*(a1 + 24) + 176))(a7, v240, v252, 3, &v250, &v261);
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_274;
  }

  LOWORD(v247) = 0;
  HIWORD(v246) = 0;
  if (v257 == 6 && ((*(*(a1 + 24) + 184))(a7, v240, v252, 5, &v247) & 0x80000000) == 0 && v247 == 1)
  {
    v39 = (*(*(a1 + 24) + 176))(a7, v240, v252, 5, &v249, &v246 + 2);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_274;
    }
  }

  v134 = strstr(v250, "▲");
  if (!v134)
  {
LABEL_202:
    v39 = (*(*(a1 + 24) + 168))(v93, v240, v252, 0, 1, &v257, &v261);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    LOWORD(v247) = 0;
    if (v257 == 6 && ((*(*(a1 + 24) + 184))(v93, v240, v252, 5, &v247) & 0x80000000) == 0 && v247 == 1)
    {
      v39 = (*(*(a1 + 24) + 176))(v93, v240, v252, 5, &v249, &v261);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v155 = v260;
      v156 = &a3[v260];
      v157 = strchr(v156, 32);
      v158 = 0;
      v159 = *a11;
      LODWORD(v160) = *a12;
      v224 = v155;
      if (v157 && v261 >= 2u)
      {
        v158 = 0;
        v232 = v261 - 1;
        v226 = v155 - v156;
        v161 = v249;
        v162 = a13 + v130 + v155;
        do
        {
          if (v159 < v160)
          {
            v163 = (*(a10 + 32 * v159 + 12) - a13);
            if (&v157[v226] > (*(a10 + 32 * v159 + 12) - a13))
            {
              v164 = (a10 + 44 + 32 * v159);
              v165 = v159 + 1;
              do
              {
                *(v164 - 8) = v162 + *(a1 + 112) + *(v161 + 2 * v158);
                v159 = v165;
                *a11 = v165;
                v160 = *a12;
                if (v165 >= v160)
                {
                  break;
                }

                v166 = *v164;
                v164 += 8;
                ++v165;
              }

              while (&v157[v226] > (v166 - a13));
            }
          }

          v167 = v157 - 1;
          do
          {
            v168 = *++v167;
          }

          while (v168 == 32);
          v157 = strchr(v167, 32);
          ++v158;
        }

        while (v157 && v232 > v158);
      }

      v101 = v159 >= v160;
      v92 = v241;
      v93 = a7;
      if (!v101)
      {
        v169 = v259;
        v170 = v249;
        v171 = v159;
        v172 = (v227 + 32 * v159);
        do
        {
          v173 = (*v172 - a13);
          if (v169 <= (*v172 - a13))
          {
            break;
          }

          *v172 = a13 + v130 + v224 + *(a1 + 112) + *(v170 + 2 * v158);
          v172 += 8;
          *a11 = ++v171;
        }

        while (v171 < *a12);
      }
    }

    else if (!strcmp(__s1, "prompt") || !strcmp(__s1, "internal-nuance-system-norm"))
    {
      v179 = *a11;
      if (v179 < *a12)
      {
        v180 = v259;
        v181 = (v227 + 32 * v179);
        do
        {
          if (v180 <= (*v181 - a13))
          {
            break;
          }

          *v181 += v130 + *(a1 + 112);
          v181 += 8;
          *a11 = ++v179;
        }

        while (v179 < *a12);
      }
    }

    else
    {
      v174 = *a11;
      if (v174 < *a12)
      {
        v175 = v259;
        v176 = a13 + v130 + v260;
        v177 = (v227 + 32 * v174);
        do
        {
          v178 = (*v177 - a13);
          if (v175 <= (*v177 - a13))
          {
            break;
          }

          *v177 = v176 + *(a1 + 112);
          v177 += 8;
          *a11 = ++v174;
        }

        while (v174 < *a12);
      }
    }

    v182 = strlen(v250);
    memcpy(&(*v115)[v229], v250, v182);
    v183 = strlen(v250);
    if (v257 == 6)
    {
      HIWORD(v248) = v260 + v130 + *(a1 + 112);
    }

    v230 = v229 + v183;
    v184 = v130 + strlen(v250);
    v228 = v184 - v259 + v260;
    if (v257 != 6)
    {
      v114 = v233;
      goto LABEL_242;
    }

    LOWORD(v248) = v184 + v260 + *(a1 + 112);
    v120 = v240;
    v39 = (*(*(a1 + 24) + 160))(v93, v240, v252, 1, 1, &v248 + 2, &v247 + 2);
    v114 = v233;
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    goto LABEL_239;
  }

  v135 = v134;
  v136 = 0;
  while (1)
  {
    v245 = 0;
    v135[2] = 0;
    *v135 = 0;
    v138 = v135 + 3;
    v137 = v135[3];
    if (!v135[3])
    {
      break;
    }

    v139 = v135 + 6;
    v140 = -3 - v135;
    v141 = -6;
    while (v137 != 226 || *(v139 - 2) != 150 || *(v139 - 1) != 188)
    {
      v137 = *(v139++ - 2);
      --v141;
      --v140;
      if (!v137)
      {
        goto LABEL_246;
      }
    }

    v231 = v136;
    *(v139 - 3) = 0;
    *(v139 - 1) = 0;
    v142 = HIWORD(v246);
    if (HIWORD(v246))
    {
      v143 = 0;
      v144 = v249;
      v145 = -v140 - v250;
      do
      {
        if (v144)
        {
          v146 = *(v144 + 2 * v143);
          if (v145 < v146)
          {
            *(v144 + 2 * v143) = v146 + v141;
            v142 = HIWORD(v246);
          }
        }

        ++v143;
      }

      while (v143 < v142);
    }

    LOWORD(v245) = v252;
    v39 = (*(*(a1 + 24) + 168))(v93, v240);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v225 = v135;
    v147 = v245;
    if (HIWORD(v245) == v260 && v245 != 0)
    {
      while (1)
      {
        v149 = v147;
        v39 = (*(*(a1 + 24) + 120))(v93, v240, v147, &v245);
        if ((v39 & 0x80000000) != 0)
        {
          goto LABEL_274;
        }

        if (!v245)
        {
          goto LABEL_176;
        }

        v39 = (*(*(a1 + 24) + 168))(v93, v240);
        if ((v39 & 0x80000000) != 0)
        {
          goto LABEL_274;
        }

        v147 = v245;
        if (HIWORD(v245) != v260 || v245 == 0)
        {
          goto LABEL_176;
        }
      }
    }

    v149 = 0;
LABEL_176:
    LOWORD(v245) = v149;
    v150 = v149;
    if (v231)
    {
      v39 = (*(*(a1 + 24) + 120))(v93, v240, v149, &v245);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v150 = v245;
    }

    if (v150)
    {
      v39 = (*(*(a1 + 24) + 168))(v93, v240, v150, 0, 1, &v257, &v261);
      if ((v39 & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      while (v245 && v257 == 7)
      {
        v149 = v245;
        v39 = (*(*(a1 + 24) + 120))(v93, v240, v245, &v245);
        if ((v39 & 0x80000000) != 0)
        {
          goto LABEL_274;
        }

        if (!v245)
        {
          break;
        }

        v39 = (*(*(a1 + 24) + 168))(v93, v240);
        if ((v39 & 0x80000000) != 0)
        {
          goto LABEL_274;
        }
      }
    }

    LOWORD(v245) = v149;
    v39 = (*(*(a1 + 24) + 80))(v93, v240, v149, &v245);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v257 = 7;
    v39 = (*(*(a1 + 24) + 160))(v93, v240, v245, 0, 1, &v257, &v247 + 2);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    HIWORD(v245) = v260 + v130 + *(a1 + 112) + v225 - v250;
    v39 = (*(*(a1 + 24) + 160))(v93, v240, v245, 1, 1, &v245 + 2, &v247 + 2);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v39 = (*(*(a1 + 24) + 160))(v93, v240, v245, 2, 1, &v245 + 2, &v247 + 2);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v152 = strlen(v138);
    v39 = (*(*(a1 + 24) + 160))(v93, v240, v245, 4, (v152 + 1), v138, &v247 + 2);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v153 = strlen(v250);
    v154 = strlen(v139);
    memmove(&v250[v153], v139, v154 + 1);
    v135 = strstr(v250, "▲");
    v136 = 1;
    v93 = a7;
    v115 = v238;
    if (!v135)
    {
      goto LABEL_202;
    }
  }

LABEL_246:
  v34 = 2311069696;
  v70 = *(*a1 + 32);
  v71 = 33003;
LABEL_247:
  log_OutPublic(v70, "FE_PUNCSPTN", v71, 0, v43, v44, v45, v46, v222);
LABEL_110:
  v107 = *MEMORY[0x1E69E9840];
  return v34;
}