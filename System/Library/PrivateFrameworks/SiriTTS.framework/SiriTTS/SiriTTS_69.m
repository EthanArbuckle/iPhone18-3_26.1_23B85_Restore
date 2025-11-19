uint64_t wordpar_freeBRKDefs(uint64_t a1)
{
  if (!*(a1 + 152))
  {
    return 0;
  }

  v5 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v5);
  if ((inited & 0x80000000) != 0)
  {
    return 2370838535;
  }

  v3 = inited;
  heap_Free(*(v5 + 8), *(a1 + 152));
  *(a1 + 152) = 0;
  return v3;
}

uint64_t wordpar_getBRKDefs(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int16 *a4)
{
  v12 = 0;
  if (*(a1 + 152))
  {
    return 0;
  }

  v4 = 2370838535;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v12) & 0x80000000) == 0)
  {
    *(a1 + 164) = *a4;
    v13 = *(a4 + 1) + 1;
    v10 = heap_Calloc(*(v12 + 8), 1, v13);
    *(a1 + 152) = v10;
    if (v10)
    {
      StringZ = ssftriff_reader_ReadStringZ(a2, a4, a3, *(a4 + 3) + 10, v10, &v13);
      if ((StringZ & 0x80000000) == 0)
      {
        if (*(a1 + 152))
        {
          return StringZ;
        }

        else
        {
          return 2370838535;
        }
      }
    }

    else
    {
      wordpar_freeBRKDefs(a1);
      return 2370838538;
    }
  }

  return v4;
}

uint64_t wordpar_loc_nonasian_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v218 = 0;
  v219 = 0;
  v5 = 2370838528;
  if (!a1)
  {
    return 2370838535;
  }

  v8 = a3;
  v9 = a2;
  v10 = a1;
  v220 = 0;
  inserted = (*(*(a1 + 32) + 136))(a2, a3, &v220);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "start wordpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1020, "start wordpar_WriteTextAndMarkers()");
  v222 = 0;
  v223[0] = 0;
  v221 = 0;
  v12 = strlen((v10 + 180));
  inserted = datac_RequestBlock(*(v10 + 24), 1020, 1u, v223);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v217 = *(v223[0] + 8);
  inserted = datac_RequestBlock(*(v10 + 24), 1021, 1u, &v222);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v13 = *(v222 + 8);
  inserted = datac_RequestBlock(*(v10 + 24), 1012, 1u, &v221);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v194 = a4;
  v195 = a5;
  v14 = v222;
  v15 = *(v222 + 16);
  if (v15 >= 2)
  {
    v16 = 0;
    v202 = v12;
    v193 = -1;
    v17 = 1;
    v18 = 1;
    v216 = v10;
    v196 = v12;
    v197 = v8;
    v200 = v9;
    v19 = v13;
    while (1)
    {
      v20 = v19 + (v17 << 6);
      v21 = *(v20 + 20);
      if (v21 == 21)
      {
        v16 = v17;
        goto LABEL_271;
      }

      if (v21 != 7 || *(v20 + 40) != 43)
      {
        goto LABEL_271;
      }

      v208 = v16;
      v22 = *(v20 + 48);
      if (!v22)
      {
        v16 = v208;
        goto LABEL_271;
      }

      v23 = *(v19 + 32);
      v205 = (v18 + 1);
      LODWORD(v24) = v18 + 1;
      if (v15 > (v18 + 1))
      {
        v24 = (v18 + 1);
        v25 = (v19 + (v24 << 6) + 20);
        while (1)
        {
          v26 = *v25;
          v25 += 16;
          if (v26 == 7)
          {
            break;
          }

          if (v15 == ++v24)
          {
            goto LABEL_19;
          }
        }
      }

      if (v24 == v15)
      {
LABEL_19:
        v207 = *(v19 + 36);
      }

      else
      {
        v207 = *(v19 + (v24 << 6) + 32) - v23;
        v15 = v24;
      }

      v27 = *(v20 + 32) - v23;
      v212 = (*(v20 + 32) - v23);
      v213 = v15;
      v203 = v17;
      v199 = v18;
      v204 = v27;
      if (!*(v20 + 56))
      {
        goto LABEL_64;
      }

      v28 = v207 - v27;
      *(v20 + 48) = 0;
      v29 = (v207 - v27);
      if (v207 == v27)
      {
        goto LABEL_64;
      }

      v30 = v217 + v212;
      v31 = 0;
      while (utf8_BelongsToSet(0, v30, v31, v28))
      {
        if (v29 == ++v31)
        {
          v31 = v28;
          break;
        }
      }

      if (v28 == 1)
      {
LABEL_32:
        LOWORD(v28) = 1;
      }

      else
      {
        v32 = (v28 - 1);
        while (utf8_BelongsToSet(0, v30, v32, v29))
        {
          LOWORD(v28) = v28 - 1;
          if (!--v32)
          {
            goto LABEL_32;
          }
        }
      }

      if (v28 <= v31)
      {
        goto LABEL_64;
      }

      v214 = 0;
      v33 = 95;
      v34 = v31;
      v209 = v19;
      do
      {
        v35 = *(v30 + v34);
        if (v35 == 35 || v35 == 95)
        {
          if (v33 != 35 && v33 != 95)
          {
            ++v214;
          }
        }

        else
        {
          v87 = v35 == 92;
          v36 = v34 + 1;
          v37 = !v87 || v36 >= v28;
          if (!v37 && *(v30 + v36) == 84)
          {
            for (i = v34 + 2; i < v28; i += utf8_determineUTF8CharLength(v39))
            {
              v39 = *(v30 + i);
              if (v39 == 92)
              {
                break;
              }
            }

            if (*(v30 + i) == 92)
            {
              v34 = i;
            }

            v19 = v209;
          }
        }

        if (!utf8_BelongsToSet(0, v30, v34, v29))
        {
          v33 = *(v30 + v34);
        }

        ++v34;
      }

      while (v34 < v28);
      v10 = v216;
      if (v33 == 35)
      {
        v40 = v217;
      }

      else
      {
        v40 = v217;
        if (v33 != 95)
        {
          ++v214;
        }
      }

      if (v214)
      {
        v41 = v28 - v31;
        v42 = v221;
        v43 = *(v221 + 16);
        v44 = v41 + v43 + 1;
        if (*(v221 + 18) < v44)
        {
          inserted = datac_RequestBlock(*(v216 + 24), 1012, (v41 + v43 + 1), &v221);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v42 = v221;
          v43 = *(v221 + 16);
        }

        strncpy((*(v42 + 8) + *(v42 + 2) * v43), (v40 + (v31 + v204)), v41)[v41] = 0;
        *(v20 + 20) = 34;
        *(v20 + 40) = *(v221 + 16);
        *(v221 + 16) = v44;
        v45 = v214;
      }

      else
      {
LABEL_64:
        v45 = 0;
      }

      v46 = strlen(v22);
      LOWORD(v47) = v46;
      v48 = v46;
      if (v46)
      {
        v49 = v19;
        v50 = 0;
        v51 = v46;
        while (utf8_BelongsToSet(1u, v22, v50, v48) == 1)
        {
          if (v51 == ++v50)
          {
            LOWORD(v50) = v47;
            v19 = v49;
LABEL_73:
            LOWORD(v47) = v47 - v50;
            v22[v47] = 0;
            goto LABEL_74;
          }
        }

        if (v50)
        {
          v19 = v49;
          if (!utf8_BelongsToSet(1u, v22, v50, v48))
          {
            memmove(v22, &v22[v50], v47 - v50);
          }

          goto LABEL_73;
        }

        v19 = v49;
      }

LABEL_74:
      v52 = v202;
      v53 = v47;
      v215 = v45;
      if (v47)
      {
        if (v47 != 1)
        {
          v54 = v19;
          v55 = (v47 - 1);
          v56 = v47 - 1;
          while (utf8_BelongsToSet(1u, v22, v55, v47) == 1)
          {
            v55 = --v56;
            if (!v56)
            {
              goto LABEL_82;
            }
          }

          if (v47 - 1 == v55)
          {
LABEL_82:
            v52 = v202;
            goto LABEL_83;
          }

          v126 = utf8_BelongsToSet(1u, v22, v55, v47);
          v52 = v202;
          if (!v126)
          {
            v22[v56 + 1] = 0;
            LOWORD(v47) = strlen(v22);
          }

LABEL_83:
          if (!v47)
          {
            v47 = 0;
            v53 = 0;
            v57 = 0;
            v19 = v54;
            v45 = v215;
            goto LABEL_98;
          }

          v53 = v47;
          v19 = v54;
          v45 = v215;
        }

        v58 = 0;
        LOWORD(v59) = 0;
        v57 = *v22 != 0;
        do
        {
          if (!v22[v59])
          {
            break;
          }

          v60 = utf8_BelongsToSet(1u, v22, v58, v53);
          if (v59 < v47 && v60 == 1)
          {
            v59 = v59;
            while (utf8_BelongsToSet(1u, v22, v59, v53) == 1)
            {
              if (v53 == ++v59)
              {
                LOWORD(v59) = v47;
                goto LABEL_95;
              }
            }

            if (v22[v59])
            {
              ++v57;
            }
          }

LABEL_95:
          LOWORD(v59) = v59 + 1;
          v58 = v59;
        }

        while (v59 < v47);
        v47 = v47;
        v52 = v202;
      }

      else
      {
        v47 = 0;
        v57 = 0;
      }

LABEL_98:
      v61 = 0;
      __n = v47;
      if (v45 && *(v20 + 56) && v45 != v57)
      {
        if (v45 > v57)
        {
          v206 = 0;
          v61 = ((v45 - v57) * v196);
          v62 = (v45 - v57);
        }

        else
        {
          v63 = *(v10 + 24);
          v64 = *(v222 + 16) + 1;
          *(v222 + 16) = v64;
          inserted = datac_RequestBlock(v63, 1021, v64, &v222);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v65 = *(v222 + 8);
          v66 = (v65 + (v205 << 6));
          memmove(v66 + 16, v66, (*(v222 + 16) - v199) << 6);
          v67 = v221;
          v68 = *(v221 + 16);
          v69 = v68 + strlen(v22) + 1;
          if (*(v221 + 18) < v69)
          {
            inserted = datac_RequestBlock(*(v216 + 24), 1012, v69, &v221);
            if ((inserted & 0x80000000) != 0)
            {
              return inserted;
            }

            v67 = v221;
            v68 = *(v221 + 16);
          }

          v206 = v57 - v215;
          ++v213;
          strcpy((*(v67 + 8) + *(v67 + 2) * v68), v22);
          v66[10] = *(v221 + 16);
          *(v221 + 16) = v69;
          v19 = v65;
          v70 = v65 + (v17 << 6);
          v71 = *(v70 + 24);
          v66[5] = 100;
          v66[6] = v71;
          v66[8] = *(v70 + 32) + 1;
          *v66 = 1;
          v72 = strlen(v22);
          v61 = 0;
          v62 = 0;
          v66[7] = v72;
          v10 = v216;
          v52 = v202;
        }
      }

      else
      {
        v62 = 0;
        v206 = 0;
      }

      v210 = v19;
      v73 = v61 + v53;
      v74 = v61 + v53 - (v207 - v212);
      v198 = v61 + v53;
      if ((v61 + v53) <= v207 - v212)
      {
        v78 = v207 - v212 - v73;
        v74 = v73 - (v207 - v212);
        v75 = v217;
        memmove((v217 + v207 - v78), (v217 + v207), *(v223[0] + 16) - v207);
        v76 = v223[0];
        v77 = *(v223[0] + 16) - v78;
      }

      else
      {
        inserted = datac_RequestBlock(*(v10 + 24), 1020, (*(v223[0] + 16) + v74), v223);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        v75 = *(v223[0] + 8);
        memmove(&v75[v207 + v74], &v75[v207], *(v223[0] + 16) - v207);
        v76 = v223[0];
        v77 = *(v223[0] + 16) + v74;
      }

      *(v76 + 16) = v77;
      strncpy(&v75[v212], v22, __n);
      v217 = v75;
      v79 = strlen(v75);
      if (v62)
      {
        v80 = v62;
        v81 = (v217 + v53 + v212);
        do
        {
          v81 = &strncpy(v81, (v10 + 180), v52)[v52];
          --v80;
        }

        while (v80);
      }

      heap_Free(*(*(v10 + 16) + 8), v22);
      if (v206)
      {
        PreviousUtf8Offset = v53 + v204 + v62 * v196;
        v9 = v200;
        v16 = v208;
        while (--PreviousUtf8Offset)
        {
          if (*(v223[0] + 16) <= PreviousUtf8Offset || utf8_BelongsToSet(1u, v217, PreviousUtf8Offset, v79) != 1)
          {
            while (1)
            {
              v83 = *(v223[0] + 16);
              if (PreviousUtf8Offset >= v83)
              {
                break;
              }

              if (utf8_BelongsToSet(1u, v217, PreviousUtf8Offset, v79))
              {
                v83 = *(v223[0] + 16);
                break;
              }

              PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v217, PreviousUtf8Offset);
              if (!PreviousUtf8Offset)
              {
                goto LABEL_144;
              }
            }

            v85 = v217;
            if (v83 > PreviousUtf8Offset)
            {
              do
              {
                while (*(v223[0] + 16) > PreviousUtf8Offset && utf8_BelongsToSet(1u, v85, PreviousUtf8Offset, v79) == 1)
                {
                  *(v85 + PreviousUtf8Offset--) = 45;
                  if (!PreviousUtf8Offset)
                  {
                    goto LABEL_144;
                  }
                }

                --v206;
                while (1)
                {
                  v86 = *(v223[0] + 16);
                  if (PreviousUtf8Offset >= v86)
                  {
                    break;
                  }

                  if (utf8_BelongsToSet(1u, v217, PreviousUtf8Offset, v79))
                  {
                    v86 = *(v223[0] + 16);
                    break;
                  }

                  PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v217, PreviousUtf8Offset);
                  if (!PreviousUtf8Offset)
                  {
                    goto LABEL_144;
                  }
                }

                v87 = v86 <= PreviousUtf8Offset || v206 == 0;
                v85 = v217;
              }

              while (!v87);
            }

            break;
          }
        }

LABEL_144:
        v84 = *(v222 + 16);
        if (v84 >= 2)
        {
          v88 = *(v210 + 32);
          v89 = v88 + v212;
          v90 = v88 + v207;
          v91 = v84 - 1;
          v92 = (v210 + 96);
          v93 = v205;
          do
          {
            if (*v92 > v89 && *v92 < v90)
            {
              *v92 = v89;
            }

            v92 += 16;
            --v91;
          }

          while (v91);
          goto LABEL_154;
        }
      }

      else
      {
        v84 = *(v222 + 16);
        v9 = v200;
        v16 = v208;
      }

      v93 = v205;
LABEL_154:
      *(v210 + 36) = *(v223[0] + 16);
      wordpar_loc_adjustMarkerPositions(v84, v210, v93, v204, v207, v74);
      v95 = v17;
      v96 = (v210 + (v17 << 6));
      if (v215 && v96[14])
      {
        v19 = v210;
        v97 = v198 + v212 + *(v210 + 32);
        v14 = v222;
        v98 = *(v222 + 16);
        v99 = v213;
        if (v98 < 2)
        {
LABEL_165:
          inserted = datac_RequestBlock(*(v10 + 24), 1021, (v98 + 1), &v222);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v19 = *(v222 + 8);
          v104 = *(v222 + 16);
          v99 = v213;
          v105 = v213;
          v106 = v19 + (v213 << 6);
          if (v104 == v213)
          {
            v107 = *(v106 - 48);
            *v106 = *(v106 - 64);
            *(v106 + 16) = v107;
            v108 = *(v106 - 16);
            *(v106 + 32) = *(v106 - 32);
            *(v106 + 48) = v108;
            *(v106 + 24) += *(v106 + 28);
          }

          else
          {
            memmove((v106 + 64), (v19 + (v213 << 6)), (v104 - v213) << 6);
            v99 = v213;
            v112 = *(v106 + 80);
            *v106 = *(v106 + 64);
            *(v106 + 16) = v112;
            v113 = *(v106 + 112);
            *(v106 + 32) = *(v106 + 96);
            *(v106 + 48) = v113;
          }

          v95 = v203;
          *(v106 + 20) = 21;
          *(v106 + 32) = v97;
          *(v106 + 36) = 0;
          *(v106 + 28) = 0;
          if (*(v106 + 48))
          {
            *(v106 + 48) = 0;
          }

          if (v16)
          {
            v114 = *(v19 + (v16 << 6) + 40);
          }

          else
          {
            v114 = v193;
            if (v193 == -1)
            {
              v115 = v19;
              v116 = *(v221 + 8);
              LOWORD(v19) = *(v221 + 16);
              if (v116 && *(v221 + 16))
              {
                v114 = 0;
                while (1)
                {
                  v117 = strlen(v116);
                  MarkerArgStr = marker_getMarkerArgStr(1u);
                  if (!strcmp(v116, MarkerArgStr))
                  {
                    break;
                  }

                  v119 = (v117 + 1);
                  v114 += v119;
                  v116 += v119;
                  LODWORD(v19) = *(v221 + 16);
                  if (v114 >= v19)
                  {
                    goto LABEL_186;
                  }
                }

                v193 = v114;
                v19 = v115;
              }

              else
              {
LABEL_186:
                v120 = marker_getMarkerArgStr(1u);
                v121 = v19 + strlen(v120) + 1;
                v122 = v221;
                v19 = v115;
                if (*(v221 + 18) < v121)
                {
                  inserted = datac_RequestBlock(*(v10 + 24), 1012, v121, &v221);
                  if ((inserted & 0x80000000) != 0)
                  {
                    return inserted;
                  }

                  v122 = v221;
                }

                v123 = (*(v122 + 8) + *(v122 + 2) * *(v122 + 16));
                v124 = marker_getMarkerArgStr(1u);
                strcpy(v123, v124);
                v125 = marker_getMarkerArgStr(1u);
                v123[strlen(v125)] = 0;
                v114 = *(v221 + 16);
                *(v221 + 16) = v121;
                v193 = v114;
              }

              v99 = v213;
              v95 = v203;
            }
          }

          *(v106 + 40) = v114;
          v14 = v222;
          ++*(v222 + 16);
        }

        else
        {
          v100 = (v210 + 84);
          v101 = 2;
          while (1)
          {
            v102 = v100[3];
            if (v102 == v97 && *v100 == 21)
            {
              break;
            }

            v100 += 16;
            if (v102 > v97 || v101++ >= v98)
            {
              goto LABEL_165;
            }
          }

          v105 = v213;
        }

        v134 = v19 + (v105 << 6);
        v135 = (v19 + 96);
        v136 = 1;
        v137 = v19 + (v95 << 6);
        while (2)
        {
          v138 = v136;
          v139 = *(v19 + 32);
          if (v138)
          {
            v140 = *(v137 + 32);
            v141 = v140 - v139;
            v142 = (v140 - v139);
            if (v142 && *(v217 + (v142 - 1)) != 32)
            {
              v143 = *(v14 + 16) + 1;
              LOWORD(v144) = *(v223[0] + 16);
              goto LABEL_219;
            }
          }

          else
          {
            v140 = *(v134 + 32);
            v141 = v140 - v139;
            v145 = (v140 - v139);
            if (v140 == v139 || (v144 = *(v223[0] + 16), v145 >= v144) || *(v217 + v145) == 32 || *(v217 + (v145 - 1)) == 32)
            {
LABEL_237:
              if (*(v137 + 20) == 34)
              {
                v155 = *(v14 + 16);
                v9 = v200;
                v16 = v208;
                if (v155 <= v99 || *(v134 + 20) != 21)
                {
                  goto LABEL_268;
                }

                if (v155 < 2)
                {
                  v157 = 1;
                }

                else
                {
                  v156 = 1;
                  while (*(v135 - 3) != 1 || *v135 != *(v137 + 32))
                  {
                    ++v156;
                    v135 += 16;
                    if (v155 == v156)
                    {
                      v157 = *(v14 + 16);
                      goto LABEL_249;
                    }
                  }

                  v157 = v156;
                }

                v158 = (v19 + (v157 << 6));
                if (v158[5] != 1)
                {
                  goto LABEL_268;
                }

                v159 = v158[8];
                if (v159 != *(v137 + 32))
                {
                  goto LABEL_268;
                }

LABEL_249:
                v160 = *(v19 + 36);
                v161 = (v159 - *(v19 + 32));
                if (v161 >= v160)
                {
                  v164 = 0;
                }

                else
                {
                  v211 = v19;
                  v162 = 0;
                  do
                  {
                    if (utf8_BelongsToSet(0, v217, v161, v79))
                    {
                      break;
                    }

                    v163 = utf8_determineUTF8CharLength(*(v217 + v161));
                    v162 += v163;
                    v161 = (v163 + v161);
                  }

                  while (v161 < v160);
                  v14 = v222;
                  LODWORD(v155) = *(v222 + 16);
                  v164 = v162;
                  v19 = v211;
                  v99 = v213;
                }

                v158[9] = v164;
                v165 = v157 + 1;
                v16 = v208;
                if (v155 > (v157 + 1))
                {
                  v5 = 2370838528;
                  do
                  {
                    v166 = (v19 + (v165 << 6));
                    if (v166[5] == 1 && (v167 = v166[8], v167 >= *(v137 + 32)) && v167 < *(v19 + (v99 << 6) + 32))
                    {
                      v168 = v165 + 1;
                      if (v168 != v155)
                      {
                        v169 = v99;
                        memmove(v166, (v19 + (v168 << 6)), (v155 - v165) << 6);
                        v99 = v169;
                        v14 = v222;
                      }

                      --*(v14 + 16);
                      --v99;
                    }

                    else
                    {
                      v157 = v165;
                    }

                    v165 = v157 + 1;
                    LODWORD(v155) = *(v14 + 16);
                  }

                  while (v155 > (v157 + 1));
                  LODWORD(v17) = v99;
                }

                else
                {
LABEL_268:
                  LODWORD(v17) = v99;
                  v5 = 2370838528;
                }

                v8 = v197;
              }

              else
              {
                LODWORD(v17) = v99;
                v5 = 2370838528;
                v8 = v197;
                v9 = v200;
                v16 = v208;
              }

              goto LABEL_270;
            }

            v143 = v99;
LABEL_219:
            inserted = datac_RequestBlock(*(v216 + 24), 1020, (v144 + 1), v223);
            if ((inserted & 0x80000000) != 0)
            {
              return inserted;
            }

            v217 = *(v223[0] + 8);
            v146 = (v217 + v141);
            memmove(v146 + 1, v146, *(v223[0] + 16) - v141);
            *v146 = 32;
            v14 = v222;
            ++*(v223[0] + 16);
            v147 = *(v14 + 16);
            if (v147 >= 2)
            {
              v148 = v147 - 1;
              v149 = v143 - 1;
              v150 = (v19 + 96);
              v151 = 1;
              do
              {
                if (v138)
                {
                  v152 = *v150;
                  if (*v150 < v140)
                  {
                    goto LABEL_234;
                  }

                  v153 = v152 == v140 && *(v150 - 3) == 21;
                  v154 = v150;
                  if (v153)
                  {
                    goto LABEL_234;
                  }
                }

                else
                {
                  if (!v149)
                  {
                    goto LABEL_234;
                  }

                  v152 = *v150;
                  if (*v150 < v140)
                  {
                    goto LABEL_234;
                  }

                  v154 = (v19 + (v151 << 6) + 32);
                }

                *v154 = v152 + 1;
LABEL_234:
                ++v151;
                v150 += 16;
                --v149;
                --v148;
              }

              while (v148);
            }

            ++*(v19 + 36);
            v10 = v216;
            v99 = v213;
          }

          v136 = 0;
          if ((v138 & 1) == 0)
          {
            goto LABEL_237;
          }

          continue;
        }
      }

      v14 = v222;
      v109 = *(v222 + 16);
      v8 = v197;
      if (v109 < 2)
      {
        v5 = 2370838528;
        v19 = v210;
      }

      else
      {
        v19 = v210;
        v110 = (v210 + 100);
        v111 = v109 - 1;
        while (*(v110 - 4) != 1 || *(v110 - 1) != v96[8])
        {
          v110 += 16;
          if (!--v111)
          {
            goto LABEL_199;
          }
        }

        if (*(v110 - 4) != 1)
        {
LABEL_199:
          v5 = 2370838528;
          goto LABEL_200;
        }

        v127 = *(v210 + 32);
        v128 = (*(v110 - 1) - v127);
        v129 = *(v210 + 36);
        v130 = (*(v110 - 2) - v127);
        if (v130 >= v129)
        {
          v133 = 0;
        }

        else
        {
          v131 = 0;
          do
          {
            if (utf8_BelongsToSet(0, v217, v130, v79))
            {
              break;
            }

            v132 = utf8_determineUTF8CharLength(*(v217 + v130));
            v131 += v132;
            v130 = (v132 + v130);
          }

          while (v130 < v129);
          v14 = v222;
          LODWORD(v109) = *(v222 + 16);
          v133 = v131;
          v19 = v210;
          v93 = v205;
        }

        *v110 = v133;
        v5 = 2370838528;
        v8 = v197;
        v16 = v208;
      }

LABEL_200:
      if (v93 != v109)
      {
        memmove(v96, (v19 + (v93 << 6)), (v109 - v199) << 6);
        v14 = v222;
        LOWORD(v109) = *(v222 + 16);
      }

      *(v14 + 16) = v109 - 1;
LABEL_270:
      LODWORD(v17) = v17 - 1;
LABEL_271:
      v17 = (v17 + 1);
      v18 = v17;
      v15 = *(v14 + 16);
      if (v17 >= v15)
      {
        goto LABEL_275;
      }
    }
  }

  v19 = v13;
