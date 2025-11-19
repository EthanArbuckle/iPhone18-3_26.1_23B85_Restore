uint64_t globalbeadapt_SetupDepesInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v11 = a3;
  v12 = a2;
  v240 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  v217 = 0;
  v212 = 0;
  v213 = 0;
  v210 = 0;
  v14 = *(a1 + 106);
  if (*(a1 + 106))
  {
    bzero(v239, v14);
    memset(__b, 32, v14);
    memset(v237, 126, v14);
    memset_pattern16(v236, &unk_1C37BE170, 4 * v14);
  }

  v239[*(a1 + 224)] = 126;
  v239[*(a1 + 226)] = 126;
  if (*(a1 + 256) == 1)
  {
    v239[*(a1 + 228)] = 126;
  }

  v239[*(a1 + 238)] = 126;
  if (*(a1 + 248))
  {
    v15 = *(a1 + 240);
    v239[v15] = 126;
    v236[v15] = 0;
  }

  v228 = 0;
  v226 = 0;
  v227 = 0;
  v225 = 0;
  v223 = 0;
  p_s = 0;
  v222 = 0;
  v218 = 0;
  v219 = 0;
  v216 = 0;
  v211 = 0;
  v209 = 0;
  com_depes_StartWritingToLayers(a1 + 96, a2, a3, a4, a5, a6, a7, a8);
  v16 = (*(*(a1 + 8) + 176))(v12, v11, a4, 0, &v228, &v227);
  if ((v16 & 0x80000000) != 0 || (v16 = (*(*(a1 + 8) + 104))(v12, v11, 2, a4, &v227 + 2), (v16 & 0x80000000) != 0))
  {
    v156 = v16;
    goto LABEL_277;
  }

  v197 = a5;
  v198 = 0;
  v200 = 0;
  v201 = 0;
  v17 = 0;
  v206 = 0;
  v18 = 0;
  v199 = a1 + 208;
  v202 = 0xFFFF;
  v203 = 1;
  v19 = 126;
  while (1)
  {
    v204 = v17;
    if (!HIWORD(v227))
    {
      v157 = *(v199 + 2 * *(a1 + 224));
      if (*(a1 + 248))
      {
        v158 = v203 == 0;
      }

      else
      {
        v158 = 0;
      }

      if (v158)
      {
        if (v217)
        {
          hlp_AddTnTag(a1, v198, v217, v237);
        }

        else if (v17)
        {
          v182 = 0;
          do
          {
            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              goto LABEL_274;
            }
          }

          while (++v182 < v17);
        }
      }

      if (!v200 || (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "◄"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v236, __b, v159, v160, v161, v162, v163), (BacktransPOS & 0x80000000) == 0))
      {
        if (!v201 || (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►"), (BacktransPOS & 0x80000000) == 0) && (BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v236, __b, v164, v165, v166, v167, v168), (BacktransPOS & 0x80000000) == 0))
        {
          if (!*(a1 + 248) || v217 || (v169 = *(v199 + 2 * *(a1 + 224)) - v157) == 0)
          {
LABEL_256:
            v156 = hlp_ConvertOrthographyLayer(a1);
            if ((v156 & 0x80000000) == 0 && *(a1 + 106))
            {
              v174 = 14;
              do
              {
                if (*(a1 + 8 * v174))
                {
                  log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "%s L%d: %s", v171, v172, v173, v197);
                  v175 = *(a1 + 32);
                  v176 = *(a1 + 8 * v174);
                  v177 = strlen(v176);
                  v178 = *(a1 + 16);
                  v179 = *(a1 + 24);
                  v180 = v174 - 14 >= *(a1 + 104) ? (*(v175 + 136))(v178, v179, (v174 - 14), v176, v177) : (*(v175 + 120))(v178, v179, (v174 - 14), v176, v177);
                  v156 = v180;
                  if ((v180 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                v181 = v174 - 13;
                ++v174;
              }

              while (v181 < *(a1 + 106));
            }

            goto LABEL_275;
          }

          v170 = 0;
          while (1)
          {
            BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
            if ((BacktransPOS & 0x80000000) != 0)
            {
              break;
            }

            if (++v170 >= v169)
            {
              goto LABEL_256;
            }
          }
        }
      }

LABEL_274:
      v156 = BacktransPOS;
      goto LABEL_275;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(v12, v11);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v21 = v225;
    if (v225 == 15)
    {
      BacktransPOS = (*(*(a1 + 8) + 168))(v12, v11, HIWORD(v227), 7, 1, &v211, &v227);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v202 = v211;
      v21 = v225;
    }

    v22 = (v21 - 9) < 6 || v21 == 4;
    if (!v22)
    {
      v34 = v206;
      goto LABEL_199;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(v12, v11, HIWORD(v227), 1, 1, &v226 + 2, &v227);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(v12, v11, HIWORD(v227), 2, 1, &v226, &v227);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    HIDWORD(v201) = v226;
    BacktransPOS = (*(*(a1 + 8) + 176))(v12, v11, HIWORD(v227), 5, &p_s, &v227);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    if (*(a1 + 88))
    {
      BacktransPOS = com_mosynt_GetBacktransPOS(*(a1 + 40), *(a1 + 48), *(a1 + 56), p_s, &__s);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      p_s = &__s;
      v23 = strlen(&__s);
      BacktransPOS = (*(*(a1 + 8) + 160))(v12, v11, HIWORD(v227), 5, v23, &__s, &v209);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    BacktransPOS = (*(*(a1 + 8) + 176))(v12, v11, HIWORD(v227), 6, &v223, &v227);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    if (((*(*(a1 + 8) + 184))(v12, v11, HIWORD(v227), 10, &v212) & 0x80000000) != 0 || v212 != 1)
    {
      v218 = "";
    }

    else
    {
      BacktransPOS = (*(*(a1 + 8) + 176))(v12, v11, HIWORD(v227), 10, &v218, &v227);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    strcpy(v221, "~");
    if (((*(*(a1 + 8) + 184))(v12, v11, HIWORD(v227), 9, &v212) & 0x80000000) == 0 && v212 == 1)
    {
      BacktransPOS = (*(*(a1 + 8) + 176))(v12, v11, HIWORD(v227), 9, &v222, &v227);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      if (*v222)
      {
        v221[0] = *v222;
      }
    }

    v215 = 0;
    if (*(a1 + 88) || *(a1 + 264))
    {
      BacktransPOS = (*(*(a1 + 8) + 176))(v12, v11, HIWORD(v227), 13, &v216, &v227);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v24 = *v216;
      if (!*v216)
      {
        v24 = 48;
      }

      LOBYTE(v215) = v24;
    }

    v25 = HIWORD(v227);
    v235 = 0;
    v233 = 0;
    v234 = 0;
    v232 = 0;
    v231 = 0;
    v229 = 0;
    strcpy(v214, "~");
    if (((*(*(a1 + 8) + 184))(v12, v11, HIWORD(v227), 14, &v235 + 2) & 0x80000000) == 0 && HIWORD(v235) == 1)
    {
      BacktransPOS = (*(*(a1 + 8) + 176))(v12, v11, v25, 14, &v234, &v235);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      if (hlp_NLUStrFind(v234, "S_CLASS", &v233, &v232) || hlp_NLUStrFind(v234, "I_CLASS", &v233, &v232) || hlp_NLUStrFind(v234, "E_CLASS", &v233, &v232))
      {
        if (*(a1 + 252))
        {
          v26 = strlen(v233);
          v27 = heap_Alloc(*(*a1 + 8), (v26 + 10));
          if (!v27)
          {
            v156 = 2601525258;
            log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v28, v29, v30, v31, v185);
            goto LABEL_275;
          }

          v32 = v27;
          strcpy(v27, "docclass_");
          strncat(v27, v233, v232);
          v230 = 0;
          v33 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", v32, &v231, &v230, &v229);
          if ((v33 & 0x80000000) != 0)
          {
            v156 = v33;
            heap_Free(*(*a1 + 8), v32);
            goto LABEL_275;
          }

          if (v230 == 1 && v231)
          {
            v214[0] = **v231;
          }

          heap_Free(*(*a1 + 8), v32);
        }

        else
        {
          v214[0] = *v233;
        }
      }
    }

    BacktransPOS = (*(*(a1 + 8) + 176))(v12, v11, HIWORD(v227), 3, &__s1, &v227);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v35 = __s1;
    if (v8)
    {
      v36 = strlen(__s1);
      if (4 * v36 - 125 >= 0xFFFFFFFFFFFFFF7FLL)
      {
        v37 = 128;
      }

      else
      {
        v37 = (4 * v36 + 4);
      }

      v38 = heap_Realloc(*(*a1 + 8), v18, v37);
      if (!v38)
      {
        v156 = 2601525258;
        log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v39, v40, v41, v42, v185);
        goto LABEL_277;
      }

      v35 = v38;
      v43 = __s1;
      if (strstr(__s1, "\\TQ\"))
      {
        *(a1 + 268) = 1;
      }

      if (v225 == 11)
      {
        v195 = v8;
      }

      else
      {
        if (v225 != 13)
        {
LABEL_101:
          v60 = strlen(v43);
          if (v60)
          {
            v61 = 0;
            v62 = 0;
            v63 = (v43 + 1);
            do
            {
              v64 = *(v63 - 1);
              if (v62)
              {
                v62 = v64 != 92;
              }

              else if (v64 != 92 || (v65 = *v63, v62 = 1, v65 != 47) && v65 != 84)
              {
                v62 = 0;
                v66 = v61++;
                v35[v66] = v64;
              }

              ++v63;
              --v60;
            }

            while (v60);
            v60 = v61;
          }

          v35[v60] = 0;
          strcpy(__s1, v35);
          v67 = strlen(__s1);
          v68 = utf8_DepesToUtf8(__s1, v67 + 1, 0, v35, v37, &v210, 0);
          if ((v68 & 0x80000000) != 0 || (v69 = strlen(v35), v68 = (*(*(a1 + 8) + 160))(v12, v11, HIWORD(v227), 3, (v69 + 1), v35, &v227), (v68 & 0x80000000) != 0))
          {
            v156 = v68;
            goto LABEL_276;
          }

          __s1 = v35;
          v18 = v35;
          goto LABEL_114;
        }

        v195 = v8;
        v19 = 126;
      }

      v44 = strlen(v43);
      if (v44)
      {
        v192 = v37;
        v193 = v11;
        v45 = 0;
        v46 = 0;
        v47 = v43 + 1;
        v48 = 1;
        v49 = v19;
        v50 = v19;
        while (1)
        {
          v51 = v43[v45];
          if (v46)
          {
            v46 = v51 != 92;
          }

          else
          {
            if (v51 == 92)
            {
              v52 = &v47[v45];
              v53 = v47[v45];
              if (v53 == 47)
              {
                v50 = 126;
                if (v48 == 1)
                {
                  v49 = 126;
                }

                v46 = 1;
                goto LABEL_81;
              }

              if (v53 == 84)
              {
                for (i = 1; ; i = v55 + 1)
                {
                  v55 = i;
                  v56 = v52[i];
                  if (!v56)
                  {
                    break;
                  }

                  if (v56 == 92)
                  {
                    v52[v55] = 0;
                    v57 = *(a1 + 284);
                    if (*(a1 + 284))
                    {
                      v186 = v50;
                      v187 = v48;
                      v188 = v47;
                      v189 = v49;
                      v190 = v12;
                      v58 = *(a1 + 288);
                      while (1)
                      {
                        v59 = *v58;
                        if (*v58)
                        {
                          if (strlen(*v58) >= 4 && strstr(v59 + 3, v52))
                          {
                            break;
                          }
                        }

                        ++v58;
                        if (!--v57)
                        {
                          v12 = v190;
                          v49 = v189;
                          v50 = v186;
                          v48 = v187;
                          goto LABEL_96;
                        }
                      }

                      v50 = *v59;
                      v48 = v187;
                      v49 = v189;
                      if (v187 == 1)
                      {
                        v49 = *v59;
                      }

                      v12 = v190;
LABEL_96:
                      v47 = v188;
                    }

                    v52[v55] = 92;
                    break;
                  }
                }

                v46 = 1;
                v11 = v193;
                goto LABEL_81;
              }
            }

            v46 = 0;
            v48 = 0;
          }

LABEL_81:
          if (++v45 == v44)
          {
            v43 = __s1;
            LODWORD(v37) = v192;
            goto LABEL_100;
          }
        }
      }

      LOBYTE(v49) = v19;
      v50 = v19;
LABEL_100:
      v221[0] = v49;
      v19 = v50;
      v8 = v195;
      goto LABEL_101;
    }

LABEL_114:
    v34 = v206;
    if (!*v35)
    {
      v17 = v204;
      goto LABEL_199;
    }

    if (*(a1 + 248) && !v203)
    {
      if (v217 && HIWORD(v226) != v213)
      {
        if (HIWORD(v226) > HIWORD(v213))
        {
          hlp_AddTnTag(a1, v198, v217, v237);
          v217 = 0;
        }
      }

      else if (v204)
      {
        v70 = 0;
        do
        {
          BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 240), " ");
          if ((BacktransPOS & 0x80000000) != 0)
          {
            goto LABEL_274;
          }
        }

        while (++v70 < v204);
      }
    }

    v71 = *(a1 + 224);
    v207 = *(v199 + 2 * v71);
    v72 = v225;
    if (v225 != 10 && v200 != 0)
    {
      BacktransPOS = com_depes_AddToLayer((a1 + 96), v71, "◄");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v236, __b, v74, v75, v76, v77, v78);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v200 = 0;
      v72 = v225;
    }

    if (v72 != 11 && v201)
    {
      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v236, __b, v79, v80, v81, v82, v83);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      LODWORD(v201) = 0;
    }

    if (!v203 && (v202 & 0x80000000) == 0)
    {
      v84 = v202 > 1 ? " /" : " #";
      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), v84);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v236, __b, v85, v86, v87, v88, v89);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    LOWORD(v212) = 0;
    if (((*(*(a1 + 8) + 184))(v12, v11, HIWORD(v227), 8, &v212) & 0x80000000) == 0 && v212 == 1)
    {
      BacktransPOS = (*(*(a1 + 8) + 168))(v12, v11, HIWORD(v227), 8, 1, &v212 + 2, &v227);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    if (!v203)
    {
      v93 = HIWORD(v226);
      if (*(v228 + HIWORD(v226) - 1))
      {
        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v228, HIWORD(v226));
        BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 226), (v228 + HIWORD(v226) - (v93 - PreviousUtf8Offset)), (v93 - PreviousUtf8Offset));
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_274;
        }
      }

      else
      {
        log_OutText(*(*a1 + 32), "GLOBALBEADAPT", 5, 0, "unexpected empty orthography when filling depes layer (frompos: %d, topos: %d", v90, v91, v92, HIWORD(v226));
        BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 224), " ", 1, 0);
        if ((BacktransPOS & 0x80000000) != 0)
        {
          goto LABEL_274;
        }
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v236, __b, v95, v96, v97, v98, v99);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    v100 = v225;
    if (v225 == 10 && !v200)
    {
      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "◄");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "/+");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v236, __b, v101, v102, v103, v104, v105);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      v200 = 1;
      v100 = v225;
    }

    if (v100 == 13)
    {
      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "►");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "↕");
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v236, __b, v106, v107, v108, v109, v110);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      LODWORD(v201) = 1;
    }

    v111 = *(a1 + 224);
    v112 = *(v199 + 2 * v111);
    v113 = __s1;
    v114 = strstr(__s1, "▲");
    v219 = v114;
    if (v114)
    {
      *v114 = 0;
      LODWORD(v111) = *(a1 + 224);
      v113 = __s1;
    }

    BacktransPOS = com_depes_AddToLayer((a1 + 96), v111, v113);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 226), (v228 + HIWORD(v226)), v226 - HIWORD(v226));
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v115 = *(a1 + 228);
    v116 = (a1 + 96);
    if (*(a1 + 256) == 1)
    {
      BacktransPOS = com_depes_AddToLayer(v116, v115, p_s);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    else
    {
      BacktransPOS = com_depes_AddToLayerN(v116, v115, p_s, 1);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 230), v223, 1);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 232), v221, 1, v221[0] != 126);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_AddToLayerN((a1 + 96), *(a1 + 234), &v215, 1);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_AddToLayerGen((a1 + 96), *(a1 + 236), v214, 1, 0);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 238), v218);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v236, v239, v117, v118, v119, v120, v121);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      goto LABEL_274;
    }

    v122 = v219;
    if (v219)
    {
      v219[2] = -78;
      *v122 = -26910;
      BacktransPOS = com_depes_AddToLayer((a1 + 96), *(a1 + 224), v219);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }

      BacktransPOS = com_depes_FillToMaxLayerSet(a1 + 96, v236, v239, v123, v124, v125, v126, v127);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        goto LABEL_274;
      }
    }

    v34 = v112;
    v17 = *(v199 + 2 * *(a1 + 224)) - v112;
    if (*(a1 + 248))
    {
      v128 = v112 - v207;
      v129 = v217;
      if (v217 && HIWORD(v226) != v213)
      {
        v203 = 0;
        v134 = v128 + v198 + v17;
      }

      else
      {
        if (v112 != v207)
        {
          v196 = v8;
          v130 = v18;
          v131 = *(v199 + 2 * *(a1 + 224)) - v112;
          v132 = 0;
          while (1)
          {
            v133 = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), " ", 1, 0);
            if ((v133 & 0x80000000) != 0)
            {
              break;
            }

            if (++v132 >= v128)
            {
              v129 = v217;
              v34 = v112;
              v17 = v131;
              v18 = v130;
              v8 = v196;
              goto LABEL_193;
            }
          }

          v156 = v133;
          v18 = v130;
          goto LABEL_275;
        }

LABEL_193:
        v203 = 0;
        v22 = v129 == 0;
        v134 = v198;
        if (!v22)
        {
          v134 = v17;
        }
      }

      v198 = v134;
    }

    else
    {
      v203 = 0;
    }

    v202 = 0xFFFF;
LABEL_199:
    v135 = v225;
    if (v225 == 7 && !v201)
    {
      break;
    }

LABEL_214:
    v206 = v34;
    if (v135 != 6)
    {
      goto LABEL_282;
    }

    BacktransPOS = (*(*(a1 + 8) + 168))(v12, v11, HIWORD(v227), 1, 1, &v213, &v227);
    if ((BacktransPOS & 0x80000000) == 0)
    {
      if (*(a1 + 248) && v217 && v213 > HIWORD(v213))
      {
        hlp_AddTnTag(a1, v198, v217, v237);
        v17 = 0;
        v217 = 0;
      }

      BacktransPOS = (*(*(a1 + 8) + 176))(v12, v11, HIWORD(v227), 4, &v217, &v227);
      if ((BacktransPOS & 0x80000000) == 0)
      {
        BacktransPOS = (*(*(a1 + 8) + 168))(v12, v11, HIWORD(v227), 2, 1, &v213 + 2, &v227);
        v198 = v17;
        if ((BacktransPOS & 0x80000000) == 0)
        {
LABEL_282:
          BacktransPOS = (*(*(a1 + 8) + 120))(v12, v11, HIWORD(v227), &v227 + 2);
          if ((BacktransPOS & 0x80000000) == 0)
          {
            continue;
          }
        }
      }
    }

    goto LABEL_274;
  }

  v136 = v34;
  BacktransPOS = (*(*(a1 + 8) + 168))(v12, v11, HIWORD(v227), 1, 1, &v226 + 2, &v227);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    goto LABEL_274;
  }

  BacktransPOS = (*(*(a1 + 8) + 176))(v12, v11, HIWORD(v227), 4, &v219, &v227);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    goto LABEL_274;
  }

  v205 = v18;
  v137 = v17;
  v138 = __s1;
  if (!__s1 || (v139 = strchr(__s1, 42), HIDWORD(v201) - 1 <= HIWORD(v226)) || (v140 = v139) == 0 || strchr(v139 + 1, 42))
  {
    v141 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "▲");
    if ((v141 & 0x80000000) != 0)
    {
      goto LABEL_233;
    }

    v141 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), v219);
    if ((v141 & 0x80000000) != 0)
    {
      goto LABEL_233;
    }

    v141 = com_depes_AddToLayer((a1 + 96), *(a1 + 224), "▼");
    if ((v141 & 0x80000000) != 0)
    {
      goto LABEL_233;
    }

    v141 = com_depes_FillToMaxLayerSet(a1 + 96, v236, __b, v142, v143, v144, v145, v146);
    if ((v141 & 0x80000000) != 0)
    {
      goto LABEL_233;
    }

LABEL_211:
    if (v217)
    {
      v198 += strlen(v219);
    }

    v17 = v137 + strlen(v219);
    v135 = v225;
    v34 = v136;
    v18 = v205;
    goto LABEL_214;
  }

  v147 = v138 - v140 - v136 + *(v199 + 2 * *(a1 + 224));
  v148 = Utf8_LengthInUtf8chars(v140, v147);
  v141 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), "▲", v147);
  if ((v141 & 0x80000000) == 0)
  {
    v141 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), v219, v147);
    if ((v141 & 0x80000000) == 0)
    {
      v141 = com_depes_InsertBeforeEnd((a1 + 96), *(a1 + 224), "▼", v147);
      if ((v141 & 0x80000000) == 0)
      {
        v191 = v12;
        v194 = v11;
        v149 = 0;
        LOWORD(v12) = *(a1 + 238);
        do
        {
          v150 = *(a1 + 228);
          if (v150 < v12)
          {
            do
            {
              v141 = com_depes_InsertBeforeEnd((a1 + 96), v150, " ", v148);
              if ((v141 & 0x80000000) != 0)
              {
                goto LABEL_233;
              }

              LOWORD(v150) = v150 + 1;
              LODWORD(v12) = *(a1 + 238);
            }

            while (v12 > v150);
          }

          ++v149;
        }

        while (strlen(v219) + 2 > v149);
        v141 = com_depes_FillToMaxLayerSet(a1 + 96, v236, __b, v151, v152, v153, v154, v155);
        v11 = v194;
        v12 = v191;
        if ((v141 & 0x80000000) == 0)
        {
          goto LABEL_211;
        }
      }
    }
  }

LABEL_233:
  v156 = v141;
  v18 = v205;
LABEL_275:
  v35 = v18;
  if (v18)
  {
LABEL_276:
    heap_Free(*(*a1 + 8), v35);
  }

LABEL_277:
  v183 = *MEMORY[0x1E69E9840];
  return v156;
}

