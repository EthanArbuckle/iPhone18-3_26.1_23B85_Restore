uint64_t ICPDadd(uint64_t a1, int a2)
{
  v2 = *(a1 + 3184);
  v3 = v2[29];
  v4 = *(v3 + 50);
  if (v4)
  {
    v7 = 0;
    v8 = *(v2[31] + 56);
    v9 = *(v3 + 104);
    v10 = v2[33];
    do
    {
      v11 = v7;
      v12 = *(v9 + 8 * v7);
      if (!a2 || !*(v12 + 70))
      {
        v13 = strlen(v12);
        SLrecap(v12, v13, *(v12 + 71), v12 + 80, *(v10 + 88), v8);
        result = SFadd(*(v9 + 8 * v11), v13, (v10 + 40), (v10 + 44), *(v10 + 42), *(v10 + 56), *(v10 + 48), *(v10 + 64));
        if (result == 8)
        {
          return result;
        }

        v12 = *(v9 + 8 * v11);
        v4 = *(v3 + 50);
      }

      *(a1 + 3176) = *(v12 + 66);
      v7 = v11 + 1;
    }

    while (v4 > (v11 + 1));
  }

  return 0;
}

size_t period_to_puntvolat(uint64_t a1, char *__s)
{
  result = strlen(__s);
  if (result >= 2)
  {
    v5 = 1;
    do
    {
      v6 = &__s[v5];
      if ((*(v6 - 1) | 0x20) == 0x6C && (v6[1] | 0x20) == 0x6C && *v6 == 46 && *(a1 + 24) == 64)
      {
        *v6 = -73;
      }

      ++v5;
      result = strlen(__s);
    }

    while (result > v5);
  }

  return result;
}

BOOL JumpOver(unsigned __int8 *a1, int a2)
{
  result = 0;
  if (a2 >= 7)
  {
    v2 = *a1;
    if (v2 == a1[1] && v2 == a1[2] && v2 == a1[3] && v2 == a1[4] && v2 == a1[5])
    {
      return 1;
    }
  }

  return result;
}

size_t puntvolat_to_period_list(size_t result)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(*(result + 3184) + 264);
  if (*(v1 + 40) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        v4 = strlen((v3 + *(*(v1 + 64) + 2 * v2)));
        if (v4 >= 0x40)
        {
          v5 = 64;
        }

        else
        {
          v5 = v4;
        }

        if (v4)
        {
          __strncpy_chk();
        }

        __s[v5] = 0;
      }

      result = strlen(__s);
      if ((result << 16) - 0x10000 >= 0x10000)
      {
        v6 = 1;
        v7 = 1;
        do
        {
          if ((__s[v6 - 1] | 0x20) == 0x6C && (__s[v6 + 1] | 0x20) == 0x6C && __s[v7] == 183 && *(v1 + 3490) == 64)
          {
            __s[v7] = 46;
          }

          v6 = ++v7;
          result = strlen(__s);
        }

        while (v7 <= (result - 1));
      }

      v8 = *(v1 + 48);
      if (v8)
      {
        v9 = *(*(v1 + 64) + 2 * v2);
        v10 = v8 + v9;
        if (result >= 0x40)
        {
          v11 = 64;
        }

        else
        {
          v11 = result;
        }

        if (result)
        {
          result = strncpy((v8 + v9), __s, v11);
        }

        *(v10 + v11) = 0;
      }

      ++v2;
    }

    while (v2 < *(v1 + 40));
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t checked_strncpy(unint64_t result, char *__s, size_t a3)
{
  if (result && __s)
  {
    v5 = result;
    result = strlen(__s);
    if (result < a3)
    {
      a3 = result;
    }

    if (a3)
    {
      result = strncpy(v5, __s, a3);
    }

    v5[a3] = 0;
  }

  return result;
}

uint64_t ICtrm(uint64_t a1)
{
  v2 = *(a1 + 3184);
  if (v2)
  {
    v3 = *(v2 + 248);
    if (v3)
    {
      v4 = *(v2 + 264);
      if (v4)
      {
        *v3 = 0;
        if (!*(a1 + 8) || ((1 << (*(a1 + 8) - 1)) & 0x20008) != 0)
        {
          IChu(a1, (a1 + 1547));
          v5 = *(v2 + 224);
          if (v5)
          {
            free(v5);
          }
        }

        v6 = *(v3 + 16);
        if (v6)
        {
          SLClose(v6);
        }

        if (v3[54] * *(v3 + 24))
        {
          free(*(v2 + 120));
        }

        v7 = 0;
        *(*(v2 + 232) + 2) = 0;
        do
        {
          free(*(*(*(v2 + 232) + 104) + v7));
          v7 += 8;
        }

        while (v7 != 800);
        free(*(*(v2 + 232) + 104));
        free(*(*(v2 + 232) + 8));
        free(*(v2 + 232));
        v8 = *(v2 + 240);
        if (v8)
        {
          free(*(v8 + 8));
          free(*(v2 + 240));
        }

        if (*(v2 + 12) >= 0x134u)
        {
          free(*(v3 + 7));
        }

        v9 = *(v2 + 208);
        if (v9)
        {
          free(v9);
        }

        v10 = *(v4 + 112);
        if (v10)
        {
          free(v10);
        }

        v11 = *(v2 + 152);
        if (v11)
        {
          free(v11);
        }

        v12 = *(v2 + 96);
        if (v12)
        {
          free(v12);
        }

        v13 = *(v2 + 104);
        if (v13)
        {
          free(v13);
        }

        v14 = *(v2 + 112);
        if (v14)
        {
          free(v14);
        }

        v15 = *(a1 + 3168);
        if (v15 && *(a1 + 8) != 4)
        {
          v16 = (v2 + 32);
          if (v15 >= 0x8000)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              free(v16[v17]);
              v17 = ++v18;
            }

            while (v18 < *(a1 + 3168) >> 15);
          }

          else
          {
            free(*v16);
          }
        }

        v19 = *(v2 + 296);
        if (v19)
        {
          free(v19);
        }

        if (*(v3 + 52))
        {
          free(*(v2 + 168));
          free(*(v2 + 192));
          free(*(v2 + 184));
        }

        if (*(v3 + 69))
        {
          free(*(v2 + 176));
        }

        if (*(v3 + 60))
        {
          free(*(v2 + 160));
        }

        if (*(v3 + 2))
        {
          free(*(v2 + 200));
        }

        v20 = *(v2 + 128);
        if (v20)
        {
          free(v20);
        }

        v21 = *(v2 + 136);
        if (v21)
        {
          free(v21);
        }

        v22 = *(v2 + 144);
        if (v22)
        {
          free(v22);
        }

        v23 = *(v2 + 72);
        if (v23)
        {
          free(v23);
        }

        if (*(v2 + 168))
        {
          free(*(v3 + 21));
          free(*(v3 + 22));
        }

        v24 = *(v4 + 80);
        if (v24)
        {
          free(v24);
        }

        v25 = *(v4 + 72);
        if (v25)
        {
          free(v25);
        }

        v26 = *(v4 + 3520);
        if (v26)
        {
          free(v26);
        }

        v27 = *(v4 + 3504);
        if (v27)
        {
          free(v27);
        }

        v28 = *(v4 + 3528);
        if (v28)
        {
          free(v28);
        }

        v29 = *(v4 + 3536);
        if (v29)
        {
          free(v29);
        }

        v30 = *(v4 + 3496);
        if (v30)
        {
          free(v30);
        }

        v31 = *(v4 + 24);
        if (v31)
        {
          free(v31);
        }

        v32 = *(v4 + 8);
        if (v32)
        {
          free(v32);
        }

        v33 = *(v4 + 3176);
        if (v33)
        {
          free(v33);
        }

        if (*(v4 + 32))
        {
          SFmemory((v4 + 32), 64, 0);
        }

        free(v3);
        free(v4);
        v34 = *(a1 + 3184);
        v35 = v34[35];
        if (v35)
        {
          free(v35);
          v34 = *(a1 + 3184);
        }

        v36 = v34[10];
        if (v36)
        {
          free(v36);
          v34 = *(a1 + 3184);
        }

        v37 = v34[27];
        if (v37)
        {
          IHterm(v37);
          free(*(*(a1 + 3184) + 216));
          *(*(a1 + 3184) + 216) = 0;
        }

        v38 = *(v2 + 288);
        if (v38)
        {
          free(v38);
        }

        free(v2);
      }
    }
  }

  *(a1 + 1320) &= ~0x80u;
  return 0;
}

uint64_t ICverify(char *__s, int a2, uint64_t a3)
{
  v6 = 0;
  v84 = *MEMORY[0x1E69E9840];
  v81 = 0;
  v7 = *(a3 + 3184);
  v8 = *(v7 + 264);
  v80 = *(*(v7 + 248) + 56);
  v82 = 0;
  do
  {
    *(*(v8 + 3520) + 2 * v6) = 0;
    *(*(v8 + 24) + 2 * v6) = 0;
    *(*(v8 + 3496) + v6) = 0;
    *(*(v8 + 3504) + v6++) = 0;
  }

  while (v6 != 6);
  if ((*(v8 + 18) & 0x40) == 0)
  {
    *(v8 + 3480) = 0;
  }

  v9 = *(v7 + 232);
  if (__s)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      v11 = strlen(__s);
      if (v11 >= 0x40)
      {
        v12 = 64;
      }

      else
      {
        v12 = v11;
      }

      if (v11)
      {
        strncpy(v10, __s, v12);
      }

      v10[v12] = 0;
    }
  }

  *(v9 + 17) = *(v8 + 88);
  *(v9 + 20) = *(v8 + 92);
  *(v9 + 24) = *(v8 + 96);
  *(v9 + 2) = *(*(v7 + 264) + 3204);
  *v9 = 0;
  if (*(a3 + 8))
  {
    v13 = 1 << (*(a3 + 8) - 1);
  }

  else
  {
    v13 = -1;
  }

  *(v9 + 36) = v13;
  *(v9 + 42) = 0;
  *(v9 + 50) = 0;
  *(v9 + 16) = *(a3 + 1338);
  PDword(v9, 1, 1);
  v14 = *(v9 + 50);
  if (*(v9 + 50))
  {
    v15 = 0;
    v16 = 0;
    *(a3 + 1322) |= 0x20u;
    if (v14 >= 6)
    {
      LOWORD(v14) = 6;
    }

    *(v8 + 102) = v14;
    v17 = 10;
    do
    {
      *(*(v8 + 72) + v15) = *(*(*(v9 + 104) + 8 * v15) + 71);
      v18 = *(*(v9 + 104) + 8 * v15);
      v19 = (*(v8 + 80) + 8 * v15);
      *v19 = *(v18 + 80);
      v19[1] = *(v18 + 84);
      *(v8 + 3480) = *(v18 + 88);
      *(v8 + 3484) = *(v18 + 92);
      *v9 = *(v18 + 66);
      v20 = *(v8 + 102);
      if (v20 == 1 && **(v8 + 72) == 3 && *(v8 + 88) != 3)
      {
        v16 = 1;
        v17 = 11;
      }

      if (*(v18 + 70))
      {
        v21 = process_neg(a3, v15, &v82);
        if (v21 != 11)
        {
          v22 = v21;
          goto LABEL_33;
        }

        LOWORD(v20) = *(v8 + 102);
        v17 = 11;
      }

      ++v15;
    }

    while (v15 < v20);
    if (v17 != 10)
    {
      goto LABEL_34;
    }

    SFdc(__s, a2, *(v7 + 248), v8);
    if (*(v8 + 3480) || !*(a3 + 8) || ((1 << (*(a3 + 8) - 1)) & 0x995) != 0)
    {
      *v7 |= v82;
      v22 = 10;
      goto LABEL_36;
    }

    v22 = 10;
LABEL_95:
    if (v22 != 11 && v16 && (v82 & 0xE0) != 0)
    {
      *(a3 + 1322) &= ~0x20u;
      *(a3 + 1328) &= ~0x20uLL;
    }

    if (*(a3 + 8) == 2)
    {
      if (v22 == 10 && *(a3 + 24) == 64)
      {
        if (**(v8 + 3496))
        {
          __s[a2 - **(v8 + 3496)] = -95;
          SFadd(__s, a2, (v8 + 40), (v8 + 44), *(v8 + 42), *(v8 + 56), *(v8 + 48), *(v8 + 64));
          *(a3 + 1328) |= 4uLL;
          v82 |= 4u;
          v22 = 2;
        }

        else
        {
          v22 = 10;
        }
      }

      else if (v22 == 11)
      {
        v22 = ICfoldio(__s, a2, a3);
        if (v22 == 10)
        {
          v82 |= 0x40u;
        }
      }
    }

    if (*(a3 + 3168))
    {
      if (a2 <= 17 && v22 == 10)
      {
        v42 = v82;
        if ((v82 & 0x40) != 0)
        {
          v43 = *(a3 + 8);
          if (!*(a3 + 8) || ((1 << (v43 - 1)) & 0x11660) != 0)
          {
            v44 = *(v8 + 3520);
            if ((*v44 & 0x260) != 0 || (v44[1] & 0x260) != 0)
            {
              v22 = 10;
              goto LABEL_138;
            }
          }

          if (*(v8 + 102) >= 1 && ICcchadd(__s, a2, **(v8 + 72), 0, v81, a3) == 10)
          {
            v79 = v42 | 1;
            v45 = 1;
            while (v45 < *(v8 + 102))
            {
              LOWORD(v15) = v45;
              v46 = ICcchadd(__s, a2, *(*(v8 + 72) + v45), v45, v81, a3);
              ++v45;
              if (v46 != 10)
              {
                goto LABEL_125;
              }
            }

            LOWORD(v15) = v45;
LABEL_125:
            v42 = v79;
          }

          else
          {
            LOWORD(v15) = 0;
          }

          v82 = v42;
        }
      }
    }

    v43 = *(a3 + 8);
    if (v22 != 10 && (v43 == 8 || v43 == 5))
    {
      if ((*(a3 + 24) & 0x40) == 0)
      {
LABEL_139:
        if (((1 << (v43 - 1)) & 0x11660) == 0)
        {
LABEL_157:
          if (v22 == 10)
          {
            LOWORD(v53) = *(v8 + 102);
            goto LABEL_159;
          }

          if (*(a3 + 8) == 11)
          {
            if (__s)
            {
              v72 = strlen(__s);
              if (v72 >= 0x40)
              {
                v73 = 64;
              }

              else
              {
                v73 = v72;
              }

              if (v72)
              {
                __strncpy_chk();
              }

              __sa[v73] = 0;
            }

            ICremacc(__sa, 3, a3);
            v22 = ICget(__sa, a2, a3);
            if (v22 == 10)
            {
              SFadd(__sa, a2, (v8 + 40), (v8 + 44), *(v8 + 42), *(v8 + 56), *(v8 + 48), *(v8 + 64));
              *(v8 + 3492) |= 2u;
              v82 |= 4u;
              goto LABEL_195;
            }
          }

          if (v22 != 11 || !v16)
          {
            goto LABEL_33;
          }

          v74 = *(a3 + 1322);
          if ((v74 & 0x20) == 0)
          {
            goto LABEL_187;
          }

          if ((*(a3 + 1328) & 0x20) == 0 || (process_neg(a3, v15, &v82), *v7 |= v82, v74 = *(a3 + 1322), (v74 & 0x200) != 0))
          {
            LODWORD(v53) = *(v9 + 50);
            *(v8 + 102) = *(v9 + 50);
            if (v53 >= 1)
            {
              v75 = 0;
              v76 = *(v9 + 104);
              do
              {
                *(*(v8 + 72) + v75) = *(*(v76 + 8 * v75) + 71);
                v76 = *(v9 + 104);
                v77 = *(v76 + 8 * v75);
                v78 = (*(v8 + 80) + 8 * v75);
                *v78 = v77[20];
                v78[1] = v77[21];
                *(v8 + 3480) = v77[22];
                *(v8 + 3484) = v77[23];
                ++v75;
              }

              while (v75 < *(v8 + 102));
              LOWORD(v53) = *(v8 + 102);
              v74 = *(a3 + 1322);
            }

            if ((v74 & 0x200) == 0)
            {
LABEL_159:
              if (v53 >= 2)
              {
                v54 = 0;
                v55 = 1;
                do
                {
                  v56 = v54 + 1;
                  if (v54 + 1 >= v53)
                  {
                    v70 = v53;
                  }

                  else
                  {
                    v57 = v53;
                    v58 = v55;
                    do
                    {
                      v59 = *(v8 + 72);
                      v60 = *(v59 + v58);
                      if (v60 < *(v59 + v54))
                      {
                        v53 = *(v8 + 3520);
                        v61 = *(v53 + 2 * v58);
                        v62 = *(v8 + 3496);
                        v63 = *(v62 + v58);
                        v64 = *(*(v8 + 3504) + v58);
                        v65 = *(*(v8 + 24) + 2 * v58);
                        v66 = *(*(v8 + 3528) + v58);
                        v67 = *(v8 + 80);
                        v68 = *(*(v8 + 3536) + v58);
                        *(v53 + 2 * v58) = *(v53 + 2 * v54);
                        v69 = *(v67 + 8 * v58);
                        *(v62 + v58) = *(v62 + v54);
                        *(*(v8 + 72) + v58) = *(*(v8 + 72) + v54);
                        *(*(v8 + 3504) + v58) = *(*(v8 + 3504) + v54);
                        *(*(v8 + 24) + 2 * v58) = *(*(v8 + 24) + 2 * v54);
                        *(*(v8 + 80) + 8 * v58) = *(*(v8 + 80) + 8 * v54);
                        *(*(v8 + 3528) + v58) = *(*(v8 + 3528) + v54);
                        *(*(v8 + 3536) + v58) = *(*(v8 + 3536) + v54);
                        *(*(v8 + 3520) + 2 * v54) = v61;
                        *(*(v8 + 3496) + v54) = v63;
                        *(*(v8 + 72) + v54) = v60;
                        *(*(v8 + 3504) + v54) = v64;
                        *(*(v8 + 24) + 2 * v54) = v65;
                        *(*(v8 + 80) + 8 * v54) = v69;
                        *(*(v8 + 3528) + v54) = v66;
                        *(*(v8 + 3536) + v54) = v68;
                        LOWORD(v53) = *(v8 + 102);
                        v57 = v53;
                      }

                      ++v58;
                    }

                    while (v58 < v57);
                    v70 = v53;
                  }

                  ++v55;
                  ++v54;
                }

                while (v56 < v70);
              }

              if (*(a3 + 8) != 6)
              {
                goto LABEL_173;
              }

              v71 = *(v8 + 3520);
              if ((*v71 & 0x20) == 0)
              {
                if (*(v8 + 102) < 2 || (v71[1] & 0x20) == 0)
                {
                  goto LABEL_173;
                }

                if ((*(v8 + 92) & 0x80000000) != 0)
                {
                  if (*(v8 + 88) == 3)
                  {
                    *(v8 + 102) = 1;
                    **(v8 + 72) = 1;
                  }

LABEL_173:
                  v22 = 10;
LABEL_33:
                  *v7 |= v82;
LABEL_36:
                  v24 = *MEMORY[0x1E69E9840];
                  return v22;
                }
              }

LABEL_187:
              v22 = 11;
              goto LABEL_33;
            }

LABEL_195:
            v22 = 2;
            goto LABEL_33;
          }

LABEL_35:
          v22 = 11;
          goto LABEL_36;
        }

LABEL_140:
        if (*(a3 + 1308) && v22 != 11 && (*v7 & 8) == 0 && (*(v8 + 18) & 0xC0C) == 0 && ((*(a3 + 1322) & 0x20) != 0 || (v82 & 0xA0) != 0))
        {
          v48 = *(v7 + 216);
          *v48 = 1;
          if (**(v8 + 72) == 1)
          {
            v49 = *__s;
            if ((*(v80 + 4 * v49) & 0x20000000) != 0)
            {
              LOBYTE(v49) = v49 - 32;
            }

            *__s = v49;
            v48 = *(v7 + 216);
          }

          IHhyp(__s, v48);
          if (**(v8 + 72) == 1)
          {
            *__s += (*(v80 + 4 * *__s) >> 25) & 0x20;
            *(*(v7 + 216) + 680) += (*(v80 + 4 * *(*(v7 + 216) + 680)) >> 25) & 0x20;
          }

          v50 = *(v7 + 216);
          *(v8 + 3480) = *(v50 + 8);
          *(v8 + 3484) = *(v50 + 12);
          if (*(v50 + 747))
          {
            if ((*(v8 + 18) & 0x40) != 0)
            {
              v51 = 2;
            }

            else
            {
              v51 = 4;
            }

            *(a3 + 1322) |= v51 | 0x40;
            checked_strcpy(a3 + 3090, (v50 + 680));
            v52 = *(v7 + 216);
            *(a3 + 3156) = *(v52 + 16);
            *(a3 + 3160) = *(v52 + 20);
          }
        }

        goto LABEL_157;
      }

      if (!*(v8 + 88) || *(v8 + 88) == 1 && (*(v80 + 4 * *__s) & 0x10000000) == 0)
      {
        goto LABEL_35;
      }

      v22 = ICcltuna(__s, a2, a3);
      v43 = *(a3 + 8);
    }

LABEL_138:
    if (!v43)
    {
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v16 = 0;
  LOWORD(v15) = 0;
LABEL_34:
  v23 = *(v7 + 248);
  if (*(v23 + 68) < a2)
  {
    goto LABEL_35;
  }

  if (*(a3 + 8) && ((1 << (*(a3 + 8) - 1)) & 0x20008) == 0)
  {
    if (!*(a3 + 3168))
    {
      goto LABEL_67;
    }

    if (*(a3 + 1308))
    {
      if (a2 > 17 || *(v23 + 88))
      {
        goto LABEL_67;
      }
    }

    else if (a2 > 17)
    {
      goto LABEL_67;
    }

    if (ICcchver(__s, a2, &v81, a3) == 10)
    {
      v82 |= 0x20u;
      if (v81)
      {
        goto LABEL_94;
      }

      if (*(v7 + 304) != 11)
      {
        v27 = *(v8 + 102);
        if (v27 >= 1)
        {
          LOWORD(v15) = 0;
          while (1)
          {
            v28 = *(*(v8 + 72) + v15);
            v29 = !*(v8 + 88) && v28 == 4;
            v30 = v29;
            if (*(v8 + 88) == v28 || v30)
            {
              break;
            }

            LODWORD(v15) = (v15 + 1);
            if (v15 >= v27)
            {
              LOWORD(v15) = *(v8 + 102);
              goto LABEL_67;
            }
          }

          *(v8 + 18) = *(*(v8 + 3520) + 2 * v15);
          goto LABEL_94;
        }

        LOWORD(v15) = 0;
      }
    }

LABEL_67:
    v31 = ICget(__s, a2, a3);
    if (v31 != 10)
    {
      v22 = v31;
      goto LABEL_95;
    }

    v82 |= 0x40u;
    v32 = *(v8 + 102);
    if (v32 == 1)
    {
      v81 = 1;
    }

    else
    {
      v33 = *(v8 + 102);
      if (v32 < 1)
      {
        LOWORD(v15) = 0;
      }

      else
      {
        v15 = 0;
        v34 = *(v8 + 88);
        while (1)
        {
          v35 = *(*(v8 + 72) + v15);
          v36 = v35 == 4 && v34 == 0;
          v37 = v36;
          if (v35 == v34 || v37)
          {
            break;
          }

          if (v32 == ++v15)
          {
            goto LABEL_88;
          }
        }

        *(v8 + 18) = *(*(v8 + 3520) + 2 * v15);
      }

      if (v15 == v32)
      {
LABEL_88:
        v39 = *(v8 + 3520);
        v40 = *v39;
        v41 = v39[1];
        if (v40)
        {
          *(v8 + 18) = v41;
        }

        else if (v41)
        {
          *(v8 + 18) = v40;
        }

        v22 = 10;
        LOWORD(v15) = v33;
        goto LABEL_95;
      }
    }

LABEL_94:
    v22 = 10;
    goto LABEL_95;
  }

  v26 = *MEMORY[0x1E69E9840];

  return IChu(a3, __s);
}

uint64_t process_neg(uint64_t a1, int a2, _WORD *a3)
{
  v3 = *(a1 + 3184);
  v4 = v3[30];
  v5 = *(v3[31] + 56);
  v6 = v3[29];
  v7 = v3[33];
  *(a1 + 1328) |= 0x20uLL;
  v8 = *(*(v6 + 104) + 8 * a2);
  v9 = *(v8 + 100);
  if (!v9)
  {
    return 11;
  }

  *v4 = *v6;
  *(v4 + 4) = *(v8 + 96);
  *(v4 + 16) = v9;
  if (PDalt(v4) == 8)
  {
    return 11;
  }

  v13 = *(v7 + 88);
  if (v13 < *(*(v7 + 72) + a2))
  {
    return 11;
  }

  if (v13 == 3)
  {
    v15 = *(v7 + 80);
    v16 = (v15 + 8 * a2);
    if ((*(v7 + 92) != *v16 || *(v7 + 96) != v16[1]) && *(v7 + 102) - 1 != a2)
    {
      return 11;
    }
  }

  else
  {
    v15 = *(v7 + 80);
  }

  *(*(v7 + 72) + a2) = SLcap(*(v4 + 8), 0, *(v4 + 16), (v15 + 8 * a2), v5);
  *(a1 + 1322) |= 0x200u;
  *a3 |= 4u;
  SFadd(*(v4 + 8), *(v4 + 16), (v7 + 40), (v7 + 44), *(v7 + 42), *(v7 + 56), *(v7 + 48), *(v7 + 64));
  return 2;
}

uint64_t ICgreek(uint64_t a1, int a2)
{
  if (a2)
  {
    ICgkchk(a1);
    return 10;
  }

  else
  {

    return ICgkver(a1);
  }
}

uint64_t ICgkchk(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3184);
  v3 = *(a1 + 4);
  v4 = *(*(v2 + 248) + 56);
  v5 = *(v2 + 264);
  v6 = a1 + 1339;
  v7 = strlen((a1 + 1339));
  if (v7 >= 1 && (*(v6 + (v7 - 1)) == 39 || *(*(v2 + 80) + 65) == 39))
  {
    v3 = gk_elision(a1);
  }

  if (*(a1 + 1417) == 39)
  {
    v3 = gk_aphaeresis_aux_chk(a1);
  }

  if (v3 != 10)
  {
    gk_nu_drop(a1);
  }

  if (*(a1 + 1331))
  {
    v8 = *(a1 + 1612);
    if (v8)
    {
      v9 = (a1 + 1547);
      v10 = v16;
      v11 = *(a1 + 1612);
      do
      {
        v12 = *v9++;
        *v10++ = v12 - ((*(v4 + 4 * v12) & 0x4020000) != 0);
        --v11;
      }

      while (v11);
    }

    v13 = v8 - 1;
    if (v16[v13] == 253)
    {
      v16[v13] = -49;
    }

    SFlstini((v5 + 40), (v5 + 44), *(v5 + 48), *(v5 + 64));
    SFadd(v16, *(a1 + 1612), (v5 + 40), (v5 + 44), *(v5 + 42), *(v5 + 56), *(v5 + 48), *(v5 + 64));
    *v2 |= 4u;
  }

  v14 = *MEMORY[0x1E69E9840];
  return 10;
}