LABEL_275:
  if (v15)
  {
    v170 = 0;
    v171 = (v19 + 48);
    do
    {
      if (*v171)
      {
        heap_Free(*(*(v10 + 16) + 8), *v171);
        *v171 = 0;
        v14 = v222;
      }

      ++v170;
      v171 += 8;
    }

    while (v170 < *(v14 + 16));
  }

  marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "after wordpar_loc_nonasian_HandleExtendedToi()", 0, 0, 0);
  marker_TraceTxt(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1020, "after wordpar_loc_nonasian_HandleExtendedToi()");
  inserted = datac_RequestBlock(*(v10 + 24), 1020, 1u, &v219);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  if (*(v219 + 16))
  {
    inserted = (*(*(v10 + 32) + 104))(v9, v8, *(v219 + 8), *(v219 + 2) * *(v219 + 16));
    if ((inserted & 0x80000000) != 0)
    {
      return inserted;
    }

    if (log_HasTraceTuningDataSubscriber(*(*(v10 + 16) + 32)))
    {
      log_OutTraceTuningDataBinary(*(*(v10 + 16) + 32), 34, "", "text/plain;charset=utf-8", *(v219 + 8), *(v219 + 2) * *(v219 + 16));
    }

    *(v219 + 16) = 0;
    v172 = 1;
  }

  else
  {
    if (log_HasTraceTuningDataSubscriber(*(*(v10 + 16) + 32)))
    {
      log_OutTraceTuningDataBinary(*(*(v10 + 16) + 32), 34, "", "text/plain;charset=utf-8", 0, 0);
    }

    v172 = 0;
  }

  if ((datac_RequestBlock(*(v10 + 24), 1012, 1u, &v219) & 0x80000000) != 0)
  {
    v173 = 0;
  }

  else
  {
    v173 = *(v219 + 8);
  }

  inserted = datac_RequestBlock(*(v10 + 24), 1021, 1u, &v218);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v177 = v218;
  v178 = *(v218 + 16);
  if (*(v218 + 16))
  {
    v179 = *(v218 + 8);
    if (*(v179 + 20) == 0x4000)
    {
      v180 = (v179 + 32);
      v220 = *(v179 + 32) - v220;
      v181 = v178;
      do
      {
        *v180 -= v220;
        v180 += 16;
        --v181;
      }

      while (v181);
      if (v173)
      {
        v182 = 0;
        v183 = (v179 + 40);
        do
        {
          if (marker_hasNonConstCharPtrArg(*(v183 - 5)))
          {
            v184 = *v183;
            if (v184 == -1)
            {
              v185 = 0;
            }

            else
            {
              v185 = v173 + v184;
            }

            *v183 = v185;
          }

          ++v182;
          v177 = v218;
          v178 = *(v218 + 16);
          v183 += 8;
        }

        while (v182 < v178);
      }

      if (v178 >= 3)
      {
        v186 = 1;
        do
        {
          v187 = (v179 + (v186 << 6));
          if (v187[5] == 1)
          {
            v188 = v187[9];
            if (v187[7] != v188 && (v187[8] + v188) > v187[24] && !v187[25])
            {
              v192 = v187[22];
              log_OutText(*(*(v10 + 16) + 32), "PP_WORD_PARSER", 1, 0, "SEVERE: found control sequence embedded in a word (word marker pos %d, length %d; escape marker pos %d)", v174, v175, v176, v187[6]);
              v177 = v218;
            }
          }

          ++v186;
        }

        while (*(v177 + 16) - 1 > v186);
      }

      marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "before wordpar_loc_MarkerPostProcessing()", 1, 0, 0);
      inserted = wordpar_loc_MarkerPostProcessing(*(v10 + 24), v218);
      if ((inserted & 0x80000000) == 0)
      {
        marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "before wordpar_loc_InsertNLUMarkers()", 1, 0, 0);
        inserted = wordpar_loc_InsertNLUMarkers(v10, v218);
        if ((inserted & 0x80000000) == 0)
        {
          v189 = *(v218 + 8);
          marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "at end()", 1, 0, 0);
          v190 = wordpar_loc_writeMarkersToOutputStream(v10, v194, v195, v189, v218, v172);
          return v190 & (v190 >> 31);
        }
      }

      return inserted;
    }
  }

  return v5;
}

uint64_t wordpar_loc_MarkerPostProcessing(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  LODWORD(v2) = *(a2 + 16);
  if (v2 <= 1)
  {
    result = 0;
    *(a2 + 16) = 1;
    return result;
  }

  v4 = *(a2 + 8);
  v5 = 1;
  v6 = 2;
  v7 = 148;
  LOWORD(v8) = 1;
  do
  {
    v9 = v2;
    v10 = v6;
    if (v2 > v6)
    {
      v10 = v2;
    }

    v11 = v7;
    v12 = v5;
    while (++v12 < v2)
    {
      v13 = *(v4 + v11);
      v11 += 64;
      if (v13 != 999)
      {
        v10 = v12;
        break;
      }
    }

    v14 = (v4 + (v5 << 6));
    v15 = *(v14 + 8);
    v16 = *(v14 + 5);
    if (v15 != *(v4 + 32))
    {
      goto LABEL_21;
    }

    if (v16 == 21)
    {
      if (v12 >= v2)
      {
        goto LABEL_22;
      }

      v17 = v4 + (v10 << 6);
      if (*(v17 + 32) != v15 || *(v17 + 20) != 21)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v12 < v2 && v16 == 7)
    {
      v18 = v4 + (v10 << 6);
      if (*(v18 + 32) != v15 || *(v18 + 20) != 7)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_21:
      if (v16 && v16 != 999)
      {
LABEL_22:
        v19 = v8;
        LOWORD(v8) = v8 + 1;
        v2 = (v4 + (v19 << 6));
        v20 = *v14;
        v21 = v14[1];
        v22 = v14[3];
        v2[2] = v14[2];
        v2[3] = v22;
        *v2 = v20;
        v2[1] = v21;
        v9 = *(a2 + 16);
        LOWORD(v2) = *(a2 + 16);
      }
    }

LABEL_23:
    ++v5;
    ++v6;
    v7 += 64;
  }

  while (v5 < v9);
  *(a2 + 16) = v8;
  if (v8 >= 2u)
  {
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v26 = 1;
    do
    {
      v27 = v4 + v23;
      v28 = *(v4 + v23 + 84);
      if (v28 != 36 && v28 != 7)
      {
        goto LABEL_45;
      }

      v30 = *(v27 + 96);
      v31 = *(v4 + 36) + *(v4 + 32);
      if (*(v27 + 100) + v30 > v31)
      {
        v32 = v31 >= v30;
        v33 = v31 - v30;
        if (!v32)
        {
          v33 = 0;
          *(v27 + 96) = v31;
        }

        *(v27 + 100) = v33;
      }

      if (v28 == 7)
      {
        v34 = *(v4 + v23 + 104);
        v35 = !v24 && v34 == 43;
        if (v34 == 43 || !v24)
        {
          v24 = v35;
        }

        else if (v34 == 15)
        {
          v24 = 0;
        }

        else
        {
          result = datac_RequestBlock(a1, 1021, (v8 + 1), &v41);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v4 = *(v41 + 8);
          v38 = v4 + v23;
          memmove((v4 + v23 + 128), (v4 + v23 + 64), (v25 + *(v41 + 16)) << 6);
          v24 = 0;
          v39 = *(v4 + v23 + 144);
          *(v38 + 64) = *(v38 + 128);
          *(v38 + 80) = v39;
          v40 = *(v4 + v23 + 176);
          *(v38 + 96) = *(v38 + 160);
          *(v38 + 112) = v40;
          *(v38 + 104) = 15;
          a2 = v41;
          ++*(v41 + 16);
        }
      }

      else
      {
LABEL_45:
        v24 = v24;
      }

      ++v26;
      v8 = *(a2 + 16);
      v23 += 64;
      --v25;
    }

    while (v26 < v8);
  }

  return 0;
}

uint64_t wordpar_loc_InsertNLUMarkers(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43 = 0;
  v44 = a2;
  v3 = *(a1 + 24);
  v4 = *(a2 + 8);
  result = datac_RequestBlock(v3, 1013, 1u, &v43);
  if ((result & 0x80000000) == 0)
  {
    v6 = *(v2 + 16);
    if (v6 >= 2)
    {
      v7 = 0;
      v8 = 1;
      v9 = 1;
      do
      {
        v10 = *(v4 + (v9 << 6) + 20);
        if (v10 > 55)
        {
          if (v10 == 56)
          {
            v12 = "E_";
            if (v7)
            {
              goto LABEL_26;
            }

            v7 = 0;
            goto LABEL_43;
          }

          if (v10 != 57)
          {
LABEL_7:
            v11 = v10 != 54 || v7 == 0;
            v12 = "BND:";
            if (!v11)
            {
LABEL_26:
              LOWORD(v14) = v8 + 1;
              LOWORD(v20) = v7;
LABEL_36:
              result = datac_RequestBlock(v3, 1021, (*(v2 + 16) + 1), &v44);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v25 = v20;
              v4 = *(v44 + 8);
              v26 = (v4 + (v20 << 6));
              memmove(v26 + 4, v26, (*(v44 + 16) - v20) << 6);
              v27 = (v4 + (v14 << 6));
              if (v25 > v14)
              {
                v28 = *v27;
                v29 = v27[1];
                v30 = v27[3];
                v26[2] = v27[2];
                v26[3] = v30;
                *v26 = v28;
                v26[1] = v29;
              }

              *v26 = 1;
              *(v26 + 5) = 51;
              v31 = v43;
              v32 = *(v43 + 16);
              v34 = *(v27 + 5);
              v33 = v27 + 5;
              v35 = strlen(v34);
              v36 = v32 + strlen(v12) + v35 + 1;
              if (*(v43 + 18) < v36)
              {
                result = datac_RequestBlock(*(a1 + 24), 1013, v36, &v43);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v31 = v43;
                v32 = *(v43 + 16);
              }

              v37 = strcpy((*(v31 + 8) + *(v31 + 2) * v32), v12);
              strcat(v37, *v33);
              *(v26 + 10) = *(v43 + 16);
              v2 = v44;
              *(v43 + 16) = v36;
              ++*(v2 + 16);
              ++v8;
              goto LABEL_43;
            }

            goto LABEL_43;
          }
        }

        else
        {
          if (v10 == 1)
          {
            v7 = v8;
            goto LABEL_43;
          }

          if (v10 != 55)
          {
            goto LABEL_7;
          }
        }

        if (v10 != 57 || v7 == 0)
        {
          v14 = v8;
        }

        else
        {
          result = datac_RequestBlock(v3, 1021, (v6 + 1), &v44);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v4 = *(v44 + 8);
          v15 = (v4 + (v7 << 6));
          memmove(v15 + 16, v15, (*(v44 + 16) - v7) << 6);
          *v15 = 1;
          v15[5] = 51;
          v16 = v4 + (v9 << 6);
          v17 = *(v16 + 104);
          v18 = strchr(v17, 58);
          if (v18)
          {
            v19 = v18 - v17;
          }

          else
          {
            v19 = strlen(v17);
          }

          v21 = v43;
          v22 = *(v43 + 16);
          v23 = v19 + v22 + 3;
          if (*(v43 + 18) < v23)
          {
            result = datac_RequestBlock(*(a1 + 24), 1013, (v19 + v22 + 3), &v43);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v21 = v43;
            v22 = *(v43 + 16);
          }

          v24 = (*(v21 + 8) + *(v21 + 2) * v22);
          strcpy(v24, "R_");
          strncat(v24, *(v16 + 104), v19);
          v15[10] = *(v43 + 16);
          v2 = v44;
          *(v43 + 16) = v23;
          ++*(v2 + 16);
          v14 = v8 + 1;
        }

        v20 = v14 + 1;
        if ((v20 & 0x10000) == 0)
        {
          v12 = "S_";
          v8 = v14;
          goto LABEL_36;
        }

        v8 = 0xFFFF;
LABEL_43:
        v9 = ++v8;
        v6 = *(v2 + 16);
      }

      while (v6 > v8);
    }

    if (v6)
    {
      v38 = 0;
      v39 = (v4 + 40);
      do
      {
        if (*(v39 - 5) == 51 && *(v39 - 10))
        {
          v40 = *v39;
          if (v40 == -1)
          {
            v41 = 0;
          }

          else
          {
            v41 = *(v43 + 8) + v40;
          }

          *v39 = v41;
          v2 = v44;
        }

        ++v38;
        v39 += 8;
      }

      while (v38 < *(v2 + 16));
    }

    return 0;
  }

  return result;
}

uint64_t wordpar_loc_writeMarkersToOutputStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(a5 + 16);
  if (!a6 && v11 == 1)
  {
    if (*(a4 + 20) == 0x4000)
    {
      return 0;
    }

    v11 = 1;
  }

  v13 = heap_Calloc(*(*(a1 + 16) + 8), 1, (32 * v11) | 1);
  if (!v13)
  {
    return 2370838538;
  }

  v14 = v13;
  if (*(a5 + 16))
  {
    v15 = 0;
    v16 = (a4 + 40);
    v17 = (v13 + 24);
    do
    {
      *(v17 - 3) = *(v16 - 20);
      *(v17 - 2) = *(v16 - 1);
      v18 = *v16;
      v16 += 8;
      *v17 = v18;
      v17 += 4;
      ++v15;
      v19 = *(a5 + 16);
    }

    while (v15 < v19);
  }

  else
  {
    LOWORD(v19) = 0;
  }

  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "at end()", 1, a4, v19);
  v12 = (*(*(a1 + 32) + 104))(a2, a3, v14, 32 * *(a5 + 16));
  if ((v12 & 0x80000000) == 0 && log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
  {
    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 34, "", "application/x-realspeak-markers-pp;version=4.0", v14, 32 * *(a5 + 16));
  }

  heap_Free(*(*(a1 + 16) + 8), v14);
  return v12;
}

uint64_t wordpar_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v22 = 0;
  v23 = 0;
  v5 = 2370838535;
  if (a4 && (InitRsrcFunction(a1, a2, &v23) & 0x80000000) == 0)
  {
    *a4 = 0;
    v11 = heap_Alloc(*(v23 + 8), 200);
    if (!v11)
    {
      return 2370838538;
    }

    v12 = v11;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 192) = 0;
    *(v11 + 160) = 0u;
    *(v11 + 176) = 0u;
    *(v11 + 128) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *v11 = a1;
    *(v11 + 8) = a2;
    v13 = v23;
    *(v11 + 16) = v23;
    *(v11 + 32) = a3;
    *(v11 + 164) = 0;
    *(v11 + 72) = 0;
    v14 = (v11 + 72);
    *(v11 + 152) = 0;
    *(v11 + 176) = 30;
    if ((paramc_ParamGetUInt(*(v13 + 40), "ppmaxpcreframeblocks", &v22 + 1) & 0x80000000) == 0)
    {
      *(v12 + 176) = WORD2(v22);
    }

    *(v12 + 178) = 50;
    if ((paramc_ParamGetUInt(*(v23 + 40), "ppnumframesinblock", &v22 + 1) & 0x80000000) == 0)
    {
      *(v12 + 178) = WORD2(v22);
    }

    *(v12 + 128) = 0;
    *(v12 + 80) = 0;
    *(v12 + 88) = 0;
    *(v12 + 96) = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
    *(v12 + 120) = 0;
    *(v12 + 136) = safeh_GetNullHandle();
    *(v12 + 144) = v15;
    v16 = extdata_ObjOpen(a1, a2, v14, 213);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    v16 = nuance_pcre_ObjOpen(a1, a2, v12 + 56);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v16 = nuance_pcre_Init(*(v12 + 56), *(v12 + 64), *(v12 + 176), *(v12 + 178));
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v17 = wordpar_loc_OpenParts(v12, &v22);
    if ((v17 & 0x80000000) != 0)
    {
      v5 = v17;
      if (v22)
      {
        return v5;
      }

      goto LABEL_18;
    }

    *(v12 + 172) = a5;
    v16 = datac_ObjOpen(a1, a2, (v12 + 24), 213);
    if ((v16 & 0x80000000) != 0)
    {
LABEL_17:
      v5 = v16;
    }

    else
    {
      v18 = &word_1C37BEBF2;
      v19 = 5;
      while (1)
      {
        datac_RegisterBlock(*(v12 + 24), *(v18 - 2), *(v18 - 1), *v18);
        v5 = v20;
        if ((v20 & 0x80000000) != 0)
        {
          break;
        }

        v18 += 3;
        if (!--v19)
        {
          *a4 = v12;
          return v5;
        }
      }
    }

LABEL_18:
    wordpar_ObjClose(v12);
  }

  return v5;
}

uint64_t wordpar_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v8 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      datac_ObjClose(v3);
    }

    v4 = *(a1 + 72);
    if (v4)
    {
      extdata_ObjClose(v4);
      *(a1 + 72) = 0;
    }

    wordpar_loc_CloseParts(a1);
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 56), *(a1 + 64), NullHandle, v6))
    {
      nuance_pcre_DeInit(*(a1 + 56), *(a1 + 64));
      nuance_pcre_ObjClose(*(a1 + 56), *(a1 + 64));
    }

    heap_Free(*(v8 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t wordpar_loc_OpenParts(_WORD **a1, _DWORD *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = "BRKD";
  v30 = wordpar_getBRKDefs;
  v31 = wordpar_freeBRKDefs;
  v32 = a1;
  SpecificData = extdata_RegisterData(a1[9], &v29, 1u);
  if ((SpecificData & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  SpecificData = extdata_LoadSpecificData(a1[9], "PPWO", "BRKD");
  if ((SpecificData & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  v27 = 0;
  v28 = 0;
  if ((InitRsrcFunction(*a1, a1[1], &v28) & 0x80000000) != 0)
  {
    v11 = 2370838535;
    goto LABEL_29;
  }

  v9 = a1[19];
  if (v9)
  {
    v29 = 0;
    v30 = 0;
    if (strlen(v9) >= 1)
    {
      v10 = 0;
      do
      {
        v9[v10] = __tolower(v9[v10]);
        ++v10;
        v9 = a1[19];
      }

      while (strlen(v9) > v10);
    }

    if ((brk_InterfaceQueryEx(*(a1[2] + 3), v9, 1, 1, &v29, (a1 + 16)) & 0x80000000) == 0)
    {
      SpecificData = (*(a1[16] + 4))(v29, v30, *a1, a1[1], a1 + 17);
      if ((SpecificData & 0x80000000) != 0)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    log_OutPublic(*(a1[2] + 4), "PP_WORD_PARSER", 1811, 0, v5, v6, v7, v8, v26);
  }

  if (*(a1 + 41))
  {
    Object = objc_GetObject(*(v28 + 48), "FE_UDWL", &v27);
    if ((Object & 0x80000000) != 0)
    {
      v11 = Object;
LABEL_33:
      *a2 = 1;
      wordpar_ObjClose(a1);
      goto LABEL_29;
    }

    v14 = v27;
    v13 = v28;
    a1[13] = *(v27 + 8);
    v15 = a1 + 13;
    *(a1 + 7) = *(v14 + 16);
    v16 = objc_GetObject(*(v13 + 48), "FE_DCTLKP", &v27);
    if ((v16 & 0x80000000) != 0)
    {
      v11 = v16;
      v20 = "FE_UDWL";
LABEL_32:
      objc_ReleaseObject(*(v28 + 48), v20);
      *v15 = 0;
      v15[1] = 0;
      *(v15 + 4) = 0;
      goto LABEL_33;
    }

    v17 = v27;
    v18 = *(v27 + 8);
    a1[10] = v18;
    *(a1 + 11) = *(v17 + 16);
    v19 = wparser_ObjOpen2(*a1, a1[1], a1[7], a1[8], a1 + 5, a1[13], a1[14], a1[15], v18, a1[11], a1[12], a1[9], a1[16], a1[17], a1[18]);
    if ((v19 & 0x80000000) != 0)
    {
      v11 = v19;
      if (*v15)
      {
        objc_ReleaseObject(*(v28 + 48), "FE_UDWL");
        *v15 = 0;
        a1[14] = 0;
        *(a1 + 30) = 0;
      }

      if (!a1[10])
      {
        goto LABEL_33;
      }

      v20 = "FE_DCTLKP";
      v15 = a1 + 10;
      goto LABEL_32;
    }
  }

  else
  {
    safeh_GetNullHandle();
    SpecificData = wparser_ObjOpen1(*a1, a1[1], a1 + 5);
    if ((SpecificData & 0x80000000) != 0)
    {
LABEL_28:
      v11 = SpecificData;
      goto LABEL_29;
    }
  }

  SpecificData = extdata_LoadData(a1[9], "PPWO");
  if ((SpecificData & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  v11 = tolhp_ObjOpen(*a1, a1[1], a1 + 6);
  if ((v11 & 0x80000000) == 0)
  {
    v21 = *(a1[2] + 5);
    v29 = 0;
    Str = paramc_ParamGetStr(v21, "is_teng", &v29);
    v23 = 0;
    if ((Str & 0x80000000) == 0 && v29)
    {
      if (*v29)
      {
        v23 = memchr("yYtT1", *v29, 6uLL) != 0;
      }

      else
      {
        v23 = 0;
      }
    }

    *(a1 + 49) = v23;
  }

LABEL_29:
  v24 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t wordpar_ObjReopen(_WORD **a1)
{
  v1 = 2370838535;
  v6 = 0;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, a1[1], &v6) & 0x80000000) == 0)
  {
    v3 = extdata_FreeData(a1[9]);
    if ((v3 & 0x80000000) != 0 || (v3 = wordpar_loc_CloseParts(a1), (v3 & 0x80000000) != 0))
    {
      v1 = v3;
    }

    else
    {
      v1 = wordpar_loc_OpenParts(a1, &v5);
      if ((v1 & 0x80000000) == 0 || v5)
      {
        return v1;
      }
    }

    wordpar_ObjClose(a1);
  }

  return v1;
}

uint64_t wordpar_loc_CloseParts(uint64_t a1)
{
  v2 = tolhp_ObjClose(*(a1 + 48));
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = *(a1 + 40);
  if (*(a1 + 164))
  {
    if (v3)
    {
      v4 = wparser_ObjClose2(v3);
      goto LABEL_8;
    }
  }

  else if (v3)
  {
    v4 = wparser_ObjClose1(v3);
LABEL_8:
    v5 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      return v5;
    }
  }

  v6 = wordpar_freeBRKDefs(a1);
  v7 = *(a1 + 128);
  if (v7 && (v6 = (*(v7 + 40))(*(a1 + 136), *(a1 + 144)), (v8 = *(a1 + 128)) != 0))
  {
    v5 = brk_InterfaceRelease(*(*(a1 + 16) + 24), v8);
    *(a1 + 128) = 0;
    *(a1 + 136) = safeh_GetNullHandle();
    *(a1 + 144) = v9;
  }

  else
  {
    v5 = v6;
  }

  if (*(a1 + 164))
  {
    if (*(a1 + 104))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_UDWL");
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
    }

    if (*(a1 + 80))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DCTLKP");
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
    }
  }

  return v5;
}

uint64_t wordpar_ProcessStart(uint64_t a1)
{
  v1 = 2370838535;
  v8 = 0;
  v9 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v9) & 0x80000000) == 0)
  {
    v3 = log_GetLogLevel(*(v9 + 32)) > 4;
    *(a1 + 180) = 32;
    *(a1 + 168) = v3;
    __strcat_chk();
    v4 = 0;
    while (1)
    {
      v5 = datac_RequestBlock(*(a1 + 24), aMETA_1[v4], 1u, &v8);
      if ((v5 & 0x80000000) != 0)
      {
        break;
      }

      v4 += 3;
      v6 = v8;
      *(v8 + 16) = 0;
      *(v6 + 20) = 0;
      if (v4 == 15)
      {
        v5 = tolhp_ResetDcts(*(a1 + 48));
        if ((v5 & 0x80000000) == 0)
        {
          if (!*(a1 + 164))
          {
            return 0;
          }

          v5 = wparser_ProcessStart(*(a1 + 40));
          if ((v5 & 0x80000000) == 0)
          {
            return 0;
          }
        }

        return v5;
      }
    }

    return v5;
  }

  return v1;
}

uint64_t wordpar_ProcessEnd(uint64_t a1)
{
  if (!a1)
  {
    return 2370838535;
  }

  if (*(a1 + 164))
  {
    return wparser_ProcessEnd(*(a1 + 40));
  }

  return 0;
}

uint64_t wordpar_LoadFromStreamData(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v10 = *(a1 + 24);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = 1;
  }

  v12 = datac_RequestBlock(v10, 1020, v11, &v37);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (a2)
  {
    memcpy(*(v37 + 8), a2, a3);
  }

  *(v37 + 16) = a3;
  v13 = datac_RequestBlock(*(a1 + 24), 1021, a5 & 0xFFC0, &v38);
  if ((v13 & 0x80000000) == 0)
  {
    v35 = a3;
    v14 = a5 >> 6;
    v15 = v38;
    v16 = *(v38 + 8);
    v17 = (a5 >> 6);
    if (!v17)
    {
      goto LABEL_27;
    }

    v18 = 0;
    v19 = 0;
    do
    {
      v20 = &v16[16 * v19];
      v21 = (a4 + (v19 << 6));
      v22 = v21[3];
      v23 = *v21;
      v24 = v21[1];
      *(v20 + 2) = v21[2];
      *(v20 + 3) = v22;
      *v20 = v23;
      *(v20 + 1) = v24;
      if (marker_hasNonConstCharPtrArg(v20[5]))
      {
        v25 = *(v21 + 5);
        if (v25)
        {
          v26 = strlen(v25);
          LODWORD(v25) = 0;
          v18 += v26 + 1;
        }
      }

      else
      {
        LODWORD(v25) = *(v21 + 10);
      }

      v20[10] = v25;
      v27 = *(v21 + 6);
      if (v27)
      {
        v28 = strlen(v27);
        if (v28)
        {
          v29 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v28 + 1));
          *(v20 + 6) = v29;
          if (!v29)
          {
            return 2370838538;
          }

          strcpy(v29, *(v21 + 6));
        }
      }

      ++v19;
    }

    while (v19 < v14);
    *(v38 + 16) = v14;
    if (!v18)
    {
      goto LABEL_28;
    }

    v13 = datac_RequestBlock(*(a1 + 24), 1012, v18, &v36);
    if ((v13 & 0x80000000) == 0)
    {
      LOWORD(v14) = 0;
      v30 = *(v36 + 8);
      v31 = v16 + 10;
      v32 = (a4 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v31 - 5)) && *v32)
        {
          v33 = strlen(*v32);
          *v31 = v14;
          memcpy((v30 + v14), *v32, v33);
          *(v30 + v33 + v14) = 0;
          LOWORD(v14) = v14 + v33 + 1;
        }

        v31 += 16;
        v32 += 8;
        --v17;
      }

      while (v17);
      v15 = v36;
LABEL_27:
      *(v15 + 16) = v14;
LABEL_28:
      if (v16[5] == 0x4000 && !v16[6] && !v16[7] && !wordpar_loc_existingSentParParams(a1))
      {
        v16[7] = v35;
        v16[9] = v35;
      }
    }
  }

  return v13;
}

uint64_t wordpar_ResetData(uint64_t a1)
{
  v4 = 0;
  if (!a1)
  {
    return 2370838535;
  }

  for (i = 0; i != 4; ++i)
  {
    result = datac_RequestBlock(*(a1 + 24), aTAG_1[i], 1u, &v4);
    if (i != 2 && (result & 0x80000000) == 0)
    {
      *(v4 + 16) = 0;
    }
  }

  return result;
}