uint64_t hlp_AddTnTag(uint64_t a1, unsigned int a2, char *__s, uint64_t a4)
{
  v8 = 2 * strlen(__s) - 2;
  result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "X");
  if (v8 >= a2)
  {
    if ((result & 0x80000000) == 0)
    {
      v14 = strlen(__s);
      result = com_depes_AddToLayerN((a1 + 96), *(a1 + 240), __s + 1, v14 - 2);
      if ((result & 0x80000000) == 0)
      {
        result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "Y");
        if ((result & 0x80000000) == 0)
        {
          v15 = strlen(__s);
          result = com_depes_AddToLayerN((a1 + 96), *(a1 + 240), __s + 1, v15 - 2);
          if ((result & 0x80000000) == 0)
          {

            return com_depes_FillToMaxAllLayers(a1 + 96, a4, v16, v17, v18, v19, v20, v21);
          }
        }
      }
    }
  }

  else if ((result & 0x80000000) == 0)
  {
    v10 = strlen(__s);
    result = com_depes_AddToLayerN((a1 + 96), *(a1 + 240), __s + 1, v10 - 2);
    if ((result & 0x80000000) == 0)
    {
      v11 = 2 * strlen(__s) - 2;
      if ((v11 & 0xFFFEu) >= a2)
      {
LABEL_7:
        result = com_depes_AddToLayer((a1 + 96), *(a1 + 240), "Y");
        if ((result & 0x80000000) == 0)
        {
          v12 = strlen(__s) - 2;
          v13 = *(a1 + 240);

          return com_depes_AddToLayerN((a1 + 96), v13, __s + 1, v12);
        }
      }

      else
      {
        while (1)
        {
          result = com_depes_AddToLayerGen((a1 + 96), *(a1 + 240), "~", 1, 0);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (a2 <= ++v11)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_ConvertOrthographyLayer(uint64_t a1)
{
  v2 = a1 + 176;
  v3 = *(a1 + 176 + 2 * *(a1 + 226));
  if (v3 >= 0x3FFF)
  {
    v4 = -1;
  }

  else
  {
    v4 = 4 * v3;
  }

  v5 = heap_Alloc(*(*a1 + 8), v4);
  if (v5)
  {
    v10 = v5;
    v11 = a1 + 112;
    strcpy(v5, *(a1 + 112 + 8 * *(a1 + 226)));
    v12 = (*(*(a1 + 56) + 104))(*(a1 + 40), *(a1 + 48), "normal", v10, v3);
    v13 = *(*a1 + 8);
    if ((v12 & 0x80000000) != 0)
    {
      heap_Free(v13, v10);
    }

    else
    {
      heap_Free(v13, *(v11 + 8 * *(a1 + 226)));
      v14 = *(a1 + 226);
      *(v11 + 8 * v14) = v10;
      *(v2 + 2 * v14) = v4;
      *(a1 + 2 * *(a1 + 226) + 192) = strlen(v10);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v6, v7, v8, v9, v16);
    return 2601525258;
  }

  return v12;
}

uint64_t globalbeadapt_DoPostprocessing(void *a1, const char *a2, char **a3, int a4)
{
  v7 = a1;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  __s = 0;
  v8 = (*(a1[4] + 128))(a1[2], a1[3], 0, &v116, &v115);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_104;
  }

  v116[v115] = 0;
  v9 = v115;
  if (*a2 == 63 && !v115)
  {
    goto LABEL_104;
  }

  if (a4)
  {
    v8 = utf8_Utf8ToDepes(v116, v115, 0, v116, v115, &v114, 0);
    v9 = v114;
    v115 = v114;
  }

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = v10;
      v12 = v116[v10];
      if (v12 == 126)
      {
        if (v10 < v9)
        {
          do
          {
            v116[v11] = v116[v11 + 1];
            ++v11;
            v9 = v115;
          }

          while (v11 < v115);
        }

        v115 = --v9;
        --v10;
      }

      else if (v12 == 30)
      {
        if (v10 >= v9)
        {
          v14 = 1;
        }

        else
        {
          v13 = v9 - v10 + 1;
          v14 = 1;
          while (v116[v11] != 31)
          {
            ++v11;
            ++v14;
            if (v9 == v11)
            {
              v10 = v9;
              v14 = v13;
              goto LABEL_20;
            }
          }

          v10 = v11;
        }

LABEL_20:
        if ((v10 - v14 + 1) < v9)
        {
          v15 = (v10 - v14 + 1);
          do
          {
            v116[v15] = v116[v15 + v14];
            ++v15;
            v9 = v115;
          }

          while (v15 < v115);
        }

        v9 -= v14;
        v115 = v9;
        v10 -= v14;
      }

      ++v10;
    }

    while (v10 < v9);
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  v116[v16] = 0;
  v17 = v115;
  if (*(v7 + 260) && v115)
  {
    v18 = 0;
    do
    {
      if (v116[v18] == 173)
      {
        v116[v18] = 126;
        v17 = v115;
      }

      ++v18;
    }

    while (v18 < v17);
  }

  v19 = 0;
  if (!a4 || *(v7 + 280) != 1)
  {
    goto LABEL_105;
  }

  if ((v20 = v116, a2[strlen(a2) - 1] != 63) && !strstr(*(v7 + 8 * *(v7 + 224) + 112), "*?") && !*(v7 + 268) || strstr(v20, "\\TQ\"))
  {
LABEL_104:
    v19 = 0;
    goto LABEL_105;
  }

  if (*(v7 + 272) == 1)
  {
    if (*(v7 + 276) == 1)
    {
      v21 = 23;
    }

    else
    {
      v21 = 0;
    }

    v109 = v21;
  }

  else
  {
    v109 = 0;
  }

  v22 = heap_Calloc(*(*v7 + 8), 10, 16);
  if (!v22)
  {
LABEL_103:
    v8 = 2601525258;
    log_OutPublic(*(*v7 + 32), "GLOBALBEADAPT", 66000, 0, v23, v24, v25, v26, v107);
    goto LABEL_104;
  }

  v27 = v22;
  __s2[4] = 0;
  *__s2 = 0;
  if (v17)
  {
    v28 = v17 - 1;
  }

  else
  {
    v28 = 0;
  }

  if (v17 >= 2u)
  {
    while (v20[v28] == 32)
    {
      if (!--v28)
      {
        goto LABEL_91;
      }
    }
  }

  if (!v28)
  {
LABEL_91:
    v8 = 0;
    v19 = 0;
    goto LABEL_176;
  }

  v110 = v7;
  v112 = v20;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v108 = a3;
  v32 = v28;
  v33 = 10;
  do
  {
    if (v32 >= 5 && v20[v32 - 1] == 65 && v20[v32] == 92)
    {
      v34 = &v20[v32];
      v35 = -5;
      while (1)
      {
        if ((v32 + v35) < 1)
        {
          goto LABEL_61;
        }

        if (v34[v35] == 92 && v34[v35 + 1] == 47 && v34[v35 + 2] == 84)
        {
          break;
        }

        if (--v35 == -9)
        {
          goto LABEL_61;
        }
      }

      __s2[4] = 0;
      *__s2 = 0;
      v31 = -4 - v35;
      v49 = v30;
      __strncat_chk();
      LODWORD(v30) = v49;
      v41 = 0;
      v39 = 0;
      v40 = 4;
    }

    else
    {
LABEL_61:
      if (v32 >= (v31 + 3))
      {
        v36 = &v20[(v32 - (v31 + 3))];
        if (*v36 == 92 && v36[1] == 84)
        {
          v37 = v30;
          v38 = strncmp(&v20[(v32 - (v31 + 1))], __s2, v31);
          v30 = v37;
          if (!v38 && v20[v32 - 1] == 65 && v20[v32] == 92)
          {
            v39 = 0;
            v40 = 3;
            v41 = 1;
            goto LABEL_73;
          }
        }
      }

      v42 = v20[v32];
      if (v42 == 32)
      {
        goto LABEL_72;
      }

      if (v42 == 45)
      {
        v41 = 0;
        v40 = 0;
        v39 = 0;
        v29 = (v29 + 1);
        goto LABEL_73;
      }

      if (v109 == v42)
      {
LABEL_72:
        v41 = 0;
        v39 = 0;
        v29 = (v29 + 1);
        v40 = 1;
      }

      else
      {
        if (v42 != 35 && (v42 != 47 || v20[(v32 - 1)] == 92))
        {
          v39 = 0;
          goto LABEL_79;
        }

        v41 = 0;
        v39 = 1;
        v40 = 2;
      }
    }

LABEL_73:
    v43 = v29;
    if (v30 >= v33)
    {
      v44 = v30;
      v45 = heap_Realloc(*(*v110 + 8), v27, 32 * (v33 & 0x7FFF));
      if (v45)
      {
        v33 *= 2;
        v27 = v45;
        LODWORD(v30) = v44;
        goto LABEL_76;
      }

      v7 = v110;
      heap_Free(*(*v110 + 8), v27);
      a3 = v108;
      goto LABEL_103;
    }

LABEL_76:
    v46 = v27;
    v47 = v27 + 16 * v30;
    *v47 = v40;
    *(v47 + 8) = 0;
    *(v47 + 4) = 0;
    v48 = v30;
    __strncat_chk();
    *(v47 + 10) = v31;
    *(v47 + 12) = v32;
    v30 = (v48 + 1);
    if (v41)
    {
      v31 = 0;
      __s2[4] = 0;
      *__s2 = 0;
    }

    v27 = v46;
    v29 = v43;
    v20 = v112;
LABEL_79:
    --v32;
  }

  while (v32 && v29 <= 2 && !v39);
  if (v28 <= v32 || v30)
  {
    if (v30)
    {
      goto LABEL_96;
    }

    a3 = v108;
    v7 = v110;
    goto LABEL_91;
  }

  *v27 = 1;
  *(v27 + 8) = 0;
  *(v27 + 10) = 0;
  *(v27 + 12) = v32;
  LOWORD(v30) = 1;
LABEL_96:
  v50 = v30 - 1;
  v51 = v30;
  if (!v32 && v29 <= 2 && !v39)
  {
    v54 = v27 + 16 * v50;
    v7 = v110;
    v55 = 0;
    if (*v54 != 3)
    {
      *(v54 + 12) = 0;
    }

    goto LABEL_122;
  }

  if (v30 == 1)
  {
    v50 = 0;
    v52 = 1;
    v7 = v110;
  }

  else
  {
    v7 = v110;
    while (1)
    {
      v52 = *(v27 + 16 * v50) == 2;
      if (*(v27 + 16 * v50) != 2)
      {
        break;
      }

      if (!--v50)
      {
        v50 = 0;
        break;
      }
    }
  }

  v56 = v27 + 16 * v50;
  if (!*v56)
  {
LABEL_119:
    v55 = *(v56 + 12) + 1;
    goto LABEL_120;
  }

  if (*v56 != 1)
  {
    v55 = *(v56 + 12);
    goto LABEL_122;
  }

  if (v52)
  {
    v50 = 0;
    goto LABEL_119;
  }

  v101 = v27 + 16 * (v50 - 1);
  v102 = *v101;
  if (*v101 != 1)
  {
    if (v102 == 3)
    {
      LODWORD(v103) = *(v56 + 12);
      if (*(v101 + 12) - v103 == *(v101 + 10) + 4)
      {
        v55 = *(v27 + 16 * (v50 - 1) + 12) - *(v27 + 16 * (v50 - 1) + 10) - 3;
        goto LABEL_185;
      }
    }

    else if (v102 == 4)
    {
      v103 = *(v56 + 12);
      if (*(v101 + 12) - v103 == strlen((v101 + 4)) + 5)
      {
        v55 = *(v27 + 16 * (v50 - 1) + 12) - *(v27 + 16 * (v50 - 1) + 10) - 4;
LABEL_185:
        --v50;
        goto LABEL_122;
      }
    }

    else
    {
      LODWORD(v103) = *(v56 + 12);
    }

    v55 = v103 + 1;
LABEL_120:
    *(v56 + 12) = v55;
    goto LABEL_122;
  }

  if (v50)
  {
    while (1)
    {
      v104 = v27 + 16 * (v50 - 1);
      if (*v104 != 1 || *(v104 + 12) - *(v27 + 16 * v50 + 12) != 1)
      {
        break;
      }

      if (!--v50)
      {
        goto LABEL_190;
      }
    }
  }

  else
  {
LABEL_190:
    v50 = 0;
  }

  v105 = v27 + 16 * v50;
  v106 = *(v105 + 12);
  v55 = v106 + 1;
  *(v105 + 12) = v106 + 1;
LABEL_122:
  v57 = v116;
  v58 = v115;
  v117 = v115;
  if (!v115)
  {
    goto LABEL_168;
  }

  __s = heap_Calloc(*(*v7 + 8), v115, 1);
  if (__s)
  {
    v59 = ~v50 | 0xFFFF0000;
    v60 = v59 + v51;
    if ((v59 + v51) >= 0 && v51 > (~v50 + v51))
    {
      v107 = v55;
      v61 = v27;
      v62 = 0;
      v111 = 16 * (v59 + v51);
      v63 = v61;
      v64 = v61 - 16 * v60 + 16 * v51;
      while (1)
      {
        v118 = 0uLL;
        v65 = (v64 + v62);
        *__s2 = *(v64 + v62 - 16);
        if (!v62)
        {
          break;
        }

        if (*__s2 == 4)
        {
          inserted = hlp_insert_question_Tag(v7, &__s, &v117, 3, &__s2[4]);
          if ((inserted & 0x80000000) != 0)
          {
            goto LABEL_195;
          }

          if (v60 + 1 >= v51)
          {
            if ((v58 - 1) > *&__s2[12])
            {
              v121 = 0;
              v120 = 0;
              v67 = &v120;
              goto LABEL_148;
            }
          }

          else
          {
            v118 = *(v64 + v62 - 32);
            if (v118 <= 1 && !BYTE4(v118))
            {
              v70 = &v118;
              goto LABEL_145;
            }
          }
        }

        else if (*__s2 == 3)
        {
          if (v111 != v62)
          {
            v118 = *v65;
            if (v118 <= 1 && !BYTE4(v118))
            {
              inserted = hlp_insert_question_Tag(v7, &__s, &v117, 1, &v118 + 4);
              if ((inserted & 0x80000000) != 0)
              {
LABEL_195:
                v8 = inserted;
                goto LABEL_175;
              }
            }
          }

LABEL_138:
          v67 = &__s2[4];
          v68 = v7;
          v69 = 2;
          goto LABEL_151;
        }

LABEL_152:
        v71 = *(v65 - 4);
        v72 = v64 + v62;
        v73 = *(v64 + v62 - 4);
        if (v60 >= v51 - 1)
        {
          if (v71 == 4)
          {
            ++v73;
          }

          v81 = v73;
          v83 = v7;
          v84 = v57;
          v82 = v58;
        }

        else
        {
          v74 = *(v72 - 32);
          v75 = *(v72 - 22);
          v76 = *(v72 - 20);
          if ((v71 - 3) < 2)
          {
            ++v73;
          }

          v77 = v76 - v75;
          v78 = v76 - v75 - 5;
          v79 = v77 - 4;
          if (v74 != 3)
          {
            v79 = v76;
          }

          if (v74 == 4)
          {
            v79 = v78;
          }

          v80 = v76 - 1;
          if (v74 <= 1)
          {
            v79 = v80;
          }

          v81 = v73;
          v82 = v79;
          v83 = v7;
          v84 = v57;
        }

        v85 = hlp_insert_phonemes(v83, &__s, &v117, v84, v81, v82);
        v8 = v85;
        if ((v85 & 0x80000000) == 0)
        {
          ++v60;
          v62 -= 16;
          if (v51 != v60)
          {
            continue;
          }
        }

        v27 = v63;
        LOWORD(v55) = v107;
        if ((v85 & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        v19 = 0;
        a3 = v108;
        goto LABEL_176;
      }

      if (__s2[4])
      {
        if (*__s2 == 4)
        {
          v67 = &__s2[4];
          v68 = v7;
          v69 = 5;
        }

        else
        {
          if (*__s2 == 3)
          {
            goto LABEL_138;
          }

          v67 = &__s2[4];
          v68 = v7;
          v69 = 4;
        }
      }

      else
      {
        v70 = __s2;
LABEL_145:
        v67 = v70 + 4;
LABEL_148:
        v68 = v7;
        v69 = 0;
      }

LABEL_151:
      v8 = hlp_insert_question_Tag(v68, &__s, &v117, v69, v67);
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_175;
      }

      goto LABEL_152;
    }

LABEL_168:
    v86 = __s;
    v87 = strlen(__s);
    v88 = heap_Calloc(*(*v7 + 8), v87 + v55 + 1, 1);
    v19 = v88;
    a3 = v108;
    if (v88)
    {
      v93 = strncat(v88, v116, v55);
      strncat(v93, v86, v87);
      v100 = com_depes_PrepareLayersForLen((v7 + 96), (v55 + v87), v94, v95, v96, v97, v98, v99);
      if ((v100 & 0x80000000) == 0)
      {
        v100 = (*(*(v7 + 32) + 120))(*(v7 + 16), *(v7 + 24), 0, v19, (v55 + v87 + 1));
        if ((v100 & 0x80000000) == 0)
        {
          v100 = (*(*(v7 + 32) + 128))(*(v7 + 16), *(v7 + 24), 0, &v116, &v115);
        }
      }

      v8 = v100;
    }

    else
    {
      v8 = 2601525258;
      log_OutPublic(*(*v7 + 32), "GLOBALBEADAPT", 66000, 0, v89, v90, v91, v92, v107);
    }

    goto LABEL_176;
  }

  v63 = v27;
  v8 = 2601525258;
LABEL_175:
  v19 = 0;
  a3 = v108;
  v27 = v63;
LABEL_176:
  heap_Free(*(*v7 + 8), v27);
LABEL_105:
  if (__s)
  {
    heap_Free(*(*v7 + 8), __s);
  }

  if (v19)
  {
    heap_Free(*(*v7 + 8), v19);
  }

  *a3 = v116;
  return v8;
}

uint64_t globalbeadapt_SplitWordRecordsWithSpecialChar(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v93[0] = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v88 = 0;
  __s = 0;
  *v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  __strcpy_chk();
  __strcat_chk();
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v12 = hlp_dynstr_init(*a1, &v76, 0x20u, 16);
  if ((v12 & 0x80000000) != 0 || (v12 = hlp_dynstr_init(*a1, &v78, 0x20u, 16), (v12 & 0x80000000) != 0) || (v12 = (*(a1[1] + 104))(a2, a3, 2, a4, v93), (v12 & 0x80000000) != 0))
  {
    v66 = v12;
    v18 = 0;
    goto LABEL_130;
  }

  v72 = a4;
  v73 = strlen(a5) + 1;
  v13 = heap_Alloc(*(*a1 + 8), v73);
  if (!v13)
  {
    v66 = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v14, v15, v16, v17, v71);
    return v66;
  }

  v18 = v13;
  while (1)
  {
    v19 = a1[1];
    if (!v93[0])
    {
      v69 = *(v19 + 160);
      v70 = strlen(a5);
      v20 = v69(a2, a3, v72, 0, (v70 + 1), a5, &v91);
LABEL_139:
      v66 = v20;
      goto LABEL_130;
    }

    v20 = (*(v19 + 168))(a2, a3);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v21 = v92 > 0xA || ((1 << v92) & 0x610) == 0;
    if (!v21)
    {
      break;
    }

LABEL_125:
    v66 = (*(a1[1] + 120))(a2, a3, v93[0], v93);
    if ((v66 & 0x80000000) != 0)
    {
      goto LABEL_130;
    }
  }

  v20 = (*(a1[1] + 168))(a2, a3, v93[0], 1, 1, &v83 + 2, &v91 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  v20 = (*(a1[1] + 168))(a2, a3, v93[0], 2, 1, &v83, &v91 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  v20 = (*(a1[1] + 176))(a2, a3, v93[0], 3, &v90, &v91 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  v22 = v90;
  if (v90)
  {
    v23 = 0;
    do
    {
      ++v23;
      v24 = strchr(v22, 23);
      v22 = v24 + 1;
    }

    while (v24);
  }

  else
  {
    v23 = 0;
  }

  v88 = &a5[HIWORD(v83)];
  __s = 0;
  v25 = (v83 - HIWORD(v83));
  strncpy(v18, v88, v25);
  v26 = 0;
  v18[v25] = 0;
  v27 = v18;
  do
  {
    __s = v27;
    ++v26;
    hlp_SearchMorph(a6, v75, &__s);
    v27 = __s + 1;
  }

  while (__s);
  v20 = (*(a1[1] + 176))(a2, a3, v93[0], 5, &v87, &v91 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  v20 = (*(a1[1] + 168))(a2, a3, v93[0], 7, 1, &v82 + 2, &v91 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  HIWORD(v81) = 0;
  *v86 = 0;
  if (((*(a1[1] + 184))(a2, a3, v93[0], 14, &v81 + 2) & 0x80000000) == 0 && HIWORD(v81) == 1)
  {
    v20 = (*(a1[1] + 176))(a2, a3, v93[0], 14, v86, &v91 + 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }
  }

  HIWORD(v81) = 0;
  v85 = 0;
  if (((*(a1[1] + 184))(a2, a3, v93[0], 9, &v81 + 2) & 0x80000000) == 0 && HIWORD(v81) == 1)
  {
    v20 = (*(a1[1] + 176))(a2, a3, v93[0], 9, &v85, &v91 + 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }
  }

  LOWORD(v81) = 0;
  LOWORD(v82) = 0;
  if (((*(a1[1] + 184))(a2, a3, v93[0], 8, &v81) & 0x80000000) == 0 && v81 == 1)
  {
    v20 = (*(a1[1] + 168))(a2, a3, v93[0], 8, 1, &v82, &v91 + 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }
  }

  HIWORD(v80) = 0;
  if (((*(a1[1] + 184))(a2, a3, v93[0], 13, &v80 + 2) & 0x80000000) == 0 && HIWORD(v80) == 1)
  {
    v20 = (*(a1[1] + 176))(a2, a3, v93[0], 13, &v84, &v91 + 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }
  }

  if (v23 < 2u || v26 < v23)
  {
    v35 = v83;
LABEL_115:
    if (HIWORD(v83) <= 1u)
    {
      v63 = 1;
    }

    else
    {
      v63 = HIWORD(v83);
    }

    if (v63 < v35)
    {
      v64 = &a5[v63];
      v65 = v63 + 1;
      do
      {
        if (*v64 == 95 && !memchr(";:,", *(v64 - 1), 4uLL))
        {
          *v64 = 45;
        }

        ++v64;
        v21 = v35 == v65++;
      }

      while (!v21);
    }

    goto LABEL_125;
  }

  if (*v86)
  {
    v20 = hlp_dynstr_add(*a1, &v76, *v86, 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v20 = hlp_dynstr_add(*a1, &v78, *v86, 2);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    if (!hlp_NLUStrExist(*v86, "S_PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(v78, "S_PUNC");
      hlp_NLUStrRemoveKeyVal(v76, "S_PUNC");
    }

    if (!hlp_NLUStrExist(*v86, "PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(*v86, "PUNC");
      hlp_NLUStrRemoveKeyVal(v78, "PUNC");
    }

    if (!hlp_NLUStrExist(*v86, "BNDSHAPE"))
    {
      hlp_NLUStrRemoveKeyVal(*v86, "BNDSHAPE");
      hlp_NLUStrRemoveKeyVal(v78, "BNDSHAPE");
    }

    if (!hlp_NLUStrExist(*v86, "E_PUNC"))
    {
      hlp_NLUStrRemoveKeyVal(*v86, "E_PUNC");
      hlp_NLUStrRemoveKeyVal(v78, "E_PUNC");
    }
  }

  v28 = v90;
  v29 = strlen(v90) + 1;
  if (v73 >= v29)
  {
LABEL_53:
    v36 = strcpy(v18, v28);
    v37 = strchr(v36, 23);
    __s = v37;
    if (v37)
    {
      *v37 = 0;
      __s = v37 + 1;
    }

    v38 = HIWORD(v83);
    v88 = &a5[HIWORD(v83)];
    v39 = a5[v83];
    a5[v83] = 0;
    v40 = hlp_SearchMorph(a6, v75, &v88);
    v41 = v88 - a5;
    LOWORD(v83) = v88 - a5;
    if (v40 && v38 < v41)
    {
      do
      {
        if (a5[v38] == 95)
        {
          a5[v38] = 45;
        }

        ++v38;
      }

      while (v38 < v41);
    }

    HIWORD(v83) = v41 + 1;
    v20 = (*(a1[1] + 160))(a2, a3, v93[0], 2, 1, &v83, &v91);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v71 = v39;
    v42 = strlen(v18);
    v20 = (*(a1[1] + 160))(a2, a3, v93[0], 3, (v42 + 1), v18, &v91);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    if (v81 == 1)
    {
      v20 = (*(a1[1] + 160))(a2, a3, v93[0], 8, 1, &v80, &v91);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_139;
      }
    }

    if (HIWORD(v80) == 1)
    {
      if (*v84 == 48 && !v84[1])
      {
        v67 = strlen(v84);
        v20 = (*(a1[1] + 160))(a2, a3, v93[0], 13, (v67 + 1), v84, &v91);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }
      }

      else
      {
        v20 = (*(a1[1] + 160))(a2, a3, v93[0], 13, 2, "1", &v91);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }
      }
    }

    v43 = __s;
    v44 = strchr(__s, 23);
    if (v44)
    {
      v45 = v44;
      v74 = v78;
      do
      {
        *v45 = 0;
        v20 = (*(a1[1] + 80))(a2, a3, v93[0], v93);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v20 = (*(a1[1] + 160))(a2, a3, v93[0], 0, 1, &v92, &v91);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v20 = (*(a1[1] + 160))(a2, a3, v93[0], 1, 1, &v83 + 2, &v91);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v46 = HIWORD(v83);
        v88 = &a5[HIWORD(v83)];
        v47 = hlp_SearchMorph(a6, v75, &v88);
        v48 = v88 - a5;
        LOWORD(v83) = v88 - a5;
        if (v47 && v46 < v48)
        {
          do
          {
            if (a5[v46] == 95)
            {
              a5[v46] = 45;
            }

            ++v46;
          }

          while (v46 < v48);
        }

        HIWORD(v83) = v48 + 1;
        v20 = (*(a1[1] + 160))(a2, a3, v93[0], 2, 1, &v83, &v91);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v49 = strlen(v43);
        v20 = (*(a1[1] + 160))(a2, a3, v93[0], 3, (v49 + 1), v43, &v91);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v50 = strlen(v87);
        v20 = (*(a1[1] + 160))(a2, a3, v93[0], 5, (v50 + 1), v87, &v91);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        v20 = (*(a1[1] + 160))(a2, a3, v93[0], 7, 1, &v82 + 2, &v91);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_139;
        }

        if (v81 == 1)
        {
          v20 = (*(a1[1] + 160))(a2, a3, v93[0], 8, 1, &v80, &v91);
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_139;
          }
        }

        if (HIWORD(v80) == 1)
        {
          if (*v84 == 48 && !v84[1])
          {
            v53 = strlen(v84);
            v20 = (*(a1[1] + 160))(a2, a3, v93[0], 13, (v53 + 1), v84, &v91);
            if ((v20 & 0x80000000) != 0)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v20 = (*(a1[1] + 160))(a2, a3, v93[0], 13, 2, "1", &v91);
            if ((v20 & 0x80000000) != 0)
            {
              goto LABEL_139;
            }
          }
        }

        if (v74)
        {
          v51 = strlen(v74);
          v20 = (*(a1[1] + 160))(a2, a3, v93[0], 14, (v51 + 1), v74, &v91);
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_139;
          }
        }

        if (v85)
        {
          v52 = strlen(v85);
          v20 = (*(a1[1] + 160))(a2, a3, v93[0], 9, (v52 + 1), v85, &v91);
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_139;
          }
        }

        v43 = v45 + 1;
        __s = v45 + 1;
        v45 = strchr(v45 + 1, 23);
      }

      while (v45);
    }

    v20 = (*(a1[1] + 80))(a2, a3, v93[0], v93);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v20 = (*(a1[1] + 160))(a2, a3, v93[0], 0, 1, &v92, &v91);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v20 = (*(a1[1] + 160))(a2, a3, v93[0], 1, 1, &v83 + 2, &v91);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v54 = HIWORD(v83);
    v55 = &a5[HIWORD(v83)];
    v88 = v55;
    v56 = strchr(v55, 32);
    v57 = v56 ? v56 - a5 : v54 + strlen(v55);
    LOWORD(v83) = v57;
    v20 = (*(a1[1] + 160))(a2, a3, v93[0], 2, 1, &v83, &v91);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v58 = strlen(v43);
    v20 = (*(a1[1] + 160))(a2, a3, v93[0], 3, (v58 + 1), v43, &v91);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v59 = strlen(v87);
    v20 = (*(a1[1] + 160))(a2, a3, v93[0], 5, (v59 + 1), v87, &v91);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    v20 = (*(a1[1] + 160))(a2, a3, v93[0], 7, 1, &v82 + 2, &v91);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_139;
    }

    if (v81 == 1)
    {
      v20 = (*(a1[1] + 160))(a2, a3, v93[0], 8, 1, &v82, &v91);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_139;
      }
    }

    if (HIWORD(v80) == 1)
    {
      v60 = strlen(v84);
      v20 = (*(a1[1] + 160))(a2, a3, v93[0], 13, (v60 + 1), v84, &v91);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_139;
      }
    }

    if (v76)
    {
      v61 = strlen(v76);
      v20 = (*(a1[1] + 160))(a2, a3, v93[0], 14, (v61 + 1), v76, &v91);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_139;
      }
    }

    if (v85)
    {
      v62 = strlen(v85);
      v20 = (*(a1[1] + 160))(a2, a3, v93[0], 9, (v62 + 1), v85, &v91);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_139;
      }
    }

    v35 = v83;
    a5[v83] = v71;
    goto LABEL_115;
  }

  v30 = heap_Realloc(*(*a1 + 8), v18, v29);
  __s = v30;
  if (v30)
  {
    v28 = v90;
    v18 = v30;
    v73 = v29;
    goto LABEL_53;
  }

  v66 = 2601525258;
  log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v31, v32, v33, v34, v71);
