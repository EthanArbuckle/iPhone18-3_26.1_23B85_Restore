uint64_t hlp_getclcml(uint64_t a1, char *a2, const char *a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  strcpy(v42, "normal");
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v42;
  }

  if (strstr(v7, "_lid"))
  {
    v8 = 0;
    do
    {
      __s2[v8] = ssft_tolower(v7[v8]);
      v9 = v8 + 1;
      v8 = v9;
    }

    while (v9 != 3);
  }

  else
  {
    LODWORD(v9) = *v7;
    if (*v7)
    {
      v14 = 0;
      do
      {
        v15 = v14;
        v16 = ssft_tolower(v7[v14++]);
        __s2[v15] = v16;
      }

      while (strlen(v7) > v14 && v15 < 0xFE);
      if (v15 > 0xFD)
      {
        LODWORD(v10) = 255;
        goto LABEL_20;
      }

      LODWORD(v9) = v14;
    }
  }

  v10 = v9 + 1;
  __s2[v9] = 43;
  if (*a3 && v9 <= 0xFD)
  {
    v11 = 0;
    do
    {
      __s2[v10 + v11] = ssft_tolower(a3[v11]);
      v12 = v11 + 1;
      if (strlen(a3) <= v11 + 1)
      {
        break;
      }

      v13 = v10 + v11++;
    }

    while (v13 < 0xFE);
    LODWORD(v10) = (v10 + v12);
  }

LABEL_20:
  __s2[v10] = 0;
  v17 = strstr(*(a1 + 984), __s2);
  if (strstr(v7, "_lid"))
  {
    for (i = 0; i != 3; ++i)
    {
      __s2[i] = ssft_tolower(v7[i]);
    }

    LODWORD(v19) = 3;
    goto LABEL_24;
  }

  if (!*v7)
  {
    LODWORD(v19) = 0;
LABEL_24:
    __s2[v19] = 43;
LABEL_25:
    __s2[v19 + 1] = 42;
    v20 = (v19 + 2);
    goto LABEL_26;
  }

  v19 = 0;
  do
  {
    v29 = v19;
    v30 = ssft_tolower(v7[v19++]);
    __s2[v29] = v30;
  }

  while (strlen(v7) > v19 && v29 < 0xFE);
  if (v29 <= 0xFD)
  {
    __s2[v19] = 43;
    if (v19 != 254)
    {
      goto LABEL_25;
    }
  }

  v20 = 255;
LABEL_26:
  __s2[v20] = 0;
  v21 = *(a1 + 984);
  v22 = strstr(v21, __s2);
  if (v22 < v17 || v17 == 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = v17;
  }

  if (v22)
  {
    v17 = v24;
  }

  *__s2 = 11050;
  if (*a3)
  {
    v25 = 0;
    do
    {
      v45[v25] = ssft_tolower(a3[v25]);
      v26 = v25 + 1;
      if (strlen(a3) <= v25 + 1)
      {
        break;
      }

      v27 = v25 + 2;
      ++v25;
    }

    while (v27 < 0xFE);
    v21 = *(a1 + 984);
    v28 = v26 + 2;
  }

  else
  {
    v28 = 2;
  }

  Only = 2358255616;
  __s2[v28] = 0;
  v32 = strstr(v21, __s2);
  if (v32 < v17 || v17 == 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = v17;
  }

  if (!v32)
  {
    v34 = v17;
  }

  if (v34)
  {
    for (j = v34 + 2; *(j - 2); ++j)
    {
      if (*(j - 2) == 61)
      {
        v36 = *(j - 1);
        if (v36 == 44)
        {
          v37 = 0;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          while (v36 && v38 <= 0xFE)
          {
            v43[v38] = v36;
            v36 = j[v38++];
            ++v39;
            if (v36 == 44)
            {
              goto LABEL_69;
            }
          }

          v39 = v38;
LABEL_69:
          v37 = v39;
        }

        v43[v37] = 0;
        Only = ssftmap_FindReadOnly(*(a1 + 976), v43, a4);
        break;
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];
  return Only;
}

uint64_t hlp_processclcml(const char **a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5, uint64_t *a6, uint64_t *a7, unsigned int a8, unsigned int a9, _DWORD *a10, char *a11, const char *a12)
{
  v211 = *MEMORY[0x1E69E9840];
  strcpy(__s, " ");
  __strcat_chk();
  __n = strlen(__s);
  v19 = *(*a6 + 12);
  *(a2 + 104) = a1[121];
  result = clcml_Process(a2, *a3, a4, a5, a11, a12);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_229;
  }

  v21 = *(a2 + 104);
  a1[121] = v21;
  if (!*v21)
  {
    goto LABEL_229;
  }

  v207 = a8;
  v201 = v19;
  v198 = result;
  v200 = a2;
  v203 = a4;
  v208 = a6;
  v22 = heap_Realloc(*(*a1 + 1), *a6, 32 * (*a10 + 2));
  v27 = a1;
  if (!v22)
  {
    goto LABEL_228;
  }

  v28 = v22;
  bzero((v22 + 32 * *a10), 32 * ((*a10 + 2) - *a10));
  *a6 = v28;
  v29 = heap_Realloc(*(*a1 + 1), *a7, 4 * (*a10 + 2));
  if (!v29)
  {
    goto LABEL_228;
  }

  *a7 = v29;
  v30 = strlen(a1[121]);
  __dst = heap_Calloc(*(*a1 + 1), v30 + 8, 1);
  if (!__dst)
  {
    goto LABEL_228;
  }

  v31 = strcpy(__dst, a1[121]);
  *&__dst[strlen(v31)] = 20;
  strcat(__dst, "EXTCLC");
  v202 = a1;
  log_OutText(*(*a1 + 4), "FE_CLCML", 4, 0, "Inserting phon marker with transcription %s at position %d", v32, v33, v34, a1[121]);
  v35 = a10;
  v36 = *a10;
  if (*a10 <= a8)
  {
    v38 = a8;
  }

  else
  {
    v37 = a8 + 1;
    memmove((*a6 + 32 * v37), (*a6 + 32 * a8), 32 * (*a10 - a8));
    memmove((*a7 + 4 * v37), (*a7 + 4 * a8), 4 * (*a10 - a8));
    v38 = a8;
    v35 = a10;
    v36 = *a10;
  }

  *v35 = v36 + 1;
  v39 = *a6 + 32 * v38;
  *v39 = 34;
  v40 = v200;
  *(v39 + 24) = __dst;
  v41 = *a6;
  v42 = (*a6 + 32 * v38);
  v42[3] = v19 + a4;
  if (a8)
  {
    v43 = *(v41 + 32 * (a8 - 1) + 4);
  }

  else
  {
    v43 = 0;
  }

  v42[1] = v43;
  v42[2] = 0;
  v42[4] = 0;
  v193 = v38;
  *(*a7 + 4 * v38) = 1;
  v44 = strlen(*a3);
  v45 = utf8_BelongsToSet(0, *a3, a4, v44);
  NextUtf8Offset = a4;
  if (a4 < a5)
  {
    NextUtf8Offset = a4;
    if (v45)
    {
      NextUtf8Offset = a4;
      do
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(*a3, NextUtf8Offset);
        v47 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v44);
      }

      while (NextUtf8Offset < a5 && v47 != 0);
    }
  }

  v49 = strlen(*a3);
  LODWORD(v50) = a8;
  if (NextUtf8Offset < a5)
  {
    v51 = v49;
    v52 = 0;
    LODWORD(v50) = a8;
    do
    {
      if (!utf8_BelongsToSet(0, *a3, NextUtf8Offset, v51))
      {
        do
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(*a3, NextUtf8Offset);
          v53 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v51);
        }

        while (NextUtf8Offset < a5 && v53 == 0);
      }

      if (v50 < *a10)
      {
        v55 = *a6;
        v50 = v50;
        v56 = (*a6 + 32 * v50 + 12);
        do
        {
          if (*v56 >= NextUtf8Offset + v201)
          {
            break;
          }

          v57 = *(v200 + 528);
          if (!v57)
          {
            break;
          }

          if (v52 >= *(v200 + 536) || (v58 = *(v57 + 4 * v52) + v203, v58 >= a5))
          {
            v59 = *(v55 + 32 * (v50 - 1) + 12);
          }

          else
          {
            v59 = v58 + v201;
          }

          *v56 = v59;
          v56 += 8;
          ++v50;
        }

        while (v50 < *a10);
      }

      v60 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v51);
      if (NextUtf8Offset < a5 && v60)
      {
        do
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(*a3, NextUtf8Offset);
          v61 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v51);
        }

        while (NextUtf8Offset < a5 && v61 != 0);
      }

      ++v52;
    }

    while (NextUtf8Offset < a5);
  }

  v194 = a9 + 1;
  if (v50 < *a10)
  {
    v63 = v201 + a5;
    v64 = v50;
    v65 = (*a6 + 32 * v50 + 12);
    do
    {
      if (*v65 >= v63)
      {
        break;
      }

      *v65 = v63;
      v65 += 8;
      ++v64;
    }

    while (v64 < *a10);
  }

  v66 = *a3;
  v67 = (*a3 + a5);
  v68 = v67 - 1;
  do
  {
    v69 = v68 > v66;
    v71 = *v68--;
    v70 = v71;
  }

  while (v69 && memchr("_ \r\n\x1B\t", v70, 7uLL));
  if (memchr("(),;:", v70, 6uLL))
  {
    v72 = strlen(*(v200 + 520));
    v196 = memchr("(),;:", *(*(v200 + 520) + v72 - 1), 6uLL) == 0;
  }

  else
  {
    v196 = 0;
  }

  v73 = *(v67 - 1);
  if (*(v67 - 1))
  {
    while (memchr("_ \r\n\x1B\t", v73, 7uLL))
    {
      v74 = *v67++;
      v73 = v74;
      if (!v74)
      {
        goto LABEL_63;
      }
    }

    if (memchr("(),;:", v73, 6uLL))
    {
      v75 = strlen(*(v200 + 520));
      v76 = memchr("(),;:", *(*(v200 + 520) + v75 - 1), 6uLL);
      v77 = v196;
      if (!v76)
      {
        v77 = 1;
      }

      v196 = v77;
    }
  }

LABEL_63:
  v78 = v66 + v203 - 1;
  do
  {
    v80 = *++v78;
    v79 = v80;
  }

  while (memchr("_ \r\n\x1B\t", v80, 7uLL));
  if (!memchr("(),;:", v79, 6uLL))
  {
    goto LABEL_71;
  }

  v81 = ((__PAIR128__(v78, v66) - v78) >> 64);
  if (v81 > v66)
  {
    while (memchr("_ \r\n\x1B\t", *v81, 7uLL))
    {
      if (--v81 <= v66)
      {
        v81 = v66;
        break;
      }
    }
  }

  if (!memchr("(),;:", *v81, 6uLL))
  {
    v82 = 0;
    v81[1] = 44;
  }

  else
  {
LABEL_71:
    v82 = 1;
  }

  v83 = v203 - a5 + strlen(*(v200 + 520));
  if (v196)
  {
    v84 = 2;
  }

  else
  {
    v84 = 1;
  }

  v85 = (v84 + (v82 ^ 1) + v83);
  if (v85 >= 1)
  {
    v27 = v202;
    v86 = strlen(*a3);
    v87 = heap_Realloc(*(*v202 + 1), *a3, (v85 + v86 + 1));
    if (!v87)
    {
      goto LABEL_228;
    }

    v88 = v87;
    *a3 = v87;
    v89 = v208;
    v40 = v200;
    goto LABEL_81;
  }

  if (v84 + (v82 ^ 1) + v83)
  {
    v88 = *a3;
    v89 = v208;
LABEL_81:
    v90 = strlen(v88);
    memmove(&v88[v85 + a5], &v88[a5], v90 - a5 + 1);
    v91 = *v89;
    *(*v89 + 16) += v85;
    v92 = *a10;
    if (v50 < *a10)
    {
      v93 = v50;
      v94 = (v91 + 32 * v50 + 12);
      do
      {
        if (*v94 >= v201 + a5)
        {
          *v94 += v85;
          v92 = *a10;
        }

        ++v93;
        v94 += 8;
      }

      while (v93 < v92);
    }

    a5 += v85;
  }

  if (v82)
  {
    v95 = v203;
  }

  else
  {
    *(*a3 + v203) = 32;
    v95 = v203 + 1;
  }

  v96 = *(v40 + 520);
  if (*v96)
  {
    v97 = 0;
    v98 = 0;
    v99 = v95;
    do
    {
      *(*a3 + v99) = v96[v97];
      v97 = (v98 + 1);
      v96 = *(v40 + 520);
      v100 = strlen(v96);
      ++v99;
      v98 = v97;
    }

    while (v100 > v97);
  }

  else
  {
    LODWORD(v97) = 0;
  }

  v101 = *a3;
  if (v196)
  {
    *(v101 + v97 + v95) = 44;
    LODWORD(v97) = v97 + 1;
    v101 = *a3;
  }

  *(v101 + v97 + v95) = 32;
  v102 = strlen(*a3);
  v103 = v95;
  if (utf8_BelongsToSet(1u, *a3, v95, v102))
  {
    v103 = v95;
    do
    {
      v103 = utf8_GetNextUtf8Offset(*a3, v103);
    }

    while (utf8_BelongsToSet(1u, *a3, v103, v102));
  }

  PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(*a3, a5);
  if (a5)
  {
    v108 = PreviousUtf8Offset;
    v109 = a5;
    if (utf8_BelongsToSet(1u, *a3, PreviousUtf8Offset, v102))
    {
      do
      {
        v109 = v108;
        v110 = utf8_GetPreviousUtf8Offset(*a3, v108);
        if (!v108)
        {
          break;
        }

        v108 = v110;
      }

      while (utf8_BelongsToSet(1u, *a3, v110, v102));
    }
  }

  else
  {
    v109 = 0;
  }

  v111 = 1;
  if (v103 < v109)
  {
    v112 = v103;
    do
    {
      if (!*(*a3 + v112))
      {
        break;
      }

      if (utf8_BelongsToSet(1u, *a3, v112, v102))
      {
        ++v111;
        for (; v112 < v109; v112 = utf8_GetNextUtf8Offset(*a3, v112))
        {
          if (!utf8_BelongsToSet(1u, *a3, v112, v102))
          {
            break;
          }
        }
      }

      v112 = utf8_GetNextUtf8Offset(*a3, v112);
    }

    while (v112 < v109);
  }

  v113 = v202[121];
  v114 = 1;
  v115 = 1;
  while (1)
  {
    v116 = v113[v114 - 1];
    if (v116 > 0x5E)
    {
      if (v116 != 95)
      {
        goto LABEL_125;
      }

LABEL_120:
      ++v115;
      goto LABEL_125;
    }

    if (v116 != 35)
    {
      break;
    }

    if (v113[v114])
    {
      goto LABEL_120;
    }

LABEL_125:
    ++v114;
  }

  if (v113[v114 - 1])
  {
    v117 = v116 == 18;
  }

  else
  {
    v117 = 1;
  }

  if (!v117)
  {
    goto LABEL_125;
  }

  v204 = v95;
  v197 = v103;
  if (v111 < v115)
  {
    LOWORD(v118) = v115 - v111;
    v27 = v202;
    log_OutText(*(*v202 + 4), "FE_CLCML", 5, 0, "TYPE1 modification : insert %u dummy words (%u orthographic words, %u phonetic words)", v105, v106, v107, v118);
    v119 = strlen(*a3);
    v120 = v118 * __n;
    v121 = heap_Realloc(*(*v202 + 1), *a3, v120 + v119 + 2);
    if (v121)
    {
      *a3 = v121;
      if (a5)
      {
        v122 = a5 - 1;
      }

      else
      {
        v122 = 0;
      }

      while (1)
      {
        if ((v121[v122] | 0x20) != 0x20)
        {
          v123 = (*(v202[9] + 16))(v202[7], v202[8]);
          v121 = *a3;
          if (!v123)
          {
            break;
          }
        }

        v122 = utf8_GetPreviousUtf8Offset(v121, v122);
        v121 = *a3;
      }

      v127 = utf8_GetNextUtf8Offset(v121, v122);
      v128 = strlen(*a3);
      memmove((*a3 + (v120 + v127)), (*a3 + v127), v128 - v127 + 2);
      v195 = v118;
      if (v118)
      {
        v129 = 0;
        v118 = v118;
        do
        {
          strncpy((*a3 + v127 + v129), __s, __n);
          v129 += __n;
          --v118;
        }

        while (v118);
      }

      v130 = *v208;
      *(*v208 + 16) += v120;
      v109 += v120;
      v131 = *a10;
      if (*a10 <= v207)
      {
        v27 = v202;
        v126 = v195;
      }

      else
      {
        v132 = v193;
        v133 = (v130 + 32 * v193 + 12);
        v27 = v202;
        v126 = v195;
        do
        {
          if (*v133 >= (v127 + v201))
          {
            *v133 += v120;
            v131 = *a10;
          }

          ++v132;
          v133 += 8;
        }

        while (v132 < v131);
      }

      goto LABEL_163;
    }

    goto LABEL_228;
  }

  if (v115 >= v111)
  {
    goto LABEL_139;
  }

  log_OutText(*(*v202 + 4), "FE_CLCML", 5, 0, "TYPE2 modification : hyphenate words (%u orthographic words, %u phonetic words)", v105, v106, v107, v111);
  v124 = a5 - 1;
  if (a5 == 1)
  {
    goto LABEL_139;
  }

  v125 = v111 - v115;
  while (*(*a3 + v124) == 32)
  {
    v124 = utf8_GetPreviousUtf8Offset(*a3, v124);
    if (!v124)
    {
      goto LABEL_139;
    }
  }

  while (*(*a3 + v124) != 32)
  {
    v124 = utf8_GetPreviousUtf8Offset(*a3, v124);
    if (!v124)
    {
      goto LABEL_139;
    }
  }

  if (!v125)
  {
LABEL_139:
    v126 = 0;
    v27 = v202;
  }

  else
  {
    v27 = v202;
    do
    {
      while (*(*a3 + v124) == 32)
      {
        *(*a3 + v124) = 45;
        v124 = utf8_GetPreviousUtf8Offset(*a3, v124);
        if (!v124)
        {
          goto LABEL_152;
        }
      }

      --v125;
      while (*(*a3 + v124) != 32)
      {
        v124 = utf8_GetPreviousUtf8Offset(*a3, v124);
        if (!v124)
        {
          goto LABEL_152;
        }
      }
    }

    while (v125);
LABEL_152:
    v126 = 0;
  }

LABEL_163:
  v134 = strlen(a12);
  v135 = heap_Calloc(*(*v27 + 1), (v134 + 1), 1);
  if (v135)
  {
    v136 = v135;
    strcpy(v135, a12);
    v137 = a10;
    v138 = *a10;
    if (*a10 <= v194)
    {
      v141 = v208;
    }

    else
    {
      v139 = a9 + 2;
      memmove((*v208 + 32 * v139), (*v208 + 32 * v194), 32 * (*a10 - v194));
      v140 = (*a7 + 4 * v139);
      v141 = v208;
      memmove(v140, (*a7 + 4 * v194), 4 * (*a10 - v194));
      v137 = a10;
      v138 = *a10;
    }

    v27 = v202;
    *v137 = v138 + 1;
    v142 = *v141 + 32 * v194;
    *v142 = 21;
    *(v142 + 24) = v136;
    v143 = v126 * __n;
    v144 = *v141;
    v145 = (*v141 + 32 * v194);
    if (v143 + a5 <= v102)
    {
      v146 = a5 + v201 + v143;
    }

    else
    {
      v146 = v201 + v102;
    }

    v145[3] = v146;
    if (a9 == -1)
    {
      v147 = 0;
    }

    else
    {
      v147 = *(v144 + 32 * a9 + 4);
    }

    v145[1] = v147;
    v145[2] = 0;
    v145[4] = 0;
    *(*a7 + 4 * v194) = 1;
    if (*(v200 + 260))
    {
      v148 = 0;
      v149 = v200 + 132;
      do
      {
        v150 = *(v149 + 2 * v148) ? 3 : 1;
        v151 = heap_Realloc(*(*v27 + 1), v144, 32 * (*v137 + v150));
        if (!v151)
        {
          goto LABEL_228;
        }

        *v208 = v151;
        v152 = heap_Realloc(*(*v27 + 1), *a7, 4 * (*a10 + v150));
        if (!v152)
        {
          goto LABEL_228;
        }

        *a7 = v152;
        v153 = strlen(*a3);
        if (*(v149 + 2 * v148))
        {
          v154 = v153;
          v155 = 0;
          v156 = v197;
          v157 = v208;
          v158 = v204;
          do
          {
            if (utf8_BelongsToSet(1u, *a3, v156, v154))
            {
              ++v155;
              for (; v156 < v109; v156 = utf8_GetNextUtf8Offset(*a3, v156))
              {
                if (!utf8_BelongsToSet(1u, *a3, v156, v154))
                {
                  break;
                }
              }
            }

            v156 = utf8_GetNextUtf8Offset(*a3, v156);
            v159 = *(v149 + 2 * v148);
          }

          while (v155 < v159);
        }

        else
        {
          v159 = 0;
          v156 = v197;
          v157 = v208;
          v158 = v204;
        }

        if (v156 > v158)
        {
          v156 = utf8_GetPreviousUtf8Offset(*a3, v156);
          v159 = *(v149 + 2 * v148);
        }

        v160 = *v157;
        v161 = v156 + v201;
        if (v159)
        {
          LODWORD(v162) = v207 - 1;
          do
          {
            v162 = (v162 + 1);
          }

          while (*(v160 + 32 * v162 + 12) + 1 < v161);
          v27 = v202;
          v163 = heap_Calloc(*(*v202 + 1), 7, 1);
          if (!v163)
          {
            goto LABEL_228;
          }

          v164 = v163;
          v165 = (v162 + 1);
          strcpy(v163, "normal");
          memmove((*v208 + 32 * v165), (*v208 + 32 * v162), 32 * (*a10 - v162));
          v207 = v162 + 1;
          memmove((*a7 + 4 * v165), (*a7 + 4 * v162), 4 * (*a10 - v162));
          ++*a10;
          v166 = *v208 + 32 * v162;
          *v166 = 21;
          *(v166 + 24) = v164;
          if (v156)
          {
            v167 = v201 - 1 + v156;
          }

          else
          {
            v167 = v201;
          }

          v160 = *v208;
          v168 = (*v208 + 32 * v162);
          v168[3] = v167;
          if (v162)
          {
            v169 = *(v160 + 32 * (v162 - 1) + 4);
          }

          else
          {
            v169 = 0;
          }

          v168[1] = v169;
          v168[2] = 0;
          v168[4] = 0;
          *(*a7 + 4 * v162) = 1;
        }

        LODWORD(v170) = v207;
        do
        {
          v171 = v170;
          v172 = *(v160 + 32 * v170 + 12);
          v170 = (v170 + 1);
        }

        while (v172 < v161);
        v27 = v202;
        v173 = heap_Calloc(*(*v202 + 1), 4, 1);
        if (!v173)
        {
          goto LABEL_228;
        }

        v174 = v173;
        strcpy(v173, (v200 + 262 + 4 * v148));
        memmove((*v208 + 32 * v170), (*v208 + 32 * v171), 32 * (*a10 - v170 + 1));
        memmove((*a7 + 4 * v170), (*a7 + 4 * v171), 4 * (*a10 - v170 + 1));
        v137 = a10;
        ++*a10;
        v175 = *v208 + 32 * v171;
        *v175 = 36;
        *(v175 + 24) = v174;
        v144 = *v208;
        v176 = (*v208 + 32 * v171);
        v176[3] = v161;
        if (v170 == 1)
        {
          v177 = 0;
        }

        else
        {
          v177 = *(v144 + 32 * (v170 - 2) + 4);
        }

        v176[1] = v177;
        v176[2] = 0;
        v176[4] = 0;
        *(*a7 + 4 * v171) = 1;
        if (*(v149 + 2 * v148))
        {
          if (v148)
          {
            v178 = *(v149 + 2 * (v148 - 1));
          }

          else
          {
            v178 = 0;
          }

          if (v178 >= *(v149 + 2 * v148))
          {
            v179 = 0;
          }

          else
          {
            v179 = 0;
            do
            {
              v180 = __dst[v179];
              if (v180 == 95 || v180 == 35)
              {
                ++v178;
              }

              v179 = utf8_GetNextUtf8Offset(__dst, v179);
            }

            while (v178 < *(v149 + 2 * v148));
          }

          v27 = v202;
          v181 = strlen(&__dst[v179]);
          v182 = heap_Calloc(*(*v202 + 1), (v181 + 1), 1);
          if (!v182)
          {
            goto LABEL_228;
          }

          __na = v182;
          strcpy(v182, &__dst[v179]);
          v183 = &__dst[utf8_GetPreviousUtf8Offset(__dst, v179)];
          *v183 = 20;
          strcat(v183, "EXTCLC");
          log_OutText(*(*v202 + 4), "FE_CLCML", 4, 0, "Inserting phon marker with transcription %s at position %d", v184, v185, v186, v202[121]);
          v187 = (v170 + 1);
          memmove((*v208 + 32 * v187), (*v208 + 32 * v170), 32 * (*a10 - v170));
          memmove((*a7 + 4 * v187), (*a7 + 4 * v170), 4 * (*a10 - v170));
          v137 = a10;
          ++*a10;
          v188 = *v208 + 32 * v170;
          *v188 = 34;
          *(v188 + 24) = __na;
          v144 = *v208;
          v189 = (*v208 + 32 * v170);
          v189[3] = v161;
          if (v170)
          {
            v190 = *(v144 + 32 * v171 + 4);
          }

          else
          {
            v190 = 0;
          }

          v189[1] = v190;
          v189[2] = 0;
          v189[4] = 0;
          *(*a7 + 4 * v170) = 1;
          v207 = v170 + 1;
          __dst = __na;
        }

        else
        {
          v207 = v170 + 1;
        }

        v27 = v202;
      }

      while (++v148 < *(v200 + 260));
    }

    result = v198;
  }

  else
  {
LABEL_228:
    log_OutPublic(*(*v27 + 4), "FE_CLCML", 60000, 0, v23, v24, v25, v26, v192);
    result = 2358255626;
  }

