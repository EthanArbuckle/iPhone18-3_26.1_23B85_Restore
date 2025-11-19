uint64_t fe_phrasing_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62343, 1728);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2315264008;
  }
}

size_t doesWordEndWithComma(size_t result, const char *a2)
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

uint64_t fe_phrasing_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2315264001;
  }

  result = 0;
  *a2 = &IFePhrasing;
  return result;
}

uint64_t hlp_ReadSildur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, _DWORD *a6)
{
  *a5 = 0;
  *a6 = 0;
  if (!a4)
  {
    return 0;
  }

  v17 = 0;
  __s1 = 0;
  v15 = 0;
  v12 = (*(*(a1 + 56) + 184))(a2, a3, a4, 8, &v17);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (v17)
  {
    v12 = (*(*(a1 + 56) + 168))(a2, a3, a4, 8, 1, a5, &v15);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }
  }

  v13 = (*(*(a1 + 56) + 184))(a2, a3, a4, 18, &v17);
  if ((v13 & 0x80000000) == 0)
  {
    if (v17)
    {
      v13 = (*(*(a1 + 56) + 176))(a2, a3, a4, 18, &__s1, &v15);
      if ((v13 & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "external"))
      {
        *a6 = 1;
      }
    }
  }

  return v13;
}

uint64_t hlp_CopyWordRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  v19 = 0;
  __s = 0;
  v17 = 0;
  v16 = 0;
  while (1)
  {
    result = (*(*(a1 + 56) + 184))(a2, a3, a4, v11, &v19 + 2);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (HIWORD(v19))
    {
      if (v11 <= 0x11u && ((1 << v11) & 0x20186) != 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, a4, v11, 1, &v19, &v17 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v11 == 8 && *(a1 + 112) && v19)
        {
          v16 = 0;
          v10 = 1;
          (*(*(a1 + 56) + 160))(a2, a3, a4, 8, 1, &v16, &v17);
        }

        result = (*(*(a1 + 56) + 160))(a2, a3, a5, v11, 1, &v19, &v17);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        result = (*(*(a1 + 56) + 176))(a2, a3, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v14 = *(*(a1 + 56) + 160);
        v15 = cstdlib_strlen(__s);
        result = v14(a2, a3, a5, v11, (v15 + 1), __s, &v17);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }
    }

    v13 = v11++;
    if (v13 >= 0x15)
    {
      if (v10 == 1)
      {
        result = (*(*(a1 + 56) + 184))(a2, a3, a4, 7, &v19 + 2);
        if ((result & 0x80000000) == 0)
        {
          v16 = 3;
          return (*(*(a1 + 56) + 160))(a2, a3, a4, 7, 1, &v16, &v17);
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t hlp_splitNLURangeTags(uint64_t *a1, char *__s, unsigned __int8 **a3, unsigned __int8 **a4)
{
  v4 = 2315264010;
  if (!__s)
  {
    return 2315264007;
  }

  v8 = *a1;
  v9 = *(*a1 + 8);
  v10 = cstdlib_strlen(__s);
  v11 = heap_Calloc(v9, 1, v10 + 1);
  if (v11)
  {
    v12 = v11;
    cstdlib_strcpy(v11, __s);
    v13 = *(v8 + 8);
    v14 = cstdlib_strlen(__s);
    v15 = heap_Calloc(v13, 1, v14 + 1);
    if (!v15)
    {
      v114 = *(v8 + 8);
      v115 = v12;
      goto LABEL_233;
    }

    v127 = a4;
    v136 = v15;
    cstdlib_strcpy(v15, __s);
    v16 = 0;
    v17 = __s;
    do
    {
      if (hlp_NLUStrKeyLen(v17) >= 3)
      {
        v18 = *v17 - 69;
        v19 = v18 > 0xE;
        v20 = (1 << v18) & 0x4011;
        v21 = v19 || v20 == 0;
        if (!v21 && v17[1] == 95)
        {
          ++v16;
        }
      }

      v17 = hlp_NLUStrNext(v17);
    }

    while (v17);
    v22 = v136;
    if (!v16)
    {
      goto LABEL_234;
    }

    v23 = heap_Calloc(*(v8 + 8), 8, v16);
    if (!v23)
    {
      goto LABEL_232;
    }

    v24 = v23;
    v134 = __s;
    v135 = 0;
    v25 = __s;
    v128 = a3;
    v131 = v12;
LABEL_16:
    v26 = hlp_NLUStrKeyLen(v25);
    if (v26 < 3)
    {
      goto LABEL_33;
    }

    v27 = *v25 - 69;
    v19 = v27 > 0xE;
    v28 = (1 << v27) & 0x4011;
    v29 = v19 || v28 == 0;
    if (v29 || v25[1] != 95)
    {
      goto LABEL_33;
    }

    v30 = v26;
    v31 = heap_Calloc(*(v8 + 8), 1, v26 - 1);
    if (!v31)
    {
      v137 = v24;
      v22 = v136;
      goto LABEL_226;
    }

    v32 = v31;
    cstdlib_strncpy(v31, v25 + 2, v30 - 2);
    v33 = v135;
    if (v135)
    {
      v34 = v135;
      v35 = v24;
      v36 = v135;
      while (*v35)
      {
        if (!cstdlib_strcmp(*v35, v32))
        {
          heap_Free(*(v8 + 8), v32);
          a3 = v128;
          v12 = v131;
LABEL_32:
          v22 = v136;
LABEL_33:
          v25 = hlp_NLUStrNext(v25);
          if (!v25)
          {
            v37 = *(v8 + 8);
            if (!v135)
            {
              heap_Free(v37, v24);
              goto LABEL_234;
            }

            v137 = heap_Realloc(v37, v24, 8 * v135);
            if (v137)
            {
              v38 = heap_Calloc(*(v8 + 8), 2, v135);
              if (v38)
              {
                v126 = v38;
                v39 = v134;
                while (1)
                {
                  v40 = hlp_NLUStrKeyLen(v39);
                  if (v40 >= 3)
                  {
                    v41 = *v39 - 69;
                    v19 = v41 > 0xE;
                    v42 = (1 << v41) & 0x4011;
                    v43 = v19 || v42 == 0;
                    if (!v43 && v39[1] == 95)
                    {
                      v44 = 0;
                      v45 = v40 - 2;
                      while (1)
                      {
                        v46 = *(v137 + 8 * v44);
                        if (!v46)
                        {
                          goto LABEL_51;
                        }

                        if (!cstdlib_strncmp(v46, v39 + 2, v45))
                        {
                          break;
                        }

                        if (v135 == ++v44)
                        {
                          goto LABEL_51;
                        }
                      }

                      if ((v44 & 0x8000) == 0)
                      {
                        ++*(v126 + 2 * (v44 & 0x7FFF));
                      }
                    }
                  }

LABEL_51:
                  v39 = hlp_NLUStrNext(v39);
                  if (!v39)
                  {
                    v47 = heap_Calloc(*(v8 + 8), 8, v135);
                    if (!v47)
                    {
                      a3 = v128;
                      v22 = v136;
                      v50 = v126;
                      goto LABEL_225;
                    }

                    v48 = v47;
                    v49 = 0;
                    v22 = v136;
                    v50 = v126;
                    do
                    {
                      v51 = heap_Calloc(*(v8 + 8), 8, *(v126 + 2 * v49));
                      *(v48 + 8 * v49) = v51;
                      if (!v51)
                      {
                        goto LABEL_209;
                      }

                      ++v49;
                    }

                    while (v135 != v49);
                    v52 = heap_Calloc(*(v8 + 8), 2, v135);
                    if (v52)
                    {
                      v132 = v52;
                      v53 = v134;
                      while (1)
                      {
                        v54 = hlp_NLUStrKeyLen(v53);
                        if (v54 >= 3)
                        {
                          v55 = *v53 - 69;
                          v19 = v55 > 0xE;
                          v56 = (1 << v55) & 0x4011;
                          if (!v19 && v56 != 0 && v53[1] == 95)
                          {
                            KeyIdx = hlp_getKeyIdx(v137, v135, v53 + 2, (v54 - 2));
                            if ((KeyIdx & 0x80000000) == 0)
                            {
                              v59 = KeyIdx;
                              v60 = *(v48 + 8 * KeyIdx);
                              v61 = hlp_NLUStrKeyValue(v53);
                              v62 = v61;
                              v63 = v61 ? hlp_NLUStrLength(v61) : 0;
                              if (!hlp_checkValExist(v60, *(v132 + 2 * v59), v62, v63))
                              {
                                v64 = heap_Calloc(*(v8 + 8), 1, v63 + 1);
                                if (!v64)
                                {
                                  v12 = v131;
                                  v68 = v132;
                                  v22 = v136;
LABEL_202:
                                  v50 = v126;
LABEL_210:
                                  v117 = 0;
                                  do
                                  {
                                    v118 = *(v48 + 8 * v117);
                                    if (v118)
                                    {
                                      if (v68)
                                      {
                                        v119 = *(v68 + 2 * v117);
                                        if (v119)
                                        {
                                          for (i = 0; i < v119; ++i)
                                          {
                                            v121 = *(*(v48 + 8 * v117) + 8 * i);
                                            if (v121)
                                            {
                                              heap_Free(*(v8 + 8), v121);
                                              v119 = *(v68 + 2 * v117);
                                            }
                                          }

                                          v118 = *(v48 + 8 * v117);
                                        }
                                      }

                                      heap_Free(*(v8 + 8), v118);
                                    }

                                    ++v117;
                                  }

                                  while (v117 != v135);
                                  heap_Free(*(v8 + 8), v48);
                                  if (v68)
                                  {
                                    heap_Free(*(v8 + 8), v68);
                                  }

                                  a3 = v128;
LABEL_225:
                                  heap_Free(*(v8 + 8), v50);
LABEL_226:
                                  v116 = v135;
                                  if (v135)
                                  {
LABEL_227:
                                    v122 = 0;
                                    v123 = v116;
                                    do
                                    {
                                      v124 = *(v137 + 8 * v122);
                                      if (v124)
                                      {
                                        heap_Free(*(v8 + 8), v124);
                                      }

                                      ++v122;
                                    }

                                    while (v123 != v122);
                                  }

                                  heap_Free(*(v8 + 8), v137);
                                  if (v4)
                                  {
LABEL_232:
                                    heap_Free(*(v8 + 8), v12);
                                    v114 = *(v8 + 8);
                                    v115 = v22;
LABEL_233:
                                    heap_Free(v114, v115);
                                    return v4;
                                  }

LABEL_234:
                                  v4 = 0;
                                  *a3 = v12;
                                  *v127 = v22;
                                  return v4;
                                }

                                v65 = v64;
                                if (v62)
                                {
                                  cstdlib_strncpy(v64, v62, v63);
                                }

                                v66 = *(v132 + 2 * v59);
                                *&v60[8 * v66] = v65;
                                *(v132 + 2 * v59) = v66 + 1;
                                v12 = v131;
                              }
                            }
                          }
                        }

                        v53 = hlp_NLUStrNext(v53);
                        if (!v53)
                        {
                          v22 = v136;
                          v67 = v134;
                          v50 = v126;
                          v68 = v132;
                          do
                          {
                            v69 = heap_Realloc(*(v8 + 8), *(v48 + 8 * v53), 8 * *(v132 + 2 * v53));
                            if (!v69)
                            {
                              goto LABEL_210;
                            }

                            *(v48 + 8 * v53++) = v69;
                          }

                          while (v135 != v53);
                          v70 = 0;
                          v129 = v12 - 1;
                          while (!*(v68 + 2 * v70))
                          {
LABEL_200:
                            if (++v70 == v135)
                            {
                              v4 = 0;
                              goto LABEL_202;
                            }
                          }

                          v71 = 0;
                          v133 = v70;
                          while (2)
                          {
                            v72 = *(v137 + 8 * v70);
                            v73 = *(*(v48 + 8 * v70) + 8 * v71);
                            v139 = 0;
                            v138 = 0;
                            if (v73)
                            {
                              v74 = cstdlib_strlen(v73);
                            }

                            else
                            {
                              v74 = 0;
                            }

                            v75 = *(v8 + 8);
                            v76 = cstdlib_strlen(v72);
                            v77 = heap_Calloc(v75, 1, v76 + 3);
                            if (!v77)
                            {
                              v92 = 0;
                              v96 = 0;
                              v22 = v136;
                              goto LABEL_158;
                            }

                            v78 = v77;
                            cstdlib_strcpy(v77, "S_");
                            cstdlib_strcat(v78, v72);
                            v79 = *(v8 + 8);
                            v80 = cstdlib_strlen(v72);
                            v81 = heap_Calloc(v79, 1, v80 + 3);
                            v82 = v81;
                            if (!v81)
                            {
                              v92 = 0;
                              v96 = 0;
LABEL_123:
                              v86 = 0;
                              goto LABEL_153;
                            }

                            v130 = v74;
                            cstdlib_strcpy(v81, "I_");
                            cstdlib_strcat(v82, v72);
                            v83 = *(v8 + 8);
                            v84 = cstdlib_strlen(v72);
                            v85 = heap_Calloc(v83, 1, v84 + 3);
                            v86 = v85;
                            if (!v85)
                            {
                              v92 = 0;
                              v96 = 0;
                              goto LABEL_153;
                            }

                            cstdlib_strcpy(v85, "E_");
                            cstdlib_strcat(v86, v72);
                            if (hlp_NLUStrFind(v67, v78, &v138, &v139))
                            {
                              v87 = v139;
                              if (v73 && !v139)
                              {
                                if (cstdlib_strcmp(v73, " "))
                                {
                                  v87 = v139;
                                  goto LABEL_91;
                                }

LABEL_95:
                                if (hlp_NLUStrFind(v67, v82, &v138, &v139))
                                {
                                  v88 = v139;
                                  if (v73 && !v139)
                                  {
                                    if (cstdlib_strcmp(v73, " "))
                                    {
                                      v88 = v139;
                                      goto LABEL_100;
                                    }

LABEL_104:
                                    if (hlp_NLUStrFind(v67, v86, &v138, &v139))
                                    {
                                      v89 = v139;
                                      if (v73 && !v139)
                                      {
                                        if (cstdlib_strcmp(v73, " "))
                                        {
                                          v89 = v139;
                                          goto LABEL_109;
                                        }

LABEL_113:
                                        v90 = *(v8 + 8);
                                        v91 = cstdlib_strlen(v67);
                                        v92 = heap_Calloc(v90, 1, v91 + 1);
                                        if (v92)
                                        {
                                          v93 = v67;
                                          v94 = *(v8 + 8);
                                          v95 = cstdlib_strlen(v93);
                                          v96 = heap_Calloc(v94, 1, v95 + 1);
                                          if (v96)
                                          {
                                            if (v78 && !v82 && !v86)
                                            {
                                              cstdlib_strcpy(v92, "S_");
                                              cstdlib_strcat(v92, v72);
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v97 = v96;
                                                  v98 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  v97 = v96;
                                                  v98 = ":";
                                                }
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "I_");
                                                v97 = v96;
                                                v98 = v72;
                                              }

                                              cstdlib_strcat(v97, v98);
                                              v86 = 0;
                                              v82 = 0;
                                              goto LABEL_153;
                                            }

                                            if (v78)
                                            {
                                              v99 = 1;
                                            }

                                            else
                                            {
                                              v99 = v82 == 0;
                                            }

                                            v100 = !v99;
                                            if (!v99 && !v86)
                                            {
                                              cstdlib_strcpy(v92, "I_");
                                              cstdlib_strcat(v92, v72);
                                              v22 = v136;
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v101 = v96;
                                                  v102 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  v101 = v96;
                                                  v102 = ":";
                                                }
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "I_");
                                                v101 = v96;
                                                v102 = v72;
                                              }

                                              cstdlib_strcat(v101, v102);
                                              v86 = 0;
                                              goto LABEL_155;
                                            }

                                            if (!v78 && !v82 && v86)
                                            {
                                              cstdlib_strcpy(v92, "I_");
                                              cstdlib_strcat(v92, v72);
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                v12 = v131;
                                                v22 = v136;
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v103 = v96;
                                                  v104 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  v103 = v96;
                                                  v104 = ":";
                                                }

                                                cstdlib_strcat(v103, v104);
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "E_");
                                                cstdlib_strcat(v96, v72);
                                                v12 = v131;
                                                v22 = v136;
                                              }

LABEL_157:
                                              heap_Free(*(v8 + 8), v86);
LABEL_158:
                                              if (v73 && !cstdlib_strcmp(v73, " "))
                                              {
                                                v73 = 0;
                                              }

                                              hlp_NLUStrRemoveRangeKey(v12, v72, v73);
                                              hlp_NLUStrRemoveRangeKey(v22, v72, v73);
                                              v107 = cstdlib_strlen(v12);
                                              if (v107 && v129[v107] != 59)
                                              {
                                                cstdlib_strcat(v12, ";");
                                              }

                                              cstdlib_strcat(v12, v92);
                                              v108 = cstdlib_strlen(v22);
                                              v68 = v132;
                                              if (v108 && v136[v108 - 1] != 59)
                                              {
                                                cstdlib_strcat(v22, ";");
                                              }

                                              cstdlib_strcat(v22, v96);
                                              if (v92)
                                              {
                                                heap_Free(*(v8 + 8), v92);
                                              }

                                              if (v96)
                                              {
                                                heap_Free(*(v8 + 8), v96);
                                              }

                                              ++v71;
                                              v70 = v133;
                                              v67 = v134;
                                              if (v71 >= *(v132 + 2 * v133))
                                              {
                                                goto LABEL_200;
                                              }

                                              continue;
                                            }

                                            if (v78 && v86)
                                            {
                                              cstdlib_strcpy(v92, "S_");
                                              cstdlib_strcat(v92, v72);
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v105 = v96;
                                                  v106 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  v105 = v96;
                                                  v106 = ":";
                                                }
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "E_");
                                                v105 = v96;
                                                v106 = v72;
                                              }

                                              cstdlib_strcat(v105, v106);
LABEL_153:
                                              heap_Free(*(v8 + 8), v78);
                                              goto LABEL_154;
                                            }

                                            if (v78 && v82 && !v86)
                                            {
                                              cstdlib_strcpy(v92, "S_");
                                              cstdlib_strcat(v92, v72);
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v109 = v96;
                                                  v110 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "I_");
                                                  cstdlib_strcat(v96, v72);
                                                  v109 = v96;
                                                  v110 = ":";
                                                }
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "I_");
                                                v109 = v96;
                                                v110 = v72;
                                              }

                                              cstdlib_strcat(v109, v110);
                                              goto LABEL_123;
                                            }

                                            v111 = v100 ^ 1;
                                            if (!v86)
                                            {
                                              v111 = 1;
                                            }

                                            if ((v111 & 1) == 0)
                                            {
                                              cstdlib_strcpy(v92, "I_");
                                              cstdlib_strcat(v92, v72);
                                              if (v130)
                                              {
                                                cstdlib_strcat(v92, ":");
                                                v22 = v136;
                                                if (v73)
                                                {
                                                  cstdlib_strcat(v92, v73);
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  cstdlib_strcat(v96, ":");
                                                  v112 = v96;
                                                  v113 = v73;
                                                }

                                                else
                                                {
                                                  cstdlib_strcpy(v96, "E_");
                                                  cstdlib_strcat(v96, v72);
                                                  v112 = v96;
                                                  v113 = ":";
                                                }

                                                cstdlib_strcat(v112, v113);
                                              }

                                              else
                                              {
                                                cstdlib_strcpy(v96, "E_");
                                                cstdlib_strcat(v96, v72);
                                                v22 = v136;
                                              }

LABEL_155:
                                              heap_Free(*(v8 + 8), v82);
                                              goto LABEL_156;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v96 = 0;
                                        }

                                        if (v78)
                                        {
                                          goto LABEL_153;
                                        }

LABEL_154:
                                        v22 = v136;
                                        if (v82)
                                        {
                                          goto LABEL_155;
                                        }

LABEL_156:
                                        v12 = v131;
                                        if (v86)
                                        {
                                          goto LABEL_157;
                                        }

                                        goto LABEL_158;
                                      }

LABEL_109:
                                      if (v73 && v130 == v89 && !cstdlib_strncmp(v73, v138, v89))
                                      {
                                        goto LABEL_113;
                                      }
                                    }

                                    heap_Free(*(v8 + 8), v86);
                                    v86 = 0;
                                    goto LABEL_113;
                                  }

LABEL_100:
                                  if (v73 && v130 == v88 && !cstdlib_strncmp(v73, v138, v88))
                                  {
                                    goto LABEL_104;
                                  }
                                }

                                heap_Free(*(v8 + 8), v82);
                                v82 = 0;
                                goto LABEL_104;
                              }

LABEL_91:
                              if (v73 && v130 == v87 && !cstdlib_strncmp(v73, v138, v87))
                              {
                                goto LABEL_95;
                              }
                            }

                            break;
                          }

                          heap_Free(*(v8 + 8), v78);
                          v78 = 0;
                          goto LABEL_95;
                        }
                      }
                    }

LABEL_209:
                    v68 = 0;
                    goto LABEL_210;
                  }
                }
              }
            }

            else
            {
              v137 = v24;
            }

            v116 = v135;
            goto LABEL_227;
          }

          goto LABEL_16;
        }

        ++v35;
        if (!--v36)
        {
          break;
        }
      }

      a3 = v128;
      v12 = v131;
      v33 = v135;
    }

    else
    {
      v34 = 0;
    }

    *(v24 + 8 * v34) = v32;
    v135 = v33 + 1;
    goto LABEL_32;
  }

  return v4;
}

uint64_t hlp_GetSubPosForSEPX(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5, unsigned int a6, int a7, char **a8)
{
  v15 = heap_Calloc(*(*a1 + 8), 1, a6 + 1);
  *a8 = v15;
  if (!v15)
  {
    return 2315264010;
  }

  if (a2 >= a3)
  {
    v18 = 1;
    if (a7)
    {
      goto LABEL_8;
    }

LABEL_17:
    LOWORD(v22) = 0;
    if (a6 && v18)
    {
      v22 = 0;
      while (a5[v22] != 45 || --v18)
      {
        if (++v22 >= a6)
        {
          goto LABEL_27;
        }
      }

      v18 = 0;
    }

LABEL_27:
    if ((a6 - 1 == v22) == v18)
    {
      v23 = v22;
LABEL_30:
      v24 = a5;
      goto LABEL_31;
    }

LABEL_29:
    v23 = a6;
    goto LABEL_30;
  }

  v16 = (a4 + a2);
  v17 = a3 - a2;
  v18 = 1;
  do
  {
    v19 = *v16++;
    if (v19 == 45)
    {
      ++v18;
    }

    --v17;
  }

  while (v17);
  if (!a7)
  {
    goto LABEL_17;
  }

LABEL_8:
  LOWORD(v20) = a6 - 1;
  if (a6 != 1 && v18)
  {
    v20 = (a6 - 1);
    while (a5[v20] != 45 || --v18)
    {
      if (!--v20)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  if (v18)
  {
    goto LABEL_29;
  }

LABEL_25:
  v23 = ((~v20 | 0xFFFF0000) + a6);
  v24 = &a5[v20 + 1];
LABEL_31:
  cstdlib_strncpy(v15, v24, v23);
  return 0;
}

uint64_t hlp_UpdateDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, unsigned int a6, unsigned int a7, unsigned __int16 *a8, char *a9)
{
  v13 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  __src = 0;
  *a8 = 0;
  v17 = *a5;
  if (*a5)
  {
    v24 = a4;
    v30 = *a5;
    v27 = 0;
    v26 = 0;
    goto LABEL_3;
  }

  v21 = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v30);
  if ((v21 & 0x80000000) == 0)
  {
    v24 = v13;
    v17 = v30;
    v27 = 0;
    v26 = 0;
    if (v30)
    {
      do
      {
LABEL_3:
        v18 = (*(*(a1 + 56) + 168))(a2, a3, v17, 0, 1, &v29, &v28);
        if ((v18 & 0x80000000) != 0)
        {
          return v18;
        }

        v19 = v30;
        if (v29 == 5)
        {
          *a5 = v30;
          v18 = (*(*(a1 + 56) + 168))(a2, a3);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          v18 = (*(*(a1 + 56) + 168))(a2, a3, v30, 2, 1, &v26, &v28);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          v20 = 0;
          v19 = v30;
          if (v27 <= a6 && v26 >= a7)
          {
            *a8 = v30;
            v20 = 1;
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = (*(*(a1 + 56) + 120))(a2, a3, v19, &v30);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        v17 = v30;
        if (v30)
        {
          v22 = v20;
        }

        else
        {
          v22 = 1;
        }
      }

      while ((v22 & 1) == 0 && v27 <= a6);
      if ((v20 & 1) == 0)
      {
        goto LABEL_24;
      }

      v21 = (*(*(a1 + 56) + 176))(a2, a3, *a8, 4, &__src, &v28);
      if ((v21 & 0x80000000) == 0)
      {
        cstdlib_strncpy(a9, __src, 0x100uLL);
        a9[256] = 0;
        if (!cstdlib_strcmp(a9, "phon"))
        {
          return hlp_GetLastTnMarkerUpToPos(a1, a2, a3, v24, v27, a9);
        }
      }
    }

    else
    {
LABEL_24:
      cstdlib_strncpy(a9, "normal", 0x100uLL);
      a9[256] = 0;
    }
  }

  return v21;
}

size_t hlp_GetDomainPauseDur(uint64_t a1, char *a2, int *a3, _DWORD *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  *a3 = 0;
  *a4 = 0;
  cstdlib_strcpy(__dst, "tnpausedur");
  v8 = cstdlib_strlen(a2);
  result = cstdlib_strlen(__dst);
  if (v8 < 255 - result)
  {
    cstdlib_strcat(__dst, a2);
    result = paramc_ParamGetUInt(*(*a1 + 40), __dst, &v11);
    if ((result & 0x80000000) != 0 || !v11)
    {
      result = cstdlib_strstr(a2, "spell");
      if (result)
      {
        v10 = 100;
      }

      else
      {
        v10 = 200;
      }

      *a3 = v10;
    }

    else
    {
      *a3 = v11;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t hlp_GetLastTnMarkerUpToPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char *a6)
{
  v13 = 0;
  v12 = 0;
  result = (*(*(a1 + 56) + 176))(a2, a3, a4, 1, &v13, &v12);
  if ((result & 0x80000000) == 0)
  {
    v9 = *(v13 + 12);
    cstdlib_strncpy(a6, "normal", 0xFFuLL);
    a6[255] = 0;
    v10 = v12;
    if (v12)
    {
      v11 = v13 + 12;
      do
      {
        if (a5 < (*v11 - v9))
        {
          break;
        }

        if (*(v11 - 12) == 21)
        {
          cstdlib_strncpy(a6, *(v11 + 12), 0xFFuLL);
          a6[255] = 0;
        }

        v11 += 32;
        --v10;
      }

      while (v10);
    }

    return 0;
  }

  return result;
}

uint64_t hlp_Remap(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, _WORD *a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = a5;
  v30 = 0;
  v29 = 0;
  __s1 = 0;
  v27 = 0;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v25 = 0;
  v24 = -1;
  cstdlib_strcpy(__dst, "");
  v14 = (*(a1[7] + 120))(a2, a3, a5, &v31);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = v31;
    if (v31)
    {
      while (1)
      {
        LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v15, 0, 1, &v29, &v30);
        if ((LastTnMarkerUpToPos & 0x80000000) != 0)
        {
          return LastTnMarkerUpToPos;
        }

        if (v29 == 5)
        {
          break;
        }

LABEL_38:
        v14 = (*(a1[7] + 120))(a2, a3, v31, &v31);
        if ((v14 & 0x80000000) == 0)
        {
          v15 = v31;
          if (v31)
          {
            continue;
          }
        }

        return v14;
      }

      LastTnMarkerUpToPos = (*(a1[7] + 176))(a2, a3, v31, 4, &__s1, &v30);
      if ((LastTnMarkerUpToPos & 0x80000000) != 0)
      {
        return LastTnMarkerUpToPos;
      }

      if (!cstdlib_strcmp(__s1, "phon"))
      {
        LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v31, 1, 1, &v27 + 2, &v30);
        if ((LastTnMarkerUpToPos & 0x80000000) != 0)
        {
          return LastTnMarkerUpToPos;
        }

        LastTnMarkerUpToPos = hlp_GetLastTnMarkerUpToPos(a1, a2, a3, a4, SHIWORD(v27), v32);
        if ((LastTnMarkerUpToPos & 0x80000000) != 0)
        {
          return LastTnMarkerUpToPos;
        }

        __s1 = v32;
      }

      cstdlib_strcpy(__dst, "phrasing_");
      if (cstdlib_strlen(__s1) + 11 > 0xFF)
      {
        v17 = "normal";
      }

      else
      {
        v17 = __s1;
      }

      cstdlib_strcat(__dst, v17);
      LastTnMarkerUpToPos = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", __dst, &__c[3], &__c[1], __c);
      if ((LastTnMarkerUpToPos & 0x80000000) != 0)
      {
        return LastTnMarkerUpToPos;
      }

      cstdlib_strcpy(__dst, "phrasing_");
      if (cstdlib_strlen(a6) + 11 > 0xFF)
      {
        v18 = "normal";
      }

      else
      {
        v18 = a6;
      }

      cstdlib_strcat(__dst, v18);
      v14 = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", __dst, &v25, &v24, __c);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      if (*&__c[1])
      {
        v19 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v19)
        {
          *v19 = 0;
        }
      }

      if (v24)
      {
        v20 = cstdlib_strchr(*v25, __c[0]);
        if (v20)
        {
          *v20 = 0;
        }
      }

      if (cstdlib_strcmp(a6, __s1))
      {
        v21 = *&__c[1];
        v22 = v24;
        if (*&__c[1] == 1 && !v24)
        {
          if (!cstdlib_strcmp(a6, **&__c[3]))
          {
            goto LABEL_36;
          }

          v22 = v24;
          v21 = *&__c[1];
        }

        if (v22 != 1 || v21)
        {
LABEL_33:
          if (v21 != 1 || v22 != 1 || cstdlib_strcmp(**&__c[3], *v25))
          {
            return v14;
          }

          goto LABEL_36;
        }

        if (cstdlib_strcmp(__s1, *v25))
        {
          v21 = *&__c[1];
          v22 = v24;
          goto LABEL_33;
        }
      }

LABEL_36:
      LastTnMarkerUpToPos = (*(a1[7] + 168))(a2, a3, v31, 2, 1, &v27, &v30);
      if ((LastTnMarkerUpToPos & 0x80000000) != 0)
      {
        return LastTnMarkerUpToPos;
      }

      *a7 = v27;
      goto LABEL_38;
    }
  }

  return v14;
}