uint64_t ICgkver(uint64_t a1)
{
  v2 = a1 + 1547;
  v3 = *(a1 + 1612) - 1;
  if (*(a1 + 1547 + v3) == 207 && *(a1 + 1482) != 39)
  {
    v4 = 0;
    *(v2 + v3) = -3;
  }

  else
  {
    v4 = 1;
  }

  v5 = gk_num(a1);
  if (gk_veruppercap(a1) == 10 || gk_undouble_accent(a1) == 10 || gk_apocope(a1) == 10 || gk_aphaeresis(a1) == 10 || v5 == 10)
  {
    result = ICfndchk(a1);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = 11;
    if (v4)
    {
      return result;
    }
  }

  *(*(a1 + 1612) + v2 - 1) = -49;
  return result;
}

uint64_t gk_apocope(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  *__s = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  if (*(a1 + 1482) == 39)
  {
    __strcpy_chk();
    __strcpy_chk();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    v12 = 0xB90000BF0000BE00;
    v13 = 0xCB0000BA0000;
    v15 = 0;
    v11 = -11829;
    v14 = 0xC4B90000C40000CCLL;
    __strcpy_chk();
    v2 = 0;
    v3 = *(a1 + 1612);
    v4 = &v11;
    do
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      *__s = 0u;
      v17 = 0u;
      __strcat_chk();
      __strcat_chk();
      __strcpy_chk();
      v5 = strlen(__s);
      *(a1 + 1612) = v5;
      v6 = ICverify(__s, v5, a1);
      v4 = (v4 + 3);
    }

    while (v6 == 11 && v2++ < 8);
    v8 = v6;
    __strcpy_chk();
    *(a1 + 1612) = v3;
  }

  else
  {
    v8 = 11;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t gk_aphaeresis(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  if (*(a1 + 1417) == 39)
  {
    __strcpy_chk();
    v2 = 0;
    v8 = 48896;
    v10 = 0xBA0000C20000;
    v7 = -14914;
    v9 = -66;
    v3 = &v7;
    do
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      *__s = 0u;
      v12 = 0u;
      __strcat_chk();
      __strcat_chk();
      v4 = strlen(__s);
      result = ICverify(__s, v4, a1);
      if (v2 > 3)
      {
        break;
      }

      ++v2;
      v3 = (v3 + 3);
    }

    while (result == 11);
  }

  else
  {
    result = 11;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t gk_nu_drop(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0uLL;
  v16 = 0;
  __strcpy_chk();
  v2 = 0;
  v3 = *(*(a1 + 3184) + 264);
  *__s = -15920;
  v14 = 0;
  WORD1(v15) = -16707;
  *(&v15 + 7) = -15928;
  v4 = **(v3 + 3496);
  v5 = *(a1 + 1339);
  v6 = __s;
  while (1)
  {
    v7 = strlen(v6);
    if (v5)
    {
      v8 = v7;
      if (v7 >= 1)
      {
        v9 = strlen((a1 + 1339));
        v10 = v8 <= v9 ? v9 : v8;
        if (!memcmp((a1 + 1339), v6, v10))
        {
          break;
        }
      }
    }

    ++v2;
    v6 += 5;
    if (v2 == 4)
    {
      goto LABEL_14;
    }
  }

  if (v4)
  {
LABEL_14:
    result = 10;
    goto LABEL_15;
  }

  *(a1 + 1328) |= 0x10000000uLL;
  if (v2 <= 2)
  {
    *(a1 + 1404) = v2 + 3;
  }

  result = 3;
LABEL_15:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t gk_elision(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3184);
  v3 = v2[33];
  v4 = *(v2[31] + 56);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v38 = 0u;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v5 = strlen((a1 + 1339));
  __strcpy_chk();
  v6 = *v4;
  LOWORD(v25) = 10191;
  BYTE2(v25) = 0;
  WORD5(v25) = 2;
  HIDWORD(v25) = 667418624;
  WORD4(v26) = 2;
  *(&v26 + 10) = -843513856;
  HIWORD(v26) = 39;
  WORD3(v27) = 3;
  DWORD2(v27) = -742850559;
  WORD6(v27) = 39;
  WORD2(v28) = 3;
  *(&v28 + 6) = -994311935;
  WORD5(v28) = 39;
  WORD1(v29) = 3;
  DWORD1(v29) = -1178206208;
  WORD4(v29) = 10192;
  LOWORD(v30) = 4;
  BYTE10(v29) = 0;
  *(&v30 + 2) = -1178206207;
  WORD3(v30) = 10179;
  BYTE8(v30) = 0;
  HIWORD(v30) = 4;
  LODWORD(v31[0]) = -1094188799;
  WORD2(v31[0]) = 10192;
  BYTE6(v31[0]) = 0;
  WORD6(v31[0]) = 4;
  *(v31 + 14) = -1094189055;
  WORD1(v31[1]) = 10179;
  BYTE4(v31[1]) = 0;
  WORD5(v31[1]) = 4;
  HIDWORD(v31[1]) = -1177747199;
  LOWORD(v32) = 10190;
  BYTE2(v32) = 0;
  WORD4(v32) = 4;
  *(&v32 + 10) = -994246656;
  HIWORD(v32) = 39;
  WORD3(v33) = 3;
  DWORD2(v33) = -843186176;
  WORD6(v33) = 39;
  WORD2(v34) = 3;
  *(&v34 + 6) = -742522879;
  WORD5(v34) = 39;
  WORD1(v35) = 3;
  *(&v35 + 4) = 0x27CEBED0CFD20101;
  BYTE12(v35) = 0;
  LOWORD(v36) = 6;
  __asm { FMOV            V1.2S, #-1.5625 }

  *(&v36 + 2) = _D1;
  WORD3(v36) = 10191;
  BYTE8(v36) = 0;
  HIWORD(v36) = 4;
  LODWORD(v37[0]) = -944177152;
  WORD2(v37[0]) = 10183;
  BYTE6(v37[0]) = 0;
  WORD6(v37[0]) = 4;
  *(v37 + 14) = 667418624;
  BYTE2(v37[1]) = 0;
  WORD5(v37[1]) = 2;
  HIDWORD(v37[1]) = 667484160;
  WORD4(v38) = 2;
  *(&v38 + 10) = 667090944;
  BYTE14(v38) = 0;
  WORD3(v39) = 2;
  DWORD2(v39) = 667942912;
  BYTE12(v39) = 0;
  v40[2] = 2;
  *&v40[3] = -977403904;
  v40[5] = 10185;
  LOBYTE(v40[6]) = 0;
  *&v40[9] = 4;
  if (!SLstrcmp(&v26 + 12, (a1 + 1339)))
  {
    if ((v6 & 0x10000000) != 0)
    {
      v12 = 1;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (*(a1 + 1339) != 185 || *(a1 + 1340) != 205 || *(v2[10] + 65) != 39)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v12 = *(a1 + 1341) == 0;
  if (!*(a1 + 1341) && (v6 & 0x10000000) == 0)
  {
LABEL_11:
    v13 = *(a1 + 1547);
    v12 = 1;
    if (v13 != 176 && v13 != 208)
    {
      *(a1 + 1328) |= 0x10000000uLL;
      result = 3;
      v23 = 11;
      goto LABEL_46;
    }
  }

LABEL_13:
  if (SLstrcmp(&v25, (a1 + 1339)))
  {
    v14 = 0;
    v15 = v5;
    v16 = (&v25 | 0xE);
    v17 = 1;
    while (1)
    {
      if (*(v2[10] + 65) == 39)
      {
        v18 = *(v16 - 2);
        if (v15 > v18)
        {
          v18 = v15;
        }

        if (!memcmp((a1 + 1339), v16 - 14, v18 - 1))
        {
LABEL_21:
          v20 = v14;
          goto LABEL_24;
        }
      }

      v17 = v14 < 0x14;
      if (v14 == 20)
      {
        break;
      }

      v19 = SLstrcmp(v16, (a1 + 1339));
      v16 += 14;
      ++v14;
      if (!v19)
      {
        goto LABEL_21;
      }
    }

    v20 = 20;
    LOWORD(v14) = 21;
  }

  else
  {
    LOWORD(v14) = 0;
    v20 = 0;
    v17 = 1;
  }

LABEL_24:
  if ((**(v3 + 3520) & 0x200) != 0 && (v21 = &v25 + 14 * v20, v21[12]))
  {
    if (!v21[13])
    {
      *(a1 + 1328) |= 0x10000000uLL;
      result = 11;
      switch(v14)
      {
        case 5u:
          v23 = 15;
          goto LABEL_46;
        case 0xBu:
          v23 = 21;
          goto LABEL_46;
        case 7u:
          v23 = 17;
LABEL_46:
          *(a1 + 1404) = v23;
          goto LABEL_47;
      }

      goto LABEL_47;
    }
  }

  else if (*(&v25 + 14 * v20 + 13))
  {
    *(a1 + 1328) |= 0x10000000uLL;
    if (v14 - 3) < 0xAu && ((0x229u >> (v14 - 3)))
    {
      v23 = asc_1D2BF7BB0[(v14 - 3)];
      result = 11;
      goto LABEL_46;
    }

    result = 11;
    goto LABEL_47;
  }

  if ((*&v17 & ((v6 & 0x10000000u) >> 28) & 1) == 0)
  {
    if ((v12 | ((v6 & 0x10000000u) >> 28)))
    {
      result = 3;
      goto LABEL_47;
    }

    *(a1 + 1328) |= 0x10000000uLL;
    if (v20 < 0x15u && ((0x1EFFFBu >> v20) & 1) != 0)
    {
      v23 = asc_1D2BF7BC4[v20];
      result = 10;
      goto LABEL_46;
    }
  }

  result = 10;
LABEL_47:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t gk_undouble_accent(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 3184) + 248) + 56);
  v3 = *(a1 + 1612);
  if (v3 >= 1)
  {
    v4 = (a1 + 1547);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 == *(a1 + 1338) || (v5 | 2) == 0x2F)
      {
        goto LABEL_10;
      }
    }

    while (--v3);
  }

  v7 = a1 + 1547;
  __strcpy_chk();
  v8 = GREEKdoubly_accented((a1 + 1547), v2);
  if (v8 < 1)
  {
LABEL_10:
    result = 11;
    goto LABEL_11;
  }

  *(v7 + v8) -= (*(v2 + 4 * *(v7 + v8)) & 0x4020000) != 0;
  v9 = ICverify((a1 + 1547), *(a1 + 1612), a1);
  __strcpy_chk();
  if (v9 == 10)
  {
    result = 10;
  }

  else
  {
    result = 11;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t GREEKdoubly_accented(const char *a1, uint64_t a2)
{
  v4 = strlen(a1);
  if (v4 < 1)
  {
    return 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      if ((*(a2 + 4 * a1[v6]) & 0x4020000) != 0)
      {
        ++v5;
      }

      if (v5 > 1u)
      {
        break;
      }

      if (v4 <= ++v6)
      {
        return 0;
      }
    }
  }

  return v6;
}

uint64_t gk_aphaeresis_aux_chk(uint64_t a1)
{
  v2 = a1 + 1339;
  v3 = strlen((a1 + 1339));
  if (v3 < 1 || (*(*(*(*(a1 + 3184) + 248) + 56) + 4 * *(v2 + (v3 - 1))) & 0x10000000) != 0)
  {
    return 10;
  }

  *(a1 + 1328) |= 0x10000000uLL;
  *(a1 + 1404) = 1;
  return 3;
}

uint64_t gk_num(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3184);
  v3 = *(*(v2 + 248) + 56);
  v4 = *(v2 + 264);
  __strcpy_chk();
  v5 = *(a1 + 1612);
  if (v5 < 1)
  {
    goto LABEL_12;
  }

  LOWORD(v6) = 0;
  while ((*(v3 + 4 * v14[v6]) & 0x8000000) != 0)
  {
    v6 = (v6 + 1);
    if (v6 >= v5)
    {
      LOWORD(v6) = *(a1 + 1612);
      break;
    }
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  __strcpy_chk();
  v7 = *(a1 + 1612) - v6;
  *(a1 + 1612) = v7;
  v8 = ICverify((a1 + 1547), v7, a1);
  if (v8 == 11)
  {
    v9 = gk_veruppercap(a1);
    __strcpy_chk();
    *(a1 + 1612) = v5;
    if (v9 == 11)
    {
      goto LABEL_13;
    }

    v9 = 10;
  }

  else
  {
    v9 = v8;
    __strcpy_chk();
    *(a1 + 1612) = v5;
  }

  v10 = *(v4 + 3520);
  if ((*v10 & 0x10) == 0)
  {
LABEL_12:
    v9 = 11;
    goto LABEL_13;
  }

  *(v4 + 18) &= ~1u;
  *v10 &= ~1u;
  if (*(a1 + 1308))
  {
    v13 = *(v4 + 3480);
    if (v13)
    {
      *(v4 + 3480) = v13 >> v6;
    }
  }

LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t gk_veruppercap(uint64_t a1)
{
  v2 = *(a1 + 3184);
  v3 = *(v2 + 264);
  v4 = *(v3 + 88);
  if (v4 == 2 || (result = 11, v4 == 1) && *(a1 + 24) == 64)
  {
    if (SFaccent((a1 + 1547), *(a1 + 1612), *(v2 + 248), *(v2 + 264)))
    {
      *(v3 + 102) = 1;
      *(v3 + 3492) |= 2u;
      **(a1 + 3184) |= 0x40u;
      return 10;
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t ICpar(const char *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v222 = *MEMORY[0x1E69E9840];
  v5 = (a3 + 1547);
  v220 = a3;
  v206 = *(*(*(a3 + 3184) + 248) + 56);
  if (strlen((a3 + 1547)) >= 1)
  {
    v6 = 0;
    v215 = 0;
    v218 = 0;
    v7 = 0;
    v8 = 0;
    v208 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v211 = 0;
    v213 = 0;
    v205 = 0;
    v209 = 0;
    while (1)
    {
      v14 = v5[v6];
      if (v14 == 34)
      {
        if (v10 != 34)
        {
          if (v9 == 2)
          {
            switch(v10)
            {
              case 187:
                --v11;
                break;
              case 96:
                --HIDWORD(v215);
                break;
              case 39:
                --v13;
                ++v209;
                a1[v218] = 39;
                a1[(v218 + 1)] = 0;
                v15 = v5[v6];
                ++v218;
                goto LABEL_83;
            }

            v15 = 34;
LABEL_83:
            v9 = 0;
            --v8;
LABEL_104:
            ++v9;
            v29 = v8 + 1;
            *(a2 + v8) = v15;
            ++v12;
            *(a2 + (v8 + 1)) = 0;
            v10 = 34;
            goto LABEL_181;
          }

          if (v9 >= 3)
          {
            switch(v10)
            {
              case 187:
                v11 -= v9;
                goto LABEL_103;
              case 96:
                HIDWORD(v215) -= v9;
                goto LABEL_103;
              case 39:
                v13 -= v9;
LABEL_103:
                v15 = 34;
                v9 = 0;
                goto LABEL_104;
            }
          }

          v9 = 0;
        }

        v15 = 34;
        goto LABEL_104;
      }

      if (v14 == 39)
      {
        if (v10 != 39)
        {
          if (v9 == 2)
          {
            switch(v10)
            {
              case 187:
                --v11;
                break;
              case 96:
                --HIDWORD(v215);
                break;
              case 34:
                --v12;
                break;
            }

            v9 = 0;
            --v8;
          }

          else
          {
            if (v9 >= 3)
            {
              switch(v10)
              {
                case 187:
                  v11 -= v9;
                  break;
                case 96:
                  HIDWORD(v215) -= v9;
                  break;
                case 34:
                  v12 -= v9;
                  break;
              }
            }

            v9 = 0;
          }
        }

        ++v9;
        ++v13;
        v10 = 39;
        *(a2 + v8) = 39;
        *(a2 + ++v8) = 0;
        goto LABEL_182;
      }

      v16 = *(v220 + 8);
      if (v14 == 187 && v16 == 7)
      {
        if (v10 != 187)
        {
          if (v9 == 2)
          {
            switch(v10)
            {
              case '""':
                --v12;
                break;
                --HIDWORD(v215);
                break;
              case '\'':
                --v13;
                ++v209;
                a1[v218] = 39;
                a1[(v218 + 1)] = 0;
                v20 = v5[v6];
                ++v218;
                goto LABEL_108;
            }

            v20 = -69;
LABEL_108:
            v9 = 0;
            --v8;
LABEL_172:
            ++v9;
            v29 = v8 + 1;
            *(a2 + v8) = v20;
            ++v11;
            *(a2 + (v8 + 1)) = 0;
            v10 = 187;
LABEL_181:
            v8 = v29;
            goto LABEL_182;
          }

          if (v9 >= 3)
          {
            switch(v10)
            {
              case '""':
                v12 -= v9;
                goto LABEL_171;
                HIDWORD(v215) -= v9;
                goto LABEL_171;
              case '\'':
                v13 -= v9;
LABEL_171:
                v20 = -69;
                v9 = 0;
                goto LABEL_172;
            }
          }

          v9 = 0;
        }

        v20 = -69;
        goto LABEL_172;
      }

      if (v14 == 96 && v16 == 11)
      {
        if (v10 != 96)
        {
          if (v9 == 2)
          {
            switch(v10)
            {
              case 34:
                --v12;
                break;
              case 187:
                --v11;
                break;
              case 39:
                --v13;
                ++v209;
                a1[v218] = 39;
                a1[(v218 + 1)] = 0;
                v21 = v5[v6];
                ++v218;
                goto LABEL_169;
            }

            v21 = 96;
LABEL_169:
            v9 = 0;
            --v8;
LABEL_180:
            ++v9;
            v29 = v8 + 1;
            *(a2 + v8) = v21;
            ++HIDWORD(v215);
            *(a2 + (v8 + 1)) = 0;
            v10 = 96;
            goto LABEL_181;
          }

          if (v9 >= 3)
          {
            switch(v10)
            {
              case 34:
                v12 -= v9;
                goto LABEL_179;
              case 187:
                v11 -= v9;
                goto LABEL_179;
              case 39:
                v13 -= v9;
LABEL_179:
                v21 = 96;
                v9 = 0;
                goto LABEL_180;
            }
          }

          v9 = 0;
        }

        v21 = 96;
        goto LABEL_180;
      }

      if (v9 == 2)
      {
        break;
      }

      v22 = HIDWORD(v215);
      v23 = HIDWORD(v215) - v9;
      v24 = v11 - v9;
      if (v10 != 187)
      {
        v24 = v11;
      }

      if (v10 == 96)
      {
        v24 = v11;
      }

      else
      {
        v23 = HIDWORD(v215);
      }

      v25 = v12 - v9;
      v26 = v13 - v9;
      if (v10 != 39)
      {
        v26 = v13;
      }

      if (v10 == 34)
      {
        v26 = v13;
      }

      else
      {
        v25 = v12;
      }

      if (v10 <= 95)
      {
        v24 = v11;
        v23 = HIDWORD(v215);
      }

      else
      {
        v26 = v13;
        v25 = v12;
      }

      if (v9 >= 3)
      {
        v13 = v26;
        v12 = v25;
        v11 = v24;
        v22 = v23;
      }

      HIDWORD(v215) = v22;
      v19 = v215;
LABEL_112:
      v30 = *(v206 + 4 * v14);
      v31 = *&v30 & 0xA00000;
      v32 = (((*&v30 & 0xA00000) == 0x200000) << 21) | (((*&v30 & 0xC00000) == 0x400000) << 22);
      if ((v30 & 0x2000) == 0)
      {
        v31 = *&v30 & 0xA00000;
        v32 = 0;
      }

      if (v31)
      {
        v33 = (v30 & 0x1002400) == 16778240;
      }

      else
      {
        v33 = 0;
      }

      v34 = v30 & 0x1000000;
      if (!v33)
      {
        v34 = 0;
      }

      v35 = __ROR8__((v32 | v34) - 0x200000, 21);
      if (v35 > 1)
      {
        if (v35 != 7)
        {
          if (v35 == 2)
          {
            if ((v19 & 0x2000) == 0)
            {
              if (v7 < 2)
              {
                v7 = 0;
                goto LABEL_325;
              }

              if (v7 == 2)
              {
                if ((v19 & 0x400000) != 0)
                {
                  --v211;
                }

                else if ((v19 & 0x200000) != 0)
                {
                  --v213;
                }

                else
                {
                  v218 += (v19 << 7) >> 31;
                }

                v7 = 0;
                --v8;
LABEL_325:
                v19 = 0x2000;
              }

              else
              {
                if ((v19 & 0x200000) != 0)
                {
                  v213 -= v7;
                }

                else
                {
                  if ((v19 & 0x400000) != 0)
                  {
                    v38 = v7;
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v211 -= v38;
                }

                v19 = 0x2000;
                v7 = 0;
              }
            }

            if (v14 > 146)
            {
              if (v14 <= 154)
              {
                if (v14 == 147)
                {
                  if ((~v19 & 0x93) != 0)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        LODWORD(v208) = v208 - v7;
                        v58 = 8339;
                        goto LABEL_627;
                      }

                      v7 = 0;
                      --v8;
                      LODWORD(v208) = v208 - 1;
                    }

                    v51 = 8339;
                    goto LABEL_552;
                  }

                  goto LABEL_370;
                }

                if (v14 == 148)
                {
                  if ((~v19 & 0x94) != 0)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        LODWORD(v208) = v208 - v7;
                        v58 = 8340;
                        goto LABEL_627;
                      }

                      v7 = 0;
                      --v8;
                      LODWORD(v208) = v208 - 1;
                    }

                    v51 = 8340;
                    goto LABEL_552;
                  }

LABEL_370:
                  LODWORD(v215) = v19;
                  goto LABEL_628;
                }

LABEL_373:
                LODWORD(v215) = v19;
                goto LABEL_632;
              }

              switch(v14)
              {
                case 155:
                  if ((~v19 & 0x9B) != 0)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        HIDWORD(v208) -= v7;
                        v59 = 8347;
                        goto LABEL_630;
                      }

                      v7 = 0;
                      --v8;
                      --HIDWORD(v208);
                    }

                    v52 = 8347;
                    goto LABEL_555;
                  }

                  break;
                case 171:
                  if ((~v19 & 0xAB) != 0)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        HIDWORD(v208) -= v7;
                        v59 = 8363;
                        goto LABEL_630;
                      }

                      v7 = 0;
                      --v8;
                      --HIDWORD(v208);
                    }

                    v52 = 8363;
                    goto LABEL_555;
                  }

                  break;
                case 187:
                  if ((~v19 & 0xBB) != 0)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        HIDWORD(v208) -= v7;
                        v59 = 8379;
                        goto LABEL_630;
                      }

                      v7 = 0;
                      --v8;
                      --HIDWORD(v208);
                    }

                    v52 = 8379;
                    goto LABEL_555;
                  }

                  break;
                default:
                  goto LABEL_373;
              }

