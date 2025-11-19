uint64_t stress_addWord(uint64_t a1, char *__s, __int16 a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 10);
  if (!*(a9 + 10))
  {
    v20 = heap_Calloc(*(a1 + 8), 1, 3201);
    *a9 = v20;
    if (v20)
    {
      v18 = v20;
      v143 = a3;
      v144 = a5;
      v19 = a8;
      *(a9 + 10) = 50;
      goto LABEL_8;
    }

LABEL_67:
    v59 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v21, v22, v23, v24, v132);
    return v59;
  }

  v18 = *a9;
  if (*(a9 + 8) >= v17)
  {
    v25 = heap_Realloc(*(a1 + 8), *a9, (v17 << 6) + 1280);
    if (v25)
    {
      v143 = a3;
      v144 = a5;
      v19 = a8;
      *a9 = v25;
      cstdlib_memset((v25 + (*(a9 + 8) << 6)), 0, 0x500uLL);
      *(a9 + 10) += 20;
      v18 = *a9;
      goto LABEL_8;
    }

    goto LABEL_67;
  }

  v143 = a3;
  v144 = a5;
  v19 = a8;
LABEL_8:
  v26 = v18 + (*(a9 + 8) << 6);
  v27 = *(a1 + 8);
  v28 = cstdlib_strlen(__s);
  v29 = heap_Calloc(v27, 1, (v28 + 4));
  *v26 = v29;
  if (v29)
  {
    cstdlib_strcpy(v29, __s);
    v34 = *(a1 + 8);
    v35 = cstdlib_strlen(a6);
    v36 = heap_Calloc(v34, 1, (v35 + 1));
    *(v26 + 16) = v36;
    if (v36)
    {
      cstdlib_strcpy(v36, a6);
      v37 = *(a1 + 8);
      v38 = v19;
      v39 = cstdlib_strlen(v19);
      v40 = heap_Calloc(v37, 1, (v39 + 1));
      *(v26 + 24) = v40;
      if (v40)
      {
        cstdlib_strcpy(v40, v19);
        v41 = *(a7 + 8);
        *(v26 + 54) = v41;
        v42 = heap_Calloc(*(a1 + 8), v41, 32);
        *(v26 + 56) = v42;
        if (v42)
        {
          v136 = a4;
          if (!*(a7 + 8))
          {
LABEL_69:
            v148 = 0;
            *v147 = 0;
            v146 = 0;
            *v145 = 0;
            v71 = heap_Calloc(*(a1 + 8), 5, 40);
            *(v26 + 40) = v71;
            if (v71)
            {
              v76 = Utf8_Utf8NbrOfSymbols(*v26);
              v77 = 0;
              LOWORD(v78) = 0;
              v79 = 0;
              v80 = 0;
              v81 = 0;
              v82 = 0;
              v141 = v76 - 1;
              v83 = (v76 - 1);
              v134 = 5;
              v135 = v83;
              do
              {
                v84 = v78;
                UTF8Char = utf8_getUTF8Char(*v26, v78, v147);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_128;
                }

                if (v83 == v77 || v147[0] == 45)
                {
                  v86 = heap_Calloc(*(a1 + 8), 1, (v84 - v79 + 1));
                  v139 = v82;
                  *(*(v26 + 40) + 40 * v82) = v86;
                  if (!v86)
                  {
                    goto LABEL_129;
                  }

                  v137 = v79;
                  cstdlib_strncpy(v86, (*v26 + v79), (v84 - v79));
                  *(*(*(v26 + 40) + 40 * v82) + (v84 - v79)) = 0;
                  v87 = *(v26 + 40) + 40 * v82;
                  v150 = 0;
                  *__sa = 0;
                  v88 = Utf8_Utf8NbrOfSymbols(*v87);
                  v89 = v88 - 1;
                  v138 = v81;
                  if (v88 != 1)
                  {
                    v133 = v80;
                    v90 = 0;
                    v91 = 0;
                    v92 = 0;
                    while (1)
                    {
                      v93 = v90;
                      UTF8Char = utf8_getUTF8Char(*v87, v90, __sa);
                      if ((UTF8Char & 0x80000000) != 0)
                      {
                        goto LABEL_128;
                      }

                      IsChineseLetter = utf8_IsChineseLetter(__sa);
                      v95 = isPunc(__sa);
                      if (!v91 && !IsChineseLetter && !v95)
                      {
                        v89 = 1;
LABEL_85:
                        v96 = v89 - v92;
                        v80 = v133;
                        goto LABEL_86;
                      }

                      v92 += v95;
                      v90 = v93 + cstdlib_strlen(__sa);
                      if (++v91 >= v89)
                      {
                        goto LABEL_85;
                      }
                    }
                  }

                  v96 = 0;
LABEL_86:
                  *(v87 + 32) = v96;
                  v97 = *(v26 + 40) + 40 * v82;
                  v98 = *(v97 + 32);
                  v99 = *v97;
                  v83 = v135;
                  v101 = 0;
                  if (*v97)
                  {
                    if (cstdlib_strlen(*v97))
                    {
                      v100 = cstdlib_strlen(v99);
                      if (cstdlib_strstr("',.:?!;()<>[]#$+-=^_|", &v99[v100 - 1]) || cstdlib_strstr("',.:?!;()<>[]#$+-=^_|", v99))
                      {
                        v101 = 1;
                      }
                    }
                  }

                  v102 = *(v26 + 40) + 40 * v82;
                  *(v102 + 16) = v101;
                  v103 = *(a1 + 8);
                  v104 = cstdlib_strlen(*v102);
                  v105 = heap_Calloc(v103, 1, (v104 + 4));
                  *(*(v26 + 40) + 40 * v82 + 24) = v105;
                  if (!v105)
                  {
                    goto LABEL_129;
                  }

                  *v105 = 0;
                  v106 = *(v26 + 40) + 40 * v82;
                  if (*(v106 + 16) == 1)
                  {
                    v107 = v80;
                    v150 = 0;
                    *__sa = 0;
                    v108 = Utf8_Utf8NbrOfSymbols(*v106);
                    if (v108 != 1)
                    {
                      v109 = 0;
                      v110 = 0;
                      v111 = (v108 - 1);
                      while (1)
                      {
                        v112 = v109;
                        UTF8Char = utf8_getUTF8Char(*v106, v109, __sa);
                        if ((UTF8Char & 0x80000000) != 0)
                        {
                          break;
                        }

                        v113 = isPunc(__sa);
                        v114 = utf8_IsChineseLetter(__sa);
                        if (!v110 && !v114 && !v113)
                        {
                          v115 = *(v106 + 24);
                          v116 = *v106;
                          v117 = cstdlib_strlen(*v106);
                          cstdlib_strncpy(v115, v116, (v117 - 1));
                          goto LABEL_106;
                        }

                        if (!v113)
                        {
                          cstdlib_strcat(*(v106 + 24), __sa);
                        }

                        v109 = v112 + cstdlib_strlen(__sa);
                        if (++v110 >= v111)
                        {
                          goto LABEL_106;
                        }
                      }

LABEL_128:
                      v59 = UTF8Char;
                      goto LABEL_130;
                    }

LABEL_106:
                    v80 = v107;
                    v83 = v135;
                  }

                  else
                  {
                    cstdlib_strcpy(*(v106 + 24), *v106);
                  }

                  v81 = v98 + v138;
                  v79 = v137;
                  v82 = v139;
                  if (v147[0] == 45)
                  {
                    v82 = (v139 + 1);
                    if (v134 <= (v139 + 1))
                    {
                      v134 += 3;
                      v118 = heap_Realloc(*(a1 + 8), *(v26 + 40), 40 * v134);
                      if (!v118)
                      {
                        goto LABEL_129;
                      }

                      *(v26 + 40) = v118;
                      cstdlib_memset((v118 + 40 * (v139 + 1)), 0, 0x78uLL);
                    }
                  }
                }

                v78 = v84 + cstdlib_strlen(v147);
                if (v147[0] == 45)
                {
                  v79 = v78;
                }

                v77 = ++v80;
              }

              while (v80 <= v141);
              *(v26 + 50) = v134;
              *(v26 + 48) = v82 + 1;
              *(v26 + 52) = v81;
              v119 = Utf8_Utf8NbrOfSymbols(*(v26 + 16));
              v120 = 0;
              LOWORD(v121) = 0;
              v122 = 0;
              v123 = 0;
              v124 = 0;
              v142 = v119 - 1;
              v125 = (v119 - 1);
              while (1)
              {
                v126 = v121;
                v59 = utf8_getUTF8Char(*(v26 + 16), v121, v145);
                if ((v59 & 0x80000000) != 0)
                {
                  break;
                }

                if (v125 == v120 || v145[0] == 45)
                {
                  v127 = heap_Calloc(*(a1 + 8), 1, (v126 - v122 + 1));
                  *(*(v26 + 40) + 40 * v124 + 8) = v127;
                  if (!v127)
                  {
                    goto LABEL_129;
                  }

                  cstdlib_strncpy(v127, (*(v26 + 16) + v122), (v126 - v122));
                  *(*(*(v26 + 40) + 40 * v124 + 8) + (v126 - v122)) = 0;
                  if (v145[0] == 45)
                  {
                    ++v124;
                  }
                }

                v121 = v126 + cstdlib_strlen(v145);
                if (v145[0] == 45)
                {
                  v122 = v121;
                }

                v120 = ++v123;
                if (v123 > v142)
                {
                  if (!cstdlib_strcmp(*(v26 + 24), "normal") || !cstdlib_strcmp(*(v26 + 24), "mnx"))
                  {
                    *(a9 + 12) += *(v26 + 52);
                  }

                  *(v26 + 8) = v143;
                  *(v26 + 10) = v136;
                  *(v26 + 32) = v136 == v144;
                  ++*(a9 + 8);
                  return v59;
                }
              }
            }

            else
            {
LABEL_129:
              v59 = 2315264010;
              log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v72, v73, v74, v75, v132);
            }

LABEL_130:
            v128 = *(v26 + 40);
            if (v128)
            {
              if (*(v26 + 50))
              {
                v129 = 0;
                v130 = 0;
                v131 = *(v26 + 40);
                do
                {
                  if (v131)
                  {
                    if (*(v131 + v129))
                    {
                      heap_Free(*(a1 + 8), *(v131 + v129));
                      v128 = *(v26 + 40);
                      *(v128 + v129) = 0;
                    }

                    if (*(v128 + v129 + 8))
                    {
                      heap_Free(*(a1 + 8), *(v128 + v129 + 8));
                      v128 = *(v26 + 40);
                      *(v128 + v129 + 8) = 0;
                    }

                    v131 = v128;
                    if (*(v128 + v129 + 24))
                    {
                      heap_Free(*(a1 + 8), *(v128 + v129 + 24));
                      v128 = *(v26 + 40);
                      *(v128 + v129 + 24) = 0;
                      v131 = v128;
                    }
                  }

                  ++v130;
                  v129 += 40;
                }

                while (v130 < *(v26 + 50));
              }

              heap_Free(*(a1 + 8), v128);
              *(v26 + 40) = 0;
            }

            goto LABEL_37;
          }

          v43 = 0;
          v140 = v19;
          while (1)
          {
            v44 = *(a1 + 8);
            v45 = cstdlib_strlen(*(*a7 + 16 * v43));
            v46 = heap_Calloc(v44, 1, (v45 + 1));
            *(*(v26 + 56) + 32 * v43) = v46;
            if (!v46)
            {
              break;
            }

            cstdlib_strcpy(v46, *(*a7 + 16 * v43));
            v47 = *(a1 + 8);
            v48 = cstdlib_strlen(v38);
            v49 = heap_Calloc(v47, 1, (v48 + 1));
            *(*(v26 + 56) + 32 * v43 + 16) = v49;
            if (!v49)
            {
              break;
            }

            cstdlib_strcpy(v49, v38);
            v50 = heap_Calloc(*(a1 + 8), 1, 4);
            v51 = *(v26 + 56) + 32 * v43;
            *(v51 + 8) = v50;
            if (!v50)
            {
              break;
            }

            if (cstdlib_strcmp(*(v51 + 16), "normal") && cstdlib_strcmp(*(*(v26 + 56) + 32 * v43 + 16), "mnx"))
            {
              cstdlib_strcpy(*(*(v26 + 56) + 32 * v43 + 8), "=");
            }

            else
            {
              v52 = *(v26 + 56) + 32 * v43;
              v150 = 0;
              *__sa = 0;
              if (!cstdlib_strlen(*(v52 + 8)))
              {
                v53 = Utf8_Utf8NbrOfSymbols(*v52);
                if (v53 != 1)
                {
                  v54 = 0;
                  v55 = 0;
                  v56 = (v53 - 1);
                  while (1)
                  {
                    v57 = v54;
                    v58 = utf8_getUTF8Char(*v52, v54, __sa);
                    if ((v58 & 0x80000000) != 0)
                    {
                      break;
                    }

                    if (__sa[0] != 46)
                    {
                      if (cstdlib_strlen(__sa) <= 1 && __sa[0] - 54 >= 0xFFFFFFFA && cstdlib_strlen(*(v52 + 8)) <= 2)
                      {
                        cstdlib_strcat(*(v52 + 8), __sa);
                      }

                      v54 = v57 + cstdlib_strlen(__sa);
                      if (++v55 < v56)
                      {
                        continue;
                      }
                    }

                    goto LABEL_21;
                  }

                  v59 = v58;
                  if (v18)
                  {
                    goto LABEL_37;
                  }

                  return v59;
                }
              }

LABEL_21:
              if (!cstdlib_strlen(*(v52 + 8)))
              {
                cstdlib_strcpy(*(v52 + 8), "=");
              }

              v38 = v140;
            }

            *(*(v26 + 56) + 32 * v43++ + 24) = 0;
            if (v43 >= *(a7 + 8))
            {
              goto LABEL_69;
            }
          }
        }
      }
    }
  }

  v59 = 2315264010;
  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v30, v31, v32, v33, v132);
LABEL_37:
  if (*v26)
  {
    heap_Free(*(a1 + 8), *v26);
    *v26 = 0;
  }

  v60 = *(v26 + 16);
  if (v60)
  {
    heap_Free(*(a1 + 8), v60);
    *(v26 + 16) = 0;
  }

  v61 = *(v26 + 24);
  if (v61)
  {
    heap_Free(*(a1 + 8), v61);
    *(v26 + 24) = 0;
  }

  v62 = *(v26 + 56);
  if (v62)
  {
    if (*(v26 + 54))
    {
      v63 = 0;
      v64 = 0;
      v65 = *(v26 + 56);
      do
      {
        if (v65)
        {
          if (*(v65 + v63))
          {
            heap_Free(*(a1 + 8), *(v65 + v63));
            v62 = *(v26 + 56);
            *(v62 + v63) = 0;
          }

          if (*(v62 + v63 + 16))
          {
            heap_Free(*(a1 + 8), *(v62 + v63 + 16));
            v62 = *(v26 + 56);
            *(v62 + v63 + 16) = 0;
          }

          v65 = v62;
          if (*(v62 + v63 + 8))
          {
            heap_Free(*(a1 + 8), *(v62 + v63 + 8));
            v62 = *(v26 + 56);
            *(v62 + v63 + 8) = 0;
            v65 = v62;
          }
        }

        ++v64;
        v63 += 32;
      }

      while (v64 < *(v26 + 54));
    }

    heap_Free(*(a1 + 8), v62);
    *(v26 + 56) = 0;
  }

  v66 = *(v26 + 40);
  if (v66)
  {
    if (*(v26 + 50))
    {
      v67 = 0;
      v68 = 0;
      v69 = *(v26 + 40);
      do
      {
        if (v69)
        {
          if (*(v69 + v67))
          {
            heap_Free(*(a1 + 8), *(v69 + v67));
            v66 = *(v26 + 40);
            *(v66 + v67) = 0;
          }

          if (*(v66 + v67 + 8))
          {
            heap_Free(*(a1 + 8), *(v66 + v67 + 8));
            v66 = *(v26 + 40);
            *(v66 + v67 + 8) = 0;
          }

          v69 = v66;
          if (*(v66 + v67 + 24))
          {
            heap_Free(*(a1 + 8), *(v66 + v67 + 24));
            v66 = *(v26 + 40);
            *(v66 + v67 + 24) = 0;
            v69 = v66;
          }
        }

        ++v68;
        v67 += 40;
      }

      while (v68 < *(v26 + 50));
    }

    heap_Free(*(a1 + 8), v66);
    *(v26 + 40) = 0;
  }

  return v59;
}

void *stat_stress_freeCandidatePhons(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v4 = result;
    v5 = *(a2 + 8);
    if (*(a2 + 8))
    {
      v6 = 0;
      v7 = 0;
      v8 = v3;
      do
      {
        if (v8)
        {
          if (*(v8 + v6))
          {
            heap_Free(v4[1], *(v8 + v6));
            v3 = *a2;
            *(v3 + v6) = 0;
            v5 = *(a2 + 8);
            v8 = v3;
          }
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < v5);
    }

    result = heap_Free(v4[1], v3);
    *a2 = 0;
  }

  return result;
}

BOOL isPunc(const char *a1)
{
  if (cstdlib_strlen(a1) > 1)
  {
    return 0;
  }

  v3 = *a1;
  result = 1;
  if ((v3 - 33) > 0x3E || ((1 << (v3 - 33)) & 0x740000007E003FCFLL) == 0)
  {
    return v3 == 124;
  }

  return result;
}

BOOL isERphon(unsigned __int8 *a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  v5 = v4;
  if (v4 < 2 || (v4 < 5 || cstdlib_strcmp(&__s[v4 - 5], "%~r")) && cstdlib_strcmp(&__s[v5 - 2], "%r"))
  {
    v6 = 0;
  }

  else
  {
    v7 = *__s;
    v6 = v7 != 97 && v7 != 36;
  }

  v10 = 0;
  utf8_Utf8CharTo16bit(a1, &v10);
  return v10 != 20799 && v6;
}

uint64_t fe_stress_igtr_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_1[a3];
  v8 = (a2 - 1);
  while (cstdlib_strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t fe_stress_feat_character(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, char *a7)
{
  v11 = a3;
  v48 = a4;
  v12 = cstdlib_strlen(*(*(*a2 + (a3 << 6) + 40) + 40 * a4));
  if (!a3)
  {
    v14 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v13 = 0;
  v14 = 0;
  v15 = *a2;
  do
  {
    if (*(v15 + (v13 << 6) + 48))
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v14 += cstdlib_strlen(*(*(v15 + (v13 << 6) + 40) + v16));
        ++v17;
        v15 = *a2;
        v16 += 40;
      }

      while (v17 < *(*a2 + (v13 << 6) + 48));
    }

    ++v13;
  }

  while (v13 != v11);
  if (a4)
  {
LABEL_10:
    v18 = 0;
    do
    {
      v14 += cstdlib_strlen(*(*(*a2 + (v11 << 6) + 40) + v18));
      v18 += 40;
    }

    while (40 * v48 != v18);
  }

LABEL_12:
  v19 = a3 + 1;
  v20 = *(a2 + 4);
  v21 = *a2;
  if (v20 <= (a3 + 1))
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = v19;
    do
    {
      if (*(v21 + (v23 << 6) + 48))
      {
        v24 = 0;
        v25 = 0;
        do
        {
          v22 += cstdlib_strlen(*(*(v21 + (v23 << 6) + 40) + v24));
          ++v25;
          v21 = *a2;
          v24 += 40;
        }

        while (v25 < *(*a2 + (v23 << 6) + 48));
        LOWORD(v20) = *(a2 + 4);
      }

      ++v23;
    }

    while (v23 < v20);
  }

  if (*(v21 + (v11 << 6) + 48) > (a4 + 1))
  {
    v26 = (a4 + 1);
    v27 = 40 * v26;
    do
    {
      v22 += cstdlib_strlen(*(*(v21 + (v11 << 6) + 40) + v27));
      ++v26;
      v21 = *a2;
      v27 += 40;
    }

    while (v26 < *(*a2 + (v11 << 6) + 48));
  }

  v28 = heap_Calloc(*(a1 + 8), 1, (v12 + v14 + v22 + 1));
  if (!v28)
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v29, v30, v31, v32, v45);
    return 2315264010;
  }

  v33 = v28;
  v34 = *(a2 + 4);
  v35 = *a2;
  if (*(a2 + 4))
  {
    v36 = 0;
    do
    {
      if (*(v35 + (v36 << 6) + 48))
      {
        v37 = 0;
        v38 = 0;
        do
        {
          cstdlib_strcat(v33, *(*(v35 + (v36 << 6) + 40) + v37));
          ++v38;
          v35 = *a2;
          v37 += 40;
        }

        while (v38 < *(*a2 + (v36 << 6) + 48));
        v34 = *(a2 + 4);
      }

      ++v36;
    }

    while (v36 < v34);
  }

  v39 = v35 + (v11 << 6);
  if (*(v39 + 48) <= a4 || cstdlib_strlen(*(*(v39 + 40) + 40 * v48)) <= a5)
  {
    goto LABEL_45;
  }

  NextUtf8Offset = v14 + a5;
  if (a6 < 0)
  {
    if (!NextUtf8Offset)
    {
      goto LABEL_45;
    }

    do
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v33, NextUtf8Offset);
      NextUtf8Offset = PreviousUtf8Offset;
      v44 = ~a6 == 0;
      LOWORD(a6) = a6 + 1;
    }

    while (!v44 && PreviousUtf8Offset);
    if (a6)
    {
      goto LABEL_45;
    }
  }

  else if (a6)
  {
    while (NextUtf8Offset != cstdlib_strlen(v33))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(v33, NextUtf8Offset);
      v41 = a6--;
      if (v41 <= 1)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_45;
  }

LABEL_44:
  if ((utf8_getUTF8Char(v33, NextUtf8Offset, a7) & 0x80000000) != 0)
  {
LABEL_45:
    cstdlib_strcpy(a7, "=");
  }

  heap_Free(*(a1 + 8), v33);
  return 0;
}

uint64_t fe_stress_igtr_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, char *a6)
{
  v13 = -1;
  if (!fe_stress_igtr_isFeatureRequired(a2, a3, a4, &v13))
  {
    return 0;
  }

  if (!cstdlib_strcmp(a6, ""))
  {
    cstdlib_strcpy(*(a5 + 8 * v13), "=");
    return 0;
  }

  v9 = cstdlib_strlen(a6);
  v10 = v13;
  if (v9 < 0x41)
  {
    v11 = 0;
  }

  else
  {
    v11 = hlp_resizeFeature(a1, (a5 + 8 * v13), a6);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }
  }

  cstdlib_strcpy(*(a5 + 8 * v10), a6);
  return v11;
}

const char *fe_stress_feat_phon(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 54);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 54);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 10);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 54))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 56) + 32 * v5);
  }
}

const char *fe_stress_feat_tone(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 54);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 54);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 10);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 54))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 56) + 32 * v5 + 8);
  }
}

const char *fe_stress_feat_word(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 48);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 48);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 16);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  if (v5 >= *(v9 + 48))
  {
    return "=";
  }

  else
  {
    return *(*(v9 + 40) + 40 * v5 + 24);
  }
}

const char *fe_stress_feat_pos(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = *a1;
  v5 = a4 + a3;
  v6 = *(*a1 + (a2 << 6) + 48);
  if (a4 + a3 >= v6)
  {
    while (*(a1 + 4) - 1 > a2)
    {
      a4 -= v6;
      LOWORD(a2) = a2 + 1;
      v5 = a3 + a4;
      v6 = *(v4 + (a2 << 6) + 48);
      if (v5 < v6)
      {
        goto LABEL_6;
      }
    }

    v5 = a3 + a4;
  }

LABEL_6:
  if (a2 && (v5 & 0x80000000) != 0)
  {
    a2 = a2;
    v7 = (v4 + (a2 << 6) - 16);
    do
    {
      v8 = *v7;
      v7 -= 32;
      a4 += v8;
      v5 = a3 + a4;
      --a2;
    }

    while (a2 && (v5 & 0x80000000) != 0);
  }

  if ((v5 & 0x80000000) != 0)
  {
    return "=";
  }

  v9 = v4 + (a2 << 6);
  result = "=";
  if (v5 < *(v9 + 48))
  {
    v11 = *(*(v9 + 40) + 40 * v5 + 8);
    if (v11)
    {
      return v11;
    }
  }

  return result;
}