uint64_t wordpar_Process(uint64_t a1)
{
  v50 = 0;
  if (!a1)
  {
    return 2370838535;
  }

  memset(v49, 0, sizeof(v49));
  LODWORD(v51) = 0;
  UInt = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_posrefoffset", &v50 + 1);
  if ((UInt & 0x1FFF) == 0x14)
  {
    HIDWORD(v50) = 0;
  }

  else
  {
    v3 = UInt;
    if ((UInt & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v4 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset", &v50);
  if ((v4 & 0x1FFF) == 0x14)
  {
    LODWORD(v50) = 0;
  }

  else
  {
    v3 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v5 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_tag", &v51);
  if ((v5 & 0x1FFF) == 0x14)
  {
    v6 = 0;
  }

  else
  {
    v3 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      return v3;
    }

    v6 = v51;
  }

  DWORD1(v49[1]) = v6;
  v7 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_posref", &v49[1] + 2);
  if ((v7 & 0x1FFF) == 0x14)
  {
    DWORD2(v49[1]) = 0;
  }

  else
  {
    v3 = v7;
    if ((v7 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v8 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_lenref", &v49[1] + 3);
  if ((v8 & 0x1FFF) == 0x14)
  {
    HIDWORD(v49[1]) = 0;
  }

  else
  {
    v3 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 4, 0, "(from sentpar) posRefOffset=%d,refReset=%d pRefResetMrk->tag %d posRef %d lenRef %d", v9, v10, v11, HIDWORD(v50));
  if (!*(a1 + 164))
  {
    inserted = wparser_ScanWords(*(a1 + 40), *(a1 + 24), SHIDWORD(v50), v50);
    if ((inserted & 0x80000000) != 0)
    {
      return inserted;
    }

    v12 = 0;
LABEL_31:
    marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "BEFORE wordpar_loc_nonasian_PreProcessExtendedTOIWords");
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "BEFORE wordpar_loc_nonasian_PreProcessExtendedTOIWords", 0, 0, 0);
    v15 = *(a1 + 24);
    v51 = 0;
    inserted = datac_RequestBlock(v15, 1021, 1u, &v51);
    if ((inserted & 0x80000000) == 0)
    {
      v16 = v51;
      v17 = *(v51 + 16);
      if (v17 > 1)
      {
        v18 = *(v51 + 8);
        v19 = v18 + 8;
        v20 = 1;
        do
        {
          while (1)
          {
            v21 = v20;
            v22 = &v18[16 * v20];
            if (v22[5] == 7 && v22[10] >= 0x46u)
            {
              break;
            }

            ++v20;
LABEL_46:
            if (v17 <= v20)
            {
              goto LABEL_79;
            }
          }

          v23 = v22[8];
          if (v17 <= (v20 + 1))
          {
            ++v20;
          }

          else
          {
            v20 = v17;
          }

          v24 = &v18[16 * v21 + 21];
          while (++v21 < v17)
          {
            v25 = *v24;
            v24 += 16;
            if (v25 == 7)
            {
              v20 = v21;
              break;
            }
          }

          if (v17 == v20)
          {
            v26 = v18[9];
            v27 = (v26 + v18[8]);
            v28 = (v26 + *(v18 + 16));
          }

          else
          {
            v28 = v18[16 * v20 + 8];
          }

          if (v17 < 2u)
          {
            goto LABEL_46;
          }

          v29 = 0;
          v30 = 0;
          v31 = v18 + 21;
          v32 = 1;
          do
          {
            v33 = v31[3];
            if (v33 > v28)
            {
              break;
            }

            v34 = *v31;
            v31 += 16;
            v35 = v34 == 1 && v33 >= v23;
            v36 = v35;
            v37 = v36 & (v33 < v28);
            if (v37)
            {
              v29 = v32;
            }

            if ((v37 & (v30 == 0)) != 0)
            {
              v30 = v32;
            }

            ++v32;
          }

          while (v17 != v32);
          if (!v30 || !v29 || v30 == v29)
          {
            goto LABEL_46;
          }

          v48 = v12;
          v38 = &v18[16 * v29];
          v39 = &v18[16 * v30];
          v39[9] = v38[9] + v38[8] - v39[8];
          v39[7] = v38[7] + v38[6] - v39[6];
          v47 = v19;
          if (v29 > v30)
          {
            v40 = v29 - 1;
            v41 = &v19[16 * v29];
            v42 = ~v29 | 0xFFFF0000;
            do
            {
              if (*(v41 - 3) == 1 && *v41 >= v23 && *v41 < v28)
              {
                v44 = *(v16 + 16);
                if (v40 + 2 != v44)
                {
                  memmove(v41 - 8, &v18[16 * (v40 + 2)], (v42 + v44) << 6);
                  v16 = v51;
                }

                --*(v16 + 16);
              }

              v35 = v30 >= v40--;
              v41 -= 16;
              ++v42;
            }

            while (!v35);
          }

          v17 = *(v16 + 16);
          v12 = v48;
          v19 = v47;
        }

        while (v17 > v20);
      }

LABEL_79:
      marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "BEFORE tolhp_RewritePhonTextInLhp");
      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "BEFORE tolhp_RewritePhonTextInLhp", 0, 0, 0);
      inserted = tolhp_RewritePhonTextInLhp(*(a1 + 48), *(a1 + 24));
      if ((inserted & 0x80000000) == 0)
      {
        marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "AFTER tolhp_RewritePhonTextInLhp");
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "AFTER tolhp_RewritePhonTextInLhp", 0, 0, 0);
        if (!*(a1 + 164) || (inserted = wparser_insertRegionTags(*(a1 + 40), *(a1 + 24)), (inserted & 0x80000000) == 0))
        {
          v45 = *(a1 + 24);
          v51 = 0;
          inserted = datac_RequestBlock(v45, 1021, 1u, &v51);
          if ((inserted & 0x80000000) == 0)
          {
            inserted = marker_loc_FilterSyncMarkers(v51);
            if ((inserted & 0x80000000) == 0)
            {
              if ((v12 & 0x1FFF) == 0xA)
              {
                return v12;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }

    return inserted;
  }

  v51 = 0;
  if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v51) & 0x80000000) == 0)
  {
    *(a1 + 160) = *(v51 + 16);
  }

  v3 = wordpar_loc_AlignInputMarkers(a1);
  if ((v3 & 0x80000000) == 0)
  {
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "AFTER wordpar_loc_AlignInputMarkers", 0, 0, 0);
    v12 = 0;
    if (!*(a1 + 196))
    {
      v13 = wparser_NormalizeWords(*(a1 + 40), *(a1 + 24), SHIDWORD(v50), v50, v49);
      v12 = v13;
      if ((v13 & 0x1FFF) == 0xA)
      {
        v3 = v3;
      }

      else
      {
        v3 = v13;
      }
    }

    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "AFTER wparser_NormalizeWords", 0, 0, 0);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  return v3;
}

uint64_t wordpar_loc_AlignInputMarkers(uint64_t a1)
{
  v16 = 0;
  v1 = datac_RequestBlock(*(a1 + 24), 1021, 1u, &v16);
  if ((v1 & 0x80000000) != 0)
  {
    return v1;
  }

  v2 = 2370838528;
  v3 = *(v16 + 16);
  if (*(v16 + 16))
  {
    v4 = *(v16 + 8);
    if (*(v4 + 20) == 0x4000)
    {
      if (v3 != 1)
      {
        v5 = 1;
        do
        {
          v6 = v5 + 1;
          if (v6 >= v3 || (v7 = (v4 + (v6 << 6)), v8 = (v4 + (v5 << 6)), *(v7 + 8) >= *(v8 + 8)))
          {
            ++v5;
          }

          else
          {
            v5 = 0;
            v9 = *v7;
            v10 = v7[1];
            v11 = v7[2];
            v12 = v7[3];
            v13 = v8[1];
            *v7 = *v8;
            v7[1] = v13;
            v14 = v8[3];
            v7[2] = v8[2];
            v7[3] = v14;
            v17 = v9;
            v18 = v10;
            v19 = v11;
            v20 = v12;
            *v8 = v9;
            v8[1] = v10;
            v8[2] = v11;
            v8[3] = v12;
          }
        }

        while (v5 < v3);
      }

      return v1;
    }
  }

  return v2;
}

uint64_t wordpar_ResourceLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 2370838529;
  if (!a1)
  {
    return 2370838535;
  }

  if (*(a1 + 164))
  {
    return (*(*(a1 + 104) + 64))(*(a1 + 112), *(a1 + 120), a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t wordpar_ResourceTypes(uint64_t a1, void *a2)
{
  v2 = 2370838535;
  v7 = 0;
  if (a1)
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v7);
    if ((inited & 0x80000000) == 0)
    {
      if (*(a1 + 164))
      {
        return (*(*(a1 + 104) + 56))(*(a1 + 112), *(a1 + 120), a2);
      }

      *a2 = 0;
      return inited;
    }
  }

  return v2;
}

uint64_t wordpar_ResourceUnload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 2370838536;
  if (!a1)
  {
    return 2370838535;
  }

  if (*(a1 + 164))
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      return (*(v5 + 72))(*(a1 + 112), *(a1 + 120), a2, a3);
    }
  }

  return result;
}

uint64_t wordpar_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 164))
  {
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    __s1 = 0;
    v50 = 0;
    if ((GetCfgParamVal(*(a1 + 88), *(a1 + 96), *(a1 + 80), "felid_act_lid", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 188) = strcmp(__s1, "yes") == 0;
    }

    if ((GetCfgParamVal(*(a1 + 88), *(a1 + 96), *(a1 + 80), "felid_remove_internal_lang", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 192) = strcmp(__s1, "yes") == 0;
    }

    v10 = (*(*(a1 + 32) + 136))(a2, a3, &v50);
    if ((v10 & 0x80000000) == 0)
    {
      if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v48) & 0x80000000) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v48 + 8);
      }

      inserted = datac_RequestBlock(*(a1 + 24), 1021, 1u, &v47);
      if ((inserted & 0x80000000) != 0)
      {
        goto LABEL_49;
      }

      v14 = 2370838528;
      v15 = *(v47 + 16);
      if (!*(v47 + 16))
      {
        return v14;
      }

      v16 = *(v47 + 8);
      if (v16[5] != 0x4000)
      {
        return v14;
      }

      if (!*(a1 + 196))
      {
        v17 = v16 + 8;
        v18 = v50 - v16[8];
        do
        {
          *v17 += v18;
          v17 += 16;
          --v15;
        }

        while (v15);
      }

      marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "start wordpar_WriteTextAndMarkers()");
      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "start wordpar_WriteTextAndMarkers()", 0, 0, 0);
      v10 = datac_RequestBlock(*(a1 + 24), 1020, 1u, &v49);
      if ((v10 & 0x80000000) == 0)
      {
        v19 = heap_Calloc(*(*(a1 + 16) + 8), 1, *(v49 + 16) + 1);
        v46 = v19;
        if (v19)
        {
          v20 = v19;
          v21 = strncpy(v19, *(v49 + 8), *(v49 + 16));
          v21[*(v49 + 16)] = 0;
          log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 4, 0, "L0:%s", v22, v23, v24, v20);
          inserted = wordpar_loc_AlignInputMarkers(a1);
          if ((inserted & 0x80000000) == 0)
          {
            marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "out wordpar_loc_AlignInputMarkers()", 0, 0, 0);
            wordpar_loc_asian_ProcessWparserMarkers(*(a1 + 16), v16, (v47 + 16), v20);
            marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "out wordpar_loc_asian_ProcessWparserMarkers()", 0, 0, 0);
            inserted = wordpar_loc_asian_TranslateMarkup(a1, &v46, v47, v48);
            if ((inserted & 0x80000000) == 0)
            {
              if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v48) & 0x80000000) == 0)
              {
                v11 = *(v48 + 8);
              }

              v25 = *(v47 + 8);
              if (v11 && *(v47 + 16))
              {
                v26 = 0;
                v27 = v25 + 10;
                do
                {
                  if (marker_hasNonConstCharPtrArg(*(v27 - 5)))
                  {
                    v28 = *v27;
                    if (v28 == -1)
                    {
                      v29 = 0;
                    }

                    else
                    {
                      v29 = v11 + v28;
                    }

                    *v27 = v29;
                  }

                  ++v26;
                  v27 += 8;
                }

                while (v26 < *(v47 + 16));
              }

              marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_PostProcessMarkers()");
              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_PostProcessMarkers()", 1, 0, 0);
              v30 = v46;
              wordpar_loc_asian_PostProcessMarkers(*(a1 + 16), *(a1 + 188), v25, (v47 + 16), v46);
              marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_deleteMarkerForUnknown()");
              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteMarkerForUnknown()", 0, 0, 0);
              wordpar_loc_asian_deleteMarkerForUnknown(v25, (v47 + 16));
              if (*(a1 + 192))
              {
                marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_deleteConflictingLangMarker()");
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteConflictingLangMarker()", 0, 0, 0);
                if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &v44) & 0x80000000) == 0)
                {
                  wordpar_loc_asian_deleteConflictingLangMarker(v25, (v47 + 16), v44);
                }
              }

              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wparser_InsertWordMarkers()", 0, 0, 0);
              inserted = wparser_InsertWordMarkers(*(a1 + 40), *(a1 + 24), v30, (v47 + 16));
              if ((inserted & 0x80000000) == 0)
              {
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_RemoveBlankLatinRegions()", 1, 0, 0);
                wordpar_loc_asian_RemoveBlankLatinRegions(v25, (v47 + 16), v30);
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers()", 1, 0, 0);
                inserted = wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers(*(a1 + 16), v25, *(v47 + 16), &v46);
                if ((inserted & 0x80000000) == 0)
                {
                  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_InsertSpaceBeforeTNMarkers()", 1, 0, 0);
                  inserted = wordpar_loc_asian_InsertSpaceBeforeTNMarkers(*(a1 + 16), *(a1 + 24), &v46);
                  if ((inserted & 0x80000000) == 0)
                  {
                    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_HandleExtendedToi()", 0, 0, 0);
                    inserted = wordpar_loc_asian_HandleExtendedToi(*(a1 + 16), *(a1 + 24), v47, &v46);
                    if ((inserted & 0x80000000) == 0)
                    {
                      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_MarkerPostProcessing()", 1, 0, 0);
                      inserted = wordpar_loc_MarkerPostProcessing(*(a1 + 24), v47);
                      if ((inserted & 0x80000000) == 0)
                      {
                        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_InsertNLUMarkers()", 1, 0, 0);
                        inserted = wordpar_loc_InsertNLUMarkers(a1, v47);
                        if ((inserted & 0x80000000) == 0)
                        {
                          v34 = v46;
                          v35 = *(v47 + 8);
                          log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Write2DB) %s", v31, v32, v33, v46);
                          marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "at end()", 1, 0, 0);
                          v36 = strlen(v34);
                          if (!v36)
                          {
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 34, "", "text/plain;charset=depes", 0, 0);
                            }

                            v38 = 0;
                            goto LABEL_58;
                          }

                          inserted = (*(*(a1 + 32) + 104))(a2, a3, v34, (v36 + 1));
                          if ((inserted & 0x80000000) == 0)
                          {
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              v37 = strlen(v34);
                              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 34, "", "text/plain;charset=depes", v34, (v37 + 1));
                            }

                            v38 = 1;
LABEL_58:
                            *(v49 + 16) = 0;
                            v39 = wordpar_loc_writeMarkersToOutputStream(a1, a4, a5, v35, v47, v38);
                            if ((v39 & 0x80000000) == 0)
                            {
                              if (*(a1 + 160))
                              {
                                v40 = *(v48 + 8);
                                if (v40)
                                {
                                  v41 = heap_Realloc(*(*(a1 + 16) + 8), v40, *(v48 + 2) * *(a1 + 160));
                                  if (v41)
                                  {
                                    v42 = v48;
                                    *(v48 + 8) = v41;
                                    v43 = *(a1 + 160);
                                    *(v42 + 16) = v43;
                                    *(v42 + 18) = v43;
                                  }

                                  else
                                  {
                                    v39 = 2370838538;
                                  }
                                }
                              }
                            }

                            goto LABEL_50;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_49:
          v39 = inserted;
LABEL_50:
          if (v46)
          {
            heap_Free(*(*(a1 + 16) + 8), v46);
          }

          return v39;
        }

        return 2370838538;
      }
    }

    return v10;
  }

  return wordpar_loc_nonasian_WriteTextAndMarkers(a1, a2, a3, a4, a5);
}

uint64_t wordpar_GetWParserType(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 2370838535;
  }

  result = 0;
  *a2 = *(a1 + 164);
  return result;
}

uint64_t wordpar_loc_adjustMarkerPositions(uint64_t result, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (a3 < result)
  {
    v6 = (a2 + (a3 << 6) + 36);
    v7 = result - a3;
    do
    {
      v8 = *(v6 - 1);
      v9 = *(a2 + 32);
      v10 = v9 + a5;
      if (v8 <= v9 + a4 || v8 >= v10)
      {
        if (v8 >= v10)
        {
          *(v6 - 1) = v8 + a6;
        }

        else if (*(v6 - 4) == 1)
        {
          v12 = *v6 + v8;
          if (v12 > *(a2 + 36) + v9 && v12 != -a6)
          {
            *v6 += a6;
          }
        }
      }

      else
      {
        *(v6 - 1) = v9 + a4;
      }

      v6 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t GetCfgParamVal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  *a5 = "no";
  __c_1 = -1;
  __c = 0;
  v10 = 0;
  v6 = (*(a3 + 96))(a1, a2, "fecfg", a4, &v10, &__c_1, &__c);
  if ((v6 & 0x80000000) == 0 && __c_1)
  {
    v7 = *v10;
    v8 = strchr(*v10, __c);
    if (v8)
    {
      *v8 = 0;
      v7 = *v10;
    }

    *a5 = v7;
  }

  return v6;
}

uint64_t wordpar_loc_asian_ProcessWparserMarkers(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, char *__s)
{
  result = strlen(__s);
  v79 = result;
  v9 = *a3;
  if (v9 < 2)
  {
    goto LABEL_110;
  }

  v10 = 1;
  do
  {
    v11 = &a2[16 * v10];
    if (v11[5] == 7)
    {
      v12 = v11[10];
      if ((v12 - 15) <= 1)
      {
        v13 = *(v11 + 8);
        v14 = *(v11 + 1);
        if (*(v11 + 8))
        {
          v15 = 0;
          do
          {
            if (!*(v14 + 8 * v15))
            {
              v16 = v14 + 8 * v15;
              if (v9 >= 2u)
              {
                v17 = v11[8];
                v18 = a2 + 21;
                v19 = 2;
                v20 = v9 - 1;
                do
                {
                  if (v18[3] > v17)
                  {
                    break;
                  }

                  if (*v18 == 998)
                  {
                    v21 = v18[1];
                    if (v21 == v11[6])
                    {
                      v22 = v18[5] != v12 || v19 >= v9;
                      if (!v22 && v18[16] == 41)
                      {
                        v23 = *(v16 + 4) + v21;
                        if (a2[7] + a2[6] < v23)
                        {
                          v23 = a2[7] + a2[6];
                        }

                        v24 = v18[2];
                        v18[17] = v23;
                        v18[18] = v24;
                        *v18 = 0;
                      }
                    }
                  }

                  ++v19;
                  v18 += 16;
                  --v20;
                }

                while (v20);
              }

              v25 = *(v16 + 4) + v11[6];
              if (a2[7] + a2[6] < v25)
              {
                v25 = a2[7] + a2[6];
              }

              v11[6] = v25;
            }

            ++v15;
          }

          while (v15 != v13);
LABEL_30:
          result = heap_Free(*(a1 + 8), v14);
          *(v11 + 1) = 0;
          *(v11 + 8) = 0;
          LOWORD(v9) = *a3;
          goto LABEL_31;
        }

        if (v14)
        {
          goto LABEL_30;
        }

        if (v9 >= 2u)
        {
          v26 = 0;
          v27 = v11[8];
          v28 = 1;
          v29 = a2 + 23;
          v30 = 1;
          do
          {
            v31 = &a2[16 * v30];
            if (v31[8] > v27)
            {
              break;
            }

            if (v31[5] == 998)
            {
              v32 = v31[6];
              if (v32 == v11[6] && v31[10] == v12)
              {
                v33 = (v28 + 1);
                if (v33 < v9 && (v34 = &a2[16 * v33], result = v34[5], result == 41) && (result = v34[6], result == v32))
                {
                  v34[7] = v31[7];
                  v31[5] = 0;
                }

                else if (v28 >= 2u)
                {
                  result = v26;
                  v35 = v29;
                  while (1)
                  {
                    if (*(v35 - 2) == 41)
                    {
                      v36 = *(v35 - 1);
                      if (v36 < v32)
                      {
                        goto LABEL_49;
                      }

                      if (v36 == v32)
                      {
                        break;
                      }
                    }

                    v35 -= 16;
                    if (!(result-- & 0xFFFE))
                    {
                      goto LABEL_49;
                    }
                  }

                  *v35 = v31[7];
                  v31[5] = 0;
                  break;
                }
              }
            }

LABEL_49:
            LOWORD(v28) = v28 + 1;
            v30 = v28;
            v28 = v28;
            v29 += 16;
            ++v26;
          }

          while (v28 < v9);
        }
      }
    }

LABEL_31:
    ++v10;
  }

  while (v10 < v9);
  if (v9 < 2u)
  {
    goto LABEL_110;
  }

  v38 = 1;
  do
  {
    v39 = &a2[16 * v38];
    if (v39[5] == 998)
    {
      v40 = 1;
      while (1)
      {
        v41 = &a2[16 * v40];
        v42 = v41[8];
        if (v42 > v39[8])
        {
          goto LABEL_60;
        }

        if (v41[5] == 41)
        {
          result = v39[6];
          if (v41[6] == result)
          {
            break;
          }
        }

        if (++v40 >= v9)
        {
          goto LABEL_60;
        }
      }

      v43 = v39[7];
      v41[7] = v43;
      v44 = v40 + 1;
      if (v44 < v9)
      {
        v45 = &a2[16 * v44];
        if (v45[5] == 39 && v45[8] == v42)
        {
          v46 = v45 + 7;
LABEL_70:
          *v46 = v43;
          goto LABEL_60;
        }
      }

      if (v40 >= 2u && *(v41 - 11) == 39 && *(v41 - 8) == v42)
      {
        v46 = v41 - 9;
        goto LABEL_70;
      }
    }

LABEL_60:
    ++v38;
  }

  while (v38 != v9);
  v47 = 1;
  v48 = 1;
  while (2)
  {
    v49 = &a2[16 * v47];
    if (v49[5] != 7)
    {
LABEL_72:
      v50 = &a2[16 * v48];
      v51 = *v49;
      v52 = *(v49 + 1);
      v53 = *(v49 + 3);
      v50[2] = *(v49 + 2);
      v50[3] = v53;
      *v50 = v51;
      v50[1] = v52;
      goto LABEL_73;
    }

    v54 = v49[10];
    if (v54 != 43)
    {
      if ((v54 - 15) <= 1)
      {
        goto LABEL_72;
      }

      goto LABEL_92;
    }

    if (!v49[9])
    {
      v65 = *(v49 + 6);
      if (v65)
      {
        result = heap_Free(*(a1 + 8), v65);
        *(v49 + 6) = 0;
      }

LABEL_92:
      v66 = *(v49 + 1);
      if (v66)
      {
        result = heap_Free(*(a1 + 8), v66);
        *(v49 + 1) = 0;
        *(v49 + 8) = 0;
      }

      goto LABEL_74;
    }

    v55 = a2[8];
    v56 = v49[8] - v55;
    if (v79 > (*(v49 + 16) - v55 - 3))
    {
      v57 = (v56 - 3);
      v58 = &__s[(v56 - 3)];
      if (*v58 == 30 && v58[1] == 47 && v58[2] == 43)
      {
        v59 = *(v49 + 1);
        if (v59)
        {
          result = heap_Free(*(a1 + 8), v59);
          *(v49 + 1) = 0;
          *(v49 + 8) = 0;
        }

        v60 = &a2[16 * v48];
        v61 = *v49;
        v62 = *(v49 + 1);
        v63 = *(v49 + 3);
        *(v60 + 2) = *(v49 + 2);
        *(v60 + 3) = v63;
        *v60 = v61;
        *(v60 + 1) = v62;
        v60[8] = a2[8] + v56;
        while (1)
        {
          LOWORD(v56) = v56 + 1;
          v64 = __s[v56];
          if (v56 >= v79)
          {
            break;
          }

          if (v64 == 31)
          {
            goto LABEL_95;
          }
        }

        if (v64 != 31)
        {
          goto LABEL_73;
        }

LABEL_95:
        v60[9] = v56 - v57 - 3;
LABEL_73:
        ++v48;
      }
    }

LABEL_74:
    if (++v47 < *a3)
    {
      continue;
    }

    break;
  }

  *a3 = v48;
  if (v48 < 2u)
  {
LABEL_110:
    *a3 = 1;
    return result;
  }

  v67 = 0;
  v68 = 1;
  do
  {
    v69 = &a2[16 * v68];
    if (v69[5] != 7 || v69[10] != 43)
    {
      v70 = v67;
      v71 = a2 + 26;
      v72 = 1;
      while (1)
      {
        if (v70)
        {
          if (*(v71 - 5) == 7 && *v71 == 43)
          {
            v73 = v69[8];
            v74 = *(v71 - 2);
            if (v73 >= v74 && v73 < *(v71 - 1) + v74)
            {
              break;
            }
          }
        }

        ++v72;
        v71 += 16;
        --v70;
        if (v72 >= v48)
        {
          goto LABEL_107;
        }
      }

      v69[8] = v74;
    }

LABEL_107:
    ++v68;
    ++v67;
  }

  while (v68 < v48);
  *a3 = v68;
  LOWORD(v75) = 1;
  do
  {
    v75 = v75;
    result = &a2[16 * v75];
    while (1)
    {
      v76 = *(result + 20);
      if (v76 == 998 || v76 == 0)
      {
        break;
      }

      ++v75;
      result += 64;
      if (v75 >= v68)
      {
        return result;
      }
    }

    v78 = v75 + 1;
    if (v68 > v78)
    {
      result = memmove(result, &a2[16 * v78], (v68 - v78) << 6);
      LOWORD(v68) = *a3;
    }

    LOWORD(v68) = v68 - 1;
    *a3 = v68;
  }

  while (v68 > v75);
  return result;
}

uint64_t wordpar_loc_asian_TranslateMarkup(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v175 = a4;
  v176[0] = a3;
  v7 = strlen((a1 + 180));
  v8 = *a2;
  v174 = 0;
  v173 = 30;
  v172 = 0;
  v9 = *(v4 + 16);
  MarkerArgStr = marker_getMarkerArgStr(2u);
  v11 = v9 + strlen(MarkerArgStr) + 1;
  if (*(v4 + 18) < v11)
  {
    result = datac_RequestBlock(*(a1 + 24), 1012, v11, &v175);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v4 = v175;
  }

  v13 = (*(v4 + 8) + *(v4 + 2) * *(v4 + 16));
  v14 = marker_getMarkerArgStr(2u);
  strcpy(v13, v14);
  v15 = marker_getMarkerArgStr(2u);
  v13[strlen(v15)] = 0;
  v16 = *(v175 + 16);
  *(v175 + 16) = v11;
  v17 = marker_getMarkerArgStr(1u);
  v18 = v11 + strlen(v17) + 1;
  v19 = v175;
  if (*(v175 + 18) < v18)
  {
    result = datac_RequestBlock(*(a1 + 24), 1012, v18, &v175);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v19 = v175;
  }

  v20 = (*(v19 + 8) + *(v19 + 2) * *(v19 + 16));
  v21 = marker_getMarkerArgStr(1u);
  strcpy(v20, v21);
  v22 = marker_getMarkerArgStr(1u);
  v20[strlen(v22)] = 0;
  v23 = *(v175 + 16);
  *(v175 + 16) = v18;
  HIBYTE(v173) = 76;
  strlen(v8);
  log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v24, v25, v26, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eL)");
  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eL)", 0, 0, 0);
  result = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v173, v176[0], v16);
  if ((result & 0x80000000) == 0)
  {
    HIBYTE(v173) = 68;
    strlen(v8);
    log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v27, v28, v29, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eD)");
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eD)", 0, 0, 0);
    result = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v173, v176[0], v16);
    if ((result & 0x80000000) == 0)
    {
      strlen(v8);
      log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v30, v31, v32, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eP)");
      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eP)", 0, 0, 0);
      HIBYTE(v173) = 80;
      result = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v173, v176[0], v23);
      if ((result & 0x80000000) == 0)
      {
        v169 = result;
        v159 = a2;
        strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v33, v34, v35, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szPHONMARKER_BEG)");
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szPHONMARKER_BEG)", 0, 0, 0);
        wordpar_loc_asian_deleteStr(v176[0], v8, szPHONMARKER_BEG);
        strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v36, v37, v38, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szWORD_END)");
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szWORD_END)", 0, 0, 0);
        wordpar_loc_asian_deleteStr(v176[0], v8, szWORD_END);
        strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v39, v40, v41, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG, ), initial only");
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG, ), initial only", 0, 0, 0);
        v42 = 1;
        wordpar_loc_asian_replaceStrWithStr(v176[0], v8, "", 1);
        strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v43, v44, v45, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG,  )");
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG,  )", 0, 0, 0);
        wordpar_loc_asian_replaceStrWithStr(v176[0], v8, " ", 0);
        strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v46, v47, v48, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)");
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", 0, 0, 0);
        wordpar_loc_asian_deleteStr(v176[0], v8, szMARKER_END);
        strlen(v8);
        log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v49, v50, v51, "after wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)");
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "after wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", 0, 0, 0);
        v52 = v176[0];
        v53 = *(v176[0] + 8);
        v54 = *(v176[0] + 16);
        if (v54 >= 2)
        {
          v55 = 0;
          v56 = v53[8];
          v57 = v54 - 2;
          v58 = v53 + 26;
          do
          {
            v59 = *(v58 - 2);
            if (v59 == v56 && *(v58 - 5) == 7 && *v58 == 43)
            {
              v55 = 1;
            }

            v60 = v59 > v56 || v57-- == 0;
            v58 += 16;
          }

          while (!v60);
          v42 = v55 == 0;
        }

        v61 = strlen(v8);
        if ((v61 & 0xFFFE) != 0 && *v8 == 32 && v42)
        {
          memmove(v8, v8 + 1, v61);
          v52 = v176[0];
          v53 = *(v176[0] + 8);
          v54 = *(v176[0] + 16);
          if (v54 >= 2)
          {
            v62 = v53[8];
            v63 = v53 + 24;
            v64 = v54 - 1;
            do
            {
              if (*v63 != v62)
              {
                --*v63;
              }

              v63 += 16;
              --v64;
            }

            while (v64);
          }

          --v53[9];
        }

        if (v54 < 2)
        {
          goto LABEL_145;
        }

        v65 = -2;
        v66 = 160;
        v67 = 3;
        v68 = 128;
        v69 = 1;
        v158 = v7;
        v157 = v23;
        v171 = v7;