LABEL_372:
              LODWORD(v215) = v19;
              goto LABEL_631;
            }

            if (v14 > 138)
            {
              if (v14 != 139)
              {
                if (v14 == 145)
                {
                  if ((~v19 & 0x91) != 0)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        LODWORD(v208) = v208 - v7;
                        v58 = 8337;
                        goto LABEL_627;
                      }

                      v7 = 0;
                      --v8;
                      LODWORD(v208) = v208 - 1;
                    }

                    v51 = 8337;
                    goto LABEL_552;
                  }

                  goto LABEL_370;
                }

                if (v14 == 146)
                {
                  if ((~v19 & 0x92) != 0)
                  {
                    if (v7 >= 2)
                    {
                      if (v7 == 2)
                      {
                        v7 = 0;
                        --v8;
                        LODWORD(v208) = v208 - 1;
                        goto LABEL_547;
                      }

                      LODWORD(v208) = v208 - v7;
                      v58 = 8338;
LABEL_627:
                      LODWORD(v215) = v58;
                      v7 = 0;
LABEL_628:
                      LODWORD(v208) = v208 + 1;
LABEL_632:
                      v9 = 0;
                      ++v7;
                      v29 = v8 + 1;
                      *(a2 + v8) = v14;
                      *(a2 + (v8 + 1)) = 0;
                      goto LABEL_181;
                    }

                    v7 = 0;
LABEL_547:
                    v51 = 8338;
LABEL_552:
                    LODWORD(v215) = v51;
                    goto LABEL_628;
                  }

                  goto LABEL_370;
                }

                goto LABEL_373;
              }

              if ((~v19 & 0x8B) != 0)
              {
                if (v7 >= 2)
                {
                  if (v7 == 2)
                  {
                    v7 = 0;
                    --v8;
                    --HIDWORD(v208);
                    goto LABEL_543;
                  }

                  HIDWORD(v208) -= v7;
                  v59 = 8331;
LABEL_630:
                  LODWORD(v215) = v59;
                  v7 = 0;
LABEL_631:
                  ++HIDWORD(v208);
                  goto LABEL_632;
                }

                v7 = 0;
LABEL_543:
                v52 = 8331;
LABEL_555:
                LODWORD(v215) = v52;
                goto LABEL_631;
              }

              goto LABEL_372;
            }

            if (v14 == 60)
            {
              if ((~v19 & 0x3C) != 0)
              {
                if (v7 < 2)
                {
                  v7 = 0;
                }

                else
                {
                  if (v7 != 2)
                  {
                    v205 -= v7;
                    v57 = 8252;
                    goto LABEL_620;
                  }

                  v7 = 0;
                  --v8;
                  --v205;
                }

                v50 = 8252;
                goto LABEL_541;
              }
            }

            else
            {
              if (v14 != 62)
              {
                goto LABEL_373;
              }

              if ((~v19 & 0x3E) != 0)
              {
                if (v7 >= 2)
                {
                  if (v7 == 2)
                  {
                    v7 = 0;
                    --v8;
                    --v205;
                    goto LABEL_534;
                  }

                  v205 -= v7;
                  v57 = 8254;
LABEL_620:
                  LODWORD(v215) = v57;
                  v7 = 0;
LABEL_621:
                  ++v205;
                  goto LABEL_632;
                }

                v7 = 0;
LABEL_534:
                v50 = 8254;
LABEL_541:
                LODWORD(v215) = v50;
                goto LABEL_621;
              }
            }

            LODWORD(v215) = v19;
            goto LABEL_621;
          }

LABEL_138:
          if ((v19 & 0x400000) != 0)
          {
            if (v7 >= 2)
            {
              if (v7 == 2)
              {
                --v211;
                goto LABEL_187;
              }

              v211 -= v7;
            }
          }

          else if ((v19 & 0x200000) != 0)
          {
            if (v7 >= 2)
            {
              if (v7 == 2)
              {
                --v213;
                goto LABEL_187;
              }

              v213 -= v7;
            }
          }

          else if ((v19 & 0x1000000) != 0)
          {
            if (v7 == 2)
            {
              --v218;
              goto LABEL_187;
            }
          }

          else if ((v19 & 0x2000) != 0 && v7 >= 2)
          {
            v36 = v19 & 0x3C;
            if (v7 == 2)
            {
              if (v36 == 60)
              {
                --v205;
              }

              else if (v19 - 8337 > 3)
              {
                --HIDWORD(v208);
              }

              else
              {
                LODWORD(v208) = v208 - 1;
              }

LABEL_187:
              --v8;
            }

            else if (v36 == 60)
            {
              v205 -= v7;
            }

            else if (v19 - 8337 > 3)
            {
              HIDWORD(v208) -= v7;
            }

            else
            {
              LODWORD(v208) = v208 - v7;
            }
          }

          v9 = 0;
          v7 = 0;
          LODWORD(v215) = 0;
          a1[v218] = v14;
          a1[(v218 + 1)] = 0;
          *(a2 + v8++) = v5[v6];
          *(a2 + v8) = 0;
          ++v218;
          goto LABEL_182;
        }

        if ((v19 & 0x1000000) != 0)
        {
          goto LABEL_487;
        }

        if (v7 >= 2)
        {
          if (v7 == 2)
          {
            if ((v19 & 0x400000) != 0)
            {
              --v211;
            }

            else if ((v19 & 0x200000) != 0)
            {
              --v213;
            }

            else if ((v19 & 0x2000) != 0)
            {
              if ((~v19 & 0x3C) != 0)
              {
                if (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v19), xmmword_1D2BF7BF0), xmmword_1D2BF7BF0))))
                {
                  LODWORD(v208) = v208 - 1;
                }

                else
                {
                  --HIDWORD(v208);
                }
              }

              else
              {
                --v205;
              }
            }

            v7 = 0;
            --v8;
LABEL_481:
            v19 = 0x1000000;
LABEL_487:
            if (v14 <= 46)
            {
              if (v14 != 33)
              {
                if (v14 == 44)
                {
                  if ((~v19 & 0x2C) == 0)
                  {
                    goto LABEL_509;
                  }

                  v49 = v7 == 2;
                  v42 = v218 - v49;
                  v8 -= v49;
                  v43 = 16777260;
                }

                else
                {
                  if (v14 != 46 || (~v19 & 0x2E) == 0)
                  {
                    goto LABEL_509;
                  }

                  v44 = v7 == 2;
                  v42 = v218 - v44;
                  v8 -= v44;
                  v43 = 16777262;
                }

                goto LABEL_511;
              }

              if ((~v19 & 0x21) == 0)
              {
                goto LABEL_509;
              }

              LODWORD(v215) = 16777249;
              v46 = v7 == 2;
              v42 = v218 - v46;
              v8 -= v46;
            }

            else
            {
              if (v14 > 58)
              {
                if (v14 == 59)
                {
                  if ((~v19 & 0x3B) == 0)
                  {
                    goto LABEL_509;
                  }

                  v48 = v7 == 2;
                  v42 = v218 - v48;
                  v8 -= v48;
                  v43 = 16777275;
                }

                else
                {
                  if (v14 != 63 || (~v19 & 0x3F) == 0)
                  {
                    goto LABEL_509;
                  }

                  v45 = v7 == 2;
                  v42 = v218 - v45;
                  v8 -= v45;
                  v43 = 16777279;
                }
              }

              else
              {
                if (v14 != 47)
                {
                  if (v14 == 58 && (~v19 & 0x3A) != 0)
                  {
                    v41 = v7 == 2;
                    v42 = v218 - v41;
                    v8 -= v41;
                    v43 = 16777274;
                    goto LABEL_511;
                  }

LABEL_509:
                  LODWORD(v215) = v19;
                  v42 = v218;
LABEL_513:
                  v9 = 0;
                  *(a2 + v8) = v14;
                  *(a2 + (v8 + 1)) = 0;
                  ++v7;
                  a1[v42] = v5[v6];
                  a1[(v42 + 1)] = 0;
                  v218 = v42 + 1;
                  ++v8;
                  goto LABEL_182;
                }

                if ((~v19 & 0x2F) == 0)
                {
                  goto LABEL_509;
                }

                v47 = v7 == 2;
                v42 = v218 - v47;
                v8 -= v47;
                v43 = 16777263;
              }

LABEL_511:
              LODWORD(v215) = v43;
            }

            v7 = 0;
            goto LABEL_513;
          }

          if ((v19 & 0x400000) != 0)
          {
            v211 -= v7;
          }

          else if ((v19 & 0x200000) != 0)
          {
            v213 -= v7;
          }

          else
          {
            if ((v19 & 0x2000) == 0)
            {
              goto LABEL_203;
            }

            if ((~v19 & 0x3C) != 0)
            {
              if (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v19), xmmword_1D2BF7BF0), xmmword_1D2BF7BF0))))
              {
                LODWORD(v208) = v208 - v7;
              }

              else
              {
                HIDWORD(v208) -= v7;
              }
            }

            else
            {
              v205 -= v7;
            }
          }

          v19 = 0x1000000;
          v7 = 0;
          goto LABEL_487;
        }

LABEL_203:
        v7 = 0;
        goto LABEL_481;
      }

      if (v35)
      {
        if (v35 != 1)
        {
          goto LABEL_138;
        }

        if ((v19 & 0x400000) != 0)
        {
          goto LABEL_222;
        }

        if (v7 >= 2)
        {
          if (v7 == 2)
          {
            if ((v19 & 0x200000) != 0)
            {
              --v213;
            }

            else if ((v19 & 0x1000000) != 0)
            {
              --v218;
            }

            else if ((v19 & 0x2000) != 0)
            {
              if ((~v19 & 0x3C) != 0)
              {
                if (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v19), xmmword_1D2BF7BF0), xmmword_1D2BF7BF0))))
                {
                  LODWORD(v208) = v208 - 1;
                }

                else
                {
                  --HIDWORD(v208);
                }
              }

              else
              {
                --v205;
              }
            }

            v7 = 0;
            --v8;
LABEL_221:
            v19 = 0x400000;
LABEL_222:
            if (v14 > 146)
            {
              if (v14 <= 174)
              {
                if (v14 <= 155)
                {
                  if (v14 == 147)
                  {
                    if ((~v19 & 0x93) != 0)
                    {
                      if (v7 < 2)
                      {
                        v7 = 0;
                      }

                      else
                      {
                        if (v7 != 2)
                        {
                          v211 -= v7;
                          v53 = 4194451;
                          goto LABEL_690;
                        }

                        v7 = 0;
                        --v211;
                        --v8;
                      }

                      v39 = 4194451;
                      goto LABEL_670;
                    }
                  }

                  else if (v14 == 155 && (~v19 & 0x9B) != 0)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        v211 -= v7;
                        v53 = 4194459;
                        goto LABEL_690;
                      }

                      v7 = 0;
                      --v211;
                      --v8;
                    }

                    v39 = 4194459;
                    goto LABEL_670;
                  }

                  goto LABEL_322;
                }

                if (v14 == 156)
                {
                  if ((~v19 & 0x9C) != 0 && *(v220 + 8) == 2)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        v211 -= v7;
                        v53 = 4194460;
                        goto LABEL_690;
                      }

                      v7 = 0;
                      --v211;
                      --v8;
                    }

                    v39 = 4194460;
                    goto LABEL_670;
                  }

                  goto LABEL_322;
                }

                if (v14 != 171 || (~v19 & 0xAB) == 0)
                {
                  goto LABEL_322;
                }

                if (v7 >= 2)
                {
                  if (v7 != 2)
                  {
                    v211 -= v7;
                    v53 = 4194475;
                    goto LABEL_690;
                  }

                  v7 = 0;
                  --v211;
                  --v8;
                  v39 = 4194475;
                  goto LABEL_670;
                }

                v7 = 0;
                v54 = 131;
              }

              else
              {
                if (v14 > 186)
                {
                  if (v14 == 187)
                  {
                    if ((~v19 & 0xBB) != 0)
                    {
                      if (v7 < 2)
                      {
                        v7 = 0;
                        v39 = 4194491;
                      }

                      else
                      {
                        if (v7 != 2)
                        {
                          v211 -= v7;
                          v53 = 4194491;
                          goto LABEL_690;
                        }

                        v7 = 0;
                        --v211;
                        --v8;
                        v39 = 4194491;
                      }

                      goto LABEL_670;
                    }
                  }

                  else if (v14 == 221)
                  {
                    if ((~v19 & 0xDD) != 0)
                    {
                      if (v7 < 2)
                      {
                        v7 = 0;
                      }

                      else
                      {
                        if (v7 != 2)
                        {
                          v211 -= v7;
                          v53 = 4194525;
                          goto LABEL_690;
                        }

                        v7 = 0;
                        --v211;
                        --v8;
                      }

                      v39 = 4194525;
                      goto LABEL_670;
                    }
                  }

                  else if (v14 == 223 && (~v19 & 0xDF) != 0)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        v211 -= v7;
                        v53 = 4194527;
                        goto LABEL_690;
                      }

                      v7 = 0;
                      --v211;
                      --v8;
                    }

                    v39 = 4194527;
                    goto LABEL_670;
                  }

                  goto LABEL_322;
                }

                if (v14 != 175)
                {
                  if (v14 == 181 && (~v19 & 0xB5) != 0 && *(v220 + 8) == 2)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        v211 -= v7;
                        v53 = 4194485;
                        goto LABEL_690;
                      }

                      v7 = 0;
                      --v211;
                      --v8;
                    }

                    v39 = 4194485;
                    goto LABEL_670;
                  }

                  goto LABEL_322;
                }

                if ((~v19 & 0xAF) == 0 || *(v220 + 8) != 1)
                {
                  goto LABEL_322;
                }

                if (v7 >= 2)
                {
                  if (v7 != 2)
                  {
                    v211 -= v7;
                    v53 = 4194479;
                    goto LABEL_690;
                  }

                  v7 = 0;
                  --v211;
                  --v8;
                  v39 = 4194479;
                  goto LABEL_670;
                }

                v7 = 0;
                v54 = 135;
              }
            }

            else if (v14 <= 122)
            {
              if (v14 > 61)
              {
                if (v14 != 62)
                {
                  if (v14 == 91 && (~v19 & 0x5B) != 0)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        v211 -= v7;
                        v53 = 4194395;
                        goto LABEL_690;
                      }

                      v7 = 0;
                      --v211;
                      --v8;
                    }

                    v39 = 4194395;
                    goto LABEL_670;
                  }

                  goto LABEL_322;
                }

                if ((~v19 & 0x3E) == 0)
                {
                  goto LABEL_322;
                }

                if (v7 >= 2)
                {
                  if (v7 != 2)
                  {
                    v211 -= v7;
                    v53 = 4194366;
                    goto LABEL_690;
                  }

                  v7 = 0;
                  --v211;
                  --v8;
                  v39 = 4194366;
                  goto LABEL_670;
                }

                v7 = 0;
                v54 = 22;
              }

              else
              {
                if (v14 == 40)
                {
                  if ((~v19 & 0x28) != 0)
                  {
                    if (v7 < 2)
                    {
                      v53 = 4194344;
                      goto LABEL_690;
                    }

                    LODWORD(v215) = 4194344;
                    if (v7 != 2)
                    {
                      v211 -= v7;
                      goto LABEL_691;
                    }

                    v7 = 0;
                    --v211;
                    --v8;
LABEL_692:
                    v9 = 0;
                    *(a2 + v8++) = v14;
                    *(a2 + v8) = 0;
                    ++v7;
                    v60 = &v221[v211 + 65];
                    *v60 = v5[v6];
                    ++v211;
                    goto LABEL_693;
                  }

                  goto LABEL_322;
                }

                if (v14 != 60 || (~v19 & 0x3C) == 0)
                {
                  goto LABEL_322;
                }

                if (v7 >= 2)
                {
                  if (v7 != 2)
                  {
                    v211 -= v7;
                    v53 = 4194364;
                    goto LABEL_690;
                  }

                  v7 = 0;
                  --v211;
                  --v8;
                  v39 = 4194364;
                  goto LABEL_670;
                }

                v7 = 0;
                v54 = 20;
              }
            }

            else
            {
              if (v14 > 131)
              {
                if (v14 == 132)
                {
                  if ((~v19 & 0x84) != 0)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        v211 -= v7;
                        v53 = 4194436;
                        goto LABEL_690;
                      }

                      v7 = 0;
                      --v211;
                      --v8;
                    }

                    v39 = 4194436;
                    goto LABEL_670;
                  }
                }

                else if (v14 == 139)
                {
                  if ((~v19 & 0x8B) != 0)
                  {
                    if (v7 < 2)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      if (v7 != 2)
                      {
                        v211 -= v7;
                        v53 = 4194443;
                        goto LABEL_690;
                      }

                      v7 = 0;
                      --v211;
                      --v8;
                    }

                    v39 = 4194443;
                    goto LABEL_670;
                  }
                }

                else if (v14 == 145 && (~v19 & 0x91) != 0)
                {
                  if (v7 >= 2)
                  {
                    if (v7 == 2)
                    {
                      v7 = 0;
                      --v211;
                      --v8;
                      goto LABEL_582;
                    }

                    v211 -= v7;
                    v53 = 4194449;
LABEL_690:
                    LODWORD(v215) = v53;
LABEL_691:
                    v7 = 0;
                    goto LABEL_692;
                  }

                  v7 = 0;
LABEL_582:
                  v39 = 4194449;
LABEL_670:
                  LODWORD(v215) = v39;
                  goto LABEL_692;
                }

LABEL_322:
                LODWORD(v215) = v19;
                goto LABEL_692;
              }

              if (v14 != 123)
              {
                if (v14 == 130 && (~v19 & 0x82) != 0)
                {
                  if (v7 < 2)
                  {
                    v7 = 0;
                  }

                  else
                  {
                    if (v7 != 2)
                    {
                      v211 -= v7;
                      v53 = 4194434;
                      goto LABEL_690;
                    }

                    v7 = 0;
                    --v211;
                    --v8;
                  }

                  v39 = 4194434;
                  goto LABEL_670;
                }

                goto LABEL_322;
              }

              if ((~v19 & 0x7B) == 0)
              {
                goto LABEL_322;
              }

              if (v7 >= 2)
              {
                if (v7 != 2)
                {
                  v211 -= v7;
                  v53 = 4194427;
                  goto LABEL_690;
                }

                v7 = 0;
                --v211;
                --v8;
                v39 = 4194427;
                goto LABEL_670;
              }

              v7 = 0;
              v54 = 83;
            }

            v39 = v54 | 0x400028;
            goto LABEL_670;
          }

          if ((v19 & 0x200000) != 0)
          {
            v213 -= v7;
          }

          else
          {
            if ((v19 & 0x2000) == 0)
            {
              goto LABEL_191;
            }

            if ((~v19 & 0x3C) != 0)
            {
              if (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v19), xmmword_1D2BF7BF0), xmmword_1D2BF7BF0))))
              {
                LODWORD(v208) = v208 - v7;
              }

              else
              {
                HIDWORD(v208) -= v7;
              }
            }

            else
            {
              v205 -= v7;
            }
          }

          v19 = 0x400000;
          v7 = 0;
          goto LABEL_222;
        }

LABEL_191:
        v7 = 0;
        goto LABEL_221;
      }

      if ((v19 & 0x200000) == 0)
      {
        if (v7 >= 2)
        {
          if (v7 == 2)
          {
            if ((v19 & 0x400000) != 0)
            {
              --v211;
            }

            else if ((v19 & 0x1000000) != 0)
            {
              --v218;
            }

            else if ((v19 & 0x2000) != 0)
            {
              if ((~v19 & 0x3C) != 0)
              {
                if (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v19), xmmword_1D2BF7BF0), xmmword_1D2BF7BF0))))
                {
                  LODWORD(v208) = v208 - 1;
                }

                else
                {
                  --HIDWORD(v208);
                }
              }

              else
              {
                --v205;
              }
            }

            v7 = 0;
            --v8;
            goto LABEL_379;
          }

          if ((v19 & 0x400000) != 0)
          {
            v211 -= v7;
LABEL_215:
            v19 = 0x200000;
            v7 = 0;
            goto LABEL_380;
          }

          if ((v19 & 0x2000) != 0)
          {
            if ((~v19 & 0x3C) != 0)
            {
              if (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v19), xmmword_1D2BF7BF0), xmmword_1D2BF7BF0))))
              {
                LODWORD(v208) = v208 - v7;
              }

              else
              {
                HIDWORD(v208) -= v7;
              }
            }

            else
            {
              v205 -= v7;
            }

            goto LABEL_215;
          }
        }

        v7 = 0;
LABEL_379:
        v19 = 0x200000;
      }

