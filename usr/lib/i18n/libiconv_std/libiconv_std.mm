uint64_t _citrus_iconv_std_iconv_init_context(void *a1)
{
  v2 = *(*a1 + 8);
  v3 = *v2[1][3];
  v4 = *(*v2)[3];
  v5 = malloc_type_malloc(2 * (v4 + v3) + 248, 0x62DDEAB1uLL);
  if (!v5)
  {
    return *__error();
  }

  v6 = v5;
  *(v5 + 184) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  v7 = (v5 + 248);
  v8 = v2[1];
  if (!v3)
  {
    *(v5 + 29) = 0;
    *(v5 + 30) = 0;
    *(v5 + 28) = v8;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = *v2;
    *(v6 + 26) = 0;
    *(v6 + 27) = 0;
    *(v6 + 25) = v10;
    goto LABEL_8;
  }

  init_encoding(v5 + 28, v8, v7, (v7 + v3));
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  init_encoding(v6 + 25, *v2, v7 + 2 * v3, (v7 + 2 * v3 + v4));
LABEL_8:
  result = 0;
  a1[1] = v6;
  return result;
}

size_t ***init_encoding(size_t ***result, size_t **a2, unint64_t a3, size_t **a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  if (a3 | a4)
  {
    if (!a3 || !a4)
    {
      init_encoding_cold_1();
    }

    v6 = result;
    bzero(a3, *a2[3]);
    v7 = (*a2)[2];
    if (!v7 || (result = v7(a2, a3), !result))
    {
      result = v6[2];
      if (result)
      {
        v8 = v6[1];
        if (v8)
        {
          v9 = *(*v6)[3];

          return memcpy(result, v8, v9);
        }
      }
    }
  }

  return result;
}