LABEL_229:
  v191 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_clcml_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62600, 1000) & 0x80000000) != 0)
  {
    return 2358255624;
  }

  v3 = *(a1 + 24);

  return synstrmaux_CloseStreams((a1 + 80), v3);
}

uint64_t fe_clcml_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2358255617;
  }

  result = 0;
  *a2 = &IFeClcml;
  return result;
}

char *hlp_StringAppend(uint64_t *a1, char *a2, char *__s, unsigned int *a4)
{
  if (!__s)
  {
    return a2;
  }

  v8 = strlen(__s);
  v9 = v8;
  if (!a2)
  {
    v12 = v8 + 129;
    v13 = heap_Alloc(a1, v8 + 129);
    a2 = v13;
    if (!v13)
    {
      return a2;
    }

    if (a4)
    {
      *a4 = v12;
    }

    v10 = 0;
    *v13 = 0;
LABEL_11:
    strncat(a2, __s, v9);
    a2[v10 + v9] = 0;
    return a2;
  }

  if (!a4)
  {
    return 0;
  }

  v10 = strlen(a2);
  if (v9 + v10 + 1 < *a4)
  {
    goto LABEL_11;
  }

  v11 = v9 + *a4 + 129;
  *a4 = v11;
  a2 = heap_Realloc(a1, a2, v11);
  if (a2)
  {
    goto LABEL_11;
  }

  return a2;
}

uint64_t clcpipeline_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  v124 = 0;
  v125 = 0;
  v122 = 0;
  v123 = 0;
  inited = InitRsrcFunction(a1, a2, &v123);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v13 = 2358255626;
  *a5 = 0;
  *a6 = 0;
  if ((ssftmap_FindReadOnly(a3, "BROKERSTRING", &v125) & 0x80000000) != 0 || !*v125)
  {
    return 2358255623;
  }

  log_OutText(v123[4], "FE_CLCML", 4, 0, "clcpipeline_ObjOpen : Begin %s", v14, v15, v16, *v125);
  v17 = heap_Calloc(v123[1], 1, 48);
  v22 = v17;
  if (!v17)
  {
    log_OutPublic(v123[4], "FE_CLCML", 16000, 0, v18, v19, v20, v21, v112);
    v81 = 0;
    goto LABEL_52;
  }

  v114 = a4;
  v115 = a6;
  v116 = a2;
  v117 = a3;
  v119 = a5;
  v120 = 0;
  *v17 = v123;
  v23 = v17 + 3;
  v24 = 1;
  do
  {
    ReadOnly = ssftmap_FindReadOnly(a3, "COMPONENTS", &v125);
    if ((ReadOnly & 0x80000000) != 0 || (ReadOnly = ssftmap_IteratorOpen(v125[2], 0, 0, &v122), (ReadOnly & 0x80000000) != 0))
    {
      v13 = ReadOnly;
      v82 = v123[4];
      v112 = "clcpipeline";
      v84 = "%s%s";
      v83 = 16072;
      goto LABEL_49;
    }

    for (i = 0; (ssftmap_IteratorNext(v122, &v124, &v125) & 0x80000000) == 0; ++i)
    {
      if (v24 == 1)
      {
        if (!v124 || strcmp(v124, "COMPONENT"))
        {
          log_OutPublic(v123[4], "FE_CLCML", 16091, "%s%s%s%s", v30, v31, v32, v33, "clcpipeline");
          goto LABEL_42;
        }

        if (!*v125 || !**v125)
        {
          log_OutPublic(v123[4], "FE_CLCML", 16092, "%s%s", v30, v31, v32, v33, "clcpipeline");
LABEL_42:
          v13 = 2358255620;
          goto LABEL_50;
        }
      }

      else
      {
        v35 = v123;
        v36 = *v125;
        if (*v23)
        {
          v37 = heap_strdup(v123[1], *v125);
          v38 = i + 2;
          *(*(v22 + 40) + 8 * v38) = v37;
          compstats_Start(*(v22 + 24), *(v22 + 32), v38, v39, v40, v41, v42, v43);
        }

        v44 = heap_Calloc(v35[1], 1, 40);
        if (!v44)
        {
          v82 = v35[4];
          goto LABEL_40;
        }

        v45 = v44;
        *(*(v22 + 8) + 8 * i) = v44;
        *v44 = 1;
        v46 = heap_strdup(v35[1], v36);
        v45[1] = v46;
        if (!v46)
        {
          log_OutPublic(v35[4], "FE_CLCML", 16000, 0, v47, v48, v49, v50, v112);
LABEL_45:
          v85 = v45[1];
          a5 = v119;
          v81 = v120;
          if (v85)
          {
            heap_Free(v35[1], v85);
          }

          heap_Free(v35[1], v45);
          *(*(v22 + 8) + 8 * i) = 0;
          goto LABEL_52;
        }

        v45[3] = safeh_GetNullHandle();
        v45[4] = v51;
        v52 = v45[1];
        v53 = brk_InterfaceQuery(v35[3]);
        if ((v53 & 0x80000000) != 0)
        {
          v13 = v53;
          goto LABEL_45;
        }

        if (*v23)
        {
          compstats_Stop(*v23, *(v22 + 32), i + 2, v54, v55, v56, v57, v58);
        }
      }
    }

    ssftmap_IteratorClose(v122);
    v122 = 0;
    if (v24 != 1)
    {
LABEL_30:
      a3 = v117;
      continue;
    }

    v59 = heap_Calloc(v123[1], i, 8);
    *(v22 + 8) = v59;
    if (!v59)
    {
      v82 = v123[4];
LABEL_40:
      v83 = 16000;
      v84 = 0;
LABEL_49:
      log_OutPublic(v82, "FE_CLCML", v83, v84, v26, v27, v28, v29, v112);
      goto LABEL_50;
    }

    *(v22 + 16) = i;
    v64 = heap_Calloc(v123[1], i, 16);
    v65 = v123[4];
    v120 = v64;
    if (!v64)
    {
      log_OutPublic(v65, "FE_CLCML", 16000, 0, v60, v61, v62, v63, v112);
      v81 = 0;
      a5 = v119;
      goto LABEL_52;
    }

    if (log_GetLogLevel(v65) < 2)
    {
      goto LABEL_30;
    }

    compstats_ObjOpen(a1, v116, *(v22 + 16) + 3, v22 + 24);
    compstats_Start(*(v22 + 24), *(v22 + 32), 0, v66, v67, v68, v69, v70);
    a3 = v117;
    if (*(v22 + 24))
    {
      v71 = heap_Calloc(v123[1], *(v22 + 16) + 3, 8);
      *(v22 + 40) = v71;
      if (v71)
      {
        **(v22 + 40) = heap_strdup(v123[1], "Total");
        *(*(v22 + 40) + 8) = heap_strdup(v123[1], "TTSEG input CB");
        *(*(v22 + 40) + 8 * *(v22 + 16) + 16) = heap_strdup(v123[1], "TTSEG output CB");
      }

      else
      {
        compstats_ObjClose(*(v22 + 24), *(v22 + 32));
        *(v22 + 24) = safeh_GetNullHandle();
        *(v22 + 32) = v73;
      }
    }
  }

  while (v24++ < 2);
  v87 = ssftmap_FindReadOnly(a3, "PARAMETERS", &v125);
  a5 = v119;
  if ((v87 & 0x80000000) == 0 && (ssftmap_IteratorOpen(v125[2], 0, 0, &v122) & 0x80000000) == 0)
  {
    while ((ssftmap_IteratorNext(v122, &v124, &v125) & 0x80000000) == 0)
    {
      if (v124 && *v124)
      {
        if (*v125)
        {
          v88 = *v125;
        }

        else
        {
          v88 = "";
        }

        paramc_ParamSetStr(v123[5], v124, v88);
      }
    }

    ssftmap_IteratorClose(v122);
    v122 = 0;
  }

  if ((ssftmap_FindReadOnly(a3, "OBJECTS", &v125) & 0x80000000) == 0 && (ssftmap_IteratorOpen(v125[2], 0, 0, &v122) & 0x80000000) == 0)
  {
    if ((ssftmap_IteratorNext(v122, &v124, &v125) & 0x80000000) == 0)
    {
      while (1)
      {
        v93 = v124;
        if (!v124 || (v94 = *v125) == 0 || !*v94)
        {
          log_OutPublic(v123[4], "FE_CLCML", 16099, "%s%s%s%s", v89, v90, v91, v92, "clcpipeline");
          v13 = 2358255620;
          goto LABEL_51;
        }

        if (strcmp(v124, "INET"))
        {
          Object = clcpipeline_LoadObject(a1, v116, v93, v94, v114, v115);
          if ((Object & 0x80000000) != 0)
          {
            break;
          }

          if (!strcmp(v124, "FE_DCTLKP") && !strcmp(*v125, "fe/fe_dctlkp"))
          {
            Object = clcpipeline_LoadObject(a1, v116, "FE_NN", "fe/fe_nn", v114, v115);
            if ((Object & 0x80000000) != 0)
            {
              break;
            }
          }
        }

        if ((ssftmap_IteratorNext(v122, &v124, &v125) & 0x80000000) != 0)
        {
          goto LABEL_86;
        }
      }

LABEL_131:
      v13 = Object;
      goto LABEL_51;
    }

LABEL_86:
    Object = clcpipeline_LoadObject(a1, v116, "CLMOBJECT", "clmobjectinterface", v114, v115);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_131;
    }

    ssftmap_IteratorClose(v122);
    v122 = 0;
  }

  v96 = clcpipeline_disclose_location_of_fe_clm_component(v123, v22);
  v97 = v96;
  if ((v96 & 0x80000000) != 0)
  {
    v13 = v96;
    goto LABEL_51;
  }

  v98 = *(v22 + 16);
  if (!*(v22 + 16))
  {
LABEL_104:
    v105 = ssftmap_FindReadOnly(v117, "RESOURCES", &v125);
    if ((v105 & 0x80000000) != 0)
    {
      a5 = v119;
      v81 = v120;
    }

    else
    {
      v105 = ssftmap_IteratorOpen(v125[2], 0, 0, &v122);
      v106 = v105;
      a5 = v119;
      v81 = v120;
      if ((v105 & 0x80000000) == 0)
      {
        goto LABEL_111;
      }
    }

    v106 = 0;
    if ((v105 & 0x1FFF) != 0xD && (v105 & 0x1FFF) != 0x14)
    {
      v13 = v105;
      goto LABEL_52;
    }

LABEL_111:
    v118 = (v22 + 24);
    v121 = 0;
    while ((ssftmap_IteratorNext(v122, &v124, &v125) & 0x80000000) == 0)
    {
      if (v124 && !strcmp(v124, "RESOURCE"))
      {
        if (*v125 && **v125)
        {
          v111 = v125[1];
          if (v111 && (ssftmap_FindReadOnly(v111, "content-type", &v121) & 0x80000000) == 0 && v121 && *v121)
          {
            log_OutText(v123[4], "FE_CLCML", 4, 0, "ResourceLoad: %s, %s", v108, v109, v110, *v125);
            clcpipeline_ResourceLoad(v22, 1, v121, *v125, 0, 0, 0);
          }

          else
          {
            log_OutPublic(v123[4], "FE_CLCML", 16095, "%s%s", v107, v108, v109, v110, "clcpipeline");
            v106 = 2358255620;
          }
        }

        else
        {
          log_OutPublic(v123[4], "FE_CLCML", 16094, "%s%s", v107, v108, v109, v110, "clcpipeline");
        }
      }

      else
      {
        log_OutPublic(v123[4], "FE_CLCML", 16093, "%s%s%s%s", v107, v108, v109, v110, "clcpipeline");
      }
    }

    ssftmap_IteratorClose(v122);
    v122 = 0;
    if (*v118)
    {
      a5 = v119;
      v81 = v120;
      if (*(v22 + 40))
      {
        compstats_Stop(*v118, *(v22 + 32), 0, v76, v77, v78, v79, v80);
        compstats_Log(*(v22 + 24), *(v22 + 32), v123[4], "Pipeline Open", *(v22 + 40), 0, 0);
      }

      v13 = v106;
      goto LABEL_52;
    }

    v13 = v106;
    a5 = v119;
    v81 = v120;
    if (v120)
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v99 = 0;
  v100 = (v120 + 8);
  while (1)
  {
    v101 = *(*(v22 + 8) + 8 * v99);
    if (v101)
    {
      break;
    }

LABEL_103:
    ++v99;
    v100 += 2;
    if (v99 >= v98)
    {
      goto LABEL_104;
    }
  }

  if (*v23)
  {
    compstats_Start(*v23, *(v22 + 32), (v99 + 2), v76, v77, v78, v79, v80);
  }

  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(v101[3], v101[4], NullHandle, v103))
  {
    log_OutText(v123[4], "FE_CLCML", 4, 0, "Open component: %s", v78, v79, v80, v101[1]);
    v104 = (*(v101[2] + 32))(*(v100 - 1), *v100, a1, v116, v101 + 3);
    goto LABEL_98;
  }

  if (*(v101[2] + 48))
  {
    log_OutText(v123[4], "FE_CLCML", 4, 0, "Reopen component: %s", v78, v79, v80, v101[1]);
    *v115 = 1;
    v104 = (*(v101[2] + 48))(v101[3], v101[4]);
LABEL_98:
    v97 = v104;
  }

  if (*v23)
  {
    compstats_Stop(*v23, *(v22 + 32), (v99 + 2), v76, v77, v78, v79, v80);
  }

  if ((v97 & 0x80000000) == 0)
  {
    v98 = *(v22 + 16);
    goto LABEL_103;
  }

  v113 = v101[1];
  log_OutPublic(v123[4], "FE_CLCML", 16001, "%s%s%s%x", v77, v78, v79, v80, "component");
  v13 = v97;
LABEL_50:
  a5 = v119;
LABEL_51:
  v81 = v120;
LABEL_52:
  if (v122)
  {
    ssftmap_IteratorClose(v122);
  }

  if (v81)
  {
LABEL_55:
    heap_Free(v123[1], v81);
  }

LABEL_56:
  if ((v13 & 0x80000000) != 0)
  {
    if (v22)
    {
      clcpipeline_ObjClose(v22, v74, v75, v76, v77, v78, v79, v80);
    }
  }

  else
  {
    *a5 = v22;
  }

  log_OutText(v123[4], "FE_CLCML", 4, 0, "clcpipeline_ObjOpen : End (%x)", v78, v79, v80, v13);
  return v13;
}

uint64_t clcpipeline_LoadObject(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v47 = 0;
  v48 = a3;
  NullHandle = safeh_GetNullHandle();
  v46 = v12;
  v44 = 0;
  inited = InitRsrcFunction(a1, a2, &v47);
  if ((inited & 0x80000000) == 0)
  {
    if ((objc_GetObject(v47[6], a3, &v44) & 0x80000000) != 0)
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      LOBYTE(v41) = 1;
      v23 = brk_InterfaceQuery(v47[3]);
      if ((v23 & 0x80000000) != 0)
      {
        return v23;
      }

      log_OutText(v47[4], "FE_CLCML", 4, 0, "Open component: %s", v24, v25, v26, a4);
      v27 = (*(*(&v41 + 1) + 32))(NullHandle, v46, a1, a2, &v42);
      if ((v27 & 0x80000000) != 0)
      {
        inited = v27;
        log_OutPublic(v47[4], "FE_CLCML", 16001, "%s%s%s%x", v28, v29, v30, v31, "component");
        brk_InterfaceRelease(v47[3], *(&v41 + 1));
        return inited;
      }

      inited = objc_RegisterObject(v47[6], a3, &v41);
      if ((inited & 0x80000000) != 0)
      {
        log_OutPublic(v47[4], "FE_CLCML", 16001, "%s%s%s%x", v32, v33, v34, v35, "component");
      }

      else
      {
        if (!a5 || vector_Add(a5, &v48))
        {
          return inited;
        }

        log_OutPublic(v47[4], "FE_CLCML", 16000, 0, v36, v37, v38, v39, v40);
        inited = 2358255626;
      }

      (*(*(&v41 + 1) + 40))(v42, *(&v42 + 1));
      brk_InterfaceRelease(v47[3], *(&v41 + 1));
      return inited;
    }

    v17 = v44[1];
    if (*(v17 + 48))
    {
      log_OutText(v47[4], "FE_CLCML", 4, 0, "Reopen object: %s", v14, v15, v16, a3);
      if (a6)
      {
        *a6 = 1;
      }

      inited = (*(v17 + 48))(v44[2], v44[3]);
      if ((inited & 0x80000000) != 0)
      {
        log_OutPublic(v47[4], "FE_CLCML", 16001, "%s%s%s%x", v18, v19, v20, v21, "component");
      }
    }

    objc_ReleaseObject(v47[6], a3);
  }

  return inited;
}

uint64_t clcpipeline_disclose_location_of_fe_clm_component(uint64_t a1, uint64_t a2)
{
  v4 = paramc_ParamSetUInt(*(a1 + 40), "fe_clm_component", 0);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  v5 = *(a2 + 16);
  if (!*(a2 + 16))
  {
    return v4;
  }

  v6 = 0;
  v7 = *(a2 + 8);
  v8 = -1;
  v9 = -1;
  do
  {
    v10 = *(v7 + 8 * v6);
    if (v10)
    {
      v11 = *(v10 + 8);
      if (!strcmp(v11, "fe/fe_clm"))
      {
        v9 = v6;
      }

      else if (!strcmp(v11, "fe/fe_global"))
      {
        v8 = v6;
      }
    }

    ++v6;
  }

  while (v5 != v6);
  if (v9 == 0xFFFF || v8 == 0xFFFF)
  {
    return v4;
  }

  v12 = *(a1 + 40);
  if (v8 >= v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  return paramc_ParamSetUInt(v12, "fe_clm_component", v13);
}

uint64_t clcpipeline_ResourceLoad(uint64_t *a1, int a2, char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v14 = 2358255623;
  v39 = 0;
  *&v38 = safeh_GetNullHandle();
  *(&v38 + 1) = v15;
  if (a1 && a3)
  {
    v16 = *a1;
    if (a4)
    {
      if (strstr(a3, ";loader=broker"))
      {
        *v37 = 0;
        Str = paramc_ParamGetStr(*(v16 + 40), "langcode", v37);
        if ((Str & 0x80000000) != 0)
        {
          v14 = Str;
          goto LABEL_24;
        }

        v18 = brokeraux_ComposeBrokerString(v16, a4, 1, 1, *v37, 0, 0, v40, 0x400uLL);
        if (v18 < 0)
        {
          v14 = v18 | 0x8C902000;
          goto LABEL_24;
        }

        a4 = v40;
      }
    }

    else
    {
      a4 = "";
    }

    if (a7)
    {
      *a7 = safeh_GetNullHandle();
      a7[1] = v19;
    }

    ResourceOwner = clcpipeline_FindResourceOwner(a1, a3, &v39);
    if ((ResourceOwner & 0x80000000) != 0)
    {
      v32 = ResourceOwner;
      log_OutPublic(*(v16 + 32), "FE_CLCML", 16077, "%s%s%s%s", v21, v22, v23, v24, "uri");
      v14 = v32;
    }

    else
    {
      v25 = v39;
      v26 = *(v39[2] + 64);
      if (v26)
      {
        v27 = v26(v39[3], v39[4], a3, a4, a5, a6, &v38);
        v14 = v27;
        if ((v27 & 0x80000000) != 0)
        {
          if (!a2 || (v27 & 0x1FFF) != 0x40C)
          {
            v36 = v25[1];
            log_OutPublic(*(v16 + 32), "FE_CLCML", 16038, "%s%s%s%s%s%s%s%x", v28, v29, v30, v31, "component");
          }
        }

        else if (a7)
        {
          *a7 = v38;
        }
      }

      else
      {
        v35 = v39[1];
        log_OutPublic(*(v16 + 32), "FE_CLCML", 16039, "%s%s%s%s%s%s", v21, v22, v23, v24, "component");
      }
    }
  }

LABEL_24:
  v33 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t clcpipeline_ObjClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 2358255622;
  }

  v9 = *a1;
  if (*(a1 + 8))
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = *(a1 + 32);
      compstats_Reset(v10);
      compstats_Start(*(a1 + 24), *(a1 + 32), 0, v12, v13, v14, v15, v16);
    }

    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = (v17 - 1) + 2;
      v20 = v17 - 1;
      do
      {
        v21 = v20;
        v22 = *(*(a1 + 8) + 8 * v20);
        if (v22)
        {
          v23 = *v22;
          v24 = v23 != 0;
          v25 = v23 - 1;
          if (v25 != 0 && v24)
          {
            *v22 = v25;
          }

          else
          {
            NullHandle = safeh_GetNullHandle();
            if (!safeh_HandlesEqual(*(v22 + 3), *(v22 + 4), NullHandle, v27))
            {
              log_OutText(*(v9 + 32), "FE_CLCML", 4, 0, "Close component: %s", v28, v29, v30, *(*(*(a1 + 8) + 8 * v20) + 8));
              v36 = *(a1 + 24);
              if (v36)
              {
                compstats_Start(v36, *(a1 + 32), v19, v31, v32, v33, v34, v35);
              }

              v37 = *(*(a1 + 8) + 8 * v20);
              v43 = (*(v37[2] + 40))(v37[3], v37[4]);
              v44 = *(a1 + 24);
              if (v44)
              {
                compstats_Stop(v44, *(a1 + 32), v19, v38, v39, v40, v41, v42);
              }

              if ((v43 & 0x80000000) != 0)
              {
                v54 = *(*(*(a1 + 8) + 8 * v20) + 8);
                log_OutPublic(*(v9 + 32), "FE_CLCML", 16002, "%s%s%s%x", v39, v40, v41, v42, "component");
                if (v18 >= 0)
                {
                  v18 = v43;
                }

                else
                {
                  v18 = v18;
                }
              }
            }

            v45 = *(*(a1 + 8) + 8 * v20);
            v46 = *(v45 + 16);
            if (v46)
            {
              v47 = brk_InterfaceRelease(*(v9 + 24), v46);
              if (v47 >= 0 || v18 <= -1)
              {
                v18 = v18;
              }

              else
              {
                v18 = v47;
              }

              v45 = *(*(a1 + 8) + 8 * v20);
            }

            heap_Free(*(v9 + 8), *(v45 + 8));
            heap_Free(*(v9 + 8), *(*(a1 + 8) + 8 * v20));
          }
        }

        v19 = (v19 - 1);
        --v20;
      }

      while (v21);
    }

    else
    {
      v18 = 0;
    }

    v49 = *(a1 + 24);
    if (v49)
    {
      compstats_Stop(v49, *(a1 + 32), 0, a4, a5, a6, a7, a8);
      compstats_Log(*(a1 + 24), *(a1 + 32), *(v9 + 32), "Pipeline Close", *(a1 + 40), 0, 0);
    }

    heap_Free(*(v9 + 8), *(a1 + 8));
  }

  else
  {
    v18 = 0;
  }

  v50 = *(a1 + 24);
  if (v50)
  {
    compstats_ObjClose(v50, *(a1 + 32));
  }

  if (*(a1 + 40))
  {
    v51 = 0;
    do
    {
      v52 = *(*(a1 + 40) + 8 * v51);
      if (v52)
      {
        heap_Free(*(v9 + 8), v52);
      }

      ++v51;
    }

    while (*(a1 + 16) + 3 > v51);
    heap_Free(*(v9 + 8), *(a1 + 40));
  }

  heap_Free(*(v9 + 8), a1);
  return v18;
}

uint64_t clcpipeline_FindResourceOwner(uint64_t a1, const char *a2, void *a3)
{
  v3 = 2358255623;
  if (a1 && a2 && *a2)
  {
    v7 = 0;
    *a3 = 0;
    while (v7 < *(a1 + 16))
    {
      v19 = 0;
      v8 = *(*(a1 + 8) + 8 * v7);
      v9 = *(v8[2] + 56);
      if (v9)
      {
        v10 = v9(v8[3], v8[4], &v19);
        v9 = *a3;
        if ((v10 & 0x80000000) == 0)
        {
          v11 = v19;
          if (v19)
          {
            if (v9)
            {
              return 0;
            }

            v12 = *v19;
            if (*v19)
            {
              v13 = 0;
              do
              {
                v14 = strlen(v12);
                if (!strncmp(a2, v12, v14))
                {
                  v15 = a2[v14];
                  if (v15 == 59 || v15 == 0)
                  {
                    v17 = *(*(a1 + 8) + 8 * v7);
                    *a3 = v17;
                    if (v17)
                    {
                      return 0;
                    }
                  }
                }

                v12 = v11[++v13];
              }

              while (v12);
            }

            v9 = 0;
          }
        }
      }

      ++v7;
      if (v9)
      {
        return 0;
      }
    }

    return 2358255636;
  }

  return v3;
}

uint64_t clcpipeline_UnloadObjects(_WORD *a1, int a2, uint64_t a3)
{
  v22 = 0;
  v23 = 0;
  v21 = 0;
  inited = InitRsrcFunction(a1, a2, &v23);
  if ((inited & 0x80000000) == 0)
  {
    for (i = 1; i != 3; ++i)
    {
      Size = vector_GetSize(a3);
      if (Size)
      {
        v7 = Size - 1;
        do
        {
          if (!vector_GetElemAt(a3, v7, &v22))
          {
            break;
          }

          if ((objc_GetObject(v23[6], *v22, &v21) & 0x80000000) == 0)
          {
            objc_ReleaseObject(v23[6], *v22);
            if (i == 1)
            {
              v8 = (*(v21[1] + 40))(v21[2], v21[3]);
              if (v8 < 0)
              {
                v13 = v8;
                v20 = *v22;
                log_OutPublic(v23[4], "FE_CLCML", 16100, "%s%x%s%s", v9, v10, v11, v12, "lherror");
              }

              else
              {
                v13 = brk_InterfaceRelease(v23[3], v21[1]);
              }
            }

            else
            {
              v13 = objc_UnregisterObject(v23[6], *v22);
              if (v13 < 0)
              {
                v19 = *v22;
                log_OutPublic(v23[4], "FE_CLCML", 16101, "%s%x%s%s", v14, v15, v16, v17, "lherror");
              }
            }

            if (v13 >= 0)
            {
              inited = inited;
            }

            else
            {
              inited = v13;
            }
          }

          --v7;
        }

        while (v7 != -1);
      }
    }
  }

  return inited;
}