LABEL_380:
      if (v14 > 146)
      {
        if (v14 <= 170)
        {
          if (v14 > 160)
          {
            if (v14 == 161)
            {
              if ((~v19 & 0xA1) != 0 && *(v220 + 8) == 1)
              {
                if (v7 < 2)
                {
                  v7 = 0;
                }

                else
                {
                  if (v7 != 2)
                  {
                    v213 -= v7;
                    v55 = 2097313;
                    goto LABEL_685;
                  }

                  v7 = 0;
                  --v213;
                  --v8;
                }

                v40 = 2097313;
                goto LABEL_666;
              }
            }

            else if (v14 == 163 && (~v19 & 0xA3) != 0 && *(v220 + 8) == 1)
            {
              if (v7 < 2)
              {
                v7 = 0;
              }

              else
              {
                if (v7 != 2)
                {
                  v213 -= v7;
                  v55 = 2097315;
                  goto LABEL_685;
                }

                v7 = 0;
                --v213;
                --v8;
              }

              v40 = 2097315;
              goto LABEL_666;
            }
          }

          else if (v14 == 147)
          {
            if ((~v19 & 0x93) != 0)
            {
              if (v7 < 2)
              {
                v7 = 0;
              }

              else
              {
                if (v7 != 2)
                {
                  v213 -= v7;
                  v55 = 2097299;
LABEL_685:
                  LODWORD(v215) = v55;
                  goto LABEL_686;
                }

                v7 = 0;
                --v213;
                --v8;
              }

              v40 = 2097299;
              goto LABEL_666;
            }
          }

          else if (v14 == 148 && (~v19 & 0x94) != 0)
          {
            if (v7 < 2)
            {
              v7 = 0;
            }

            else
            {
              if (v7 != 2)
              {
                v213 -= v7;
                v55 = 2097300;
                goto LABEL_685;
              }

              v7 = 0;
              --v213;
              --v8;
            }

            v40 = 2097300;
            goto LABEL_666;
          }
        }

        else if (v14 <= 188)
        {
          if (v14 == 171)
          {
            if ((~v19 & 0xAB) != 0)
            {
              if (v7 >= 2)
              {
                if (v7 != 2)
                {
                  v213 -= v7;
                  v55 = 2097323;
                  goto LABEL_685;
                }

                v7 = 0;
                --v213;
                --v8;
                v40 = 2097323;
                goto LABEL_666;
              }

              v7 = 0;
              v56 = 130;
              goto LABEL_665;
            }
          }

          else if (v14 == 187 && (~v19 & 0xBB) != 0)
          {
            if (v7 >= 2)
            {
              if (v7 != 2)
              {
                v213 -= v7;
                v55 = 2097339;
                goto LABEL_685;
              }

              v7 = 0;
              --v213;
              --v8;
              v40 = 2097339;
              goto LABEL_666;
            }

            v7 = 0;
            v56 = 146;
LABEL_665:
            v40 = v56 | 0x200029;
LABEL_666:
            LODWORD(v215) = v40;
            goto LABEL_687;
          }
        }

        else if (v14 == 189)
        {
          if ((~v19 & 0xBD) != 0 && *(v220 + 8) == 2)
          {
            if (v7 < 2)
            {
              v7 = 0;
              v56 = 148;
              goto LABEL_665;
            }

            if (v7 != 2)
            {
              v213 -= v7;
              v55 = 2097341;
              goto LABEL_685;
            }

            v7 = 0;
            --v213;
            --v8;
            v40 = 2097341;
            goto LABEL_666;
          }
        }

        else if (v14 == 222)
        {
          if ((~v19 & 0xDE) != 0)
          {
            if (v7 < 2)
            {
              v7 = 0;
            }

            else
            {
              if (v7 != 2)
              {
                v213 -= v7;
                v55 = 2097374;
                goto LABEL_685;
              }

              v7 = 0;
              --v213;
              --v8;
            }

            v40 = 2097374;
            goto LABEL_666;
          }
        }

        else if (v14 == 224 && (~v19 & 0xE0) != 0)
        {
          if (v7 < 2)
          {
            v7 = 0;
          }

          else
          {
            if (v7 != 2)
            {
              v213 -= v7;
              v55 = 2097376;
              goto LABEL_685;
            }

            v7 = 0;
            --v213;
            --v8;
          }

          v40 = 2097376;
          goto LABEL_666;
        }

        goto LABEL_478;
      }

      if (v14 > 124)
      {
        if (v14 <= 139)
        {
          if (v14 == 125)
          {
            if ((~v19 & 0x7D) != 0)
            {
              if (v7 >= 2)
              {
                if (v7 != 2)
                {
                  v213 -= v7;
                  v55 = 2097277;
                  goto LABEL_685;
                }

                v7 = 0;
                --v213;
                --v8;
                v40 = 2097277;
                goto LABEL_666;
              }

              v7 = 0;
              v56 = 84;
              goto LABEL_665;
            }
          }

          else if (v14 == 139 && (~v19 & 0x8B) != 0)
          {
            if (v7 < 2)
            {
              v7 = 0;
            }

            else
            {
              if (v7 != 2)
              {
                v213 -= v7;
                v55 = 2097291;
                goto LABEL_685;
              }

              v7 = 0;
              --v213;
              --v8;
            }

            v40 = 2097291;
            goto LABEL_666;
          }
        }

        else if (v14 == 140)
        {
          if ((~v19 & 0x8C) != 0 && *(v220 + 8) == 15)
          {
            if (v7 < 2)
            {
              v7 = 0;
            }

            else
            {
              if (v7 != 2)
              {
                v213 -= v7;
                v55 = 2097292;
                goto LABEL_685;
              }

              v7 = 0;
              --v213;
              --v8;
            }

            v40 = 2097292;
            goto LABEL_666;
          }
        }

        else if (v14 == 145)
        {
          if ((~v19 & 0x91) != 0)
          {
            if (v7 < 2)
            {
              v7 = 0;
            }

            else
            {
              if (v7 != 2)
              {
                v213 -= v7;
                v55 = 2097297;
                goto LABEL_685;
              }

              v7 = 0;
              --v213;
              --v8;
            }

            v40 = 2097297;
            goto LABEL_666;
          }
        }

        else if (v14 == 146 && (~v19 & 0x92) != 0)
        {
          if (v7 < 2)
          {
            v7 = 0;
          }

          else
          {
            if (v7 != 2)
            {
              v213 -= v7;
              v55 = 2097298;
              goto LABEL_685;
            }

            v7 = 0;
            --v213;
            --v8;
          }

          v40 = 2097298;
          goto LABEL_666;
        }

        goto LABEL_478;
      }

      if (v14 > 61)
      {
        if (v14 == 62)
        {
          if ((~v19 & 0x3E) != 0)
          {
            if (v7 < 2)
            {
              v7 = 0;
            }

            else
            {
              if (v7 != 2)
              {
                v213 -= v7;
                v55 = 2097214;
                goto LABEL_685;
              }

              v7 = 0;
              --v213;
              --v8;
            }

            v40 = 2097214;
            goto LABEL_666;
          }
        }

        else if (v14 == 93 && (~v19 & 0x5D) != 0)
        {
          if (v7 < 2)
          {
            v7 = 0;
          }

          else
          {
            if (v7 != 2)
            {
              v213 -= v7;
              v55 = 2097245;
              goto LABEL_685;
            }

            v7 = 0;
            --v213;
            --v8;
          }

          v40 = 2097245;
          goto LABEL_666;
        }

        goto LABEL_478;
      }

      if (v14 != 41)
      {
        if (v14 == 60 && (~v19 & 0x3C) != 0)
        {
          if (v7 < 2)
          {
            v7 = 0;
          }

          else
          {
            if (v7 != 2)
            {
              v213 -= v7;
              v55 = 2097212;
              goto LABEL_685;
            }

            v7 = 0;
            --v213;
            --v8;
          }

          v40 = 2097212;
          goto LABEL_666;
        }

LABEL_478:
        LODWORD(v215) = v19;
        goto LABEL_687;
      }

      if ((~v19 & 0x29) == 0)
      {
        goto LABEL_478;
      }

      if (v7 < 2)
      {
        v55 = 2097193;
        goto LABEL_685;
      }

      LODWORD(v215) = 2097193;
      if (v7 != 2)
      {
        v213 -= v7;
LABEL_686:
        v7 = 0;
        goto LABEL_687;
      }

      v7 = 0;
      --v213;
      --v8;
LABEL_687:
      v9 = 0;
      *(a2 + v8++) = v14;
      *(a2 + v8) = 0;
      ++v7;
      v60 = &v221[v213];
      *v60 = v5[v6];
      ++v213;
LABEL_693:
      *(v60 + 1) = v6;
LABEL_182:
      v37 = strlen(v5);
      if (v8 <= 63 && v37 > ++v6)
      {
        continue;
      }

      v61 = HIDWORD(v215);
      v207 = v215;
      v4 = a1;
      v62 = v209;
      goto LABEL_699;
    }

    if (v10 > 95)
    {
      v27 = HIDWORD(v215);
      v28 = v11 - 1;
      if (v10 != 187)
      {
        v28 = v11;
      }

      if (v10 == 96)
      {
        v27 = HIDWORD(v215) - 1;
      }

      else
      {
        v11 = v28;
      }

      HIDWORD(v215) = v27;
    }

    else
    {
      if (v10 != 34)
      {
        v19 = v215;
        if (v10 == 39)
        {
          --v13;
          ++v209;
          a1[v218] = 39;
          a1[(v218 + 1)] = 0;
          v14 = v5[v6];
          ++v218;
        }

        goto LABEL_111;
      }

      --v12;
    }

    v19 = v215;
LABEL_111:
    --v8;
    goto LABEL_112;
  }

  v211 = 0;
  v213 = 0;
  v62 = 0;
  v207 = 0;
  v208 = 0;
  LOWORD(v205) = 0;
  v13 = 0;
  LOWORD(v12) = 0;
  LOWORD(v11) = 0;
  v61 = 0;
  LOWORD(v218) = 0;
  LOWORD(v8) = 0;
  v7 = 0;
LABEL_699:
  v216 = v7;
  if (*(v220 + 8) == 11)
  {
    v63 = v61;
  }

  else
  {
    v63 = 0;
  }

  v64 = v63 + v13;
  v65 = v61;
  if (v62 && (v63 + v13) == 1)
  {
    v64 = 1 - v62;
  }

  else
  {
    v66 = a2;
    v67 = strlen(v4);
    if (v67 >= 1)
    {
      for (i = 0; i < v67; ++i)
      {
        v69 = &v4[i];
        if (*v69 == 39)
        {
          v70 = strlen(v69 + 1);
          memmove(&v4[i], v69 + 1, v70 + 1);
          LOWORD(v218) = v218 - 1;
        }
      }
    }

    a2 = v66;
  }

  v71 = (v220 + 1482);
  if (!v64 && !v12 && !v11 && !WORD2(v208) && !v208 && !v205 && !v65)
  {
    v72 = 0;
    LOWORD(v73) = 0;
    LOWORD(v74) = 0;
    LOWORD(v75) = 0;
    v217 = 0;
    goto LABEL_719;
  }

  v78 = v12;
  v74 = v64 - ((v64 + ((v64 & 0x8000) >> 15)) & 0xFFFFFFFE);
  if (v74)
  {
    v79 = strlen((v220 + 1417));
    v80 = strlen(v71);
    v81 = 0;
    while (1)
    {
      if (v80 <= v81 || (v82 = v81, ++v81, v71[v82] != 39))
      {
        if ((v79 & 0x8000) != 0)
        {
          goto LABEL_733;
        }

        v83 = *(v220 + 1416 + v79);
        if (v83 != 39 && (*(v220 + 8) != 11 || v83 != 96))
        {
          goto LABEL_733;
        }

        --v79;
      }

      LOWORD(v74) = v74 - 1;
      if (!v74)
      {
        goto LABEL_733;
      }
    }
  }

  LOWORD(v74) = 0;
LABEL_733:
  if (v78 >= 0)
  {
    v75 = v78 & 1;
  }

  else
  {
    v75 = -(v78 & 1);
  }

  if (v75)
  {
    v84 = strlen((v220 + 1417));
    v85 = strlen(v71);
    v86 = 0;
    do
    {
      if (v85 <= v86 || (v87 = v86, ++v86, v71[v87] != 34))
      {
        if ((v84 & 0x8000) != 0 || *(v220 + 1416 + v84) != 34)
        {
          break;
        }

        --v84;
      }

      LOWORD(v75) = v75 - 1;
    }

    while (v75);
  }

  if ((v11 & 0x8000u) == 0)
  {
    v88 = v11 & 1;
  }

  else
  {
    v88 = -(v11 & 1);
  }

  if (v88 && *(v220 + 8) == 7)
  {
    v89 = strlen((v220 + 1417));
    v90 = strlen(v71);
    v91 = 0;
    do
    {
      if (v90 <= v91 || (v92 = v91, ++v91, v71[v92] != 187))
      {
        if ((v89 & 0x8000) != 0 || *(v220 + 1416 + v89) != 187)
        {
          break;
        }

        --v89;
      }

      LOWORD(v88) = v88 - 1;
    }

    while (v88);
  }

  v217 = v88;
  if ((v208 & 0x8000u) == 0)
  {
    v72 = v208 & 1;
  }

  else
  {
    v72 = -(v208 & 1);
  }

  v204 = a2;
  if (!v72)
  {
    goto LABEL_825;
  }

  v93 = *(v220 + 8);
  if (v93 == 13)
  {
    v94 = strlen((v220 + 1417));
    v95 = strlen(v71);
    v96 = 0;
    do
    {
      if (v95 > v96 && ((v97 = v71[v96], v97 == 148) || v97 == 146))
      {
        ++v96;
      }

      else
      {
        if ((v94 & 0x8000) != 0)
        {
          break;
        }

        v98 = *(v220 + 1416 + v94);
        if (v98 != 148 && v98 != 146)
        {
          break;
        }

        --v94;
      }

      --v72;
    }

    while (v72);
  }

  v72 -= (v72 + ((v72 & 0x8000) >> 15)) & 0xFFFFFFFE;
  if (!v72)
  {
    goto LABEL_824;
  }

  if (v93 != 14)
  {
    goto LABEL_782;
  }

  v99 = strlen((v220 + 1417));
  v100 = strlen(v71);
  v101 = 0;
  while (v100 > v101 && v71[v101] - 146 <= 2)
  {
    ++v101;
LABEL_780:
    if (!--v72)
    {
      goto LABEL_781;
    }
  }

  if ((v99 & 0x8000) == 0 && *(v220 + 1416 + v99) - 146 <= 2)
  {
    --v99;
    goto LABEL_780;
  }

LABEL_781:
  v72 -= (v72 + ((v72 & 0x8000) >> 15)) & 0xFFFFFFFE;
LABEL_782:
  if (!v72)
  {
    goto LABEL_824;
  }

  if (v93 != 7)
  {
    goto LABEL_795;
  }

  v102 = strlen((v220 + 1417));
  v103 = strlen(v71);
  v104 = 0;
  while (2)
  {
    if (v103 > v104)
    {
      v105 = v71[v104];
      if (v105 == 148 || v105 == 146)
      {
        ++v104;
        goto LABEL_793;
      }
    }

    if ((v102 & 0x8000) == 0)
    {
      v106 = *(v220 + 1416 + v102);
      if (v106 == 148 || v106 == 146)
      {
        --v102;
LABEL_793:
        if (!--v72)
        {
          break;
        }

        continue;
      }
    }

    break;
  }

  v72 -= (v72 + ((v72 & 0x8000) >> 15)) & 0xFFFFFFFE;
LABEL_795:
  if (!v72)
  {
    goto LABEL_824;
  }

  if (v93 != 11)
  {
    goto LABEL_810;
  }

  v107 = strlen((v220 + 1417));
  v108 = strlen(v71);
  v109 = 0;
  while (2)
  {
    if (v108 > v109)
    {
      v110 = v71[v109];
      if (v110 == 148 || v110 == 146)
      {
        ++v109;
        goto LABEL_805;
      }
    }

    if ((v107 & 0x8000) == 0)
    {
      v111 = *(v220 + 1416 + v107);
      if ((v111 - 145) < 4 || v111 == 132 || v111 == 130)
      {
        --v107;
LABEL_805:
        if (!--v72)
        {
          break;
        }

        continue;
      }
    }

    break;
  }

  v72 -= (v72 + ((v72 & 0x8000) >> 15)) & 0xFFFFFFFE;
LABEL_810:
  if (!v72)
  {
LABEL_824:
    v72 = 0;
    goto LABEL_825;
  }

  if (v93 == 10)
  {
    v112 = strlen((v220 + 1417));
    v113 = strlen(v71);
    v114 = 0;
    v115 = v220 + 1416;
    do
    {
      if (v113 <= v114 || v71[v114] - 146 > 2)
      {
        if ((v112 & 0x8000) != 0)
        {
          break;
        }

        if (*(v115 + v112) - 132 > 0x10 || ((1 << (*(v115 + v112) + 124)) & 0x14001) == 0)
        {
          break;
        }

        --v112;
      }

      else
      {
        ++v114;
      }

      --v72;
    }

    while (v72);
  }

LABEL_825:
  if ((v205 & 0x8000u) == 0)
  {
    v117 = v205 & 1;
  }

  else
  {
    v117 = -(v205 & 1);
  }

  if (!v117)
  {
    goto LABEL_849;
  }

  v118 = *(v220 + 8);
  if (v118 == 11)
  {
    v119 = strlen((v220 + 1417));
    v120 = strlen(v71);
    v121 = 0;
    do
    {
      if (v120 > v121 && (v71[v121] | 2) == 0x3E)
      {
        ++v121;
      }

      else
      {
        if ((v119 & 0x8000) != 0 || (*(v220 + 1416 + v119) | 2) != 0x3E)
        {
          break;
        }

        --v119;
      }
    }

    while (--v117);
  }

  v73 = v117 - ((v117 + ((v117 & 0x8000) >> 15)) & 0xFFFFFFFE);
  if (v117 == ((v117 + ((v117 & 0x8000) >> 15)) & 0xFFFE))
  {
LABEL_849:
    LOWORD(v73) = 0;
    a2 = v204;
  }

  else
  {
    a2 = v204;
    if (v118 == 14)
    {
      v122 = v73;
      v123 = strlen((v220 + 1417));
      v124 = strlen(v71);
      LOWORD(v73) = v122;
      v125 = 0;
      v77 = v218;
      while (1)
      {
        if (v124 > v125 && v71[v125] == 62)
        {
          ++v125;
        }

        else
        {
          if ((v123 & 0x8000) != 0 || *(v220 + 1416 + v123) != 62)
          {
            goto LABEL_851;
          }

          --v123;
        }

        LOWORD(v73) = v73 - 1;
        if (!v73)
        {
          goto LABEL_851;
        }
      }
    }
  }

  v77 = v218;
LABEL_851:
  if ((v208 & 0x800000000000) == 0)
  {
    v76 = SBYTE4(v208) & 1;
  }

  else
  {
    v76 = -(SBYTE4(v208) & 1);
  }

  if (!v76)
  {
    goto LABEL_874;
  }

  v126 = *(v220 + 8);
  if (v126 == 11)
  {
    v127 = a2;
    v128 = v73;
    v210 = strlen((v220 + 1417));
    v129 = strlen(v71);
    v126 = 11;
    LOWORD(v73) = v128;
    a2 = v127;
    v130 = 0;
    v131 = v210;
    do
    {
      if (v129 <= v130 || (((v71[v130] + 117) >> 4) | (16 * (v71[v130] + 117))) > 3u)
      {
        if ((v131 & 0x8000) != 0 || (((*(v220 + 1416 + v131) + 117) >> 4) | (16 * (*(v220 + 1416 + v131) + 117))) > 3u)
        {
          break;
        }

        --v131;
      }

      else
      {
        ++v130;
      }

      --v76;
    }

    while (v76);
  }

  v76 -= (v76 + ((v76 & 0x8000) >> 15)) & 0xFFFFFFFE;
  if (!v76)
  {
LABEL_719:
    LOWORD(v76) = 0;
    goto LABEL_720;
  }

  if (v126 == 14)
  {
    v132 = a2;
    v133 = v73;
    v134 = strlen((v220 + 1417));
    v135 = strlen((v220 + 1482));
    LOWORD(v73) = v133;
    a2 = v132;
    v71 = (v220 + 1482);
    v136 = 0;
    v77 = v218;
    while (1)
    {
      if (v135 > v136 && (*(v220 + 1482 + v136) | 0x20) == 0xBB)
      {
        ++v136;
      }

      else
      {
        if ((v134 & 0x8000) != 0 || (*(v220 + 1416 + v134) | 0x20) != 0xBB)
        {
          goto LABEL_874;
        }

        --v134;
      }

      LOWORD(v76) = v76 - 1;
      if (!v76)
      {
        goto LABEL_874;
      }
    }
  }

  LOWORD(v76) = 1;
LABEL_720:
  v77 = v218;
