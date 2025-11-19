uint64_t check_word(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = (a5 - 2);
  if (a5 >= 2 && *(a2 + 3524) == 14)
  {
    v13 = (a5 - 1);
    v14 = a3[v13];
    v15 = v14 > 0x2D || ((1 << v14) & 0x200000060000) == 0;
    if (!v15 || v14 == 196)
    {
      result = check__words(a1, a2, a3, a4, (a5 - 1), a6);
      if (result)
      {
        v17 = 32;
LABEL_11:
        *(a4 + v13) = v17;
        return result;
      }
    }

    if (a5 >= 3)
    {
      if ((v18 = a3[v12], v18 <= 0x2D) && ((1 << v18) & 0x200000060000) != 0 || v18 == 196)
      {
        if (a3[v13] == 101)
        {
          result = check__words(a1, a2, a3, a4, v12, a6);
          if (result)
          {
            v17 = 32;
            *(a4 + v13) = 32;
            v13 = v12;
            goto LABEL_11;
          }
        }
      }
    }
  }

  result = check__words(a1, a2, a3, a4, a5, a6);
  if (*(a2 + 3524) == 21 && (a6 & 0x400 | result) == 0)
  {
    v20 = *a1;
    if (a5 < 3)
    {
      LODWORD(v12) = 0;
      result = 0;
      if (a5 != 2)
      {
        return result;
      }
    }

    else if (a3[a5 - 1] == 105 && a3[v12] == 108)
    {
      result = check__words(a1, *a1, a3, a4, v12, a6 + 0x4000);
    }

    else
    {
      LODWORD(v12) = 0;
      result = 0;
    }

    v21 = (a5 - 1);
    v22 = a3[v21];
    if (v22 == 152)
    {
      if ((*(v20 + 8 * *(v20 + a3[a5 - 2] + 768) + 1024) & 8) == 0)
      {
        goto LABEL_37;
      }

      result = check__words(a1, v20, a3, a4, (a5 - 1), a6 + 4096);
      v22 = a3[v21];
    }

    if (v22 == 109 && (*(v20 + 8 * *(v20 + a3[a5 - 2] + 768) + 1024) & 8) != 0)
    {
      result = check__words(a1, v20, a3, a4, (a5 - 1), a6 + 4096);
    }

LABEL_37:
    if (a5 >= 4)
    {
      v23 = &a3[a5];
      if (*(v23 - 1) == 121 && *(v23 - 2) == 109 && a3[(a5 - 3)] == 152 && (*(v20 + 8 * *(v20 + *(v23 - 4) + 768) + 1024) & 8) != 0)
      {
        result = check__words(a1, v20, a3, a4, (a5 - 3), a6 + 4096);
      }

      v24 = (a5 - 4);
      if (a5 != 4 && *(v23 - 1) == 101 && *(v23 - 2) == 105 && *(v23 - 3) == 99 && a3[v24] == 152 && (*(v20 + 8 * *(v20 + *(v23 - 5) + 768) + 1024) & 8) != 0)
      {
        result = check__words(a1, v20, a3, a4, v24, a6 + 4096);
      }
    }

    if (result && v12)
    {
      v13 = v12;
      v17 = 124;
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t check_mac(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, int a8)
{
  v8 = a4;
  v9 = a2;
  v94 = *MEMORY[0x1E69E9840];
  v10 = a7 - 2;
  v11 = *(a6 + v10);
  v12 = *(a2 + 1024 + 8 * *(a6 + v10));
  if ((v12 & 0x1800000) != 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = a2 + 3076;
    v16 = a2 + 512;
    v17 = (a2 + 3084);
    while (v13 < *(v9 + 3072))
    {
      v18 = (v15 + 28 * v13);
      if (*v18 == v11)
      {
        v19 = *(v18 + 1);
        if (v19 > 0)
        {
          v20 = -v19;
          v21 = v17;
          do
          {
            v22 = *v21++;
            a3[v20] = *(v16 + v22);
          }

          while (!__CFADD__(v20++, 1));
        }

        v24 = a3;
        v25 = &a3[-v19];
        v26 = an_analyze(*(a1 + 8), &a3[-v19], v19 + a5, a8, v93, 1u);
        if (v26)
        {
          v14 = 1;
        }

        else
        {
          v14 = v14;
        }

        if (v26)
        {
          v27 = (a8 & 4) == 0;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          v39 = a2;
          v40 = a4 - v19;
          v41 = a1;
          v42 = v25;
          v43 = v19;
          goto LABEL_37;
        }

        v9 = a2;
        a3 = v24;
      }

      else
      {
        v26 = 0;
      }

      ++v13;
      v17 += 28;
      if (v26)
      {
        goto LABEL_157;
      }
    }

    goto LABEL_157;
  }

  v28 = *(a2 + 3524);
  if (v28 == 14)
  {
    v29 = a7 - 1;
    v30 = *(a2 + 1024 + 8 * *(a6 + v10)) & 0x100;
    if ((v12 & 0x100) != 0)
    {
      v31 = a7 - 2;
    }

    else
    {
      v31 = a7 - 1;
    }

    v32 = v30 >> 8;
    if (v31 < 1)
    {
      v38 = 0;
      v45 = 0;
      v46 = 0;
      v47 = "nulladik";
      v48 = "null\xA0";
      v49 = 1;
      goto LABEL_55;
    }

    v33 = 0;
    v34 = a2 + 512;
    v35 = v31;
    while (1)
    {
      v36 = *(a6 - 1 + v35);
      v12 = *(a2 + 1024 + 8 * v36);
      if ((v12 & 0x800) != 0)
      {
        v38 = 0;
        v49 = 1;
        LODWORD(v32) = 3;
        goto LABEL_47;
      }

      if ((v12 & 0x200) != 0)
      {
        break;
      }

      if ((v12 & 0x20) == 0)
      {
        goto LABEL_35;
      }

      if (*(v34 + v36) != 48)
      {
        v33 = 1;
      }

      v37 = __OFSUB__(v35--, 1);
      if ((v35 < 0) ^ v37 | (v35 == 0))
      {
        v35 = 0;
LABEL_35:
        v38 = 0;
LABEL_46:
        v49 = 1;
        goto LABEL_47;
      }
    }

    v38 = 0;
    if (v30)
    {
      LODWORD(v32) = 1;
      goto LABEL_46;
    }

    v50 = v29 - v35;
    v49 = 1;
    LODWORD(v32) = 2;
    if (v29 - v35 > 5)
    {
      if ((v50 - 6) < 3)
      {
        v49 = 0;
        v38 = "milliomod";
        goto LABEL_165;
      }
    }

    else
    {
      if ((v50 - 3) < 3)
      {
        v49 = 0;
        v38 = "ezred";
LABEL_165:
        LODWORD(v32) = 2;
        goto LABEL_47;
      }

      if (v50 == 1)
      {
        v49 = 0;
        v38 = "tized";
        goto LABEL_165;
      }

      if (v50 == 2)
      {
        v49 = 0;
        v38 = "sz\xA0zad";
        goto LABEL_165;
      }
    }

LABEL_47:
    if (v33)
    {
      v46 = 0;
      v51 = v31 - 1;
      v52 = *(v34 + *(a6 + v51));
      v53 = 1;
      if (v52 > 0x34)
      {
        if (*(v34 + *(a6 + v51)) <= 0x36u)
        {
          if (v52 == 53)
          {
            v53 = 0;
            v48 = 0;
            v54 = 0;
            v46 = 0;
            v55 = 1;
            v45 = "\x94t\x94d";
            v47 = "\x94t\x94dik";
            v56 = "\x94t";
            goto LABEL_56;
          }

          if (v52 == 54)
          {
            v53 = 0;
            v48 = 0;
            v54 = 0;
            v46 = 0;
            v55 = 1;
            v45 = "hatod";
            v47 = "hatodik";
            v56 = "hat";
            goto LABEL_56;
          }
        }

        else
        {
          switch(v52)
          {
            case '7':
              v54 = 0;
              v46 = 0;
              v45 = "heted";
              v47 = "hetedik";
              v48 = "het";
              v55 = 1;
              v56 = "h\x82t";
              goto LABEL_56;
            case '8':
              v53 = 0;
              v48 = 0;
              v54 = 0;
              v46 = 0;
              v55 = 1;
              v45 = "nyolcad";
              v47 = "nyolcadik";
              v56 = "nyolc";
              goto LABEL_56;
            case '9':
              v53 = 0;
              v48 = 0;
              v54 = 0;
              v46 = 0;
              v55 = 1;
              v45 = "kilenced";
              v47 = "kilencedik";
              v56 = "kilenc";
              goto LABEL_56;
          }
        }
      }

      else if (*(v34 + *(a6 + v51)) <= 0x31u)
      {
        if (v52 == 48)
        {
          if (v51 == v35)
          {
            v45 = 0;
            v47 = 0;
            v54 = 1;
            goto LABEL_58;
          }

          v46 = 0;
          v73 = v31 - 2;
          v74 = *(v34 + *(a6 + v73));
          if (v74 > 0x34)
          {
            if (*(v34 + *(a6 + v73)) <= 0x36u)
            {
              if (v74 == 53)
              {
                v53 = 0;
                v48 = 0;
                v54 = 0;
                v46 = 0;
                v55 = 1;
                v45 = "\x94tvened";
                v47 = "\x94tvenedik";
                v56 = "\x94tven";
                goto LABEL_56;
              }

              if (v74 == 54)
              {
                v53 = 0;
                v48 = 0;
                v54 = 0;
                v46 = 0;
                v55 = 1;
                v45 = "hatvanad";
                v47 = "hatvanadik";
                v56 = "hatvan";
                goto LABEL_56;
              }
            }

            else
            {
              switch(v74)
              {
                case '7':
                  v53 = 0;
                  v48 = 0;
                  v54 = 0;
                  v46 = 0;
                  v55 = 1;
                  v45 = "hetvened";
                  v47 = "hetvenedik";
                  v56 = "hetven";
                  goto LABEL_56;
                case '8':
                  v53 = 0;
                  v48 = 0;
                  v54 = 0;
                  v46 = 0;
                  v55 = 1;
                  v45 = "nyolcvanad";
                  v47 = "nyolcvanadik";
                  v56 = "nyolcvan";
                  goto LABEL_56;
                case '9':
                  v53 = 0;
                  v48 = 0;
                  v54 = 0;
                  v46 = 0;
                  v55 = 1;
                  v45 = "kilencvened";
                  v47 = "kilencvenedik";
                  v56 = "kilencven";
                  goto LABEL_56;
              }
            }
          }

          else if (*(v34 + *(a6 + v73)) <= 0x31u)
          {
            if (v74 == 48)
            {
              if (v73 == v35 || *(v34 + *(a6 + v31 - 3)) == 48)
              {
                if ((v31 - 3 == v35 || *(v34 + *(a6 + v31 - 4)) == 48) && (v31 - 4 == v35 || *(v34 + *(a6 + v31 - 5)) == 48) && (v31 - 5 == v35 || *(v34 + *(a6 + v31 - 6)) == 48))
                {
                  if ((v31 - 6 == v35 || *(v34 + *(a6 + v31 - 7)) == 48) && (v31 - 7 == v35 || *(v34 + *(a6 + v31 - 8)) == 48) && (v31 - 8 == v35 || *(v34 + *(a6 + v31 - 9)) == 48))
                  {
                    v53 = 0;
                    v48 = 0;
                    v45 = 0;
                    v46 = 0;
                    v54 = 1;
                    v47 = "milli\xA0rdadik";
                    v55 = 1;
                    v56 = "milli\xA0rd";
                  }

                  else
                  {
                    v53 = 0;
                    v48 = 0;
                    v54 = 0;
                    v46 = 0;
                    v55 = 1;
                    v45 = "milliomod";
                    v47 = "milliomodik";
                    v56 = "milli\xA2";
                  }
                }

                else
                {
                  v54 = 0;
                  v46 = 0;
                  v45 = "ezred";
                  v47 = "ezredik";
                  v48 = "ezr";
                  v55 = 1;
                  v56 = "ezer";
                }
              }

              else
              {
                v53 = 0;
                v48 = 0;
                v54 = 0;
                v46 = 0;
                v55 = 1;
                v45 = "sz\xA0zad";
                v47 = "sz\xA0zadik";
                v56 = "sz\xA0z";
              }

              goto LABEL_56;
            }

            if (v74 == 49)
            {
              v54 = 0;
              v45 = "tized";
              v47 = "tizedik";
              v48 = "tiz";
              v55 = 1;
              v56 = "t\xA1z";
              goto LABEL_56;
            }
          }

          else
          {
            switch(v74)
            {
              case '2':
                v54 = 0;
                v55 = 0;
                v46 = "h\xA3s";
                v45 = "huszad";
                v47 = "huszadik";
                v48 = "husz";
                v56 = "h\xA3sz";
                goto LABEL_56;
              case '3':
                v53 = 0;
                v48 = 0;
                v54 = 0;
                v46 = 0;
                v55 = 1;
                v45 = "harmincad";
                v47 = "harmincadik";
                v56 = "harminc";
                goto LABEL_56;
              case '4':
                v53 = 0;
                v48 = 0;
                v54 = 0;
                v46 = 0;
                v55 = 1;
                v45 = "negyvened";
                v47 = "negyvenedik";
                v56 = "negyven";
                goto LABEL_56;
            }
          }
        }

        else if (v52 == 49)
        {
          if (v51 == v35)
          {
            v53 = 0;
            v48 = 0;
            v45 = 0;
            v46 = 0;
            if (v32)
            {
              v47 = "els\x93";
            }

            else
            {
              v47 = "else";
            }

            v54 = 1;
            v55 = 1;
          }

          else
          {
            v53 = 0;
            v48 = 0;
            v54 = 0;
            v46 = 0;
            v55 = 1;
            v45 = "tizenegyed";
            v47 = "tizenegyedik";
          }

          v56 = "egy";
          goto LABEL_56;
        }
      }

      else
      {
        switch(v52)
        {
          case '2':
            v54 = 0;
            v55 = 0;
            v46 = "k\x82t";
            v45 = "ketted";
            if (v51 == v35)
            {
              v47 = "m\xA0sodik";
            }

            else
            {
              v47 = "tizenkettedik";
            }

            v48 = "kett";
            v56 = "kett\x93";
            goto LABEL_56;
          case '3':
            v54 = 0;
            v45 = "harmad";
            v47 = "harmadik";
            v48 = "h\xA0rm";
            v55 = 1;
            v56 = "h\xA0rom";
            goto LABEL_56;
          case '4':
            v53 = 0;
            v48 = 0;
            v54 = 0;
            v46 = 0;
            v55 = 1;
            v45 = "negyed";
            v47 = "negyedik";
            v56 = "n\x82gy";
LABEL_56:
            if (v32 == 1)
            {
              LODWORD(v32) = 1;
              goto LABEL_58;
            }

            v62 = v55;
            v82 = v45;
            v83 = v54;
            __s = v46;
            v85 = v49;
            v86 = v38;
            v84 = v32;
            v63 = a3;
            v64 = strlen(v56);
            v65 = v64 - is_small_digraph_hun(v56, v64, v63, a5);
            memcpy(&v63[-v65], v56, v65);
            if (an_analyze(*(a1 + 8), &v63[-v65], v65 + a5, 2048, v93, 1u))
            {
              if ((a8 & 4) == 0)
              {
                v14 = 1;
LABEL_75:
                a3 = v63;
                v8 = a4;
LABEL_150:
                v28 = *(v9 + 3524);
                goto LABEL_151;
              }

              v8 = a4;
              v44 = segm_word(a1, v9, &v63[-v65], a4 - v65, v93, 0, v65);
              if ((v44 & 0x80000000) != 0)
              {
                goto LABEL_38;
              }

              v14 = 1;
LABEL_128:
              a3 = v63;
              goto LABEL_150;
            }

            if (v53)
            {
              v68 = strlen(v48);
              v69 = v68 - is_small_digraph_hun(v48, v68, v63, a5);
              v70 = &v63[-v69];
              memcpy(v70, v48, v69);
              if (an_analyze(*(a1 + 8), v70, v69 + a5, 2048, v93, 1u))
              {
                if ((a8 & 4) == 0)
                {
                  v14 = 1;
                  goto LABEL_75;
                }

                v72 = -v69;
                v8 = a4;
                goto LABEL_126;
              }
            }

            if (v62)
            {
              v38 = v86;
              a3 = v63;
              LODWORD(v32) = v84;
              v49 = v85;
              v54 = v83;
              v45 = v82;
              v8 = a4;
            }

            else
            {
              v71 = strlen(__s);
              v69 = v71 - is_small_digraph_hun(__s, v71, v63, a5);
              v70 = &v63[-v69];
              memcpy(v70, __s, v69);
              v8 = a4;
              if (an_analyze(*(a1 + 8), v70, v69 + a5, 2048, v93, 1u))
              {
                if ((a8 & 4) == 0)
                {
LABEL_127:
                  v14 = 1;
                  goto LABEL_128;
                }

                v72 = -v69;
LABEL_126:
                v44 = segm_word(a1, v9, v70, v8 + v72, v93, 0, v69);
                if ((v44 & 0x80000000) != 0)
                {
                  goto LABEL_38;
                }

                goto LABEL_127;
              }

              v38 = v86;
              a3 = v63;
              LODWORD(v32) = v84;
              v49 = v85;
              v54 = v83;
              v45 = v82;
            }

LABEL_58:
            if (v32 <= 1)
            {
              if (v47)
              {
                if (v32 == 1)
                {
                  goto LABEL_143;
                }

                v57 = a3 + 1;
                if (*a3 != 106)
                {
                  v57 = a3;
                }

                v58 = *v57;
                if (*v57)
                {
                  if (v57[1])
                  {
                    v59 = a3;
                    v60 = memchr("aeiou\xA0\x82\xA1\xA2\x94\x93\xA3\x81\x96", v57[1], 0xFuLL);
                    a3 = v59;
                    if (!v60)
                    {
                      v14 = 0;
                      if ((v58 - 105) > 0x37 || ((1 << (v58 - 105)) & 0x80000002000001) == 0)
                      {
                        goto LABEL_150;
                      }

                      goto LABEL_143;
                    }
                  }

                  if ((v58 - 97) <= 8 && ((1 << (v58 - 97)) & 0x111) != 0)
                  {
LABEL_143:
                    v45 = v47;
                    goto LABEL_144;
                  }
                }
              }

              goto LABEL_84;
            }

            if (v32 == 3)
            {
              v66 = v54;
            }

            else
            {
              v66 = 1;
            }

            if (v66)
            {
              if (v32 == 2)
              {
                v67 = v49;
              }

              else
              {
                v67 = 1;
              }

              if (v67)
              {
LABEL_84:
                v14 = 0;
                goto LABEL_150;
              }

              v47 = v38;
              v45 = v38;
            }

            else
            {
              v47 = v45;
            }

LABEL_144:
            v75 = a3;
            v76 = strlen(v45);
            v77 = v76 - is_small_digraph_hun(v47, v76, v75, a5);
            memcpy(&v75[-v77], v47, v77);
            if (!an_analyze(*(a1 + 8), &v75[-v77], v77 + a5, 2048, v93, 1u))
            {
              v14 = 0;
              goto LABEL_149;
            }

            if ((a8 & 4) == 0 || (v44 = segm_word(a1, v9, &v75[-v77], v8 - v77, v93, 0, v77), (v44 & 0x80000000) == 0))
            {
              v14 = 1;
LABEL_149:
              a3 = v75;
              goto LABEL_150;
            }

LABEL_38:
            v14 = v44;
            goto LABEL_157;
        }
      }

      v45 = 0;
      v54 = 1;
      v47 = 0;
      goto LABEL_58;
    }

    v45 = 0;
    v46 = 0;
    v47 = "nulladik";
    v48 = "null\xA0";
LABEL_55:
    v53 = 1;
    v54 = 1;
    v55 = 1;
    v56 = "nulla";
    goto LABEL_56;
  }

  v14 = 0;
LABEL_151:
  if (v28 == 21)
  {
    if ((v12 & 0x100) != 0)
    {
      v14 = 0;
      goto LABEL_157;
    }

    v78 = a3;
    if (an_analyze(*(a1 + 8), a3, a5, 0, v93, 1u))
    {
      if ((a8 & 4) == 0)
      {
        goto LABEL_155;
      }

      v42 = v78;
      v41 = a1;
      v39 = v9;
      v40 = v8;
      v43 = 0;
LABEL_37:
      v44 = segm_word(v41, v39, v42, v40, v93, 0, v43);
      if ((v44 & 0x80000000) == 0)
      {
LABEL_155:
        v14 = 1;
        goto LABEL_157;
      }

      goto LABEL_38;
    }
  }

LABEL_157:
  v79 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t segm_word(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, unsigned __int8 *a5, int a6, int a7)
{
  v10 = a2;
  v11 = *a5;
  v12 = a5[5];
  v13 = v12 + v11;
  v14 = a5[10];
  v15 = v12 + v11 + v14;
  v16 = a5[15];
  v17 = v15 + v16;
  v54 = a5[22];
  v18 = v15 + v16 + v54;
  v19 = v18;
  if (a5[5])
  {
    v19 = *a5;
    if (a7 <= v11)
    {
      *(a4 + v11) = 124;
      v19 = v11;
    }
  }

  if (v14)
  {
    v18 = v12 + v11;
    if (a7 <= v13)
    {
      *(a4 + v13) = 124;
      v18 = v12 + v11;
    }
  }

  if (*(a2 + 3524) != 14)
  {
    return 0;
  }

  v51 = v14;
  v52 = v12;
  v50 = v15 + v16 + v54;
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v49 = v16;
  if (v16 && v15 >= a7 && (!SLstrncmp(&a3[v15], "szor", 4) || !SLstrncmp(&a3[v15], "szer", 4) || !SLstrncmp(&a3[v15], "sz\x94r", 4) || !SLstrncmp(&a3[v15], "s\xA0g", 3) || !SLstrncmp(&a3[v15], "s\x82g", 3)))
  {
    *(a4 + v15) = 43;
  }

  if (v54 && v17 >= a7 && (!SLstrncmp(&a3[v17], "szor", 4) || !SLstrncmp(&a3[v17], "szer", 4) || !SLstrncmp(&a3[v17], "sz\x94r", 4)))
  {
    *(a4 + v17) = 43;
  }

  if ((~*(a5 + 14) & 0x8003) == 0)
  {
    result = an_analyze(*(a1 + 8), a3, v19, 768, v57, 1u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (result)
    {
      v21 = a1;
      v22 = v10;
      v23 = a3;
      v24 = a4;
      v25 = a7;
      goto LABEL_26;
    }

    if (!a6 && v19)
    {
      v36 = 0;
      v37 = 0;
      do
      {
        v38 = a3[v36];
        v39 = v38 > 0x2F || ((1 << v38) & 0xA00000060000) == 0;
        if (!v39 || v38 == 196)
        {
          if (v36 > v37)
          {
            result = an_analyze(*(a1 + 8), &a3[v37], (v36 - v37), 256, v57, 1u);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (result)
            {
              result = segm_word(a1, v10, &a3[v37], a4 + v37, v57, 1, (a7 - v37));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }
          }

          v37 = ++v36;
        }

        else
        {
          ++v36;
        }
      }

      while (v36 != v19);
      if (v37 >= 1 && v19 > v37)
      {
        result = an_analyze(*(a1 + 8), &a3[v37], (v19 - v37), 256, v57, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (result)
        {
          v25 = (a7 - v37);
          v24 = a4 + v37;
          v21 = a1;
          v22 = v10;
          v23 = &a3[v37];
LABEL_26:
          result = segm_word(v21, v22, v23, v24, v57, 1, v25);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }
    }
  }

  if (!v52 || (~*(a5 + 15) & 0x8003) != 0)
  {
    goto LABEL_33;
  }

  v26 = &a3[v11];
  result = an_analyze(*(a1 + 8), v26, (v18 - v11), 768, v57, 1u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (result)
  {
    v27 = (a7 - v11);
    v28 = a4 + v11;
    goto LABEL_32;
  }

  if (!a6 && v18 > v11)
  {
    v48 = v10;
    v40 = v11;
    v41 = v11;
    do
    {
      v42 = a3[v40];
      v43 = v42 > 0x2F || ((1 << v42) & 0xA00000060000) == 0;
      if (!v43 || v42 == 196)
      {
        if (v40 > v41)
        {
          result = an_analyze(*(a1 + 8), &a3[v41], (v40 - v41), 256, v57, 1u);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (result)
          {
            result = segm_word(a1, v48, &a3[v41], a4 + v41, v57, 1, (a7 - v41));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }

        v41 = ++v40;
      }

      else
      {
        ++v40;
      }
    }

    while (v40 != v18);
    v10 = v48;
    if (v41 > v11 && v18 > v41)
    {
      v26 = &a3[v41];
      result = an_analyze(*(a1 + 8), v26, (v18 - v41), 256, v57, 1u);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (result)
      {
        v27 = (a7 - v41);
        v28 = a4 + v41;
LABEL_32:
        result = segm_word(a1, v10, v26, v28, v57, 1, v27);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }
  }

LABEL_33:
  if (!v51 || (~*(a5 + 16) & 0x8003) != 0)
  {
    return 0;
  }

  v29 = v10;
  result = an_analyze(*(a1 + 8), &a3[v13], (v50 - v13), 768, v57, 1u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v30 = v13;
  if (result)
  {
    v31 = (a7 - v13);
    v32 = a4 + v13;
    v33 = a1;
    v34 = v10;
    v35 = &a3[v13];
    goto LABEL_38;
  }

  if (a6 || v50 <= v13)
  {
    return 0;
  }

  v44 = (v51 + v49 + v54 + v52 + v11);
  do
  {
    v45 = a3[v30];
    v46 = v45 > 0x2F || ((1 << v45) & 0xA00000060000) == 0;
    if (!v46 || v45 == 196)
    {
      if (v30 > v11)
      {
        result = an_analyze(*(a1 + 8), &a3[v11], (v30 - v11), 256, v57, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (result)
        {
          result = segm_word(a1, v29, &a3[v11], a4 + v11, v57, 1, (a7 - v11));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      LODWORD(v11) = ++v30;
    }

    else
    {
      ++v30;
    }
  }

  while (v30 != v44);
  if (v11 <= v13 || v11 >= v50)
  {
    return 0;
  }

  v47 = &a3[v11];
  result = an_analyze(*(a1 + 8), v47, (v44 - v11), 256, v57, 1u);
  if ((result & 0x80000000) == 0)
  {
    if (result)
    {
      v31 = (a7 - v11);
      v32 = a4 + v11;
      v33 = a1;
      v34 = v29;
      v35 = v47;
LABEL_38:
      result = segm_word(v33, v34, v35, v32, v57, 1, v31);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      return 0;
    }

    return 0;
  }

  return result;
}

BOOL is_small_digraph_hun(uint64_t a1, int a2, unsigned __int8 *a3, int a4)
{
  result = 0;
  if (a2 >= 2 && a4 >= 2)
  {
    v4 = a1 + a2;
    v5 = *(v4 - 2);
    if (v5 == *a3)
    {
      v6 = *(v4 - 1);
      if (v6 == a3[1])
      {
        v7 = (v5 & 0xFFFFFFFD) == 0x6C || v5 == 103;
        v8 = v7 || v5 == 116;
        if (v8 && v6 == 121)
        {
          return 1;
        }

        v9 = v5 == 122 || v5 == 99;
        if (v9 && v6 == 115)
        {
          return 1;
        }

        v10 = v5 == 100 || v5 == 115;
        if (v10 && v6 == 122)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t check__words(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = a5;
  v11 = a1;
  v59[40] = *MEMORY[0x1E69E9840];
  v12 = an_analyze(*(a1 + 8), a3, a5, a6, v59, 1u);
  v13 = v12;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

  if (v12)
  {
    if ((a6 & 4) != 0)
    {
      v14 = segm_word(v11, a2, a3, a4, v59, 0, 0);
      if (v14 >= 0)
      {
        v13 = v13;
      }

      else
      {
        v13 = v14;
      }
    }

    goto LABEL_84;
  }

  v15 = *(a2 + 3524);
  v16 = v15 > 0x15 || ((1 << v15) & 0x204001) == 0;
  v57 = v11;
  if (v16 || v7 < 3)
  {
    v37 = 0;
  }

  else
  {
    v17 = 0;
    v53 = v7;
    v54 = (v7 - 1);
    v18 = 1;
    do
    {
      v19 = a3[v18];
      v20 = v19 > 0x2F || ((1 << v19) & 0xA00000060000) == 0;
      if (!v20 || v19 == 196)
      {
        v55 = &a3[v18];
        v21 = v17;
        v22 = an_analyze(*(v11 + 8), a3, v18, a6 + 8448, v59, 8u);
        v13 = v22;
        if ((v22 & 0x80000000) != 0)
        {
          goto LABEL_84;
        }

        if (v22)
        {
          v23 = an_analyze(*(v57 + 8), &a3[v18 + 1], (~v18 + v53), a6 + 256, v58, 8u);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_89;
          }

          v52 = v18 + 1;
          if (!v23 && *(a2 + 3524) == 21)
          {
            v24 = a4;
            v25 = a3[v18 + 1];
            v26 = a3[v18 + 1];
            v27 = lexchr2lower(v26, 21);
            v16 = v25 == v27;
            a4 = v24;
            if (v16)
            {
              goto LABEL_32;
            }

            a3[v52] = v27;
            v23 = an_analyze(*(v57 + 8), &a3[v52], (~v18 + v53), a6 + 256, v58, 8u);
            if ((v23 & 0x80000000) != 0)
            {
              goto LABEL_89;
            }

            a3[v52] = v26;
          }

          if (v23)
          {
            v28 = 0;
            v49 = v23;
            v50 = a4;
            v29 = v13;
            do
            {
              v30 = 0;
              v51 = v28;
              v31 = &v58[40 * v28];
              v32 = v59;
              do
              {
                v33 = *(a2 + 3524);
                if (v33 == 21 || (v34 = is_nominal_result(v32, v33), v34 == is_nominal_result(v31, *(a2 + 3524))))
                {
                  if ((a6 & 4) != 0)
                  {
                    v23 = segm_word(v57, a2, a3, v50, &v59[5 * v30], 0, 0);
                    if ((v23 & 0x80000000) != 0)
                    {
                      goto LABEL_89;
                    }

                    v23 = segm_word(v57, a2, &a3[v52], v50 + v52, &v58[40 * v51], 0, 0);
                    if ((v23 & 0x80000000) != 0)
                    {
                      goto LABEL_89;
                    }
                  }

                  goto LABEL_79;
                }

                ++v30;
                v32 += 5;
              }

              while (v29 != v30);
              a4 = v50;
              v28 = v51 + 1;
            }

            while (v51 + 1 != v49);
          }
        }

LABEL_32:
        v17 = v21 + 1;
        if (*(a2 + 3524) == 21)
        {
          v35 = *v55;
          *v55 = 0;
          v36 = roman2int(a3);
          *v55 = v35;
          v11 = v57;
          if ((v36 - 1) <= 0x26 && (!SLstrcmp(v55 + 1, "lecie") || !SLstrcmp(v55 + 1, "lecia") || !SLstrcmp(v55 + 1, "leciu") || !SLstrcmp(v55 + 1, "leciem") || !SLstrcmp(v55 + 1, "wieczny") || !SLstrcmp(v55 + 1, "wiecznego") || !SLstrcmp(v55 + 1, "wiecznemu") || !SLstrcmp(v55 + 1, "wiecznym") || !SLstrcmp(v55 + 1, "wieczne") || !SLstrcmp(v55 + 1, "wieczna") || !SLstrcmp(v55 + 1, "wiecznej") || !SLstrcmp(v55 + 1, "wieczn\xA5") || !SLstrcmp(v55 + 1, "wieczni") || !SLstrcmp(v55 + 1, "wiecznych") || !SLstrcmp(v55 + 1, "wiecznym")))
          {
LABEL_79:
            v13 = 1;
            goto LABEL_84;
          }
        }

        else
        {
          v11 = v57;
        }
      }

      ++v18;
    }

    while (v18 != v54);
    v15 = *(a2 + 3524);
    v37 = v17 > 1;
    v7 = v53;
  }

  if (v15 != 14 && v15 || v15 == 14 && !v37)
  {
    goto LABEL_83;
  }

  v56 = (v7 - 1);
  v38 = v7;
  if (v7 < 3)
  {
    v39 = 0;
    LODWORD(v41) = 1;
    goto LABEL_81;
  }

  v39 = 0;
  v40 = 0;
  v41 = 1;
  do
  {
    v42 = a3[v41];
    v43 = v42 > 0x2F || ((1 << v42) & 0xA00000060000) == 0;
    if (v43 && v42 != 196)
    {
      ++v41;
      continue;
    }

    if (v41 == v39 || v40 > 2)
    {
      goto LABEL_81;
    }

    v44 = an_analyze(*(v11 + 8), &a3[v39], (v41 - v39), (*(a2 + 3524) == 14) << 11, v59, 1u);
    v13 = v44;
    if ((v44 & 0x80000000) != 0)
    {
      goto LABEL_84;
    }

    if (!v44)
    {
      break;
    }

    if ((a6 & 4) != 0)
    {
      v23 = segm_word(v57, a2, &a3[v39], a4 + v39, v59, 0, 0);
      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_89;
      }
    }

    ++v40;
    v39 = ++v41;
    v11 = v57;
  }

  while (v41 != v56);
  v11 = v57;
LABEL_81:
  if (v41 != v56)
  {
LABEL_83:
    v13 = 0;
    goto LABEL_84;
  }

  if (v38 == v39)
  {
    goto LABEL_83;
  }

  v47 = &a3[v39];
  v48 = an_analyze(*(v11 + 8), v47, (v38 - v39), (*(a2 + 3524) == 14) << 11, v59, 1u);
  v13 = v48;
  if ((v48 & 0x80000000) == 0 && (a6 & 4) != 0)
  {
    if (v48)
    {
      v23 = segm_word(v11, a2, v47, a4 + v39, v59, 0, 0);
      if ((v23 & 0x80000000) != 0)
      {
LABEL_89:
        v13 = v23;
      }
    }
  }

LABEL_84:
  v45 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t lexchr2lower(unsigned __int8 a1, int a2)
{
  v2 = a1;
  if (a1 - 65 <= 0x19)
  {
    return (a1 | 0x20);
  }

  if (a2 != 21)
  {
    if (a2 != 14)
    {
      return v2;
    }

    if (a1 > 0x96u)
    {
      if (a1 <= 0x98u)
      {
        if (a1 == 151)
        {
          return -93;
        }

        else
        {
          return -106;
        }
      }

      if (a1 != 153)
      {
        if (a1 != 154)
        {
          if (a1 == 167)
          {
            return -109;
          }

          return v2;
        }

        return -127;
      }

      return -108;
    }

    if (a1 <= 0x8Fu)
    {
      if (a1 == 141)
      {
        return -95;
      }

      if (a1 == 143)
      {
        return -96;
      }

      return v2;
    }

    if (a1 != 144)
    {
      if (a1 != 149)
      {
        return v2;
      }

      return -94;
    }

    return -126;
  }

  if (a1 <= 0x9Cu)
  {
    if (a1 > 0x96u)
    {
      if (a1 == 151)
      {
        return -104;
      }

      if (a1 != 153)
      {
        if (a1 != 154)
        {
          return v2;
        }

        return -127;
      }

      return -108;
    }

    if (a1 == 141)
    {
      return -85;
    }

    if (a1 == 143)
    {
      return -122;
    }

    if (a1 != 144)
    {
      return v2;
    }

    return -126;
  }

  if (a1 <= 0xB4u)
  {
    switch(a1)
    {
      case 0x9Du:
        v2 = -120;
        break;
      case 0xA4u:
        v2 = -91;
        break;
      case 0xA8u:
        v2 = -87;
        break;
    }

    return v2;
  }

  if (a1 > 0xDFu)
  {
    if (a1 != 224)
    {
      if (a1 == 227)
      {
        return -28;
      }

      return v2;
    }

    return -94;
  }

  if (a1 == 181)
  {
    return -96;
  }

  if (a1 == 189)
  {
    return -66;
  }

  return v2;
}

uint64_t suggest_init(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(0x290uLL, 1uLL, 0xDDD36E3uLL);
  *a1 = v8;
  if (v8)
  {
    v9 = v8;
    *v8 = a2;
    *(v8 + 80) = a4;
    if (a3)
    {
      __strcpy_chk();
    }

    else
    {
      v8[88] = 0;
    }

    cdict_init((v9 + 24), a2, 256, 32, 0);
    if ((a4 & 0x20000) != 0 && v9[88])
    {
      v11 = f_open(v9 + 88, 17);
      if (v11)
      {
        v12 = v11;
        while (1)
        {
          if (!f_gets(__s, 130, v12))
          {
            v25 = *(v12 + 20);
            f_close(v12);
            if (v25)
            {
              v25 = -4;
            }

            else
            {
              *(v9 + 8) = 0;
            }

            goto LABEL_44;
          }

          v13 = strchr(__s, 10);
          if (!v13)
          {
            break;
          }

          do
          {
            *v13 = 0;
LABEL_14:
            if (v13 <= __s)
            {
              break;
            }

            v16 = *--v13;
            v15 = v16;
          }

          while (v16 == 32 || v15 == 9);
          if (__s[0])
          {
            v18 = stpcopy(v29, __s);
            v19 = strchr(v29, 32);
            v20 = v19;
            if (v19)
            {
              v21 = v19;
            }

            else
            {
              v21 = (v18 + 1);
            }

            if (v19)
            {
              v22 = v18;
            }

            else
            {
              v22 = v18 + 1;
            }

            *v21 = 0;
            if (strlen(v29) > 16 || (v20 ? (v23 = v20 + 1) : (v23 = (v18 + 1)), strlen(v23) > 16))
            {
              v25 = -10;
LABEL_39:
              f_close(v12);
              goto LABEL_44;
            }

            v24 = cdict_add((v9 + 24), v29, v22 - v29 + 1);
            v25 = v24 & (v24 >> 31);
            if (v25 < 0)
            {
              goto LABEL_39;
            }
          }
        }

        v14 = strlen(__s);
        if (v14 != 129)
        {
          v13 = &__s[v14];
          goto LABEL_14;
        }

        f_close(v12);
        v25 = -7;
      }

      else
      {
        v25 = -2;
      }

LABEL_44:
      if (v25 != -2 && v25 < 0)
      {
        result = (v25 - 1200);
      }

      else
      {
        result = 0;
      }
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 4294966295;
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t suggest_finish(uint64_t result)
{
  v27[8] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 32) == 1)
    {
      __strcpy_chk();
      __s.__pn_.__r_.__value_.__s.__data_[strlen(&__s) - 1] = 125;
      __strcpy_chk();
      __to.__pn_.__r_.__value_.__s.__data_[strlen(&__to) - 1] = 123;
      v2 = f_open(&__s, 26);
      if (v2)
      {
        v3 = v2;
        v22 = 0u;
        v23 = 0u;
        if (cdict_access(v1 + 24, 0, &v22))
        {
          v4 = 0;
          do
          {
            v5 = (v22 + SDWORD2(v22) + 20);
            v6 = v27;
            v7 = &v26;
            do
            {
              v8 = v6;
              v9 = *v5++;
              *(v7 + 1) = v9;
              v7 = (v7 + 1);
              v6 = (v6 + 1);
            }

            while (v9);
            if (*v5)
            {
              v10 = 0;
              *v7 = 32;
              do
              {
                v11 = v5[v10];
                *v8++ = v11;
                ++v10;
              }

              while (v11);
            }

            if (f_puts(&v26 + 1, v3) == -1)
            {
              break;
            }

            v12 = (*(v3 + 8) & 0x10) != 0 ? f_putc_txt(10, v3) : f_putc_bin(10, v3);
            if (v12 == -1)
            {
              break;
            }

            ++v4;
            v22 = 0u;
            v23 = 0u;
          }

          while (cdict_access(v1 + 24, v4, &v22));
        }

        v13 = *(v3 + 20);
        f_close(v3);
        if (v13)
        {
          v14 = -5;
        }

        else
        {
          v16 = f_open(&__to, 1);
          if (v16 && (f_close(v16), unlink(&__to) == -1))
          {
            v14 = -12;
          }

          else
          {
            v17 = f_open((v1 + 88), 1);
            if (v17 && (f_close(v17), rename((v1 + 88), &__to, v19), v20 == -1) || (rename(&__s, (v1 + 88), v18), v21 == -1))
            {
              v14 = -13;
            }

            else
            {
              unlink(&__to);
              v14 = 0;
              *(v1 + 32) = 0;
            }
          }
        }
      }

      else
      {
        v14 = -3;
      }
    }

    else
    {
      v14 = 0;
    }

    cdict_finish(v1 + 24);
    free(v1);
    if (v14)
    {
      result = (v14 - 1200);
    }

    else
    {
      result = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t suggest_words(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *__s, int a7, uint64_t a8)
{
  v16 = strlen(__s);
  if (v16 > 64)
  {
    return 4294966286;
  }

  *(a1 + 8) = a8;
  if (a8 == 1 || a8 == -1)
  {
    *(a1 + 632) = a7;
    *(a1 + 652) = 0;
    *(a1 + 16) = 1;
  }

  else if (!*(a1 + 16))
  {
    return *(a1 + 652);
  }

  he_language = get_he_language(*a1);
  v19 = he_language;
  if (he_language == 14)
  {
    v23 = 3;
    v25 = 0xA00000004;
    v27 = 2;
    v22 = corr_typewriter_hun;
    v24 = corr_more_accents_hun;
    v26 = corr_accents_hun;
    v20 = corr_y_z_hun;
  }

  else if (he_language == 21)
  {
    v23 = 3;
    v22 = corr_typewriter_pol;
    v24 = corr_more_accents_pol;
    v27 = 2;
    v26 = corr_accents_pol;
    v25 = 0x200000014;
    v20 = corr_y_z_pol;
  }

  else
  {
    v20 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v22 = 0;
    v27 = 0;
    v23 = 0;
  }

  *(a1 + 608) = a2;
  *(a1 + 600) = a3;
  *(a1 + 616) = a4;
  *(a1 + 624) = a5;
  *(a1 + 648) = 1024;
  result = suggest_1_corr(a1, __s, 0);
  *(a1 + 16) = result;
  if ((result & 0x80000000) == 0)
  {
    v21 = *(a1 + 640);
    if ((v21 & 0x8000) == 0 || (v21 & 0x10000) != 0 && *(a1 + 652))
    {
      goto LABEL_17;
    }

    *(a1 + 8) = -1;
    if ((a8 & 0x10000) == 0 || !result || (v21 & 0x40) == 0 || (result = sugg_prepared(a1, __s, v16, 0, 4, v20, v27), *(a1 + 16) = result, (result & 0x80000000) == 0))
    {
      if ((a8 & 0x20000) == 0 || !result || (*(a1 + 641) & 1) == 0 || (result = sugg_prepared(a1, __s, v16, 0, 4, v26, SHIDWORD(v25)), *(a1 + 16) = result, (result & 0x80000000) == 0))
      {
        if ((a8 & 0x40000) == 0 || !result || (*(a1 + 641) & 2) == 0 || (result = sugg_prepared(a1, __s, v16, 0, 4, v24, v25), *(a1 + 16) = result, (result & 0x80000000) == 0))
        {
          if ((a8 & 0x80000) == 0 || !result || (*(a1 + 641) & 0x40) == 0 || (result = sugg_prepared(a1, __s, v16, 0, 4, v22, v23), *(a1 + 16) = result, (result & 0x80000000) == 0))
          {
            if ((a8 & 0x100000) == 0 || !result || (*(a1 + 640) & 0x20) == 0 || *(a1 + 652) || (result = sugg_capitalize1(a1, __s, v16, 0, 3), *(a1 + 16) = result, (result & 0x80000000) == 0))
            {
LABEL_17:
              if (v19 == 14 && (a8 & 0x200000) != 0 && !*(a1 + 652))
              {
                *(a1 + 648) = 0;
                *(a1 + 8) = -1;
                result = suggest_1_corr(a1, __s, 0);
                *(a1 + 16) = result;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t suggest_1_corr(uint64_t a1, char *a2, int a3)
{
  v173 = *MEMORY[0x1E69E9840];
  he_language = get_he_language(*a1);
  v7 = he_language;
  if (he_language == 14)
  {
    v8 = 3;
    v9 = 41;
    v10 = 14;
    v159 = 0xD00000009;
    v162 = 0xA00000004;
    v165 = 5;
    v169 = 2;
    v11 = corr_typewriter_hun;
    v12 = corr_keyboard_hun;
    v157 = corr_proper_names_hun;
    v158 = corr_voiced_unvoiced_hun;
    v160 = corr_assimilation_hun;
    v161 = corr_more_accents_hun;
    v163 = corr_accents_hun;
    v164 = corr_j_ly_hun;
    v13 = corr_y_z_hun;
LABEL_5:
    __n = v13;
    goto LABEL_7;
  }

  if (he_language == 21)
  {
    v8 = 3;
    v9 = 35;
    v10 = 5;
    v159 = 0x1A00000006;
    v162 = 0x200000014;
    v165 = 26;
    v169 = 2;
    v11 = corr_typewriter_pol;
    v12 = corr_keyboard_pol;
    v157 = &corr_proper_names_pol;
    v158 = corr_voiced_unvoiced_pol;
    v160 = corr_assimilation_pol;
    v161 = corr_more_accents_pol;
    v163 = corr_accents_pol;
    v164 = corr_j_ly_pol;
    v13 = corr_y_z_pol;
    goto LABEL_5;
  }

  __n = 0;
  v163 = 0;
  v164 = 0;
  v160 = 0;
  v161 = 0;
  v157 = 0;
  v158 = 0;
  v12 = 0;
  v11 = 0;
  v169 = 0;
  v165 = 0;
  v162 = 0;
  v159 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
LABEL_7:
  v14 = strlen(a2);
  if (v14 > 64)
  {
    v15 = 4294966286;
    goto LABEL_278;
  }

  v156 = v10;
  v155 = v12;
  v15 = *(a1 + 16);
  if (v15 < 1)
  {
    goto LABEL_278;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) != 0 && (*(a1 + 640) & 8) != 0)
  {
    v149 = v9;
    if (v7 == 14 && (*(a1 + 632) & 0x20) != 0)
    {
LABEL_17:
      if (v14 >= 3)
      {
        v19 = 1;
        while (1)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            if (v19 == v20)
            {
              __dst[v21++] = 32;
            }

            v22 = v21 + 1;
            __dst[v21++] = a2[v20++];
          }

          while ((v14 & 0x7FFFFFFF) != v20);
          __dst[v22] = 0;
          v23 = try_f(a1, __dst, 0, 0, 2);
          if (v23 <= 0)
          {
            goto LABEL_276;
          }

          if (++v19 == v14 - 1)
          {
            v16 = *(a1 + 8);
            break;
          }
        }
      }

      v15 = 1;
      *(a1 + 16) = 1;
    }

    else
    {
      v17 = &a2[a3];
      while (1)
      {
        v18 = *v17;
        if (!*v17)
        {
          break;
        }

        ++v17;
        if (strchr(punct_inside_punctu, v18))
        {
          goto LABEL_17;
        }
      }
    }

    v9 = v149;
  }

  if ((v16 & 2) != 0 && v7 == 14 && (*(a1 + 640) & 0x10) != 0 && (*(a1 + 632) & 0x80) != 0)
  {
    if (v14 >= 3)
    {
      v144 = a3;
      v74 = *a1;
      v75 = 1;
      while (1)
      {
        v76 = 0;
        v77 = 0;
        do
        {
          if (v75 == v76)
          {
            __dst[v77++] = *(v74 + 813);
          }

          v78 = v77 + 1;
          __dst[v77++] = a2[v76++];
        }

        while ((v14 & 0x7FFFFFFF) != v76);
        __dst[v78] = 0;
        v79 = (*(a1 + 616))(*(a1 + 600), __dst, 0);
        v15 = v79;
        if ((v79 & 0x80000000) != 0)
        {
          goto LABEL_277;
        }

        if (v79)
        {
          *(a1 + 652) = 1;
          v80 = __dst;
        }

        else
        {
          v80 = 0;
        }

        v23 = (*(a1 + 624))(*(a1 + 608), v80);
        if (v23 <= 0)
        {
          goto LABEL_276;
        }

        if (++v75 == v14 - 1)
        {
          v16 = *(a1 + 8);
          a3 = v144;
          break;
        }
      }
    }

    v15 = 1;
    *(a1 + 16) = 1;
  }

  if ((v16 & 4) != 0)
  {
    if (*(a1 + 632))
    {
      if ((*(a1 + 640) & 0x20) != 0)
      {
        v15 = sugg_capitalize1(a1, a2, v14, a3, 1);
        *(a1 + 16) = v15;
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_278;
        }
      }
    }
  }

  if (v15 < 1)
  {
    goto LABEL_278;
  }

  if (*(a1 + 8) & 8) != 0 && (*(a1 + 640))
  {
    if (v14 > a3)
    {
      v24 = *a1 + 1024;
      for (i = a3; i != v14; ++i)
      {
        v26 = &a2[i];
        if (*(v24 + 8 * a2[i]) & 1) != 0 && (i != a3 && (*(v24 + 8 * *(v26 - 1)) & 1) != 0 || i != v14 - 1 && (*(v24 + 8 * v26[1])))
        {
          if (v14 < 1)
          {
            v27 = 0;
          }

          else
          {
            LODWORD(v27) = 0;
            v28 = i;
            v29 = v14 & 0x7FFFFFFF;
            v30 = a2;
            do
            {
              if (v28)
              {
                __dst[v27] = *v30;
                LODWORD(v27) = v27 + 1;
              }

              --v28;
              ++v30;
              --v29;
            }

            while (v29);
            v27 = v27;
          }

          __dst[v27] = 0;
          v31 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
          v15 = v31;
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_277;
          }

          if (v31)
          {
            *(a1 + 652) = 1;
            v32 = __dst;
          }

          else
          {
            v32 = 0;
          }

          v23 = (*(a1 + 624))(*(a1 + 608), v32);
          if (v23 < 1)
          {
            goto LABEL_276;
          }
        }
      }
    }

    v15 = 1;
    *(a1 + 16) = 1;
  }

  v33 = *(a1 + 8);
  if ((v33 & 0x10) != 0 && (*(a1 + 640) & 2) != 0)
  {
    if (v14 - 1 > a3)
    {
      v152 = v11;
      v34 = *a1 + 1024;
      v35 = a3;
      do
      {
        v36 = a2[v35];
        if (*(v34 + 8 * v36))
        {
          if (v36 == a2[v35 + 1])
          {
            v37 = 1;
          }

          else
          {
            v37 = (*(v34 + 8 * a2[v35 + 1]) & 1) == 0;
            *(v34 + 8 * a2[v35 + 1]);
          }

          if (!v37)
          {
            if (v14 < 1)
            {
              v38 = 0;
            }

            else
            {
              LODWORD(v38) = 0;
              v39 = 0;
              do
              {
                if (v39 == v35)
                {
                  v40 = v39 + 1;
                  v41 = v38 + 1;
                  __dst[v38] = a2[v40];
                  v42 = 2;
                }

                else
                {
                  v42 = 1;
                  v41 = v38;
                  LODWORD(v40) = v39;
                }

                v38 = (v38 + v42);
                __dst[v41] = a2[v39];
                v39 = v40 + 1;
              }

              while (v40 + 1 < v14);
            }

            __dst[v38] = 0;
            v43 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
            v15 = v43;
            if ((v43 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (v43)
            {
              *(a1 + 652) = 1;
              v44 = __dst;
            }

            else
            {
              v44 = 0;
            }

            v23 = (*(a1 + 624))(*(a1 + 608), v44);
            if (v23 < 1)
            {
              goto LABEL_276;
            }
          }
        }

        ++v35;
      }

      while (v14 - 1 != v35);
      v33 = *(a1 + 8);
      v11 = v152;
    }

    v15 = 1;
    *(a1 + 16) = 1;
  }

  if ((v33 & 0x20) != 0)
  {
    if ((*(a1 + 640) & 4) != 0)
    {
      if (v14 <= a3)
      {
        v15 = 1;
        *(a1 + 16) = 1;
      }

      else
      {
        v148 = v8;
        v150 = v9;
        v153 = v11;
        v45 = a2 - 1;
        v46 = *a1 + 1024;
        v145 = *a1;
        v47 = *a1 + 3076;
        v48 = a3;
        v49 = v14;
        v147 = v46;
        v146 = v47;
        do
        {
          v50 = a2[v48];
          v51 = v48 + 1;
          if (v50 != a2[v48 + 1] && (v48 < 1 || v50 != v45[v48]))
          {
            v52 = v48;
            v53 = *(v46 + 8 * a2[v48]);
            if (v53)
            {
              if (v14 < 1)
              {
                v71 = 0;
              }

              else
              {
                v66 = 0;
                v67 = v14 & 0x7FFFFFFF;
                v68 = a2;
                do
                {
                  if (!v52)
                  {
                    __dst[v66++] = a2[v48];
                  }

                  v69 = *v68++;
                  v70 = v66 + 1;
                  __dst[v66] = v69;
                  --v52;
                  ++v66;
                  --v67;
                }

                while (v67);
                v71 = v70;
              }

              __dst[v71] = 0;
              v72 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
              v15 = v72;
              if ((v72 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

              if (v72)
              {
                *(a1 + 652) = 1;
                v73 = __dst;
              }

              else
              {
                v73 = 0;
              }

              v23 = (*(a1 + 624))(*(a1 + 608), v73);
              v46 = v147;
              v45 = a2 - 1;
              v49 = v14;
              v47 = v146;
              if (v23 < 1)
              {
                goto LABEL_276;
              }
            }

            else if (v48 >= 1 && (v53 & 0x1000) != 0 && (*(v46 + 8 * v45[v48]) & 0x1800000) != 0)
            {
              v54 = *(v145 + 3072);
              if (v54 >= 1)
              {
                for (j = 0; j < v54; ++j)
                {
                  v56 = (v47 + 28 * j);
                  if (*v56 == v45[v48] && (*(v46 + 8 * v56[*(v56 + 1) + 7]) & 0x10) != 0)
                  {
                    if (v14 < 1)
                    {
                      v57 = 0;
                    }

                    else
                    {
                      LODWORD(v57) = 0;
                      v58 = v14 & 0x7FFFFFFF;
                      v59 = a2;
                      v60 = v48;
                      do
                      {
                        if (v60)
                        {
                          v61 = 1;
                          v62 = v59;
                          v63 = v57;
                        }

                        else
                        {
                          v63 = v57 + 1;
                          __dst[v57] = a2[v48];
                          v62 = &v56[*(v56 + 1) + 7];
                          v61 = 2;
                        }

                        v57 = (v57 + v61);
                        __dst[v63] = *v62;
                        --v60;
                        ++v59;
                        --v58;
                      }

                      while (v58);
                    }

                    __dst[v57] = 0;
                    v64 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
                    v15 = v64;
                    if ((v64 & 0x80000000) != 0)
                    {
                      goto LABEL_277;
                    }

                    if (v64)
                    {
                      *(a1 + 652) = 1;
                      v65 = __dst;
                    }

                    else
                    {
                      v65 = 0;
                    }

                    v23 = (*(a1 + 624))(*(a1 + 608), v65);
                    if (v23 < 1)
                    {
                      goto LABEL_276;
                    }

                    v49 = v14;
                    v54 = *(v145 + 3072);
                    v46 = v147;
                    v45 = a2 - 1;
                    v47 = v146;
                  }
                }
              }
            }
          }

          ++v48;
        }

        while (v51 != v49);
        v33 = *(a1 + 8);
        v15 = 1;
        *(a1 + 16) = 1;
        v8 = v148;
        v9 = v150;
        v11 = v153;
        if ((v33 & 0x20) == 0)
        {
          goto LABEL_160;
        }
      }
    }

    if (*(a1 + 632) && (*(a1 + 642) & 4) != 0)
    {
      if (v14 == 64)
      {
LABEL_159:
        v15 = 1;
        *(a1 + 16) = 1;
        goto LABEL_160;
      }

      if (v14 >= 1)
      {
        v81 = v14 & 0x7FFFFFFF;
        v82 = a2;
        do
        {
          v83 = *v82++;
          if ((*(*a1 + 1024 + 8 * v83) & 0x19000) != 0)
          {
            goto LABEL_159;
          }
        }

        while (--v81);
      }

      __strcpy_chk();
      __dst[v14] = 46;
      __dst[v14 + 1] = 0;
      v84 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
      v15 = v84;
      if ((v84 & 0x80000000) != 0)
      {
LABEL_277:
        *(a1 + 16) = v15;
        goto LABEL_278;
      }

      if (v84)
      {
        *(a1 + 652) = 1;
        v85 = __dst;
      }

      else
      {
        v85 = 0;
      }

      v23 = (*(a1 + 624))(*(a1 + 608), v85);
      if (v23 >= 1)
      {
        v33 = *(a1 + 8);
        goto LABEL_159;
      }

LABEL_276:
      v15 = v23;
      goto LABEL_277;
    }
  }

LABEL_160:
  if ((v33 & 0x40) != 0 && (*(a1 + 640) & 0x40) != 0)
  {
    v86 = sugg_prepared(a1, a2, v14, a3, 1, __n, v169);
    v15 = v86;
    *(a1 + 16) = v86;
    if ((v86 & 0x80000000) != 0 || !v86)
    {
      goto LABEL_278;
    }

    v15 = 1;
  }

  if ((*(a1 + 8) & 0x80) != 0 && (*(a1 + 640) & 0x80) != 0)
  {
    v87 = sugg_prepared(a1, a2, v14, a3, 1, v164, v165);
    v15 = v87;
    *(a1 + 16) = v87;
    if ((v87 & 0x80000000) != 0 || !v87)
    {
      goto LABEL_278;
    }

    v15 = 1;
  }

  if (*(a1 + 9) & 1) != 0 && (*(a1 + 641))
  {
    v88 = sugg_prepared(a1, a2, v14, a3, 1, v163, SHIDWORD(v162));
    v15 = v88;
    *(a1 + 16) = v88;
    if ((v88 & 0x80000000) != 0 || !v88)
    {
      goto LABEL_278;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 2) != 0 && (*(a1 + 641) & 2) != 0)
  {
    v89 = sugg_prepared(a1, a2, v14, a3, 1, v161, v162);
    v15 = v89;
    *(a1 + 16) = v89;
    if ((v89 & 0x80000000) != 0 || !v89)
    {
      goto LABEL_278;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 4) != 0 && (*(a1 + 641) & 4) != 0)
  {
    v90 = sugg_prepared(a1, a2, v14, a3, 1, v160, SHIDWORD(v159));
    v15 = v90;
    *(a1 + 16) = v90;
    if ((v90 & 0x80000000) != 0 || !v90)
    {
      goto LABEL_278;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 8) != 0 && (*(a1 + 641) & 8) != 0)
  {
    v91 = sugg_prepared(a1, a2, v14, a3, 1, v158, v159);
    v15 = v91;
    *(a1 + 16) = v91;
    if ((v91 & 0x80000000) != 0 || !v91)
    {
      goto LABEL_278;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 0x10) != 0 && (*(a1 + 641) & 0x10) != 0)
  {
    v92 = sugg_prepared(a1, a2, v14, a3, 1, v157, v156);
    v15 = v92;
    *(a1 + 16) = v92;
    if ((v92 & 0x80000000) != 0 || !v92)
    {
      goto LABEL_278;
    }

    v15 = 1;
  }

  if ((*(a1 + 8) & 4) != 0 && *(a1 + 632) && (*(a1 + 640) & 0x20) != 0)
  {
    v151 = v9;
    v154 = v11;
    v93 = *a1;
    __strncpy_chk();
    __dst[v14] = 0;
    if (v14 >= 1)
    {
      v94 = 0;
      v95 = v93 + 1024;
      do
      {
        if (!a3)
        {
          v96 = a2[v94];
          v97 = *(v95 + 8 * v96);
          if ((v97 & 4) != 0)
          {
            __dst[v94] = *(v93 + v96);
            v98 = (*(a1 + 616))(*(a1 + 600), __dst, 0);
            v15 = v98;
            if ((v98 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (v98)
            {
              *(a1 + 652) = 1;
              v99 = __dst;
            }

            else
            {
              v99 = 0;
            }

            v23 = (*(a1 + 624))(*(a1 + 608), v99);
            if (v23 < 1)
            {
              goto LABEL_276;
            }

            v96 = a2[v94];
            __dst[v94] = v96;
            v97 = *(v95 + 8 * v96);
          }

          if ((v97 & 2) != 0)
          {
            __dst[v94] = *(v93 + 256 + v96);
            v100 = (*(a1 + 616))(*(a1 + 600), __dst, 0);
            v15 = v100;
            if ((v100 & 0x80000000) != 0)
            {
              goto LABEL_277;
            }

            if (v100)
            {
              *(a1 + 652) = 1;
              v101 = __dst;
            }

            else
            {
              v101 = 0;
            }

            v23 = (*(a1 + 624))(*(a1 + 608), v101);
            if (v23 < 1)
            {
              goto LABEL_276;
            }

            __dst[v94] = a2[v94];
          }
        }

        ++v94;
      }

      while ((v14 & 0x7FFFFFFF) != v94);
    }

    v15 = 1;
    *(a1 + 16) = 1;
    v9 = v151;
    v11 = v154;
  }

  if ((*(a1 + 9) & 0x20) != 0 && (*(a1 + 641) & 0x20) != 0)
  {
    v102 = sugg_prepared(a1, a2, v14, a3, 1, v155, v9);
    v15 = v102;
    *(a1 + 16) = v102;
    if ((v102 & 0x80000000) != 0 || !v102)
    {
      goto LABEL_278;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 0x40) != 0 && (*(a1 + 641) & 0x40) != 0)
  {
    v103 = sugg_prepared(a1, a2, v14, a3, 1, v11, v8);
    v15 = v103;
    *(a1 + 16) = v103;
    if ((v103 & 0x80000000) != 0 || !v103)
    {
      goto LABEL_278;
    }

    v15 = 1;
  }

  if ((*(a1 + 9) & 0x80) != 0 && (*(a1 + 642) & 2) != 0)
  {
    memset(v171, 0, sizeof(v171));
    v104 = cdict_size(a1 + 24);
    if (v14 > a3)
    {
      v105 = a3 - 1;
      v106 = a3;
      do
      {
        v170 = v105 + 1;
        if (v104 >= 1)
        {
          for (k = 0; k != v104; ++k)
          {
            cdict_access(a1 + 24, k, v171);
            v108 = *&v171[0] + SDWORD2(v171[0]);
            v111 = *(v108 + 20);
            v110 = v108 + 20;
            v109 = v111;
            v112 = &a2[v106];
            if (v111)
            {
              while (v109 == *v112)
              {
                v113 = *++v110;
                v109 = v113;
                ++v112;
                if (!v113)
                {
                  goto LABEL_236;
                }
              }
            }

            else
            {
LABEL_236:
              if (v106 < 1)
              {
                LODWORD(v114) = 0;
              }

              else
              {
                memcpy(__dst, a2, v106);
                LODWORD(v114) = v170;
              }

              v115 = *(v110 + 1);
              if (v115)
              {
                v116 = (v110 + 2);
                v114 = v106 & ~(v106 >> 31);
                do
                {
                  __dst[v114++] = v115;
                  v117 = *v116++;
                  v115 = v117;
                }

                while (v117);
              }

              v114 = v114;
              do
              {
                v118 = *v112++;
                __dst[v114++] = v118;
              }

              while (v118);
              v119 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
              v15 = v119;
              if ((v119 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

              if (v119)
              {
                *(a1 + 652) = 1;
                v120 = __dst;
              }

              else
              {
                v120 = 0;
              }

              v23 = (*(a1 + 624))(*(a1 + 608), v120);
              if (v23 < 1)
              {
                goto LABEL_276;
              }
            }
          }
        }

        ++v106;
        v105 = v170;
      }

      while (v106 != v14);
    }

    if (v14 >= 1)
    {
      v121 = 0;
      v166 = v14 & 0x7FFFFFFF;
      v122 = -1;
      do
      {
        __na = v122 + 1;
        if (v104 >= 1)
        {
          for (m = 0; m != v104; ++m)
          {
            cdict_access(a1 + 24, m, v171);
            v124 = *&v171[0];
            v125 = SDWORD2(v171[0]);
            v126 = *&v171[0] + SDWORD2(v171[0]);
            v127 = (v126 + 20);
            v128 = (v126 + 22);
            v129 = (v126 + 20);
            do
            {
              v130 = v128;
              v131 = *v129++;
              ++v128;
            }

            while (v131);
            v132 = *v129;
            v133 = &a2[v121];
            if (v132)
            {
              while (v132 == *v133)
              {
                ++v133;
                v134 = *v130++;
                v132 = v134;
                if (!v134)
                {
                  goto LABEL_260;
                }
              }
            }

            else
            {
LABEL_260:
              if (v121)
              {
                memcpy(__dst, a2, v121);
                LODWORD(v135) = __na;
              }

              else
              {
                LODWORD(v135) = 0;
              }

              v136 = *v127;
              if (*v127)
              {
                v137 = (v124 + v125 + 21);
                v135 = v121;
                do
                {
                  __dst[v135++] = v136;
                  v138 = *v137++;
                  v136 = v138;
                }

                while (v138);
              }

              v135 = v135;
              do
              {
                v139 = *v133++;
                __dst[v135++] = v139;
              }

              while (v139);
              v140 = (*(a1 + 616))(*(a1 + 600), __dst, *(a1 + 648));
              v15 = v140;
              if ((v140 & 0x80000000) != 0)
              {
                goto LABEL_277;
              }

              if (v140)
              {
                *(a1 + 652) = 1;
                v141 = __dst;
              }

              else
              {
                v141 = 0;
              }

              v23 = (*(a1 + 624))(*(a1 + 608), v141);
              if (v23 < 1)
              {
                goto LABEL_276;
              }
            }
          }
        }

        ++v121;
        v122 = __na;
      }

      while (v121 != v166);
    }

    v15 = 1;
    goto LABEL_277;
  }

LABEL_278:
  v142 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t sugg_prepared(uint64_t a1, char *a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a4 < a3)
  {
    v9 = *a1 + 768;
    v42 = a4 - 1;
    v10 = a4;
    v11 = a7;
    v40 = a7;
    do
    {
      if (a7 >= 1)
      {
        v12 = 0;
        while (1)
        {
          v13 = (a6 + 16 * v12);
          v14 = **v13;
          v15 = &a2[v10];
          if (**v13)
          {
            v16 = *v13 + 1;
            v15 = &a2[v10];
            while (*(v9 + v14) == *v15)
            {
              ++v15;
              v17 = *v16++;
              v14 = v17;
              if (!v17)
              {
                goto LABEL_9;
              }
            }
          }

          else
          {
LABEL_9:
            if (v10 < 1)
            {
              LODWORD(v18) = 0;
            }

            else
            {
              memcpy(__dst, a2, v10);
              LODWORD(v18) = v42 + 1;
            }

            v19 = v13[1];
            v20 = *v19;
            if (*v19)
            {
              v21 = v19 + 1;
              v18 = v10 & ~(v10 >> 31);
              do
              {
                __dst[v18++] = *(v9 + v20);
                v22 = *v21++;
                v20 = v22;
              }

              while (v22);
            }

            v23 = v18;
            v18 = v18;
            do
            {
              v24 = *v15++;
              __dst[v18++] = v24;
            }

            while (v24);
            result = try_f(a1, __dst, v23, *(a1 + 648), a5);
            if (result < 1)
            {
              goto LABEL_36;
            }
          }

          if (++v12 == v11)
          {
            v26 = 0;
            while (1)
            {
              v27 = (a6 + 16 * v26);
              v28 = v27[1];
              v29 = *v28;
              v30 = &a2[v10];
              if (*v28)
              {
                v31 = v28 + 1;
                v30 = &a2[v10];
                while (*(v9 + v29) == *v30)
                {
                  ++v30;
                  v32 = *v31++;
                  v29 = v32;
                  if (!v32)
                  {
                    goto LABEL_24;
                  }
                }
              }

              else
              {
LABEL_24:
                if (v10 < 1)
                {
                  LODWORD(v33) = 0;
                }

                else
                {
                  memcpy(__dst, a2, v10);
                  LODWORD(v33) = v42 + 1;
                }

                v34 = **v27;
                if (**v27)
                {
                  v35 = *v27 + 1;
                  v33 = v10 & ~(v10 >> 31);
                  do
                  {
                    __dst[v33++] = *(v9 + v34);
                    v36 = *v35++;
                    v34 = v36;
                  }

                  while (v36);
                }

                v37 = v33;
                v33 = v33;
                do
                {
                  v38 = *v30++;
                  __dst[v33++] = v38;
                }

                while (v38);
                result = try_f(a1, __dst, v37, *(a1 + 648), a5);
                if (result < 1)
                {
                  goto LABEL_36;
                }
              }

              if (++v26 == v11)
              {
                goto LABEL_34;
              }
            }
          }
        }
      }

LABEL_34:
      ++v10;
      ++v42;
      a7 = v40;
    }

    while (v10 != a3);
  }

  result = 1;
LABEL_36:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sugg_capitalize1(uint64_t *a1, unsigned __int8 *a2, int a3, int a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  __strncpy_chk();
  __s[a3] = 0;
  if (a4)
  {
    goto LABEL_2;
  }

  v13 = *a2;
  v14 = *(v10 + 1024 + 8 * v13);
  if ((v14 & 4) != 0)
  {
    __s[0] = *(v10 + v13);
    result = try_f(a1, __s, 0, 0, a5);
    if (result < 1)
    {
      goto LABEL_3;
    }

    v13 = *a2;
    v14 = *(v10 + 1024 + 8 * v13);
  }

  if ((v14 & 2) == 0)
  {
LABEL_2:
    result = 1;
  }

  else
  {
    __s[0] = *(v10 + v13 + 256);
    LODWORD(result) = try_f(a1, __s, 0, 0, a5);
    if (result >= 1)
    {
      result = 1;
    }

    else
    {
      result = result;
    }
  }

LABEL_3:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t try_f(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, int a5)
{
  v6 = __s;
  if (a5 == 2)
  {
    v16 = strchr(__s, 32);
    if (!v16)
    {
      return 1;
    }

    v17 = v16;
    if (v16 > v6 && (LOBYTE(v18) = *(v16 - 1), strchr(try_2_words_punctu, v18)))
    {
      v18 = v18;
      *(v17 - 1) = 0;
    }

    else
    {
      v18 = 0;
    }

    v21 = *v17;
    *v17 = 0;
    v20 = (*(a1 + 616))(*(a1 + 600), v6, a4);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v22 = (*(a1 + 616))(*(a1 + 600), &v6[v17 - v6 + 1], a4);
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }

    *v17 = v21;
    if (v18)
    {
      *(v17 - 1) = v18;
    }

    v23 = 0;
    if (v20 && v22)
    {
      *(a1 + 652) = 1;
      v23 = v6;
    }

    v24 = *(a1 + 624);
    v25 = *(a1 + 608);
LABEL_50:

    return v24(v25, v23);
  }

  if (a5 != 3)
  {
    if (a5 == 4)
    {
      he_language = get_he_language(*a1);
      if (he_language == 14)
      {
        v10 = 3;
        v35 = 4;
        v13 = 10;
        v11 = 2;
        v33 = corr_typewriter_hun;
        v34 = corr_more_accents_hun;
        v12 = corr_accents_hun;
        v14 = corr_y_z_hun;
      }

      else if (he_language == 21)
      {
        v10 = 3;
        v35 = 20;
        v33 = corr_typewriter_pol;
        v34 = corr_more_accents_pol;
        v11 = 2;
        v12 = corr_accents_pol;
        v13 = 2;
        v14 = corr_y_z_pol;
      }

      else
      {
        v14 = 0;
        v12 = 0;
        v33 = 0;
        v34 = 0;
        v11 = 0;
        v13 = 0;
        v35 = 0;
        v10 = 0;
      }

      v26 = strlen(v6);
      if (v26 > 64)
      {
        return 4294966286;
      }

      v32 = v10;
      v27 = (*(a1 + 616))(*(a1 + 600), v6, a4);
      v20 = v27;
      if ((v27 & 0x80000000) == 0)
      {
        v28 = *(a1 + 16);
        if (v27 || v28 < 1)
        {
          return *(a1 + 16);
        }

        else
        {
          if ((*(a1 + 640) & 0x40) != 0)
          {
            v29 = sugg_prepared(a1, v6, v26, a3, 1, v14, v11);
            v20 = v29;
            *(a1 + 16) = v29;
            if ((v29 & 0x80000000) != 0 || !v29)
            {
              return v20;
            }

            v28 = 1;
          }

          if (*(a1 + 641))
          {
            v30 = sugg_prepared(a1, v6, v26, a3, 1, v12, v13);
            v20 = v30;
            *(a1 + 16) = v30;
            if ((v30 & 0x80000000) != 0 || !v30)
            {
              return v20;
            }

            v28 = 1;
          }

          if ((*(a1 + 641) & 2) != 0)
          {
            v31 = sugg_prepared(a1, v6, v26, a3, 1, v34, v35);
            v20 = v31;
            *(a1 + 16) = v31;
            if ((v31 & 0x80000000) != 0 || !v31)
            {
              return v20;
            }

            v28 = 1;
          }

          v20 = v28;
          if ((*(a1 + 641) & 0x40) != 0)
          {
            v20 = sugg_prepared(a1, v6, v26, a3, 1, v33, v32);
            *(a1 + 16) = v20;
          }
        }
      }

      return v20;
    }

    v19 = (*(a1 + 616))(*(a1 + 600), __s, a4);
    v20 = v19;
    if ((v19 & 0x80000000) != 0)
    {
      return v20;
    }

    if (v19)
    {
      *(a1 + 652) = 1;
    }

    else
    {
      v6 = 0;
    }

    v24 = *(a1 + 624);
    v25 = *(a1 + 608);
    v23 = v6;
    goto LABEL_50;
  }

  return suggest_1_corr();
}

uint64_t PRAltMod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v185 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 8);
  v180 = 0;
  *v179 = 0;
  v8 = *(a1 + 16);
  v174 = 0;
  v173 = 14707757;
  if (*(a2 + 20) == 5)
  {
    v9 = *(a4 + 24);
    v10 = *(v9 + 32);
    if (v10 >= 4 && (!SLstrcmp((*(v9 + 16) + (v10 - 3)), "-ci") || !SLstrcmp((*(*(a4 + 24) + 16) + *(*(a4 + 24) + 32) - 3), &v173)))
    {
      *(a3 + 2) -= 3;
      if (*(a3 + 6))
      {
        *(a3 + 6) -= 3;
      }
    }
  }

  v11 = *(a3 + 24);
  if (!v11)
  {
    goto LABEL_362;
  }

  v160 = *(v11 + 18);
  if (!*(v11 + 18) || !*(a2 + 120))
  {
    goto LABEL_362;
  }

  v12 = *(a4 + 16);
  v13 = *(v8 + 64);
  if (v12 == v13)
  {
    goto LABEL_17;
  }

  v14 = *(v12 + 72);
  if (!v14)
  {
LABEL_18:
    v171 = 1;
    goto LABEL_19;
  }

  if ((*(v14 + 4) & 0x7080) == 0)
  {
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  if (v14 == v13 || (v15 = *(v14 + 72)) == 0)
  {
    v171 = 0;
  }

  else
  {
    v171 = 0;
    v155 = *(v14 + 72);
    if ((*(v15 + 4) & 0x7080) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_19:
  v155 = 0;
LABEL_20:
  v165 = v14;
  v138 = a3;
  v150 = a4;
  v16 = *(*(a4 + 24) + 80);
  if (!v16 || (*(v16 + 4) & 0x7080) == 0)
  {
    v16 = 0;
  }

  v139 = v16;
  v17 = 0;
  v161 = 0;
  v18 = 0;
  memset(v181, 0, sizeof(v181));
  v177 = 0;
  v178 = 0;
  v175 = 0;
  v176 = 0;
  v159 = v11;
  while (2)
  {
    while (1)
    {
      *v168 = *v11;
      v162 = *(*(v11 + 8) + 2 * v17);
      v19 = (*v11 + v162);
      v20 = *(a2 + 8);
      v21 = *v19;
      if ((*(v20 + 4 * v21) & 0x60000040) != 0)
      {
        v22 = 0;
        v23 = (v19 - 1);
        v24 = 1;
        v25 = (*v11 + v162);
        while (1)
        {
          if (v21 >= 45)
          {
            if (v21 > 45)
            {
              if (v21 == 46)
              {
                v24 = 0;
                ++v22;
                goto LABEL_50;
              }

              if (v21 == 133 || v21 == 151)
              {
LABEL_42:
                v24 = 0;
                goto LABEL_50;
              }
            }

            else if (*(v25 - 1) == 45)
            {
              --v22;
              goto LABEL_50;
            }

            goto LABEL_29;
          }

          if (v21 > 31)
          {
            break;
          }

          if (!v21)
          {
            v25 = 0;
            goto LABEL_50;
          }

          if (v21 == 9)
          {
            goto LABEL_42;
          }

LABEL_29:
          if ((*(v20 + 4 * v21) & 0x60000040) == 0)
          {
            v24 = 0;
          }

          v26 = *++v25;
          v21 = v26;
          ++v22;
          ++v23;
        }

        if (v21 != 32)
        {
          if (v21 == 44)
          {
            goto LABEL_42;
          }

          goto LABEL_29;
        }

        do
        {
          v28 = *++v23;
          v27 = v28;
        }

        while (v28 == 32);
        v25 = v27 ? v23 : 0;
LABEL_50:
        v29 = *(a2 + 128);
        *(v29 + 1308) = 0;
        *(v29 + 1408) = 1;
        *(v29 + 1339) = 0;
        v30 = (v22 & 0xFFC0) != 0 ? 64 : v22;
        __strncpy_chk();
        v184[v30] = 0;
        v31 = PRIcs(a1, a2, 0, 0, 0, v184, 0, v29, 3, 0);
        if (v31 != 11)
        {
          break;
        }
      }

LABEL_247:
      ++v17;
      v11 = v159;
      if (v17 == v160)
      {
        if (v161)
        {
          goto LABEL_361;
        }

        goto LABEL_362;
      }
    }

    __s = v19;
    if (v31 == 8)
    {
      goto LABEL_365;
    }

    v32 = *(*(v29 + 3184) + 288);
    v33 = *v32;
    v34 = v32[6] & 0xF | (((v33 >> 8) & 3) << 6) | (v33 >> 6) & 0x30;
    v35 = *(a2 + 20);
    if (v35 != 9)
    {
      if (v35 == 8)
      {
        v36 = 0;
        if ((v33 & 0x10) != 0)
        {
          v37 = 15;
          goto LABEL_85;
        }
      }

      else
      {
        v36 = 0;
      }

      goto LABEL_86;
    }

    v38 = *(v29 + 1547);
    v36 = 1;
    if (v38 <= 0x66)
    {
      if (*(v29 + 1547) > 0x52u)
      {
        if (v38 != 83)
        {
          if (v38 != 88 && v38 != 90)
          {
            goto LABEL_86;
          }

          goto LABEL_79;
        }

LABEL_81:
        v36 = 1;
        if ((*(v20 + 4 * *(v29 + 1548)) & 0x60000040) == 0 || (*(v20 + 4 * *(v29 + 1548)) & 0x10000000) != 0)
        {
          goto LABEL_86;
        }

        goto LABEL_83;
      }

      if (v38 != 71)
      {
        if (v38 != 80)
        {
          goto LABEL_86;
        }

        goto LABEL_76;
      }

LABEL_78:
      if ((*(v29 + 1548) | 0x20) == 0x6E)
      {
        goto LABEL_79;
      }

      goto LABEL_80;
    }

    if (*(v29 + 1547) <= 0x72u)
    {
      if (v38 == 103)
      {
        goto LABEL_78;
      }

      if (v38 != 112)
      {
        goto LABEL_86;
      }

LABEL_76:
      if ((*(v29 + 1548) | 0x20) == 0x73)
      {
        goto LABEL_79;
      }

LABEL_80:
      v36 = 1;
      goto LABEL_86;
    }

    if (v38 == 115)
    {
      goto LABEL_81;
    }

    if (v38 != 120 && v38 != 122)
    {
      goto LABEL_86;
    }

LABEL_79:
    v36 = 1;
LABEL_83:
    if ((v33 & 0x400) != 0)
    {
      v37 = 256;
LABEL_85:
      v34 |= v37;
    }

LABEL_86:
    v39 = *(v29 + 1547) | 0x20;
    if (v39 == 101)
    {
      v34 |= 0x200u;
    }

    if (v39 == 105)
    {
      v40 = v34 | 0x400;
    }

    else
    {
      v40 = v34;
    }

    v170 = *(v29 + 1614);
    if (*(v29 + 1614))
    {
      v41 = strlen((v29 + 1614));
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v24 = 1;
LABEL_93:
      v47 = v165;
      goto LABEL_94;
    }

    v41 = *(v29 + 1612);
    if (!v24)
    {
      v167 = 0;
      v149 = 0;
      v120 = 0;
      goto LABEL_268;
    }

    if (!v25)
    {
      v43 = v139;
      if (!v139)
      {
        v42 = 0;
        v44 = 0;
        v45 = 0;
        v24 = 1;
        goto LABEL_307;
      }

      v47 = v165;
      if ((*(v139 + 94) & 2) != 0)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v24 = 1;
        v46 = v40;
        v40 = 0;
        goto LABEL_94;
      }

      v128 = *(v139 + 98);
      if (!v36 || !*(v139 + 32))
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v24 = 1;
LABEL_310:
        v46 = v40;
        v40 = (v128 >> 2) & 0xC0 | (v128 >> 6) & 0x30;
        goto LABEL_94;
      }

      v129 = *(v139 + 16);
      v130 = *v129;
      v24 = 1;
      if (v130 > 0x66)
      {
        if (*v129 > 0x72u)
        {
          if (v130 != 115)
          {
            if (v130 != 120 && v130 != 122)
            {
              goto LABEL_348;
            }

            goto LABEL_344;
          }

          goto LABEL_350;
        }

        if (v130 != 103)
        {
          if (v130 != 112)
          {
LABEL_348:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            goto LABEL_310;
          }

          goto LABEL_334;
        }
      }

      else
      {
        if (*v129 > 0x52u)
        {
          if (v130 != 83)
          {
            if (v130 != 88 && v130 != 90)
            {
              goto LABEL_348;
            }

            goto LABEL_344;
          }

LABEL_350:
          v43 = 0;
          if ((*(v20 + 4 * v129[1]) & 0x60000040) == 0 || (*(v20 + 4 * v129[1]) & 0x10000000) != 0 || (v128 & 0x400) == 0)
          {
            v42 = 0;
            v44 = 0;
            v45 = 0;
            goto LABEL_310;
          }

          goto LABEL_353;
        }

        if (v130 != 71)
        {
          if (v130 != 80)
          {
            goto LABEL_348;
          }

LABEL_334:
          if ((v129[1] | 0x20) != 0x73)
          {
            goto LABEL_345;
          }

LABEL_344:
          if ((v128 & 0x400) == 0)
          {
LABEL_345:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            goto LABEL_310;
          }

LABEL_353:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = v40;
          v40 = (v128 >> 2) & 0xC0 | (v128 >> 6) & 0x30 | 0x100;
          goto LABEL_94;
        }
      }

      if ((v129[1] | 0x20) != 0x6E)
      {
        goto LABEL_345;
      }

      goto LABEL_344;
    }

    v117 = *v25;
    if ((*(v20 + 4 * v117) & 0x60000040) == 0)
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v24 = 0;
LABEL_307:
      v46 = v40;
      v40 = 0;
      goto LABEL_93;
    }

    v118 = 0;
    v167 = v25 - __s;
    v158 = *(v29 + 1612);
    while (1)
    {
      if (v117 <= 0x2Eu)
      {
        if (v117 == 45)
        {
          if (*(v25 - 1) == 45)
          {
            v134 = v118 - 1;
            goto LABEL_297;
          }

          goto LABEL_261;
        }

        if (((1 << v117) & 0x100100000201) != 0)
        {
          goto LABEL_296;
        }

        if (v117 == 46)
        {
          break;
        }
      }

      if (v117 == 133 || v117 == 151)
      {
LABEL_296:
        v134 = v118;
        goto LABEL_297;
      }

LABEL_261:
      v184[v118] = v117;
      v119 = *++v25;
      LOBYTE(v117) = v119;
      ++v118;
    }

    v184[v118] = 46;
    v134 = v118 + 1;
LABEL_297:
    v149 = v134;
    v184[v134] = 0;
    v131 = PRIcs(a1, a2, 0, 0, 0, v184, 0, v29, 3, 0);
    if (v131 != 11)
    {
      if (v131 != 8)
      {
        if (*(v29 + 1614))
        {
          v167 = 0;
          v149 = 0;
          v120 = 0;
          v35 = *(a2 + 20);
          v47 = v165;
          v41 = v158;
          goto LABEL_269;
        }

        v132 = *v32;
        v120 = v32[6] & 0xF | (((v132 >> 8) & 3) << 6) | (v132 >> 6) & 0x30;
        v35 = *(a2 + 20);
        v41 = v158;
        if (v35 == 9)
        {
          v133 = *(v29 + 1547);
          if (v133 <= 0x66)
          {
            if (*(v29 + 1547) > 0x52u)
            {
              if (v133 != 83)
              {
                if (v133 != 88 && v133 != 90)
                {
                  goto LABEL_268;
                }

LABEL_347:
                v47 = v165;
LABEL_358:
                if ((v132 & 0x400) != 0)
                {
                  v120 |= 0x100u;
                }

LABEL_269:
                v44 = 0;
                if (v35 == 12 && v25)
                {
                  v121 = v25 - 1;
                  v44 = v25 - 1 - (v168[0] + v162);
                  v122 = v25 + 1;
                  do
                  {
                    v123 = v122;
                    v125 = *++v121;
                    v124 = v125;
                    ++v44;
                    ++v122;
                  }

                  while (v125 == 32);
                  if ((*(v20 + 4 * v124) & 0x60000040) != 0)
                  {
                    v126 = 0;
                    while (1)
                    {
                      if (v124 <= 0x2E)
                      {
                        if (v124 == 45)
                        {
                          if (*(v123 - 2) == 45)
                          {
                            goto LABEL_301;
                          }

                          goto LABEL_282;
                        }

                        if (((1 << v124) & 0x500100000201) != 0)
                        {
                          goto LABEL_301;
                        }
                      }

                      if (v124 == 133 || v124 == 151)
                      {
LABEL_301:
                        v46 = v40;
                        v40 = v120;
                        v42 = v167;
                        v43 = v149;
                        v45 = v126;
                        goto LABEL_94;
                      }

LABEL_282:
                      v184[v126++] = v124;
                      v127 = *v123++;
                      v124 = v127;
                    }
                  }

                  v44 = 0;
                  v45 = 0;
                }

                else
                {
                  v45 = 0;
                }

                v46 = v40;
                v40 = v120;
                v42 = v167;
                v43 = v149;
                goto LABEL_94;
              }

LABEL_356:
              v135 = *(v20 + 4 * *(v29 + 1548));
              if ((v135 & 0x60000040) == 0)
              {
                goto LABEL_268;
              }

              v47 = v165;
              if ((v135 & 0x10000000) != 0)
              {
                goto LABEL_269;
              }

              goto LABEL_358;
            }

            if (v133 != 71)
            {
              if (v133 != 80)
              {
                goto LABEL_268;
              }

LABEL_341:
              if ((*(v29 + 1548) | 0x20) != 0x73)
              {
                goto LABEL_268;
              }

              goto LABEL_347;
            }

            goto LABEL_346;
          }

          if (*(v29 + 1547) <= 0x72u)
          {
            if (v133 != 103)
            {
              if (v133 != 112)
              {
                goto LABEL_268;
              }

              goto LABEL_341;
            }

LABEL_346:
            if ((*(v29 + 1548) | 0x20) != 0x6E)
            {
              goto LABEL_268;
            }

            goto LABEL_347;
          }

          if (v133 == 115)
          {
            goto LABEL_356;
          }

          if (v133 == 120 || v133 == 122)
          {
            goto LABEL_347;
          }
        }

LABEL_268:
        v47 = v165;
        goto LABEL_269;
      }

LABEL_365:
      v137 = *(a1 + 32);
      *v137 = 0xDC000000A0;
      *(v137 + 8) = 900;
      result = 220;
      goto LABEL_363;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v24 = 0;
    v46 = v40;
    v40 = 0;
    v47 = v165;
    v41 = v158;
LABEL_94:
    v48 = 0;
    v49 = (v40 & 0xF) != 0;
    v153 = (v40 >> 8) & 1 | (2 * v49) | (v40 >> 2) & 0x3C;
    v144 = (v40 >> 8) & 1 | (2 * v49) & 0xF | (v40 >> 2) & 0xC;
    v145 = (v40 >> 2) & 0x30;
    v50 = (v46 & 0xF) != 0;
    v154 = (v46 >> 8) & 1 | (2 * v50) | (v46 >> 2) & 0x3C;
    v142 = v46;
    v143 = v40 & 0xC0;
    v140 = (v46 >> 8) & 1 | (2 * v50) & 0xF | (v46 >> 2) & 0xC;
    v151 = v46 & 0xF;
    v152 = v40 & 0x30;
    v51 = 1;
    v146 = 1 << ((v46 & 0xF) - 1);
    v147 = (v46 >> 2) & 0x30;
    v141 = v46 & 0x600;
    v163 = v45;
    v157 = v45 + v44;
    v148 = v43;
    v156 = v43 + v42;
    *v169 = v41;
    v52 = v42;
    v166 = v42;
    while (1)
    {
      v53 = *(a2 + 20);
      if (v53 == 12)
      {
        if (v48 || v163)
        {
          if (v48 == 2)
          {
            goto LABEL_117;
          }

          if (v48 == 3)
          {
LABEL_103:
            if ((v171 & 1) == 0)
            {
              goto LABEL_116;
            }

LABEL_117:
            v48 = 6;
            goto LABEL_118;
          }
        }

        else
        {
          v48 = 1;
        }
      }

      else
      {
        v54 = v48;
        if ((v48 & 0xFE) == 0)
        {
          v48 = 1;
        }

        if (v54 == 3 && v53 == 8)
        {
          goto LABEL_103;
        }
      }

      v55 = v48 == 1 && v52 == 0;
      if (v55)
      {
        v55 = v53 == 12;
        v56 = v171;
        if (v55)
        {
          v48 = 1;
        }

        else
        {
          v56 = 1;
          v48 = 2;
        }

        if ((v56 & 1) == 0)
        {
LABEL_116:
          v18 = *(v47 + 32);
          v57 = *(v47 + 16);
          __strncpy_chk();
          v183[v18] = 0;
          SLfun(v183, 0, (v18 - 1), &v180 + 1, &v180);
          v48 = 6;
        }
      }

LABEL_118:
      if (v170)
      {
        if ((v48 & 0xF8) == 0)
        {
          v48 = 7;
        }
      }

      else
      {
        v58 = v171;
        if (v48 <= 1u)
        {
          v58 = 0;
        }

        if (v48 > 6u || (v58 & 1) != 0)
        {
          goto LABEL_247;
        }
      }

      if (v48 <= 4u)
      {
        break;
      }

      if (v48 > 6u)
      {
        if (v48 == 7)
        {
          if (v171)
          {
            goto LABEL_239;
          }

          v74 = *(v47 + 32);
          v75 = *(v47 + 16);
          __strncpy_chk();
          v183[v74] = 32;
          v76 = (v74 + 1);
        }

        else
        {
          v76 = 0;
        }

        if (v169[0])
        {
          v85 = &v183[v76];
          v86 = *v169;
          v87 = __s;
          do
          {
            v88 = *v87++;
            *v85++ = ((*(v7 + 4 * v88) >> 25) & 0x20) + v88;
            --v86;
          }

          while (v86);
        }

        v18 = (v169[0] + v76);
        v183[(LOWORD(v169[0]) + v76)] = 0;
        SLfun(v183, 0, (LOWORD(v169[0]) + v76 - 1), &v180 + 1, &v180);
        result = PRAltHsh(HIWORD(v180), v180, v18, v48, a1, a2, v179, v182);
        if (result)
        {
          goto LABEL_363;
        }

        if (*v179)
        {
          v89 = **v179;
          v90 = *(*v179 + 1);
          if (*(a2 + 20) == 9)
          {
            v91 = *(*v179 + 2);
            v92 = (*v179 + 3);
            *v179 += 3;
            v93 = v153;
            if ((v145 & v89) == 0x30)
            {
              v93 = v90 & 0x30 | v144;
            }

            if ((~(v89 & v93) & 0xC) == 0)
            {
              v94 = v90 & 0xC;
              if ((v90 & 0xC) != 0 && v94 != 12)
              {
                v93 = v93 & 0xFFFFFFF3 | v94;
              }

              else if (v47 && v48 == 6 && (v95 = *(v47 + 98), (v95 & 0x10) != 0) && !(v95 & 0x20 | v90 & 1))
              {
                v93 &= 0xFFFFFFF3;
              }

              else
              {
                v93 &= ~8u;
              }
            }
          }

          else
          {
            v92 = (*v179 + 2);
            *v179 += 2;
            v91 = v90;
            v93 = v153;
          }

          if (v91)
          {
            v112 = v93 & v89;
            while (1)
            {
              v113 = *v92;
              if (v112 == v113)
              {
                break;
              }

              ++v92;
              if (v113)
              {
                  ;
                }
              }

              if (!--v91)
              {
                goto LABEL_231;
              }
            }

            v84 = (v92 + 1);
            *v179 = v92 + 1;
LABEL_263:
            result = PRSetTmpAlt(v169[0], 0, 0, 0, 0, __s, v84, v48, v17, v155, v47, v181, &v177, &v175, &v174, a1, a2);
LABEL_264:
            v59 = v18;
            if (result)
            {
              goto LABEL_363;
            }

            goto LABEL_265;
          }

LABEL_231:
          *v179 = v92;
        }
      }

      else
      {
        if (v48 != 5)
        {
          goto LABEL_187;
        }

        v65 = *(v47 + 32);
        v18 = v65;
        v66 = *(v47 + 16);
        __strncpy_chk();
        v183[v65] = 0;
        SLfun(v183, 0, (v65 - 1), &v180 + 1, &v180);
        result = PRAltHsh(HIWORD(v180), v180, v65, 5, a1, a2, v179, v182);
        if (result)
        {
          goto LABEL_363;
        }

        if (!*v179)
        {
          goto LABEL_213;
        }

        v52 = v166;
        if (v151)
        {
          v68 = **v179;
          if (((*(*v179 + 1) | (v68 << 8)) & v146) != 0)
          {
            v69 = v68;
            v70 = (v68 >> 6) & 1;
            v71 = v141 ? 0 : v70;
            v72 = (v142 & 0x200) == 0 && v69 < 0;
            v73 = v72;
            if ((v71 & 1) == 0 && !v73)
            {
              *v179 += 2;
              result = PRSetTmpAlt(v169[0], 0, 0, 0, 0, __s, *v179, 5u, v17, v155, v47, v181, &v177, &v175, &v174, a1, a2);
              goto LABEL_264;
            }
          }
        }
      }

LABEL_239:
      if (++v48 > 8u || !v51)
      {
        goto LABEL_247;
      }
    }

    if (v48 > 2u)
    {
      if (v48 != 3)
      {
        if (!v155)
        {
          goto LABEL_239;
        }

        v96 = *(v155 + 32);
        v97 = *(v155 + 16);
        __strncpy_chk();
        v183[v96] = 32;
        strncpy(&v183[(v96 + 1)], *(v165 + 16), *(v165 + 32));
        v98 = *(v165 + 32);
        v99 = (v98 + v96 + 1);
        v183[(v98 + v96 + 1)] = 0;
        SLfun(v183, 0, (v98 + v96), &v180 + 1, &v180);
        v18 = v99;
        v47 = v165;
LABEL_187:
        result = PRAltHsh(HIWORD(v180), v180, v18, v48, a1, a2, v179, v182);
        if (result)
        {
          goto LABEL_363;
        }

        v100 = *(a2 + 20);
        if (*v179)
        {
          v101 = **v179;
          v102 = *(*v179 + 1);
          v52 = v166;
          if (v100 == 9)
          {
            v103 = *(*v179 + 2);
            v104 = (*v179 + 3);
            *v179 += 3;
            v105 = v154;
            if ((v147 & v101) == 0x30)
            {
              if (v143 == 192 || (v105 = v140 | (v143 >> 2), !v143))
              {
                v105 = v102 & 0x30 | v140;
              }
            }

            if ((~(v101 & v105) & 0xC) == 0)
            {
              if (v152 && v152 != 48)
              {
                v105 = v105 & 0xFFFFFFF3 | (v152 >> 2);
              }

              else
              {
                v106 = v102 & 0xC;
                if ((v102 & 0xC) != 0 && v106 != 12)
                {
                  v105 = v105 & 0xFFFFFFF3 | v106;
                }

                else if (v155 && v48 == 6 && (v107 = *(v155 + 98), (v107 & 0x20) == 0) && ((v102 & 1) == 0 || (v107 & 0x40) != 0) && (v107 & 0x30) != 0 && (v107 & 0x30) != 0x30)
                {
                  v105 &= 0xFFFFFFF3;
                }

                else
                {
                  v105 &= ~8u;
                }
              }
            }
          }

          else
          {
            v104 = (*v179 + 2);
            *v179 += 2;
            v103 = v102;
            v105 = v154;
          }

          if (v103)
          {
            v109 = v105 & v101;
            while (1)
            {
              v110 = *v104;
              if (v109 == v110)
              {
                break;
              }

              ++v104;
              if (v110)
              {
                  ;
                }
              }

              if (!--v103)
              {
                goto LABEL_223;
              }
            }

            *v179 = v104 + 1;
            result = PRSetTmpAlt(v169[0], 0, 0, 0, 0, __s, v104 + 1, v48, v17, v155, v47, v181, &v177, &v175, &v174, a1, a2);
            if (result)
            {
              goto LABEL_363;
            }

            v51 = 0;
            v100 = *(a2 + 20);
            v161 = 1;
          }

          else
          {
LABEL_223:
            *v179 = v104;
          }
        }

        else
        {
          v52 = v166;
        }

        v115 = v100 == 12;
        v116 = v161;
        if (v115)
        {
          v116 = 1;
        }

        v161 = v116;
        if (v115)
        {
          v51 = 0;
        }

        goto LABEL_239;
      }

      if (!v24 || !v152 || v152 == 48)
      {
        goto LABEL_239;
      }

      goto LABEL_165;
    }

    if (v48 >= 2u)
    {
      v77 = *(v47 + 32);
      v78 = *(v47 + 16);
      __strncpy_chk();
      v183[v77] = 32;
      v79 = v77 + 1;
      if (v169[0])
      {
        v80 = &v183[v79];
        v81 = *v169;
        v82 = __s;
        do
        {
          v83 = *v82++;
          *v80++ = ((*(v7 + 4 * v83) >> 25) & 0x20) + v83;
          --v81;
        }

        while (v81);
      }

      v18 = (v79 + v169[0]);
      SLfun(v183, 0, (v77 + LOWORD(v169[0])), &v180 + 1, &v180);
      v52 = v166;
LABEL_165:
      result = PRAltHsh(HIWORD(v180), v180, v18, v48, a1, a2, v179, v182);
      if (result)
      {
        goto LABEL_363;
      }

      v84 = *v179;
      if (*v179)
      {
        goto LABEL_263;
      }

      goto LABEL_239;
    }

    if (v48)
    {
      v59 = v156;
    }

    else
    {
      v59 = v157;
    }

    if (v59)
    {
      v60 = v59;
      v61 = v183;
      v62 = v59;
      v63 = __s;
      do
      {
        v64 = *v63++;
        *v61++ = ((*(v7 + 4 * v64) >> 25) & 0x20) + v64;
        --v62;
      }

      while (v62);
    }

    else
    {
      v60 = 0;
    }

    v183[v60] = 0;
    SLfun(v183, 0, (v59 - 1), &v180 + 1, &v180);
    result = PRAltHsh(HIWORD(v180), v180, v59, 2 * (v48 != 0), a1, a2, v179, v182);
    if (result)
    {
      goto LABEL_363;
    }

    v108 = *v179;
    if (!*v179)
    {
      v18 = v59;
      v47 = v165;
      goto LABEL_239;
    }

    if (v48 <= 1u && !SLstrcmp(*v179, *(*(v150 + 16) + 16)))
    {
      v18 = v59;
      v47 = v165;
LABEL_213:
      v52 = v166;
      goto LABEL_239;
    }

    result = PRSetTmpAlt(v169[0], v166, v148, v44, v163, __s, v108, v48, v17, v155, v165, v181, &v177, &v175, &v174, a1, a2);
    if (result)
    {
      goto LABEL_363;
    }

LABEL_265:
    ++v17;
    v161 = 1;
    v18 = v59;
    v11 = v159;
    if (v17 != v160)
    {
      continue;
    }

    break;
  }

LABEL_361:
  result = PRProcTmpAlts(v155, v165, v181, &v177, &v175, v174, v138, a1);
  if (!result)
  {
LABEL_362:
    result = 0;
  }

LABEL_363:
  v136 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PRAltHsh(int a1, int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t a6, char **a7, char *a8)
{
  *a7 = 0;
  v8 = *(a6 + 120);
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  v40 = 0;
  v11 = *(v8 + 2);
  v38 = *(v8 + 3);
  v12 = *(a6 + 40);
  v13 = *v8;
  v14 = *(v8 + 1);
  v15 = v8[1];
  v16 = v8[4];
  v17 = a2 % v13;
  v36 = a3;
  v37 = *(v8 + 3);
  v18 = 2 * (v14 & a1);
  v19 = (v14 & a1) + (v14 >> 1) + v13;
  v35 = a4;
  v33 = a2;
  v34 = v18;
  while (1)
  {
    v20 = 4 * v17;
    v21 = *(v11 + v20);
    v22 = (v11 + v20);
    v23 = v22[1] | (v21 << 8);
    if (!v23)
    {
LABEL_17:
      v27 = 0;
LABEL_18:
      result = 0;
      *a7 = v27;
      return result;
    }

    if (v23 == a1)
    {
      break;
    }

LABEL_14:
    v17 += v19;
    do
    {
      v17 -= v13;
    }

    while (v17 >= v13);
    v26 = v15 >= v10++;
    v19 += v18;
    if (!v26)
    {
      goto LABEL_17;
    }
  }

  v24 = v22[3] | (v22[2] << 8);
  if (v24 < v16)
  {
    v25 = v38;
    goto LABEL_11;
  }

  if (SLSeek(v12, v37 + v24, 0) != 8)
  {
    if (SLFRead(v12, 128, a8, &v40) == 8 || v40 <= 2)
    {
      v29 = *(a5 + 32);
      v30 = 0xDC00000070;
      goto LABEL_22;
    }

    v24 = 0;
    v25 = a8;
    v18 = v34;
    a4 = v35;
LABEL_11:
    if (v25[v24] == a4 && v25[v24 + 1] == v36 && v25[(v24 + 2)] == v33)
    {
      v27 = &v25[(v24 + 3)];
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v29 = *(a5 + 32);
  v30 = 0xDC0000006FLL;
LABEL_22:
  *v29 = v30;
  *(v29 + 8) = 920;
  return 220;
}

uint64_t PRSetTmpAlt(int a1, int a2, int a3, int a4, int a5, char *__s, const char *a7, unsigned int a8, unsigned __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _WORD *a15, uint64_t a16, uint64_t a17)
{
  v22 = *(a17 + 8);
  v70 = strlen(__s);
  v23 = strlen(a7);
  v24 = 0;
  if (a8 != 4 && a10)
  {
    v24 = *(a10 + 48) + *(a10 + 32);
  }

  if (a11 && a8 <= 8 && ((1 << a8) & 0x103) != 0)
  {
    v24 += *(a11 + 32) + *(a11 + 48);
  }

  v25 = __s;
  if (a8 < 2)
  {
    goto LABEL_25;
  }

  v25 = __s;
  if (a8 == 8)
  {
    goto LABEL_25;
  }

  if (a8 != 4)
  {
    *(a14 + 2 * a9) = 1;
    if (!*a15)
    {
      *a15 = 1;
    }

    v25 = *(a11 + 24);
LABEL_25:
    v29 = 0;
    v28 = *(v22 + 4 * *v25);
    v34 = 1;
    goto LABEL_26;
  }

  *(a14 + 2 * a9) = 2;
  if (*a15 <= 1u)
  {
    *a15 = 2;
  }

  v26 = *(a10 + 24);
  v27 = *v26;
  v28 = *(v22 + 4 * *v26);
  v29 = 0;
  if (*v26)
  {
    v30 = v26 + 1;
    do
    {
      v31 = *(v22 + 4 * v27);
      if ((v31 & 0x60000040) != 0)
      {
        ++v29;
      }

      v32 = *v30++;
      v27 = v32;
      if (v32)
      {
        v33 = (v31 & 0x20000000) == 0;
      }

      else
      {
        v33 = 0;
      }
    }

    while (v33);
    v34 = (v31 & 0x20000000) == 0;
LABEL_26:
    v35 = (v28 >> 30) & 1;
    if (a8 <= 8 && ((1 << a8) & 0x103) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_73;
  }

  v35 = (v28 >> 30) & 1;
  v34 = 1;
LABEL_73:
  v48 = *(a11 + 24);
  v49 = *v48;
  if (*v48)
  {
    v50 = !v34;
  }

  else
  {
    v50 = 1;
  }

  if (!v50)
  {
    v51 = v48 + 1;
    do
    {
      v52 = *(v22 + 4 * v49);
      if ((v52 & 0x60000040) != 0)
      {
        ++v29;
      }

      v53 = *v51++;
      v49 = v53;
      if (v53)
      {
        v54 = (v52 & 0x20000000) == 0;
      }

      else
      {
        v54 = 0;
      }
    }

    while (v54);
    if ((v52 & 0x20000000) != 0)
    {
      v34 = 0;
    }
  }

LABEL_28:
  if (a8 - 7 <= 0xFFFFFFFC)
  {
    if (a1 && v34)
    {
      v36 = __s + 1;
      do
      {
        v37 = *(v22 + 4 * *(v36 - 1));
        if ((v37 & 0x60000040) != 0)
        {
          ++v29;
        }

        if (v36 >= &__s[a1])
        {
          break;
        }

        ++v36;
      }

      while ((v37 & 0x20000000) == 0);
      if ((v37 & 0x20000000) != 0)
      {
        v34 = 0;
      }
    }

    if (a8 <= 1)
    {
      if (a3 && v34)
      {
        v38 = &__s[a2 + 1];
        do
        {
          v39 = *(v22 + 4 * *(v38 - 1));
          if ((v39 & 0x60000040) != 0)
          {
            ++v29;
          }

          if (v38 >= &__s[a2 + a3])
          {
            break;
          }

          ++v38;
        }

        while ((v39 & 0x20000000) == 0);
        if ((v39 & 0x20000000) != 0)
        {
          v34 = 0;
        }
      }

      if (!a8)
      {
        if (!a5 || !v34)
        {
          v45 = a5;
          v44 = a12;
          v42 = (v29 & 0xFFFE) != 0 && v34;
          goto LABEL_90;
        }

        v40 = &__s[a4 + 1];
        do
        {
          v41 = *(v22 + 4 * *(v40 - 1));
          if ((v41 & 0x60000040) != 0)
          {
            ++v29;
          }

          if (v40 >= &__s[a4 + a5])
          {
            break;
          }

          ++v40;
        }

        while ((v41 & 0x20000000) == 0);
        if ((v41 & 0x20000000) != 0)
        {
          LOBYTE(v34) = 0;
        }
      }
    }

    v42 = (v29 & 0xFFFE) != 0 && v34;
    if (a8 - 4 < 3)
    {
      v43 = 0;
      v44 = a12;
      goto LABEL_92;
    }

    if (a8 == 1)
    {
      v44 = a12;
      v46 = a2;
      v45 = a3;
LABEL_91:
      v43 = v45 + v46;
      goto LABEL_92;
    }

    if (a8)
    {
      v44 = a12;
      if (a7[v23 - 1] == 39)
      {
        do
        {
          v43 = a1;
          v47 = __s[a1++];
        }

        while (v47 == 32);
      }

      else
      {
        v43 = a1;
      }

      goto LABEL_92;
    }

    v45 = a5;
    v44 = a12;
LABEL_90:
    v46 = a4;
    goto LABEL_91;
  }

  v44 = a12;
  v43 = 0;
  v42 = (v29 & 0xFFFE) != 0 && v34;
LABEL_92:
  v55 = v23;
  v56 = malloc_type_malloc((v70 + v23 + v24 - v43 + 2), 0x332DD651uLL);
  *(v44 + 8 * a9) = v56;
  if (v56)
  {
    LOBYTE(v57) = *a7;
    if (*a7)
    {
      v58 = 0;
      do
      {
        if (v58)
        {
          v59 = 0;
        }

        else
        {
          v59 = v35;
        }

        if ((v42 || v59) && (*(v22 + 4 * v57) & 0x20000000) != 0)
        {
          LOBYTE(v57) = v57 - 32;
        }

        v56[v58] = v57;
        v57 = a7[++v58];
      }

      while (v57);
      v56 += v58;
    }

    if (a7[v55 - 1] != 39 && (a8 - 9 > 0xFFFFFFFD || !v43))
    {
      *v56++ = 32;
    }

    v60 = __s[v43];
    if (v60)
    {
      v61 = &__s[v43 + 1];
      do
      {
        *v56++ = v60;
        v62 = *v61++;
        v60 = v62;
      }

      while (v62);
    }

    v63 = 0;
    *v56 = 0;
    v64 = (v56 - *(v44 + 8 * a9));
    *(a13 + 2 * a9) = v56 - *(v44 + 8 * a9);
  }

  else
  {
    v65 = *(a16 + 32);
    *v65 = 0xDC00000078;
    *(v65 + 8) = 880;
    return 220;
  }

  return v63;
}

uint64_t PRProcTmpAlts(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a7 + 24);
  v11 = *(v10 + 18);
  if (!a6)
  {
    if (*(v10 + 18))
    {
      v14 = 0;
      v12 = 0;
      goto LABEL_10;
    }

LABEL_34:
    v28 = 1;
LABEL_35:
    *(v10 + 18) = 0;
    *(v10 + 24) = 0;
    if (*(v10 + 16))
    {
      v29 = 0;
      v30 = *(v10 + 8);
      do
      {
        *(v30 + 2 * v29++) = -1;
      }

      while (v29 < *(v10 + 16));
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (a6 == 2)
  {
    v12 = *(a1 + 48) + *(a1 + 32);
    v13 = a1;
  }

  else
  {
    v12 = 0;
    v13 = a2;
  }

  v14 = *(a2 + 48) + *(a2 + 32);
  v15 = *(v13 + 8);
  *(a7 + 2) += *a7 - v15;
  *a7 = v15;
  if (*(a7 + 6))
  {
    *(a7 + 6) = *(a7 + 6) - v15 + *(a7 + 4);
    *(a7 + 4) = v15;
  }

  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_10:
  v16 = 0;
  v17 = v12;
  v18 = v14;
  v19 = v12 + v14 + 1;
  do
  {
    if (!a3[v16])
    {
      v20 = *v10;
      v21 = *(*(v10 + 8) + 2 * v16);
      v22 = strlen((*v10 + v21));
      *(a4 + 2 * v16) = v22;
      v23 = malloc_type_malloc(v19 + v22, 0x810CC398uLL);
      a3[v16] = v23;
      if (!v23)
      {
        v33 = *(a8 + 32);
        *v33 = 0xDC00000078;
        *(v33 + 8) = 860;
        return 220;
      }

      strcpy(v23, &v20[v21]);
    }

    ++v16;
  }

  while (v11 != v16);
  if (a6)
  {
    v24 = 0;
    do
    {
      if (!*(a5 + 2 * v24))
      {
        v25 = *(a4 + 2 * v24);
        if ((v25 & 0x8000000000000000) == 0)
        {
          do
          {
            a3[v24][v25 + v18] = a3[v24][v25];
            --v25;
          }

          while (v25 != -1);
        }

        strncpy(a3[v24], *(a2 + 24), *(a2 + 32));
        if (*(a2 + 48))
        {
          strncpy(&a3[v24][*(a2 + 32)], *(a2 + 40), *(a2 + 48));
        }

        *(a4 + 2 * v24) += v18;
      }

      ++v24;
    }

    while (v24 != v11);
    if (a6 != 1)
    {
      v26 = 0;
      do
      {
        if (*(a5 + 2 * v26) <= 1u)
        {
          v27 = *(a4 + 2 * v26);
          if ((v27 & 0x8000000000000000) == 0)
          {
            do
            {
              a3[v26][v27 + v17] = a3[v26][v27];
              --v27;
            }

            while (v27 != -1);
          }

          strncpy(a3[v26], *(a1 + 24), *(a1 + 32));
          if (*(a1 + 48))
          {
            strncpy(&a3[v26][*(a1 + 32)], *(a1 + 40), *(a1 + 48));
          }
        }

        ++v26;
      }

      while (v26 != v11);
    }
  }

  if (v10)
  {
    v28 = 0;
    goto LABEL_35;
  }

LABEL_39:
  while (1)
  {
    result = PRaddList(v10, *a3, 1, 0);
    if (result)
    {
      break;
    }

    v32 = *a3++;
    free(v32);
    if (!--v11)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PRapp(unsigned __int8 *a1, int a2, int a3)
{
  v3 = sXXMutex++;
  if (!a1)
  {
    sXXMutex = v3;
    return 230;
  }

  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 10) = 0;
  if (bInitXXMtx)
  {
    byte_1ED7D7422 = 0;
    bInitXXMtx = 0;
    SLInitMutex("XXAPPMUTEX", &stru_1ED7D7430);
  }

  if (SLLockMutex(&stru_1ED7D7430))
  {
    --sXXMutex;
    return 220;
  }

  if (a2 == 4)
  {
    v11 = PRGetAppElem(*a1);
    if (v11)
    {
      if (a3 == 2048)
      {
        *(v11 + 28) = (a1[4] & 1) == 0;
LABEL_24:
        --sXXMutex;
        SLUnlockMutex(&stru_1ED7D7430);
        return 0;
      }

      --sXXMutex;
      SLUnlockMutex(&stru_1ED7D7430);
      v12 = 0xE6FFFFFF94;
    }

    else
    {
      --sXXMutex;
      SLUnlockMutex(&stru_1ED7D7430);
      v12 = 0xE6FFFFFF93;
    }

LABEL_32:
    *(a1 + 12) = v12;
    *(a1 + 10) = 400;
    return 230;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v8 = pSystem;
      if (pSystem)
      {
        v9 = *pSystem;
        if (*(pSystem + 1) >= v9)
        {
          v10 = ExpandSystem(a1, pSystem);
          if (v10)
          {
            v7 = v10;
LABEL_55:
            --sXXMutex;
            SLUnlockMutex(&stru_1ED7D7430);
            return v7;
          }

          v8 = pSystem;
          v9 = *pSystem;
          if (!*pSystem)
          {
LABEL_41:
            *a1 = v9;
            v16 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A00404A9DB07BuLL);
            *(v8[1] + 8 * v9) = v16;
            if (v16)
            {
              ++*(v8 + 1);
              v17 = *(v8[1] + 8 * v9);
              v18 = malloc_type_calloc(1uLL, 0x898uLL, 0x1090040C1876833uLL);
              if (v18)
              {
                v19 = v18;
                *v18 = 15;
                if (ICpd(0, v18) == 8)
                {
                  FreeAppElem(v8, a1);
                  v20 = 713;
                  v7 = 230;
LABEL_54:
                  *(a1 + 3) = v20;
                  *(a1 + 4) = v7;
                  *(a1 + 10) = 400;
                  goto LABEL_55;
                }

                *(v17 + 88) = *(v19 + 1);
                free(v19);
                v21 = malloc_type_calloc(4uLL, 8uLL, 0x2004093837F09uLL);
                *v17 = v21;
                if (v21)
                {
                  *(v17 + 8) = 4;
                  *(v17 + 28) = (a1[4] & 1) == 0;
                  v22 = malloc_type_calloc(1uLL, 0x58uLL, 0x103004048D29B9DuLL);
                  *(v17 + 16) = v22;
                  if (v22)
                  {
                    v23 = malloc_type_calloc(0x10uLL, 6uLL, 0x1000040274DC3F3uLL);
                    *(v17 + 40) = v23;
                    if (v23)
                    {
                      *(v17 + 48) = 0;
                      *(a1 + 2) &= 0x10u;
                      goto LABEL_24;
                    }
                  }
                }

                FreeAppElem(v8, a1);
              }
            }

            else
            {
              CheckSystem();
            }

            v20 = 120;
            v7 = 220;
            goto LABEL_54;
          }
        }

LABEL_36:
        v15 = 0;
        while (*(v8[1] + 8 * v15))
        {
          if (v9 == ++v15)
          {
            goto LABEL_41;
          }
        }

        v9 = v15;
        goto LABEL_41;
      }

      pSystem = malloc_type_calloc(1uLL, 0x10uLL, 0x1080040EF48E34EuLL);
      if (pSystem)
      {
        v9 = 4;
        v13 = malloc_type_calloc(4uLL, 8uLL, 0x2004093837F09uLL);
        v8 = pSystem;
        *(pSystem + 8) = v13;
        if (v13)
        {
          *v8 = 4;
          goto LABEL_36;
        }

        free(v8);
        pSystem = 0;
      }

      *(a1 + 12) = 0xDC00000078;
      *(a1 + 10) = 400;
      --sXXMutex;
      SLUnlockMutex(&stru_1ED7D7430);
      return 220;
    }

    --sXXMutex;
    SLUnlockMutex(&stru_1ED7D7430);
    v12 = 0xE6FFFFFF95;
    goto LABEL_32;
  }

  if (!pSystem || *a1 >= *pSystem || !*(*(pSystem + 8) + 8 * *a1))
  {
    --sXXMutex;
    SLUnlockMutex(&stru_1ED7D7430);
    *(a1 + 12) = 0xE6FFFFFF93;
    *(a1 + 10) = 400;
    return 220;
  }

  v7 = FreeAppElem(pSystem, a1);
  --sXXMutex;
  SLUnlockMutex(&stru_1ED7D7430);
  if (!pSystem && !sXXMutex)
  {
    SLTermMutex(&stru_1ED7D7430);
    byte_1ED7D7422 = 1;
    bInitXXMtx = 1;
  }

  return v7;
}

uint64_t ExpandSystem(uint64_t a1, unsigned __int8 *a2)
{
  v4 = malloc_type_calloc(*a2 + 4, 8uLL, 0x2004093837F09uLL);
  if (v4)
  {
    v5 = v4;
    memcpy(v4, *(a2 + 1), 8 * *a2);
    free(*(a2 + 1));
    result = 0;
    *(a2 + 1) = v5;
    *a2 += 4;
  }

  else
  {
    *(a1 + 12) = 0xDC00000078;
    *(a1 + 20) = 400;
    return 220;
  }

  return result;
}

uint64_t FreeAppElem(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = *(*(a1 + 8) + 8 * v4);
  v6 = *(v5 + 90);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v5 + 56 + 8 * v7);
      if (v8)
      {
        free(v8[97]);
        free(v8);
        v6 = *(v5 + 90) - 1;
        *(v5 + 90) = v6;
      }

      if (!v6)
      {
        break;
      }
    }

    while (v7++ < 3);
  }

  if (*(v5 + 88))
  {
    v10 = malloc_type_calloc(1uLL, 0x898uLL, 0x1090040C1876833uLL);
    if (!v10)
    {
      *(a2 + 12) = 0xDC00000078;
      *(a2 + 10) = 400;
      return 220;
    }

    v11 = v10;
    *v10 = 16;
    *(v10 + 1) = *(v5 + 88);
    if (ICpd(0, v10) == 8)
    {
      *(a2 + 12) = 0xE6000002C9;
      *(a2 + 10) = 400;
      return 230;
    }

    free(v11);
  }

  v13 = *(v5 + 16);
  if (v13)
  {
    PRssClr(v13);
    free(*(v5 + 16));
  }

  v14 = *(v5 + 9);
  if (v14)
  {
    v15 = 0;
    do
    {
      if (v15 >= *(v5 + 8))
      {
        break;
      }

      v16 = *(*v5 + 8 * v15);
      if (v16)
      {
        PRDbTerm(v5, *(*v5 + 8 * v15));
        free(v16);
        v14 = *(v5 + 9) - 1;
        *(v5 + 9) = v14;
      }

      ++v15;
    }

    while (v14);
  }

  if (*v5)
  {
    free(*v5);
  }

  v17 = *(v5 + 40);
  if (v17)
  {
    free(v17);
  }

  free(v5);
  *(*(a1 + 8) + 8 * v4) = 0;
  --*(a1 + 1);
  CheckSystem();
  return 0;
}

void CheckSystem()
{
  if (!*(pSystem + 1))
  {
    free(*(pSystem + 8));
    free(pSystem);
    pSystem = 0;
  }
}

uint64_t PRGetAppElem(unsigned int a1)
{
  ++sXXMutex;
  if (SLLockMutex(&stru_1ED7D7430))
  {
    v2 = 0;
  }

  else
  {
    if (pSystem && *pSystem > a1)
    {
      v2 = *(*(pSystem + 8) + 8 * a1);
    }

    else
    {
      v2 = 0;
    }

    SLUnlockMutex(&stru_1ED7D7430);
  }

  --sXXMutex;
  return v2;
}

uint64_t PRbuf(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v68 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_85;
  }

  v4 = a2;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  v5 = a1 + 64;
  *(a1 + 72) = 0;
  v6 = *(a1 + 40);
  if (a2 == 17)
  {
    if (v6)
    {
      do
      {
        v7 = *(v6 + 40);
        PRfreeErr(v6);
        v6 = v7;
      }

      while (v7);
    }

    v8 = 0;
    *(a1 + 40) = 0;
    goto LABEL_86;
  }

  v10 = PRGetAppElem(*(a1 + 8));
  if (!v10)
  {
    v14 = 0xE6FFFFFF93;
LABEL_84:
    *(a1 + 64) = v14;
    *(a1 + 72) = 480;
LABEL_85:
    v8 = 230;
    goto LABEL_86;
  }

  v11 = v10;
  *(v10 + 32) = v5;
  *(v10 + 24) = 0;
  v12 = *(v10 + 16);
  switch(v4)
  {
    case 12:
      v13 = 50;
      break;
    case 13:
      v13 = -106;
      break;
    case 14:
      v13 = -1;
      break;
    default:
      v14 = 0xE6FFFFFF95;
      goto LABEL_84;
  }

  *(v10 + 26) = v13;
  if (v4 == 12)
  {
    v15 = (a3 >> 3) & 1;
  }

  else
  {
    v15 = 0;
  }

  *(v10 + 27) = *(a1 + 60);
  v16 = PRGetDbElem(*(a1 + 8), *(a1 + 9));
  if (!v16)
  {
    v14 = 0xE6FFFFFF92;
    goto LABEL_84;
  }

  v17 = v16;
  v67[0] = 0;
  if ((v15 & 1) == 0 && (*v16 & 0x20) != 0)
  {
    v14 = 0xE6FFFFFF84;
    goto LABEL_84;
  }

  v18 = *(v16 + 23) || *(v16 + 24) || *(v16 + 25) || *(v16 + 26) != 0;
  v66 = v18;
  if (*(a1 + 10))
  {
    v19 = v15;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (v6)
    {
      do
      {
        v20 = *(v6 + 40);
        PRfreeErr(v6);
        v6 = v20;
      }

      while (v20);
    }

    v21 = 0;
    v22 = 0;
    *(v11 + 48) = 0;
    goto LABEL_77;
  }

  v23 = 0;
  if (v6)
  {
    v24 = *(v16 + 48);
    while (*(v6 + 64))
    {
      if (*(v6 + 64) != 1)
      {
        if (!BinarySearch(*(v24 + 328), *(v24 + 336), 1, *(v6 + 12), 1, v67))
        {
          break;
        }

        *(v6 + 13) = 0;
      }

      v25 = *(v6 + 40);
      if (!v23)
      {
        *(v6 + 40) = 0;
LABEL_47:
        v23 = v6;
        goto LABEL_48;
      }

      v26 = *(v23 + 12);
      v27 = v23;
      v28 = v23;
      while (*(v6 + 12) >= v26)
      {
        v28 = v27;
        v27 = *(v27 + 40);
        if (!v27)
        {
          break;
        }

        v26 = *(v27 + 12);
      }

      *(v6 + 40) = v27;
      if (v27 == v23)
      {
        goto LABEL_47;
      }

      *(v28 + 40) = v6;
LABEL_48:
      v6 = v25;
      if (!v25)
      {
        goto LABEL_49;
      }
    }

    v25 = *(v6 + 40);
    PRfreeErr(v6);
    goto LABEL_48;
  }

LABEL_49:
  v29 = *(v11 + 48);
  v22 = *(v11 + 40);
  __memcpy_chk();
  v31 = 0;
  v32 = v23;
  v33 = 0;
  if (v23 && v29)
  {
    v33 = 0;
    v31 = 0;
    v32 = v23;
    do
    {
      v34 = *(v32 + 12);
      v35 = LOBYTE(v67[((3 * v31) & 0x7F) + 2]);
      if (v34 >= v35)
      {
        if (v33 <= 0xFu)
        {
          v39 = &v67[((3 * v31) & 0x7F) + 1];
          v40 = *(v39 + 5);
          LOWORD(v39) = *(v39 + 3);
          v41 = v22 + 6 * v33;
          *(v41 + 2) = v35;
          *v41 = v35;
          *(v41 + 3) = v39;
          *(v41 + 1) = 0;
          *(v41 + 5) = v40;
        }

        ++v31;
      }

      else
      {
        if (v33 <= 0xFu)
        {
          v36 = *(v32 + 13);
          v37 = *(v32 + 66);
          v38 = (v22 + 6 * v33);
          v38[2] = v34;
          *v38 = v34;
          v38[4] = v37;
          v38[3] = v36;
          v38[1] = 0;
          v38[5] = -1;
        }

        v32 = *(v32 + 40);
      }

      ++v33;
    }

    while (v32 && v29 > v31);
  }

  for (; v32; ++v33)
  {
    if (v33 <= 0xFu)
    {
      v42 = *(v32 + 13);
      v43 = *(v32 + 66);
      v44 = *(v32 + 12);
      v45 = (v22 + 6 * v33);
      v45[2] = v44;
      *v45 = v44;
      v45[4] = v43;
      v45[3] = v42;
      v45[1] = 0;
      v45[5] = -1;
    }

    v32 = *(v32 + 40);
  }

  v46 = v29 - v31;
  if (v29 <= v31)
  {
    v21 = v33;
  }

  else
  {
    v47 = 6 * v31;
    v21 = v33;
    do
    {
      if (v21 <= 0xFu)
      {
        v30.i32[0] = *(&v67[2] + (v47 & 0xFE));
        v48 = v22 + 6 * v21;
        *v48 = vmovl_u8(v30).u8[0];
        *(v48 + 1) = 0;
        *(v48 + 2) = v30.i32[0];
      }

      ++v21;
      v47 += 6;
      --v46;
    }

    while (v46);
  }

  if (v23)
  {
    do
    {
      v49 = *(v23 + 40);
      PRfreeErr(v23);
      v23 = v49;
    }

    while (v49);
  }

LABEL_77:
  *(a1 + 40) = 0;
  if (!*(v17 + 26))
  {
    *(v17 + 26) = 61;
  }

  if (v15)
  {
    v50 = PRfastSpell(v11, v17, a1);
LABEL_81:
    v8 = v50;
    goto LABEL_86;
  }

  v51 = *(v12 + 18);
  PRssClr(v12);
  v52 = *(a1 + 14);
  v53 = *(a1 + 12);
  if (v52 > v53)
  {
    v14 = 0xE6FFFFFF85;
    goto LABEL_84;
  }

  if (v52 == v53)
  {
    *(a1 + 16) = 0;
    v8 = 200;
    goto LABEL_86;
  }

  v56 = PRss(*a1, v52, v11, v17, *(a1 + 32), *(a1 + 10) & 1, (*(a1 + 10) & 0x20) != 0);
  if (!v56)
  {
    if ((*(a1 + 10) & 1) != 0 && v21)
    {
      v57 = *(v12 + 18) - v51;
      if (!v57)
      {
        LOBYTE(v57) = 0;
      }

      if ((v21 & 0xF0) != 0)
      {
        v58 = 16;
      }

      else
      {
        v58 = v21;
      }

      v59 = (v22 + 5);
      do
      {
        *v59 = v57 - (*v59 == 255);
        v59 += 6;
        --v58;
      }

      while (v58);
    }

    if (v21)
    {
      *(v11 + 48) = v21;
    }

    *(a1 + 16) = *(v12 + 20);
    v60 = *(v12 + 56);
    if (v60)
    {
      v61 = PRIcsTokWalk(v60, v11, v17, *(a1 + 61));
      if (v61)
      {
LABEL_107:
        v8 = v61;
LABEL_108:
        PRssClr(v12);
        goto LABEL_86;
      }

      if ((v4 - 12) <= 2)
      {
        if ((v4 - 13) <= 1)
        {
          if (*(v12 + 2) == 2)
          {
            v62 = *(v17 + 20);
            if (v62 <= 0xC && ((1 << v62) & 0x1320) != 0)
            {
              v61 = PRNpBuilder(v11, v17, v12);
              if (v61)
              {
                goto LABEL_107;
              }
            }
          }

          if (*(v17 + 80))
          {
            v61 = PRPunct(v11, v17);
            if (v61)
            {
              goto LABEL_107;
            }
          }

          if (*(v17 + 96))
          {
            v61 = PRExprMatch(v12, v11, v17);
            if (v61)
            {
              goto LABEL_107;
            }
          }
        }

        if (*(v17 + 112))
        {
          PRPostAgree(v12, v11, v17);
          if (v61)
          {
            goto LABEL_107;
          }
        }

        if (*(v17 + 48))
        {
          v63 = PRmatchr(v11, v17);
          v8 = v63;
          if (v63 == 230 || v63 == 220)
          {
            goto LABEL_108;
          }
        }

        if ((v4 - 13) <= 1)
        {
          v64 = PRmisrul(v11, v17, a1);
          v8 = v64;
          if (v64 == 230 || v64 == 220)
          {
            goto LABEL_108;
          }
        }

        v50 = PRspace(a1, v11, v17);
        if (v50)
        {
          goto LABEL_81;
        }

        PRprune(a1, v12);
        if (v66)
        {
          v65 = *(v11 + 24) ? *(a1 + 40) : 0;
          v50 = PRfixSpan(v11, v17, v65, a1);
          if (v50)
          {
            goto LABEL_81;
          }

          v50 = PRfixPars(v11, v17, a1);
          if (v50)
          {
            goto LABEL_81;
          }
        }
      }
    }

    v8 = 0;
    goto LABEL_86;
  }

  v8 = v56;
  if (v56 == 200)
  {
    *(a1 + 16) = 0;
  }

LABEL_86:
  v54 = *MEMORY[0x1E69E9840];
  return v8;
}

void *PRfreeErrList(void *result)
{
  if (result)
  {
    do
    {
      v1 = result[5];
      PRfreeErr(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t PRCtGet(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 *a7)
{
  v65 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v60 = 0;
  v59 = 0;
  if (a5)
  {
    *(a5 + 18) = 0;
    *(a5 + 24) = 0;
    if (*(a5 + 16))
    {
      v7 = 0;
      v8 = *(a5 + 8);
      do
      {
        *(v8 + 2 * v7++) = -1;
      }

      while (v7 < *(a5 + 16));
    }
  }

  *a7 = 0;
  v9 = *(a4 + 72);
  if (!v9)
  {
LABEL_48:
    result = 0;
    goto LABEL_49;
  }

  v10 = *(v9 + 2);
  v52 = *(v9 + 3);
  v11 = *v9;
  v12 = *(v9 + 1);
  v58 = v9[1];
  v50 = *(v9 + 3);
  v51 = *(a4 + 40);
  v54 = v9[4];
  v13 = strlen(a1);
  SLfun(a1, 0, (v13 - 1), &v61, &v60);
  v14 = 0;
  v61 &= ~0x8000u;
  v15 = (v12 & v61);
  v16 = v60 % v11;
  v17 = 2 * v15;
  v18 = v15 + (v12 >> 1) + v11;
  v53 = 2 * v15;
  while (1)
  {
    v19 = 4 * v16;
    v20 = *(v10 + v19);
    v21 = (v10 + v19);
    v22 = v21[1] | (v20 << 8);
    if (!v22)
    {
      goto LABEL_48;
    }

    if ((v22 & 0x7FFF) != v61)
    {
      goto LABEL_22;
    }

    v23 = v21[3] | (v21[2] << 8);
    if (v23 >= v54)
    {
      break;
    }

    v24 = v52;
LABEL_15:
    v25 = &v24[v23];
    v26 = *v25;
    v27 = v25[1];
    v28 = v23 + 3;
    v29 = v24[(v23 + 2)];
    *a7 = v29;
    if (v26)
    {
      v30 = 0;
      do
      {
        v31 = v28 + 1;
        v64[v30++] = v24[v28++];
      }

      while (v26 > v30);
    }

    else
    {
      v31 = v28;
    }

    v64[v26] = 0;
    if (a2 != 2)
    {
      v34 = a7;
      goto LABEL_30;
    }

    v32 = SLstrcmp(a1, v64);
    v17 = v53;
    if (!v32)
    {
      v34 = a7;
      v29 = *a7;
LABEL_30:
      if (v29 < 1)
      {
        v38 = v31;
        if (v27)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v37 = 0;
        do
        {
          v38 = v31 + 1;
          *(a6 + v37++) = v24[v31++];
        }

        while (v37 < *v34);
        if (v27)
        {
LABEL_34:
          v39 = 0;
          v40 = a5;
          do
          {
            v41 = v38++;
            v63[v39++] = v24[v41];
          }

          while (v27 > v39);
          v63[v27] = 0;
          if (a2 != 1)
          {
            v42 = 1;
            v43 = v63;
            do
            {
              if (*v43 == 36)
              {
                ++v42;
                *v43 = 0;
              }

              ++v43;
              --v27;
            }

            while (v27);
LABEL_46:
            v44 = v63;
            v45 = v42;
LABEL_47:
            PRaddList(v40, v44, v45, 0);
            goto LABEL_48;
          }

LABEL_44:
          v44 = v64;
          v45 = 0;
          goto LABEL_47;
        }
      }

      v63[v27] = 0;
      v40 = a5;
      if (a2 != 1)
      {
        v42 = 1;
        goto LABEL_46;
      }

      goto LABEL_44;
    }

LABEL_22:
    v16 += v18;
    do
    {
      v16 -= v11;
    }

    while (v16 >= v11);
    result = 0;
    if (v58 >= v14)
    {
      ++v14;
      v18 += v17;
      if (v20 < 0)
      {
        continue;
      }
    }

    goto LABEL_49;
  }

  if (SLSeek(v51, v50 + v23, 0) != 8)
  {
    if (SLFRead(v51, 128, __dst, &v59) == 8 || v59 <= 2)
    {
      v35 = *(a3 + 32);
      v36 = 0xDC00000070;
      goto LABEL_51;
    }

    v23 = 0;
    v24 = __dst;
    goto LABEL_15;
  }

  v35 = *(a3 + 32);
  v36 = 0xDC0000006FLL;
LABEL_51:
  *v35 = v36;
  *(v35 + 8) = 100;
  result = 220;
LABEL_49:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PRdb(unsigned __int8 *a1, int a2, int a3)
{
  v63 = 0;
  if (!a1)
  {
    return 230;
  }

  *(a1 + 22) = 0;
  v6 = a1 + 88;
  *(a1 + 23) = 0;
  *(a1 + 48) = 0;
  v7 = PRGetAppElem(*a1);
  if (!v7)
  {
    v11 = 0xE6FFFFFF93;
LABEL_61:
    *(a1 + 11) = v11;
    *(a1 + 48) = 420;
    return 230;
  }

  v8 = v7;
  *(v7 + 32) = v6;
  if (a2 == 4)
  {
    v12 = PRGetDbElem(*a1, a1[1]);
    if (!v12)
    {
      goto LABEL_33;
    }

    v14 = v12;
    v15 = *(v12 + 128);
    if (!v15)
    {
      v11 = 0xE6FFFFFF88;
      goto LABEL_61;
    }

    if (a3 <= 511)
    {
      if (a3 == 128)
      {
        v37 = *(a1 + 13);
        v38 = *(a1 + 13);
        if ((v38 & ~*(a1 + 15)) != 0)
        {
          *(a1 + 13) = *(v12 + 16);
          v25 = 0x4FFFFFF97;
        }

        else
        {
          *(v12 + 16) = v38;
          *(v15 + 20) = v37;
          PRPunTerm(v12);
          PRPunLoad(v8, v14);
          PRExprTerm(v14);
          PRExprLoad(v8, v14, *(a1 + 5), 0);
          v39 = *(v14 + 48);
          v40 = *(a1 + 13);
          v41 = *(v14 + 20);
          if ((v40 & 0xF0) == 0x20 && v41 == 16)
          {
            LOBYTE(v40) = 64;
          }

          PRLangDialPos(*(v14 + 48), &v63, 0, v41, v40 & 0xF0);
          LoadDialTable(v8, v39, v63);
          v43 = *(a1 + 14);
          v44 = *(a1 + 14);
          if ((v44 & ~*(a1 + 16)) == 0)
          {
            *(v14 + 18) = v44;
            *(v15 + 24) = v43;
            goto LABEL_87;
          }

          v25 = 0x4FFFFFF96;
        }
      }

      else
      {
        if (a3 != 256)
        {
          goto LABEL_14;
        }

        if (*(*(v15 + 3184) + 216))
        {
          v25 = 0x4000001FALL;
        }

        else
        {
          v46 = malloc_type_calloc(1uLL, 0x300uLL, 0x1030040B89FAF2CuLL);
          if (!v46)
          {
            v11 = 0xE6FFFFFF87;
            goto LABEL_61;
          }

          *v46 = 0;
          v46[745] = a1[24];
          v47 = *(v15 + 3184);
          *(v47 + 216) = v46;
          v48 = *(a1 + 6);
          if (v48)
          {
            v49 = *v48;
            __strcpy_chk();
            v50 = *(a1 + 6);
            __strcpy_chk();
            v51 = *(v47 + 216);
          }

          __strcpy_chk();
          v52 = *(v47 + 216);
          __strcat_chk();
          if (!IHhyp("", *(v47 + 216)))
          {
            *v14 |= 2u;
            *(v15 + 1320) |= 0x100u;
            goto LABEL_87;
          }

          *(v15 + 1320) |= 0x2000u;
          free(*(v47 + 216));
          *(v47 + 216) = 0;
          *(v15 + 1308) = 0;
          *v14 &= ~2u;
          v25 = 0x4000001F9;
        }
      }
    }

    else
    {
      if (a3 != 512)
      {
        if (a3 != 1024)
        {
          if (a3 != 4096)
          {
            goto LABEL_14;
          }

          UpdateDocFormat(a1, v8, v12, v13);
LABEL_87:
          v24 = 0;
          *(a1 + 7) = *v14;
          return v24;
        }

        v62 = 0;
        if (SLSeek(*(v12 + 40), 1000, 0) == 8)
        {
LABEL_51:
          v35 = *(v8 + 32);
          v36 = 0xDC0000006FLL;
LABEL_66:
          *v35 = v36;
          *(v35 + 8) = 420;
          return 220;
        }

        if (SLFRead(*(v14 + 40), 2, __dst, &v62) != 8)
        {
          if (SLSeek(*(v14 + 40), (__dst[0] << 17) | (__dst[1] << 9), 0) == 8)
          {
            goto LABEL_51;
          }

          v58 = malloc_type_calloc(1uLL, 0x400uLL, 0x8312136BuLL);
          if (!v58)
          {
            goto LABEL_65;
          }

          v59 = v58;
          if (SLRead(*(v14 + 40), 0x400u, v58, &v62) != 8)
          {
            v60 = PRExprInit(v8, v14, v59, *(a1 + 5), 1);
            free(v59);
            if (v60)
            {
              v11 = 0xE6FFFFFF83;
              goto LABEL_61;
            }

            goto LABEL_87;
          }

          free(v59);
        }

        v35 = *(v8 + 32);
        v36 = 0xDC00000070;
        goto LABEL_66;
      }

      v34 = *(*(v15 + 3184) + 216);
      if (v34)
      {
        IHterm(v34);
        free(*(*(v15 + 3184) + 216));
        *(*(v15 + 3184) + 216) = 0;
        *v14 &= ~2u;
        goto LABEL_87;
      }

      v25 = 0x4000001FBLL;
    }

    *(a1 + 11) = v25;
    *(a1 + 48) = 420;
    return 4;
  }

  if (a2 == 2)
  {
    if (a3)
    {
LABEL_14:
      v11 = 0xE6FFFFFF94;
      goto LABEL_61;
    }

    v16 = *(a1 + 10);
    if (v16)
    {
      v17 = v16[2];
      if (v17)
      {
        do
        {
          if (v17 == v16[2])
          {
            v18 = *v17;
            v19 = (v17[1] - 1);
            do
            {
              v17[1] = v19;
              v20 = *v19--;
            }

            while (v20 != v18);
            free(v19 + 1);
          }

          v21 = v17[3];
          free(v17);
          v17 = v21;
        }

        while (v21);
      }
    }

    free(v16);
    v22 = a1[1];
    if (v22 < *(v8 + 8))
    {
      v23 = *(*v8 + 8 * a1[1]);
      if (v23)
      {
        PRDbTerm(v8, *(*v8 + 8 * a1[1]));
        free(v23);
        v24 = 0;
        *(*v8 + 8 * v22) = 0;
        --*(v8 + 9);
        return v24;
      }
    }

LABEL_33:
    v11 = 0xE6FFFFFF92;
    goto LABEL_61;
  }

  if (a2 != 1)
  {
    v11 = 0xE6FFFFFF95;
    goto LABEL_61;
  }

  if (a3)
  {
    goto LABEL_14;
  }

  v9 = *(v7 + 8);
  if (*(v7 + 9) < v9)
  {
    goto LABEL_8;
  }

  v24 = ExpandDbElemArray(v7);
  if (v24)
  {
    return v24;
  }

  v9 = *(v8 + 8);
  if (*(v8 + 8))
  {
LABEL_8:
    v10 = 0;
    while (*(*v8 + 8 * v10))
    {
      if (v9 == ++v10)
      {
        goto LABEL_43;
      }
    }

    v9 = v10;
  }

LABEL_43:
  v26 = malloc_type_calloc(1uLL, 0x98uLL, 0x1030040A87721C6uLL);
  if (!v26)
  {
    goto LABEL_65;
  }

  v27 = v26;
  v28 = *(a1 + 6);
  *(a1 + 7) = v28;
  *v26 = v28;
  v29 = a1[24];
  v30 = SLLngToA(v29);
  v27[1] = v30;
  if (!v30)
  {
    free(v27);
    v11 = 0xE6FFFFFF9CLL;
    goto LABEL_61;
  }

  v31 = malloc_type_calloc(1uLL, 0xC78uLL, 0x1020040DC1EA3C0uLL);
  v27[16] = v31;
  if (!v31)
  {
    free(v27);
LABEL_65:
    v35 = *(v8 + 32);
    v36 = 0xDC00000078;
    goto LABEL_66;
  }

  v32 = PRDbInit(v29, *(a1 + 13), *(a1 + 14), v8, v27, a1);
  if (v32)
  {
    goto LABEL_47;
  }

  *(v8 + 90) = 0;
  v53 = *(v8 + 88);
  v54 = v27[16];
  *(v54 + 3178) = v53;
  *(*(*(v54 + 3184) + 264) + 3204) = v53;
  if ((a1[12] & 1) == 0)
  {
    goto LABEL_90;
  }

  v55 = *(a1 + 7);
  if (v55)
  {
    v57 = *v55;
    v55 += 8;
    v56 = v57;
  }

  else
  {
    v56 = 0;
  }

  v32 = PRinitProfile(v8, v27, 0, v55, v56);
  if (v32)
  {
LABEL_47:
    v24 = v32;
    PRDbTerm(v8, v27);
    free(v27);
  }

  else
  {
LABEL_90:
    UpdateDocFormat(a1, v8, v27, v33);
    v24 = 0;
    *(*v8 + 8 * v9) = v27;
    ++*(v8 + 9);
    *(a1 + 7) = *v27;
    a1[1] = v9;
  }

  return v24;
}

uint64_t ExpandDbElemArray(uint64_t a1)
{
  v2 = malloc_type_calloc(*(a1 + 8) + 4, 8uLL, 0x2004093837F09uLL);
  if (v2)
  {
    v3 = v2;
    memcpy(v2, *a1, 8 * *(a1 + 8));
    free(*a1);
    result = 0;
    *a1 = v3;
    *(a1 + 8) += 4;
  }

  else
  {
    v5 = *(a1 + 32);
    *v5 = 0xDC00000078;
    *(v5 + 8) = 420;
    return 220;
  }

  return result;
}

uint64_t LoadDialTable(uint64_t a1, uint64_t a2, int a3)
{
  v12 = 0;
  v4 = *(a2 + 288);
  v5 = *a2;
  v6 = *(a2 + 296);
  v7 = v6 * a3;
  if (!a3)
  {
    v7 = 0;
  }

  result = SLSeek(v5, *(a2 + 4) + *(a2 + 300) + v7, 0);
  if (result)
  {
    v9 = 111;
LABEL_10:
    v11 = *(a1 + 32);
    *v11 = v9;
    *(v11 + 4) = 220;
    *(v11 + 8) = 722;
    return result;
  }

  result = SLFRead(v5, v6, v4, &v12);
  if (result)
  {
    v10 = 0;
  }

  else
  {
    v10 = v12 == v6;
  }

  if (!v10)
  {
    v9 = 112;
    goto LABEL_10;
  }

  return result;
}

uint64_t UpdateDocFormat(uint64_t result, uint64_t a2, uint64_t a3, uint8x8_t a4)
{
  v5 = *(a3 + 64);
  if (v5)
  {
    v6 = v5 + 16;
    if (*(a3 + 23))
    {
      *(v6 + 4 * *(a3 + 23)) = *(v5 + 1044);
    }

    if (*(a3 + 24))
    {
      *(v6 + 4 * *(a3 + 24)) = *(v5 + 1048);
    }

    if (*(a3 + 25))
    {
      *(v6 + 4 * *(a3 + 25)) = *(v5 + 1052);
    }

    if (*(a3 + 26))
    {
      *(v6 + 4 * *(a3 + 26)) = *(v5 + 1056);
    }

    if (*(a3 + 22))
    {
      *(v6 + 4 * *(a3 + 22)) = *(v5 + 1060);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(result + 10);
  v8 = *(result + 2);
  *(a3 + 22) = v8;
  v9 = (a3 + 22);
  *(a3 + 30) = v7;
  a4.i32[0] = *(a3 + 23);
  *(a3 + 32) = a4.i32[0];
  *(a3 + 36) = v8;
  if (*(a2 + 28))
  {
    v15[0] = v8;
    SLchcnv(v15, 1, v15, 1, *(a3 + 20));
    *(a3 + 22) = v15[0];
    v15[0] = *(a3 + 23);
    SLchcnv(v15, 1, v15, 1, *(a3 + 20));
    *(a3 + 23) = v15[0];
    v15[0] = *(a3 + 24);
    SLchcnv(v15, 1, v15, 1, *(a3 + 20));
    *(a3 + 24) = v15[0];
    v15[0] = *(a3 + 25);
    SLchcnv(v15, 1, v15, 1, *(a3 + 20));
    *(a3 + 25) = v15[0];
    v15[0] = *(a3 + 26);
    result = SLchcnv(v15, 1, v15, 1, *(a3 + 20));
    v10 = v15[0];
    *(a3 + 26) = v15[0];
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v10 = vmovl_u8(a4).u8[6];
    if (!v5)
    {
      return result;
    }
  }

  v11 = *(a3 + 23);
  if (*(a3 + 23))
  {
    *(v5 + 1044) = *(v6 + 4 * v11);
    *(v6 + 4 * v11) = 2048;
  }

  v12 = *(a3 + 24);
  if (*(a3 + 24))
  {
    *(v5 + 1048) = *(v6 + 4 * v12);
    *(v6 + 4 * v12) = 2048;
  }

  v13 = *(a3 + 25);
  if (*(a3 + 25))
  {
    *(v5 + 1052) = *(v6 + 4 * v13);
    *(v6 + 4 * v13) = 2048;
  }

  if (v10)
  {
    *(v5 + 1056) = *(v6 + 4 * v10);
    *(v6 + 4 * v10) = 268436480;
  }

  v14 = *v9;
  if (*v9)
  {
    *(v5 + 1060) = *(v6 + 4 * v14);
    *(v6 + 4 * v14) = 8;
  }

  *(v5 + 1040) = (v11 | v13 | v12 | v10) != 0;
  return result;
}

uint64_t PRDbInit(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a5 + 128);
  v120 = 0;
  v8 = *(a6 + 40);
  if (v8)
  {
    v14 = *(a6 + 24);
    v15 = v14 == 18 || v14 == 4;
    if (!v15 || (v8 = *(a6 + 72)) != 0)
    {
      v16 = *v8;
      __strcpy_chk();
      v17 = *(a6 + 40);
      __strcpy_chk();
      v18 = *(a6 + 48);
      if (v18)
      {
        v19 = *v18;
        __strcpy_chk();
        v20 = *(a6 + 48);
        __strcpy_chk();
      }

      *(v7 + 3168) = *(a6 + 34);
      if (PRIcs(a4, a5, a1, a2, a3, "", 0, v7, 1, 0))
      {
        v21 = *(a4 + 32);
        *v21 = 0xDC000000A0;
        *(v21 + 8) = 440;
        *(v7 + 1320) &= ~0x80u;
        return 220;
      }

      if (*(a6 + 48))
      {
        v24 = *a5;
        if ((*(v7 + 1320) & 0x2000) != 0)
        {
          *a5 = v24 & 0xFFFD;
          v25 = *(a4 + 32);
          *v25 = 0x4000001F9;
          *(v25 + 8) = 440;
        }

        else
        {
          *a5 = v24 | 2;
        }
      }

      v26 = 0;
      v27 = 0;
      __dst = 0;
      *(a6 + 30) = *(v7 + 12);
      *(a6 + 32) = *(v7 + 16);
      v28 = *(*(*(v7 + 3184) + 248) + 64);
      *(a5 + 40) = v28;
      *(a5 + 20) = a1;
      *(a5 + 16) = *(a6 + 26);
      v29 = a1 - 4;
      if (a1 != 4 && a1 != 18)
      {
        if (SLSeek(v28, 1000, 0) == 8)
        {
          goto LABEL_43;
        }

        if (SLFRead(*(a5 + 40), 2, v121, &v120) == 8)
        {
          goto LABEL_93;
        }

        v43 = (v121[0] << 17) | (v121[1] << 9);
        if (!v43)
        {
          v41 = *(a4 + 32);
          v42 = 0xDC0000008CLL;
          goto LABEL_129;
        }

        if (SLSeek(*(a5 + 40), v43, 0) == 8)
        {
LABEL_43:
          v41 = *(a4 + 32);
          v42 = 0xDC0000006FLL;
          goto LABEL_129;
        }

        v44 = malloc_type_calloc(1uLL, 0x400uLL, 0x4015D04CuLL);
        if (!v44)
        {
          goto LABEL_128;
        }

        v27 = v44;
        if (SLRead(*(a5 + 40), 0x400u, v44, &v120) == 8)
        {
          goto LABEL_92;
        }

        v26 = (v27[754] << 17) | (v27[755] << 9);
      }

      v30 = 0;
      v31 = ((v29 >> 1) | (v29 << 7));
      if (v31 > 5)
      {
        if (v31 == 6)
        {
          v32 = v26 + 156;
          SLSeek(*(a5 + 40), v26 + 156, 0);
          if (SLFRead(*(a5 + 40), 1, &__dst, &v120) == 8 || v120 != 1)
          {
            goto LABEL_93;
          }

          v45 = __dst;
          v46 = *(a6 + 30);
          if (__dst < 0)
          {
            v47 = *(a6 + 30);
          }

          else
          {
            v47 = v46 & 0xFFFFFF7F;
            *(a6 + 30) = v46 & 0xFF7F;
            v48 = *(a6 + 26);
            *(a6 + 26) = v48 & 0xFF7F;
            if ((v46 & v48 & 0x70) == 0)
            {
              *(a6 + 26) = v48 & 0xFF0F | 0x40;
              *(a6 + 88) = 0x4FFFFFF97;
              *(a6 + 96) = 440;
            }
          }

          if ((v45 & 0x40) != 0)
          {
            v80 = v47;
          }

          else
          {
            v80 = v47 & 0xFFFFFF9F;
            *(a6 + 30) = v47 & 0xFF9F;
            v81 = *(a6 + 26);
            *(a6 + 26) = v81 & 0xFF9F;
            if ((v47 & v81 & 0x90) == 0)
            {
              *(a6 + 26) = v81 & 0xFF0F | 0x80;
              *(a6 + 88) = 0x4FFFFFF97;
              *(a6 + 96) = 440;
            }
          }

          if ((~v80 & 3) != 0)
          {
            v80 &= 0xFFFFFFFC;
            *(a6 + 30) = v80;
          }

          v82 = *(a6 + 26);
          if ((v82 & ~v80 & 0xFFFFFF0F) != 0)
          {
            *(a6 + 88) = 0x4FFFFFF97;
            *(a6 + 96) = 440;
            LOWORD(v82) = v80 & v82;
            *(a6 + 26) = v82;
          }

          v30 = 0;
          *(a5 + 16) = v82;
          *(v7 + 20) = v82;
          if (a1 == 4 || a1 == 18)
          {
            goto LABEL_36;
          }

          if (a1 != 12)
          {
            goto LABEL_107;
          }

LABEL_23:
          SLSeek(*(a5 + 40), v32, 0);
          if (SLFRead(*(a5 + 40), 1, &__dst, &v120) == 8 || v120 != 1)
          {
            goto LABEL_93;
          }

          v33 = __dst;
          v34 = *(a6 + 26);
          if ((__dst & 0x80000000) == 0)
          {
            v35 = *(a6 + 30) & 0xFF7F;
            *(a6 + 30) &= ~0x80u;
            if ((v34 & v35) == 0)
            {
              v34 = 64;
              *(a6 + 26) = 64;
            }
          }

          if ((v33 & 0x40) == 0)
          {
            v36 = *(a6 + 30) & 0xFFBF;
            *(a6 + 30) &= ~0x40u;
            if ((v34 & v36) == 0)
            {
              LOWORD(v34) = 128;
              *(a6 + 26) = 128;
            }
          }

          v30 = 0;
          *(a5 + 16) = v34;
          *(v7 + 20) = v34;
          if (a1 != 4 && a1 != 18)
          {
            goto LABEL_107;
          }

LABEL_36:
          v37 = *(a6 + 40);
          if (!v37)
          {
            return 0;
          }

          *(a6 + 80) = 0;
          *v123 = 0;
          v38 = malloc_type_calloc(1uLL, 0x158uLL, 0x1030040924E0C2EuLL);
          *(a5 + 48) = v38;
          if (v38)
          {
            v39 = v38;
            *v38 = -1;
            v40 = *(a5 + 20);
            if (v40 == 18 || v40 == 4)
            {
              if (SLOpen((v37 + 1), *v37, &v123[1], 0) == 8)
              {
                v41 = *(a4 + 32);
                v42 = 0xDC0000006ELL;
LABEL_129:
                *v41 = v42;
                *(v41 + 8) = 440;
                return 220;
              }

              *v39 = v123[1];
            }

            else
            {
              v49 = *(a5 + 40);
              *v38 = v49;
              v123[1] = v49;
            }

            v39[1] = v30;
            v50 = malloc_type_calloc(1uLL, 0x200uLL, 0x100004077774924uLL);
            if (v50)
            {
              v27 = v50;
              SLSeek(v123[1], v30, 0);
              if (SLFRead(v123[1], 512, v27, v123) != 8 && v123[0] == 512)
              {
                v51 = *v27;
                *(v39 + 8) = v51;
                if (v51)
                {
                  v52 = malloc_type_calloc(v51 + 1, 1uLL, 0x100004077774924uLL);
                  *(v39 + 2) = v52;
                  if (!v52)
                  {
LABEL_126:
                    v96 = v27;
LABEL_127:
                    free(v96);
                    goto LABEL_128;
                  }

                  strcpy(v52, v27 + 1);
                }

                *(v39 + 24) = v27[33];
                *(v39 + 25) = v27[34];
                *(v39 + 337) = v27[163];
                *(v39 + 26) = v27[35];
                v53 = __rev16(*(v27 + 38));
                v54 = bswap32(*(v27 + 18));
                v122 = v54;
                if (!v53)
                {
                  goto LABEL_79;
                }

                v55 = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040F514C710uLL);
                *(a6 + 80) = v55;
                if (!v55 || (v56 = malloc_type_calloc(1uLL, v53, 0x100004077774924uLL)) == 0)
                {
                  free(v27);
                  v96 = *(a6 + 80);
                  if (!v96)
                  {
                    goto LABEL_128;
                  }

                  goto LABEL_127;
                }

                v57 = v56;
                SLSeek(v123[1], v54 + v30, 0);
                if (SLFRead(v123[1], v53, v57, v123) != 8 && v123[0] == v53)
                {
                  v58 = *(v39 + 25);
                  **(a6 + 80) = v58;
                  if (v58)
                  {
                    v59 = 0;
                    v60 = 0;
                    do
                    {
                      v61 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040BEB8C10EuLL);
                      if (!v61)
                      {
                        goto LABEL_126;
                      }

                      v62 = v61;
                      *v61 = *v57;
                      v63 = v57[1];
                      v64 = *(a6 + 80);
                      if (!*(v64 + 16))
                      {
                        *(v64 + 16) = v61;
                      }

                      v65 = v57 + 2;
                      if (v63)
                      {
                        v66 = v61 + 16;
                        do
                        {
                          --v63;
                          v67 = *v65++;
                          *v66++ = v67;
                        }

                        while (v63);
                      }

                      v68 = strlen(v65);
                      *(v62 + 1) = v65;
                      *(v62 + 3) = 0;
                      if (v60)
                      {
                        *(v60 + 3) = v62;
                      }

                      v57 = &v65[v68 + 1];
                      ++v59;
                      v60 = v62;
                    }

                    while (*(v39 + 25) > v59);
                  }

LABEL_79:
                  v122 = 0;
                  v69 = SetFarTable(v39 + 4, *(v39 + 26), v123[1], v27, 0x24u, &v122, a4, v30);
                  if (v69)
                  {
                    goto LABEL_146;
                  }

                  v69 = SetFarTable(v39 + 5, 2 * *(v39 + 26), v123[1], v27, 0x28u, &v122, a4, v30);
                  if (v69)
                  {
                    goto LABEL_146;
                  }

                  v70 = bswap32(*(v27 + 12));
                  v39[14] = v70;
                  v69 = SetHugeTable(v39 + 6, v70, v123[1], v27, 0x2Cu, a4, v30);
                  if (v69)
                  {
                    goto LABEL_146;
                  }

                  v71 = bswap32(*(v27 + 14));
                  v39[18] = v71;
                  v69 = SetHugeTable(v39 + 8, v71, v123[1], v27, 0x34u, a4, v30);
                  if (v69)
                  {
                    goto LABEL_146;
                  }

                  v72 = bswap32(*(v27 + 32));
                  v73 = HIWORD(v72);
                  *(v39 + 44) = HIWORD(v72);
                  if (v73)
                  {
                    v69 = SetFarTable(v39 + 10, v73, v123[1], v27, 0x3Cu, &v122, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }
                  }

                  v74 = bswap32(*(v27 + 35));
                  v75 = HIWORD(v74);
                  *(v39 + 52) = HIWORD(v74);
                  if (v75)
                  {
                    v69 = SetFarTable(v39 + 12, v75, v123[1], v27, 0x42u, &v122, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }
                  }

                  v76 = bswap32(*(v27 + 38));
                  v77 = HIWORD(v76);
                  *(v39 + 60) = HIWORD(v76);
                  if (v77)
                  {
                    v69 = SetFarTable(v39 + 14, v77, v123[1], v27, 0x48u, &v122, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }
                  }

                  v78 = bswap32(*(v27 + 22));
                  v39[34] = v78;
                  if (v78)
                  {
                    v69 = SetHugeTable(v39 + 16, v78, v123[1], v27, 0x54u, a4, v30);
                    if (v69)
                    {
LABEL_146:
                      v23 = v69;
                      goto LABEL_147;
                    }

                    v79 = v39[34] / 7u;
                  }

                  else
                  {
                    LOWORD(v79) = 0;
                  }

                  *(v39 + 70) = v79;
                  v101 = bswap32(*(v27 + 48));
                  v102 = HIWORD(v101);
                  *(v39 + 76) = HIWORD(v101);
                  if (v102)
                  {
                    v69 = SetFarTable(v39 + 18, v102, v123[1], v27, 0x5Cu, &v122, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }

                    *(v39 + 77) = *(v39 + 76) >> 2;
                    v103 = bswap32(*(v27 + 51));
                    *(v39 + 84) = HIWORD(v103);
                    v69 = SetFarTable(v39 + 20, HIWORD(v103), v123[1], v27, 0x62u, &v122, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }
                  }

                  v69 = SetFarTable(v39 + 22, 4 * *(v39 + 26), v123[1], v27, 0x68u, &v122, a4, v30);
                  if (v69)
                  {
                    goto LABEL_146;
                  }

                  v39[48] = bswap32(*(v27 + 28));
                  v104 = bswap32(*(v27 + 28));
                  v39[48] = v104;
                  if (v104)
                  {
                    v69 = SetHugeTable(v39 + 23, v104, v123[1], v27, 0x6Cu, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }
                  }

                  v105 = v39[34] || *(v39 + 84) ? 28 : 32;
                  *a5 |= v105;
                  v69 = SetFarTable(v39 + 25, 2 * *(v39 + 26), v123[1], v27, 0x74u, &v122, a4, v30);
                  if (v69)
                  {
                    goto LABEL_146;
                  }

                  v106 = *(v27 + 41);
                  v107 = bswap32(v106);
                  v108 = __rev16(v106);
                  *(v39 + 61) = v108;
                  v109 = bswap32(*(v27 + 78));
                  v39[80] = v109;
                  v122 = v109 + HIWORD(v107);
                  v69 = SetFarTable(v39 + 38, v108, v123[1], v27, 0x201u, &v122, a4, v30);
                  if (v69)
                  {
                    goto LABEL_146;
                  }

                  *(v39 + 324) = 2;
                  v69 = SetFarTable(v39 + 26, 4 * *(v39 + 26), v123[1], v27, 0x78u, &v122, a4, v30);
                  if (v69)
                  {
                    goto LABEL_146;
                  }

                  v69 = SetHugeTable(v39 + 27, v39[14], v123[1], v27, 0x7Cu, a4, v30);
                  if (v69)
                  {
                    goto LABEL_146;
                  }

                  if (bswap32(*(v27 + 32)))
                  {
                    v69 = SetFarTable(v39 + 28, 4 * *(v39 + 26), v123[1], v27, 0x80u, &v122, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }
                  }

                  v110 = bswap32(*(v27 + 68));
                  v111 = HIWORD(v110);
                  *(v39 + 120) = HIWORD(v110);
                  if (v111)
                  {
                    v69 = SetFarTable(v39 + 29, v111, v123[1], v27, 0x84u, &v122, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }
                  }

                  v122 = 499;
                  v69 = SetFarTable(v39 + 31, 0xDuLL, v123[1], v27, 0x201u, &v122, a4, v30);
                  if (v69)
                  {
                    goto LABEL_146;
                  }

                  v112 = bswap32(*(v27 + 71));
                  v113 = HIWORD(v112);
                  *(v39 + 132) = HIWORD(v112);
                  if (v113)
                  {
                    v69 = SetFarTable(v39 + 32, v113, v123[1], v27, 0x8Au, &v122, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }
                  }

                  v114 = bswap32(*(v27 + 74));
                  v115 = HIWORD(v114);
                  *(v39 + 140) = HIWORD(v114);
                  if (v115)
                  {
                    v69 = SetFarTable(v39 + 34, v115, v123[1], v27, 0x90u, &v122, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }
                  }

                  v116 = v27[154];
                  *(v39 + 336) = v116;
                  if (v116)
                  {
                    v69 = SetFarTable(v39 + 41, v116, v123[1], v27, 0x96u, &v122, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }
                  }

                  v117 = bswap32(*(v27 + 161));
                  v118 = HIWORD(v117);
                  *(v39 + 148) = HIWORD(v117);
                  v39[75] = bswap32(*(v27 + 157));
                  if (v118)
                  {
                    v69 = SetFarTable(v39 + 36, v118, v123[1], v27, 0x9Du, &v122, a4, v30);
                    if (v69)
                    {
                      goto LABEL_146;
                    }
                  }

                  free(v27);
                  return 0;
                }

LABEL_93:
                v41 = *(a4 + 32);
                v42 = 0xDC00000070;
                goto LABEL_129;
              }

LABEL_92:
              free(v27);
              goto LABEL_93;
            }
          }

LABEL_128:
          v41 = *(a4 + 32);
          v42 = 0xDC00000078;
          goto LABEL_129;
        }

        if (v31 == 7)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (!((v29 >> 1) | (v29 << 7)))
        {
          goto LABEL_36;
        }

        if (v31 == 4)
        {
          v32 = v26 + 156;
          goto LABEL_23;
        }
      }

LABEL_107:
      v83 = __rev16(*(v27 + 353));
      if (v83)
      {
        v123[1] = 0;
        v84 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040CF817D87uLL);
        *(a5 + 72) = v84;
        if (!v84)
        {
          v91 = 120;
          v90 = 120;
          goto LABEL_123;
        }

        v85 = v84;
        v86 = *(a5 + 40);
        *v84 = bswap32(*(v27 + 350)) >> 16;
        v84[1] = bswap32(*(v27 + 351)) >> 16;
        *(v84 + 1) = __rev16(*(v27 + 352));
        v87 = bswap32(*(v27 + 177));
        v88 = v27[712];
        v89 = v27[713];
        *(v84 + 3) = bswap32(*(v27 + 714));
        if (SLSeek(v86, v87, 0) == 8)
        {
          v90 = 120;
LABEL_111:
          v91 = 111;
LABEL_123:
          v95 = *(a4 + 32);
          v23 = 220;
          *v95 = v91;
          *(v95 + 4) = 220;
          *(v95 + 8) = v90;
LABEL_147:
          free(v27);
          return v23;
        }

        v92 = malloc_type_calloc(1uLL, v83, 0x100004077774924uLL);
        *(v85 + 2) = v92;
        if (v92)
        {
          v93 = SLFRead(v86, v83, v92, &v123[1]);
          v90 = 122;
          v91 = 112;
          if (v93 == 8 || v123[1] != v83)
          {
            goto LABEL_123;
          }

          if (v88 >= 2)
          {
            v94 = 512;
          }

          else
          {
            v94 = v89 | (v88 << 8);
          }

          if (SLSeek(v86, *(v85 + 3), 0) == 8)
          {
            v90 = 121;
            goto LABEL_111;
          }

          v98 = malloc_type_calloc(1uLL, v94, 0x6C54FAB3uLL);
          *(v85 + 3) = v98;
          if (v98)
          {
            v99 = SLFRead(v86, v94, v98, &v123[1]);
            v90 = 123;
            v91 = 112;
            if (v99 == 8 || v123[1] != v94)
            {
              goto LABEL_123;
            }

            if (v94 == 512)
            {
              LOWORD(v94) = 512;
              while (1)
              {
                v100 = v94;
                if (*(*(v85 + 3) + v94 - 1) == 33)
                {
                  break;
                }

                LOWORD(v94) = v94 - 1;
                if (v100 <= 1)
                {
                  LOWORD(v94) = 0;
                  break;
                }
              }
            }

            v85[4] = v94;
            goto LABEL_141;
          }

          v90 = 123;
        }

        else
        {
          v90 = 122;
        }

        v91 = 120;
        goto LABEL_123;
      }

LABEL_141:
      v69 = PRSfxInit(a4, a5, v27);
      if (v69)
      {
        goto LABEL_146;
      }

      v69 = PRSSInit(a4, a5, v27);
      if (v69)
      {
        goto LABEL_146;
      }

      v69 = PRPunInit(a4, a5, v27);
      if (v69)
      {
        goto LABEL_146;
      }

      v69 = PRExprInit(a4, a5, v27, *(a6 + 10), 0);
      if (v69)
      {
        goto LABEL_146;
      }

      v69 = PRPostInit(a4, a5, v27);
      if (v69)
      {
        goto LABEL_146;
      }

      v23 = PRAmInit(a4, a5, v27);
      free(v27);
      v30 = v26;
      if (v23)
      {
        return v23;
      }

      goto LABEL_36;
    }
  }

  v22 = *(a4 + 32);
  *v22 = 0xE6FFFFFF90;
  *(v22 + 8) = 440;
  return 230;
}

uint64_t PRSfxInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __rev16(*(a3 + 724));
  if (!v3)
  {
    return 0;
  }

  v16 = 0;
  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040466105CCuLL);
  *(a2 + 56) = v7;
  if (!v7)
  {
    v10 = 40;
    goto LABEL_11;
  }

  v8 = v7;
  v9 = *(a2 + 40);
  *v7 = bswap32(*(a3 + 718)) >> 16;
  v7[1] = bswap32(*(a3 + 720)) >> 16;
  *(v7 + 1) = __rev16(*(a3 + 722));
  if (SLSeek(v9, bswap32(*(a3 + 726)), 0) != 8)
  {
    v12 = malloc_type_calloc(1uLL, v3, 0x92BB8A3uLL);
    *(v8 + 1) = v12;
    if (v12)
    {
      v13 = SLFRead(v9, v3, v12, &v16);
      v10 = 41;
      v11 = 112;
      if (v13 == 8 || v16 != v3)
      {
        goto LABEL_12;
      }

      return 0;
    }

    v10 = 41;
LABEL_11:
    v11 = 120;
    goto LABEL_12;
  }

  v10 = 40;
  v11 = 111;
LABEL_12:
  v15 = *(a1 + 32);
  result = 220;
  *v15 = v11;
  *(v15 + 4) = 220;
  *(v15 + 8) = v10;
  return result;
}

uint64_t PRSSInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = __rev16(*(a3 + 736));
  if (!v3)
  {
    result = 0;
    goto LABEL_18;
  }

  v35 = 0;
  v7 = malloc_type_calloc(1uLL, 0x428uLL, 0x101004032A3AAA5uLL);
  *(a2 + 64) = v7;
  if (!v7)
  {
    v10 = 320;
LABEL_16:
    v11 = 120;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = *(a2 + 40);
  *v7 = bswap32(*(a3 + 730)) >> 16;
  v7[1] = bswap32(*(a3 + 732)) >> 16;
  *(v7 + 1) = __rev16(*(a3 + 734));
  if (SLSeek(v9, bswap32(*(a3 + 738)), 0) == 8)
  {
    v10 = 320;
    v11 = 111;
LABEL_17:
    v33 = *(a1 + 32);
    result = 220;
    *v33 = v11;
    *(v33 + 4) = 220;
    *(v33 + 8) = v10;
    goto LABEL_18;
  }

  v13 = malloc_type_calloc(1uLL, v3, 0x669DF33EuLL);
  *(v8 + 1) = v13;
  if (!v13)
  {
    v10 = 321;
    goto LABEL_16;
  }

  v14 = SLFRead(v9, v3, v13, &v35);
  v10 = 321;
  v11 = 112;
  if (v14 == 8)
  {
    goto LABEL_17;
  }

  if (v35 != v3)
  {
    goto LABEL_17;
  }

  v15 = SLFRead(v9, 1024, __dst, &v35);
  v10 = 321;
  v11 = 112;
  if (v15 == 8 || v35 != 1024)
  {
    goto LABEL_17;
  }

  for (i = 0; i != 512; i += 32)
  {
    result = 0;
    v17 = &__dst[i * 2];
    v38 = vld4q_s8(v17);
    v18 = vmovl_u8(*v38.val[0].i8);
    v19 = vmovl_high_u8(v38.val[0]);
    _Q16 = vmovl_u8(*v38.val[1].i8);
    _Q17 = vmovl_high_u8(v38.val[1]);
    __asm
    {
      SHLL2           V18.4S, V17.8H, #0x10
      SHLL2           V19.4S, V16.8H, #0x10
    }

    v28 = vmovl_high_u8(v38.val[2]);
    v29 = vmovl_u8(*v38.val[2].i8);
    v30 = vorrq_s8(vorrq_s8(vshll_n_s16(*_Q16.i8, 0x10uLL), vshll_n_u16(*v29.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v18.i8), 0x18uLL));
    v31 = vmovl_high_u8(v38.val[3]);
    v38.val[0] = vmovl_u8(*v38.val[3].i8);
    v32 = &v8[i + 8];
    v32[2] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_s16(*_Q17.i8, 0x10uLL), vshll_n_u16(*v28.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v19.i8), 0x18uLL)), vmovl_u16(*v31.i8));
    v32[3] = vorrq_s8(vorrq_s8(vorrq_s8(_Q18, vshll_high_n_u16(v28, 8uLL)), vshlq_n_s32(vmovl_high_u16(v19), 0x18uLL)), vmovl_high_u16(v31));
    *v32 = vorrq_s8(v30, vmovl_u16(*v38.val[0].i8));
    v32[1] = vorrq_s8(vorrq_s8(vorrq_s8(_Q19, vshll_high_n_u16(v29, 8uLL)), vshlq_n_s32(vmovl_high_u16(v18), 0x18uLL)), vmovl_high_u16(v38.val[0]));
  }

LABEL_18:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PRPunInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 88) = bswap32(*(a3 + 742)) >> 16;
  *(a2 + 92) = bswap32(*(a3 + 744));
  return PRPunLoad(a1, a2);
}

uint64_t PRExprInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a2 + 104) = bswap32(*(a3 + 748)) >> 16;
  *(a2 + 108) = bswap32(*(a3 + 750));
  return PRExprLoad(a1, a2, a4, a5);
}

uint64_t PRPostInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __rev16(*(a3 + 762));
  if (!v3)
  {
    return 0;
  }

  v20 = 0;
  v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x10100408797764BuLL);
  *(a2 + 112) = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = *(a2 + 40);
  v10 = bswap32(*(a3 + 768));
  v11 = v3 + HIWORD(v10);
  v12 = *(a3 + 764);
  v13 = malloc_type_calloc(1uLL, (v3 + HIWORD(v10)), 0xE58C1C6CuLL);
  v8[1] = v13;
  if (!v13 || (v14 = v13, v15 = malloc_type_calloc(1uLL, 0x80uLL, 0x2A484F7AuLL), (v8[2] = v15) == 0))
  {
LABEL_7:
    v16 = *(a1 + 32);
    v17 = 0xDC00000078;
    goto LABEL_8;
  }

  if (SLSeek(v9, bswap32(v12), 0))
  {
    v16 = *(a1 + 32);
    v17 = 0xDC0000006FLL;
LABEL_8:
    *v16 = v17;
    *(v16 + 8) = 0;
    return 220;
  }

  if (SLFRead(v9, v11, v14, &v20))
  {
    v19 = 0;
  }

  else
  {
    v19 = v20 == v11;
  }

  if (!v19)
  {
    v16 = *(a1 + 32);
    v17 = 0xDC00000070;
    goto LABEL_8;
  }

  result = 0;
  *v8 = bswap32(*(a3 + 756)) >> 16;
  *(v8 + 1) = bswap32(*(a3 + 758)) >> 16;
  *(v8 + 2) = bswap32(*(a3 + 760)) >> 16;
  *(v8 + 3) = v3;
  return result;
}

uint64_t PRAmInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __rev16(*(a3 + 780));
  if (!v3)
  {
    return 0;
  }

  v26 = 0;
  v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040CF817D87uLL);
  *(a2 + 120) = v7;
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = v7;
  v9 = *(a2 + 40);
  *v7 = bswap32(*(a3 + 774)) >> 16;
  v7[1] = bswap32(*(a3 + 776)) >> 16;
  *(v7 + 1) = __rev16(*(a3 + 778));
  v10 = bswap32(*(a3 + 782));
  v11 = *(a3 + 786);
  v12 = *(a3 + 787);
  *(v7 + 3) = bswap32(*(a3 + 788));
  if (SLSeek(v9, v10, 0) == 8)
  {
LABEL_4:
    v13 = *(a1 + 32);
    v14 = 0xDC0000006FLL;
LABEL_29:
    *v13 = v14;
    *(v13 + 8) = 760;
    return 220;
  }

  v16 = malloc_type_calloc(1uLL, v3, 0x100004077774924uLL);
  *(v8 + 2) = v16;
  if (!v16)
  {
    goto LABEL_28;
  }

  if (SLFRead(v9, v3, v16, &v26) == 8 || v26 != v3)
  {
    goto LABEL_11;
  }

  if (v11 >= 2)
  {
    v18 = 512;
  }

  else
  {
    v18 = v12 | (v11 << 8);
  }

  if (SLSeek(v9, *(v8 + 3), 0) == 8)
  {
    goto LABEL_4;
  }

  v19 = malloc_type_calloc(1uLL, v18, 0xCDAA18DDuLL);
  *(v8 + 3) = v19;
  if (!v19)
  {
LABEL_28:
    v13 = *(a1 + 32);
    v14 = 0xDC00000078;
    goto LABEL_29;
  }

  if (SLFRead(v9, v18, v19, &v26) == 8 || v26 != v18)
  {
LABEL_11:
    v13 = *(a1 + 32);
    v14 = 0xDC00000070;
    goto LABEL_29;
  }

  if (v18 == 512)
  {
    v20 = *v8;
    if (*v8)
    {
      v21 = 0;
      v22 = *(v8 + 2) + 3;
      do
      {
        v23 = bswap32(*(v22 - 1)) >> 16;
        v24 = v21;
        if (v23 > v21)
        {
          v24 = v23;
        }

        if (v23 < 513)
        {
          v21 = v24;
        }

        v22 += 4;
        --v20;
      }

      while (v20);
      v25 = (v21 - 1);
    }

    else
    {
      LOWORD(v25) = -1;
    }

    result = 0;
    v8[4] = v25;
  }

  else
  {
    result = 0;
    v8[4] = v18;
  }

  return result;
}

uint64_t PRPunLoad(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 92);
  if (!v2)
  {
LABEL_80:
    result = 0;
    goto LABEL_81;
  }

  v60 = 0;
  v5 = *(a2 + 88);
  v6 = malloc_type_calloc(1uLL, 0x468uLL, 0x1090040F2BAB4E8uLL);
  *(a2 + 80) = v6;
  if (!v6)
  {
    v9 = 180;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = *(a2 + 40);
  if (SLSeek(v8, v2, 0) == 8)
  {
LABEL_4:
    v9 = 180;
    v10 = 111;
LABEL_27:
    v17 = *(a1 + 32);
    result = 220;
    *v17 = v10;
    *(v17 + 4) = 220;
    *(v17 + 8) = v9;
    goto LABEL_81;
  }

  v11 = 0;
  if (v5 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v5;
  }

  while (1)
  {
    if (SLFRead(v8, 6, &__dst, &v60) == 8)
    {
      goto LABEL_25;
    }

    v13 = __rev16(__dst);
    v14 = *(a2 + 16) & 0xF0;
    if (v14 == 32 && *(a2 + 20) == 16)
    {
      v14 = 64;
    }

    if (v13 == v14)
    {
      goto LABEL_21;
    }

    if (v5 <= ++v11)
    {
      break;
    }

    v2 += bswap32(v62) + 6;
    if (SLSeek(v8, v2, 0) == 8)
    {
      goto LABEL_4;
    }
  }

  v11 = v12;
LABEL_21:
  if (!v13 || v5 > v11)
  {
    if (SLFRead(v8, 12, &__dst, &v60) == 8)
    {
LABEL_25:
      v9 = 182;
LABEL_26:
      v10 = 112;
      goto LABEL_27;
    }

    v18 = 0;
    v19 = __rev16(v62);
    v20 = __rev16(HIWORD(v62));
    count = __rev16(v63);
    v21 = __rev16(v64);
    v7[548] = v21;
    v58 = __rev16(v65);
    v22 = v7;
    do
    {
      v23 = SLFRead(v8, 46, &__dst, &v60);
      v9 = 181;
      v10 = 112;
      if (v23 == 8 || v60 != 46)
      {
        goto LABEL_27;
      }

      for (i = 0; i != 23; ++i)
      {
        v22[i] = bswap32(*(&__dst + i * 2)) >> 16;
      }

      ++v18;
      v22 += 23;
    }

    while (v18 != 23);
    v25 = malloc_type_calloc(v19, 0x30uLL, 0x1000040EED21634uLL);
    *(v7 + 133) = v25;
    if (!v25)
    {
LABEL_82:
      v9 = 181;
      goto LABEL_6;
    }

    if (v19)
    {
      v26 = 0;
      for (j = 0; j != v19; ++j)
      {
        v28 = SLFRead(v8, 48, &__dst, &v60);
        v9 = 182;
        v10 = 112;
        if (v28 == 8 || v60 != 48)
        {
          goto LABEL_27;
        }

        v29 = 0;
        v30 = *(v7 + 133) + v26;
        v31 = &__dst + 1;
        do
        {
          *(v30 + 2 * v29++) = bswap32(*(v31 - 1)) >> 16;
          v31 += 2;
        }

        while (v29 != 24);
        v26 += 48;
      }
    }

    v32 = malloc_type_calloc(v20, 6uLL, 0x1000040274DC3F3uLL);
    *(v7 + 134) = v32;
    if (v32)
    {
      if (v20)
      {
        v33 = 0;
        v34 = 0;
        while (SLFRead(v8, 6, &__dst, &v60) != 8 && v60 == 6)
        {
          v36 = 0;
          v37 = *(v7 + 134) + v33;
          v38 = &__dst + 1;
          do
          {
            *(v37 + 2 * v36++) = bswap32(*(v38 - 1)) >> 16;
            v38 += 2;
          }

          while (v36 != 3);
          ++v34;
          v33 += 6;
          if (v34 == v20)
          {
            goto LABEL_53;
          }
        }

        v9 = 183;
        goto LABEL_26;
      }

LABEL_53:
      v39 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
      *(v7 + 135) = v39;
      if (v39)
      {
        v40 = SLFRead(v8, count, v39, &v60);
        v9 = 184;
        v10 = 112;
        if (v40 == 8 || v60 != count)
        {
          goto LABEL_27;
        }

        if (!v21)
        {
          goto LABEL_68;
        }

        v41 = malloc_type_calloc(v21, 4uLL, 0x100004052888210uLL);
        *(v7 + 138) = v41;
        if (v41)
        {
          v42 = SLFRead(v8, 4 * v21, &__dst, &v60);
          v9 = 182;
          v10 = 112;
          if (v42 == 8 || v60 != 4 * v21)
          {
            goto LABEL_27;
          }

          v43 = *(v7 + 138);
          v44 = &v62 + 1;
          v45 = v21;
          do
          {
            *v43++ = bswap32(*(v44 - 3));
            v44 += 4;
            --v45;
          }

          while (v45);
          v46 = malloc_type_calloc(v21, 1uLL, 0x100004077774924uLL);
          *(v7 + 139) = v46;
          if (v46)
          {
            v47 = SLFRead(v8, v21, v46, &v60);
            v9 = 182;
            v10 = 112;
            if (v47 == 8 || v60 != v21)
            {
              goto LABEL_27;
            }

            v48 = malloc_type_calloc(v21, 1uLL, 0x100004077774924uLL);
            *(v7 + 140) = v48;
            if (v48)
            {
              v49 = SLFRead(v8, v21, v48, &v60);
              v9 = 182;
              v10 = 112;
              if (v49 == 8 || v60 != v21)
              {
                goto LABEL_27;
              }

LABEL_68:
              if (!v58)
              {
                goto LABEL_80;
              }

              v50 = malloc_type_calloc(v58, 0x14uLL, 0x1000040A86A77D5uLL);
              *(v7 + 136) = v50;
              if (v50)
              {
                v51 = 0;
                v52 = 0;
                while (SLFRead(v8, 20, &__dst, &v60) != 8 && v60 == 20)
                {
                  v54 = 0;
                  v55 = *(v7 + 136) + v51;
                  v56 = &__dst + 1;
                  do
                  {
                    *(v55 + 2 * v54++) = bswap32(*(v56 - 1)) >> 16;
                    v56 += 2;
                  }

                  while (v54 != 10);
                  result = 0;
                  ++v52;
                  v51 += 20;
                  if (v52 == v58)
                  {
                    goto LABEL_81;
                  }
                }

                goto LABEL_25;
              }

              goto LABEL_82;
            }
          }
        }

        v9 = 184;
      }

      else
      {
        v9 = 183;
      }
    }

    else
    {
      v9 = 182;
    }

LABEL_6:
    v10 = 120;
    goto LABEL_27;
  }

  result = 8;
LABEL_81:
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PRExprLoad(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 108);
  if (!v4)
  {
LABEL_60:
    result = 0;
    goto LABEL_61;
  }

  v42 = 0;
  v9 = *(a2 + 104);
  if (a4)
  {
    v10 = *(a2 + 96);
  }

  else
  {
    v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x30040D3A788E3uLL);
    *(a2 + 96) = v10;
    if (!v10)
    {
      v12 = 240;
      goto LABEL_22;
    }
  }

  v11 = *(a2 + 40);
  if (SLSeek(v11, v4, 0))
  {
    v12 = 241;
    v13 = 111;
LABEL_24:
    v21 = *(a1 + 32);
    result = 220;
    *v21 = v13;
    *(v21 + 4) = 220;
    *(v21 + 8) = v12;
    goto LABEL_61;
  }

  v14 = 0;
  if (v9 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v9;
  }

  v39 = v15;
  while (1)
  {
    if (SLFRead(v11, 6, __dst, &v42) == 8)
    {
      v12 = 240;
      v13 = 112;
      goto LABEL_24;
    }

    v16 = __rev16(__dst[0]);
    v17 = (v44 << 8) | v45;
    v18 = *(a2 + 16) & 0xF0;
    if (v18 == 32 && *(a2 + 20) == 16)
    {
      v18 = 64;
    }

    if (v16 == v18)
    {
      break;
    }

    if (v9 <= ++v14)
    {
      v14 = v39;
      break;
    }

    v20 = v4 + v17;
    v4 += v17 + 6;
    if (SLSeek(v11, v20 + 6, 0))
    {
      v12 = 241;
      v13 = 111;
      goto LABEL_24;
    }
  }

  if (v16 && v9 <= v14)
  {
    result = 8;
    goto LABEL_61;
  }

  if (a4)
  {
    v23 = *v10;
  }

  else
  {
    v23 = malloc_type_calloc(1uLL, (v44 << 8) | v45, 0x7B25B1B7uLL);
    *v10 = v23;
    if (!v23)
    {
      v12 = 241;
      goto LABEL_22;
    }
  }

  v24 = SLFRead(v11, v17, v23, &v42);
  v12 = 240;
  v13 = 112;
  if (v24 || v42 != v17)
  {
    goto LABEL_24;
  }

  if (!a4)
  {
    v35 = malloc_type_calloc(1uLL, 0x180uLL, 0x1030040CE42941AuLL);
    v10[2] = v35;
    if (v35)
    {
      v36 = malloc_type_calloc(1uLL, 32 * v23[7] + 32, 0x102004038FAAB91uLL);
      v10[1] = v36;
      if (v36)
      {
        goto LABEL_35;
      }

      v12 = 243;
    }

    else
    {
      v12 = 242;
    }

LABEL_22:
    v13 = 120;
    goto LABEL_24;
  }

LABEL_35:
  if (*(a2 + 20) != 8)
  {
    goto LABEL_60;
  }

  v37 = v23[12];
  v38 = v23[13];
  v40 = v23;
  v25 = __rev16(*(v23 + 7));
  v41 = __rev16(*(v23 + 5));
  if (v41)
  {
    v26 = 0;
    LOWORD(v27) = 0;
    v28 = &v23[__rev16(*(v23 + 4))];
    do
    {
      v30 = *v28++;
      v29 = v30;
      if (v30)
      {
        v31 = 0;
        do
        {
          v32 = *v28;
          if (v32 <= 0x1B)
          {
            if (v32 == 24)
            {
              LOWORD(v27) = 3;
            }

            if (v32 == 23)
            {
              LOWORD(v27) = 3;
            }

            if (v32 - 25 < 3)
            {
              LOWORD(v27) = 4;
            }
          }

          else if (v32 - 28 >= 0xC)
          {
            if (v32 == 43)
            {
              LOWORD(v27) = 1;
            }

            if (v32 == 42)
            {
              LOWORD(v27) = 6;
            }
          }

          else
          {
            v27 = ActionStringLength(v28 + 1, a3) + 1;
          }

          ++v31;
          v28 += v27;
        }

        while (v31 < v29);
      }

      ++v26;
    }

    while (v26 < v41);
  }

  if (!v25)
  {
    goto LABEL_60;
  }

  v33 = &v40[256 * v37 + 1 + v38];
  do
  {
    AssignSeparator(&v40[__rev16(*(v33 - 1))], a3);
    result = 0;
    v33 += 2;
    --v25;
  }

  while (v25);
LABEL_61:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

char *AssignSeparator(char *result, int a2)
{
  v2 = *result;
  if (v2 > 0x10)
  {
    switch(v2)
    {
      case 0x13u:
        v4 = 46;
        v6 = (a2 & 4) == 0;
        v7 = 58;
        break;
      case 0x12u:
        v4 = 58;
        v6 = (a2 & 4) == 0;
        v7 = 46;
        break;
      case 0x11u:
        goto LABEL_9;
      default:
        return result;
    }

    if (v6)
    {
      v7 = v4;
    }

    if ((a2 & 2) != 0)
    {
      v4 = v7;
    }

    goto LABEL_19;
  }

  if (v2 - 15 < 2)
  {
    v3 = a2 == 0;
    v4 = 46;
    v5 = 44;
    goto LABEL_10;
  }

  if (v2 == 14)
  {
LABEL_9:
    v3 = a2 == 0;
    v4 = 44;
    v5 = 46;
LABEL_10:
    if (v3)
    {
      v4 = v5;
    }

LABEL_19:
    *result = v4;
  }

  return result;
}

uint64_t ActionStringLength(_BYTE *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = a1 + 1;
    v6 = 1;
    do
    {
      v7 = *v5;
      if (v7 > 0x27)
      {
        if (v7 == 40)
        {
          v11 = v5 + 1;
          if (v5[1])
          {
            v12 = 0;
            v13 = (v5 + 2);
            do
            {
              AssignSeparator(v13, a2);
              ++v12;
              v14 = *v11;
              ++v13;
            }

            while (v12 < v14);
          }

          else
          {
            v14 = 0;
          }

          v15 = &v11[v14];
          v17 = v15[1];
          v16 = v15 + 1;
          if (v17)
          {
            v18 = 0;
            v19 = (v16 + 1);
            do
            {
              AssignSeparator(v19, a2);
              ++v18;
              v20 = *v16;
              ++v19;
            }

            while (v18 < v20);
            v21 = v20 + 1;
          }

          else
          {
            v21 = 1;
          }

          LODWORD(v8) = ActionStringLength(&v16[v21], a2) + v14 + 2 + v21;
        }

        else if (v7 == 41)
        {
          LOWORD(v8) = 3;
        }

        else
        {
          LOWORD(v8) = 0;
        }
      }

      else if (*v5)
      {
        if (v7 == 5)
        {
          LOWORD(v8) = 2;
        }

        else
        {
          LOWORD(v8) = 0;
        }
      }

      else
      {
        LOWORD(v8) = v5[1];
        if (v5[1])
        {
          v9 = 0;
          v10 = (v5 + 2);
          do
          {
            AssignSeparator(v10, a2);
            ++v9;
            v8 = v5[1];
            ++v10;
          }

          while (v9 < v8);
        }

        LOWORD(v8) = v8 + 2;
      }

      v6 += v8;
      ++v4;
      v5 += v8;
    }

    while (v4 < v2);
  }

  else
  {
    return 1;
  }

  return v6;
}

uint64_t SetFarTable(void *a1, size_t size, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int *a6, uint64_t a7, int a8)
{
  v14 = size;
  v23 = 0;
  v16 = malloc_type_calloc(1uLL, size, 0x100004077774924uLL);
  *a1 = v16;
  if (!v16)
  {
    v19 = 120;
LABEL_8:
    v22 = *(a7 + 32);
    result = 220;
    *v22 = v19;
    *(v22 + 4) = 220;
    *(v22 + 8) = 440;
    return result;
  }

  v17 = v16;
  if (a5 == 513)
  {
    v18 = *a6;
  }

  else
  {
    v18 = bswap32(*(a4 + a5));
    *a6 = v18;
  }

  SLSeek(a3, v18 + a8, 0);
  v20 = SLFRead(a3, v14, v17, &v23);
  v19 = 112;
  if (v20 == 8)
  {
    goto LABEL_8;
  }

  result = 0;
  if (v23 != v14)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t SetHugeTable(char **a1, size_t count, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7)
{
  v12 = count;
  v19 = 0;
  v14 = malloc_type_calloc(count, 1uLL, 0x16217F7DuLL);
  *a1 = v14;
  if (v14)
  {
    v15 = v14;
    SLSeek(a3, bswap32(*(a4 + a5)) + a7, 0);
    result = SLHRead(a3, v12, v15, &v19);
    if (!result)
    {
      return result;
    }

    v17 = 112;
  }

  else
  {
    v17 = 120;
  }

  v18 = *(a6 + 32);
  result = 220;
  *v18 = v17;
  *(v18 + 4) = 220;
  *(v18 + 8) = 440;
  return result;
}

uint64_t PRGetDbElem(unsigned int a1, unsigned int a2)
{
  result = PRGetAppElem(a1);
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*result + 8 * a2);
    }
  }

  return result;
}

uint64_t PRDbTerm(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 128);
  *v4 = 2;
  ICspl("", v4);
  free(*(a2 + 128));
  PRloadProfile(a1, a2, 0, 0, 0);
  v5 = *(a2 + 48);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      free(v6);
    }

    v7 = *(v5 + 32);
    if (v7)
    {
      free(v7);
    }

    v8 = *(v5 + 40);
    if (v8)
    {
      free(v8);
    }

    v9 = *(v5 + 48);
    if (v9)
    {
      free(v9);
    }

    v10 = *(v5 + 64);
    if (v10)
    {
      free(v10);
    }

    v11 = *(v5 + 80);
    if (v11)
    {
      free(v11);
    }

    v12 = *(v5 + 96);
    if (v12)
    {
      free(v12);
    }

    v13 = *(v5 + 112);
    if (v13)
    {
      free(v13);
    }

    v14 = *(v5 + 128);
    if (v14)
    {
      free(v14);
    }

    v15 = *(v5 + 144);
    if (v15)
    {
      free(v15);
    }

    v16 = *(v5 + 160);
    if (v16)
    {
      free(v16);
    }

    v17 = *(v5 + 176);
    if (v17)
    {
      free(v17);
    }

    v18 = *(v5 + 184);
    if (v18)
    {
      free(v18);
    }

    v19 = *(v5 + 200);
    if (v19)
    {
      free(v19);
    }

    v20 = *(v5 + 208);
    if (v20)
    {
      free(v20);
    }

    v21 = *(v5 + 216);
    if (v21)
    {
      free(v21);
    }

    v22 = *(v5 + 224);
    if (v22)
    {
      free(v22);
    }

    v23 = *(v5 + 232);
    if (v23)
    {
      free(v23);
    }

    v24 = *(v5 + 248);
    if (v24)
    {
      free(v24);
    }

    v25 = *(v5 + 304);
    if (v25)
    {
      free(v25);
    }

    v26 = *(v5 + 312);
    if (v26)
    {
      if (*v26)
      {
        free(*v26);
      }

      v27 = *(v26 + 8);
      if (v27)
      {
        free(v27);
        *(v26 + 8) = 0;
      }

      free(*(v5 + 312));
    }

    v28 = *(v5 + 256);
    if (v28)
    {
      free(v28);
    }

    v29 = *(v5 + 272);
    if (v29)
    {
      free(v29);
    }

    v30 = *(v5 + 328);
    if (v30)
    {
      free(v30);
    }

    v31 = *(v5 + 288);
    if (v31)
    {
      free(v31);
    }

    v32 = *(a2 + 20);
    if (v32 == 18 || v32 == 4)
    {
      SLClose(*v5);
    }

    free(*(a2 + 48));
  }

  v33 = *(a2 + 72);
  if (v33)
  {
    v34 = *(v33 + 16);
    if (v34)
    {
      free(v34);
    }

    v35 = *(v33 + 24);
    if (v35)
    {
      free(v35);
    }

    free(*(a2 + 72));
  }

  v36 = *(a2 + 56);
  if (v36)
  {
    if (v36[1])
    {
      free(v36[1]);
      v36 = *(a2 + 56);
    }

    free(v36);
  }

  v37 = *(a2 + 64);
  if (v37)
  {
    if (v37[1])
    {
      free(v37[1]);
      v37 = *(a2 + 64);
    }

    free(v37);
  }

  PRPunTerm(a2);
  PRExprTerm(a2);
  v38 = *(a2 + 112);
  if (v38)
  {
    free(*(v38 + 8));
    free(*(v38 + 16));
    free(*(a2 + 112));
  }

  v39 = *(a2 + 120);
  if (v39)
  {
    v40 = *(v39 + 16);
    if (v40)
    {
      free(v40);
    }

    v41 = *(v39 + 24);
    if (v41)
    {
      free(v41);
    }

    free(*(a2 + 120));
  }

  return 0;
}

uint64_t PRPunTerm(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    v3 = v1[133];
    if (v3)
    {
      free(v3);
    }

    v4 = v1[134];
    if (v4)
    {
      free(v4);
    }

    v5 = v1[135];
    if (v5)
    {
      free(v5);
    }

    v6 = v1[136];
    if (v6)
    {
      free(v6);
    }

    v7 = v1[138];
    if (v7)
    {
      free(v7);
    }

    v8 = v1[139];
    if (v8)
    {
      free(v8);
    }

    v9 = v1[140];
    if (v9)
    {
      free(v9);
    }

    free(*(a1 + 80));
  }

  return 0;
}

uint64_t PRExprTerm(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    free(*v1);
    free(v1[1]);
    free(v1[2]);
    free(*(a1 + 96));
  }

  return 0;
}

uint64_t PRdecomp(char *a1, int a2, _BYTE *a3)
{
  v6 = malloc_type_malloc((a2 + 1), 0x100004077774924uLL);
  if (!v6)
  {
    return 120;
  }

  v7 = v6;
  if (a2)
  {
    v8 = 0;
    v9 = a3;
    v10 = a1;
    v11 = v6;
    while (2)
    {
      v12 = *v10;
      v13 = 8;
      do
      {
        v14 = __rev16(*&v9[2 * ((v12 & 0x80) == 0)]);
        v15 = &a3[4 * v14 + v14];
        v9 = v15 - 5;
        if (!*(v15 - 4) && !*v9)
        {
          v16 = *(v15 - 1);
          if (v16 == 10)
          {
            *v11++ = 13;
          }

          *v11++ = v16;
          if (++v8 == a2)
          {
            *v11 = 0;
            strcpy(a1, v6);
            v17 = 0;
            goto LABEL_16;
          }

          v9 = a3;
        }

        v12 *= 2;
        --v13;
      }

      while (v13);
      if (++v10 < &a1[a2])
      {
        continue;
      }

      break;
    }
  }

  v17 = 115;
LABEL_16:
  free(v7);
  return v17;
}

uint64_t PRDerive(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _WORD *a11)
{
  v13 = a4;
  v14 = a3;
  v15 = *(a3 + 136);
  v16 = ((*(a3 + 92) >> 17) & 1) + v15;
  if (((*(a3 + 92) >> 17) & 1) + v15)
  {
    v17 = *(a3 + 144);
    v18 = v16;
  }

  else
  {
    if (*(a3 + 128))
    {
      v17 = a3 + 128;
    }

    else
    {
      v17 = a3 + 16;
    }

    v18 = 1;
  }

  v112 = v18;
  v124 = 0;
  v119 = a5;
  v121 = v17;
  v114 = v16;
  if (a4 > 69)
  {
    if (a4 > 119)
    {
      v19 = 0;
      LOWORD(v20) = 0;
      if (a4 == 120)
      {
LABEL_95:
        if (v114)
        {
LABEL_124:
          LOWORD(v21) = v20;
          goto LABEL_125;
        }

        v80 = v14;
        v81 = *(v14 + 104);
        if (v81)
        {
          v82 = *(a2 + 20);
          if (v82 <= 0xB && ((1 << v82) & 0x8C0) != 0)
          {
            v83 = v19;
            v84 = strlen(v81);
            *(a8 + 2 * v20) = v84 + 1;
            v85 = (v119 + 2 * v20);
            SLfun(v81, 0, (v84 - 1), v85, (a6 + 2 * v20));
            v19 = v83;
            v86 = ((*v85 & 0x7F) << 8) + 19 * (*v85 >> 7);
            v87 = v86 + 64;
            v88 = v86 - 32685;
            if (v87 <= 0x7FECu)
            {
              v88 = v87;
            }

            *v85 = v88;
            *(a6 + 2 * v20) = (v88 ^ *(a6 + 2 * v20)) & 0x7FFF;
            *(a9 + 2 * v20) = -1;
            *(a7 + v20) = 0;
            *(a10 + 2 * v20) = 120;
            LOWORD(v20) = v20 + 1;
          }
        }

        v14 = v80;
LABEL_103:
        v89 = *(v14 + 112);
        if (v89 && (*(a2 + 20) & 0xFE) == 6)
        {
          v90 = v19;
          v91 = strlen(*(v14 + 112));
          v92 = v91;
          *(a8 + 2 * v20) = v91 + 2;
          *(a6 + 2 * v20) = 0;
          *(v119 + 2 * v20) = 64;
          *(a6 + 2 * v20) = *(a6 + 2 * v20) & 0x7FFF ^ 0x40;
          if (v91)
          {
            v93 = v91;
            do
            {
              v94 = *v89++;
              v95 = v94 + 19 * (*(v119 + 2 * v20) >> 7) + ((*(v119 + 2 * v20) & 0x7F) << 8);
              if (v95 > 0x7FEC)
              {
                LOWORD(v95) = v95 - 32749;
              }

              *(v119 + 2 * v20) = v95;
              *(a6 + 2 * v20) = (v95 ^ *(a6 + 2 * v20)) & 0x7FFF;
              --v93;
            }

            while (v93);
          }

          v96 = ((*(v119 + 2 * v20) & 0x7F) << 8) + 19 * (*(v119 + 2 * v20) >> 7);
          v97 = v96 + 42;
          v98 = v96 - 32707;
          if (v97 <= 0x7FECu)
          {
            v98 = v97;
          }

          *(v119 + 2 * v20) = v98;
          *(a6 + 2 * v20) = (v98 ^ *(a6 + 2 * v20)) & 0x7FFF;
          *(a9 + 2 * v20) = -1;
          *(a7 + v20) = 0;
          *(a10 + 2 * v20) = 140;
          LOWORD(v21) = v20 + 1;
          if (!v90)
          {
            result = PRSfxGet(*(v14 + 112), 1, v123, v122, &v124, a2);
            if (result)
            {
              return result;
            }

            v99 = v124;
            if (v124)
            {
              v100 = 0;
              v101 = 64;
              v102 = 64;
              do
              {
                for (i = (v92 - v123[--v99]); i > v100; ++v100)
                {
                  v101 = ((v101 & 0x7F) << 8) + 19 * (v101 >> 7) + *(*(v14 + 112) + v100);
                  if (v101 > 0x7FECu)
                  {
                    v101 -= 32749;
                  }

                  v102 = (v101 ^ v102) & 0x7FFF;
                }

                *(a8 + 2 * v21) = v100 + 2;
                *(v119 + 2 * v21) = v101;
                *(a6 + 2 * v21) = v102;
                v104 = *(v119 + 2 * v21);
                v105 = ((v104 & 0x7F) << 8) + 19 * (v104 >> 7);
                v106 = v105 + 42;
                v107 = v105 - 32707;
                if (v106 <= 0x7FECu)
                {
                  v107 = v106;
                }

                *(v119 + 2 * v21) = v107;
                *(a6 + 2 * v21) = (v107 ^ *(a6 + 2 * v21)) & 0x7FFF;
                *(a9 + 2 * v21) = -1;
                *(a7 + v21) = v122[v99];
                *(a10 + 2 * v21) = 140;
                LOWORD(v21) = v21 + 1;
                v124 = v99;
              }

              while (v99);
            }
          }

          goto LABEL_125;
        }

        goto LABEL_124;
      }

      if (a4 != 140)
      {
LABEL_29:
        v32 = *(a1 + 32);
        *v32 = 0xDC00000068;
        *(v32 + 8) = 60;
        return 230;
      }

      if (!v114)
      {
        v19 = 0;
        LOWORD(v20) = 0;
        goto LABEL_103;
      }

      LOWORD(v21) = 0;
    }

    else
    {
      if (a4 != 70)
      {
        v19 = 0;
        LOWORD(v20) = 0;
        if (a4 != 100)
        {
          goto LABEL_29;
        }

LABEL_82:
        if (!v114)
        {
          v73 = *(v14 + 112);
          if (v73)
          {
            v74 = *(a2 + 20);
            if (v74 <= 0xB && ((1 << v74) & 0x8C0) != 0)
            {
              v75 = v19;
              *(a6 + 2 * v20) = 0;
              *(a5 + 2 * v20) = 0;
              *(a8 + 2 * v20) = strlen(v73) + 1;
              v76 = ((*(v119 + 2 * v20) & 0x7F) << 8) + 19 * (*(v119 + 2 * v20) >> 7);
              v77 = v76 + 64;
              if ((v76 + 64) > 0x7FECu)
              {
                v77 = v76 - 32685;
              }

              *(v119 + 2 * v20) = v77;
              *(a6 + 2 * v20) = (v77 ^ *(a6 + 2 * v20)) & 0x7FFF;
              if (*(a8 + 2 * v20) != 1)
              {
                v78 = 0;
                do
                {
                  v79 = v73[v78] + 19 * (*(v119 + 2 * v20) >> 7) + ((*(v119 + 2 * v20) & 0x7F) << 8);
                  if (v79 > 0x7FEC)
                  {
                    LOWORD(v79) = v79 - 32749;
                  }

                  *(v119 + 2 * v20) = v79;
                  *(a6 + 2 * v20) = (v79 ^ *(a6 + 2 * v20)) & 0x7FFF;
                  ++v78;
                }

                while (v78 < (*(a8 + 2 * v20) - 1));
              }

              *(a9 + 2 * v20) = -1;
              *(a7 + v20) = 0;
              *(a10 + 2 * v20) = 100;
              LOWORD(v20) = v20 + 1;
              v19 = v75;
            }
          }
        }

        LOWORD(v21) = v20;
        if (v13 == 100)
        {
          goto LABEL_125;
        }

        goto LABEL_95;
      }

      LOBYTE(v34) = 0;
      LOWORD(v20) = 0;
LABEL_57:
      v118 = v34;
      v109 = v14;
      if ((*(a2 + 20) & 0xFE) == 6)
      {
        v54 = 0;
        v55 = v20;
        do
        {
          v56 = v54;
          v57 = *(v17 + 8 * v54);
          v58 = strlen(v57);
          v59 = v58;
          v20 = v55;
          *(a8 + 2 * v55) = v58 + 1;
          *(a6 + 2 * v55) = 0;
          *(v119 + 2 * v55) = 42;
          *(a6 + 2 * v55) = *(a6 + 2 * v55) & 0x7FFF ^ 0x2A;
          v60 = v58;
          if (v58)
          {
            v61 = v58;
            do
            {
              v62 = *v57++;
              v63 = v62 + 19 * (*(v119 + 2 * v20) >> 7) + ((*(v119 + 2 * v20) & 0x7F) << 8);
              if (v63 > 0x7FEC)
              {
                LOWORD(v63) = v63 - 32749;
              }

              *(v119 + 2 * v20) = v63;
              *(a6 + 2 * v20) = (v63 ^ *(a6 + 2 * v20)) & 0x7FFF;
              --v61;
            }

            while (v61);
          }

          v64 = v114 ? v56 : -1;
          *(a9 + 2 * v20) = v64;
          *(a7 + v20) = 0;
          *(a10 + 2 * v20) = 70;
          result = PRSfxGet(*(v121 + 8 * v56), 0, v123, v122, &v124, a2);
          if (result)
          {
            return result;
          }

          v65 = v124;
          LOWORD(v20) = v20 + 1;
          if (v124)
          {
            a5 = v119;
            v17 = v121;
            do
            {
              v66 = v123[--v65];
              if (v60 <= v66)
              {
                v70 = 42;
                v69 = 42;
                v72 = v123[v65];
              }

              else
              {
                v67 = (*(v121 + 8 * v56) + v123[v65]);
                v68 = v59 - v123[v65];
                v69 = 42;
                v70 = 42;
                do
                {
                  v71 = *v67++;
                  v69 = ((v69 & 0x7F) << 8) + 19 * (v69 >> 7) + v71;
                  if (v69 > 0x7FECu)
                  {
                    v69 -= 32749;
                  }

                  v70 ^= v69 & 0x7FFF;
                  --v68;
                }

                while (v68);
                v72 = v59;
              }

              *(a8 + 2 * v20) = v72 - v66 + 1;
              *(v119 + 2 * v20) = v69;
              *(a6 + 2 * v20) = v70;
              *(a9 + 2 * v20) = v64;
              *(a7 + v20) = v122[v65];
              *(a10 + 2 * v20) = 70;
              v124 = v65;
              LOWORD(v20) = v20 + 1;
            }

            while (v65);
          }

          else
          {
            a5 = v119;
            v17 = v121;
          }

          v54 = v56 + 1;
          v55 = v20;
        }

        while (v112 > (v56 + 1));
      }

      LOWORD(v21) = v20;
      v14 = v109;
      v19 = v118;
      if (v13 != 70)
      {
        goto LABEL_82;
      }
    }

LABEL_125:
    result = 0;
    *a11 = v21;
    return result;
  }

  if (a4 == 10 || a4 == 20)
  {
    v22 = 0;
    do
    {
      while (1)
      {
        v23 = *(v17 + 8 * v22);
        v24 = strlen(v23);
        *(a8 + 2 * v22) = v24;
        SLfun(v23, 0, (v24 - 1), (v119 + 2 * v22), (a6 + 2 * v22));
        if (v16)
        {
          break;
        }

        *(a9 + 2 * v22) = -1;
        *(a7 + v22) = 0;
        v17 = v121;
        *(a10 + 2 * v22++) = 20;
        if (v22 == v112)
        {
          v21 = v112;
          a5 = v119;
          v26 = a4;
          goto LABEL_34;
        }
      }

      v25 = v22;
      *(a9 + 2 * v22) = v22;
      *(a7 + v22) = 0;
      v17 = v121;
      *(a10 + 2 * v22++) = 20;
    }

    while (v22 != v112);
    v21 = v112;
    a5 = v119;
    v26 = a4;
    if ((*(*(v14 + 152) + 94) & 2) == 0)
    {
      *(a9 + 2 * v112) = -1;
      *(a7 + v112) = 0;
      v27 = *(v14 + 152);
      v28 = *(v27 + 128);
      if (v28)
      {
        v29 = strlen(*(v27 + 128));
        *(a8 + 2 * v112) = v29;
        v30 = (v29 - 1);
        v31 = v28;
      }

      else
      {
        v35 = *(v27 + 32);
        *(a8 + 2 * v112) = v35;
        v31 = *(v27 + 16);
        v30 = (v35 - 1);
      }

      SLfun(v31, 0, v30, (v119 + 2 * v112), (a6 + 2 * v112));
      v17 = v121;
      *(a10 + 2 * v112) = 30;
      v21 = v25 + 2;
      a5 = v119;
    }

LABEL_34:
    if (v26 == 20)
    {
      goto LABEL_125;
    }
  }

  else
  {
    v21 = 0;
    if (a4 != 50)
    {
      goto LABEL_29;
    }
  }

  v108 = v14;
  v36 = 0;
  v34 = 0;
  LODWORD(v20) = v21;
  v111 = a8;
  while (1)
  {
    v117 = v34;
    v37 = v36;
    v115 = *(v17 + 8 * v36);
    v116 = v36;
    v38 = a5;
    v39 = strlen(v115);
    *(a8 + 2 * v20) = v39 + 1;
    v40 = (v38 + 2 * v20);
    SLfun(v115, 0, (v39 - 1), v40, (a6 + 2 * v20));
    v41 = ((*v40 & 0x7F) << 8) + 19 * (*v40 >> 7);
    v42 = v41 + 42;
    v43 = v41 - 32707;
    if (v42 <= 0x7FECu)
    {
      v43 = v42;
    }

    *v40 = v43;
    *(a6 + 2 * v20) = (v43 ^ *(a6 + 2 * v20)) & 0x7FFF;
    v44 = v114 ? v116 : -1;
    *(a9 + 2 * v20) = v44;
    *(a7 + v20) = 0;
    *(a10 + 2 * v20) = 50;
    result = PRSfxGet(*(v121 + 8 * v37), 1, v123, v122, &v124, a2);
    if (result)
    {
      return result;
    }

    v45 = v124;
    v34 = v117;
    if (!v124)
    {
      v34 = 1;
    }

    LODWORD(v20) = v20 + 1;
    if (v124)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      a8 = v111;
      a5 = v119;
      v17 = v121;
      do
      {
        for (j = (v39 - v123[--v45]); j > v46; ++v46)
        {
          v47 = ((v47 & 0x7F) << 8) + 19 * (v47 >> 7) + *(*(v121 + 8 * v37) + v46);
          if (v47 > 0x7FECu)
          {
            v47 -= 32749;
          }

          v48 = (v47 ^ v48) & 0x7FFF;
        }

        *(v111 + 2 * v20) = v46 + 1;
        *(v119 + 2 * v20) = v47;
        *(a6 + 2 * v20) = v48;
        v50 = *(v119 + 2 * v20);
        v51 = ((v50 & 0x7F) << 8) + 19 * (v50 >> 7);
        v52 = v51 + 42;
        v53 = v51 - 32707;
        if (v52 <= 0x7FECu)
        {
          v53 = v52;
        }

        *(v119 + 2 * v20) = v53;
        *(a6 + 2 * v20) = (v53 ^ *(a6 + 2 * v20)) & 0x7FFF;
        *(a9 + 2 * v20) = v44;
        *(a7 + v20) = v122[v45];
        *(a10 + 2 * v20) = 50;
        v124 = v45;
        LODWORD(v20) = v20 + 1;
      }

      while (v45);
    }

    else
    {
      a8 = v111;
      a5 = v119;
      v17 = v121;
    }

    v36 = v37 + 1;
    if (v112 <= (v37 + 1))
    {
      LOWORD(v21) = v20;
      v13 = a4;
      v14 = v108;
      if (a4 == 50)
      {
        goto LABEL_125;
      }

      goto LABEL_57;
    }
  }
}