uint64_t _citrus_iconv_std_iconv_convert(void *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, char a6, void (**a7)(size_t **, uint64_t))
{
  v7 = a5;
  v8 = a4;
  v203 = *MEMORY[0x29EDCA608];
  v9 = a1[1];
  v10 = *(*a1 + 8);
  v191 = 0;
  v192 = 0;
  v189 = 0;
  v190 = 0;
  v188 = 0;
  if (!a2 || (v11 = a2, (v12 = *a2) == 0))
  {
    if (a4 && *a4)
    {
      v139 = *(v9 + 232);
      if (v139)
      {
        memcpy(*(v9 + 240), v139, **(*(v9 + 224) + 24));
      }

      v140 = *(v9 + 208);
      if (v140)
      {
        memcpy(*(v9 + 216), v140, **(*(v9 + 200) + 24));
        v141 = *(v9 + 208);
      }

      else
      {
        v141 = 0;
      }

      v189 = 0;
      v148 = *v7;
      v62 = (*(**(v9 + 200) + 56))(*(v9 + 200), *v8, *v7, v141, &v189);
      if (v62)
      {
        goto LABEL_256;
      }

      v149 = v189;
      if (v189 == -2)
      {
        goto LABEL_254;
      }

      *v8 += v189;
      *v7 = v148 - v149;
    }

    else
    {
      v142 = *(v9 + 208);
      if (v142)
      {
        v143 = *(v9 + 200);
        bzero(*(v9 + 208), *v143[3]);
        v144 = (*v143)[2];
        if (v144)
        {
          v144(v143, v142);
        }
      }

      v145 = *(v9 + 216);
      if (v145)
      {
        v146 = *(v9 + 200);
        bzero(*(v9 + 216), *v146[3]);
        v147 = (*v146)[2];
        if (v147)
        {
          v147(v146, v145);
        }
      }
    }

    v153 = *(v9 + 232);
    if (v153)
    {
      v154 = *(v9 + 224);
      bzero(*(v9 + 232), *v154[3]);
      v155 = (*v154)[2];
      if (v155)
      {
        v155(v154, v153);
      }
    }

    v156 = *(v9 + 240);
    if (v156)
    {
      v157 = *(v9 + 224);
      bzero(*(v9 + 240), *v157[3]);
      v152 = (*v157)[2];
      if (!v152)
      {
LABEL_271:
        v19 = 0;
        goto LABEL_272;
      }

      v152(v157, v156);
    }

    v152 = 0;
    goto LABEL_271;
  }

  v13 = a1;
  v179 = 0;
  v171 = v10;
  v14 = *(*(*(v10 + 8) + 24) + 16);
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v172 = v9 + 64;
  v165 = (v9 + 200);
  v167 = v15;
  v168 = (v9 + 2);
  v16 = *a3;
  v162 = a6 & 1;
  do
  {
LABEL_7:
    if (!v16)
    {
      *v202.__mbstate8 = 0;
      v17 = (*(**(v9 + 224) + 64))(*(v9 + 224), *(v9 + 232), 0, &v202);
      v18 = v179;
      if (!v17)
      {
        v18 = *v202.__mbstate8;
      }

      if ((v18 - 1) < 2)
      {
        v19 = 0;
        goto LABEL_261;
      }

      v179 = v18;
      v12 = *v11;
    }

    v192 = v12;
    v189 = 0;
    v190 = 0;
    LODWORD(v188) = 32;
    if ((*(v13 + 24) & 1) == 0)
    {
      v19 = mbtocsx(v9 + 224, v201, v200, v199, &v188, &v192, v16, &v190, *(*v13 + 80));
      LODWORD(v20) = v188;
      goto LABEL_39;
    }

    v21 = 0;
    v198 = 0;
    v22 = *v7;
    v189 = *v7;
    v186 = *v8;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    v24 = *(v13 + 8);
    v23 = *(v13 + 16);
    v25 = *(v24 + 152);
    *(&v202._mbstateL + 4) = *(v24 + 136);
    *(&v202._mbstateL + 5) = v25;
    v26 = *(v24 + 184);
    *(&v202._mbstateL + 6) = *(v24 + 168);
    *(&v202._mbstateL + 7) = v26;
    v27 = *(v24 + 88);
    *v202.__mbstate8 = *(v24 + 72);
    *(&v202._mbstateL + 1) = v27;
    v28 = *(v24 + 120);
    *(&v202._mbstateL + 2) = *(v24 + 104);
    *(&v202._mbstateL + 3) = v28;
    if (v16 < 4)
    {
      goto LABEL_22;
    }

    v29 = 0;
    v21 = 0;
    while (1)
    {
      v30 = ___mb_cur_max();
      if (v29 > 0x1F || v21 > 6 - v30)
      {
        goto LABEL_22;
      }

      v31 = wcrtomb((v24 + 64 + v21), *(v12 + 4 * v29), &v202);
      if (v31 == -1)
      {
        break;
      }

LABEL_21:
      v32 = *(&v202._mbstateL + 5);
      *(v24 + 136) = *(&v202._mbstateL + 4);
      *(v24 + 152) = v32;
      v33 = *(&v202._mbstateL + 7);
      *(v24 + 168) = *(&v202._mbstateL + 6);
      *(v24 + 184) = v33;
      v34 = *(&v202._mbstateL + 1);
      *(v24 + 72) = *v202.__mbstate8;
      *(v24 + 88) = v34;
      v35 = *(&v202._mbstateL + 3);
      *(v24 + 104) = *(&v202._mbstateL + 2);
      v21 += v31;
      *(v24 + 120) = v35;
      *(v9 + 2 * v29) = v21;
      v192 += 4;
      if (((v16 - 4) >> 2) + 1 == ++v29)
      {
        goto LABEL_22;
      }
    }

    if (*(*a1 + 72) == 1)
    {
      v31 = 4;
      memset(&v202, 0, sizeof(v202));
      goto LABEL_21;
    }

    if (!v21)
    {
      if (v23)
      {
        v117 = *(v23 + 24);
        if (v117)
        {
          v197 = 0uLL;
          *&v196 = v186;
          *(&v196 + 1) = v22;
          v117(*(v12 + 4 * v29), _citrus_iconv_std_write_mb, &v196, *(v23 + 32));
          v19 = DWORD2(v197);
          if (!DWORD2(v197))
          {
            ++v191;
            v192 += 4;
            v189 = v196 - v186;
            v8 = a4;
            v7 = a5;
            v11 = a2;
            v13 = a1;
            goto LABEL_230;
          }

          break;
        }
      }

      goto LABEL_278;
    }

LABEL_22:
    v198 = v172;
    v13 = a1;
    v19 = mbtocsx(v9 + 224, v201, v200, v199, &v188, &v198, v21, &v190, *(*a1 + 80));
    v20 = v188;
    v11 = a2;
    if (v188 > 0)
    {
      v36 = 0;
      v37 = 0;
      v38 = v168;
      v39 = 1;
      do
      {
        if ((v37 & 0xFFFFFFE0) != 0)
        {
          v40 = v37;
        }

        else
        {
          v40 = 31;
        }

        if (v37 <= 0x1F)
        {
          v41 = 31;
        }

        else
        {
          v41 = v37;
        }

        v42 = v199[v37];
        if (*(v9 + 2 * v37) > v42)
        {
          _citrus_iconv_std_iconv_convert_cold_2();
        }

        v43 = v40 + v36;
        v44 = v38;
        v45 = v39;
        while (v43)
        {
          v46 = *v44++;
          --v45;
          --v43;
          if (v42 <= (v46 - 1))
          {
            v47 = -v45;
            v41 = -v45;
            goto LABEL_36;
          }
        }

        LOWORD(v47) = v41;
LABEL_36:
        if (*(v9 + 2 * v41) > v42)
        {
          _citrus_iconv_std_iconv_convert_cold_1();
        }

        v199[v37++] = 4 * v47 + 4;
        --v39;
        ++v38;
        --v36;
      }

      while (v37 != v20);
    }

    v8 = a4;
    v7 = a5;
LABEL_39:
    v48 = v190 != -2 || v20 < 1;
    v49 = v20;
    if (!v48)
    {
      v50 = *(v9 + 232);
      if (v50)
      {
        v51 = *(v9 + 224);
        bzero(*(v9 + 232), *v51[3]);
        v52 = (*v51)[2];
        if (v52)
        {
          v52(v51, v50);
        }
      }

      v53 = *(v9 + 240);
      if (v53)
      {
        v54 = *(v9 + 224);
        bzero(*(v9 + 240), *v54[3]);
        v55 = (*v54)[2];
        if (v55)
        {
          v55(v54, v53);
        }
      }

      v49 = v188;
      v190 = v199[v188 - 1];
      v192 = *v11 + v190;
    }

    if (v19 != 92 || *(*v13 + 72) != 1)
    {
      if (!v19 || v49)
      {
        if (v19)
        {
          goto LABEL_66;
        }

        goto LABEL_68;
      }

      v189 = *v7;
      v62 = iconv_std_early_fallback(v13, &v192, *v8, &v189);
      if (!v62)
      {
        ++v191;
        v63 = *(v9 + 232);
        if (v63)
        {
          memcpy(v63, *(v9 + 240), **(*(v9 + 224) + 24));
        }

        goto LABEL_72;
      }

      if (v62 == 2)
      {
        break;
      }

LABEL_256:
      v19 = v62;
      break;
    }

    v192 += v167;
    v56 = *(v9 + 232);
    if (v56)
    {
      v57 = *(v9 + 224);
      bzero(*(v9 + 232), *v57[3]);
      v58 = (*v57)[2];
      if (v58)
      {
        v58(v57, v56);
      }
    }

    v59 = *(v9 + 240);
    if (v59)
    {
      v60 = *(v9 + 224);
      bzero(*(v9 + 240), *v60[3]);
      v61 = (*v60)[2];
      if (v61)
      {
        v61(v60, v59);
      }
    }

    if (!v188)
    {
      v12 = v192;
      v16 += *v11 - v192;
      *a3 = v16;
      *v11 = v12;
      goto LABEL_7;
    }

LABEL_66:
    v64 = *(v9 + 232);
    if (v64)
    {
      memcpy(v64, *(v9 + 240), **(*(v9 + 224) + 24));
    }

LABEL_68:
    if (v190 == -2)
    {
      *v202.__mbstate8 = 0;
      if (!(*(**(v9 + 224) + 64))(*(v9 + 224), *(v9 + 232), 0, &v202) && (*v202.__mbstate8 - 1) < 2)
      {
        v179 = *v202.__mbstate8;
LABEL_72:
        v19 = 0;
        goto LABEL_230;
      }

LABEL_254:
      v19 = 22;
      break;
    }

    v166 = v16;
    HIDWORD(v188) = 0;
    v65 = v200[0];
    v66 = do_conv(v13, v171, v201, v200, &v188, &v191, 0, &v188 + 1);
    v67 = v66;
    if (!v66 || !v188)
    {
      if (!v66)
      {
        goto LABEL_92;
      }

      if (HIDWORD(v188) == 1)
      {
        ++v191;
      }

      if (*(*v13 + 72) == 1)
      {
        v74 = *(v9 + 208);
        if (v74)
        {
          memcpy(v74, *(v9 + 216), **(*(v9 + 200) + 24));
        }

        v19 = 0;
        v189 = 0;
        goto LABEL_90;
      }

      v116 = *v7;
      v189 = *v7;
      if (HIDWORD(v188) == 1)
      {
        if (v188)
        {
          _citrus_iconv_std_iconv_convert_cold_3();
        }

        v66 = iconv_std_late_fallback(v13, v65, *v8, &v189);
        if (!v66)
        {
          v19 = 0;
LABEL_90:
          v192 = *v11 + v199[0];
          goto LABEL_91;
        }

        v16 = v166;
      }

      else
      {
        v16 = v166;
        if (HIDWORD(v188) == 2)
        {
          if (v192 == *v11)
          {
            _citrus_iconv_std_iconv_convert_cold_4();
          }

          v192 = *v11;
          v66 = iconv_std_early_fallback(v13, &v192, *v8, &v189);
          if (!v66)
          {
            ++v191;
            restore_encoding_state(v9 + 224);
            goto LABEL_72;
          }
        }
      }

      v118 = *v13;
      if (*(*v13 + 88) != 1)
      {
        if (v66 == 2)
        {
          v19 = v67;
        }

        else
        {
          v19 = v66;
        }

        if (v19 == 2 && !v162)
        {
          if ((*(v118 + 72) & 1) != 0 || !*(v171 + 52))
          {
            v19 = 2;
          }

          else
          {
            v19 = (*(**(v9 + 200) + 48))(*(v9 + 200), *v8, v116, *(v171 + 48), *(v9 + 208), &v189, *(v118 + 80));
            if (!v19)
            {
              goto LABEL_230;
            }

            if (v188)
            {
              v160 = v199[v188 - 1];
              if (v160 <= 0)
              {
                _citrus_iconv_std_iconv_convert_cold_5();
              }

              *a3 = v16 - v160;
              *v11 += v160;
            }
          }
        }

        break;
      }

      init_encoding_state((v9 + 224));
LABEL_278:
      v19 = 92;
      break;
    }

    v192 = *v11 + v199[v188 - 1];
    v68 = *(v9 + 232);
    if (v68)
    {
      v69 = *(v9 + 224);
      bzero(*(v9 + 232), *v69[3]);
      v70 = (*v69)[2];
      if (v70)
      {
        v70(v69, v68);
      }
    }

    v71 = *(v9 + 240);
    if (v71)
    {
      v72 = *(v9 + 224);
      bzero(*(v9 + 240), *v72[3]);
      v73 = (*v72)[2];
      if (v73)
      {
        v73(v72, v71);
      }
    }

    if (v192 <= *v11)
    {
      _citrus_iconv_std_iconv_convert_cold_6();
    }

LABEL_92:
    v178 = *v8;
    v75 = *v7;
    v180 = v20;
    if ((*(v13 + 24) & 2) == 0)
    {
      v76 = *(*v13 + 80);
      v77 = *(v9 + 200);
      v78 = *(*v77 + 80);
      if (!v78 || (v79 = *(v9 + 208), v19 = v78(v77, v178, v75), v19 == 102))
      {
        v202._mbstateL = 0;
        if (v188 < 1)
        {
          v20 = 0;
          v19 = 102;
        }

        else
        {
          v80 = 0;
          v20 = 0;
          v81 = v75;
          v82 = v178;
          v163 = v81;
          while (1)
          {
            v83 = *(v9 + 200);
            v84 = *(v9 + 208);
            if (v84)
            {
              memcpy(*(v9 + 216), v84, *v83[3]);
              v83 = *(v9 + 200);
              v85 = *(v9 + 208);
            }

            else
            {
              v85 = 0;
            }

            v19 = ((*v83)[4])(v83, v82, v81, v201[v80], v200[v80], v85, &v202, v76);
            if (v19)
            {
              break;
            }

            v20 += v202._mbstateL;
            v81 -= v202._mbstateL;
            if (!v81 && v80 < v188 - 1)
            {
              LODWORD(v80) = v80 + 1;
              break;
            }

            v82 += v202._mbstateL;
            if (++v80 >= v188)
            {
              v19 = 0;
              goto LABEL_211;
            }
          }

          LODWORD(v188) = v80;
LABEL_211:
          v13 = a1;
          v75 = v163;
        }

        v189 = v20;
        LODWORD(v20) = v180;
      }

      if (v19 != 92)
      {
        goto LABEL_219;
      }

      if (*(*v13 + 72))
      {
        goto LABEL_196;
      }

      if (v188)
      {
        goto LABEL_196;
      }

      ++v191;
      v127 = iconv_std_late_fallback(v13, v200[0], v178, &v189);
      if (v127 == 2)
      {
        goto LABEL_196;
      }

      v19 = v127;
      if (v127)
      {
        goto LABEL_195;
      }

      v192 = *v11 + v199[0];
      v128 = v188;
      goto LABEL_221;
    }

    v196 = 0u;
    v197 = 0u;
    v87 = *(v13 + 8);
    v86 = *(v13 + 16);
    v88 = *v13;
    v89 = *(*v13 + 8);
    memset(&v202, 0, sizeof(v202));
    v90 = *(*(*v89 + 24) + 16);
    if (v90 <= 1)
    {
      v91 = 1;
    }

    else
    {
      v91 = v90;
    }

    if (v90 >= 6)
    {
      _citrus_iconv_std_iconv_convert_cold_9();
    }

    v194 = 0;
    v175 = v188;
    if (v188 <= 0)
    {
      v19 = 0;
      LODWORD(v188) = 0;
      v8 = a4;
      v7 = a5;
      v11 = a2;
      goto LABEL_195;
    }

    v161 = v86;
    v92 = 0;
    v195 = 0;
    v169 = v88;
    v185 = v87 + 64;
    v187 = 0;
    v164 = v75;
    v93 = v178;
    v177 = v9;
LABEL_111:
    v181 = v75;
    v193 = 1;
    v94 = &v201[v92];
    v183 = v92;
    v95 = &v200[v92];
    v96 = *(v88 + 80);
    v97 = *(v87 + 200);
    v98 = *(*v97 + 80);
    if (!v98)
    {
      v198 = 0;
      goto LABEL_116;
    }

    v99 = *(v87 + 208);
    v100 = v98(v97, v185, 6);
    LODWORD(v101) = v193;
    if (v100 == 102)
    {
      v198 = 0;
      if (v193 < 1)
      {
        v102 = 0;
        v19 = 102;
        v13 = a1;
        goto LABEL_129;
      }

LABEL_116:
      v101 = 0;
      v102 = 0;
      v103 = v87 + 64;
      v104 = 6;
      while (1)
      {
        v105 = *(v87 + 200);
        v106 = *(v87 + 208);
        if (v106)
        {
          memcpy(*(v87 + 216), v106, *v105[3]);
          v105 = *(v87 + 200);
          v107 = *(v87 + 208);
        }

        else
        {
          v107 = 0;
        }

        v19 = ((*v105)[4])(v105, v103, v104, v94[v101], v95[v101], v107, &v198, v96);
        if (v19)
        {
          break;
        }

        v102 += v198;
        v104 -= v198;
        if (!v104 && v101 < v193 - 1)
        {
          LODWORD(v101) = v101 + 1;
          break;
        }

        v103 += v198;
        if (++v101 >= v193)
        {
          v19 = 0;
          LODWORD(v101) = v193;
          goto LABEL_128;
        }
      }

      v193 = v101;
LABEL_128:
      v13 = a1;
      LODWORD(v20) = v180;
      v93 = v178;
LABEL_129:
      v92 = v183;
      v75 = v181;
      v194 = v102;
      v88 = v169;
    }

    else
    {
      v19 = v100;
      v13 = a1;
      v92 = v183;
      v75 = v181;
    }

    if (v19)
    {
      v108 = v101 == 0;
    }

    else
    {
      v108 = 0;
    }

    if (v108)
    {
      v9 = v177;
LABEL_192:
      LODWORD(v188) = v92;
      v8 = a4;
      v7 = a5;
      v11 = a2;
      if (v92 >= 1)
      {
        v189 = 4 * v187;
      }

      v75 = v164;
LABEL_195:
      if (v19 == 92)
      {
LABEL_196:
        if (*(v171 + 52))
        {
          v119 = v75;
          v202._mbstateL = 0;
          v120 = *(v9 + 208);
          if (v120)
          {
            v121 = *v165;
            bzero(*(v9 + 208), **(*v165 + 24));
            v122 = *(*v121 + 16);
            if (v122)
            {
              v122(v121, v120);
            }
          }

          v123 = *(v9 + 216);
          if (v123)
          {
            v124 = *v165;
            bzero(*(v9 + 216), **(*v165 + 24));
            v125 = *(*v124 + 16);
            if (v125)
            {
              v125(v124, v123);
            }
          }

          v202._mbstateL = 0;
          v126 = (*(**(v9 + 200) + 48))(*(v9 + 200), v178 + v189, v119 - v189, *(v171 + 48), *(v9 + 208), &v202, *(*v13 + 80));
          if (v126)
          {
            v19 = 92;
            if (v126 != 7 && v126 != 92)
            {
              _citrus_iconv_std_iconv_convert_cold_10();
            }
          }

          else
          {
            v19 = 0;
            LODWORD(v188) = v188 + 1;
            v189 += v202._mbstateL;
          }
        }

        else
        {
          v19 = 92;
        }
      }

LABEL_219:
      v128 = v188;
      if (v19 && !v188)
      {
        break;
      }

LABEL_221:
      if (v128 < v20)
      {
        v192 = *v11 + v199[v128 - 1];
        v129 = *(v9 + 232);
        if (v129)
        {
          v130 = *(v9 + 224);
          bzero(*(v9 + 232), *v130[3]);
          v131 = (*v130)[2];
          if (v131)
          {
            v131(v130, v129);
          }
        }

        v132 = *(v9 + 240);
        if (v132)
        {
          v133 = *(v9 + 224);
          bzero(*(v9 + 240), *v133[3]);
          v134 = (*v133)[2];
          if (v134)
          {
            v134(v133, v132);
          }
        }
      }

      if (v192 <= *v11)
      {
        _citrus_iconv_std_iconv_convert_cold_11();
      }

      v16 = *a3;
      goto LABEL_230;
    }

    v109 = v194;
    v9 = v177;
    if (!v194 || !v75)
    {
      v111 = v194;
LABEL_155:
      v13 = a1;
      LODWORD(v20) = v180;
      v92 = v183;
      if (v111 && !v75)
      {
        v19 = 7;
        goto LABEL_192;
      }

LABEL_164:
      v92 += v193;
      if (v92 >= v175)
      {
        goto LABEL_192;
      }

      goto LABEL_111;
    }

    v110 = 0;
    v111 = v194;
    while (2)
    {
      if (v75 < 4)
      {
        goto LABEL_162;
      }

      v112 = mbrtowc(&v195, (v185 + v110), v111, &v202);
      if (v112 != -1)
      {
        if (v112 == -2)
        {
          _citrus_iconv_std_iconv_convert_cold_7();
        }

        v113 = v194;
        if (v112 > v194)
        {
          _citrus_iconv_std_iconv_convert_cold_8();
        }

LABEL_144:
        if (v112 <= v91)
        {
          v114 = v91;
        }

        else
        {
          v114 = v112;
        }

        if (v114 >= v113)
        {
          v114 = v113;
        }

        v111 = v113 - v114;
        v194 = v113 - v114;
        if (v112)
        {
          *(v93 + 4 * v187) = v195;
          v75 -= 4;
          ++v187;
        }

        if (!v111)
        {
          goto LABEL_155;
        }

        v110 += v114;
        if (!v75)
        {
          goto LABEL_155;
        }

        continue;
      }

      break;
    }

    if (*(v88 + 72) == 1)
    {
      v113 = v194;
      v112 = v91;
      goto LABEL_144;
    }

    if (!v161)
    {
      v19 = 92;
LABEL_162:
      v13 = a1;
      LODWORD(v20) = v180;
LABEL_163:
      v92 = v183;
      goto LABEL_164;
    }

    v115 = *(v161 + 16);
    v13 = a1;
    LODWORD(v20) = v180;
    if (!v115)
    {
      v19 = 92;
      goto LABEL_163;
    }

    v197 = 0uLL;
    *&v196 = v93;
    *(&v196 + 1) = v181;
    v115(v185, v109, _citrus_iconv_std_write_wc, &v196, *(v161 + 32));
    v19 = DWORD2(v197);
    if (!DWORD2(v197))
    {
      v189 = v196 - v93;
    }

    ++v191;
    v8 = a4;
    v7 = a5;
    v11 = a2;
LABEL_91:
    v16 = v166;
LABEL_230:
    v12 = v192;
    v135 = v192 - *v11;
    v136 = v16 >= v135;
    v16 -= v135;
    if (!v136)
    {
      _citrus_iconv_std_iconv_convert_cold_13();
    }

    v137 = v189;
    v138 = *v7 - v189;
    if (*v7 < v189)
    {
      _citrus_iconv_std_iconv_convert_cold_12();
    }

    *a3 = v16;
    *v11 = v12;
    *v7 = v138;
    *v8 += v137;
  }

  while (!v19);
  v150 = *(v9 + 232);
  if (v150)
  {
    memcpy(v150, *(v9 + 240), **(*(v9 + 224) + 24));
  }

  v151 = *(v9 + 208);
  if (v151)
  {
    memcpy(v151, *(v9 + 216), **(*(v9 + 200) + 24));
  }

LABEL_261:
  v152 = v191;
LABEL_272:
  *a7 = v152;
  v158 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t mbtocsx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, unint64_t *a6, unint64_t a7, void *a8, uint64_t a9)
{
  v14 = a3;
  v15 = a2;
  v17 = *a1;
  v18 = (*v17)[9];
  if (!v18 || (v19 = *(a1 + 8), result = v18(v17, a2, a3, a4), result == 102))
  {
    *a8 = 0;
    v30 = 0;
    if (*a5 < 1 || a7 == 0)
    {
      LODWORD(v22) = 0;
      result = 102;
    }

    else
    {
      v29 = a4;
      v22 = 0;
      v23 = *a6;
      v24 = *a6;
      while (1)
      {
        v25 = *a1;
        v26 = *(a1 + 8);
        if (v26)
        {
          memcpy(*(a1 + 16), v26, *v25[3]);
          v27 = *a6;
          v25 = *a1;
          v28 = *(a1 + 8);
        }

        else
        {
          v28 = 0;
          v27 = v24;
        }

        result = ((*v25)[3])(v25, v15, v14, a6, a7, v28, &v30, a9);
        if (result)
        {
          break;
        }

        if (v30 == -2)
        {
          result = 0;
          *a8 = -2;
          break;
        }

        *a8 += v30;
        v24 = *a6;
        if (*a6 < v27)
        {
          mbtocsx_cold_1();
        }

        result = 0;
        *(v29 + 2 * v22++) = v24 - v23;
        if (v22 < *a5)
        {
          v14 += 4;
          v15 += 4;
          a7 = a7 + v27 - v24;
          if (a7)
          {
            continue;
          }
        }

        break;
      }
    }

    if (v22 < *a5)
    {
      *a5 = v22;
    }
  }

  return result;
}