uint64_t hlp_Phrasing(uint64_t a1, char *a2, unsigned int a3, const char *a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8, _WORD *a9, unsigned __int16 *a10, __int16 a11, int a12, unsigned __int16 *a13, unsigned __int16 a14)
{
  v117 = *MEMORY[0x277D85DE8];
  v113 = 0;
  v114 = 0;
  v112 = 0;
  v110 = 0;
  __s2 = 0;
  __s = 0;
  v109 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = *a7;
  v21 = v103;
  cstdlib_strcpy(__dst, "phrasing");
  v100 = cstdlib_strlen(__dst);
  cstdlib_strcpy(*(a1 + 136), "");
  cstdlib_strcpy(*(a1 + 144), "");
  cstdlib_strcpy(*(a1 + 152), "");
  v22 = (*(*(a1 + 56) + 168))(a5, a6, v103, 1, 1, &v113 + 2, &v114 + 2);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v99 = a8;
  v101 = HIWORD(v113);
  if (v103 && HIWORD(v113) < a3)
  {
    v23 = 1;
    do
    {
      v22 = (*(*(a1 + 56) + 168))(a5, a6, v21, 0, 1, &v112, &v114 + 2);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      if (v112 <= 0xA && ((1 << v112) & 0x610) != 0)
      {
        v22 = (*(*(a1 + 56) + 168))(a5, a6, v103, 2, 1, &v113, &v114 + 2);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        v22 = (*(*(a1 + 56) + 176))(a5, a6, v103, 5, &__s2, &v114 + 2);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        v22 = (*(*(a1 + 56) + 176))(a5, a6, v103, 9, &v110, &v114 + 2);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        if (!v23)
        {
          v25 = HIWORD(v113);
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a2, HIWORD(v113));
          cstdlib_strncat(*(a1 + 136), &a2[HIWORD(v113) - (v25 - PreviousUtf8Offset)], (v25 - PreviousUtf8Offset));
          cstdlib_strcat(*(a1 + 144), " ");
          cstdlib_strcat(*(a1 + 152), " ");
        }

        if (HIWORD(v113) > v113)
        {
          return 2315271857;
        }

        cstdlib_strncat(*(a1 + 136), &a2[HIWORD(v113)], v113 - HIWORD(v113));
        cstdlib_strcat(*(a1 + 144), __s2);
        cstdlib_strncat(*(a1 + 152), v110, 1uLL);
        v27 = cstdlib_strlen(__s2);
        v28 = (v113 - HIWORD(v113));
        v29 = cstdlib_strlen(__s2);
        if (v28 >= v27)
        {
          if (v28 > v29)
          {
            v33 = Utf8_LengthInUtf8chars(&a2[HIWORD(v113)], v113 - HIWORD(v113));
            v34 = v33 - cstdlib_strlen(__s2);
            if (v34 >= 1)
            {
              v35 = v34;
              if (v34)
              {
                do
                {
                  cstdlib_strcat(*(a1 + 144), "~");
                  --v35;
                }

                while (v35);
              }
            }

            v36 = Utf8_LengthInUtf8chars(&a2[HIWORD(v113)], v113 - HIWORD(v113));
            if (v36 > 1)
            {
              v37 = (v36 - 1);
              if (v36 != 1)
              {
                do
                {
                  cstdlib_strncat(*(a1 + 152), v110, 1uLL);
                  --v37;
                }

                while (v37);
              }
            }
          }
        }

        else
        {
          if (v29 - v113 + HIWORD(v113))
          {
            v30 = 0;
            do
            {
              cstdlib_strcat(*(a1 + 136), "~");
              ++v30;
              v31 = cstdlib_strlen(__s2);
            }

            while (v31 - v113 + HIWORD(v113) > v30);
          }

          if (cstdlib_strlen(__s2) != 1)
          {
            v32 = 0;
            do
            {
              cstdlib_strncat(*(a1 + 152), v110, 1uLL);
              ++v32;
            }

            while (cstdlib_strlen(__s2) - 1 > v32);
          }
        }

        v23 = 0;
      }

      v22 = (*(*(a1 + 56) + 120))(a5, a6, v103, &v103);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      if (!v103)
      {
        break;
      }

      v22 = (*(*(a1 + 56) + 168))(a5, a6);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v21 = v103;
      if (!v103)
      {
        break;
      }
    }

    while (HIWORD(v113) < a3);
  }

  v22 = (*(*(a1 + 104) + 104))(*(a1 + 88), *(a1 + 96), a4, *(a1 + 136), a14);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L1: %s", v38, v39, v40, __dst);
  v41 = *(*(a1 + 80) + 120);
  v42 = *(a1 + 136);
  v43 = cstdlib_strlen(v42);
  v22 = v41(*(a1 + 64), *(a1 + 72), 0, v42, v43);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L2: %s", v44, v45, v46, __dst);
  v47 = *(*(a1 + 80) + 120);
  v48 = *(a1 + 144);
  v49 = cstdlib_strlen(v48);
  v22 = v47(*(a1 + 64), *(a1 + 72), 1, v48, v49);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s L5: %s", v50, v51, v52, __dst);
  v53 = *(*(a1 + 80) + 120);
  v54 = *(a1 + 152);
  v55 = cstdlib_strlen(v54);
  v22 = v53(*(a1 + 64), *(a1 + 72), 4, v54, v55);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  if (cstdlib_strcmp(a4, "normal") && cstdlib_strlen(a4) + v100 + 2 <= 0xFF)
  {
    cstdlib_strcat(__dst, "_");
    cstdlib_strcat(__dst, a4);
  }

  if (((*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), __dst) & 0x80000000) != 0)
  {
    __dst[v100] = 0;
    (*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), __dst);
  }

  v22 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 0, &v109, &v107 + 2);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v109[HIWORD(v107)] = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s O1: %s", v56, v57, v58, __dst);
  v22 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 2, &__s, &v107 + 2);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  __s[HIWORD(v107)] = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "%s O3: %s", v59, v60, v61, __dst);
  if (!v101)
  {
    if (cstdlib_strchr(__s, 87))
    {
      v70 = cstdlib_strrchr(a2, 63);
      if (v70)
      {
        if (v70 != a2 && *(v70 - 1) != 32)
        {
          *v70 = 46;
        }
      }
    }
  }

  v22 = (*(*(a1 + 56) + 168))(a5, a6, *a7, 1, 1, &v113 + 2, &v114 + 2);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v62 = (*(*(a1 + 56) + 136))(a5, a6, *a7, &v104);
  if ((v62 & 0x80000000) == 0)
  {
    if (!v104)
    {
      goto LABEL_63;
    }

    v62 = (*(*(a1 + 56) + 168))(a5, a6);
    if ((v62 & 0x80000000) != 0)
    {
      return v62;
    }

    v63 = v104;
    if (v104)
    {
      while (v112 > 0xA || ((1 << v112) & 0x610) == 0)
      {
        v62 = (*(*(a1 + 56) + 136))(a5, a6, v63, &v104);
        if ((v62 & 0x80000000) != 0)
        {
          return v62;
        }

        if (v104)
        {
          v62 = (*(*(a1 + 56) + 168))(a5, a6);
          if ((v62 & 0x80000000) != 0)
          {
            return v62;
          }

          v63 = v104;
          if (v104)
          {
            continue;
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
LABEL_63:
      v63 = 0;
    }

    v65 = v109;
    if (*v109 == 35)
    {
      memset(v115, 0, 11);
      LOWORD(v107) = 200;
      ++v109;
      if (v65[1] == 91)
      {
        v109 = v65 + 2;
        v66 = v65[2];
        if (v65[2])
        {
          v67 = 0;
          LOWORD(v68) = 0;
          v69 = v65 + 3;
          while (v66 != 93 && v67 <= 9)
          {
            *(v115 + v67) = v66;
            v109 = &v69[v67];
            v66 = v69[v67++];
            LOWORD(v68) = v68 + 1;
            if (!v66)
            {
              goto LABEL_80;
            }
          }

          LOWORD(v68) = v67;
LABEL_80:
          v68 = v68;
        }

        else
        {
          v68 = 0;
        }

        *(v115 + v68) = 0;
      }

      v71 = a12;
      if (!a12)
      {
        v71 = cstdlib_atoi(v115);
        v63 = v104;
      }

      LOWORD(v107) = v71;
      if (v63)
      {
        v62 = hlp_ReadSildur(a1, a5, a6, v63, &v106, &v105);
        if ((v62 & 0x80000000) != 0)
        {
          return v62;
        }

        if (!v105)
        {
          v62 = (*(*(a1 + 56) + 160))(a5, a6, v104, 8, 1, &v107, &v114);
          if ((v62 & 0x80000000) != 0)
          {
            return v62;
          }
        }
      }
    }

    v72 = *a7;
    if (*a7)
    {
      v73 = HIWORD(v113) >= a3;
    }

    else
    {
      v73 = 1;
    }

    if (!v73)
    {
      do
      {
        v22 = (*(*(a1 + 56) + 168))(a5, a6, v72, 0, 1, &v112, &v114 + 2);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        if (v112 <= 0xA && ((1 << v112) & 0x610) != 0)
        {
          v22 = (*(*(a1 + 56) + 168))(a5, a6, *a7, 1, 1, &v113 + 2, &v114 + 2);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          v22 = (*(*(a1 + 56) + 168))(a5, a6, *a7, 2, 1, &v113, &v114 + 2);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          v75 = v109 + 1;
          for (i = v109 + 3; ; ++i)
          {
            v77 = *(v75 - 1);
            if (v77 <= 0x22)
            {
              if (!*(v75 - 1) || v77 == 32)
              {
LABEL_110:
                LOWORD(v115[0]) = 0;
                LOWORD(v107) = 0;
                if (((*(*(a1 + 56) + 184))(a5, a6, *a7, 8, v115) & 0x80000000) == 0 && LOWORD(v115[0]) == 1)
                {
                  v22 = (*(*(a1 + 56) + 168))(a5, a6, *a7, 8, 1, &v107, &v114 + 2);
                  if ((v22 & 0x80000000) != 0)
                  {
                    return v22;
                  }
                }

                if (!v107)
                {
LABEL_114:
                  v22 = (*(*(a1 + 56) + 160))(a5, a6, *a7, 8, 1, &v107, &v114);
                  if ((v22 & 0x80000000) != 0)
                  {
                    return v22;
                  }
                }

LABEL_131:
                v85 = v109;
                v86 = *v109;
                v87 = a9;
                while (1)
                {
                  v88 = v85;
                  if (((v86 - 93) > 0x21 || ((1 << (v86 - 93)) & 0x200000005) == 0) && v86 != 32)
                  {
                    break;
                  }

                  ++v85;
                  v109 = v88 + 1;
                  v86 = v88[1];
                  if (v86 == 35)
                  {
                    v89 = v88 + 2;
                    do
                    {
                      if (v86 == 32)
                      {
                        break;
                      }

                      if (v86 == 95)
                      {
                        break;
                      }

                      v109 = v89;
                      v90 = *v89++;
                      v86 = v90;
                    }

                    while (v90);
                    v85 = v89 - 1;
                  }
                }

                if ((v113 - HIWORD(v113)) <= 1)
                {
                  v91 = 0;
                }

                else
                {
                  v91 = -1;
                }

                LOWORD(v107) = 0;
                v92 = *a9;
                if (v92 < *a10)
                {
                  do
                  {
                    v93 = v99 + 32 * v92;
                    if ((*(v93 + 12) - a11) >= (v113 + v91))
                    {
                      break;
                    }

                    if (*v93 == 8 && v104 != 0)
                    {
                      LOWORD(v107) = v107 + *(v93 + 24);
                      v22 = (*(*(a1 + 56) + 160))(a5, a6);
                      if ((v22 & 0x80000000) != 0)
                      {
                        return v22;
                      }

                      v95 = *(*(a1 + 56) + 160);
                      v96 = v104;
                      v97 = cstdlib_strlen("external");
                      v22 = v95(a5, a6, v96, 18, (v97 + 1), "external", &v114);
                      if ((v22 & 0x80000000) != 0)
                      {
                        return v22;
                      }

                      v87 = a9;
                      LOWORD(v92) = *a9;
                    }

                    LOWORD(v92) = v92 + 1;
                    *v87 = v92;
                  }

                  while (*a10 > v92);
                }

                v78 = a7;
                v79 = *a7;
                v104 = *a7;
                goto LABEL_155;
              }
            }

            else
            {
              if (v77 == 35)
              {
                memset(v115, 0, 11);
                LOWORD(v107) = 200;
                v109 = v75;
                if (*v75 == 91)
                {
                  v109 = v75 + 1;
                  v80 = v75[1];
                  if (v75[1])
                  {
                    v81 = 0;
                    v82 = 0;
                    while (v80 != 93 && v81 <= 9)
                    {
                      *(v115 + v81++) = v80;
                      ++v82;
                      v109 = i;
                      v83 = *i++;
                      v80 = v83;
                      if (!v83)
                      {
                        goto LABEL_126;
                      }
                    }

                    v82 = v81;
                  }

                  else
                  {
                    v82 = 0;
                  }

LABEL_126:
                  *(v115 + v82) = 0;
                }

                v84 = a12;
                if (!a12)
                {
                  v84 = cstdlib_atoi(v115);
                }

                LOWORD(v107) = v84;
                v22 = hlp_ReadSildur(a1, a5, a6, *a7, &v106, &v105);
                if ((v22 & 0x80000000) == 0)
                {
                  if (!v105)
                  {
                    goto LABEL_114;
                  }

                  goto LABEL_131;
                }

                return v22;
              }

              if (v77 == 95 || v77 == 126)
              {
                goto LABEL_110;
              }
            }

            v109 = v75++;
          }
        }

        v78 = a7;
        v79 = *a7;
LABEL_155:
        v62 = (*(*(a1 + 56) + 120))(a5, a6, v79, v78);
        if ((v62 & 0x80000000) != 0)
        {
          return v62;
        }

        if (!*v78)
        {
          break;
        }

        v62 = (*(*(a1 + 56) + 168))(a5, a6);
        if ((v62 & 0x80000000) != 0)
        {
          return v62;
        }

        v72 = *a7;
        if (!*a7)
        {
          break;
        }
      }

      while (HIWORD(v113) < a3);
    }

    *a13 = v104;
  }

  return v62;
}

uint64_t hlp_InsertWordPhrase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8, unsigned __int16 *a9)
{
  v21 = a5;
  v20 = a6;
  v19 = a7;
  v18 = a8;
  v17 = 15;
  result = (*(*(a1 + 56) + 88))(a2, a3, a4, a9);
  if ((result & 0x80000000) == 0)
  {
    v16 = 0;
    result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 0, 1, &v17, &v16);
    if ((result & 0x80000000) == 0)
    {
      result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 1, 1, &v21, &v16);
      if ((result & 0x80000000) == 0)
      {
        result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 2, 1, &v20, &v16);
        if ((result & 0x80000000) == 0)
        {
          v13 = *(*(a1 + 56) + 160);
          v14 = *a9;
          v15 = cstdlib_strlen("P");
          result = v13(a2, a3, v14, 4, (v15 + 1), "P", &v16);
          if ((result & 0x80000000) == 0)
          {
            result = (*(*(a1 + 56) + 160))(a2, a3, *a9, 7, 1, &v19, &v16);
            if ((result & 0x80000000) == 0)
            {
              return (*(*(a1 + 56) + 160))(a2, a3, *a9, 8, 1, &v18, &v16);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_3[a3];
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

uint64_t fe_phrasing_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v20 = -1;
  result = fe_phrasing_isFeatureRequired(a2, a3, a4, &v20);
  if (result)
  {
    if (cstdlib_strcmp(a6, ""))
    {
      v10 = cstdlib_strlen(a6);
      v11 = v20;
      if (v10 <= 0x40)
      {
        v13 = *(a5 + 8 * v20);
      }

      else
      {
        v12 = cstdlib_strlen(a6);
        v13 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v11), v12 + 1);
        if (!v13)
        {
          log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0, v14, v15, v16, v17, v19);
          return 2315264010;
        }

        *(a5 + 8 * v11) = v13;
      }

      v18 = a6;
    }

    else
    {
      v13 = *(a5 + 8 * v20);
      v18 = "=";
    }

    cstdlib_strcpy(v13, v18);
    return 0;
  }

  return result;
}

const char *fe_phrasing_feat_word(uint64_t a1, int a2, int a3)
{
  v3 = a3 + a2;
  if (a3 + a2 < 0 || v3 >= *(a1 + 1072))
  {
    return "=";
  }

  v4 = *(*(a1 + 1064) + 184 * v3 + 56);
  v5 = cstdlib_strlen(v4);
  if (v5)
  {
    {
      v6 = &v4[v5];
      {
        *(v6 - 1) = 0;
      }
    }
  }

  return v4;
}

char *fe_phrasing_feat_wordlen(uint64_t a1, int a2, int a3, char *__dst)
{
  *__dst = 0;
  v5 = a3 + a2;
  if (a3 + a2 < 0 || v5 >= *(a1 + 1072))
  {

    return cstdlib_strcpy(__dst, "=");
  }

  else
  {
    v6 = Utf8_Utf8NbrOfSymbols(*(*(a1 + 1064) + 184 * v5 + 56)) - 1;

    return LH_itoa(v6, __dst, 0xAu);
  }
}

char *fe_phrasing_feat_character(uint64_t a1, int a2, int a3, int a4, void *__b)
{
  cstdlib_memset(__b, 0, 0x800uLL);
  v10 = fe_phrasing_feat_word(a1, a2, a4);
  if (!cstdlib_strcmp(v10, "=") || (v11 = cstdlib_strlen(v10)) == 0)
  {
LABEL_5:

    return cstdlib_strcpy(__b, "=");
  }

  if (a3)
  {
    PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v10, v11);
    if (PreviousUtf8Offset > v11)
    {
      goto LABEL_5;
    }

    v16 = &v10[PreviousUtf8Offset];
    NextUtf8Offset = (v11 - PreviousUtf8Offset);
    v15 = __b;
  }

  else
  {
    NextUtf8Offset = utf8_GetNextUtf8Offset(v10, 0);
    v15 = __b;
    v16 = v10;
  }

  return cstdlib_strncpy(v15, v16, NextUtf8Offset);
}

uint64_t fe_phrasing_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2315264007;
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

uint64_t statcomp_isDctFeature(char *__s1, _WORD *a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v6 = 0;
  while (cstdlib_strcmp(__s1, *(*a3 + 8 * v6)))
  {
    if (++v6 >= *(a3 + 8))
    {
      return 0;
    }
  }

  *a2 = v6;
  return 1;
}

uint64_t statcomp_isDctMappedFeature(char *__s1, _WORD *a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  v6 = 0;
  for (i = 8; cstdlib_strcmp(__s1, *(*a3 + i)); i += 16)
  {
    if (++v6 >= *(a3 + 8))
    {
      return 0;
    }
  }

  *a2 = v6;
  return 1;
}

uint64_t statcomp_isDynamicFeature(char *__s, _WORD *a2)
{
  v4 = 0;
  while (1)
  {
    v5 = cstdlib_strlen(__s);
    v6 = g_statcomp_FeatureNames[v4];
    v7 = cstdlib_strlen(v6);
    if (!cstdlib_strcmp(__s, v6) || v5 > v7 && !cstdlib_strcmp(&__s[v5 - v7], v6))
    {
      break;
    }

    if (++v4 == 7)
    {
      return 0;
    }
  }

  *a2 = v4;
  return 1;
}

uint64_t statcomp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char *__s)
{
  if (cstdlib_strlen(__s) <= 0x20)
  {
    v11 = *(a4 + 8 * a3);
  }

  else
  {
    v10 = cstdlib_strlen(__s);
    v11 = heap_Realloc(*(a2 + 8), *(a4 + 8 * a3), v10 + 1);
    if (!v11)
    {
      log_OutPublic(*(a2 + 32), "FE_POS", 35000, 0, v12, v13, v14, v15, v29);
      return 2313166858;
    }

    *(a4 + 8 * a3) = v11;
  }

  cstdlib_strcpy(v11, __s);
  v16 = *(a4 + 8 * a3);
  v17 = cstdlib_strlen(*(*(a1 + 1312) + 8 * a3));
  if (*(a1 + 1336))
  {
    v18 = v17;
    v19 = 0;
    while (1)
    {
      v20 = v19;
      if (!cstdlib_strncmp(*(*(a1 + 1328) + 16 * v19), *(*(a1 + 1312) + 8 * a3), v18))
      {
        break;
      }

      v19 = v20 + 1;
      if (*(a1 + 1336) <= (v20 + 1))
      {
        return 0;
      }
    }

    v21 = cstdlib_strlen(*(*(a1 + 1328) + 16 * v20 + 8));
    v22 = cstdlib_strlen(v16);
    v23 = *(*(a1 + 1328) + 16 * v20 + 8);
    v24 = cstdlib_strstr(v23, v16);
    if (v24)
    {
      v25 = v21;
      v26 = &v23[v21];
      while (v24 != v23 || v25 != v22 && (v25 <= v22 + 1 || v24[v22] != 32))
      {
        if (v24 > v23)
        {
          v27 = &v24[v22];
          if (v26 > (v27 + 1) && *v27 == 32)
          {
            if (*(v24 - 1) == 32)
            {
              return 0;
            }
          }

          else if (v26 == v27)
          {
            return 0;
          }
        }

        v24 = cstdlib_strstr(&v24[v22], v16);
        if (!v24)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:
      cstdlib_strcpy(v16, "=");
    }
  }

  return 0;
}

uint64_t statcomp_setDynamicFeature(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, const char **a6, const char **a7, int a8, unsigned __int16 a9)
{
  LODWORD(v9) = a8;
  v35 = *MEMORY[0x277D85DE8];
  v16 = g_statcomp_FeatureNames[a3];
  if (cstdlib_strcmp(v16, "CW_SYLLABLE_LEN") && cstdlib_strcmp(v16, "SYLLABLE_LEN_AS_FRACTION"))
  {
    if (cstdlib_strcmp(v16, "CW_ORTH_LEN"))
    {
      if (cstdlib_strcmp(v16, "ORTH_LEN_AS_FRACTION"))
      {
        v17 = 1;
      }

      else
      {
        v17 = v9 == 0;
      }

      if (!v17)
      {
        goto LABEL_15;
      }
    }

    else if (v9)
    {
LABEL_15:
      v21 = 0;
      v9 = v9;
      v22 = a6;
      do
      {
        v23 = *v22++;
        v21 += cstdlib_strlen(v23);
        --v9;
      }

      while (v9);
      goto LABEL_19;
    }

LABEL_18:
    LOWORD(v21) = 0;
LABEL_19:
    LOWORD(v18) = 0;
    goto LABEL_20;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v18 = 0;
  v9 = v9;
  v19 = a7;
  do
  {
    v20 = *v19++;
    v18 += cstdlib_strlen(v20);
    --v9;
  }

  while (v9);
  LOWORD(v21) = 0;
LABEL_20:
  v24 = cstdlib_strcmp(v16, "CW_SYLLABLE_LEN");
  v25 = v18;
  if (!v24 || (v26 = cstdlib_strcmp(v16, "CW_ORTH_LEN"), v25 = v21, !v26))
  {
    LH_itoa(v25, __dst, 0xAu);
  }

  if (!cstdlib_strcmp(v16, "SYLLABLE_LEN"))
  {
    v30 = a7[a9];
LABEL_34:
    v32 = cstdlib_strlen(v30);
    goto LABEL_35;
  }

  if (!cstdlib_strcmp(v16, "SYLLABLE_LEN_AS_FRACTION"))
  {
    v31 = cstdlib_strlen(a7[a9]);
    if (v18)
    {
      v28 = v31;
      v29 = v18;
      goto LABEL_32;
    }

LABEL_39:
    v32 = 0;
    goto LABEL_35;
  }

  if (!cstdlib_strcmp(v16, "ORTH_LEN"))
  {
    v30 = a6[a9];
    goto LABEL_34;
  }

  if (cstdlib_strcmp(v16, "ORTH_LEN_AS_FRACTION"))
  {
    goto LABEL_36;
  }

  v27 = cstdlib_strlen(a6[a9]);
  if (!v21)
  {
    goto LABEL_39;
  }

  v28 = v27;
  v29 = v21;
LABEL_32:
  v32 = v28 / v29;
LABEL_35:
  LH_itoa(v32, __dst, 0xAu);
LABEL_36:
  if (!cstdlib_strcmp(v16, "ORTH"))
  {
    cstdlib_strcpy(__dst, a6[a9]);
  }

  return statcomp_setFeature(a2, a1, a4, a5, __dst);
}

uint64_t statcomp_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 33);
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

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v7, v8, v9, v10, v12);
  return 2313166858;
}