uint64_t fe_deinitlingdb_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (!a5)
  {
    return 2308972551;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v25);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v25[6], "LINGDB", &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v25[6], "SYNTHSTREAM", &v24);
  v8 = v25[6];
  if ((Object & 0x80000000) != 0)
  {
    v18 = "LINGDB";
LABEL_15:
    objc_ReleaseObject(v8, v18);
    return Object;
  }

  Object = objc_GetObject(v8, "FE_DEPES", &v22);
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v25[6], "LINGDB");
    v8 = v25[6];
    v18 = "SYNTHSTREAM";
    goto LABEL_15;
  }

  v9 = heap_Alloc(v25[1], 928);
  v14 = v25;
  if (v9)
  {
    v15 = v9;
    *v9 = v25;
    v16 = *(v24 + 8);
    *(v9 + 8) = *(v23 + 8);
    *(v9 + 16) = v16;
    v17 = v22;
    *(v9 + 40) = *(v22 + 8);
    *(v9 + 24) = *(v17 + 16);
    *(v9 + 920) = 0;
    if ((paramc_ParamGetUInt(v14[5], "usewordorthography", &v21) & 0x80000000) == 0 && v21 == 1)
    {
      *(v15 + 920) = 1;
    }

    *a5 = v15;
    *(a5 + 8) = 62337;
  }

  else
  {
    log_OutPublic(v25[4], "FE_DEINITLINGDB", 31000, 0, v10, v11, v12, v13, v20);
    objc_ReleaseObject(v25[6], "LINGDB");
    objc_ReleaseObject(v25[6], "SYNTHSTREAM");
    objc_ReleaseObject(v25[6], "FE_DEPES");
    return 2308972554;
  }

  return Object;
}

uint64_t fe_deinitlingdb_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62337, 928);
  if ((result & 0x80000000) != 0)
  {
    return 2308972552;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_deinitlingdb_ObjReopen(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62337, 928);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2308972552;
  }
}

uint64_t fe_deinitlingdb_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62337, 928) & 0x80000000) != 0)
  {
    return 2308972552;
  }

  synstrmaux_InitStreamOpener(a1 + 48, *(*a1 + 32), "FE_DEINITLINGDB");
  synstrmaux_RegisterOutStream((a1 + 48), "text/plain;charset=depes", a1 + 872);
  synstrmaux_RegisterOutStream((a1 + 48), "application/x-realspeak-markers-pp;version=4.0", a1 + 888);
  synstrmaux_RegisterOutStream((a1 + 48), "text/x-realspeak-phonemes;charset=tts", a1 + 904);
  v7 = synstrmaux_OpenStreams((a1 + 48), *(a1 + 16), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = v7;
LABEL_7:
    synstrmaux_CloseStreams((a1 + 48), *(a1 + 16));
    return v8;
  }

  v8 = paramc_ParamSetStr(*(*a1 + 40), "willbeprocessingdeinitlingdb", "yes");
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t fe_deinitlingdb_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v100 = *MEMORY[0x1E69E9840];
  __s = 0;
  v94 = 0;
  v91 = 0;
  v90 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  result = safeh_HandleCheck(a1, a2, 62337, 928);
  if ((result & 0x80000000) != 0)
  {
    result = 2308972552;
    goto LABEL_55;
  }

  *a5 = 1;
  if (*(a1 + 872))
  {
    v95 = 0;
    v93 = 0;
    v92 = 0;
    v88 = 0;
    v89 = 0;
    v87 = 0;
    v10 = (*(*(a1 + 8) + 272))(a3, a4, 98, 3, 0, 0);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 8) + 104))(a3, a4, 1, 0, &v95 + 2);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 8) + 168))(a3, a4, HIWORD(v95), 3, 1, &v85, &v95);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), &v89, 1);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), &v88, 0);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v11 = (*(*(a1 + 8) + 184))(a3, a4, HIWORD(v95), 0, &v90);
    v12 = *(a1 + 8);
    if (v11 < 0 || v90 != 1)
    {
      v13 = 0;
      if (((*(v12 + 184))(a3, a4, HIWORD(v95), 1, &v90) & 0x80000000) != 0 || v90 != 1 || (v10 = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v95), 1, &v94, &v95), (v10 & 0x80000000) == 0) && ((v13 = v95, !v95) || (v10 = (*(*(a1 + 16) + 104))(*(a1 + 888), *(a1 + 896), v94, 32 * v95), (v10 & 0x80000000) == 0)))
      {
        v14 = (*(*(a1 + 16) + 104))(*(a1 + 872), *(a1 + 880), "##", 3);
        if (v13)
        {
          v15 = 0;
          v16 = 0;
          v17 = (v94 + 12);
          v18 = v13;
          do
          {
            if (*(v17 - 3) == 8)
            {
              v19 = v17[3];
              v20 = v19 + v15;
              v21 = v19 + v16;
              if (*v17 == *(v94 + 12))
              {
                v16 = v21;
              }

              else
              {
                v15 = v20;
              }
            }

            v17 += 8;
            --v18;
          }

          while (v18);
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }

        if (!(v16 | v15))
        {
          goto LABEL_47;
        }

        v97 = 35;
        if (v16)
        {
          v98 = 91;
          LH_utoa(v16, v99, 0xAu);
          v29 = strlen(&v97);
          *(&v97 + v29) = 93;
          *(&v97 + v29 + 1) = 35;
          v30 = v29 + 2;
        }

        else
        {
          v98 = 35;
          v30 = 2;
        }

        v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v97, v30);
        if ((v10 & 0x80000000) == 0)
        {
          if (v15)
          {
            v97 = 91;
            LH_utoa(v15, &v98, 0xAu);
            v31 = strlen(&v97);
            *(&v97 + v31) = 93;
            *(&v97 + v31 + 1) = 0;
            v32 = v31 + 2;
          }

          else
          {
            v97 = 0;
            v32 = 1;
          }

          v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v97, v32);
        }
      }
    }

    else
    {
      v10 = (*(v12 + 176))(a3, a4, HIWORD(v95), 0, &__s, &v95);
      if ((v10 & 0x80000000) == 0)
      {
        if (v95 <= 1u)
        {
          v10 = (*(*(a1 + 16) + 104))(*(a1 + 872), *(a1 + 880), "##", 3);
          goto LABEL_46;
        }

        v22 = strlen(__s);
        v10 = (*(*(a1 + 16) + 104))(*(a1 + 872), *(a1 + 880), __s, (v22 + 1));
        if (v10 < 0)
        {
          goto LABEL_46;
        }

        v10 = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v95), 1, &v94, &v95);
        if (v10 < 0)
        {
          goto LABEL_46;
        }

        v23 = v95;
        v24 = v94 + 12;
        v25 = *(v94 + 12);
        v83 = v22;
        if (v95)
        {
          v26 = 0;
          v27 = 0;
          while (*v24 == v25)
          {
            if (*(v24 - 12) == 8)
            {
              v27 += *(v24 + 12);
            }

            ++v26;
            v24 += 32;
            if (v95 == v26)
            {
              v28 = v95;
              goto LABEL_58;
            }
          }

          v28 = v26;
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

LABEL_58:
        v35 = 1;
        (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "#", 1);
        if (v27)
        {
          v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "[", 1);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          LH_itoa(v27, &v97, 0xAu);
          v36 = strlen(&v97);
          v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v97, v36);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "]", 1);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          v35 = strlen(&v97) + 3;
        }

        if (((*(*(a1 + 8) + 152))(a3, a4, 2, HIWORD(v95), &v90) & 0x80000000) != 0 || !v90)
        {
          v70 = v86;
        }

        else
        {
          v10 = (*(*(a1 + 8) + 104))(a3, a4, 2, HIWORD(v95), &v93);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          v79 = v23;
          v80 = 0;
          v37 = 0;
          v81 = 0;
          v82 = 0;
          v78 = 1;
          while (v93)
          {
            v10 = (*(*(a1 + 8) + 168))(a3, a4);
            if (v10 < 0)
            {
              goto LABEL_46;
            }

            v38 = v92;
            if ((v92 - 9) < 6 || v92 == 4)
            {
              if (v92 != 11 && HIDWORD(v82) != 0)
              {
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x12\x10", 2);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                HIDWORD(v82) = 0;
                v35 += 2;
                v38 = v92;
              }

              if (v38 != 12 && v82)
              {
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x13\x10", 2);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                LODWORD(v82) = 0;
                v35 += 2;
              }

              v10 = (*(*(a1 + 8) + 168))(a3, a4, v93, 1, 1, &v87, &v95);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              v10 = (*(*(a1 + 8) + 168))(a3, a4, v93, 2, 1, &v86, &v95);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              v41 = v87;
              v10 = (*(*(a1 + 8) + 176))(a3, a4, v93, 3, &v91, &v95);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              v42 = v35 - v41 + v37;
              v43 = v91;
              if (!v91 || !*v91)
              {
                goto LABEL_107;
              }

              v44 = strlen(v91);
              v80 = v44;
              if (!*(a1 + 920))
              {
                if (v44)
                {
                  v45 = 0;
                  v46 = 0;
LABEL_92:
                  ++v45;
                  do
                  {
                    if (v45 != 1 && v91[v45 - 1] == 42 && v91[v45 - 2] != 45)
                    {
                      v91[v45 - 1] = 45;
                      v46 = 1;
                      if (v45 != v44)
                      {
                        goto LABEL_92;
                      }

                      v43 = v91;
                      goto LABEL_101;
                    }

                    ++v45;
                  }

                  while (v45 - v44 != 1);
                  v43 = v91;
                  if ((v46 & 1) == 0)
                  {
                    goto LABEL_103;
                  }

LABEL_101:
                  v47 = strlen(v43);
                  v10 = (*(*(a1 + 8) + 160))(a3, a4, v93, 3, (v47 + 1), v43, &v84);
                  if (v10 < 0)
                  {
                    goto LABEL_46;
                  }

                  v43 = v91;
LABEL_103:
                  if (!v43)
                  {
                    goto LABEL_107;
                  }
                }
              }

              if (*v43)
              {
                if (v78)
                {
                  v48 = 0;
                }

                else
                {
                  v65 = *(*(a1 + 16) + 104);
                  v66 = *(a1 + 904);
                  v67 = *(a1 + 912);
                  if (HIWORD(v90))
                  {
                    v10 = v65(v66, v67, "%#[", 3);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    LH_itoa(HIWORD(v90), &v97, 0xAu);
                    v68 = strlen(&v97);
                    v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v97, v68);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "]", 1);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    v48 = v42;
                    v42 += strlen(&v97) + 4;
                  }

                  else
                  {
                    v10 = v65(v66, v67, "-*", 2);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    v48 = 0;
                    v42 += 2;
                  }

                  LODWORD(v23) = v79;
                }

                v69 = v92;
                if (v92 == 13)
                {
                  v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x10\x12", 2);
                  if (v10 < 0)
                  {
                    goto LABEL_46;
                  }

                  v42 += 2;
                  HIDWORD(v82) = 1;
                  v69 = v92;
                }

                if (v69 == 14)
                {
                  v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x10\x13", 2);
                  if (v10 < 0)
                  {
                    goto LABEL_46;
                  }

                  v42 += 2;
                  LODWORD(v82) = 1;
                }

                if (((*(*(a1 + 8) + 184))(a3, a4, v93, 8, &v90) & 0x80000000) != 0 || v90 != 1)
                {
                  v78 = 0;
                  HIWORD(v90) = 0;
                }

                else
                {
                  v10 = (*(*(a1 + 8) + 168))(a3, a4, v93, 8, 1, &v90 + 2, &v95);
                  if (v10 < 0)
                  {
                    goto LABEL_46;
                  }

                  v78 = 0;
                }
              }

              else
              {
LABEL_107:
                v48 = 0;
              }

              v49 = v87;
              if (v28 >= v23)
              {
                v27 = 0;
              }

              else
              {
                v27 = 0;
                v50 = v94;
                v51 = v25 + v87 + v42;
                v52 = v25 + v87 + v48;
                v53 = v28 - 1;
                v54 = v28 - 1;
                v55 = v81;
                while (1)
                {
                  v56 = v50 + 32 * v28;
                  v57 = (v56 + 12);
                  if (v49 < (*(v56 + 12) - v25))
                  {
                    break;
                  }

                  *v57 = v51;
                  if (*v56 == 8)
                  {
                    if (v28)
                    {
                      v58 = v54;
                      v59 = v53;
                      do
                      {
                        v60 = v50 + 32 * v59;
                        v62 = *(v60 + 12);
                        v61 = (v60 + 12);
                        if (v62 == *v57)
                        {
                          *v61 = v52;
                        }

                        --v59;
                      }

                      while (v58--);
                    }

                    v27 += *(v56 + 24);
                    *v57 = v52;
                    v55 = v49;
                  }

                  ++v28;
                  ++v53;
                  ++v54;
                  if (v28 >= v23)
                  {
                    v81 = v55;
                    v28 = v23;
                    goto LABEL_122;
                  }
                }

                v81 = v55;
              }

LABEL_122:
              v37 = v86;
              v35 = v49 - v86 + v42;
              if (v91 && *v91)
              {
                v64 = v86;
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912));
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                v35 += v80;
                v37 = v64;
                LODWORD(v23) = v79;
              }
            }

            v14 = (*(*(a1 + 8) + 120))(a3, a4, v93, &v93);
            if (v14 < 0)
            {
              goto LABEL_47;
            }
          }

          if (HIDWORD(v82))
          {
            v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x12\x10", 2);
            if (v10 < 0)
            {
              goto LABEL_46;
            }

            LOWORD(v35) = v35 + 2;
          }

          if (v82)
          {
            v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x13\x10", 2);
            if (v10 < 0)
            {
              goto LABEL_46;
            }

            LOWORD(v35) = v35 + 2;
          }

          v70 = v86;
          if (v81)
          {
            v23 = v79;
            if (v81 == (v86 - 1))
            {
LABEL_149:
              if (v28 >= v23)
              {
                v74 = v83;
              }

              else
              {
                v71 = v25 + v35 + v70 + 1;
                v72 = v94 + 32 * v28 + 12;
                v73 = v23 - v28;
                v74 = v83;
                do
                {
                  *v72 = v71;
                  if (*(v72 - 12) == 8)
                  {
                    v27 += *(v72 + 12);
                  }

                  v72 += 32;
                  --v73;
                }

                while (v73);
              }

              (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "#", 1);
              v75 = v35 - v74 + v70 + 1;
              if (v27)
              {
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "[", 1);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                LH_itoa(v27, &v97, 0xAu);
                v76 = strlen(&v97);
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v97, v76);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "]", 1);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                v75 += strlen(&v97) + 2;
              }

              (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "", 1);
              *(v94 + 16) += v75;
              v77 = v88 + v75 + v89;
              v88 = 0;
              v89 = v77;
              v10 = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32));
              if ((v10 & 0x80000000) == 0)
              {
                v10 = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32), v88, 0);
                if ((v10 & 0x80000000) == 0)
                {
                  v10 = (*(*(a1 + 16) + 104))(*(a1 + 888), *(a1 + 896), v94, (32 * v23));
                }
              }

              goto LABEL_46;
            }
          }

          else
          {
            v23 = v79;
          }
        }

        v27 = 0;
        goto LABEL_149;
      }
    }

LABEL_46:
    v14 = v10;
LABEL_47:
    if (v85)
    {
      v14 = synstrmaux_CloseOutStreamsOnly((a1 + 48), *(a1 + 16));
    }

    LODWORD(result) = (*(*(a1 + 8) + 64))(a3, a4);
    if (v14 > -1 && result < 0)
    {
      result = result;
    }

    else
    {
      result = v14;
    }
  }

LABEL_55:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fe_deinitlingdb_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62337, 928) & 0x80000000) != 0)
  {
    return 2308972552;
  }

  result = synstrmaux_CloseStreams((a1 + 48), *(a1 + 16));
  if ((result & 0x80000000) == 0)
  {
    v4 = *(*a1 + 40);

    return paramc_ParamSetStr(v4, "willbeprocessingdeinitlingdb", "no");
  }

  return result;
}

uint64_t fe_deinitlingdb_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2308972545;
  }

  result = 0;
  *a2 = &IFeDeinitlingdb;
  return result;
}

uint64_t sprop_str_realloc(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 16);
  if (a3 + 1 <= v4)
  {
    return 0;
  }

  if (v4 <= 1)
  {
    v4 = 1;
  }

  do
  {
    v7 = v4;
    v4 *= 2;
  }

  while (v7 < a3 + 1);
  v8 = heap_Realloc(*(a1 + 8), *a2, v7);
  if (v8)
  {
    v13 = v8;
    result = 0;
    *a2 = v13;
    *(a2 + 16) = v7;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_SPROP", 39000, 0, v9, v10, v11, v12, v3);
    return 2409635850;
  }

  return result;
}

uint64_t sprop_str_dealloc(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 4))
  {
    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[1] = 0;
  return 0;
}

uint64_t sprop_str_clear(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(a1 + 8) = 0;
    **a1 = 0;
  }

  return 0;
}

uint64_t sprop_str_cat(uint64_t a1, uint64_t a2, char *__s, unsigned int a4)
{
  v4 = a4;
  v8 = *(a2 + 8);
  if (!a4)
  {
    v4 = strlen(__s);
  }

  v9 = v4 + v8;
  v10 = sprop_str_realloc(a1, a2, v4 + v8);
  if ((v10 & 0x80000000) == 0)
  {
    memcpy((*a2 + v8), __s, v4);
    *(*a2 + v9) = 0;
    *(a2 + 8) = v9;
    *(a2 + 12) += Utf8_LengthInUtf8chars(__s, v4);
  }

  return v10;
}

uint64_t sprop_str_copy(uint64_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  if (*(a2 + 16))
  {
    *(a2 + 8) = 0;
    **a2 = 0;
  }

  if (!a3)
  {
    return 0;
  }

  result = sprop_str_cat(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sprop_str_take_ownership(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a2 + 16))
  {
    heap_Free(*(a1 + 8), *a2);
    *(a2 + 16) = 0;
  }

  *a2 = a3;
  *(a2 + 12) = 0;
  *(a2 + 16) = a4;
  *(a2 + 8) = a4 - 1;
  *(a3 + (a4 - 1)) = 0;
  v8 = Utf8_LengthInUtf8chars(*a2, *(a2 + 8));
  *(a2 + 12) = v8;
  if (*(a2 + 8) != v8)
  {
    v13 = *(a2 + 8);
    log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "utf8length = %d, byte length = %d", v9, v10, v11, v8);
  }

  return 0;
}

uint64_t sprop_ne_load(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = 0;
  *(a4 + 352) = 0;
  __s1 = 0;
  *v42 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  *v43 = 0u;
  v44 = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v42);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "voice", &__s1), (Str & 0x80000000) != 0) || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v40), (Str & 0x80000000) != 0))
  {
LABEL_16:
    v17 = Str;
    goto LABEL_17;
  }

  v9 = heap_Realloc(*(a3 + 8), *a4, 256);
  if (v9)
  {
    v14 = v9;
    *a4 = v9;
    v15 = __s1;
    if (strstr(__s1, "uni"))
    {
      __sprintf_chk(v43, 0, 0x80uLL, "crf/ne/%s/%s/ne", *v42, v40);
      v16 = 0;
      __s1 = 0;
    }

    else
    {
      __sprintf_chk(v43, 0, 0x80uLL, "crf/ne/%s/%s/%s/ne", *v42, v15, v40);
      v16 = __s1;
    }

    v17 = brokeraux_ComposeBrokerString(a3, v43, 1, 1, *v42, v16, 0, v14, 0x100uLL);
    if ((v17 & 0x80000000) == 0)
    {
      log_OutText(*(a3 + 32), "FE_SPROP", 5, 0, "broker string = %s", v18, v19, v20, *a4);
      if ((ssftriff_reader_ObjOpen(a1, a2, 2, *a4, "CRPH", 1031, &v39) & 0x80000000) == 0)
      {
        v24 = crf_Init(a1, a2, v39, a4 + 8);
        if ((v24 & 0x80000000) != 0)
        {
          log_OutText(*(a3 + 32), "FE_SPROP", 0, 0, "error reading named entity model (NE): %x", v25, v26, v27, v24);
        }

        else
        {
          *(a4 + 352) = 1;
          log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "loaded %s", v25, v26, v27, *a4);
        }

        Str = ssftriff_reader_ObjClose(v39, v28, v29, v30, v31, v32, v33, v34);
        goto LABEL_16;
      }

      log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "no named entity model (NE)", v21, v22, v23, v38);
    }
  }

  else
  {
    log_OutPublic(*(a3 + 32), "FE_SPROP", 39000, 0, v10, v11, v12, v13, v37);
    v17 = 2409635850;
  }

LABEL_17:
  v35 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t sprop_ne_unload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *a2 = 0;
  }

  if (*(a2 + 352) == 1)
  {
    crf_Deinit(a2 + 8, v10, a3, a4, a5, a6, a7, a8);
  }

  *(a2 + 352) = 0;
  v11 = *(a2 + 360);
  if (v11 && *(a2 + 376))
  {
    v12 = 0;
    while (1)
    {
      v13 = sprop_str_set_dealloc(a1, *(a2 + 360) + 16 * v12);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      if (*(a2 + 376) <= ++v12)
      {
        v11 = *(a2 + 360);
        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = 0;
LABEL_12:
    heap_Free(*(a1 + 8), v11);
    *(a2 + 360) = 0;
    heap_Free(*(a1 + 8), *(a2 + 368));
    *(a2 + 368) = 0;
    *(a2 + 376) = 0;
  }

  return v13;
}

uint64_t sprop_ne_label(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 352);
  v41 = SPROP_STR_SET_null;
  if (v9)
  {
    v14 = *(a5 + 8);
    if (v14)
    {
      v15 = heap_Realloc(*(a1 + 8), *(a2 + 360), (16 * v14));
      if (!v15 || (*(a2 + 360) = v15, bzero(v15, (16 * v14)), (v20 = heap_Realloc(*(a1 + 8), *(a2 + 368), (8 * v14))) == 0))
      {
        v34 = 2409635850;
        log_OutPublic(*(a1 + 32), "FE_SPROP", 39000, 0, v16, v17, v18, v19, v36);
        return v34;
      }

      *(a2 + 368) = v20;
    }

    *(a2 + 376) = v14;
    word_features = sprop_get_word_features(a1, a3, *(a2 + 360));
    if ((word_features & 0x80000000) == 0)
    {
      v40 = 0;
      v39 = 0;
      if (*(a2 + 376))
      {
        for (i = 0; ; ++i)
        {
          sprop_str_set_add(a1, &v41, "", "", 0);
          v23 = i;
          word_features = sprop_str_set_join(a1, v41 + 24 * i, *(a2 + 360) + 16 * i);
          if ((word_features & 0x80000000) != 0)
          {
            break;
          }

          word_features = sprop_str_set_dealloc(a1, *(a2 + 360) + 16 * i);
          if ((word_features & 0x80000000) != 0)
          {
            break;
          }

          *(*(a2 + 368) + 8 * i) = *(v41 + 24 * i);
          v24 = *(a2 + 376);
          if (v24 <= (v23 + 1))
          {
            if (!v24)
            {
              return sprop_str_set_dealloc(a1, &v41);
            }

            word_features = crf_Process(a2 + 8, *(a2 + 368), v24, &v40, &v39);
            if ((word_features & 0x80000000) == 0)
            {
              if (v39 == *(a2 + 376))
              {
                if (v39)
                {
                  v28 = 0;
                  do
                  {
                    sprop_str_set_add(a1, a4, "", "", 0);
                    v29 = strlen(*(v40 + 8 * v28));
                    sprop_str_take_ownership(a1, *a4 + 24 * v28, *(v40 + 8 * v28), v29);
                    if (a5)
                    {
                      v30 = *a5 + 24 * v28;
                      if (*(v30 + 8))
                      {
                        v37 = *v30;
                        v38 = *(v40 + 8 * v28);
                        log_OutText(*(a1 + 32), "FE_SPROP", 4, 0, "traceFeatureVector ne : %s %s : %s", v25, v26, v27, *(*(a2 + 368) + 8 * v28));
                      }
                    }

                    ++v28;
                  }

                  while (*(a2 + 376) > v28);
                }

                v31 = *(a1 + 32);
                v32 = "traceFeatureVector ne : END_OF_SEQUENCE : ";
                v33 = 4;
              }

              else
              {
                v31 = *(a1 + 32);
                v32 = "sprop_dcme_label: crf_Process returned no predictions";
                v33 = 0;
              }

              log_OutText(v31, "FE_SPROP", v33, 0, v32, v25, v26, v27, v36);
              if (v40)
              {
                heap_Free(*(a1 + 8), v40);
              }

              return sprop_str_set_dealloc(a1, &v41);
            }

            return word_features;
          }
        }
      }

      else
      {
        return sprop_str_set_dealloc(a1, &v41);
      }
    }

    return word_features;
  }

  else
  {
    log_OutText(*(a1 + 32), "FE_SPROP", 0, 0, "sprop_ne_label: called while model not loaded", a6, a7, a8, v36);
    return 2409635842;
  }
}