void *save_encoding_state(void *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    return memcpy(*(result + 2), v1, **(*result + 24));
  }

  return result;
}

uint64_t do_conv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, void *a6, int a7, int *a8)
{
  v12 = a3;
  v13 = a2;
  v14 = *a5;
  v43 = *a5;
  v44 = 0;
  if (*(a2 + 16) && (a7 & 1) == 0)
  {
    if (v14 >= 1)
    {
      v15 = 0;
      while (*(a3 + 4 * v15) == *(a2 + 24))
      {
        if (v14 == ++v15)
        {
          goto LABEL_53;
        }
      }

      *a5 = v15;
      v43 = v15;
      if (!v15)
      {
        return 2;
      }

      LODWORD(v14) = v15;
LABEL_53:
      if (v14 >= 1)
      {
        v29 = 0;
        v30 = 0;
        while (1)
        {
          result = do_conv_map_one(*(v13 + 16), (v12 + 4 * v30), (a4 + 4 * v30), &v43, &v44, a8);
          if (result != 35)
          {
            break;
          }

          if (v43 <= 0)
          {
            do_conv_cold_1();
          }

          if ((*(*a1 + 73) & 1) == 0)
          {
            *a5 = v43 + v29 - 1;
            return 2;
          }

          v29 += v43;
          *(a4 - 4 + 4 * v29) = v44;
          v31 = *a5;
          v43 = *a5 - v29;
          if (a6)
          {
            ++*a6;
          }

          v30 += v29;
          if (v31 <= v29)
          {
            return 2;
          }
        }

        if (!result)
        {
          if (v43 + v29 != *a5)
          {
            do_conv_cold_2();
          }

          return 0;
        }

        if (v43 + v29 >= *a5)
        {
          do_conv_cold_3();
        }

        *a5 = v43 + v29;
        if (result != 2)
        {
          return result;
        }
      }
    }

    return 2;
  }

  if (!v14)
  {
    return 0;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_10:
  while (2)
  {
    v38 = v17;
    if (a7)
    {
      v40 = 0;
      v19 = v14;
    }

    else
    {
      v40 = *(v12 + 4 * v18);
      v19 = 0;
      if (v14 >= 1)
      {
        v20 = v18;
        do
        {
          if (*(v12 + 4 * v20) != *(v12 + 4 * v18))
          {
            break;
          }

          ++v19;
          ++v20;
        }

        while (v20 < v18 + v14);
      }
    }

    v21 = *(v13 + 32);
    if (!v21)
    {
LABEL_68:
      *a5 = v38;
      return 2;
    }

    v22 = 0;
    v23 = (a3 + 4 * v18);
    v24 = v40;
    v35 = v18;
    v25 = (a4 + 4 * v18);
    while ((a7 & 1) == 0 && *(v21 + 8) != *v23)
    {
LABEL_41:
      v21 = *v21;
      if (!v21)
      {
        if ((v22 & 1) != 0 && *(*a1 + 73) == 1)
        {
          *v25 = v44;
          *v23 = v40;
          if (a6)
          {
            ++*a6;
          }

          v17 = v38 + 1;
          v18 = v35 + 1;
          LODWORD(v14) = v14 - 1;
          v12 = a3;
          v13 = a2;
          if (!v14)
          {
            return 0;
          }

          goto LABEL_10;
        }

        goto LABEL_68;
      }
    }

    v26 = v21[2];
    if (!v26)
    {
LABEL_36:
      if (v22)
      {
        v22 = 1;
      }

      else
      {
        if (!a7 || v16)
        {
          goto LABEL_68;
        }

        v22 = 0;
      }

      goto LABEL_41;
    }

    while (1)
    {
      if (a7)
      {
        if ((*(v26[2] + 64) & 1) == 0)
        {
          goto LABEL_35;
        }

        v24 = *(v21 + 8);
      }

      v42 = v19;
      result = do_conv_map_one(v26, v23, v25, &v42, &v44, a8);
      if (result != 35 && (result & 0x7D) != 0)
      {
        *a5 = v42 + v38;
        return result;
      }

      v28 = v42;
      if (result)
      {
        if (result == 35)
        {
          if (v42 <= 0)
          {
            do_conv_cold_4();
          }

          v28 = --v42;
          v22 = 1;
          v40 = v24;
        }

        else if (v42 >= v19)
        {
          do_conv_cold_5();
        }
      }

      else
      {
        if (v42 != v19)
        {
          do_conv_cold_6();
        }

        v22 = 0;
        v28 = v19;
      }

      ++v16;
      if (v28 >= 1)
      {
        break;
      }

LABEL_35:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_36;
      }
    }

    v17 = v28 + v38;
    v18 = v28 + v35;
    LODWORD(v14) = v14 - v28;
    v12 = a3;
    v13 = a2;
    if (v14)
    {
      continue;
    }

    return 0;
  }
}