uint64_t heapAdjustDownNN(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t heapPopNN(uint64_t **a1)
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
    heapAdjustDownNN(*a1, 0, (v1 - 1));
    v5 = *(a1 + 4) - 1;
    *(a1 + 4) = v5;
    return (*a1)[v5];
  }

  return result;
}

uint64_t heapAddNN(uint64_t result, uint64_t a2)
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
      result = heapAdjustDownNN(*v4, v5, *(v4 + 8));
    }

    while (v6 > 1);
  }

  return result;
}

uint64_t astar_searchNN(uint64_t a1, uint64_t a2, __int16 a3, int a4, unsigned __int16 *a5, uint64_t *a6)
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
      v31 = heapPopNN(&v41);
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
        if (generateNewStateNN(a1, v32, v21 + 16 * v30, v33, a2, a4, a5, a6))
        {
          *(v21 + 16 * v30 + 6) = v30;
          heapAddNN(&v41, v21 + 16 * v30++);
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
          *(*(a2 + 1064) + 184 * v37[2] + 76) = 4;
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

uint64_t ipowNN(__int16 a1, unsigned int a2)
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

_WORD *generateNewStateNN(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, unsigned __int16 *a7, uint64_t *a8)
{
  *a3 = *(a2 + 6);
  *(a3 + 8) = a4;
  v8 = *(a2 + 4) + 1;
  *(a3 + 4) = v8;
  if (a6 >= v8)
  {
    v9 = a3;
    v16 = 0;
    v17 = *(a5 + 1064);
    do
    {
      v18 = *(v17 + 184 * v8 + 56);
      v19 = cstdlib_strlen(v18);
      v16 += Utf8_LengthInUtf8chars(v18, v19);
      v17 = *(a5 + 1064);
      v20 = v9[2];
      if (*(v17 + 184 * v9[2] + 76) == 3)
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
    v9[1] = calculateScoreNN(a1, a4, v9, (*(a2 + 12) + v16), *a7, *(a2 + 8), a8, a5) + v21;
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

uint64_t calculateScoreNN(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, uint64_t *a7, uint64_t a8)
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

  if (a2 == 1 && applyRulesNN(a1, a8, *(a3 + 4), a7) == 1)
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

uint64_t matchPANDPCONTEXT_TRuleNN(_WORD *a1, uint64_t a2, uint64_t *a3, unsigned int *a4, int *a5, _WORD *a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v8 = a5;
  *a5 = 0;
  *(a4 + 6) = 0;
  if (!*(a3 + 4))
  {
    v30 = 1;
    goto LABEL_50;
  }

  v10 = a3;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v10;
    v15 = *(a4 + 2);
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           regex %d", a6, a7, a8, *(v14 + v12 + 2));
    }

    v16 = *(v14 + v12 + 4);
    if (*(v14 + v12 + 4))
    {
      if ((v16 & 4) != 0)
      {
        if (v35 == 2)
        {
          ++*(a4 + 4);
        }

        else if (v35 == 1)
        {
          ++*(a4 + 3);
        }

        if (a1[4])
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           DIRECTIVE_MOVE2NEXT - window increased (ruleDef->left_window=%d ruleDef->right_window=%d)", a6, a7, a8, *(a4 + 3));
        }

        goto LABEL_39;
      }

      v17 = (v16 >> 1) & 1;
      v18 = v16 & 1;
      v19 = (v16 >> 3) & 1;
      v20 = (v16 >> 4) & 1;
    }

    else
    {
      v18 = 0;
      v17 = 0;
      v19 = 0;
      v20 = 0;
    }

    if (a1[4] >= 2u)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d bHasComma=%d", a6, a7, a8, DOMAIN2STRING_0[*a4]);
    }

    if (v17)
    {
      v21 = *(a4 + 2);
      v22 = *(a2 + 1064);
      if (a1[4])
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bHasComma = %d", a6, a7, a8, *(a4 + 2));
        v21 = *(a4 + 2);
        v22 = *(a2 + 1064);
      }

      v25 = v18 == (*(v22 + 184 * v21 + 100) == 1);
      v10 = a3;
      if (v25)
      {
LABEL_48:
        v30 = 0;
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v23 = *(a4 + 2);
      v24 = *(a2 + 1064);
      if (a1[4])
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bIsLastInPhr = %d", a6, a7, a8, *(a4 + 2));
        v23 = *(a4 + 2);
        v24 = *(a2 + 1064);
      }

      v28 = *(v24 + 184 * v23 + 140);
      goto LABEL_38;
    }

    if (v20)
    {
      v26 = *(a4 + 2);
      v27 = *(a2 + 1064);
      if (a1[4])
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           pSent->words[%d].bIsFirstInPhr = %d", a6, a7, a8, *(a4 + 2));
        v26 = *(a4 + 2);
        v27 = *(a2 + 1064);
      }

      v28 = *(v27 + 184 * v26 + 136);
LABEL_38:
      v29 = v18 ^ (v28 == 1);
      v10 = a3;
      if ((v29 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (*a4 - 1 <= 2 && v35)
    {
      if (v35 == 2)
      {
        if (v15 + *(a4 + 4) + 1 >= *(a2 + 1072))
        {
          goto LABEL_53;
        }
      }

      else if (v35 != 1 || *(a4 + 3) >= v15)
      {
LABEL_53:
        v30 = a1[4];
        if (a1[4])
        {
          v32 = "           context not found. rule not applicable. RETURN LH_FALSE";
          v8 = a5;
LABEL_55:
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, v32, a6, a7, a8, 0);
          v30 = 0;
          goto LABEL_50;
        }

LABEL_49:
        v8 = a5;
        goto LABEL_50;
      }
    }

    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           REGEX FAILED", a6, a7, a8, 0);
    }

    if (!v18)
    {
      break;
    }

    *a6 = *(v14 + v12 + 2);
    v10 = a3;
    if (a1[4])
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           negate match - return LH_TRUE", a6, a7, a8, 0);
    }

LABEL_39:
    ++v13;
    v12 += 6;
    if (v13 >= *(v10 + 4))
    {
      v30 = 1;
      goto LABEL_49;
    }
  }

  v30 = a1[4];
  v8 = a5;
  if (a1[4])
  {
    v32 = "           return LH_FALSE";
    goto LABEL_55;
  }

LABEL_50:
  *v8 = v30;
  return 0;
}

uint64_t matchPANDPRULE_TRuleNN(uint64_t a1, const char **a2, unsigned __int16 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t **a7, unsigned int *a8, int *a9)
{
  v23 = 1;
  if (*(a5 + 8))
  {
    matched = logPANDPRULE_TRule(a1, a2, a3, a4, a5, a7);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "       <%s>", v14, v15, v16, *a2);
    cstdlib_strcpy(*a2, "");
  }

  else
  {
    matched = 0;
  }

  *a9 = 0;
  if (!*a7 || (matched = matchPANDPCONTEXT_TRuleNN(a5, a6, *a7, a8, &v23, &v22, 1, a8), v18 = v23, v23 == 1))
  {
    v19 = a7[1];
    if (!v19 || (v23 = 0, matched = matchPANDPCONTEXT_TRuleNN(a5, a6, v19, a8, &v23, &v22, 0, a8), v18 = v23, v23 == 1))
    {
      v20 = a7[2];
      if (v20)
      {
        v23 = 0;
        matched = matchPANDPCONTEXT_TRuleNN(a5, a6, v20, a8, &v23, &v22, 2, a8);
        v18 = v23;
      }

      else
      {
        v18 = 1;
      }
    }
  }

  *a9 = v18;
  return matched;
}

uint64_t last_POSNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, unsigned int a5)
{
  if (!result)
  {
    return result;
  }

  v6 = 0;
  for (i = *(*(a2 + 1064) + 184 * a3 + 48) + 1; *(i - 1) == 45; ++i)
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
    v8 = *(*(a2 + 1064) + 184 * a3 + 48);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a5;
  while (cstdlib_strcmp(*a4, v8))
  {
    ++a4;
    if (!--v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t first_POSNN(uint64_t a1, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  LODWORD(v5) = a5;
  v10 = *(a1 + 8);
  v11 = cstdlib_strlen(*(*(a2 + 1064) + 184 * a3 + 48));
  v12 = heap_Alloc(v10, (v11 + 1));
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  for (i = *(*(a2 + 1064) + 184 * a3 + 48); ; ++i)
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
    while (cstdlib_strcmp(v13, *a4))
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

uint64_t has_POSNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, unsigned int a5)
{
  if (result)
  {
    if (a5)
    {
      v8 = a5;
      while (!cstdlib_strstr(*(*(a2 + 1064) + 184 * a3 + 48), *a4))
      {
        ++a4;
        if (!--v8)
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

uint64_t first_characterNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  if (result)
  {
    LODWORD(v5) = a5;
    utf8_getUTF8Char(*(*(a2 + 1064) + 184 * a3 + 48), 0, __s2);
    if (v5)
    {
      v5 = v5;
      while (cstdlib_strcmp(*a4, __s2))
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

uint64_t last_characterNN(uint64_t result, uint64_t a2, unsigned int a3, const char **a4, int a5)
{
  v16 = 0;
  *__s2 = 0;
  if (result)
  {
    LODWORD(v5) = a5;
    v7 = *(*(a2 + 1064) + 184 * a3 + 48);
    v8 = cstdlib_strlen(v7);
    v9 = cstdlib_strlen(v7);
    v10 = v8 - utf8_GetCurrentUtf8Offset(v7, v9 - 1);
    v11 = cstdlib_strlen(v7);
    CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v7, v11 - 1);
    if (v10 >= Utf8_LengthInBytes(&v7[CurrentUtf8Offset], 1))
    {
      v13 = cstdlib_strlen(v7);
      v14 = utf8_GetCurrentUtf8Offset(v7, v13 - 1);
      utf8_getUTF8Char(v7, v14, __s2);
    }

    if (v5)
    {
      v5 = v5;
      while (cstdlib_strcmp(*a4, __s2))
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

uint64_t initPhrasingRuleStructNN(uint64_t a1, uint64_t a2, unsigned int a3)
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

uint64_t addPhrasingRuleNN(uint64_t a1, uint64_t a2, const char *a3)
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
  result = parseOneRuleNN(a1, v8, v6, a3);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    ++*(a2 + 8);
  }

  return result;
}

uint64_t parseOneRuleNN(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
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
    v10 = (a4 - 1);
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
    *(v15 + 8) = cstdlib_atoi(v10);
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
    if (!cstdlib_strcmp(v13, "last-pos"))
    {
      *v15 = last_POSNN;
    }

    if (!cstdlib_strcmp(v13, "first-pos"))
    {
      *v15 = first_POSNN;
    }

    if (!cstdlib_strcmp(v13, "has-pos"))
    {
      *v15 = has_POSNN;
    }

    if (!cstdlib_strcmp(v13, "first-character"))
    {
      *v15 = first_characterNN;
    }

    if (!cstdlib_strcmp(v13, "last-character"))
    {
      *v15 = last_characterNN;
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
      cstdlib_strcpy(v25, v18);
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

uint64_t releasePhrasingRuleStructNN(uint64_t a1, uint64_t a2)
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
              if (*(*v7 + v9 + 16))
              {
                heap_Free(*(a1 + 8), *(*v7 + v9 + 16));
                v3 = *a2;
              }

              if (*(*(v3 + 16 * v6) + v9 + 24))
              {
                heap_Free(*(a1 + 8), *(*(v3 + 16 * v6) + v9 + 24));
                v3 = *a2;
              }

              ++v10;
              v7 = v3 + 16 * v6;
              v9 += 40;
            }

            while (v10 < *(v7 + 8));
            v8 = *v7;
          }

          heap_Free(*(a1 + 8), v8);
          v3 = *a2;
          *(*a2 + 16 * v6) = 0;
          v5 = *(a2 + 10);
        }

        ++v6;
      }

      while (v6 < v5);
    }

    heap_Free(*(a1 + 8), v3);
  }

  *(a2 + 10) = 0;
  *a2 = 0;
  return 0;
}

uint64_t applyRulesNN(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
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
      v13 = *(a2 + 1072);
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

uint64_t com_crf_GetCfgParamVal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char **a6)
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

uint64_t com_IncludeCRF(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  __s1 = 0;
  CfgParamVal = com_crf_GetCfgParamVal(a1, a2, a3, "statbnd_include", "NO", &__s1);
  if ((CfgParamVal & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = __s1;
    if (cstdlib_strcmp(__s1, "CRF"))
    {
      v7 = cstdlib_strcmp(v6, "crf") == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  *a4 = v7;
  return CfgParamVal;
}

uint64_t pandpCrfInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v111[4] = *MEMORY[0x277D85DE8];
  *(a11 + 224) = 0;
  v17 = (a11 + 224);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  *__dst = 0u;
  v96 = 0u;
  v18 = hlp_BrokerString(a5, __dst, "crfphrase");
  if (v18 < 0)
  {
    v30 = v18;
    v23 = a5;
    log_OutText(*(a5 + 32), "FE_PHRASING", 0, 0, "Could not assemble broker string for CRF phrasing model %s", v19, v20, v21, "crfphrase");
    goto LABEL_7;
  }

  v22 = a1;
  v23 = a5;
  v24 = v22;
  Only_ReferenceCnt = crf_Init_ReadOnly_ReferenceCnt(v22, a2, a3, a4, v17, 2, __dst, "CRPH", 1031, 0, 0);
  if (Only_ReferenceCnt < 0)
  {
    v30 = Only_ReferenceCnt;
    log_OutText(*(v23 + 32), "FE_PHRASING", 5, 0, "no CRF Phrasing model found", v26, v27, v28, __dst);
LABEL_7:
    v31 = v30 | 0x8A002000;
    if (*v17)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(v23, a6, *v17);
      *v17 = 0;
    }

    return v31;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  *__dst = 0u;
  v96 = 0u;
  v92 = 0;
  *__s1 = 0;
  v89 = 0;
  *v90 = 0;
  v111[0] = 0;
  v93 = 0;
  v94 = 0;
  if ((com_crf_GetCfgParamVal(a9, a10, a7, "fephrase_max_rule", "1024", &v89) & 0x80000000) != 0)
  {
    v29 = 1024;
  }

  else
  {
    v29 = cstdlib_atoi(v89);
  }

  v32 = a11;
  v33 = heap_Calloc(*(v23 + 8), 1, v29);
  if (v33)
  {
    v38 = v33;
    v42 = hlp_BrokerString(v23, __dst, "sprules");
    v43 = *(v23 + 32);
    if (v42 < 0)
    {
      log_OutText(v43, "FE_PHRASING", 0, 0, "Could not assemble broker string for SP rules %s", v39, v40, v41, "sprules");
      v68 = v42 | 0x8A002000;
    }

    else
    {
      log_OutText(v43, "FE_PHRASING", 5, 0, "looking for SP rules %s at %s", v39, v40, v41, "sprules");
      v44 = ssftriff_reader_ObjOpen(v24, a2, 2, __dst, "SPDT", 1031, &v93);
      if (v44 < 0)
      {
        v68 = v44;
        log_OutText(*(v23 + 32), "FE_PHRASING", 0, 0, "no sp rules", v45, v46, v47, v86);
        *(a11 + 242) = 0;
        *(a11 + 232) = 0;
      }

      else
      {
        while (1)
        {
          v48 = ssftriff_reader_OpenChunk(v93, __s1, &v90[1], v111);
          if (v48 < 0)
          {
            break;
          }

          if (!cstdlib_strcmp(__s1, "DSTR"))
          {
            ssftriff_reader_GetChunkData(v93, v90[1], &v94, v56);
            if (inited < 0)
            {
              goto LABEL_41;
            }

            v90[0] = 0;
            ssftriff_reader_ReadStringZ(v93, v94, v90[1], 0, 0, v90);
            ssftriff_reader_ReadStringZ(v93, v94, v90[1], 0, v38, v90);
            v58 = cstdlib_strchr(v38, 10);
            if (v58)
            {
              *v58 = 0;
            }

            v59 = cstdlib_strchr(v38, 58);
            v60 = v59 ? cstdlib_atoi(v59 + 2) : 0;
            v61 = v90[0];
            inited = initPhrasingRuleStruct(v23, a11 + 232, v60);
            if (inited < 0)
            {
              goto LABEL_41;
            }

            if (v60)
            {
              v62 = v60;
              v63 = 0;
              while (1)
              {
                do
                {
                  v90[0] = 0;
                  ssftriff_reader_ReadStringZ(v93, v94, v90[1], v61, 0, v90);
                  ssftriff_reader_ReadStringZ(v93, v94, v90[1], v61, v38, v90);
                  v61 += v90[0];
                  v64 = v38 + 1;
                  for (i = v38; ; ++i)
                  {
                    v66 = *i;
                    if (v66 > 0x23)
                    {
                      goto LABEL_33;
                    }

                    if (((1 << v66) & 0x100000200) == 0)
                    {
                      break;
                    }

                    ++v64;
                  }
                }

                while (((1 << v66) & 0x800002401) != 0);
LABEL_33:
                while (v66)
                {
                  if (v66 == 35)
                  {
                    *(v64 - 1) = 0;
                    break;
                  }

                  v67 = *v64++;
                  LOBYTE(v66) = v67;
                }

                inited = addPhrasingRule(v23, a11 + 232, v38);
                if (inited < 0)
                {
                  break;
                }

                if (++v63 >= v62)
                {
                  goto LABEL_15;
                }
              }

LABEL_41:
              v68 = inited;
              goto LABEL_42;
            }
          }

LABEL_15:
          inited = ssftriff_reader_CloseChunk(v93);
          if (inited < 0)
          {
            goto LABEL_41;
          }
        }

        if ((v48 & 0x1FFF) == 0x14)
        {
          v68 = 0;
        }

        else
        {
          v68 = v48;
        }

LABEL_42:
        v32 = a11;
      }
    }

    if (v93)
    {
      v69 = ssftriff_reader_ObjClose(v93, v49, v50, v51, v52, v53, v54, v55);
      if (v69 < 0 && v68 > -1)
      {
        v68 = v69;
      }
    }

    heap_Free(*(v23 + 8), v38);
    if ((v68 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    log_OutPublic(*(v23 + 32), "FE_PHRASING", 37000, 0, v34, v35, v36, v37, v85);
  }

  releasePhrasingRuleStruct(v23, v32 + 232);
LABEL_52:
  v71 = 0;
  v93 = 0;
  v94 = 0;
  LOWORD(v89) = -1;
  __s1[0] = 0;
  *(v32 + 250) = 0u;
  v72 = (v32 + 250);
  v87 = (v32 + 270);
  v73 = (v32 + 290);
  v74 = (v32 + 310);
  v72[1] = 0u;
  v72[2] = 0u;
  v111[0] = "JOY_KEYS";
  v111[1] = "DID_KEYS";
  v111[2] = "NEU_KEYS";
  v111[3] = "COM_KEYS";
  v72[3] = 0u;
  v72[4] = 0u;
  while (1)
  {
    cstdlib_strcpy(__dst, "statbnd_");
    cstdlib_strcat(__dst, v111[v71]);
    LOWORD(v89) = 0;
    if (((*(a7 + 96))(a9, a10, "fecfg", __dst, &v94, &v89, __s1) & 0x80000000) != 0 || !v89)
    {
      return 0;
    }

    v75 = cstdlib_strchr(*v94, __s1[0]);
    if (v75)
    {
      *v75 = 0;
    }

    v76 = *v94;
    v77 = **v94;
    if (**v94)
    {
      break;
    }

    v78 = 0;
LABEL_78:
    if (++v71 == 4)
    {
      *(a11 + 248) = v78;
      return 0;
    }
  }

  v78 = 0;
  while (1)
  {
    for (j = 0; v77; v77 = v76[++j])
    {
      if (v77 == 44)
      {
        break;
      }
    }

    cstdlib_strcpy(__dst, "statbnd_");
    cstdlib_strncat(__dst, v76, j);
    LOWORD(v89) = 0;
    v80 = (*(a7 + 96))(a9, a10, "fecfg", __dst, &v93, &v89, __s1);
    if ((v80 & 0x80000000) != 0)
    {
      return v80;
    }

    if (v89)
    {
      v81 = cstdlib_strchr(*v93, __s1[0]);
      if (v81)
      {
        *v81 = 0;
      }

      v82 = cstdlib_atoi(*v93);
      v83 = v72;
      if (v71)
      {
        v83 = v87;
        if (v71 != 1)
        {
          v83 = v74;
        }

        if (v71 == 2)
        {
          v83 = v73;
        }
      }

      *(v83 + v78) = v82;
    }

    if (v76[j] == 44)
    {
      v76 += j + 1;
    }

    else
    {
      v76 += j;
    }

    ++v78;
    v77 = *v76;
    if (!*v76)
    {
      goto LABEL_78;
    }
  }
}

uint64_t pandpCrfDeinit(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *(a3 + 224);
    if (v5)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(result, a2, v5);
      *(a3 + 224) = 0;
    }

    return releasePhrasingRuleStruct(v4, a3 + 232);
  }

  return result;
}

uint64_t crfWeakPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, uint64_t a7, uint64_t a8)
{
  v201 = 0;
  v200 = 0;
  v199 = 0;
  if ((com_crf_GetCfgParamVal(a2, a3, a1, "fephrase_max_char", "6", &v199) & 0x80000000) != 0)
  {
    v15 = 6;
  }

  else
  {
    v15 = cstdlib_atoi(v199);
  }

  if ((com_crf_GetCfgParamVal(a2, a3, a1, "fephrase_max_pos", "6", &v199) & 0x80000000) != 0)
  {
    v16 = 6;
  }

  else
  {
    v16 = cstdlib_atoi(v199);
  }

  v186 = a6;
  v187 = a5;
  v193 = a7;
  if ((com_crf_GetCfgParamVal(a2, a3, a1, "fephrase_max_obs", "1024", &v199) & 0x80000000) != 0)
  {
    v17 = 1024;
  }

  else
  {
    v17 = cstdlib_atoi(v199);
  }

  v185 = v17;
  v18 = heap_Calloc(*(a4 + 8), 1, v15);
  v19 = heap_Calloc(*(a4 + 8), 1, v15);
  v20 = heap_Calloc(*(a4 + 8), 2, v15);
  v21 = heap_Calloc(*(a4 + 8), 1, v15);
  v22 = heap_Calloc(*(a4 + 8), 1, v15);
  v23 = heap_Calloc(*(a4 + 8), 2, v15);
  v24 = heap_Calloc(*(a4 + 8), 1, v16);
  v25 = v16;
  v26 = v19;
  v27 = heap_Calloc(*(a4 + 8), 1, v25);
  v32 = v27;
  v191 = v22;
  v192 = v18;
  v189 = v20;
  v190 = v21;
  if (!v18 || !v19 || !v20 || !v21 || !v22 || !v23 || !v24 || !v27)
  {
    goto LABEL_138;
  }

  v184 = v24;
  *v18 = 0;
  *v19 = 0;
  *v20 = 0;
  *v21 = 0;
  *v22 = 0;
  *v23 = 0;
  if (v187 | v193)
  {
    log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Parameter errors: %s %s\n", v29, v30, v31, "level0");
  }

  v33 = heap_Calloc(*(a4 + 8), v186[4], 8);
  if (!v33)
  {
LABEL_138:
    v146 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v28, v29, v30, v31, v167);
    goto LABEL_196;
  }

  v34 = v33;
  __s2 = v19;
  v194 = v32;
  v39 = heap_Calloc(*(a4 + 8), v186[4], 8);
  if (!v39)
  {
    v146 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v35, v36, v37, v38, v167);
    v44 = 0;
    goto LABEL_176;
  }

  v44 = heap_Calloc(*(a4 + 8), v186[4], 4);
  if (!v44)
  {
    v146 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v40, v41, v42, v43, v167);
    goto LABEL_176;
  }

  v179 = v23;
  v176 = v34;
  if (!v186[4])
  {
    v188 = 0;
    v101 = 0;
    LODWORD(v142) = 0;
LABEL_142:
    v146 = crf_Process_Constrained(*(a8 + 224), v34, v142, &v201, &v200, v39, v44);
    if ((v146 & 0x80000000) == 0 && v186[4])
    {
      v150 = v101;
      v151 = 0;
      v152 = 73;
      while (1)
      {
        log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "returned labels: %s\n", v147, v148, v149, *(v201 + 8 * v151));
        v153 = 1;
        if (cstdlib_strncmp("B", *(v201 + 8 * v151), 1uLL))
        {
          v153 = 1;
          if (cstdlib_strncmp("M", *(v201 + 8 * v151), 1uLL))
          {
            if (cstdlib_strncmp("E", *(v201 + 8 * v151), 1uLL) && cstdlib_strncmp("S", *(v201 + 8 * v151), 1uLL))
            {
              goto LABEL_151;
            }

            v153 = 3;
          }
        }

        *(*v186 + v152) = v153;
LABEL_151:
        ++v151;
        v152 += 224;
        if (v151 >= v186[4])
        {
          v154 = 0;
          v23 = v179;
          v34 = v176;
          v101 = v150;
          goto LABEL_170;
        }
      }
    }

LABEL_155:
    v154 = 0;
    goto LABEL_170;
  }

  v197 = 0;
  v198 = 0;
  v196 = 0;
  v45 = *(a4 + 8);
  v46 = cstdlib_strlen(*(*v186 + 8));
  v47 = heap_Alloc(v45, (v46 + 2));
  if (!v47)
  {
    v143 = 0;
    v52 = 0;
LABEL_154:
    v188 = v52;
    v146 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v48, v49, v50, v51, v167);
    v101 = v143;
    goto LABEL_155;
  }

  v182 = v47;
  v52 = 0;
  v168 = 0;
  v53 = 0;
  while (1)
  {
    v54 = *(*v186 + 224 * v53 + 8);
    if (v54)
    {
      v55 = v182;
      *v182 = 0;
      v56 = *v54;
      if (*v54)
      {
        do
        {
          v57 = v54 + 1;
          if ((v56 - 48) - 1 <= 8)
          {
            v58 = *v57;
            if (v58 == 125)
            {
              v57 = v54 + 2;
            }

            else
            {
              __s1[0] = v56;
              if (v58)
              {
                v59 = 0;
                v60 = 1;
                while (1)
                {
                  if ((v58 - 48) - 1 > 4)
                  {
                    v60 = (v59 + 1);
                    v57 = &v54[v59 + 1];
                    goto LABEL_41;
                  }

                  v61 = &v54[v59];
                  __s1[v59 + 1] = v58;
                  if (v59 == 1)
                  {
                    break;
                  }

                  ++v60;
                  LOWORD(v58) = v61[2];
                  ++v59;
                  if (!v61[2])
                  {
                    goto LABEL_40;
                  }
                }

                v60 = 3;
LABEL_40:
                v57 = v61 + 2;
              }

              else
              {
                v60 = 1;
              }

LABEL_41:
              __s1[v60] = 0;
              if (!cstdlib_strcmp(__s1, "55"))
              {
                v65 = v182;
                v66 = "1-";
LABEL_58:
                cstdlib_strcat(v65, v66);
                goto LABEL_59;
              }

              if (!cstdlib_strcmp(__s1, "35"))
              {
                v65 = v182;
                v66 = "2-";
                goto LABEL_58;
              }

              if (!cstdlib_strcmp(__s1, "214") || !cstdlib_strcmp(__s1, "33"))
              {
                v65 = v182;
                v66 = "3-";
                goto LABEL_58;
              }

              if (!cstdlib_strcmp(__s1, "51") || !cstdlib_strcmp(__s1, "21"))
              {
                v65 = v182;
                v66 = "4-";
                goto LABEL_58;
              }

              if (!cstdlib_strcmp(__s1, "11") || !cstdlib_strcmp(__s1, "13"))
              {
                v65 = v182;
                v66 = "5-";
                goto LABEL_58;
              }

              if (!cstdlib_strcmp(__s1, "34") || !cstdlib_strcmp(__s1, "22"))
              {
                v65 = v182;
                v66 = "6-";
                goto LABEL_58;
              }

              log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "invalid input prone: %s\n", v62, v63, v64, __s1);
            }
          }

LABEL_59:
          v56 = *v57;
          v54 = v57;
        }

        while (*v57);
      }

      v67 = cstdlib_strlen(v182);
      if (v67)
      {
        v182[v67 - 1] = 0;
      }

      else
      {
        cstdlib_strcpy(v182, "0");
      }

      v68 = v185;
    }

    else
    {
      log_OutText(*(a4 + 32), "FE_PHRASING", 0, 0, "invalid input parameter: %s\n", v49, v50, v51, "szSourcePron");
      v68 = v185;
      v55 = v182;
    }

    v69 = cstdlib_strlen(v55);
    if (v69)
    {
      v173 = v55[v69 - 1];
      v174 = *v55;
    }

    else
    {
      v173 = 48;
      v174 = 48;
    }

    if (!cstdlib_strcmp(*(*(*v186 + 224 * v53 + 16) + 8), "{T:comma}"))
    {
      cstdlib_strcpy(*(*(*v186 + 224 * v53 + 16) + 8), "g");
    }

    __s = heap_Alloc(*(a4 + 8), v68);
    if (!__s)
    {
      goto LABEL_169;
    }

    v52 = heap_Alloc(*(a4 + 8), v68);
    if (!v52)
    {
      goto LABEL_169;
    }

    v181 = v53;
    v183 = v55;
    if (cstdlib_strcmp(**(*v186 + 224 * v53 + 16), "-"))
    {
      break;
    }

    if (*(*(a8 + 224) + 32))
    {
      v93 = v55;
      v94 = v23;
      sprintf(__s, "%s %d %s %s %s %s %s %s %s %s %s %s %s %s %d %d %s %s %d", "-", 1, *(*(*v186 + 224 * v53 + 16) + 8), v93, "-", "-", "-", "-", "NULL", "NULL", "-", "-", *(*(*v186 + 224 * v53 + 16) + 8), *(*(*v186 + 224 * v53 + 16) + 8), 1, 1, v93, v93, 1);
      v95 = extstdlib_strtok_r(__s, " ", &v196);
      *v52 = 0;
      if (v95)
      {
        v96 = v95;
        v97 = 0;
        do
        {
          v98 = *(*(*(a8 + 224) + 32) + 8);
          if (v98[v97] == 49)
          {
            v99 = cstdlib_strlen(v98) - 1;
            cstdlib_strcat(v52, " ");
            cstdlib_strcat(v52, v96);
            v100 = v99 == v97;
            v53 = v181;
            v94 = v179;
            if (!v100)
            {
              cstdlib_strcat(v52, " ");
            }
          }

          ++v97;
          v96 = extstdlib_strtok_r(0, " ", &v196);
        }

        while (v96);
      }

      v101 = __s;
      cstdlib_strcpy(__s, v52);
      v34 = v176;
      v23 = v94;
    }

    else
    {
      v101 = __s;
      cstdlib_strcpy(__s, "- 1 ");
      cstdlib_strcat(__s, *(*(*v186 + 224 * v53 + 16) + 8));
      cstdlib_strcat(__s, " ");
      cstdlib_strcat(__s, v55);
      cstdlib_strcat(__s, " 1 - - NULL NULL");
    }

    v113 = *(a4 + 8);
    v114 = cstdlib_strlen(v101);
    v115 = heap_Alloc(v113, (v114 + 1));
    v34[v53] = v115;
    if (!v115)
    {
      v55 = v183;
LABEL_169:
      v188 = v52;
      v146 = 2315264010;
      log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v70, v71, v72, v73, v167);
      heap_Free(*(a4 + 8), v55);
      v154 = 0;
      v101 = __s;
      goto LABEL_170;
    }

    cstdlib_strcpy(v115, v101);
    v116 = v183;