void *statcomp_freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
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
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t statcomp_dumpFeatureVectorAndResult(uint64_t a1, int a2, const char **a3, unsigned __int16 *a4, char *__s, char *a6, uint64_t a7, uint64_t a8, char *__sa)
{
  if (!a2)
  {
    return 0;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __s);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, a6);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  if (*(a7 + 1296) >= 2u)
  {
    v16 = 0;
    do
    {
      v15 = statcomp_add2Str(a1, a3, a4, *(*(a7 + 1312) + 8 * v16));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, "=");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, *(a8 + 8 * v16));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, " ");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }
    }

    while (*(a7 + 1296) - 1 > ++v16);
  }

  v15 = statcomp_add2Str(a1, a3, a4, "PRED=");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __sa);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v17, v18, v19, *a3);
  cstdlib_strcpy(*a3, "");
  if (*(a7 + 1296) >= 2u)
  {
    v20 = 0;
    do
    {
      v15 = statcomp_add2Str(a1, a3, a4, *(a8 + 8 * v20));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = statcomp_add2Str(a1, a3, a4, " ");
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }
    }

    while (*(a7 + 1296) - 1 > ++v20);
  }

  v15 = statcomp_add2Str(a1, a3, a4, "PRED=");
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v15 = statcomp_add2Str(a1, a3, a4, __sa);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v24 = statcomp_add2Str(a1, a3, a4, " ");
  if ((v24 & 0x80000000) == 0)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v21, v22, v23, *a3);
    cstdlib_strcpy(*a3, "");
  }

  return v24;
}

uint64_t statpos_checkIfActive(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6, _DWORD *a7, _DWORD *a8, int *a9, _DWORD *a10, _DWORD *a11)
{
  v64 = *MEMORY[0x277D85DE8];
  v60 = 0;
  memset(v63, 0, sizeof(v63));
  v59 = 0;
  v57 = 0;
  v58 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  v17 = a7 + 354;
  *(a7 + 354) = 0u;
  a7[358] = 0;
  result = paramc_ParamGetUInt(*(a6 + 40), "statpos_do_corpus_alignment", &v59);
  if ((result & 0x1FFF) != 0x14)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v59 == 1)
    {
      *v17 = 1;
    }
  }

  result = paramc_ParamGetUInt(*(a6 + 40), "nluactive", &v59);
  if ((result & 0x1FFF) != 0x14)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v59 == 1)
    {
      a7[358] = 1;
    }
  }

  result = statpos_igtrees_getBrkStrs(a6, v62, v61, 0x100uLL);
  if ((result & 0x80000000) == 0)
  {
    result = ssftriff_reader_ObjOpen(a4, a5, 2, v62, "IGTR", 1031, &v57);
    if ((result & 0x80000000) != 0)
    {
      if ((result & 0x1FFF) == 0xA)
      {
        return result;
      }

      log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s tree not found", v23, v24, v25, v62);
    }

    else
    {
      result = ssftriff_reader_ObjClose(v57, v19, v20, v21, v22, v23, v24, v25);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      a7[356] = 1;
    }

    result = ssftriff_reader_ObjOpen(a4, a5, 2, v61, "IGTR", 1031, &v57);
    if ((result & 0x80000000) != 0)
    {
      if ((result & 0x1FFF) == 0xA)
      {
        return result;
      }

      log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s tree not found", v30, v31, v32, v61);
    }

    else
    {
      result = ssftriff_reader_ObjClose(v57, v26, v27, v28, v29, v30, v31, v32);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      a7[356] = 1;
    }

    result = statpos_get_broker_string(a6, &v58);
    if ((result & 0x80000000) == 0)
    {
      v33 = ssftriff_reader_ObjOpen(a4, a5, 2, v58, "CRPH", 1031, &v57);
      if ((v33 & 0x80000000) != 0)
      {
        v42 = v33;
        if ((v33 & 0x1FFF) == 0xA)
        {
LABEL_47:
          if (v58)
          {
            heap_Free(*(a6 + 8), v58);
          }

          if ((v42 & 0x1FFF) == 0xA)
          {
            return v42;
          }

          else
          {
            return 0;
          }
        }

        log_OutText(*(a6 + 32), "FE_POS", 5, 0, "statPOS %s CRF not found", v38, v39, v40, v58);
      }

      else
      {
        info_from_dct = ssftriff_reader_ObjClose(v57, v34, v35, v36, v37, v38, v39, v40);
        if ((info_from_dct & 0x80000000) != 0)
        {
LABEL_46:
          v42 = info_from_dct;
          goto LABEL_47;
        }

        a7[357] = 1;
      }

      if (!a7[356] && !a7[357] && !*v17)
      {
        v42 = 0;
        goto LABEL_47;
      }

      info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "mdesegpos_morpheme_processing", 0, a9, "BOOL");
      if ((info_from_dct & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "statphr_kok_force_igtree", 0, a10, "BOOL");
      if ((info_from_dct & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      if (*a10 == 1)
      {
        log_OutText(*(a6 + 32), "FE_POS", 5, 0, "Key statphr_kok_force_igtree is set, use statphr IGTree data instead of hardcoded values", v43, v44, v45, 0);
      }

      info_from_dct = statpos_get_info_from_dct(a6, a1, a2, a3, "fecfg", "statphr_kok_remove_unaligned_phrase_boundaries", 0, a11, "BOOL");
      if ((info_from_dct & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      if (*a11 == 1)
      {
        log_OutText(*(a6 + 32), "FE_POS", 5, 0, "Key statphr_kok_remove_unaligned_phrase_boundaries is set, IGTree prediction overridden if phrase boundary is inside eojeol", v46, v47, v48, 0);
      }

      if (*v17 == 1)
      {
        v49 = a7[356];
        if (v49 != 1)
        {
          v49 = a7[357] == 1;
        }
      }

      else if (a7[357] != 1 || (v49 = *a9, *a9 != 1))
      {
LABEL_42:
        info_from_dct = getBrokerString_0(a6, v63, 0x80uLL);
        if ((info_from_dct & 0x80000000) == 0)
        {
          v50 = brk_DataOpenEx(*(a6 + 24), v63, 1, &v60);
          if ((v50 & 0x80000000) != 0)
          {
            v42 = v50;
            if (a7[358] == 1)
            {
              v54 = "openNLP statPOS rules not found";
            }

            else
            {
              v54 = "MS statPOS rules not found";
            }

            log_OutText(*(a6 + 32), "FE_POS", 5, 0, v54, v51, v52, v53, 0);
          }

          else
          {
            a7[355] = 1;
            v42 = brk_DataClose(*(a6 + 24), v60);
            if ((v42 & 0x80000000) == 0)
            {
              *a8 = 1;
            }
          }

          goto LABEL_47;
        }

        goto LABEL_46;
      }

      *a8 = v49;
      goto LABEL_42;
    }
  }

  return result;
}

uint64_t statpos_load_resources(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, _WORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, int a13, _DWORD *a14, int a15)
{
  v36 = *MEMORY[0x277D85DE8];
  v32 = 0;
  *a12 = a8;
  *(a12 + 1448) = a10;
  *(a12 + 1464) = a11;
  *(a12 + 1472) = a1;
  *(a12 + 1480) = a2;
  *(a12 + 1488) = a3;
  if (!a13)
  {
    *(a12 + 200) = 0;
    *(a12 + 208) = 0;
    inited = nuance_pcre_ObjOpen(a4, a5, a12 + 200);
    if ((inited & 0x80000000) == 0)
    {
      AddRefCountedObject = nuance_pcre_Init(*(a12 + 200), *(a12 + 208), 0x1Eu, 50);
      if ((AddRefCountedObject & 0x80000000) != 0)
      {
        return AddRefCountedObject;
      }

      if (*(a12 + 1424) == 1)
      {
        v31 = 0;
        inited = InitRsrcFunction(a6, a7, &v31);
        if ((inited & 0x80000000) != 0)
        {
          return inited;
        }

        inited = statpos_igtrees_getBrkStrs(a8, __src, __s2, 0x100uLL);
        if ((inited & 0x80000000) != 0)
        {
          return inited;
        }

        cstdlib_strcpy(__dst, __src);
        cstdlib_strcat(__dst, __s2);
        ObjcForThisApi = getObjcForThisApi(a8, v31);
        AddRefCountedObject = objc_GetAddRefCountedObject(ObjcForThisApi, __dst, statpos_igtrees_ObjcLoad, statpos_igtrees_ObjcClose, a8, &v32);
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          return AddRefCountedObject;
        }

        memcpy((a12 + 784), *(v32 + 32), 0x218uLL);
      }

      if (*(a12 + 1428) == 1)
      {
        AddRefCountedObject = statpos_crf_load(a4, a5, a6, a7, a8, a9, *(a12 + 1448), *(a12 + 1456), *(a12 + 1464), a12 + 1320, a12 + 8, (a12 + 1384), a15);
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          return AddRefCountedObject;
        }
      }

      if (a15)
      {
        *(a12 + 8) = a8;
        *(a12 + 384) = 5;
      }

      else
      {
        AddRefCountedObject = statpos_rules_load(a4, a5, a8, *(a12 + 1448), *(a12 + 1456), *(a12 + 1464), (a12 + 8), v29);
        if ((AddRefCountedObject & 0x80000000) != 0)
        {
          return AddRefCountedObject;
        }
      }

      if (*(a12 + 1424) == 1 && *(a12 + 800) != *(a12 + 160))
      {
        *a14 = 0;
        log_OutText(*(a8 + 32), "FE_POS", 5, 0, "set UseStatPOS to FALSE; OOV model differs in igtrees(%d) versus rules(%d)", v27, v28, v29, *(a12 + 800));
      }

      return AddRefCountedObject;
    }

    return inited;
  }

  if (*(a12 + 1420) != 1)
  {
    AddRefCountedObject = 0;
    goto LABEL_21;
  }

  *(a12 + 200) = 0;
  *(a12 + 208) = 0;
  inited = nuance_pcre_ObjOpen(a4, a5, a12 + 200);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  AddRefCountedObject = nuance_pcre_Init(*(a12 + 200), *(a12 + 208), 0x1Eu, 50);
  if ((AddRefCountedObject & 0x80000000) != 0)
  {
    return AddRefCountedObject;
  }

  if (a15)
  {
LABEL_21:
    *(a12 + 8) = a8;
    *(a12 + 384) = 5;
    return AddRefCountedObject;
  }

  v21 = *(a12 + 1464);
  v22 = *(a12 + 1448);
  v23 = *(a12 + 1456);

  return statpos_rules_load(a4, a5, a8, v22, v23, v21, (a12 + 8), v19);
}

uint64_t statpos_unload_resources(_WORD *a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v16 = 0;
  if (a5)
  {
    if (*(a4 + 1420) == 1)
    {
      statpos_rules_unload((a4 + 8));
      NullHandle = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(a4 + 200), *(a4 + 208), NullHandle, v8))
      {
        nuance_pcre_DeInit(*(a4 + 200), *(a4 + 208));
        nuance_pcre_ObjClose(*(a4 + 200), *(a4 + 208));
      }
    }

    return 0;
  }

  else
  {
    inited = InitRsrcFunction(a1, a2, &v16);
    if ((inited & 0x80000000) == 0)
    {
      statpos_crf_unload(a3, v16, a4 + 1320, a4 + 8, (a4 + 1384), a6);
      if (*(a4 + 1424))
      {
        ObjcForThisApi = getObjcForThisApi(a3, v16);
        objc_ReleaseObject(ObjcForThisApi, a4 + 808);
      }

      statpos_rules_unload((a4 + 8));
      v14 = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(a4 + 200), *(a4 + 208), v14, v15))
      {
        nuance_pcre_DeInit(*(a4 + 200), *(a4 + 208));
        nuance_pcre_ObjClose(*(a4 + 200), *(a4 + 208));
      }
    }
  }

  return inited;
}

uint64_t statpos_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, unsigned int a15)
{
  v23 = a12 == 1 && (*(a10 + 1436) | a13) == 0 && a14 == 1;
  *(a10 + 752) = a7;
  *(a10 + 760) = a8;
  *(a10 + 768) = a9;
  SentenceData = statpos_getSentenceData(a6, a4, a5, a10, a15);
  if ((SentenceData & 0x80000000) == 0 && *(a10 + 656))
  {
    if (a11 || (updated = statpos_disambiguatePOSTags(a10), (updated & 0x80000000) == 0))
    {
      if (*(a10 + 1416) == 1)
      {
        updated = statpos_updateNLULingdbField(a6, a4, a5, a10);
      }

      else if (a15 != 1 || (updated = statpos_setMorphemePRON(a1, a2, a3, a10), (updated & 0x80000000) == 0))
      {
        updated = statpos_alignDisambiguatedPOSToLingdb(a10, a15, v24, v25, v26, v27, v28, v29);
        if ((updated & 0x80000000) == 0)
        {
          updated = statpos_updatePOSLingdbWithDisambiguatedPOS(a6, a4, a5, a10, v23, a15);
        }
      }
    }

    SentenceData = updated;
  }

  statpos_freeSentenceData(a10);
  return SentenceData;
}

uint64_t statPOS_call_one_word(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5, const char **a6, char **a7)
{
  v57 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v53 = 0;
  __s = 0;
  cstdlib_strcpy(__dst, "one_word");
  cstdlib_strlen(__dst);
  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s L1: %s", v14, v15, v16, __dst);
  v17 = *(a4 + 120);
  v18 = *a5;
  v19 = cstdlib_strlen(v18);
  v20 = v17(a2, a3, 0, v18, v19);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s L2: %s", v21, v22, v23, __dst);
  v24 = *(a4 + 120);
  v25 = *a6;
  v26 = cstdlib_strlen(*a6);
  v20 = v24(a2, a3, 1, v25, v26);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  v20 = (*(a4 + 80))(a2, a3, __dst);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  v20 = (*(a4 + 128))(a2, a3, 0, &__s, &v55);
  if ((v20 & 0x80000000) != 0)
  {
    return v20;
  }

  __s[v55] = 0;
  v27 = (*(a4 + 128))(a2, a3, 0, &v53, &v55);
  if ((v27 & 0x80000000) == 0)
  {
    v53[v55] = 0;
    if (cstdlib_strlen(__s))
    {
      v28 = 0;
      v29 = 0;
      do
      {
        v30 = __s;
        v31 = &__s[v28];
        if (__s[v28] == 126)
        {
          v32 = cstdlib_strlen(v31 + 2);
          cstdlib_memmove(v31 + 1, v31 + 2, v32 + 1);
          __s[v28] = 126;
          v30 = __s;
        }

        v28 = ++v29;
      }

      while (cstdlib_strlen(v30) > v29);
    }

    v33 = *(a1 + 8);
    v34 = cstdlib_strlen(__s);
    v35 = heap_Calloc(v33, 1, v34 + 1);
    *a7 = v35;
    if (v35)
    {
      cstdlib_strcpy(v35, __s);
      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s O1 (phonetics) : %s", v40, v41, v42, __dst);
      if (cstdlib_strlen(v53))
      {
        v46 = 0;
        v47 = 0;
        do
        {
          v48 = v53;
          v49 = &v53[v46];
          if (v53[v46] == 126)
          {
            v50 = cstdlib_strlen(v49 + 2);
            cstdlib_memmove(v49 + 1, v49 + 2, v50 + 1);
            v53[v46] = 126;
            v48 = v53;
          }

          v46 = ++v47;
        }

        while (cstdlib_strlen(v48) > v47);
      }

      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s O3 (POS code): %s (ignored)", v43, v44, v45, __dst);
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v36, v37, v38, v39, v52);
      return 2313166858;
    }
  }

  return v27;
}

uint64_t statphr_getFeature(char *__s1, uint64_t a2)
{
  v4 = 0;
  while (cstdlib_strcmp(__s1, g_statphr_FeatureNames[v4]))
  {
    if (++v4 == 8)
    {
      return 0;
    }
  }

  return *(a2 + v4 * 8);
}

uint64_t statphr_setFeature(uint64_t a1, char *__s1, uint64_t *a3, const char *a4)
{
  v8 = 0;
  while (cstdlib_strcmp(__s1, g_statphr_FeatureNames[v8]))
  {
    ++a3;
    if (++v8 == 8)
    {
      return 0;
    }
  }

  if (!cstdlib_strcmp(a4, ""))
  {
    v11 = *a3;
    v12 = "_";
    goto LABEL_10;
  }

  if (cstdlib_strlen(a4) < 0x41 || (v9 = cstdlib_strlen(a4), result = resizeNFeature(a1, a3, (v9 + 1)), (result & 0x80000000) == 0))
  {
    v11 = *a3;
    v12 = a4;
LABEL_10:
    cstdlib_strcpy(v11, v12);
    return 0;
  }

  return result;
}

uint64_t statphr_setNFeature(uint64_t a1, char *__s1, char **a3, const char *a4, unsigned int a5)
{
  v10 = 0;
  while (cstdlib_strcmp(__s1, g_statphr_FeatureNames[v10]))
  {
    ++a3;
    if (++v10 == 8)
    {
      return 0;
    }
  }

  v11 = cstdlib_strcmp(a4, "");
  if (a5 && !v11)
  {
    cstdlib_strcpy(*a3, "_");
    return 0;
  }

  if (a5 < 0x41 || (result = resizeNFeature(a1, a3, (a5 + 1)), (result & 0x80000000) == 0))
  {
    cstdlib_strncpy(*a3, a4, a5);
    result = 0;
    (*a3)[a5] = 0;
  }

  return result;
}

uint64_t resizeNFeature(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = heap_Realloc(*(a1 + 8), *a2, a3);
  if (v5)
  {
    v10 = v5;
    result = 0;
    *a2 = v10;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v6, v7, v8, v9, v12);
    return 2313166858;
  }

  return result;
}

uint64_t statphr_initFeatureVector(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 8 * a3 - 8;
  while (1)
  {
    v7 = heap_Calloc(*(a1 + 8), 1, 65);
    a2[v5 / 8] = v7;
    if (!v7)
    {
      break;
    }

    result = statphr_setFeature(a1, g_statphr_FeatureNames[v5 / 8], a2, "_");
    if ((result & 0x80000000) == 0)
    {
      v13 = v6 == v5;
      v5 += 8;
      if (!v13)
      {
        continue;
      }
    }

    return result;
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v8, v9, v10, v11, v14);
  return 2313166858;
}

void *statphr_freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
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
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t statphr_dumpFeatureVectorAndResult(uint64_t a1, uint64_t a2, char *__src)
{
  v12 = *MEMORY[0x277D85DE8];
  cstdlib_strncpy(__dst, __src, 0x100uLL);
  v5 = 0;
  __dst[255] = 0;
  do
  {
    v6 = cstdlib_strlen(*(a2 + v5));
    if (v6 + cstdlib_strlen(__dst) + 2 > 0xFF)
    {
      break;
    }

    cstdlib_strcat(__dst, " ");
    cstdlib_strcat(__dst, *(a2 + v5));
    v5 += 8;
  }

  while (v5 != 64);
  return log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v7, v8, v9, __dst);
}

uint64_t statphr_getIgtreeBrkStr(uint64_t a1, _BYTE *a2, size_t a3)
{
  v7 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v7);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "statphr_igtree", 1, 1, v7, 0, 0, a2, a3);
  }

  return result;
}

uint64_t statphr_readIGTree(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7)
{
  v15 = *MEMORY[0x277D85DE8];
  *a7 = 0;
  result = statphr_getIgtreeBrkStr(a5, v14, 0x100uLL);
  if ((result & 0x80000000) == 0)
  {
    result = igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, a6, 2, v14, "IGTR", 1031, 0);
    if ((result & 0x80000000) != 0)
    {
      result = 0;
      *a6 = 0;
    }

    else
    {
      *a7 = 1;
    }
  }

  return result;
}

uint64_t statphr_searchInIGTreeParamDefs(uint64_t a1, char *__s2, const char *a3)
{
  if (!*(a1 + 1336))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (!cstdlib_strcmp(*(*(a1 + 1328) + 16 * v6), __s2))
    {
      v8 = cstdlib_strstr(*(*(a1 + 1328) + 16 * v7 + 8), a3);
      if (v8)
      {
        break;
      }
    }

LABEL_4:
    v6 = v7 + 1;
    if (*(a1 + 1336) <= (v7 + 1))
    {
      return 0;
    }
  }

  v9 = v8;
  while (*(v9 - 1) != 32 || v9[cstdlib_strlen(a3)] != 32)
  {
    v9 = cstdlib_strstr(v9 + 1, a3);
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

uint64_t statphr_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v230 = *MEMORY[0x277D85DE8];
  v227 = 0;
  v228 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  __s1 = 0;
  v222 = 0;
  memset(v229, 0, sizeof(v229));
  v221 = 0;
  v220 = -1;
  __s = 0;
  v217 = 0;
  v216 = 0;
  v15 = paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v216) >= 0 && v216 == 0;
  v16 = (*(a2 + 104))(a3, a4, 1, 0, &v228);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = (*(a2 + 184))(a3, a4, v228, 0, &v228 + 2);
  if ((v17 & 0x80000000) == 0 && HIWORD(v228) == 1)
  {
    v17 = (*(a2 + 176))(a3, a4, v228, 0, &v224, &v227);
    if ((v17 & 0x80000000) == 0 && v227 >= 2u)
    {
      v18 = heap_Calloc(*(a1 + 8), 1, 32);
      if (!v18)
      {
        v17 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v19, v20, v21, v22, v185);
        return v17;
      }

      v23 = v18;
      v212 = v15;
      cstdlib_strcpy(v18, "");
      v24 = *(a1 + 8);
      v25 = cstdlib_strlen(v224);
      v26 = heap_Calloc(v24, 1, v25 + 1);
      v31 = v26;
      if (v26)
      {
        cstdlib_strcpy(v26, v224);
        v32 = (*(a2 + 104))(a3, a4, 2, v228, &v227 + 2);
        if ((v32 & 0x80000000) == 0)
        {
          v206 = a6;
          v210 = v31;
          v211 = v23;
          v213 = 0;
          v33 = -1;
          while (HIWORD(v227))
          {
            v34 = (*(a2 + 168))(a3, a4);
            if ((v34 & 0x80000000) != 0)
            {
              goto LABEL_27;
            }

            if (v225 <= 0xA && ((1 << v225) & 0x610) != 0)
            {
              v34 = (*(a2 + 168))(a3, a4, HIWORD(v227), 1, 1, &v222 + 2, &v227);
              if ((v34 & 0x80000000) != 0)
              {
                goto LABEL_27;
              }

              v36 = v213;
              if (HIWORD(v222) != v33)
              {
                v36 = v213 + 1;
              }

              v213 = v36;
              v33 = HIWORD(v222);
            }

            v34 = (*(a2 + 120))(a3, a4, HIWORD(v227), &v227 + 2);
            if ((v34 & 0x80000000) != 0)
            {
LABEL_27:
              v17 = v34;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
LABEL_28:
              v31 = v210;
              v42 = v213;
              goto LABEL_36;
            }
          }

          v205 = a7;
          v42 = v213;
          v38 = heap_Calloc(*(a1 + 8), 1, v213 << 6);
          if (!v38)
          {
            v17 = 2313166858;
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v48, v49, v50, v51, v185);
            v37 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            goto LABEL_36;
          }

          if (v213)
          {
            v52 = 0;
            do
            {
              inited = statphr_initFeatureVector(a1, (v38 + 8 * v52), 8u);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_130;
              }

              v52 += 8;
            }

            while (8 * v213 > v52);
          }

          inited = (*(a2 + 104))(a3, a4, 2, v228, &v227 + 2);
          if ((inited & 0x80000000) != 0)
          {
LABEL_130:
            v17 = inited;
            v37 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            goto LABEL_28;
          }

          v194 = 8 * v213;
          v203 = 0;
          v57 = 0;
          v207 = 0;
          v58 = -1;
          while (HIWORD(v227))
          {
            v59 = (*(a2 + 168))(a3, a4);
            if ((v59 & 0x80000000) != 0)
            {
              goto LABEL_126;
            }

            if (v225 - 9 < 2)
            {
              goto LABEL_67;
            }

            if (v225 != 6)
            {
              if (v225 != 4)
              {
                goto LABEL_125;
              }

LABEL_67:
              v59 = (*(a2 + 168))(a3, a4, HIWORD(v227), 1, 1, &v222 + 2, &v227);
              if ((v59 & 0x80000000) != 0)
              {
                goto LABEL_126;
              }

              if (HIWORD(v222) != v58)
              {
                v215 = 0;
                v214 = 0;
                HIWORD(v228) = 0;
                v17 = (*(a2 + 184))(a3, a4, HIWORD(v227), 14, &v228 + 2);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_132;
                }

                if (HIWORD(v228) != 1)
                {
                  goto LABEL_132;
                }

                v17 = (*(a2 + 176))(a3, a4, HIWORD(v227), 14, &__s1, &v227);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_132;
                }

                if (!hlp_NLUStrFind(__s1, "POS", &v215, &v214))
                {
                  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "statPHR: internal ERROR - found a WordRecord %d without POS (NLU=%s), bailing out", v60, v61, v62, HIWORD(v227));
LABEL_132:
                  v31 = v210;
                  v42 = v213;
                  v39 = v203;
LABEL_133:
                  v37 = 0;
LABEL_35:
                  v40 = 0;
                  v41 = 0;
                  goto LABEL_36;
                }

                if (v57 && !v207)
                {
                  v63 = 0;
                  v195 = (v38 + 8 * v57 - 64);
                  while (cstdlib_strcmp("pos", g_statphr_FeatureNames[v63]))
                  {
                    if (++v63 == 8)
                    {
                      v64 = 0;
                      goto LABEL_85;
                    }
                  }

                  v64 = *&v195[v63 * 8];
LABEL_85:
                  v65 = cstdlib_strstr(v64, "_BVB");
                  if (v65)
                  {
                    *v65 = 0;
                  }

                  v66 = statphr_setFeature(a1, "Lpos", (v38 + 8 * v57), v64);
                  if ((v66 & 0x80000000) != 0)
                  {
                    goto LABEL_131;
                  }

                  v66 = statphr_setNFeature(a1, "Rpos", v195, v215, v214);
                  if ((v66 & 0x80000000) != 0)
                  {
                    goto LABEL_131;
                  }
                }

                if (v57 >= 9u && !v207)
                {
                  v66 = statphr_setNFeature(a1, "RRpos", (v38 - 128 + 8 * v57), v215, v214);
                  if ((v66 & 0x80000000) != 0)
                  {
                    goto LABEL_131;
                  }
                }

                v67 = (v38 + 8 * v57);
                v66 = statphr_setNFeature(a1, "pos", v67, v215, v214);
                if ((v66 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }

                v198 = v57;
                if (HIWORD(v222) > v220 && __s)
                {
                  v68 = (v38 + 8 * v57);
                  v69 = __s[3];
                  __s[3] = 0;
                  statphr_setFeature(a1, "Lpos", v68, __s + 1);
                  v66 = statphr_setFeature(a1, "Lchunk", v68, __s + 1);
                  if ((v66 & 0x80000000) != 0)
                  {
                    goto LABEL_131;
                  }

                  __s[3] = v69;
                  if (v57 >= 9u)
                  {
                    v70 = __s[3];
                    __s[3] = 0;
                    v66 = statphr_setFeature(a1, "Rpos", v68 - 16, __s + 1);
                    if ((v66 & 0x80000000) != 0)
                    {
                      goto LABEL_131;
                    }

                    __s[3] = v70;
                    if (v57 >= 0x11u)
                    {
                      v71 = __s[3];
                      __s[3] = 0;
                      v66 = statphr_setFeature(a1, "RRpos", v68 - 24, __s + 1);
                      if ((v66 & 0x80000000) != 0)
                      {
                        goto LABEL_131;
                      }

                      __s[3] = v71;
                    }
                  }

                  v220 = -1;
                  __s = 0;
                  v67 = (v38 + 8 * v57);
                }

                v66 = (*(a2 + 168))(a3, a4, HIWORD(v227), 2, 1, &v222, &v227);
                if ((v66 & 0x80000000) != 0 || (v66 = statphr_set_WBND_feature(a1, v67, v224, HIWORD(v222), 1), (v66 & 0x80000000) != 0) || (v196 = v67, v66 = statphr_set_WBND_feature(a1, v67, v224, v222, 0), (v66 & 0x80000000) != 0))
                {
LABEL_131:
                  v17 = v66;
                  goto LABEL_132;
                }

                v72 = v222 - HIWORD(v222);
                v73 = heap_Realloc(*(a1 + 8), v203, (v222 - HIWORD(v222)) + 1);
                if (!v73)
                {
                  v39 = v203;
LABEL_305:
                  v17 = 2313166858;
                  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v74, v75, v76, v77, v185);
                  v31 = v210;
                  v42 = v213;
                  goto LABEL_133;
                }

                v78 = HIWORD(v222);
                if (HIWORD(v222) >= v222)
                {
                  v85 = 0;
                  v207 = 0;
                  v86 = v73;
                  v87 = v196;
                }

                else
                {
                  v191 = a5;
                  v39 = v73;
                  v207 = 0;
                  v79 = 0;
                  v204 = v72;
                  do
                  {
                    v80 = v78;
                    if (cstdlib_strchr(",:;.?!'", v224[v78]))
                    {
                      v81 = cstdlib_strchr(",:;.?!", v224[v80]);
                      v82 = v207;
                      if (v81)
                      {
                        v82 = 1;
                      }

                      v207 = v82;
                      NextUtf8Offset = 1;
                    }

                    else
                    {
                      NextUtf8Offset = utf8_GetNextUtf8Offset(&v224[v80], 0);
                      if (utf8_ToLower(v224, v80, __src))
                      {
                        if (cstdlib_strlen(__src) <= NextUtf8Offset)
                        {
                          cstdlib_strcpy(&v39[v79], __src);
                          v79 = cstdlib_strlen(v39);
                          v23 = v211;
                        }

                        else
                        {
                          v204 += 5;
                          v84 = heap_Realloc(*(a1 + 8), v39, v204 + 1);
                          v23 = v211;
                          if (!v84)
                          {
                            goto LABEL_305;
                          }

                          v39 = v84;
                        }
                      }

                      else
                      {
                        cstdlib_strncpy(&v39[v79], &v224[v80], NextUtf8Offset);
                        v79 += NextUtf8Offset;
                      }
                    }

                    v78 = v80 + NextUtf8Offset;
                  }

                  while (v222 > (v80 + NextUtf8Offset));
                  v85 = v79;
                  v86 = v39;
                  v87 = v196;
                  a5 = v191;
                }

                v86[v85] = 0;
                if (*v86)
                {
                  v88 = v86;
                  v89 = statphr_searchInIGTreeParamDefs(a5, "orthtokeep", v86);
                  v86 = v88;
                  if (v89)
                  {
                    v90 = statphr_setFeature(a1, "orth", v87, v88);
                    v86 = v88;
                    if ((v90 & 0x80000000) != 0)
                    {
                      v17 = v90;
                      v31 = v210;
                      v42 = v213;
                      v39 = v86;
                      goto LABEL_133;
                    }
                  }
                }

                v203 = v86;
                v57 = v198 + 8;
                v58 = HIWORD(v222);
              }

              goto LABEL_125;
            }

            v59 = (*(a2 + 168))(a3, a4, HIWORD(v227), 2, 1, &v220, &v227);
            if ((v59 & 0x80000000) != 0 || (v59 = (*(a2 + 176))(a3, a4, HIWORD(v227), 4, &__s, &v227), (v59 & 0x80000000) != 0))
            {
LABEL_126:
              v17 = v59;
              v37 = 0;
              v40 = 0;
              v41 = 0;
              goto LABEL_127;
            }

            if (cstdlib_strlen(__s) < 4 || !cstdlib_strcmp(__s, "_PR_"))
            {
              __s = 0;
              v220 = -1;
            }