LABEL_32:
        v70 = &v53[16 * v69];
        if (v70[5] != 7 || v70[10] != 43)
        {
          goto LABEL_86;
        }

        v166 = v67;
        v167 = v68;
        v71 = strlen(v8);
        v76 = v70[8];
        v77 = v53[8];
        v93 = v76 >= v77;
        v78 = v76 - v77;
        if (!v93 || (v79 = v70[9], LOWORD(v80) = v79 - 1, v79 - 1 >= v71))
        {
          v155 = *(v70 + 6);
          if (v155)
          {
            heap_Free(*(*(a1 + 16) + 8), v155);
            *(v70 + 6) = 0;
          }

          log_OutPublic(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 1922, 0, v72, v73, v74, v75, v156);
          return 0;
        }

        v160 = v71;
        v170 = v69;
        v165 = v66;
        v81 = &v8[v78];
        v82 = 0;
        v83 = v70[9];
        if (v70[9])
        {
          do
          {
            if (!utf8_BelongsToSet(0, v81, v82, v79))
            {
              goto LABEL_41;
            }

            ++v82;
          }

          while (v83 != v82);
          v82 = v79;
LABEL_41:
          if (v79 == 1)
          {
LABEL_47:
            LOWORD(v79) = 1;
LABEL_48:
            if (v79 <= v82)
            {
              goto LABEL_81;
            }

            v161 = v65;
            v163 = v53;
            v88 = 0;
            v89 = 95;
            v90 = v82;
            while (1)
            {
              v91 = *(v81 + v90);
              if (v91 <= 0x5B)
              {
                break;
              }

              if (v91 == 95)
              {
                goto LABEL_62;
              }

              v60 = v91 == 92;
              v92 = v90 + 1;
              v93 = !v60 || v92 >= v79;
              if (!v93 && *(v81 + v92) == 84)
              {
                v162 = v88;
                for (i = v90 + 2; i < v79; i += utf8_determineUTF8CharLength(v95))
                {
                  v95 = *(v81 + i);
                  if (v95 == 92)
                  {
                    break;
                  }
                }

                if (*(v81 + i) == 92)
                {
                  v90 = i;
                }

                v88 = v162;
              }

LABEL_70:
              if (!utf8_BelongsToSet(0, v81, v90, v83))
              {
                v89 = *(v81 + v90);
              }

              if (++v90 >= v79)
              {
LABEL_73:
                v96 = v89;
                if (v89 == 35)
                {
                  v53 = v163;
                  v65 = v161;
                }

                else
                {
                  v53 = v163;
                  v65 = v161;
                  if (v96 != 95)
                  {
                    LOWORD(v88) = v88 + 1;
                  }
                }

                v97 = v88;
                if (v88)
                {
                  v70[5] = 34;
                  v98 = v175;
                  v99 = *(v175 + 16);
                  v100 = v79 - v82 + v99 + 1;
                  if (*(v175 + 18) < v100)
                  {
                    result = datac_RequestBlock(*(a1 + 24), 1012, (v79 - v82 + v99 + 1), &v175);
                    v101 = v171;
                    if ((result & 0x80000000) == 0)
                    {
                      v98 = v175;
                      v102 = *(v176[0] + 8);
                      v99 = *(v175 + 16);
                      goto LABEL_89;
                    }

                    return result;
                  }

                  v102 = v163;
                  v101 = v171;
LABEL_89:
                  v105 = &v102[16 * v170];
                  v164 = v102;
                  v106 = v105[8] - v102[8];
                  strncpy((*(v98 + 8) + *(v98 + 2) * v99), &v8[v106 + v82], (v79 - v82))[v79 - v82] = 0;
                  v105[10] = *(v175 + 16);
                  *(v175 + 16) = v100;
                  v107 = *(v105 + 18);
                  v168 = v101 * v97;
                  v108 = v101 * v97 - v107;
                  if (v101 * v97 > v107)
                  {
                    v109 = strlen(v8);
                    v110 = heap_Realloc(*(*(a1 + 16) + 8), v8, (v108 + v109 + 1));
                    if (!v110)
                    {
                      return 2370838538;
                    }

                    v8 = v110;
                    *v159 = v110;
                  }

                  if (v106 >= v164[9])
                  {
                    v111 = 0;
                  }

                  else
                  {
                    v111 = *(v105 + 18);
                    memmove(&v8[v106], &v8[(v111 + v106)], v160 - (v111 + v106) + 1);
                  }

                  v112 = 0;
                  v113 = v106 + v101;
                  do
                  {
                    v114 = strlen(v8);
                    memmove(&v8[v113], &v8[v106], (v114 - v106));
                    v8[v114 + v171] = 0;
                    memmove(&v8[v106], (a1 + 180), v158);
                    ++v112;
                  }

                  while (v97 > v112);
                  v115 = *(v176[0] + 16);
                  if (v170 + 1 < v115)
                  {
                    v116 = (v164 + v165);
                    v117 = v166;
                    do
                    {
                      if (*v116 > v105[8])
                      {
                        *v116 += v168 - v111;
                      }

                      v116 += 16;
                      v60 = v115 == v117++;
                    }

                    while (!v60);
                  }

                  v118 = 0;
                  v105[9] = 0;
                  v119 = v161;
                  v120 = v167;
                  do
                  {
                    result = datac_RequestBlock(*(a1 + 24), 1021, (v115 + 1), v176);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    v169 = result;
                    v121 = *(v176[0] + 8);
                    memmove(v121 + v120 + 64, v121 + v120, (v119 + *(v176[0] + 16)) << 6);
                    v115 = *(v176[0] + 8) + v120;
                    *v115 = 1;
                    *(v115 + 20) = 1;
                    v122 = &v121[16 * v170];
                    *(v115 + 24) = *(v122 + 3);
                    *(v115 + 32) = v118 + v122[8];
                    *(v115 + 36) = v171;
                    *(v115 + 16) = 0;
                    *(v115 + 8) = 0;
                    *(v115 + 40) = 0;
                    *(v115 + 48) = 0;
                    v52 = v176[0];
                    v123 = *(v176[0] + 16);
                    LOWORD(v115) = v123 + 1;
                    *(v176[0] + 16) = v123 + 1;
                    v120 += 64;
                    v118 += v171;
                    --v119;
                    --v97;
                  }

                  while (v97);
                  v124 = v121;
                  v125 = v122[8] + v168;
                  v126 = (v123 + 1);
                  if (((v123 + 1) & 0xFFFE) != 0)
                  {
                    v127 = (v123 + 1);
                  }

                  else
                  {
                    v127 = 1;
                  }

                  v65 = v161;
                  v69 = v170;
                  if (v126 < 2)
                  {
LABEL_114:
                    if (v126 < 2)
                    {
                      LOWORD(v131) = 1;
                      v132 = v157;
                    }

                    else
                    {
                      v130 = v124 + 26;
                      v131 = 1;
                      v132 = v157;
                      while (1)
                      {
                        v133 = *(v130 - 5);
                        if (v133 == 21)
                        {
                          v132 = *v130;
                        }

                        v134 = *(v130 - 2) - v124[8];
                        if (v125 <= v134 && (v133 == 7 || v125 != v134))
                        {
                          break;
                        }

                        ++v131;
                        v130 += 16;
                        if ((v123 + 1) == v131)
                        {
                          goto LABEL_129;
                        }
                      }
                    }

                    if (v131 == v115)
                    {
LABEL_129:
                      result = datac_RequestBlock(*(a1 + 24), 1021, (v123 + 2), v176);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v169 = result;
                      v136 = *(v176[0] + 8);
                      v137 = *(v176[0] + 16);
                      v138 = &v136[16 * v137];
                      *v138 = 1;
                      v138[5] = 21;
                      v139 = v136;
                      if (v123)
                      {
                        LastPosRef = wordpar_loc_asian_getLastPosRef(v136, v137, v125 - v136[8], v123, 0);
                      }

                      else
                      {
                        LastPosRef = v136[7] + v136[6];
                      }

                      v66 = v165;
                      v67 = v166;
                      v68 = v167;
                      v138[6] = LastPosRef;
                      v138[7] = 0;
                      v138[8] = v125;
                      v138[9] = 0;
                      *(v138 + 8) = 0;
                      *(v138 + 1) = 0;
                      v138[10] = v132;
                      *(v138 + 6) = 0;
                      v52 = v176[0];
                      ++*(v176[0] + 16);
                      v53 = v139;
                    }

                    else
                    {
                      v141 = v131;
                      v142 = v124[8];
                      if (v131 < v115)
                      {
                        v143 = &v124[16 * v131 + 5];
                        v144 = v131 + 1;
                        while (v125 == v143[3] - v142)
                        {
                          v146 = *v143;
                          v143 += 16;
                          v145 = v146;
                          if (v144 < (v123 + 1))
                          {
                            ++v144;
                            if (v145 != 21)
                            {
                              continue;
                            }
                          }

                          if (v145 != 21)
                          {
                            break;
                          }

                          v53 = v124;
                          goto LABEL_140;
                        }
                      }

                      v147 = wordpar_loc_asian_getLastPosRef(v124, (v123 + 1), v125 - v142, v141, 0);
                      result = datac_RequestBlock(*(a1 + 24), 1021, (v123 + 2), v176);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v169 = result;
                      v148 = *(v176[0] + 8);
                      memmove(&v148[16 * v141 + 16], &v148[16 * v141], (*(v176[0] + 16) - v141) << 6);
                      v149 = *(v176[0] + 8) + (v141 << 6);
                      *v149 = 1;
                      *(v149 + 20) = 21;
                      *(v149 + 24) = v147;
                      *(v149 + 28) = 0;
                      *(v149 + 32) = v125;
                      v53 = v148;
                      *(v149 + 16) = 0;
                      *(v149 + 8) = 0;
                      *(v149 + 36) = 0;
                      *(v149 + 40) = v132;
                      *(v149 + 48) = 0;
                      v52 = v176[0];
                      ++*(v176[0] + 16);
LABEL_140:
                      v66 = v165;
                      v67 = v166;
                      v68 = v167;
                    }

                    v69 = v170;
                    goto LABEL_86;
                  }

                  v128 = v124 + 21;
                  v129 = v127 - 1;
                  while (v125 != v128[3] || *v128 != 21)
                  {
                    v128 += 16;
                    if (!--v129)
                    {
                      goto LABEL_114;
                    }
                  }

                  v53 = v124;
                  v66 = v165;
                  v67 = v166;
                  v68 = v167;
LABEL_86:
                  ++v69;
                  v66 += 64;
                  ++v67;
                  v68 += 64;
                  --v65;
                  if (v69 >= *(v52 + 16))
                  {
LABEL_145:
                    v53[9] = strlen(v8);
                    if (*(a1 + 188) || (paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &v172) & 0x80000000) == 0 && (!LH_stricmp(v172, "MNC") || !LH_stricmp(v172, "MNT") || !LH_stricmp(v172, "SIC")))
                    {
                      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "in wordpar_loc_asian_TranslateMarkup() before remove conflict internal LANG marker", 0, 0, 0);
                      v150 = v176[0];
                      LODWORD(v151) = *(v176[0] + 16);
                      if (v151 >= 2)
                      {
                        v152 = v53 + 16;
                        v153 = -1;
                        v154 = 1;
                        do
                        {
                          if (*(v152 - 11) == 36 && v152[5] == 36 && *(v152 - 8) == v152[8] && !*v152)
                          {
                            memmove(v152 - 16, v152, (v153 + v151) << 6);
                            v150 = v176[0];
                            --*(v176[0] + 16);
                          }

                          ++v154;
                          v151 = *(v150 + 16);
                          v152 += 16;
                          --v153;
                        }

                        while (v154 < v151);
                      }

                      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "in wordpar_loc_asian_TranslateMarkup() after remove conflict internal LANG marker", 0, 0, 0);
                    }

                    return v169;
                  }

                  goto LABEL_32;
                }

LABEL_81:
                log_OutPublic(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 1818, 0, v84, v85, v86, v87, v156);
                v103 = *(v70 + 6);
                if (v103)
                {
                  heap_Free(*(*(a1 + 16) + 8), v103);
                  *(v70 + 6) = 0;
                }

                v69 = v170;
                v52 = v176[0];
                v104 = *(v176[0] + 16);
                v66 = v165;
                if (v170 + 1 != v104)
                {
                  memmove(v70, &v53[16 * v170 + 16], (v104 - v170) << 6);
                  v52 = v176[0];
                  LOWORD(v104) = *(v176[0] + 16);
                }

                v67 = v166;
                v68 = v167;
                *(v52 + 16) = v104 - 1;
                goto LABEL_86;
              }
            }

            if (v91 != 35)
            {
              if (v91 == 18)
              {
                goto LABEL_73;
              }

              goto LABEL_70;
            }

LABEL_62:
            if (v89 != 35 && v89 != 95)
            {
              ++v88;
            }

            goto LABEL_70;
          }
        }

        else
        {
          LOWORD(v80) = -1;
        }

        v80 = v80;
        while (utf8_BelongsToSet(0, v81, v80, v83))
        {
          LOWORD(v79) = v79 - 1;
          if (!--v80)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_48;
      }
    }
  }

  return result;
}

uint64_t wordpar_loc_asian_PostProcessMarkers(uint64_t a1, int a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  result = marker_getMarkerArgStr(1u);
  v73 = 0;
  v11 = *a4;
  if (v11 >= 2)
  {
    v12 = result;
    v13 = 1;
    do
    {
      v14 = v13 + 1;
      if (v14 < v11)
      {
        v15 = (a3 + (v13 << 6));
        v16 = (a3 + (v14 << 6));
        if (*(v15 + 8) == *(v16 + 8))
        {
          v17 = *(v15 + 5);
          if (v17 != 36 && v17 != 0x4000 && *(v16 + 5) == 36)
          {
            v19 = v16[1];
            v74 = *v16;
            v18 = v74;
            v75 = v19;
            v21 = v16[3];
            v76 = v16[2];
            v20 = v76;
            v77 = v21;
            v22 = v15[1];
            *v16 = *v15;
            v16[1] = v22;
            v23 = v15[3];
            v16[2] = v15[2];
            v16[3] = v23;
            *v15 = v18;
            v15[1] = v19;
            v15[2] = v20;
            v15[3] = v21;
            LODWORD(v14) = 1;
            v11 = *a4;
          }
        }
      }

      v13 = v14;
    }

    while (v14 < v11);
    if (v11 >= 2)
    {
      v24 = (a3 + 84);
      for (i = 1; i < v11; ++i)
      {
        v26 = *v24;
        if (*v24 == 41)
        {
          MarkerArgStr = marker_getMarkerArgStr(1u);
          result = strcmp(v12, MarkerArgStr);
          if (!result)
          {
            v29 = v24[3];
            v30 = *(a3 + 32);
            if (v29 != v30 && *(a5 + (v29 + ~v30)) == 32)
            {
              v24[3] = v29 + 1;
            }
          }

          *v24 = 1;
          v11 = *a4;
        }

        else if (v26 == 39)
        {
          v27 = v24[3];
          if (v27 != *(a3 + 32))
          {
            v24[3] = v27 + 1;
          }

          *v24 = 37;
        }

        else if (v26 == 36)
        {
          v12 = *(v24 + 5);
        }

        v24 += 16;
      }

      if (v11 >= 2)
      {
        v31 = 1;
        do
        {
          v32 = v31 + 1;
          if (v32 >= v11 || (v33 = (a3 + (v32 << 6)), v34 = (a3 + (v31 << 6)), *(v33 + 8) >= *(v34 + 8)))
          {
            ++v31;
          }

          else
          {
            v31 = 0;
            v35 = *v33;
            v36 = v33[1];
            v37 = v33[2];
            v38 = v33[3];
            v39 = v34[1];
            *v33 = *v34;
            v33[1] = v39;
            v40 = v34[3];
            v33[2] = v34[2];
            v33[3] = v40;
            v74 = v35;
            v75 = v36;
            v76 = v37;
            v77 = v38;
            *v34 = v35;
            v34[1] = v36;
            v34[2] = v37;
            v34[3] = v38;
            v11 = *a4;
          }
        }

        while (v31 < v11);
        if (v11 >= 2)
        {
          v41 = 1;
          do
          {
            v42 = v41 + 1;
            if (v42 < v11)
            {
              v43 = (a3 + (v41 << 6));
              v44 = (a3 + (v42 << 6));
              if (*(v43 + 8) == *(v44 + 8))
              {
                v45 = *(v43 + 5);
                if (v45 != 36 && v45 != 0x4000 && *(v44 + 5) == 36)
                {
                  v47 = v44[1];
                  v74 = *v44;
                  v46 = v74;
                  v75 = v47;
                  v49 = v44[3];
                  v76 = v44[2];
                  v48 = v76;
                  v77 = v49;
                  v50 = v43[1];
                  *v44 = *v43;
                  v44[1] = v50;
                  v51 = v43[3];
                  v44[2] = v43[2];
                  v44[3] = v51;
                  *v43 = v46;
                  v43[1] = v47;
                  v43[2] = v48;
                  v43[3] = v49;
                  LODWORD(v42) = 1;
                  v11 = *a4;
                }
              }
            }

            v41 = v42;
          }

          while (v42 < v11);
        }
      }
    }
  }

  if (!a2 && ((result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v73), (result & 0x80000000) != 0) || (result = LH_stricmp(v73, "MNC"), result) && (result = LH_stricmp(v73, "MNT"), result) && (result = LH_stricmp(v73, "SIC"), result)))
  {
    if (*a4 < 2u)
    {
      v52 = 1;
    }

    else
    {
      v67 = (a3 + 104);
      v68 = 1;
      do
      {
        if (*(v67 - 5) == 36)
        {
          v69 = *v67;
          v70 = marker_getMarkerArgStr(9u);
          result = strcmp(v69, v70);
          if (!result || (v71 = *v67, v72 = marker_getMarkerArgStr(0xAu), result = strcmp(v71, v72), !result))
          {
            *(v67 - 5) = 999;
          }
        }

        ++v68;
        v67 += 8;
      }

      while (v68 < *a4);
      v52 = v68;
    }

    *a4 = v52;
  }

  else
  {
    v52 = *a4;
  }

  if (v52 >= 2)
  {
    v53 = 1;
    v54 = 1;
    while (1)
    {
      v55 = (a3 + (v53 << 6));
      if (*(v55 + 5) != 36)
      {
        goto LABEL_57;
      }

      v56 = v53 - 1;
      if (v53 == 1)
      {
        break;
      }

      while (1)
      {
        v57 = a3 + (v56 << 6);
        if (*(v57 + 20) == 36)
        {
          break;
        }

        if (!--v56)
        {
          goto LABEL_58;
        }
      }

      result = strcmp(*(v55 + 5), *(v57 + 40));
      if (!result)
      {
        break;
      }

      v58 = *(v57 + 32);
      if (*(v55 + 8) != v58)
      {
        break;
      }

      if (*v57 && (*v57 != 1 || v58 != *(a3 + 32)))
      {
        v64 = *v55;
        v65 = v55[1];
        v66 = v55[3];
        *(v57 + 32) = v55[2];
        *(v57 + 48) = v66;
        *v57 = v64;
        *(v57 + 16) = v65;
        goto LABEL_60;
      }

      if (!*v55)
      {
        *(v57 + 20) = 999;
LABEL_57:
        v59 = v54;
LABEL_59:
        v60 = (a3 + (v59 << 6));
        v61 = *v55;
        v62 = v55[1];
        v63 = v55[3];
        v60[2] = v55[2];
        v60[3] = v63;
        *v60 = v61;
        v60[1] = v62;
        ++v54;
      }

LABEL_60:
      if (++v53 >= *a4)
      {
        goto LABEL_64;
      }
    }

LABEL_58:
    v59 = v54;
    goto LABEL_59;
  }

  v54 = 1;
LABEL_64:
  *a4 = v54;
  return result;
}

_DWORD *wordpar_loc_asian_deleteMarkerForUnknown(_DWORD *result, unsigned __int16 *a2)
{
  if (*a2)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = &v3[16 * v4];
      v6 = v5[1];
      v18 = *v5;
      v19 = v6;
      v7 = v5[3];
      v20 = v5[2];
      v21 = v7;
      result = wordpar_loc_asian_isMarkerUnknown(&v18);
      v8 = *a2;
      if (result)
      {
        if (!*a2)
        {
          return result;
        }

        v9 = 0;
        do
        {
          v10 = &v3[16 * v9];
          if (v10[5] == 36 && (v11 = *(v10 + 5), MarkerArgStr = marker_getMarkerArgStr(9u), result = strcmp(v11, MarkerArgStr), result) && *v10 == 1 && (result = &v3[16 * v4], result[8] == v10[8]))
          {
            result = memmove(result, result + 16, (*a2 - v4) << 6);
            v8 = *a2 - 1;
            *a2 = v8;
            v4 -= v9 <= v4;
          }

          else
          {
            ++v9;
            v8 = *a2;
          }
        }

        while (v9 < v8);
      }

      ++v4;
    }

    while (v4 < v8);
    if (v8)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = &v3[16 * v13];
        if (v15[5] != 36)
        {
          goto LABEL_24;
        }

        v16 = *(v15 + 1);
        v18 = *v15;
        v19 = v16;
        v17 = *(v15 + 3);
        v20 = *(v15 + 2);
        v21 = v17;
        result = wordpar_loc_asian_isMarkerUnknown(&v18);
        if (result)
        {
          ++v13;
        }

        else
        {
          if (!*v15)
          {
            v14 = 0;
LABEL_24:
            ++v13;
            continue;
          }

          if (!v14)
          {
            goto LABEL_24;
          }

          result = memmove(&v3[16 * v13], v15 + 16, (*a2 - v13) << 6);
          --*a2;
        }

        v14 = 1;
      }

      while (v13 < *a2);
    }
  }

  return result;
}