LABEL_135:
    heap_Free(*(a4 + 8), v116);
    ++v53;
    v142 = v186[4];
    if (v53 >= v142)
    {
      v188 = v52;
      goto LABEL_142;
    }

    v143 = v101;
    v197 = 0;
    v198 = 0;
    v196 = 0;
    v144 = *(a4 + 8);
    v145 = cstdlib_strlen(*(*v186 + 224 * v53 + 8));
    v182 = heap_Alloc(v144, (v145 + 2));
    if (!v182)
    {
      goto LABEL_154;
    }
  }

  v188 = v52;
  v74 = heap_Alloc(*(a4 + 8), v68);
  if (!v74)
  {
    goto LABEL_169;
  }

  v75 = v74;
  v76 = *(a4 + 8);
  v77 = cstdlib_strlen(*(*(*v186 + 224 * v53 + 16) + 8));
  v78 = heap_Alloc(v76, (v77 + 2));
  v175 = v78;
  if (v78)
  {
    *v75 = 0;
    cstdlib_strcpy(v78, *(*(*v186 + 224 * v53 + 16) + 8));
    v83 = extstdlib_strtok_r(**(*v186 + 224 * v53 + 16), "-", &v198);
    v84 = extstdlib_strtok_r(*(*(*v186 + 224 * v53 + 16) + 8), "-", &v197);
    v85 = *(a4 + 8);
    v86 = cstdlib_strlen(v83);
    __dst = heap_Alloc(v85, (v86 + 2));
    if (!__dst)
    {
      __dst = 0;
LABEL_161:
      v23 = v179;
      goto LABEL_162;
    }

    v87 = heap_Alloc(*(a4 + 8), v185);
    if (!v87)
    {
      goto LABEL_161;
    }

    v88 = v87;
    cstdlib_strcpy(__dst, v83);
    if (v84)
    {
      v89 = v84;
    }

    else
    {
      v89 = "NULL";
    }

    cstdlib_strcpy(v184, v89);
    v90 = cstdlib_strlen(__dst);
    v171 = Utf8_LengthInUtf8chars(__dst, v90);
    if (v83)
    {
      v91 = 0;
      do
      {
        cstdlib_strcat(v75, v83);
        cstdlib_strcpy(v88, v83);
        v83 = extstdlib_strtok_r(0, "-", &v198);
        if (v84)
        {
          v92 = v84;
        }

        else
        {
          v92 = "NULL";
        }

        cstdlib_strcpy(v194, v92);
        if (v197)
        {
          v84 = extstdlib_strtok_r(0, "-", &v197);
        }

        ++v91;
      }

      while (v83);
      v172 = v91;
    }

    else
    {
      v172 = 0;
    }

    v102 = cstdlib_strlen(v88);
    v170 = Utf8_LengthInUtf8chars(v88, v102);
    cstdlib_strcpy(**(*v186 + 224 * v53 + 16), v75);
    v103 = cstdlib_strlen(v75);
    v104 = Utf8_LengthInUtf8chars(v75, v103);
    utf8_getUTF8Char(v75, 0, v192);
    v105 = cstdlib_strlen(v75);
    CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v75, v105 - 1);
    utf8_getUTF8Char(v75, CurrentUtf8Offset, v190);
    v107 = v104;
    if (v104 < 3u)
    {
      if (v104 == 2)
      {
        cstdlib_strcpy(v20, v75);
        v23 = v179;
        v111 = v179;
        v112 = v75;
      }

      else
      {
        cstdlib_strcpy(v20, "NULL");
        v23 = v179;
        v111 = v179;
        v112 = "NULL";
      }

      cstdlib_strcpy(v111, v112);
    }

    else
    {
      v108 = cstdlib_strlen(v192);
      utf8_getUTF8Char(v75, v108, __s2);
      v109 = cstdlib_strlen(v75);
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v75, v109 - 1);
      utf8_getUTF8Char(v75, PreviousUtf8Offset, v191);
      cstdlib_strcpy(v20, v192);
      cstdlib_strcat(v20, __s2);
      v23 = v179;
      cstdlib_strcpy(v179, v191);
      cstdlib_strcat(v179, v190);
    }

    v55 = v183;
    v117 = __s;
    v169 = v107;
    if (*(*(a8 + 224) + 32))
    {
      sprintf(__s, "%s %d %s %s %s %s %s %s %s %s %s %s %s %s %d %d %c %c %d", v75, v107, v175, v183, v192, v190, __s2, v191, v20, v23, __dst, v88, v184, v194, v171, v170, v174, v173, v172);
      v118 = extstdlib_strtok_r(__s, " ", &v196);
      *v188 = 0;
      if (v118)
      {
        v119 = v118;
        v120 = 0;
        do
        {
          v121 = *(*(*(a8 + 224) + 32) + 8);
          if (v121[v120] == 49)
          {
            v122 = cstdlib_strlen(v121) - 1;
            cstdlib_strcat(v188, " ");
            cstdlib_strcat(v188, v119);
            if (v122 != v120)
            {
              cstdlib_strcat(v188, " ");
            }
          }

          ++v120;
          v119 = extstdlib_strtok_r(0, " ", &v196);
        }

        while (v119);
      }

      v117 = __s;
      cstdlib_strcpy(__s, v188);
      v23 = v179;
      v55 = v183;
    }

    else
    {
      sprintf(__s, "%s %d %s %s %d %s %s %s %s", v75, v107, v175, v183, v172, v192, v190, v20, v23);
    }

    log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Crf Phrasing Obversation: %s", v123, v124, v125, v117);
    v126 = *(a4 + 8);
    v127 = cstdlib_strlen(__s) + 1;
    v128 = v126;
    v101 = __s;
    v129 = heap_Alloc(v128, v127);
    v53 = v181;
    v176[v181] = v129;
    if (!v129)
    {
LABEL_156:
      log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v130, v131, v132, v133, v167);
      goto LABEL_163;
    }

    cstdlib_strcpy(v129, __s);
    v134 = *(*v186 + 224 * v181 + 136);
    if (!v134)
    {
      *(v44 + 4 * v181) = 0;
      *(v39 + 8 * v181) = 0;
LABEL_134:
      heap_Free(*(a4 + 8), v55);
      heap_Free(*(a4 + 8), v75);
      heap_Free(*(a4 + 8), __dst);
      heap_Free(*(a4 + 8), v88);
      heap_Free(*(a4 + 8), __s);
      heap_Free(*(a4 + 8), v188);
      v52 = 0;
      v101 = 0;
      v116 = v175;
      v34 = v176;
      goto LABEL_135;
    }

    if (cstdlib_strcmp(v134, "B"))
    {
      if (!cstdlib_strcmp(*(*v186 + 224 * v181 + 136), "E"))
      {
        *(v44 + 4 * v181) = 1;
        v139 = heap_Calloc(*(a4 + 8), 1, 8);
        *(v39 + 8 * v181) = v139;
        if (!v139)
        {
          goto LABEL_156;
        }

        **(v39 + 8 * v181) = heap_Calloc(*(a4 + 8), 2, 1);
        v140 = **(v39 + 8 * v181);
        if (!v140)
        {
          goto LABEL_156;
        }

        v135 = v169 + v168;
        *v140 = 69;
        goto LABEL_133;
      }

      if (cstdlib_strcmp(*(*v186 + 224 * v181 + 136), "S"))
      {
        v135 = v169 + v168;
        *(v44 + 4 * v181) = 0;
        *(v39 + 8 * v181) = 0;
LABEL_133:
        *(*v186 + 224 * v181 + 144) = v135;
        v168 = v135;
        goto LABEL_134;
      }

      *(v44 + 4 * v181) = 1;
      v141 = heap_Calloc(*(a4 + 8), 1, 8);
      *(v39 + 8 * v181) = v141;
      if (!v141)
      {
        goto LABEL_156;
      }

      **(v39 + 8 * v181) = heap_Calloc(*(a4 + 8), 2, 1);
      v137 = **(v39 + 8 * v181);
      if (!v137)
      {
        goto LABEL_156;
      }

      v138 = 83;
    }

    else
    {
      *(v44 + 4 * v181) = 1;
      v136 = heap_Calloc(*(a4 + 8), 1, 8);
      *(v39 + 8 * v181) = v136;
      if (!v136)
      {
        goto LABEL_156;
      }

      **(v39 + 8 * v181) = heap_Calloc(*(a4 + 8), 2, 1);
      v137 = **(v39 + 8 * v181);
      if (!v137)
      {
        goto LABEL_156;
      }

      v138 = 66;
    }

    *v137 = v138;
    v135 = v169;
    goto LABEL_133;
  }

  __dst = 0;
LABEL_162:
  log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0, v79, v80, v81, v82, v167);
  v88 = 0;
  v101 = __s;
LABEL_163:
  heap_Free(*(a4 + 8), v55);
  heap_Free(*(a4 + 8), v75);
  if (__dst)
  {
    heap_Free(*(a4 + 8), __dst);
  }

  v146 = 2315264010;
  v154 = v175;
  if (v88)
  {
    heap_Free(*(a4 + 8), v88);
  }

  v34 = v176;
LABEL_170:
  if (v101)
  {
    heap_Free(*(a4 + 8), v101);
  }

  if (v188)
  {
    heap_Free(*(a4 + 8), v188);
  }

  if (v154)
  {
    heap_Free(*(a4 + 8), v154);
  }

LABEL_176:
  v155 = v186[4];
  if (v186[4])
  {
    v156 = 0;
    do
    {
      v157 = v34[v156];
      if (v157)
      {
        heap_Free(*(a4 + 8), v157);
        v155 = v186[4];
      }

      ++v156;
    }

    while (v156 < v155);
  }

  heap_Free(*(a4 + 8), v34);
  v24 = v184;
  if (v39)
  {
    v158 = v186[4];
    if (v186[4])
    {
      v159 = 0;
      do
      {
        v160 = *(v39 + 8 * v159);
        if (v160)
        {
          if (v44 && *(v44 + 4 * v159))
          {
            v161 = 0;
            do
            {
              heap_Free(*(a4 + 8), *(*(v39 + 8 * v159) + 8 * v161++));
            }

            while (*(v44 + 4 * v159) > v161);
            v160 = *(v39 + 8 * v159);
          }

          heap_Free(*(a4 + 8), v160);
          v158 = v186[4];
        }

        ++v159;
      }

      while (v159 < v158);
    }

    heap_Free(*(a4 + 8), v39);
  }

  if (v44)
  {
    heap_Free(*(a4 + 8), v44);
  }

  v32 = v194;
  v26 = __s2;
LABEL_196:
  v162 = v201;
  if (v201)
  {
    v163 = v200;
    if (v200)
    {
      v164 = 0;
      do
      {
        v165 = *(v201 + 8 * v164);
        if (v165)
        {
          heap_Free(*(a4 + 8), v165);
          v163 = v200;
        }

        ++v164;
      }

      while (v163 > v164);
      v162 = v201;
    }

    heap_Free(*(a4 + 8), v162);
  }

  if (v192)
  {
    heap_Free(*(a4 + 8), v192);
  }

  if (v26)
  {
    heap_Free(*(a4 + 8), v26);
  }

  if (v189)
  {
    heap_Free(*(a4 + 8), v189);
  }

  if (v190)
  {
    heap_Free(*(a4 + 8), v190);
  }

  if (v191)
  {
    heap_Free(*(a4 + 8), v191);
  }

  if (v23)
  {
    heap_Free(*(a4 + 8), v23);
  }

  if (v24)
  {
    heap_Free(*(a4 + 8), v24);
  }

  if (v32)
  {
    heap_Free(*(a4 + 8), v32);
  }

  return v146;
}

uint64_t recursiveFindSplit(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, _WORD *a6, unsigned int a7)
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
    recursiveFindSplit(result);
    result = recursiveFindSplit(v9);
    *(a5 + 2 * (*a6)++) = v11;
  }

  return result;
}