LABEL_125:
            v59 = (*(a2 + 120))(a3, a4, HIWORD(v227), &v227 + 2);
            if ((v59 & 0x80000000) != 0)
            {
              goto LABEL_126;
            }
          }

          log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Predicting PHR with IGtree", v54, v55, v56, v185);
          v17 = (*(a2 + 104))(a3, a4, 2, v228, &v227 + 2);
          if ((v17 & 0x80000000) != 0)
          {
            v37 = 0;
            v40 = 0;
            v41 = 0;
LABEL_127:
            v31 = v210;
          }

          else
          {
            v91 = HIWORD(v227);
            v31 = v210;
            if (HIWORD(v227))
            {
              v197 = 0;
              v192 = 0;
              v193 = 0;
              v189 = 0;
              v190 = 0;
              v199 = 0;
              __s2 = 0;
              v188 = 0;
              v208 = -1;
              while (1)
              {
                v92 = (*(a2 + 168))(a3, a4, v91, 0, 1, &v225, &v227);
                if ((v92 & 0x80000000) != 0)
                {
LABEL_306:
                  v17 = v92;
                  goto LABEL_314;
                }

                if (v225 > 0xA || ((1 << v225) & 0x610) == 0)
                {
                  goto LABEL_298;
                }

                v92 = (*(a2 + 168))(a3, a4, HIWORD(v227), 1, 1, &v222 + 2, &v227);
                if ((v92 & 0x80000000) != 0)
                {
                  goto LABEL_306;
                }

                v92 = (*(a2 + 168))(a3, a4, HIWORD(v227), 2, 1, &v222, &v227);
                if ((v92 & 0x80000000) != 0)
                {
                  goto LABEL_306;
                }

                cstdlib_strncpy(v31, &v224[HIWORD(v222)], v222 - HIWORD(v222));
                v31[v222 - HIWORD(v222)] = 0;
                if (HIWORD(v222) != v208)
                {
                  break;
                }

LABEL_282:
                if (!v221)
                {
                  goto LABEL_298;
                }

                v116 = (*(a2 + 176))(a3, a4, HIWORD(v227), 14, &__s1, &v227);
                if ((v116 & 0x80000000) != 0)
                {
                  goto LABEL_308;
                }

                v162 = *(a1 + 8);
                if (v199)
                {
                  v163 = cstdlib_strlen(v23);
                  v164 = v163 + cstdlib_strlen(__s1) + 8;
                  v165 = v197;
                  v166 = heap_Realloc(v162, v197, v164);
                  if (!v166)
                  {
                    goto LABEL_316;
                  }

                  v171 = v166;
                  cstdlib_strcpy(v166, __s1);
                  v172 = v171;
                  v173 = v23;
                }

                else
                {
                  v174 = cstdlib_strlen(v221);
                  v175 = v174 + cstdlib_strlen(__s1) + 8;
                  v165 = v197;
                  v176 = heap_Realloc(v162, v197, v175);
                  if (!v176)
                  {
LABEL_316:
                    v41 = v165;
                    v17 = 2313166858;
                    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v167, v168, v169, v170, v186);
                    v31 = v210;
                    v42 = v213;
                    v39 = v203;
                    v37 = v188;
                    v40 = v193;
                    goto LABEL_36;
                  }

                  v171 = v176;
                  cstdlib_strcpy(v176, __s1);
                  v173 = v221;
                  v172 = v171;
                }

                v177 = hlp_NLUStrSet(v172, "PHR", v173);
                v197 = v171;
                if (HIDWORD(v190))
                {
                  v181 = 66;
LABEL_293:
                  v177[4] = v181;
                  goto LABEL_294;
                }

                if (v190)
                {
                  v181 = 73;
                  goto LABEL_293;
                }

LABEL_294:
                if (!v199)
                {
                  cstdlib_strcpy(v23, v221);
                }

                log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : word=%s NLU=%s", v178, v179, v180, v210);
                v182 = *(a2 + 160);
                v183 = HIWORD(v227);
                v184 = cstdlib_strlen(v197);
                v116 = v182(a3, a4, v183, 14, (v184 + 1), v197, &v226);
                if ((v116 & 0x80000000) != 0)
                {
LABEL_308:
                  v17 = v116;
                  goto LABEL_313;
                }

                v31 = v210;
LABEL_298:
                v17 = (*(a2 + 120))(a3, a4, HIWORD(v227), &v227 + 2);
                if ((v17 & 0x80000000) == 0)
                {
                  v91 = HIWORD(v227);
                  if (HIWORD(v227))
                  {
                    continue;
                  }
                }

                goto LABEL_314;
              }

              v94 = 0;
              v209 = (v38 + 8 * v192);
              while (cstdlib_strcmp("pos", g_statphr_FeatureNames[v94]))
              {
                if (++v94 == 8)
                {
                  v95 = 0;
                  goto LABEL_150;
                }
              }

              v95 = v209[v94];
LABEL_150:
              if (statphr_searchInIGTreeParamDefs(a5, "preppos", v95))
              {
                v96 = v192 + 8;
                v97 = v192 + 40;
                if (v97 > (v192 + 8) && v194 > (v192 + 8))
                {
                  if (v97 >= v194)
                  {
                    v97 = 8 * v213;
                  }

                  v200 = v97;
                  do
                  {
                    v98 = 0;
                    v99 = v38 + 8 * v96;
                    while (cstdlib_strcmp("Lpos", g_statphr_FeatureNames[v98]))
                    {
                      if (++v98 == 8)
                      {
                        v100 = 0;
                        goto LABEL_161;
                      }
                    }

                    v100 = *(v99 + v98 * 8);
LABEL_161:
                    if (cstdlib_strcmp(v100, "_"))
                    {
                      v101 = 0;
                      while (cstdlib_strcmp("pos", g_statphr_FeatureNames[v101]))
                      {
                        if (++v101 == 8)
                        {
                          v102 = 0;
                          goto LABEL_168;
                        }
                      }

                      v102 = *(v99 + v101 * 8);
LABEL_168:
                      v23 = v211;
                      if (statphr_searchInIGTreeParamDefs(a5, "verbpos", v102))
                      {
                        v103 = *(a1 + 8);
                        v104 = cstdlib_strlen(v95);
                        v105 = heap_Realloc(v103, v193, (v104 + 5));
                        if (!v105)
                        {
                          v17 = 2313166858;
                          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v106, v107, v108, v109, v186);
                          goto LABEL_313;
                        }

                        v110 = v105;
                        cstdlib_strcpy(v105, v95);
                        cstdlib_strcat(v110, "_BVB");
                        v111 = statphr_setFeature(a1, "pos", v209, v110);
                        if ((v111 & 0x80000000) != 0)
                        {
                          v17 = v111;
                          v40 = v110;
                          v31 = v210;
                          v42 = v213;
                          v39 = v203;
                          v37 = v188;
                          goto LABEL_315;
                        }

                        v193 = v110;
                        v96 = 8 * v213;
                      }

                      else
                      {
                        v96 += 8;
                      }
                    }

                    else
                    {
                      v96 = 8 * v213;
                      v23 = v211;
                    }
                  }

                  while (v200 > v96);
                }
              }

              if (v221)
              {
                v112 = 0;
                while (cstdlib_strcmp("Lchunk", g_statphr_FeatureNames[v112]))
                {
                  if (++v112 == 8)
                  {
                    v113 = 0;
                    goto LABEL_180;
                  }
                }

                v113 = v209[v112];
LABEL_180:
                if (!cstdlib_strcmp(v113, "_"))
                {
                  v114 = 0;
                  while (cstdlib_strcmp("Lpos", g_statphr_FeatureNames[v114]))
                  {
                    if (++v114 == 8)
                    {
                      v115 = 0;
                      goto LABEL_186;
                    }
                  }

                  v115 = v209[v114];
LABEL_186:
                  v23 = v211;
                  if (cstdlib_strcmp(v115, "_"))
                  {
                    statphr_setFeature(a1, "Lchunk", v209, v221);
                  }
                }
              }

              if (v206 == 1)
              {
                v116 = (*(a2 + 176))(a3, a4, HIWORD(v227), 14, &__s1, &v227);
                if ((v116 & 0x80000000) != 0)
                {
                  goto LABEL_308;
                }

                if (__s1)
                {
                  v117 = v212;
                }

                else
                {
                  v117 = 0;
                }

                if (v117)
                {
                  v118 = cstdlib_strstr(__s1, "COMP:");
                  if (v118)
                  {
                    v119 = HIDWORD(v189);
                    if (v118[5] == 66)
                    {
                      v119 = 1;
                    }

                    LODWORD(v189) = v118[5] == 66;
                    HIDWORD(v189) = v119;
                    v201 = 1;
                    goto LABEL_200;
                  }
                }

                if (!v212)
                {
                  if (__s1)
                  {
                    v146 = cstdlib_strstr(__s1, "S_COMP:");
                    v201 = v146 != 0;
                    if (v146)
                    {
                      v147 = 1;
                    }

                    else
                    {
                      v147 = HIDWORD(v189);
                    }

                    v148 = v189;
                    if (v146)
                    {
                      v148 = 1;
                    }

                    v189 = __PAIR64__(v147, v148);
                    if (__s1)
                    {
                      v149 = cstdlib_strstr(__s1, "I_COMP:");
                      if (v149)
                      {
                        v150 = 1;
                      }

                      else
                      {
                        v150 = HIDWORD(v189);
                      }

                      v151 = v189;
                      if (v149)
                      {
                        v151 = 0;
                      }

                      v189 = __PAIR64__(v150, v151);
                      v152 = v201;
                      if (v149)
                      {
                        v152 = 1;
                      }

                      v201 = v152;
                      if (__s1)
                      {
                        v153 = cstdlib_strstr(__s1, "E_COMP:");
                        v154 = v189;
                        if (v153)
                        {
                          v154 = 0;
                        }

                        LODWORD(v189) = v154;
                        v155 = v201;
                        if (v153)
                        {
                          v155 = 1;
                        }

                        v201 = v155;
                      }
                    }
                  }

                  else
                  {
                    v201 = 0;
                  }

LABEL_200:
                  if (*(a5 + 1296) >= 2u)
                  {
                    v120 = 0;
                    do
                    {
                      v121 = 0;
                      v122 = *(*(a5 + 1312) + 8 * v120);
                      while (cstdlib_strcmp(v122, g_statphr_FeatureNames[v121]))
                      {
                        if (++v121 == 8)
                        {
                          v126 = 0;
                          goto LABEL_207;
                        }
                      }

                      v126 = v209[v121];
LABEL_207:
                      *(v229 + v120) = v126;
                      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Feature %s is %s", v123, v124, v125, *(*(a5 + 1312) + 8 * v120++));
                    }

                    while (*(a5 + 1296) - 1 > v120);
                  }

                  v127 = igtree_Process(a5, v229, &v221);
                  if ((v127 & 0x80000000) != 0)
                  {
LABEL_311:
                    v17 = v127;
                    goto LABEL_312;
                  }

                  statphr_dumpFeatureVectorAndResult(a1, v209, v221);
                  v131 = *v221;
                  if (v197)
                  {
                    if (v131 != 73 || cstdlib_strstr(v197, v221 + 1))
                    {
                      goto LABEL_212;
                    }
                  }

                  else if (v131 != 73)
                  {
LABEL_212:
                    HIDWORD(v190) = 0;
                    v132 = 1;
                    goto LABEL_215;
                  }

                  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Forcing consistency of IOB tags", v128, v129, v130, v186);
                  v132 = 0;
                  HIDWORD(v190) = 1;
LABEL_215:
                  if (!v206)
                  {
                    v202 = v132;
                    v127 = (*(a2 + 176))(a3, a4, HIWORD(v227), 5, &v217, &v227);
                    if ((v127 & 0x80000000) != 0)
                    {
                      goto LABEL_311;
                    }

                    LODWORD(v190) = 0;
                    if (v197 && __s2)
                    {
                      if (cstdlib_strstr(v217, __s2) && *v221 != 73 && (v135 = cstdlib_strstr(v197, "PHR:"), (v221 = v135) != 0))
                      {
                        v221 = v135 + 4;
                        v136 = v135[4];
                        v137 = *(a1 + 8);
                        v138 = cstdlib_strlen(v135 + 4);
                        v139 = heap_Realloc(v137, v188, (v138 + 1));
                        if (!v139)
                        {
                          v17 = 2313166858;
                          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v140, v141, v142, v143, v186);
LABEL_312:
                          v23 = v211;
LABEL_313:
                          v31 = v210;
LABEL_314:
                          v42 = v213;
                          v39 = v203;
                          v37 = v188;
                          v40 = v193;
LABEL_315:
                          v41 = v197;
LABEL_36:
                          heap_Free(*(a1 + 8), v23);
                          if (v31)
                          {
                            heap_Free(*(a1 + 8), v31);
                          }

                          if (v37)
                          {
                            heap_Free(*(a1 + 8), v37);
                          }

                          if (v41)
                          {
                            heap_Free(*(a1 + 8), v41);
                          }

                          if (v40)
                          {
                            heap_Free(*(a1 + 8), v40);
                          }

                          if (v39)
                          {
                            heap_Free(*(a1 + 8), v39);
                          }

                          if (v38)
                          {
                            if (v42)
                            {
                              v44 = 0;
                              v45 = 8 * v42;
                              do
                              {
                                for (i = 0; i != 64; i += 8)
                                {
                                  v47 = *(v38 + 8 * v44 + i);
                                  if (v47)
                                  {
                                    heap_Free(*(a1 + 8), v47);
                                  }
                                }

                                v44 += 8;
                              }

                              while (v45 > v44);
                            }

                            heap_Free(*(a1 + 8), v38);
                          }

                          return v17;
                        }

                        v144 = v139;
                        LODWORD(v190) = v136 == 66;
                        cstdlib_strcpy(v139, v221);
                        v221 = v144;
                        v188 = v144;
                      }

                      else
                      {
                        LODWORD(v190) = 0;
                      }
                    }

                    __s2 = cstdlib_strstr(v217, ",COMP");
                    v31 = v210;
                    v23 = v211;
                    v145 = v205;
                    v132 = v202;
                    goto LABEL_258;
                  }

                  if (!v201)
                  {
                    LODWORD(v190) = 0;
                    v189 = 0;
                    v31 = v210;
                    v23 = v211;
                    v145 = v205;
LABEL_258:
                    if (!v145)
                    {
                      goto LABEL_266;
                    }

                    if (!v132)
                    {
                      HIDWORD(v190) = 1;
                      goto LABEL_265;
                    }

                    v133 = v221;
                    goto LABEL_261;
                  }

                  v133 = v221;
                  v134 = *v221;
                  if (v134 == 66)
                  {
                    if (HIDWORD(v189) != 1)
                    {
                      HIDWORD(v189) = 0;
                      LODWORD(v190) = 0;
LABEL_255:
                      v31 = v210;
                      v23 = v211;
                      v145 = v205;
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    if (!HIDWORD(v190))
                    {
                      v190 = 0;
                      v199 = 0;
                      v31 = v210;
                      v23 = v211;
                      if (!v205)
                      {
                        goto LABEL_281;
                      }

LABEL_261:
                      if (!v133)
                      {
                        v199 = 0;
                        HIDWORD(v190) = 0;
                        goto LABEL_281;
                      }

                      HIDWORD(v190) = 0;
                      v199 = 0;
                      if (*v133 != 66)
                      {
                        goto LABEL_281;
                      }

LABEL_265:
                      if (!statphr_isWBND(v209))
                      {
                        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : Force PHR from %s to I-* as it bisects eojeol", v156, v157, v158, v221);
                        v199 = 0;
                        v190 = 1;
                        goto LABEL_281;
                      }

LABEL_266:
                      v199 = 0;
LABEL_281:
                      v192 += 8;
                      v208 = HIWORD(v222);
                      goto LABEL_282;
                    }

                    if (v134 != 73 || HIDWORD(v189) != 1)
                    {
                      v199 = 0;
                      v190 = 0x100000000;
                      v31 = v210;
                      v23 = v211;
                      if (!v205)
                      {
                        goto LABEL_281;
                      }

                      goto LABEL_265;
                    }
                  }

                  if (v189)
                  {
                    LODWORD(v190) = 0;
                  }

                  else
                  {
                    if (cstdlib_strcmp("O", v211))
                    {
                      *v211 = 73;
                      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "STATPHR : Force PHR to %s as bisects compound", v159, v160, v161, v211);
                      LODWORD(v189) = 0;
                      if (HIDWORD(v190))
                      {
                        LODWORD(v190) = 0;
                        HIDWORD(v190) = *v221 != 73;
                      }

                      else
                      {
                        v190 = 0;
                      }

                      HIDWORD(v189) = 1;
                      v199 = 1;
                      v31 = v210;
                      v23 = v211;
                      goto LABEL_281;
                    }

                    LODWORD(v190) = 0;
                    LODWORD(v189) = 0;
                  }

                  HIDWORD(v189) = 1;
                  goto LABEL_255;
                }
              }

              v201 = 0;
              goto LABEL_200;
            }

            v37 = 0;
            v40 = 0;
            v41 = 0;
          }

          v42 = v213;
          v39 = v203;
          goto LABEL_36;
        }

        v17 = v32;
      }

      else
      {
        v17 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v27, v28, v29, v30, v185);
      }

      v37 = 0;
      v42 = 0;
      v38 = 0;
      v39 = 0;
      goto LABEL_35;
    }
  }

  return v17;
}

uint64_t statphr_set_WBND_feature(uint64_t a1, uint64_t *a2, char *__s, unsigned int a4, int a5)
{
  if (a4)
  {
    v8 = a5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (a4 && (v10 = a4, cstdlib_strlen(__s) > a4) && __s[(v10 - v9)] != 32)
  {
    v12 = "0";
  }

  else
  {
    v12 = "1";
  }

  if (a5)
  {
    v13 = "Lwbnd";
  }

  else
  {
    v13 = "Rwbnd";
  }

  return statphr_setFeature(a1, v13, a2, v12);
}

BOOL statphr_isWBND(uint64_t a1)
{
  v2 = 0;
  while (cstdlib_strcmp("Lwbnd", g_statphr_FeatureNames[v2]))
  {
    if (++v2 == 8)
    {
      return 0;
    }
  }

  v3 = *(a1 + v2 * 8);
  return v3 && !cstdlib_strcmp(v3, "1");
}

uint64_t statphr_MorphemeProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  __s = 0;
  v29 = 0;
  v8 = (*(a2 + 104))(a3, a4, 1, 0, &v33);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a2 + 184))(a3, a4, v33, 0, &v33 + 2);
  if ((v9 & 0x80000000) == 0 && HIWORD(v33) == 1)
  {
    v9 = (*(a2 + 176))(a3, a4, v33, 0, &v29, &v32);
    if ((v9 & 0x80000000) == 0 && v32 >= 2u)
    {
      v9 = (*(a2 + 104))(a3, a4, 2, v33, &v32 + 2);
      if ((v9 & 0x80000000) == 0)
      {
        v10 = HIWORD(v32);
        if (HIWORD(v32))
        {
          v11 = 0;
          while (1)
          {
            v12 = (*(a2 + 168))(a3, a4, v10, 0, 1, &v30, &v32);
            if ((v12 & 0x80000000) != 0)
            {
LABEL_31:
              v9 = v12;
              goto LABEL_34;
            }

            if (v30 <= 0xA && ((1 << v30) & 0x610) != 0)
            {
              v9 = (*(a2 + 184))(a3, a4, HIWORD(v32), 14, &v33 + 2);
              if ((v9 & 0x80000000) != 0 || HIWORD(v33) != 1)
              {
                goto LABEL_34;
              }

              v12 = (*(a2 + 176))(a3, a4, HIWORD(v32), 14, &__s, &v32);
              if ((v12 & 0x80000000) != 0)
              {
                goto LABEL_31;
              }

              v14 = *(a1 + 8);
              v15 = cstdlib_strlen(__s);
              v16 = heap_Realloc(v14, v11, v15 + 10);
              if (!v16)
              {
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v17, v18, v19, v20, __s);
                v9 = 2313166858;
LABEL_34:
                v21 = v11;
                if (!v11)
                {
                  return v9;
                }

LABEL_35:
                heap_Free(*(a1 + 8), v21);
                return v9;
              }

              v21 = v16;
              cstdlib_strcpy(v16, __s);
              v22 = (*(a2 + 168))(a3, a4, HIWORD(v32), 1, 1, &v31, &v32);
              if ((v22 & 0x80000000) != 0 || (!v31 ? (v23 = "PHR:B-WP") : *(v29 + v31 - 1) != 95 ? (v23 = "PHR:B-WP") : (v23 = "PHR:I-WP"), hlp_NLUStrJoin(v21, v23), v24 = *(a2 + 160), v25 = HIWORD(v32), v26 = cstdlib_strlen(v21), v22 = v24(a3, a4, v25, 14, (v26 + 1), v21, &v31 + 2), (v22 & 0x80000000) != 0))
              {
                v9 = v22;
                goto LABEL_35;
              }

              v11 = v21;
            }

            v9 = (*(a2 + 120))(a3, a4, HIWORD(v32), &v32 + 2);
            if ((v9 & 0x80000000) == 0)
            {
              v10 = HIWORD(v32);
              if (HIWORD(v32))
              {
                continue;
              }
            }

            goto LABEL_34;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t statcomp_setParams(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "statcompdetailtrace", &v5) & 0x80000000) == 0)
  {
    *(a2 + 8) = v5;
  }

  if ((paramc_ParamGetInt(*(a1 + 40), "statcompsrctrace", &v5) & 0x80000000) == 0)
  {
    *(a2 + 10) = v5;
  }

  *(a2 + 12) = 1;
  if ((paramc_ParamGetInt(*(a1 + 40), "statcompwidescope", &v5) & 0x80000000) == 0 && !v5)
  {
    *(a2 + 12) = 0;
  }

  return 0;
}

uint64_t statcomp_rules_unload(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 272);
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    *(a1 + 272) = 0;
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v4);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    *(a1 + 288) = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 312);
  if (v6)
  {
    heap_Free(*(v2 + 8), v6);
    *(a1 + 312) = 0;
  }

  v7 = *(a1 + 328);
  if (v7)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v7);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    *(a1 + 328) = 0;
  }

  v8 = *(a1 + 232);
  if (v8)
  {
    heap_Free(*(v2 + 8), v8);
    *(a1 + 232) = 0;
  }

  v9 = *(a1 + 248);
  if (v9)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v9);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    *(a1 + 248) = 0;
  }

  if (*(a1 + 72))
  {
    v10 = 0;
    v11 = 104;
    do
    {
      v12 = *(a1 + 64);
      if (v12)
      {
        heap_Free(*(v2 + 8), *(v12 + v11 - 96));
        v13 = *(a1 + 64) + v11;
        *(v13 - 96) = 0;
        freeRULEREGEXES(v2, v13 - 80);
        freeRULEREGEXES(v2, *(a1 + 64) + v11 - 64);
        v14 = *(a1 + 64);
        v15 = *(v14 + v11 - 48);
        if (v15 && *(v14 + v11 - 40))
        {
          heap_Free(*(v2 + 8), v15);
          v14 = *(a1 + 64);
          *(v14 + v11 - 48) = 0;
        }

        freeRULEREGEXES(v2, v14 + v11 - 32);
        heap_Free(*(v2 + 8), *(*(a1 + 64) + v11 - 16));
        v16 = (*(a1 + 64) + v11);
        *(v16 - 2) = 0;
        heap_Free(*(v2 + 8), *v16);
        *(*(a1 + 64) + v11) = 0;
      }

      if (*(a1 + 88))
      {
        heap_Free(*(v2 + 8), *(a1 + 80));
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
      }

      if (*(a1 + 104))
      {
        heap_Free(*(v2 + 8), *(a1 + 96));
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
      }

      ++v10;
      v11 += 120;
    }

    while (v10 < *(a1 + 72));
    if (*(a1 + 72))
    {
      heap_Free(*(v2 + 8), *(a1 + 64));
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    heap_Free(*(v2 + 8), v17);
    *(a1 + 32) = 0;
  }

  *(a1 + 40) = 0;
  v18 = *(a1 + 48);
  if (v18)
  {
    if (*(a1 + 56))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        heap_Free(*(v2 + 8), *(v18 + v19));
        v18 = *(a1 + 48);
        v21 = v18 + v19;
        *v21 = 0;
        *(v21 + 8) = 0;
        ++v20;
        v19 += 16;
      }

      while (v20 < *(a1 + 56));
    }

    heap_Free(*(v2 + 8), v18);
    *(a1 + 48) = 0;
  }

  *(a1 + 56) = 0;
  v22 = *(a1 + 340);
  if (*(a1 + 340))
  {
    v23 = 0;
    do
    {
      v24 = *(a1 + 344);
      if (v24)
      {
        heap_Free(*(v2 + 8), *(v24 + 8 * v23));
        *(*(a1 + 344) + 8 * v23) = 0;
        v22 = *(a1 + 340);
      }

      ++v23;
    }

    while (v23 < v22);
    heap_Free(*(v2 + 8), *(a1 + 344));
    *(a1 + 344) = 0;
    *(a1 + 340) = 0;
  }

  v25 = *(a1 + 352);
  if (v25)
  {
    heap_Free(*(v2 + 8), v25);
    *(a1 + 352) = 0;
  }

  v26 = *(a1 + 360);
  if (v26)
  {
    heap_Free(*(v2 + 8), v26);
    *(a1 + 360) = 0;
  }

  if (*(a1 + 136))
  {
    v27 = 0;
    do
    {
      v28 = *(a1 + 152);
      if (v28)
      {
        heap_Free(*(v2 + 8), *(v28 + 8 * v27));
        *(*(a1 + 152) + 8 * v27) = 0;
      }

      v29 = *(a1 + 160);
      if (v29)
      {
        v30 = *(v29 + 8 * v27);
        if (v30)
        {
          v5 = igtree_Deinit(v2, v30);
          if ((v5 & 0x80000000) != 0)
          {
            return v5;
          }

          heap_Free(*(v2 + 8), *(*(a1 + 160) + 8 * v27));
          *(*(a1 + 160) + 8 * v27) = 0;
        }
      }

      v31 = *(a1 + 168);
      if (v31)
      {
        v32 = *(v31 + 8 * v27);
        if (v32)
        {
          if (*(v32 + 8))
          {
            v33 = 0;
            do
            {
              v34 = *v32;
              if (v34)
              {
                heap_Free(*(v2 + 8), *(v34 + 8 * v33));
                *(**(*(a1 + 168) + 8 * v27) + 8 * v33) = 0;
                v31 = *(a1 + 168);
              }

              ++v33;
              v32 = *(v31 + 8 * v27);
            }

            while (v33 < *(v32 + 8));
          }

          heap_Free(*(v2 + 8), *v32);
          v35 = *(a1 + 168);
          **(v35 + 8 * v27) = 0;
          heap_Free(*(v2 + 8), *(v35 + 8 * v27));
          *(*(a1 + 168) + 8 * v27) = 0;
        }
      }

      v36 = *(a1 + 176);
      if (v36)
      {
        v37 = *(v36 + 8 * v27);
        if (v37)
        {
          heap_Free(*(v2 + 8), v37);
          *(*(a1 + 176) + 8 * v27) = 0;
        }
      }

      v38 = *(a1 + 184);
      if (v38)
      {
        v39 = *(v38 + 8 * v27);
        if (v39)
        {
          heap_Free(*(v2 + 8), *v39);
          v40 = *(a1 + 184);
          **(v40 + 8 * v27) = 0;
          heap_Free(*(v2 + 8), *(v40 + 8 * v27));
          *(*(a1 + 184) + 8 * v27) = 0;
        }
      }

      ++v27;
    }

    while (v27 < *(a1 + 136));
    heap_Free(*(v2 + 8), *(a1 + 144));
    *(a1 + 144) = 0;
    heap_Free(*(v2 + 8), *(a1 + 152));
    *(a1 + 152) = 0;
    heap_Free(*(v2 + 8), *(a1 + 160));
    *(a1 + 160) = 0;
    heap_Free(*(v2 + 8), *(a1 + 168));
    *(a1 + 168) = 0;
    heap_Free(*(v2 + 8), *(a1 + 176));
    *(a1 + 176) = 0;
    heap_Free(*(v2 + 8), *(a1 + 184));
    *(a1 + 184) = 0;
    *(a1 + 136) = 0;
  }

  v41 = *(a1 + 128);
  if (*(a1 + 128))
  {
    v42 = 0;
    v43 = 0;
    v44 = *(a1 + 120);
    v45 = v44;
    do
    {
      if (v45)
      {
        heap_Free(*(v2 + 8), *(v45 + v42));
        v46 = (*(a1 + 120) + v42);
        *v46 = 0;
        heap_Free(*(v2 + 8), v46[1]);
        v44 = *(a1 + 120);
        *(v44 + v42 + 8) = 0;
        v41 = *(a1 + 128);
        v45 = v44;
      }

      ++v43;
      v42 += 16;
    }

    while (v43 < v41);
    *(a1 + 128) = 0;
    heap_Free(*(v2 + 8), v44);
    *(a1 + 120) = 0;
  }

  return v5;
}