char *wordpar_loc_asian_deleteConflictingLangMarker(char *result, _WORD *a2, const char *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v6 = result;
    v7 = 0;
    v8 = result + 20;
    do
    {
      if (*v8 == 36)
      {
        v9 = *(v8 + 20);
        MarkerArgStr = marker_getMarkerArgStr(0xBu);
        result = strcmp(v9, MarkerArgStr);
        if (!result)
        {
          v26 = *(v8 - 5);
          v11 = 1;
          if (!*a2)
          {
            return result;
          }

          goto LABEL_10;
        }

        v3 = *a2;
      }

      ++v7;
      v8 += 64;
    }

    while (v7 < v3);
    v11 = 0;
    v7 = 0;
    v26 = 0;
    if (!v3)
    {
      return result;
    }

LABEL_10:
    v12 = 0;
    v13 = 0;
    v14 = &v6[64 * v7];
    do
    {
      v15 = &v6[64 * v12];
      if (*(v15 + 5) == 36)
      {
        v16 = *(v15 + 5);
        v17 = marker_getMarkerArgStr(1u);
        result = strcmp(v16, v17);
        if (result)
        {
          result = strcmp(v16, a3);
          if (result)
          {
            v18 = marker_getMarkerArgStr(2u);
            result = strcmp(v16, v18);
            if (result)
            {
              goto LABEL_29;
            }
          }
        }

        if (*v15)
        {
          if (v13)
          {
            if (!v11)
            {
              goto LABEL_29;
            }

            if (*(v14 + 5) == 36 && *(v15 + 5) == 36)
            {
              v19 = *(v14 + 5);
              v20 = *(v15 + 5);
              v21 = marker_getMarkerArgStr(0xBu);
              if (!strcmp(v19, v21))
              {
                v23 = marker_getMarkerArgStr(2u);
                v22 = strcmp(v20, v23) != 0;
              }

              else
              {
                v22 = 1;
              }

              v24 = marker_getMarkerArgStr(0xBu);
              result = strcmp(v19, v24);
              if (result)
              {
                if (v22)
                {
                  goto LABEL_27;
                }

LABEL_29:
                ++v12;
LABEL_30:
                v13 = 1;
                continue;
              }

              v25 = marker_getMarkerArgStr(1u);
              result = strcmp(v20, v25);
              if ((result | v26) == 0 || !v22)
              {
                goto LABEL_29;
              }
            }

LABEL_27:
            result = memmove(&v6[64 * v12], v15 + 64, (*a2 - v12) << 6);
            --*a2;
            goto LABEL_30;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      ++v12;
    }

    while (v12 < *a2);
  }

  return result;
}

uint64_t wordpar_loc_asian_RemoveBlankLatinRegions(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  if (*a2 < 2u)
  {
    goto LABEL_58;
  }

  v5 = result;
  v6 = 1;
  do
  {
    v7 = v5 + (v6 << 6);
    if (*(v7 + 20) != 36)
    {
      goto LABEL_43;
    }

    v8 = *(v7 + 40);
    if (!v8)
    {
      goto LABEL_43;
    }

    MarkerArgStr = marker_getMarkerArgStr(2u);
    result = strcmp(v8, MarkerArgStr);
    if (result)
    {
      goto LABEL_43;
    }

    if (*v3 <= (v6 + 1))
    {
LABEL_30:
      v24 = (v5 + (v6 << 6));
      v25 = *(v5 + 32);
      v26 = (v24[8] - v25);
      v27 = (*(v24 + 16) - v25);
      if (v27 >= *(v5 + 36))
      {
        goto LABEL_37;
      }

      do
      {
        v28 = *(a3 + v27);
        v29 = (v28 < 0x21) & (0x100002600uLL >> v28);
        result = utf8_determineUTF8CharLength(v28);
        v27 = (result + v27);
      }

      while (v29 == 1 && v27 < *(v5 + 36));
      if (v29)
      {
LABEL_37:
        if (*v24 == 1)
        {
          v31 = v6 + 1;
          v3 = a2;
          v32 = *a2;
          if (v31 < v32)
          {
            result = memmove((v5 + (v6 << 6)), (v5 + (v31 << 6)), (v32 + ~v6) << 6);
            LOWORD(v32) = *a2;
          }

          v33 = v32 - 1;
          *a2 = v33;
          goto LABEL_44;
        }

        v24[5] = 999;
      }

      v3 = a2;
      goto LABEL_43;
    }

    v10 = (v6 + 1);
    v11 = 1;
    do
    {
      v12 = v5 + (v10 << 6);
      if (*(v12 + 20) == 36)
      {
        v13 = *(v12 + 40);
        if (v13)
        {
          v14 = marker_getMarkerArgStr(2u);
          result = strcmp(v13, v14);
          v11 = result == 0;
          v15 = 1;
          if (!result)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
        if (v11)
        {
          goto LABEL_27;
        }
      }

      v16 = (v5 + (v6 << 6));
      v17 = *(v5 + 32);
      v18 = (v16[8] - v17);
      if (v18 < *(v12 + 32) - v17)
      {
        do
        {
          v19 = *(a3 + v18);
          v20 = (v19 < 0x21) & (0x100002600uLL >> v19);
          result = utf8_determineUTF8CharLength(v19);
          v18 = (result + v18);
        }

        while (v20 == 1 && v18 < *(v12 + 32) - *(v5 + 32));
        if (!v20)
        {
          v11 = 0;
          goto LABEL_26;
        }
      }

      v22 = *(v12 + 28) + v16[7];
      *(v12 + 24) = v16[6];
      *(v12 + 28) = v22;
      v23 = *(v12 + 36) + v16[9];
      *(v12 + 32) = v16[8];
      *(v12 + 36) = v23;
      if (*v16 != 1)
      {
        v11 = 0;
        v16[5] = 999;
        v6 = v10;
LABEL_26:
        v3 = a2;
        goto LABEL_27;
      }

      v3 = a2;
      result = memmove((v5 + (v6 << 6)), v16 + 16, (*a2 + ~v6) << 6);
      v11 = 0;
      --*a2;
      v6 = v10;
LABEL_27:
      if (v15)
      {
        break;
      }

      ++v10;
    }

    while (v10 < *v3);
    if (!v15)
    {
      goto LABEL_30;
    }

LABEL_43:
    v33 = *v3;
LABEL_44:
    ++v6;
  }

  while (v6 < v33);
  if (v33 >= 2u)
  {
    v34 = 1;
    v35 = 1;
    while (1)
    {
      v36 = v5 + (v34 << 6);
      if (*(v36 + 20) == 36)
      {
        v37 = v34 - 1;
        if (v34 != 1)
        {
          while (1)
          {
            v38 = v5 + (v37 << 6);
            if (*(v38 + 20) == 36)
            {
              break;
            }

            if (!--v37)
            {
              goto LABEL_53;
            }
          }

          result = strcmp(*(v36 + 40), *(v38 + 40));
          if (!result)
          {
            if (*v36)
            {
              goto LABEL_54;
            }

            *(v36 + 20) = 999;
          }
        }
      }

LABEL_53:
      v39 = (v5 + (v35 << 6));
      v40 = *v36;
      v41 = *(v36 + 16);
      v42 = *(v36 + 48);
      v39[2] = *(v36 + 32);
      v39[3] = v42;
      *v39 = v40;
      v39[1] = v41;
      ++v35;
LABEL_54:
      if (++v34 >= *v3)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_58:
  v35 = 1;
LABEL_59:
  *v3 = v35;
  return result;
}

uint64_t wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers(uint64_t a1, _DWORD *a2, unsigned int a3, const char **a4)
{
  v4 = *a4;
  if (a3 < 2)
  {
LABEL_26:
    result = 0;
    *a4 = v4;
    return result;
  }

  v6 = a3;
  v7 = strlen(*a4);
  v8 = a2 + 40;
  v9 = 1;
  while (1)
  {
    v10 = a2[16 * v9 + 5];
    v11 = v9 + 1;
    v12 = v10 != 34 || v11 >= v6;
    v30 = v11;
    v31 = v8;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v9 = v30;
    v8 = v31 + 16;
    if (v30 == v6)
    {
      goto LABEL_26;
    }
  }

  v13 = v11;
  while (1)
  {
    v14 = &a2[16 * v13];
    v15 = v14[5];
    if (v15 == 21)
    {
      break;
    }

LABEL_23:
    if (++v13 < v6)
    {
      v8 += 16;
      if (v15 != 21)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

  v16 = (v14[8] - a2[8]);
  v17 = v7 - v16;
  if (v7 <= v16)
  {
    goto LABEL_8;
  }

  v18 = v4[v16];
  v19 = v18 > 0x20;
  v20 = (1 << v18) & 0x100002600;
  if (!v19 && v20 != 0)
  {
    goto LABEL_8;
  }

  v22 = v7;
  v23 = heap_Realloc(*(a1 + 8), v4, v7 + 2);
  if (v23)
  {
    v4 = v23;
    v24 = v23;
    v25 = (v23 + v16);
    memmove(v25 + 1, v25, v17);
    *v25 = 32;
    v7 = v22 + 1;
    *(v24 + (v22 + 1)) = 0;
    v26 = v8;
    v27 = v13;
    do
    {
      if (v14[8] < *v26)
      {
        ++*v26;
      }

      ++v27;
      v26 += 16;
    }

    while (v27 < v6);
    ++a2[9];
    v15 = 21;
    goto LABEL_23;
  }

  return 2370838538;
}

uint64_t wordpar_loc_asian_InsertSpaceBeforeTNMarkers(uint64_t a1, uint64_t a2, const char **a3)
{
  v3 = a3;
  v6 = *a3;
  v7 = strlen(*a3);
  v88 = 0;
  v84 = a2;
  v8 = datac_RequestBlock(a2, 1021, 1u, &v88);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  result = 2370838528;
  v10 = *(v88 + 16);
  if (*(v88 + 16))
  {
    v11 = v7;
    v12 = *(v88 + 8);
    if (v12[5] == 0x4000)
    {
      if (v10 != 1)
      {
        v86 = 0;
        v87 = 0;
        v13 = -1;
        v14 = 1;
        v85 = 24;
        do
        {
          v15 = &v12[16 * v14];
          v16 = v15[8];
          v17 = v12[8];
          v18 = v15[5];
          if (v18 == 7)
          {
            v20 = (v16 - v17);
            v19 = v15[10] == 16;
          }

          else
          {
            v19 = v18 == 21;
            v20 = (v16 - v17);
          }

          v21 = !v19 || v20 == 0;
          if (!v21 && v6[v20 - 1] != 32 && v6[v20] != 32)
          {
            v22 = v86;
            do
            {
              if (!v22)
              {
                break;
              }

              v23 = *(v12 + v22 + 20);
              if (v23 == 34)
              {
                goto LABEL_18;
              }

              v22 -= 64;
            }

            while (v23 != 21);
            __s1 = v11;
            v80 = v20;
            v83 = v20;
            v71 = a1;
            v72 = v13;
            v24 = *(a1 + 8);
            v25 = v11;
            v26 = heap_Realloc(v24, v6, v11 + 2);
            if (v26)
            {
              v27 = v26;
            }

            else
            {
              v27 = v6;
            }

            v73 = v27;
            if (!v26)
            {
              return 2370838538;
            }

            v28 = v26;
            v70 = v3;
            memmove((v26 + v83 + 1), &v80[v26], (v25 - v83));
            LODWORD(v29) = 0;
            v80[v28] = 32;
            v69 = __s1 + 1;
            *(v28 + (__s1 + 1)) = 0;
            if ((__s1 + 1) > (v83 + 1))
            {
              v29 = 0;
              do
              {
                if (v73[(v83 + 1) + v29] == 32)
                {
                  break;
                }

                ++v29;
              }

              while ((__s1 + v17 - v16) != v29);
            }

            v30 = v83;
            if (v14 < v10)
            {
              v31 = &v12[v85];
              v32 = v72 + v10;
              do
              {
                if (*v31 >= v15[8])
                {
                  ++*v31;
                }

                v31 += 16;
                --v32;
              }

              while (v32);
            }

            ++v12[9];
            v33 = 1;
            v34 = v10;
            do
            {
              if (v33 >= v34)
              {
                break;
              }

              v35 = v33;
              v36 = &v12[16 * v33];
              v37 = v36[5];
              while (v37 == 1)
              {
                v38 = v12[8] + v30;
                v39 = v36[8];
                if (v38 <= v39)
                {
                  break;
                }

                v40 = v36[9] + v39;
                v41 = v40 - v38;
                if (v40 <= v38)
                {
                  break;
                }

                v42 = v33;
                if (v33 >= v34)
                {
                  goto LABEL_48;
                }

                v43 = &v12[16 * v33 + 5];
                v44 = v33;
                v45 = v43;
                while (1)
                {
                  v46 = *v45;
                  v45 += 16;
                  if (v46 == 21 && *(v43 + 12) > v39)
                  {
                    break;
                  }

                  ++v44;
                  v43 = v45;
                  if (v34 == v44)
                  {
                    goto LABEL_48;
                  }
                }

                if (!v44)
                {
                  goto LABEL_48;
                }

                v62 = &v12[16 * v44];
                __s1a = *(v62 + 5);
                v81 = (v62 + 10);
                MarkerArgStr = marker_getMarkerArgStr(3u);
                if (!strcmp(__s1a, MarkerArgStr))
                {
                  goto LABEL_69;
                }

                __s1b = *v81;
                v64 = marker_getMarkerArgStr(4u);
                if (!strncmp(__s1b, v64, 6uLL))
                {
                  goto LABEL_69;
                }

                __s1c = *v81;
                v65 = marker_getMarkerArgStr(6u);
                if (!strcmp(__s1c, v65) || (__s1d = *v81, v66 = marker_getMarkerArgStr(7u), !strcmp(__s1d, v66)) || (__s1e = *v81, v67 = marker_getMarkerArgStr(8u), !strcmp(__s1e, v67)) || (v82 = *v81, v68 = marker_getMarkerArgStr(5u), !strcmp(v82, v68)))
                {
LABEL_69:
                  v30 = v83;
                  v36[9] = v12[8] + v83 - v36[8];
                }

                else
                {
LABEL_48:
                  if (v14 > v33)
                  {
                    v47 = v33 + (v87 - v33) + 1;
                    v48 = &v12[16 * v33 + 8];
                    while (1)
                    {
                      v49 = *v48;
                      v48 += 16;
                      if (v49 >= v12[16 * v14 + 8])
                      {
                        break;
                      }

                      if (v14 == ++v42)
                      {
                        LOWORD(v42) = v14;
                        goto LABEL_54;
                      }
                    }

                    v47 = v42;
LABEL_54:
                    v33 = v42;
                    v42 = v47;
                  }

                  v8 = datac_RequestBlock(v84, 1021, (*(v88 + 16) + 1), &v88);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  v12 = *(v88 + 8);
                  v50 = &v12[16 * v42];
                  memmove(v50 + 4, v50, (v34 - v42) << 6);
                  v51 = &v12[16 * v35];
                  v52 = *v51;
                  v53 = *(v51 + 1);
                  v54 = *(v51 + 3);
                  v50[2] = *(v51 + 2);
                  v50[3] = v54;
                  *v50 = v52;
                  v50[1] = v53;
                  v55 = *(v88 + 16);
                  v34 = (v55 + 1);
                  *(v88 + 16) = v55 + 1;
                  v56 = v51[9];
                  v57 = v56 >= v41;
                  v58 = v56 - v41;
                  if (!v57)
                  {
                    v58 = 0;
                  }

                  v51[9] = v58;
                  v60 = v51[6];
                  v59 = v51[7];
                  v57 = v59 >= v41;
                  v61 = v59 - v41;
                  if (!v57)
                  {
                    v61 = 0;
                  }

                  v51[7] = v61;
                  *(v50 + 8) = v12[16 * v14 + 24];
                  *(v50 + 9) = v29;
                  *(v50 + 6) = v60 + v61;
                  *(v50 + 7) = v41;
                  v42 = v33;
                  v30 = v83;
                }

                v36 = &v12[16 * v42];
                v37 = v36[5];
                v35 = v42;
              }

              ++v33;
            }

            while (v12[16 * v33 + 8] <= v12[8] + v30);
            v3 = v70;
            v11 = v69;
            v10 = v34;
            v13 = v72;
            v6 = v73;
            a1 = v71;
          }

LABEL_18:
          ++v14;
          ++v87;
          v85 += 16;
          v86 += 64;
          --v13;
        }

        while (v14 < v10);
      }

      *v3 = v6;
      return v8;
    }
  }

  return result;
}

uint64_t wordpar_loc_asian_HandleExtendedToi(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v4 = a4;
  v7 = *a4;
  v39 = 0;
  v8 = *(a3 + 8);
  result = datac_RequestBlock(a2, 1012, 1u, &v39);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a3 + 16);
    if (v10 < 2)
    {
LABEL_20:
      result = 0;
      *v4 = v7;
      return result;
    }

    v11 = 1;
    LOWORD(v12) = 1;
    while (1)
    {
      v13 = v8 + (v12 << 6);
      if (*(v13 + 20) == 34)
      {
        v14 = *(v13 + 48);
        if (v14)
        {
          v15 = *(v13 + 32);
          v16 = *(v8 + 32);
          v17 = (v11 + 1);
          LOWORD(v12) = v11 + 1;
          if (v10 > (v11 + 1))
          {
            v12 = (v11 + 1);
            v18 = (v8 + 20 + (v12 << 6));
            while (1)
            {
              v19 = *v18;
              v18 += 16;
              if (v19 == 21)
              {
                break;
              }

              if (v10 == ++v12)
              {
                goto LABEL_21;
              }
            }
          }

          if (v12 == v10)
          {
LABEL_21:
            heap_Free(*(a1 + 8), v14);
            *(v13 + 48) = 0;
            log_OutPublic(*(a1 + 32), "PP_WORD_PARSER", 1929, 0, v30, v31, v32, v33, v34);
            return 2370838528;
          }

          if (*(v13 + 56))
          {
            heap_Free(*(a1 + 8), v14);
            *(v13 + 48) = 0;
            LOWORD(v10) = *(a3 + 16);
          }

          else
          {
            v37 = v4;
            v38 = a1;
            v20 = v15 - v16;
            v36 = v15 - v16;
            __dst = (v8 + (v12 << 6));
            v21 = __dst[8] - v16;
            v22 = strlen(v7);
            v23 = v20;
            v24 = v21;
            memmove(&v7[v23], &v7[v21], v22 - v21 + 1);
            v25 = strlen(v7);
            *(v8 + 36) = v25;
            v26 = v36 - v21;
            a1 = v38;
            wordpar_loc_adjustMarkerPositions(*(a3 + 16), v8, 1u, v24, v25, v26);
            heap_Free(*(v38 + 8), *(v13 + 48));
            *(v13 + 48) = 0;
            v27 = *(a3 + 16);
            if (v17 != v27)
            {
              memmove(v13, (v8 + (v17 << 6)), (v27 - v11) << 6);
              LOWORD(v27) = *(a3 + 16);
            }

            v28 = v27 - 1;
            *(a3 + 16) = v28;
            v29 = v12 + 1;
            v4 = v37;
            if (v29 != v28)
            {
              memmove(__dst, (v8 + (v29 << 6)), (v28 - v12) << 6);
              v28 = *(a3 + 16);
            }

            LOWORD(v10) = v28 - 1;
            *(a3 + 16) = v10;
          }
        }
      }

      LOWORD(v12) = v12 + 1;
      v11 = v12;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }
    }
  }

  return result;
}

uint64_t wordpar_loc_asian_deleteStrAddMarker(uint64_t a1, char *__s, const char *a3, uint64_t a4, unsigned int a5)
{
  v5 = a4;
  v55 = a4;
  v8 = strlen(__s);
  v54 = v8;
  v9 = strlen(a3);
  v10 = v9;
  v11 = *(v5 + 8);
  if (v8)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v9;
    v51 = v8;
    v49 = v9;
    v50 = v8;
    while (1)
    {
      if (!__s[v12])
      {
        goto LABEL_46;
      }

      if (__s[v12] == *a3)
      {
        v16 = v12;
        if (!v15)
        {
          break;
        }

        v17 = 0;
        LODWORD(v16) = v12;
        do
        {
          v18 = __s[v16];
          v19 = a3[v17];
          v16 = (v16 + 1);
          ++v17;
        }

        while (v18 == v19 && v15 > v17);
        if (v18 == v19)
        {
          break;
        }
      }

      v16 = (v12 + 1);
LABEL_28:
      v12 = v16;
      if (v16 >= v8)
      {
        goto LABEL_46;
      }
    }

    v21 = v11;
    v22 = datac_RequestBlock(a1, 1021, (*(v5 + 16) + 1), &v55);
    v14 = v22;
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    v5 = v55;
    v11 = *(v55 + 8);
    v53 = v13;
    v23 = (v12 - v13 * v10);
    v24 = *(v55 + 16);
    v25 = &v11[16 * v24];
    v26 = v11[8];
    if (v24 != 1 && (*(v25 - 8) - v26) > v23)
    {
      if (v24 < 2)
      {
        LOWORD(v24) = 0;
      }

      else
      {
        v29 = v11[24] - v26;
        if (v23 < (*(v11 + 48) - v26))
        {
          v47 = v22;
          v30 = v11 + 16;
          v31 = 1;
          v46 = 1;
          v32 = 1;
LABEL_34:
          v36 = *(v55 + 8);
          LastPosRef = wordpar_loc_asian_getLastPosRef(v11, v24, v23, v31, 1);
          memmove(v30 + 16, v30, (v24 - v46) << 6);
          v11 = v36;
          v38 = *(v55 + 8) + (v32 << 6);
          *v38 = 1;
          *(v38 + 20) = 36;
          *(v38 + 24) = LastPosRef;
          v39 = v36[8] + v23;
          *(v38 + 28) = 0;
          *(v38 + 32) = v39;
          *(v38 + 16) = 0;
          *(v38 + 8) = 0;
          *(v38 + 36) = 0;
          *(v38 + 40) = a5;
          *(v38 + 48) = 0;
          v5 = v55;
          LOWORD(v24) = *(v55 + 16);
          if (v24)
          {
            if ((v24 + 1) <= 2u)
            {
              v40 = 2;
            }

            else
            {
              v40 = (v24 + 1);
            }

            v41 = v36 + 24;
            v42 = v40 - 1;
            v10 = v49;
            v8 = v50;
            do
            {
              if (*v41 > *(v38 + 32))
              {
                *v41 -= v15;
              }

              v41 += 16;
              --v42;
            }

            while (v42);
          }

          else
          {
            v10 = v49;
            v8 = v50;
          }

          v14 = v47;
          goto LABEL_27;
        }

        v31 = 1;
        while (v24 > ++v31)
        {
          v32 = v31;
          v30 = &v11[16 * v31];
          v35 = v30[8] - v26;
          if (v23 < (*(v30 + 16) - v26))
          {
            v47 = v22;
            v46 = v31;
            goto LABEL_34;
          }
        }
      }
    }

    else
    {
      v25[5] = 36;
      *v25 = 1;
      if (v24 == 1)
      {
        v28 = v11[7] + v11[6];
      }

      else
      {
        v33 = v11;
        v34 = v22;
        v28 = wordpar_loc_asian_getLastPosRef(v11, v24, v23, (v24 - 1), 1);
        v14 = v34;
        v11 = v33;
      }

      v25[6] = v28;
      v25[7] = 0;
      v25[8] = v26 + v23;
      v25[9] = 0;
      *(v25 + 8) = 0;
      *(v25 + 1) = 0;
      v25[10] = a5;
      *(v25 + 6) = 0;
      v5 = v55;
      LOWORD(v24) = *(v55 + 16);
    }

    v10 = v49;
    v8 = v50;
LABEL_27:
    *(v5 + 16) = v24 + 1;
    v11[9] = v51;
    v13 = v53 + 1;
    goto LABEL_28;
  }

  v14 = 0;
LABEL_46:
  v21 = v11;
  v43 = a3;
  v44 = v14;
  wordpar_loc_asian_adjustText(__s, v43, v10, &v54);
  v14 = v44;
  v8 = v54;
LABEL_47:
  v21[9] = v8;
  return v14;
}

_BYTE *wordpar_loc_asian_deleteStr(uint64_t a1, char *__s, char *a3)
{
  v6 = strlen(__s);
  v26 = v6;
  v7 = strlen(a3);
  v8 = *(a1 + 8);
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (!__s[v10])
      {
        break;
      }

      if (__s[v10] == *a3)
      {
        if (!v7)
        {
          v13 = v10;
LABEL_14:
          v17 = *(a1 + 16);
          if (v17 >= 2)
          {
            v18 = v9 - v7 * v11;
            v19 = v8[8];
            v20 = v17 - 1;
            v21 = 1;
            v22 = v8 + 24;
            while (1)
            {
              v23 = (v8[16 * v21 + 8] - v19);
              if (v18 < (LOWORD(v8[16 * v21 + 8]) - v19))
              {
                break;
              }

              ++v21;
              v22 += 16;
              --v20;
              if (v21 >= v17)
              {
                goto LABEL_23;
              }
            }

            if (v21 < v17)
            {
              do
              {
                v24 = *v22 - v7;
                if (v7 > (*v22 - v8[8]))
                {
                  v24 = v8[8];
                }

                *v22 = v24;
                v22 += 16;
                --v20;
              }

              while (v20);
            }
          }

LABEL_23:
          ++v11;
          goto LABEL_24;
        }

        v12 = 0;
        LODWORD(v13) = v10;
        do
        {
          v14 = __s[v13];
          v15 = a3[v12];
          v13 = (v13 + 1);
          ++v12;
        }

        while (v14 == v15 && v7 > v12);
        if (v14 == v15)
        {
          goto LABEL_14;
        }
      }

      v13 = (v10 + 1);
LABEL_24:
      v9 = v13;
      v10 = v13;
    }

    while (v13 < v6);
  }

  result = wordpar_loc_asian_adjustText(__s, a3, v7, &v26);
  v8[9] = v26;
  return result;
}

uint64_t wordpar_loc_asian_replaceStrWithStr(uint64_t a1, char *__s, const char *a3, int a4)
{
  result = strlen(__s);
  v28 = a1;
  v9 = *(a1 + 8);
  v10 = result;
  if (result)
  {
    v27 = a3;
    result = strlen(a3);
    v11 = 0;
    v12 = 0;
    v13 = (result - 1);
    v25 = &__s[(result - 1)];
    v26 = result;
    do
    {
      v14 = &__s[v11];
      if (!*v14 || a4 == 1 && v11)
      {
        break;
      }

      if (*v14 == 16)
      {
        v15 = v13 + strlen(__s);
        memmove(&v25[v11 + 1], &__s[v11 + 1], v10 - v11);
        result = memcpy(&__s[v11], v27, v26);
        __s[v15] = 0;
        v16 = *(v28 + 16);
        if (v16 >= 2)
        {
          v17 = 1;
          while (1)
          {
            v18 = v17;
            v19 = (v9 + 32 + (v17 << 6));
            v20 = *v19;
            v21 = *v19 - *(v9 + 32);
            if (v11 && v11 == (*v19 - *(v9 + 32)))
            {
              do
              {
                if (*(v9 + (v18 << 6) + 20) != 36)
                {
                  break;
                }

                *v19 = v20 + 1;
                v18 = ++v17;
                v19 = (v9 + 32 + (v17 << 6));
                v20 = *v19;
                LOWORD(v21) = *v19 - *(v9 + 32);
              }

              while (v11 == v21);
            }

            if (v11 < v21)
            {
              break;
            }

            if (v16 <= ++v17)
            {
              goto LABEL_19;
            }
          }

          if (v16 > v17)
          {
            v22 = v17;
            v23 = (v9 + 32 + (v17 << 6));
            v24 = v16 - v22;
            do
            {
              *v23 += v13;
              v23 += 16;
              --v24;
            }

            while (v24);
          }
        }

LABEL_19:
        v10 = v15;
        ++v12;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  *(v9 + 36) = v10;
  return result;
}

uint64_t wordpar_loc_asian_getLastPosRef(unsigned int *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  result = a1[6];
  if (a2 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    v8 = 0;
    v9 = a1[8];
    v10 = a2 - 1;
    v11 = (a1 + 24);
    LOWORD(v12) = v9;
    while (a3 > (v12 - v9))
    {
      if (a2 - 1 == v8)
      {
        goto LABEL_12;
      }

      v12 = *v11;
      if (a3 <= (*v11 - v9))
      {
        break;
      }

      ++v8;
      v11 += 16;
      if (v7 == v8)
      {
        v10 = v7;
        goto LABEL_12;
      }
    }

    v10 = v8;
LABEL_12:
    if (v10)
    {
      v13 = &a1[16 * v10];
      if (a5 == 1 && ((v14 = v13[5], v14 != 41) ? (v15 = v14 == 1) : (v15 = 1), v15))
      {
        return v13[6];
      }

      else
      {
        return v13[7] + v13[6];
      }
    }
  }

  return result;
}

_BYTE *wordpar_loc_asian_adjustText(_BYTE *result, unsigned __int8 *a2, unsigned int a3, unsigned __int16 *a4)
{
  v4 = *a4;
  if (*a4)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = a3;
    do
    {
      result = &v8[v10];
      if (!*result)
      {
        return result;
      }

      if (*result == *a2)
      {
        if (!a3)
        {
          v14 = v10;
LABEL_15:
          result = memmove(result, &v8[v9 + a3], (v4 - (v9 + a3) + 1));
          v4 = *a4 - a3;
          *a4 = v4;
          v10 = v14 - a3;
          goto LABEL_16;
        }

        v12 = 1;
        v13 = a2;
        v14 = v10;
        do
        {
          v15 = v8[v14];
          v17 = *v13++;
          v16 = v17;
          ++v14;
        }

        while (v15 == v17 && v12++ < v11);
        if (v15 == v16)
        {
          goto LABEL_15;
        }
      }

      ++v10;
LABEL_16:
      v9 = v10;
    }

    while (v10 < v4);
  }

  return result;
}

BOOL wordpar_loc_asian_isMarkerUnknown(uint64_t a1)
{
  if (*(a1 + 20) != 36)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  MarkerArgStr = marker_getMarkerArgStr(9u);
  return strcmp(v1, MarkerArgStr) == 0;
}

BOOL bed_marker_IsOfType(int *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *a1;
    v4 = *(a2 + 20);
    if (*a1)
    {
      v5 = 0;
      while (v4 != v3)
      {
        v3 = a1[++v5];
        if (!v3)
        {
          return v4 == v3;
        }
      }

      v3 = *(a2 + 20);
    }

    return v4 == v3;
  }

  return v2;
}

BOOL bed_marker_IsToiOfType(int *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a2 + 20) == 7)
    {
      v3 = *a1;
      v4 = *(a2 + 40);
      if (*a1)
      {
        v5 = 0;
        while (v4 != v3)
        {
          v3 = a1[++v5];
          if (!v3)
          {
            return v4 == v3;
          }
        }

        v3 = *(a2 + 40);
      }

      return v4 == v3;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL bed_marker_IsToiNotOfType(int *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a2 + 20) == 7)
    {
      v3 = *a1;
      v4 = *(a2 + 40);
      if (*a1)
      {
        v5 = 0;
        while (v4 != v3)
        {
          v3 = a1[++v5];
          if (!v3)
          {
            return v4 != v3;
          }
        }

        v3 = *(a2 + 40);
      }

      return v4 != v3;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t bed_marker_IsAt(_WORD *a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*a1)
    {
      result = 0;
      --*a1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t bed_marker_MapPosCur(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v13 = 0;
  result = 2370838535;
  if (a1 && a3)
  {
    v12 = 0;
    *a3 = a2;
    LODWORD(result) = bed_GetpElem(a1, 0, &v13);
    if ((result & 0x80000000) != 0)
    {
      if ((result & 0x1FFF) == 0xF)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    else
    {
      result = bed_GetcElem(a1, &v12);
      if ((result & 0x80000000) == 0)
      {
        v7 = v12;
        if (!v12)
        {
          return 0;
        }

        v8 = 0;
        v9 = v13;
        do
        {
          v10 = v9[8];
          if (v10 > a2)
          {
            break;
          }

          if (!*v9)
          {
            v11 = v9[9] + v10;
            if (v11 <= a2 && (!v8 || v8[9] + v8[8] <= v11 && v8[7] + v8[6] <= (v9[7] + v9[6])))
            {
              v8 = v9;
            }
          }

          v9 += 16;
          --v7;
        }

        while (v7);
        if (v8)
        {
          result = 0;
          *a3 += v8[7] + v8[6] - (v8[8] + v8[9]);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t bed_marker_InjectFixedRefMarker(uint64_t a1, void *a2)
{
  result = 2370838535;
  if (a1)
  {
    if (a2)
    {
      result = bed_GoForward(a1, bed_marker_HasGreaterOrEqualPosCur, a2);
      if ((result & 0x80000000) == 0 || (result & 0x1FFF) == 0x14)
      {
        v5 = bed_Insert(a1, a2, 1);
        return v5 & (v5 >> 31);
      }
    }
  }

  return result;
}

BOOL bed_marker_HasGreaterOrEqualPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = v4 > v5;
    if (v4 == v5)
    {
      v6 = *(a1 + 36) > *(a2 + 36);
    }

    return !v6;
  }

  return result;
}

uint64_t freeMERDefs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 88))
  {
    log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] free MER definitions", a6, a7, a8, v13);
    v9 = *(a1 + 96);
    if (v9)
    {
      if (*(a1 + 88))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if (*(v9 + v10 + 16))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v9 + v10 + 16));
            v9 = *(a1 + 96);
            *(v9 + v10 + 16) = 0;
          }

          if (*(v9 + v10 + 32))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v9 + v10 + 32));
            v9 = *(a1 + 96);
            *(v9 + v10 + 32) = 0;
          }

          if (*(v9 + v10 + 48))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v9 + v10 + 48));
            v9 = *(a1 + 96);
            *(v9 + v10 + 48) = 0;
          }

          ++v11;
          v10 += 64;
        }

        while (v11 < *(a1 + 88));
      }

      heap_Free(*(*(a1 + 16) + 8), v9);
      *(a1 + 96) = 0;
    }

    *(a1 + 88) = 0;
  }

  return 0;
}