uint64_t getDocumentClass(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = v2;
    v4 = *(*a1 + 224 * v2 + 152);
    if (v4)
    {
      if (cstdlib_strstr(v4, "joyfulstyle"))
      {
        return 1;
      }

      v5 = *(*a1 + 224 * v3 + 152);
      if (v5)
      {
        if (cstdlib_strstr(v5, "didacticstyle"))
        {
          return 2;
        }

        v6 = *(*a1 + 224 * v3 + 152);
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
    if (*(a1 + 8) <= (v3 + 1))
    {
      return 0;
    }
  }

  return 3;
}

uint64_t puncPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (!a2)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "%s\n", a6, a7, a8, "input parameter: sent is NULL");
    return v8;
  }

  if (!a3)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s\n", a6, a7, a8, "input parameter: rules is NULL, but it is ok");
    return 0;
  }

  v11 = (a3 + 270);
  v150 = *(a3 + 242);
  DocumentClass = getDocumentClass(a2);
  v156 = a1;
  if (DocumentClass > 1)
  {
    if (DocumentClass == 2)
    {
      v147 = vbsl_s8(vceqz_s16(*v11), 0x6001400030009, *v11);
      v80 = *(a3 + 278);
      if (!*(a3 + 278))
      {
        v80 = 9;
      }

      v152 = v80;
      v81 = *(a3 + 280);
      if (!*(a3 + 280))
      {
        v81 = 21;
      }

      v148 = v81;
      v82 = *(a3 + 282);
      if (!*(a3 + 282))
      {
        v82 = 6;
      }

      v151 = v82;
      v22 = *(a3 + 284);
      if (!v22)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v147 = vbsl_s8(vceqz_s16(*(a3 + 290)), 0x6001400030009, *(a3 + 290));
      v128 = *(a3 + 298);
      if (!*(a3 + 298))
      {
        v128 = 9;
      }

      v152 = v128;
      v129 = *(a3 + 300);
      if (!*(a3 + 300))
      {
        v129 = 21;
      }

      v148 = v129;
      v130 = *(a3 + 302);
      if (!*(a3 + 302))
      {
        v130 = 6;
      }

      v151 = v130;
      v22 = *(a3 + 304);
      if (!v22)
      {
        goto LABEL_13;
      }
    }
  }

  else if (DocumentClass)
  {
    v147 = vbsl_s8(vceqz_s16(*(a3 + 250)), 0x6001400030009, *(a3 + 250));
    v125 = *(a3 + 258);
    if (!*(a3 + 258))
    {
      v125 = 9;
    }

    v152 = v125;
    v126 = *(a3 + 260);
    if (!*(a3 + 260))
    {
      v126 = 21;
    }

    v148 = v126;
    v127 = *(a3 + 262);
    if (!*(a3 + 262))
    {
      v127 = 6;
    }

    v151 = v127;
    v22 = *(a3 + 264);
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v147 = vbsl_s8(vceqz_s16(*(a3 + 310)), 0x6001400030009, *(a3 + 310));
    v19 = *(a3 + 318);
    if (!*(a3 + 318))
    {
      v19 = 9;
    }

    v152 = v19;
    v20 = *(a3 + 320);
    if (!*(a3 + 320))
    {
      v20 = 21;
    }

    v148 = v20;
    v21 = *(a3 + 322);
    if (!*(a3 + 322))
    {
      v21 = 6;
    }

    v151 = v21;
    v22 = *(a3 + 324);
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  *(a3 + 242) = v22;
LABEL_13:
  v155 = a3;
  v160 = 0;
  v159 = 0;
  if (*(v8 + 8))
  {
    v23 = 0;
    v24 = 73;
    while (1)
    {
      if (doesWordEndInCommaCrf(**(*v8 + v24 - 57)))
      {
        v25 = *v8;
        if (v23 + 1 < *(v8 + 8))
        {
          *(v25 + v24) = 4;
        }
      }

      else
      {
        v25 = *v8;
      }

      v26 = *(v25 + v24 + 63);
      if (!v26)
      {
        goto LABEL_28;
      }

      if (cstdlib_strcmp(v26, "B") && cstdlib_strcmp(*(*v8 + v24 + 63), "S"))
      {
        break;
      }

      if (v24 != 73)
      {
        v27 = *v8 + 224 * v23 - 151;
LABEL_27:
        *v27 = 4;
      }

LABEL_28:
      ++v23;
      v24 += 224;
      if (v23 >= *(v8 + 8))
      {
        goto LABEL_29;
      }
    }

    if (cstdlib_strcmp(*(*v8 + v24 + 63), "E"))
    {
      goto LABEL_28;
    }

    v27 = *v8 + v24;
    if (*(v27 + 71) < v152)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_29:
  v28 = a1;
  printPhrases(a1, v8, v13, v14, v15, v16, v17, v18);
  v29 = heap_Calloc(*(a1 + 8), 1024, 2);
  if (!v29)
  {
    v8 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v32, v33, v34, v35, v145);
    v124 = v155;
    goto LABEL_183;
  }

  v158 = v29;
  if (!*(v8 + 8))
  {
LABEL_97:
    printPhrases(v28, v8, v30, v31, v32, v33, v34, v35);
    v89 = *(v8 + 8);
    if (*(v8 + 8))
    {
      v90 = 0;
      do
      {
        v91 = *v8;
        if (*(*v8 + 224 * v90 + 73) != 3)
        {
          goto LABEL_136;
        }

        v92 = v90 + 1;
        if ((v90 + 1) < v89)
        {
          v93 = 1;
          LODWORD(v94) = v90 + 1;
          while (1)
          {
            v95 = *(v91 + 224 * v94 + 73);
            if (v95 == 3)
            {
              ++v93;
            }

            else if (v95 == 4)
            {
              goto LABEL_108;
            }

            LODWORD(v94) = v94 + 1;
            if (v94 >= v89)
            {
              LODWORD(v94) = v89;
LABEL_108:
              if (v93 == 1)
              {
                v92 = v94;
                break;
              }

              v96 = v90 + 1;
              if ((v90 & 0x8000) == 0)
              {
                do
                {
                  if (*(v91 + 224 * v90 + 73) == 4)
                  {
                    goto LABEL_114;
                  }

                  v97 = v90;
                  LOWORD(v90) = v90 - 1;
                }

                while (v97 > 0);
                LOWORD(v90) = -1;
LABEL_114:
                v96 = v90 + 1;
              }

              if (v93 < 9u)
              {
                v98 = v93;
              }

              else
              {
                LODWORD(v94) = v92;
                v98 = 8;
              }

              if (v93 < 9u || v92 >= v89)
              {
                goto LABEL_129;
              }

              v99 = 0;
              v94 = v92;
              v100 = (v91 + 224 * v92 + 73);
              while (1)
              {
                v101 = *v100;
                if (v101 == 3)
                {
                  if (++v99 >= 8u)
                  {
                    *v100 = 4;
LABEL_128:
                    v98 = 8;
LABEL_129:
                    v102 = v94 == v89;
                    v90 = v94 - v102;
                    if (v96 <= (v94 - v102))
                    {
                      v103 = 0;
                      v104 = v96;
                      do
                      {
                        v105 = v104;
                        if (!cstdlib_strstr(**(*v8 + 224 * v104 + 16), "comma"))
                        {
                          v106 = **(*v8 + 224 * v105 + 16);
                          v107 = cstdlib_strlen(v106);
                          v103 += Utf8_LengthInUtf8chars(v106, v107);
                        }

                        v104 = v105 + 1;
                      }

                      while ((v105 + 1) <= v90);
                      if (v148 <= v103)
                      {
                        LOWORD(v159) = v103;
                        HIWORD(v159) = v98;
                        astar_search(v156, v8, v96, v90, &v159, (v155 + 232));
                      }
                    }

LABEL_136:
                    v92 = v90 + 1;
                    v89 = *(v8 + 8);
                    goto LABEL_137;
                  }
                }

                else if (v101 == 4)
                {
                  goto LABEL_128;
                }

                ++v94;
                v100 += 224;
                if (v89 == v94)
                {
                  v98 = 8;
                  LODWORD(v94) = v89;
                  goto LABEL_129;
                }
              }
            }
          }
        }

LABEL_137:
        v90 = v92;
      }

      while (v92 < v89);
    }

    v28 = v156;
    printPhrases(v156, v8, v83, v84, v85, v86, v87, v88);
    v114 = *(v8 + 8);
    v115 = v114 - 2;
    v116 = v114 + 1;
    while (1)
    {
      v117 = v115;
      v118 = (v116 - 2);
      if (v118 < 1)
      {
        break;
      }

      v119 = *v8;
      v120 = *v8 + 224 * ((v116 - 2) & 0x7FFF);
      --v115;
      --v116;
      if (*(v120 + 136))
      {
        *(v120 + 73) = 4;
        if (((v116 - 2) & 0x8000) == 0)
        {
          v121 = v117;
          while (1)
          {
            v122 = v119 + 224 * v121;
            if (*(v122 + 136))
            {
              if (*(v122 + 73) == 4)
              {
                break;
              }
            }

            v123 = v121--;
            if (v123 <= 0)
            {
              goto LABEL_167;
            }
          }

          if ((v118 - v121) <= v147.u16[1])
          {
            *(v122 + 73) = 3;
          }
        }

        break;
      }
    }

LABEL_167:
    printPhrases(v156, v8, v108, v109, v110, v111, v112, v113);
    if (*(v8 + 8))
    {
      v137 = 0;
      do
      {
        v138 = v137;
        v139 = *v8 + 224 * v137;
        if (*(v139 + 73) == 4 && !doesWordEndInCommaCrf(**(v139 + 16)))
        {
          v140 = 0;
          do
          {
            if (*(v8 + 8) <= ++v137)
            {
              break;
            }

            v141 = 224 * v137;
            v142 = **(*v8 + v141 + 16);
            v143 = cstdlib_strlen(v142);
            v140 += Utf8_LengthInUtf8chars(v142, v143);
          }

          while (*(*v8 + v141 + 73) != 4);
          if (v151 > v140)
          {
            *(*v8 + 224 * v138 + 73) = 3;
          }

          v28 = v156;
        }

        else
        {
          ++v137;
        }
      }

      while (*(v8 + 8) > v137);
    }

    printPhrases(v28, v8, v131, v132, v133, v134, v135, v136);
    v8 = 0;
    goto LABEL_181;
  }

  v36 = 0;
  v157 = 0;
  v37 = 0;
  v153 = 0;
  v154 = 1024;
  v149 = 0;
  while (1)
  {
    v38 = *(*v8 + 224 * v37 + 73);
    if (v38 == 4)
    {
      goto LABEL_82;
    }

    if (v38 == 3)
    {
      break;
    }

LABEL_83:
    v36 = ++v37;
    if (v37 >= *(v8 + 8))
    {
      goto LABEL_97;
    }
  }

  if (cstdlib_strstr(**(*v8 + 224 * v157 + 16), "comma"))
  {
    v39 = 0;
  }

  else
  {
    v40 = **(*v8 + 224 * v157 + 16);
    v41 = cstdlib_strlen(v40);
    v39 = Utf8_LengthInUtf8chars(v40, v41);
  }

  v42 = v157 + 1;
  if ((v157 + 1) <= v37)
  {
    v43 = v157 + 1;
    do
    {
      v44 = v43;
      if (!cstdlib_strstr(**(*v8 + 224 * v43 + 16), "comma"))
      {
        v45 = **(*v8 + 224 * v44 + 16);
        v46 = cstdlib_strlen(v45);
        v39 += Utf8_LengthInUtf8chars(v45, v46);
      }

      v43 = v44 + 1;
    }

    while ((v44 + 1) <= v37);
  }

  v47 = heap_Alloc(*(v156 + 8), (4 * v39) | 2);
  if (!v47)
  {
    v8 = 2315264010;
    v124 = v155;
    v28 = v156;
    goto LABEL_182;
  }

  v48 = v47;
  if (cstdlib_strstr(**(*v8 + 224 * v157 + 16), "comma"))
  {
    v52 = 0;
    *v48 = 0;
  }

  else
  {
    v53 = **(*v8 + 224 * v157 + 16);
    v54 = cstdlib_strlen(v53);
    *v158 = Utf8_LengthInUtf8chars(v53, v54);
    cstdlib_strcpy(v48, **(*v8 + 224 * v157 + 16));
    v52 = 1;
  }

  if (v36 - v157 + v52 > v154)
  {
    v55 = 2 * (v36 - v157 + v52);
    if (v55 > 0x1000)
    {
      v28 = v156;
      log_OutText(*(v156 + 32), "FE_PHRASING", 0, 0, "Memory exceeds upper boundary: %d/%d", v49, v50, v51, 2 * (v36 - v157 + v52));
      v8 = 2315264015;
    }

    else
    {
      v56 = heap_Realloc(*(v156 + 8), v158, v55);
      if (v56)
      {
        v154 = (v36 - v157 + v52);
        v158 = v56;
        goto LABEL_53;
      }

      v8 = 2315264010;
      v28 = v156;
    }

    heap_Free(*(v28 + 8), v48);
    goto LABEL_181;
  }

LABEL_53:
  while (v42 <= v37)
  {
    if (!cstdlib_strstr(**(*v8 + 224 * v42 + 16), "comma"))
    {
      cstdlib_strcat(v48, **(*v8 + 224 * v42 + 16));
      v57 = **(*v8 + 224 * v42 + 16);
      v58 = cstdlib_strlen(v57);
      v158[v52] = Utf8_LengthInUtf8chars(v57, v58);
      LOWORD(v52) = v52 + 1;
    }

    ++v42;
  }

  v59 = cstdlib_strlen(v48);
  v60 = Utf8_LengthInUtf8chars(v48, v59);
  v28 = v156;
  log_OutText(*(v156 + 32), "FE_PHRASING", 5, 0, "WEAK PHRASE:%s %d\n", v61, v62, v63, v48);
  v64 = cstdlib_strlen(v48);
  CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v48, v64 - 1);
  utf8_getUTF8Char(v48, CurrentUtf8Offset, v161);
  heap_Free(*(v156 + 8), v48);
  if (v60 && applyRules(v156, v8, v37, (v155 + 232)) == 1)
  {
    v153 += v60;
    v149 = v37;
    goto LABEL_83;
  }

  if (v60 < v147.u16[0])
  {
LABEL_82:
    v157 = v37 + 1;
    goto LABEL_83;
  }

  if (v60 - v153 <= v147.u16[3] && v153)
  {
    v153 = 0;
    v149 = 0;
    goto LABEL_61;
  }

  if (v153)
  {
    v153 = 0;
    v37 = v149 + 1;
    v157 = v149 + 1;
    v149 = 0;
    goto LABEL_83;
  }

  if (v60 < v147.u16[2] && applyRules(v156, v8, v37, (v155 + 232)) != 1)
  {
LABEL_61:
    *(*v8 + 224 * v37 + 73) = 4;
    goto LABEL_82;
  }

  if (v52 < 0x801u)
  {
    v66 = heap_Calloc(*(v156 + 8), 1, 2 * v52);
    if (!v66)
    {
      v8 = 2315264010;
      log_OutPublic(*(v156 + 32), "FE_PHRASING", 37000, 0, v67, v68, v69, v70, v146);
      goto LABEL_181;
    }

    v71 = v66;
    v160 = 0;
    recursiveFindSplit(v158, 0, v52, v60, v66, &v160, v152);
    if (v157 <= v37)
    {
      v72 = 0;
      v73 = v157;
      do
      {
        v74 = v73;
        v75 = v73;
        if (cstdlib_strstr(**(*v8 + 224 * v73 + 16), "comma"))
        {
          v76 = 1;
        }

        else
        {
          v76 = v75 == v157;
        }

        if (!v76)
        {
          ++v72;
        }

        v77 = v160;
        v78 = v71;
        if (v160)
        {
          while (1)
          {
            v79 = *v78++;
            if (v79 == v72)
            {
              break;
            }

            if (!--v77)
            {
              goto LABEL_80;
            }
          }

          if (applyRules(v156, v8, v74, (v155 + 232)) != 1)
          {
            *(*v8 + 224 * v74 + 73) = 4;
          }
        }

LABEL_80:
        v73 = v74 + 1;
      }

      while ((v74 + 1) <= v37);
    }

    heap_Free(*(v156 + 8), v71);
    goto LABEL_82;
  }

  log_OutText(*(v156 + 32), "FE_PHRASING", 0, 0, "Memory exceeds upper boundary: %d/%d", v33, v34, v35, 2 * v52);
  v8 = 2315264015;
LABEL_181:
  v124 = v155;
LABEL_182:
  heap_Free(*(v28 + 8), v158);
LABEL_183:
  *(v124 + 242) = v150;
  return v8;
}

uint64_t printPhrases(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    do
    {
      result = log_OutText(*(v9 + 32), "FE_PHRASING", 5, 0, "%s\t\t%s\n", a6, a7, a8, **(*a2 + v10 + 16));
      ++v11;
      v10 += 224;
    }

    while (v11 < *(a2 + 8));
  }

  return result;
}

uint64_t hlp_BrokerString(uint64_t a1, _BYTE *a2, const char *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = 0;
  __s2 = 0;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__dst = 0u;
  v10 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v7);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcpy(__dst, a3);
      cstdlib_strcat(__dst, "_");
      cstdlib_strcat(__dst, __s2);
      cstdlib_strcat(__dst, "_");
      cstdlib_strcat(__dst, v7);
      return brokeraux_ComposeBrokerString(a1, __dst, 1, 1, __s2, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t getTokenRuleset(uint64_t a1, __int16 a2, _DWORD *a3, _WORD *a4)
{
  v15 = 0;
  *a3 = 0;
  v12 = a2;
  v10 = 0;
  v11 = 2;
  v13 = 0;
  v14 = 0;
  if (!*(a1 + 192))
  {
    return 0;
  }

  v7 = 0;
  for (i = 0; i < *(a1 + 192); ++i)
  {
    result = matchPANDPRULE_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(*(a1 + 184) + v7), &v11, &v10);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (v10)
    {
      if (v10 == 1)
      {
        *a3 = 1;
        *a4 = i;
      }

      return result;
    }

    v7 += 40;
  }

  return result;
}

uint64_t handleTokenWord(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4, _DWORD *a5, uint64_t a6)
{
  *&v50[2] = 0;
  v46 = 0;
  v45 = 0;
  FLOATSUR_SET_INT(&v46 + 2, 0, 0);
  FLOATSUR_SET_INT(&v46, *(*(a1 + 672) + 224 * a2 + 24), 0);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    [1] apply word weight rules", v11, v12, v13, 0);
  v43 = a2;
  v49 = a2;
  v47 = 0;
  v48 = 1;
  *v50 = 0;
  v14 = a6;
  v15 = *(a1 + 184);
  v44 = a6;
  if (*(v15 + 40 * a6 + 32))
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      matched = matchMAPRULE2NUMANDOPERATOR_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(v15 + 40 * v14 + 24) + v16, &v48, &v47, &v46 + 2);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v22 = v47;
      if (v47 == 1)
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    wordwweight : rulset %d, idx %d FIRED wordWeight=%d.%d", v18, v19, v20, v44);
        v22 = v47;
      }

      if (!v22)
      {
        ++v17;
        v15 = *(a1 + 184);
        v16 += 32;
        if (v17 < *(v15 + 40 * v14 + 32))
        {
          continue;
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    matched = 0;
LABEL_10:
    FLOATSUR_PLUS(&v45, &v46 + 2, &v46);
    FLOATSUR_PLUS(a4, a4, &v45);
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    runningPhraseWeight=%d.%d (wordWeight=%d.%d pronWeight=%d.%d)", v23, v24, v25, *a4);
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    [2] apply token rules", v26, v27, v28, 0);
    v49 = v43;
    v47 = 0;
    v48 = 1;
    *v50 = 0;
    v32 = *(a1 + 184);
    if (*(v32 + 40 * v14 + 16))
    {
      v33 = 0;
      v34 = 8;
      while (1)
      {
        matched = matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, (*(v32 + 40 * v14 + 8) + v34 - 8), &v48, &v47, a5);
        if ((matched & 0x80000000) != 0)
        {
          break;
        }

        if (v47 == 1)
        {
          matched = logPANDPRULE_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), (a1 + 8), (*(*(a1 + 184) + 40 * v14 + 8) + v34));
          if ((matched & 0x80000000) == 0)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    FIRED : ruleset %d, idx %d <%s> bndWeight=%d.%d", v38, v39, v40, v44);
            cstdlib_strcpy(*(a1 + 1088), "");
          }

          return matched;
        }

        ++v33;
        v32 = *(a1 + 184);
        v34 += 32;
        if (v33 >= *(v32 + 40 * v14 + 16))
        {
          if (v47)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    no token rules fire.", v29, v30, v31, 0);
LABEL_17:
      if (v43 + 1 == a3)
      {
        FLOATSUR_SET_INT(a5, *(a1 + 176), 0);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "    END token word; set TOKENENDWORDBNDWEIGHT bndWeight=%d.%d", v35, v36, v37, *a5);
      }

      else
      {
        FLOATSUR_SET_INT(a5, 0, 0);
      }
    }
  }

  return matched;
}

uint64_t getPhrasingForToken(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v6 = *(a1[84] + 224 * a3 + 56) + 32 * *(a1 + 15);
  v7 = *(v6 + 16);
  v8 = *(v6 + 10);
  FLOATSUR_SET_INT(&v27 + 2, 0, 0);
  FLOATSUR_SET_INT(&v27, 0, 0);
  TokenRuleset = getTokenRuleset(a1, v3, &v26, &v25);
  if ((TokenRuleset & 0x80000000) != 0)
  {
    return TokenRuleset;
  }

  v13 = *(*a1 + 32);
  if (v26 == 1)
  {
    v14 = v8 + 1;
    v15 = v25;
    log_OutText(v13, "FE_PHRASING", 5, 0, "  using token rule set %d (for %s)", v10, v11, v12, v25);
    v19 = v14 - v3;
    v20 = v3;
    do
    {
      v21 = v3;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  doing token word[%d]=%s", v16, v17, v18, v3);
      v22 = handleTokenWord(a1, v3, v14, &v27 + 2, &v27, v15);
      if ((v22 & 0x80000000) != 0)
      {
        break;
      }

      if (FLOATSUR_GT_INT(&v27, 0, 0))
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add token node %d,%d", v16, v17, v18, v20);
        v22 = addNode(*a1, a2, v20, v3 + 1, 2, v19);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        *(*a2 + 32 * *(a2 + 8) - 24) = HIDWORD(v27);
        v23 = *a2 + 32 * *(a2 + 8);
        *(v23 - 12) = 1;
        *(v23 - 20) = v27;
        FLOATSUR_SET_INT(&v27 + 2, 0, 0);
        FLOATSUR_SET_INT(&v27, 0, 0);
        v20 = v3 + 1;
      }

      ++v3;
    }

    while ((v21 + 1) < v14);
  }

  else
  {
    log_OutText(v13, "FE_PHRASING", 5, 0, "  no rules match for token type =%s", v10, v11, v12, v7);
    return 2315264000;
  }

  return v22;
}

uint64_t assignTokenPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = 0;
  v8 = *(a1 + 680);
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  matched = 0;
  memset(v33, 0, sizeof(v33));
  v12 = *(a1 + 672);
  while (1)
  {
    v13 = v10;
    v14 = *(v12 + 224 * v10 + 56);
    if (!v14)
    {
      goto LABEL_7;
    }

    v15 = *(a1 + 30);
    if (*(v14 + 32 * v15) != 1)
    {
      goto LABEL_7;
    }

    v16 = *(*(v12 + 224 * v10 + 56) + 32 * v15 + 10);
    if (v16 >= v10)
    {
      break;
    }

LABEL_6:
    v10 = v16;
LABEL_7:
    if (++v10 >= v8)
    {
      return matched;
    }
  }

  while (1)
  {
    v34 = 0;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get token POS for %s", a6, a7, a8, *(*(v12 + 224 * v10 + 16) + 8 * *(a1 + 24)));
    if (!v34)
    {
      if (*(a1 + 128))
      {
        break;
      }
    }

LABEL_10:
    ++v10;
    v12 = *(a1 + 672);
    v16 = *(*(v12 + 224 * v13 + 56) + 32 * *(a1 + 30) + 10);
    if (v16 < v10)
    {
      v8 = *(a1 + 680);
      goto LABEL_6;
    }
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    *&v33[4] = v10;
    *v33 = 1;
    *&v33[6] = 0;
    matched = matchMAPRULE2STR_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(a1 + 120) + v17, v33, &v34);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v19 = v34;
    if (v34 == 1)
    {
      v20 = 224 * v10;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "POS tagging rule %d FIRED (word %d) %s -> %s", a6, a7, a8, v18);
      v21 = *(a1 + 672);
      if (!*(v21 + v20 + 88))
      {
        v22 = cstdlib_strcmp("UNK", (*(a1 + 536) + *(*(a1 + 544) + 4 * *(*(a1 + 120) + v17))));
        v21 = *(a1 + 672);
        if (!v22)
        {
          v23 = *(*a1 + 8);
          v24 = cstdlib_strlen(*(*(v21 + v20 + 16) + 8 * *(a1 + 26)));
          v25 = heap_Calloc(v23, 1, v24 + 1);
          v30 = *(a1 + 672);
          *(v30 + v20 + 88) = v25;
          if (!v25)
          {
            log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v26, v27, v28, v29, v32);
            return 2315264010;
          }

          cstdlib_strcpy(v25, *(*(v30 + 224 * v10 + 16) + 8 * *(a1 + 26)));
          v21 = *(a1 + 672);
        }
      }

      matched = doMapStr(*a1, (*(v21 + 224 * v10 + 16) + 8 * *(a1 + 26)), (*(a1 + 536) + *(*(a1 + 544) + 4 * *(*(a1 + 120) + v17))));
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }

      v19 = v34;
    }

    if (!v19)
    {
      ++v18;
      v17 += 32;
      if (v18 < *(a1 + 128))
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

uint64_t assignTokenTags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = 0;
  v28 = 0;
  v8 = *(a1 + 680);
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  memset(v27, 0, 12);
  v12 = *(a1 + 672);
  while (1)
  {
    v13 = v10;
    v14 = *(v12 + 224 * v10 + 56);
    if (!v14)
    {
      goto LABEL_7;
    }

    v15 = *(a1 + 30);
    if (*(v14 + 32 * v15) != 1)
    {
      goto LABEL_7;
    }

    v16 = *(*(v12 + 224 * v10 + 56) + 32 * v15 + 10);
    if (v16 >= v10)
    {
      break;
    }

LABEL_6:
    v10 = v16;
LABEL_7:
    if (++v10 >= v8)
    {
      return v11;
    }
  }

  while (1)
  {
    v29 = 0;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get token tag for word %d %s", a6, a7, a8, v10);
    if (!v29)
    {
      v17 = 0;
      while (v17 < *(a1 + 152))
      {
        if (*(*(a1 + 144) + 4 * v17) == 1)
        {
          WORD2(v27[0]) = v10;
          LODWORD(v27[0]) = 1;
          *(v27 + 6) = 0;
          matched = matchMMAPREGEX2STR_TRule((a1 + 8), a1 + 672, *(*(a1 + 136) + 8 * v17), v27, &v29, &v28, a7, a8);
        }

        else
        {
          matched = matchMAPSTRSTR_TRule(a1 + 8, (a1 + 672), *(*(a1 + 136) + 8 * v17), v27, &v29, a6, a7, a8);
        }

        v11 = matched;
        if ((matched & 0x80000000) != 0)
        {
          return v11;
        }

        v19 = v29;
        if (v29 == 1)
        {
          v20 = *(*a1 + 32);
          if (*(*(a1 + 144) + 4 * v17) == 1)
          {
            log_OutText(v20, "FE_PHRASING", 5, 0, "regex rule %d FIRED %s -> %s", a6, a7, a8, v28);
            v21 = *a1;
            v22 = *(a1 + 536);
            v23 = *(a1 + 544);
            v24 = *(*(*(a1 + 136) + 8 * v17) + 8);
          }

          else
          {
            log_OutText(v20, "FE_PHRASING", 5, 0, "normal rule FIRED %s -> %s", a6, a7, a8, *(*(*(a1 + 672) + 224 * v10 + 16) + 8 * *(a1 + 24)));
            v21 = *a1;
            v22 = *(a1 + 536);
            v23 = *(a1 + 544);
            v24 = *(*(*(a1 + 136) + 8 * v17) + 4);
          }

          v11 = addTokenTag(v21, v10, (v22 + *(v23 + 4 * v24)), a1 + 8, (a1 + 672));
          if ((v11 & 0x80000000) != 0)
          {
            return v11;
          }

          v19 = v29;
        }

        ++v17;
        if (v19)
        {
          goto LABEL_10;
        }
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "no matches found", a6, a7, a8, v26);
      v11 = addTokenTag(*a1, v10, "UNK", a1 + 8, (a1 + 672));
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }
    }

LABEL_10:
    ++v10;
    v12 = *(a1 + 672);
    v16 = *(*(v12 + 224 * v13 + 56) + 32 * *(a1 + 30) + 10);
    if (v16 < v10)
    {
      v8 = *(a1 + 680);
      goto LABEL_6;
    }
  }
}