void *freeRULEREGEXES(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v4 = result;
      if (*(a2 + 8))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = *a2;
          v8 = *(*a2 + v5);
          if (v8)
          {
            if (*(v8 + 8))
            {
              heap_Free(v4[1], *v8);
              *v8 = 0;
              v8 = *(v7 + v5);
            }

            heap_Free(v4[1], v8);
            *(v7 + v5) = 0;
          }

          v9 = v7 + v5;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v10 + 8))
            {
              heap_Free(v4[1], *v10);
              *v10 = 0;
              v10 = *(v9 + 8);
            }

            heap_Free(v4[1], v10);
            *(v9 + 8) = 0;
          }

          v11 = *(v9 + 16);
          if (v11)
          {
            if (*(v11 + 8))
            {
              heap_Free(v4[1], *v11);
              *v11 = 0;
              v11 = *(v9 + 16);
            }

            heap_Free(v4[1], v11);
            *(v9 + 16) = 0;
          }

          ++v6;
          v5 += 24;
        }

        while (v6 < *(a2 + 8));
        v3 = *a2;
      }

      result = heap_Free(v4[1], v3);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t statcomp_rules_load(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v229 = *MEMORY[0x277D85DE8];
  v224 = 0;
  v223 = 0;
  v221 = 0;
  *v222 = 0;
  v219 = 0;
  __src = 0;
  memset(v227, 0, sizeof(v227));
  *a4 = a3;
  *(a4 + 338) = 5;
  log_OutText(*(a3 + 32), "FE_POS", 5, 0, "loading StatCOMP rules", a6, a7, a8, 0);
  __s = 0;
  memset(__dst, 0, sizeof(__dst));
  *__s2 = 0;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v215 = a6;
  v216 = a7;
  v16 = 0;
  if (cstdlib_strlen(__s))
  {
    do
    {
      v17 = v16;
      __s2[v16] = cstdlib_tolower(__s[v16]);
      ++v16;
      v18 = cstdlib_strlen(__s);
    }

    while (v17 <= 1 && v16 < v18);
  }

  v217 = a1;
  v218 = a2;
  v214 = a5;
  __s2[v16] = 0;
  if (cstdlib_strcmp(__s, __s2))
  {
    v19 = __s2;
    Str = paramc_ParamSetStr(*(a3 + 40), "langcode", __s2);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    __s = __s2;
  }

  else
  {
    v19 = __s;
  }

  cstdlib_strcpy(__dst, v19);
  cstdlib_strcat(__dst, "/");
  cstdlib_strcat(__dst, "statcomp");
  Str = brokeraux_ComposeBrokerString(a3, __dst, 0, 1, __s, 0, 0, v227, 0x80uLL);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = brk_DataOpenEx(*(a3 + 24), v227, 1, &v219);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = brk_DataClose(*(a3 + 24), v219);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = ssftriff_reader_ObjOpen(v217, a2, 0, v227, "SCMP", 1031, &v224);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v212 = (a4 + 256);
  v213 = (a4 + 296);
  v20 = "CFIG";
  do
  {
    LODWORD(v28) = ssftriff_reader_OpenChunk(v224, v222, &v221, &__src);
    if ((v28 & 0x80000000) != 0)
    {
      break;
    }

    if (!cstdlib_strcmp(v20, v222))
    {
      v44 = __src;
      cstdlib_memcpy((a4 + 16), __src, 2uLL);
      cstdlib_memcpy((a4 + 18), v44 + 2, 2uLL);
      cstdlib_memcpy((a4 + 20), v44 + 4, 2uLL);
LABEL_30:
      LODWORD(v28) = 0;
      goto LABEL_92;
    }

    if (!cstdlib_strcmp("SSET", v222))
    {
      v45 = __src;
      cstdlib_memcpy((a4 + 40), __src, 2uLL);
      v46 = heap_Calloc(*(*a4 + 8), 1, (8 * *(a4 + 40)) | 1);
      *(a4 + 32) = v46;
      if (!v46)
      {
        goto LABEL_121;
      }

      if (*(a4 + 40))
      {
        v47 = v20;
        v48 = 0;
        v49 = 4;
        v50 = 2;
        do
        {
          cstdlib_memcpy((*(a4 + 32) + v49 - 4), &v45[v50], 4uLL);
          v51 = v50 + 4;
          cstdlib_memcpy((*(a4 + 32) + v49), &v45[v51], 4uLL);
          v50 = v51 + 4;
          ++v48;
          v49 += 8;
        }

        while (v48 < *(a4 + 40));
        LODWORD(v28) = 0;
        v20 = v47;
        goto LABEL_92;
      }

      goto LABEL_30;
    }

    if (cstdlib_strcmp("SMAP", v222))
    {
      if (cstdlib_strcmp("CRUL", v222))
      {
        if (!cstdlib_strcmp("REGX", v222))
        {
          v38 = v20;
          v29 = v224;
          v87 = __src;
          *&__dst[0] = __src;
          LODWORD(__s) = 0;
          cstdlib_memcpy((a4 + 216), __src, 4uLL);
          v88 = 4;
          if (*(a4 + 216))
          {
            cstdlib_memcpy(&__s, v87 + 4, 4uLL);
            v89 = (__s + 8);
            *(a4 + 224) = &v87[v89];
            v88 = (*(a4 + 216) + v89);
          }

          cstdlib_memcpy((a4 + 240), &v87[v88], 2uLL);
          v90 = heap_Calloc(*(*a4 + 8), 1, (4 * *(a4 + 240)) | 1);
          *(a4 + 232) = v90;
          if (!v90)
          {
            goto LABEL_121;
          }

          if (*(a4 + 240))
          {
            v91 = 0;
            v92 = 0;
            v93 = v88 + 2;
            do
            {
              v94 = v93;
              cstdlib_memcpy((*(a4 + 232) + v91), &v87[v93], 4uLL);
              v93 = v94 + 4;
              ++v92;
              v91 += 4;
            }

            while (v92 < *(a4 + 240));
          }

          v43 = (a4 + 248);
          goto LABEL_91;
        }

        if (!cstdlib_strcmp("STRS", v222))
        {
          v29 = v224;
          v95 = __src;
          *&__dst[0] = __src;
          LODWORD(__s) = 0;
          cstdlib_memcpy(v213, __src, 4uLL);
          v96 = 4;
          if (*v213)
          {
            cstdlib_memcpy(&__s, v95 + 4, 4uLL);
            v97 = (__s + 8);
            *(a4 + 304) = &v95[v97];
            v96 = (*(a4 + 296) + v97);
          }

          cstdlib_memcpy((a4 + 320), &v95[v96], 2uLL);
          v98 = heap_Calloc(*(*a4 + 8), 1, (4 * *(a4 + 320)) | 1);
          *(a4 + 312) = v98;
          if (!v98)
          {
            goto LABEL_121;
          }

          v38 = v20;
          if (*(a4 + 320))
          {
            v99 = 0;
            v100 = 0;
            v101 = v96 + 2;
            do
            {
              v102 = v101;
              cstdlib_memcpy((*(a4 + 312) + v99), &v95[v101], 4uLL);
              v101 = v102 + 4;
              ++v100;
              v99 += 4;
            }

            while (v100 < *(a4 + 320));
          }

          v43 = (a4 + 328);
          goto LABEL_91;
        }

        if (!cstdlib_strcmp("REST", v222))
        {
          v29 = v224;
          v30 = __src;
          *&__dst[0] = __src;
          LODWORD(__s) = 0;
          cstdlib_memcpy(v212, __src, 4uLL);
          v31 = 4;
          if (*v212)
          {
            cstdlib_memcpy(&__s, v30 + 4, 4uLL);
            v32 = (__s + 8);
            *(a4 + 264) = &v30[v32];
            v31 = (*(a4 + 256) + v32);
          }

          cstdlib_memcpy((a4 + 280), &v30[v31], 2uLL);
          v33 = heap_Calloc(*(*a4 + 8), 1, (4 * *(a4 + 280)) | 1);
          *(a4 + 272) = v33;
          if (!v33)
          {
            goto LABEL_121;
          }

          v38 = v20;
          if (*(a4 + 280))
          {
            v39 = 0;
            v40 = 0;
            v41 = v31 + 2;
            do
            {
              v42 = v41;
              cstdlib_memcpy((*(a4 + 272) + v39), &v30[v41], 4uLL);
              v41 = v42 + 4;
              ++v40;
              v39 += 4;
            }

            while (v40 < *(a4 + 280));
          }

          v43 = (a4 + 288);
LABEL_91:
          v28 = ssftriff_reader_DetachChunkData(v29, v43, __dst);
          v20 = v38;
          if ((v28 & 0x80000000) != 0)
          {
            return v28;
          }
        }
      }

      else
      {
        v61 = __src;
        cstdlib_memcpy((a4 + 72), __src, 2uLL);
        LODWORD(__dst[0]) = 2;
        v62 = heap_Calloc(*(*a4 + 8), 1, (120 * *(a4 + 72)) | 1);
        *(a4 + 64) = v62;
        if (!v62)
        {
          goto LABEL_121;
        }

        if (*(a4 + 72))
        {
          v63 = 0;
          LOWORD(__s) = 0;
          v64 = 2;
          do
          {
            v65 = 120 * v63;
            cstdlib_memcpy((v62 + 120 * v63), &v61[v64], 4uLL);
            cstdlib_memcpy((*(a4 + 64) + 120 * v63 + 4), &v61[v64 + 4], 4uLL);
            cstdlib_memcpy((*(a4 + 64) + 120 * v63 + 16), &v61[v64 + 8], 2uLL);
            v66 = heap_Calloc(*(*a4 + 8), 1, (4 * *(*(a4 + 64) + 120 * v63 + 16)) | 1);
            v67 = *(a4 + 64);
            *(v67 + 120 * v63 + 8) = v66;
            if (!v66)
            {
              goto LABEL_121;
            }

            v68 = v64 + 10;
            if (*(v67 + 120 * v63 + 16))
            {
              v69 = 0;
              do
              {
                cstdlib_memcpy(&__s, &v61[v68], 2uLL);
                v68 += 2;
                v67 = *(a4 + 64);
                v70 = v67 + 120 * v63;
                *(*(v70 + 8) + 4 * v69++) = __s;
              }

              while (v69 < *(v70 + 16));
            }

            LODWORD(__dst[0]) = v68;
            Str = readRULEREGEXES(*a4, v61, __dst, (v67 + 120 * v63 + 24));
            if ((Str & 0x80000000) != 0)
            {
              return Str;
            }

            Str = readRULEREGEXES(*a4, v61, __dst, (*(a4 + 64) + 120 * v63 + 40));
            if ((Str & 0x80000000) != 0)
            {
              return Str;
            }

            v71 = __dst[0];
            cstdlib_memcpy((*(a4 + 64) + v65 + 64), &v61[LODWORD(__dst[0])], 2uLL);
            v72 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 64) + v65 + 64)) | 1);
            v73 = *(a4 + 64);
            *(v73 + v65 + 56) = v72;
            if (!v72)
            {
              goto LABEL_121;
            }

            if (*(v73 + 120 * v63 + 64))
            {
              v74 = 0;
              v75 = 4;
              do
              {
                cstdlib_memcpy((*(v73 + v65 + 56) + v75 - 4), &v61[(v71 + v75 - 2)], 4uLL);
                cstdlib_memcpy((*(*(a4 + 64) + v65 + 56) + v75), &v61[(v71 + v75 + 2)], 4uLL);
                ++v74;
                v73 = *(a4 + 64);
                v75 += 8;
              }

              while (v74 < *(v73 + v65 + 64));
              v76 = v71 + v75 - 2;
            }

            else
            {
              v76 = v71 + 2;
            }

            LODWORD(__dst[0]) = v76;
            Str = readRULEREGEXES(*a4, v61, __dst, (v73 + 120 * v63 + 72));
            if ((Str & 0x80000000) != 0)
            {
              return Str;
            }

            v77 = __dst[0];
            cstdlib_memcpy((*(a4 + 64) + v65 + 96), &v61[LODWORD(__dst[0])], 2uLL);
            v78 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 64) + v65 + 96)) | 1);
            v79 = *(a4 + 64);
            *(v79 + v65 + 88) = v78;
            if (!v78)
            {
              goto LABEL_121;
            }

            if (*(v79 + 120 * v63 + 96))
            {
              v80 = 0;
              v81 = 4;
              do
              {
                cstdlib_memcpy((*(v79 + v65 + 88) + v81 - 4), &v61[(v77 + v81 - 2)], 4uLL);
                cstdlib_memcpy((*(*(a4 + 64) + v65 + 88) + v81), &v61[(v77 + v81 + 2)], 4uLL);
                ++v80;
                v79 = *(a4 + 64);
                v81 += 8;
              }

              while (v80 < *(v79 + v65 + 96));
              v82 = v77 + v81 - 2;
            }

            else
            {
              v82 = v77 + 2;
            }

            LODWORD(__dst[0]) = v82;
            cstdlib_memcpy((v79 + v65 + 112), &v61[v82], 2uLL);
            v83 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 64) + v65 + 112)) | 1);
            v62 = *(a4 + 64);
            *(v62 + v65 + 104) = v83;
            v84 = (v62 + v65 + 104);
            if (!v83)
            {
              goto LABEL_121;
            }

            if (*(v62 + v65 + 112))
            {
              v85 = 0;
              v86 = 4;
              do
              {
                cstdlib_memcpy((*v84 + v86 - 4), &v61[(v82 + v86 - 2)], 4uLL);
                cstdlib_memcpy((*(*(a4 + 64) + v65 + 104) + v86), &v61[(v82 + v86 + 2)], 4uLL);
                ++v85;
                v62 = *(a4 + 64);
                v84 = (v62 + v65 + 104);
                v86 += 8;
              }

              while (v85 < *(v62 + v65 + 112));
              v64 = v82 + v86 - 2;
            }

            else
            {
              v64 = v82 + 2;
            }

            LODWORD(__dst[0]) = v64;
          }

          while (++v63 < *(a4 + 72));
        }

        LODWORD(v28) = 0;
        v20 = "CFIG";
      }
    }

    else
    {
      v52 = v20;
      v53 = __src;
      cstdlib_memcpy((a4 + 56), __src, 2uLL);
      v54 = heap_Calloc(*(*a4 + 8), 1, (16 * *(a4 + 56)) | 1);
      *(a4 + 48) = v54;
      if (!v54)
      {
        goto LABEL_121;
      }

      if (*(a4 + 56))
      {
        v55 = 0;
        v56 = 2;
        while (1)
        {
          cstdlib_memcpy((v54 + 16 * v55 + 8), &v53[v56], 2uLL);
          v57 = heap_Calloc(*(*a4 + 8), 1, (8 * *(*(a4 + 48) + 16 * v55 + 8)) | 1);
          v54 = *(a4 + 48);
          v58 = v54 + 16 * v55;
          *v58 = v57;
          if (!v57)
          {
            break;
          }

          if (*(v58 + 8))
          {
            v59 = 0;
            v60 = 4;
            do
            {
              cstdlib_memcpy((*v58 + v60 - 4), &v53[v56 - 2 + v60], 4uLL);
              cstdlib_memcpy((*(*(a4 + 48) + 16 * v55) + v60), &v53[v56 + 2 + v60], 4uLL);
              ++v59;
              v54 = *(a4 + 48);
              v58 = v54 + 16 * v55;
              v60 += 8;
            }

            while (v59 < *(v58 + 8));
            v56 = v56 + v60 - 2;
          }

          else
          {
            v56 += 2;
          }

          if (++v55 >= *(a4 + 56))
          {
            goto LABEL_46;
          }
        }

LABEL_121:
        v28 = 2313166858;
LABEL_122:
        v125 = *a4;
LABEL_123:
        v126 = *(v125 + 32);
LABEL_124:
        log_OutPublic(v126, "FE_POS", 35000, 0, v34, v35, v36, v37, v211);
        return v28;
      }

LABEL_46:
      LODWORD(v28) = 0;
      v20 = v52;
    }

LABEL_92:
    v103 = ssftriff_reader_CloseChunk(v224);
    if (v103 < 0)
    {
      LODWORD(v28) = v103;
    }
  }

  while ((v28 & 0x80000000) == 0);
  v104 = v28 & 0x1FFF;
  v28 = 2313166858;
  if (v104 == 10)
  {
    return v28;
  }

  ssftriff_reader_ObjClose(v224, v21, v22, v23, v24, v25, v26, v27);
  v224 = 0;
  *(a4 + 88) = 0;
  v105 = (a4 + 88);
  *(a4 + 22) = 0x10000;
  *(a4 + 26) = 2;
  *(a4 + 336) = 0;
  *(a4 + 104) = 0;
  v106 = (a4 + 104);
  v107 = *(a4 + 72);
  if (*(a4 + 72))
  {
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = *(a4 + 64);
    do
    {
      if (cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(v111 + v108 + 4)))) > v110)
      {
        v110 = cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(a4 + 64) + v108 + 4))));
      }

      if (cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(a4 + 64) + v108)))) >= 7 && (v112 = cstdlib_strncmp((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(a4 + 64) + v108))), "HYPHEN", 6uLL), v114 = (a4 + 88), !v112) || cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(a4 + 64) + v108)))) >= 9 && (v115 = cstdlib_strncmp((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(a4 + 64) + v108))), "COMPOUND", 8uLL), v114 = (a4 + 104), !v115))
      {
        ++*v114;
      }

      v111 = *(a4 + 64);
      v116 = *(v111 + v108 + 16);
      if (v116 > *(a4 + 336))
      {
        *(a4 + 336) = v116;
        if (v116 >= 0x11)
        {
          log_OutPublic(*(*a4 + 32), "FE_POS", 35007, "%s%s", v113, v35, v36, v37, "maximum words");
          return 2313166848;
        }
      }

      ++v109;
      v108 += 120;
    }

    while (v109 < *(a4 + 72));
    if (*v105)
    {
      v117 = heap_Calloc(*(*a4 + 8), 1, (2 * *v105) | 1);
      *(a4 + 80) = v117;
      if (!v117)
      {
        goto LABEL_122;
      }
    }

    if (*v106)
    {
      v118 = heap_Calloc(*(*a4 + 8), 1, (2 * *v106) | 1);
      *(a4 + 96) = v118;
      if (!v118)
      {
        goto LABEL_122;
      }
    }

    v107 = *(a4 + 72);
    *v105 = 0;
    *v106 = 0;
    if (v107)
    {
      v119 = 0;
      v120 = 0;
      do
      {
        if (cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(a4 + 64) + v119)))) >= 7 && (v121 = cstdlib_strncmp((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(a4 + 64) + v119))), "HYPHEN", 6uLL), v122 = (a4 + 80), v123 = (a4 + 88), !v121) || cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(a4 + 64) + v119)))) >= 9 && (v124 = cstdlib_strncmp((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(a4 + 64) + v119))), "COMPOUND", 8uLL), v122 = (a4 + 96), v123 = (a4 + 104), !v124))
        {
          *(*v122 + 2 * (*v123)++) = v120;
        }

        ++v120;
        v119 += 120;
      }

      while (v120 < *(a4 + 72));
      v107 = *v106;
    }
  }

  else
  {
    v110 = 0;
  }

  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "%d OPEN RULES", v35, v36, v37, v107);
  if (*(a4 + 104))
  {
    v130 = 0;
    do
    {
      log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "label=%s (%d words)", v127, v128, v129, *(a4 + 304) + *(*(a4 + 312) + 4 * *(*(a4 + 64) + 120 * *(*(a4 + 96) + 2 * v130++))));
    }

    while (v130 < *(a4 + 104));
  }

  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "%d HYPHENATED RULES", v127, v128, v129, *(a4 + 88));
  if (*(a4 + 88))
  {
    v134 = 0;
    do
    {
      log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "label=%s (%d words)", v131, v132, v133, *(a4 + 304) + *(*(a4 + 312) + 4 * *(*(a4 + 64) + 120 * *(*(a4 + 80) + 2 * v134++))));
    }

    while (v134 < *(a4 + 88));
  }

  *&__dst[0] = 0;
  LOWORD(__s) = -1;
  __s2[0] = 0;
  Str = (*(v216 + 96))(v214, v215, "fecfg", "compoundabbrendingstrip", __dst, &__s, __s2);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  *(a4 + 340) = 0;
  *(a4 + 344) = 0;
  if (__s == 1 && *&__dst[0])
  {
    for (i = **&__dst[0]; ; i = v136 + 1)
    {
      v136 = cstdlib_strchr(i, 44);
      if (!v136)
      {
        break;
      }

      ++*(a4 + 340);
    }

    v137 = *(a4 + 340) + 1;
    *(a4 + 340) = v137;
    v138 = heap_Calloc(*(*a4 + 8), 1, (8 * v137) | 1);
    *(a4 + 344) = v138;
    if (!v138)
    {
      goto LABEL_122;
    }

    *(a4 + 340) = 0;
    v139 = cstdlib_strchr(**&__dst[0], __s2[0]);
    if (v139)
    {
      *v139 = 0;
    }

    v140 = **&__dst[0];
    if (**&__dst[0])
    {
      v141 = cstdlib_strchr(**&__dst[0], 44);
      if (v141)
      {
        v142 = v141;
        do
        {
          *v142 = 0;
          v143 = *(*a4 + 8);
          v144 = cstdlib_strlen(v140);
          v145 = heap_Calloc(v143, 1, (v144 + 1));
          v146 = *(a4 + 340);
          *(*(a4 + 344) + 8 * v146) = v145;
          v147 = *(*(a4 + 344) + 8 * v146);
          if (!v147)
          {
            goto LABEL_122;
          }

          cstdlib_strcpy(v147, v140);
          v140 = v142 + 1;
          ++*(a4 + 340);
          v142 = cstdlib_strchr(v142 + 1, 44);
        }

        while (v142);
      }

      v148 = *(*a4 + 8);
      v149 = cstdlib_strlen(v140);
      v150 = heap_Calloc(v148, 1, (v149 + 1));
      v151 = *(a4 + 340);
      *(*(a4 + 344) + 8 * v151) = v150;
      v152 = *(*(a4 + 344) + 8 * v151);
      if (!v152)
      {
        goto LABEL_122;
      }

      cstdlib_strcpy(v152, v140);
      ++*(a4 + 340);
    }
  }

  if (v110)
  {
    v153 = heap_Calloc(*(*a4 + 8), 1, v110 + 11);
    *(a4 + 352) = v153;
    v125 = *a4;
    if (!v153)
    {
      goto LABEL_123;
    }

    v154 = heap_Calloc(*(v125 + 8), 1, v110 + 11);
    *(a4 + 360) = v154;
    if (!v154)
    {
      goto LABEL_122;
    }
  }

  *(a4 + 136) = 0;
  *(a4 + 368) = 0;
  if (!*(a4 + 72))
  {
    return 0;
  }

  v155 = 0;
  v156 = 0;
  v157 = *(a4 + 64);
  do
  {
    v158 = v157 + 120 * v155;
    if (*(v158 + 64))
    {
      v159 = 0;
      v160 = 0;
      v161 = (v158 + 56);
      do
      {
        if (!cstdlib_strcmp((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*v161 + v159))), "IGTREE"))
        {
          ++*(a4 + 136);
          if (cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(*(a4 + 64) + 120 * v155 + 56) + v159 + 4)))) > v156)
          {
            v156 = cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(*(a4 + 64) + 120 * v155 + 56) + v159 + 4))));
          }
        }

        ++v160;
        v157 = *(a4 + 64);
        v162 = v157 + 120 * v155;
        v161 = (v162 + 56);
        v159 += 8;
      }

      while (v160 < *(v162 + 64));
    }

    v163 = v157 + 120 * v155;
    if (*(v163 + 96))
    {
      v164 = 0;
      v165 = 0;
      v166 = (v163 + 88);
      do
      {
        if (!cstdlib_strcmp((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*v166 + v164))), "IGTREE"))
        {
          ++*(a4 + 136);
          if (cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(*(a4 + 64) + 120 * v155 + 88) + v164 + 4)))) > v156)
          {
            v156 = cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(*(a4 + 64) + 120 * v155 + 88) + v164 + 4))));
          }
        }

        ++v165;
        v157 = *(a4 + 64);
        v167 = v157 + 120 * v155;
        v166 = (v167 + 88);
        v164 += 8;
      }

      while (v165 < *(v167 + 96));
    }

    v168 = v157 + 120 * v155;
    if (*(v168 + 112))
    {
      v169 = 0;
      v170 = 0;
      v171 = (v168 + 104);
      do
      {
        if (!cstdlib_strcmp((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*v171 + v169))), "IGTREE"))
        {
          ++*(a4 + 136);
          if (cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(*(a4 + 64) + 120 * v155 + 104) + v169 + 4)))) > v156)
          {
            v156 = cstdlib_strlen((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(*(a4 + 64) + 120 * v155 + 104) + v169 + 4))));
          }
        }

        ++v170;
        v157 = *(a4 + 64);
        v172 = v157 + 120 * v155;
        v171 = (v172 + 104);
        v169 += 8;
      }

      while (v170 < *(v172 + 112));
    }

    ++v155;
  }

  while (v155 < *(a4 + 72));
  if (!*(a4 + 136))
  {
    return 0;
  }

  *(a4 + 116) = 0;
  *(a4 + 112) = 0;
  Str = (*(v216 + 72))(v214, v215, "compounds_feature_map");
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = (*(v216 + 72))(v214, v215, "compounds_feature_key", a4 + 112);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  DctIgtreeMappings = getDctIgtreeMappings(a4, v214, v215, v216, a4 + 120);
  if ((DctIgtreeMappings & 0x80000000) == 0)
  {
    v174 = heap_Calloc(*(a3 + 8), 1, 20 * *(a4 + 136));
    *(a4 + 144) = v174;
    if (!v174 || (v175 = heap_Calloc(*(a3 + 8), 1, 8 * *(a4 + 136)), (*(a4 + 152) = v175) == 0))
    {
LABEL_234:
      v126 = *(a3 + 32);
      goto LABEL_124;
    }

    if (*(a4 + 136))
    {
      v176 = 0;
      while (1)
      {
        *(*(a4 + 152) + 8 * v176) = heap_Calloc(*(a3 + 8), 1, v156 + 1);
        if (!*(*(a4 + 152) + 8 * v176))
        {
          goto LABEL_234;
        }

        ++v176;
        v177 = *(a4 + 136);
        if (v176 >= v177)
        {
          v178 = 8 * v177;
          goto LABEL_188;
        }
      }
    }

    v178 = 0;
LABEL_188:
    v180 = heap_Calloc(*(a3 + 8), 1, v178);
    *(a4 + 160) = v180;
    if (!v180)
    {
      goto LABEL_234;
    }

    if (*(a4 + 136))
    {
      v181 = 0;
      while (1)
      {
        *(*(a4 + 160) + 8 * v181) = heap_Calloc(*(a3 + 8), 1, 1600);
        if (!*(*(a4 + 160) + 8 * v181))
        {
          goto LABEL_234;
        }

        ++v181;
        v182 = *(a4 + 136);
        if (v181 >= v182)
        {
          v183 = 8 * v182;
          goto LABEL_195;
        }
      }
    }

    v183 = 0;
LABEL_195:
    v184 = heap_Calloc(*(a3 + 8), 1, v183);
    *(a4 + 168) = v184;
    if (!v184)
    {
      goto LABEL_234;
    }

    if (*(a4 + 136))
    {
      v185 = 0;
      while (1)
      {
        *(*(a4 + 168) + 8 * v185) = heap_Calloc(*(a3 + 8), 1, 16);
        if (!*(*(a4 + 168) + 8 * v185))
        {
          goto LABEL_234;
        }

        ++v185;
        v186 = *(a4 + 136);
        if (v185 >= v186)
        {
          v187 = 8 * v186;
          goto LABEL_202;
        }
      }
    }

    v187 = 0;
LABEL_202:
    v188 = heap_Calloc(*(a3 + 8), 1, v187);
    *(a4 + 176) = v188;
    if (!v188)
    {
      goto LABEL_234;
    }

    v189 = heap_Calloc(*(a3 + 8), 1, 8 * *(a4 + 136));
    *(a4 + 184) = v189;
    if (!v189)
    {
      goto LABEL_234;
    }

    LODWORD(v190) = *(a4 + 136);
    if (*(a4 + 136))
    {
      v191 = 0;
      do
      {
        *(*(a4 + 184) + 8 * v191) = heap_Calloc(*(a3 + 8), 1, 8);
        if (!*(*(a4 + 184) + 8 * v191))
        {
          goto LABEL_234;
        }

        ++v191;
        v190 = *(a4 + 136);
      }

      while (v191 < v190);
    }

    if (*(a4 + 72))
    {
      v192 = 0;
      v193 = 0;
      v194 = *(a4 + 64);
      do
      {
        v195 = v194 + 120 * v192;
        if (*(v195 + 64))
        {
          v196 = 0;
          v197 = 0;
          v198 = (v195 + 56);
          do
          {
            if (!cstdlib_strcmp((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*v198 + v196))), "IGTREE"))
            {
              DctIgtreeMappings = setIGTreeInfo(v217, v218, a4, v193, (*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(*(a4 + 64) + 120 * v192 + 56) + v196 + 4))), v214, v215, v216);
              if ((DctIgtreeMappings & 0x80000000) != 0)
              {
                return DctIgtreeMappings;
              }

              ++v193;
            }

            ++v197;
            v194 = *(a4 + 64);
            v199 = v194 + 120 * v192;
            v198 = (v199 + 56);
            v196 += 8;
          }

          while (v197 < *(v199 + 64));
        }

        v200 = v194 + 120 * v192;
        if (*(v200 + 96))
        {
          v201 = 0;
          v202 = 0;
          v203 = (v200 + 88);
          do
          {
            if (!cstdlib_strcmp((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*v203 + v201))), "IGTREE"))
            {
              DctIgtreeMappings = setIGTreeInfo(v217, v218, a4, v193, (*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(*(a4 + 64) + 120 * v192 + 88) + v201 + 4))), v214, v215, v216);
              if ((DctIgtreeMappings & 0x80000000) != 0)
              {
                return DctIgtreeMappings;
              }

              ++v193;
            }

            ++v202;
            v194 = *(a4 + 64);
            v204 = v194 + 120 * v192;
            v203 = (v204 + 88);
            v201 += 8;
          }

          while (v202 < *(v204 + 96));
        }

        v205 = v194 + 120 * v192;
        if (*(v205 + 112))
        {
          v206 = 0;
          v207 = 0;
          v208 = (v205 + 104);
          do
          {
            if (!cstdlib_strcmp((*(a4 + 304) + *(*(a4 + 312) + 4 * *(*v208 + v206))), "IGTREE"))
            {
              DctIgtreeMappings = setIGTreeInfo(v217, v218, a4, v193, (*(a4 + 304) + *(*(a4 + 312) + 4 * *(*(*(a4 + 64) + 120 * v192 + 104) + v206 + 4))), v214, v215, v216);
              if ((DctIgtreeMappings & 0x80000000) != 0)
              {
                return DctIgtreeMappings;
              }

              ++v193;
            }

            ++v207;
            v194 = *(a4 + 64);
            v209 = v194 + 120 * v192;
            v208 = (v209 + 104);
            v206 += 8;
          }

          while (v207 < *(v209 + 112));
        }

        ++v192;
      }

      while (v192 < *(a4 + 72));
      LODWORD(v190) = *(a4 + 136);
    }

    if (v190)
    {
      v210 = 0;
      do
      {
        setIGTreeWord2Nindex(a4, v210++);
      }

      while (*(a4 + 136) > v210);
    }
  }

  return DctIgtreeMappings;
}