LABEL_130:
  if (v76)
  {
    heap_Free(*(*a1 + 8), v76);
    v76 = 0;
  }

  LODWORD(v77) = 0;
  if (v78)
  {
    heap_Free(*(*a1 + 8), v78);
    v78 = 0;
  }

  LODWORD(v79) = 0;
  if (v18)
  {
    heap_Free(*(*a1 + 8), v18);
  }

  return v66;
}

uint64_t hlp_SearchMorph(const char *a1, const char *a2, char **a3)
{
  v4 = *a3;
  if (*a1 && (v6 = strstr(*a3, a2)) != 0)
  {
    v7 = &v6[strlen(a1)];
    v8 = 1;
  }

  else
  {
    v7 = strchr(v4, 95);
    v8 = 0;
  }

  *a3 = v7;
  return v8;
}

uint64_t globalbeadapt_RemoveSpecialChar(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v28 = 0;
  v29 = 0;
  __s = 0;
  v7 = (*(a1[1] + 104))(a2, a3, 2, a4, &v30);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v30;
    if (v30)
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = (*(a1[1] + 168))(a2, a3, v8, 0, 1, &v29, &v28 + 2);
        if ((v11 & 0x80000000) != 0)
        {
          break;
        }

        if (v29 <= 0xA && ((1 << v29) & 0x610) != 0)
        {
          v11 = (*(a1[1] + 176))(a2, a3, v30, 3, &__s, &v28 + 2);
          if ((v11 & 0x80000000) != 0)
          {
            break;
          }

          v13 = __s;
          v14 = strlen(__s) + 1;
          if (v9 < v14)
          {
            v15 = heap_Realloc(*(*a1 + 8), v10, v14);
            if (!v15)
            {
              log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v16, v17, v18, v19, v26);
              v7 = 2601525258;
              if (!v10)
              {
                return v7;
              }

LABEL_22:
              heap_Free(*(*a1 + 8), v10);
              return v7;
            }

            v13 = __s;
            v10 = v15;
            v9 = v14;
          }

          v20 = strcpy(v10, v13);
          v21 = strchr(v20, 23);
          if (v21)
          {
            v22 = v21;
            do
            {
              v23 = strlen(v22);
              memmove(v22, v22 + 1, v23);
              v22 = strchr(v22, 23);
            }

            while (v22);
          }

          v24 = strlen(v10);
          v11 = (*(a1[1] + 160))(a2, a3, v30, 3, (v24 + 1), v10, &v28);
          if ((v11 & 0x80000000) != 0)
          {
            break;
          }
        }

        v7 = (*(a1[1] + 120))(a2, a3, v30, &v30);
        if ((v7 & 0x80000000) == 0)
        {
          v8 = v30;
          if (v30)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      v7 = v11;
LABEL_21:
      if (!v10)
      {
        return v7;
      }

      goto LABEL_22;
    }
  }

  return v7;
}

void *globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(void *result)
{
  v1 = result;
  v2 = *(result + 142);
  if (*(result + 142) && result[36])
  {
    v3 = 0;
    do
    {
      v4 = *(v1[36] + 8 * v3);
      if (v4)
      {
        heap_Free(*(*v1 + 8), v4);
        v2 = *(v1 + 142);
      }

      ++v3;
    }

    while (v3 < v2);
    result = heap_Free(*(*v1 + 8), v1[36]);
  }

  *(v1 + 142) = 0;
  v1[36] = 0;
  return result;
}

uint64_t globalbeadapt_Init_SpecialSymbolsFromPhonmap(uint64_t a1)
{
  v26 = 0;
  v25 = 0;
  globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(a1);
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v25);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  if (!*(a1 + 80))
  {
    return Str;
  }

  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(*(a1 + 64), *(a1 + 72), NullHandle, v4))
  {
    return Str;
  }

  v26 = 0;
  v5 = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a1 + 284, &v26, 0);
  if ((v5 & 0x80000000) != 0)
  {
    Str = v5;
LABEL_30:
    globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(a1);
    return Str;
  }

  v6 = heap_Alloc(*(*a1 + 8), v26 + 1);
  if (!v6)
  {
    Str = 2601525258;
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 64000, 0, v7, v8, v9, v10, v25);
    goto LABEL_30;
  }

  v11 = v6;
  Str = (*(*(a1 + 80) + 144))(*(a1 + 64), *(a1 + 72), a1 + 284, &v26, v6);
  if ((Str & 0x80000000) == 0)
  {
    v12 = heap_Calloc(*(*a1 + 8), *(a1 + 284), 8);
    *(a1 + 288) = v12;
    if (v12)
    {
      if (*v11)
      {
        v17 = 0;
        v18 = v11;
        while (v17 < *(a1 + 284))
        {
          v19 = strchr(v18, 44);
          v20 = v19;
          if (v19)
          {
            *v19 = 0;
          }

          if (strlen(v18) != 3)
          {
            Str = 2601525248;
            break;
          }

          v26 = 0;
          v21 = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), 2, "alphabet", &v26, 0, v18);
          if ((v21 & 0x80000000) != 0)
          {
            Str = 0;
            v26 = 0;
            v22 = 4;
          }

          else
          {
            Str = v21;
            v22 = v26 + 4;
          }

          *(*(a1 + 288) + 8 * v17) = heap_Calloc(*(*a1 + 8), 1, v22);
          if (!*(*(a1 + 288) + 8 * v17))
          {
            goto LABEL_28;
          }

          if (LH_stricmp(v25, v18))
          {
            v23 = __tolower(*v18);
          }

          else
          {
            v23 = 126;
          }

          **(*(a1 + 288) + 8 * v17) = v23;
          strcpy((*(*(a1 + 288) + 8 * v17) + 1), ": ");
          if (!v26 || (Str = (*(*(a1 + 80) + 152))(*(a1 + 64), *(a1 + 72), 2, "alphabet", &v26, *(*(a1 + 288) + 8 * v17) + 3, v18), (Str & 0x80000000) == 0))
          {
            if (v20)
            {
              v18 = v20 + 1;
              ++v17;
              if (*v11)
              {
                continue;
              }
            }
          }

          break;
        }
      }
    }

    else
    {
LABEL_28:
      Str = 2601525258;
      log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 64000, 0, v13, v14, v15, v16, v25);
    }
  }

  heap_Free(*(*a1 + 8), v11);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  return Str;
}

uint64_t hlp_insert_question_Tag(uint64_t a1, const char **a2, unsigned int *a3, int a4, char *__s)
{
  v22 = *MEMORY[0x1E69E9840];
  strlen(__s);
  __sa[0] = 0;
  if (a4 > 1)
  {
    if (a4 == 4)
    {
      __strncat_chk();
      __strncat_chk();
    }

    goto LABEL_5;
  }

  if (a4 > 1)
  {
LABEL_5:
    __strncat_chk();
    __strncat_chk();
  }

  __strncat_chk();
  v9 = *a2;
  v10 = strlen(*a2);
  v11 = strlen(__sa);
  v12 = v11 + v10;
  if (v12 < *a3 || (v13 = 2 * v12 * *a3, *a3 = v13, v9 = heap_Realloc(*(*a1 + 8), v9, v13), (*a2 = v9) != 0))
  {
    strncat(v9, __sa, v11);
    result = 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v14, v15, v16, v17, v20);
    result = 2601525258;
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t hlp_insert_phonemes(uint64_t a1, const char **a2, unsigned int *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a6 - a5;
  if (a6 < a5)
  {
    return 0;
  }

  v14 = v7 + 1;
  v15 = *a2;
  v16 = strlen(*a2) + (v7 + 1);
  if (v16 < *a3 || (v17 = 2 * v16 * *a3, *a3 = v17, v15 = heap_Realloc(*(*a1 + 8), v15, v17), (*a2 = v15) != 0))
  {
    strncat(v15, (a4 + a5), v14);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "GLOBALBEADAPT", 66000, 0, v18, v19, v20, v21, v6);
    return 2601525258;
  }
}

BOOL marker_IsReadoutControlDefaultArg(int a1, unsigned int a2, uint64_t a3, int a4)
{
  result = 0;
  if (a1 > 30)
  {
    if (a1 != 31)
    {
      if (a1 != 36)
      {
        return result;
      }

      goto LABEL_7;
    }

    return a2 == a4;
  }

  else
  {
    if (a1 != 7)
    {
      if (a1 != 21)
      {
        return result;
      }

LABEL_7:
      if (!a3)
      {
        return 0;
      }

      v6 = (a3 + a2);
      MarkerArgStr = marker_getMarkerArgStr(1u);
      return strcmp(v6, MarkerArgStr) == 0;
    }

    return a2 == 15;
  }
}

unint64_t marker_GetArgOfLastOfType(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v5 = a1 + (a2 << 6);
  v6 = *(v5 + 20);
  result = *(v5 + 40);
  if (v6 == 7)
  {
    v8 = result == 43;
    if (a3 > (a2 + 1))
    {
      v9 = result == 43;
      v10 = (a1 + ((a2 + 1) << 6) + 20);
      v11 = (a2 + 1) + 1;
      do
      {
        if (*v10 == 7)
        {
          v12 = v10[5];
          v13 = !v9;
          if (v9)
          {
            v14 = result & 0xFFFFFFFF00000000 | 0xF;
          }

          else
          {
            v14 = result;
          }

          v15 = v13;
          if (v12 == 43)
          {
            result = v14;
          }

          else
          {
            result = result & 0xFFFFFFFF00000000 | v12;
          }

          if (v12 == 43)
          {
            v9 = v15;
          }

          else
          {
            v9 = 0;
          }

          if (a4 == 1)
          {
            *v10 = 999;
          }
        }

        v10 += 16;
        v13 = a3 == v11++;
      }

      while (!v13);
      v8 = v9;
    }

    if (v8)
    {
      return result & 0xFFFFFFFF00000000 | 0xF;
    }
  }

  else if (a3 > (a2 + 1))
  {
    v16 = (a2 + 1);
    v17 = a1 + (v16 << 6) + 20;
    v18 = v16 + 1;
    do
    {
      if (*v17 == v6)
      {
        result = *(v17 + 20);
        if (a4 == 1)
        {
          *v17 = 999;
        }
      }

      v17 += 64;
      v13 = a3 == v18++;
    }

    while (!v13);
  }

  return result;
}

uint64_t marker_CheckForEmptyMarkers(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  if (a4 >= 2)
  {
    v12 = a7;
    v13 = a6;
    v22 = (a5 + 28);
    v14 = 1;
    while (1)
    {
      v15 = a3 + (v14 << 6);
      v16 = *(v15 + 20);
      if (v16 != 999 && v16 != 0x4000)
      {
        if (*v15 == 1)
        {
          if (!a6)
          {
            v17 = v16 > 0x24 || ((1 << v16) & 0x1080200080) == 0;
            if (!v17 && !marker_IsReadoutControlDefaultArg(v16, *(v15 + 40), a1, a2) && *v15 != 1)
            {
              return 0;
            }
          }
        }

        else
        {
          if (!a6)
          {
            goto LABEL_21;
          }

          v18 = 0;
          v19 = v22;
          while (v18 <= v12 || v16 != *(v19 - 2) || *(v15 + 24) != *(v19 - 1) || *(v15 + 28) != *v19)
          {
            ++v18;
            v19 += 16;
            if (v18 >= v13)
            {
              goto LABEL_21;
            }
          }

          if (!*(v19 - 7))
          {
LABEL_21:
            v20 = 0;
            if (v16 > 0x24 || ((1 << v16) & 0x1080200080) == 0)
            {
              return v20;
            }

            if (!marker_IsReadoutControlDefaultArg(v16, *(v15 + 40), a1, a2))
            {
              return 0;
            }
          }
        }
      }

      if (a4 <= ++v14)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t marker_TraceTxt(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v26 = 0;
  if (!a3)
  {
    return 0;
  }

  v14 = datac_RequestBlock(a5, a6, 1u, &v26);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = *(v26 + 16);
    if (!*(v26 + 16))
    {
      v16 = *(a4 + 32);
      v17 = "(Txt) (%s) (tag=%d) len=%d (EMPTY TXT)";
      goto LABEL_8;
    }

    if (v15 >= 0x400)
    {
      v16 = *(a4 + 32);
      v25 = *(v26 + 16);
      v17 = "(Txt) (%s) (tag=%d) len=%d (TXT TOO LONG)";
LABEL_8:
      log_OutText(v16, a2, 5, 0, v17, v11, v12, v13, a7);
      return v14;
    }

    v18 = heap_Calloc(*(a4 + 8), 1, v15 + 2);
    if (v18)
    {
      v19 = v18;
      v20 = strncpy(v18, *(v26 + 8), *(v26 + 16));
      v20[*(v26 + 16)] = 0;
      *(v26 + 16);
      log_OutText(*(a4 + 32), a2, 5, 0, "(Txt) (%s) (tag=%d) len=%d (UTF8) %s", v21, v22, v23, a7);
      heap_Free(*(a4 + 8), v19);
    }

    else
    {
      return (a1 << 20) | 0x8000200A;
    }
  }

  return v14;
}

uint64_t marker_TraceMrk(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{
  v56 = a8;
  v67 = *MEMORY[0x1E69E9840];
  v65 = 0;
  if (!a3)
  {
    v16 = 0;
    goto LABEL_63;
  }

  v10 = a6;
  v15 = a9;
  log_OutText(*(a4 + 32), a2, 5, 0, "(Mrk) (%s) (tag=%d)", a6, a7, a8, a7);
  if (a9)
  {
    v16 = 0;
    v57 = 0;
    v17 = a10;
    if (!a10)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v16 = datac_RequestBlock(a5, v10, 1u, &v65);
    v57 = *(v65 + 8);
    v17 = *(v65 + 16);
    if (!*(v65 + 16))
    {
      goto LABEL_63;
    }
  }

  v53 = a1;
  v54 = v16;
  v18 = 0;
  __s = 0;
  v58 = v17;
  do
  {
    if (v15)
    {
      v66[0] = 0;
      v19 = v15 + (v18 << 6);
      v20 = *(v19 + 40);
      v22 = *(v19 + 20);
      v21 = *(v19 + 24);
      v63 = *(v19 + 28);
      v59 = *(v19 + 36);
      v61 = *(v19 + 32);
      if (v22 == 32)
      {
        if (v20 == 1)
        {
          v23 = 49;
        }

        else
        {
          v23 = 48;
        }

        *v66 = v23;
        v22 = 32;
LABEL_29:
        marker_getString(v22);
        goto LABEL_30;
      }
    }

    else
    {
      v24 = v57 + (v18 << 6);
      v22 = *(v24 + 20);
      v25 = *(v24 + 24);
      v64 = *(v24 + 28);
      v62 = *(v24 + 32);
      v60 = *(v24 + 36);
      v26 = *(v24 + 56);
      v20 = *(v24 + 40);
      if (*(v24 + 48))
      {
        v27 = strlen(*(v24 + 48));
        if ((v27 & 0xFFE0) != 0)
        {
          strcpy(v66, "EXTSTR TOO LONG");
        }

        else
        {
          v28 = *(v24 + 24);
          v29 = v27 & 0x1F;
          __strncpy_chk();
          v66[v29] = 0;
        }
      }

      else
      {
        v66[0] = 0;
      }

      if (*(v24 + 20) == 32)
      {
        if (*(v24 + 40) == 1)
        {
          v30 = 49;
        }

        else
        {
          v30 = 48;
        }

        *v66 = v30;
      }

      v15 = a9;
    }

    if (v22 != 7)
    {
      goto LABEL_29;
    }

    if (v20 == 43)
    {
      v22 = 7;
    }

    else
    {
      v38 = &off_1E81A4B98;
      v39 = 19;
      while (*(v38 - 2) != v20)
      {
        v38 += 2;
        if (!--v39)
        {
          v22 = 7;
          goto LABEL_30;
        }
      }

      v40 = *v38;
      v22 = 7;
    }

LABEL_30:
    if (marker_hasNonConstCharPtrArg(v22) && v22 <= 0x27 && ((1 << v22) & 0xB400200000) != 0 && v56 == 1 && v20)
    {
      v34 = strlen(v20);
      v35 = v34;
      if (v34 >= 0x401uLL)
      {
        v36 = 1024;
      }

      else
      {
        v36 = v34;
      }

      if (__s)
      {
        if (strlen(__s) >= v36)
        {
          v37 = __s;
        }

        else
        {
          v37 = heap_Realloc(*(a4 + 8), __s, v36 + 1);
          if (!v37)
          {
            goto LABEL_62;
          }
        }
      }

      else
      {
        v37 = heap_Calloc(*(a4 + 8), 1, v36 + 1);
        if (!v37)
        {
LABEL_62:
          v16 = (v53 << 20) | 0x8000200A;
          goto LABEL_63;
        }
      }

      v15 = a9;
      __s = v37;
      if (v35 > 0x400)
      {
        strcpy(v37, "ARGSTR TOO LONG");
      }

      else
      {
        strncpy(v37, v20, v35)[v35] = 0;
      }
    }

    v41 = *(a4 + 32);
    if (v15)
    {
      log_OutText(v41, a2, 5, 0, "[%d] Markers %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s Ext=%d %s", v31, v32, v33, v18);
    }

    else
    {
      v42 = v57 + (v18 << 6);
      *v42;
      log_OutText(v41, a2, 5, 0, "[%d] Markers %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s Ext=%d %s", v31, v32, v33, v18);
      if (*(v42 + 16))
      {
        v46 = 0;
        v47 = 0;
        do
        {
          v48 = (*(v42 + 8) + v46);
          v51 = *v48;
          v52 = v48[1];
          log_OutText(*(a4 + 32), a2, 5, 0, "[UTOI] Offsets[%d] %u,%u", v43, v44, v45, v47++);
          v46 += 8;
        }

        while (v47 < *(v42 + 16));
      }
    }

    ++v18;
  }

  while (v18 != v58);
  v16 = v54;
  if (__s)
  {
    heap_Free(*(a4 + 8), __s);
  }

LABEL_63:
  v49 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t marker_loc_FilterSyncMarkers(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    v5 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = (v2 + 84);
    v4 = 1;
    v5 = 1;
    v6 = (v2 + 84);
    do
    {
      v7 = *v6;
      v6 += 16;
      if (v7 != 0x4000)
      {
        v8 = (v3 - 5);
        v9 = (v2 + (v5 << 6));
        v10 = *v8;
        v11 = v8[1];
        v12 = v8[3];
        v9[2] = v8[2];
        v9[3] = v12;
        *v9 = v10;
        v9[1] = v11;
        ++v5;
        v1 = *(a1 + 16);
      }

      ++v4;
      v3 = v6;
    }

    while (v4 < v1);
  }

  *(a1 + 16) = v5;
  return 0;
}

uint64_t ppParam_ClearReadOutParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), *(&aTAG2PARAM + v2 + 8));
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    v2 += 16;
    if (v2 == 64)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ppParam_ClearSequencerParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), off_1E81A4D00[v2]);
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    if (++v2 == 3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ppParam_ClearAllPPParameters(uint64_t a1)
{
  result = ppParam_ClearReadOutParameters(a1);
  if ((result & 0x80000000) == 0)
  {

    return ppParam_ClearSequencerParameters(a1);
  }

  return result;
}

uint64_t datac_ObjOpen(_WORD *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v12 = 0;
  if (!a3 || (InitRsrcFunction(a1, a2, &v12) & 0x80000000) != 0)
  {
    v11 = -2147475449;
  }

  else
  {
    *a3 = 0;
    v8 = heap_Alloc(*(v12 + 8), 40);
    if (v8)
    {
      v9 = v8;
      result = 0;
      *(v9 + 32) = 0;
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *v9 = a1;
      *(v9 + 8) = a2;
      *(v9 + 32) = a4;
      *a3 = v9;
      return result;
    }

    v11 = -2147475446;
  }

  return v11 | (a4 << 20);
}

uint64_t datac_ObjClose(uint64_t a1)
{
  v8 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  if ((InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) != 0)
  {
    return (*(a1 + 32) << 20) | 0x80002007;
  }

  v2 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v3 = 0;
    v4 = 16;
    do
    {
      v5 = *(*(a1 + 24) + v4);
      if (v5)
      {
        heap_Free(*(v8 + 8), v5);
        v2 = *(a1 + 16);
      }

      ++v3;
      v4 += 32;
    }

    while (v3 < v2);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    heap_Free(*(v8 + 8), v6);
  }

  heap_Free(*(v8 + 8), a1);
  return 0;
}

double datac_RegisterBlock(uint64_t a1, int a2, int a3, int a4)
{
  v20 = 0;
  if (a1)
  {
    v4 = a3;
    if (a3 && (v6 = a4, a4) && (InitRsrcFunction(*a1, *(a1 + 8), &v20) & 0x80000000) == 0)
    {
      v9 = *(a1 + 24);
      if (*(a1 + 16))
      {
        v10 = (v9 + 8);
        v11 = *(a1 + 16);
        while (1)
        {
          v12 = *v10;
          v10 += 16;
          if (v12 == a2)
          {
            break;
          }

          if (!--v11)
          {
            goto LABEL_13;
          }
        }

        v15 = *(a1 + 32);
      }

      else
      {
        if (v9)
        {
LABEL_13:
          v14 = heap_Realloc(*(v20 + 8), v9, 32 * *(a1 + 16) + 32);
        }

        else
        {
          v14 = heap_Alloc(*(v20 + 8), 32);
        }

        if (v14)
        {
          *(a1 + 24) = v14;
          v16 = *(a1 + 16) + 1;
          *(a1 + 16) = v16;
          v17 = v14 + 32 * v16;
          result = 0.0;
          *(v17 - 32) = 0u;
          *(v17 - 16) = 0u;
          v18 = *(a1 + 24) + 32 * *(a1 + 16);
          *(v18 - 24) = a2;
          *(v18 - 22) = v4;
          *(v18 - 32) = v6;
        }

        else
        {
          v19 = *(a1 + 32);
        }
      }
    }

    else
    {
      v13 = *(a1 + 32);
    }
  }

  return result;
}