uint64_t do_conv_map_one(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4, _DWORD *a5, int *a6)
{
  v25 = *MEMORY[0x29EDCA608];
  if (*(a1 + 40) == 1)
  {
    if (*a4 >= 1)
    {
      v9 = 0;
      v10 = *(a1 + 24);
      do
      {
        a2[v9++] = v10;
      }

      while (v9 < *a4);
    }

    result = 0;
  }

  else
  {
    v14 = a3;
    v23[0] = v24;
    v23[1] = a3;
    v23[2] = a4;
    v23[3] = 0;
    v15 = (*(**(a1 + 16) + 16))(*(a1 + 16), v23);
    v16 = v15 & 0x9FFFFFFF;
    LODWORD(v17) = *a4;
    if ((v15 & 0x9FFFFFFF) == 6)
    {
      LODWORD(v17) = v17 - 1;
      *a5 = v24[v17];
      v24[v17] = v14[v17];
    }

    if (v17 >= 1)
    {
      v17 = v17;
      v18 = v24;
      v19 = a2;
      do
      {
        if (a2)
        {
          *v19 = *(a1 + 24);
        }

        v20 = *v18++;
        *v14++ = v20;
        ++v19;
        --v17;
      }

      while (v17);
    }

    if ((v15 & 0x9FFFFFFD) != 0 && v16 != 3)
    {
      v21 = (v15 >> 29) & 3;
      if (!v21)
      {
        do_conv_map_one_cold_2();
      }

      if ((((v15 >> 29) - 1) & v21) != 0)
      {
        do_conv_map_one_cold_1();
      }

      if (a6)
      {
        *a6 = v21;
      }
    }

    if (v16 > 6)
    {
      result = 2;
    }

    else
    {
      result = dword_296031244[v16];
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _citrus_iconv_std_iconv_init_shared(uint64_t a1)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  v2 = malloc_type_malloc(0x38uLL, 0x10A00402C342355uLL);
  if (!v2)
  {
    return *__error();
  }

  v3 = v2;
  v4 = _citrus_esdb_open();
  if (v4)
  {
    goto LABEL_11;
  }

  v4 = _citrus_esdb_open();
  if (v4)
  {
LABEL_10:
    _citrus_esdb_close();
LABEL_11:
    free(v3);
    return v4;
  }

  v4 = _citrus_stdenc_open();
  if (v4)
  {
LABEL_9:
    _citrus_esdb_close();
    goto LABEL_10;
  }

  v4 = _citrus_stdenc_open();
  if (v4)
  {
LABEL_8:
    v9 = v3[1];
    _citrus_stdenc_close();
    goto LABEL_9;
  }

  v5 = vrev64_s32(*(&v18 + 8));
  v3[4] = 0;
  v6 = v3 + 4;
  v3[6] = v5;
  v3[2] = 0;
  v3[3] = 0xFFFFFFFFLL;
  v3[5] = (v3 + 4);
  v7 = open_srcs((v3 + 4), v16, v17, &v15, v3 + 7);
  if (v7)
  {
    v4 = v7;
    v8 = *v3;
    _citrus_stdenc_close();
    goto LABEL_8;
  }

  if (v15 == 1)
  {
    v15 = 0;
    v11 = *v6;
    v12 = *(*v6 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = *(*v6 + 16);
      do
      {
        ++v13;
        v14 = *v14;
      }

      while (v14);
      v15 = v13;
      if (v13 == 1)
      {
        v3[2] = v12;
        *(v3 + 6) = *(v11 + 32);
      }
    }
  }

  _citrus_esdb_close();
  _citrus_esdb_close();
  v4 = 0;
  *(a1 + 8) = v3;
  return v4;
}

void _citrus_iconv_std_iconv_uninit_shared(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = v1[1];
    _citrus_stdenc_close();
    v3 = *v1;
    _citrus_stdenc_close();
    close_srcs(v1 + 4);

    free(v1);
  }
}

uint64_t _citrus_iconv_std_iconv_getops(uint64_t a1)
{
  v1 = _citrus_iconv_std_iconv_ops;
  v2 = *&off_2A1A8F2B8;
  *(a1 + 32) = off_2A1A8F2C8;
  *a1 = v1;
  *(a1 + 16) = v2;
  return 0;
}

uint64_t open_srcs(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v10 = malloc_type_malloc(0x28uLL, 0x10A0040954427F6uLL);
  if (!v10)
  {
    return *__error();
  }

  v11 = v10;
  v28 = a4;
  v10[2] = 0;
  v10[3] = v10 + 2;
  if (*(a2 + 24) < 1)
  {
    v30 = 0;
LABEL_31:
    free(v11);
    if (v28 && v30)
    {
      *v28 = v30;
    }

    return 2 * (v30 == 0);
  }

  v12 = 0;
  v30 = 0;
  v29 = a1;
  while (1)
  {
    v13 = *(a2 + 32);
    v14 = malloc_type_malloc(0x30uLL, 0x10A00404BBE17DFuLL);
    if (!v14)
    {
      v21 = *__error();
      if (v21)
      {
        goto LABEL_37;
      }

      goto LABEL_22;
    }

    v15 = v14;
    if (*(a3 + 24) >= 1)
    {
      break;
    }

LABEL_20:
    free(v15);
    a1 = v29;
LABEL_22:
    if (v11[2])
    {
      *(v11 + 8) = *(*(a2 + 32) + 16 * v12);
      v25 = *(a1 + 8);
      *v11 = 0;
      v11[1] = v25;
      *v25 = v11;
      *(a1 + 8) = v11;
      v26 = malloc_type_malloc(0x28uLL, 0x10A0040954427F6uLL);
      v11 = v26;
      if (!v26)
      {
        v21 = *__error();
        goto LABEL_37;
      }

      ++v30;
      v26[2] = 0;
      v26[3] = v26 + 2;
    }

    if (++v12 >= *(a2 + 24))
    {
      goto LABEL_31;
    }
  }

  v16 = 0;
  v17 = v13 + 16 * v12;
  while (1)
  {
    v18 = *(v17 + 8);
    v19 = *(*(a3 + 32) + 16 * v16 + 8);
    v20 = _citrus_csmapper_open();
    if (v20)
    {
      v21 = v20;
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_19;
    }

    if (*(MEMORY[0x18] + 8) != 1 || *(MEMORY[0x18] + 16) != 1 || *MEMORY[0x18])
    {
      _citrus_mapper_close();
      v21 = 22;
LABEL_36:
      close_dsts(v11 + 2);
      free(v15);
      a1 = v29;
      goto LABEL_37;
    }

    v15[2] = 0;
    *(v15 + 6) = *(*(a3 + 32) + 16 * v16);
    v15[4] = 0;
    *(v15 + 40) = 0;
    *a5 |= MEMORY[0x40];
    v22 = v11 + 2;
    while (1)
    {
      v22 = *v22;
      if (!v22)
      {
        break;
      }

      if (v22[4])
      {
        v24 = v22 + 1;
        v23 = v22[1];
        *v15 = v22;
        v15[1] = v23;
        goto LABEL_18;
      }
    }

    v24 = v11 + 3;
    v23 = v11[3];
    *v15 = 0;
    v15[1] = v23;
LABEL_18:
    *v23 = v15;
    *v24 = v15;
    v15 = malloc_type_malloc(0x30uLL, 0x10A00404BBE17DFuLL);
    if (!v15)
    {
      break;
    }

LABEL_19:
    if (++v16 >= *(a3 + 24))
    {
      goto LABEL_20;
    }
  }

  v21 = *__error();
  close_dsts(v11 + 2);
  a1 = v29;
  if (!v21)
  {
    goto LABEL_22;
  }

LABEL_37:
  free(v11);
  close_srcs(a1);
  return v21;
}

void close_srcs(void **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      v5 = *i;
    }

    else
    {
      v5 = a1;
    }

    v5[1] = v4;
    *v4 = v3;
    close_dsts(i + 2);
    free(i);
  }
}