uint64_t extendPHRContainingTokenTags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 680))
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  LODWORD(v13) = 0;
  v14 = 0;
  v15 = *(a1 + 672);
  while (1)
  {
    v16 = *(v15 + 224 * v9 + 56);
    if (!v16)
    {
      goto LABEL_47;
    }

    v17 = v16 + 32 * *(a1 + 32);
    if (*v17 == 1)
    {
      v13 = *(v17 + 10);
      v18 = *(v17 + 8);
      v14 = v9;
      if (v18 >= v13)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        v19 = (v15 + 224 * v18 + 56);
        v20 = v13 - v18;
        do
        {
          if (*v19 && *(*v19 + 32 * *(a1 + 30)) == 1)
          {
            ++v12;
          }

          v19 += 28;
          --v20;
        }

        while (v20);
      }

      v11 = 0;
    }

    v21 = *(a1 + 30);
    v22 = v16 + 32 * v21;
    if (!*(v22 + 16))
    {
      goto LABEL_47;
    }

    v23 = v11 + 1;
    v24 = v11 || v9 == v14;
    v25 = !v24;
    v26 = *(v22 + 10);
    v27 = *(v15 + 224 * *(v22 + 10) + 56);
    if (!v27)
    {
      break;
    }

    v29 = *(v27 + 32 * v21 + 4) != 1 || v23 != v12 || v26 >= v13;
    v30 = !v29;
    if (!v29 && v25)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Left and Right", a6, a7, a8, v10);
      v32 = *(a1 + 672);
      v33 = *(a1 + 30);
      v34 = *(v32 + 224 * v9 + 56) + 32 * v33;
      *v34 = 0;
      *(*(v32 + 224 * v26 + 56) + 32 * v33 + 4) = 0;
      v35 = *(v32 + 224 * v14 + 56) + 32 * v33;
      *v35 = 1;
      *(v35 + 8) = v14;
      *(v35 + 10) = v13;
      *(v35 + 24) = 1;
      v36 = *(*a1 + 8);
      v37 = cstdlib_strlen(*(v34 + 16));
      v38 = heap_Calloc(v36, 1, (v37 + 1));
      v43 = *(a1 + 672);
      v44 = *(a1 + 30);
      *(*(v43 + 224 * v14 + 56) + 32 * v44 + 16) = v38;
      if (!v38)
      {
        goto LABEL_50;
      }

      cstdlib_strcpy(v38, *(*(v43 + 224 * v9 + 56) + 32 * v44 + 16));
      heap_Free(*(*a1 + 8), *(*(*(a1 + 672) + 224 * v9 + 56) + 32 * *(a1 + 30) + 16));
      v15 = *(a1 + 672);
      v45 = *(a1 + 30);
      *(*(v15 + 224 * v9 + 56) + 32 * v45 + 16) = 0;
      v46 = *(v15 + 224 * v13 + 56) + 32 * v45;
      v11 = 1;
      *(v46 + 4) = 1;
      *(v46 + 8) = v14;
    }

    else
    {
      if (v25)
      {
        goto LABEL_40;
      }

      if (!v30)
      {
LABEL_46:
        v11 = v23;
        goto LABEL_47;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Right", a6, a7, a8, v10);
      v15 = *(a1 + 672);
      v57 = *(a1 + 30);
      *(*(v15 + 224 * v26 + 56) + 32 * v57 + 4) = 0;
      v58 = *(v15 + 224 * v9 + 56) + 32 * v57;
      *(v58 + 10) = v13;
      *(v58 + 24) = 1;
      v59 = *(v15 + 224 * v13 + 56) + 32 * v57;
      *(v59 + 4) = 1;
      *(v59 + 8) = *(v58 + 8);
      v11 = v12;
    }

LABEL_47:
    v10 = ++v9;
    if (v9 >= *(a1 + 680))
    {
      return 0;
    }
  }

  if (!v25)
  {
    goto LABEL_46;
  }

LABEL_40:
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Extend token at %d to Left", a6, a7, a8, v10);
  v15 = *(a1 + 672);
  v47 = *(v15 + 224 * v9 + 56);
  v48 = *(a1 + 30);
  *(v47 + 32 * v48) = 0;
  v49 = *(v15 + 224 * v14 + 56);
  if (!v49)
  {
LABEL_43:
    *(*(v15 + 224 * *(v47 + 32 * v48 + 10) + 56) + 32 * v48 + 8) = v14;
    v11 = 1;
    goto LABEL_47;
  }

  v50 = v49 + 32 * v48;
  *v50 = 1;
  *(v50 + 8) = v14;
  v51 = v47 + 32 * v48;
  *(v50 + 10) = *(v51 + 10);
  *(v50 + 24) = 1;
  v52 = *(*a1 + 8);
  v53 = cstdlib_strlen(*(v51 + 16));
  v54 = heap_Calloc(v52, 1, (v53 + 1));
  v55 = *(a1 + 672);
  v56 = *(a1 + 30);
  *(*(v55 + 224 * v14 + 56) + 32 * v56 + 16) = v54;
  if (v54)
  {
    cstdlib_strcpy(v54, *(*(v55 + 224 * v9 + 56) + 32 * v56 + 16));
    heap_Free(*(*a1 + 8), *(*(*(a1 + 672) + 224 * v9 + 56) + 32 * *(a1 + 30) + 16));
    v15 = *(a1 + 672);
    v47 = *(v15 + 224 * v9 + 56);
    v48 = *(a1 + 30);
    *(v47 + 32 * v48 + 16) = 0;
    goto LABEL_43;
  }

LABEL_50:
  log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0, v39, v40, v41, v42, v61);
  return 2315264010;
}

uint64_t annotateTokenTypeOnEachWord(uint64_t a1)
{
  v1 = *(a1 + 680);
  if (*(a1 + 680))
  {
    v2 = 0;
    v3 = (*(a1 + 672) + 104);
    do
    {
      v4 = *(v3 - 6);
      if (v4)
      {
        v5 = v4 + 32 * *(a1 + 30);
        if (*v5 == 1)
        {
          v2 = *(v5 + 16);
        }

        *v3 = v2;
        if (*(v5 + 4) == 1)
        {
          v2 = 0;
        }
      }

      else
      {
        *v3 = v2;
      }

      v3 += 28;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t load_pw_igtree_cfg(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0;
  v9 = -1;
  v8 = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "statbnd_pw_igtree", &v10, &v9, &v8);
  if ((v5 & 0x80000000) == 0 && v9 == 1)
  {
    v6 = *v10;
    v6[cstdlib_strlen(*v10) - 1] = 0;
    if (!cstdlib_strcmp(*v10, "yes"))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t load_pw_igtree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(v27, 0, sizeof(v27));
  *v26 = 0;
  *a4 = 0;
  BrokerString = nn_model_getBrokerString(a3, v27, "pwigtree_", 0x100uLL);
  if ((BrokerString & 0x80000000) != 0 || (BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v27, "IGTR", 1031, v26), (BrokerString & 0x80000000) != 0))
  {
    v21 = BrokerString;
  }

  else
  {
    v16 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v16;
    if (v16)
    {
      v21 = igtree_Init(a1, a2, *v26, v16);
      ssftriff_reader_CloseChunk(*v26);
      if ((v21 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v26);
        v21 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0, v17, v18, v19, v20, v25);
      v21 = 2315264010;
    }
  }

  if (*v26)
  {
    v22 = ssftriff_reader_ObjClose(*v26, v9, v10, v11, v12, v13, v14, v15);
    if (v22 >= 0 || v21 <= -1)
    {
      return v21;
    }

    else
    {
      return v22;
    }
  }

  return v21;
}

uint64_t hlp_igtree_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
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

    cstdlib_strcpy(v6, "=");
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v7, v8, v9, v10, v12);
  return 2315264010;
}

uint64_t hlp_igtree_freeFeatureVector(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      if (*a2)
      {
        heap_Free(*(a1 + 8), *a2);
        *a2 = 0;
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t hlp_resizeFeature(uint64_t a1, uint64_t *a2, char *__s)
{
  v5 = cstdlib_strlen(__s);
  v6 = heap_Realloc(*(a1 + 8), *a2, (v5 + 1));
  if (v6)
  {
    v11 = v6;
    result = 0;
    *a2 = v11;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v7, v8, v9, v10, v13);
    return 2315264010;
  }

  return result;
}

uint64_t hlp_igtree_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, char *a6)
{
  v14 = -1;
  result = hlp_igtree_isFeatureRequired(a2, a3, a4, &v14);
  if (result)
  {
    if (!cstdlib_strcmp(a6, ""))
    {
      v12 = *(a5 + 8 * v14);
      v13 = "=";
      goto LABEL_7;
    }

    v10 = cstdlib_strlen(a6);
    v11 = v14;
    if (v10 < 0x41 || (result = hlp_resizeFeature(a1, (a5 + 8 * v14), a6), (result & 0x80000000) == 0))
    {
      v12 = *(a5 + 8 * v11);
      v13 = a6;
LABEL_7:
      cstdlib_strcpy(v12, v13);
      return 0;
    }
  }

  return result;
}