uint64_t datac_RequestBlock(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  v18 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  if (!a3 || !a4 || (InitRsrcFunction(*a1, *(a1 + 8), &v18) & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  *a4 = 0;
  v8 = *(a1 + 16);
  if (!*(a1 + 16))
  {
LABEL_9:
    v10 = *(a1 + 32);
    v11 = -2147475436;
    return v11 | (v10 << 20);
  }

  v9 = *(a1 + 24) + 16;
  while (*(v9 - 8) != a2)
  {
    v9 += 32;
    if (!--v8)
    {
      goto LABEL_9;
    }
  }

  if (*(v9 + 10) < a3)
  {
    v13 = *(v9 - 16);
    if (((v13 + a3) & 0x10000) != 0)
    {
LABEL_13:
      v10 = *(a1 + 32);
      v11 = -2147475449;
      return v11 | (v10 << 20);
    }

    v14 = v13 + v13 * (a3 / v13);
    v15 = *(v18 + 8);
    v16 = *(v9 - 6) * v14;
    if (*v9)
    {
      v17 = heap_Realloc(v15, *v9, v16 + 1);
    }

    else
    {
      v17 = heap_Alloc(v15, v16 + 1);
    }

    if (!v17)
    {
      v10 = *(a1 + 32);
      v11 = -2147475446;
      return v11 | (v10 << 20);
    }

    if (*v9 != v17)
    {
      *v9 = v17;
    }

    bzero((v17 + *(v9 - 6) * *(v9 + 8)), (v14 - *(v9 + 8)) * *(v9 - 6));
    *(v9 + 10) = v14;
  }

  result = 0;
  *a4 = v9 - 8;
  return result;
}

uint64_t bed_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, int a6)
{
  v18 = 0;
  if (!a3 || !a5 || (InitRsrcFunction(a1, a2, &v18) & 0x80000000) != 0)
  {
    v16 = -2147475449;
    return v16 | (a6 << 20);
  }

  *a5 = 0;
  v12 = heap_Alloc(*(v18 + 8), 40);
  if (!v12)
  {
    v16 = -2147475446;
    return v16 | (a6 << 20);
  }

  v13 = v12;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  *(v12 + 36) = a6;
  v14 = datac_RequestBlock(a3, a4, 1u, (v12 + 24));
  if ((v14 & 0x80000000) != 0)
  {
    v15 = v14;
    bed_ObjClose(v13);
  }

  else
  {
    v15 = 0;
    *a5 = v13;
  }

  return v15;
}

uint64_t bed_ObjClose(uint64_t a1)
{
  v1 = 2368741383;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t bed_Goto(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  v3 = *(*(a1 + 24) + 16);
  if ((a2 & 0x80000000) != 0)
  {
    v5 = v3 + a2;
    if (v5 >= 0)
    {
      result = 0;
      *(a1 + 32) = v5;
      return result;
    }
  }

  else if (v3 >= a2)
  {
    result = 0;
    *(a1 + 32) = a2;
    return result;
  }

  return (*(a1 + 36) << 20) | 0x8000200F;
}

uint64_t bed_GoForward(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  result = 2368741383;
  if (a1 && a2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(v6 + 16);
    if (v7 < v8)
    {
      v10 = *(v6 + 8) + *(v6 + 2) * *(a1 + 32);
      do
      {
        v11 = a2(a3, v10);
        LOWORD(v7) = *(a1 + 32);
        v8 = *(v6 + 16);
        if (v11)
        {
          break;
        }

        LOWORD(v7) = v7 + 1;
        *(a1 + 32) = v7;
        v10 += *(v6 + 2);
      }

      while (v8 > v7);
    }

    if (v8 <= v7)
    {
      return (*(a1 + 36) << 20) | 0x80002014;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t bed_GoBackward(uint64_t a1, unsigned int (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  v5 = -2147475449;
  if (a2)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(v7 + 16);
    if (v8 >= v9)
    {
      LOWORD(v8) = v9 - 1;
      *(a1 + 32) = v9 - 1;
    }

    v10 = *(v7 + 8) + *(v7 + 2) * v8;
    if (v8)
    {
      while (!a2(a3, v10))
      {
        v11 = *(a1 + 32) - 1;
        *(a1 + 32) = v11;
        v10 -= *(v7 + 2);
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      if (*(a1 + 32))
      {
        return 0;
      }
    }

LABEL_11:
    if (a2(a3, v10))
    {
      return 0;
    }

    v5 = -2147475436;
  }

  return v5 | (*(a1 + 36) << 20);
}

uint64_t bed_FindForward(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t a3, _WORD *a4)
{
  if (!a1)
  {
    return 2368741383;
  }

  v6 = -2147475449;
  if (a2 && a4)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a4 = v9;
    v10 = *(v8 + 16);
    if (v9 < v10)
    {
      v12 = *(v8 + 8) + *(v8 + 2) * v9;
      while (1)
      {
        v13 = a2(a3, v12);
        LOWORD(v9) = *a4;
        if (v13)
        {
          break;
        }

        LOWORD(v9) = v9 + 1;
        *a4 = v9;
        v12 += *(v8 + 2);
        v10 = *(v8 + 16);
        if (v10 <= v9)
        {
          goto LABEL_11;
        }
      }

      v10 = *(v8 + 16);
    }

LABEL_11:
    if (v10 > v9)
    {
      return 0;
    }

    v6 = -2147475436;
  }

  return v6 | (*(a1 + 36) << 20);
}

uint64_t bed_FindBackward(uint64_t a1, unsigned int (*a2)(uint64_t, unint64_t), uint64_t a3, _WORD *a4)
{
  if (!a1)
  {
    return 2368741383;
  }

  v6 = -2147475449;
  if (a2 && a4)
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    *a4 = v10;
    v11 = *(v9 + 8) + *(v9 + 2) * v10;
    if (v10)
    {
      while (!a2(a3, v11))
      {
        v12 = *a4 - 1;
        *a4 = v12;
        v11 -= *(v9 + 2);
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      if (*a4)
      {
        return 0;
      }
    }

LABEL_10:
    if (a2(a3, v11))
    {
      return 0;
    }

    v6 = -2147475436;
  }

  return v6 | (*(a1 + 36) << 20);
}

uint64_t bed_GetcElem(uint64_t a1, _WORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(*(a1 + 24) + 16);
  return result;
}

uint64_t bed_GetiElem(uint64_t a1, _WORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  v2 = *(a1 + 32);
  if (v2 >= *(*(a1 + 24) + 16))
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t bed_GetpElem(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a3)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  if (a2 == 0xFFFF)
  {
    a2 = *(a1 + 32);
  }

  v3 = *(a1 + 24);
  if (a2 >= *(v3 + 16))
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  result = 0;
  *a3 = *(v3 + 8) + *(v3 + 2) * a2;
  return result;
}

uint64_t bed_GetpBlock(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(a1 + 24);
  return result;
}

uint64_t bed_IsCursorAtEnd(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(a1 + 32) >= *(*(a1 + 24) + 16);
  return result;
}

uint64_t bed_Insert(uint64_t a1, void *__src, int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!__src)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = (a1 + 24);
  v7 = *(a1 + 24);
  v8 = v7[8];
  if (v8 + a3 > v7[9])
  {
    result = datac_RequestBlock(*(a1 + 16), *v7, (v8 + a3), (a1 + 24));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = *v6;
    v8 = (*v6)[8];
  }

  v10 = *(a1 + 32);
  if (v10 < v8)
  {
    memmove((*(v7 + 1) + (v10 + a3) * v7[1]), (*(v7 + 1) + v7[1] * v10), v7[1] * (v8 - v10));
    v10 = *(a1 + 32);
  }

  memmove((*(v7 + 1) + v7[1] * v10), __src, v7[1] * a3);
  result = 0;
  v7[8] += a3;
  *(a1 + 32) += a3;
  return result;
}

uint64_t bed_Remove(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  if (v6 <= a2)
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  if (!a3)
  {
    return 0;
  }

  v7 = a3 + a2 <= v6 ? a3 : v6 - a2;
  v8 = a3 + a2 <= v6 ? (v6 - (a3 + a2)) : 0;
  v9 = a2 + v7;
  memmove((*(v5 + 8) + *(v5 + 2) * a2), (*(v5 + 8) + v9 * *(v5 + 2)), v8 * *(v5 + 2));
  *(v5 + 16) -= v7;
  v10 = *(a1 + 32);
  if (v10 <= a2)
  {
    return 0;
  }

  result = 0;
  if (v9 <= v10)
  {
    *(a1 + 32) = v10 - v7;
  }

  else
  {
    *(a1 + 32) = a2;
  }

  return result;
}

uint64_t isEsc(uint64_t a1, char *a2, unsigned int a3, int a4, _WORD *a5)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v7 = exePattern("esc", a1, a2, a3, a4, 0x2000, &v12, v11, &v10, 0x3E7u);
  result = 0;
  if ((v7 & 0x80000000) == 0)
  {
    if (v12)
    {
      v9 = LODWORD(v11[0]) == a4;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      *a5 = WORD2(v11[0]) - a4;
      return 1;
    }
  }

  return result;
}

uint64_t exePattern(const char *a1, uint64_t a2, char *a3, unsigned int a4, int a5, uint64_t a6, _DWORD *a7, uint64_t a8, _DWORD *a9, unsigned __int16 a10)
{
  v12 = a6;
  v67 = *MEMORY[0x1E69E9840];
  log_OutText(*(*a2 + 32), "PP", 4, 0, "exePattern for pattern: %s", a6, a7, a8, a1);
  *a7 = 0;
  v18 = *(*(a2 + 8) + 8);
  if (a10 == 999)
  {
    v19 = *(v18 + 48);
    if (!*(v18 + 48))
    {
      goto LABEL_24;
    }

    v20 = *(v18 + 56);
    while (strcmp(*(v20 + 16), a1))
    {
      v20 += 24;
      if (!--v19)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v20 = *(v18 + 40) + 24 * a10 + 8;
  }

  v21 = *v20;
  if (!*v20)
  {
    goto LABEL_24;
  }

  if (*(a2 + 48) >= a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = *(a2 + 48);
  }

  *&v23 = -1;
  *(&v23 + 1) = -1;
  v42 = v23;
  v43 = v23;
  v44 = v23;
  v45 = v23;
  v46 = v23;
  v47 = v23;
  v48 = v23;
  v49 = v23;
  v50 = v23;
  v51 = v23;
  v52 = v23;
  v53 = v23;
  v54 = v23;
  v55 = v23;
  v56 = v23;
  v57 = v23;
  v58 = v23;
  v59 = v23;
  v60 = v23;
  v61 = v23;
  v62 = v23;
  v63 = v23;
  v64 = v23;
  v65 = v23;
  v66 = v23;
  v24 = nuance_pcre_exec(*(a2 + 24), *(a2 + 32), v21, 0, a3, v22, a5, v12, &v42, 100);
  if ((v24 & 0x80000000) != 0)
  {
    v30 = nuance_pcre_ErrorToLhError(v24);
    v29 = v30;
    if (v30 >> 20 != 2213)
    {
      goto LABEL_25;
    }

    v35 = v30 & 0x1FFF;
    switch(v35)
    {
      case 10:
        v38 = *(*a2 + 32);
        v39 = 11002;
        v40 = 0;
        break;
      case 7778:
        goto LABEL_25;
      case 20:
LABEL_24:
        v29 = 0;
        goto LABEL_25;
      default:
        v38 = *(*a2 + 32);
        v41 = "lhError";
        v40 = "%s%x";
        v39 = 11027;
        break;
    }

    log_OutPublic(v38, "PP", v39, v40, v31, v32, v33, v34, v41);
    goto LABEL_25;
  }

  if (!v24)
  {
    goto LABEL_24;
  }

  *a8 = v42;
  v26 = v43;
  v25 = DWORD1(v43);
  *(a8 + 16) = v43;
  *(a8 + 20) = v25;
  if (v26 == -1 && v25 == -1)
  {
    v27 = DWORD2(v43);
    if (DWORD2(v43) != -1)
    {
      v28 = HIDWORD(v43);
      if (HIDWORD(v43) != -1)
      {
        *a9 = 1;
        *(a8 + 16) = v27;
        *(a8 + 20) = v28;
      }
    }
  }

  v29 = 0;
  *a7 = 1;
LABEL_25:
  v36 = *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t isEscOrPartialEsc(uint64_t a1, char *a2, unsigned int a3, int a4, _WORD *a5)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v7 = exePattern("esc", a1, a2, a3, a4, 40960, &v12, v11, &v10, 0x3E7u);
  if ((v7 & 0x1FFF) == 0x1E62)
  {
    return 2;
  }

  v9 = v7;
  result = 0;
  if ((v9 & 0x80000000) == 0 && v12 && LODWORD(v11[0]) == a4)
  {
    *a5 = WORD2(v11[0]) - a4;
    return 1;
  }

  return result;
}

uint64_t escseqm_str2enumMapping(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(v2 + 8);
  if (!*(v3 + 64))
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a2 + 8);
  while (1)
  {
    v8 = *(v3 + 72) + 16 * v6;
    if (*(v7 + 20) == *v8)
    {
      break;
    }

LABEL_10:
    ++v6;
    v3 = *(v2 + 8);
    if (v6 >= *(v3 + 64))
    {
      return 0;
    }
  }

  v9 = *(v7 + 40);
  if (!*(v8 + 4))
  {
LABEL_9:
    heap_Free(*(*a1 + 8), v9);
    *(*(a2 + 8) + 40) = 0;
    v7 = *(a2 + 8);
    *(v7 + 20) = 0;
    v2 = a1[1];
    goto LABEL_10;
  }

  v10 = 0;
  v11 = 16 * *(v8 + 4);
  while (!v9 || strcmp(*(*(v8 + 8) + v10), v9))
  {
    v10 += 16;
    if (v11 == v10)
    {
      goto LABEL_9;
    }
  }

  heap_Free(*(*a1 + 8), v9);
  *(*(a2 + 8) + 40) = 0;
  *(*(a2 + 8) + 40) = *(*(*(*(a1[1] + 8) + 72) + 16 * v6 + 8) + v10 + 8);
  return 0;
}

uint64_t escseqm_get_token(void *a1, char *a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v86 = 0;
  v87 = 0;
  v84 = 0uLL;
  v85 = 0;
  *a5 = 0;
  v10 = exePattern("esc", a1, a2, a3, 0, 0, &v87, &v84, &v86, 0x3E7u);
  if ((v10 & 0x80000000) != 0 || !v87)
  {
    return v10;
  }

  v12 = v84;
  v11 = DWORD1(v84);
  v13 = exePattern("enhancedescseq", a1, a2, a3, SDWORD1(v84), 16, &v87, &v84, &v86, 0x3E7u);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (v87 != 1)
  {
    v10 = exePattern("esctoi", a1, a2, a3, v11, 16, &v87, &v84, &v86, 0x3E7u);
    if ((v10 & 0x80000000) != 0 || v87 != 1)
    {
      return v10;
    }

    v31 = *(a4 + 8);
    v32 = DWORD1(v84);
    *(v31 + 20) = 7;
    *(v31 + 24) = v12;
    *(v31 + 28) = v32 - v12;
    *(v31 + 32) = v12;
    *(v31 + 36) = v12;
    if (*(*(a1[1] + 8) + 64))
    {
      *(v31 + 40) = 0;
      if (*(&v84 + 1) != -1)
      {
        v33 = *(*a1 + 8);
        v34 = a2[SDWORD2(v84)];
        if (v34 <= 0x5D)
        {
          if (v34 == 43)
          {
            v35 = &unk_1C37BE8E0;
            goto LABEL_78;
          }

          if (v34 == 62)
          {
            v35 = &unk_1C37BE8E4;
            goto LABEL_78;
          }
        }

        else
        {
          switch(v34)
          {
            case '^':
              v35 = "diacritized";
              goto LABEL_78;
            case 'h':
              v35 = "hil";
              goto LABEL_78;
            case 'j':
              v35 = "jeita";
LABEL_78:
              v56 = strlen(v35);
              *(*(a4 + 8) + 40) = heap_Calloc(v33, 1, (v56 + 1));
              v57 = *(*(a4 + 8) + 40);
              if (!v57)
              {
                return 2147491850;
              }

              strcpy(v57, v35);
              goto LABEL_80;
          }
        }

        v31 = *(a4 + 8);
LABEL_83:
        *(v31 + 20) = 0;
        return v10;
      }
    }

    else
    {
      v45 = a2[SDWORD2(v84)];
      if (v45 <= 0x5D)
      {
        if (v45 != 43)
        {
          if (v45 != 62)
          {
            goto LABEL_83;
          }

          v45 = 16;
        }
      }

      else
      {
        switch(v45)
        {
          case '^':
            v45 = 60;
            break;
          case 'h':
            v45 = 108;
            break;
          case 'j':
            break;
          default:
            goto LABEL_83;
        }
      }

      *(v31 + 40) = v45;
    }

LABEL_80:
    *a5 = 2;
    return v10;
  }

  v80 = v12;
  v79 = a5;
  v82 = DWORD1(v84);
  *v83 = v85;
  v89 = 0;
  v88 = 0;
  v15 = DWORD2(v84);
  v14 = HIDWORD(v84);
  v81 = a4;
  *(*(a4 + 8) + 20) = 0;
  v16 = a1[1];
  v17 = *(v16 + 8);
  if (*(v17 + 4))
  {
    v18 = 0;
    v19 = 0;
    v20 = (v14 - v15);
    while (1)
    {
      v21 = *(v17 + 8);
      if (strlen(*(v21 + v18)) == v20 && *(v21 + v18 + 8) == 1)
      {
        v22 = LH_strnicmp(*(v21 + v18), &a2[v15], v20);
        v16 = a1[1];
        if (!v22)
        {
          break;
        }
      }

      ++v19;
      v17 = *(v16 + 8);
      v18 += 24;
      if (v19 >= *(v17 + 4))
      {
        goto LABEL_11;
      }
    }

    v46 = *(*(v16 + 8) + 8) + v18;
    v47 = *(v81 + 8);
    v49 = *(v46 + 12);
    v48 = *(v46 + 16);
    *(v47 + 20) = v49;
    *v81 = 0;
    if (v48 != 9999)
    {
      *(v47 + 40) = v48;
      *v81 = 1;
    }
  }

LABEL_11:
  v23 = v81;
  v24 = *(v81 + 8);
  v25 = v80;
  v24[6] = v80;
  v24[7] = v82 - v80;
  v24[8] = v80;
  v24[9] = v80;
  v26 = v24[5];
  if (v26 == 32)
  {
    if (getTrueEnd(a1, a2, a3, v83[0], &v83[1], 32, &v88))
    {
      v27 = *(v81 + 8);
      v28 = v83[1];
      v29 = v83[1] - v80 + 1;
      v27[6] = v80;
      v27[7] = v29;
      v27[8] = v80;
      v27[9] = v80;
      *v79 = 2;
      v10 = 0;
      if (v83[0] == v28)
      {
        v30 = *(a1 + 14) == 0;
        *(a1 + 14) = v30;
        v27[10] = v30;
      }

      else
      {
        v27[5] = 0;
      }

      goto LABEL_59;
    }

LABEL_54:
    v10 = 0;
    goto LABEL_59;
  }

  v36 = v79;
  if (v83[0] == v83[1])
  {
    if (v26 == 2)
    {
LABEL_26:
      v24[10] = 0;
      setDefaultArgIfAny(a1, v81);
LABEL_27:
      v10 = 0;
      goto LABEL_58;
    }

    v50 = *(a1[1] + 8);
    v51 = *(v50 + 16);
    if (*(v50 + 16))
    {
      v52 = *(v50 + 24);
      do
      {
        v53 = *v52;
        v52 += 3;
        if (v53 == v26)
        {
          goto LABEL_26;
        }
      }

      while (--v51);
    }

    if (!marker_hasNonConstCharPtrArg(v24[5]))
    {
      goto LABEL_27;
    }

    v13 = checkForDefaultArgs(a1, v81, &v89 + 1);
    *v79 = 2;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    return v13;
  }

  v90 = 0;
  if (!getTrueEnd(a1, a2, a3, v83[0], &v83[1], v26, &v90))
  {
    v38 = 0;
    v89 = 1;
    goto LABEL_56;
  }

  v37 = v83[1];
  v38 = v83[1] + 1;
  if (!v83[1])
  {
    goto LABEL_36;
  }

  v39 = 0;
  v40 = a2 - 1;
  while (1)
  {
    v41 = v40[v83[1]];
    v42 = v41 > 0x20;
    v43 = (1 << v41) & 0x100002600;
    if (v42 || v43 == 0)
    {
      break;
    }

    --v40;
    if (v83[1] == ++v39)
    {
      goto LABEL_36;
    }
  }

  v58 = v83[1] - v39;
  if (v83[1] - v39 <= v83[0])
  {
LABEL_36:
    if (marker_hasNonConstCharPtrArg(*(*(v81 + 8) + 20)) || !*(*(v81 + 8) + 20))
    {
      v10 = checkForDefaultArgs(a1, v81, &v89 + 1);
      goto LABEL_38;
    }

    HIDWORD(v89) = setDefaultArgIfAny(a1, v81);
    if (!HIDWORD(v89))
    {
      HIDWORD(v89) = *(*(v81 + 8) + 20) == 13;
    }

    goto LABEL_56;
  }

  v59 = *(*(v81 + 8) + 20);
  v60 = v90;
  if (v59 == 26 && v90 != 0)
  {
    v13 = parseStringArg(a1, v81, a2, v83[0], v90, &v89 + 1, 0);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v10 = parseStringArg(a1, v81, a2, v60 + 1, v37 - v39, &v89 + 1, 1);
    goto LABEL_100;
  }

  v62 = *(a1[1] + 8);
  v63 = *(v62 + 32);
  if (!*(v62 + 32))
  {
LABEL_94:
    v25 = v80;
    if (marker_hasNonConstCharPtrArg(v59))
    {
LABEL_95:
      v13 = parseStringArg(a1, v81, a2, v83[0], v37 - v39, &v89 + 1, 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      v67 = *(v81 + 8);
      if (!*(v67 + 20))
      {
        heap_Free(*(*a1 + 8), *(v67 + 40));
        *(*(v81 + 8) + 40) = 0;
      }

      goto LABEL_56;
    }

    v69 = *(*(v81 + 8) + 20);
    if (v69 == 2)
    {
      goto LABEL_112;
    }

    if (!v69)
    {
      goto LABEL_95;
    }

    v70 = *(a1[1] + 8);
    v71 = *(v70 + 16);
    if (*(v70 + 16))
    {
      v72 = *(v70 + 24);
      while (1)
      {
        v73 = *v72;
        v72 += 3;
        if (v73 == v69)
        {
          break;
        }

        if (!--v71)
        {
          goto LABEL_111;
        }
      }

LABEL_112:
      parseNumericArg(a1, v81, a2, v83[0], v37 - v39, &v89 + 1, &v89);
      goto LABEL_56;
    }

LABEL_111:
    HIDWORD(v89) = v69 == 13;
    LODWORD(v89) = 0;
    v36 = v79;
    v23 = v81;
    v25 = v80;
LABEL_56:
    v10 = 0;
    goto LABEL_57;
  }

  v64 = 0;
  v65 = *(v62 + 40);
  v66 = 16;
  while (*(v65 + v66 - 16) != v59)
  {
    ++v64;
    v66 += 24;
    if (v63 == v64)
    {
      goto LABEL_94;
    }
  }

  v93[0] = 0;
  memset(v92, 0, sizeof(v92));
  v10 = exePattern("dummy", a1, &a2[v83[0]], (LOWORD(v83[1]) - LOWORD(v83[0]) - v39), 0, 16, v93, v92, &v91, v64);
  if ((v10 & 0x80000000) == 0)
  {
    if (v93[0] != 1)
    {
      goto LABEL_120;
    }

    if (v37 + LODWORD(v92[0]) - v83[0] - HIDWORD(v92[0]) == v39)
    {
      HIDWORD(v89) = 1;
      v78 = v58;
      v68 = v83[0];
      goto LABEL_123;
    }

    if (*(*(v81 + 8) + 20) == 7 && (v78 = HIDWORD(v92[0]) - LODWORD(v92[0]) + v83[0], v68 = v78 + 1, v78 + 1 < v58) && utf8_BelongsToSet(8u, &a2[v83[0]], HIDWORD(v92[0]), HIDWORD(v92[0]) + 1))
    {
      do
      {
        if (!utf8_BelongsToSet(0, a2, v68, v68 + 1))
        {
          break;
        }

        v68 += utf8_determineUTF8CharLength(a2[v68]);
      }

      while (v68 < v58);
      if (v37 - v68 != v39)
      {
        v74 = (&v89 + 4);
LABEL_122:
        *v74 = 1;
        if (!HIDWORD(v89))
        {
          if (*v81 == 1)
          {
            v89 = 0x100000000;
          }

          goto LABEL_139;
        }

LABEL_123:
        v75 = *(*(*(a1[1] + 8) + 40) + v66);
        if (v75 == 1)
        {
          v13 = parseStringArg(a1, v81, a2, v83[0], v78, &v89 + 1, 0);
          v10 = 0;
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        else if (!v75)
        {
          *(*(v81 + 8) + 40) = a2[v83[0]];
        }

        if (v83[0] != v68 && v37 - v78 != v39)
        {
          v13 = parseStringArg(a1, v81, a2, v68, v37 - v39, &v89 + 1, 1);
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }

          v10 = 0;
        }

        if (!HIDWORD(v89) && *(*(*(a1[1] + 8) + 40) + v66) == 1)
        {
          v76 = *(*(v81 + 8) + 40);
          if (v76)
          {
            heap_Free(*(*a1 + 8), v76);
            v23 = v81;
            *(*(v81 + 8) + 40) = 0;
            v36 = v79;
LABEL_100:
            v25 = v80;
LABEL_38:
            if ((v10 & 0x80000000) != 0)
            {
              return v10;
            }

LABEL_57:
            v54 = *(v23 + 8);
            v54[6] = v25;
            v54[7] = v38 - v25;
            v54[8] = v25;
            v54[9] = v25;
            if (!HIDWORD(v89))
            {
              v54[5] = 0;
              if (v89)
              {
LABEL_59:
                v55 = *(v23 + 8);
                if (*(v55 + 20) == 2)
                {
                  *(v55 + 20) = 3;
                }

                return v10;
              }
            }

LABEL_58:
            *v36 = 2;
            goto LABEL_59;
          }
        }

LABEL_139:
        v36 = v79;
        v23 = v81;
        goto LABEL_100;
      }

      v68 = v37 - v39;
    }

    else
    {
LABEL_120:
      v78 = v58;
      v68 = v83[0];
    }

    HIDWORD(v89) = 0;
    v74 = &v89;
    goto LABEL_122;
  }

  return v10;
}

uint64_t escseqm_ClassOpen(_WORD *a1, int a2, uint64_t **a3)
{
  v3 = 2147491850;
  v56 = 0;
  v55 = 0;
  if (!a3)
  {
    return 2147491847;
  }

  v53 = 0;
  v54 = 0;
  inited = InitRsrcFunction(a1, a2, &v56);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = heap_Calloc(*(v56 + 8), 1, 16);
  if (v8)
  {
    v9 = v8;
    UInt = paramc_ParamGetUInt(*(v56 + 40), "ppmaxpcreframeblocks", &v55);
    v11 = v55;
    v12 = paramc_ParamGetUInt(*(v56 + 40), "ppnumframesinblock", &v55);
    v13 = v55;
    v14 = nuance_pcre_ObjOpen(a1, a2, &v53);
    if ((v14 & 0x80000000) != 0)
    {
      v3 = v14;
    }

    else
    {
      if (v12 < 0)
      {
        v15 = 50;
      }

      else
      {
        v15 = v13;
      }

      if (UInt < 0)
      {
        v16 = 30;
      }

      else
      {
        v16 = v11;
      }

      v17 = nuance_pcre_Init(v53, v54, v16, v15);
      v18 = v17;
      if ((v17 & 0x80000000) != 0)
      {
        v3 = v17;
      }

      else
      {
        v19 = v56;
        *v9 = v56;
        v20 = heap_Calloc(*(v19 + 8), 1, 96);
        v9[1] = v20;
        if (v20)
        {
          v21 = v20;
          v50 = v9;
          v22 = v56;
          v24 = v53;
          v23 = v54;
          v59 = 0;
          v58 = 0;
          __s2 = 0;
          paramc_ParamGetStr(*(v56 + 40), "__NUAN_alternative_esc_seq__", &__s2);
          *(v21 + 4) = 34;
          v25 = heap_Calloc(*(v22 + 8), 1, 816);
          *(v21 + 8) = v25;
          if (v25)
          {
            memcpy(v25, &g_pEscMappings, 0x330uLL);
            *(v21 + 16) = 9;
            v26 = heap_Calloc(*(v22 + 8), 9, 12);
            *(v21 + 24) = v26;
            if (v26)
            {
              v26[4] = xmmword_1C37BE890;
              v26[5] = unk_1C37BE8A0;
              *(v26 + 92) = unk_1C37BE8AC;
              *v26 = g_pEscNumericArgs;
              v26[1] = unk_1C37BE860;
              v26[2] = xmmword_1C37BE870;
              v26[3] = unk_1C37BE880;
              *(v21 + 48) = 6;
              v27 = heap_Calloc(*(v22 + 8), 6, 24);
              *(v21 + 56) = v27;
              if (v27)
              {
                v28 = 0;
                v29 = &off_1E81A5050;
                v51 = v21;
                do
                {
                  v30 = *(v29 - 1);
                  *(*(v21 + 56) + v28 + 16) = v30;
                  v31 = __s2;
                  if (__s2 && *__s2 && !strcmp(v30, "esc"))
                  {
                    v52 = *(v22 + 8);
                    v32 = *v29;
                    v33 = v23;
                    v34 = v24;
                    v35 = v22;
                    v36 = strlen(*v29);
                    v37 = v36 + strlen(v31);
                    v22 = v35;
                    v24 = v34;
                    v23 = v33;
                    v21 = v51;
                    v38 = heap_Calloc(v52, 1, v37 + 2);
                    if (!v38)
                    {
                      goto LABEL_36;
                    }

                    v39 = v38;
                    strcpy(v38, v32);
                    v39[strlen(v32) - 1] = 0;
                    *&v39[strlen(v39)] = 124;
                    v40 = strcat(v39, __s2);
                    *&v39[strlen(v40)] = 41;
                    *(*(v51 + 56) + v28) = nuance_pcre_compile(v24, v23, v39, 2048, &v59, &v58, 0);
                    heap_Free(*(v22 + 8), v39);
                  }

                  else
                  {
                    *(*(v21 + 56) + v28) = nuance_pcre_compile(v24, v23, *v29, 2048, &v59, &v58, 0);
                  }

                  v28 += 24;
                  v29 += 2;
                }

                while (v28 != 144);
                *(v21 + 32) = 3;
                v41 = heap_Calloc(*(v22 + 8), 3, 24);
                *(v21 + 40) = v41;
                if (v41)
                {
                  v42 = *(v21 + 56);
                  v43 = v41 + 8;
                  v44 = 3;
                  v45 = &byte_1C37BE8C0;
                  do
                  {
                    *(v43 + 8) = 1;
                    *(v43 - 8) = *(v45 - 1);
                    v46 = *v45;
                    v45 += 12;
                    *v43 = *(v42 + 24 * v46);
                    v43 += 24;
                    --v44;
                  }

                  while (v44);
                  *(v21 + 64) = 2;
                  v47 = heap_Calloc(*(v22 + 8), 1, 32);
                  *(v21 + 72) = v47;
                  if (v47)
                  {
                    *v47 = g_escStr2EnumMappings;
                    v47[1] = unk_1E81A50B8;
                    *(v21 + 80) = 5;
                    v48 = heap_Calloc(*(v22 + 8), 1, 120);
                    *(v21 + 88) = v48;
                    if (v48)
                    {
                      *(v48 + 64) = xmmword_1E81A5108;
                      *(v48 + 80) = unk_1E81A5118;
                      *(v48 + 96) = xmmword_1E81A5128;
                      *(v48 + 112) = &g_escStr2StrMappings_mkEnumList_moderate;
                      *v48 = g_escStr2StrMappings;
                      *(v48 + 16) = *&off_1E81A50D8;
                      *(v48 + 32) = xmmword_1E81A50E8;
                      *(v48 + 48) = *&off_1E81A50F8;
                      *v21 = 1;
                      *a3 = v50;
LABEL_38:
                      nuance_pcre_DeInit(v53, v54);
                      nuance_pcre_ObjClose(v53, v54);
                      return v18;
                    }
                  }
                }
              }
            }
          }

LABEL_36:
          v3 = 2147491850;
        }
      }
    }

    escseqm_ClassClose(*a3);
    v18 = v3;
    goto LABEL_38;
  }

  return 10;
}

uint64_t escseqm_ClassClose(uint64_t *a1)
{
  if (!a1)
  {
    return 7;
  }

  v3 = *a1;
  v2 = a1[1];
  if (*v2 != 1)
  {
    goto LABEL_28;
  }

  v4 = *(v2 + 8);
  if (v4)
  {
    heap_Free(*(v3 + 8), v4);
    *(v2 + 8) = 0;
    *(v2 + 4) = 0;
  }

  v5 = *(v2 + 24);
  if (v5)
  {
    heap_Free(*(v3 + 8), v5);
    *(v2 + 24) = 0;
    *(v2 + 16) = 0;
  }

  v6 = *(v2 + 56);
  if (v6)
  {
    v7 = *(v2 + 48);
    if (*(v2 + 48))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (*(v6 + v8))
        {
          heap_Free(*(v3 + 8), *(v6 + v8));
          v6 = *(v2 + 56);
          v7 = *(v2 + 48);
        }

        v10 = (v6 + v8);
        *v10 = 0;
        v10[2] = 0;
        ++v9;
        v8 += 24;
      }

      while (v9 < v7);
    }

    heap_Free(*(v3 + 8), v6);
    *(v2 + 56) = 0;
  }

  v11 = *(v2 + 40);
  if (v11)
  {
    v12 = *(v2 + 32);
    if (*(v2 + 32))
    {
      v13 = (v12 + 1) & 0x1FFFE;
      v14 = vdupq_n_s64(v12 - 1);
      v15 = xmmword_1C378AF00;
      v16 = (v11 + 32);
      v17 = vdupq_n_s64(2uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v14, v15));
        if (v18.i8[0])
        {
          *(v16 - 3) = 0;
        }

        if (v18.i8[4])
        {
          *v16 = 0;
        }

        v15 = vaddq_s64(v15, v17);
        v16 += 6;
        v13 -= 2;
      }

      while (v13);
    }

    heap_Free(*(v3 + 8), v11);
    *(v2 + 40) = 0;
  }

  v19 = *(v2 + 72);
  if (v19)
  {
    heap_Free(*(v3 + 8), v19);
    *(v2 + 72) = 0;
  }

  v20 = *(v2 + 88);
  if (v20)
  {
    heap_Free(*(v3 + 8), v20);
  }

  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v2 = a1[1];
  if (v2)
  {
LABEL_28:
    heap_Free(*(v3 + 8), v2);
  }

  heap_Free(*(v3 + 8), a1);
  return 0;
}