uint64_t sprop_str_set_realloc(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a2 + 12);
  if (v4 >= a3)
  {
    return 0;
  }

  if (v4 <= 1)
  {
    v4 = 1;
  }

  do
  {
    v7 = v4;
    v4 *= 2;
  }

  while (v7 < a3);
  v8 = heap_Realloc(*(a1 + 8), *a2, 24 * v7);
  if (v8)
  {
    *a2 = v8;
    *(a2 + 12) = v7;
    bzero((v8 + 24 * *(a2 + 8)), 24 * (v7 - *(a2 + 8)));
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_SPROP", 39000, 0, v9, v10, v11, v12, v3);
    return 2409635850;
  }
}

uint64_t sprop_str_set_dealloc(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (!v2)
  {
    return 0;
  }

  *(a2 + 8) = 0;
  while (1)
  {
    v5 = sprop_str_dealloc(a1, (*a2 + 24 * v2 - 24));
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    v2 = *(a2 + 12) - 1;
    *(a2 + 12) = v2;
    if (!v2)
    {
      heap_Free(*(a1 + 8), *a2);
      *a2 = 0;
      return v5;
    }
  }

  return v5;
}

uint64_t sprop_str_set_clear(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  do
  {
    result = sprop_str_clear(*a1 + 24 * v1 - 24);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v1 = *(a1 + 8) - 1;
    *(a1 + 8) = v1;
  }

  while (v1);
  return result;
}

uint64_t sprop_str_set_add(uint64_t a1, uint64_t a2, char *a3, char *a4, unsigned int a5)
{
  result = sprop_str_set_realloc(a1, a2, *(a2 + 8) + 1);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_cat(a1, *a2 + 24 * *(a2 + 8), a3, 0);
    if ((result & 0x80000000) == 0)
    {
      result = sprop_str_cat(a1, *a2 + 24 * *(a2 + 8), a4, a5);
      if ((result & 0x80000000) == 0)
      {
        ++*(a2 + 8);
      }
    }
  }

  return result;
}

uint64_t sprop_str_set_join(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sprop_str_clear(a2);
  if (!*(a3 + 8))
  {
    return 0;
  }

  result = sprop_str_copy(a1, a2, **a3, *(*a3 + 8));
  if ((result & 0x80000000) == 0 && *(a3 + 8) >= 2u)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      result = sprop_str_cat(a1, a2, " ", 1u);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = sprop_str_cat(a1, a2, *(*a3 + v7 + 24), *(*a3 + v7 + 32));
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < *(a3 + 8));
  }

  return result;
}

uint64_t sprop_dcme_load(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55 = 0;
  *(a4 + 352) = 0;
  __s1 = 0;
  *v57 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  *v58 = 0u;
  v59 = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v57);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_42;
  }

  Str = paramc_ParamGetStr(*(a3 + 40), "voice", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_42;
  }

  Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v55);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_42;
  }

  v9 = heap_Realloc(*(a3 + 8), *a4, 256);
  if (!v9)
  {
    log_OutPublic(*(a3 + 32), "FE_SPROP", 39000, 0, v10, v11, v12, v13, v51);
    v17 = 2409635850;
    goto LABEL_43;
  }

  v14 = v9;
  *a4 = v9;
  v15 = __s1;
  if (strstr(__s1, "uni"))
  {
    __sprintf_chk(v58, 0, 0x80uLL, "crf/dcls/%s/%s/default", *v57, v55);
    v16 = 0;
    __s1 = 0;
  }

  else
  {
    __sprintf_chk(v58, 0, 0x80uLL, "crf/dcls/%s/%s/%s/default", *v57, v15, v55);
    v16 = __s1;
  }

  v17 = brokeraux_ComposeBrokerString(a3, v58, 1, 1, *v57, v16, 0, v14, 0x100uLL);
  if ((v17 & 0x80000000) == 0)
  {
    log_OutText(*(a3 + 32), "FE_SPROP", 5, 0, "broker string = %s", v18, v19, v20, *a4);
    if ((ssftriff_reader_ObjOpen(a1, a2, 2, *a4, "CRPH", 1031, &v54) & 0x80000000) != 0)
    {
      log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "no maxent doc class model (DCME)", v21, v22, v23, v52);
      goto LABEL_43;
    }

    v24 = crf_Init(a1, a2, v54, a4 + 8);
    if ((v24 & 0x80000000) != 0)
    {
      log_OutText(*(a3 + 32), "FE_SPROP", 0, 0, "error reading maxent doc class model (DCME): %x", v25, v26, v27, v24);
      goto LABEL_41;
    }

    *(a4 + 352) = 1;
    log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "loaded %s", v25, v26, v27, *a4);
    if (*(a4 + 352) == 1)
    {
      if (*(a4 + 48))
      {
        v35 = 0;
        v36 = 0;
        do
        {
          strlen(*(*(a4 + 40) + v35));
          log_OutText(*(a3 + 32), "FE_SPROP", 5, 0, "_dcme_dump_params: param[%d].key   = %.40s%s", v37, v38, v39, v36);
          strlen(*(*(a4 + 40) + v35 + 8));
          log_OutText(*(a3 + 32), "FE_SPROP", 5, 0, "_dcme_dump_params: param[%d].value = %.40s%s", v40, v41, v42, v36++);
          v35 += 16;
        }

        while (v36 < *(a4 + 48));
      }

      else
      {
        log_OutText(*(a3 + 32), "FE_SPROP", 3, 0, "_dcme_dump_params: no params loaded", v32, v33, v34, v53);
      }

      if (*(a4 + 352) == 1 && *(a4 + 48))
      {
        v43 = 0;
        v17 = 0;
        while (1)
        {
          v44 = *(a4 + 40) + 16 * v43;
          v45 = *v44;
          if (!strcmp("features", *v44))
          {
            v17 = sprop_str_copy(a3, a4 + 400, *(v44 + 8), 0);
            v47 = (a4 + 400);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_43;
            }

            goto LABEL_32;
          }

          if (!strcmp("uni500", v45))
          {
            break;
          }

          if (!strcmp("threshold", v45))
          {
            v17 = sprop_str_copy(a3, a4 + 448, *(v44 + 8), 0);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_43;
            }
          }

          else if (!strcmp("numbers", v45))
          {
            v46 = *(v44 + 8);
            v47 = (a4 + 472);
            v17 = sprop_str_copy(a3, a4 + 472, v46, 0);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_43;
            }

            goto LABEL_32;
          }

LABEL_39:
          if (++v43 >= *(a4 + 48))
          {
            if ((v17 & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_43;
          }
        }

        v17 = sprop_str_copy(a3, a4 + 424, *(v44 + 8), 0);
        v47 = (a4 + 424);
        if ((v17 & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

LABEL_32:
        for (i = *v47; ; ++i)
        {
          if (*i == 32)
          {
            *i = 0;
          }

          else if (!*i)
          {
            goto LABEL_39;
          }
        }
      }
    }

LABEL_41:
    Str = ssftriff_reader_ObjClose(v54, v28, v29, v30, v31, v32, v33, v34);
LABEL_42:
    v17 = Str;
  }

LABEL_43:
  v49 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t sprop_dcme_unload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *a2 = 0;
  }

  if (*(a2 + 352) == 1)
  {
    crf_Deinit(a2 + 8, v10, a3, a4, a5, a6, a7, a8);
  }

  *(a2 + 352) = 0;
  result = sprop_str_set_dealloc(a1, a2 + 360);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_dealloc(a1, (a2 + 376));
    if ((result & 0x80000000) == 0)
    {
      result = sprop_str_dealloc(a1, (a2 + 400));
      if ((result & 0x80000000) == 0)
      {
        result = sprop_str_dealloc(a1, (a2 + 424));
        if ((result & 0x80000000) == 0)
        {
          result = sprop_str_dealloc(a1, (a2 + 448));
          if ((result & 0x80000000) == 0)
          {

            return sprop_str_dealloc(a1, (a2 + 472));
          }
        }
      }
    }
  }

  return result;
}

uint64_t sprop_dcme_label(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 352))
  {
    features = sprop_str_set_clear(a2 + 360);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    features = sprop_get_features(a1, a3, a2 + 400, a2 + 424, (a2 + 448), a2 + 472, a2 + 360);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    features = sprop_str_set_join(a1, a2 + 376, a2 + 360);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    v39 = 0;
    v38 = 0;
    v17 = *(a2 + 376);
    if (!*(a2 + 448))
    {
      v18 = strstr(*(a2 + 376), " lc");
      if (v18)
      {
        v18[3] = 0;
        v17 = *(a2 + 376);
      }
    }

    log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "sprop_dcme_label: features = %s", v14, v15, v16, v17);
    v40 = *(a2 + 376);
    features = crf_Process(a2 + 8, &v40, 1u, &v39, &v38);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    else
    {
      if (v38)
      {
        v22 = *v39;
        if (v38 != 1)
        {
          log_OutText(*(a1 + 32), "FE_SPROP", 1, 0, "sprop_dcme_label: crf_Process returned %d predictions, using only first one", v19, v20, v21, v38);
        }

        log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "sprop_dcme_label: pred[0] = %s", v19, v20, v21, v22);
        v23 = strlen(v22);
        v27 = sprop_str_take_ownership(a1, a4, v22, v23);
        if (a5 && *(a5 + 2))
        {
          if (*(a2 + 448))
          {
            v28 = "intc ";
          }

          else
          {
            v28 = "";
          }

          v37 = *a5;
          v36 = *(a2 + 376);
          log_OutText(*(a1 + 32), "FE_SPROP", 4, 0, "traceFeatureVector dcls : %s%s %s : %s", v24, v25, v26, v28);
        }
      }

      else
      {
        log_OutText(*(a1 + 32), "FE_SPROP", 0, 0, "sprop_dcme_label: crf_Process returned no predictions", v19, v20, v21, v35);
        v27 = 2409635847;
      }

      v30 = v39;
      if (v39)
      {
        v31 = v38;
        v32 = --v38;
        if (v31 >= 2)
        {
          do
          {
            heap_Free(*(a1 + 8), v39[v32]);
            v32 = v38 - 1;
          }

          while (v38-- > 1);
          v30 = v39;
        }

        heap_Free(*(a1 + 8), v30);
      }
    }
  }

  else
  {
    v27 = 2409635842;
    log_OutText(*(a1 + 32), "FE_SPROP", 0, 0, "sprop_dcme_label: called while model not loaded", a6, a7, a8, v34);
  }

  return v27;
}

uint64_t sprop_input_dealloc(uint64_t a1, uint64_t *a2)
{
  result = sprop_str_dealloc(a1, a2);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_dealloc(a1, a2 + 3);
    if ((result & 0x80000000) == 0)
    {

      return sprop_str_dealloc(a1, a2 + 6);
    }
  }

  return result;
}

uint64_t sprop_input_clear(uint64_t a1)
{
  result = sprop_str_clear(a1);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_clear(a1 + 24);
    if ((result & 0x80000000) == 0)
    {

      return sprop_str_clear(a1 + 48);
    }
  }

  return result;
}

_DWORD *sprop_input_find_marker(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = (*(a1 + 56) >> 5);
  if ((*(a1 + 56) >> 5))
  {
    v4 = 0;
    result = *(a1 + 48);
    do
    {
      if (a3)
      {
        if (result == a3)
        {
          a3 = 0;
        }
      }

      else
      {
        if (*result == a2)
        {
          return result;
        }

        a3 = 0;
      }

      result += 8;
      ++v4;
    }

    while (v4 < v3);
  }

  return 0;
}

_DWORD *sprop_input_rfind_marker(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 56);
  if ((v3 >> 5))
  {
    v4 = 0;
    result = ((*&v3 & 0x1FFFE0) + *(a1 + 48) - 32);
    do
    {
      if (a3)
      {
        if (result == a3)
        {
          a3 = 0;
        }
      }

      else
      {
        if (*result == a2)
        {
          return result;
        }

        a3 = 0;
      }

      ++v4;
      result -= 8;
    }

    while (v4 < (v3 >> 5));
  }

  return 0;
}

_OWORD *sprop_input_insert_marker(uint64_t a1, uint64_t a2, unint64_t a3, _OWORD *a4)
{
  v7 = *(a2 + 48);
  v5 = a2 + 48;
  v6 = v7;
  v8 = *(v5 + 8);
  v9 = v7 + 32 * (v8 >> 5);
  v10 = v7 <= a3 && v9 > a3;
  if (!v10 || (sprop_str_realloc(a1, v5, v8 + 32) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = (v8 >> 5) - ((a3 - v6) >> 5);
  v14 = (*(a2 + 48) + a3 - v6);
  memmove(v14 + 2, v14, 32 * v13);
  *(a2 + 56) += 32;
  v15 = a4[1];
  *v14 = *a4;
  v14[1] = v15;
  return v14;
}

uint64_t fe_sprop_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2409635841;
  }

  result = 0;
  *a2 = &ISProp;
  return result;
}

uint64_t fe_sprop_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 2409635847;
  if (a3)
  {
    v11 = 0;
    inited = InitRsrcFunction(a1, a2, &v11);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v8 = heap_Calloc(*(v11 + 8), 1, 24);
      if (v8)
      {
        v3 = 0;
        v9 = v11;
        v8[1] = a2;
        v8[2] = v9;
        *v8 = a1;
        *a3 = v8;
        *(a3 + 8) = 501;
      }

      else
      {
        return 2409635850;
      }
    }
  }

  return v3;
}

uint64_t fe_sprop_ClassClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 501, 24);
  if ((result & 0x80000000) == 0)
  {
    heap_Free(*(*(a1 + 16) + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_sprop_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2409635847;
  if (a5)
  {
    inited = safeh_HandleCheck(a1, a2, 501, 24);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v16 = 0;
    v17 = 0;
    inited = InitRsrcFunction(a3, a4, &v17);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = objc_GetObject(*(v17 + 48), "SYNTHSTREAM", &v16);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v11 = heap_Calloc(*(v17 + 8), 1, 1944);
    if (!v11)
    {
      return 2409635850;
    }

    v12 = v11;
    v13 = v17;
    *v11 = v17;
    v11[1] = a3;
    v11[2] = a4;
    v11[3] = a1;
    v11[4] = *(v16 + 8);
    v18 = 0;
    inited = sprop_dcme_load(a3, a4, v13, (v11 + 125));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = sprop_ne_load(v12[1], v12[2], *v12, (v12 + 187));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      *(v12 + 484) = 0;
      UInt = paramc_ParamGetUInt(*(v13 + 40), "dont_insert_ne_markers", &v18);
      if ((UInt & 0x1FFF) == 0x14)
      {
LABEL_16:
        v5 = 0;
        *a5 = v12;
        *(a5 + 8) = 501;
        return v5;
      }

      v5 = UInt;
      if ((UInt & 0x80000000) == 0 && v18 == 1)
      {
        *(v12 + 484) = 1;
        goto LABEL_16;
      }

      if ((UInt & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  return v5;
}

uint64_t fe_sprop_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 501, 1944);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      v10 = *a1;
      result = sprop_dcme_unload(*a1, (a1 + 125), v4, v5, v6, v7, v8, v9);
      if ((result & 0x80000000) == 0)
      {
        result = sprop_ne_unload(v10, (a1 + 187), v11, v12, v13, v14, v15, v16);
        if ((result & 0x80000000) == 0)
        {
          result = sprop_input_dealloc(v10, a1 + 116);
          if ((result & 0x80000000) == 0)
          {
            result = sprop_str_dealloc(v10, a1 + 237);
            if ((result & 0x80000000) == 0)
            {
              result = sprop_str_set_dealloc(v10, (a1 + 240));
              if ((result & 0x80000000) == 0)
              {
                result = sprop_str_set_dealloc(v10, (a1 + 235));
                if ((result & 0x80000000) == 0)
                {
                  objc_ReleaseObject(*(v10 + 48), "SYNTHSTREAM");
                  heap_Free(*(*a1 + 8), a1);
                  return 0;
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

uint64_t fe_sprop_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 501, 1944);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_dcme_unload(*a1, a1 + 1000, v4, v5, v6, v7, v8, v9);
    if ((result & 0x80000000) == 0)
    {
      result = sprop_dcme_load(*(a1 + 8), *(a1 + 16), *a1, a1 + 1000);
      if ((result & 0x80000000) == 0)
      {
        result = sprop_ne_unload(*a1, a1 + 1496, v10, v11, v12, v13, v14, v15);
        if ((result & 0x80000000) == 0)
        {
          v16 = sprop_ne_load(*(a1 + 8), *(a1 + 16), *a1, a1 + 1496);
          return v16 & (v16 >> 31);
        }
      }
    }
  }

  return result;
}

uint64_t fe_sprop_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 501, 1944) & 0x80000000) != 0)
  {
    return 2409635848;
  }

  synstrmaux_InitStreamOpener(a1 + 40, *(*a1 + 32), "FE_SPROP");
  synstrmaux_RegisterInStream((a1 + 40), "text/plain;charset=utf-8", 0, a1 + 864);
  synstrmaux_RegisterInStream((a1 + 40), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 880);
  synstrmaux_RegisterOutStream((a1 + 40), "text/plain;charset=utf-8", a1 + 896);
  synstrmaux_RegisterOutStream((a1 + 40), "application/x-realspeak-markers-pp;version=4.0", a1 + 912);
  v7 = synstrmaux_OpenStreams((a1 + 40), *(a1 + 32), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 40), *(a1 + 32));
  }

  return v7;
}

uint64_t fe_sprop_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 501, 1944) & 0x80000000) != 0)
  {
    return 2409635848;
  }

  log_OutText(*(*a1 + 32), "FE_SPROP", 5, 0, "fe_sprop_Process: start", v7, v8, v9, v103);
  *a5 = 1;
  *&__n[1] = 0;
  LODWORD(__s2[0]) = 0;
  LODWORD(v111) = 0;
  __n[0] = 0;
  v10 = a1[4];
  v11 = a1[108];
  v12 = a1[109];
  LODWORD(v108) = 0;
  v13 = (*(v10 + 144))(v11, v12, &v108, &v111);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (v108)
  {
    v13 = (*(v10 + 88))(v11, v12, &__n[1], __s2);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v14 = *&__n[1];
  }

  else
  {
    v14 = 0;
    *&__n[1] = 0;
    LODWORD(__s2[0]) = 0;
  }

  v13 = sprop_str_copy(*a1, (a1 + 116), v14, 0);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v13 = (*(a1[4] + 96))(a1[108], a1[109], LODWORD(__s2[0]));
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v16 = a1[4];
  v17 = a1[110];
  v18 = a1[111];
  LODWORD(v108) = 0;
  v13 = (*(v16 + 144))(v17, v18, &v108, __n);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (v108)
  {
    v13 = (*(v16 + 88))(v17, v18, &__n[1], __s2);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v19 = *&__n[1];
    v20 = __s2[0];
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *&__n[1] = 0;
    LODWORD(__s2[0]) = 0;
  }

  v13 = sprop_str_copy(*a1, (a1 + 122), v19, v20);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v21 = sprop_input_mrk((a1 + 116));
  v22 = sprop_input_mrk_cnt((a1 + 116));
  if (!v22)
  {
    goto LABEL_23;
  }

  v15 = 0;
  v23 = v22;
  v24 = (v21 + 24);
  do
  {
    if (marker_hasNonConstCharPtrArg(*(v24 - 6)))
    {
      v15 = sprop_str_set_add(*a1, (a1 + 235), "", *v24, 0);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      *v24 = *(a1[235] + 24 * (*(a1 + 472) - 1));
    }

    v24 += 4;
    --v23;
  }

  while (v23);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_23:
    v13 = (*(a1[4] + 96))(a1[110], a1[111], LODWORD(__s2[0]));
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v25 = *a1;
    v26 = sprop_input_mrk((a1 + 116));
    v27 = sprop_input_mrk_cnt((a1 + 116));
    _dump_markers(v25, v26, v27);
    v31 = v111;
    v32 = v111;
    if (v111 != __n[0])
    {
      log_OutText(*(*a1 + 32), "FE_SPROP", 1, 0, "_read_streams: detected sync loss: bEndText=%d, bEndMrk=%d", v28, v29, v30, v111);
      v32 = v111;
      v31 = __n[0];
    }

    v34 = v32 == 1 || v31 == 1;
    if (!*(a1 + 234))
    {
      goto LABEL_135;
    }

    log_OutText(*(*a1 + 32), "FE_SPROP", 4, 0, "fe_sprop_Process: input = %s", v28, v29, v30, a1[116]);
    if (*(a1 + 338) != 1)
    {
      goto LABEL_149;
    }

    v108 = SPROP_STR_null;
    v109 = 0;
    *&__n[1] = 0;
    __s2[0] = "";
    LOWORD(v111) = 0;
    LOWORD(__n[0]) = 0;
    marker = sprop_input_find_marker((a1 + 116), 51, 0);
    if (marker)
    {
      v36 = marker;
      do
      {
        v37 = hlp_NLUStrFind(v36[3], "S_CLASS", &__n[1], &v111);
        v38 = v37 == 0;
        if (v37)
        {
          break;
        }

        v36 = sprop_input_find_marker((a1 + 116), 51, v36);
      }

      while (v36);
    }

    else
    {
      v38 = 1;
    }

    v39 = sprop_input_rfind_marker((a1 + 116), 51, 0);
    if (v39)
    {
      v43 = v39;
      do
      {
        v44 = hlp_NLUStrFind(v43[3], "E_CLASS", __s2, __n);
        v45 = v44 == 0;
        if (v44)
        {
          break;
        }

        v43 = sprop_input_rfind_marker((a1 + 116), 51, v43);
      }

      while (v43);
    }

    else
    {
      v45 = 1;
    }

    if (!v38)
    {
      if (*(a1 + 476))
      {
        log_OutText(*(*a1 + 32), "FE_SPROP", 1, 0, "unbalanced NLU mark-up: S_CLASS:%s implicitly closed by S_CLASS:%*s", v40, v41, v42, a1[237]);
      }

      sprop_str_copy(*a1, (a1 + 237), *&__n[1], v111);
    }

    if (!v45)
    {
      if (*(a1 + 476))
      {
        v46 = a1[237];
        if (strncmp(v46, __s2[0], LOWORD(__n[0])))
        {
          log_OutText(*(*a1 + 32), "FE_SPROP", 1, 0, "unbalanced NLU mark-up: S_CLASS:%s closed by E_CLASS:%*s", v40, v41, v42, v46);
        }
      }
    }

    if (v38 && !*(a1 + 476))
    {
      v47 = (a1 + 237);
      v81 = sprop_dcme_label(*a1, (a1 + 125), a1 + 116, &v108, 0, v40, v41, v42);
      v82 = sprop_input_find_marker((a1 + 116), 1, 0);
      if (v82)
      {
        v86 = v82;
        *&__n[3] = 0;
        *&v107 = 0;
        v87 = v82[1];
        __n[1] = 51;
        __n[2] = v87;
        __n[4] = v82[3];
        if (v81 < 0 || (v88 = v108, *v108 == 49) && !*(v108 + 1))
        {
          v89 = *a1;
          v88 = "none";
        }

        else
        {
          v89 = *a1;
        }

        v90 = sprop_str_set_add(v89, (a1 + 235), "S_CLASS:", v88, 0);
        if ((v90 & 0x80000000) != 0)
        {
          v15 = v90;
        }

        else
        {
          *(&v107 + 1) = *(a1[235] + 24 * (*(a1 + 472) - 1));
          sprop_input_insert_marker(*a1, (a1 + 116), v86, &__n[1]);
          v91 = sprop_input_rfind_marker((a1 + 116), 1, 0);
          v92 = v91[3];
          __n[2] = v91[1];
          __n[4] = v92;
          if (v81 < 0 || (v93 = v108, *v108 == 49) && !*(v108 + 1))
          {
            v94 = *a1;
            v93 = "none";
          }

          else
          {
            v94 = *a1;
          }

          v15 = sprop_str_set_add(v94, (a1 + 235), "E_CLASS:", v93, 0);
          if ((v15 & 0x80000000) == 0)
          {
            *(&v107 + 1) = *(a1[235] + 24 * (*(a1 + 472) - 1));
            sprop_input_insert_marker(*a1, (a1 + 116), v91, &__n[1]);
          }
        }
      }

      else
      {
        log_OutText(*(*a1 + 32), "FE_SPROP", 0, 0, "unable to insert NLU CLASS markers", v83, v84, v85, v104);
        v15 = 2409635847;
      }
    }

    else
    {
      v47 = (a1 + 237);
      v48 = sprop_dcme_label(*a1, (a1 + 125), a1 + 116, &v108, a1 + 237, v40, v41, v42);
      v15 = v48 & ~(v48 >> 31);
    }

    if (!v45)
    {
      sprop_str_clear(v47);
    }

    sprop_str_dealloc(*a1, &v108);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_149:
      if (*(a1 + 462) != 1)
      {
        goto LABEL_133;
      }

      *__s2 = SPROP_STR_SET_null;
      v109 = 0;
      v107 = 0u;
      v108 = SPROP_STR_null;
      *&__n[1] = 0u;
      v15 = sprop_str_set_clear((a1 + 240));
      v105 = v34;
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_132;
      }

      v49 = sprop_input_mrk_cnt((a1 + 116));
      v50 = sprop_input_mrk((a1 + 116));
      if (!v49)
      {
        goto LABEL_80;
      }

      v54 = 0;
      v55 = 0;
      v111 = 0;
      LOWORD(__n[0]) = 0;
      v56 = v49;
      v57 = (v50 + 24);
      v58 = "";
      v59 = "O";
      do
      {
        v60 = *(v57 - 6);
        if (v60 == 1)
        {
          v15 = sprop_str_set_add(*a1, (a1 + 240), v59, v58, v55);
          if ((v15 & 0x80000000) != 0)
          {
            goto LABEL_132;
          }

          if (*v59 == 66 && v59[1] == 45 && !v59[2])
          {
            v59 = "I-";
          }

          if (v54)
          {
            v58 = "";
            v59 = "O";
            v55 = 0;
          }

          v54 = 0;
        }

        else if (v60 == 51)
        {
          if (hlp_NLUStrFind(*v57, "S_NE", &v111, __n))
          {
            v58 = v111;
            v59 = "B-";
            v55 = LOWORD(__n[0]);
          }

          if (hlp_NLUStrFind(*v57, "E_NE", &v111, __n))
          {
            v54 = 1;
          }
        }

        v57 += 4;
        --v56;
      }

      while (v56);
      if ((v15 & 0x80000000) == 0)
      {
LABEL_80:
        v61 = sprop_ne_label(*a1, (a1 + 187), (a1 + 116), __s2, (a1 + 240), v51, v52, v53);
        if ((v61 & 0x80000000) != 0)
        {
          v15 = 0;
          goto LABEL_132;
        }

        v15 = v61;
        v62 = *(a1 + 468);
        if (v62)
        {
          v63 = 0;
          do
          {
            v64 = v63;
            v65 = &__s2[0][24 * v63];
            v66 = *v65;
            if (**v65 == 73 && v66[1] == 45)
            {
              if (!v64 || (v67 = *(v65 - 3), strlen(v67) < 3) || strcmp(v66 + 2, v67 + 2))
              {
                v68 = sprop_str_copy(*a1, &v108, "B-", 0);
                if ((v68 & 0x80000000) != 0 || (v68 = sprop_str_cat(*a1, &v108, (*&__s2[0][24 * v64] + 2), 0), (v68 & 0x80000000) != 0))
                {
LABEL_131:
                  v15 = v68;
                  goto LABEL_132;
                }

                v15 = sprop_str_copy(*a1, &__s2[0][24 * v64], v108, 0);
                if ((v15 & 0x80000000) != 0)
                {
                  goto LABEL_132;
                }

                v62 = *(a1 + 468);
              }
            }

            v63 = v64 + 1;
          }

          while (v62 > (v64 + 1));
        }

        if (!*(a1 + 484))
        {
          v69 = sprop_input_mrk_cnt((a1 + 116));
          v70 = sprop_input_mrk((a1 + 116));
          if (v69)
          {
            v71 = v70;
            v72 = 32 * v69;
            v73 = *(a1 + 468);
            do
            {
              if (*(v71 + v72 - 32) == 1)
              {
                v75 = *(a1 + 468) != v73 && (v74 = *&__s2[0][24 * v73], *v74 == 73) && v74[1] == 45;
                LOWORD(v73) = v73 - 1;
                v76 = &__s2[0][24 * v73];
                if (**v76 == 66)
                {
                  v77 = v71;
                  if (*(*v76 + 1) == 45)
                  {
                    *&__n[1] = 0u;
                    v107 = 0u;
                    __n[1] = 51;
                    __n[2] = *(v71 + v72 - 28);
                    __n[4] = *(v71 + v72 - 20);
                    v15 = sprop_str_set_add(*a1, (a1 + 235), "S_NE:", (*v76 + 2), 0);
                    if ((v15 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v78 = a1[235] + 24 * *(a1 + 472);
                    v79 = (v78 - 24);
                    if (!v75)
                    {
                      v68 = sprop_str_cat(*a1, v78 - 24, ";E_NE:", 0);
                      if ((v68 & 0x80000000) != 0)
                      {
                        goto LABEL_131;
                      }

                      v15 = sprop_str_cat(*a1, v79, (*&__s2[0][24 * v73] + 2), 0);
                      if ((v15 & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    *(&v107 + 1) = *v79;
                    sprop_input_insert_marker(*a1, (a1 + 116), v71 + v72 - 32, &__n[1]);
                    v77 = sprop_input_mrk((a1 + 116));
                  }
                }

                else
                {
                  v77 = v71;
                }

                if (!v75)
                {
                  v80 = &__s2[0][24 * v73];
                  if (**v80 == 73 && *(*v80 + 1) == 45)
                  {
                    *&__n[1] = 0u;
                    v107 = 0u;
                    __n[1] = 51;
                    __n[2] = *(v71 + v72 - 28);
                    __n[4] = *(v71 + v72 - 20);
                    v15 = sprop_str_set_add(*a1, (a1 + 235), "E_NE:", (*v80 + 2), 0);
                    if ((v15 & 0x80000000) != 0)
                    {
                      break;
                    }

                    *(&v107 + 1) = *(a1[235] + 24 * *(a1 + 472) - 24);
                    sprop_input_insert_marker(*a1, (a1 + 116), v71 + v72 - 32, &__n[1]);
                    v77 = sprop_input_mrk((a1 + 116));
                  }
                }

                v71 = v77;
              }

              v72 -= 32;
            }

            while (v72);
          }
        }
      }

LABEL_132:
      sprop_str_set_dealloc(*a1, __s2);
      sprop_str_dealloc(*a1, &v108);
      v34 = v105;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_133:
        v95 = *(a1 + 234);
        if (v95)
        {
          v13 = (*(a1[4] + 104))(a1[112], a1[113], a1[116], (v95 + 1));
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }

LABEL_135:
        if (!*(a1 + 246) || (v96 = *a1, v97 = sprop_input_mrk((a1 + 116)), v98 = sprop_input_mrk_cnt((a1 + 116)), _dump_markers(v96, v97, v98), v13 = (*(a1[4] + 104))(a1[114], a1[115], a1[122], *(a1 + 246)), (v13 & 0x80000000) == 0))
        {
          if (!v34 || (v13 = synstrmaux_CloseOutStreamsOnly(a1 + 20, a1[4]), (v13 & 0x80000000) == 0))
          {
            v13 = sprop_input_clear((a1 + 116));
            if ((v13 & 0x80000000) == 0)
            {
              v15 = sprop_str_set_clear((a1 + 235));
              if ((v15 & 0x80000000) == 0)
              {
                log_OutText(*(*a1 + 32), "FE_SPROP", 5, 0, "fe_sprop_Process: end (fRet=0x%x)", v99, v100, v101, v15);
              }

              return v15;
            }
          }
        }

        return v13;
      }
    }
  }

  return v15;
}

uint64_t fe_sprop_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 501, 1944) & 0x80000000) != 0)
  {
    return 2409635848;
  }

  v3 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 40), v3);
}