uint64_t hlp_igtree_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_2[a3];
  v8 = (a2 - 1);
  while (cstdlib_strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

char *feat_wordlength(uint64_t a1, unsigned int a2, int a3, int a4, char *__src, char *a6)
{
  *a6 = 0;
  if (a4 + a3 < a2)
  {
    return sprintf(a6, "%d", *(a1 + 40 * (a4 + a3) + 26));
  }

  return cstdlib_strcpy(a6, __src);
}

uint64_t hlp_igtree_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v81 = 0;
  v14 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v14)
  {
    v19 = v14;
    v80 = a7;
    if (a4 < 2)
    {
      goto LABEL_101;
    }

    v20 = 0;
    v21 = (a4 - 1);
    while (cstdlib_strcmp(*(a3 + 8 * v20), "word"))
    {
      if (v21 == ++v20)
      {
        goto LABEL_12;
      }
    }

    v81 = v20;
    if (v80 >= a6)
    {
      v23 = "=";
    }

    else
    {
      v23 = *(a5 + 40 * v80);
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 0, a2, v23);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_12:
    v25 = 0;
    v26 = v21 <= 1 ? 1 : (a4 - 1);
    while (cstdlib_strcmp(*(a3 + 8 * v25), "lword"))
    {
      if (v26 == ++v25)
      {
        goto LABEL_22;
      }
    }

    v81 = v25;
    if (v80 - 1 >= a6)
    {
      v27 = "=";
    }

    else
    {
      v27 = *(a5 + 40 * (v80 - 1));
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 1, a2, v27);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_22:
    v28 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v28), "llword"))
    {
      if (v26 == ++v28)
      {
        goto LABEL_30;
      }
    }

    v81 = v28;
    if (v80 - 2 >= a6)
    {
      v29 = "=";
    }

    else
    {
      v29 = *(a5 + 40 * (v80 - 2));
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 2, a2, v29);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_30:
    v30 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v30), "rword"))
    {
      if (v26 == ++v30)
      {
        goto LABEL_38;
      }
    }

    v81 = v30;
    if (v80 + 1 >= a6)
    {
      v31 = "=";
    }

    else
    {
      v31 = *(a5 + 40 * (v80 + 1));
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 3, a2, v31);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_38:
    v32 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v32), "rrword"))
    {
      if (v26 == ++v32)
      {
        goto LABEL_46;
      }
    }

    v81 = v32;
    if (v80 + 2 >= a6)
    {
      v33 = "=";
    }

    else
    {
      v33 = *(a5 + 40 * (v80 + 2));
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 4, a2, v33);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_46:
    v34 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v34), "wordlen"))
    {
      if (v26 == ++v34)
      {
        goto LABEL_51;
      }
    }

    v81 = v34;
    feat_wordlength(a5, a6, v80, 0, "=", v19);
    v24 = hlp_igtree_setFeature(a1, a3, a4, 5, a2, v19);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_51:
    v35 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v35), "lwordlen"))
    {
      if (v26 == ++v35)
      {
        goto LABEL_56;
      }
    }

    v81 = v35;
    feat_wordlength(a5, a6, v80, -1, "=", v19);
    v24 = hlp_igtree_setFeature(a1, a3, a4, 6, a2, v19);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_56:
    v36 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v36), "rwordlen"))
    {
      if (v26 == ++v36)
      {
        goto LABEL_61;
      }
    }

    v81 = v36;
    feat_wordlength(a5, a6, v80, 1, "=", v19);
    v24 = hlp_igtree_setFeature(a1, a3, a4, 7, a2, v19);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_61:
    v37 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v37), "pos"))
    {
      if (v26 == ++v37)
      {
        goto LABEL_69;
      }
    }

    v81 = v37;
    if (v80 >= a6)
    {
      v38 = "=";
    }

    else
    {
      v38 = *(a5 + 40 * v80 + 8);
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 8, a2, v38);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_69:
    v39 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v39), "lpos"))
    {
      if (v26 == ++v39)
      {
        goto LABEL_77;
      }
    }

    v81 = v39;
    if (v80 - 1 >= a6)
    {
      v40 = "=";
    }

    else
    {
      v40 = *(a5 + 40 * (v80 - 1) + 8);
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 9, a2, v40);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_77:
    v41 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v41), "llpos"))
    {
      if (v26 == ++v41)
      {
        goto LABEL_85;
      }
    }

    v81 = v41;
    if (v80 - 2 >= a6)
    {
      v42 = "=";
    }

    else
    {
      v42 = *(a5 + 40 * (v80 - 2) + 8);
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 10, a2, v42);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_85:
    v43 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v43), "rpos"))
    {
      if (v26 == ++v43)
      {
        goto LABEL_93;
      }
    }

    v81 = v43;
    if (v80 + 1 >= a6)
    {
      v44 = "=";
    }

    else
    {
      v44 = *(a5 + 40 * (v80 + 1) + 8);
    }

    v24 = hlp_igtree_setFeature(a1, a3, a4, 11, a2, v44);
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_93:
    v45 = 0;
    while (cstdlib_strcmp(*(a3 + 8 * v45), "rrpos"))
    {
      if (v26 == ++v45)
      {
        goto LABEL_101;
      }
    }

    v81 = v45;
    v46 = v80 + 2 >= a6 ? "=" : *(a5 + 40 * (v80 + 2) + 8);
    v24 = hlp_igtree_setFeature(a1, a3, a4, 12, a2, v46);
    if ((v24 & 0x80000000) == 0)
    {
LABEL_101:
      v47 = v80;
      if (!hlp_igtree_isFeatureRequired(a3, a4, 13, &v81) || (v48 = feat_char(a5, v80, 0, v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 13, a2, v48), (v24 & 0x80000000) == 0))
      {
        if (!hlp_igtree_isFeatureRequired(a3, a4, 15, &v81) || (v49 = feat_char(a5, v80, 1, v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 15, a2, v49), (v24 & 0x80000000) == 0))
        {
          if (!hlp_igtree_isFeatureRequired(a3, a4, 14, &v81) || (v50 = feat_char(a5, v80, -1, v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 14, a2, v50), (v24 & 0x80000000) == 0))
          {
            if (!hlp_igtree_isFeatureRequired(a3, a4, 16, &v81) || (v51 = feat_char(a5, v80, -2, v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 16, a2, v51), (v24 & 0x80000000) == 0))
            {
              if (!hlp_igtree_isFeatureRequired(a3, a4, 17, &v81) || (v52 = feat_matchprevpos_0(a5, v80, "n"), v24 = hlp_igtree_setFeature(a1, a3, a4, 17, a2, v52), (v24 & 0x80000000) == 0))
              {
                if (!hlp_igtree_isFeatureRequired(a3, a4, 18, &v81) || (v53 = feat_matchprevpos_0(a5, v80, "v"), v24 = hlp_igtree_setFeature(a1, a3, a4, 18, a2, v53), (v24 & 0x80000000) == 0))
                {
                  v79 = a2;
                  if (!hlp_igtree_isFeatureRequired(a3, a4, 19, &v81))
                  {
                    goto LABEL_184;
                  }

                  v54 = v80;
                  while (a6 > ++v54)
                  {
                    v55 = a5 + 40 * v54;
                    if (!cstdlib_strncmp(*(v55 + 8), "n", 1uLL))
                    {
                      v56 = *v55;
                      goto LABEL_119;
                    }
                  }

                  v56 = "=";
LABEL_119:
                  a2 = v79;
                  v24 = hlp_igtree_setFeature(a1, a3, a4, 19, v79, v56);
                  v47 = v80;
                  if ((v24 & 0x80000000) == 0)
                  {
LABEL_184:
                    if (!hlp_igtree_isFeatureRequired(a3, a4, 19, &v81))
                    {
                      goto LABEL_183;
                    }

                    v57 = v47;
                    while (a6 > ++v57)
                    {
                      v58 = a5 + 40 * v57;
                      if (!cstdlib_strncmp(*(v58 + 8), "v", 1uLL))
                      {
                        v59 = *v58;
                        goto LABEL_126;
                      }
                    }

                    v59 = "=";
LABEL_126:
                    a2 = v79;
                    v24 = hlp_igtree_setFeature(a1, a3, a4, 20, v79, v59);
                    v47 = v80;
                    if ((v24 & 0x80000000) == 0)
                    {
LABEL_183:
                      if (!hlp_igtree_isFeatureRequired(a3, a4, 21, &v81) || (v47 >= a6 ? (v61 = "=") : ((v19[1] = 0, *(a5 + 40 * v47 + 26) > 5u) ? (v60 = 48) : (v60 = 49), *v19 = v60, v61 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 21, a2, v61), (v24 & 0x80000000) == 0))
                      {
                        if (!hlp_igtree_isFeatureRequired(a3, a4, 22, &v81) || (v47 >= a6 ? (v63 = "=") : ((v19[1] = 0, *(a5 + 40 * v47 + 26) < 2u) ? (v62 = 48) : (v62 = 49), *v19 = v62, v63 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 22, a2, v63), (v24 & 0x80000000) == 0))
                        {
                          if (!hlp_igtree_isFeatureRequired(a3, a4, 23, &v81) || (v47 - 1 >= a6 ? (v65 = "=") : ((v19[1] = 0, *(a5 + 40 * (v47 - 1) + 26) > 5u) ? (v64 = 48) : (v64 = 49), *v19 = v64, v65 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 23, a2, v65), (v24 & 0x80000000) == 0))
                          {
                            if (!hlp_igtree_isFeatureRequired(a3, a4, 24, &v81) || (v47 - 1 >= a6 ? (v67 = "=") : ((v19[1] = 0, *(a5 + 40 * (v47 - 1) + 26) < 2u) ? (v66 = 48) : (v66 = 49), *v19 = v66, v67 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 24, a2, v67), (v24 & 0x80000000) == 0))
                            {
                              if (!hlp_igtree_isFeatureRequired(a3, a4, 25, &v81) || (v47 + 1 >= a6 ? (v69 = "=") : ((v19[1] = 0, *(a5 + 40 * (v47 + 1) + 26) > 5u) ? (v68 = 48) : (v68 = 49), *v19 = v68, v69 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 25, a2, v69), (v24 & 0x80000000) == 0))
                              {
                                if (!hlp_igtree_isFeatureRequired(a3, a4, 26, &v81) || (v47 + 1 >= a6 ? (v74 = "=") : ((v19[1] = 0, *(a5 + 40 * (v47 + 1) + 26) < 2u) ? (v73 = 48) : (v73 = 49), *v19 = v73, v74 = v19), v24 = hlp_igtree_setFeature(a1, a3, a4, 26, a2, v74), (v24 & 0x80000000) == 0))
                                {
                                  v75 = 0;
                                  v76 = v81;
                                  do
                                  {
                                    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "igtree feature %s", v70, v71, v72, *(a2 + 8 * v75));
                                    v22 = 0;
                                    ++v75;
                                  }

                                  while (v76 >= v75);
                                  goto LABEL_179;
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

LABEL_178:
    v22 = v24;
LABEL_179:
    heap_Free(*(a1 + 8), v19);
    return v22;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v15, v16, v17, v18, v78);
  return 2315264010;
}

const char *feat_char(uint64_t a1, unsigned int a2, int a3, char *a4)
{
  v5 = a3;
  v6 = *(a1 + 40 * a2 + 26);
  if (a3 < 0)
  {
    if (((v6 + a3) & 0x8000) != 0)
    {
      return "=";
    }

    v5 = (v6 + a3);
  }

  if (v6 <= v5)
  {
    return "=";
  }

  v7 = 0;
  v8 = (a1 + 40 * a2);
  do
  {
    utf8_getUTF8Char(*v8, v7, a4);
    v7 += cstdlib_strlen(a4);
  }

  while (v5-- != 0);
  return a4;
}

const char *feat_matchprevpos_0(uint64_t a1, unsigned int a2, char *__s2)
{
  if (!a2)
  {
    return "=";
  }

  v5 = a2 - 2;
  v6 = a2 - 1;
  v7 = "=";
  while (v6)
  {
    v8 = (a1 + 40 * v5--);
    --v6;
    if (!cstdlib_strncmp(v8[1], __s2, 1uLL))
    {
      return *v8;
    }
  }

  return v7;
}

uint64_t pandpIgtreeInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = IgtreeContextInit(a1, a2, a3, a4, a5, a6, (a7 + 7), "igtree2ps");
  if (v14 < 0)
  {
    goto LABEL_5;
  }

  if (a7[8])
  {
    v14 = IgtreeContextInit(a1, a2, a3, a4, a5, a6, (a7 + 14), "igtree2pw");
    if ((v14 & 0x80000000) == 0)
    {
      v15 = "igtreexsh";
      v16 = (a7 + 21);
      v17 = a1;
      v18 = a2;
      v19 = a3;
      v20 = a4;
      v21 = a5;
      v22 = a6;
      goto LABEL_7;
    }

LABEL_5:
    v23 = v14;
    pandpIgtreeDeinit(a5, a6, a7);
    return v23 | 0x8A002000;
  }

  v15 = "igtree1p";
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v16 = a7;
LABEL_7:
  v24 = IgtreeContextInit(v17, v18, v19, v20, v21, v22, v16, v15);
  if ((v24 & 0x80000000) != 0)
  {
    pandpIgtreeDeinit(a5, a6, a7);
    return v24 | 0x8A002000;
  }

  return v24;
}

uint64_t IgtreeContextInit(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *__s1)
{
  __s1a = 0;
  *a7 = __s1;
  *(a7 + 24) = 0;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  if (cstdlib_strcmp(__s1, "igtree2ps"))
  {
    v16 = 1;
  }

  else
  {
    v16 = 1;
    if ((paramc_ParamGetStr(*(a5 + 40), "compatstrongbnd", &__s1a) & 0x80000000) == 0 && __s1a && !cstdlib_strcmp(__s1a, "yes"))
    {
      log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "<%s> disables voice-dependent strong BND model", v21, v22, v23, "compatstrongbnd");
      v16 = 0;
    }
  }

  if ((paramc_ParamGetStr(*(a5 + 40), "basicclcprosody", &__s1a) & 0x80000000) != 0 || !__s1a || cstdlib_strcmp(__s1a, "yes"))
  {
    if (v16)
    {
      v20 = tryLoadingIgtreeModel(a1, a2, a3, a4, a5, a7, __s1, 1);
      if (v20 < 0)
      {
        return v20 | 0x8A002000;
      }
    }
  }

  else
  {
    log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "<%s> disables voice-dependent %s", v17, v18, v19, "basicclcprosody");
  }

  v24 = *(a7 + 8);
  if (v24)
  {
    goto LABEL_15;
  }

  v20 = tryLoadingIgtreeModel(a1, a2, a3, a4, a5, a7, __s1, 0);
  if (v20 < 0)
  {
    return v20 | 0x8A002000;
  }

  v24 = *(a7 + 8);
  if (v24)
  {
LABEL_15:
    *(a7 + 16) = 0;
    v25 = *(v24 + 1312);
    v26 = *(v24 + 1296);
    v27 = v26 - 1;
    v28 = heap_Calloc(*(a5 + 8), (v26 - 1), 8);
    *(a7 + 16) = v28;
    if (v28)
    {
      v58 = a6;
      if (!v27)
      {
LABEL_25:
        *(a7 + 24) = "";
        *(a7 + 32) = 1;
        v41 = *(a7 + 8);
        if (v41 && *(v41 + 1328) && *(v41 + 1336))
        {
          v42 = 0;
          do
          {
            v43 = v42;
            v44 = 16 * v42;
            v45 = cstdlib_strcmp("orth_top200", *(*(v41 + 1328) + v44));
            v46 = *(*(a7 + 8) + 1328);
            if (v45)
            {
              if (!cstdlib_strcmp("bnd1_dist_min", *(v46 + v44)))
              {
                v47 = cstdlib_strtol(*(*(*(a7 + 8) + 1328) + 16 * v43 + 8), 0, 0xAu);
                if (v47 < 1)
                {
                  log_OutText(*(a5 + 32), "FE_PHRASING", 1, 0, "readIgtreeParams: ignore invalid bnd1_dist_min value %s", v48, v49, v50, *(*(*(a7 + 8) + 1328) + 16 * v43 + 8));
                }

                else
                {
                  *(a7 + 32) = v47;
                }
              }
            }

            else
            {
              *(a7 + 24) = *(v46 + 16 * v43 + 8);
            }

            v42 = v43 + 1;
            v41 = *(a7 + 8);
          }

          while (*(v41 + 1336) > (v43 + 1));
        }

        return 0;
      }

      v33 = 0;
      while (1)
      {
        *(v28 + 8 * v33) = 0;
        v34 = &off_287EEC160;
        v35 = "pos_current";
        v36 = v33;
        while (cstdlib_strcmp(v35, *(v25 + 8 * v36)))
        {
          v40 = *v34;
          v34 += 2;
          v35 = v40;
          if (!v40)
          {
            goto LABEL_23;
          }
        }

        log_OutText(*(a5 + 32), "FE_PHRASING", 5, 0, "traceFeatureMap %s [%d] => %s", v37, v38, v39, *a7);
        *(*(a7 + 16) + 8 * v36) = *(v34 - 1);
LABEL_23:
        v28 = *(a7 + 16);
        if (!*(v28 + 8 * v36))
        {
          break;
        }

        v33 = (v36 + 1);
        if (v33 >= v27)
        {
          goto LABEL_25;
        }
      }

      log_OutText(*(a5 + 32), "FE_PHRASING", 0, 0, "no implementation for feature[%d] => %s", v37, v38, v39, v36);
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37001, "%s%s", v52, v53, v54, v55, "unimplemented feature");
      heap_Free(*(a5 + 8), *(a7 + 16));
      *(a7 + 16) = 0;
      v51 = 2315264025;
      a6 = v58;
    }

    else
    {
      log_OutPublic(*(a5 + 32), "FE_PHRASING", 37000, 0, v29, v30, v31, v32, v57);
      v51 = 2315264010;
    }

    IgtreeContextDeinit(a5, a6, a7);
    return v51;
  }

  return 0;
}

uint64_t pandpIgtreeDeinit(uint64_t a1, uint64_t a2, void *a3)
{
  IgtreeContextDeinit(a1, a2, a3);
  IgtreeContextDeinit(a1, a2, a3 + 7);
  IgtreeContextDeinit(a1, a2, a3 + 14);

  return IgtreeContextDeinit(a1, a2, a3 + 21);
}

uint64_t IgtreeContextDeinit(uint64_t result, uint64_t a2, void *a3)
{
  v4 = result;
  *a3 = 0;
  a3[3] = 0;
  v5 = a3[1];
  if (v5)
  {
    result = igtree_Deinit_ReadOnly_DereferenceCnt(result, a2, v5);
    a3[1] = 0;
  }

  v6 = a3[2];
  if (v6)
  {
    result = heap_Free(*(v4 + 8), v6);
    a3[2] = 0;
  }

  a3[3] = 0;
  a3[5] = 0;
  a3[6] = 0;
  return result;
}

uint64_t singlePassIgtreePhrasing(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v25 = 0;
  v5 = *(a5[1] + 1296);
  v26 = 0;
  if (*(a2 + 8) < 2u)
  {
    return 0;
  }

  v27 = 0;
  v23 = v5 - 1;
  v11 = allocateFeatureVector(a1, (v5 - 1), &v27, &v26);
  if (v11 < 0)
  {
    return v11 | 0x8A002000;
  }

  a5[5] = a3;
  a5[6] = a4;
  v12 = v27;
  if (*(a2 + 8) >= 2u)
  {
    v6 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *a2 + 32 * v13;
      if (*(v14 + 4) == 2 && *(v14 + 36) == 2)
      {
        goto LABEL_23;
      }

      v15 = *(v14 + 2) - 1;
      if (v23)
      {
        v16 = 0;
        do
        {
          (*(a5[2] + v16 * 8))(a5, v15, v12[v16], 128);
          ++v16;
        }

        while (v23 != v16);
      }

      v6 = igtree_Process(a5[1], v12, &v25);
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      v19 = "?";
      if ((*(*a3 + 224 * v15 + 75) - 1) <= 3u)
      {
        v19 = off_279DACC60[(*(*a3 + 224 * v15 + 75) - 1)];
      }

      v20 = v25;
      traceFeatureVector(a1, a5, v15, v12, v25, v19, v17, v18);
      if (!*(*a3 + 224 * v15 + 75))
      {
        v19 = v20;
      }

      if (!cstdlib_strcmp("1", v19))
      {
        break;
      }

      if (!cstdlib_strcmp("2", v19))
      {
        v21 = 3;
        goto LABEL_22;
      }

      if (!cstdlib_strcmp(".", v19))
      {
        v21 = 2;
LABEL_22:
        *(*a3 + 224 * v15 + 73) = v21;
      }

LABEL_23:
      if (*(a2 + 8) - 1 <= ++v13)
      {
        goto LABEL_27;
      }
    }

    v21 = 4;
    goto LABEL_22;
  }

  v6 = 0;
LABEL_27:
  heap_Free(*(a1 + 8), v12);
  heap_Free(*(a1 + 8), v26);
  return v6;
}

uint64_t allocateFeatureVector(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a2;
  v9 = heap_Calloc(*(a1 + 8), a2, 128);
  *a4 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v14 = heap_Calloc(*(a1 + 8), v8, 8);
  *a3 = v14;
  if (!v14)
  {
    heap_Free(*(a1 + 8), *a4);
    *a4 = 0;
LABEL_8:
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v10, v11, v12, v13, v17);
    return 2315264010;
  }

  if (a2)
  {
    v15 = 0;
    do
    {
      *(*a3 + 8 * v15) = *a4 + (v15 << 7);
      ++v15;
    }

    while (v15 != v8);
  }

  return 0;
}

uint64_t traceFeatureVector(uint64_t a1, uint64_t *a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(a2[1] + 1296) - 1);
  if (v11 >= 2)
  {
    v12 = 8 * v11;
    v13 = 8;
    do
    {
      cstdlib_strcat(*a4, " ");
      cstdlib_strcat(*a4, a4[v13 / 8]);
      v13 += 8;
    }

    while (v12 != v13);
  }

  return log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "traceFeatureVector %s [%02d] %-16s | %-44s | %s %s", a6, a7, a8, *a2);
}

uint64_t twoPassIgtreePhrasing(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v50 = 0;
  v51 = 0;
  if (*(a2 + 8) >= 2u)
  {
    v10 = *(a5[8] + 1296) - 1;
    v11 = a5[15];
    if (v11)
    {
      v12 = *(v11 + 1296) - 1;
      if (v12 > v10)
      {
        v10 = v12;
      }
    }

    v52 = 0;
    v13 = allocateFeatureVector(a1, v10, &v52, &v51);
    if (v13 < 0)
    {
      return v13 | 0x8A002000;
    }

    v14 = *(a5[8] + 1296);
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
      v45 = a4;
      v46 = a3;
      v5 = 0;
      v15 = 0;
      v16 = v52;
      v47 = (v14 - 1);
      do
      {
        v17 = *a2 + 32 * v15;
        if (*(v17 + 4) != 2 || *(v17 + 36) != 2)
        {
          v18 = *(v17 + 2) - 1;
          if (v47)
          {
            for (i = 0; i != v47; ++i)
            {
              (*(a5[9] + i * 8))(a5 + 7, v18, v16[i], 128);
            }
          }

          v5 = igtree_Process(a5[8], v16, &v50);
          if ((v5 & 0x80000000) == 0)
          {
            v22 = *(*a3 + 224 * v18 + 75) - 1;
            v23 = "?";
            if (v22 <= 3u)
            {
              v23 = off_279DACC80[v22];
            }

            v24 = v50;
            traceFeatureVector(a1, a5 + 7, v18, v16, v50, v23, v20, v21);
            v25 = 224 * v18;
            if (*(*v46 + v25 + 75))
            {
              v26 = v23;
            }

            else
            {
              v26 = v24;
            }

            a3 = v46;
            if (cstdlib_strcmp("+", v26))
            {
              v27 = 2;
            }

            else
            {
              v27 = 4;
            }

            *(*v46 + v25 + 73) = v27;
          }
        }

        ++v15;
        v28 = *(a2 + 8);
      }

      while ((v28 - 1) > v15);
      v29 = a5[15];
      if (v29)
      {
        v30 = *(v29 + 1296);
        a5[19] = a3;
        a5[20] = v45;
        v31 = v52;
        if (v28 >= 2)
        {
          v32 = 0;
          v48 = (v30 - 1);
          do
          {
            v33 = *a2 + 32 * v32;
            if (*(v33 + 4) != 2 || *(v33 + 36) != 2)
            {
              v34 = (*(v33 + 2) - 1);
              v35 = *a3 + 224 * v34;
              if (*(v35 + 73) != 4 || *(v35 + 75) != 4)
              {
                if (v48)
                {
                  for (j = 0; j != v48; ++j)
                  {
                    (*(a5[16] + j * 8))(a5 + 14, v34, v31[j], 128);
                  }
                }

                v5 = igtree_Process(a5[15], v31, &v50);
                if ((v5 & 0x80000000) == 0)
                {
                  v39 = "?";
                  if ((*(*a3 + 224 * v34 + 75) - 1) <= 3u)
                  {
                    v39 = off_279DACCA0[(*(*a3 + 224 * v34 + 75) - 1)];
                  }

                  v40 = v50;
                  traceFeatureVector(a1, a5 + 14, v34, v31, v50, v39, v37, v38);
                  a3 = v46;
                  if (*(*v46 + 224 * v34 + 73) != 4)
                  {
                    v41 = 224 * v34;
                    if (*(*v46 + v41 + 75))
                    {
                      v42 = v39;
                    }

                    else
                    {
                      v42 = v40;
                    }

                    if (cstdlib_strcmp("+", v42))
                    {
                      v43 = 2;
                    }

                    else
                    {
                      v43 = 3;
                    }

                    *(*v46 + v41 + 73) = v43;
                  }
                }
              }
            }

            ++v32;
          }

          while (*(a2 + 8) - 1 > v32);
        }

        goto LABEL_52;
      }
    }

    v31 = v52;
LABEL_52:
    heap_Free(*(a1 + 8), v31);
    heap_Free(*(a1 + 8), v51);
    return v5;
  }

  return 0;
}

uint64_t threePassIgtreePhrasing(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v8 = a2;
  v39 = 0;
  v40 = 0;
  v10 = twoPassIgtreePhrasing(a1, a2, a3, a4, a5);
  if (v10 < 0)
  {
    return v10 | 0x8A002000;
  }

  v41 = 0;
  v10 = allocateFeatureVector(a1, (*(a5[22] + 1296) - 1), &v41, &v40);
  if (v10 < 0)
  {
    return v10 | 0x8A002000;
  }

  v36 = a1;
  v11 = *(a5[22] + 1296);
  a5[26] = a3;
  a5[27] = a4;
  LODWORD(v12) = *(v8 + 8);
  v13 = v41;
  if (*(v8 + 8))
  {
    v14 = 0;
    v15 = 0;
    v38 = 0;
    v37 = (v11 - 1);
    v35 = v8;
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
        if (v37)
        {
          for (i = 0; i != v37; ++i)
          {
            (*(a5[23] + i * 8))(a5 + 21, v17, v13[i], 128);
          }
        }

        v38 = igtree_Process(a5[22], v13, &v39);
        if ((v38 & 0x80000000) == 0)
        {
          v22 = v39;
          if (*(*a3 + 224 * v17 + 120))
          {
            v23 = *(*a3 + 224 * v17 + 120);
          }

          else
          {
            v23 = "?";
          }

          traceFeatureVector(v36, a5 + 21, v17, v13, v39, v23, v20, v21);
          v24 = *a3 + 224 * v17;
          v25 = *(v24 + 112);
          if (*(v24 + 120))
          {
            v22 = v23;
          }

          v26 = *(v36 + 8);
          v27 = cstdlib_strlen(v22);
          v28 = heap_Realloc(v26, v25, (v27 + 1));
          if (!v28)
          {
            log_OutPublic(*(v36 + 32), "FE_PHRASING", 37000, 0, v29, v30, v31, v32, v34);
            return 2315264010;
          }

          *(*a3 + 224 * v17 + 112) = v28;
          cstdlib_strcpy(v28, v22);
          v8 = v35;
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

  v38 = 0;
LABEL_24:
  heap_Free(*(v36 + 8), v13);
  heap_Free(*(v36 + 8), v40);
  return v38;
}

uint64_t simplifiedTokenPhrasing(uint64_t a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  if (*(a2 + 4) >= 2u)
  {
    v26 = v4;
    v27 = v5;
    v10 = 0;
    v11 = 0;
    v12 = *a2;
    do
    {
      v25 = 0;
      v13 = v12 + 32 * v11;
      if (*(v13 + 4) == 2)
      {
        v14 = v12 + v10;
        if (*(v12 + v10 + 36) == 2)
        {
          v24 = 0;
          v22 = 0;
          v23 = 0;
          FLOATSUR_PLUS(&v24, a4 + 194, a4 + 196);
          FLOATSUR_PLUS(&v22, a4 + 192, &v24);
          FLOATSUR_TIMES(&v24, (v13 + 8), a4 + 192);
          FLOATSUR_TIMES(&v23 + 2, (v14 + 40), a4 + 194);
          FLOATSUR_TIMES(&v23, (v13 + 12), a4 + 196);
          FLOATSUR_PLUS(&v22 + 2, &v24, &v23 + 2);
          FLOATSUR_PLUS(&v22 + 2, &v22 + 2, &v23);
          FLOATSUR_DIV(&v24, &v22 + 2, &v22);
          FLOATSUR_TIMES_INT(&v25, &v24, 0xAu, 0);
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "bndVal[%d] = %d.%d (thisphraseWeight=%d.%d thisBndWeight=%d.%d nextphraseWeight=%d.%d)", v15, v16, v17, v11);
          if (FLOATSUR_LT(&v25, a4 + 186))
          {
            v12 = *a2;
            v18 = *a3 + 224 * *(*a2 + 32 * v11 + 2);
            v19 = 2;
          }

          else
          {
            v20 = FLOATSUR_LT(&v25, a4 + 188);
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

uint64_t tryLoadingIgtreeModel(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int a8)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v31, 0, sizeof(v31));
  *(a6 + 8) = 0;
  v29 = 0;
  __s2 = 0;
  v27 = 0;
  v28 = "";
  memset(v39, 0, sizeof(v39));
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  Str = paramc_ParamGetStr(*(a5 + 40), "langcode", &__s2);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  Str = paramc_ParamGetStr(*(a5 + 40), "fecfg", &v28);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  __s1 = 0;
  cstdlib_strcat(&__s1, "igtree/bnd/");
  cstdlib_strcat(&__s1, __s2);
  cstdlib_strcat(&__s1, "/");
  if (a8 == 1)
  {
    Str = paramc_ParamGetStr(*(a5 + 40), "voice", &v29);
    if (Str < 0)
    {
LABEL_11:
      v24 = Str;
      log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "Could not assemble broker string for IGtree phrasing model %s", v17, v18, v19, a7);
      return v24 | 0x8A002000;
    }

    if (cstdlib_strstr(v29, "uni"))
    {
      v29 = 0;
    }

    else
    {
      cstdlib_strcat(&__s1, v29);
      cstdlib_strcat(&__s1, "/");
    }
  }

  cstdlib_strcat(&__s1, v28);
  cstdlib_strcat(&__s1, "/");
  cstdlib_strcat(&__s1, a7);
  Str = brokeraux_ComposeBrokerString(a5, &__s1, 1, 1, __s2, v29, 0, v31, 0x80uLL);
  if (Str < 0)
  {
    goto LABEL_11;
  }

  if ((igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, &v27, 2, v31, "IGTR", 1031, 0) & 0x80000000) != 0)
  {
    log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "failed to read IGtree phrasing model data - going on without", v20, v21, v22, v26);
    v23 = 0;
  }

  else
  {
    v23 = v27;
  }

  result = 0;
  *(a6 + 8) = v23;
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
    v10 = a4 - 1;
    v11 = "%";
LABEL_8:
    result = cstdlib_strncat(__s1, v11, v10);
    goto LABEL_9;
  }

  v7 = *v6 + 224 * a2;
  if (!*(v7 + 104))
  {
    v11 = *(v7 + 88);
    if (!v11)
    {
      v11 = *(*(v7 + 16) + 8 * *(*(a1 + 48) + 18));
    }

    v4 = a4;
    v10 = a4 - 1;
    goto LABEL_8;
  }

  cstdlib_strncat(__s1, "_", (a4 - 1));
  cstdlib_strncat(__s1, *(v7 + 104), v4 - 2);
  v8 = cstdlib_strlen(*(v7 + 104));
  result = cstdlib_strncat(__s1, "_", v4 - 2 - v8);
  v4 = v4;
LABEL_9:
  __s1[v4 - 1] = 0;
  return result;
}

char *BND_pos_prev(uint64_t a1, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v4 = *(**(a1 + 40) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(a1 + 48) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_pos_current(a1, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v7 = v6 - 1;
  return BND_pos_current(a1, v7, a3, a4);
}

size_t BND_syn_boundary_current(uint64_t a1, unsigned int a2, char *__dst, unsigned int a4)
{
  v6 = *(*(a1 + 48) + 24);
  *__dst = 0;
  v7 = *(a1 + 40);
  if (*(v7 + 4) <= a2)
  {

    return cstdlib_strncat(__dst, "%", a4 - 1);
  }

  v9 = *v7;
  for (i = a2; ; --i)
  {
    v11 = *(v9 + 224 * i + 56);
    if (!v11)
    {
LABEL_9:
      if (!i)
      {
        goto LABEL_23;
      }

      continue;
    }

    v12 = v11 + 32 * v6;
    if (*v12 == 1)
    {
      break;
    }

    if (a2 <= i)
    {
      goto LABEL_9;
    }

    if (!i || *(v12 + 4) == 1)
    {
      goto LABEL_23;
    }
  }

  v14 = *(v12 + 16);
  if (!cstdlib_strcmp(v14, "O"))
  {
LABEL_23:

    return cstdlib_strcpy(__dst, "O");
  }

  if (a2 == i)
  {
    v15 = 66;
  }

  else
  {
    v15 = 73;
  }

  *__dst = v15;
  *(__dst + 1) = 45;
  cstdlib_strncat(__dst, v14, a4 - 3);
  __dst[a4 - 1] = 0;
  result = cstdlib_strlen(__dst);
  if (result >= 5)
  {
    v16 = &__dst[result];
    if (__dst[result - 2] == 45 && *(v16 - 1) == 80)
    {
      *(v16 - 2) = 0;
    }
  }

  return result;
}

char *BND_syn_boundary_prev(uint64_t a1, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v4 = *(**(a1 + 40) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(a1 + 48) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_syn_boundary_current(a1, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v7 = v6 - 1;
  return BND_syn_boundary_current(a1, v7, a3, a4);
}

char *BND_orth_uni200(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  *__s1 = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 8) <= a2)
  {
    v9 = a4 - 1;
    v10 = "%";
LABEL_5:
    v11 = __s1;
LABEL_6:
    result = cstdlib_strncat(v11, v10, v9);
    goto LABEL_7;
  }

  v7 = *v6 + 224 * a2;
  if (*(v7 + 104))
  {
    cstdlib_strncat(__s1, "_", (a4 - 1));
    cstdlib_strncat(__s1, *(v7 + 104), (a4 - 3));
    result = cstdlib_strcat(__s1, "_");
    goto LABEL_7;
  }

  v13 = *(v7 + 16);
  v14 = *(*(a1 + 48) + 16);
  v15 = *(v13 + 8 * v14);
  if (!v15)
  {
    v9 = a4 - 1;
    v10 = "?";
    goto LABEL_5;
  }

  v16 = cstdlib_strlen(*(v13 + 8 * v14));
  cstdlib_strncat(__s1, " ", (a4 - 1));
  cstdlib_strncat(__s1, v15, (a4 - 3));
  cstdlib_strcat(__s1, " ");
  if (v16 >= 2)
  {
    v17 = __s1[1];
    if (v17 != 32)
    {
      v18 = __s1 + 2;
      do
      {
        if ((v17 - 91) >= 0xFFFFFFE6)
        {
          *(v18 - 1) = v17 | 0x60;
        }

        v19 = *v18++;
        v17 = v19;
      }

      while (v19 != 32);
    }
  }

  result = cstdlib_strstr(*(a1 + 24), __s1);
  if (!result)
  {
    *__s1 = 0;
    v10 = "?";
    v11 = __s1;
    v9 = (a4 - 1);
    goto LABEL_6;
  }

  if (v16)
  {
    v20 = 0;
    v21 = __s1 + 1;
    do
    {
      *(v21 - 1) = *v21;
      ++v20;
      ++v21;
    }

    while (v16 > v20);
  }

  __s1[v16] = 0;
LABEL_7:
  __s1[a4 - 1] = 0;
  return result;
}

char *BND_punct_current(char *result, unsigned int a2, char *__s1, unsigned int a4)
{
  v4 = a4;
  v12 = *MEMORY[0x277D85DE8];
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
        result = cstdlib_strchr(__s, v7);
        if (result)
        {
          v9 = 1;
          result = cstdlib_strncat(__s1, v6, 1uLL);
          --v4;
        }

        else
        {
          if (v9 == 1 || !v8)
          {
            result = cstdlib_strncat(__s1, "_", --v4);
          }

          v9 = 0;
        }

        v10 = *++v6;
        v7 = v10;
        --v8;
      }

      while (v10);
    }
  }

  else
  {

    return cstdlib_strncat(__s1, "?", a4 - 1);
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
  v11 = *MEMORY[0x277D85DE8];
  v6 = *(*(**(a1 + 40) + 224 * a2 + 16) + 8 * *(*(a1 + 48) + 16));
  *__s1 = 0;
  if (v6 && (v7 = cstdlib_strlen(v6), *v6))
  {
    v8 = &v6[v7 - 1];
    cstdlib_strncat(__s1, "_", 1uLL);
    result = cstdlib_strchr(__s, *v8);
    if (result)
    {
      return cstdlib_strncat(__s1, v8, 1uLL);
    }
  }

  else
  {

    return cstdlib_strncat(__s1, "?", a4 - 1);
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

    return cstdlib_strncat(__s1, v6, a4 - 1);
  }

  return result;
}

char *BND_doc_punc(char *result, unsigned int a2, char *__dst, unsigned int a4)
{
  if (a4 >= 2)
  {
    if (*(*(result + 5) + 8) <= a2)
    {

      return cstdlib_strcpy(__dst, "%");
    }

    else
    {
      memset(__n, 0, sizeof(__n));
      *__dst = 0;
      v6 = *(result + 5);
      v7 = *v6 + 224 * a2;
      if (*(v6 + 8) - 1 > a2 && hlp_NLUStrFind(*(v7 + 384), "S_PUNC", &__n[1], __n))
      {
        v8 = 0;
        do
        {
          if (v8)
          {
            v9 = cstdlib_strlen(";");
            v10 = v8 + v9;
            if (v10 < a4)
            {
              cstdlib_strncat(__dst, ";", v9);
              v8 = v10;
            }
          }

          v11 = cstdlib_strlen("S_PUNC:");
          v12 = v8 + v11;
          if (v12 < a4)
          {
            cstdlib_strncat(__dst, "S_PUNC:", v11);
            v8 = v12;
          }

          v13 = __n[0];
          v14 = v8 + __n[0];
          if (v14 < a4)
          {
            cstdlib_strncat(__dst, *&__n[1], __n[0]);
            v8 = v14;
            v13 = __n[0];
          }
        }

        while (hlp_NLUStrFind((*&__n[1] + v13), "S_PUNC", &__n[1], __n));
      }

      else
      {
        v8 = 0;
      }

      if (hlp_NLUStrFind(*(v7 + 160), "I_PUNC", &__n[1], __n))
      {
        do
        {
          if (v8)
          {
            v15 = cstdlib_strlen(";");
            v16 = v8 + v15;
            if (v16 < a4)
            {
              cstdlib_strncat(__dst, ";", v15);
              v8 = v16;
            }
          }

          v17 = cstdlib_strlen("I_PUNC:");
          v18 = v8 + v17;
          if (v18 < a4)
          {
            cstdlib_strncat(__dst, "I_PUNC:", v17);
            v8 = v18;
          }

          v19 = __n[0];
          v20 = v8 + __n[0];
          if (v20 < a4)
          {
            cstdlib_strncat(__dst, *&__n[1], __n[0]);
            v8 = v20;
            v19 = __n[0];
          }
        }

        while (hlp_NLUStrFind((*&__n[1] + v19), "I_PUNC", &__n[1], __n));
      }

      if (hlp_NLUStrFind(*(v7 + 160), "S_PUNC", &__n[1], __n))
      {
        do
        {
          if (v8)
          {
            v21 = cstdlib_strlen(";");
            v22 = v8 + v21;
            if (v22 < a4)
            {
              cstdlib_strncat(__dst, ";", v21);
              v8 = v22;
            }
          }

          v23 = cstdlib_strlen("I_PUNC:");
          v24 = v8 + v23;
          if (v24 < a4)
          {
            cstdlib_strncat(__dst, "I_PUNC:", v23);
            v8 = v24;
          }

          v25 = __n[0];
          v26 = v8 + __n[0];
          if (v26 < a4)
          {
            cstdlib_strncat(__dst, *&__n[1], __n[0]);
            v8 = v26;
            v25 = __n[0];
          }
        }

        while (hlp_NLUStrFind((*&__n[1] + v25), "S_PUNC", &__n[1], __n));
      }

      for (result = hlp_NLUStrFind(*(v7 + 160), "E_PUNC", &__n[1], __n); result; result = hlp_NLUStrFind((*&__n[1] + v31), "E_PUNC", &__n[1], __n))
      {
        if (v8)
        {
          v27 = cstdlib_strlen(";");
          v28 = v8 + v27;
          if (v28 < a4)
          {
            cstdlib_strncat(__dst, ";", v27);
            v8 = v28;
          }
        }

        v29 = cstdlib_strlen("E_PUNC:");
        v30 = v8 + v29;
        if (v30 < a4)
        {
          cstdlib_strncat(__dst, "E_PUNC:", v29);
          v8 = v30;
        }

        v31 = __n[0];
        v32 = v8 + __n[0];
        if (v32 < a4)
        {
          cstdlib_strncat(__dst, *&__n[1], __n[0]);
          v8 = v32;
          v31 = __n[0];
        }
      }

      if (!v8)
      {
        return cstdlib_strcat(__dst, "%");
      }
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
    v10 = a4;
    v11 = a4 - 1;
    v12 = "%";
LABEL_5:
    v13 = __s1;
LABEL_6:
    result = cstdlib_strncat(v13, v12, v11);
    goto LABEL_7;
  }

  v7 = *v6 + 224 * a2;
  if (*(v7 + 104))
  {
    cstdlib_strncat(__s1, "_", (a4 - 1));
    cstdlib_strncat(__s1, *(v7 + 104), (a4 - 2));
    v8 = cstdlib_strlen(*(v7 + 104));
    result = cstdlib_strncat(__s1, "_", (a4 - 2) - v8);
    v10 = a4;
    goto LABEL_7;
  }

  v15 = *(v7 + 16);
  v16 = *(*(a1 + 48) + 16);
  v17 = *(v15 + 8 * v16);
  if (!v17)
  {
    v10 = a4;
    v11 = a4 - 1;
    v12 = "?";
    goto LABEL_5;
  }

  v18 = cstdlib_strlen(*(v15 + 8 * v16));
  v10 = a4;
  v19 = a4 - 1;
  cstdlib_strncat(__s1, " ", v19);
  if (v18 >= 1)
  {
    v20 = &v17[v18];
    do
    {
      v21 = Utf8_LengthInBytes(v17, 1);
      if (!utf8_BelongsToSet(0xAu, v17, 0, v21))
      {
        if (utf8_ToLower(v17, 0, v28))
        {
          v22 = v19 - cstdlib_strlen(__s1);
          v23 = v28;
          v24 = __s1;
LABEL_16:
          cstdlib_strncat(v24, v23, v22);
          goto LABEL_17;
        }

        if (v10 - cstdlib_strlen(__s1) > v21)
        {
          v22 = v21;
          v24 = __s1;
          v23 = v17;
          goto LABEL_16;
        }
      }

LABEL_17:
      v17 += v21;
    }

    while (v17 < v20);
  }

  v25 = cstdlib_strlen(__s1);
  cstdlib_strncat(__s1, " ", v19 - v25);
  result = cstdlib_strstr(*(a1 + 24), __s1);
  if (!result)
  {
    *__s1 = 0;
    v12 = "?";
    v13 = __s1;
    v11 = v19;
    goto LABEL_6;
  }

  if (v18)
  {
    v26 = 0;
    v27 = __s1 + 1;
    do
    {
      *(v27 - 1) = *v27;
      ++v26;
      ++v27;
    }

    while (v18 > v26);
  }

  __s1[v18] = 0;
LABEL_7:
  __s1[v10 - 1] = 0;
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

char *BND_phrase_type(uint64_t a1, unsigned int a2, char *__s1, unsigned int a4)
{
  *__s1 = 0;
  v4 = *(a1 + 40);
  if (*(v4 + 8) > a2 && (v5 = *(v4 + 40)) != 0 && *v5)
  {
    return cstdlib_strncat(__s1, v5, a4 - 1);
  }

  else
  {
    return cstdlib_strcat(__s1, "%");
  }
}

char *BND_tn(char *result, unsigned int a2, char *__s1, unsigned int a4)
{
  if (a4 >= 2)
  {
    if (*(*(result + 5) + 8) <= a2)
    {
      return cstdlib_strcpy(__s1, "%");
    }

    else
    {
      v4 = 0;
      v5 = 0;
      *__s1 = 0;
      do
      {
        v6 = *(**(result + 5) + 224 * v5 + 56);
        if (v6)
        {
          v7 = v6 + 32 * *(*(result + 6) + 22);
          if (*(v7 + 16))
          {
            if (*v7 == 1 && *(v7 + 10) >= a2 && *(v7 + 8) <= a2)
            {
              v5 = a2;
              v4 = *(v7 + 16);
            }
          }
        }

        ++v5;
      }

      while (a2 >= v5);
      if (v4)
      {
        return cstdlib_strncat(__s1, v4, a4 - 1);
      }

      else
      {
        return cstdlib_strcat(__s1, "%");
      }
    }
  }

  return result;
}

char *BND_doc_punc_prev(uint64_t a1, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a2)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v4 = *(**(a1 + 40) + 224 * a2 + 56);
  if (!v4 || (v5 = v4 + 32 * *(*(a1 + 48) + 22), *(v5 + 4) != 1))
  {
    v7 = a2 - 1;
    return BND_doc_punc(a1, v7, a3, a4);
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return cstdlib_strcpy(a3, "%");
  }

  v7 = v6 - 1;
  return BND_doc_punc(a1, v7, a3, a4);
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
      if ((v10 & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "external"))
      {
        *a5 = 1;
      }
    }
  }

  return v10;
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
      cstdlib_memset((v13 + 224 * *(a6 + 8)), 0, 0x2BC0uLL);
      *(a6 + 10) += 50;
      v12 = *a6;
      goto LABEL_7;
    }

LABEL_11:
    v26 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v28);
    return v26;
  }

LABEL_7:
  *(v12 + 224 * *(a6 + 8)) = *a3;
  v19 = heap_Calloc(*(a1 + 8), 1, (8 * *(a5 + 72)) | 1);
  *(*a6 + 224 * *(a6 + 8) + 16) = v19;
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = *(a1 + 8);
  v21 = cstdlib_strlen(a2);
  v22 = heap_Calloc(v20, 1, (v21 + 1));
  *(*(*a6 + 224 * *(a6 + 8) + 16) + 8 * *(a5 + 16)) = v22;
  if (!v22)
  {
    goto LABEL_11;
  }

  cstdlib_strcpy(v22, a2);
  v23 = *(a1 + 8);
  v24 = cstdlib_strlen(a4);
  v25 = heap_Calloc(v23, 1, (v24 + 1));
  *(*a6 + 224 * *(a6 + 8) + 8) = v25;
  if (!v25)
  {
    goto LABEL_11;
  }

  cstdlib_strcpy(v25, a4);
  v26 = 0;
  ++*(a6 + 8);
  return v26;
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
        goto LABEL_14;
      }
    }

    if (v11 + 1 != v17)
    {
      v29 = checkSpan(a1, a4, (v18 + 224 * v17 + 56));
      if ((v29 & 0x80000000) != 0)
      {
        return v29;
      }

      v29 = checkSpan(a1, a4, (*a5 + v15 + 56));
      if ((v29 & 0x80000000) != 0)
      {
        return v29;
      }

      v30 = *a5;
      v31 = 224 * v17;
      v32 = *(a4 + 22);
      v33 = *(*a5 + v31 + 56) + 32 * v32;
      *v33 = 1;
      *(v33 + 8) = v17;
      *(v33 + 10) = v16;
      v34 = *(v30 + v15 + 56) + 32 * v32;
      *(v34 + 4) = 1;
      *(v34 + 8) = v17;
      v35 = *(a1 + 8);
      v36 = cstdlib_strlen(a3);
      v37 = heap_Calloc(v35, 1, (v36 - 1));
      v42 = *a5 + v31;
      v43 = v17;
      *(*(v42 + 56) + 32 * *(a4 + 22) + 16) = v37;
      if (v37)
      {
        v44 = v37;
        v45 = cstdlib_strlen(a3 + 1);
        cstdlib_strncpy(v44, a3 + 1, v45 - 1);
        if (v13 != 1)
        {
          return 0;
        }

        v46 = *(*a5 + 224 * v17 + 168);
        if (v46)
        {
          heap_Free(*(a1 + 8), v46);
        }

        v47 = *(a1 + 8);
        v48 = cstdlib_strlen(a3);
        v49 = heap_Calloc(v47, 1, (v48 + 1));
        *(*a5 + 224 * v17 + 168) = v49;
        if (v49)
        {
          cstdlib_strcpy(v49, "B-");
          v50 = *(*a5 + 224 * v17 + 168);
          v51 = cstdlib_strlen(a3 + 1);
          cstdlib_strncpy((v50 + 2), a3 + 1, v51 - 1);
          v52 = v17 + 1;
          if (v52 > v16)
          {
            return 0;
          }

          while (1)
          {
            v53 = *(a1 + 8);
            v54 = cstdlib_strlen(*(*a5 + 224 * v43 + 168));
            v55 = heap_Calloc(v53, 1, (v54 + 1));
            v56 = *a5;
            v57 = v52;
            *(*a5 + 224 * v52 + 168) = v55;
            if (!v55)
            {
              break;
            }

            cstdlib_strcpy(v55, *(v56 + 224 * v43 + 168));
            v23 = 0;
            **(*a5 + 224 * v52++ + 168) = 73;
            if ((v57 + 1) > v16)
            {
              return v23;
            }
          }
        }
      }

      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v38, v39, v40, v41, v59);
      return 2315264010;
    }
  }