uint64_t getMERDefs(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 88))
  {
    freeMERDefs(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] get MER definitions", a6, a7, a8, v34);
  v10 = *a4;
  *(a1 + 88) = v10;
  v11 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v10 << 6) | 1);
  *(a1 + 96) = v11;
  if (v11)
  {
    v19 = *(a1 + 88);
    if (*(a1 + 88))
    {
      v20 = v11;
      v21 = 0;
      v22 = 1;
      while (1)
      {
        v23 = 0;
        v24 = (v20 + (v21 << 6));
        *v24 = a4[v22];
        v24[1] = a4[v22 + 1];
        v25 = a4[v22 + 2];
        v22 += 3;
        v24[14] = v25;
        while (1)
        {
          v26 = a4[v22++];
          if (v26)
          {
            v27 = heap_Calloc(*(*(a1 + 16) + 8), 1, (4 * v26) | 1);
            if (!v27)
            {
              goto LABEL_21;
            }

            v28 = 0;
            do
            {
              v29 = a4[v22++];
              *(v27 + v28) = v29;
              v28 += 4;
            }

            while (4 * v26 != v28);
          }

          else
          {
            v27 = 0;
          }

          v20 = *(a1 + 96);
          if (v23)
          {
            break;
          }

          v32 = v20 + (v21 << 6);
          *(v32 + 8) = v26;
          v31 = (v32 + 16);
LABEL_17:
          *v31 = v27;
          ++v23;
        }

        v30 = v20 + (v21 << 6);
        if (v23 == 1)
        {
          break;
        }

        v19 = 0;
        *(v30 + 40) = v26;
        *(v30 + 48) = v27;
        if (++v21 >= *(a1 + 88))
        {
          return v19;
        }
      }

      *(v30 + 24) = v26;
      v31 = (v30 + 32);
      goto LABEL_17;
    }
  }

  else
  {
    *(a1 + 88) = 0;
LABEL_21:
    freeMERDefs(a1, v12, v13, v14, v15, v16, v17, v18);
    return 2370838538;
  }

  return v19;
}

uint64_t freeSYMDefs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 64))
  {
    return 0;
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] free SYM definitions", a6, a7, a8, v17);
  v15 = *(a1 + 72);
  if (v15)
  {
    heap_Free(*(*(a1 + 16) + 8), v15);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  result = *(a1 + 40);
  if (result)
  {
    result = ssftriff_reader_ReleaseChunkData(result, v15, v9, v10, v11, v12, v13, v14);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t getSYMDefs(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a4;
  if (*(a1 + 64))
  {
    return 0;
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] get SYM definitions", a6, a7, a8, v28);
  v12 = a4[1] + 8;
  v13 = v12 + *a4;
  v14 = *(a4 + v13);
  *(a1 + 64) = v14;
  v15 = heap_Calloc(*(*(a1 + 16) + 8), 1, (8 * v14) | 1);
  *(a1 + 72) = v15;
  if (v15)
  {
    v23 = *(a1 + 64);
    if (*(a1 + 64))
    {
      v24 = v13 + 2;
      v25 = (v15 + 4);
      do
      {
        v26 = *(a4 + v24);
        v27 = *(a4 + v24 + 2);
        v24 += 6;
        *(v25 - 1) = v27;
        *v25 = v26;
        v25 += 2;
        --v23;
      }

      while (v23);
    }

    result = ssftriff_reader_DetachChunkData(a2, (a1 + 40), &v29, v18, v19, v20, v21, v22);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 80) = v29 + v12;
    }
  }

  else
  {
    freeSYMDefs(a1, v16, v17, v18, v19, v20, v21, v22);
    return 2370838538;
  }

  return result;
}

uint64_t wparser_ObjOpen2(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v35[8] = *MEMORY[0x1E69E9840];
  v15 = 2370838535;
  v34 = 0;
  v33 = 0;
  if (a5 && (InitRsrcFunction(a1, a2, &v34) & 0x80000000) == 0)
  {
    *a5 = 0;
    v24 = heap_Alloc(*(v34 + 8), 144);
    if (v24)
    {
      v25 = v24;
      *v24 = 0u;
      *(v24 + 16) = 0u;
      *(v24 + 64) = 0u;
      *(v24 + 80) = 0u;
      *(v24 + 112) = 0u;
      *(v24 + 128) = 0u;
      *(v24 + 96) = 0u;
      *(v24 + 32) = 0u;
      *(v24 + 48) = 0u;
      *v24 = a1;
      *(v24 + 8) = a2;
      v26 = v34;
      *(v24 + 16) = v34;
      *(v24 + 80) = 0;
      *(v24 + 88) = 0;
      *(v24 + 64) = 0;
      *(v24 + 72) = 0;
      *(v24 + 40) = 0;
      *(v24 + 48) = a3;
      *(v24 + 56) = a4;
      *(v24 + 32) = a12;
      *(v24 + 96) = 0;
      *(v24 + 104) = a6;
      *(v24 + 112) = a7;
      *(v24 + 120) = a8;
      *(v24 + 128) = 0;
      *(v24 + 138) = 512;
      if ((paramc_ParamGetUInt(*(v26 + 40), "udctmaxlookuplen", &v33) & 0x80000000) == 0)
      {
        *(v25 + 138) = v33;
      }

      *(v25 + 136) = 512;
      if ((paramc_ParamGetUInt(*(v34 + 40), "udctmaxdictretlen", &v33) & 0x80000000) == 0)
      {
        *(v25 + 136) = v33;
      }

      *(v25 + 140) = 1;
      if ((paramc_ParamGetUInt(*(v34 + 40), "numberoutputtranscriptions", &v33) & 0x80000000) != 0)
      {
        v28 = *(v25 + 140);
      }

      else
      {
        v28 = v33;
        *(v25 + 140) = v33;
      }

      HIDWORD(v29) = *(v25 + 136);
      LODWORD(v29) = HIDWORD(v29);
      v30 = utoin_ObjOpen(a1, a2, (v25 + 24), a6, a7, a8, a9, v27, a10, a11, a13, a14, a15, SHIWORD(v29), (v29 >> 16) >> 16, v28);
      if ((v30 & 0x80000000) != 0)
      {
        goto LABEL_15;
      }

      v35[0] = "SYMD";
      v35[1] = getSYMDefs;
      v35[2] = freeSYMDefs;
      v35[3] = v25;
      v35[4] = "MERR";
      v35[5] = getMERDefs;
      v35[6] = freeMERDefs;
      v35[7] = v25;
      v30 = extdata_RegisterData(a12, v35, 2u);
      if ((v30 & 0x80000000) != 0)
      {
LABEL_15:
        v15 = v30;
        wparser_ObjClose2(v25);
      }

      else
      {
        v15 = 0;
        *a5 = v25;
      }
    }

    else
    {
      v15 = 2370838538;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t wparser_ObjClose2(uint64_t a1)
{
  v1 = 2370838535;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      utoin_ObjClose(v3);
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t wparser_ProcessStart(uint64_t a1)
{
  v1 = 2370838535;
  v11 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v11) & 0x80000000) == 0)
  {
    if (*(a1 + 64))
    {
      v7 = paramc_ParamGet(*(*(a1 + 16) + 40), "langcode", (a1 + 128), 0);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      else
      {
        v8 = utoin_ProcessStart(*(a1 + 24));
        return v8 & (v8 >> 31);
      }
    }

    else
    {
      log_OutPublic(*(v11 + 32), &modPP_2, 1810, 0, v3, v4, v5, v6, v10);
    }
  }

  return v1;
}

uint64_t wparser_ProcessEnd(void *a1)
{
  if (!a1)
  {
    return 2370838535;
  }

  if (a1[16])
  {
    paramc_ParamRelease(*(a1[2] + 40));
  }

  v2 = utoin_ProcessEnd(a1[3]);
  return v2 & (v2 >> 31);
}

uint64_t wparser_NormalizeWords(unsigned __int16 *a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  v72 = 0;
  v73 = 0;
  v5 = 2370838535;
  v71 = 0;
  if (!a1 || !a2 || (InitRsrcFunction(*a1, *(a1 + 1), &v72) & 0x80000000) != 0)
  {
    return v5;
  }

  v14 = datac_RequestBlock(a2, 1020, 1u, &v73);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  if (!*(v73 + 16))
  {
    log_OutText(*(*(a1 + 2) + 32), &modPP_2, 5, 0, "[SEQ] wparser : no text to process", v11, v12, v13, v70);
    return v14;
  }

  v15 = bed_ObjOpen(*a1, *(a1 + 1), a2, 1021, &v71, 213);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v74 = 0;
  v16 = datac_RequestBlock(a2, 1021, 1u, &v74);
  if ((v16 & 0x80000000) != 0)
  {
    v28 = v16;
    LOWORD(v25) = 0;
    goto LABEL_23;
  }

  v17 = *(v74 + 8);
  v18 = *(v74 + 16);
  if (v18 < 2)
  {
    goto LABEL_39;
  }

  v19 = v17 + 26;
  v20 = *(v74 + 16);
LABEL_10:
  v21 = v19;
  v22 = 1;
  do
  {
    if (*(v21 - 5) == 999 && *(v21 - 2) == v17[8] && !*v21)
    {
      v23 = v22 + 1;
      if (v23 < v20)
      {
        v24 = v19;
        memmove(v21 - 10, &v17[16 * v23], (v20 - v22) << 6);
        v19 = v24;
      }

      LOWORD(v25) = 0;
      v26 = 0;
      v27 = 0;
      --v20;
      v18 = 1;
      if ((v20 & 0xFFFE) == 0)
      {
LABEL_59:
        *(v74 + 16) = v18;
        v54 = v17[6] + a3;
        v55 = v17[7] - a3;
        v17[6] = v54;
        v17[7] = v55;
        if (v27)
        {
          v56 = v17 + 38;
          v57 = 1;
          v58 = 3;
          do
          {
            v59 = &v17[16 * v57];
            if (v59[5] != 0x4000 && !*v59 && v59[6] > v54)
            {
              if (v57 + 1 < v18)
              {
                v60 = v56;
                v61 = v58;
                do
                {
                  if (!*(v60 - 6))
                  {
                    *v60 -= v59[7];
                  }

                  v35 = v18 == v61++;
                  v60 += 16;
                }

                while (!v35);
              }

              v59[7] = 0;
            }

            ++v57;
            ++v58;
            v56 += 16;
          }

          while (v57 != v18);
        }

        v62 = v26;
        v63 = *(a1 + 13);
        v64 = log_GetLogLevel(*(*(a1 + 2) + 32)) > 4;
        v65 = utois_ScanRegions(v63, *(a1 + 14), *(a1 + 15), v64, *a1, *(a1 + 1), a2, a1 + 32, *(a1 + 6), *(a1 + 7), *(a1 + 16), *(a1 + 34), HIWORD(*(a1 + 34)), a1[70]);
        v5 = v65;
        if ((v65 & 0x80000000) != 0 && (v65 & 0x1FFF) != 0xA)
        {
          return v5;
        }

        v15 = utoin_NormalizeRegions(*(a1 + 3), a2, a1 + 44);
        if ((v15 & 0x80000000) == 0)
        {
          v68 = wparser_loc_ReSyncOut(a1, a2, a3, a4, v62, v25, v66, v67);
          v29 = v62;
          v28 = v68;
          goto LABEL_76;
        }

        return v15;
      }

      goto LABEL_10;
    }

    ++v22;
    v21 += 16;
  }

  while (v20 != v22);
  v18 = v20;
  if (v20 < 2)
  {
LABEL_39:
    LOWORD(v25) = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_59;
  }

  LOWORD(v25) = 0;
  v30 = v20 - 1;
  v31 = v17 + 16;
  do
  {
    v32 = v31[5];
    if (v32 != 0x4000 && !*v31 || v31[6] == v17[6] && ((v33 = v32 > 0x24, v34 = (1 << v32) & 0x1080200080, !v33) ? (v35 = v34 == 0) : (v35 = 1), !v35 && *v31 == 1))
    {
      LOWORD(v25) = v25 + 1;
    }

    v31 += 16;
    --v30;
  }

  while (v30);
  if (!v25)
  {
    v26 = 0;
    goto LABEL_41;
  }

  v26 = heap_Calloc(*(*(a1 + 2) + 8), 1, (v25 << 6) | 1);
  if (v26)
  {
LABEL_41:
    v25 = 0;
    v36 = 0;
    v37 = v20 - 1;
    v38 = v17 + 23;
    while (1)
    {
      v39 = v38 - 7;
      v40 = *(v38 - 2);
      if (v40 == 0x4000 || *v39)
      {
        v41 = *(v38 - 1);
        if (v41 != v17[6])
        {
          goto LABEL_57;
        }

        v33 = v40 > 0x24;
        v42 = (1 << v40) & 0x1080200080;
        v43 = v33 || v42 == 0;
        if (v43 || *v39 != 1)
        {
          goto LABEL_57;
        }

        *(v38 - 1) = v41 + a3;
        v44 = (v26 + (v36 << 6));
        v45 = *v39;
        v46 = *(v38 - 3);
        v47 = *(v38 + 5);
        v44[2] = *(v38 + 1);
        v44[3] = v47;
        *v44 = v45;
        v44[1] = v46;
        ++v25;
      }

      else
      {
        v48 = (v26 + (v36 << 6));
        v49 = *v39;
        v50 = *(v38 - 3);
        v51 = *(v38 + 5);
        v48[2] = *(v38 + 1);
        v48[3] = v51;
        *v48 = v49;
        v48[1] = v50;
        ++v25;
        v52 = a5[5];
        if (v52)
        {
          if (v52 == *(v38 - 2))
          {
            v53 = a5[6];
            if (v53 == *(v38 - 1) && a5[7] == *v38)
            {
              *(v38 - 1) = (v53 + a3);
            }
          }
        }
      }

      v36 = v25;
LABEL_57:
      v38 += 16;
      if (!--v37)
      {
        v27 = 1;
        goto LABEL_59;
      }
    }
  }

  v28 = -1924128758;
LABEL_23:
  v29 = 0;
  LODWORD(v5) = 0;
LABEL_76:
  if (v25)
  {
    heap_Free(*(*(a1 + 2) + 8), v29);
  }

  if (v71)
  {
    bed_ObjClose(v71);
  }

  if ((v5 & 0x1FFF) == 0xA)
  {
    return v5;
  }

  else
  {
    return v28;
  }
}

uint64_t wparser_loc_ReSyncOut(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v10 = a4;
  v81 = 0;
  v82 = 0;
  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] ReSyncOut(refReset=%d posRefOffset=%d)", a6, a7, a8, a4);
  result = datac_RequestBlock(a2, 1021, 1u, &v81);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v15 = *(v81 + 8);
  v16 = *(v81 + 16);
  v17 = heap_Calloc(*(*(a1 + 16) + 8), 1, (2 * v16) | 1);
  if (!v17)
  {
    return 2370838538;
  }

  v18 = v17;
  if (!v16)
  {
    goto LABEL_52;
  }

  v19 = 0;
  v20 = 0;
  do
  {
    v21 = &v15[16 * v19];
    v22 = v21[5];
    v23 = v22 > 0x24 || ((1 << v22) & 0x1080200080) == 0;
    if (v23 && v22 != 999)
    {
      if (*v21)
      {
        v29 = 1;
      }

      else
      {
        v29 = v20 >= v8;
      }

      if (v29)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    if (!*v21)
    {
      if (v20 >= v8)
      {
        goto LABEL_36;
      }

LABEL_32:
      v30 = v20;
      v31 = (a5 + 20 + (v20 << 6));
      while (v22 != 999)
      {
        v32 = *v31;
        v31 += 16;
        if (v32 == v22)
        {
          break;
        }

        if (v8 == ++v30)
        {
          goto LABEL_36;
        }
      }

      ++v20;
      v33 = v30 + 1;
      goto LABEL_37;
    }

    v24 = v22 != 999 && *v21 == 1;
    if (!v24 || ((v25 = v21[6], v25 == v15[6]) ? (v26 = v20 >= v8) : (v26 = 1), v26))
    {
LABEL_36:
      v33 = 0;
      goto LABEL_37;
    }

    v27 = v20;
    v28 = (a5 + 24 + (v20 << 6));
    while (*(v28 - 1) != v22 || *v28 != v25)
    {
      ++v27;
      v28 += 16;
      if (v8 == v27)
      {
        goto LABEL_36;
      }
    }

    ++v20;
    v33 = v27 + 1;
LABEL_37:
    *(v18 + 2 * v19++) = v33;
  }

  while (v19 != v16);
  v34 = v16;
  v35 = v18;
  v36 = v15 + 7;
  do
  {
    v37 = *(v36 - 2);
    v38 = v37 > 0x24 || ((1 << v37) & 0x1080200080) == 0;
    if (!v38 || v37 == 999 || !*(v36 - 7))
    {
      v39 = *v35;
      if (*v35)
      {
        v40 = *(a5 + ((v39 - 1) << 6) + 24);
        v41 = *(a5 - 36 + (v39 << 6));
        *(v36 - 1) = v40;
        *v36 = v41;
        if (v40 == v15[6] && v15[7] + v40 >= (v40 - a3))
        {
          *(v36 - 1) = v40 - a3;
        }
      }
    }

    v36 += 16;
    ++v35;
    --v34;
  }

  while (v34);
LABEL_52:
  v42 = v15[7] + v10 + a3;
  v15[6] -= v10 + a3;
  v15[7] = v42;
  if (v16 >= 2)
  {
    v43 = v15[8];
    for (i = 1; i != v16; ++i)
    {
      v45 = &v15[16 * i];
      if (v45[8] != v43 || v45[6] > (v10 + a3 + v15[6]))
      {
        v46 = v45[5];
        if (v46 == 999 || v46 != 0x4000 && !*v45)
        {
          LOWORD(v47) = 0;
          v48 = &v15[16 * (v16 - 1) + 6];
          v49 = (v16 - 1);
          do
          {
            if (i != v49 && *(v48 - 1) != 0x4000 && *v48 >= v45[6])
            {
              LOWORD(v47) = v49;
            }

            --v49;
            v48 -= 16;
          }

          while (v49);
          v50 = v45[7];
          if (v50)
          {
            if (v16 > v47)
            {
              v47 = v47;
              v51 = &v15[16 * v47 + 6];
              do
              {
                if (i != v47 && *(v51 - 1) != 999 && *(v51 - 6) == 1 && *v51 >= v45[6])
                {
                  v52 = *v51 + v50;
                  if (v15[6] + v42 < v52)
                  {
                    break;
                  }

                  *v51 = v52;
                }

                ++v47;
                v51 += 16;
              }

              while (v47 < v16);
            }
          }
        }
      }
    }

    v53 = 1;
    while (2)
    {
      v54 = v53;
      v55 = &v15[16 * v53++];
      if (v55[5] == 41)
      {
        if (v53 < v16)
        {
          v56 = &v15[16 * v53];
          if (v56[5] == 39 && v56[8] == v55[8])
          {
            v57 = v53;
            goto LABEL_91;
          }
        }

        if (v54 >= 2 && (v57 = v54 - 1, v58 = &v15[16 * v54 - 16], v58[5] == 39))
        {
          if (v58[8] != v55[8])
          {
            v57 = 0;
          }
        }

        else
        {
          v57 = 0;
        }

        if (v53 < v16 && (v59 = &v15[16 * v53], v59[5] == 14) && v59[8] == v55[8])
        {
          v60 = v53;
        }

        else
        {
LABEL_91:
          if (v54 >= 2 && (v60 = v54 - 1, v61 = &v15[16 * v54 - 16], v61[5] == 14))
          {
            if (v61[8] != v55[8])
            {
              v60 = 0;
            }
          }

          else
          {
            v60 = 0;
          }
        }

        v62 = v55[6];
        v63 = v55[7];
        v64 = 1;
        do
        {
          v65 = &v15[16 * v64];
          v66 = v65[6];
          if (v66 > v63 + v62)
          {
            break;
          }

          if (v54 < v64)
          {
            if (v66)
            {
              if (!*v65)
              {
                v67 = v65[5];
                if (v67 != 7)
                {
                  v68 = v67 != 0x4000 && v66 >= v62;
                  if (v68 && v66 < v63 + v62)
                  {
                    v70 = v65[7] + v63;
                    if (v70 + v62 <= v15[7] + v15[6])
                    {
                      v55[7] = v70;
                      v63 = v70;
                    }

                    if (v57)
                    {
                      v15[16 * v57 + 7] = v63;
                    }

                    if (v60)
                    {
                      v15[16 * v60 + 7] = v63;
                    }
                  }
                }
              }
            }
          }

          ++v64;
        }

        while (v16 > v64);
      }

      if (v53 == v16)
      {
        break;
      }

      continue;
    }
  }

  result = datac_RequestBlock(a2, 1020, 1u, &v82);
  if ((result & 0x80000000) == 0)
  {
    if (v16 >= 2)
    {
      v71 = 1;
      v72 = 1;
      do
      {
        v73 = v72;
        v74 = &v15[16 * v72];
        if (v74[5] == 7 && v74[10] == 43)
        {
          if (v16 <= (v71 + 1))
          {
LABEL_129:
            if (*(v82 + 16) + v15[8] == v74[9] + v74[8])
            {
              v74[7] = v15[7] + v15[6] - v74[6];
              if ((datac_RequestBlock(a2, 1021, (*(v81 + 16) + 1), &v81) & 0x80000000) != 0)
              {
                break;
              }

              v15 = *(v81 + 8);
              v77 = &v15[16 * v73];
              memmove(&v15[16 * (v71 + 1)], v77, (*(v81 + 16) - v71) << 6);
              v78 = *(v81 + 8) + (v73 << 6);
              *(v78 + 104) = 15;
              *(v78 + 64) = 1;
              v79 = v77[6];
              *(v78 + 84) = 7;
              *(v78 + 88) = v79;
              v80 = v77[9] + v77[8];
              *(v78 + 92) = 0;
              *(v78 + 96) = v80;
              *(v78 + 100) = 0;
              *(v78 + 80) = 0;
              *(v78 + 72) = 0;
              *(v78 + 112) = 0;
              ++*(v81 + 16);
              v72 = v16;
            }
          }

          else
          {
            v75 = (v71 + 1);
            v76 = &v15[16 * v75 + 8];
            while (*(v76 - 3) != 999 || *v76 != v74[9] + v74[8])
            {
              LOWORD(v75) = v75 + 1;
              v76 += 16;
              if (v16 == v75)
              {
                goto LABEL_129;
              }
            }

            v74[7] = v15[16 * v75 + 7] + v15[16 * v75 + 6] - v74[6];
            v72 = v75;
          }
        }

        v71 = ++v72;
      }

      while (v72 < v16);
    }

    heap_Free(*(*(a1 + 16) + 8), v18);
    return 0;
  }

  return result;
}

uint64_t wparser_insertRegionTags(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return utoin_InsertRegions(*(a1 + 24), a2);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t wparser_InsertWordMarkers(uint64_t a1, uint64_t a2, char *__s, _WORD *a4)
{
  v91 = 0;
  v92[0] = 0;
  v86 = 0;
  v85 = 0;
  v8 = strlen(__s);
  v9 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1021, v92, 213);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = bed_GetpElem(v92[0], 0, &v91);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  v12 = v91;
  v11 = v92[0];
  v13 = v91[1];
  v87 = *v91;
  v88 = v13;
  v14 = v91[3];
  v89 = v91[2];
  v90 = v14;
  *(v91 + 7) = 0;
  *(v12 + 9) = 0;
  v10 = bed_GetpElem(v11, 0, &v91);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  v15 = v88;
  v17 = v91;
  v16 = v92[0];
  *v91 = v87;
  v17[1] = v15;
  v18 = v90;
  v17[2] = v89;
  v17[3] = v18;
  v10 = bed_GetcElem(v16, &v85);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_50:
    v19 = v10;
    goto LABEL_51;
  }

  v19 = bed_GetpElem(v92[0], 0, &v86);
  if ((v19 & 0x80000000) == 0)
  {
    LOWORD(v20) = v85;
    if (v85 < 2u)
    {
      goto LABEL_81;
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v21 = 84;
    v22 = v86;
    v23 = 1;
    while (1)
    {
      v80 = 0;
      v80 = *(v22 + (v23 << 6) + 32) - *(v22 + 32);
      utf8_GetPreviousValidUtf8Offset(__s, &v80);
      v22 = v86;
      v24 = v80;
      v25 = v86 + (v23 << 6);
      *(v25 + 32) = v80 + *(v86 + 32);
      v26 = *(v25 + 20);
      v27 = v26 > 0x39;
      v28 = (1 << v26) & 0x3C8002000004002;
      if (v27 || v28 == 0)
      {
        goto LABEL_45;
      }

      v80 = v24;
      v30 = utf8_BelongsToSet(5u, __s, v24, v8);
      v31 = v80;
      if (v30)
      {
        while (v31 < v8 && utf8_BelongsToSet(5u, __s, v31, v8))
        {
          v32 = utf8_determineUTF8CharLength(__s[v80]);
          *(v86 + (v23 << 6) + 32) += v32;
          v31 = v80 + v32;
          v80 += v32;
        }
      }

      else if (v80 < *(v86 + 36))
      {
        v33 = v23;
        while (1)
        {
          v34 = v33;
          if (!v33)
          {
            break;
          }

          --v33;
          v35 = *(v86 + ((v34 - 1) << 6) + 20);
          v27 = v35 > 0x39;
          v36 = (1 << v35) & 0x3C8010124021140;
          if (!v27 && v36 != 0)
          {
            goto LABEL_23;
          }
        }

        LOWORD(v33) = -1;
LABEL_23:
        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v80);
        if (PreviousUtf8Offset != -1)
        {
          for (i = PreviousUtf8Offset; i != -1; i = utf8_GetPreviousUtf8Offset(__s, i))
          {
            v40 = utf8_BelongsToSet(5u, __s, i, v8);
            if (!v34)
            {
              break;
            }

            if (v40)
            {
              break;
            }

            if (i <= *(v86 + (v33 << 6) + 32))
            {
              break;
            }

            *(v86 + (v23 << 6) + 32) += i - v80;
            v80 = i;
          }
        }
      }

      v22 = v86;
      v41 = v86 + (v23 << 6);
      v42 = *(v41 + 32);
      v43 = *(v86 + 32);
      v44 = v42 - v43;
      v80 = v42 - v43;
      if (*(v41 + 20) != 1)
      {
        goto LABEL_45;
      }

      if (v44 < v8)
      {
        v45 = v42 - v43;
        do
        {
          if (utf8_BelongsToSet(5u, __s, v45, v8))
          {
            break;
          }

          v45 = v80 + utf8_determineUTF8CharLength(__s[v80]);
          v80 = v45;
        }

        while (v45 < v8);
        v22 = v86;
      }

      v46 = v22 + (v23 << 6);
      if (v23 >= v85)
      {
LABEL_43:
        v55 = v80 - v44;
      }

      else
      {
        v47 = (v22 + v21);
        v48 = v23;
        v49 = (v22 + v21);
        while (1)
        {
          v50 = *v49;
          v49 += 16;
          v51 = (1 << v50) & 0x3C8010124221140;
          if (v50 <= 0x39 && v51 != 0)
          {
            v53 = v47[3];
            v54 = *(v46 + 32);
            if (v53 > v54)
            {
              break;
            }
          }

          ++v48;
          v47 = v49;
          if (v85 == v48)
          {
            goto LABEL_43;
          }
        }

        v55 = v80 - v44;
        if (v80 - v44 + v54 > *(v22 + (v48 << 6) + 32))
        {
          goto LABEL_45;
        }
      }

      *(v46 + 36) = v55;
LABEL_45:
      ++v23;
      v56 = v85;
      v21 += 64;
      if (v23 >= v85)
      {
        if (v85 < 2u)
        {
          LOWORD(v20) = v85;
        }

        else
        {
          v58 = v86;
          v59 = 1;
          v20 = v85;
          v60 = 1;
          do
          {
            v61 = (v58 + (v60 << 6));
            if (*(v61 + 5) != 0x4000 && (v62 = (v59 + 1), v62 < v56) && ((v63 = (v58 + (v62 << 6)), v64 = *(v63 + 8), v65 = *(v61 + 8), v64 < v65) || v64 == v65 && *(v63 + 9) < *(v61 + 9)))
            {
              v60 = 0;
              v66 = v63[2];
              v67 = v63[3];
              v68 = v61[3];
              v70 = *v61;
              v69 = v61[1];
              v63[2] = v61[2];
              v63[3] = v68;
              v71 = *v63;
              v72 = v63[1];
              *v63 = v70;
              v63[1] = v69;
              v81 = v71;
              v82 = v72;
              v83 = v66;
              v84 = v67;
              *v61 = v71;
              v61[1] = v72;
              v73 = v84;
              v61[2] = v83;
              v61[3] = v73;
            }

            else
            {
              ++v60;
            }

            v59 = v60;
            v56 = v20;
          }

          while (v60 < v20);
          if (v20 >= 2)
          {
            v74 = 1;
LABEL_67:
            v75 = v86;
            do
            {
              v76 = (v86 + (v74 << 6));
              if (v76[5] == 1)
              {
                v77 = v74;
                while (++v77 < v20)
                {
                  v78 = (v86 + (v77 << 6));
                  if (v78[8] != v76[8])
                  {
                    break;
                  }

                  if (v78[5] == 1)
                  {
                    v76[7] = v78[7] + v78[6] - v76[6];
                    v79 = v77 + 1;
                    if (v20 > v79)
                    {
                      memmove(v78, (v75 + (v79 << 6)), (v20 - v79) << 6);
                      LOWORD(v20) = v85;
                    }

                    LOWORD(v20) = v20 - 1;
                    v85 = v20;
                    if (v74 < v20)
                    {
                      goto LABEL_67;
                    }

                    goto LABEL_81;
                  }
                }
              }

              ++v74;
            }

            while (v74 < v20);
          }
        }

LABEL_81:
        *a4 = v20;
        break;
      }
    }
  }

LABEL_51:
  if (v92[0])
  {
    bed_ObjClose(v92[0]);
  }

  return v19;
}