uint64_t _dump_markers(uint64_t result, int *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 0;
    v6 = a3;
    do
    {
      hasCharPtrArg = marker_hasCharPtrArg(*a2);
      v11 = *(a2 + 3);
      if (hasCharPtrArg)
      {
        v12 = *(a2 + 3);
      }

      v18 = *(a2 + 3);
      v16 = a2[3];
      v17 = a2[4];
      v14 = a2[1];
      v15 = a2[2];
      v13 = *a2;
      result = log_OutText(*(v4 + 32), "FE_SPROP", 5, 0, "mrk[%02d] = %-4s (%05d) %3d %3d %3d %3d %p %s", v8, v9, v10, v5++);
      a2 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

const char *sprop_bigrams(const char *a1, char *__s)
{
  v4 = strchr(__s, 95);
  if (!v4 || !*a1)
  {
    return 0;
  }

  v5 = v4;
  v6 = (v4 - __s);
  while (1)
  {
    if (!strncmp(a1, __s, v6) && a1[v6] == 32)
    {
      v7 = strlen(v5 + 1);
      if (!strncmp(&a1[v6 + 1], v5 + 1, v7))
      {
        break;
      }
    }

    if (!*++a1)
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sprop_get_features(uint64_t a1, int32x2_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2[1].i32[0] && !a2[4].i32[0])
  {
    v14 = sprop_normalize(a1, a2 + 3, a2, 1);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "sprop_get_features: normalized input = %s", v19, v20, v21, *&a2[3]);
  }

  else
  {
    v14 = 0;
  }

  v15 = _sprop_feature_set_catalogs[*a5 == 0];
  if (*v15)
  {
    v16 = v15 + 16;
    do
    {
      if (*a5)
      {
        v17 = a3;
      }

      else
      {
        v17 = a4;
      }

      v14 = (*v16)(a1, *(v16 - 1), a2, v17, a5, a6, a7);
      if ((v14 & 0x80000000) != 0)
      {
        break;
      }

      v18 = *(v16 + 1);
      v16 += 24;
    }

    while (v18);
  }

  return v14;
}

uint64_t sprop_normalize(uint64_t a1, int32x2_t *a2, uint64_t a3, int a4)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = sprop_str_clear(a2);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = &v8[v9];
    v12 = *a3;
    if (v12 < &v8[v9])
    {
      v13 = 0;
      do
      {
        v14 = Utf8_LengthInBytes(v12, 1);
        if (utf8_BelongsToSet(0, v12, 0, v14) == 1)
        {
          if (v13)
          {
            v13 = 1;
          }

          else
          {
            v13 = 1;
            sprop_str_cat(a1, a2, " ", 1u);
          }
        }

        else if (!utf8_BelongsToSet(0xAu, v12, 0, v14))
        {
          if (a4 && utf8_ToLower(v12, 0, v22))
          {
            v15 = v22;
            v16 = a1;
            v17 = a2;
            v18 = 0;
          }

          else
          {
            v16 = a1;
            v17 = a2;
            v15 = v12;
            v18 = v14;
          }

          sprop_str_cat(v16, v17, v15, v18);
          v13 = 0;
        }

        v12 += v14;
      }

      while (v12 < v11);
    }

    if (!*a2)
    {
      sprop_str_cat(a1, a2, " ", 1u);
    }

    v19 = a2[1].i32[0];
    if (v19)
    {
      v20 = v19 - 1;
      if (*(*a2 + v20) == 32)
      {
        *(*a2 + v20) = 0;
        a2[1] = vadd_s32(a2[1], -1);
      }
    }
  }

  return v10;
}

uint64_t sprop_get_word_features(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if (!v6 || *(a2 + 32) || (result = sprop_str_copy(a1, a2 + 24, *a2, v6), (result & 0x80000000) == 0))
  {
    v8 = &off_1F42D6350;
    do
    {
      result = (*v8)(a1, *(v8 - 1), a2, 0, 0, 0, a3);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v9 = v8[1];
      v8 += 3;
    }

    while (v9);
  }

  return result;
}

uint64_t SPROP_sen_len(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a3 + 24);
  v13 = 1;
  while (*v12 == 32)
  {
    v13 = (v13 + 1);
LABEL_6:
    ++v12;
  }

  if (*v12)
  {
    goto LABEL_6;
  }

  v14 = uint32_log2(v13);
  if (v14 >= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v18 = v15 | 0x30;
  if (*a5)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  return sprop_add_feature(a1, a7, v16, "SENTLEN=", a2, &v18, 1u);
}

uint64_t SPROP_avg_wrd_len(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a3 + 24);
  v13 = 1;
  while (*v12 == 32)
  {
    ++v13;
LABEL_6:
    ++v12;
  }

  if (*v12)
  {
    goto LABEL_6;
  }

  v14 = uint32_log2(4 * *(a3 + 36) / v13);
  if (v14 >= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v18 = v15 | 0x30;
  if (*a5)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  return sprop_add_feature(a1, a7, v16, "WORDLEN=", a2, &v18, 1u);
}

uint64_t SPROP_freq10_caps(uint64_t a1, char *a2, unsigned __int8 **a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  v12 = *(a3 + 2);
  if (v12)
  {
    v14 = *a3;
    v15 = **a3;
    if (**a3)
    {
      v16 = 0;
      do
      {
        v17 = Utf8_LengthInBytes(v14, 1);
        if (utf8_ToLower(v14, 0, v20))
        {
          ++v16;
        }

        v14 += v17;
      }

      while (*v14);
      v15 = 10 * v16;
    }

    v12 = v15 / *(a3 + 3);
  }

  if (v12 >= 9)
  {
    LOBYTE(v12) = 9;
  }

  v21 = v12 | 0x30;
  if (*a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  return sprop_add_feature(a1, a7, v18, "CAPS=", a2, &v21, 1u);
}

uint64_t SPROP_freq10_puncs(uint64_t a1, char *a2, unsigned __int8 **a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  if (*(a3 + 2))
  {
    v13 = *a3;
    v14 = **a3;
    if (**a3)
    {
      v15 = 0;
      do
      {
        v16 = Utf8_LengthInBytes(v13, 1);
        if (utf8_BelongsToSet(0xAu, v13, 0, v16) == 1)
        {
          ++v15;
        }

        v13 += v16;
      }

      while (*v13);
      v14 = 10 * v15;
    }

    v17 = v14 / *(a3 + 3) + 48;
  }

  else
  {
    LOBYTE(v17) = 48;
  }

  v20 = v17;
  if (*a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  return sprop_add_feature(a1, a7, v18, "PUNC=", a2, &v20, 1u);
}

uint64_t SPROP_first_wrd(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = utf8_strchr(*(a3 + 24), " ");
  v14 = *(a3 + 24);
  v15 = strlen(v14);
  if (v13)
  {
    v16 = v13 - v14;
  }

  else
  {
    v16 = v15;
  }

  if (*a5)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  return sprop_add_feature(a1, a7, v17, "FIRSTWD=", a2, v14, v16);
}

uint64_t SPROP_last_char(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a3 + 8);
  if (!v7)
  {
    return 0;
  }

  while (1)
  {
    v19 = v7 - 1;
    if (v7 == 1)
    {
      return 0;
    }

    utf8_GetPreviousValidUtf8Offset(*a3, &v19);
    if (!utf8_BelongsToSet(0, *a3, v19, *(a3 + 8)))
    {
      break;
    }

    v7 = v19;
    if (!v19)
    {
      return 0;
    }
  }

  v15 = *a3;
  v16 = v19;
  v17 = Utf8_LengthInBytes((v15 + v19), 1);
  if (!v15)
  {
    return 0;
  }

  if (*a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  return sprop_add_feature(a1, a7, v18, "LASTCH=", a2, (v15 + v16), v17);
}

uint64_t SPROP_freq4_singlechars(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!*(a3 + 32))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  if (!*v7)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(a3 + 24);
  do
  {
    v16 = &v15[Utf8_LengthInBytes(v15, 1)];
    if ((*v15 | 0x20) == 0x20)
    {
      ++v13;
      if (Utf8_LengthInUtf8chars(v7, v15 - v7) == 1)
      {
        ++v14;
        v7 = v16;
      }
    }

    v15 = v16;
  }

  while (*v16);
  if (!v13)
  {
    return 0;
  }

  v19 = v14 / v13 + 48;
  if (*a5)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  return sprop_add_feature(a1, a7, v17, "SINGLECH=", a2, &v19, 1u);
}

uint64_t SPROP_numeral(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a6 + 8);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = &v10[v11];
  if (v9)
  {
    v13 = *a6;
    v14 = *a6 + v9;
    v15 = "1";
    do
    {
      v16 = strlen(v13);
      if (v11)
      {
        v17 = v10;
        do
        {
          v18 = strstr(v17, v13);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          v17 = &v18[v16];
          if ((*v17 | 0x20) == 0x20 && (v19 == v10 || *(v19 - 1) == 32))
          {
            goto LABEL_21;
          }
        }

        while (v17 < v12);
      }

      v13 += (v16 + 1);
    }

    while (v13 < v14);
  }

  if (!v11)
  {
    goto LABEL_19;
  }

  v20 = v10 + 1;
  do
  {
    v21 = *(v20 - 1) - 58;
  }

  while (v21 <= 0xFFFFFFF5 && v20++ < v12);
  if (v21 > 0xFFFFFFF5)
  {
    v15 = "1";
  }

  else
  {
LABEL_19:
    v15 = "0";
  }

LABEL_21:
  if (*a5)
  {
    v23 = a4;
  }

  else
  {
    v23 = 0;
  }

  return sprop_add_feature(a1, a7, v23, "NUMERAL=", a2, v15, 0);
}

uint64_t SPROP_keywords(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 8);
  if (!v7)
  {
    return 0;
  }

  v11 = 0;
  v12 = *a4;
  v13 = *a4 + v7;
  v14 = *(a3 + 24) + *(a3 + 32);
  do
  {
    v15 = *(a3 + 24);
    v16 = strlen(v12);
    if (v15 < v14)
    {
      v17 = *(a3 + 24);
      do
      {
        v18 = strstr(v17, v12);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        v17 = &v18[v16];
        if ((*v17 | 0x20) == 0x20 && (v19 == v15 || *(v19 - 1) == 32))
        {
          v11 = sprop_str_set_add(a1, a7, a2, v12, v16);
          if ((v11 & 0x80000000) != 0)
          {
            return v11;
          }

          break;
        }
      }

      while (v17 < v14);
    }

    v12 += v16 + 1;
  }

  while (v12 < v13);
  return v11;
}

uint64_t SPROP_keywords_bigrams(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 8);
  if (!v7)
  {
    return 0;
  }

  v11 = 0;
  v12 = *a4;
  v13 = *a4 + v7;
  v14 = *(a3 + 24) + *(a3 + 32);
  do
  {
    v15 = *(a3 + 24);
    v16 = strlen(v12);
    if (v15 < v14)
    {
      v17 = *(a3 + 24);
      do
      {
        v18 = sprop_bigrams(v17, v12);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        v17 = &v18[v16];
        if ((*v17 | 0x20) == 0x20 && (v19 == v15 || *(v19 - 1) == 32))
        {
          v11 = sprop_str_set_add(a1, a7, a2, v12, v16);
          if ((v11 & 0x80000000) != 0)
          {
            return v11;
          }

          break;
        }
      }

      while (v17 < v14);
    }

    v12 += v16 + 1;
  }

  while (v12 < v13);
  return v11;
}

uint64_t sprop_add_feature(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, char *a5, char *a6, unsigned int a7)
{
  if (a3)
  {
    v13 = *a3;
    v14 = *(a3 + 8);
    v15 = strlen(__s);
    if (a7)
    {
      v16 = a7;
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v16 = strlen(a6);
      if (!v14)
      {
        return 0;
      }
    }

    v17 = &v13[v14];
    while (strncmp(v13, __s, v15) || strncmp(&v13[v15], a6, v16))
    {
      v13 += strlen(v13) + 1;
      if (v13 >= v17)
      {
        return 0;
      }
    }
  }

  return sprop_str_set_add(a1, a2, a5, a6, a7);
}

uint64_t SPROP_word_token(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sprop_input_mrk_cnt(a3);
  v10 = sprop_input_mrk(a3);
  v24 = SPROP_STR_null;
  v25 = 0;
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v9;
    v15 = (v10 + 12);
    while (1)
    {
      v16 = *(v15 - 3);
      if (v16 == 1)
      {
        v17 = a7 + 16 * v12;
        v18 = sprop_str_set_add(a1, v17, "", "", 0);
        if ((v18 & 0x80000000) != 0 || (v19 = *v17, v20 = *(v17 + 8), v18 = sprop_str_copy(a1, &v24, (*a3 + *v15 - v11), v15[1]), (v18 & 0x80000000) != 0))
        {
          v13 = v18;
          goto LABEL_16;
        }

        v21 = v19 + 24 * v20;
        v13 = sprop_normalize(a1, (v21 - 24), &v24, 0);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        if (!*(v21 - 16))
        {
          v13 = sprop_str_cat(a1, v21 - 24, "-", 0);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_16;
          }
        }

        ++v12;
      }

      else if (v16 == 0x4000)
      {
        v11 = *v15;
      }

      v15 += 8;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = 0;
LABEL_16:
  sprop_str_dealloc(a1, &v24);
  return v13;
}

uint64_t SPROP_word_lowercase_token(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sprop_input_mrk_cnt(a3);
  v10 = sprop_input_mrk(a3);
  v24 = SPROP_STR_null;
  v25 = 0;
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v9;
    v15 = (v10 + 12);
    while (1)
    {
      v16 = *(v15 - 3);
      if (v16 == 1)
      {
        v17 = a7 + 16 * v12;
        v18 = sprop_str_set_add(a1, v17, "", "", 0);
        if ((v18 & 0x80000000) != 0 || (v19 = *v17, v20 = *(v17 + 8), v18 = sprop_str_copy(a1, &v24, (*a3 + *v15 - v11), v15[1]), (v18 & 0x80000000) != 0))
        {
          v13 = v18;
          goto LABEL_16;
        }

        v21 = v19 + 24 * v20;
        v13 = sprop_normalize(a1, (v21 - 24), &v24, 1);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        if (!*(v21 - 16))
        {
          v13 = sprop_str_cat(a1, v21 - 24, "-", 0);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_16;
          }
        }

        ++v12;
      }

      else if (v16 == 0x4000)
      {
        v11 = *v15;
      }

      v15 += 8;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = 0;
LABEL_16:
  sprop_str_dealloc(a1, &v24);
  return v13;
}

uint64_t SPROP_word_token_class(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sprop_input_mrk_cnt(a3);
  v33 = a3;
  v9 = sprop_input_mrk(a3);
  if (v8)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    result = 0;
    v15 = v8;
    while (1)
    {
      v16 = (v10 + 32 * v11);
      if (*v16 == 1)
      {
        break;
      }

      if (*v16 == 0x4000)
      {
        v12 = v16[3];
      }

LABEL_46:
      if (++v11 == v15)
      {
        return result;
      }
    }

    v17 = v16[4];
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v36 = v12;
      v20 = (*v33 + v16[3] - v12);
      v21 = 30;
      do
      {
        if (utf8_BelongsToSet(6u, v20, v18, v17))
        {
          v21 = v21 & 0xFFFFFEF1 | 0x100;
          ++v19;
        }

        else if (utf8_BelongsToSet(0xAu, v20, v18, v16[4]))
        {
          v22 = v21 & 0xFFFFFFE1;
          v23 = v20[v18];
          v24 = v21 & 0xFFFFFFC1 | 0x20;
          v25 = v21 & 0xFFFFFF61 | 0x80;
          if (v23 != 47)
          {
            v25 = v21 & 0xFFFFFFE1;
          }

          if (v23 != 46)
          {
            v24 = v25;
          }

          if (v23 == 45)
          {
            v22 = v21 & 0xFFFFFDE1 | 0x200;
          }

          if (v23 == 44)
          {
            v22 = v21 & 0xFFFFFFA1 | 0x40;
          }

          if (v20[v18] <= 0x2Du)
          {
            v21 = v22;
          }

          else
          {
            v21 = v24;
          }
        }

        else if (utf8_BelongsToSet(0x12u, v20, v18, v16[4]) || utf8_BelongsToSet(0x15u, v20, v18, v16[4]) || utf8_BelongsToSet(0x18u, v20, v18, v16[4]) || utf8_BelongsToSet(0x1Bu, v20, v18, v16[4]) || utf8_BelongsToSet(0x1Eu, v20, v18, v16[4]))
        {
          v26 = v21 | 0xC01;
          if (v18)
          {
            v26 = v21 | 0x400;
          }

          v21 = v26 & 0xFFFFFFEB;
        }

        else
        {
          v21 = v21 & 0xFFFFFBED | 0x400;
        }

        NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(v20, v18, v16[4]);
        v18 = NextUtf8OffsetLimit;
        v17 = v16[4];
      }

      while (NextUtf8OffsetLimit != v17);
      if (NextUtf8OffsetLimit == 1)
      {
        v28 = "sc";
      }

      else
      {
        v28 = "ac";
      }

      if ((v21 & 4) != 0)
      {
        v28 = "lc";
        goto LABEL_43;
      }

      if (v19 == 2)
      {
        v28 = "2d";
        goto LABEL_43;
      }

      if (v19 == 4)
      {
        v28 = "4d";
LABEL_43:
        v12 = v36;
        goto LABEL_44;
      }

      v29 = v21;
      if ((v21 & 0x100) != 0)
      {
        v28 = "an";
        v12 = v36;
        if ((v29 & 0x400) != 0)
        {
          goto LABEL_44;
        }

        v28 = "dd";
        if ((v29 & 0x200) != 0)
        {
          goto LABEL_44;
        }

        v28 = "ds";
        if ((v29 & 0x80) != 0)
        {
          goto LABEL_44;
        }

        v28 = "dc";
        if ((v29 & 0x40) != 0)
        {
          goto LABEL_44;
        }

        v30 = (v29 & 0x20) == 0;
        v31 = "dp";
        v32 = "num";
      }

      else
      {
        v12 = v36;
        if ((v29 & 2) != 0)
        {
          goto LABEL_44;
        }

        v28 = "cp";
        if ((v29 & 0x20) != 0)
        {
          goto LABEL_44;
        }

        v30 = (v29 & 1) == 0;
        v31 = "ic";
        v32 = "other";
      }

      if (v30)
      {
        v28 = v32;
      }

      else
      {
        v28 = v31;
      }
    }

    else
    {
      v28 = "lc";
    }

LABEL_44:
    result = sprop_str_set_add(a1, a7 + 16 * v13, "", v28, 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    ++v13;
    goto LABEL_46;
  }

  return 0;
}

uint64_t SPROP_word_begin_sentence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sprop_input_mrk_cnt(a3);
  v11 = sprop_input_mrk(a3);
  if (!v10)
  {
    return 0;
  }

  v12 = v11;
  v13 = 0;
  result = 0;
  v15 = v10;
  v16 = "1";
  do
  {
    v17 = *v12;
    v12 += 8;
    if (v17 == 1)
    {
      result = sprop_str_set_add(a1, a7 + 16 * v13, "", v16, 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      ++v13;
      v16 = "0";
    }

    --v15;
  }

  while (v15);
  return result;
}