LABEL_14:
  v23 = 2315264000;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a6, a7, a8, a3);
  if (*(a5 + 4))
  {
    v27 = 0;
    v28 = 0;
    do
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "word[%d] %d,%d", v24, v25, v26, v28++);
      v27 += 224;
    }

    while (v28 < *(a5 + 4));
  }

  return v23;
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
  v9 = a2;
  if (!*(*a5 + 224 * a2 + 88) && !cstdlib_strcmp("UNK", __s))
  {
    v10 = *(a1 + 8);
    v11 = cstdlib_strlen(*(*(*a5 + 224 * v9 + 16) + 8 * *(a4 + 18)));
    v12 = heap_Calloc(v10, 1, v11 + 1);
    v17 = *a5;
    *(*a5 + 224 * v9 + 88) = v12;
    if (!v12)
    {
LABEL_7:
      v21 = 2315264010;
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v13, v14, v15, v16, v23);
      return v21;
    }

    cstdlib_strcpy(v12, *(*(v17 + 224 * v9 + 16) + 8 * *(a4 + 18)));
  }

  v18 = *(a1 + 8);
  v19 = cstdlib_strlen(__s);
  v20 = heap_Calloc(v18, 1, (v19 + 1));
  *(*(*a5 + 224 * v9 + 16) + 8 * *(a4 + 20)) = v20;
  if (!v20)
  {
    goto LABEL_7;
  }

  cstdlib_strcpy(v20, __s);
  return 0;
}