uint64_t escseqm_ObjOpen(uint64_t a1, _WORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v6 = 2147491847;
  if (a1)
  {
    if (a6)
    {
      inited = InitRsrcFunction(a2, a3, &v20);
      if ((inited & 0x80000000) == 0)
      {
        v12 = inited;
        *a6 = 0;
        v13 = heap_Calloc(*(v20 + 8), 1, 64);
        if (v13)
        {
          v14 = v13;
          v15 = v20;
          *v13 = v20;
          *(v13 + 52) = 0;
          if (paramc_ParamGetStr(*(v15 + 40), "processingtnplus", &v18))
          {
            v16 = 1;
          }

          else
          {
            v16 = v18 == 0;
          }

          if (!v16 && !LH_stricmp(v18, "yes"))
          {
            *(v14 + 52) = 1;
          }

          *(v14 + 56) = 0;
          *(v14 + 24) = a4;
          *(v14 + 32) = a5;
          *(v14 + 8) = a1;
          *(v14 + 16) = 0;
          *(v14 + 40) = *(a1 + 8);
          *(v14 + 48) = 1024;
          if ((paramc_ParamGetUInt(*(v20 + 40), "ppescseqmaxlength", &v19) & 0x80000000) == 0)
          {
            *(v14 + 48) = v19 + 32;
          }

          *a6 = v14;
          return v12;
        }

        else
        {
          return 2147491850;
        }
      }
    }
  }

  return v6;
}

uint64_t escseqm_ObjClose(uint64_t *a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  v1 = *a1;
  a1[5] = 0;
  heap_Free(*(v1 + 8), a1);
  return 0;
}

uint64_t escseqm_ProcessStart(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  result = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t escseqm_GetDefaults(void *a1, uint64_t *a2)
{
  v2 = 2147491847;
  v12 = 0;
  if (a1)
  {
    v5 = heap_Calloc(*(*a1 + 8), 1, 2561);
    if (!v5)
    {
      return 2147491850;
    }

    v6 = v5;
    v11[0] = 0;
    v7 = v5 + 64;
    v8 = 1;
    while (1)
    {
      *(v7 + 20) = v8;
      v11[1] = v7;
      *v7 = 1;
      *(v7 + 8) = 0;
      if (v8 <= 0xDu && ((1 << v8) & 0x2314) != 0)
      {
        goto LABEL_6;
      }

      hasNonConstCharPtrArg = marker_hasNonConstCharPtrArg(v8);
      checkForDefaultArgs(a1, v11, &v12);
      if (hasNonConstCharPtrArg)
      {
        break;
      }

      if (v12)
      {
        if (*(*(a1[1] + 8) + 64))
        {
          escseqm_str2enumMapping(a1, v11);
        }

        goto LABEL_7;
      }

      *(v7 + 20) = v8;
      if (!setDefaultArgIfAny(a1, v11))
      {
        goto LABEL_6;
      }

LABEL_7:
      ++v8;
      v7 += 64;
      if (v8 == 40)
      {
        v2 = 0;
        *a2 = v6;
        return v2;
      }
    }

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v7 + 20) = 0;
    goto LABEL_7;
  }

  return v2;
}

uint64_t checkForDefaultArgs(void *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v6 = *(a1[1] + 8);
  v7 = *(v6 + 80);
  if (*(v6 + 80))
  {
    v8 = 0;
    v9 = *(v6 + 88);
    while (1)
    {
      v10 = v9 + 24 * v8;
      v11 = *(v10 + 8);
      if (*(v10 + 8))
      {
        break;
      }

LABEL_7:
      if (++v8 == v7)
      {
        v14 = *(a2 + 8);
        goto LABEL_18;
      }
    }

    v12 = *(v10 + 16);
    while (1)
    {
      v13 = *v12++;
      if (*(*(a2 + 8) + 20) == v13)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    v15 = *(*a1 + 8);
    v16 = strlen(*v10);
    *(*(a2 + 8) + 40) = heap_Calloc(v15, 1, (v16 + 1));
    v17 = *(*(a2 + 8) + 40);
    if (v17)
    {
      strcpy(v17, *(*(*(a1[1] + 8) + 88) + 24 * v8));
      result = 0;
      *a3 = 1;
      return result;
    }

    return 2147491850;
  }

  v14 = *(a2 + 8);
  v19 = *(v14 + 20);
  v20 = v19 > 0x24;
  v21 = (1 << v19) & 0x1000201000;
  if (!v20 && v21 != 0)
  {
    v23 = *(*a1 + 8);
    MarkerArgStr = marker_getMarkerArgStr(1u);
    v25 = strlen(MarkerArgStr);
    *(*(a2 + 8) + 40) = heap_Calloc(v23, 1, (v25 + 1));
    v26 = *(*(a2 + 8) + 40);
    if (v26)
    {
      v27 = marker_getMarkerArgStr(1u);
      strcpy(v26, v27);
      result = 0;
      *a3 = 1;
      return result;
    }

    return 2147491850;
  }

LABEL_18:
  v28 = *(v14 + 40);
  if (v28)
  {
    heap_Free(*(*a1 + 8), v28);
    *(*(a2 + 8) + 40) = 0;
  }

  result = 0;
  *(*(a2 + 8) + 20) = 0;
  return result;
}

uint64_t setDefaultArgIfAny(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 8);
  v3 = *(v2 + 4);
  if (!*(v2 + 4))
  {
LABEL_6:
    result = 0;
LABEL_7:
    *a2 = result;
    return result;
  }

  v4 = *(a2 + 8);
  v5 = *(v4 + 20);
  v6 = (*(v2 + 8) + 16);
  while (v5 != *(v6 - 1) || *(v6 - 2) != 1)
  {
    v6 += 6;
    if (!--v3)
    {
      goto LABEL_6;
    }
  }

  if (*v6 != 9999)
  {
    if (*(a1 + 52))
    {
      v8 = v5 == 8;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = 29999;
    }

    else
    {
      v9 = *v6;
    }

    *(v4 + 40) = v9;
    result = 1;
    goto LABEL_7;
  }

  return 0;
}

uint64_t escseqm_Match(void *a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    return 2147491847;
  }

  if (!**(a1[1] + 8))
  {
    log_OutPublic(*(*a1 + 32), "PP", 1805, 0, a5, a6, a7, a8, v10);
    return 2147491847;
  }

  v12 = 0;
  v11[0] = 0;
  v11[1] = a4;
  result = escseqm_get_token(a1, a2, a3, v11, &v12);
  if ((result & 0x1FFF) != 0xA)
  {
    if (v12 == 2)
    {
      if (*(*(a1[1] + 8) + 64))
      {
        escseqm_str2enumMapping(a1, v11);
      }

      return 0;
    }

    else
    {
      return 2147491840;
    }
  }

  return result;
}

uint64_t getTrueEnd(uint64_t a1, char *a2, unsigned int a3, int a4, unsigned int *a5, int a6, _DWORD *a7)
{
  *a7 = 0;
  if (a3 <= a4)
  {
    return 0;
  }

  v35 = v7;
  v36 = v8;
  v10 = a4;
  v14 = 0;
  v15 = 0;
  v16 = a4;
  v18 = a6 != 26 && a6 != 7;
  v32 = v18;
  v33 = 0;
  v19 = a6 != 29 && v18;
  while (1)
  {
    if (!a2[v10])
    {
      return 0;
    }

    v20 = isEsc(a1, a2, (a3 - v10), v16, &v34);
    v21 = a2[v10];
    if (v20)
    {
      if (v21 != 92)
      {
        return 0;
      }
    }

    else if (v21 != 92)
    {
      LODWORD(v22) = v16 + 1;
      v27 = v21 == 34;
      goto LABEL_34;
    }

    v22 = v16 + 1;
    if (v22 >= a3 || (v23 = a2[v22], v23 != 92) && v23 != 34)
    {
      v25 = v15 != 1 || v19;
      if (v25 == 1)
      {
        break;
      }

      goto LABEL_28;
    }

    v24 = v32;
    if (v15 != 1)
    {
      v24 = 1;
    }

    if (a6 != 29 && (v24 & 1) != 0)
    {
      break;
    }

LABEL_28:
    if (v22 < a3)
    {
      v26 = a2[v22];
      if (v26 == 92 || v26 == 34)
      {
        ++v10;
        goto LABEL_53;
      }
    }

    v27 = 0;
LABEL_34:
    if (a6 != 26 && a6 != 7 || !v27)
    {
      goto LABEL_53;
    }

    if (v15 == 1)
    {
      if (v33 | v14)
      {
        v15 = 0;
        if (v14)
        {
          v28 = 0;
        }

        else
        {
          v28 = v33 == 1;
        }

        if (v28)
        {
          v14 = 1;
        }

        goto LABEL_53;
      }

      v15 = 0;
      v14 = 0;
      if (a2[v22] == 58)
      {
        *a7 = v22;
      }
    }

    else
    {
      if (v33 != 1)
      {
        v15 = 1;
        goto LABEL_53;
      }

      result = 0;
      if (a6 != 26 || v14 == 1)
      {
        return result;
      }

      v15 = 1;
    }

    v33 = 1;
LABEL_53:
    v16 = ++v10;
    if (v10 >= a3)
    {
      return 0;
    }
  }

  *a5 = v16;
  return 1;
}

uint64_t parseStringArg(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _DWORD *a6, int a7)
{
  v13 = a5 - a4;
  v14 = heap_Calloc(*(*a1 + 8), 1, (v13 + 1));
  if (!v14)
  {
    return 2147491850;
  }

  v15 = v14;
  v30 = a1;
  v31 = a6;
  v16 = a2;
  v17 = v13;
  memcpy(v14, (a3 + a4), v13);
  if (v13)
  {
    v18 = 0;
    v19 = 0;
    v20 = v15;
    v21 = v13;
    do
    {
      if (v18)
      {
        if (*(v20 - 1) == 92)
        {
          v22 = *v20;
          if (v22 == 92 || v22 == 34)
          {
            memmove(v20 - 1, v20, v17 + v18);
            v15[--v21] = 0;
          }
        }
      }

      ++v19;
      v17 = v21;
      --v18;
      ++v20;
    }

    while (v19 < v21);
  }

  if (a7 == 1 || (v23 = *(v16 + 8), *(v23 + 20) == 26))
  {
    if (utf8_BelongsToSet(7u, v15, 0, v13))
    {
      v24 = strlen(v15);
      if (utf8_BelongsToSet(7u, v15, v24 - 1, v13))
      {
        v25 = strlen(v15);
        if (v25 != 1)
        {
          v26 = v25;
          memmove(v15, v15 + 1, v25 - 1);
          v15[v26 - 2] = 0;
        }
      }
    }

    if (a7 == 1)
    {
      v27 = (*(v16 + 8) + 48);
      v28 = v31;
      if (!*v15)
      {
        *v27 = 0;
        *v31 = 0;
        heap_Free(*(*v30 + 8), v15);
        return 0;
      }

      goto LABEL_22;
    }

    v23 = *(v16 + 8);
  }

  v27 = (v23 + 40);
  v28 = v31;
LABEL_22:
  result = 0;
  *v27 = v15;
  *v28 = 1;
  return result;
}

size_t parseNumericArg(size_t result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _DWORD *a6, _DWORD *a7)
{
  v7 = a7;
  v27 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  *a6 = 0;
  v8 = a5 - a4;
  if (v8 <= 0xA && a3)
  {
    v11 = result;
    v12 = 0;
    v13 = a3 + a4;
    memset(__s, 0, 11);
    do
    {
      v14 = *(v13 + v12);
      __s[v12] = v14;
      result = strlen(__s);
      if (v14)
      {
        v15 = result;
        result = utf8_BelongsToSet(6u, __s, v12, result);
        if (result)
        {
          result = utf8_BelongsToSet(0, __s, v12, v15);
          if (!result)
          {
            goto LABEL_7;
          }
        }
      }

      goto LABEL_21;
LABEL_7:
      if (v12 + 1 >= v8)
      {
        break;
      }

      if (v12 > 8)
      {
        break;
      }
    }

    while (__s[v12++]);
    v17 = *(*(a2 + 8) + 20);
    if (v17 == 2)
    {
      v18 = v13;
      v19 = v8;
      v20 = 0;
      v21 = 1;
LABEL_20:
      result = escseqm_ReadU32InRange(v18, v19, v20, v21);
      *(*(a2 + 8) + 40) = result;
      v7 = a6;
      goto LABEL_21;
    }

    v22 = *(*(v11 + 8) + 8);
    v23 = *(v22 + 16);
    if (*(v22 + 16))
    {
      v24 = (*(v22 + 24) + 8);
      while (*(v24 - 2) != v17)
      {
        v24 += 3;
        if (!--v23)
        {
          goto LABEL_16;
        }
      }

      v20 = *(v24 - 1);
      v21 = *v24;
      v18 = v13;
      v19 = v8;
      goto LABEL_20;
    }

LABEL_16:
    if (*a2 == 1)
    {
      v7 = a6;
    }
  }

LABEL_21:
  *v7 = 1;
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t escseqm_ReadU32InRange(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  v6 = 0;
  v16 = *MEMORY[0x1E69E9840];
  *&__str[7] = 0;
  v14 = 0;
  *__str = 0;
  do
  {
    v7 = v6;
    v8 = *(a1 + v6);
    __str[v6++] = v8;
    if (v7 > 8)
    {
      break;
    }
  }

  while (v8 && v6 < a2);
  __str[v6] = 0;
  v10 = strtoul(__str, &v14, 10);
  if (v10 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v10 >= a3)
  {
    result = v11;
  }

  else
  {
    result = a3;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t escseqs_ClassOpen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v6 = 2147491847;
  v11 = 0;
  if ((InitRsrcFunction(a1, a2, &v11) & 0x80000000) == 0)
  {
    v7 = heap_Calloc(*(v11 + 8), 1, 32);
    if (v7)
    {
      v8 = v7;
      v9 = v11;
      *(v7 + 8) = a2;
      *(v7 + 16) = v9;
      *v7 = a1;
      v6 = escseqm_ClassOpen(a1, a2, (v7 + 24));
      if ((v6 & 0x80000000) != 0)
      {
        heap_Free(*(v11 + 8), v8);
      }

      else
      {
        *a3 = v8;
      }
    }

    else
    {
      return 2147491850;
    }
  }

  return v6;
}

uint64_t escseqs_ClassClose(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  v2 = *(a1 + 16);
  v3 = escseqm_ClassClose(*(a1 + 24));
  if ((v3 & 0x80000000) == 0)
  {
    heap_Free(*(v2 + 8), a1);
  }

  return v3;
}

uint64_t escseqs_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v29 = 0;
  v30 = 0;
  v6 = 2147491847;
  if (a6 && (InitRsrcFunction(a2, a3, &v30) & 0x80000000) == 0)
  {
    *a6 = 0;
    v13 = heap_Alloc(v30[1], 96);
    if (!v13)
    {
      return 2147491850;
    }

    v14 = v13;
    *(v13 + 80) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 72) = a1;
    *v13 = a2;
    *(v13 + 8) = a3;
    v15 = escseqm_ObjOpen(*(a1 + 24), a2, a3, a4, a5, (v13 + 64));
    if ((v15 & 0x80000000) != 0)
    {
      v20 = v15;
      heap_Free(v30[1], v14);
      return v20;
    }

    if ((objc_GetObject(v30[6], "AUDIOFETCHER", &v29) & 0x80000000) == 0)
    {
      v16 = v29;
      if (*v29 != 1 || (v17 = *(v29 + 8)) == 0)
      {
        v21 = v30[6];
        v22 = "AUDIOFETCHER";
LABEL_18:
        objc_ReleaseObject(v21, v22);
        log_OutPublic(v30[4], &modESCPP, 2574, 0, v23, v24, v25, v26, v29);
        v27 = escseqs_ObjClose(v14);
        if (v27 < 0)
        {
          return v27;
        }

        else
        {
          return 2147491853;
        }
      }

      *(v14 + 32) = v17;
      *(v14 + 16) = *(v16 + 16);
    }

    if ((objc_GetObject(v30[6], "LANGCODECONVERTER", &v29) & 0x80000000) != 0)
    {
LABEL_13:
      v6 = 0;
      *a6 = v14;
      return v6;
    }

    v18 = v29;
    if (*v29 == 1)
    {
      v19 = *(v29 + 8);
      if (v19)
      {
        *(v14 + 56) = v19;
        *(v14 + 40) = *(v18 + 16);
        goto LABEL_13;
      }
    }

    v21 = v30[6];
    v22 = "LANGCODECONVERTER";
    goto LABEL_18;
  }

  return v6;
}

uint64_t escseqs_ObjClose(uint64_t a1)
{
  v1 = 2147491847;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      escseqm_ObjClose(v3);
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(v5 + 48), "LANGCODECONVERTER");
    }

    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(v5 + 48), "AUDIOFETCHER");
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t escseqs_SetMarkerSyncPos(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2147491847;
  }

  *(a1 + 80) = a2;
  *(a1 + 84) = a2;
  *(a1 + 92) = 1;
  return escseqm_ProcessStart(*(a1 + 64));
}