uint64_t getDctIgtreeMappings(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = 0;
  v38 = -1;
  if (a1[92] == 1 || !a1[29])
  {
    return 0;
  }

  v37 = 0;
  v10 = (*(a4 + 96))(a2, a3, "compounds_feature_map", "numMappings", &v39, &v38, &v37);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v38 != 1 || v39 == 0)
  {
    v14 = *(a5 + 8);
  }

  else
  {
    v14 = cstdlib_atoi(*v39);
    *(a5 + 8) = v14;
  }

  v15 = heap_Calloc(*(*a1 + 8), 1, (16 * v14) | 1);
  *a5 = v15;
  if (!v15)
  {
LABEL_26:
    v12 = 2313166858;
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0, v16, v17, v18, v19, v36);
    return v12;
  }

  if (*(a5 + 8))
  {
    v20 = 0;
    v21 = 0;
    do
    {
      LH_itoa(v21, &v36 + 1, 0xAu);
      v38 = -1;
      v10 = (*(a4 + 96))(a2, a3, "compounds_feature_map", &v36 + 1, &v39, &v38, &v37);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v26 = v38 != 1 || v39 == 0;
      if (v26 || (v27 = *v39, (v28 = cstdlib_strchr(*v39, 43)) == 0))
      {
        log_OutPublic(*(*a1 + 32), "FE_POS", 35005, 0, v22, v23, v24, v25, v36);
        return 2313166848;
      }

      v29 = v28;
      *v28 = 0;
      v30 = *(*a1 + 8);
      v31 = cstdlib_strlen(v27);
      v32 = heap_Calloc(v30, 1, (v31 + 1));
      *(*a5 + v20 + 8) = v32;
      if (!v32)
      {
        goto LABEL_26;
      }

      cstdlib_strcpy(v32, v27);
      v33 = *(*a1 + 8);
      v34 = cstdlib_strlen(v29 + 1);
      v35 = heap_Calloc(v33, 1, (v34 + 1));
      *(*a5 + v20) = v35;
      if (!v35)
      {
        goto LABEL_26;
      }

      cstdlib_strcpy(v35, v29 + 1);
      ++v21;
      v20 += 16;
    }

    while (v21 < *(a5 + 8));
  }

  v12 = 0;
  a1[92] = 1;
  return v12;
}

uint64_t setIGTreeInfo(_WORD *a1, uint64_t a2, uint64_t *a3, unsigned int a4, char *__src, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = 2313166855;
  memset(&__c[1], 0, 256);
  if (a3)
  {
    v10 = a3[19];
    if (v10)
    {
      *v52 = 0;
      v12 = *(v10 + 8 * a4);
      if (v12)
      {
        cstdlib_strcpy(v12, __src);
        v18 = *a3;
        v53 = 0;
        memset(__s1, 0, sizeof(__s1));
        Str = paramc_ParamGetStr(*(v18 + 40), "langcode", &v53);
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        cstdlib_strcat(__s1, __src);
        cstdlib_strcat(__s1, "_igtree");
        Str = brokeraux_ComposeBrokerString(v18, __s1, 1, 1, v53, 0, 0, &__c[1], 0x100uLL);
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        if ((ssftriff_reader_ObjOpen(a1, a2, 2, &__c[1], "IGTR", 1031, v52) & 0x80000000) != 0)
        {
          log_OutPublic(*(*a3 + 32), "FE_POS", 35004, 0, v20, v21, v22, v23, v50);
          return 2313166848;
        }

        Str = igtree_Init(a1, a2, *v52, *(a3[20] + 8 * a4));
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        Str = ssftriff_reader_ObjClose(*v52, v24, v25, v26, v27, v28, v29, v30);
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        v31 = *(a3[21] + 8 * a4);
        *&__s1[0] = 0;
        LOWORD(v53) = -1;
        if (*(a3 + 28))
        {
          __c[0] = 0;
          Str = (*(a8 + 96))(a6, a7, "compounds_feature_key", __src, __s1, &v53, __c);
          if ((Str & 0x80000000) != 0)
          {
            return Str;
          }

          if (v53 == 1 && *&__s1[0])
          {
            v32 = **&__s1[0];
            v33 = cstdlib_strchr(**&__s1[0], __c[0]);
            v34 = v33;
            if (v33)
            {
              *v33 = 0;
            }

            v35 = cstdlib_atoi(v32);
            *(v31 + 8) = v35;
            v36 = heap_Calloc(*(*a3 + 8), 1, (8 * v35) | 1u);
            *v31 = v36;
            if (!v36)
            {
LABEL_33:
              log_OutPublic(*(*a3 + 32), "FE_POS", 35000, 0, v37, v38, v39, v40, v50);
              return 2313166858;
            }

            if (*(v31 + 8))
            {
              v41 = 0;
              if (v34)
              {
                v32 = (v34 + 1);
              }

              do
              {
                v42 = cstdlib_strchr(v32, __c[0]);
                v43 = v42;
                if (v42)
                {
                  *v42 = 0;
                }

                v44 = *(*a3 + 8);
                v45 = cstdlib_strlen(v32);
                *(*v31 + 8 * v41) = heap_Calloc(v44, 1, (v45 + 1));
                v46 = *(*v31 + 8 * v41);
                if (!v46)
                {
                  goto LABEL_33;
                }

                cstdlib_strcpy(v46, v32);
                ++v41;
                v47 = *(v31 + 8);
                if (v41 != v47 && v43 != 0)
                {
                  v32 = (v43 + 1);
                }
              }

              while (v41 < v47);
            }
          }
        }

        *(a3[22] + 8 * a4) = heap_Calloc(*(*a3 + 8), 1, (2 * *(*(a3[21] + 8 * a4) + 8)) | 1);
        if (!*(a3[22] + 8 * a4))
        {
          return 2313166858;
        }

        return setIgtreeFVLookups(a3, *(a3[23] + 8 * a4), a4);
      }
    }
  }

  return v8;
}

uint64_t setIGTreeWord2Nindex(uint64_t result, unsigned int a2)
{
  if (*(result + 40))
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    v5 = a2;
    while (1)
    {
      result = cstdlib_strncmp((*(v2 + 304) + *(*(v2 + 312) + 4 * *(*(v2 + 32) + v3))), "IGTREE_", 7uLL);
      if (!result)
      {
        result = cstdlib_strcmp((*(v2 + 304) + *(*(v2 + 312) + 4 * *(*(v2 + 32) + v3)) + 7), *(*(v2 + 152) + 8 * v5));
        if (!result)
        {
          break;
        }
      }

      ++v4;
      v3 += 8;
      if (v4 >= *(v2 + 40))
      {
        return result;
      }
    }

    v6 = (*(v2 + 304) + *(*(v2 + 312) + 4 * *(*(v2 + 32) + v3 + 4)));
    result = cstdlib_strchr(v6, 95);
    v7 = result;
    if (result)
    {
      v8 = 0;
      do
      {
        *v7 = 0;
        v9 = v8 + 1;
        *(*(v2 + 144) + 20 * v5 + 2 * v8) = cstdlib_atoi(v6);
        v6 = (v7 + 1);
        result = cstdlib_strchr((v7 + 1), 95);
        v7 = result;
        ++v8;
      }

      while (result);
      v7 = v9;
    }

    if (*v6)
    {
      result = cstdlib_atoi(v6);
      *(*(v2 + 144) + 20 * v5 + 2 * v7) = result;
    }
  }

  return result;
}

uint64_t statcomp_add2Str(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s)
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
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v15, v16, v17, v18, v22);
      return 2313166858;
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

uint64_t matchSTATCOMPCONTEXT_TRule(uint64_t a1, const char **a2, unsigned __int16 *a3, char *__s, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned int *a8, int *a9, _WORD *a10, unsigned int a11)
{
  v11 = a7;
  v12 = a6;
  v14 = a9;
  v56 = *MEMORY[0x277D85DE8];
  *a9 = 0;
  *(a8 + 6) = 0;
  if (*(a5 + 8))
  {
    v20 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, a7);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "         %s %s", v17, v18, v19, a1);
    cstdlib_strcpy(*a2, "");
  }

  else
  {
    v20 = 0;
  }

  if (!*(v11 + 4))
  {
    v45 = 1;
    goto LABEL_75;
  }

  v21 = 0;
  v22 = 0;
  v23 = a11;
  v24 = a8;
  v52 = v12;
  v53 = v11;
  while (1)
  {
    v25 = *v11;
    v26 = *(v24 + 2);
    if (*(a5 + 8))
    {
      v27 = v12;
      v28 = v23;
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           regex %d", a6, a7, a8, *(v25 + v21 + 2));
      v29 = *(v25 + v21 + 4) & 1;
      if (*(a5 + 8) >= 2u)
      {
        v30 = *(v25 + v21 + 4) & 1;
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           ruleDef[domain=%s(%d) wordIdx=%d left_window=%d right_window=%d] defMapIdx=%s(%d) bNegateMatch=%d", a6, a7, a8, STATCOMPDOMAIN2STRING[*a8]);
        v29 = v30;
      }

      v23 = v28;
      v12 = v27;
      v24 = a8;
    }

    else
    {
      v29 = *(v25 + v21 + 4) & 1;
    }

    if (*v24 == 2)
    {
      v31 = *(v25 + v21);
      if (v31 == 2)
      {
        v32 = v29;
        v33 = *(v12 + 40);
        if (!v33)
        {
          v34 = "           ERROR : no TOK string to match";
          goto LABEL_36;
        }
      }

      else if (v31 == 1)
      {
        v32 = v29;
        v33 = *(v12 + 32);
        if (!v33)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (*(v25 + v21))
        {
LABEL_25:
          if (!*(a5 + 8))
          {
            v20 = 0;
            if (!v29)
            {
              goto LABEL_66;
            }

            goto LABEL_42;
          }

          v32 = v29;
          log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           NULL STR FOUND - no match", a6, a7, a8, 0);
          goto LABEL_37;
        }

        v32 = v29;
        v33 = *(v12 + 24);
        if (!v33)
        {
          v34 = "           ERROR : no ORT string to match";
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (*v24 != 1)
      {
        goto LABEL_25;
      }

      if (v23)
      {
        if (v23 == 2)
        {
          if (v26 + *(v24 + 4) + 1 >= *(v12 + 8))
          {
            goto LABEL_67;
          }
        }

        else if (v23 != 1 || *(v24 + 3) >= v26)
        {
LABEL_67:
          v20 = 0;
          if (!*(a5 + 8))
          {
            goto LABEL_73;
          }

          v46 = "           context not found. rule not applicable. RETURN LH_FALSE";
          goto LABEL_72;
        }
      }

      v33 = *(*v12 + 96 * *(v24 + 2) + 32);
      if (!v33)
      {
        v32 = v29;
LABEL_35:
        v34 = "           ERROR : no POS string to match";
LABEL_36:
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v34, a6, a7, a8, 0);
LABEL_37:
        v20 = 0;
        goto LABEL_38;
      }

      v32 = v29;
      v34 = "           ERROR : expected POS(idx) rule";
      if (*(v25 + v21) != *(a5 + 24))
      {
        goto LABEL_36;
      }
    }

    v36 = v23;
    if (*(a5 + 8))
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           STR=%s", a6, a7, a8, v33);
    }

    v37 = *(v25 + v21 + 2);
    v38 = cstdlib_strlen(v33);
    if (!v38)
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "invalid arg for regex", v39, v40, v41, 0);
      return 2313166855;
    }

    v42 = nuance_pcre_exec(*(a5 + 200), *(a5 + 208), *(a5 + 224) + *(*(a5 + 232) + 4 * v37), 0, v33, v38, 0, 0, v55, 30);
    if ((v42 & 0x80000000) == 0)
    {
      break;
    }

    v43 = nuance_pcre_ErrorToLhError(v42);
    v20 = v43;
    v23 = v36;
    if (v43 >> 20 == 2213)
    {
      if ((v43 & 0x1FFF) != 0x14)
      {
        if ((v43 & 0x1FFF) == 0xA)
        {
          v48 = *(*a5 + 32);
          v49 = 11002;
          v50 = 0;
        }

        else
        {
          v48 = *(*a5 + 32);
          v51 = "lhError";
          v50 = "%s%x";
          v49 = 11027;
        }

        log_OutPublic(v48, "FE_POS", v49, v50, v44, a6, a7, a8, v51);
        return v20;
      }

      goto LABEL_59;
    }

    v12 = v52;
    v11 = v53;
    if ((v43 & 0x80000000) != 0)
    {
      return v20;
    }

LABEL_38:
    if (*(a5 + 8))
    {
      log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           REGEX FAILED", a6, a7, a8, 0);
      if (!v32)
      {
        v45 = *(a5 + 8);
        if (!*(a5 + 8))
        {
          goto LABEL_74;
        }

        v46 = "           return LH_FALSE";
LABEL_72:
        v14 = a9;
        log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v46, a6, a7, a8, 0);
        v45 = 0;
        goto LABEL_75;
      }
    }

    else if (!v32)
    {
LABEL_66:
      v45 = 0;
      goto LABEL_74;
    }

LABEL_42:
    *a10 = *(v25 + v21 + 2);
    v35 = "           negate match - return LH_TRUE";
    if (*(a5 + 8))
    {
      goto LABEL_43;
    }

LABEL_44:
    ++v22;
    v21 += 6;
    if (v22 >= *(v11 + 4))
    {
      v45 = 1;
      goto LABEL_74;
    }
  }

  v23 = v36;
  if (!v42)
  {
LABEL_59:
    v20 = 0;
    v12 = v52;
    v11 = v53;
    goto LABEL_38;
  }

  if (*(a5 + 8))
  {
    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "           REGEX FIRED", a6, a7, a8, 0);
  }

  v11 = v53;
  v20 = 0;
  if (!v32)
  {
    *a10 = *(v25 + v21 + 2);
    v35 = "           return LH_TRUE";
    v12 = v52;
    if (!*(a5 + 8))
    {
      goto LABEL_44;
    }

LABEL_43:
    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, v35, a6, a7, a8, 0);
    goto LABEL_44;
  }

  if (*(a5 + 8))
  {
    v46 = "           negate match - return LH_FALSE";
    goto LABEL_72;
  }

LABEL_73:
  v45 = 0;
LABEL_74:
  v14 = a9;
LABEL_75:
  *v14 = v45;
  return v20;
}

uint64_t logSTATCOMPCONTEXT_TRule(const char **a1, unsigned __int16 *a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  if (!*(a5 + 4))
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *a5;
    v13 = (*a5 + v10);
    if (*(v13 + 4))
    {
      if (v13[2])
      {
        cstdlib_strcpy(__s, "!");
      }

      result = statcomp_add2Str(*a4, a1, a2, __s);
      if ((result & 0x80000000) != 0)
      {
        break;
      }
    }

    result = statcomp_add2Str(*a4, a1, a2, "[");
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, (a4[38] + *(a4[39] + 4 * *v13)));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    sprintf(__s, " %d(", *(v12 + v10 + 2));
    result = statcomp_add2Str(*a4, a1, a2, __s);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, (a4[33] + *(a4[34] + 4 * *(v12 + v10 + 2))));
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = statcomp_add2Str(*a4, a1, a2, ")] ");
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    ++v11;
    v10 += 6;
    if (v11 >= *(a5 + 4))
    {
      return 0;
    }
  }

  return result;
}

uint64_t statcomp_matchRule(int a1, const char **a2, unsigned __int16 *a3, char *__s, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8, int *a9)
{
  v25 = 1;
  if (*(a5 + 8))
  {
    if (!a1)
    {
      goto LABEL_14;
    }

    if (*a8)
    {
      v16 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, *a8);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }
    }

    *__s = 2121504;
    v16 = statcomp_add2Str(*a5, a2, a3, __s);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v17 = *(a8 + 8);
    if (v17)
    {
      v16 = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, v17);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }
    }

    *__s = 2121504;
    v16 = statcomp_add2Str(*a5, a2, a3, __s);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v18 = *(a8 + 16);
    if (v18)
    {
      matched = logSTATCOMPCONTEXT_TRule(a2, a3, __s, a5, v18);
      if ((matched & 0x80000000) != 0)
      {
        return matched;
      }
    }

    else
    {
LABEL_14:
      matched = 0;
    }

    log_OutText(*(*a5 + 32), "FE_POS", 5, 0, "       <%s>", a6, a7, a8, *a2);
    cstdlib_strcpy(*a2, "");
  }

  else
  {
    matched = 0;
  }

  *a9 = 0;
  if (*a8)
  {
    matched = matchSTATCOMPCONTEXT_TRule("LEFT", a2, a3, __s, a5, a6, *a8, a7, &v25, &v24, 1u);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
      goto LABEL_26;
    }
  }

  v21 = *(a8 + 8);
  if (v21)
  {
    v25 = 0;
    matched = matchSTATCOMPCONTEXT_TRule("CUR", a2, a3, __s, a5, a6, v21, a7, &v25, &v24, 0);
    if ((matched & 0x80000000) != 0)
    {
      return matched;
    }

    v20 = v25;
    if (v25 != 1)
    {
LABEL_26:
      *a9 = v20;
      return matched;
    }
  }

  v22 = *(a8 + 16);
  if (!v22)
  {
    v20 = 1;
    goto LABEL_26;
  }

  v25 = 0;
  matched = matchSTATCOMPCONTEXT_TRule("RIGHT", a2, a3, __s, a5, a6, v22, a7, &v25, &v24, 2u);
  if ((matched & 0x80000000) == 0)
  {
    v20 = v25;
    goto LABEL_26;
  }

  return matched;
}

uint64_t readRULEREGEXES(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  cstdlib_memcpy(a4 + 1, (a2 + *a3), 2uLL);
  *a3 += 2;
  v8 = heap_Calloc(*(a1 + 8), 1, (24 * *(a4 + 4)) | 1);
  *a4 = v8;
  if (v8)
  {
    v13 = -1;
    v14 = 16;
    while (++v13 < *(a4 + 4))
    {
      v15 = *a4;
      v16 = *a4 + v14;
      result = readCONTEXT_0(a1, a2, a3, (v16 - 16));
      if ((result & 0x80000000) == 0)
      {
        result = readCONTEXT_0(a1, a2, a3, (v16 - 8));
        if ((result & 0x80000000) == 0)
        {
          result = readCONTEXT_0(a1, a2, a3, (v15 + v14));
          v14 += 24;
          if ((result & 0x80000000) == 0)
          {
            continue;
          }
        }
      }

      return result;
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v9, v10, v11, v12, v18);
    return 2313166858;
  }
}

uint64_t readCONTEXT_0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  __dst = 0;
  cstdlib_memcpy(&__dst, (a2 + *a3), 2uLL);
  *a3 += 2;
  if (!__dst)
  {
    return 0;
  }

  v8 = heap_Calloc(*(a1 + 8), 1, 17);
  if (!v8)
  {
    v21 = 2313166858;
LABEL_11:
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v9, v10, v11, v12, v23);
    return v21;
  }

  v13 = v8;
  v14 = __dst;
  *(v8 + 8) = __dst;
  v15 = heap_Calloc(*(a1 + 8), 1, (6 * v14) | 1);
  *v13 = v15;
  if (!v15)
  {
    v21 = 2313166858;
    heap_Free(*(a1 + 8), v13);
    goto LABEL_11;
  }

  if (*(v13 + 8))
  {
    v16 = 0;
    v17 = 0;
    v18 = *a3;
    do
    {
      cstdlib_memcpy((v15 + v16), (a2 + v18), 2uLL);
      v19 = *a3 + 2;
      *a3 = v19;
      cstdlib_memcpy((*v13 + v16 + 2), (a2 + v19), 2uLL);
      v20 = *a3 + 2;
      *a3 = v20;
      cstdlib_memcpy(&__dst + 2, (a2 + v20), 2uLL);
      v18 = *a3 + 2;
      *a3 = v18;
      v15 = *v13;
      *(*v13 + v16 + 4) = BYTE2(__dst);
      ++v17;
      v16 += 6;
    }

    while (v17 < *(v13 + 8));
  }

  v21 = 0;
  *a4 = v13;
  return v21;
}