void close_dsts(void **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      v5 = *i;
    }

    else
    {
      v5 = a1;
    }

    v5[1] = v4;
    *v4 = v3;
    v6 = i[2];
    _citrus_mapper_close();
    free(i);
  }
}

void init_encoding_state(size_t ***a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    bzero(a1[1], *(*a1)[3]);
    v4 = (*v3)[2];
    if (v4)
    {
      v4(v3, v2);
    }
  }

  v5 = a1[2];
  if (v5)
  {
    v6 = *a1;
    bzero(v5, *v6[3]);
    v7 = (*v6)[2];
    if (v7)
    {

      v7(v6, v5);
    }
  }
}

uint64_t iconv_std_early_fallback(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 2;
  }

  v5 = *v4;
  if (!*v4)
  {
    return 2;
  }

  v9 = *a4;
  v11[0] = a3;
  v11[1] = v9;
  v11[2] = a1;
  v12 = 0;
  v5(*a2, 1, _citrus_iconv_std_write_uc, v11, *(v4 + 32));
  result = v12;
  if (!v12)
  {
    ++*a2;
    *a4 = v11[0] - a3;
  }

  return result;
}

void *restore_encoding_state(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return memcpy(result, *(a1 + 16), **(*a1 + 24));
  }

  return result;
}