LABEL_874:
  v137 = v211;
  if (!(v211 | v213))
  {
    LOWORD(v144) = 0;
    LOWORD(v143) = 0;
    goto LABEL_1147;
  }

  v212 = v73;
  v219 = v77;
  if ((v207 & 0x400000) != 0 && v216 >= 2)
  {
    if (v216 == 2)
    {
      --v137;
    }

    else
    {
      v137 -= v216;
    }

    if (v216 == 2)
    {
      LOWORD(v8) = v8 - 1;
    }
  }

  else if ((v207 & 0x200000) != 0 && v216 >= 2)
  {
    if (v216 == 2)
    {
      --v213;
      LOWORD(v8) = v8 - 1;
    }

    else
    {
      v213 -= v216;
    }
  }

  v138 = strlen((v220 + 1417));
  v139 = strlen(v71);
  v140 = 0;
  v141 = v220 + 1416;
  v142 = v139;
  v143 = v213;
  v144 = v137;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          if (v144 && v143)
          {
            v145 = &v221[v144 + 65];
            v148 = *(v145 - 4);
            v147 = v145 - 1;
            v146 = v148;
            if (v148 > 146)
            {
              if (v146 <= 174)
              {
                if (v146 <= 155)
                {
                  if (v146 == 147)
                  {
                    v181 = &v221[v143];
                    v182 = *(v181 - 4);
                    v150 = v181 - 1;
                    if (v182 != 148)
                    {
                      goto LABEL_1146;
                    }
                  }

                  else
                  {
                    if (v146 != 155)
                    {
                      goto LABEL_1146;
                    }

                    v163 = &v221[v143];
                    v164 = *(v163 - 4);
                    v150 = v163 - 1;
                    if (v164 != 139)
                    {
                      goto LABEL_1146;
                    }
                  }

                  goto LABEL_1020;
                }

                if (v146 != 156)
                {
                  if (v146 != 171)
                  {
                    goto LABEL_1146;
                  }

                  v169 = &v221[v143];
                  v170 = *(v169 - 4);
                  v150 = v169 - 1;
                  if (v170 != 187)
                  {
                    goto LABEL_1146;
                  }

                  goto LABEL_1020;
                }

                if (*(v220 + 8) != 2)
                {
                  goto LABEL_1146;
                }

                v185 = &v221[v143];
                v186 = *(v185 - 4);
                v150 = v185 - 1;
                v177 = v186;
                goto LABEL_1008;
              }

              if (v146 <= 186)
              {
                if (v146 != 175)
                {
                  if (v146 != 181)
                  {
                    goto LABEL_1146;
                  }

                  if (*(v220 + 8) != 2)
                  {
                    goto LABEL_1146;
                  }

                  v174 = &v221[v143];
                  v175 = *(v174 - 4);
                  v150 = v174 - 1;
                  if (v175 != 189)
                  {
                    goto LABEL_1146;
                  }

                  goto LABEL_1020;
                }

                if (*(v220 + 8) != 1)
                {
                  goto LABEL_1146;
                }
              }

              else if (v146 != 187)
              {
                if (v146 == 221)
                {
                  if (*(v220 + 8) != 15)
                  {
                    goto LABEL_1146;
                  }

                  v189 = &v221[v143];
                  v190 = *(v189 - 4);
                  v150 = v189 - 1;
                  if (v190 != 222)
                  {
                    goto LABEL_1146;
                  }
                }

                else
                {
                  if (v146 != 223)
                  {
                    goto LABEL_1146;
                  }

                  if (*(v220 + 8) != 15)
                  {
                    goto LABEL_1146;
                  }

                  v155 = &v221[v143];
                  v156 = *(v155 - 4);
                  v150 = v155 - 1;
                  if (v156 != 224)
                  {
                    goto LABEL_1146;
                  }
                }

                goto LABEL_1020;
              }

              v193 = &v221[v143];
              v194 = *(v193 - 4);
              v150 = v193 - 1;
              if (v194 != 171)
              {
                goto LABEL_1146;
              }
            }

            else
            {
              if (v146 <= 122)
              {
                if (v146 > 61)
                {
                  if (v146 == 62)
                  {
                    v183 = &v221[v143];
                    v184 = *(v183 - 4);
                    v150 = v183 - 1;
                    if (v184 != 60)
                    {
                      goto LABEL_1146;
                    }
                  }

                  else
                  {
                    if (v146 != 91)
                    {
                      goto LABEL_1146;
                    }

                    v167 = &v221[v143];
                    v168 = *(v167 - 4);
                    v150 = v167 - 1;
                    if (v168 != 93)
                    {
                      goto LABEL_1146;
                    }
                  }
                }

                else if (v146 == 40)
                {
                  v179 = &v221[v143];
                  v180 = *(v179 - 4);
                  v150 = v179 - 1;
                  if (v180 != 41)
                  {
                    goto LABEL_1146;
                  }
                }

                else
                {
                  if (v146 != 60)
                  {
                    goto LABEL_1146;
                  }

                  v161 = &v221[v143];
                  v162 = *(v161 - 4);
                  v150 = v161 - 1;
                  if (v162 != 62)
                  {
                    goto LABEL_1146;
                  }
                }

                goto LABEL_1020;
              }

              if (v146 > 131)
              {
                if (v146 != 132)
                {
                  if (v146 == 139)
                  {
                    if (*(v220 + 8) != 15)
                    {
                      goto LABEL_1146;
                    }

                    v187 = &v221[v143];
                    v188 = *(v187 - 4);
                    v150 = v187 - 1;
                    if (v188 != 140)
                    {
                      goto LABEL_1146;
                    }
                  }

                  else
                  {
                    if (v146 != 145)
                    {
                      goto LABEL_1146;
                    }

                    v149 = &v221[v143];
                    v151 = *(v149 - 4);
                    v150 = v149 - 1;
                    if (v151 != 146)
                    {
                      goto LABEL_1146;
                    }
                  }

                  goto LABEL_1020;
                }

                v176 = &v221[v143];
                v178 = *(v176 - 4);
                v150 = v176 - 1;
                v177 = v178;
                if (v178 == 163)
                {
LABEL_998:
                  if (*(v220 + 8) != 1)
                  {
                    goto LABEL_1146;
                  }

                  goto LABEL_1020;
                }

LABEL_1008:
                if (v177 != 147)
                {
                  goto LABEL_1146;
                }

                goto LABEL_1020;
              }

              if (v146 == 123)
              {
                v191 = &v221[v143];
                v192 = *(v191 - 4);
                v150 = v191 - 1;
                if (v192 != 125)
                {
                  goto LABEL_1146;
                }
              }

              else
              {
                if (v146 != 130)
                {
                  goto LABEL_1146;
                }

                v171 = &v221[v143];
                v173 = *(v171 - 4);
                v150 = v171 - 1;
                v172 = v173;
                if (v173 == 161)
                {
                  goto LABEL_998;
                }

                if (v172 != 145)
                {
                  goto LABEL_1146;
                }
              }
            }

LABEL_1020:
            if (*(v150 + 1) - 1 <= *(v147 + 1))
            {
              goto LABEL_1146;
            }

            --v144;
            --v143;
            continue;
          }

          break;
        }

        if (v144)
        {
          if (v142 > v140)
          {
            v152 = LOBYTE(v221[v144 + 64]);
            if (v152 > 0x92)
            {
              if (LOBYTE(v221[v144 + 64]) <= 0xAEu)
              {
                if (LOBYTE(v221[v144 + 64]) > 0x9Bu)
                {
                  if (v152 == 156)
                  {
                    if (*(v220 + 8) != 2 || v71[v140] != 147)
                    {
                      goto LABEL_1146;
                    }
                  }

                  else if (v152 != 171 || v71[v140] != 187)
                  {
                    goto LABEL_1146;
                  }

                  goto LABEL_1098;
                }

                if (v152 != 147)
                {
                  if (v152 != 155 || v71[v140] != 139)
                  {
                    goto LABEL_1146;
                  }

                  goto LABEL_1098;
                }

                v198 = v71[v140];
                if (v198 == 148)
                {
                  goto LABEL_1098;
                }

                v154 = *(v220 + 8);
                if (v198 != 146)
                {
                  goto LABEL_1081;
                }

                goto LABEL_1080;
              }

              if (LOBYTE(v221[v144 + 64]) <= 0xBAu)
              {
                if (v152 != 175)
                {
                  if (v152 != 181 || *(v220 + 8) != 2 || v71[v140] != 189)
                  {
                    goto LABEL_1146;
                  }

                  goto LABEL_1098;
                }

                if (*(v220 + 8) != 1)
                {
                  goto LABEL_1146;
                }
              }

              else if (v152 != 187)
              {
                if (v152 == 221)
                {
                  if (*(v220 + 8) != 15 || v71[v140] != 222)
                  {
                    goto LABEL_1146;
                  }
                }

                else if (v152 != 223 || *(v220 + 8) != 15 || v71[v140] != 224)
                {
                  goto LABEL_1146;
                }

                goto LABEL_1098;
              }

              if (v71[v140] != 171)
              {
                goto LABEL_1146;
              }
            }

            else
            {
              if (LOBYTE(v221[v144 + 64]) <= 0x7Au)
              {
                if (LOBYTE(v221[v144 + 64]) > 0x3Du)
                {
                  if (v152 == 62)
                  {
                    if (v71[v140] != 60)
                    {
                      goto LABEL_1146;
                    }
                  }

                  else if (v152 != 91 || v71[v140] != 93)
                  {
                    goto LABEL_1146;
                  }
                }

                else if (v152 == 40)
                {
                  if (v71[v140] != 41)
                  {
                    goto LABEL_1146;
                  }
                }

                else if (v152 != 60 || v71[v140] != 62)
                {
                  goto LABEL_1146;
                }

                goto LABEL_1098;
              }

              if (LOBYTE(v221[v144 + 64]) > 0x83u)
              {
                if (v152 != 132)
                {
                  if (v152 == 139)
                  {
                    if (*(v220 + 8) != 15 || v71[v140] != 140)
                    {
                      goto LABEL_1146;
                    }

                    goto LABEL_1098;
                  }

                  if (v152 != 145)
                  {
                    goto LABEL_1146;
                  }

                  v153 = v71[v140];
                  if (v153 == 146)
                  {
                    goto LABEL_1098;
                  }

                  v154 = *(v220 + 8);
                  if (v153 != 148)
                  {
LABEL_1081:
                    if (v154 != 11)
                    {
                      goto LABEL_1146;
                    }

LABEL_1033:
                    if (!v72)
                    {
                      goto LABEL_1146;
                    }

LABEL_1034:
                    --v144;
                    --v72;
                    continue;
                  }

LABEL_1080:
                  if (v154 == 11)
                  {
                    goto LABEL_1098;
                  }

                  goto LABEL_1081;
                }

                v195 = v71[v140];
                if (v195 == 147)
                {
                  goto LABEL_1098;
                }

                v197 = *(v220 + 8);
                if ((v197 & 0xFE) != 0xA)
                {
                  if (v195 != 163 || v197 != 1)
                  {
                    goto LABEL_1146;
                  }

                  goto LABEL_1098;
                }

LABEL_1073:
                if (v195 == 148 || v195 == 146)
                {
                  goto LABEL_1098;
                }

LABEL_928:
                if (!v72)
                {
                  goto LABEL_1145;
                }

                goto LABEL_1034;
              }

              if (v152 != 123)
              {
                if (v152 != 130)
                {
                  goto LABEL_1146;
                }

                v195 = v71[v140];
                if (v195 == 145)
                {
                  goto LABEL_1098;
                }

                v196 = *(v220 + 8);
                if (v196 == 1)
                {
                  if (v195 != 161)
                  {
                    goto LABEL_1146;
                  }

                  goto LABEL_1098;
                }

                if (v196 != 11)
                {
                  goto LABEL_1146;
                }

                goto LABEL_1073;
              }

              if (v71[v140] != 125)
              {
                goto LABEL_1146;
              }
            }

LABEL_1098:
            --v144;
            ++v140;
            continue;
          }

          v158 = *(v220 + 8);
          if (v158 == 10)
          {
            if (LOBYTE(v221[v144 + 64]) != 132 || v72 == 0)
            {
              goto LABEL_1146;
            }

            goto LABEL_1034;
          }

          if (v158 != 11)
          {
            goto LABEL_1146;
          }

          v159 = LOBYTE(v221[v144 + 64]);
          if ((v159 - 130) > 0xF || ((1 << (v159 + 126)) & 0x8005) == 0)
          {
            if (v159 != 147)
            {
              goto LABEL_1146;
            }

            goto LABEL_1033;
          }

          goto LABEL_928;
        }

        break;
      }

      if (!v143)
      {
        LOWORD(v144) = 0;
        LOWORD(v143) = 0;
        goto LABEL_1146;
      }

      if (!v138)
      {
        if (*(v220 + 8) != 10 || (LOBYTE(v221[v143 - 1]) == 147 ? (v166 = v72 == 0) : (v166 = 1), v166))
        {
LABEL_1142:
          LOWORD(v144) = 0;
          goto LABEL_1146;
        }

        v138 = 0;
        goto LABEL_960;
      }

      v157 = LOBYTE(v221[v143 - 1]);
      if (v157 <= 0x92)
      {
        if (LOBYTE(v221[v143 - 1]) <= 0x7Cu)
        {
          if (LOBYTE(v221[v143 - 1]) > 0x3Du)
          {
            if (v157 == 62)
            {
              if (*(v141 + v138) != 60)
              {
                goto LABEL_1142;
              }
            }

            else if (v157 != 93 || *(v141 + v138) != 91)
            {
              goto LABEL_1142;
            }
          }

          else if (v157 == 41)
          {
            if (*(v141 + v138) != 40)
            {
              goto LABEL_1142;
            }
          }

          else if (v157 != 60 || *(v141 + v138) != 62)
          {
            goto LABEL_1142;
          }

          goto LABEL_1135;
        }

        if (LOBYTE(v221[v143 - 1]) <= 0x8Bu)
        {
          if (v157 == 125)
          {
            if (*(v141 + v138) != 123)
            {
              goto LABEL_1142;
            }
          }

          else if (v157 != 139 || *(v141 + v138) != 155)
          {
            goto LABEL_1142;
          }

          goto LABEL_1135;
        }

        if (v157 == 140)
        {
          if (*(v220 + 8) != 15 || *(v141 + v138) != 139)
          {
            goto LABEL_1142;
          }

          goto LABEL_1135;
        }

        if (v157 != 145)
        {
          if (v157 != 146 || *(v141 + v138) != 145)
          {
            goto LABEL_1142;
          }

          goto LABEL_1135;
        }

LABEL_1117:
        if (*(v141 + v138) != 130)
        {
          goto LABEL_1142;
        }

LABEL_1135:
        v144 = 0;
        --v143;
        --v138;
        continue;
      }

      break;
    }

    if (LOBYTE(v221[v143 - 1]) > 0xAAu)
    {
      if (LOBYTE(v221[v143 - 1]) <= 0xBCu)
      {
        if (v157 == 171)
        {
          v201 = *(v141 + v138);
          if (v201 == 175)
          {
            if (*(v220 + 8) != 1)
            {
              goto LABEL_1142;
            }
          }

          else if (v201 != 187)
          {
            goto LABEL_1142;
          }
        }

        else if (v157 != 187 || *(v141 + v138) != 171)
        {
          goto LABEL_1142;
        }
      }

      else if (v157 == 189)
      {
        if (*(v220 + 8) != 2 || *(v141 + v138) != 181)
        {
          goto LABEL_1142;
        }
      }

      else if (v157 == 222)
      {
        if (*(v220 + 8) != 15 || *(v141 + v138) != 221)
        {
          goto LABEL_1142;
        }
      }

      else if (v157 != 224 || *(v220 + 8) != 15 || *(v141 + v138) != 223)
      {
        goto LABEL_1142;
      }

      goto LABEL_1135;
    }

    if (LOBYTE(v221[v143 - 1]) > 0xA0u)
    {
      if (v157 != 161)
      {
        if (v157 != 163 || *(v220 + 8) != 1 || *(v141 + v138) != 132)
        {
          goto LABEL_1142;
        }

        goto LABEL_1135;
      }

      if (*(v220 + 8) != 1)
      {
        goto LABEL_1142;
      }

      goto LABEL_1117;
    }

    if (v157 != 147)
    {
      if (v157 != 148 || *(v141 + v138) != 147)
      {
        goto LABEL_1142;
      }

      goto LABEL_1135;
    }

    v199 = *(v141 + v138);
    if (v199 == 132)
    {
      goto LABEL_1135;
    }

    v200 = *(v220 + 8);
    if (v200 == 2)
    {
      if (v199 != 156)
      {
        goto LABEL_1142;
      }

      goto LABEL_1135;
    }

    if (v200 != 10)
    {
      goto LABEL_1142;
    }

    if (v199 == 148 || v199 == 146)
    {
      goto LABEL_1135;
    }

    if (v72)
    {
LABEL_960:
      v144 = 0;
      --v143;
      --v72;
      continue;
    }

    break;
  }

  LOWORD(v144) = 0;
LABEL_1145:
  LOWORD(v72) = 0;
LABEL_1146:
  LOWORD(v73) = v212;
  v77 = v219;
LABEL_1147:
  *(a2 + v8) = 0;
  a1[v77] = 0;
  v202 = *MEMORY[0x1E69E9840];
  return ((v74 | v73 | v75 | v217 | v76 | v144 | v72 | v143) != 0) << 29;
}