uint64_t setIgtreeFVLookups(void *a1, uint64_t *a2, unsigned int a3)
{
  v6 = *(a1[20] + 8 * a3);
  v7 = heap_Calloc(*(*a1 + 8), 1, 12 * *(v6 + 1296) - 11);
  *a2 = v7;
  if (!v7)
  {
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0, v8, v9, v10, v11, v23);
    return 2313166858;
  }

  if (*(v6 + 1296) < 2u)
  {
    return 0;
  }

  v12 = 0;
  v24 = 0;
  while (1)
  {
    if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v12), "N1_", 3uLL))
    {
      if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v12), "N2_", 3uLL))
      {
        v13 = 3;
        if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v12), "N3_", 3uLL))
        {
          if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v12), "N4_", 3uLL))
          {
            if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v12), "N5_", 3uLL))
            {
              if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v12), "N6_", 3uLL))
              {
                if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v12), "N7_", 3uLL))
                {
                  if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v12), "N8_", 3uLL))
                  {
                    if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v12), "N9_", 3uLL))
                    {
                      if (cstdlib_strncmp(*(*(v6 + 1312) + 8 * v12), "N10_", 4uLL))
                      {
                        goto LABEL_24;
                      }

                      v13 = 10;
                    }

                    else
                    {
                      v13 = 9;
                    }
                  }

                  else
                  {
                    v13 = 8;
                  }
                }

                else
                {
                  v13 = 7;
                }
              }

              else
              {
                v13 = 6;
              }
            }

            else
            {
              v13 = 5;
            }
          }

          else
          {
            v13 = 4;
          }
        }
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 1;
    }

    *(*a2 + 12 * v12) = v13;
LABEL_24:
    if (statcomp_isDynamicFeature(*(*(v6 + 1312) + 8 * v12), &v24 + 1) != 1)
    {
      break;
    }

    v14 = *a2;
    *(*a2 + 12 * v12 + 4) = 0;
LABEL_31:
    *(v14 + 12 * v12++ + 8) = HIWORD(v24);
    if (*(v6 + 1296) - 1 <= v12)
    {
      return 0;
    }
  }

  if (statcomp_isDctFeature(*(*(v6 + 1312) + 8 * v12), &v24 + 1, *(a1[21] + 8 * a3)) == 1)
  {
    v14 = *a2;
    *(*a2 + 12 * v12 + 4) = 1;
    goto LABEL_31;
  }

  if (statcomp_isDctMappedFeature(*(*(v6 + 1312) + 8 * v12), &v24, (a1 + 15)) != 1)
  {
    v19 = 2313166848;
    v20 = *(*a1 + 32);
    v21 = "featurename";
    goto LABEL_36;
  }

  *(*a2 + 12 * v12 + 4) = 2;
  if (statcomp_isDctFeature(*(a1[15] + 16 * v24), &v24 + 1, *(a1[21] + 8 * a3)) == 1)
  {
    v14 = *a2;
    goto LABEL_31;
  }

  v19 = 2313166848;
  v20 = *(*a1 + 32);
  v21 = "featurename (mapped)";
LABEL_36:
  log_OutPublic(v20, "FE_POS", 35006, "%s%s", v15, v16, v17, v18, v21);
  return v19;
}

uint64_t statpos_igtrees_getBrkStrs(uint64_t a1, _BYTE *a2, _BYTE *a3, size_t a4)
{
  v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v9);
  if ((result & 0x80000000) == 0)
  {
    result = brokeraux_ComposeBrokerString(a1, "OOVigtree", 1, 1, v9, 0, 0, a2, a4);
    if ((result & 0x80000000) == 0)
    {
      return brokeraux_ComposeBrokerString(a1, "KNOWNigtree", 1, 1, v9, 0, 0, a3, a4);
    }
  }

  return result;
}

uint64_t statpos_igtrees_load(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  *v45 = 0;
  BrkStrs = statpos_igtrees_getBrkStrs(a3, v47, v46, 0x100uLL);
  if ((BrkStrs & 0x80000000) == 0)
  {
    *a5 = 0;
    v11 = heap_Calloc(*(a3 + 8), 1, 536);
    v16 = v11;
    if (!v11)
    {
      v41 = 2313166858;
      log_OutPublic(*(a3 + 32), "FE_POS", 35000, 0, v12, v13, v14, v15, v44);
LABEL_22:
      *a5 = v16;
      return v41;
    }

    cstdlib_strcpy((v11 + 24), a4);
    if ((ssftriff_reader_ObjOpen(a1, a2, 2, v46, "IGTR", 1031, v45) & 0x80000000) != 0)
    {
      *(v16 + 8) = 0;
      log_OutPublic(*(a3 + 32), "FE_POS", 63000, "%s%x", v17, v18, v19, v20, "treename:");
      v41 = 2313166848;
    }

    else
    {
      v21 = heap_Calloc(*(a3 + 8), 1, 1600);
      *(v16 + 8) = v21;
      if (v21)
      {
        v26 = igtree_Init(a1, a2, *v45, v21);
        if ((v26 & 0x80000000) != 0 || (v26 = ssftriff_reader_ObjClose(*v45, v27, v28, v29, v30, v31, v32, v33), (v26 & 0x80000000) != 0))
        {
LABEL_16:
          v41 = v26;
          goto LABEL_17;
        }

        if ((ssftriff_reader_ObjOpen(a1, a2, 2, v47, "IGTR", 1031, v45) & 0x80000000) != 0)
        {
          v41 = 0;
          *v16 = 0;
          *(v16 + 16) = 1;
          goto LABEL_25;
        }

        v21 = heap_Calloc(*(a3 + 8), 1, 1600);
        *v16 = v21;
        if (v21)
        {
          v26 = igtree_Init(a1, a2, *v45, v21);
          if ((v26 & 0x80000000) == 0)
          {
            v41 = ssftriff_reader_ObjClose(*v45, v34, v35, v36, v37, v38, v39, v40);
            if ((v41 & 0x80000000) != 0)
            {
              goto LABEL_17;
            }

LABEL_25:
            if (*(v16 + 8) || *v16)
            {
              *(v16 + 20) = 1;
            }

            goto LABEL_22;
          }

          goto LABEL_16;
        }
      }

      v41 = 2313166858;
      log_OutPublic(*(a3 + 32), "FE_POS", 35000, v21, v22, v23, v24, v25, v44);
    }

LABEL_17:
    v42 = *(v16 + 8);
    if (v42)
    {
      heap_Free(*(a3 + 8), v42);
    }

    if (*v16)
    {
      heap_Free(*(a3 + 8), *v16);
    }

    heap_Free(*(a3 + 8), v16);
    v16 = 0;
    goto LABEL_22;
  }

  return BrkStrs;
}

uint64_t statpos_igtrees_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    return statpos_igtrees_unload(v5, *(a3 + 32));
  }

  return result;
}

uint64_t statpos_igtrees_unload(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (v4)
  {
    v5 = igtree_Deinit(a1, v4);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = a2[1];
  if (!v6)
  {
LABEL_8:
    heap_Free(*(a1 + 8), a2);
    return v5;
  }

  v5 = igtree_Deinit(a1, v6);
  if ((v5 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a2[1]);
    a2[1] = 0;
    goto LABEL_8;
  }

  return v5;
}

uint64_t statpos_igtrees_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  result = InitRsrcFunction(a1, a2, &v36);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_memcpy(v11, v36, 0x1A0uLL);
    v12 = *(a5 + 32);
    return statpos_igtrees_load(a1, a2, v11, a3, (a4 + 32));
  }

  return result;
}

uint64_t statpos_igtrees_label(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = 0;
  v57 = 0;
  __s = 0;
  v8 = *(*(a4 + 8) + 1296) - 1;
  if (!*(a4 + 16) && *(*a4 + 1296) - 1 > v8)
  {
    v8 = *(*a4 + 1296) - 1;
  }

  HIDWORD(v57) = 0;
  v9 = statpos_fv_new(a1, v8, &v56);
  if ((v9 & 0x80000000) != 0)
  {
    inited = v9;
LABEL_44:
    statpos_fv_dealloc(a1, &v56);
    return inited;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, 8 * v8);
  if (!v10)
  {
    inited = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v11, v12, v13, v14, v54);
    goto LABEL_44;
  }

  v15 = v10;
  inited = initFeatureVector(a1, v10, v8);
  if ((inited & 0x80000000) == 0 && *(a3 + 8))
  {
    v21 = 0;
    v22 = 72;
    do
    {
      if (*(a2 + 188) == 1)
      {
        if (*(a4 + 16) == 1 || !*(*a3 + v22 - 64))
        {
          features = statpos_get_features(a1, a3, a2, v21, *(*(a4 + 8) + 1312), (*(*(a4 + 8) + 1296) - 1), &v56, *(a4 + 8));
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          features = statpos_get_features_for_igtree(a1, v15, &v56);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v24 = *(a4 + 8);
        }

        else
        {
          features = statpos_get_features(a1, a3, a2, v21, *(*a4 + 1312), (*(*a4 + 1296) - 1), &v56, *a4);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          features = statpos_get_features_for_igtree(a1, v15, &v56);
          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v24 = *a4;
        }

        inited = igtree_Process(v24, v15, &__s);
        if ((inited & 0x80000000) != 0)
        {
          break;
        }

        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate OOV Word[%d] %s %s -> %s", v38, v39, v40, v21);
        v41 = cstdlib_strlen(__s);
        v42 = heap_Calloc(*(a1 + 8), 1, v41 + 1);
        *(*a3 + v22 + 16) = v42;
        if (!v42)
        {
LABEL_46:
          inited = 2313166858;
          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0, v30, v31, v32, v33, v54);
          break;
        }

        cstdlib_strcpy(v42, __s);
      }

      else
      {
        v25 = *a3;
        v26 = *(*a3 + v22 - 64);
        if (v26 == 1)
        {
          if (*(a4 + 16))
          {
LABEL_28:
            features = statpos_get_features(a1, a3, a2, v21, *(*(a4 + 8) + 1312), (*(*(a4 + 8) + 1296) - 1), &v56, *(a4 + 8));
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            features = statpos_get_features_for_igtree(a1, v15, &v56);
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            features = igtree_Process(*(a4 + 8), v15, &__s);
            if ((features & 0x80000000) != 0)
            {
              goto LABEL_45;
            }

            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate Word[%d] %s %s -> %s", v43, v44, v45, v21);
            v46 = checkPOSIsLegal(__s, v21, a3, a2);
            features = statpos_dumpFeatureVectorAndResult(a1, *(a3 + 100), (a3 + 80), (a3 + 96), "KNOWNWORD", **(*a3 + v22 - 24), *(a4 + 8), &v56, __s, v46, *(*(*a3 + v22 - 24) + 24), *(*a3 + v22 + 40));
          }

          else
          {
            features = statpos_get_features(a1, a3, a2, v21, *(*a4 + 1312), (*(*a4 + 1296) - 1), &v56, *a4);
            if ((features & 0x80000000) != 0 || (features = statpos_get_features_for_igtree(a1, v15, &v56), (features & 0x80000000) != 0) || (features = igtree_Process(*a4, v15, &__s), (features & 0x80000000) != 0))
            {
LABEL_45:
              inited = features;
              break;
            }

            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Disambiguate OOV Word[%d] %s %s -> %s", v49, v50, v51, v21);
            v52 = checkPOSIsLegal(__s, v21, a3, a2);
            features = statpos_dumpFeatureVectorAndResult(a1, *(a3 + 100), (a3 + 80), (a3 + 96), "OOVWORD", **(*a3 + v22 - 24), *a4, &v56, __s, v52, *(*(*a3 + v22 - 24) + 24), *(*a3 + v22 + 40));
          }

          if ((features & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v47 = cstdlib_strlen(__s);
          v48 = heap_Calloc(*(a1 + 8), 1, v47 + 1);
          *(*a3 + v22 + 16) = v48;
          if (!v48)
          {
            goto LABEL_46;
          }

          cstdlib_strcpy(v48, __s);
          inited = statpos_fv_clear(&v56);
          if ((inited & 0x80000000) != 0)
          {
            break;
          }

          clearFeatureVector(v15, v8);
          goto LABEL_36;
        }

        if (v26 || *(v25 + v22) > 1u)
        {
          goto LABEL_28;
        }

        v27 = *(v25 + v22 + 8);
        if (!v27)
        {
          log_OutPublic(*(a1 + 32), "FE_POS", 35008, "%s%s", v16, v17, v18, v19, "word=");
          inited = 2313166848;
          break;
        }

        v28 = cstdlib_strlen(v27);
        v29 = heap_Calloc(*(a1 + 8), 1, v28 + 1);
        v34 = *a3 + v22;
        *(v34 + 16) = v29;
        if (!v29)
        {
          goto LABEL_46;
        }

        cstdlib_strcpy(v29, *(v34 + 8));
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Skip disambiguation on Word[%d] %s %s", v35, v36, v37, v21);
      }

LABEL_36:
      ++v21;
      v22 += 160;
    }

    while (v21 < *(a3 + 8));
  }

  statpos_fv_dealloc(a1, &v56);
  freeFeatureVector(a1, v15, v8);
  heap_Free(*(a1 + 8), v15);
  return inited;
}

uint64_t checkPOSIsLegal(char *__s1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  if (!*(*a3 + 160 * a2 + 72))
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (cstdlib_strcmp(__s1, (*(a4 + 296) + *(*(a4 + 304) + 4 * *(*(v4 + 160 * a2 + 64) + v8)))))
  {
    ++v9;
    v4 = *a3;
    v8 += 24;
    if (v9 >= *(*a3 + 160 * a2 + 72))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t com_useStatHmogrphMosyntOff(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4, const char *a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "stathmogrph_fepos_mosyntoff", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v11 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v11)
      {
        *v11 = 0;
      }

      a5 = **&__c[3];
    }

    if (cstdlib_strcmp(a5, "yes"))
    {
      v12 = cstdlib_strcmp(a5, "YES") == 0;
    }

    else
    {
      v12 = 1;
    }

    *a4 = v12;
    *&__c[1] = -1;
    v13 = (*(a1 + 96))(a2, a3, "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c);
    result = 0;
    if ((v13 & 0x80000000) == 0 && *&__c[1] == 1)
    {
      result = 0;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t checkUsePKUPOS(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "mosynt_usepkupos", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    v6 = *&__c[1];
    if (*&__c[1])
    {
      v7 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v7)
      {
        *v7 = 0;
      }

      v8 = **&__c[3];
      if (cstdlib_strcmp(**&__c[3], "yes"))
      {
        v6 = cstdlib_strcmp(v8, "YES") == 0;
      }

      else
      {
        v6 = 1;
      }
    }

    result = 0;
    *a4 = v6;
  }

  return result;
}

uint64_t checkReplaceAsterisk(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "statpos_replaceasterisk", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    v6 = *&__c[1];
    if (*&__c[1])
    {
      v7 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v7)
      {
        *v7 = 0;
      }

      v6 = cstdlib_strcmp(**&__c[3], "1") == 0;
    }

    result = 0;
    *a4 = v6;
  }

  return result;
}

uint64_t fe_Process_UserCOMPMarkup(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  *a5 = 1;
  if (*(a1 + 1764) == 1)
  {
    v10 = *(a1 + 56);

    return statcomp_processUserMarkup(v10, a3, a4, a1 + 1744);
  }

  return result;
}

uint64_t fe_pos_Process_StatCOMP(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v17 = 0;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  *a5 = 1;
  SentenceData = statcomp_getSentenceData(*(a1 + 56), a3, a4, (a1 + 1744));
  if ((SentenceData & 0x80000000) == 0)
  {
    if (*(a1 + 2184))
    {
      v17 = 0;
      SentenceData = statcomp_processCompounds((a1 + 1744), &v17, v9, v10, v11, v12, v13, v14);
      if ((SentenceData & 0x80000000) == 0 && v17 == 1)
      {
        SentenceData = statcomp_saveCompoundsToLingdb(*(a1 + 56), a3, a4, a1 + 1744);
      }
    }
  }

  statcomp_freeSentenceData(a1 + 1744);
  return SentenceData;
}

uint64_t fe_pos_Process_Mosynt(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v39 = 0;
  v9 = 2313166858;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  v49 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  memset(v37, 0, sizeof(v37));
  *a5 = 1;
  v10 = heap_Alloc(*(*a1 + 8), 5000);
  if (v10)
  {
    v15 = v10;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    v45 = 0;
    v44 = 0;
    v40 = 0;
    v38 = 0;
    v20 = heap_Alloc(*(*a1 + 8), 20000);
    if (v20)
    {
      v9 = (*(a1[7] + 104))(a3, a4, 1, 0, &v48 + 2);
      if ((v9 & 0x80000000) == 0 && ((*(a1[7] + 184))(a3, a4, HIWORD(v48), 0, &v39) & 0x80000000) == 0 && v39 == 1)
      {
        v9 = (*(a1[7] + 176))(a3, a4, HIWORD(v48), 0, &v49, &v47);
        if ((v9 & 0x80000000) == 0 && v47 >= 2u)
        {
          started = mosynt_StartSentenceAnalysis(a1[6], a1[14], a1[15], a1[16], a1[19], a1[20], v37);
          if ((started & 0x80000000) == 0)
          {
            started = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v48), &v48);
            if ((started & 0x80000000) == 0)
            {
              while (v48)
              {
                started = (*(a1[7] + 168))(a3, a4);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_51;
                }

                if (v44 <= 0xA && ((1 << v44) & 0x610) != 0)
                {
                  started = (*(a1[7] + 168))(a3, a4, v48, 1, 1, &v46, &v47);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 168))(a3, a4, v48, 2, 1, &v45, &v47);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v48, 3, &v41, &v47);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v48, 5, &v43, &v47);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v48, 6, &v42, &v47);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 168))(a3, a4, v48, 7, 1, &v40, &v47);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  mosynt_InsertTerminals(a1[6], v37, v46, (v45 + 1), v43, v40, v48, v49, v41);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }
                }

                v9 = (*(a1[7] + 120))(a3, a4, v48, &v48);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_29;
                }
              }

              mosynt_ParseSentence(a1[6], v37);
              if ((started & 0x80000000) == 0)
              {
                started = (*(a1[7] + 104))(a3, a4, 1, 0, &v48 + 2);
                if ((started & 0x80000000) == 0)
                {
                  started = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v48), &v48);
                  if ((started & 0x80000000) == 0)
                  {
                    v24 = v48;
                    if (v48)
                    {
                      while (1)
                      {
                        started = (*(a1[7] + 120))(a3, a4, v24, &v47 + 2);
                        if ((started & 0x80000000) != 0)
                        {
                          break;
                        }

                        started = (*(a1[7] + 168))(a3, a4, v48, 0, 1, &v44, &v47);
                        if ((started & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v44 <= 0xA && ((1 << v44) & 0x610) != 0)
                        {
                          started = mosynt_GetTerminalInfoById(a1[6], v37, v48, &v38, v15, 5000);
                          if ((started & 0x80000000) != 0)
                          {
                            break;
                          }

                          v26 = a1[7];
                          v27 = v48;
                          if (v38)
                          {
                            v28 = *(v26 + 160);
                            v29 = cstdlib_strlen(v15);
                            v28(a3, a4, v27, 5, (v29 + 1), v15, &v46 + 2);
                            started = (*(a1[7] + 176))(a3, a4, v48, 3, &v41, &v47);
                            if ((started & 0x80000000) != 0)
                            {
                              break;
                            }

                            log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "(sgram) keep lingdb record %d : POS=%s PHON=%s", v30, v31, v32, v48);
                          }

                          else
                          {
                            started = (*(v26 + 192))(a3, a4, v48);
                            if ((started & 0x80000000) != 0)
                            {
                              break;
                            }
                          }
                        }

                        v24 = HIWORD(v47);
                        LOWORD(v48) = HIWORD(v47);
                        if (!HIWORD(v47))
                        {
                          goto LABEL_48;
                        }
                      }
                    }

                    else
                    {
LABEL_48:
                      started = mosynt_SyntTreeToString(a1[6], v37, v20, 20000);
                      if ((started & 0x80000000) == 0)
                      {
                        v33 = *(a1[7] + 160);
                        v34 = HIWORD(v48);
                        v35 = cstdlib_strlen(v20);
                        started = v33(a3, a4, v34, 2, (v35 + 1), v20, &v46 + 2);
                        if ((started & 0x80000000) == 0)
                        {
                          started = mosynt_FinishSentenceAnalysis(a1[6], v37);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_51:
          v9 = started;
        }
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0, v16, v17, v18, v19, v36);
    }

LABEL_29:
    heap_Free(*(*a1 + 8), v15);
    if (v20)
    {
      heap_Free(*(*a1 + 8), v20);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0, v11, v12, v13, v14, v36);
  }

  return v9;
}

uint64_t fe_pos_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2313166849;
  }

  result = 0;
  *a2 = &IFePos;
  return result;
}

uint64_t fe_pos_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2313166855;
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

uint64_t fe_pos_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Str = 2313166855;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  __s1 = "";
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v36);
    if ((inited & 0x80000000) == 0)
    {
      v12 = heap_Calloc(*(v36 + 8), 1, 2240);
      v17 = v12;
      v18 = v36;
      if (v12)
      {
        *v12 = v36;
        v12[1] = a3;
        v12[4] = a1;
        v12[5] = a2;
        v12[2] = a4;
        v12[3] = a1;
        v19 = heap_Calloc(*(v18 + 8), 1, 1040);
        *(v17 + 48) = v19;
        if (v19)
        {
          *v19 = a3;
          v19[1] = a4;
          Object = objc_GetObject(*(v36 + 48), "LINGDB", &v35);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          *(v17 + 56) = *(v35 + 8);
          Object = objc_GetObject(*(v36 + 48), "FE_DEPES", &v34);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v21 = v34;
          *(v17 + 80) = *(v34 + 8);
          *(v17 + 64) = *(v21 + 16);
          Object = objc_GetObject(*(v36 + 48), "FE_DCTLKP", &v33);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v22 = v33;
          v23 = *(v33 + 8);
          *(v17 + 128) = v23;
          *(v17 + 112) = *(v22 + 16);
          *(v17 + 180) = 0;
          Object = statpos_checkIfActive(*(v17 + 112), *(v17 + 120), v23, a3, a4, v36, (v17 + 200), (v17 + 176), (v17 + 192), (v17 + 2232), (v17 + 2236));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          Object = com_useStatHmogrphMosyntOff(*(v17 + 128), *(v17 + 112), *(v17 + 120), (v17 + 188), "no");
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v24 = *(v17 + 176);
          if (*(v17 + 1616) == 1)
          {
            if (!v24)
            {
              *(v17 + 176) = 0x100000001;
            }
          }

          else if (!v24)
          {
LABEL_19:
            Object = statphr_readIGTree(a3, a4, *(v17 + 32), *(v17 + 40), v36, (v17 + 1728), (v17 + 1720));
            if ((Object & 0x80000000) == 0)
            {
              v26 = (v17 + 1736);
              *(v17 + 1736) = 0;
              Object = statcomp_useStatCOMP(*(v17 + 112), *(v17 + 120), *(v17 + 128), (v17 + 1736));
              if ((Object & 0x80000000) == 0)
              {
                if (*v26 != 1 || (*(v17 + 1744) = v36, *(v17 + 2128) = *(v17 + 112), *(v17 + 2144) = *(v17 + 128), *(v17 + 1952) = 0, *(v17 + 1960) = 0, Object = nuance_pcre_ObjOpen(a3, a4, v17 + 1952), (Object & 0x80000000) == 0) && (Object = nuance_pcre_Init(*(v17 + 1952), *(v17 + 1960), 0x1Eu, 50), (Object & 0x80000000) == 0) && (Object = statcomp_rules_load(a3, a4, v36, v17 + 1752, *(v17 + 112), *(v17 + 120), *(v17 + 128), v27), (Object & 0x80000000) == 0))
                {
                  Object = checkUsePKUPOS(*(v17 + 128), *(v17 + 112), *(v17 + 120), (v17 + 184));
                  if ((Object & 0x80000000) == 0)
                  {
                    *(v17 + 136) = 0;
                    v28 = (v17 + 136);
                    *(v17 + 144) = 0;
                    Str = paramc_ParamGetStr(*(v36 + 40), "fecfg", &__s1);
                    if ((Str & 0x80000000) != 0)
                    {
                      goto LABEL_41;
                    }

                    if (!cstdlib_strcmp(__s1, "cfg4"))
                    {
                      *(v17 + 148) = 1;
                    }

                    if (*v26 || *(v17 + 184))
                    {
                      goto LABEL_31;
                    }

                    Object = wgram_CheckIfExists(a3, a4, *(v17 + 32), *(v17 + 40), (v17 + 144));
                    if ((Object & 0x80000000) == 0)
                    {
                      Str = sgram_CheckIfExists(a3, a4, (v17 + 140));
                      if ((Str & 0x80000000) != 0)
                      {
                        goto LABEL_41;
                      }

                      if (!*(v17 + 140))
                      {
                        *v28 = 0;
LABEL_34:
                        *(v17 + 88) = 0;
                        *(v17 + 96) = 0;
                        v29 = 62341;
                        *(v17 + 104) = 0;
LABEL_42:
                        *a5 = v17;
                        *(a5 + 8) = v29;
                        return Str;
                      }

                      Str = com_mosynt_UseMosynt(*(v17 + 112), *(v17 + 120), *(v17 + 128), (v17 + 136));
                      if ((Str & 0x80000000) != 0)
                      {
LABEL_41:
                        *a5 = v17;
                        *(a5 + 8) = 62341;
                        fe_pos_ObjClose(v17, *(a5 + 8));
                        v17 = 0;
                        v29 = 0;
                        goto LABEL_42;
                      }

LABEL_31:
                      if (!*v28)
                      {
                        goto LABEL_34;
                      }

                      if (*(v17 + 188))
                      {
                        goto LABEL_34;
                      }

                      Str = fe_pos_LoadMosyntData(a3, a4, v17);
                      if ((Str & 0x80000000) == 0)
                      {
                        goto LABEL_34;
                      }

                      goto LABEL_41;
                    }
                  }
                }
              }
            }

LABEL_40:
            Str = Object;
            goto LABEL_41;
          }

          v25 = *(v17 + 192);
          *(v17 + 1636) = *(v17 + 188);
          Object = statpos_load_resources(*(v17 + 64), *(v17 + 72), *(v17 + 80), *(v17 + 8), *(v17 + 16), *(v17 + 32), *(v17 + 40), v36, *(v17 + 24), *(v17 + 112), *(v17 + 128), v17 + 200, *(v17 + 180), (v17 + 176), v25);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          Object = checkReplaceAsterisk(*(v17 + 128), *(v17 + 112), *(v17 + 120), (v17 + 1640));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          goto LABEL_19;
        }

        v18 = v36;
      }

      log_OutPublic(*(v18 + 32), "FE_POS", 35000, 0, v13, v14, v15, v16, v31);
      Str = 2313166858;
      goto LABEL_41;
    }

    return inited;
  }

  return Str;
}