uint64_t escseqs_SetReset(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  result = 0;
  *(a1 + 88) = 0x100000000;
  return result;
}

uint64_t escseqs_GetPosInOut(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 80);
  *a3 = *(result + 84);
  return result;
}

uint64_t escseqs_SetPosInOut(uint64_t result, int a2, int a3)
{
  *(result + 80) = a2;
  *(result + 84) = a3;
  return result;
}

uint64_t escseqs_ProcessStart(uint64_t a1, _DWORD *a2)
{
  v13 = 0;
  v14 = 0;
  Defaults = 2147491847;
  __s1 = 0;
  v11 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v13) & 0x80000000) == 0)
  {
    if ((paramc_ParamGetStr(*(v13 + 40), "component_stop_not_reset", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
    {
      paramc_ParamSetStr(*(v13 + 40), "component_stop_not_reset", "");
    }

    else if ((paramc_ParamGetUInt(*(v13 + 40), "pipelineswitchexecuting", &v11) & 0x80000000) != 0 || !v11)
    {
      *(a1 + 80) = 0;
      *(a1 + 92) = 0;
    }

    paramc_ParamSetUInt(*(v13 + 40), "pipelineswitchexecuting", 0);
    v5 = escseqm_ProcessStart(*(a1 + 64));
    if ((v5 & 0x80000000) != 0)
    {
      Defaults = v5;
    }

    else
    {
      Defaults = escseqm_GetDefaults(*(a1 + 64), &v14);
      if ((Defaults & 0x80000000) == 0)
      {
        for (i = 0; i != 2496; i += 64)
        {
          v7 = v14 + i;
          v8 = *(v14 + i + 84);
          if (v8 == 31)
          {
            *a2 = *(v7 + 104);
            v8 = *(v7 + 84);
          }

          if (marker_hasNonConstCharPtrArg(v8))
          {
            v9 = *(v14 + i + 104);
            if (v9)
            {
              heap_Free(*(v13 + 8), v9);
              *(v14 + i + 104) = 0;
            }
          }
        }
      }
    }

    if (v14)
    {
      heap_Free(*(v13 + 8), v14);
    }
  }

  return Defaults;
}

uint64_t escseqs_Process(uint64_t a1, uint64_t a2)
{
  v170 = 0;
  v171 = 0;
  v2 = 2147491847;
  __s = 0;
  __s1 = 0;
  v155 = 0;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v162 = 0u;
  v163 = 0x200000000uLL;
  v164 = 0u;
  v165 = 0u;
  LODWORD(v162) = 1;
  DWORD2(v165) = 0;
  *&v164 = 0;
  v161 = 0u;
  v158 = 0u;
  v159 = 0x2400000000uLL;
  DWORD2(v161) = 0;
  v160 = 0uLL;
  if (!a1 || !a2 || (InitRsrcFunction(*a1, *(a1 + 8), &v171) & 0x80000000) != 0)
  {
    return v2;
  }

  appended = datac_RequestBlock(a2, 1000, 1u, &v170);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v6 = *(v170 + 8);
  if (!v6)
  {
    return v2;
  }

  if (*(v170 + 2) != 1)
  {
    return 2147491865;
  }

  LODWORD(v166) = 0;
  LOWORD(v167) = 0;
  *(&v166 + 1) = 0;
  v7 = *(a1 + 80);
  v8 = *(a1 + 84);
  DWORD1(v167) = 0x4000;
  *(&v167 + 1) = v7;
  LODWORD(v168) = v8;
  *(&v168 + 4) = 0;
  DWORD2(v169) = 0;
  *&v169 = 0;
  appended = escseqs_AppendOutMarker(a2, &v166);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  if ((paramc_ParamGetStr(*(v171 + 40), "textanalysison", &__s1) & 0x80000000) == 0)
  {
    if (__s1)
    {
      if (*__s1)
      {
        v9 = strcmp(__s1, "yes");
        if (!(DWORD2(v167) | v9))
        {
          v36 = heap_Calloc(*(v171 + 8), 1, 12);
          if (!v36)
          {
            return 2147491850;
          }

          v37 = v36;
          strcpy(v36, "ins_unknown");
          *(&v159 + 1) = 0;
          *&v160 = 0;
          *(&v160 + 1) = v36;
          appended = escseqs_AppendOutMarker(a2, &v158);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          heap_Free(*(v171 + 8), v37);
        }
      }
    }
  }

  *&v151 = 0;
  *v172 = 0;
  appended = datac_RequestBlock(a2, 1011, 1u, &v151);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  appended = datac_RequestBlock(a2, 1012, 1u, v172);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  if (*(a1 + 92) == 1)
  {
    v140 = v6;
    v10 = &off_1E81A5238;
    LODWORD(v151) = 0;
    *(a1 + 92) = 0;
    v11 = 4;
    while (1)
    {
      v12 = *(v10 - 2);
      if (v12 > 30)
      {
        if (v12 == 36)
        {
LABEL_26:
          Str = paramc_ParamGetStr(*(v171 + 40), *v10, &__s);
          if ((Str & 0x1FFF) != 0x14)
          {
            v17 = Str;
            if ((Str & 0x80000000) != 0)
            {
              goto LABEL_282;
            }

            log_OutText(*(v171 + 32), &modESCPP, 4, 0, "[ESCSEQS] GET PARAM marker:%d param=%s val=%s", v22, v23, v24, v12);
            v25 = strlen(__s);
            v26 = heap_Calloc(*(v171 + 8), 1, v25 + 1);
            if (!v26)
            {
              return 2147491850;
            }

            v27 = v26;
            v28 = strncpy(v26, __s, v25);
            v28[v25] = 0;
            LODWORD(v166) = 1;
            v29 = *(a1 + 80);
            v30 = *(a1 + 84);
            DWORD1(v167) = v12;
            *(&v167 + 1) = v29;
            *&v168 = v30;
            *(&v168 + 1) = v28;
            v31 = escseqs_AppendOutMarker(a2, &v166);
            if ((v31 & 0x80000000) != 0)
            {
              v17 = v31;
              heap_Free(*(v171 + 8), v27);
              goto LABEL_282;
            }

            heap_Free(*(v171 + 8), v27);
          }

          paramc_ParamRelease(*(v171 + 40));
          __s = 0;
          goto LABEL_32;
        }

        if (v12 == 31)
        {
LABEL_22:
          UInt = paramc_ParamGetUInt(*(v171 + 40), *v10, &v151);
          if ((UInt & 0x1FFF) != 0x14)
          {
            v17 = UInt;
            if ((UInt & 0x80000000) != 0)
            {
              goto LABEL_282;
            }

            log_OutText(*(v171 + 32), &modESCPP, 4, 0, "[ESCSEQS] GET PARAM marker:%d param=%s val=%d", v14, v15, v16, v12);
            LODWORD(v166) = 1;
            v18 = *(a1 + 80);
            v19 = *(a1 + 84);
            DWORD1(v167) = v12;
            *(&v167 + 1) = v18;
            *&v168 = v19;
            DWORD2(v168) = v151;
            DWORD2(v169) = 0;
            *&v169 = 0;
            v20 = escseqs_AppendOutMarker(a2, &v166);
            if ((v20 & 0x80000000) != 0)
            {
              goto LABEL_281;
            }
          }
        }
      }

      else
      {
        if (v12 == 7)
        {
          goto LABEL_22;
        }

        if (v12 == 21)
        {
          goto LABEL_26;
        }
      }

LABEL_32:
      v10 += 2;
      if (!--v11)
      {
        v6 = v140;
        break;
      }
    }
  }

  v32 = &v6[*(v170 + 16)];
  v33 = v6;
  if (*(a1 + 88))
  {
    v33 = v6;
    if (*(v170 + 16))
    {
      v34 = 0;
      v33 = v6;
      while (1)
      {
        v35 = *v33;
        if (!v34 && v35 == 92)
        {
          break;
        }

        if (v35 == 34)
        {
          v34 = !v34;
        }

        v33 += utf8_determineUTF8CharLength(v35);
        if ((v33 + 1) > v32)
        {
          goto LABEL_50;
        }
      }

      v33 += utf8_determineUTF8CharLength(0x5Cu);
      *(a1 + 88) = 0;
    }
  }

LABEL_50:
  DWORD1(v167) = 0;
  v39 = *(v170 + 16);
  v150 = 1;
  if ((paramc_ParamGetStr(*(v171 + 40), "clcpppipelinemode", &v155) & 0x80000000) == 0 && v155)
  {
    v150 = *v155 == 0;
  }

  v145 = v32;
  if (&v33[utf8_determineUTF8CharLength(*v33)] > v32)
  {
    LOWORD(v40) = 0;
LABEL_55:
    v41 = v33;
    goto LABEL_251;
  }

  v137 = 0;
  v138 = 0;
  v40 = 0;
  while (1)
  {
    if (v39 != *(v170 + 16))
    {
      goto LABEL_55;
    }

    v147 = v40;
    v148 = v39;
    v172[0] = 0;
    v42 = utf8_determineUTF8CharLength(*v33);
    if (v42)
    {
      v41 = v33;
      while (1)
      {
        v43 = &v41[v42];
        if (v43 > v32 || isEsc(*(a1 + 64), v41, (v32 - v41), 0, v172))
        {
          v43 = v41;
          goto LABEL_70;
        }

        LOWORD(v151) = 0;
        if (v150 && isEscOrPartialEsc(*(a1 + 64), v41, (v32 - v41), 0, &v151) == 2)
        {
          goto LABEL_249;
        }

        if (v43 >= v32)
        {
          break;
        }

        v42 = utf8_determineUTF8CharLength(*v43);
        v41 = v43;
        if (!v42)
        {
          goto LABEL_70;
        }
      }

      v42 = 0;
    }

    else
    {
      v43 = v33;
    }

LABEL_70:
    v172[0] = 0;
    v146 = v32 - v43;
    v44 = isEsc(*(a1 + 64), v43, (v32 - v43), 0, v172);
    v49 = !v172[0] || v44 == 0;
    v50 = v49 ? 0 : v172[0] - 1;
    if (!v42 || &v43[v42 + v50] > v32)
    {
      break;
    }

    v51 = &v43[v50 + 1];
    v40 = v147;
    if (v51 < v32)
    {
      v52 = *v51;
      v53 = &v43[v50 + 2];
      if (v52 == 47)
      {
        v59 = v51[1];
        if ((v59 - 43) <= 0x3F && ((1 << (v59 - 43)) & 0xA008000000080001) != 0)
        {
          for (i = v51[1]; &v53[utf8_determineUTF8CharLength(i) + 2] <= v32; i = *v53)
          {
            v62 = *v53;
            if (v62 == 47)
            {
              v63 = v53[1] - 43;
              v64 = v63 > 0x3F;
              v65 = (1 << v63) & 0xA008000000080001;
              v66 = v64 || v65 == 0;
              if (!v66 && v43[2] == v59)
              {
                break;
              }
            }

            v53 += utf8_determineUTF8CharLength(v62);
          }

          v138 = v59 != 0;
          if ((v53 + 1) <= v32)
          {
            v40 = v147;
          }

          else
          {
            v40 = v147;
            if (!*(v170 + 20))
            {
              v148 = (v43 - v6);
            }
          }

          v67 = v148;
LABEL_180:
          if (!v67)
          {
            return 2147491849;
          }

          goto LABEL_181;
        }
      }

      else if (v52 == 92)
      {
        while ((v53 + 1) <= v32 && utf8_BelongsToSet(0, v53, 0, *(v170 + 16)))
        {
          v53 += utf8_determineUTF8CharLength(*v53);
        }

        v54 = v53;
        if (&v53[utf8_determineUTF8CharLength(*v53) + 1] <= v32)
        {
          v54 = v53;
          do
          {
            if (utf8_BelongsToSet(0, v54, 0, *(v170 + 16)))
            {
              break;
            }

            v68 = *v54;
            if (v68 == 61)
            {
              break;
            }

            if (v68 == 92)
            {
              break;
            }

            v54 += utf8_determineUTF8CharLength(v68);
          }

          while (&v54[utf8_determineUTF8CharLength(*v54) + 1] <= v32);
        }

        WORD2(v151) = 0;
        LODWORD(v151) = 0;
        v55 = v54 - v53;
        if ((v54 - v53) > 6uLL)
        {
          v55 = 6;
        }

        v141 = v6;
        if (v55)
        {
          __strncpy_chk();
          if (LH_stricmp(&v151, "audio"))
          {
            if (LH_stricmp(&v151, "mrk"))
            {
              v56 = LH_stricmp(&v151, "toi");
              v57 = 0;
              v144 = 0;
              v58 = v56 == 0;
              goto LABEL_120;
            }

            v57 = 0;
            v58 = 0;
            v139 = 0;
            v142 = 1;
            v144 = 1;
LABEL_123:
            v69 = (v54 + 1);
            if ((v54 + 1) > v32)
            {
LABEL_124:
              v6 = v141;
              if (!*(v170 + 20))
              {
                v148 = (v43 - v141);
              }

LABEL_176:
              v40 = v147;
              v67 = v148;
              v84 = v142 ^ 1;
              if (v148)
              {
                v84 = 1;
              }

              if ((v84 & 1) == 0)
              {
                v67 = 0;
                *(a1 + 88) = 1;
                goto LABEL_181;
              }

              goto LABEL_180;
            }

            v70 = 0;
            v71 = 0;
            v143 = v57;
            while (2)
            {
              v72 = *v54;
              if (!v71 && v72 == 92)
              {
                v73 = v139;
                if (v58)
                {
                  v73 = 0;
                }

                if ((v142 & v73 & 1) != 0 || (v58 == 1 ? (v74 = 1) : (v74 = v57), v70 == 1 && v144 | v74 && (v69 >= v32 || (v75 = *v69, v75 != 92) && v75 != 34)))
                {
                  v6 = v141;
                  goto LABEL_176;
                }
              }

              if (*v54 == 34)
              {
                v76 = v57;
              }

              else
              {
                v76 = 0;
              }

              if (v76)
              {
                v71 = v71 != 1;
                v72 = 34;
                if (!v70)
                {
                  goto LABEL_170;
                }

LABEL_159:
                if (v71 == 1)
                {
                  v81 = v57;
                }

                else
                {
                  v81 = 0;
                }

                if (((v144 | v81) & 1) == 0 && v58 != 1)
                {
                  v78 = v71;
                  v79 = v58;
                  v70 = 1;
                  goto LABEL_171;
                }

                v70 = 1;
                if (v72 == 92 && v69 < v32)
                {
                  v82 = *v69;
                  if (v82 == 34 || v82 == 92)
                  {
                    v83 = 2;
                    goto LABEL_172;
                  }

                  v78 = v71;
                  v79 = v58;
                  v72 = 92;
                }

                else
                {
LABEL_170:
                  v78 = v71;
                  v79 = v58;
                }
              }

              else
              {
                if (v70)
                {
                  goto LABEL_159;
                }

                if (v72 == 61)
                {
                  v135 = v71;
                  v136 = v58;
                  if ((v69 + 1) <= v32)
                  {
                    v77 = v69;
                    do
                    {
                      if (!utf8_BelongsToSet(0, v77, 0, *(v170 + 16)))
                      {
                        break;
                      }

                      v77 += utf8_determineUTF8CharLength(*v77);
                    }

                    while ((v77 + 1) <= v32);
                    v72 = *v54;
                  }

                  else
                  {
                    v72 = 61;
                    v77 = v69;
                  }

                  v80 = strncmp(v77, "orth", 4uLL);
                  v71 = v135;
                  if (v80)
                  {
                    v58 = v136;
                  }

                  else
                  {
                    v58 = 0;
                  }

                  v57 = v143;
                  goto LABEL_159;
                }

                v78 = v71;
                v79 = v58;
                v70 = 0;
              }

LABEL_171:
              v83 = utf8_determineUTF8CharLength(v72);
              v57 = v143;
              v58 = v79;
              v71 = v78;
              v32 = v145;
LABEL_172:
              v54 += v83;
              v69 = (v54 + 1);
              if ((v54 + 1) > v32)
              {
                goto LABEL_124;
              }

              continue;
            }
          }

          v142 = 0;
          v58 = 0;
          v144 = 0;
          v57 = 1;
        }

        else
        {
          v57 = 0;
          v58 = 0;
          v144 = 0;
LABEL_120:
          v142 = 1;
        }

        v139 = 1;
        goto LABEL_123;
      }

      v40 = v147;
      if (v146 > 11)
      {
        goto LABEL_106;
      }
    }

    if (*(v170 + 20))
    {
LABEL_106:
      v67 = v39;
      goto LABEL_181;
    }

    v67 = (v43 - v6);
LABEL_181:
    v149 = v67;
    if (v67 != *(v170 + 16))
    {
      v41 = v43;
      goto LABEL_251;
    }

    if (v43 != v33)
    {
      v20 = escseqs_AppendOutText(a2, v33, (v43 - v33));
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_281;
      }

      v40 += v43 - v33;
    }

    *(&v168 + 1) = 0;
    v17 = escseqm_Match(*(a1 + 64), v43, v146, &v166, v45, v46, v47, v48);
    if ((v17 & 0x1FFF) == 0xA)
    {
      goto LABEL_282;
    }

    v85 = DWORD1(v167);
    if (DWORD1(v167) == 36)
    {
      v17 = escseqs_NormalizeLanguageName(a1, &v166);
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_282;
      }

      v85 = DWORD1(v167);
    }

    if (v169 && DWORD2(v168) != 43 && (DWORD2(v168) - 70) >= 3 && v85 != 26)
    {
      heap_Free(*(v171 + 8), v169);
      *&v169 = 0;
      DWORD2(v169) = 0;
LABEL_195:
      v20 = escseqs_AppendOutText(a2, v43, 1u);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_281;
      }

      ++v40;
      v33 = v43 + 1;
      goto LABEL_197;
    }

    if (v17)
    {
      goto LABEL_195;
    }

    if (marker_hasNonConstCharPtrArg(v85) && !*(&v168 + 1))
    {
      LOWORD(v167) = 0;
      *(&v166 + 1) = 0;
      DWORD1(v167) = 0x4000;
      DWORD2(v168) = 0;
      goto LABEL_226;
    }

    v86 = DWORD1(v167);
    if (!v169 || DWORD1(v167) == 26)
    {
      if (v169 && DWORD1(v167) == 26)
      {
        v88 = v40;
        v89 = strlen(v169);
        *&v151 = 0;
        v90 = *(&v168 + 1);
        v91 = *(*(a1 + 32) + 64);
        NullHandle = safeh_GetNullHandle();
        if ((v91(*(a1 + 16), *(a1 + 24), v90, 0, NullHandle, v93, &v151) & 0x80000000) != 0)
        {
          log_OutText(*(v171 + 32), &modESCPP, 4, 0, "[ESCSEQS] Invalid audio file, file=%s, Putting alternate text in text stream: %s ", v94, v95, v96, *(&v168 + 1));
          v20 = escseqs_AppendOutText(a2, v169, v89);
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_281;
          }

          DWORD1(v167) = 0;
          heap_Free(*(v171 + 8), *(&v168 + 1));
          *(&v168 + 1) = 0;
        }

        heap_Free(*(v171 + 8), v169);
        *&v169 = 0;
        v86 = DWORD1(v167);
        v40 = v88;
      }

      goto LABEL_224;
    }

    if (SDWORD2(v168) > 70)
    {
      if (DWORD2(v168) == 71)
      {
        DWORD2(v168) = 43;
LABEL_223:
        DWORD2(v169) = 0;
        goto LABEL_224;
      }

      if (DWORD2(v168) != 72)
      {
LABEL_218:
        DWORD2(v168) = 43;
        if (DWORD2(v169) != 3)
        {
          goto LABEL_224;
        }

        goto LABEL_223;
      }

      v87 = 4;
    }

    else if (DWORD2(v168) == 43)
    {
      v87 = 1;
    }

    else
    {
      if (DWORD2(v168) != 70)
      {
        goto LABEL_218;
      }

      v87 = 2;
    }

    DWORD2(v169) = v87;
    DWORD2(v168) = 43;
LABEL_224:
    if (v86)
    {
      goto LABEL_227;
    }

    LOWORD(v167) = 0;
    *(&v166 + 1) = 0;
    DWORD1(v167) = 999;
LABEL_226:
    DWORD2(v169) = 0;
    *&v169 = 0;
LABEL_227:
    v97 = *(a1 + 80);
    v98 = *(a1 + 84);
    LODWORD(v166) = 0;
    DWORD2(v167) = v97 + v43 - v6;
    LODWORD(v168) = v98 + v40;
    if (v138 || ((DWORD2(v168) - 15) > 0x39 || ((1 << (BYTE8(v168) - 15)) & 0x280200010000003) == 0) && (DWORD2(v168) - 106) >= 3)
    {
      v17 = escseqs_AppendOutMarker(a2, &v166);
    }

    else
    {
      if (v137 == DWORD2(v168))
      {
        DWORD1(v167) = 999;
      }

      v17 = escseqs_AppendOutMarker(a2, &v166);
      v137 = DWORD2(v168);
    }

    if (marker_hasNonConstCharPtrArg(SDWORD1(v167)) && *(&v168 + 1))
    {
      heap_Free(*(v171 + 8), *(&v168 + 1));
      *(&v168 + 1) = 0;
    }

    else
    {
      DWORD2(v168) = 0;
    }

    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    if (DWORD1(v167) == 13)
    {
      inserted = escseqs_InsertDefaultMarkers(a1, a2, &v166);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }
    }

    else if (DWORD1(v167) == 4)
    {
      DWORD1(v163) = 2;
      *(&v163 + 1) = (HIDWORD(v167) + DWORD2(v167));
      LODWORD(v164) = v168;
      *(&v164 + 4) = 0x100000000;
      inserted = escseqs_AppendOutMarker(a2, &v162);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }
    }

    v33 = &v43[HIDWORD(v167)];
    HIDWORD(v167) = 0;
    DWORD1(v167) = 0;
    *&v169 = 0;
    DWORD2(v169) = 0;
LABEL_197:
    v41 = v33;
    v39 = v149;
    if (&v33[utf8_determineUTF8CharLength(*v33)] > v32)
    {
      goto LABEL_251;
    }
  }

  v41 = v43;
LABEL_249:
  LOWORD(v40) = v147;
LABEL_251:
  v20 = escseqs_AppendOutText(a2, v33, (v41 - v33));
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

  v100 = *(v170 + 20);
  *&v151 = 0;
  v20 = datac_RequestBlock(a2, 1010, 1u, &v151);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

  *(v151 + 20) = v100;
  v20 = escseqs_PutOutMarkerEos(a2, *(v170 + 20));
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

  if (*(v170 + 20))
  {
    v101 = 0;
    v102 = 0;
    *(a1 + 92) = 0;
  }

  else
  {
    v101 = *(a1 + 80) + v41 - v6;
    v102 = *(a1 + 84) + (v40 + v41 - v33);
  }

  *(a1 + 80) = v101;
  *(a1 + 84) = v102;
  *&v151 = 0;
  v20 = datac_RequestBlock(a2, 1011, 1u, &v151);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

  v103 = v151;
  v104 = *(v151 + 16);
  if (v104 >= 2)
  {
    v105 = *(v151 + 8);
    v106 = 1;
    do
    {
      v107 = v105 + (v106 << 6);
      if (*(v107 + 20) == 7)
      {
        v108 = *(v107 + 40);
        if (v108 == 60 || v108 == 16)
        {
          if (v104 <= (v106 + 1))
          {
            v110 = (v106 + 1);
          }

          else
          {
            v110 = v104;
          }

          do
          {
            if (++v106 >= v104)
            {
              v106 = v110;
              goto LABEL_274;
            }

            v111 = v105 + (v106 << 6);
          }

          while (*(v111 + 20) != 7);
          v113 = *(v111 + 40);
          v112 = (v111 + 40);
          if (v108 == v113)
          {
            *v112 = 15;
            v103 = v151;
          }
        }
      }

LABEL_274:
      ++v106;
      v104 = *(v103 + 16);
    }

    while (v104 > v106);
  }

  *&v151 = 0;
  v20 = datac_RequestBlock(a2, 1011, 1u, &v151);
  if ((v20 & 0x80000000) != 0)
  {
LABEL_281:
    v17 = v20;
  }

  else
  {
    v114 = *(v151 + 16);
    if (v114 >= 2)
    {
      v115 = 0;
      v116 = *(v151 + 8);
      v117 = 2;
      while (*(v116 + v115 + 84) != 0x4000)
      {
        ++v117;
        v115 += 64;
        if ((v114 << 6) - 64 == v115)
        {
          goto LABEL_297;
        }
      }

      if (v114 > v117)
      {
        v118 = (v116 + v115 + 148);
        while (1)
        {
          v119 = *v118;
          v118 += 16;
          if (v119 != 0x4000)
          {
            break;
          }

          if (v114 == ++v117)
          {
            goto LABEL_297;
          }
        }

        if (*(v116 + (v117 << 6) + 20) == 0x4000)
        {
          v120 = v117 + 1;
          if (v120 == v114)
          {
            *(v151 + 16) = v114 - 1;
          }

          else
          {
            memmove((v116 + v115 + 128), (v116 + (v120 << 6)), (v114 - v117) << 6);
            *(v151 + 16) -= v117;
          }

          LOWORD(v32) = v145;
        }
      }
    }

LABEL_297:
    *v172 = 0;
    v17 = datac_RequestBlock(a2, 1011, 1u, v172);
    if ((v17 & 0x80000000) == 0)
    {
      v121 = *v172;
      LOWORD(v122) = *(*v172 + 16);
      if (v122)
      {
        v123 = 0;
        v124 = 0;
        v125 = 0;
        v126 = 0;
        v127 = *(*v172 + 8);
        do
        {
          v128 = (v127 + (v126 << 6));
          v129 = v128[5];
          if (v129 == 7)
          {
            if (v128[10] == 43)
            {
              v124 = !v124;
              v125 = v126;
            }

            else
            {
              v124 = 0;
            }
          }

          else if (v129 == 0x4000 && v124)
          {
            v131 = v125;
            v132 = (v127 + (v125 << 6));
            v128[6] = *(v132 + 6);
            v128[8] = *(v132 + 8);
            v151 = *v128;
            v154 = *(v128 + 3);
            v152 = *(v128 + 1);
            v153 = *(v128 + 2);
            v133 = (v123 + 1);
            if (v122 > v133)
            {
              memmove(v128, (v127 + (v133 << 6)), (v122 - v133) << 6);
              v121 = *v172;
            }

            v134 = *(v121 + 16) - 1;
            *(v121 + 16) = v134;
            memmove(v132 + 4, v132, (v134 - v131) << 6);
            v125 = 0;
            v124 = 0;
            *v132 = v151;
            v132[1] = v152;
            v132[2] = v153;
            v132[3] = v154;
            v121 = *v172;
            ++*(*v172 + 16);
            ++v126;
          }

          v123 = ++v126;
          v122 = *(v121 + 16);
        }

        while (v126 < v122);
      }

      memmove(v6, v41, (v32 - v41));
      *(v170 + 16) = v32 - v41;
    }
  }