uint64_t utoin_LookUpUdctWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, __int16 a7, uint64_t a8)
{
  v19 = 0;
  v18 = 1;
  if (!a4)
  {
    return 2370838535;
  }

  *(a4 + 12) = 0;
  if (*(a4 + 8) > a6)
  {
    return 0;
  }

  *(*a4 + *(a4 + 8)) = 0;
  *(a4 + 24) = a7;
  if ((*(a1 + 128))(a2, a3, a5, *a4, 0, "normal", &v18, *(a4 + 16), a4 + 24, a8, 0, &v19, 0, 0))
  {
    return 0;
  }

  v10 = *(a4 + 16);
  v11 = strlen(v10);
  *(a4 + 24) = v11;
  if (!v10[v11 - 1])
  {
    *(a4 + 24) = --v11;
  }

  if (v18 == 4)
  {
    if (v11 >= 7u && (*v10 == 12049 ? (v12 = v10[2] == 62) : (v12 = 0), v12 && ((v13 = &v10[v11], v14 = *(v13 - 3), v15 = *(v13 - 1), v14 == 12049) ? (v16 = v15 == 62) : (v16 = 0), v16)))
    {
      memmove(v10, v10 + 2, v11 - 4);
      *(*(a4 + 16) + *(a4 + 24) - 4) = 0;
      v17 = 16;
      **(a4 + 16) = 16;
      *(*(a4 + 16) + *(a4 + 24) - 5) = 17;
      *(a4 + 24) -= 4;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = 43;
  }

  result = 0;
  *(a4 + 12) = v17;
  return result;
}

uint64_t utoin_ReplaceWord(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, char *a7)
{
  v81 = 0;
  v82[0] = 0;
  *v66 = 0;
  v7 = 2370838535;
  v77 = MarkerUDCTREF;
  *v78 = unk_1C37BEC88;
  *&v78[16] = xmmword_1C37BEC98;
  v79 = unk_1C37BECA8;
  v73 = MarkerSetTypeOfInput;
  v74 = unk_1C37BECC8;
  v75 = xmmword_1C37BECD8;
  v76 = unk_1C37BECE8;
  memset(v72, 0, sizeof(v72));
  v70 = MarkerSetLang;
  v71 = unk_1C37BED08;
  memset(v69, 0, sizeof(v69));
  v67 = MarkerSetNLU;
  v68 = unk_1C37BED48;
  if (!a1 || !a2 || !a4)
  {
    return v7;
  }

  v80 = 0;
  TNArgStr = bed_GetpElem(a2, 0, v82);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v16 = *(v82[0] + 32);
  TNArgStr = bed_GetpElem(a2, 0xFFFFu, &v81);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  if (a5 == 1 && v81[5] != 7)
  {
    return v7;
  }

  TNArgStr = datac_RequestBlock(a6, 1012, 1u, v66);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v64 = v16;
  v17 = v81[8];
  v18 = a3;
  v19 = *(v82[0] + 32);
  v61 = v81[6];
  v62 = a5;
  v58 = v81[7];
  v59 = v81[9];
  v20 = v18;
  v60 = *(a4 + 8);
  TNArgStr = bed_Remove(a1, v18, v60);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v21 = v17 - v19;
  if (*(a4 + 24))
  {
    v22 = v20;
    TNArgStr = bed_Goto(a1, v20);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    TNArgStr = bed_Insert(a1, *(a4 + 16), *(a4 + 24));
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v23 = v21;
    if (*(a4 + 8) + v20 >= v81[9] + v21)
    {
      v56 = v81[8];
      v57 = 1;
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }
  }

  else
  {
    v23 = v21;
    v56 = 0;
    v57 = 0;
    v22 = v20;
  }

  v24 = v62;
  v25 = v82;
  if (v62 == 1)
  {
    v25 = &v81;
  }

  (*v25)[9] = (*v25)[9] + *(a4 + 24) - *(a4 + 8);
  TNArgStr = bed_GetiElem(a2, &v80);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v63 = v22 - v23;
  if (a7)
  {
    DWORD1(v71) = 36;
    TNArgStr = addOrGetTNArgStr(*v66, a7, v72 + 2, a6);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v26 = v81[8];
    if (v26 - v64 < v22)
    {
      *(&v71 + 1) = (v63 + v61);
      *&v72[0] = v64 + v22;
      TNArgStr = bed_Goto(a2, 1u);
      if ((TNArgStr & 0x80000000) != 0)
      {
        return TNArgStr;
      }

      v27 = &v70;
      goto LABEL_29;
    }

    *(&v71 + 1) = v81[6];
    *&v72[0] = v26;
    TNArgStr = bed_Goto(a2, 1u);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v29 = &v70;
LABEL_36:
    TNArgStr = bed_marker_InjectFixedRefMarker(a2, v29);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    TNArgStr = bed_Goto(a2, v80 + 1);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    LOWORD(v80) = v80 + 1;
    v81 += 16;
    goto LABEL_39;
  }

  strcpy(__s, "BND");
  DWORD1(v68) = 51;
  TNArgStr = addOrGetTNArgStr(*v66, __s, v69 + 2, a6);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v28 = v81[8];
  if (v28 - v64 >= v22)
  {
    *(&v68 + 1) = v81[6];
    *&v69[0] = v28;
    TNArgStr = bed_Goto(a2, 1u);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v29 = &v67;
    goto LABEL_36;
  }

  *(&v68 + 1) = (v63 + v61);
  *&v69[0] = v64 + v22;
  TNArgStr = bed_Goto(a2, 1u);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v27 = &v67;
LABEL_29:
  TNArgStr = bed_marker_InjectFixedRefMarker(a2, v27);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  TNArgStr = bed_Goto(a2, v80);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

LABEL_39:
  TNArgStr = bed_GetcElem(a2, &v80 + 1);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v30 = HIWORD(v80);
  v31 = v81 + 16;
  v32 = v80 + 1;
  if (HIWORD(v80) > (v80 + 1))
  {
    v33 = v64 + v22;
    do
    {
      v34 = v31[8];
      if (v33 <= v34)
      {
        v35 = *(a4 + 8);
        v36 = v64 + v22;
        if (v33 + v35 <= v34)
        {
          v36 = v34 - v35 + *(a4 + 24);
        }

        v31[8] = v36;
      }

      v31 += 16;
      ++v32;
    }

    while (v30 > v32);
    LOWORD(v32) = v30;
  }

  v81 = v31;
  LOWORD(v80) = v32;
  if (!v24)
  {
    return 0;
  }

  TNArgStr = bed_GetpElem(a2, 0xFFFFu, &v81);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v37 = *(a4 + 24);
  v38 = v81;
  if (*(a4 + 24))
  {
    v39 = v81[10];
    v40 = *(a4 + 12);
    if (v39 != v40)
    {
      v41 = v81[8];
      if (v41 - v64 >= v22)
      {
        v47 = *(a4 + 8);
        v81[7] = v47;
        v38[9] = v37;
        v38[10] = v40;
        if (*(a4 + 12) == 16)
        {
          *&v78[8] = v38[6];
          *&v78[12] = v47;
          *&v78[16] = v41;
          *&v78[20] = v37;
LABEL_63:
          *&v78[24] = 16;
          TNArgStr = bed_marker_InjectFixedRefMarker(a2, &v77);
          if ((TNArgStr & 0x80000000) != 0)
          {
            return TNArgStr;
          }
        }
      }

      else
      {
        v81[9] = v64 + v22 - v41;
        TNArgStr = bed_marker_MapPosCur(a2, v64 + v22, v38 + 7);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        v81[7] -= v81[6];
        v42 = *(a4 + 12);
        v43 = v60;
        if (v42 == 16)
        {
          v43 = 0;
        }

        DWORD2(v74) = v63 + v61;
        HIDWORD(v74) = v43;
        v44 = *(a4 + 24);
        LODWORD(v75) = v64 + v22;
        *(&v75 + 4) = __PAIR64__(v42, v44);
        TNArgStr = bed_marker_InjectFixedRefMarker(a2, &v73);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        if (*(a4 + 12) == 16)
        {
          *&v78[8] = v63 + v61;
          *&v78[12] = v60;
          v45 = *(a4 + 24);
          *&v78[16] = v64 + v22;
          *&v78[20] = v45;
          goto LABEL_63;
        }
      }

      v48 = *(a4 + 8) + v22;
      v49 = v23 + v59 >= v48;
      v50 = v23 + v59 - v48;
      if (v50 == 0 || !v49)
      {
        v51 = v64 + v22;
LABEL_67:
        if (v57)
        {
          v52 = v56;
        }

        else
        {
          v52 = v51 + *(a4 + 24);
        }

        LOWORD(v80) = 0;
        TNArgStr = bed_GetpElem(a2, 0, &v81);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        TNArgStr = bed_GetcElem(a2, &v80 + 1);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        v53 = v80;
        if (v80 < HIWORD(v80))
        {
          for (i = v81 + 16; *(i - 11) != 7 || *(i - 6) != v39 || *(i - 8) != v52; i += 16)
          {
            v7 = 0;
            v81 = i;
            LOWORD(v80) = ++v53;
            if (v53 >= HIWORD(v80))
            {
              return v7;
            }
          }

          TNArgStr = bed_Goto(a2, v53);
          if ((TNArgStr & 0x80000000) != 0)
          {
            return TNArgStr;
          }
        }

        return 0;
      }

      DWORD2(v74) = v63 + v60 + v61;
      HIDWORD(v74) = v58 - (v63 + v60);
      v51 = v64 + v22;
      LODWORD(v75) = v51 + *(a4 + 24);
      *(&v75 + 4) = __PAIR64__(v39, v50);
      TNArgStr = bed_marker_InjectFixedRefMarker(a2, &v73);
      if ((TNArgStr & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      return TNArgStr;
    }
  }

  else
  {
    v39 = *(a4 + 12);
  }

  *&v78[8] = *(v81 + 6);
  *&v78[24] = v39;
  v46 = bed_marker_InjectFixedRefMarker(a2, &v77);
  return v46 & (v46 >> 31);
}

uint64_t addOrGetTNArgStr(uint64_t a1, char *__s, unsigned int *a3, uint64_t a4)
{
  v4 = 2370838535;
  v17 = a1;
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v10 = *(a1 + 16);
      if (!*(a1 + 16))
      {
LABEL_7:
        *a3 = v10;
        v14 = strlen(__s) + 1;
        v15 = v14 + v10;
        if (*(a1 + 18) >= (v14 + v10))
        {
          v4 = 0;
        }

        else
        {
          v4 = datac_RequestBlock(a4, 1012, (v14 + v10), &v17);
          if ((v4 & 0x80000000) != 0)
          {
            return v4;
          }

          v6 = *(v17 + 8);
          v10 = *(v17 + 16);
        }

        memcpy((v6 + v10), __s, v14);
        *(v17 + 16) = v15;
        return v4;
      }

      v11 = 0;
      v12 = *(a1 + 8);
      while (strcmp(__s, v12))
      {
        v13 = strlen(v12) + 1;
        v11 += v13;
        v12 += v13;
        if (v11 >= v10)
        {
          goto LABEL_7;
        }
      }

      v4 = 0;
      *a3 = v11;
    }
  }

  return v4;
}

uint64_t utoin_IncrReplaceCurrentRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = 0;
  v37 = 0;
  result = 2370838535;
  __src = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v35 = 0;
        v33 = 0;
        result = bed_GetpElem(a2, 0, &v37);
        if ((result & 0x80000000) == 0)
        {
          result = bed_GetpElem(a2, 0xFFFFu, &v36);
          if ((result & 0x80000000) == 0)
          {
            v10 = *(v36 + 32);
            v11 = *(v37 + 32);
            v12 = *(v36 + 36);
            result = bed_GetcElem(a3, &v35 + 1);
            if ((result & 0x80000000) == 0)
            {
              v13 = v10 - v11;
              if (HIWORD(v35))
              {
                result = bed_GetpElem(a3, 0, &__src);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = bed_Remove(a1, v13, v12);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = bed_Goto(a1, v13);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = bed_Insert(a1, __src, HIWORD(v35));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v14 = HIWORD(v35);
                v15 = a3;
                v16 = 0;
              }

              else
              {
                v16 = v13;
                v15 = a1;
                v14 = v12;
              }

              result = bed_Remove(v15, v16, v14);
              if ((result & 0x80000000) == 0)
              {
                v17 = v36;
                *(v36 + 36) = HIWORD(v35);
                v18 = *(v17 + 32);
                result = bed_GetiElem(a2, &v33);
                if ((result & 0x80000000) == 0)
                {
                  result = bed_GetcElem(a2, &v35);
                  if ((result & 0x80000000) == 0)
                  {
                    v19 = v35;
                    v20 = v36;
                    v21 = v33 + 1;
                    v33 = v21;
                    if (v35 > v21)
                    {
                      v22 = v37;
                      v23 = HIWORD(v35);
                      while (1)
                      {
                        v24 = *(v20 + 96);
                        v25 = *(v22 + 32) + v13;
                        if (v24 >= v25 + v12)
                        {
                          break;
                        }

                        if (a5)
                        {
                          if (*(a5 + 16) == 1)
                          {
                            v26 = *(a5 + 8);
                            if (*(a5 + 8))
                            {
                              if (*(a5 + 12) != 1)
                              {
                                v28 = (*a5 + 12 * *(a5 + 8) - 4);
                                while (1)
                                {
                                  v29 = *(v28 - 4);
                                  if (v24 >= v18 + v29)
                                  {
                                    break;
                                  }

                                  v28 -= 6;
                                  if (!--v26)
                                  {
                                    goto LABEL_28;
                                  }
                                }

                                v30 = *v28;
                                v31 = v24 - v29;
                                if (*(v20 + 84) != 99)
                                {
                                  v31 = v18;
                                }

                                v32 = v31 + v30;
                                *(v20 + 96) = v32;
                                if (v32 == *(v22 + 32))
                                {
                                  goto LABEL_28;
                                }

                                v27 = v32 + 1;
                                goto LABEL_27;
                              }
                            }
                          }
                        }

                        *(v20 + 96) = v25;
                        if (v25 != *(v22 + 32))
                        {
                          v27 = v25 + 1;
LABEL_27:
                          *(v20 + 96) = v27;
                        }

LABEL_28:
                        v20 += 64;
                        v33 = ++v21;
                        if (v19 <= v21)
                        {
                          return result;
                        }
                      }

                      v27 = v24 - v12 + v23;
                      goto LABEL_27;
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

uint64_t utoin_ObjOpen(_WORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, __int16 a15, __int16 a16)
{
  v69 = *MEMORY[0x1E69E9840];
  v16 = 2370838528;
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  strcpy(v62, "xlit23");
  v67 = 0;
  strcpy(v68, "cpextensions");
  strcpy(v61, "win936");
  *&v59[1] = -1;
  if (a3)
  {
    v66 = 0;
    v59[0] = 0;
    if ((InitRsrcFunction(a1, a2, &v67) & 0x80000000) != 0)
    {
      v16 = 2370838535;
    }

    else
    {
      *a3 = 0;
      v24 = heap_Alloc(*(v67 + 8), 184);
      if (v24)
      {
        v29 = v24;
        *v24 = 0u;
        *(v24 + 16) = 0u;
        *(v24 + 48) = 0u;
        *(v24 + 64) = 0u;
        *(v24 + 144) = 0u;
        *(v24 + 160) = 0u;
        *(v24 + 112) = 0u;
        *(v24 + 128) = 0u;
        *(v24 + 176) = 0;
        *(v24 + 80) = 0u;
        *(v24 + 96) = 0u;
        *(v24 + 32) = 0u;
        *v24 = a1;
        *(v24 + 8) = a2;
        v30 = v67;
        *(v24 + 16) = v67;
        *(v24 + 24) = 0;
        *(v24 + 32) = a7;
        *(v24 + 40) = a9;
        *(v24 + 48) = a10;
        *(v24 + 56) = 0;
        *(v24 + 60) = 0;
        *(v24 + 72) = 0;
        *(v24 + 164) = 0;
        *(v24 + 144) = 0;
        *(v24 + 172) = 0;
        *(v24 + 136) = 0;
        *(v24 + 148) = 0x100000001;
        *(v24 + 80) = a4;
        *(v24 + 88) = a5;
        *(v24 + 96) = a6;
        *(v24 + 104) = a11;
        *(v24 + 112) = a12;
        *(v24 + 120) = a13;
        *(v24 + 128) = a14;
        *(v24 + 130) = a15;
        *(v24 + 132) = a16;
        *(v24 + 168) = 0;
        *(v24 + 176) = 0;
        if (!a11)
        {
          v39 = *(v30 + 32);
          v40 = 1806;
          goto LABEL_36;
        }

        __c_1 = 0;
        if (((*(a7 + 96))() & 0x80000000) != 0 || !__c_1)
        {
          v39 = *(v67 + 32);
          v40 = 1801;
          goto LABEL_36;
        }

        if (__c_1 == 1 && __c_3)
        {
          v31 = strchr(*__c_3, __c);
          if (v31)
          {
            *v31 = 0;
            v32 = *__c_3;
          }

          __strcpy_chk();
        }

        __c_1 = 0;
        if (((*(a7 + 96))(*(v29 + 40), *(v29 + 48), "fecfg", "translitdef", &__c_3, &__c_1, &__c) & 0x80000000) != 0 || !__c_1)
        {
          v39 = *(v67 + 32);
          v40 = 1803;
          goto LABEL_36;
        }

        if (__c_1 == 1 && __c_3)
        {
          v33 = strchr(*__c_3, __c);
          if (v33)
          {
            *v33 = 0;
            v34 = *__c_3;
          }

          __strcpy_chk();
        }

        __c_1 = -1;
        fecfg_fewordseg_param = (*(a7 + 96))(*(v29 + 40), *(v29 + 48), "fecfg", "backtrans", &__c_3, &__c_1, &__c);
        if ((fecfg_fewordseg_param & 0x80000000) == 0)
        {
          *(v29 + 64) = __c_1 != 0;
          fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v29, (v29 + 164), "fewordseg_wpcrf");
          if ((fecfg_fewordseg_param & 0x80000000) == 0)
          {
            fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v29, (v29 + 164), "fewordseg_bypasshexcode");
            if ((fecfg_fewordseg_param & 0x80000000) == 0)
            {
              fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v29, (v29 + 172), "fewordseg_skipCollapseIdenticalRegion");
              if ((fecfg_fewordseg_param & 0x80000000) == 0)
              {
                fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v29, (v29 + 176), "fewordseg_extra_split_marker");
                if ((fecfg_fewordseg_param & 0x80000000) == 0)
                {
                  if (!*(v29 + 64))
                  {
                    v60 = 0;
                    strcpy(&v59[3], "word");
                    v43 = (*(a7 + 72))(*(v29 + 40), *(v29 + 48), &v59[3], &v66);
                    if ((v43 & 0x80000000) == 0)
                    {
                      if (v66)
                      {
                        v38 = 1;
LABEL_44:
                        *(v29 + 56) = v38;
                        *(v29 + 60) = 0;
                        *&v59[1] = -1;
                        (*(a7 + 96))(*(v29 + 40), *(v29 + 48), "fecfg", "versioninfo", &__c_3, &v59[1], v59);
                        if (*&v59[1])
                        {
                          v44 = *__c_3;
                          v45 = strchr(*__c_3, v59[0]);
                          if (v45)
                          {
                            *v45 = 0;
                            v44 = *__c_3;
                          }

                          *(v29 + 60) = hasCharDic(v44);
                        }

                        *&v59[1] = -1;
                        (*(a7 + 96))(*(v29 + 40), *(v29 + 48), "fecfg", "useppdomains", &__c_3, &v59[1], v59);
                        if (!*&v59[1])
                        {
                          goto LABEL_53;
                        }

                        v46 = *__c_3;
                        v47 = strchr(*__c_3, v59[0]);
                        if (v47)
                        {
                          *v47 = 0;
                          v46 = *__c_3;
                        }

                        if (*v46 == 49)
                        {
                          v48 = v46[1] == 0;
                        }

                        else
                        {
LABEL_53:
                          v48 = 0;
                        }

                        v49 = (*(a7 + 72))(*(v29 + 40), *(v29 + 48), v68, &v66);
                        if ((v49 & 0x80000000) != 0)
                        {
                          v16 = v49;
                          goto LABEL_37;
                        }

                        if (!v66)
                        {
                          v68[0] = 0;
                        }

                        v50 = (*(*(v29 + 104) + 56))(*(v29 + 112), *(v29 + 120), v29 + 32, v62, v61, v48, v68);
                        if ((v50 & 0x80000000) == 0)
                        {
                          v16 = 0;
                          *a3 = v29;
                          goto LABEL_38;
                        }

                        v16 = v50;
                        v39 = *(v67 + 32);
                        v40 = 1807;
LABEL_36:
                        log_OutPublic(v39, &modPP_3, v40, 0, v25, v26, v27, v28, v57);
LABEL_37:
                        heap_Free(*(v67 + 8), v29);
                        goto LABEL_38;
                      }

                      v38 = 0;
                      v60 = 0;
                      for (i = 1; ; i = 0)
                      {
                        strcpy(&v59[3], "word");
                        LH_itoa(v38, v58, 0xAu);
                        __strcat_chk();
                        v43 = (*(a7 + 72))(*(v29 + 40), *(v29 + 48), &v59[3], &v66);
                        if ((v43 & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (!v66)
                        {
                          if ((i & 1) == 0)
                          {
                            goto LABEL_44;
                          }

                          heap_Free(*(v67 + 8), v29);
                          log_OutPublic(*(v67 + 32), &modPP_3, 1809, 0, v53, v54, v55, v56, v57);
                          v16 = 2370838794;
                          goto LABEL_38;
                        }

                        ++v38;
                      }
                    }

                    v52 = v43;
                    heap_Free(*(v67 + 8), v29);
                    v16 = v52;
                    goto LABEL_38;
                  }

                  *&v59[1] = -1;
                  fecfg_fewordseg_param = (*(a7 + 96))(*(v29 + 40), *(v29 + 48), "fecfg", "nrpart_g2p", &__c_3, &v59[1], v59);
                  if ((fecfg_fewordseg_param & 0x80000000) == 0)
                  {
                    if (*&v59[1])
                    {
                      v36 = *__c_3;
                      v37 = strchr(*__c_3, v59[0]);
                      if (v37)
                      {
                        *v37 = 0;
                        v36 = *__c_3;
                      }

                      v38 = atoi(v36);
                    }

                    else
                    {
                      v38 = 0;
                    }

                    goto LABEL_44;
                  }
                }
              }
            }
          }
        }

        v16 = fecfg_fewordseg_param;
        goto LABEL_38;
      }

      v16 = 2370838538;
    }
  }

  else
  {
    v16 = 2370838535;
  }

LABEL_38:
  v41 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t read_fecfg_fewordseg_param(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  memset(__c, 0, sizeof(__c));
  v10 = -1;
  v5 = (*(a1 + 96))(*(a2 + 40), *(a2 + 48), "fecfg", a4, &__c[1], &v10, __c);
  if ((v5 & 0x80000000) == 0 && v10 == 1 && *&__c[1] != 0)
  {
    v7 = **&__c[1];
    v8 = strchr(**&__c[1], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[1];
    }

    if (!strcmp(v7, "yes"))
    {
      *a3 = 1;
    }
  }

  return v5;
}

BOOL hasCharDic(char *a1)
{
  v8 = 0;
  __endptr = a1;
  v1 = strtol(a1, &v8, 10);
  v2 = v1 < 1 || v8 == 0;
  if (v2 || *v8 != 46)
  {
    return 0;
  }

  v3 = strtol(v8 + 1, &__endptr, 10);
  result = 0;
  if ((v3 & 0x80000000) != 0 || !__endptr)
  {
    return result;
  }

  if (*__endptr != 46)
  {
    return 0;
  }

  v5 = strtol(__endptr + 1, &v8, 10);
  result = 0;
  if (v5 < 0 || !v8)
  {
    return result;
  }

  if (*v8 != 46 && *v8)
  {
    return 0;
  }

  return v1 > 4 && v3 > 1 && v5 != 0;
}

uint64_t utoin_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v6 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v6) & 0x80000000) == 0)
  {
    v3 = (*(*(a1 + 104) + 88))(*(a1 + 112), *(a1 + 120));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      v4 = *(a1 + 136);
      if (v4)
      {
        heap_Free(*(*(a1 + 16) + 8), v4);
        *(a1 + 136) = 0;
        *(a1 + 146) = 0;
      }

      heap_Free(*(v6 + 8), a1);
      return 0;
    }
  }

  return v1;
}

uint64_t utoin_ProcessStart(uint64_t a1)
{
  v1 = 2370838535;
  v6 = 0;
  if (a1)
  {
    *(a1 + 72) = log_GetLogLevel(*(*(a1 + 16) + 32)) > 4;
    v3 = (*(*(a1 + 104) + 96))(*(a1 + 112), *(a1 + 120));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    if ((paramc_ParamGetInt(*(*(a1 + 16) + 40), "asianasciispaceudctlookup", &v6) & 0x80000000) == 0 && v6 == 1)
    {
      *(a1 + 168) = 1;
    }

    v3 = paramc_ParamGet(*(*(a1 + 16) + 40), "langcode", (a1 + 24), 0);
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      *(a1 + 160) = 2;
      if (*(a1 + 146))
      {
        return 0;
      }

      else
      {
        v5 = heap_Calloc(*(*(a1 + 16) + 8), 1, 120);
        *(a1 + 136) = v5;
        if (v5)
        {
          v1 = 0;
          *(a1 + 146) = 10;
        }

        else
        {
          return 2370838538;
        }
      }
    }
  }

  return v1;
}

uint64_t utoin_ProcessEnd(uint64_t a1)
{
  if (!a1)
  {
    return 2370838535;
  }

  v2 = (*(*(a1 + 104) + 104))(*(a1 + 112), *(a1 + 120));
  if ((v2 & 0x80000000) == 0)
  {
    if (*(a1 + 24))
    {
      paramc_ParamRelease(*(*(a1 + 16) + 40));
    }

    v3 = *(a1 + 136);
    if (v3)
    {
      heap_Free(*(*(a1 + 16) + 8), v3);
      *(a1 + 136) = 0;
      *(a1 + 146) = 0;
    }
  }

  return v2;
}

uint64_t utoin_NormalizeRegions(_WORD **a1, uint64_t a2, unsigned __int16 *a3)
{
  v106[1] = *MEMORY[0x1E69E9840];
  v3 = 2370838535;
  v97 = 0;
  v98 = 0;
  if (!a1 || !a2)
  {
    v12 = 2370838535;
    goto LABEL_183;
  }

  v7 = bed_ObjOpen(*a1, a1[1], a2, 1020, &v98, 213);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  v7 = bed_ObjOpen(*a1, a1[1], a2, 1021, &v97, 213);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  UTOITrace(*(a1 + 18), a1[2], v98, v97, "BEFORE utoin_RemoveNativeBlanks");
  v8 = a1[2];
  v10 = v97;
  v9 = v98;
  v106[0] = 2;
  v104 = xmmword_1C37BEDBC;
  v105 = 8;
  if (!v98 || !v97)
  {
    goto LABEL_129;
  }

  v7 = bed_Goto(v98, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  v7 = bed_Goto(v10, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  LOWORD(v103) = 0;
  LOWORD(v99) = 0;
  v11 = bed_GoForward(v10, bed_marker_IsToiOfType, v106);
  v12 = v11;
  if ((v11 & 0x80000000) != 0 && (v11 & 0x1FFF) != 0x14)
  {
    goto LABEL_179;
  }

  while ((v12 & 0x80000000) == 0)
  {
    Backward = bed_FindBackward(v10, bed_marker_IsToiNotOfType, &v104, &v103);
    if ((Backward & 0x1FFF) == 0x14)
    {
      LOWORD(v103) = -1;
    }

    else
    {
      v12 = Backward;
      if ((Backward & 0x80000000) != 0)
      {
        goto LABEL_179;
      }
    }

    Forward = bed_FindForward(v10, bed_marker_IsToiNotOfType, &v104, &v99);
    if ((Forward & 0x1FFF) == 0x14)
    {
      v7 = bed_GetcElem(v10, &v99);
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_178;
      }
    }

    else
    {
      v12 = Forward;
      if ((Forward & 0x80000000) != 0)
      {
        goto LABEL_179;
      }
    }

    if (v103 != 0xFFFF)
    {
      v7 = bed_Goto(v10, v103);
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_178;
      }
    }

    v7 = utoin_RemoveBlankRegions(v8, v10, v99, v9);
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

    v15 = bed_GoForward(v10, bed_marker_IsToiOfType, v106);
    v12 = v15;
    if ((v15 & 0x80000000) != 0 && (v15 & 0x1FFF) != 0x14)
    {
      goto LABEL_179;
    }
  }

  UTOITrace(*(a1 + 18), a1[2], v98, v97, "BEFORE utoin_MergeRegions");
  v90 = a1[2];
  v16 = v97;
  *&v104 = 0;
  if (v98)
  {
    v17 = v97 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_173;
  }

  LOWORD(v106[0]) = 0;
  v18 = bed_GetpElem(v97, 0, &v104);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_172;
  }

  v18 = bed_GetcElem(v16, v106);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_172;
  }

  v20 = *a3;
  if (*a3)
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = *(a3 + 1) + (v21 << 6);
      v24 = *v23;
      v25 = *(v23 + 4);
      v26 = *(v23 + 8);
      v27 = *(v23 + 16);
      v28 = *(v23 + 24);
      v29 = *(v23 + 32);
      v30 = *(v23 + 40);
      v31 = *(v23 + 48);
      v32 = *(v23 + 56);
      if (v32 == 1)
      {
        break;
      }

      if (LOWORD(v106[0]) < 2u)
      {
        goto LABEL_46;
      }

      v36 = (v104 + 104);
      v34 = 1;
      do
      {
        if (*(v36 - 5) == 7 && *v36 == v24)
        {
          goto LABEL_47;
        }

        ++v34;
        v36 += 16;
      }

      while (LOWORD(v106[0]) != v34);