size_t ICchkprepos(uint64_t a1)
{
  v2 = a1 + 1482;
  v3 = *(*(*(a1 + 3184) + 248) + 56);
  result = strlen((a1 + 1482));
  if (result)
  {
    v5 = 0;
    v6 = 0;
    v7 = result - 1;
    while (1)
    {
      if (v7 < 0)
      {
        if (v5 != 2 || *(*(a1 + 1612) + a1 + 1546) == *(a1 + 1482))
        {
          break;
        }

        goto LABEL_150;
      }

      v8 = *(v2 + (v7 & 0x7FFF));
      v9 = *(v3 + 4 * *(v2 + (v7 & 0x7FFF)));
      if ((v9 & 0x1002400) != 0x1000400 || (v9 & 0x1000000) == 0 || (*(v3 + 4 * *(v2 + (v7 & 0x7FFF))) & 0xA00000) == 0)
      {
        if (*(a1 + 8) == 8 && (v8 == 63 || v8 == 33))
        {
          if (v8 != 63 || v6 == 63)
          {
            if (v6 == 33)
            {
              v19 = v5;
            }

            else
            {
              v19 = 0;
            }

            if (v6 == 33)
            {
              v20 = 0;
            }

            else
            {
              v20 = (v5 == 2) << 18;
            }

            if (v8 == 33)
            {
              v18 = v19;
            }

            else
            {
              v18 = v5;
            }

            if (v8 == 33)
            {
              v6 = 33;
              result = v20;
            }

            else
            {
              result = 0;
            }
          }

          else
          {
            v18 = 0;
            result = (v5 == 2) << 18;
            v6 = 63;
          }

          v5 = v18 + 1;
        }

        else
        {
          v5 = 0;
          v6 = 0;
          result = 0;
        }

        goto LABEL_79;
      }

      if (*(v2 + (v7 & 0x7FFF)) > 0x39u)
      {
        if (v8 == 58)
        {
          LODWORD(result) = (v5 == 2) << 18;
          if (v6 == 58)
          {
            ++v5;
          }

          else
          {
            v5 = 1;
          }

          if (v6 == 58)
          {
            result = 0;
          }

          else
          {
            result = result;
          }

          v6 = 58;
          goto LABEL_79;
        }

        v10 = (v5 == 2) << 18;
        if (v6 == 59)
        {
          v21 = v5 + 1;
        }

        else
        {
          v21 = 1;
        }

        if (v6 == 59)
        {
          v10 = 0;
        }

        v22 = v6 == 63;
        if (v6 == 63)
        {
          v23 = v5 + 1;
        }

        else
        {
          v23 = 1;
        }

        if (v22)
        {
          v24 = 0;
        }

        else
        {
          v24 = (v5 == 2) << 18;
        }

        if (v8 == 63)
        {
          v25 = 63;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        if (v8 == 63)
        {
          v16 = v24;
        }

        else
        {
          v16 = 0;
        }

        v17 = v8 == 59;
        if (v8 == 59)
        {
          v5 = v21;
        }

        else
        {
          v5 = v23;
        }

        if (v8 == 59)
        {
          v6 = 59;
        }

        else
        {
          v6 = v25;
        }
      }

      else
      {
        if (v8 == 33)
        {
          LODWORD(result) = (v5 == 2) << 18;
          if (v6 == 33)
          {
            ++v5;
          }

          else
          {
            v5 = 1;
          }

          if (v6 == 33)
          {
            result = 0;
          }

          else
          {
            result = result;
          }

          v6 = 33;
          goto LABEL_79;
        }

        v10 = (v5 == 2) << 18;
        if (v6 == 44)
        {
          v11 = v5 + 1;
        }

        else
        {
          v11 = 1;
        }

        if (v6 == 44)
        {
          v10 = 0;
        }

        v12 = v6 == 46;
        if (v6 == 46)
        {
          v13 = v5 + 1;
        }

        else
        {
          v13 = 1;
        }

        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = (v5 == 2) << 18;
        }

        if (v8 == 46)
        {
          v15 = 46;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        if (v8 == 46)
        {
          v16 = v14;
        }

        else
        {
          v16 = 0;
        }

        v17 = v8 == 44;
        if (v8 == 44)
        {
          v5 = v11;
        }

        else
        {
          v5 = v13;
        }

        if (v8 == 44)
        {
          v6 = 44;
        }

        else
        {
          v6 = v15;
        }
      }

      if (v17)
      {
        result = v10;
      }

      else
      {
        result = v16;
      }

LABEL_79:
      --v7;
      if (result)
      {
        goto LABEL_150;
      }
    }
  }

  v26 = a1 + 1417;
  result = strlen((a1 + 1417));
  v27 = result;
  if (result < 1)
  {
    return result;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  while (1)
  {
    v31 = *(v26 + v30);
    v32 = v29;
    v33 = *(v3 + 4 * *(v26 + v30));
    if ((v33 & 0x1002400) != 0x1000400 || (v33 & 0x1000000) == 0 || (*(v3 + 4 * *(v26 + v30)) & 0xA00000) == 0)
    {
      break;
    }

    v34 = 0;
    if (*(v26 + v30) > 0x39u)
    {
      if (v31 == 58)
      {
        v35 = v29 == 2;
        v34 = 58;
        if (v28 == 58)
        {
          goto LABEL_135;
        }
      }

      else if (v31 == 59)
      {
        v35 = v29 == 2;
        v34 = 59;
        if (v28 == 59)
        {
LABEL_135:
          v29 = v32 + 1;
          goto LABEL_136;
        }
      }

      else
      {
        v29 = 0;
        if (v31 != 63)
        {
          goto LABEL_136;
        }

        v35 = v32 == 2;
        v34 = 63;
        if (v28 == 63)
        {
          goto LABEL_135;
        }
      }
    }

    else if (v31 == 33)
    {
      v35 = v29 == 2;
      v34 = 33;
      if (v28 == 33)
      {
        goto LABEL_135;
      }
    }

    else if (v31 == 44)
    {
      v35 = v29 == 2;
      v34 = 44;
      if (v28 == 44)
      {
        goto LABEL_135;
      }
    }

    else
    {
      v29 = 0;
      if (v31 != 46)
      {
        goto LABEL_136;
      }

      v35 = v32 == 2;
      v34 = 46;
      if (v28 == 46)
      {
        goto LABEL_135;
      }
    }

    v38 = v35 << 18;
    v29 = 1;
    if (v38)
    {
      goto LABEL_142;
    }

LABEL_136:
    ++v30;
    v28 = v34;
    if (v27 <= v30)
    {
      v39 = 1;
      goto LABEL_143;
    }
  }

  if (*(a1 + 8) != 8 || v31 != 63 && v31 != 33)
  {
    v34 = 0;
    v29 = 0;
    goto LABEL_136;
  }

  if (v31 != 63 || v28 == 63)
  {
    v37 = (v29 == 2) << 18;
    if (v28 == 33)
    {
      result = 0;
    }

    else
    {
      v29 = 0;
      result = v37;
    }

    if (v31 == 33)
    {
      v34 = 33;
    }

    else
    {
      v29 = v32;
      v34 = v28;
    }

    if (v31 == 33)
    {
      v36 = result;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v29 = 0;
    v36 = (v32 == 2) << 18;
    v34 = 63;
  }

  ++v29;
  if (!v36)
  {
    goto LABEL_136;
  }

LABEL_142:
  v39 = 0;
LABEL_143:
  if (v29 != 2)
  {
    if (v39)
    {
      return result;
    }

    goto LABEL_150;
  }

  if (*(a1 + 1547) == *(v26 + v30 - 1))
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  if ((v40 & 1) == 0)
  {
LABEL_150:
    *(a1 + 1328) |= 0x40000uLL;
  }

  return result;
}

uint64_t ICcmpsft(const char *a1, int a2, uint64_t a3)
{
  if (ICget(a1, a2, a3) == 11)
  {
    return 11;
  }

  else
  {
    return 2;
  }
}

uint64_t IHbsearch(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 760);
  v4 = *(v3 + 104);
  v5 = *(v3 + 96);
  v6 = v5 >> 1;
  v7 = *a1;
  v8 = *(v3 + 96);
  while (1)
  {
    v9 = (v4 + 8 * v6);
    v10 = *v9;
    if (v7 >= v10)
    {
      break;
    }

LABEL_6:
    v8 = v6;
    v6 = (v6 + v2) >> 1;
    if (v6 == v2)
    {
      v21 = (v4 + 8 * v2);
      if (v21[2] != a1[2] || v21[1] != a1[1] || *v21 != v7)
      {
        return 0;
      }

      v22 = *(v21 + 2);
      v23 = v21[6];
      v24 = v22 & 0xFFFEFFFF | ((((v23 & 0x80) >> 7) & 1) << 16);
      *(v3 + 116) = v24;
      *(v3 + 120) = v23 & 0x7F;
      if (v5 != v2)
      {
        v25 = v2 + 1;
        if (v5 > v25)
        {
          v26 = v4 + 8 * v25;
          v27 = *(v26 + 4);
          v19 = *(v26 + 6);
          v20 = v27 - v24 + ((v19 & 0x80) << 9);
LABEL_20:
          *(v3 + 124) = v20;
          *(v3 + 128) = (v19 & 0x7F) - 1;
          return 1;
        }
      }

      goto LABEL_22;
    }
  }

  if (v7 > v10)
  {
    goto LABEL_4;
  }

  v11 = a1[1];
  v12 = v9[1];
  if (v11 < v12)
  {
    goto LABEL_6;
  }

  if (v11 > v12)
  {
    goto LABEL_4;
  }

  v13 = a1[2];
  v14 = v9[2];
  if (v13 < v14)
  {
    goto LABEL_6;
  }

  if (v13 > v14)
  {
LABEL_4:
    v2 = v6;
    v6 = v8;
    goto LABEL_6;
  }

  v15 = v9[6];
  v16 = *(v9 + 2) | ((((v15 & 0x80) >> 7) & 1) << 16);
  *(v3 + 116) = v16;
  *(v3 + 120) = v15 & 0x7F;
  if (v5 != v6)
  {
    if (v5 <= (v6 + 1))
    {
      return 1;
    }

    v17 = v4 + 8 * (v6 + 1);
    v18 = *(v17 + 4);
    v19 = *(v17 + 6);
    v20 = v18 - v16 + ((v19 & 0x80) << 9);
    goto LABEL_20;
  }

LABEL_22:
  *(v3 + 124) = 0xFFFF;
  return 1;
}

uint64_t IHcache(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v7 = *(a4 + 760);
  v14 = 0;
  SLfun(a1, 0, (a2 - 1), &v14 + 1, &v14);
  v8 = HIWORD(v14) | (a2 << 15);
  HIWORD(v14) = v8;
  LOWORD(v14) = v14;
  if (a3 == 1)
  {
    v11 = *(a4 + 8);
    if ((v11 & 0x3FFFF) == 0 && !*(a4 + 747))
    {
      v13 = *(v7 + 16);
      *(v13 + 2 * v14) = v8;
      *(v13 + 2 * v14 + 512) = (a2 >> 1) & 3 | HIWORD(v11);
      return 1;
    }
  }

  else if (a3 == 2)
  {
    v9 = *(v7 + 16);
    if (*(v9 + 2 * v14) == v8)
    {
      v10 = *(v9 + 2 * (v14 | 0x100u));
      if ((v10 & 3) == ((a2 >> 1) & 3))
      {
        *(a4 + 8) = (v10 << 16) & 0xFFFC0000;
        return 1;
      }
    }
  }

  return 0;
}

uint64_t IHclean(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 752);
  v4 = *a1;
  v5 = v4 == 121;
  v6 = (*(v3 + 4 * v4) >> 28) & 1;
  if (v5)
  {
    LOWORD(v6) = 1;
  }

  if (a2 >= 2)
  {
    v8 = 0;
    v9 = *(a3 + 8);
    v10 = 0x80000000;
    v11 = 0x80000000;
    do
    {
      if ((v9 & v11) != 0 || a1[v8] == 45)
      {
        if (v6)
        {
          LOWORD(v6) = 0;
        }

        else
        {
          LOWORD(v6) = 0;
          v9 &= ~(v10 | v11);
          *(a3 + 8) = v9;
        }

        v10 = v11;
      }

      v12 = a1[v8 + 1];
      v5 = v12 == 121;
      v13 = (*(v3 + 4 * v12) >> 28) & 1;
      if (v5)
      {
        v13 = 1;
      }

      if (v13)
      {
        LOWORD(v6) = 1;
      }

      ++v8;
      v11 >>= 1;
    }

    while (a2 - 2 >= v8);
    v7 = ~v10;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

  if (!v6)
  {
    *(a3 + 8) &= v7;
  }

  if (a2 > 31)
  {
    *(a3 + 12) &= -1 << (65 - a2);
  }

  else
  {
    *(a3 + 8) &= -1 << (33 - a2);
  }

  return 0;
}

uint64_t IHdecode(unsigned __int8 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  v107 = *MEMORY[0x1E69E9840];
  if (a2 >= 1)
  {
    v6 = *(a6 + 95);
    v7 = *(v6 + 116);
    v8 = *(v6 + 112) - v7;
    v9 = v8 + 1;
    if (v8 != -1)
    {
      v13 = 0;
      v103 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = *(v6 + 32);
      v24 = *(v6 + 40);
      v25 = *a6;
      v26 = *(v6 + 48);
      v27 = *(v6 + 56) + v7 - 1;
      v28 = *(v6 + 120);
      v100 = v25 - 5;
      v101 = v25;
      v96 = -a3;
      v95 = a3 + 2;
      v97 = a2;
      v98 = v27;
      v99 = v26;
LABEL_6:
      v29 = *(v27 + v21);
      if (*(v27 + v21))
      {
        v30 = 0;
        v31 = v26 + *(v23 + 2 * v29);
        v32 = *(v24 + v29);
        v102 = v32;
        while (*(v6 + 124) != v13 || *(v6 + 128) != v30)
        {
          if (v28 < 1)
          {
            v34 = *(v31 + v30);
          }

          else
          {
            v33 = v30 + v28;
            v28 = 0;
            v30 = v33 - 1;
            v34 = *(v31 + (v33 - 1));
            v19 = v34 & 0x3F;
          }

          if (v18 == 1)
          {
            if (v34 <= 0xE)
            {
              v106[v20] = 0;
              if (v25 != 4)
              {
                if (v25 == 3)
                {
                  LOWORD(v35) = v16;
                  if ((v34 & 0xE) == 4)
                  {
                    v22 = v16;
                    do
                    {
                      --v22;
                    }

                    while (v106[v22] != 32);
                    v106[v22] = 0;
                    *(v6 + 142) = v22;
                    LOWORD(v35) = v22;
                  }

                  if (v35 >= 1)
                  {
                    v35 = v35;
                    v36 = v106;
                    v37 = a1;
                    do
                    {
                      v39 = *v37++;
                      v38 = v39;
                      v41 = *v36++;
                      v40 = v41;
                      v14 = v38 > v41;
                      if (v38 > v41)
                      {
                        break;
                      }

                      if (v38 < v40)
                      {
                        goto LABEL_3;
                      }

                      --v35;
                    }

                    while (v35);
                    goto LABEL_84;
                  }

LABEL_63:
                  v14 = 0;
                }

                else
                {
                  if (v100 > 1)
                  {
                    break;
                  }

                  if (v16 < 1)
                  {
                    goto LABEL_63;
                  }

                  v51 = v16;
                  v52 = v106;
                  v53 = a1;
                  do
                  {
                    v55 = *v53++;
                    v54 = v55;
                    v57 = *v52++;
                    v56 = v57;
                    v14 = v54 > v57;
                    if (v54 > v57)
                    {
                      break;
                    }

                    if (v54 < v56)
                    {
                      goto LABEL_3;
                    }

                    --v51;
                  }

                  while (v51);
LABEL_84:
                  v25 = v101;
                  v32 = v102;
                }

LABEL_85:
                if (v34 != 8)
                {
                  if (v34 < 3)
                  {
                    if ((v14 & 1) == 0)
                    {
                      if (v34 == 1)
                      {
                        *(v6 + 130) = 1;
                      }

                      else
                      {
                        *(v6 + 132) = 1;
                      }
                    }

                    v18 = 0;
                    if (v16 >= 63)
                    {
                      v19 = 63;
                    }

                    else
                    {
                      v19 = v16;
                    }
                  }

                  else
                  {
                    v18 = 2;
                    if (v34 - 9 >= 2)
                    {
                      v17 = 4;
                    }

                    else
                    {
                      v17 = 2;
                    }

                    *(v6 + 136) = 0;
                    if ((v34 & 0xE) == 4)
                    {
                      if ((v14 & 1) == 0)
                      {
                        v85 = a1;
                        v87 = a2;
                        v91 = a5;
                        v93 = a6;
                        v104 = a4;
                        v89 = a3;
                        v81 = v13;
                        v83 = v9;
                        v79 = v21;
                        v75 = v15;
                        v77 = v17;
                        v73 = v23;
                        strcpy((v6 + 144), &v106[v22 + 1]);
                        v25 = v101;
                        v32 = v102;
                        v23 = v73;
                        v15 = v75;
                        v17 = v77;
                        v21 = v79;
                        v13 = v81;
                        v9 = v83;
                        a1 = v85;
                        a2 = v87;
                        a3 = v89;
                        a4 = v104;
                        a5 = v91;
                        a6 = v93;
                      }

                      v106[*(v6 + 142)] = 32;
                      v18 = 2;
                    }
                  }

                  v103 = v34;
                  goto LABEL_110;
                }

LABEL_86:
                if ((v14 & 1) == 0 && v25 == 4 && a1[v16] != 45)
                {
                  *(v6 + 76) = 1 << (29 - v16);
                  *(v6 + 72) = 1;
                  *(v6 + 84) = v16;
                }

                v18 = 0;
                if (v16 >= 63)
                {
                  v19 = 63;
                }

                else
                {
                  v19 = v16;
                }

                v103 = 8;
                goto LABEL_110;
              }

              v14 = v34 != 8 && v15 != a3;
              if (v34 == 8)
              {
                if (v16 <= 0)
                {
                  goto LABEL_86;
                }

                v44 = v16;
                v45 = v106;
                v46 = a1;
                while (1)
                {
                  v48 = *v46++;
                  v47 = v48;
                  v49 = *v45++;
                  v50 = v47 >= v49;
                  if (v47 > v49)
                  {
                    break;
                  }

                  if (!v50)
                  {
                    goto LABEL_3;
                  }

                  if (!--v44)
                  {
                    goto LABEL_84;
                  }
                }
              }

              else
              {
                v58 = v106;
                v59 = v97;
                v60 = a1;
                while (1)
                {
                  v62 = *v60++;
                  v61 = v62;
                  v63 = *v58++;
                  v64 = v61 >= v63;
                  if (v61 > v63)
                  {
                    break;
                  }

                  if (!v64)
                  {
                    goto LABEL_3;
                  }

                  if (!--v59)
                  {
                    if (v16 == a2)
                    {
                      v65 = 1;
                    }

                    else
                    {
                      v65 = v14;
                    }

                    v25 = v101;
                    v32 = v102;
                    if (v65)
                    {
                      goto LABEL_85;
                    }

                    goto LABEL_3;
                  }
                }
              }

              v14 = 1;
              goto LABEL_84;
            }

            ++v16;
            v42 = v20++;
            v106[v42] = v34;
            v18 = 1;
          }

          else
          {
            if (!v18)
            {
              if (((v19 - (v34 & 0x3F)) & 0x8000) != 0)
              {
                break;
              }

              v20 = v19 - (v34 & 0x3F);
              v15 = v34 >> 7;
              v18 = 1;
              v16 = v20;
              goto LABEL_110;
            }

            if (v17 < 2)
            {
              v43 = *(v6 + 136) | v34;
              *(v6 + 136) = v43;
              if (!v14 && v103 == 3)
              {
                *(v6 + 86) = 1;
                *(v6 + 88) = v43;
                goto LABEL_80;
              }

              if (v14 || v103 != 6)
              {
                if (v14 || v103 != 7)
                {
                  if (!v14 && v103 == 9 && v25 == 5 || !v14 && v103 == 10 && v25 == 6)
                  {
                    *(v6 + 140) = v43;
                    *(v6 + 142) = v16;
                  }

                  else if (v14 || v103 != 4)
                  {
                    if (!v14 && v103 == 5)
                    {
                      v67 = *(v6 + 142);
                      v32 = v102;
                      if (v96 != (-2 - v67) >> 1 && v95 + (v67 >> 1) != a4)
                      {
                        v71 = (*(v6 + 4) >> 1) - 1;
                        *(a6 + 747) = 1;
                        v68 = (a3 + ((131070 - v67) >> 1));
                        v69 = v68 & ~(v68 >> 31);
                        v72 = v43 >> (v68 & ~(v68 >> 31));
                        v86 = a1;
                        v88 = a2;
                        v90 = a3;
                        v70 = a4;
                        v92 = a5;
                        v94 = a6;
                        v82 = v13;
                        v84 = v9;
                        v80 = v21;
                        v76 = v15;
                        v78 = v17;
                        v74 = v23;
                        __strncpy_chk();
                        v105[v69] = 0;
                        __strcat_chk();
                        *(v6 + 142);
                        __strncat_chk();
                        __strcpy_chk();
                        v25 = v101;
                        v32 = v102;
                        v23 = v74;
                        v15 = v76;
                        v17 = v78;
                        v21 = v80;
                        v13 = v82;
                        v9 = v84;
                        a1 = v86;
                        a2 = v88;
                        a3 = v90;
                        a4 = v70;
                        a5 = v92;
                        a6 = v94;
                        *(v94 + 4) = v72;
                      }
                    }
                  }

                  else
                  {
                    v66 = *(v6 + 142);
                    if (v96 != (-2 - v66) >> 1 && v95 + (v66 >> 1) != a4)
                    {
                      result = 2;
                      goto LABEL_4;
                    }
                  }

                  goto LABEL_80;
                }

                if (*(v6 + 24) != 104)
                {
LABEL_80:
                  v18 = 0;
                  *(v6 + 136) = 0;
                  if (v16 >= 63)
                  {
                    v19 = 63;
                  }

                  else
                  {
                    v19 = v16;
                  }

                  goto LABEL_110;
                }
              }

              else if (*(v6 + 24) != 105)
              {
                goto LABEL_80;
              }

              *(a6 + 4) = v43;
              *(v6 + 92) = 1;
              goto LABEL_80;
            }

            *(v6 + 136) |= v34 << (8 * --v17);
          }

LABEL_110:
          if (v32 <= ++v30)
          {
            result = 0;
            v21 = (v21 + 1);
            v13 = v21;
            v27 = v98;
            v26 = v99;
            if (v9 > v21)
            {
              goto LABEL_6;
            }

            goto LABEL_4;
          }
        }
      }
    }
  }

LABEL_3:
  result = 0;
LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ScrambleAndFind(uint64_t a1, uint64_t a2, int a3, int a4, unsigned __int8 *a5, uint64_t a6)
{
  v8 = 0;
  v23 = *MEMORY[0x1E69E9840];
  v9 = *(a6 + 760);
  v10 = (*(v9 + 4) >> 1) - 1 + a3;
  v11 = a1 + v10 + 2;
  v12 = v10 - 2;
  v13 = 2;
  do
  {
    if (a4)
    {
      v14 = 2 * v13;
      a5[v8] = *(v11 - 1);
      v15 = (a1 + v10 - v13);
    }

    else
    {
      v14 = v8 + 4;
      a5[v8] = *(a1 + v12);
      v15 = v11;
    }

    a5[v14 - 3] = *v15;
    ++v13;
    v16 = *(v9 + 4);
    ++v11;
    --v12;
    v8 += 2;
  }

  while (v13 < (v16 >> 1) + 3);
  if (IHdecode(a5, v16, a3, a2, a1, a6) == 2)
  {
    v17 = (a3 + ((131070 - *(v9 + 142)) >> 1));
    if (((a3 + ((131070 - *(v9 + 142)) >> 1)) & 0x8000) != 0)
    {
      v18 = *(v9 + 136) << -(a3 + ((131070 - *(v9 + 142)) >> 1));
      *(v9 + 136) = v18;
      v17 = 0;
    }

    else
    {
      v18 = *(v9 + 136);
    }

    v20 = v18 >> v17;
    __strncpy_chk();
    v22[v17] = 0;
    __strcat_chk();
    *(v9 + 142);
    __strncat_chk();
    *a6 = 1;
    IHhyp(v22, a6);
    *(a6 + 747) = 1;
    __strcpy_chk();
    *(a6 + 16) = *(a6 + 8);
    *(a6 + 8) = v20;
    result = 2;
  }

  else
  {
    result = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IHgetmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 760);
  v7 = *(v6 + 4);
  v8 = malloc_type_calloc(1uLL, v7 + 3, 0x100004077774924uLL);
  *a3 = 3;
  v9 = *(v6 + 6);
  if (v9 < (a2 + 2 - *(v6 + 8)))
  {
    v10 = v9 - 1;
    v11 = (a1 + v9 + (v7 >> 1));
    do
    {
      v12 = v10 + 1;
      *(v6 + 130) = 0;
      v15 = *(v11 - 1);
      v16 = 0;
      if (IHbsearch(&v15, a3) && ScrambleAndFind(a1, a2, v12, 1, v8, a3) == 2)
      {
        break;
      }

      v16 = *v11;
      if (IHbsearch(&v15, a3))
      {
        if (ScrambleAndFind(a1, a2, v12, 0, v8, a3) == 2)
        {
          break;
        }
      }

      if (*(v6 + 130) != *(v6 + 132))
      {
        *(a3 + 8 + 4 * (v10 >> 5)) |= 1 << ~v10;
      }

      v13 = v10 + 2;
      ++v10;
      ++v11;
    }

    while (v13 < (a2 + 2 - *(v6 + 8)));
  }

  free(v8);
  return 1;
}

uint64_t IHhyp(const char *a1, unsigned __int16 *a2)
{
  v127 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 95);
  a2[374] = 0;
  *(a2 + 750) = 0;
  v4 = *a2;
  if (v4 == 2)
  {
    result = IHterm(a2);
    goto LABEL_11;
  }

  if (v4 != 1)
  {
    if (!*a2)
    {
      result = IHinit(a2);
      goto LABEL_11;
    }

LABEL_10:
    result = 8;
    goto LABEL_11;
  }

  *(a2 + 2) = 0;
  v6 = (a2 + 8);
  *(a2 + 1) = 0;
  v7 = *(a2 + 94);
  *(a2 + 3) = 0;
  v8 = a2 + 12;
  *(v3 + 92) = 0;
  *(a2 + 747) = 0;
  *(a2 + 340) = 0u;
  *(a2 + 348) = 0u;
  *(a2 + 356) = 0u;
  *(a2 + 364) = 0u;
  *(a2 + 744) = 0;
  memset(__b, 0, 67);
  v9 = strlen(a1);
  v10 = v9;
  v11 = v9;
  if (v9 < 3)
  {
    goto LABEL_6;
  }

  if (v9 >= 0x41)
  {
    *(a2 + 748) = 1;
    goto LABEL_10;
  }

  v104 = v9 - 3;
  v103 = (a2 + 4);
  __strcpy_chk();
  __strcpy_chk();
  v13 = v11 - 1;
  v112 = v11;
  v14 = SLcap(&v118, 0, v11, &v116, v7);
  v15 = 0;
  *(a2 + 4) = v116;
  v102 = v14;
  *(a2 + 746) = v14;
  do
  {
    v16 = *(&v118 + v15);
    if (*(&v118 + v15) > 0x2Eu)
    {
      if (v16 != 47)
      {
        if (v16 == 58)
        {
LABEL_27:
          result = 0;
          *(a2 + 749) |= 4u;
          goto LABEL_11;
        }

        goto LABEL_21;
      }
    }

    else if (v16 != 45)
    {
      if (v16 == 46)
      {
        goto LABEL_27;
      }

LABEL_21:
      v17 = v15 + 1;
      goto LABEL_22;
    }

    v17 = v15 + 1;
    if ((*(&v118 + v15 + 1) | 2) != 0x2F)
    {
      v8[v15 >> 5] |= 1 << ~v15;
    }

LABEL_22:
    *(&v118 + v15) = ((*(v7 + 4 * v16) >> 25) & 0x20) + v16;
    v15 = v17;
  }

  while (v17 != (v10 & 0x7F));
  v18 = 0;
  v19 = *(a2 + 745);
  v106 = v117;
  v107 = v11 - 1;
  if (v19 <= 8)
  {
    if (v19 != 3)
    {
      v20 = 0;
      if (v19 != 5)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_35;
  }

  if (v19 == 9)
  {
LABEL_35:
    *a2 = 5;
    *(v3 + 136) = 0xFFFF000000000000;
    __s = ((*(v7 + 4 * v118) >> 25) & 0x20) + v118;
    v124 = ((*(v7 + 4 * v119) >> 25) & 0x20) + v119;
    v125 = 0;
    if (IHbsearch(&__s, a2))
    {
      IHdecode(&v120, (v11 - 2), 0, 0, 0, a2);
      v23 = *(v3 + 142);
      v106 = v117;
      if (v23 == 0xFFFF)
      {
        v109 = 0;
        v25 = 0;
      }

      else
      {
        v24 = v23 + 2;
        v106 = &v117[v24];
        v25 = *(v3 + 140);
        v109 = v24;
      }
    }

    else
    {
      v109 = 0;
      v25 = 0;
      v106 = v117;
    }

    v125 = ((*(v7 + 4 * v120) >> 25) & 0x20) + v120;
    *(v3 + 142) = -1;
    if (!IHbsearch(&__s, a2) || (IHdecode(v121, v104, 0, 0, 0, a2), v26 = *(v3 + 142), v26 == 0xFFFF))
    {
      LOWORD(v13) = v11 - 1;
      v18 = v109;
    }

    else
    {
      v27 = v26 + 3;
      LOWORD(v13) = v11 - 1;
      v106 += v27;
      v25 = *(v3 + 140);
      v18 = v27;
    }

    v20 = v25 << 16;
    v19 = *(a2 + 745);
LABEL_46:
    v101 = v20;
    v22 = 0;
    if (v19 > 0xC || ((1 << v19) & 0x1328) == 0)
    {
LABEL_81:
      if (v18 <= v13)
      {
        v40 = v18;
        v41 = v18;
        do
        {
          *(&__s + v40 - v18) = *(&v118 + v41++);
          v40 = v41;
        }

        while (v41 <= v13);
      }

      else
      {
        v40 = v18;
      }

      *(&__s + v40 - v18) = 0;
      if (*(v3 + 24) == 105)
      {
        *&v42 = *(a2 + 3);
        v43 = vceqz_s32(*&v42);
        if ((v43.i32[0] & v43.i32[1] & 1) == 0)
        {
          result = 0;
          *(&v42 + 1) = *(a2 + 3);
          *(a2 + 749) |= 1u;
          *(a2 + 4) = v42;
          goto LABEL_11;
        }

        if ((*(a2 + 749) & 2) != 0)
        {
          goto LABEL_6;
        }
      }

      v100 = v18;
      v105 = v22;
      v108 = v13;
      v111 = v18;
      v44 = *(v3 + 4);
      v45 = (v44 >> 1) - 1;
      if (v44 >= 4)
      {
        memset(__b, 32, ((*(v3 + 4) >> 1) - 2) + 1);
      }

      v46 = strlen(&__s);
      if ((strlen(__b) + v46 + 2 * v45) > 63)
      {
        goto LABEL_10;
      }

      __strcat_chk();
      v47 = strlen(__b);
      if (v44 < 4)
      {
        v50 = v47;
        v49 = v108;
      }

      else
      {
        LOWORD(v48) = 0;
        v49 = v108;
        do
        {
          v50 = v47 + 1;
          __b[v47] = 32;
          v48 = (v48 + 1);
          ++v47;
        }

        while (v48 < v45);
      }

      __b[v50] = 0;
      v51 = v50 - 2 * v45;
      if (v51 <= 2)
      {
        v52 = v101;
        *v103 = v101;
        if (v112 - 1 == v49)
        {
LABEL_117:
          result = 0;
          *v6 = v52;
          goto LABEL_11;
        }

        v53 = *(a2 + 745);
        if (v53 == 3)
        {
          v57 = v49 + 1;
          v54 = v111;
          v55 = v105;
          if (*(&v118 + v57) == 39)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v54 = v111;
          v55 = v105;
          if (v53 == 5)
          {
            v56 = v121[v49 - 1];
            if (v56 == 121 || (*(v7 + 4 * v56) & 0x10000000) != 0)
            {
              LOBYTE(v57) = v49 + 1;
LABEL_114:
              v66 = v101 | (v55 >> v57);
              *v103 = v66;
              v52 = v66;
              if (*(v3 + 6) > 1u || !v54 && (v53 == 9 || v53 == 3))
              {
                v52 = v66 & 0x7FFFFFFF;
                *v103 = v66 & 0x7FFFFFFF;
              }

              goto LABEL_117;
            }
          }
        }

        v57 = v49 + 1;
        if ((v49 & 0x8000) == 0 && *(&v118 + v57) != 45)
        {
          v103[v49 >> 5] |= 1 << ~v49;
          v101 = *v103;
        }

        goto LABEL_114;
      }

      v98 = v49;
      v58 = strlen(v106);
      if (v58 >= 11)
      {
        v59 = v49;
        v60 = v51;
        v51 = v58;
        v61 = IHcache(v106, v58, 2, a2);
        v58 = v51;
        LOWORD(v51) = v60;
        v49 = v59;
        if (v61)
        {
          *(v3 + 72) = 0;
          *(v3 + 76) = 0;
          *(v3 + 136) = 0;
          goto LABEL_144;
        }
      }

      v97 = v58;
      v62 = IHgetmap(__b, v51, a2);
      *(v3 + 86) = 0;
      *(v3 + 92) = 0;
      if (!v62)
      {
        goto LABEL_144;
      }

      *(v3 + 72) = 0;
      *a2 = 4;
      *(v3 + 136) = 0;
      v63 = v106[1];
      v64 = *(v7 + 4 * v63);
      v113 = ((*(v7 + 4 * *v106) >> 25) & 0x20) + *v106;
      v114 = ((v64 >> 25) & 0x20) + v63;
      v115 = 0;
      if (IHbsearch(&v113, a2))
      {
        IHdecode(v106 + 2, (v97 - 2), (*(v7 + 4 * *v106) >> 30) & 1, 0, 0, a2);
        v65 = *(v3 + 72) != 0;
      }

      else
      {
        v65 = 0;
      }

      v115 = ((*(v7 + 4 * v106[2]) >> 25) & 0x20) + v106[2];
      *(v3 + 72) = 0;
      if (IHbsearch(&v113, a2))
      {
        IHdecode(v106 + 3, (v97 - 3), (*(v7 + 4 * *v106) >> 30) & 1, 0, 0, a2);
        if (*(v3 + 86))
        {
          *(v3 + 72) = 0;
LABEL_126:
          v67 = 3;
LABEL_127:
          v68 = *(a2 + 745);
          v49 = v108;
          if (v68 <= 0xD && ((1 << v68) & 0x2CC0) != 0 && !*(a2 + 747) && !*v8 && (v68 != 6 || (*(v7 + 4 * *v106) & 0x40000000) != 0))
          {
            if (*(v3 + 72) && IsValidRMCC(&v106[v67 + *(v3 + 84)], a2))
            {
              v69 = *v103 & ~(2 * *(v3 + 76));
              *v103 = v69;
              v70 = v69 & ~(*(v3 + 76) >> 1);
              *v103 = v70;
              *v103 = v70 | *(v3 + 76);
            }

            else
            {
              *(v3 + 76) = 0;
            }
          }

          if (*(v3 + 86))
          {
            *v103 ^= *(v3 + 88);
          }

          if (v97 >= 11)
          {
            IHcache(v106, v112, 1, a2);
          }

LABEL_144:
          v71 = v101;
          v72 = v98;
          if (*(a2 + 745) != 1 && !*(v3 + 86))
          {
            IHclean(&__b[v45], v51, a2);
            v72 = v98;
            v71 = v101;
            if (!*(a2 + 747) && !*v8 && ((*(v7 + 4 * *v106) & 0x40000000) != 0 || *(a2 + 745) != 6))
            {
              v71 = v101;
              *v103 |= *(v3 + 76);
            }
          }

          v73 = (*v103 >> v100) | v71;
          *v103 = v73;
          v74 = v111;
          if (v111)
          {
            v75 = v102;
            v76 = v112;
            v77 = v105;
          }

          else
          {
            v78 = *(a2 + 745);
            v75 = v102;
            v76 = v112;
            v77 = v105;
            if (v78 == 9 || v78 == 3)
            {
              v73 &= ~0x80000000;
              *v103 = v73;
            }
          }

          v79 = v76 - 1;
          if (v79 == v72)
          {
LABEL_166:
            if (!*(a2 + 747) && !*(v3 + 92))
            {
              v83 = *(a2 + 3);
              *(a2 + 4) = v73;
              *(a2 + 5) = v83;
              if ((*(v7 + 4 * __s) & 0x10000000) != 0)
              {
                *v6 = v73 & 0x7FFFFFFF;
              }

              if ((*(v7 + 4 * *(&__s + v79)) & 0x10000000) != 0)
              {
                v6[(v76 - 1) >> 5] &= ~(1 << ~v79);
              }

              if (v112 < 2)
              {
                goto LABEL_198;
              }

              v84 = v76;
              v85 = 1;
              v86 = 1;
              do
              {
                v87 = v6[v85 >> 5];
                v88 = 1 << ~v86;
                if ((v87 & v88) != 0)
                {
                  if (((v6[(v85 + 1) >> 5] >> ~++v86) & 1) != 0 && (*(v7 + 4 * *(&__s + v86)) & 0x10000000) != 0)
                  {
                    v6[v85 >> 5] = v87 & ~v88;
                  }

                  v74 = v111;
                }

                else
                {
                  ++v86;
                }

                ++v85;
              }

              while (v86 != v84);
            }

            if (v112 >= 2)
            {
              v89 = 0;
              v90 = 0;
              do
              {
                v91 = *(&v118 + v90);
                if (v91 == 47 || v91 == 45)
                {
                  v92 = *(&v118 + v89 + 1);
                  if ((v92 | 2) != 0x2F)
                  {
                    if (v79 <= v72 || v90 > v49 && *(a2 + 745) != 5 || (v93 = *(a2 + 745), v90 < v49) && v93 == 3 || v93 == 5 && v92 != 121 && (*(v7 + 4 * v92) & 0x10000000) == 0)
                    {
                      v94 = 1 << ~v89;
                      v103[v90 >> 5] |= v94;
                      v6[v90 >> 5] |= v94;
                    }
                  }
                }

                v89 = ++v90;
              }

              while (v79 > v90);
            }

LABEL_198:
            v95 = *(a2 + 745);
            if (v74 == 2 && v95 == 5)
            {
              *v103 &= ~0x20000000u;
              *v6 &= ~0x20000000u;
            }

            else if (v95 == 16 && (*v6 != *v103 || *(a2 + 5) != *(a2 + 3)))
            {
              *(a2 + 747) = 1;
              if (!*(a2 + 680))
              {
                __strcpy_chk();
              }
            }

            __strcpy_chk();
            v96 = strlen(&v118);
            SLrecap(&v118, v96, v75, &v116, v75, v7);
            __strcpy_chk();
            goto LABEL_6;
          }

          v80 = *(a2 + 745);
          if (v80 == 3)
          {
            v82 = v49 + 1;
            if (*(&v118 + v82) == 39)
            {
              goto LABEL_165;
            }
          }

          else if (v80 == 5)
          {
            v81 = v121[v49 - 1];
            if (v81 == 121 || (*(v7 + 4 * v81) & 0x10000000) != 0)
            {
              LOBYTE(v82) = v72 + 1;
LABEL_165:
              v73 |= v77 >> v82;
              *v103 = v73;
              goto LABEL_166;
            }
          }

          v82 = v49 + 1;
          if (*(&v118 + v82) != 45)
          {
            v103[v49 >> 5] |= 1 << ~v72;
            v73 = *v103;
          }

          goto LABEL_165;
        }

        if (*(v3 + 72) != 0 || !v65)
        {
          goto LABEL_126;
        }
      }

      else if (!v65)
      {
        goto LABEL_126;
      }

      *(v3 + 72) = 1;
      *(v3 + 76) *= 2;
      v67 = 2;
      goto LABEL_127;
    }

    v110 = v18;
    v28 = 0;
    v29 = 0;
    *a2 = 6;
    *(v3 + 136) = 0xFFFF000000000000;
    v99 = v19 & 0xFE;
    v30 = v10 & 0x7F;
    if (v30 >= 64)
    {
      v31 = 64;
    }

    else
    {
      v31 = v30;
    }

    do
    {
      *(&__s + v29++) = *(&v118 + v31 + ~v28);
      v28 = v29;
    }

    while (v31 > v29);
    *(&__s + v29) = 0;
    v32 = *(v7 + 4 * v124);
    v113 = ((*(v7 + 4 * __s) >> 25) & 0x20) + __s;
    v114 = ((v32 >> 25) & 0x20) + v124;
    v115 = 0;
    if (!IHbsearch(&v113, a2) || (IHdecode(&v125, (v11 - 2), 0, 0, 0, a2), v33 = *(v3 + 142), v33 == -1))
    {
      v35 = 0;
      LOWORD(v13) = v107;
    }

    else
    {
      v34 = *(a2 + 745);
      if (v34 == 9)
      {
        LOWORD(v13) = v11 - 1;
        if (*(&v118 + v30 - *(v3 + 142) - 3) == 115)
        {
          goto LABEL_65;
        }

        goto LABEL_61;
      }

      LOWORD(v13) = v11 - 1;
      if (v34 != 8)
      {
LABEL_62:
        if (v99 != 8 || IsValidRMCC(v117, a2))
        {
          v35 = *(v3 + 140);
          v117[(v112 - v33 - 3) + 1] = 0;
          LOWORD(v13) = v112 - v33 - 3;
          goto LABEL_66;
        }

LABEL_65:
        v35 = 0;
        goto LABEL_66;
      }

      v35 = 0;
      v36 = *(&v118 + v30 - *(v3 + 142) - 3);
      if (v36 != 98 && v36 != 103)
      {
LABEL_61:
        if ((*(v7 + 4 * v117[(v30 - 1)]) & 0x40000000) != 0)
        {
          goto LABEL_65;
        }

        goto LABEL_62;
      }
    }

LABEL_66:
    v115 = ((*(v7 + 4 * v125) >> 25) & 0x20) + v125;
    *(v3 + 142) = -1;
    if (!IHbsearch(&v113, a2))
    {
      goto LABEL_80;
    }

    IHdecode(v126, v104, 0, 0, 0, a2);
    v37 = *(v3 + 142);
    if (v37 == -1)
    {
      goto LABEL_80;
    }

    v38 = *(a2 + 745);
    if (v38 != 8 || v112 == 3)
    {
      if (v38 != 9 || v112 == 3)
      {
LABEL_77:
        if (v99 != 8 || IsValidRMCC(&v118, a2))
        {
          v35 = *(v3 + 140);
          v117[(v112 - v37 - 4) + 1] = 0;
          LOWORD(v13) = v112 - v37 - 4;
        }

        goto LABEL_80;
      }

      if (*(&v118 + v30 - *(v3 + 142) - 4) == 115)
      {
LABEL_80:
        v22 = v35 << 16;
        v18 = v110;
        goto LABEL_81;
      }
    }

    else
    {
      v39 = *(&v118 + v30 - *(v3 + 142) - 4);
      if (v39 == 98 || v39 == 103)
      {
        goto LABEL_80;
      }
    }

    if ((*(v7 + 4 * v117[(v30 - 1)]) & 0x40000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_80;
  }

  v20 = 0;
  if (v19 != 16)
  {
    goto LABEL_46;
  }

  if (*(v3 + 24) != 105 || (v21 = (v11 - 2), *(&v118 + v21) != 39))
  {
    v101 = 0;
    v18 = 0;
    v22 = 0;
    v106 = v117;
    goto LABEL_81;
  }

  v106 = v117;
  if (*(&v118 + v13) != 115)
  {
    v101 = 0;
    v18 = 0;
    v22 = 0;
    goto LABEL_81;
  }

  v117[v21] = 0;
  *(&v118 + v21) = 0;
  if ((v11 - 2) >= 3u)
  {
    LOWORD(v112) = v11 - 2;
    v101 = 0;
    v18 = 0;
    v22 = 0;
    LOWORD(v13) = v104;
    goto LABEL_81;
  }

LABEL_6:
  result = 0;
LABEL_11:
  *(a2 + 1) = result;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IsValidRMCC(const char *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 39)
  {
    return 0;
  }

  v4 = *(a2 + 760);
  v5 = *(a2 + 752);
  v6 = strlen(a1);
  if (v6 < 2 || (*(v5 + 4 * a1[v6 - 1]) & 0x40000000) != 0)
  {
    return 0;
  }

  v7 = *(v4 + 94) - 1;
  v8 = a1[1];
  if (v8)
  {
    v9 = 1;
    LOWORD(v10) = v2;
    do
    {
      v10 = ((v10 & 0x7F) << 8) + (v10 >> 7) + 2 * (v10 >> 7) + 16 * (v10 >> 7) + v8;
      if (v10 > 0x7FECu)
      {
        v10 -= 32749;
      }

      v2 ^= v10;
      v8 = a1[++v9];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v10) = v2;
  }

  v11 = v2 & v7;
  if ((v2 & v7) == 0)
  {
    return 0;
  }

  v12 = *(v4 + 64);
  v13 = *(v12 + (v2 & v7));
  if (v13 == v10)
  {
    return 0;
  }

  v15 = 0;
  v16 = 3 - (v10 & 0x7F);
  do
  {
    result = 1;
    if (!v13)
    {
      break;
    }

    if (v15 > 0x32)
    {
      break;
    }

    result = 0;
    ++v15;
    v16 += 2 * (v10 & 0x7F);
    v11 = (v11 + v16) & v7;
    v13 = *(v12 + v11);
  }

  while (v13 != v10);
  return result;
}

uint64_t IHinit(uint64_t a1)
{
  if (!*(a1 + 551))
  {
    goto LABEL_7;
  }

  if (*(a1 + 760))
  {
    return 0;
  }

  v3 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10300403ED6EF0DuLL);
  *(a1 + 760) = v3;
  if (!v3)
  {
    *(a1 + 750) |= 4u;
    return 8;
  }

  v3[26] = 0;
  *(v3 + 11) = 0u;
  *(v3 + 12) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  if (IHintget(a1))
  {
    IHterm(a1);
LABEL_7:
    *(a1 + 748) |= 2u;
    return 8;
  }

  v4 = SLLngToA(*(a1 + 745));
  result = 0;
  *(a1 + 752) = v4;
  return result;
}

uint64_t IHintchk(uint64_t a1, unsigned __int8 a2)
{
  v2 = __rev16(*(a1 + 384));
  v4 = *a1 == 67 && v2 == 7 && *(a1 + 387) == a2;
  v5 = __rev16(*(a1 + 388));
  if (v4 && v5 == 3)
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

uint64_t CloseRamFile(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (SLClose(a1) == 8)
  {
    *(a2 + 750) |= 1u;
    return 8;
  }

  return a3;
}

uint64_t IHintget(uint64_t a1)
{
  v2 = *(a1 + 760);
  *v30 = 0;
  if (SLOpen(a1 + 40, a1 + 551, &v30[1], 0) == 8)
  {
    v3 = (a1 + 750);
    v4 = 2;
LABEL_31:
    *v3 |= v4;
    return 8;
  }

  v5 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  if (SLFRead(v30[1], 1024, v5, v30))
  {
    free(v6);
    v7 = *(a1 + 750) | 8;
LABEL_26:
    *(a1 + 750) = v7;
    goto LABEL_27;
  }

  if (__rev16(*(v6 + 390)) - 1 >= 2 || IHintchk(v6, *(a1 + 745)) == 8)
  {
    *(a1 + 750) |= 0x10u;
    v8 = v6;
LABEL_9:
    free(v8);
LABEL_27:
    v26 = SLClose(v30[1]) == 8;
    goto LABEL_28;
  }

  *(v2 + 96) = bswap32(*(v6 + 732)) >> 16;
  *(v2 + 6) = bswap32(*(v6 + 714)) >> 16;
  *(v2 + 8) = bswap32(*(v6 + 716)) >> 16;
  *(v2 + 4) = bswap32(*(v6 + 718)) >> 16;
  *(v2 + 94) = bswap32(*(v6 + 736)) >> 16;
  *(v2 + 24) = *(v6 + 713);
  v9 = *(v6 + 724);
  v10 = *(v6 + 725);
  v11 = *(v6 + 726);
  v12 = __rev16(v11);
  v13 = (bswap32(v11) >> 16) | 0x10000;
  v14 = __rev16(*(v6 + 728)) == 1 ? v13 : v12;
  *(v2 + 112) = v14;
  free(v6);
  v15 = malloc_type_calloc(1uLL, 0x202uLL, 0x1000040BDFB0063uLL);
  *(v2 + 32) = v15;
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = malloc_type_calloc(1uLL, 0x101uLL, 0xAB47FB6BuLL);
  *(v2 + 40) = v16;
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = (v9 << 8) | v10;
  v18 = malloc_type_calloc(1uLL, v17 + 1, 0x6CBBBC09uLL);
  *(v2 + 48) = v18;
  if (!v18)
  {
    goto LABEL_25;
  }

  if (*(v2 + 94))
  {
    v19 = malloc_type_calloc(1uLL, *(v2 + 94), 0xB8D1045uLL);
    *(v2 + 64) = v19;
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  v20 = malloc_type_calloc(1uLL, 8 * *(v2 + 96), 0x1000040662E9A8EuLL);
  *(v2 + 104) = v20;
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = *(v2 + 112);
  if (v21)
  {
    v22 = malloc_type_calloc(v21, 1uLL, 0xD2EA6766uLL);
    *(v2 + 56) = v22;
    if (!v22)
    {
      goto LABEL_25;
    }
  }

  v23 = malloc_type_calloc(1uLL, 0x400uLL, 0x1000040BDFB0063uLL);
  *(v2 + 16) = v23;
  if (!v23 || (v24 = malloc_type_calloc(1uLL, 0x201uLL, 0x1000040BDFB0063uLL)) == 0)
  {
LABEL_25:
    v7 = *(a1 + 750) | 4;
    goto LABEL_26;
  }

  v25 = v24;
  if (ReadCodes(v30[1], (v2 + 32), v24, v17, a1))
  {
    v8 = v25;
    goto LABEL_9;
  }

  Data = ReadData(v30[1], v2 + 32, *(v2 + 112), v25, a1);
  free(v25);
  v29 = SLClose(v30[1]);
  v26 = v29 == 8;
  if (Data)
  {
LABEL_28:
    if (!v26)
    {
      return 8;
    }

    goto LABEL_30;
  }

  if (v29 == 8)
  {
LABEL_30:
    v3 = (a1 + 750);
    v4 = 1;
    goto LABEL_31;
  }

  return 0;
}

uint64_t ReadCodes(unsigned int a1, uint64_t *a2, char *a3, int a4, uint64_t a5)
{
  v14 = 0;
  v9 = *(a5 + 760);
  if (SLFRead(a1, a4, a2[2], &v14))
  {
    goto LABEL_6;
  }

  if (SLFRead(a1, 512, a3, &v14))
  {
    goto LABEL_6;
  }

  v10 = 0;
  v11 = *a2;
  v12 = a3 + 1;
  do
  {
    *(v11 + v10) = *(v12 - 1);
    v12 += 2;
    v10 += 2;
  }

  while (v10 != 512);
  if (SLFRead(a1, 256, a2[1], &v14))
  {
    goto LABEL_6;
  }

  if (!*(v9 + 94))
  {
    return 0;
  }

  result = SLFRead(a1, *(v9 + 94), a2[4], &v14);
  if (result)
  {
LABEL_6:
    *(a5 + 750) |= 8u;
    return 8;
  }

  return result;
}

uint64_t ReadData(unsigned int a1, uint64_t a2, int a3, _BYTE *a4, uint64_t a5)
{
  v9 = *(a5 + 760);
  v17 = 0;
  if (*(v9 + 96))
  {
    v11 = 0;
    v12 = 0;
    while (!SLFRead(a1, 3, (*(v9 + 104) + v11), &v17))
    {
      ++v12;
      v11 += 8;
      if (v12 >= *(v9 + 96))
      {
        if (!*(v9 + 96))
        {
          goto LABEL_9;
        }

        v13 = 0;
        v14 = 0;
        while (!SLFRead(a1, 3, a4, &v17))
        {
          v15 = *(v9 + 104) + v13;
          *(v15 + 4) = bswap32(*a4) >> 16;
          *(v15 + 6) = a4[2];
          ++v14;
          v13 += 8;
          if (v14 >= *(v9 + 96))
          {
            goto LABEL_9;
          }
        }

        goto LABEL_11;
      }
    }

    goto LABEL_11;
  }

LABEL_9:
  if (a3 && SLHRead(a1, a3, *(a2 + 24), &v17))
  {
LABEL_11:
    *(a5 + 750) |= 8u;
    return 8;
  }

  return 0;
}

uint64_t IHterm(uint64_t a1)
{
  v1 = *(a1 + 760);
  if (v1)
  {
    v3 = v1[2];
    if (v3)
    {
      free(v3);
      v1[2] = 0;
    }

    v4 = v1[4];
    if (v4)
    {
      free(v4);
      v1[4] = 0;
    }

    v5 = v1[5];
    if (v5)
    {
      free(v5);
      v1[5] = 0;
    }

    v6 = v1[6];
    if (v6)
    {
      free(v6);
      v1[6] = 0;
    }

    v7 = v1[8];
    if (v7)
    {
      free(v7);
      v1[8] = 0;
    }

    v8 = v1[7];
    if (v8)
    {
      free(v8);
      v1[7] = 0;
    }

    v9 = v1[13];
    if (v9)
    {
      free(v9);
      v1[13] = 0;
    }

    free(*(a1 + 760));
    *(a1 + 760) = 0;
  }

  return 0;
}

uint64_t PDadd(uint64_t a1, char *a2, int a3, int a4, char *a5, int a6, uint64_t *a7, uint64_t a8, unsigned __int8 a9, unsigned __int16 a10, uint64_t *a11)
{
  v56 = a6;
  if (*(a1 + 2112) > 0xB41u)
  {
    return 5107;
  }

  v20 = *(a1 + 2168);
  v52 = SLLngToA(*(a1 + 2069));
  v21 = strlen(a2);
  v22 = v21;
  v23 = 0;
  if (a4 && a6)
  {
    if (*a5)
    {
      v23 = 0;
    }

    else
    {
      LOBYTE(a4) = 0;
      v23 = 5158;
    }
  }

  if (!v21)
  {
    return 0;
  }

  v51 = v23;
  v24 = *(a1 + 2106);
  if (v24 >= 0x3E8)
  {
    if (*(a1 + 2104) >= 6u)
    {
      v49 = 1;
      v50 = 1;
      goto LABEL_18;
    }
  }

  else if (v24 >= 0x64 && *(a1 + 2104) > 5u)
  {
    v49 = 0;
    v50 = 1;
    goto LABEL_18;
  }

  if (PDexpand(a1))
  {
    return 5107;
  }

  v49 = 1;
  v50 = 0;
LABEL_18:
  v55 = 0;
  v54 = 0;
  v53 = 0;
  PDsearch(a1, a2, &v55, &v54, 2, 0, 0);
  v25 = v54;
  if (v54 == 0xFFFF)
  {
    while (!PDexpand(a1))
    {
      PDsearch(a1, a2, &v55, &v54, 2, 0, 0);
      v25 = v54;
      if (v54 != 0xFFFF)
      {
        v50 = 0;
        goto LABEL_22;
      }
    }

    return 5107;
  }

LABEL_22:
  *(*(v20 + 32) + 2 * v25) = *(v20 + 24);
  v26 = *(v20 + 48);
  v27 = *(v20 + 58);
  v28 = *(v20 + 56);
  if (!v26[20 * v27 + 18])
  {
    v29 = *(v20 + 56);
    LOWORD(v28) = *(v20 + 58);
    goto LABEL_36;
  }

  if (*(v20 + 56))
  {
    v27 = 0;
    while (v26[20 * v27 + 18])
    {
      if (v28 <= ++v27)
      {
        goto LABEL_32;
      }
    }

    *(v20 + 58) = v27;
    v30 = v27;
  }

  else
  {
    v30 = 0;
  }

  if (v28 == v30)
  {
LABEL_32:
    if (v28 <= 0x8CC)
    {
      v31 = malloc_type_realloc(v26, 20 * v28 + 20480, 0x1000040A86A77D5uLL);
      *(v20 + 48) = v31;
      if (v31)
      {
        bzero(&v31[20 * v28], 0x5000uLL);
        *(v20 + 58) = v28;
        v29 = *(v20 + 56) + 1024;
        *(v20 + 56) = v29;
        v27 = v28;
        goto LABEL_36;
      }
    }

    return 5107;
  }

  v29 = v28;
  LOWORD(v28) = v27;
  v27 = v30;
LABEL_36:
  if ((v28 + 1) < v29)
  {
    *(v20 + 58) = v28 + 1;
  }

  v32 = *(v20 + 40);
  v33 = *(v20 + 24);
  *(v20 + 24) = v33 + 1;
  *(v32 + v33) = v27 / 0xFFu;
  *(*(v20 + 40) + *(v20 + 24)) = v27 + v27 / 0xFFu;
  v34 = *(v20 + 48);
  v35 = v27;
  v36 = v34 + 20 * v27;
  *(v36 + 18) = 1;
  if (a3)
  {
    *(v36 + 19) = 1;
    v37 = *(*pMCPbuff + 8 * a10);
    ++*(v37 + 2094);
    v38 = 3;
  }

  else
  {
    v38 = 2;
  }

  if (a4)
  {
    *(v36 + 19) = v38;
  }

  if (*(a1 + 2092))
  {
    v39 = v34 + 20 * v35;
    v40 = *a11;
    *(v39 + 8) = *(a11 + 2);
    *v39 = v40;
  }

  v48 = v35;
  ++*(v20 + 24);
  SLrecap(a2, v22, a9, a8, a9, v52);
  v41 = PDhypins(a2, a7, *(*(*pMCPbuff + 8 * a10) + 2068));
  if (a4)
  {
    result = make_alt_entry(a5, &v53, &v56, a10);
    if (result == 8)
    {
      return result;
    }

    v42 = *(v20 + 48) + 20 * v48;
    *(v42 + 12) = v53;
    *(v42 + 16) = v56;
  }

  v43 = *(v20 + 40);
  v44 = *(v20 + 24);
  *(v20 + 24) = v44 + 1;
  *(v43 + v44) = v41;
  strncpy((*(v20 + 40) + *(v20 + 24)), a2, v41);
  v45 = *(v20 + 24) + v41;
  *(v20 + 24) = v45;
  v46 = *(v20 + 22) + 1;
  *(v20 + 22) = v46;
  *(v20 + 20) = v46;
  *(a1 + 2104) = *(v20 + 12) - v46;
  *(a1 + 2106) = *(v20 + 6) - v45;
  if (v49)
  {
    v47 = v51;
  }

  else
  {
    v47 = 5152;
  }

  if (v50)
  {
    return v47;
  }

  else
  {
    return 5156;
  }
}

uint64_t PDexpand(uint64_t a1)
{
  v2 = *(a1 + 2152);
  v53 = *(a1 + 2144);
  v3 = SLLngToA(*(a1 + 2069));
  v4 = *(a1 + 2064);
  if ((v4 - 86) >= 9)
  {
    v5 = v4 + 10;
  }

  else
  {
    v5 = 95;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 10;
  }

  if (v6 > 0x5Fu)
  {
    return 8;
  }

  v7 = v3;
  v55 = 0;
  size = 0;
  v8 = v6 << 10;
  v54 = 0;
  CalculateSize(&size + 1, &size, &v54, &v55 + 1, &v55, v8);
  v9 = *(a1 + 2168);
  v10 = size;
  v11 = malloc_type_calloc(1uLL, HIWORD(size), 0x100004077774924uLL);
  *(v9 + 64) = v11;
  if (!v11)
  {
    return 8;
  }

  v12 = malloc_type_realloc(*(v9 + 40), v10, 0x100004077774924uLL);
  *(v9 + 40) = v12;
  if (!v12)
  {
    return 8;
  }

  v48 = v6;
  v49 = *(v9 + 16);
  InitializeMask(v9);
  if (HIWORD(v55))
  {
    v13 = 0;
    v14 = *(v9 + 64);
    do
    {
      *(v14 + 2 * v13++) = -1;
    }

    while (v13 < HIWORD(v55));
  }

  v15 = 0;
  v16 = 0;
  *v9 = 1;
  v50 = v2;
  while (1)
  {
    v17 = *(*(v9 + 32) + 2 * v15);
    if (v17 != 0xFFFF)
    {
      v51 = *(*(v9 + 32) + 2 * v15);
      v52 = v15;
      v18 = *(v9 + 40) + v17;
      v19 = *(v18 + 2);
      strncpy(v2, (v18 + 3), v19);
      if (v19)
      {
        v20 = v19;
        v21 = v53;
        v22 = v2;
        do
        {
          v23 = *v22++;
          *v21++ = ((*(v7 + 4 * v23) >> 25) & 0x20) + v23;
          --v20;
        }

        while (v20);
      }

      v53[v19] = 0;
      PDhypstrip(v53, (a1 + 2076), *(a1 + 2068));
      v24 = v9;
      v25 = *(v9 + 16);
      v26 = HIWORD(v55);
      v27 = *(a1 + 2168);
      v28 = *(v27 + 14);
      size_4 = 0;
      v29 = strlen(v53);
      SLfun(v53, 0, (v29 - 1), &size_4 + 1, &size_4);
      v30 = size_4;
      v31 = BYTE2(size_4);
      *(a1 + 2110) = 0;
      *(a1 + 2114) = -1;
      if (!v28)
      {
        v9 = v24;
LABEL_46:
        *(v9 + 16) = v49;
        return 8;
      }

      v32 = v30 & v25;
      if (v32 >= v26)
      {
        v33 = v26;
      }

      else
      {
        v33 = 0;
      }

      v34 = v32 - v33;
      v35 = 3 - v31;
      v36 = 2 * v31;
      v37 = *(v27 + 64);
      v38 = -1;
      v9 = v24;
      do
      {
        v39 = v34;
        while (1)
        {
          v35 += v36;
          v40 = (v39 + v35) & v25;
          if (v40 >= v26)
          {
            v41 = v26;
          }

          else
          {
            v41 = 0;
          }

          v34 = v40 - v41;
          LOWORD(size_4) = v40 - v41;
          if (v39 == (v40 - v41))
          {
            if (v40 == v41)
            {
              v34 = 1;
            }

            else
            {
              v34 = v39 - 1;
            }

            LOWORD(size_4) = v34;
          }

          LOWORD(v28) = v28 - 1;
          v42 = *(v37 + 2 * v39);
          if (v42 >= 0xFFFE)
          {
            break;
          }

          v39 = v34;
          if (!v28)
          {
            goto LABEL_42;
          }
        }

        if (v38 == 0xFFFF)
        {
          v38 = v39;
        }
      }

      while (v42 != 0xFFFF && v28 != 0);
LABEL_42:
      if (v38 == 0xFFFF)
      {
        goto LABEL_46;
      }

      v2 = v50;
      *(*(v24 + 64) + 2 * v38) = v51;
      ++v16;
      v15 = v52;
      if (*(a1 + 2112) <= v16)
      {
        break;
      }
    }

    ++v15;
  }

  free(*(v24 + 32));
  result = 0;
  *(v24 + 32) = *(v24 + 64);
  *(v24 + 64) = 0;
  *(v24 + 2) = HIWORD(size);
  *(v24 + 4) = HIWORD(v55);
  v45 = v55;
  *(v24 + 12) = v55;
  *(a1 + 2116) = v45;
  *(v24 + 14) = v54;
  v46 = size;
  *(v24 + 6) = size;
  *(v24 + 8) = v8;
  *(a1 + 2064) = v48;
  *(a1 + 2104) = v45 - *(v24 + 22);
  v47 = v46 - *(v24 + 24);
  *(a1 + 2106) = v47;
  *(a1 + 2108) = v47;
  return result;
}

uint64_t PDapp(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 8;
  }

  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  ++wPDMCPmtxCnt;
  if (bInitPDMtx)
  {
    if (bInitPDMtx != 1)
    {
        ;
      }
    }

    bInitPDMtx = 2;
    if (SLInitMutex("PD_MCP_MTX", &hPDMCPmtx))
    {
      goto LABEL_7;
    }

    bInitPDMtx = 0;
  }

  if (SLLockMutex(&hPDMCPmtx))
  {
LABEL_7:
    --wPDMCPmtxCnt;
    return 8;
  }

  if (a2 == 1 && !pdmcpsta)
  {
    if (PDinit())
    {
      goto LABEL_37;
    }

    LOWORD(v6) = 0;
    v7 = pMCPbuff;
    v8 = *(pMCPbuff + 24);
    *v8 = 0;
    goto LABEL_15;
  }

  v7 = pMCPbuff;
  if (a2 == 2 && !pMCPbuff)
  {
    if (*(a1 + 12) && *(a1 + 8) > 7)
    {
      goto LABEL_64;
    }

    v4 = 8;
    *(a1 + 8) = 8;
    v13 = 5051;
    goto LABEL_40;
  }

  if (a2 == 2)
  {
    v16 = *(a1 + 2);
    v17 = *(pMCPbuff + 24);
    if (v16 <= *v17)
    {
      v18 = *(pMCPbuff + 32);
      if (*(v18 + 2 * *(a1 + 2)) == 9090)
      {
        v19 = 1;
        while (1)
        {
          v20 = v19;
          if (*(*(pMCPbuff + 16) + 2 * v19) == 9090 && *(*(*pMCPbuff + 8 * v19) + 2160) == v16)
          {
            break;
          }

          ++v19;
          if (v20 > **(pMCPbuff + 8))
          {
            *(v18 + 2 * *(a1 + 2)) = 0;
            v21 = *v17;
            do
            {
              if (*(v18 + 2 * v21))
              {
                break;
              }

              *v17 = --v21;
            }

            while (v21);
            free(*(*(v7 + 40) + 8 * *(a1 + 2)));
            if (**(pMCPbuff + 24))
            {
              v4 = 0;
              goto LABEL_65;
            }

            PDterm();
            --wPDMCPmtxCnt;
            SLUnlockMutex(&hPDMCPmtx);
            if (wPDMCPmtxCnt)
            {
              return 0;
            }

            SLTermMutex(&hPDMCPmtx);
            v4 = 0;
            bInitPDMtx = 1;
            return v4;
          }
        }

        if (!*(a1 + 12) || *(a1 + 8) <= 7)
        {
          v4 = 8;
          *(a1 + 8) = 8;
          v13 = 5110;
          goto LABEL_40;
        }
      }

      else if (!*(a1 + 12) || *(a1 + 8) <= 7)
      {
        v4 = 8;
        *(a1 + 8) = 8;
        v13 = 5104;
        goto LABEL_40;
      }
    }

    else if (!*(a1 + 12) || *(a1 + 8) <= 7)
    {
      v4 = 8;
      *(a1 + 8) = 8;
      v13 = 5103;
      goto LABEL_40;
    }

    goto LABEL_64;
  }

  if (a2 == 1)
  {
    v8 = *(pMCPbuff + 24);
    v6 = *v8;
    if (v6 < 5)
    {
LABEL_15:
      v9 = v6 + 1;
      *v8 = v9;
      *(a1 + 2) = v9;
      *(*(v7 + 32) + 2 * *v8) = 9090;
LABEL_16:
      if (!*a1)
      {
        *(a1 + 1) = 0;
      }

      v10 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
      v11 = *(a1 + 2);
      *(*(pMCPbuff + 40) + 8 * v11) = v10;
      if (v10)
      {
        v4 = 0;
        v12 = *(*(pMCPbuff + 40) + 8 * v11);
        *v12 = v11;
        v12[1] = *a1;
LABEL_65:
        --wPDMCPmtxCnt;
        SLUnlockMutex(&hPDMCPmtx);
        return v4;
      }

      *(*(pMCPbuff + 32) + 2 * v11) = 0;
LABEL_37:
      if (!*(a1 + 12) || *(a1 + 8) <= 7)
      {
        v4 = 8;
        *(a1 + 8) = 8;
        v13 = 1030;
        goto LABEL_40;
      }

LABEL_64:
      v4 = 8;
      goto LABEL_65;
    }

    v14 = 0;
    while (v6 >= ++v14)
    {
      v15 = *(pMCPbuff + 32);
      if (!*(v15 + 2 * v14))
      {
        *(a1 + 2) = v14;
        *(v15 + 2 * v14) = 9090;
        v6 = *v8;
        break;
      }
    }

    if (v6 >= v14)
    {
      goto LABEL_16;
    }

    if (*(a1 + 12) && *(a1 + 8) > 7)
    {
      goto LABEL_64;
    }

    v4 = 8;
    *(a1 + 8) = 8;
    v13 = 1012;
LABEL_40:
    *(a1 + 12) = v13;
    goto LABEL_65;
  }

  if (!*(a1 + 12) || *(a1 + 8) <= 7)
  {
    v4 = 8;
    *(a1 + 8) = 8;
    *(a1 + 12) = 1100;
    return v4;
  }

  return 8;
}

uint64_t PDcorrec(char *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 40) <= *(a4 + 42))
  {
    v6 = *(*(a4 + 32) + 24);
    v7 = strcpy(v6, __src);
    v22 = strlen(v7);
    v21 = *(a4 + 40);
    v10 = *(a4 + 2162);
    if (v10 >= 1)
    {
      v11 = 0;
      do
      {
        *(*(a3 + 160) + v11) = *(a3 + 112) + v11;
        *(*(a3 + 152) + v11) = *(a3 + 112) + v11 + 4;
        v11 += 8;
      }

      while (8 * v10 != v11);
    }

    *(a4 + 2124) = 0;
    *(a4 + 2144) = 0x20000;
    if (v22 > 5)
    {
      v8.i32[0] = 11;
      v9.i32[0] = v22;
      v12 = vbsl_s8(vdup_lane_s16(vcgt_u16(v9, v8), 0), 0x2000200040004, 0x2000200030003);
      *(a4 + 2142) = 3;
    }

    else
    {
      *(a4 + 2142) = 2;
      v12 = 0x1000200020002;
    }

    v13 = 0;
    *(a4 + 2134) = v12;
    if (*(a3 + 104) && v22 >= 1)
    {
      v14 = 0;
      v13 = 0;
      do
      {
        LOWORD(v15) = 0;
        do
        {
          if (SLstrncmp(*(*(a3 + 160) + 8 * ((v10 + v15) >> 1)), &v6[v14], *(*(a3 + 176) + ((v10 + v15) >> 1))) >= 0)
          {
            LODWORD(v10) = (v10 + v15) >> 1;
          }

          else
          {
            v15 = (v10 + v15) >> 1;
          }
        }

        while (v10 - v15 > 1);
        LOWORD(v16) = v10 - (*(a4 + 2162) == v10);
        do
        {
          v17 = v16;
          if (!SLstrncmp(*(*(a3 + 160) + 8 * v16), &v6[v14], *(*(a3 + 176) + v16)))
          {
            if (v13 <= 999)
            {
              v18 = (a4 + 2164 + v13);
              *v18 = v22 - v14;
              v13 += 2;
              v18[1] = v17;
            }

            goto LABEL_23;
          }

          LODWORD(v10) = *(a4 + 2162);
          if (v17 >= v10 || **(*(a3 + 160) + 8 * v17) > v6[v14])
          {
            break;
          }

LABEL_23:
          v16 = (v17 + 1);
          LODWORD(v10) = *(a4 + 2162);
        }

        while (v16 < v10);
        ++v14;
      }

      while (v14 != (v22 & 0x7FFF));
    }

    v19 = a4 + 2164;
    *(v19 + v13) = -1;
    *(v19 + (v13 + 1)) = -1;
    PDdecode(v6, v22, a3, a4);
    PDcorsrt(v6, v21, (*(a4 + 40) - 1), a3, a4);
  }

  return 0;
}

uint64_t PDcorsrt(char *__src, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a5[398];
  v9 = a5[396];
  v10 = *(a5[4] + 32);
  strcpy(v10, __src);
  v53 = a2;
  if (a2 <= a3)
  {
    v54 = *(v8 + 104);
    v11 = *(a4 + 56);
    LOWORD(v12) = a2;
    do
    {
      v13 = a3;
      v14 = v12;
      v15 = *(v54 + 8 * v12);
      v16 = strlen(v10);
      v17 = strlen(v15);
      memset(v56, 0, sizeof(v56));
      memset(v55, 0, sizeof(v55));
      if (v16 >= 1)
      {
        v18 = 0;
        do
        {
          v19 = &v10[v18];
          v20 = *v19;
          if (v20 != v19[1])
          {
            v21 = (((*(v11 + 4 * v20) >> 25) & 0x20) + v20);
            ++*(v56 + v21);
          }

          ++v18;
        }

        while (v16 > v18);
      }

      if (v17 >= 1)
      {
        v22 = 0;
        do
        {
          v23 = &v15[v22];
          v24 = *v23;
          if (v24 != *(v23 + 1))
          {
            v25 = (((*(v11 + 4 * v24) >> 25) & 0x20) + v24);
            ++*(v55 + v25);
          }

          ++v22;
        }

        while (v17 > v22);
      }

      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *(v56 + v26) - *(v55 + v26);
        if (v28)
        {
          if (v28 < 0)
          {
            v28 = *(v55 + v26) - *(v56 + v26);
          }

          if ((*(v11 + 4 * v26) & 0x10000000) != 0)
          {
            v27 += 2 * v28;
          }

          else
          {
            v27 += 3 * v28;
          }
        }

        ++v26;
      }

      while (v26 != 256);
      if (v16 < 1)
      {
        v40 = 0;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        do
        {
          if (v17 >= 1)
          {
            v32 = 0;
            v33 = 0;
            do
            {
              v34 = 0;
              do
              {
                v35 = v34;
                v36 = v29 + v34;
                v37 = v32 + v34++;
              }

              while (v37 < v17 && v10[v36] == v15[v37] && v36 < v16);
              if (v35 > v31)
              {
                v31 = v35;
              }

              v32 = ++v33;
            }

            while (v17 > v33);
          }

          v29 = ++v30;
        }

        while (v16 > v30);
        v40 = v31;
      }

      v41 = v16 - v17;
      if (v41 < 0)
      {
        LOWORD(v41) = v17 - v16;
      }

      *(v9 + 2 * v14) = 2 * v27 + 4 * v41 - v40 + 16 * (v10[v16 - 1] != v15[v17 - 1]);
      v12 = (v14 + 1);
      a3 = v13;
    }

    while (v12 <= v13);
  }

  if (v53 < a3)
  {
    v42 = a3 + v53;
    v43 = v53;
    do
    {
      if (v42 - v43 > v53)
      {
        v44 = v53;
        LOWORD(v45) = v53;
        do
        {
          v45 = v45;
          v46 = *(v9 + 2 * v45);
          v47 = v44 + 1;
          v48 = *(v9 + 2 * v47);
          if (v46 > v48)
          {
            v49 = *(v8 + 104);
            v50 = *(v49 + 8 * v45);
            *(v49 + 8 * v45) = *(v49 + 8 * v47);
            *(*(v8 + 104) + 8 * v47) = v50;
            *(v9 + 2 * v45) = v48;
            *(v9 + 2 * v47) = v46;
          }

          LOWORD(v45) = v45 + 1;
          v44 = v45;
        }

        while (v42 - v43 > v45);
      }

      ++v43;
    }

    while (v43 != a3);
  }

  v51 = *MEMORY[0x1E69E9840];
  return 10;
}

uint64_t PDdb(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 8;
  }

  v3 = pMCPbuff;
  if (!pMCPbuff || (v4 = *(a1 + 2064), (v5 = *(*(pMCPbuff + 40) + 8 * v4)) == 0) || *v5 != v4 || *(*(pMCPbuff + 32) + 2 * v4) != 9090)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      result = 8;
      *(a1 + 2088) = 8;
      v9 = 5104;
      goto LABEL_16;
    }

    return 8;
  }

  if (*(a1 + 768) == 1 && (*(a1 + 772) & 0x80000000) != 0)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      result = 8;
      *(a1 + 2088) = 8;
      v9 = 1012;
      goto LABEL_16;
    }

    return 8;
  }

  if ((a2 - 3) >= 4)
  {
    if ((a2 - 1) > 1)
    {
      if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
      {
        result = 8;
        *(a1 + 2088) = 8;
        v9 = 1100;
        goto LABEL_16;
      }

      return 8;
    }

    v10 = *(pMCPbuff + 8);
    v11 = *v10;
    if (v11 < 0x19)
    {
      v15 = v11 + 1;
      *v10 = v15;
      *(a1 + 2074) = v15;
      *(*(v3 + 16) + 2 * *v10) = 9090;
    }

    else
    {
      v12 = 0;
      while (v11 >= ++v12)
      {
        v13 = *(pMCPbuff + 16);
        if (!*(v13 + 2 * v12))
        {
          *(a1 + 2074) = v12;
          *(v13 + 2 * v12) = 9090;
          v11 = *v10;
          break;
        }
      }

      if (v11 < v12)
      {
        if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
        {
          result = 8;
          *(a1 + 2088) = 8;
          v9 = 5108;
          goto LABEL_16;
        }

        return 8;
      }
    }

    if (PDdballoc(*(a1 + 2074), *(a1 + 2064)) == 8)
    {
      goto LABEL_45;
    }

    PDupibuf(a1);
    v16 = *(a1 + 784);
    if (v16 == 1)
    {
      if (PDfiletype(a1) == 8)
      {
LABEL_61:
        LODWORD(v22) = *(a1 + 2074);
LABEL_79:
        PDdbfree(0, v22);
        return 8;
      }

      v16 = *(a1 + 784);
    }

    v17 = *(*pMCPbuff + 8 * *(a1 + 2074));
    *v17 = v16;
    *(v17 + 782) = *(a1 + 785);
    *(v17 + 768) = *(a1 + 776);
    *(v17 + 781) = a2 == 1;
    if (*(a1 + 768) == 1)
    {
      v18 = *(a1 + 772);
      v19 = 1;
    }

    else
    {
      v19 = 0;
      v18 = -2;
    }

    *(v17 + 780) = v19;
    *(v17 + 776) = v18;
    if ((v16 - 2) >= 3)
    {
      if (v16 != 5 && v16 != 7)
      {
        if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
        {
          result = 8;
          *(a1 + 2088) = 8;
          v9 = 1013;
          goto LABEL_16;
        }

        return 8;
      }

      v23 = malloc_type_calloc(1uLL, 0x78uLL, 0x10300405E0B4679uLL);
      v24 = *pMCPbuff;
      v25 = *(a1 + 2074);
      *(*(*pMCPbuff + 8 * v25) + 2176) = v23;
      if (!v23)
      {
        if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
        {
          *(a1 + 2088) = 8;
          *(a1 + 2092) = 1030;
        }

        goto LABEL_133;
      }

      v26 = *(v24 + 8 * v25);
      *(v26 + 2118) = 0;
      if (PDSDinit(v26, *(a1 + 768), *(a1 + 772)) == 8)
      {
        goto LABEL_128;
      }

      *(a1 + 2078) = *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2069);
      if (*(a1 + 784) != 7 && PDsdneg(a1) == 8)
      {
        if (*(a1 + 2092) && *(a1 + 2088) > 7)
        {
          goto LABEL_132;
        }

        *(a1 + 2088) = 8;
        v27 = 1030;
        goto LABEL_131;
      }
    }

    else
    {
      v20 = malloc_type_calloc(1uLL, 0x150uLL, 0x10300400D6F4355uLL);
      v21 = *pMCPbuff;
      v22 = *(a1 + 2074);
      *(*(*pMCPbuff + 8 * v22) + 2168) = v20;
      if (!v20)
      {
        if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
        {
          *(a1 + 2088) = 8;
          *(a1 + 2092) = 1030;
        }

        goto LABEL_79;
      }

      if (PDRDinit(*(v21 + 8 * v22)) == 8)
      {
        if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
        {
          *(a1 + 2088) = 8;
          *(a1 + 2092) = 1030;
        }

        free(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2168));
        goto LABEL_61;
      }

      if (*(a1 + 784) == 2 && *(a1 + 785) != 6)
      {
        v29 = *(*pMCPbuff + 8 * *(a1 + 2074));
        if (SLOpen(v29 + 1, v29 + 512, (*(v29 + 2168) + 328), 0x20Au) == 8)
        {
          goto LABEL_128;
        }

        SLClose(*(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2168) + 328));
      }

      v30 = pMCPbuff;
      v31 = *(*pMCPbuff + 8 * *(a1 + 2074));
      *(v31 + 2112) = 0;
      *(*(v31 + 2168) + 72) = 0;
      v32 = *(*v30 + 8 * *(a1 + 2074));
      if (SLtmpnam((v32 + 1550), (*(v32 + 2168) + 72)) == 8)
      {
        if (*(a1 + 2092) && *(a1 + 2088) > 7)
        {
          goto LABEL_132;
        }

        *(a1 + 2088) = 8;
        v27 = 1019;
LABEL_131:
        *(a1 + 2092) = v27;
LABEL_132:
        LODWORD(v25) = *(a1 + 2074);
LABEL_133:
        PDfreedid(v25);
        return 8;
      }

      v34 = *(*pMCPbuff + 8 * *(a1 + 2074));
      v35 = *(v34 + 2168);
      *(v35 + 328) = -2;
      if (SLOpen(v34 + 1550, v35 + 72, (v35 + 328), 0x20Au) == 8)
      {
        goto LABEL_128;
      }

      SLClose(*(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2168) + 328));
      v36 = *(*pMCPbuff + 8 * *(a1 + 2074));
      v37 = *(v36 + 2168);
      if (*(a1 + 768))
      {
        v38 = a2 == 1 ? 4096 : 8194;
        v39 = v36 + 1550;
        v40 = v37 + 72;
        v41 = (v37 + 328);
      }

      else
      {
        v39 = v36 + 1550;
        v40 = v37 + 72;
        v41 = (v37 + 328);
        v38 = 2;
      }

      if (SLOpen(v39, v40, v41, v38) == 8)
      {
LABEL_128:
        if (*(a1 + 2092) && *(a1 + 2088) > 7)
        {
          goto LABEL_132;
        }

        *(a1 + 2088) = 8;
        v27 = 1012;
        goto LABEL_131;
      }

      if (*(a1 + 784) != 2)
      {
        if (PDreadas(a1) == 8 || *(a1 + 2088) == 8)
        {
          goto LABEL_132;
        }

        *(a1 + 2078) = *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2069);
      }
    }

    result = 0;
    *(a1 + 2080) = *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2094);
    return result;
  }

  v7 = *(a1 + 2074);
  if (v7 > **(pMCPbuff + 8))
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      result = 8;
      *(a1 + 2088) = 8;
      v9 = 5103;