LABEL_282:
  if (__s)
  {
    paramc_ParamRelease(*(v171 + 40));
  }

  return v17;
}

uint64_t escseqs_AppendOutMarker(uint64_t a1, __int128 *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    result = datac_RequestBlock(a1, 1012, 1u, &v24);
    if ((result & 0x80000000) == 0)
    {
      v25 = *a2;
      v5 = *(a2 + 5);
      v26 = *(a2 + 4);
      v6 = *(a2 + 5);
      v21 = a2[3];
      v22 = *(a2 + 24);
      result = datac_RequestBlock(a1, 1011, 1u, &v24);
      if ((result & 0x80000000) == 0)
      {
        v7 = *(v24 + 16) + 1;
        if (*(v24 + 18) >= v7 || (result = datac_RequestBlock(a1, 1011, (*(v24 + 16) + 1), &v24), (result & 0x80000000) == 0))
        {
          result = datac_RequestBlock(a1, 1012, 1u, &v23);
          if ((result & 0x80000000) == 0)
          {
            if (marker_hasNonConstCharPtrArg(v5) && v6)
            {
              v8 = *(v23 + 8);
              if (v8)
              {
                v9 = *(v23 + 16);
                if (*(v23 + 16))
                {
                  v10 = 0;
                  while (strcmp(v6, v8))
                  {
                    v11 = strlen(v8) + 1;
                    v10 += v11;
                    v8 += v11;
                    if (v10 >= v9)
                    {
                      goto LABEL_14;
                    }
                  }

                  v14 = *(v24 + 8) + (*(v24 + 16) << 6);
                  *v14 = v25;
                  *(v14 + 16) = v26;
                  *(v14 + 20) = v5;
                  *(v14 + 24) = v22;
                  *(v14 + 40) = v6 & 0xFFFFFFFF00000000 | v10;
                  *(v14 + 48) = v21;
                  v15 = &v24;
                  goto LABEL_28;
                }
              }

LABEL_14:
              if (marker_hasNonConstCharPtrArg(*(a2 + 5)))
              {
                if (*(a2 + 5))
                {
                  v12 = *(v23 + 16);
                }

                else
                {
                  v12 = 0xFFFFFFFFLL;
                }

                v6 = v6 & 0xFFFFFFFF00000000 | v12;
              }
            }

            v16 = *(v24 + 8) + (*(v24 + 16) << 6);
            *v16 = v25;
            *(v16 + 16) = v26;
            *(v16 + 20) = v5;
            *(v16 + 24) = v22;
            *(v16 + 40) = v6;
            *(v16 + 48) = v21;
            *(v24 + 16) = v7;
            result = marker_hasNonConstCharPtrArg(*(a2 + 5));
            if (result)
            {
              v17 = *(a2 + 5);
              if (!v17)
              {
                result = 0;
                goto LABEL_18;
              }

              v18 = strlen(*(a2 + 5)) + 1;
              v19 = v23;
              v20 = *(v23 + 16);
              v7 = v20 + v18;
              if (*(v23 + 18) >= (v20 + v18))
              {
                goto LABEL_27;
              }

              result = datac_RequestBlock(a1, 1012, (v20 + v18), &v23);
              if ((result & 0x80000000) == 0)
              {
                v19 = v23;
                v20 = *(v23 + 16);
                v17 = *(a2 + 5);
LABEL_27:
                memcpy((*(v19 + 8) + v20), v17, v18);
                v15 = &v23;
LABEL_28:
                result = 0;
                *(*v15 + 16) = v7;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = 2147491847;
  }

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t escseqs_AppendOutText(uint64_t a1, const void *a2, unsigned int a3)
{
  v10 = 0;
  if (!a2)
  {
    return 2147491847;
  }

  result = datac_RequestBlock(a1, 1010, 1u, &v10);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v7 = v10;
  v8 = *(v10 + 16);
  v9 = v8 + a3;
  if (*(v10 + 18) < (v8 + a3))
  {
    result = datac_RequestBlock(a1, 1010, (v8 + a3), &v10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = v10;
    v8 = *(v10 + 16);
  }

  memcpy((*(v7 + 8) + v8), a2, a3);
  result = 0;
  *(v10 + 16) = v9;
  return result;
}

uint64_t escseqs_NormalizeLanguageName(uint64_t a1, uint64_t a2)
{
  __s2 = 0;
  v13 = 0;
  v11 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v13);
  if ((inited & 0x80000000) != 0)
  {
    return 2147491847;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    return inited;
  }

  v6 = (*(v5 + 24))(*(a1 + 40), *(a1 + 48), *(a2 + 40), &__s2, &v11);
  if ((v6 & 0x80000000) == 0)
  {
    if (v11)
    {
      v7 = __s2;
      if (__s2)
      {
        if (strcmp(*(a2 + 40), __s2) && *v7)
        {
          v8 = strhelper_Strdup(*(v13 + 8), v7);
          if (v8)
          {
            v9 = v8;
            heap_Free(*(v13 + 8), *(a2 + 40));
            *(a2 + 40) = v9;
          }

          else
          {
            return 2147491850;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t escseqs_InsertDefaultMarkers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v17) & 0x80000000) != 0)
  {
    return 2147491847;
  }

  Defaults = escseqm_GetDefaults(*(a1 + 64), &v18);
  if ((Defaults & 0x80000000) == 0)
  {
    for (i = 0; i != 2496; i += 64)
    {
      v8 = *(v18 + i + 84);
      if (v8)
      {
        if (!marker_hasNonConstCharPtrArg(v8))
        {
          v9 = v18 + i;
          *(v9 + 88) = *(a3 + 28) + *(a3 + 24);
          *(v9 + 100) = 0;
          v10 = *(a3 + 32);
          *(v9 + 64) = 0;
          v9 += 64;
          *(v9 + 32) = v10;
          appended = escseqs_AppendOutMarker(a2, v9);
          Defaults = 0;
          if ((appended & 0x80000000) != 0)
          {
LABEL_17:
            Defaults = appended;
            goto LABEL_18;
          }
        }
      }
    }

    for (j = 104; j != 2600; j += 64)
    {
      if (marker_hasNonConstCharPtrArg(*(v18 + j - 20)))
      {
        v13 = v18 + j;
        *(v13 - 16) = *(a3 + 28) + *(a3 + 24);
        *(v13 - 4) = 0;
        v14 = *(a3 + 32);
        *(v13 - 40) = 0;
        v13 -= 40;
        *(v13 + 32) = v14;
        appended = escseqs_AppendOutMarker(a2, v13);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_17;
        }

        v15 = *(v18 + j);
        if (v15)
        {
          heap_Free(*(v17 + 8), v15);
          Defaults = 0;
          *(v18 + j) = 0;
        }

        else
        {
          Defaults = 0;
        }
      }
    }
  }

LABEL_18:
  if (v18)
  {
    heap_Free(*(v17 + 8), v18);
  }

  return Defaults;
}

uint64_t escseqs_PutOutMarkerEos(uint64_t a1, int a2)
{
  v5 = 0;
  result = datac_RequestBlock(a1, 1011, 1u, &v5);
  if ((result & 0x80000000) == 0)
  {
    *(v5 + 20) = a2;
    result = datac_RequestBlock(a1, 1012, 1u, &v5);
    if ((result & 0x80000000) == 0)
    {
      result = 0;
      *(v5 + 20) = a2;
    }
  }

  return result;
}

uint64_t extdata_LoadSpecificData(uint64_t a1, char *a2, const char *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  __s = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  *__s2 = 0;
  if (a1)
  {
    result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &__s);
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
      if (strcmp(v7, __s2))
      {
        result = paramc_ParamSetStr(*(*(a1 + 16) + 40), "langcode", __s2);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_19;
        }

        __s = __s2;
      }

      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      brokeraux_ComposeBrokerString(*(a1 + 16), v17, 1, 1, __s, 0, 0, v16, 0x80uLL);
      LODWORD(result) = readDataFile(a1, a2, v16, a3);
      v11 = result;
      v12 = result & 0x80001FFF;
      if ((result & 0x80001FFF) == 0x8000000A)
      {
        result = result;
      }

      else
      {
        result = 0;
      }

      if (v11 < 0 && v12 != -2147483638)
      {
        v17[strlen(v17) - 4] = 0;
        brokeraux_ComposeBrokerString(*(a1 + 16), v17, 1, 1, __s, 0, 0, v16, 0x80uLL);
        result = readDataFile(a1, a2, v16, a3);
      }
    }
  }

  else
  {
    result = 2368741383;
  }

LABEL_19:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t readDataFile(uint64_t a1, char *a2, const char *a3, const char *a4)
{
  v32 = 0;
  v31 = 0;
  v29 = 0;
  *__s2 = 0;
  v27 = 0;
  v28 = 0;
  result = brk_DataOpenEx(*(*(a1 + 16) + 24), a3, 1, &v27);
  if ((result & 0x80000000) == 0)
  {
    result = brk_DataClose(*(*(a1 + 16) + 24), v27);
    if ((result & 0x80000000) == 0)
    {
      result = ssftriff_reader_ObjOpen(*a1, *(a1 + 8), 0, a3, a2, 1031, &v32);
      if ((result & 0x80000000) == 0)
      {
        do
        {
          v16 = ssftriff_reader_OpenChunk(v32, __s2, &v29, &v28, v9, v10, v11, v12);
          if (v16 < 0)
          {
            break;
          }

          v17 = *(a1 + 32);
          if (*(a1 + 32))
          {
            v18 = *(a1 + 24);
            while (strcmp(*v18, __s2))
            {
              v18 += 32;
              if (!--v17)
              {
                goto LABEL_14;
              }
            }

            if (!a4 || !strcmp(a4, __s2))
            {
              v16 = (*(v18 + 8))(*(v18 + 24), v32, v29, v28);
              if (v16 < 0)
              {
                log_OutPublic(*(*(a1 + 16) + 32), "PP_EXTDATA", 1800, "%s%s", v19, v20, v21, v22, "loading_type");
              }
            }
          }

LABEL_14:
          v23 = ssftriff_reader_CloseChunk(v32);
          if (v23 < 0 && v16 > -1)
          {
            v16 = v23;
          }
        }

        while ((v16 & 0x80000000) == 0);
        if ((v16 & 0x1FFF) == 0x14)
        {
          v25 = 0;
        }

        else
        {
          v25 = v16;
        }

        LODWORD(result) = ssftriff_reader_ObjClose(v32, v13, v14, v15, v9, v10, v11, v12);
        if (v25 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v25;
        }
      }
    }
  }

  return result;
}

uint64_t extdata_RegisterData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!*(a1 + 32))
  {
    v8 = heap_Calloc(*(*(a1 + 16) + 8), 1, (32 * a3) | 1);
    *(a1 + 24) = v8;
    if (v8)
    {
      goto LABEL_7;
    }

    return (*(a1 + 36) << 20) | 0x8000200A;
  }

  v6 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 24), (32 * (*(a1 + 32) + a3)) | 1);
  if (!v6)
  {
    return (*(a1 + 36) << 20) | 0x8000200A;
  }

  *(a1 + 24) = v6;
LABEL_7:
  if (a3)
  {
    v9 = 0;
    do
    {
      v10 = (*(a1 + 24) + 32 * *(a1 + 32) + v9);
      v11 = *(a2 + v9 + 16);
      *v10 = *(a2 + v9);
      v10[1] = v11;
      v9 += 32;
    }

    while (32 * a3 != v9);
  }

  result = 0;
  *(a1 + 32) += a3;
  return result;
}

uint64_t extdata_ObjOpen(_WORD *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v12 = 0;
  if (!a3 || (InitRsrcFunction(a1, a2, &v12) & 0x80000000) != 0)
  {
    v11 = -2147475449;
  }

  else
  {
    *a3 = 0;
    v8 = heap_Alloc(*(v12 + 8), 40);
    if (v8)
    {
      v9 = v8;
      result = 0;
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0;
      *v9 = a1;
      *(v9 + 8) = a2;
      *(v9 + 16) = v12;
      *(v9 + 32) = 0;
      *(v9 + 36) = a4;
      *a3 = v9;
      return result;
    }

    v11 = -2147475446;
  }

  return v11 | (a4 << 20);
}

uint64_t extdata_UnregisterModule(uint64_t a1, unsigned int a2)
{
  result = 2368741383;
  if (a1)
  {
    if (*(a1 + 32) > a2)
    {
      result = 0;
      *(*(a1 + 24) + 32 * a2 + 24) = 0;
    }
  }

  return result;
}

uint64_t extdata_GetIndex(uint64_t a1, _WORD *a2)
{
  result = 2368741383;
  if (a1)
  {
    if (!a2)
    {
      return result;
    }

    v4 = *(a1 + 32);
    LOWORD(a1) = v4 - 1;
    if (v4)
    {
      result = 0;
    }

    else
    {
      LOWORD(a1) = 0;
      result = 2368741383;
    }
  }

  *a2 = a1;
  return result;
}

uint64_t extdata_FreeData(uint64_t a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *(a1 + 32);
  if (*(a1 + 32))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 24) + v3;
      if (*(v5 + 24))
      {
        result = (*(v5 + 16))();
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v2 = *(a1 + 32);
      }

      ++v4;
      v3 += 32;
    }

    while (v4 < v2);
  }

  heap_Free(*(*(a1 + 16) + 8), *(a1 + 24));
  result = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t extdata_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *(a1 + 16);
  result = extdata_FreeData(a1);
  if ((result & 0x80000000) == 0)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      heap_Free(*(v2 + 8), v4);
      *(a1 + 32) = 0;
    }

    heap_Free(*(v2 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t freeEOSDefs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 96))
  {
    return 0;
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] free EOS definitions", a6, a7, a8, v20);
  v15 = *(a1 + 104);
  if (v15)
  {
    heap_Free(*(*(a1 + 16) + 8), v15);
    *(a1 + 104) = 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  if (*(a1 + 128))
  {
    v16 = *(a1 + 120);
    if (v16)
    {
      heap_Free(*(*(a1 + 16) + 8), v16);
      *(a1 + 120) = 0;
    }

    *(a1 + 128) = 0;
  }

  if (*(a1 + 144))
  {
    v17 = *(a1 + 136);
    if (v17)
    {
      heap_Free(*(*(a1 + 16) + 8), v17);
      *(a1 + 136) = 0;
    }

    *(a1 + 144) = 0;
  }

  v18 = *(a1 + 152);
  if (v18)
  {
    heap_Free(*(*(a1 + 16) + 8), v18);
    *(a1 + 152) = 0;
  }

  result = *(a1 + 88);
  if (result)
  {
    result = ssftriff_reader_ReleaseChunkData(result, v18, v9, v10, v11, v12, v13, v14);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 88) = 0;
    }
  }

  return result;
}

uint64_t getEOSDefs(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a4;
  if (*(a1 + 96))
  {
    return 0;
  }

  v8 = 2369789962;
  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] get EOS definitions", a6, a7, a8, v41);
  v12 = a4[1] + 8;
  v13 = v12 + *a4;
  v14 = *(a4 + v13);
  *(a1 + 96) = v14;
  v15 = heap_Calloc(*(*(a1 + 16) + 8), 1, (8 * v14) | 1);
  *(a1 + 104) = v15;
  if (!v15)
  {
    goto LABEL_25;
  }

  v23 = v13 + 2;
  v24 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v25 = (v15 + 4);
    do
    {
      v26 = *(a4 + v23);
      v27 = *(a4 + v23 + 2);
      v23 += 6;
      *v25 = v26;
      *(v25 - 1) = v27;
      v25 += 8;
      --v24;
    }

    while (v24);
  }

  v28 = *(a4 + v23);
  *(a1 + 128) = v28;
  v29 = heap_Calloc(*(*(a1 + 16) + 8), 1, (2 * v28) | 1);
  *(a1 + 120) = v29;
  if (!v29)
  {
    goto LABEL_25;
  }

  if (*(a1 + 128))
  {
    v30 = 0;
    do
    {
      v23 += 2;
      *(*(a1 + 120) + 2 * v30++) = *(a4 + v23);
    }

    while (v30 < *(a1 + 128));
  }

  *(a1 + 144) = 0;
  v31 = *(a4 + v23 + 2);
  *(a1 + 144) = v31;
  v32 = v23 + 4;
  if (v31)
  {
    v33 = heap_Calloc(*(*(a1 + 16) + 8), 1, (2 * v31) | 1);
    *(a1 + 136) = v33;
    if (v33)
    {
      if (*(a1 + 144))
      {
        v34 = 0;
        do
        {
          *(*(a1 + 136) + 2 * v34) = *(a4 + v32);
          v32 += 2;
          ++v34;
        }

        while (v34 < *(a1 + 144));
      }

      goto LABEL_16;
    }

LABEL_25:
    freeEOSDefs(a1, v16, v17, v18, v19, v20, v21, v22);
    return v8;
  }

LABEL_16:
  v35 = *(a4 + v32);
  v36 = heap_Calloc(*(*(a1 + 16) + 8), 1, v35 + 1);
  *(a1 + 152) = v36;
  if (!v36)
  {
    goto LABEL_25;
  }

  v37 = v32 + 2;
  if (v35)
  {
    for (i = 0; i != v35; ++i)
    {
      *(*(a1 + 152) + i) = *(a4 + v37 + i);
    }

    v37 += i;
  }

  v39 = *(a4 + v37);
  *(a1 + 160) = v39;
  if (!v39)
  {
    v8 = 2369789959;
    goto LABEL_25;
  }

  v8 = ssftriff_reader_DetachChunkData(a2, (a1 + 88), &v42, v18, v19, v20, v21, v22);
  if ((v8 & 0x80000000) == 0)
  {
    *(a1 + 112) = v42 + v12;
  }

  return v8;
}