uint64_t fe_pos_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (a1)
  {
    if (*(a1 + 44))
    {
      statpos_unload_resources(a1[4], a1[5], *a1, (a1 + 25), *(a1 + 45), *(a1 + 48));
    }

    if (*(a1 + 434))
    {
      statcomp_rules_unload((a1 + 219));
      NullHandle = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(a1[244], a1[245], NullHandle, v5))
      {
        nuance_pcre_DeInit(a1[244], a1[245]);
        nuance_pcre_ObjClose(a1[244], a1[245]);
      }
    }

    if (*(a1 + 430))
    {
      statphr_freeIGTree(*a1, a1[3], a1[216]);
    }

    fe_pos_UnloadMosyntData(a1);
    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[10])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[16])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v6 = a1[6];
    if (v6)
    {
      heap_Free(*(*a1 + 8), v6);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_pos_ObjReopen(void *a1, int a2)
{
  v3 = 2313166854;
  v15 = "";
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (a1)
  {
    if (*(a1 + 44) == 1)
    {
      IGTree = statpos_unload_resources(a1[4], a1[5], *a1, (a1 + 25), *(a1 + 45), *(a1 + 48));
      if ((IGTree & 0x80000000) != 0)
      {
        return IGTree;
      }
    }

    *(a1 + 45) = 0;
    IGTree = statpos_checkIfActive(a1[14], a1[15], a1[16], a1[1], a1[2], *a1, a1 + 50, a1 + 44, a1 + 48, a1 + 558, a1 + 559);
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    IGTree = com_useStatHmogrphMosyntOff(a1[16], a1[14], a1[15], a1 + 47, "no");
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    v5 = *(a1 + 44);
    if (*(a1 + 404) != 1 || v5)
    {
      if (v5 != 1)
      {
LABEL_15:
        if (*(a1 + 434) == 1)
        {
          IGTree = statcomp_rules_unload((a1 + 219));
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          NullHandle = safeh_GetNullHandle();
          if (!safeh_HandlesEqual(a1[244], a1[245], NullHandle, v9))
          {
            nuance_pcre_DeInit(a1[244], a1[245]);
            nuance_pcre_ObjClose(a1[244], a1[245]);
          }
        }

        v10 = a1 + 217;
        *(a1 + 434) = 0;
        IGTree = statcomp_useStatCOMP(a1[14], a1[15], a1[16], a1 + 434);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (*v10 == 1)
        {
          v11 = a1[1];
          a1[218] = *a1;
          *(a1 + 133) = *(a1 + 7);
          a1[268] = a1[16];
          a1[244] = 0;
          *(a1 + 490) = 0;
          IGTree = nuance_pcre_ObjOpen(v11, a1[2], (a1 + 244));
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          IGTree = nuance_pcre_Init(a1[244], a1[245], 0x1Eu, 50);
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          IGTree = statcomp_rules_load(a1[1], a1[2], *a1, (a1 + 219), a1[14], a1[15], a1[16], v12);
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }
        }

        if (*(a1 + 430) == 1)
        {
          statphr_freeIGTree(*a1, a1[3], a1[216]);
        }

        *(a1 + 430) = 0;
        IGTree = statphr_readIGTree(a1[1], a1[2], a1[4], a1[5], *a1, a1 + 216, a1 + 430);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        IGTree = fe_pos_UnloadMosyntData(a1);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        a1[17] = 0;
        v13 = a1 + 17;
        a1[18] = 0;
        IGTree = paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v15);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (!cstdlib_strcmp(v15, "cfg4"))
        {
          *(a1 + 37) = 1;
        }

        IGTree = checkUsePKUPOS(a1[16], a1[14], a1[15], a1 + 46);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (*v10 || *(a1 + 46))
        {
          v3 = 0;
        }

        else
        {
          IGTree = wgram_CheckIfExists(a1[1], a1[2], a1[4], a1[5], a1 + 36);
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          v3 = sgram_CheckIfExists(a1[1], a1[2], a1 + 35);
          if ((v3 & 0x80000000) != 0)
          {
            return v3;
          }

          if (!*(a1 + 35))
          {
            *v13 = 0;
            return v3;
          }

          v3 = com_mosynt_UseMosynt(a1[14], a1[15], a1[16], a1 + 34);
          if ((v3 & 0x80000000) != 0)
          {
            return v3;
          }
        }

        if (*v13)
        {
          return fe_pos_LoadMosyntData(a1[1], a1[2], a1);
        }

        return v3;
      }

      v6 = *(a1 + 45);
    }

    else
    {
      a1[22] = 0x100000001;
      v6 = 1;
    }

    v7 = *(a1 + 48);
    *(a1 + 409) = *(a1 + 47);
    IGTree = statpos_load_resources(a1[8], a1[9], a1[10], a1[1], a1[2], a1[4], a1[5], *a1, a1[3], *(a1 + 7), a1[16], (a1 + 25), v6, a1 + 44, v7);
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    IGTree = checkReplaceAsterisk(a1[16], a1[14], a1[15], a1 + 410);
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    goto LABEL_15;
  }

  return v3;
}

uint64_t fe_pos_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (*(a1 + 176))
  {
    result = statpos_setParams(*a1, a1 + 208);
  }

  if (*(a1 + 1736))
  {
    v4 = *a1;

    return statcomp_setParams(v4, a1 + 1752);
  }

  return result;
}

uint64_t fe_pos_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v175 = *MEMORY[0x277D85DE8];
  v160 = 0;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  *a5 = 1;
  if (*(a1 + 176))
  {
    v10 = statpos_process(*(a1 + 64), *(a1 + 72), *(a1 + 80), a3, a4, *(a1 + 56), *(a1 + 112), *(a1 + 120), *(a1 + 128), a1 + 200, *(a1 + 180), *(a1 + 144), *(a1 + 140), *(a1 + 148), *(a1 + 192));
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }
  }

  if (*(a1 + 136) && !*(a1 + 188))
  {
    fe_pos_Process_Mosynt(a1, a2, a3, a4, a5);
  }

  v11 = fe_Process_UserCOMPMarkup(a1, a2, a3, a4, a5);
  if ((v11 & 0x80000000) == 0)
  {
    if (!*(a1 + 1736) || *(a1 + 1616) || (v11 = fe_pos_Process_StatCOMP(a1, a2, a3, a4, a5), (v11 & 0x80000000) == 0))
    {
      __s = 0;
      __src = 0;
      __s1 = 0;
      v162 = 0;
      v163 = 0;
      if (!*(a1 + 176) || *(a1 + 1720) && !*(a1 + 1616) && (*(a1 + 192) && !*(a1 + 2232) ? (v12 = statphr_MorphemeProcess(*a1, *(a1 + 56), a3, a4)) : (v12 = statphr_Process(*a1, *(a1 + 56), a3, a4, *(a1 + 1728), *(a1 + 1736), *(a1 + 2236))), (v11 = v12, (v12 & 0x80000000) == 0) && !*(a1 + 176)))
      {
        if (!*(a1 + 136))
        {
          v169 = 0;
          v170 = 0;
          v167 = 0;
          v168 = 0;
          v164 = 0;
          v161 = 0;
          cstdlib_strcpy(__dst, "partofspeech");
          *a5 = 1;
          v11 = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v170 + 2);
          if ((v11 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a3, a4, HIWORD(v170), 0, &v160) & 0x80000000) == 0 && v160 == 1)
          {
            v11 = (*(*(a1 + 56) + 176))(a3, a4, HIWORD(v170), 0, &__s, &v169 + 2);
            if ((v11 & 0x80000000) == 0 && HIWORD(v169) >= 2u)
            {
              memset(v172, 0, sizeof(v172));
              v14 = *(*a1 + 8);
              v15 = cstdlib_strlen(__s);
              v16 = heap_Alloc(v14, (v15 + 257));
              *(a1 + 88) = v16;
              if (!v16 || (cstdlib_strcpy(v16, ""), v21 = *(*a1 + 8), v22 = cstdlib_strlen(__s), v23 = heap_Alloc(v21, (v22 + 257)), *(a1 + 96) = v23, v24 = (a1 + 96), !v23) || (cstdlib_strcpy(v23, ""), v25 = *(*a1 + 8), v26 = cstdlib_strlen(__s), v27 = heap_Alloc(v25, (v26 + 257)), (*(a1 + 104) = v27) == 0))
              {
LABEL_154:
                log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0, v17, v18, v19, v20, v150);
                v86 = 8202;
                goto LABEL_155;
              }

              v158 = (a1 + 104);
              cstdlib_strcpy(v27, "");
              v28 = cstdlib_strlen(__s);
              v29 = (*(*(a1 + 56) + 104))(a3, a4, 2, HIWORD(v170), &v170);
              if ((v29 & 0x80000000) == 0)
              {
                v33 = 0;
                v155 = 0;
                v156 = 0;
                v157 = (a1 + 96);
                v34 = 0;
                v153 = 0;
                v154 = (v28 + 1);
                v35 = 1;
                v36 = 1;
                while (v170)
                {
                  v29 = (*(*(a1 + 56) + 168))(a3, a4);
                  if ((v29 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  if (v167 > 0xA || ((1 << v167) & 0x610) == 0)
                  {
                    goto LABEL_122;
                  }

                  v29 = (*(*(a1 + 56) + 168))(a3, a4, v170, 1, 1, &v168 + 2, &v169 + 2);
                  if ((v29 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  v29 = (*(*(a1 + 56) + 168))(a3, a4, v170, 2, 1, &v168, &v169 + 2);
                  if ((v29 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  v29 = (*(*(a1 + 56) + 176))(a3, a4, v170, 5, &__s1, &v169 + 2);
                  if ((v29 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  v29 = (*(*(a1 + 56) + 176))(a3, a4, v170, 6, &__src, &v169 + 2);
                  if ((v29 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  v29 = (*(*(a1 + 56) + 168))(a3, a4, v170, 7, 1, &v164, &v169 + 2);
                  if ((v29 & 0x80000000) != 0)
                  {
                    goto LABEL_256;
                  }

                  if (v35 == 1 || HIWORD(v168) != v33)
                  {
                    v151 = v35;
                    if (!v35)
                    {
                      ssft_qsort(__s2, v156, 82, compare_1);
                      if (v156)
                      {
                        v38 = 0;
                        v39 = (a1 + 104);
                        do
                        {
                          if (v38)
                          {
                            if (cstdlib_strcmp(&__s2[v38], ""))
                            {
                              if (cstdlib_strcmp(*v24, ""))
                              {
                                v40 = *v157;
                                v41 = &v40[cstdlib_strlen(*v157)];
                                v24 = (a1 + 96);
                                if (*(v41 - 1) != 32)
                                {
                                  cstdlib_strcat(*v157, "\");
                                }
                              }
                            }

                            cstdlib_strcat(*v24, &__s2[v38]);
                            v39 = (a1 + 104);
                            if (!cstdlib_strcmp(&__s2[v38 + 40], ""))
                            {
                              goto LABEL_61;
                            }

                            if (!cstdlib_strcmp(*v158, ""))
                            {
                              goto LABEL_61;
                            }

                            v42 = *v158;
                            v43 = cstdlib_strlen(*v158);
                            v39 = (a1 + 104);
                            v44 = (a1 + 104);
                            v45 = "\";
                            if (v42[v43 - 1] == 32)
                            {
                              goto LABEL_61;
                            }
                          }

                          else
                          {
                            v45 = __s2;
                            v44 = v24;
                          }

                          cstdlib_strcat(*v44, v45);
LABEL_61:
                          cstdlib_strcat(*v39, &__s2[v38 + 40]);
                          v38 += 82;
                        }

                        while (82 * v156 != v38);
                      }

                      v156 = 0;
                    }

                    if (v155 <= v153 && WORD2(v153) <= v153)
                    {
                      if (v153 - v155 >= 1)
                      {
                        v55 = 0;
                        do
                        {
                          cstdlib_strcat(*v24, "~");
                          ++v55;
                        }

                        while (v153 - v155 > v55);
                      }

                      if (v153 - WORD2(v153) >= 1)
                      {
                        v56 = 0;
                        do
                        {
                          cstdlib_strcat(*v158, "~");
                          ++v56;
                        }

                        while (v153 - WORD2(v153) > v56);
                      }
                    }

                    else
                    {
                      if (v155 <= WORD2(v153))
                      {
                        v46 = WORD2(v153);
                      }

                      else
                      {
                        v46 = v155;
                      }

                      v47 = v46 - v153;
                      if (v47 >= 1)
                      {
                        for (i = 0; v47 > i; ++i)
                        {
                          if (v36 << 8 == v34)
                          {
                            v36 = (v36 + 1);
                            v49 = v154 + (v36 << 8);
                            v50 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v49);
                            if (!v50)
                            {
                              goto LABEL_154;
                            }

                            *(a1 + 88) = v50;
                            v51 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v49);
                            if (!v51)
                            {
                              goto LABEL_154;
                            }

                            *(a1 + 96) = v51;
                            v52 = heap_Realloc(*(*a1 + 8), *(a1 + 104), v49);
                            if (!v52)
                            {
                              goto LABEL_154;
                            }

                            *v158 = v52;
                          }

                          cstdlib_strcat(*(a1 + 88), "~");
                          ++v34;
                        }
                      }

                      if (WORD2(v153) <= v155)
                      {
                        v57 = v155 - WORD2(v153);
                        v24 = (a1 + 96);
                        if (v57 >= 1)
                        {
                          v58 = 0;
                          do
                          {
                            cstdlib_strcat(*v158, "~");
                            ++v58;
                          }

                          while (v57 > v58);
                        }
                      }

                      else
                      {
                        v53 = WORD2(v153) - v155;
                        v24 = (a1 + 96);
                        if (v53 >= 1)
                        {
                          v54 = 0;
                          do
                          {
                            cstdlib_strcat(*v157, "~");
                            ++v54;
                          }

                          while (v53 > v54);
                        }
                      }
                    }

                    if (HIWORD(v168) > v168)
                    {
                      v86 = 16049;
LABEL_155:
                      v11 = v86 | 0x89E00000;
LABEL_156:
                      v87 = *(a1 + 88);
                      if (v87)
                      {
                        heap_Free(*(*a1 + 8), v87);
                      }

                      *(a1 + 88) = 0;
                      v88 = *(a1 + 96);
                      if (v88)
                      {
                        heap_Free(*(*a1 + 8), v88);
                      }

                      *(a1 + 96) = 0;
                      v89 = *(a1 + 104);
                      if (v89)
                      {
                        heap_Free(*(*a1 + 8), v89);
                      }

                      *(a1 + 104) = 0;
                      return v11;
                    }

                    LOWORD(v153) = Utf8_LengthInUtf8chars(&__s[HIWORD(v168)], v168 - HIWORD(v168));
                    if (!v151)
                    {
                      v59 = HIWORD(v168);
                      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, HIWORD(v168));
                      cstdlib_strncat(*(a1 + 88), &__s[HIWORD(v168) - (v59 - PreviousUtf8Offset)], (v59 - PreviousUtf8Offset));
                      cstdlib_strcat(*(a1 + 96), " ");
                      cstdlib_strcat(*(a1 + 104), " ");
                      cstdlib_strlen(*(a1 + 96));
                    }

                    cstdlib_strncat(*(a1 + 88), &__s[HIWORD(v168)], v168 - HIWORD(v168));
                    v155 = 0;
                    HIDWORD(v153) = 0;
                  }

                  v61 = v156;
                  if (!v156)
                  {
                    v152 = v36;
                    v66 = 1;
                    goto LABEL_112;
                  }

                  v62 = 0;
                  v63 = 0;
                  v64 = __s2;
                  v65 = v156;
                  do
                  {
                    if (!cstdlib_strcmp(__s1, v64))
                    {
                      v63 = 1;
                    }

                    if (!cstdlib_strcmp(__src, v64 + 40))
                    {
                      v62 = 1;
                    }

                    v64 += 82;
                    --v65;
                  }

                  while (v65);
                  v66 = v62 == 0;
                  if (v63)
                  {
                    v67 = v62 == 0;
                  }

                  else
                  {
                    v67 = 1;
                  }

                  if (v67)
                  {
                    v24 = (a1 + 96);
                    v152 = v36;
                    if (v63)
                    {
                      cstdlib_strcpy(&__s2[82 * v156], "");
                      v68 = v156;
                      if (v62)
                      {
                        goto LABEL_109;
                      }

LABEL_116:
                      v69 = v68;
                      cstdlib_strcpy(&__s2[82 * v68 + 40], __src);
                      if (WORD2(v153))
                      {
                        v71 = HIDWORD(v153) + 1;
                      }

                      else
                      {
                        v71 = 0;
                      }

                      HIDWORD(v153) = v71 + cstdlib_strlen(__src);
                    }

                    else
                    {
                      v61 = v156;
LABEL_112:
                      v68 = v61;
                      cstdlib_strcpy(&__s2[82 * v61], __s1);
                      if (v155)
                      {
                        v70 = v155 + 1;
                      }

                      else
                      {
                        v70 = 0;
                      }

                      v155 = v70 + cstdlib_strlen(__s1);
                      if (v66)
                      {
                        goto LABEL_116;
                      }

LABEL_109:
                      v69 = v68;
                      cstdlib_strcpy(&__s2[82 * v68 + 40], "");
                    }

                    v156 = v68 + 1;
                    *&__s2[82 * v69 + 80] = v164;
                    v36 = v152;
                    goto LABEL_121;
                  }

                  v24 = (a1 + 96);
LABEL_121:
                  v35 = 0;
                  v33 = HIWORD(v168);
LABEL_122:
                  v11 = (*(*(a1 + 56) + 120))(a3, a4, v170, &v170);
                  if ((v11 & 0x80000000) != 0)
                  {
                    goto LABEL_156;
                  }
                }

                if (!v35)
                {
                  ssft_qsort(__s2, v156, 82, compare_1);
                  if (v156)
                  {
                    for (j = 0; 82 * v156 != j; j += 82)
                    {
                      if (j)
                      {
                        v73 = &__s2[j];
                        if (cstdlib_strcmp(&__s2[j], ""))
                        {
                          cstdlib_strcat(*v157, "\");
                        }

                        cstdlib_strcat(*v157, v73);
                        if (!cstdlib_strcmp(v73 + 40, ""))
                        {
                          goto LABEL_135;
                        }

                        v74 = cstdlib_strcmp(*v158, "");
                        v75 = (a1 + 104);
                        v76 = "\";
                        if (!v74)
                        {
                          goto LABEL_135;
                        }
                      }

                      else
                      {
                        v76 = __s2;
                        v75 = (a1 + 96);
                      }

                      cstdlib_strcat(*v75, v76);
LABEL_135:
                      cstdlib_strcat(*v158, &__s2[j + 40]);
                    }
                  }
                }

                if (v155 <= v153 && WORD2(v153) <= v153)
                {
                  if (v153 - v155 >= 1)
                  {
                    v90 = 0;
                    do
                    {
                      cstdlib_strcat(*v157, "~");
                      ++v90;
                    }

                    while (v153 - v155 > v90);
                  }

                  if (v153 - WORD2(v153) >= 1)
                  {
                    v91 = 0;
                    do
                    {
                      cstdlib_strcat(*v158, "~");
                      ++v91;
                    }

                    while (v153 - WORD2(v153) > v91);
                  }
                }

                else
                {
                  if (v155 <= WORD2(v153))
                  {
                    v77 = WORD2(v153);
                  }

                  else
                  {
                    v77 = v155;
                  }

                  v78 = v77 - v153;
                  if (v78 >= 1)
                  {
                    v79 = 0;
                    v80 = v36;
                    do
                    {
                      if (v80 << 8 == v34)
                      {
                        v81 = v154 + (++v80 << 8);
                        v82 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v81);
                        if (!v82)
                        {
                          goto LABEL_154;
                        }

                        *(a1 + 88) = v82;
                        v83 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v81);
                        if (!v83)
                        {
                          goto LABEL_154;
                        }

                        *(a1 + 96) = v83;
                        v84 = heap_Realloc(*(*a1 + 8), *(a1 + 104), v81);
                        if (!v84)
                        {
                          goto LABEL_154;
                        }

                        *v158 = v84;
                      }

                      cstdlib_strcat(*(a1 + 88), "~");
                      ++v79;
                      ++v34;
                    }

                    while (v78 > v79);
                  }

                  if (WORD2(v153) <= v155)
                  {
                    if (v155 - WORD2(v153) >= 1)
                    {
                      v92 = 0;
                      do
                      {
                        cstdlib_strcat(*v158, "~");
                        ++v92;
                      }

                      while (v155 - WORD2(v153) > v92);
                    }
                  }

                  else if (WORD2(v153) - v155 >= 1)
                  {
                    v85 = 0;
                    do
                    {
                      cstdlib_strcat(*v157, "~");
                      ++v85;
                    }

                    while (WORD2(v153) - v155 > v85);
                  }
                }

                log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L1: %s", v30, v31, v32, __dst);
                v93 = *(a1 + 88);
                v94 = *(*(a1 + 80) + 120);
                v95 = cstdlib_strlen(v93);
                v29 = v94(*(a1 + 64), *(a1 + 72), 0, v93, v95);
                if ((v29 & 0x80000000) == 0)
                {
                  log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L2: %s", v96, v97, v98, __dst);
                  v99 = *(*(a1 + 80) + 120);
                  v100 = *(a1 + 96);
                  v101 = cstdlib_strlen(v100);
                  v29 = v99(*(a1 + 64), *(a1 + 72), 1, v100, v101);
                  if ((v29 & 0x80000000) == 0)
                  {
                    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L3: %s", v102, v103, v104, __dst);
                    v105 = *(*(a1 + 80) + 120);
                    v106 = *(a1 + 104);
                    v107 = cstdlib_strlen(v106);
                    v29 = v105(*(a1 + 64), *(a1 + 72), 2, v106, v107);
                    if ((v29 & 0x80000000) == 0)
                    {
                      v29 = (*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), __dst);
                      if ((v29 & 0x80000000) == 0)
                      {
                        v29 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 1, &v163, &v161);
                        if ((v29 & 0x80000000) == 0)
                        {
                          v163[v161] = 0;
                          log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s O2: %s", v108, v109, v110, __dst);
                          v29 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 2, &v162, &v161);
                          if ((v29 & 0x80000000) == 0)
                          {
                            v162[v161] = 0;
                            log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s O3: %s", v111, v112, v113, __dst);
                            v11 = (*(*(a1 + 56) + 104))(a3, a4, 2, HIWORD(v170), &v170);
                            if ((v11 & 0x80000000) != 0)
                            {
                              goto LABEL_156;
                            }

                            v114 = v170;
                            if (!v170)
                            {
                              goto LABEL_156;
                            }

                            LOBYTE(v115) = 0;
                            v116 = 0;
                            v117 = 0;
                            v118 = 0;
                            v119 = 0;
                            v120 = 1;
                            while (1)
                            {
                              v29 = (*(*(a1 + 56) + 168))(a3, a4, v114, 0, 1, &v167, &v169 + 2);
                              if ((v29 & 0x80000000) != 0)
                              {
                                break;
                              }

                              if (v167 <= 0xA && ((1 << v167) & 0x610) != 0)
                              {
                                v29 = (*(*(a1 + 56) + 168))(a3, a4, v170, 1, 1, &v168 + 2, &v169 + 2);
                                if ((v29 & 0x80000000) != 0)
                                {
                                  break;
                                }

                                v29 = (*(*(a1 + 56) + 176))(a3, a4, v170, 5, &__s1, &v169 + 2);
                                if ((v29 & 0x80000000) != 0)
                                {
                                  break;
                                }

                                if (v120 == 1 || v119 != HIWORD(v168))
                                {
                                  v118 = v163;
                                  for (k = v163 + 1; ; ++k)
                                  {
                                    v123 = *v118;
                                    if (v123 != 32 && v123 != 126)
                                    {
                                      break;
                                    }

                                    v163 = ++v118;
                                  }

                                  while (v123)
                                  {
                                    if (v123 == 32 || v123 == 126)
                                    {
                                      v163 = k;
                                      *(k - 1) = 0;
                                      break;
                                    }

                                    v163 = k;
                                    v124 = *k++;
                                    LOBYTE(v123) = v124;
                                  }

                                  v117 = v162;
                                  for (m = v162 + 1; ; ++m)
                                  {
                                    v126 = *v117;
                                    if (v126 != 32 && v126 != 126)
                                    {
                                      break;
                                    }

                                    v162 = ++v117;
                                  }

                                  while (v126)
                                  {
                                    if (v126 == 32 || v126 == 126)
                                    {
                                      v162 = m;
                                      *(m - 1) = 0;
                                      break;
                                    }

                                    v162 = m;
                                    v127 = *m++;
                                    LOBYTE(v126) = v127;
                                  }
                                }

                                if (v119 != HIWORD(v168))
                                {
                                  if (v116 == 1)
                                  {
                                    if (v115)
                                    {
                                      v115 = v115;
                                      v133 = v172;
                                      while (1)
                                      {
                                        v134 = *v133++;
                                        v29 = (*(*(a1 + 56) + 192))(a3, a4, v134);
                                        if ((v29 & 0x80000000) != 0)
                                        {
                                          goto LABEL_256;
                                        }

                                        if (!--v115)
                                        {
LABEL_225:
                                          v116 = 0;
                                          goto LABEL_227;
                                        }
                                      }
                                    }
                                  }

                                  else if (v115)
                                  {
                                    v115 = v115;
                                    v128 = v172;
                                    while (1)
                                    {
                                      v159 = 0;
                                      v130 = *v128++;
                                      v129 = v130;
                                      v29 = (*(*(a1 + 56) + 176))(a3, a4, v130, 5, &v159, &v169 + 2);
                                      if ((v29 & 0x80000000) != 0)
                                      {
                                        goto LABEL_256;
                                      }

                                      v131 = cstdlib_strchr(v159, 92);
                                      if (v131)
                                      {
                                        *v131 = 0;
                                      }

                                      v29 = (*(*(a1 + 56) + 176))(a3, a4, v129, 6, &__src, &v169 + 2);
                                      if ((v29 & 0x80000000) != 0)
                                      {
                                        goto LABEL_256;
                                      }

                                      v132 = cstdlib_strchr(__src, 92);
                                      if (v132)
                                      {
                                        *v132 = 0;
                                      }

                                      if (!--v115)
                                      {
                                        goto LABEL_225;
                                      }
                                    }
                                  }

                                  v116 = 0;
                                  LOBYTE(v115) = 0;
                                }

LABEL_227:
                                if (v118 && v117 && (cstdlib_strstr(__s1, v118) || !cstdlib_strcmp(v118, "*") || !cstdlib_strcmp(__s1, "*")))
                                {
                                  v135 = *(*(a1 + 56) + 160);
                                  v136 = v170;
                                  v137 = cstdlib_strlen(v118);
                                  v29 = v135(a3, a4, v136, 5, (v137 + 1), v118, &v169);
                                  if ((v29 & 0x80000000) != 0)
                                  {
                                    break;
                                  }

                                  v138 = *(*(a1 + 56) + 160);
                                  v139 = v170;
                                  v140 = cstdlib_strlen(v117);
                                  v29 = v138(a3, a4, v139, 6, (v140 + 1), v117, &v169);
                                  if ((v29 & 0x80000000) != 0)
                                  {
                                    break;
                                  }

                                  v116 = 1;
                                }

                                else
                                {
                                  *(v172 + v115) = v170;
                                  LOBYTE(v115) = v115 + 1;
                                }

                                v120 = 0;
                                v119 = HIWORD(v168);
                              }

                              v11 = (*(*(a1 + 56) + 120))(a3, a4, v170, &v170);
                              if ((v11 & 0x80000000) != 0)
                              {
                                goto LABEL_156;
                              }

                              v114 = v170;
                              if (!v170)
                              {
                                if (v116 == 1)
                                {
                                  if (v115)
                                  {
                                    v141 = v115 - 1;
                                    v142 = v172;
                                    do
                                    {
                                      v143 = v141;
                                      v144 = *v142++;
                                      v11 = (*(*(a1 + 56) + 192))(a3, a4, v144);
                                      if ((v11 & 0x80000000) != 0)
                                      {
                                        break;
                                      }

                                      v141 = v143 - 1;
                                    }

                                    while (v143);
                                  }

                                  goto LABEL_156;
                                }

                                if (!v115)
                                {
                                  goto LABEL_156;
                                }

                                v115 = v115;
                                v145 = v172;
                                while (1)
                                {
                                  v147 = *v145++;
                                  v146 = v147;
                                  v29 = (*(*(a1 + 56) + 176))(a3, a4, v147, 5, &__s1, &v169 + 2);
                                  if ((v29 & 0x80000000) != 0)
                                  {
                                    goto LABEL_256;
                                  }

                                  v148 = cstdlib_strchr(__s1, 92);
                                  if (v148)
                                  {
                                    *v148 = 0;
                                  }

                                  v11 = (*(*(a1 + 56) + 176))(a3, a4, v146, 6, &__src, &v169 + 2);
                                  if ((v11 & 0x80000000) == 0)
                                  {
                                    v149 = cstdlib_strchr(__src, 92);
                                    if (v149)
                                    {
                                      *v149 = 0;
                                    }

                                    if (--v115)
                                    {
                                      continue;
                                    }
                                  }

                                  goto LABEL_156;
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

LABEL_256:
              v11 = v29;
              goto LABEL_156;
            }
          }
        }
      }
    }
  }

  return v11;
}