uint64_t addSynChunk(uint64_t a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  if (a4 > a5 || *(a7 + 8) <= a5)
  {
    v30 = 2315264000;
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
        v22 = cstdlib_strlen(a2);
        v23 = v22;
        if (a3)
        {
          v24 = cstdlib_strlen(a3);
          v25 = heap_Calloc(v21, 1, (v23 + v24 + 1));
          *(*(*a7 + 224 * v16 + 56) + 32 * *(a6 + 24) + 16) = v25;
          if (v25)
          {
            cstdlib_strcpy(v25, a2);
            cstdlib_strcat(*(*(*a7 + 224 * v16 + 56) + 32 * *(a6 + 24) + 16), a3);
            return 0;
          }
        }

        else
        {
          v31 = heap_Calloc(v21, 1, (v22 + 1));
          *(*(*a7 + 224 * v16 + 56) + 32 * *(a6 + 24) + 16) = v31;
          if (v31)
          {
            cstdlib_strcpy(v31, a2);
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

  v12 = a2;
  while (1)
  {
    v13 = *(a1 + 8);
    v14 = cstdlib_strlen(__s);
    v15 = heap_Calloc(v13, 1, (v14 + 3));
    v20 = v12;
    *(*a5 + 224 * v12 + 80) = v15;
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

      cstdlib_strcpy(*(*a5 + 224 * v12 + 80), v21);
      cstdlib_strcat(*(*a5 + 224 * v12 + 80), __s);
    }

    else
    {
      cstdlib_strcpy(*(*a5 + 224 * v12 + 80), __s);
    }

    *(*a5 + 224 * v12++ + 4) = a2;
    if (a3 < (v20 + 1))
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v16, v17, v18, v19, v5);
  return 2315264010;
}

uint64_t addMSPOS(uint64_t a1, unsigned int a2, char *__s, uint64_t a4, void *a5)
{
  v10 = *(a1 + 8);
  v11 = cstdlib_strlen(__s);
  v12 = heap_Calloc(v10, 1, (v11 + 1));
  *(*(*a5 + 224 * a2 + 16) + 8 * *(a4 + 18)) = v12;
  if (v12)
  {
    cstdlib_strcpy(v12, __s);
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
  if (*(a2 + 4))
  {
    for (i = 0; i < *(a2 + 4); ++i)
    {
      v7 = *(*a2 + 224 * i + 96);
      if (v7)
      {
        v8 = *(a3 + 656);
        if (!v8)
        {
          if (!cstdlib_strncmp(v7, "B-", 2uLL) || !cstdlib_strncmp(*(*a2 + 224 * i + 96), "I-", 2uLL))
          {
            continue;
          }

          v8 = *(a3 + 656);
        }

        if (v8 != 1)
        {
          v9 = *(*a2 + 224 * i + 96);
          v10 = *(a3 + 640);
          v11 = cstdlib_strlen(v10);
          if (!cstdlib_strncmp(v9, v10, v11))
          {
            v19 = *(*a2 + 224 * i + 96);
            v20 = *(a3 + 640);
            v21 = cstdlib_strlen(v20);
            if (cstdlib_strncmp(v19, v20, v21))
            {
              continue;
            }

            v25 = i + 1;
            v26 = *(a2 + 4);
            if (i + 1 != v26)
            {
              if (i + 1 >= v26)
              {
                continue;
              }

              v34 = *(*a2 + 224 * v25 + 96);
              if (v34)
              {
                v35 = *(a3 + 640);
                v36 = cstdlib_strlen(v35);
                if (cstdlib_strncmp(v34, v35, v36))
                {
                  if (*(*a2 + 224 * v25 + 96))
                  {
                    continue;
                  }
                }
              }
            }

            v27 = 224 * i;
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "single word cannot be a compound word : word index=%d compound tag=%s", v22, v23, v24, i);
            goto LABEL_27;
          }

          if (i)
          {
            LOWORD(v15) = i;
            while (1)
            {
              v16 = *(*a2 + 224 * v15 + 96);
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

          v28 = *(*a2 + 224 * v15 + 96);
          if (!v28)
          {
LABEL_26:
            v27 = 224 * i;
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no start word for internal compound word : word index=%d compound tag=%s", v12, v13, v14, i);
            goto LABEL_27;
          }

          v29 = *(a3 + 640);
          v30 = cstdlib_strlen(v29);
          v31 = cstdlib_strncmp(v28, v29, v30);
          v32 = *a2;
          if (v31)
          {
            v27 = 224 * i;
            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "compound word has no beginning tag : word index=%d compound tag=%s", v12, v13, v14, i);
LABEL_27:
            heap_Free(*(a1 + 8), *(*a2 + v27 + 96));
            *(*a2 + v27 + 96) = 0;
            continue;
          }

          v33 = *(v32 + 224 * v15 + 96);
          if (!v33)
          {
            goto LABEL_26;
          }

          cstdlib_strcat(*(v32 + 224 * i + 96), (v33 + 1));
        }
      }
    }
  }

  return 0;
}

uint64_t checkMSPOSForCompound(uint64_t a1, uint64_t a2, char *__s2, uint64_t a4, void *a5)
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
    v24 = *(*a5 + 224 * a2 + 96);
    if (v24)
    {
      heap_Free(*(a1 + 8), v24);
      *(*a5 + 224 * a2 + 96) = 0;
    }

    v25 = *(a1 + 8);
    v26 = cstdlib_strlen((v19 + v22));
    v27 = heap_Calloc(v25, 1, (v26 + 52));
    *(*a5 + 224 * v23 + 96) = v27;
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

  if (v46)
  {
    v39 = *(a1 + 8);
    v40 = cstdlib_strlen((v19 + v22));
    v41 = heap_Calloc(v39, 1, v40 + v45 - HIWORD(v45) + 2);
    *(*a5 + 224 * a2 + 96) = v41;
    if (!v41)
    {
      goto LABEL_24;
    }

    v23 = a2;
    cstdlib_strcpy(v41, (v19 + v22));
    cstdlib_strcat(*(*a5 + 224 * a2 + 96), "-");
    cstdlib_strncat(*(*a5 + 224 * a2 + 96), &__s2[HIWORD(v45)], v45 - HIWORD(v45));
  }

  else
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no stress information on first word of compound word : word index=%d pos=%s", v36, v37, v38, a2);
    v23 = a2;
    v43 = 224 * a2;
    heap_Free(*(a1 + 8), *(*a5 + v43 + 96));
    *(*a5 + v43 + 96) = 0;
  }

LABEL_17:
  if (*(*a5 + 224 * v23 + 96))
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

uint64_t insert_NLU_info(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a2;
  if (a2 == a3)
  {
    if (a2 + 1 == *(a6 + 8))
    {
      LOWORD(a3) = a2 + 1;
    }

    else
    {
      LOWORD(a3) = a2;
    }
  }

  if (a2 >= a3)
  {
    return 0;
  }

  v94 = a3 - 1;
  v13 = v94 - a2;
  v14 = (224 * a2) | 4;
  v15 = a2 + 1;
  v93 = a3;
  while (1)
  {
    v95 = v15;
    v16 = *a4;
    if (!*a4)
    {
      goto LABEL_12;
    }

    v17 = *(*(*a6 + v14 + 12) + 8 * *(a5 + 18));
    if (v17)
    {
      heap_Free(*(a1 + 8), v17);
      *(*(*a6 + v14 + 12) + 8 * *(a5 + 18)) = 0;
      v16 = *a4;
    }

    v18 = *(a1 + 8);
    v19 = cstdlib_strlen(v16);
    v20 = heap_Calloc(v18, 1, (v19 + 1));
    *(*(*a6 + v14 + 12) + 8 * *(a5 + 18)) = v20;
    if (!v20)
    {
      break;
    }

    cstdlib_strcpy(v20, *a4);
LABEL_12:
    v25 = *(a4 + 8);
    if (v25)
    {
      v26 = *(*a6 + v14 + 76);
      if (v26)
      {
        heap_Free(*(a1 + 8), v26);
        *(*a6 + v14 + 76) = 0;
        v25 = *(a4 + 8);
      }

      v27 = *(a1 + 8);
      v28 = cstdlib_strlen(v25);
      v29 = heap_Calloc(v27, 1, (v28 + 1));
      *(*a6 + v14 + 76) = v29;
      if (!v29)
      {
        break;
      }

      cstdlib_strcpy(v29, *(a4 + 8));
      *(*a6 + v14) = v11;
    }

    v30 = *(a4 + 16);
    if (v30)
    {
      v31 = v13 == 0;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      if (cstdlib_strcmp(v30, "W"))
      {
        if (cstdlib_strcmp(*(a4 + 16), "S"))
        {
          if (cstdlib_strcmp(*(a4 + 16), "N"))
          {
            v32 = 1;
          }

          else
          {
            v32 = 2;
          }

          *(*a6 + 224 * v94 + 75) = v32;
          goto LABEL_31;
        }

        v33 = *a6 + 224 * v94;
        v34 = 4;
      }

      else
      {
        v33 = *a6 + 224 * v94;
        v34 = 3;
      }

      *(v33 + 75) = v34;
    }

LABEL_31:
    v35 = *(a4 + 32);
    if (!v35)
    {
      goto LABEL_40;
    }

    if (!cstdlib_strcmp(v35, "0"))
    {
      v37 = *a6 + v14;
LABEL_37:
      *(v37 + 70) = 0;
      goto LABEL_40;
    }

    if (cstdlib_strcmp(*(a4 + 32), "1"))
    {
      v36 = cstdlib_strcmp(*(a4 + 32), "2");
      v37 = *a6 + v14;
      if (v36)
      {
        goto LABEL_37;
      }

      v38 = 2;
    }

    else
    {
      v37 = *a6 + v14;
      v38 = 1;
    }

    *(v37 + 70) = v38;
LABEL_40:
    v39 = *(a4 + 56);
    if (v39)
    {
      v40 = *(*a6 + v14 + 92);
      if (v40)
      {
        heap_Free(*(a1 + 8), v40);
        *(*a6 + v14 + 92) = 0;
        v39 = *(a4 + 56);
      }

      v41 = *(a1 + 8);
      v42 = cstdlib_strlen(v39);
      v43 = heap_Calloc(v41, 1, (v42 + 1));
      *(*a6 + v14 + 92) = v43;
      if (!v43)
      {
        break;
      }

      cstdlib_strcpy(v43, *(a4 + 56));
      v44 = *(a1 + 8);
      v45 = cstdlib_strlen("[COMP");
      v46 = heap_Calloc(v44, 1, (v45 + 1));
      *(*a6 + v14 + 172) = v46;
      if (!v46)
      {
        break;
      }

      if (cstdlib_strncmp(*(a4 + 56), "B-", 2uLL))
      {
        v47 = "COMP]";
      }

      else
      {
        v47 = "[COMP";
      }

      cstdlib_strcpy(*(*a6 + v14 + 172), v47);
    }

    v48 = *(a4 + 24);
    if (v48 && !v13)
    {
      v49 = *(a1 + 8);
      v50 = *(*a6 + 224 * v94 + 120);
      v51 = cstdlib_strlen(v48);
      v52 = heap_Realloc(v49, v50, (v51 + 1));
      if (!v52)
      {
        break;
      }

      *(*a6 + 224 * v94 + 120) = v52;
      cstdlib_strcpy(v52, *(a4 + 24));
    }

    v53 = *(a4 + 40);
    if (v53)
    {
      v54 = cstdlib_strlen(v53);
      v55 = heap_Realloc(*(a1 + 8), *(*a6 + v14 + 148), (v54 + 32) & 0xFFFFFFE0);
      if (!v55)
      {
        break;
      }

      v56 = v55;
      cstdlib_strcpy(v55, *(a4 + 40));
      *(*a6 + v14 + 148) = v56;
    }

    v57 = *(a4 + 48);
    if (v57)
    {
      v58 = cstdlib_strlen(v57);
      v59 = heap_Realloc(*(a1 + 8), *(*a6 + v14 + 156), (v58 + 32) & 0xFFFFFFE0);
      if (!v59)
      {
        break;
      }

      v60 = v59;
      cstdlib_strcpy(v59, *(a4 + 48));
      *(*a6 + v14 + 156) = v60;
      if (v14 != 4 && cstdlib_strstr(v60, "S_PUNC"))
      {
        *(*a6 + v14 - 200) = 1;
      }

      if (cstdlib_strstr(v60, "E_PUNC"))
      {
        *(*a6 + v14 + 24) = 1;
      }

      if (a7 == 1)
      {
        v61 = cstdlib_strstr(*(a4 + 48), "S_PUNC:");
        if (v61)
        {
          v62 = &v61[cstdlib_strlen("S_PUNC:")];
          v63 = cstdlib_strstr(v62, ";");
          if (v63)
          {
            v64 = v63 - v62;
          }

          else
          {
            v64 = cstdlib_strlen(v62);
          }

          v65 = v64;
          v66 = heap_Calloc(*(a1 + 8), 1, v64 + 1);
          *(*a6 + v14 + 180) = v66;
          if (!v66)
          {
            break;
          }

          cstdlib_strncpy(v66, v62, v65);
        }

        v67 = cstdlib_strstr(*(a4 + 48), "E_PUNC:");
        if (v67)
        {
          v68 = v67;
          v69 = cstdlib_strlen("E_PUNC:");
          v92 = a5;
          v70 = a7;
          v71 = *(a1 + 8);
          v72 = cstdlib_strlen(&v68[v69]) + 1;
          v73 = v71;
          a7 = v70;
          a5 = v92;
          v74 = heap_Calloc(v73, 1, v72);
          *(*a6 + v14 + 188) = v74;
          if (!v74)
          {
            break;
          }

          cstdlib_strcpy(v74, &v68[v69]);
        }

        v75 = cstdlib_strstr(*(a4 + 48), "X_PUNC:");
        if (v75)
        {
          v76 = v75;
          v77 = cstdlib_strlen("X_PUNC:");
          v92 = v13;
          v78 = v11;
          v79 = a1;
          v80 = a5;
          v81 = a7;
          v82 = *(v79 + 8);
          v83 = cstdlib_strlen(&v76[v77]) + 1;
          v84 = v82;
          a7 = v81;
          a5 = v80;
          a1 = v79;
          v11 = v78;
          v13 = v92;
          v85 = heap_Calloc(v84, 1, v83);
          *(*a6 + v14 + 196) = v85;
          if (!v85)
          {
            break;
          }

          cstdlib_strcpy(v85, &v76[v77]);
        }
      }
    }

    v86 = *(a4 + 72);
    if (v86)
    {
      *(*a6 + v14 + 132) = v86;
      v87 = *(a4 + 64);
      if (v87)
      {
        v88 = *(a1 + 8);
        v89 = cstdlib_strlen(v87);
        v90 = heap_Alloc(v88, v89 + 1);
        *(*a6 + v14 + 124) = v90;
        if (!v90)
        {
          break;
        }

        cstdlib_strcpy(v90, *(a4 + 64));
      }
    }

    --v13;
    v14 += 224;
    v15 = v95 + 1;
    if (v93 == v95)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v21, v22, v23, v24, v92);
  return 2315264010;
}

uint64_t resolvePHR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = *MEMORY[0x277D85DE8];
  if (*(a4 + 8))
  {
    v13 = 0;
    v14 = -208;
    while (1)
    {
      if (v14 == -208)
      {
        goto LABEL_24;
      }

      v15 = *a4 + v14;
      if (*(v15 + 288))
      {
        goto LABEL_24;
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
          v41 = *(a2 + 8);
          v42 = cstdlib_strlen(v33);
          v43 = heap_Calloc(v41, 1, (v42 + 3));
          v44 = *a4 + v14;
          *(v44 + 288) = v43;
          if (!v43)
          {
            goto LABEL_83;
          }

          cstdlib_strcpy(v43, *(v44 + 64));
          **(*a4 + v14 + 288) = 73;
          v45 = *(a2 + 8);
          v46 = cstdlib_strlen(*(*(*a4 + v14) + 8 * *(a3 + 18)));
          v29 = heap_Calloc(v45, 1, (v46 + 3));
          v30 = *a4;
          v31 = *(a3 + 18);
          *(*(*a4 + v14 + 224) + 8 * v31) = v29;
          if (!v29)
          {
            goto LABEL_83;
          }

          v32 = "[3] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        else
        {
          if (v34 != 79 && v34 != 73)
          {
            goto LABEL_24;
          }

          v35 = *(a2 + 8);
          v36 = cstdlib_strlen(v33);
          v37 = heap_Calloc(v35, 1, (v36 + 3));
          v38 = *a4 + v14;
          *(v38 + 288) = v37;
          if (!v37)
          {
            goto LABEL_83;
          }

          cstdlib_strcpy(v37, *(v38 + 64));
          v39 = *(a2 + 8);
          v40 = cstdlib_strlen(*(*(*a4 + v14) + 8 * *(a3 + 18)));
          v29 = heap_Calloc(v39, 1, (v40 + 3));
          v30 = *a4;
          v31 = *(a3 + 18);
          *(*(*a4 + v14 + 224) + 8 * v31) = v29;
          if (!v29)
          {
            goto LABEL_83;
          }

          v32 = "[2] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        goto LABEL_23;
      }

LABEL_24:
      ++v13;
      v50 = *(a4 + 8);
      v14 += 224;
      if (v13 >= v50)
      {
        if (*(a4 + 8))
        {
          v51 = 0;
          v52 = 80;
          do
          {
            if (!*(*a4 + v52))
            {
              if ((insert_NLU_info(a2, v51, (v51 + 1), &unk_279DACCC0, a3, a4, a5) & 0x80000000) != 0)
              {
                log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Failed to fill out PHR=B-NIL on word : word index=%d", a6, a7, a8, v51);
                return 2315264000;
              }

              LODWORD(v50) = *(a4 + 8);
            }

            ++v51;
            v52 += 224;
          }

          while (v51 < v50);
          if (v50)
          {
            v53 = 0;
            v54 = (*a4 + 80);
            do
            {
              if (!*v54)
              {
                log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "could not work out PHR on word : word index=%d", a6, a7, a8, v53);
                return 2315264000;
              }

              ++v53;
              v54 += 28;
            }

            while (v50 != v53);
            v55 = 0;
            v56 = 80;
            do
            {
              if (!cstdlib_strncmp(*(*a4 + v56), "I-", 2uLL))
              {
                v60 = *a4;
                if (v56 == 80)
                {
                  **(v60 + 80) = 66;
                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", v57, v58, v59, 0);
                }

                else if (cstdlib_strcmp(*(v60 + v56 - 224), *(v60 + v56)))
                {
                  cstdlib_strcpy(__dst, *(*a4 + v56));
                  __dst[0] = 66;
                  if (cstdlib_strcmp(*(*a4 + v56 - 224), __dst))
                  {
                    **(*a4 + v56) = 66;
                    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", v61, v62, v63, v55);
                  }
                }
              }

              v64 = *(*a4 + v56 + 96);
              if (v64)
              {
                v65 = cstdlib_strcmp(v64, "COMP]");
                if (v56 != 80 && !v65)
                {
                  v66 = *(*a4 + v56 - 128);
                  if (v66)
                  {
                    if (!cstdlib_strcmp(v66, "COMP]"))
                    {
                      heap_Free(*(a2 + 8), *(*a4 + v56 - 128));
                      *(*a4 + v56 - 128) = 0;
                    }
                  }
                }
              }

              ++v55;
              v56 += 224;
            }

            while (v55 < *(a4 + 8));
            if (*(a4 + 8))
            {
              v67 = 0;
              v68 = *a4;
              do
              {
                cstdlib_strcpy(__dst, *(v68 + 224 * v67 + 80));
                if (!cstdlib_strncmp(__dst, "B-", 2uLL))
                {
                  cstdlib_strcpy(__dst, (*(*a4 + 224 * v67 + 80) + 2));
                }

                LODWORD(v72) = v67;
                if (*(a4 + 8) > v67)
                {
                  v73 = 224 * v67 + 80;
                  v72 = v67;
                  do
                  {
                    v74 = *(*a4 + v73);
                    if (!v74 || cstdlib_strcmp(v74, __dst) && (cstdlib_strlen(*(*a4 + v73)) < 3 || cstdlib_strcmp((*(*a4 + v73) + 2), __dst) || cstdlib_strncmp(*(*a4 + v73), "I-", 2uLL)) && *(*a4 + v73 - 76) != *(*a4 + 224 * v67 + 4))
                    {
                      break;
                    }

                    ++v72;
                    v73 += 224;
                  }

                  while (v72 < *(a4 + 8));
                }

                v75 = v72 - 1;
                if (v75 <= v67)
                {
LABEL_72:
                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[3] add syn chunk %s from %d to %d", v69, v70, v71, __dst);
                  v83 = (v72 - 1);
                  v84 = a2;
                  v85 = 0;
                  v86 = v67;
                }

                else
                {
                  v76 = 1;
                  v77 = v67;
                  while (1)
                  {
                    v78 = v77;
                    v79 = v77;
                    if (*(*a4 + 224 * v77 + 28) != 1)
                    {
                      break;
                    }

LABEL_68:
                    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[1] add syn chunk %s%s from %d to %d", v69, v70, v71, __dst);
                    v81 = addSynChunk(a2, __dst, "-P", v77, v78, a3, a4, v80);
                    if ((v81 & 0x80000000) != 0)
                    {
                      return v81;
                    }

                    v76 = 0;
                    v77 = v78 + 1;
                    if (v75 <= (v78 + 1))
                    {
                      goto LABEL_81;
                    }
                  }

                  while (v75 > ++v79)
                  {
                    if (*(*a4 + 224 * v79 + 28) == 1)
                    {
                      v78 = v79;
                      goto LABEL_68;
                    }
                  }

                  if (v76)
                  {
                    goto LABEL_72;
                  }

LABEL_81:
                  if (v72 <= v77)
                  {
                    goto LABEL_74;
                  }

                  log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[2] add syn chunk %s%s from %d to %d", v69, v70, v71, __dst);
                  v86 = v77;
                  v83 = (v72 - 1);
                  v84 = a2;
                  v85 = "-P";
                }

                v81 = addSynChunk(v84, __dst, v85, v86, v83, a3, a4, v82);
                if ((v81 & 0x80000000) != 0)
                {
                  return v81;
                }

LABEL_74:
                v68 = *a4;
                *(*a4 + 224 * v67 + 44) = 1;
                v87 = v68 + 224 * v75;
                *(v87 + 40) = 1;
                if (*(v87 + 28) == 1)
                {
                  *(v68 + 224 * v67 + 32) = 1;
                }

                if (v67 == v72)
                {
                  v67 = v72 + 1;
                }

                else
                {
                  v67 = v72;
                }
              }

              while (v67 < *(a4 + 8));
              if (*(a4 + 8))
              {
                v89 = 0;
                v90 = *a4;
                v91 = 80;
                do
                {
                  heap_Free(*(a2 + 8), *(v90 + v91));
                  v88 = 0;
                  v90 = *a4;
                  *(*a4 + v91) = 0;
                  ++v89;
                  v91 += 224;
                }

                while (v89 < *(a4 + 8));
                return v88;
              }
            }
          }
        }

        return 0;
      }
    }

    v19 = *(a2 + 8);
    v20 = cstdlib_strlen(v17);
    v21 = heap_Calloc(v19, 1, (v20 + 3));
    v26 = *a4 + v14;
    *(v26 + 288) = v21;
    if (!v21)
    {
      goto LABEL_83;
    }

    cstdlib_strcpy(v21, *(v26 + 64));
    if (cstdlib_strcmp(*(*a4 + v14 + 288), "O"))
    {
      **(*a4 + v14 + 288) = 73;
    }

    v27 = *(a2 + 8);
    v28 = cstdlib_strlen(*(*(*a4 + v14) + 8 * *(a3 + 18)));
    v29 = heap_Calloc(v27, 1, (v28 + 3));
    v30 = *a4;
    v31 = *(a3 + 18);
    *(*(*a4 + v14 + 224) + 8 * v31) = v29;
    if (!v29)
    {
LABEL_83:
      v88 = 2315264010;
      log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0, v22, v23, v24, v25, v93);
      return v88;
    }

    v32 = "[1] set missing PHR on word : word index=%d to %s (also copy POS %s)";
LABEL_23:
    cstdlib_strcpy(v29, *(*(v30 + v14) + 8 * v31));
    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, v32, v47, v48, v49, v13);
    goto LABEL_24;
  }

  return 0;
}

uint64_t addMarkerType(uint64_t a1, const char *a2, const char *a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  result = checkSpan(a1, a6, (*a7 + 224 * a4 + 56));
  if ((result & 0x80000000) == 0)
  {
    result = checkSpan(a1, a6, (*a7 + 224 * a5 + 56));
    if ((result & 0x80000000) == 0)
    {
      v18 = a4;
      v19 = *(a6 + 74);
      v20 = 8 * v19;
      do
      {
        if (v19 >= *(a6 + 72) || (v21 = *(a6 + 528)) == 0)
        {
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Ignoring marker :%s, as not in DEFMAPPING list", v15, v16, v17, a2);
          return 0;
        }

        v22 = cstdlib_strcmp((v21 + *(*(a6 + 536) + 4 * *(*(a6 + 64) + v20))), a2);
        ++v19;
        v20 += 8;
      }

      while (v22);
      v23 = *a7;
      v24 = (v19 - 1);
      v25 = *(*a7 + 224 * a4 + 56) + 32 * v24;
      *v25 = 1;
      *(v25 + 8) = a4;
      *(v25 + 10) = a5;
      v26 = *(v23 + 224 * a5 + 56) + 32 * v24;
      *(v26 + 4) = 1;
      *(v26 + 8) = a4;
      v27 = *(a1 + 8);
      v28 = cstdlib_strlen(a3);
      v29 = heap_Calloc(v27, 1, (v28 + 1));
      *(*(*a7 + 224 * v18 + 56) + 32 * v24 + 16) = v29;
      if (v29)
      {
        cstdlib_strcpy(v29, a3);
        return 0;
      }

      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v30, v31, v32, v33, v34);
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

  if (*(a3 + 8))
  {
    v11 = 0;
    v12 = 0;
    v13 = 16;
    do
    {
      v12 += cstdlib_strlen(*(*(*a3 + v13) + 8 * *(a2 + 18))) + 1;
      ++v11;
      v13 += 224;
    }

    while (v11 < *(a3 + 8));
    v14 = v12 + 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = heap_Calloc(*(a1 + 8), 1, v14);
  *(a3 + 16) = v15;
  if (v15)
  {
    if (*(a3 + 8))
    {
      v16 = 0;
      v17 = 0;
      v18 = 16;
      do
      {
        v19 = *(a3 + 16);
        *(*(a3 + 24) + 2 * v16) = v17;
        v20 = (v19 + v17);
        v21 = *(*(*a3 + v18) + 8 * *(a2 + 18));
        v22 = cstdlib_strlen(v21);
        cstdlib_memcpy(v20, v21, v22);
        v23 = v17 + cstdlib_strlen(*(*(*a3 + v18) + 8 * *(a2 + 18)));
        v24 = *(a3 + 8);
        if (v16 + 1 < v24)
        {
          cstdlib_strcat((*(a3 + 16) + v23), " ");
          v24 = *(a3 + 8);
        }

        v17 = v23 + 1;
        ++v16;
        v18 += 224;
      }

      while (v16 < v24);
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
    if (cstdlib_strlen(a1) && cstdlib_strcmp(v1, "."))
    {
      v2 = cstdlib_strlen(v1);
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

uint64_t getPhonWeights(uint64_t *a1)
{
  if (*(a1 + 4))
  {
    v2 = 0;
    v3 = 0;
    v4 = *a1;
    do
    {
      SyllCount = getSyllCount(*(v4 + v2 + 8));
      v4 = *a1;
      *(*a1 + v2 + 24) = SyllCount;
      ++v3;
      v2 += 224;
    }

    while (v3 < *(a1 + 4));
  }

  return 0;
}

uint64_t add2Str(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s)
{
  v8 = cstdlib_strlen(__s);
  v9 = *a3;
  if (v8 >= v9 - cstdlib_strlen(*a2))
  {
    v11 = cstdlib_strlen(__s);
    v12 = *a3;
    v13 = (v11 - v12 + cstdlib_strlen(*a2));
    if (v13 <= 0x80)
    {
      v14 = 128;
    }

    else
    {
      v14 = v13;
    }

    v10 = heap_Realloc(*(a1 + 8), *a2, *a3 + v14 + 1);
    if (!v10)
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v15, v16, v17, v18, v22);
      return 2315264010;
    }

    *a2 = v10;
    *a3 += v14;
  }

  else
  {
    v10 = *a2;
  }

  v19 = cstdlib_strlen(v10);
  v20 = *a2;
  if (v19)
  {
    cstdlib_strcat(v20, __s);
  }

  else
  {
    cstdlib_strcpy(v20, __s);
  }

  return 0;
}

unsigned __int16 **setDomainOnWord(unsigned __int16 **result, unsigned int a2, unsigned int a3, int a4)
{
  if (*(result + 4))
  {
    v4 = *result;
    v5 = *(result + 4) - 1;
    do
    {
      v6 = *v4;
      if (v6 >= a2 && v4[1] <= a3)
      {
        *(v4 + 13) = a4;
      }

      v7 = v6 > a3 || v5-- == 0;
      v4 += 112;
    }

    while (!v7);
  }

  return result;
}

unsigned __int16 **setPhoneticRange(unsigned __int16 **result, unsigned int a2, unsigned int a3)
{
  if (*(result + 4))
  {
    v3 = *result;
    v4 = *(result + 4) - 1;
    do
    {
      v5 = *v3;
      if (v5 >= a2 && v3[1] <= a3)
      {
        *(v3 + 12) = 1;
      }

      v6 = v5 > a3 || v4-- == 0;
      v3 += 112;
    }

    while (!v6);
  }

  return result;
}

uint64_t printAsChunks(uint64_t result, const char **a2, unsigned __int16 *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
          cstdlib_strcpy(*a2, "");
        }

        ++v16;
        v15 += 224;
      }

      while (v16 < *(a5 + 4));
    }

    log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "%s", v12, v13, v14, *a2);
    cstdlib_strcpy(*a2, "");
    return 0;
  }

  return result;
}

uint64_t printSent(uint64_t a1, int a2, const char **a3, char *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (!a2)
  {
    return 0;
  }

  v14 = a1;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Sentence :%s", a6, a7, a8, a8);
  if (*(a7 + 8))
  {
    v15 = 0;
    v16 = "tmphr=%4s ";
    if (a9 == 1)
    {
      v16 = "%4s ";
    }

    v43 = v16;
    while (1)
    {
      sprintf(a4, "[%2d] ", v15);
      result = add2Str(v14, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v18 = 224 * v15;
      cstdlib_strncpy(a4, *(*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 16)), 0x14uLL);
      v19 = cstdlib_strlen(*(*(*a7 + 224 * v15 + 16) + 8 * *(a6 + 16)));
      if (v19 <= 0x13)
      {
        do
        {
          cstdlib_strcat(a4, " ");
          v20 = v19++ >= 0x13;
        }

        while (!v20);
      }

      result = add2Str(v14, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(v14, a3, a5, " ");
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
      result = add2Str(v14, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v22 = *a7;
      if (*(*a7 + 224 * v15 + 80))
      {
        sprintf(a4, v43, *(*a7 + 224 * v15 + 80));
        result = add2Str(v14, a3, a5, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a7;
      }

      if (*(v22 + 224 * v15 + 88))
      {
        sprintf(a4, "retag=%4s ", *(v22 + 224 * v15 + 88));
        result = add2Str(v14, a3, a5, a4);
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
      result = add2Str(v14, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_strncpy(a4, *(*a7 + v18 + 8), 0x14uLL);
      v24 = cstdlib_strlen(*(*a7 + v18 + 8));
      if (v24 <= 0x13)
      {
        do
        {
          cstdlib_strcat(a4, " ");
          v20 = v24++ >= 0x13;
        }

        while (!v20);
      }

      result = add2Str(v14, a3, a5, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (*(*a7 + 224 * v15 + 24))
      {
        sprintf(a4, "(nsyll=%d) ", *(*a7 + 224 * v15 + 24));
        result = add2Str(v14, a3, a5, a4);
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
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v28 = *a7;
        }

        if (*(v28 + 224 * v15 + 192))
        {
          sprintf(a4, "endDocPunc=%s ", *(v28 + 224 * v15 + 192));
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v28 = *a7;
        }

        if (*(v28 + 224 * v15 + 200))
        {
          sprintf(a4, "singleDocPunc=%s ", *(v28 + 224 * v15 + 200));
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v28 = *a7;
        }

        if (*(v28 + 224 * v15 + 208))
        {
          sprintf(a4, "orthPunc=%s ", *(v28 + 224 * v15 + 208));
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v28 = *a7;
        }

        if (*(v28 + 224 * v15 + 168))
        {
          sprintf(a4, "tokTag=%s ", *(v28 + 224 * v15 + 168));
          result = add2Str(v14, a3, a5, a4);
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
          result = add2Str(v14, a3, a5, "DUMMYWORD ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 28))
        {
          result = add2Str(v14, a3, a5, "_HASCOMMA ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 36))
        {
          result = add2Str(v14, a3, a5, "_HASBNDBEFORESET ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 44))
        {
          result = add2Str(v14, a3, a5, "_ISFIRSTINPHR ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 40))
        {
          result = add2Str(v14, a3, a5, "_ISLASTINPHR ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 32))
        {
          result = add2Str(v14, a3, a5, "_PHRENDSINCOMMA ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 96))
        {
          sprintf(a4, "compoundTag=%s ", *(v29 + 224 * v15 + 96));
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a7;
        }

        if (*(v29 + 224 * v15 + 52))
        {
          sprintf(a4, "domain=%s ");
LABEL_72:
          result = add2Str(v14, a3, a5, a4);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      if (!*(*a7 + 224 * v15 + 48) || (result = add2Str(v14, a3, a5, " bPHONETIC "), (result & 0x80000000) == 0))
      {
        if (a9 == 1 && *(a6 + 72))
        {
          v44 = v14;
          v30 = a3;
          v31 = a5;
          v32 = 0;
          v33 = 4;
          v34 = 16;
          do
          {
            v35 = *a7;
            v36 = *(*a7 + 224 * v15 + 56);
            if (v36)
            {
              if (*(v36 + v34 - 16) != 1)
              {
                goto LABEL_85;
              }

              if (*(v36 + v34 + 8) == 1)
              {
                sprintf(a4, "<%s_%s_ext ");
              }

              else
              {
                sprintf(a4, "<%s_%s ");
              }

              result = add2Str(v44, v30, v31, a4);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v35 = *a7;
              v36 = *(*a7 + 224 * v15 + 56);
              if (v36)
              {
LABEL_85:
                v37 = v36 + v34;
                if (*(v37 - 12) == 1)
                {
                  if (*(*(v35 + 224 * *(v37 - 8) + 56) + v34 + 8) == 1)
                  {
                    sprintf(a4, "%s_ext_%s> ");
                  }

                  else
                  {
                    sprintf(a4, "%s_%s> ");
                  }

                  result = add2Str(v44, v30, v31, a4);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }
              }
            }

            ++v32;
            v38 = *(a6 + 72);
            v34 += 32;
            v33 += 8;
          }

          while (v32 < v38);
          if (*(*a7 + 224 * v15 + 64))
          {
            v39 = v38 == 0;
          }

          else
          {
            v39 = 1;
          }

          a5 = v31;
          a3 = v30;
          v14 = v44;
          if (!v39)
          {
            v40 = 0;
            v41 = 4;
            do
            {
              v42 = *(*(*a7 + 224 * v15 + 64) + 8 * v40);
              if (v42)
              {
                snprintf(a4, 0x400uLL, "[%s %s] ", (*(a6 + 528) + *(*(a6 + 536) + 4 * *(*(a6 + 64) + v41))), v42);
                result = add2Str(v44, a3, a5, a4);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                LOWORD(v38) = *(a6 + 72);
              }

              ++v40;
              v41 += 8;
            }

            while (v40 < v38);
          }
        }

        log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "%s", v25, v26, v27, *a3);
        cstdlib_strcpy(*a3, "");
        result = 0;
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