uint64_t sparser_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = 0;
  *&__c[3] = 0;
  v6 = 2369789959;
  *&__c[1] = -1;
  __c[0] = 0;
  v34 = 0;
  __s1 = 0;
  if (a5 && (InitRsrcFunction(a1, a2, &v37) & 0x80000000) == 0)
  {
    *a5 = 0;
    v13 = heap_Alloc(*(v37 + 8), 192);
    if (!v13)
    {
      goto LABEL_31;
    }

    v14 = v13;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 160) = 0u;
    *(v13 + 176) = 0u;
    *(v13 + 128) = 0u;
    *(v13 + 144) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *v13 = a1;
    *(v13 + 8) = a2;
    v15 = v37;
    *(v13 + 16) = v37;
    *(v13 + 80) = a6;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0;
    *(v13 + 184) = 0;
    *(v13 + 176) = 0;
    *(v13 + 168) = 0;
    *(v13 + 188) = 0;
    if ((paramc_ParamGetStr(*(v15 + 40), "mnceosposition", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
    {
      *(v14 + 188) = 1;
    }

    *(v14 + 160) = 0;
    *(v14 + 128) = 0u;
    *(v14 + 144) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
    *(v14 + 24) = a3;
    *(v14 + 32) = a4;
    *(v14 + 88) = 0;
    v38[0] = "EOSD";
    v38[1] = getEOSDefs;
    v38[2] = freeEOSDefs;
    v38[3] = v14;
    v16 = extdata_RegisterData(a6, v38, 1u);
    if ((v16 & 0x80000000) == 0)
    {
      extdata_GetIndex(a6, &v34);
      if ((objc_GetObject(*(v37 + 48), "FE_DCTLKP", &v36) & 0x80000000) != 0)
      {
        v18 = *(v14 + 40);
        if (!v18)
        {
LABEL_30:
          v6 = 0;
          *a5 = v14;
          goto LABEL_32;
        }
      }

      else
      {
        v17 = v36;
        v18 = *(v36 + 8);
        *(v14 + 40) = v18;
        *(v14 + 48) = *(v17 + 16);
        if (!v18)
        {
          goto LABEL_30;
        }
      }

      *&__c[1] = -1;
      v16 = (*(v18 + 96))(*(v14 + 48), *(v14 + 56), "fecfg", "ppabbrscanback", &__c[3], &__c[1], __c);
      if ((v16 & 0x80000000) == 0)
      {
        if (*&__c[1] != 1 || !*&__c[3])
        {
          goto LABEL_30;
        }

        v19 = **&__c[3];
        v20 = strchr(**&__c[3], __c[0]);
        if (v20)
        {
          *v20 = 0;
          v19 = **&__c[3];
        }

        *(v14 + 72) = 1;
        v21 = strchr(v19, 124);
        if (v21)
        {
          v22 = 1;
          do
          {
            *(v14 + 72) = ++v22;
            v21 = strchr(v21 + 1, 124);
          }

          while (v21);
          v23 = v22 + 1;
        }

        else
        {
          v23 = 2;
        }

        v24 = heap_Calloc(*(v37 + 8), 1, v23);
        *(v14 + 64) = v24;
        if (v24)
        {
          v25 = **&__c[3];
          *(v14 + 72) = 0;
          if (v25)
          {
            do
            {
              if (*v25 == __c[0])
              {
                break;
              }

              v26 = strchr(v25, 124);
              v27 = v26;
              if (v26)
              {
                *v26 = 0;
              }

              v28 = atoi(v25);
              v29 = *(v14 + 64);
              v30 = *(v14 + 72);
              *(v14 + 72) = v30 + 1;
              *(v29 + v30) = v28;
              v25 = v27 + 1;
            }

            while (v27);
          }

          goto LABEL_30;
        }

LABEL_31:
        v6 = 2369789962;
        goto LABEL_32;
      }
    }

    v6 = v16;
    sparser_ObjClose(v14);
    extdata_UnregisterModule(a6, v34);
  }

LABEL_32:
  v31 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sparser_ObjClose(uint64_t a1)
{
  v1 = 2369789959;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    if (*(a1 + 40))
    {
      objc_ReleaseObject(*(v5 + 48), "FE_DCTLKP");
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      heap_Free(*(v5 + 8), v3);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t sparser_HasTextElementLeft(_WORD **a1, uint64_t a2, _BOOL4 *a3, _WORD *a4)
{
  v60 = 0;
  v61 = 0;
  v4 = 2369789959;
  v58 = 0;
  v59 = 0;
  v55 = 0;
  v56 = 0;
  v50 = 0u;
  v54 = 0u;
  v49 = 0;
  LODWORD(v50) = 1;
  v51 = 0x200000000uLL;
  v52 = 0;
  DWORD2(v54) = 0;
  v53 = 1;
  if (!a1)
  {
    return v4;
  }

  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  v57 = 0;
  if ((InitRsrcFunction(*a1, a1[1], &v61) & 0x80000000) != 0)
  {
    return v4;
  }

  if (!*(a1 + 48))
  {
    log_OutPublic(*(v61 + 32), &modPP_1, 1808, 0, v9, v10, v11, v12, v48);
    return v4;
  }

  if ((datac_RequestBlock(a2, 1010, 1u, &v60) & 0x80000000) != 0)
  {
    v4 = 0;
    *a3 = 0;
    return v4;
  }

  v13 = datac_RequestBlock(a2, 1011, 1u, &v59);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = *(v59 + 8);
  v15 = *(v59 + 16);
  v13 = datac_RequestBlock(a2, 1012, 1u, &v58);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v13 = bed_ObjOpen(*a1, a1[1], a2, 1011, &v56, 212);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if ((chars_ScanBlankHead(v60, &v57 + 1, v59, &v57, &v49, 1u) & 0x80000000) == 0)
  {
    if (v15 < 2)
    {
      LOWORD(v16) = 0;
    }

    else
    {
      v16 = 0;
      v17 = v14 + 21;
      v18 = v15 - 1;
      do
      {
        if (v17[3] - v14[8] > v14[8] + *(v60 + 2) * HIWORD(v57))
        {
          break;
        }

        v20 = *v17;
        v17 += 16;
        v19 = v20;
        if (v20 == 0x4000)
        {
          v21 = v16;
        }

        else
        {
          v21 = v16 + 1;
        }

        if (v19 != 3)
        {
          v16 = v21;
        }

        --v18;
      }

      while (v18);
    }

    if (*(a1 + 92) <= v16)
    {
      if ((bed_GetpBlock(v56, &v59) & 0x80000000) != 0)
      {
        goto LABEL_75;
      }

      v27 = v60;
      if (v15 >= 2)
      {
        v28 = 0;
        v29 = v14 + 26;
        v30 = 1;
        while (*(v29 - 2) - v14[8] <= *(v60 + 2) * HIWORD(v57))
        {
          v31 = *(v29 - 5);
          if (v31 == 3 && *v29 == 1)
          {
            goto LABEL_73;
          }

          if (v31 != 0x4000)
          {
            ++v28;
          }

          if (*(a1 + 92) == v28)
          {
            if ((bed_Goto(v56, v30) & 0x80000000) == 0)
            {
              v43 = *(v29 - 2);
              DWORD2(v51) = *(v29 - 4);
              LODWORD(v52) = v43;
              if ((sparser_bed_InjectMarker(v56, &v50, 0, *(a1 + 47)) & 0x80000000) == 0)
              {
                log_OutText(*(a1[2] + 4), &modPP_1, 5, 0, "[SPARSER] inserting EOS as number of markers in empty text exceeded, end marker now %u", v44, v45, v46, v30);
                goto LABEL_73;
              }
            }

            goto LABEL_75;
          }

          ++v30;
          v29 += 16;
          if (v15 == v30)
          {
            break;
          }
        }
      }
    }

    else
    {
      if (!v16 && HIWORD(v57) > 0x400u)
      {
        if ((bed_GetpBlock(v56, &v59) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        HIWORD(v57) = 1024;
        v23 = v14[8];
        v22 = v14 + 8;
        DWORD2(v51) = *(v22 - 2);
        LODWORD(v52) = v23;
        if (v15)
        {
          v24 = 0;
          v25 = v22;
          while (*(v25 - 3) == 0x4000)
          {
            v26 = *v25;
            if (*v25 - *v22 > (*(v60 + 2) << 10))
            {
              break;
            }

            DWORD2(v51) = *(v25 - 2);
            LODWORD(v52) = v26;
            ++v24;
            v25 += 16;
            if (v15 == v24)
            {
              goto LABEL_67;
            }
          }

          v15 = v24;
        }

LABEL_67:
        if ((bed_Goto(v56, v15) & 0x80000000) != 0 || (sparser_bed_InjectMarker(v56, &v50, 0, *(a1 + 47)) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        log_OutText(*(a1[2] + 4), &modPP_1, 5, 0, "[SPARSER] inserting EOS as empty text length exceeded, end marker now %u", v40, v41, v42, v15);
LABEL_73:
        v39 = 1;
LABEL_74:
        *a3 = v39;
        goto LABEL_75;
      }

      v27 = v60;
    }

    if ((chars_ScanBlankHead(v27, &v57 + 1, v59, &v57, &v49, 2u) & 0x80000000) == 0)
    {
      v32 = *(v59 + 16);
      if (v32 >= 2)
      {
        v33 = v14[8] + HIWORD(v57);
        v34 = v32 - 1;
        v35 = v14 + 26;
        do
        {
          if (*(v35 - 2) > v33)
          {
            break;
          }

          if (*(v35 - 5) == 20)
          {
            *a4 = *v35;
          }

          v35 += 16;
          --v34;
        }

        while (v34);
      }

      v36 = *a4;
      switch(v36)
      {
        case 2:
          v38 = (sparser_FindNextCharacterBoundary)(v60);
          break;
        case 4:
          v37 = sparser_FindNextLineBoundary;
          goto LABEL_59;
        case 3:
          v37 = sparser_FindNextWordBoundary;
LABEL_59:
          v38 = (v37)(v60);
          break;
        default:
          paramc_ParamGetStr(*(v61 + 40), "extraesctn", &v55);
          v38 = (sparser_FindNextSentenceBoundary)(v60);
          break;
      }

      if (v38 < 0 || *a3 || !*(v60 + 20))
      {
        goto LABEL_75;
      }

      v39 = sparser_ScanDataMarker(v59);
      goto LABEL_74;
    }
  }

LABEL_75:
  if (v56)
  {
    bed_ObjClose(v56);
  }

  return 0;
}

uint64_t sparser_bed_InjectMarker(uint64_t a1, unsigned int *a2, int a3, int a4)
{
  result = 2369789959;
  if (a1)
  {
    if (a2)
    {
      result = sparser_bed_MapPosCur(a1, a2[8], a2 + 6);
      if ((result & 0x80000000) == 0)
      {
        result = sparser_bed_MapPosCur(a1, a2[9] + a2[8], a2 + 7);
        if ((result & 0x80000000) == 0)
        {
          v10 = a2[6];
          v9 = a2[7];
          v11 = v9 >= v10;
          v12 = v9 - v10;
          if (v11)
          {
            a2[7] = v12;
          }

          if (a3 == 1 || (a4 != 1 ? (v17 = sparser_marker_HasStrictlyGreaterPosCur) : (v17 = sparser_marker_HasGreaterEqualPosCur), (result = bed_GoForward(a1, v17, a2), (result & 0x80000000) == 0) || (result & 0x1FFF) == 0x14))
          {
            __s1 = 0;
            v18 = 0;
            result = bed_GetcElem(a1, &v18);
            if ((result & 0x80000000) == 0)
            {
              result = bed_GetpElem(a1, 0, &__s1);
              if ((result & 0x80000000) == 0)
              {
                v13 = v18;
                if (v18)
                {
                  v14 = __s1;
                  v15 = a2[8];
                  do
                  {
                    if (v14[8] > v15)
                    {
                      break;
                    }

                    result = memcmp(v14, a2, 0x40uLL);
                    if (!result)
                    {
                      return result;
                    }

                    v14 += 16;
                    --v13;
                  }

                  while (v13);
                }

                v16 = bed_Insert(a1, a2, 1);
                return v16 & (v16 >> 31);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sparser_FindNextWordBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _BOOL4 *a6)
{
  if (*(a1 + 20))
  {
    v8 = *(a1 + 16) > a4;
  }

  else
  {
    v10 = a4;
    chars_ScanNonBlanks(*(a1 + 8), &v10, *(a1 + 16));
    v8 = v10 < *(a1 + 16);
  }

  *a6 = v8;
  return 0;
}

uint64_t sparser_FindNextLineBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _BOOL4 *a6)
{
  if (*(a1 + 20))
  {
    v8 = *(a1 + 16) > a4;
  }

  else
  {
    v10 = a4;
    chars_ScanForLineEnd(*(a1 + 8), &v10, *(a1 + 16));
    v8 = v10 < *(a1 + 16);
  }

  *a6 = v8;
  return 0;
}

uint64_t sparser_FindNextSentenceBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, _BOOL4 *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 20))
  {
    v9 = *(a1 + 16) > a4;
    goto LABEL_29;
  }

  v13 = *(a2 + 8);
  LODWORD(v14) = *(a2 + 16);
  if (a4)
  {
    if (!*(a2 + 16))
    {
      LODWORD(v16) = 0;
      goto LABEL_28;
    }

    v15 = 0;
    LODWORD(v16) = 0;
    do
    {
      v17 = (v13 + (v16 << 6));
      if (v17[8] > *(v13 + 32) + *(a1 + 2) * a4)
      {
        break;
      }

      if (a5 && v17[5] == 21)
      {
        v18 = *(a3 + 8) + v17[10];
        __strcpy_chk();
        v15 = strstr(a5, v26) != 0;
        LODWORD(v14) = *(a2 + 16);
      }

      LODWORD(v16) = v16 + 1;
    }

    while (v16 < v14);
  }

  else
  {
    LODWORD(v16) = 0;
    v15 = 0;
  }

  if (v16 >= v14)
  {
    goto LABEL_28;
  }

  v16 = v16;
  v19 = (v13 + (v16 << 6));
  while (1)
  {
    v20 = v19[8];
    v21 = *(v13 + 32);
    v22 = v20 - v21;
    if (v20 == v21 || !sparser_marker_IsSentenceBoundary(v19, (*(a3 + 8) + v19[10])))
    {
      if (a5 && v19[5] == 21)
      {
        v23 = *(a3 + 8) + v19[10];
        __strcpy_chk();
        v15 = strstr(a5, v26) != 0;
      }

      goto LABEL_25;
    }

    if (v15 && v19[5] == 2)
    {
LABEL_21:
      v19[10] = 0;
      goto LABEL_25;
    }

    if (!sparser_IsSuppressedSentenceBoundary(a2, a1, v22))
    {
      break;
    }

    if (v19[5] == 2)
    {
      goto LABEL_21;
    }

LABEL_25:
    ++v16;
    v14 = *(a2 + 16);
    v19 += 16;
    if (v16 >= v14)
    {
      goto LABEL_26;
    }
  }

  LODWORD(v14) = *(a2 + 16);
LABEL_26:
  LODWORD(v16) = v16;
LABEL_28:
  v9 = v16 < v14;
LABEL_29:
  *a6 = v9;
  v24 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL sparser_ScanDataMarker(_BOOL8 result)
{
  if (result)
  {
    if (*(result + 16))
    {
      v1 = *(result + 8);
      v2 = (v1 + 20);
      v3 = 1;
      v4 = *(result + 16);
      v5 = 1;
      do
      {
        if (v1)
        {
          if (*v2 <= 0x28u && ((1 << *v2) & 0x10024000100) != 0)
          {
            break;
          }
        }

        v5 = v3 < *(result + 16);
        v2 += 16;
        ++v3;
        --v4;
      }

      while (v4);
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sparser_PreScanTextElement(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v12 = 0;
  v5 = datac_RequestBlock(a2, 1010, 1u, &v12);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(v12 + 16);
    if (v6 >= 4)
    {
      v7 = *(v12 + 8);
      v13 = 0;
      if (utf8_Utf8CharTo16bit((v7 + (v6 - 2)), &v13))
      {
        if (v13 <= 0x3Fu && ((1 << v13) & 0x8000400200000000) != 0 || v13 == 65294)
        {
          if (utf8_BelongsToSet(2u, v7, *(v12 + 16) - 1, *(v12 + 16)))
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] text ends in period-space; get more text", v8, v9, v10, v12);
            *a3 = 1;
          }
        }
      }
    }
  }

  return v5;
}

uint64_t sparser_ScanTextElement(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = 0;
  v92 = 0;
  v8 = 2369789959;
  v89 = 0;
  v87 = 0;
  v88 = 0;
  if (!a1 || !a2)
  {
    return v8;
  }

  if (!*(a1 + 96))
  {
    log_OutPublic(*(*(a1 + 16) + 32), &modPP_1, 1808, 0, a5, a6, a7, a8, v77);
    return v8;
  }

  datac_RequestBlock(a2, 1012, 1u, &v87);
  v13 = datac_RequestBlock(a2, 1010, 1u, &v92);
  if ((v13 & 0x80000000) != 0)
  {
    if ((v13 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }

  v14 = *(v92 + 16);
  v15 = *(v92 + 2);
  v16 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1011, &v91, 212);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v16 = bed_GetpBlock(v91, &v88);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = *(*(v88 + 8) + 32);
  v18 = v91;
  v93 = 0;
  v95 = 0u;
  v96 = 0x400000000000uLL;
  v98 = 0u;
  v97 = 0uLL;
  if (!v91)
  {
    goto LABEL_126;
  }

  v19 = bed_Goto(v91, 0);
  if ((v19 & 0x80000000) != 0 || (v19 = bed_GoForward(v18, sparser_marker_IsOfSameType, &v95), (v19 & 0x80000000) != 0) || (v19 = bed_GetpElem(v18, 0xFFFFu, &v93), (v19 & 0x80000000) != 0))
  {
    v8 = v19;
LABEL_126:
    v72 = 0;
    v22 = 0;
    v73 = 0;
    HIWORD(v89) = 0;
    goto LABEL_127;
  }

  v85 = *(v93 + 32);
  v20 = *(a1 + 168);
  if (v20 < v17)
  {
    *(a1 + 168) = v17;
    v20 = v17;
  }

  *(a1 + 176) = v20;
  v90 = (v20 - v17) / *(v92 + 2);
  LODWORD(v93) = v90;
  NextOrthRegion = sparser_FindNextOrthRegion(v92, v91, &v93, &v90, &v89);
  v22 = v90;
  if ((NextOrthRegion & 0x80000000) != 0)
  {
    v8 = NextOrthRegion;
  }

  else
  {
    v23 = v93;
    if (v90)
    {
      v24 = *(v92 + 16);
      if (v90 <= v24)
      {
        HIWORD(v89) = v90 - (v24 == v90);
        chars_BackScanBlanks(*(v92 + 8), &v89 + 1);
        if (!HIWORD(v89))
        {
          v8 = 0;
          goto LABEL_134;
        }
      }
    }

    if (v23 >= v22)
    {
      v8 = 0;
    }

    else
    {
      v25 = 0;
      v81 = a4;
      v78 = v17 + (v15 * v14);
      v79 = v17;
      LOWORD(v26) = v23;
      do
      {
        v80 = v26;
        if (v26 == v22)
        {
          goto LABEL_20;
        }

        v32 = v26;
        do
        {
          if (!v88)
          {
            goto LABEL_141;
          }

          v33 = *(v88 + 16);
          if (*(v88 + 16))
          {
            v34 = 0;
            v35 = *(v88 + 8);
            v36 = *(v35 + 32);
            v37 = (v35 + 40);
            v38 = v81;
            do
            {
              v39 = *(v37 - 2) - v36;
              v40 = (*(v37 - 4) - v36);
              if (v40 > v22)
              {
                break;
              }

              if (*(v37 - 5) == 20)
              {
                v41 = *v37;
                if (v38 == 1)
                {
                  v42 = v41 == 1 || v40 >= v22;
                  if (!v42 && v40 > v32)
                  {
                    v38 = 1;
LABEL_101:
                    v65 = v39;
                    LOWORD(v39) = v32;
                    v46 = v65;
                    if (a3)
                    {
                      goto LABEL_59;
                    }

                    goto LABEL_20;
                  }
                }

                v38 = *v37;
                v44 = v41 != 1 || v40 >= v22;
                if (!v44 && v40 >= v32)
                {
                  LODWORD(v34) = v34 + 1;
                  if (v34 < v33)
                  {
                    v66 = v35 + 20;
LABEL_105:
                    v34 = v34;
                    v67 = (v66 + (v34 << 6));
                    do
                    {
                      v68 = v67[3] - v36;
                      v69 = (*(v67 + 6) - v36);
                      if (v69 > v22)
                      {
                        break;
                      }

                      if (*v67 == 20)
                      {
                        v71 = v69 >= v22 || v69 < v32;
                        LODWORD(v34) = v34 + 1;
                        if (v34 < v33 && v71)
                        {
                          goto LABEL_105;
                        }

                        if (v71)
                        {
                          break;
                        }

                        v32 = v39;
                        LOWORD(v39) = v68;
                        goto LABEL_101;
                      }

                      ++v34;
                      v67 += 16;
                    }

                    while (v34 < v33);
                  }

LABEL_56:
                  v46 = v22;
                  if (a3)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_20;
                }
              }

              ++v34;
              v37 += 32;
            }

            while (v33 != v34);
            LOWORD(v39) = v32;
            goto LABEL_56;
          }

          LOWORD(v39) = v32;
          v46 = v22;
          v38 = v81;
          if (!a3)
          {
            break;
          }

LABEL_59:
          if (v39 == v46 || v38 != 1)
          {
            break;
          }

          v86 = v92;
          if (!v92 || (v47 = v91) == 0)
          {
            matched = 2369789959;
LABEL_140:
            v8 = matched;
LABEL_141:
            v17 = v79;
            goto LABEL_142;
          }

          v48 = *(v92 + 2);
          v49 = bed_Goto(v91, 0xFFFFFFFF);
          if ((v49 & 0x80000000) != 0)
          {
            goto LABEL_138;
          }

          v83 = v46;
          v94 = 0;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          LODWORD(v97) = v85 + v48 * v39;
          matched = bed_GoBackward(v47, sparser_marker_HasStrictlySmallerPosCur, &v95);
          if ((matched & 0x80001FFF) == 0x80000014)
          {
            matched = bed_Goto(v47, 0);
          }

          if ((matched & 0x80000000) != 0)
          {
            goto LABEL_140;
          }

          v49 = bed_GetiElem(v47, &v94);
          if ((v49 & 0x80000000) != 0)
          {
LABEL_138:
            matched = v49;
            goto LABEL_140;
          }

          v82 = v46;
          matched = sparser_MatchSb(a1, 0, 1, v86, v85, v39, v46, v47, v94);
          if ((matched & 0x80000000) != 0)
          {
            goto LABEL_140;
          }

          LOWORD(v84) = v39;
          while (1)
          {
            v51 = v94;
            v52 = *(v86 + 2);
            *&v95 = 0;
            v99[0] = 0;
            if ((bed_GetcElem(v47, v99) & 0x80000000) != 0 || (bed_GetpElem(v47, 0, &v95) & 0x80000000) != 0)
            {
              break;
            }

            if (v99[0] > v51)
            {
              v53 = (v95 + 32 + (v51 << 6));
              while (1)
              {
                v54 = *v53;
                v53 += 16;
                if (v54 > *(v95 + 32) + v52 * v84)
                {
                  break;
                }

                if (v99[0] == ++v51)
                {
                  goto LABEL_97;
                }
              }

              LODWORD(v51) = v51;
            }

            if (v51 >= v99[0])
            {
              goto LABEL_97;
            }

            v55 = *(v95 + 32);
            v56 = v55 + v52 * v82;
            v57 = v51;
            v58 = (v95 + (v51 << 6) + 20);
            while (v58[3] <= v56)
            {
              if (*v58 <= 0x28u && ((1 << *v58) & 0x10004000080) != 0)
              {
                break;
              }

              ++v57;
              v58 += 16;
              if (v99[0] == v57)
              {
                goto LABEL_97;
              }
            }

            v60 = v95 + (v57 << 6);
            v61 = *(v60 + 32);
            if (v61 > v56 || ((v62 = *(v60 + 20), v29 = v62 > 0x28, v63 = (1 << v62) & 0x10004000080, !v29) ? (v64 = v63 == 0) : (v64 = 1), v64))
            {
LABEL_97:
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_140;
              }

              break;
            }

            if (v52)
            {
              v84 = (v61 - v55) / v52;
            }

            matched = sparser_MatchSb(a1, 1, 0, v86, v85, v39, v84, v47, v94);
            if ((matched & 0x80000000) != 0)
            {
              goto LABEL_140;
            }
          }

          v32 = v83;
          v25 = 1;
        }

        while (v83 != v22);
LABEL_20:
        v27 = sparser_FindNextOrthRegion(v92, v91, &v93, &v90, &v89);
        if ((v27 & 0x80000000) != 0)
        {
          v22 = v90;
          v8 = v27;
          goto LABEL_141;
        }

        v17 = v79;
        v28 = v90;
        v29 = v90 > v22 && v93 > v80;
        if (v29)
        {
          v26 = v93;
        }

        else
        {
          v26 = v90;
        }

        LODWORD(v93) = v26;
        v30 = *(v92 + 2);
        v31 = v79 + v90 * v30 > v78 || v26 >= v90;
        v22 = v90;
      }

      while (!v31);
      if (v25 == 1)
      {
        v8 = sparser_CheckForcedSb(a1, v92, v85, (v30 * v90), v91, v89, v87);
      }

      else
      {
        v8 = 0;
      }

      v22 = v28;
    }
  }

LABEL_142:
  HIWORD(v89) = v22;
  if (v22 && (v76 = *(v92 + 16), v22 <= v76))
  {
    if (v22 == v76)
    {
      HIWORD(v89) = v22 - 1;
    }

    chars_BackScanBlanks(*(v92 + 8), &v89 + 1);
    v73 = HIWORD(v89);
    v72 = v22;
  }

  else
  {
    v72 = v22;
    v73 = v22;
  }

LABEL_127:
  if (v22 != v73)
  {
    *(a1 + 172) = v17 + *(v92 + 2) * v73;
  }

  if (v22 >= 5)
  {
    HIWORD(v89) = v72;
    chars_BackScanNChars(*(v92 + 8), &v89 + 1, 4);
    v74 = v17 + *(v92 + 2) * HIWORD(v89);
    goto LABEL_135;
  }

LABEL_134:
  v74 = v17 + v22 * *(v92 + 2);
LABEL_135:
  *(a1 + 168) = v74;
  if (v91)
  {
    bed_ObjClose(v91);
  }

  return v8;
}

uint64_t sparser_FindNextOrthRegion(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, _WORD *a5)
{
  v53 = 0;
  result = 2369789959;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *(a1 + 16);
  *a3 = v13;
  *a4 = v13;
  result = bed_GetpBlock(a2, &v53);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v14 = v53;
  v15 = *a5;
  LODWORD(v16) = *(v53 + 16);
  if (v15 >= v16)
  {
LABEL_43:
    if (v10 == *a3 && v11 == *a4)
    {
LABEL_45:
      result = 0;
      v52 = *(a1 + 16);
      *a3 = v52;
      *a4 = v52;
      return result;
    }

    return 0;
  }

  v17 = *(v53 + 8);
  v18 = *(v17 + 32);
  if (__CFADD__(v18, v11 * *(a1 + 2)))
  {
    v19 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = (v17 + 96);
    v23 = 1;
    do
    {
      v15 = v20;
      v19 = v23;
      *a5 = v20;
      if (*(v22 - 19) == 7)
      {
        v21 = !v21;
        if (*(v22 - 14) != 43)
        {
          v21 = 0;
        }
      }

      v24 = *(v14 + 16);
      if (v23 >= v24)
      {
        break;
      }

      v25 = *v22;
      v22 += 16;
      v20 = v23++;
    }

    while (v25 <= v18 + v11 * *(a1 + 2));
    v26 = !v21;
    LODWORD(v16) = *(v14 + 16);
    if (!v26)
    {
      if (v15 < v24)
      {
        v27 = (v17 + (v15 << 6) + 84);
        v28 = v15 + 1;
        do
        {
          v15 = v28;
          *a5 = v28;
          v16 = *(v14 + 16);
          if (v28 >= v16)
          {
            break;
          }

          v29 = *v27;
          v27 += 16;
          ++v28;
        }

        while (v29 != 7);
      }

      if (v15 >= v16 || *(v17 + (v15 << 6) + 20) != 7)
      {
        return 0;
      }
    }
  }

  v30 = v17 + (v15 << 6);
  LODWORD(v31) = v16;
  if (v15 < v16)
  {
    v32 = (v30 + 84);
    v33 = v15 + 1;
    do
    {
      v15 = v33;
      *a5 = v33;
      v31 = *(v14 + 16);
      if (v33 >= v31)
      {
        break;
      }

      v34 = *v32;
      v32 += 16;
      ++v33;
    }

    while (v34 != 7);
  }

  v35 = *(v17 + 32);
  v36 = *(v30 + 32) - v35;
  v37 = *(a1 + 2);
  v38 = v36 / v37;
  if (v15 >= v31)
  {
    if (v38 == *(a1 + 16))
    {
LABEL_42:
      *a3 = v38;
      goto LABEL_43;
    }
  }

  else
  {
    v39 = (*(v17 + (v15 << 6) + 32) - v35) / v37;
    if (v38 == v39)
    {
      v40 = v17 + (v19 << 6);
      v41 = v17 + 84;
      while (1)
      {
        if (*(v17 + (v15 << 6) + 20) == 7 && *(v40 + 40) == 43)
        {
          v42 = (v41 + (v15 << 6));
          v43 = v15 + 1;
          do
          {
            v44 = v42;
            v45 = v43;
            *a5 = v43;
            v31 = *(v14 + 16);
            if (v43 >= v31)
            {
              break;
            }

            v42 += 16;
            ++v43;
          }

          while (*v44 != 7);
          if (*v44 != 7)
          {
            return 0;
          }

          v15 = v45;
        }

        v46 = v15;
        if (v15 < v31)
        {
          v47 = (v41 + (v15 << 6));
          v48 = v15 + 1;
          do
          {
            v15 = v48;
            *a5 = v48;
            v31 = *(v14 + 16);
            if (v48 >= v31)
            {
              break;
            }

            v49 = *v47;
            v47 += 16;
            ++v48;
          }

          while (v49 != 7);
        }

        v50 = *(a1 + 2);
        v38 = (*(v17 + (v46 << 6) + 32) - v35) / v50;
        if (v15 >= v31)
        {
          goto LABEL_42;
        }

        v51 = (*(v17 + (v15 << 6) + 32) - v35) / v50;
        if (v38 != v51)
        {
          *a3 = v38;
          *a4 = v51;
          goto LABEL_43;
        }
      }
    }

    *a4 = v39;
  }

  *a3 = v38;
  if (v10 != v38)
  {
    return 0;
  }

  result = 0;
  if (v11 == *a4 && v12 == v15)
  {
    goto LABEL_45;
  }

  return result;
}