LABEL_16:
      *(a1 + 2092) = v9;
      return result;
    }

    return 8;
  }

  v14 = *(*pMCPbuff + 8 * v7);
  if (v7 != *(v14 + 2162) || *(*(pMCPbuff + 16) + 2 * v7) != 9090)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      result = 8;
      *(a1 + 2088) = 8;
      v9 = 5105;
      goto LABEL_16;
    }

    return 8;
  }

  if (*(v14 + 2062) == 1)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      result = 8;
      *(a1 + 2088) = 8;
      v9 = 5155;
      goto LABEL_16;
    }

    return 8;
  }

  v28 = *(v14 + 782);
  if ((v28 | 2) == 7)
  {
    if (!*(v14 + 780))
    {
      SLClose(*(v14 + 776));
    }

    if ((a2 - 5) < 2)
    {
      return 0;
    }

    goto LABEL_117;
  }

  if (a2 == 4 || v28 == 6)
  {
    **(v14 + 2168) = 0;
  }

  *(v14 + 2069) = *(a1 + 2078);
  if (a2 == 3)
  {
    v33 = *(v14 + 2168);
    if (*v33)
    {
      if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
      {
        result = 8;
        *(a1 + 2088) = 8;
        v9 = 5110;
        goto LABEL_16;
      }

      return 8;
    }

LABEL_115:
    v42 = *(v33 + 328);
    if ((v42 & 0x80000000) == 0)
    {
      SLClose(v42);
      v43 = *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2168) + 72;
      SLremove();
    }

LABEL_117:
    PDfreedid(*(a1 + 2074));
    return 0;
  }

  if ((a2 - 5) >= 2)
  {
    v33 = *(v14 + 2168);
    goto LABEL_115;
  }

  if (*(v14 + 781))
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      result = 8;
      *(a1 + 2088) = 8;
      v9 = 5117;
      goto LABEL_16;
    }

    return 8;
  }

  if (a2 == 5)
  {
    if (PDsavsort(v7, 1) == 8)
    {
LABEL_45:
      if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
      {
        result = 8;
        *(a1 + 2088) = 8;
        v9 = 1030;
        goto LABEL_16;
      }

      return 8;
    }

    PDsort(*(*pMCPbuff + 8 * *(a1 + 2074)));
  }

  v44 = PDwriteas(a1);
  result = 8 * (v44 == 8);
  if (a2 == 5 && v44 != 8)
  {
    if (PDsavsort(*(a1 + 2074), 0) != 8)
    {
      return 0;
    }

    goto LABEL_45;
  }

  return result;
}