LABEL_100:
      v22 = ++v21;
      if (v21 >= v20)
      {
        goto LABEL_101;
      }
    }

    if (LOWORD(v106[0]) < 2u)
    {
LABEL_46:
      LODWORD(v37) = 1;
    }

    else
    {
      v33 = (v104 + 84);
      v34 = 1;
      while (1)
      {
        v35 = *v33;
        v33 += 16;
        if (v35 == 7)
        {
          break;
        }

        if (LOWORD(v106[0]) == ++v34)
        {
          goto LABEL_100;
        }
      }

LABEL_47:
      LODWORD(v37) = v34;
    }

    if (LOWORD(v106[0]) <= v37)
    {
      goto LABEL_100;
    }

    v88 = v31;
    v89 = v21;
    v38 = 0;
    v39 = 0;
    v40 = v106[0];
    v96 = v22;
    v94 = v25;
    v95 = v24;
    v92 = v29;
    v93 = v28;
    v91 = v32;
    while (1)
    {
      if (v26)
      {
        v41 = 0;
        do
        {
          v39 = v37;
          if ((v37 - 1) > v38)
          {
            v42 = (v37 - 1);
            v39 = v37;
            do
            {
              v43 = v104 + (v42 << 6);
              v44 = *(v43 + 20);
              if (v44 == 7)
              {
                v45 = *(v43 + 40);
                v46 = v27;
                v47 = v26;
                while (1)
                {
                  v48 = *v46++;
                  if (v48 == v45)
                  {
                    break;
                  }

                  if (!--v47)
                  {
                    goto LABEL_62;
                  }
                }
              }

              if (v44 == 7)
              {
                v39 = v42;
              }

              --v42;
            }

            while (v38 < v42);
          }

LABEL_62:
          ++v41;
        }

        while (v41 < v26);
      }

      if (v28)
      {
        if ((v37 + 1) < v40)
        {
          v49 = (v37 + 1);
          v38 = v37;
          do
          {
            v50 = v104 + (v49 << 6);
            v51 = *(v50 + 20);
            if (v51 == 7)
            {
              v52 = *(v50 + 40);
              v53 = v29;
              v54 = v28;
              while (1)
              {
                v55 = *v53++;
                if (v55 == v52)
                {
                  break;
                }

                if (!--v54)
                {
                  goto LABEL_82;
                }
              }
            }

            if (v51 == 7)
            {
              v38 = v49;
            }

            ++v49;
          }

          while (v40 != v49);
          goto LABEL_82;
        }
      }

      else
      {
        if (!v30)
        {
          goto LABEL_82;
        }

        v38 = v37 + 1;
        if ((v37 + 1) < v40)
        {
          v56 = v104 + ((v37 + 1) << 6);
          if (*(v56 + 20) != 7)
          {
              ;
            }
          }

          v57 = *(v56 + 40);
          v58 = v88;
          v59 = v30;
          do
          {
            v60 = *v58++;
            if (v60 == v57)
            {
              goto LABEL_82;
            }
          }

          while (--v59);
        }
      }

      v38 = v37;
LABEL_82:
      if (v39 != v38)
      {
        log_OutText(*(v90 + 4), &modPP_3, 5, 0, "[UTOI] (applying mergeRule %d between markers %u and %u)", v29, v19, v32, v22);
        v32 = v91;
        v29 = v92;
        v28 = v93;
        v25 = v94;
        v24 = v95;
        v22 = v96;
      }

      if (v39 < v38)
      {
        v61 = v39;
        do
        {
          v62 = v104 + (v61 << 6);
          if (*(v62 + 20) == 7 && (v25 == 3 || *(v62 + 40) != 1))
          {
            *(v62 + 40) = v25;
          }

          ++v61;
        }

        while (v61 <= v38);
      }

      if (v32 != 1)
      {
        v40 = v106[0];
        LODWORD(v37) = v38 + 1;
        if (LOWORD(v106[0]) > (v38 + 1))
        {
          v37 = (v38 + 1);
          v63 = (v104 + (v37 << 6) + 40);
          while (*(v63 - 5) != 7 || *v63 != v24)
          {
            ++v37;
            v63 += 16;
            if (LOWORD(v106[0]) == v37)
            {
              goto LABEL_99;
            }
          }
        }

        if (LOWORD(v106[0]) > v37)
        {
          continue;
        }
      }

LABEL_99:
      v20 = *a3;
      v21 = v89;
      goto LABEL_100;
    }
  }

LABEL_101:
  if (*(a1 + 43) != 1)
  {
    UTOITrace(*(a1 + 18), a1[2], v98, v97, "BEFORE utoin_CollapseIdenticalRegions");
    v7 = utoin_CollapseIdenticalRegions(a1, v98, v97);
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }
  }

  UTOITrace(*(a1 + 18), a1[2], v98, v97, "BEFORE utoin_LookUpWords");
  v65 = v97;
  v64 = v98;
  *&v104 = 7;
  v106[0] = 0;
  v103 = 0;
  v101 = 0;
  if (!v98 || !v97)
  {
LABEL_129:
    v12 = 2370838535;
    goto LABEL_179;
  }

  v66 = a1[10];
  if (!v66)
  {
    goto LABEL_139;
  }

  v67 = a1[2];
  v102 = 0;
  v7 = (*(v66 + 15))(a1[11], a1[12], &v101);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  if (!v101)
  {
    goto LABEL_139;
  }

  if (log_HasTraceTuningDataSubscriber(*(v67 + 4)))
  {
    v100 = 0;
    v99 = 0;
    bed_GetpElem(v64, 0, &v99);
    v7 = bed_GetcElem(v64, &v100);
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

    log_OutTraceTuningDataBinary(*(v67 + 4), 105, "", "text/plain;charset=utf-16", v99, v100);
  }

  v68 = bed_GetcElem(v64, &v102);
  if ((v68 & 0x80000000) == 0)
  {
    v69 = datac_RequestBlock(a2, 1029, (v102 + 1), &v103);
    if ((v69 & 0x80000000) != 0)
    {
      v12 = v69;
      if ((v69 & 0x1FFF) == 0x14)
      {
LABEL_139:
        v74 = a1[2];
        v76 = v97;
        v75 = v98;
        if (*(a1 + 43) == 1)
        {
          goto LABEL_142;
        }

        UTOITrace(*(a1 + 18), v74, v98, v97, "BEFORE utoin_CollapseIdenticalRegions (second)");
        v7 = utoin_CollapseIdenticalRegions(a1, v98, v97);
        if ((v7 & 0x80000000) == 0)
        {
          v74 = a1[2];
          v76 = v97;
          v75 = v98;
LABEL_142:
          UTOITrace(*(a1 + 18), v74, v75, v76, "BEFORE utoin_RemoveBlanksAtRegionBoundary");
          v77 = a1[2];
          v79 = v97;
          v78 = v98;
          v106[0] = 1;
          v104 = xmmword_1C37BEE58;
          LODWORD(v105) = 0;
          v103 = 0;
          if (!v98 || !v97)
          {
            goto LABEL_173;
          }

          v18 = bed_Goto(v98, 0);
          if ((v18 & 0x80000000) == 0)
          {
            v18 = bed_Goto(v79, 0);
            if ((v18 & 0x80000000) == 0)
            {
              LOWORD(v99) = 0;
              LOWORD(v101) = 0;
              v80 = bed_GoForward(v79, bed_marker_IsToiOfType, v106);
              v3 = v80;
              if ((v80 & 0x80000000) == 0 || (v80 & 0x1FFF) == 0x14)
              {
                while ((v3 & 0x80000000) == 0)
                {
                  v81 = bed_FindBackward(v79, bed_marker_IsToiNotOfType, &v104, &v99);
                  if ((v81 & 0x1FFF) == 0x14)
                  {
                    LOWORD(v99) = -1;
                  }

                  else
                  {
                    v3 = v81;
                    if ((v81 & 0x80000000) != 0)
                    {
                      goto LABEL_173;
                    }
                  }

                  v82 = bed_FindForward(v79, bed_marker_IsToiNotOfType, &v104, &v101);
                  if ((v82 & 0x1FFF) == 0x14)
                  {
                    LOWORD(v101) = -1;
                  }

                  else
                  {
                    v3 = v82;
                    if ((v82 & 0x80000000) != 0)
                    {
                      goto LABEL_173;
                    }
                  }

                  if (v99 == 0xFFFF)
                  {
                    v83 = 0;
                  }

                  else
                  {
                    v18 = bed_GetpElem(v79, v99, &v103);
                    if ((v18 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }

                    v83 = *(v103 + 40);
                  }

                  if (v101 == 0xFFFF)
                  {
                    goto LABEL_166;
                  }

                  v18 = bed_GetpElem(v79, v101, &v103);
                  if ((v18 & 0x80000000) != 0)
                  {
                    goto LABEL_172;
                  }

                  if (!v83 || (v84 = *(v103 + 40)) == 0 || v83 == v84 || v84 == 14 || v84 == 44)
                  {
LABEL_166:
                    LOWORD(v99) = 1;
                    bed_GoForward(v79, bed_marker_IsAt, &v99);
                  }

                  else
                  {
                    v18 = bed_Goto(v79, v99);
                    if ((v18 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }

                    v18 = utoin_RemoveBlankRegions(v77, v79, v101, v78);
                    if ((v18 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }
                  }

                  v85 = bed_GoForward(v79, bed_marker_IsToiOfType, v106);
                  v3 = v85;
                  if ((v85 & 0x80000000) != 0 && (v85 & 0x1FFF) != 0x14)
                  {
                    goto LABEL_173;
                  }
                }

                UTOITrace(*(a1 + 18), a1[2], v98, v97, "BEFORE utoin_MarkSingleLatinForSpell");
                v7 = utoin_MarkSingleLatinForSpell(v97, v98, a2);
                if ((v7 & 0x80000000) == 0)
                {
                  UTOITrace(*(a1 + 18), a1[2], v98, v97, "BEFORE utoin_SplitRegionOnWordSeparatingMarkers");
                  v7 = utoin_SplitRegionOnWordSeparatingMarkers(v97, *(a1 + 44));
                  if ((v7 & 0x80000000) == 0)
                  {
                    UTOITrace(*(a1 + 18), a1[2], v98, v97, "BEFORE utoin_Normalize");
                    v12 = utoin_Normalize(a1, v98, v97, a2);
                    if ((v12 & 0x80000000) == 0)
                    {
                      UTOITrace(*(a1 + 18), a1[2], v98, v97, "END utoin_NormalizeRegions()");
                    }

                    goto LABEL_179;
                  }
                }

                goto LABEL_178;
              }

              goto LABEL_173;
            }
          }

LABEL_172:
          v3 = v18;
LABEL_173:
          v12 = v3;
          goto LABEL_179;
        }

LABEL_178:
        v12 = v7;
        goto LABEL_179;
      }

      goto LABEL_179;
    }

    v68 = bed_ObjOpen(*a1, a1[1], a2, 1029, v106, 213);
    if ((v68 & 0x80000000) == 0)
    {
      v68 = bed_Goto(v64, 0);
      if ((v68 & 0x80000000) == 0)
      {
        v68 = bed_Goto(v65, 0);
        if ((v68 & 0x80000000) == 0)
        {
          v70 = bed_GoForward(v65, bed_marker_IsOfType, &v104);
          v12 = v70;
          v71 = v70 & 0x1FFF;
          if ((v70 & 0x80000000) != 0 && v71 != 20)
          {
            goto LABEL_131;
          }

          if ((v70 & 0x80000000) != 0)
          {
LABEL_125:
            if (v71 == 20)
            {
              v12 = 0;
            }

            else
            {
              v12 = v12;
            }

            goto LABEL_131;
          }

          while (1)
          {
            v99 = 0;
            v100 = 0;
            v68 = bed_GetpElem(v65, 0xFFFFu, &v99);
            if ((v68 & 0x80000000) != 0)
            {
              break;
            }

            v72 = *(v99 + 40) - 2;
            if (v72 <= 4)
            {
              v68 = (off_1F42D5AB0[v72])(a1, v64, v65, v106[0], a2);
              if ((v68 & 0x80000000) != 0)
              {
                break;
              }
            }

            v100 = 1;
            bed_GoForward(v65, bed_marker_IsAt, &v100);
            v73 = bed_GoForward(v65, bed_marker_IsOfType, &v104);
            v12 = v73;
            v71 = v73 & 0x1FFF;
            if ((v73 & 0x80000000) != 0 && v71 != 20)
            {
              goto LABEL_131;
            }

            if ((v73 & 0x80000000) != 0)
            {
              goto LABEL_125;
            }
          }
        }
      }
    }
  }

  v12 = v68;
LABEL_131:
  if (!log_HasTraceTuningDataSubscriber(*(v67 + 4)))
  {
    goto LABEL_134;
  }

  v100 = 0;
  v99 = 0;
  bed_GetpElem(v64, 0, &v99);
  v12 = bed_GetcElem(v64, &v100);
  if ((v12 & 0x80000000) == 0)
  {
    log_OutTraceTuningDataBinary(*(v67 + 4), 106, "", "text/plain;charset=utf-16", v99, v100);
LABEL_134:
    if (v106[0])
    {
      bed_ObjClose(v106[0]);
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_179;
    }

    goto LABEL_139;
  }

LABEL_179:
  if (v97)
  {
    bed_ObjClose(v97);
  }

  if (v98)
  {
    bed_ObjClose(v98);
  }

LABEL_183:
  v86 = *MEMORY[0x1E69E9840];
  return v12;
}