uint64_t iconv_std_late_fallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 2;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return 2;
  }

  v8 = *a4;
  v10[0] = a3;
  v10[1] = v8;
  v10[2] = a1;
  v11 = 0;
  v5(a2, _citrus_iconv_std_write_mb, v10, *(v4 + 32));
  result = v11;
  if (!v11)
  {
    *a4 = v10[0] - a3;
  }

  return result;
}

void *_citrus_iconv_std_write_mb(void *__src, size_t __n, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    if (*(a3 + 8) >= __n)
    {
      __src = memcpy(*a3, __src, __n);
      v5 = *(a3 + 8) - __n;
      *a3 += __n;
      *(a3 + 8) = v5;
    }

    else
    {
      *(a3 + 24) = 7;
    }
  }

  return __src;
}

uint64_t _citrus_iconv_std_write_uc(uint64_t result, unint64_t a2, void *a3)
{
  if (!*(a3 + 6))
  {
    v14[7] = v3;
    v14[8] = v4;
    v6 = a2;
    if (a2 >> 31)
    {
      *(a3 + 6) = 7;
      return result;
    }

    v7 = result;
    v8 = a3[2];
    v9 = v8[1];
    v10 = *(*v8 + 8);
    if (v10[7] != 2)
    {
      v13 = a2;
      result = do_conv(v8, v10, 0, result, &v13, 0, 1, 0);
      if (result)
      {
        goto LABEL_6;
      }

      v6 = v13;
    }

    if (v6)
    {
      while (1)
      {
        v14[0] = 0;
        result = (*(**(v9 + 200) + 48))(*(v9 + 200), *a3, a3[1], *v7, *(v9 + 208), v14, *(*v8 + 80));
        if (result != 92)
        {
          goto LABEL_14;
        }

        if ((*(*v8 + 72) & 1) == 0)
        {
          break;
        }

LABEL_16:
        ++v7;
        if (!--v6)
        {
          return result;
        }
      }

      v11 = *a3;
      v14[0] = a3[1];
      result = iconv_std_late_fallback(v8, *v7, v11, v14);
      if (result == 2)
      {
        if (!v10[13])
        {
          result = 2;
LABEL_6:
          *(a3 + 6) = result;
          return result;
        }

        result = (*(**(v9 + 200) + 48))(*(v9 + 200), *a3, a3[1], v10[12], *(v9 + 208), v14, *(*v8 + 80));
      }

LABEL_14:
      if (result)
      {
        goto LABEL_6;
      }

      v12 = a3[1] - v14[0];
      *a3 += v14[0];
      a3[1] = v12;
      goto LABEL_16;
    }
  }

  return result;
}

int *_citrus_iconv_std_write_wc(int *result, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    v3 = *(a3 + 8);
    if (v3 >= 4 * a2)
    {
      if (a2)
      {
        v4 = 4 * a2;
        v5 = *a3;
        do
        {
          v6 = *result++;
          *v5++ = v6;
          --a2;
        }

        while (a2);
        *a3 = v5;
        *(a3 + 8) = v3 - v4;
      }
    }

    else
    {
      *(a3 + 24) = 7;
    }
  }

  return result;
}