uint64_t be_adapt_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  v28 = 0;
  v5 = 2410684423;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v28);
    if ((inited & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v28 + 8), 1, 656);
      if (v10)
      {
        v15 = v10;
        Object = objc_GetObject(*(v28 + 48), "LINGDB", &v27);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        *(v15 + 8) = *(v27 + 8);
        Object = objc_GetObject(*(v28 + 48), "FE_DEPES", &v26);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v17 = v26;
        *(v15 + 32) = *(v26 + 8);
        *(v15 + 16) = *(v17 + 16);
        Object = objc_GetObject(*(v28 + 48), "FE_DCTLKP", &v25);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v18 = v25;
        *(v15 + 56) = *(v25 + 8);
        *(v15 + 40) = *(v18 + 16);
        *(v15 + 80) = 0;
        *(v15 + 64) = safeh_GetNullHandle();
        *(v15 + 72) = v19;
        if ((objc_GetObject(*(v28 + 48), "PHONMAP", &v24) & 0x80000000) == 0)
        {
          v20 = v24;
          *(v15 + 80) = *(v24 + 8);
          *(v15 + 64) = *(v20 + 16);
        }

        *v15 = v28;
        *(v15 + 88) = 0;
        *(v15 + 296) = a3;
        *(v15 + 304) = a4;
        Object = hlp_VoiceSetup_0(v15);
        if ((Object & 0x80000000) != 0)
        {
LABEL_13:
          v5 = Object;
        }

        else
        {
          v5 = globalbeadapt_SetFEBOOLKeyword(v15, "feGlobalmergemorphemes", (v15 + 280), 1);
          if ((v5 & 0x80000000) == 0)
          {
            v21 = 503;
LABEL_16:
            *a5 = v15;
            *(a5 + 8) = v21;
            return v5;
          }
        }
      }

      else
      {
        log_OutPublic(*(v28 + 32), "BE_ADAPT", 64000, 0, v11, v12, v13, v14, v23);
        v5 = 2410684426;
      }

      be_adapt_ObjClose(*a5, *(a5 + 8));
      v15 = 0;
      v21 = 0;
      goto LABEL_16;
    }

    return inited;
  }

  return v5;
}

uint64_t hlp_VoiceSetup_0(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  v88 = 0;
  __s1 = 0;
  v86 = 0;
  *(a1 + 636) = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "voicelexicontraining", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
  {
    *(a1 + 636) = 1;
  }

  *(a1 + 264) = 0;
  if ((paramc_ParamGetUInt(*(*a1 + 40), "prmigexists", &v88) & 0x80000000) == 0 && v88 == 1)
  {
    *(a1 + 264) = 1;
  }

  *(a1 + 248) = 0;
  __c_1 = 0;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "usetntag", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_142;
  }

  if (__c_1 == 1 && __c_3 && **__c_3 == 49)
  {
    *(a1 + 248) = 1;
  }

  *(a1 + 252) = 0;
  __c_1 = 0;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "docclassmap", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_142;
  }

  if (__c_1 == 1 && __c_3 && __PAIR64__((*__c_3)[1], **__c_3) == 0x6500000079 && (*__c_3)[2] == 115)
  {
    *(a1 + 252) = 1;
  }

  inited = com_depes_InitLayers(*a1, a1 + 96);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_142;
  }

  *(a1 + 224) = 0x3000200010000;
  *(a1 + 232) = 4;
  if (*(a1 + 264))
  {
    v3 = 8;
    v4 = 7;
    v5 = 6;
    v6 = 5;
  }

  else
  {
    v6 = 0;
    v3 = 7;
    v4 = 6;
    v5 = 5;
  }

  *(a1 + 234) = v6;
  *(a1 + 238) = v5;
  *(a1 + 240) = v4;
  v7 = v3 - (*(a1 + 248) == 0);
  *(a1 + 236) = v7;
  *(a1 + 106) = v7 + 1;
  inited = globalbeadapt_Init_SpecialSymbolsFromPhonmap(a1);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_142;
  }

  v8 = (*(*(a1 + 32) + 72))(*(a1 + 16), *(a1 + 24), "pre_be_adapt");
  v9 = 1;
  if (!v8)
  {
    v9 = (*(*(a1 + 32) + 72))(*(a1 + 16), *(a1 + 24), "post_be_adapt") != 0;
  }

  *(a1 + 320) = v9;
  *(a1 + 312) = 1;
  inited = (*(*(a1 + 56) + 72))(*(a1 + 40), *(a1 + 48), "adaptlex", a1 + 312);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_142;
  }

  *(a1 + 480) = 1;
  *(a1 + 316) = 1;
  inited = (*(*(a1 + 56) + 72))(*(a1 + 40), *(a1 + 48), "adaptlexmw", a1 + 316);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_142;
  }

  *(a1 + 632) = 513;
  v10 = (*(*(a1 + 56) + 72))(*(a1 + 40), *(a1 + 48), "adaptcfg", &v86);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_143;
  }

  *(a1 + 640) = 0u;
  if (v86)
  {
    __c_1 = 2;
    inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "loo", &__c_3, &__c_1, &__c);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_142;
    }

    if (__c_1 == 1)
    {
      v11 = *__c_3;
      v12 = strchr(*__c_3, __c);
      if (v12)
      {
        *v12 = 0;
        v11 = *__c_3;
      }

      v13 = strlen(v11);
      v14 = heap_Alloc(*(*a1 + 8), v13 + 1);
      *(a1 + 640) = v14;
      if (!v14)
      {
        goto LABEL_144;
      }

      strcpy(v14, *__c_3);
    }

    __c_1 = 2;
    v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "loodiff", &__c_3, &__c_1, &__c);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_143;
    }

    if (__c_1 == 1)
    {
      v19 = *__c_3;
      v20 = strchr(*__c_3, __c);
      if (v20)
      {
        *v20 = 0;
        v19 = *__c_3;
      }

      v21 = strlen(v19);
      v22 = heap_Alloc(*(*a1 + 8), v21 + 1);
      *(a1 + 648) = v22;
      if (!v22)
      {
        goto LABEL_144;
      }

      strcpy(v22, *__c_3);
    }
  }

  if (*(a1 + 312))
  {
    __c_1 = 2;
    inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "nrdctpart", &__c_3, &__c_1, &__c);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_142;
    }

    if (__c_1 == 1)
    {
      v23 = *__c_3;
      v24 = strchr(*__c_3, __c);
      if (v24)
      {
        *v24 = 0;
        v23 = *__c_3;
      }

      *(a1 + 480) = atoi(v23);
    }

    __c_1 = 2;
    v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "fn", &__c_3, &__c_1, &__c);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_143;
    }

    if (__c_1 == 1)
    {
      v25 = *__c_3;
      v26 = strchr(*__c_3, 59);
      if (v26)
      {
        v27 = v26;
        do
        {
          *v27 = 0;
          v28 = *(a1 + 324);
          *(a1 + 324) = v28 + 1;
          strcpy((a1 + 325 + 10 * v28), v25);
          v25 = v27 + 1;
          v27 = strchr(v27 + 1, 59);
        }

        while (v27);
      }

      v29 = *(a1 + 324);
      *(a1 + 324) = v29 + 1;
      strcpy((a1 + 325 + 10 * v29), v25);
      __c_1 = 2;
      v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "ft", &__c_3, &__c_1, &__c);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_143;
      }

      if (__c_1 == 1)
      {
        v30 = *__c_3;
        v31 = strchr(*__c_3, 59);
        *(a1 + 324) = 0;
        if (v31)
        {
          v32 = v31;
          while (1)
          {
            *v32 = 0;
            if (!strcmp(v30, "NLU"))
            {
              break;
            }

            if (!strcmp(v30, "PRM"))
            {
              v33 = 1;
              goto LABEL_65;
            }

            if (!strcmp(v30, "BND"))
            {
              v33 = 2;
              goto LABEL_65;
            }

            if (!strcmp(v30, "LNG"))
            {
              v33 = 3;
LABEL_65:
              v34 = *(a1 + 324);
              *(a1 + 324) = v34 + 1;
              *(a1 + 428 + 4 * v34) = v33;
            }

            v30 = v32 + 1;
            v32 = strchr(v32 + 1, 59);
            if (!v32)
            {
              goto LABEL_67;
            }
          }

          v33 = 0;
          goto LABEL_65;
        }

LABEL_67:
        if (!strcmp(v30, "NLU"))
        {
          v36 = *(a1 + 324);
          v39 = a1 + 4 * v36;
          LOBYTE(v36) = v36 + 1;
          *(a1 + 324) = v36;
          *(v39 + 428) = 0;
        }

        else
        {
          if (!strcmp(v30, "PRM"))
          {
            v36 = *(a1 + 324);
            v37 = a1 + 4 * v36;
            LOBYTE(v36) = v36 + 1;
            *(a1 + 324) = v36;
            v38 = 1;
            goto LABEL_76;
          }

          if (!strcmp(v30, "BND"))
          {
            v36 = *(a1 + 324);
            v37 = a1 + 4 * v36;
            LOBYTE(v36) = v36 + 1;
            *(a1 + 324) = v36;
            v38 = 2;
            goto LABEL_76;
          }

          v35 = strcmp(v30, "LNG");
          v36 = *(a1 + 324);
          if (!v35)
          {
            v37 = a1 + 4 * v36;
            LOBYTE(v36) = v36 + 1;
            *(a1 + 324) = v36;
            v38 = 3;
LABEL_76:
            *(v37 + 428) = v38;
          }
        }
      }

      else
      {
        LOBYTE(v36) = *(a1 + 324);
      }

      v40 = heap_Calloc(*(*a1 + 8), 1, 8 * v36);
      *(a1 + 472) = v40;
      if (!v40)
      {
LABEL_144:
        v10 = 2410684426;
        log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0, v15, v16, v17, v18, v79);
        goto LABEL_143;
      }

      if (*(a1 + 324))
      {
        v41 = 0;
        v42 = xmmword_1F42D6610;
        v43 = *off_1F42D6620;
        v44 = off_1F42D6630;
        v79 = *off_1F42D6620;
        v81 = xmmword_1F42D6610;
        do
        {
          v45 = *(*a1 + 8);
          v46 = (*(a1 + 472) + 8 * v41);
          v83 = v42;
          v84 = v43;
          v85 = v44;
          inited = ssftmap_ObjOpen(v45, 0, &v83, v46);
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_142;
          }

          __c_1 = 2;
          LH_itoa(1u, v92, 0xAu);
          __strcat_chk();
          v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", v92, &__c_3, &__c_1, &__c);
          if ((v10 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          if (__c_1)
          {
            v47 = 1;
            do
            {
              v48 = strchr(*__c_3, 59);
              if (v48)
              {
                *v48 = 0;
                inited = ssftmap_Insert(*(*(a1 + 472) + 8 * v41), *__c_3, (v48 + 1));
                if ((inited & 0x80000000) != 0)
                {
                  goto LABEL_142;
                }
              }

              __c_1 = 2;
              LH_itoa(++v47, v92, 0xAu);
              __strcat_chk();
              v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", v92, &__c_3, &__c_1, &__c);
              if ((v10 & 0x80000000) != 0)
              {
                goto LABEL_143;
              }
            }

            while (__c_1);
          }

          ++v41;
          v43 = v79;
          v42 = v81;
        }

        while (v41 < *(a1 + 324));
      }
    }
  }

  if (!*(a1 + 316))
  {
    goto LABEL_143;
  }

  __c_1 = 2;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "nrdctpart", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_142;
  }

  if (__c_1 == 1)
  {
    v49 = *__c_3;
    v50 = strchr(*__c_3, __c);
    if (v50)
    {
      *v50 = 0;
      v49 = *__c_3;
    }

    *(a1 + 632) = atoi(v49);
  }

  __c_1 = 2;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "maxnrword", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
LABEL_142:
    v10 = inited;
    goto LABEL_143;
  }

  if (__c_1 == 1)
  {
    v51 = *__c_3;
    v52 = strchr(*__c_3, __c);
    if (v52)
    {
      *v52 = 0;
      v51 = *__c_3;
    }

    *(a1 + 633) = atoi(v51);
  }

  __c_1 = 2;
  v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "fn", &__c_3, &__c_1, &__c);
  if ((v10 & 0x80000000) != 0 || __c_1 != 1)
  {
    goto LABEL_143;
  }

  v53 = *__c_3;
  v54 = strchr(*__c_3, 59);
  if (v54)
  {
    v55 = v54;
    do
    {
      *v55 = 0;
      v56 = *(a1 + 481);
      *(a1 + 481) = v56 + 1;
      strcpy((a1 + 482 + 10 * v56), v53);
      v53 = v55 + 1;
      v55 = strchr(v55 + 1, 59);
    }

    while (v55);
  }

  v57 = *(a1 + 481);
  *(a1 + 481) = v57 + 1;
  strcpy((a1 + 482 + 10 * v57), v53);
  __c_1 = 2;
  v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "ft", &__c_3, &__c_1, &__c);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_143;
  }

  if (__c_1 == 1)
  {
    v58 = *__c_3;
    v59 = strchr(*__c_3, 59);
    *(a1 + 481) = 0;
    if (v59)
    {
      v60 = v59;
      while (1)
      {
        *v60 = 0;
        if (!strcmp(v58, "NLU"))
        {
          break;
        }

        if (!strcmp(v58, "PRM"))
        {
          v61 = 1;
          goto LABEL_117;
        }

        if (!strcmp(v58, "BND"))
        {
          v61 = 2;
          goto LABEL_117;
        }

        if (!strcmp(v58, "LNG"))
        {
          v61 = 3;
LABEL_117:
          v62 = *(a1 + 481);
          *(a1 + 481) = v62 + 1;
          *(a1 + 584 + 4 * v62) = v61;
        }

        v58 = v60 + 1;
        v60 = strchr(v60 + 1, 59);
        if (!v60)
        {
          goto LABEL_119;
        }
      }

      v61 = 0;
      goto LABEL_117;
    }

LABEL_119:
    if (!strcmp(v58, "NLU"))
    {
      v64 = *(a1 + 481);
      v67 = a1 + 4 * v64;
      LOBYTE(v64) = v64 + 1;
      *(a1 + 481) = v64;
      *(v67 + 584) = 0;
    }

    else
    {
      if (!strcmp(v58, "PRM"))
      {
        v64 = *(a1 + 481);
        v65 = a1 + 4 * v64;
        LOBYTE(v64) = v64 + 1;
        *(a1 + 481) = v64;
        v66 = 1;
      }

      else if (!strcmp(v58, "BND"))
      {
        v64 = *(a1 + 481);
        v65 = a1 + 4 * v64;
        LOBYTE(v64) = v64 + 1;
        *(a1 + 481) = v64;
        v66 = 2;
      }

      else
      {
        v63 = strcmp(v58, "LNG");
        v64 = *(a1 + 481);
        if (v63)
        {
          goto LABEL_129;
        }

        v65 = a1 + 4 * v64;
        LOBYTE(v64) = v64 + 1;
        *(a1 + 481) = v64;
        v66 = 3;
      }

      *(v65 + 584) = v66;
    }
  }

  else
  {
    LOBYTE(v64) = *(a1 + 481);
  }

LABEL_129:
  v68 = heap_Calloc(*(*a1 + 8), 1, 8 * v64);
  *(a1 + 624) = v68;
  if (!v68)
  {
    goto LABEL_144;
  }

  if (*(a1 + 481))
  {
    v69 = 0;
    v70 = xmmword_1F42D6610;
    v71 = *off_1F42D6620;
    v72 = off_1F42D6630;
    v80 = *off_1F42D6620;
    v82 = xmmword_1F42D6610;
    do
    {
      v73 = *(*a1 + 8);
      v74 = (*(a1 + 624) + 8 * v69);
      v83 = v70;
      v84 = v71;
      v85 = v72;
      inited = ssftmap_ObjOpen(v73, 0, &v83, v74);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_142;
      }

      __c_1 = 2;
      LH_itoa(1u, v92, 0xAu);
      __strcat_chk();
      v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", v92, &__c_3, &__c_1, &__c);
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }

      if (__c_1)
      {
        v75 = 1;
        do
        {
          v76 = strchr(*__c_3, 59);
          if (v76)
          {
            *v76 = 0;
            inited = ssftmap_Insert(*(*(a1 + 624) + 8 * v69), *__c_3, (v76 + 1));
            if ((inited & 0x80000000) != 0)
            {
              goto LABEL_142;
            }
          }

          __c_1 = 2;
          LH_itoa(++v75, v92, 0xAu);
          __strcat_chk();
          v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", v92, &__c_3, &__c_1, &__c);
          if ((v10 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }
        }

        while (__c_1);
      }

      ++v69;
      v71 = v80;
      v70 = v82;
    }

    while (v69 < *(a1 + 481));
  }

LABEL_143:
  v77 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t be_adapt_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 503, 656);
  if ((result & 0x80000000) != 0)
  {
    return 2410684424;
  }

  if (a1)
  {
    globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(a1);
    if (a1[1])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[4])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    if (a1[10])
    {
      objc_ReleaseObject(*(*a1 + 48), "PHONMAP");
    }

    FreeFeatureMaps(a1);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t be_adapt_ObjReopen(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 503, 656);
  if ((result & 0x80000000) != 0)
  {
    return 2410684424;
  }

  if (a1)
  {
    FreeFeatureMaps(a1);

    return hlp_VoiceSetup_0(a1);
  }

  return result;
}

void *FreeFeatureMaps(void *result)
{
  v1 = result;
  v2 = result[59];
  if (v2)
  {
    v3 = *(result + 324);
    if (*(result + 324))
    {
      v4 = 0;
      do
      {
        v5 = v1[59];
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          ssftmap_ObjClose(v6);
          v5 = v1[59];
          v3 = *(v1 + 324);
        }

        *(v5 + 8 * v4++) = 0;
      }

      while (v4 < v3);
      v2 = v1[59];
    }

    result = heap_Free(*(*v1 + 8), v2);
    *(v1 + 324) = 0;
    v1[59] = 0;
  }

  v7 = v1[78];
  if (v7)
  {
    v8 = *(v1 + 481);
    if (*(v1 + 481))
    {
      v9 = 0;
      do
      {
        v10 = v1[78];
        v11 = *(v10 + 8 * v9);
        if (v11)
        {
          ssftmap_ObjClose(v11);
          v10 = v1[78];
          v8 = *(v1 + 481);
        }

        *(v10 + 8 * v9++) = 0;
      }

      while (v9 < v8);
      v7 = v1[78];
    }

    result = heap_Free(*(*v1 + 8), v7);
    *(v1 + 481) = 0;
    v1[78] = 0;
  }

  v12 = v1[80];
  if (v12)
  {
    result = heap_Free(*(*v1 + 8), v12);
    v1[80] = 0;
  }

  v13 = v1[81];
  if (v13)
  {
    result = heap_Free(*(*v1 + 8), v13);
    v1[81] = 0;
  }

  return result;
}

uint64_t be_adapt_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 503, 656);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2410684424;
  }
}

uint64_t be_adapt_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v42 = 2;
  if ((safeh_HandleCheck(a1, a2, 503, 656) & 0x80000000) != 0)
  {
    updated = 2410684424;
  }

  else
  {
    v51 = 0;
    v50 = 0;
    v49 = 0;
    v48 = 0;
    v47 = 0;
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v41 = 0;
    *a5 = 1;
    v9 = (*(*(a1 + 32) + 144))(*(a1 + 16), *(a1 + 24), a1 + 104);
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_101;
    }

    updated = (*(*(a1 + 8) + 104))(a3, a4, 1, 0, &v50 + 2);
    if ((updated & 0x80000000) == 0 && ((*(*(a1 + 8) + 184))(a3, a4, HIWORD(v50), 0, &v46) & 0x80000000) == 0 && v46 == 1)
    {
      updated = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v50), 0, &v51, &v50);
      if ((updated & 0x80000000) == 0 && v50 >= 2u)
      {
        updated = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v50), 2, 1, "", &v49);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_102;
        }

        if (!*(a1 + 312) && !*(a1 + 320))
        {
LABEL_27:
          if (*(a1 + 640) && *(a1 + 648) && *(a1 + 80))
          {
            hlp_DifferentiatorLOO(a1, a3, a4, HIWORD(v50));
          }

          goto LABEL_102;
        }

        *(a1 + 268) = 0;
        strcpy(v61, "pre_be_adapt");
        v9 = globalbeadapt_SetupDepesInput(a1, a3, a4, HIWORD(v50), v61, 1, v11, v12);
        if ((v9 & 0x80000000) == 0)
        {
          if (((*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v61) & 0x80000000) != 0 || (v9 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, &v48, &v47), (v9 & 0x80000000) == 0) && (v48[v47] = 0, v9 = globalbeadapt_DoPostprocessing(a1, v51, &v48, 0), (v9 & 0x80000000) == 0) && (v9 = (*(*(a1 + 8) + 320))(a3, a4, 0), (v9 & 0x80000000) == 0) && (log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "%s O1: %s", v13, v14, v15, v61), v9 = globalbeadapt_OutputToLingDB(a1, a3, a4, HIWORD(v50), v51, v48), (v9 & 0x80000000) == 0))
          {
            com_depes_FreeLayers(*a1, a1 + 96);
            if (*(a1 + 312) && !*(a1 + 636))
            {
              v9 = (*(*(a1 + 8) + 104))(a3, a4, 2, HIWORD(v50), &v45);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_101;
              }

              while (v45)
              {
                updated = (*(*(a1 + 8) + 168))(a3, a4);
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_102;
                }

                if (v44 <= 0xA && ((1 << v44) & 0x610) != 0)
                {
                  v40 = 0;
                  v22 = *(a1 + 633);
                  if (*(a1 + 633))
                  {
                    while (1)
                    {
                      v23 = v45;
                      v55 = v45;
                      v54 = 0;
                      v52 = 0;
                      v53 = 0;
                      v9 = (*(*(a1 + 8) + 168))(a3, a4, v45, 1, 1, &v54, &v53);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_101;
                      }

                      updated = (*(*(a1 + 8) + 168))(a3, a4, v23, 2, 1, &v53 + 2, &v53);
                      if ((updated & 0x80000000) != 0)
                      {
                        goto LABEL_102;
                      }

                      if (HIWORD(v53) - v54 < 256)
                      {
                        __strncpy_chk();
                        v28 = HIWORD(v53);
                        v29 = v54;
                        __s[HIWORD(v53) - v54] = 0;
                        v9 = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), "normal", __s, (v28 - v29));
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_101;
                        }

                        v27 = 1;
                        if (v22 >= 2u && v23)
                        {
                          v30 = v23;
                          while (1)
                          {
                            v9 = (*(*(a1 + 8) + 120))(a3, a4, v30, &v55);
                            if ((v9 & 0x80000000) != 0)
                            {
                              goto LABEL_101;
                            }

                            if (v55)
                            {
                              v9 = (*(*(a1 + 8) + 168))(a3, a4);
                              if ((v9 & 0x80000000) != 0)
                              {
                                goto LABEL_101;
                              }

                              if (v52 - 11 < 5)
                              {
                                break;
                              }

                              if (v52 <= 0xA && ((1 << v52) & 0x610) != 0)
                              {
                                v9 = (*(*(a1 + 8) + 168))(a3, a4, v55, 1, 1, &v54, &v53);
                                if ((v9 & 0x80000000) != 0)
                                {
                                  goto LABEL_101;
                                }

                                v9 = (*(*(a1 + 8) + 168))(a3, a4, v55, 2, 1, &v53 + 2, &v53);
                                if ((v9 & 0x80000000) != 0)
                                {
                                  goto LABEL_101;
                                }

                                if (strlen(__s) + HIWORD(v53) - v54 - 255 < 0xFFFFFFFFFFFFFF00)
                                {
                                  break;
                                }

                                __strncpy_chk();
                                v31 = HIWORD(v53);
                                v32 = v54;
                                v62[HIWORD(v53) - v54] = 0;
                                v9 = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), "normal", v62, (v31 - v32));
                                if ((v9 & 0x80000000) != 0)
                                {
                                  goto LABEL_101;
                                }

                                __strcat_chk();
                                __strcat_chk();
                                ++v27;
                              }
                            }

                            if (v27 < v22)
                            {
                              v30 = v55;
                              if (v55)
                              {
                                continue;
                              }
                            }

                            break;
                          }
                        }

                        v59 = v23;
                        v58 = 0;
                        v57 = 0;
                        v56 = 0;
                        updated = (*(*(a1 + 8) + 176))(a3, a4, v23, 3, &v57, &v58);
                        if ((updated & 0x80000000) != 0)
                        {
                          goto LABEL_102;
                        }

                        v33 = strlen(__s);
                        if (v33 + strlen(v57) - 255 >= 0xFFFFFFFFFFFFFF00)
                        {
                          __strcat_chk();
                          __strcat_chk();
                          if (v23 && v27 >= 2u)
                          {
                            v35 = 1;
                            while (1)
                            {
                              updated = (*(*(a1 + 8) + 120))(a3, a4, v23, &v59);
                              if ((updated & 0x80000000) != 0)
                              {
                                goto LABEL_102;
                              }

                              if (v59)
                              {
                                updated = (*(*(a1 + 8) + 168))(a3, a4);
                                if ((updated & 0x80000000) != 0)
                                {
                                  goto LABEL_102;
                                }

                                if (v56 <= 0xA && ((1 << v56) & 0x610) != 0)
                                {
                                  updated = (*(*(a1 + 8) + 176))(a3, a4, v59, 3, &v57, &v58);
                                  if ((updated & 0x80000000) != 0)
                                  {
                                    goto LABEL_102;
                                  }

                                  v37 = strlen(__s);
                                  if (v37 + strlen(v57) - 255 < 0xFFFFFFFFFFFFFF00)
                                  {
                                    goto LABEL_63;
                                  }

                                  ++v35;
                                  __strcat_chk();
                                  __strcat_chk();
                                }
                              }

                              if (v35 < v27)
                              {
                                LOWORD(v23) = v59;
                                if (v59)
                                {
                                  continue;
                                }
                              }

                              break;
                            }
                          }
                        }

                        else
                        {
LABEL_63:
                          __s[0] = 0;
                        }
                      }

                      else
                      {
                        __s[0] = 0;
                        v27 = v22;
                      }

                      log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "voice lexicon key= %s", v24, v25, v26, __s);
                      v34 = 0;
                      if (v27 == 1 && __s[0])
                      {
                        v42 = 2;
                        updated = (*(*(a1 + 56) + 152))(*(a1 + 40), *(a1 + 48), "adaptlex", __s, &v43, &v42, &v41, *(a1 + 480));
                        if ((updated & 0x80000000) != 0)
                        {
                          goto LABEL_102;
                        }

                        if (v42 == 1)
                        {
                          v40 = 1;
                          updated = hlp_UpdateLdb(a1, a3, a4, &v45, *v43, 1u, 0, &v40, v51);
                          if ((updated & 0x80000000) != 0)
                          {
                            goto LABEL_102;
                          }

                          v34 = v40;
                        }

                        else
                        {
                          v34 = 0;
                        }
                      }

                      if (__s[0])
                      {
                        if (!v34)
                        {
                          v34 = *(a1 + 316);
                          if (v34)
                          {
                            v42 = 2;
                            updated = (*(*(a1 + 56) + 152))(*(a1 + 40), *(a1 + 48), "adaptlexmw", __s, &v43, &v42, &v41, *(a1 + 632));
                            if ((updated & 0x80000000) != 0)
                            {
                              goto LABEL_102;
                            }

                            if (v42 == 1)
                            {
                              v40 = 1;
                              updated = hlp_UpdateLdb(a1, a3, a4, &v45, *v43, v27, 1, &v40, v51);
                              if ((updated & 0x80000000) != 0)
                              {
                                goto LABEL_102;
                              }

                              v34 = v40;
                            }

                            else
                            {
                              v34 = 0;
                            }
                          }
                        }
                      }

                      v22 = v27 - 1;
                      if (v27 == 1 || v34)
                      {
                        break;
                      }
                    }
                  }
                }

                if (v45)
                {
                  updated = (*(*(a1 + 8) + 120))(a3, a4);
                }

                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_102;
                }
              }
            }

            strcpy(v61, "post_be_adapt");
            v9 = globalbeadapt_SetupDepesInput(a1, a3, a4, HIWORD(v50), v61, 0, v16, v17);
            if ((v9 & 0x80000000) == 0)
            {
              if (!*(a1 + 636))
              {
                (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v61);
              }

              v9 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, &v48, &v47);
              if ((v9 & 0x80000000) == 0)
              {
                v48[v47] = 0;
                log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "%s O1: %s", v18, v19, v20, v61);
                v9 = globalbeadapt_DoPostprocessing(a1, v51, &v48, 1);
                if ((v9 & 0x80000000) == 0)
                {
                  v9 = (*(*(a1 + 8) + 320))(a3, a4, 1);
                  if ((v9 & 0x80000000) == 0)
                  {
                    v9 = globalbeadapt_OutputToLingDB(a1, a3, a4, HIWORD(v50), v51, v48);
                    if ((v9 & 0x80000000) == 0)
                    {
                      updated = (*(*(a1 + 8) + 272))(a3, a4, 4, 1, 0, 0);
                      if ((updated & 0x80000000) == 0)
                      {
                        goto LABEL_27;
                      }

LABEL_102:
                      com_depes_FreeLayers(*a1, a1 + 96);
                      goto LABEL_103;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_101:
        updated = v9;
        goto LABEL_102;
      }
    }
  }

LABEL_103:
  v38 = *MEMORY[0x1E69E9840];
  return updated;
}

uint64_t hlp_UpdateLdb(void *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, char *a5, unsigned int a6, int a7, _DWORD *a8, uint64_t a9)
{
  v97 = *MEMORY[0x1E69E9840];
  v93 = 0;
  __s1 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v87 = 0;
  ReadOnly = (*(a1[1] + 176))(a2, a3, *a4, 3, &v89, &v93);
  if ((ReadOnly & 0x80000000) != 0)
  {
    goto LABEL_175;
  }

  v79 = a8;
  v81 = a6;
  v18 = 481;
  if (!a7)
  {
    v18 = 324;
  }

  v19 = 78;
  if (!a7)
  {
    v19 = 59;
  }

  v20 = a1[v19];
  v21 = *(a1 + v18);
  v94[0] = 0;
  v94[1] = 0;
  v95 = 0;
  strcpy(__s, "|");
  if (v21)
  {
    v22 = 0;
    v23 = 584;
    if (!a7)
    {
      v23 = 428;
    }

    v24 = a1 + v23;
    do
    {
      if (v22)
      {
        __strcat_chk();
        *(v94 + v22) = strlen(__s);
      }

      v25 = *&v24[4 * v22];
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v85 = 0;
          v84 = 0;
          v83 = 3;
          i = (*(a1[1] + 168))(a2, a3, *a4, 1, 1, &v84 + 2, &v93);
          if ((i & 0x80000000) != 0)
          {
            goto LABEL_174;
          }

          LOWORD(v84) = *a4;
          for (i = (*(a1[1] + 120))(a2, a3); ; i = (*(a1[1] + 120))(a2, a3))
          {
            if ((i & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            if (!v84 || v85 > HIWORD(v84))
            {
              break;
            }

            i = (*(a1[1] + 168))(a2, a3);
            if ((i & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            i = (*(a1[1] + 168))(a2, a3, v84, 1, 1, &v85, &v93);
            if ((i & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            if (v87 == 15)
            {
              i = (*(a1[1] + 168))(a2, a3, v84, 7, 1, &v83, &v93);
              if ((i & 0x80000000) != 0)
              {
                goto LABEL_174;
              }
            }
          }

          if (v84)
          {
            v28 = v83;
          }

          else
          {
            v28 = 0;
            v83 = 0;
          }

          LH_itoa(v28, &v86, 0xAu);
          ReadOnly = ssftmap_FindReadOnly(*(v20 + 8 * v22), &v86, &v90);
          goto LABEL_21;
        }

        if (v25 == 3)
        {
          i = (*(a1[1] + 176))(a2, a3, *a4, 9, &v92, &v93);
LABEL_19:
          if ((i & 0x80000000) != 0)
          {
            goto LABEL_174;
          }

          ReadOnly = ssftmap_FindReadOnly(*(v20 + 8 * v22), v92, &v90);
LABEL_21:
          __strcat_chk();
        }
      }

      else
      {
        if (!v25)
        {
          ReadOnly = (*(a1[1] + 176))(a2, a3, *a4, 14, &__s1, &v93);
          if ((ReadOnly & 0x80000000) != 0)
          {
            goto LABEL_175;
          }

          if ((ssftmap_IteratorOpen(*(v20 + 8 * v22), 0, 0, &v88) & 0x80000000) == 0)
          {
            while ((ssftmap_IteratorNext(v88, &v92, &v90) & 0x80000000) == 0)
            {
              if (strstr(__s1, v92))
              {
                __strcat_chk();
              }
            }

            ssftmap_IteratorClose(v88);
          }

          goto LABEL_29;
        }

        if (v25 == 1)
        {
          i = (*(a1[1] + 176))(a2, a3, *a4, 13, &v92, &v93);
          goto LABEL_19;
        }
      }

LABEL_29:
      ++v22;
    }

    while (v22 != v21);
  }

  __strcat_chk();
  v29 = strstr(a5, __s);
  if (!v29 && v21)
  {
    v30 = v21 - 1;
    v31 = v21 - 1;
    do
    {
      __s[*(v94 + v30)] = 0;
      v29 = strstr(a5, __s);
      if (v29)
      {
        break;
      }

      --v30;
    }

    while (v31--);
  }

  if (!v29)
  {
    v29 = a5;
  }

  v33 = strchr(v29, 59);
  if (v33)
  {
    v34 = v33 + 1;
    v35 = strchr(v33 + 1, 124);
    if (v35)
    {
      *v35 = 0;
      v89 = v34;
      log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "adapted transcription= %s", v36, v37, v38, v34);
    }
  }

  v39 = v89;
  v40 = *v89 != 0;
  v41 = 1;
  while (v89[v40] == 95)
  {
    ++v41;
LABEL_62:
    ++v40;
  }

  if (v89[v40])
  {
    goto LABEL_62;
  }

  if (v81 != 1)
  {
    if (v41 != 1)
    {
      if (v81 == v41)
      {
        v55 = strchr(v89, 95);
        v56 = v55;
        if (v55)
        {
          *v55 = 0;
          v39 = v89;
        }

        ReadOnly = hlp_AdjustWordRecord(a1, a2, a3, *a4, v39);
        if ((ReadOnly & 0x80000000) == 0)
        {
          if (v81)
          {
            v57 = *a4;
            if (*a4)
            {
              if (v56)
              {
                v58 = 1;
                while (1)
                {
                  ReadOnly = (*(a1[1] + 120))(a2, a3, v57, a4);
                  if ((ReadOnly & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (*a4)
                  {
                    ReadOnly = (*(a1[1] + 168))(a2, a3);
                    if ((ReadOnly & 0x80000000) != 0)
                    {
                      goto LABEL_175;
                    }

                    if (v87 <= 0xA && ((1 << v87) & 0x610) != 0)
                    {
                      v60 = v56 + 1;
                      v89 = v56 + 1;
                      v61 = strchr(v56 + 1, 95);
                      v56 = v61;
                      if (v61)
                      {
                        *v61 = 0;
                        v60 = v89;
                      }

                      ReadOnly = hlp_AdjustWordRecord(a1, a2, a3, *a4, v60);
                      if ((ReadOnly & 0x80000000) != 0)
                      {
                        goto LABEL_175;
                      }

                      ++v58;
                    }
                  }

                  if (v81 > v58)
                  {
                    v57 = *a4;
                    if (*a4)
                    {
                      if (v56)
                      {
                        continue;
                      }
                    }
                  }

                  goto LABEL_175;
                }
              }
            }
          }
        }
      }

      else
      {
        *v79 = 0;
      }

      goto LABEL_175;
    }

    v43 = *a4;
    ReadOnly = (*(a1[1] + 176))(a2, a3, v43, 14, &__s1, &v93);
    if ((ReadOnly & 0x80000000) != 0)
    {
      goto LABEL_175;
    }

    v44 = __s1;
    if (!strstr(__s1, "E_") && !strstr(v44, "e_"))
    {
      if (v81)
      {
        v45 = 1;
        v46 = 1;
        while (*a4)
        {
          i = (*(a1[1] + 120))(a2, a3);
          if ((i & 0x80000000) != 0)
          {
            goto LABEL_174;
          }

          if (*a4)
          {
            i = (*(a1[1] + 168))(a2, a3);
            if ((i & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            if (v87 <= 0xA && ((1 << v87) & 0x610) != 0)
            {
              ReadOnly = (*(a1[1] + 176))(a2, a3, *a4, 14, &__s1, &v93);
              if ((ReadOnly & 0x80000000) != 0)
              {
                goto LABEL_175;
              }

              v47 = __s1;
              if (v81 - 1 != v45 && (strstr(__s1, "E_") || strstr(v47, "e_")) || strstr(v47, "S_") || strstr(v47, "s_") || strstr(v47, "B-"))
              {
                *a4 = v43;
                goto LABEL_155;
              }

              ++v46;
            }
          }

          v45 = v46;
          if (v46 >= v81)
          {
            break;
          }
        }
      }

      ReadOnly = hlp_AdjustWordRecord(a1, a2, a3, v43, v89);
      if ((ReadOnly & 0x80000000) == 0)
      {
        *a4 = v43;
        if (v81)
        {
          if (v43)
          {
            v48 = 1;
            v49 = v43;
            do
            {
              ReadOnly = (*(a1[1] + 120))(a2, a3, v49, a4);
              if ((ReadOnly & 0x80000000) != 0)
              {
                break;
              }

              if (*a4)
              {
                ReadOnly = (*(a1[1] + 168))(a2, a3);
                if ((ReadOnly & 0x80000000) != 0)
                {
                  goto LABEL_175;
                }

                if (v87 <= 0xA && ((1 << v87) & 0x610) != 0)
                {
                  ReadOnly = hlp_DeleteWordRecord(a1, a2, a3, a4, v43, a9);
                  if ((ReadOnly & 0x80000000) != 0)
                  {
                    goto LABEL_175;
                  }

                  ++v48;
                }
              }

              if (v81 <= v48)
              {
                break;
              }

              v49 = *a4;
            }

            while (*a4);
          }
        }
      }

      goto LABEL_175;
    }

    goto LABEL_155;
  }

  v42 = v41 - 1;
  if (v41 == 1)
  {
    i = hlp_AdjustWordRecord(a1, a2, a3, *a4, v89);
    goto LABEL_174;
  }

  v86 = 0;
  HIWORD(v84) = 0;
  v51 = *a4;
  i = (*(a1[1] + 168))(a2, a3, *a4, 1, 1, &v86, &v93);
  if ((i & 0x80000000) != 0)
  {
LABEL_174:
    ReadOnly = i;
    goto LABEL_175;
  }

  ReadOnly = (*(a1[1] + 168))(a2, a3, *a4, 2, 1, &v84 + 2, &v93);
  if ((ReadOnly & 0x80000000) == 0)
  {
    if (v86 >= HIWORD(v84))
    {
      v52 = 0;
    }

    else
    {
      v52 = 0;
      v53 = (a9 + v86);
      do
      {
        v54 = *v53++;
        if (v54 == 45)
        {
          ++v52;
        }
      }

      while (v53 < a9 + HIWORD(v84));
    }

    if (v42 == v52)
    {
      v62 = v89;
      v63 = strchr(v89, 95);
      v64 = v63;
      if (v63)
      {
        *v63 = 0;
        v62 = v89;
      }

      i = hlp_AdjustWordRecord(a1, a2, a3, *a4, v62);
      if ((i & 0x80000000) != 0)
      {
        goto LABEL_174;
      }

      v65 = v86;
      v66 = strchr((a9 + v86), 45);
      if (v66)
      {
        *v66 = 32;
        v82 = v66 - a9 + 1;
        v65 = v86;
      }

      else
      {
        v82 = 0;
      }

      v85 = v65;
      v67 = *a4;
      if (*a4)
      {
        v68 = *a4;
        do
        {
          v51 = v68;
          i = (*(a1[1] + 120))(a2, a3, v68, a4);
          if ((i & 0x80000000) != 0)
          {
            goto LABEL_174;
          }

          if (!*a4)
          {
            break;
          }

          i = (*(a1[1] + 168))(a2, a3);
          if ((i & 0x80000000) != 0)
          {
            goto LABEL_174;
          }

          v68 = *a4;
        }

        while (*a4 && v85 == v86);
      }

      i = (*(a1[1] + 80))(a2, a3, v51, a4);
      if ((i & 0x80000000) != 0)
      {
        goto LABEL_174;
      }

      i = hlp_CopyWordRec_0(a1, a2, a3, v67, *a4, v82);
      if ((i & 0x80000000) != 0)
      {
        goto LABEL_174;
      }

      if (v64)
      {
        v69 = v64 + 1;
        v89 = v69;
      }

      else
      {
        v69 = v89;
      }

      v70 = strchr(v69, 95);
      if (v70)
      {
        *v70 = 0;
        v69 = v89;
      }

      v80 = v70;
      ReadOnly = hlp_AdjustWordRecord(a1, a2, a3, *a4, v69);
      if ((ReadOnly & 0x80000000) == 0)
      {
        v71 = v82;
        v86 = v82;
        if (v52 >= 2u)
        {
          v72 = 1;
          while (1)
          {
            v73 = strchr((a9 + v71), 45);
            if (v73)
            {
              *v73 = 32;
              v71 = v73 - a9 + 1;
            }

            v74 = *a4;
            i = (*(a1[1] + 80))(a2, a3, v74, a4);
            if ((i & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            i = hlp_CopyWordRec_0(a1, a2, a3, v74, *a4, v71);
            if ((i & 0x80000000) != 0)
            {
              goto LABEL_174;
            }

            if (v80)
            {
              v75 = v80 + 1;
              v89 = v80 + 1;
            }

            else
            {
              v75 = v89;
            }

            v76 = strchr(v75, 95);
            if (v76)
            {
              *v76 = 0;
              v75 = v89;
            }

            v80 = v76;
            ReadOnly = hlp_AdjustWordRecord(a1, a2, a3, *a4, v75);
            if ((ReadOnly & 0x80000000) == 0)
            {
              v86 = v71;
              if (++v72 < v52)
              {
                continue;
              }
            }

            goto LABEL_175;
          }
        }
      }

      goto LABEL_175;
    }

LABEL_155:
    *v79 = 0;
  }

LABEL_175:
  v77 = *MEMORY[0x1E69E9840];
  return ReadOnly;
}

uint64_t hlp_DifferentiatorLOO(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v53 = *MEMORY[0x1E69E9840];
  v48 = 0;
  __s = 0;
  *__s2 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v50 = 0;
  memset(v52, 0, 512);
  while (1)
  {
    v9 = off_1E81AD208[v8];
    if ((objc_GetObject(*(*a1 + 48), v9, &v50) & 0x80000000) == 0)
    {
      break;
    }

    if (++v8 == 3)
    {
      v10 = 1;
      goto LABEL_9;
    }
  }

  v11 = v50;
  if (v50 && (NullHandle = safeh_GetNullHandle(), !safeh_HandlesEqual(v11[2], v11[3], NullHandle, v13)) && (v37 = v50[1]) != 0 && (v38 = *(v37 + 120)) != 0 && (v38(v50[2], v50[3], v52) & 0x80000000) == 0)
  {
    __strcpy_chk();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_ReleaseObject(*(*a1 + 48), v9);
LABEL_9:
  result = (*(a1[1] + 104))(a2, a3, 2, a4, &v43 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetUInt(*(*a1 + 40), "disableloodifferentiator", &v42);
    v15 = result >= 0 && v42 == 1;
    v16 = !v15;
    v17 = HIWORD(v43);
    if (HIWORD(v43))
    {
      v40 = v16;
      v41 = v10;
      v18 = 0;
      do
      {
        result = (*(a1[1] + 168))(a2, a3, v17, 0, 1, &v42 + 4, &v44 + 2);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (HIDWORD(v42) <= 0xA && ((1 << SBYTE4(v42)) & 0x610) != 0)
        {
          LOWORD(v43) = 0;
          result = (*(a1[1] + 184))(a2, a3, HIWORD(v43), 12, &v43);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v43 == 1)
          {
            result = (*(a1[1] + 176))(a2, a3, HIWORD(v43), 12, &__s, &v44 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v20 = a1[80];
            if (v20)
            {
              v21 = __s;
              v22 = a1[81];
              v23 = strlen(__s);
              do
              {
                v24 = *v22;
                if (!*v22)
                {
                  break;
                }

                if (!strncmp(v21, v20, v23))
                {
                  if ((v41 & 1) == 0 && !strchr(v51, v24))
                  {
                    break;
                  }

                  v46 = v24;
                  if (!v40)
                  {
                    goto LABEL_32;
                  }

                  result = (*(a1[1] + 176))(a2, a3, HIWORD(v43), 3, &v48, &v44 + 2);
                  if ((result & 0x80000000) == 0)
                  {
                    v26 = (2 * (strlen(v48) & 0x7FFF)) | 1;
                    v27 = heap_Realloc(*(*a1 + 8), v18, v26);
                    if (!v27)
                    {
                      result = log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0, v28, v29, v30, v31, v40);
                      goto LABEL_56;
                    }

                    v18 = v27;
                    bzero(v27, v26);
                    v45 = 0;
                    v32 = v48;
                    if (*v48)
                    {
                      v33 = 0;
                      v34 = 0;
                      v35 = 1;
                      do
                      {
                        __s2[0] = v32[v33];
                        strcat(v18, __s2);
                        if (__s2[0] == 92)
                        {
                          v35 = !v35;
                        }

                        else if (v35)
                        {
                          v35 = 1;
                          if (((*(a1[10] + 64))(a1[8], a1[9], 0, __s2, &v45, 0) & 0x80000000) == 0)
                          {
                            if (v45)
                            {
                              v35 = 1;
                              strncat(v18, &v46, 1uLL);
                            }
                          }
                        }

                        v33 = ++v34;
                        v32 = v48;
                      }

                      while (strlen(v48) > v34);
                    }

                    v36 = strlen(v18);
                    result = (*(a1[1] + 160))(a2, a3, HIWORD(v43), 3, (v36 + 1), v18, &v44);
                    if ((result & 0x80000000) == 0)
                    {
                      goto LABEL_32;
                    }
                  }

                  goto LABEL_56;
                }

                v25 = strchr(v20, 44);
                v20 = v25 + 1;
                ++v22;
              }

              while (v25);
            }

            v46 = 0;
          }
        }

LABEL_32:
        result = (*(a1[1] + 120))(a2, a3, HIWORD(v43), &v43 + 2);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v17 = HIWORD(v43);
      }

      while (HIWORD(v43));
LABEL_56:
      if (v18)
      {
        result = heap_Free(*(*a1 + 8), v18);
      }
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t be_adapt_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 503, 656);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2410684424;
  }
}

uint64_t be_adapt_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2410684417;
  }

  result = 0;
  *a2 = &IFeBeadapt;
  return result;
}

uint64_t hlp_AdjustWordRecord(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s)
{
  __sa = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v10 = !strchr(__s, 39) && !strchr(__s, 34);
  v18 = 0;
  v19 = 0;
  result = (*(a1[1] + 176))(a2, a3, a4, 3, &__sa, &v19 + 2);
  if ((result & 0x80000000) == 0)
  {
    v12 = __sa;
    v13 = strchr(__sa, 39) || strchr(v12, 34);
    result = (*(a1[1] + 176))(a2, a3, a4, 13, &v21, &v19 + 2);
    if ((result & 0x80000000) == 0)
    {
      if (v10 || v13 || *v21 != 48 || v21[1])
      {
        if (!v10 || *v21 == 48 && !v21[1])
        {
LABEL_20:
          v14 = strlen(__s);
          result = (*(a1[1] + 160))(a2, a3, a4, 3, (v14 + 1), __s, &v19);
          if ((result & 0x80000000) == 0)
          {
            result = (*(a1[1] + 168))(a2, a3, a4, 0, 1, &v18, &v19 + 2);
            if ((result & 0x80000000) == 0 && v18 == 10)
            {
              result = (*(a1[1] + 176))(a2, a3, a4, 9, &v17, &v19 + 2);
              if ((result & 0x80000000) == 0)
              {
                if (v17 && *v17 || (result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v16), (result & 0x80000000) == 0) && (!v16 || (v15 = strlen(v16), result = (*(a1[1] + 160))(a2, a3, a4, 9, (v15 + 1), v16, &v19), (result & 0x80000000) == 0)))
                {
                  v18 = 4;
                  return (*(a1[1] + 160))(a2, a3, a4, 0, 4, &v18, &v19);
                }
              }
            }
          }

          return result;
        }

        result = (*(a1[1] + 160))(a2, a3, a4, 13, 2, "0", &v19);
      }

      else
      {
        result = (*(a1[1] + 160))(a2, a3, a4, 13, 2, "1", &v19);
      }

      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t hlp_CopyWordRec_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v11 = 0;
  v12 = 0;
  v52 = a6;
  v51 = 0;
  v50 = 0;
  __s1 = 0;
  v48 = 0;
  do
  {
    v13 = (*(a1[1] + 184))(a2, a3, a4, v12, &v51);
    if ((v13 & 0x80000000) != 0)
    {
      break;
    }

    if (v51)
    {
      if (v12 <= 0x11u && ((1 << v12) & 0x20186) != 0)
      {
        v14 = (*(a1[1] + 168))(a2, a3, a4, v12, 1, &v50, &v48 + 2);
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_48;
        }

        v15 = *(a1[1] + 160);
        if (v12 == 1)
        {
          v16 = a2;
          v17 = a3;
          v18 = a5;
          v19 = 1;
LABEL_12:
          v20 = v15(v16, v17, v18, v19, 1, &v52, &v48);
          goto LABEL_13;
        }

        v13 = v15(a2, a3, a5, v12, 1, &v50, &v48);
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if (v12 == 2)
        {
          --v52;
          v15 = *(a1[1] + 160);
          v16 = a2;
          v17 = a3;
          v18 = a4;
          v19 = 2;
          goto LABEL_12;
        }
      }

      else
      {
        v14 = (*(a1[1] + 176))(a2, a3, a4);
        if ((v14 & 0x80000000) != 0)
        {
LABEL_48:
          v13 = v14;
          break;
        }

        if (v12 != 14)
        {
          v47 = *(a1[1] + 160);
          v45 = (strlen(__s1) + 1);
          v20 = v47(a2, a3, a5, v12, v45, __s1, &v48);
LABEL_13:
          v13 = v20;
          if ((v20 & 0x80000000) != 0)
          {
            break;
          }

          goto LABEL_14;
        }

        v22 = __s1;
        v23 = strstr(__s1, "e_");
        if (v23)
        {
          do
          {
            *v23 = 69;
            v23 = strstr(v23 + 1, "e_");
          }

          while (v23);
          v22 = __s1;
        }

        v24 = strstr(v22, "s_");
        if (v24)
        {
          do
          {
            *v24 = 83;
            v24 = strstr(v24 + 1, "s_");
          }

          while (v24);
          v22 = __s1;
        }

        v25 = a5;
        v26 = strlen(v22);
        v27 = heap_Alloc(*(*a1 + 8), (v26 + 1));
        if (!v27)
        {
          log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0, v28, v29, v30, v31, v47);
          return 2410684426;
        }

        v11 = v27;
        strcpy(v27, __s1);
        v32 = strstr(__s1, "E_");
        if (v32)
        {
          v33 = v32;
          do
          {
            *v33 = 83;
            v34 = strchr(v33, 59);
            if (v34)
            {
              v35 = v34;
              *v34 = 0;
              if (strstr(v11, v33))
              {
                v36 = strlen(v35 + 1);
                memmove(v33, v35 + 1, v36 + 1);
              }

              else
              {
                *v33 = 73;
                *v35 = 59;
              }
            }

            else if (strstr(v11, v33))
            {
              *v33 = 0;
            }

            else
            {
              *v33 = 73;
            }

            v33 = strstr(v33 + 1, "E_");
          }

          while (v33);
        }

        v37 = strstr(v11, "S_");
        if (v37)
        {
          v38 = v37;
          do
          {
            *v38 = 69;
            v39 = strchr(v38, 59);
            if (v39)
            {
              v40 = v39;
              *v39 = 0;
              v41 = v39 + 1;
              if (strstr(v39 + 1, v38))
              {
                v42 = strlen(v41);
                memmove(v38, v41, v42 + 1);
              }

              else
              {
                *v38 = 73;
                *v40 = 59;
              }
            }

            else
            {
              *v38 = 73;
            }

            v38 = strstr(v38 + 1, "S_");
          }

          while (v38);
        }

        for (i = strstr(v11, "PHR:B-"); i; i = strstr(i + 1, "PHR:B-"))
        {
          i[4] = 73;
        }

        v44 = strlen(v11);
        a5 = v25;
        v13 = (*(a1[1] + 160))(a2, a3, v25, 14, (v44 + 1), v11, &v48);
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }
      }
    }

LABEL_14:
    v21 = v12++;
  }

  while (v21 < 0x15);
  if (v11)
  {
    heap_Free(*(*a1 + 8), v11);
  }

  return v13;
}

uint64_t hlp_DeleteWordRecord(void *a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6)
{
  __s = 0;
  v38 = 0;
  v36 = 0;
  v35 = 0;
  v12 = (*(a1[1] + 168))(a2, a3, a5, 2, 1, &v35, &v36 + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  *(a6 + v35) = 45;
  v12 = (*(a1[1] + 168))(a2, a3, *a4, 2, 1, &v35, &v36 + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v12 = (*(a1[1] + 160))(a2, a3, a5, 2, 1, &v35, &v36);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v12 = (*(a1[1] + 176))(a2, a3, *a4, 14, &v38, &v36 + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = (*(a1[1] + 176))(a2, a3, a5, 14, &__s, &v36 + 2);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v38;
    if (v38)
    {
      v15 = 0;
      do
      {
        if ((*v14 | 0x20) == 0x65 && v14[1] == 95)
        {
          LODWORD(v16) = hlp_NLUStrLength(v14);
          v17 = *(*a1 + 8);
          if (v15)
          {
            v18 = strlen(v15);
            v19 = heap_Realloc(v17, v15, (v16 + v18 + 2));
            if (!v19)
            {
              v13 = 2410684426;
              log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0, v20, v21, v22, v23, v34);
              goto LABEL_27;
            }

            v16 = v16;
            v15 = v19;
          }

          else
          {
            v24 = strlen(__s);
            v25 = heap_Alloc(v17, (v16 + v24 + 2));
            if (!v25)
            {
              v13 = 2410684426;
              log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0, v26, v27, v28, v29, v34);
              return v13;
            }

            v15 = v25;
            v16 = v16;
            strcpy(v25, __s);
          }

          v30 = v38[v16];
          v38[v16] = 0;
          hlp_NLUStrJoin(v15, v38);
          v38[v16] = v30;
          v14 = v38;
        }

        v14 = hlp_NLUStrNext(v14);
        v38 = v14;
      }

      while (v14);
      v31 = v15 == 0;
      if (v15)
      {
        v32 = strlen(v15);
        v13 = (*(a1[1] + 160))(a2, a3, a5, 14, (v32 + 1), v15, &v36);
      }

      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
      v31 = 1;
    }

    v13 = (*(a1[1] + 192))(a2, a3, *a4);
    if ((v13 & 0x80000000) == 0)
    {
      *a4 = a5;
    }

LABEL_26:
    if (!v31)
    {
LABEL_27:
      heap_Free(*(*a1 + 8), v15);
    }
  }

  return v13;
}

uint64_t prmfx_CommonProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  v7 = a5;
  v8 = a4;
  v147 = *MEMORY[0x1E69E9840];
  v144 = 0;
  v145 = 0;
  v143 = 0;
  v141 = 0;
  v136 = "null";
  v10 = *(a1 + 32);
  v11 = *(a1 + 72);
  __s1 = *(*(a1 + 64) + 1304);
  v125 = *(a1 + 84);
  v142 = 0;
  v140 = "null";
  v139 = 0;
  v138 = "null";
  v137 = 0;
  result = (*(v10 + 104))(a4, a5, 1, 0, &v145 + 2);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_272;
  }

  result = (*(v10 + 104))(v8, v7, 2, HIWORD(v145), &v145);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_272;
  }

  v123 = v11;
  v132 = 0;
  v133 = v8;
  v124 = 0;
  v129 = 0;
  v13 = 0;
  v14 = 0xFFFF;
  v122 = 0;
  v128 = v7;
  v134 = v10;
  while (v145)
  {
    result = (*(v10 + 168))(v8, v7);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_272;
    }

    if (SHIDWORD(v143) <= 8)
    {
      if (HIDWORD(v143) != 4)
      {
        if (HIDWORD(v143) == 5)
        {
          result = (*(v10 + 168))(v8, v7, v145, 1, 1, &v139, &v144);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_272;
          }

          if (((*(v10 + 176))(v8, v7, v145, 4, &v140, &v144) & 0x80000000) != 0)
          {
            v140 = "null";
          }

          if (v139 == v142 && v13)
          {
            prmfx_setFeature("domain", *(*(a6 + 1) + 8 * (v13 - 1)), v140);
          }

          if (((*(v10 + 168))(v8, v7, v145, 2, 1, &v139, &v144) & 0x80000000) != 0)
          {
            v139 = v142;
          }
        }

        else if (HIDWORD(v143) == 6)
        {
          result = (*(v10 + 168))(v8, v7, v145, 1, 1, &v137, &v144);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_272;
          }

          if (((*(v10 + 176))(v8, v7, v145, 4, &v138, &v144) & 0x80000000) != 0)
          {
            v138 = "null";
          }

          if (v137 == v142 && v13)
          {
            prmfx_setFeature("tn", *(*(a6 + 1) + 8 * (v13 - 1)), v138);
          }

          if (((*(v10 + 168))(v8, v7, v145, 2, 1, &v137, &v144) & 0x80000000) != 0)
          {
            v137 = v142;
          }
        }

        goto LABEL_203;
      }

LABEL_8:
      memset(__n, 0, sizeof(__n));
      v15 = v13;
      if (v13 >= *a6)
      {
        result = 2382372873;
        goto LABEL_272;
      }

      v16 = v13;
      prmfx_setFeature("phrase_type", *(*(a6 + 1) + 8 * v13), v136);
      if (((*(v134 + 176))(v8, v7, v145, 14, &v141, &v144) & 0x80000000) != 0)
      {
        v141 = "null";
        v17 = "null";
      }

      else
      {
        v17 = v141;
      }

      v18 = strlen(v17);
      v19 = heap_Alloc(*(a2 + 8), (7 * v18 + 15));
      if (!v19)
      {
        goto LABEL_210;
      }

      v20 = v19;
      v21 = *(a6 + 2);
      v22 = a6[12];
      a6[12] = v22 + 1;
      *(v21 + 8 * v22) = v19;
      if (hlp_NLUStrFind(v141, "POS", &__n[1], __n))
      {
        strncpy(v20, *&__n[1], __n[0]);
        v23 = &v20[__n[0]];
        *v23 = 0;
        v24 = v23 + 1;
      }

      else
      {
        v24 = v20;
        v20 = "null";
      }

      if (v13)
      {
        prmfx_setFeature("pos_next_word", *(*(a6 + 1) + 8 * v13 - 8), v20);
      }

      v131 = v13;
      prmfx_setFeature("pos_current_word", *(*(a6 + 1) + 8 * v13), v20);
      if (*a6 - 1 > v13)
      {
        prmfx_setFeature("pos_previous_word", *(*(a6 + 1) + 8 * v13 + 8), v20);
      }

      v25 = strstr(__s1, v20);
      if (!v25)
      {
        goto LABEL_40;
      }

      v26 = v25;
      do
      {
        while (*(v26 - 1) != 32)
        {
          v26 = strstr(v26 + 1, v20);
          if (!v26)
          {
            goto LABEL_40;
          }
        }

        v27 = v26[strlen(v20)];
        v28 = strstr(v26 + 1, v20);
        if (!v28)
        {
          break;
        }

        v26 = v28;
      }

      while (v27 != 32);
      v29 = "A";
      v127 = v131;
      if (v27 != 32)
      {
LABEL_40:
        v29 = "F";
        v127 = v14;
      }

      prmfx_setFeature("accentable", *(*(a6 + 1) + 8 * v16), v29);
      if (hlp_NLUStrFind(v141, "PHR", &__n[1], __n))
      {
        strncpy(v24, *&__n[1], __n[0]);
        v30 = &v24[__n[0]];
        *v30 = 0;
        v31 = v30 + 1;
      }

      else
      {
        v31 = v24;
        v24 = "null";
      }

      if (v131)
      {
        prmfx_setFeature("phr_next_word", *(*(a6 + 1) + 8 * v16 - 8), v24);
      }

      prmfx_setFeature("phr_current_word", *(*(a6 + 1) + 8 * v16), v24);
      if (*a6 - 1 > v15)
      {
        prmfx_setFeature("phr_previous_word", *(*(a6 + 1) + 8 * v16 + 8), v24);
      }

      v32 = *(a6 + 4) + 56 * v16;
      v33 = *(v32 + 32);
      if (v33)
      {
        strncpy(v31, v33, *(v32 + 24));
        v34 = *(*(a6 + 4) + 56 * v16 + 24);
        v31[v34] = 0;
        v35 = &v31[v34 + 1];
      }

      else
      {
        v35 = v31;
        v31 = "null";
      }

      if (v131)
      {
        prmfx_setFeature("bndshape_next_word", *(*(a6 + 1) + 8 * v16 - 8), v31);
      }

      prmfx_setFeature("bndshape", *(*(a6 + 1) + 8 * v16), v31);
      if (*a6 - 1 > v15)
      {
        prmfx_setFeature("bndshape_previous_word", *(*(a6 + 1) + 8 * v16 + 8), v31);
      }

      if (v125)
      {
        if (hlp_NLUStrFind(v141, "S_COMP", &__n[1], __n))
        {
          v36 = 11586;
          goto LABEL_63;
        }

        if (hlp_NLUStrFind(v141, "I_COMP", &__n[1], __n) || hlp_NLUStrFind(v141, "E_COMP", &__n[1], __n))
        {
          v36 = 11593;
LABEL_63:
          *v35 = v36;
          v35[2] = 0;
          v38 = __n[0];
          strncpy(v35 + 2, *&__n[1], __n[0] + 1);
          v37 = v38 + 2;
LABEL_64:
          v35[v37] = 0;
          v39 = &v35[v37 + 1];
LABEL_65:
          prmfx_setFeature("compound", *(*(a6 + 1) + 8 * v16), v35);
          if (hlp_NLUStrFind(v141, "S_CLASS", &__n[1], __n) || hlp_NLUStrFind(v141, "I_CLASS", &__n[1], __n) || hlp_NLUStrFind(v141, "E_CLASS", &__n[1], __n))
          {
            strncpy(v39, *&__n[1], __n[0] + 1);
            v40 = &v39[__n[0]];
            *v40 = 0;
            v41 = v40 + 1;
          }

          else
          {
            v41 = v39;
            v39 = "null";
          }

          prmfx_setFeature("doc_class", *(*(a6 + 1) + 8 * v16), v39);
          *v41 = 0;
          for (i = v141; hlp_NLUStrFind(i, "S_PUNC", &__n[1], __n); i = (*&__n[1] + __n[0]))
          {
            if (*v41)
            {
              *&v41[strlen(v41)] = 59;
            }

            v43 = strncat(v41, (*&__n[1] - 7), 7uLL);
            strncat(v43, *&__n[1], __n[0]);
          }

          for (j = v141; hlp_NLUStrFind(j, "I_PUNC", &__n[1], __n); j = (*&__n[1] + __n[0]))
          {
            if (*v41)
            {
              *&v41[strlen(v41)] = 59;
            }

            v45 = strncat(v41, (*&__n[1] - 7), 7uLL);
            strncat(v45, *&__n[1], __n[0]);
          }

          for (k = v141; hlp_NLUStrFind(k, "E_PUNC", &__n[1], __n); k = (*&__n[1] + __n[0]))
          {
            if (*v41)
            {
              *&v41[strlen(v41)] = 59;
            }

            v47 = strncat(v41, (*&__n[1] - 7), 7uLL);
            strncat(v47, *&__n[1], __n[0]);
          }

          v48 = strlen(v41);
          if (v48)
          {
            v41[v48] = 0;
            v49 = &v41[v48 + 1];
          }

          else
          {
            v49 = v41;
            v41 = "null";
          }

          if (v131)
          {
            prmfx_setFeature("doc_punc_next_word", *(*(a6 + 1) + 8 * v16 - 8), v41);
          }

          prmfx_setFeature("doc_punc", *(*(a6 + 1) + 8 * v16), v41);
          if (*a6 - 1 > v15)
          {
            prmfx_setFeature("doc_punc_previous_word", *(*(a6 + 1) + 8 * v16 + 8), v41);
          }

          if (hlp_NLUStrFind(v141, "S_NE", &__n[1], __n) || hlp_NLUStrFind(v141, "I_NE", &__n[1], __n) || hlp_NLUStrFind(v141, "E_NE", &__n[1], __n))
          {
            strncpy(v49, *&__n[1], __n[0] + 1);
            v50 = &v49[__n[0]];
            *v50 = 0;
            v51 = v50 + 1;
          }

          else
          {
            v51 = v49;
            v49 = "null";
          }

          if (v131)
          {
            prmfx_setFeature("ne_next_word", *(*(a6 + 1) + 8 * v16 - 8), v49);
          }

          prmfx_setFeature("ne_current_word", *(*(a6 + 1) + 8 * v16), v49);
          if (*a6 - 1 > v15)
          {
            prmfx_setFeature("ne_previous_word", *(*(a6 + 1) + 8 * v16 + 8), v49);
          }

          if (((*(v134 + 176))(v133, v128, v145, 9, &v141, &v144) & 0x80000000) != 0)
          {
            v141 = "null";
          }

          else
          {
            *v51 = 0;
            strncat(v51, v141, 2uLL);
          }

          prmfx_setFeature("language_tag", *(*(a6 + 1) + 8 * v16), v51);
          v52 = 0;
          if (((*(v134 + 176))(v133, v128, v145, 3, &v141, &v144) & 0x80000000) == 0)
          {
            v53 = v141;
            if (v141)
            {
              v54 = 0;
              do
              {
                ++v54;
                v55 = strchr(v53, 46);
                v53 = v55 + 1;
                if (v55)
                {
                  v56 = v55 + 1;
                }

                else
                {
                  v56 = 0;
                }

                v141 = v56;
              }

              while (v55);
              v52 = v54 >> 1;
            }
          }

          v57 = &v51[strlen(v51)];
          snprintf(v57 + 1, 4uLL, "%u", v52);
          prmfx_setFeature("word_length", *(*(a6 + 1) + 8 * v16), v57 + 1);
          if (v124 == 1)
          {
            prmfx_setFeature("phrase_length", *(*(a6 + 1) + 8 * v16), "0");
            v58 = v133;
          }

          else
          {
            v58 = v133;
            if (v124 < 6u)
            {
              v59 = "1";
            }

            else
            {
              v59 = "2";
            }

            prmfx_setFeature("phrase_length", *(*(a6 + 1) + 8 * v16), v59);
          }

          if (v124 - 1 == WORD2(v132))
          {
            v60 = *(*(a6 + 1) + 8 * v16);
            v61 = "3";
          }

          else if (WORD2(v132))
          {
            v60 = *(*(a6 + 1) + 8 * v16);
            if (v124 - 2 == WORD2(v132))
            {
              v61 = "2";
            }

            else
            {
              v61 = "1";
            }
          }

          else
          {
            v60 = *(*(a6 + 1) + 8 * v16);
            v61 = "0";
          }

          prmfx_setFeature("position", v60, v61);
          if (v129 - 1 == v132)
          {
            v72 = *(*(a6 + 1) + 8 * v16);
            v73 = "3";
          }

          else if (v132)
          {
            v72 = *(*(a6 + 1) + 8 * v16);
            if (v129 - 2 == v132)
            {
              v73 = "2";
            }

            else
            {
              v73 = "1";
            }
          }

          else
          {
            v72 = *(*(a6 + 1) + 8 * v16);
            v73 = "0";
          }

          prmfx_setFeature("position_major_ip", v72, v73);
          result = (*(v134 + 168))(v58, v128, v145, 1, 1, &v142, &v144);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_272;
          }

          if (v142 >= v139)
          {
            v140 = "null";
            v74 = "null";
          }

          else
          {
            v74 = v140;
          }

          prmfx_setFeature("domain", *(*(a6 + 1) + 8 * v16), v74);
          if (v142 >= v137)
          {
            v138 = "null";
            v75 = "null";
          }

          else
          {
            v75 = v138;
          }

          prmfx_setFeature("tn", *(*(a6 + 1) + 8 * v16), v75);
          v76 = (*(a6 + 4) + 56 * v16);
          v77 = v76[1];
          v78 = *v76;
          v79 = (v77 - v78);
          v80 = heap_Alloc(*(a2 + 8), v79 + 5);
          if (!v80)
          {
LABEL_210:
            result = 2382372874;
            goto LABEL_272;
          }

          v81 = v80;
          v82 = a6[12];
          *(*(a6 + 2) + 8 * v82) = v80;
          v83 = v82 + 1;
          v84 = *(a6 + 5);
          v85 = *(*(a6 + 4) + 56 * v16);
          a6[12] = v83;
          if (v77 == v78)
          {
            v86 = 0;
          }

          else
          {
            v87 = 0;
            v88 = (v84 + v85);
            v89 = v79;
            do
            {
              v91 = *v88++;
              v90 = v91;
              if (*(a1 + 88) || !strchr(__s, v90))
              {
                v81[v87++] = v90;
              }

              --v89;
            }

            while (v89);
            v86 = v87;
          }

          v81[v86] = 0;
          if (*(a1 + 88))
          {
            result = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), "normal", v81, v79);
            v92 = v131;
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_272;
            }
          }

          else
          {
            v92 = v131;
          }

          if (!*v81)
          {
            goto LABEL_193;
          }

          v93 = strstr(v123, v81);
          if (!v93)
          {
            goto LABEL_193;
          }

          v94 = v93;
          do
          {
            v95 = v94 != v123 && (v94 <= v123 || *(v94 - 1) != 32) || v94[strlen(v81)] != 32;
            v96 = strstr(v94 + 1, v81);
            if (!v96)
            {
              break;
            }

            v94 = v96;
          }

          while (v95);
          if (v95)
          {
LABEL_193:
            v81 = "null";
          }

          prmfx_setFeature("orth", *(*(a6 + 1) + 8 * v16), v81);
          v13 = v92 + 1;
          LOWORD(v132) = v132 + 1;
          ++WORD2(v132);
          v7 = v128;
          v8 = v133;
          v10 = v134;
          v14 = v127;
          goto LABEL_203;
        }
      }

      else if (hlp_NLUStrFind(v141, "COMP", &__n[1], __n))
      {
        strncpy(v35, *&__n[1], __n[0] + 1);
        v37 = __n[0];
        goto LABEL_64;
      }

      v39 = v35;
      v35 = "null";
      goto LABEL_65;
    }

    if ((HIDWORD(v143) - 9) < 6)
    {
      goto LABEL_8;
    }

    if (HIDWORD(v143) == 15)
    {
      if ((v14 & 0x8000) == 0)
      {
        prmfx_setFeature("accentable", *(*(a6 + 1) + 8 * v14), "L");
      }

      if (((*(v10 + 176))(v8, v7, v145, 4, &v136, &v144) & 0x80000000) != 0)
      {
        v136 = "null";
      }

      result = (*(v10 + 120))(v8, v7, v145, &v144 + 2);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_272;
      }

      if (!HIWORD(v144))
      {
        LOWORD(v14) = -1;
        break;
      }

      result = (*(v10 + 168))(v8, v7);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_272;
      }

      v62 = 0;
      v63 = HIWORD(v144);
      if (HIWORD(v144))
      {
        v64 = v143;
        if (v143 != 15)
        {
          v62 = 0;
          while (1)
          {
            if ((v64 - 9) < 6 || v64 == 4)
            {
              ++v62;
            }

            result = (*(v10 + 120))(v8, v7, v63, &v144 + 2);
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_272;
            }

            if (!HIWORD(v144))
            {
              break;
            }

            result = (*(v10 + 168))(v8, v7);
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_272;
            }

            v63 = HIWORD(v144);
            if (HIWORD(v144))
            {
              v64 = v143;
              if (v143 != 15)
              {
                continue;
              }
            }

            break;
          }
        }
      }

      v66 = *(a6 + 4);
      v124 = v62;
      if (v13 && v122 != *(v66 + 56 * (v13 - 1) + 4))
      {
        WORD2(v132) = 0;
        v14 = 0xFFFF;
        v10 = v134;
      }

      else
      {
        v67 = *a6 - 1;
        if (v67 <= v13)
        {
          v129 = 1;
          v68 = v13;
        }

        else
        {
          v129 = 1;
          v68 = v13;
          do
          {
            v69 = v66 + 56 * v68;
            if (*(v69 + 48))
            {
              break;
            }

            v70 = *(v69 + 32);
            if (v70)
            {
              v71 = *(v69 + 24);
              if (v71)
              {
                if (strncmp(v70, "%", v71))
                {
                  break;
                }
              }
            }

            ++v129;
            ++v68;
          }

          while (v67 > v68);
        }

        v132 = 0;
        v122 = *(v66 + 56 * v68 + 4);
        v14 = 0xFFFF;
        v8 = v133;
        v10 = v134;
      }
    }

LABEL_203:
    result = (*(v10 + 120))(v8, v7, v145, &v145);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_272;
    }
  }

  if (*a6)
  {
    v97 = v13;
    v98 = 0;
    v99 = *(a6 + 1);
    v100 = *v99;
    while (strcmp("prm_previous_word", g_FeatureNames[v98]))
    {
      if (++v98 == 29)
      {
        goto LABEL_219;
      }
    }

    *(v100 + v98 * 8) = "null";
    v99 = *(a6 + 1);
    v100 = *v99;
LABEL_219:
    v101 = 0;
    while (strcmp("pos_previous_word", g_FeatureNames[v101]))
    {
      if (++v101 == 29)
      {
        goto LABEL_224;
      }
    }

    *(v100 + v101 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_224:
    v102 = 0;
    v103 = v97 - 1;
    v104 = v99[v103];
    while (strcmp("pos_next_word", g_FeatureNames[v102]))
    {
      if (++v102 == 29)
      {
        goto LABEL_229;
      }
    }

    *(v104 + v102 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_229:
    v105 = 0;
    v106 = *v99;
    while (strcmp("phr_previous_word", g_FeatureNames[v105]))
    {
      if (++v105 == 29)
      {
        goto LABEL_234;
      }
    }

    *(v106 + v105 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_234:
    v107 = 0;
    v108 = v99[v103];
    while (strcmp("phr_next_word", g_FeatureNames[v107]))
    {
      if (++v107 == 29)
      {
        goto LABEL_239;
      }
    }

    *(v108 + v107 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_239:
    v109 = 0;
    v110 = *v99;
    while (strcmp("ne_previous_word", g_FeatureNames[v109]))
    {
      if (++v109 == 29)
      {
        goto LABEL_244;
      }
    }

    *(v110 + v109 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_244:
    v111 = 0;
    v112 = v99[v103];
    while (strcmp("ne_next_word", g_FeatureNames[v111]))
    {
      if (++v111 == 29)
      {
        goto LABEL_249;
      }
    }

    *(v112 + v111 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_249:
    v113 = 0;
    v114 = *v99;
    while (strcmp("doc_punc_previous_word", g_FeatureNames[v113]))
    {
      if (++v113 == 29)
      {
        goto LABEL_254;
      }
    }

    *(v114 + v113 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_254:
    v115 = 0;
    v116 = v99[v103];
    while (strcmp("doc_punc_next_word", g_FeatureNames[v115]))
    {
      if (++v115 == 29)
      {
        goto LABEL_259;
      }
    }

    *(v116 + v115 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_259:
    v117 = 0;
    v118 = *v99;
    while (strcmp("bndshape_previous_word", g_FeatureNames[v117]))
    {
      if (++v117 == 29)
      {
        goto LABEL_264;
      }
    }

    *(v118 + v117 * 8) = "null";
    v99 = *(a6 + 1);
LABEL_264:
    v119 = 0;
    v120 = v99[v103];
    while (strcmp("bndshape_next_word", g_FeatureNames[v119]))
    {
      if (++v119 == 29)
      {
        goto LABEL_269;
      }
    }

    *(v120 + v119 * 8) = "null";
  }

LABEL_269:
  if ((v14 & 0x8000) == 0)
  {
    prmfx_setFeature("accentable", *(*(a6 + 1) + 8 * v14), "L");
  }

  result = 0;
LABEL_272:
  v121 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t prmfx_setFeature(char *__s1, uint64_t a2, const char *a3)
{
  v6 = 0;
  while (1)
  {
    result = strcmp(__s1, g_FeatureNames[v6]);
    if (!result)
    {
      break;
    }

    if (++v6 == 29)
    {
      return result;
    }
  }

  if (*a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = "null";
  }

  *(a2 + v6 * 8) = v8;
  return result;
}

uint64_t fe_prmfx_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2382372865;
  }

  result = 0;
  *a2 = &IPrmFx;
  return result;
}

uint64_t prmfx_AllocateResults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v9 = (*(a3 + 104))(a4, a5, 1, 0, &v13 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v9 = (*(a3 + 104))(a4, a5, 2, HIWORD(v13), &v13);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  while (v13)
  {
    v9 = (*(a3 + 168))(a4, a5);
    if ((v9 & 0x80000000) == 0)
    {
      v9 = (*(a3 + 120))(a4, a5, v13, &v13);
      if ((v9 & 0x80000000) == 0)
      {
        continue;
      }
    }

    return v9;
  }

  v10 = 2382372874;
  v12 = heap_Alloc(*(a1 + 8), 56);
  if (v12)
  {
    *v12 = 0;
    return 0;
  }

  return v10;
}