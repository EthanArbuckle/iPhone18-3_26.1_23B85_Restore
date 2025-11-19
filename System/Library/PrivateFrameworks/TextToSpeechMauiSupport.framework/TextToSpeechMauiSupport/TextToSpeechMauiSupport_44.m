uint64_t utois_ScanRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8, void *a9, int a10, char *a11, unsigned __int16 a12, unsigned __int16 a13, unsigned __int16 a14)
{
  v236 = *MEMORY[0x277D85DE8];
  v212 = 0;
  v213 = 0;
  v14 = 2370838535;
  v211 = 0;
  if (!a7)
  {
    return v14;
  }

  v16 = a7;
  if ((InitRsrcFunction(a5, a6, &v211) & 0x80000000) != 0)
  {
    return v14;
  }

  if ((bed_ObjOpen(a5, a6, v16, 1020, &v213, 213) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if ((bed_ObjOpen(a5, a6, v16, 1021, &v212, 213) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  UTOITrace(a4, v211, v213, v212, "BEFORE utois_ScanTaggedText");
  v210 = v211;
  *&__b = 0;
  if (!v213 || !v212 || (datac_RequestBlock(v16, 1021, 1u, &__b) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v202 = a1;
  v203 = a2;
  v205 = a3;
  v200 = a5;
  v201 = a6;
  v199 = a8;
  v23 = __b;
  v24 = *(__b + 16);
  if (v24 >= 2)
  {
    v208 = a4;
    v25 = *(__b + 8);
    v26 = v25 + 16;
    v27 = 1;
    v28 = 1;
    do
    {
      v29 = &v25[16 * v28];
      if (v29[5] == 7 && v29[10] == 43 && v24 > (v27 + 1))
      {
        v30 = (v27 + 1);
        v31 = &v26[16 * v30];
        while (*(v31 - 11) != 7)
        {
          ++v30;
          v31 += 16;
          if (v24 == v30)
          {
            goto LABEL_26;
          }
        }

        if (*(v31 - 6) == 43 && v29[8] == *(v31 - 8))
        {
          v206 = v26;
          if (v30 >= (v27 + 1))
          {
            v197 = v16;
            v32 = v27 + 1;
            do
            {
              v33 = &v25[16 * v32];
              v36 = *(v33 + 6);
              v35 = v33 + 12;
              v34 = v36;
              if (v36)
              {
                heap_Free(*(v210 + 8), v34);
                *v35 = 0;
              }

              ++v32;
            }

            while (v32 <= v30);
            v23 = __b;
            v16 = v197;
          }

          cstdlib_memmove(v31 - 16, v31, (*(v23 + 16) - v30) << 6);
          v37 = *(__b + 16) - 1;
          *(__b + 16) = v37;
          cstdlib_memmove(&v25[16 * v28], &v25[16 * (v27 + 1)], (v37 - v27) << 6);
          v23 = __b;
          LOWORD(v24) = *(__b + 16) - 1;
          *(__b + 16) = v24;
          --v28;
          v26 = v206;
        }
      }

LABEL_26:
      v27 = ++v28;
    }

    while (v28 < v24);
    a4 = v208;
    if (v24 >= 2u)
    {
      v38 = v25 + 6;
      v39 = 0x1080200080;
      v40 = 1;
      v41 = 1;
      while (1)
      {
        while (1)
        {
          v42 = &v25[16 * v41];
          if (v42[5] != 7)
          {
            goto LABEL_78;
          }

          v43 = (v40 + 1);
          if (v24 > (v40 + 1))
          {
            break;
          }

LABEL_34:
          v47 = v42[10];
          if (v47 != 15)
          {
            v42[9] = v25[9] + v25[8] - v42[8];
            if (v47 == 43)
            {
              v48 = v42[6];
              v49 = v25[7] + v25[6];
              v50 = v49 >= v48;
              v51 = v49 - v48;
              if (v50)
              {
                v42[7] = v51;
              }
            }

            goto LABEL_78;
          }

          v42[9] = 0;
          if (!*v42)
          {
LABEL_36:
            v42[5] = 999;
          }

LABEL_78:
          v40 = ++v41;
          if (v41 >= v24)
          {
            a4 = v208;
            goto LABEL_87;
          }
        }

        v44 = (v40 + 1);
        v45 = &v25[16 * v44];
        v46 = &v38[16 * v44];
        while (v45[5] != 7)
        {
          ++v44;
          v45 += 16;
          v46 += 16;
          if (v24 == v44)
          {
            goto LABEL_34;
          }
        }

        v52 = v42[10];
        v53 = v45[10];
        if (v52 == 43)
        {
          if (v53 == 43)
          {
            v54 = *(v45 + 6);
            if (v54)
            {
              v207 = v38;
              v55 = v39;
              heap_Free(*(v210 + 8), v54);
              v39 = v55;
              v38 = v207;
              *(v45 + 6) = 0;
            }

            v56 = 0;
            v45[5] = 999;
          }

          else
          {
            if (v24 > v44)
            {
              v58 = v44;
              do
              {
                v59 = *(v46 - 1);
                v60 = v59 > 0x24 || ((1 << v59) & v39) == 0;
                if (!v60 || v59 == 999)
                {
                  v61 = *v46 - v42[7];
                  *v46 = v61;
                  if (v58 > v44 && v61 > v45[6])
                  {
                    *v46 = v61 - v45[7];
                  }
                }

                ++v58;
                v46 += 16;
              }

              while (v58 < v24);
            }

            v56 = 0;
          }

          v62 = v45[6];
          v63 = v42[6];
          goto LABEL_67;
        }

        if (v52 == v53)
        {
          break;
        }

        if (v42[8] != v45[8])
        {
          if (v52 == 15 && !*v42)
          {
            goto LABEL_36;
          }

          v56 = 0;
          v62 = v45[6];
          v63 = v42[6] + v42[7];
LABEL_67:
          v42[7] = v62 - v63;
LABEL_74:
          if (v42[5] == 999)
          {
            if (v56)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v42[9] = v45[8] - v42[8];
            if (v56)
            {
LABEL_83:
              v67 = v44 + 1;
              if (v67 < v24)
              {
                v64 = &v25[16 * v67];
                v65 = (v24 - v44) << 6;
                v66 = v45;
                goto LABEL_85;
              }

              goto LABEL_86;
            }
          }

          goto LABEL_78;
        }

        v42[10] = v53;
        if (*v45)
        {
          goto LABEL_70;
        }

        v45[10] = v53;
        if (!*v42)
        {
          goto LABEL_36;
        }

        if (v43 < v24)
        {
          v64 = &v25[16 * v43];
          v65 = (v24 - v40) << 6;
          v66 = &v25[16 * v41];
LABEL_85:
          v68 = v39;
          cstdlib_memmove(v66, v64, v65);
          v39 = v68;
        }

LABEL_86:
        LOWORD(v24) = v24 - 1;
        v40 = v41;
        a4 = v208;
        if (v41 >= v24)
        {
          goto LABEL_87;
        }
      }

      if (v52 == 60 || v52 == 16)
      {
        v56 = *v45;
        if (*v45)
        {
LABEL_70:
          v56 = 1;
        }

        else
        {
          v45[5] = 999;
        }
      }

      else
      {
        v56 = 0;
      }

      goto LABEL_74;
    }
  }

LABEL_87:
  *(__b + 16) = v24;
  UTOITrace(a4, v211, v213, v212, "BEFORE utois_ScanTextForSpell");
  v70 = v212;
  v69 = v213;
  *&v228 = 21;
  LOWORD(v222) = 0;
  __src = 0;
  v225 = 0;
  v226 = 0;
  v234 = 0u;
  v235 = 0u;
  __b = 0u;
  v233 = 0u;
  v223 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerSetTypeOfInput_0;
  v233 = unk_26ECDC488;
  v234 = xmmword_26ECDC498;
  v235 = unk_26ECDC4A8;
  if (!v69)
  {
    goto LABEL_216;
  }

  if (!v70)
  {
    goto LABEL_216;
  }

  if ((bed_GetcElem(v69, &v222) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if ((datac_RequestBlock(v16, 1012, 1u, &v223) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v71 = *(v223 + 8);
  if ((bed_Goto(v70, 0) & 0x80000000) != 0 || (bed_GetpElem(v70, 0, &__src) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v72 = *(__src + 8);
  v73 = bed_GoForward(v70, bed_marker_IsOfType, &v228);
  if ((v73 & 0x1FFF) != 0x14)
  {
    if (v73 < 0 || (bed_GetpElem(v70, 0xFFFFu, &v226) & 0x80000000) != 0)
    {
      goto LABEL_216;
    }

    for (i = v226; v226; i = v226)
    {
      v82 = v16;
      LOWORD(v221) = 1;
      v83 = *(i + 40);
      MarkerArgStr = marker_getMarkerArgStr(3u);
      if (cstdlib_strcmp((v71 + v83), MarkerArgStr) && (v85 = *(v226 + 40), v86 = marker_getMarkerArgStr(4u), cstdlib_strncmp((v71 + v85), v86, 6uLL)) && (v87 = *(v226 + 40), v88 = marker_getMarkerArgStr(6u), cstdlib_strcmp((v71 + v87), v88)) && (v89 = *(v226 + 40), v90 = marker_getMarkerArgStr(7u), cstdlib_strcmp((v71 + v89), v90)) && (v91 = *(v226 + 40), v92 = marker_getMarkerArgStr(8u), cstdlib_strcmp((v71 + v91), v92)))
      {
        v93 = 0;
        v94 = 14;
      }

      else
      {
        v95 = *(v226 + 40);
        v96 = marker_getMarkerArgStr(5u);
        if (cstdlib_strcmp((v71 + v95), v96) && (v97 = *(v226 + 40), v98 = marker_getMarkerArgStr(6u), cstdlib_strcmp((v71 + v97), v98)) && (v99 = *(v226 + 40), v100 = marker_getMarkerArgStr(7u), cstdlib_strcmp((v71 + v99), v100)) && (v101 = *(v226 + 40), v102 = marker_getMarkerArgStr(8u), cstdlib_strcmp((v71 + v101), v102)))
        {
          v94 = 14;
        }

        else
        {
          v94 = 44;
        }

        v93 = 1;
      }

      LOWORD(v221) = 1;
      bed_GoForward(v70, bed_marker_IsAt, &v221);
      v103 = bed_GoForward(v70, bed_marker_IsOfType, &v228);
      v16 = v82;
      if ((v103 & 0x1FFF) == 0x14)
      {
        v225 = 0;
      }

      else if (v103 < 0 || (bed_GetpElem(v70, 0xFFFFu, &v225) & 0x80000000) != 0)
      {
        goto LABEL_216;
      }

      if (v93)
      {
        v104 = *(v226 + 32);
        DWORD2(v233) = *(v226 + 24);
        LODWORD(v234) = v104;
        v105 = v225 ? *(v225 + 32) : v72 + v222;
        DWORD1(v234) = v105 - v104;
        DWORD2(v234) = v94;
        HIDWORD(v233) = v105 - v104;
        if (v105 != v104 && (bed_marker_InjectFixedRefMarker(v70, &__b) & 0x80000000) != 0)
        {
          goto LABEL_216;
        }
      }

      v106 = bed_GoForward(v70, bed_marker_IsOfType, &v228);
      if ((v106 & 0x1FFF) == 0x14)
      {
        break;
      }

      if (v106 < 0 || (bed_GetpElem(v70, 0xFFFFu, &v226) & 0x80000000) != 0)
      {
        goto LABEL_216;
      }
    }
  }

  UTOITrace(a4, v211, v213, v212, "BEFORE utois_ScanTextForMWRegions");
  v75 = v211;
  v74 = v212;
  v76 = v213;
  v225 = 0;
  v226 = 0;
  LOWORD(v219) = 0;
  v222 = 0;
  v223 = 0;
  __len = 0;
  v216 = 0;
  __n = 0;
  LODWORD(v221) = 0;
  v234 = 0u;
  v235 = 0u;
  __b = 0u;
  v233 = 0u;
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  LODWORD(v228) = 1;
  DWORD1(v229) = 998;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerSetTypeOfInput_0;
  v233 = unk_26ECDC488;
  v234 = xmmword_26ECDC498;
  v235 = unk_26ECDC4A8;
  cstdlib_memset(&v228, 0, 0x40uLL);
  v228 = MarkerUDCTREF_0;
  v229 = unk_26ECDC4C8;
  v230 = xmmword_26ECDC4D8;
  v231 = unk_26ECDC4E8;
  if (!v202)
  {
    goto LABEL_207;
  }

  if (((*(v202 + 120))(v203, v205, &v221) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if (!v221)
  {
    goto LABEL_207;
  }

  v77 = a12 <= a13 ? a13 : a12;
  __src = 0;
  v216 = 0;
  if ((datac_RequestBlock(v16, 1021, 1u, &v225) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v78 = bed_GetpElem(v76, 0, &v222);
  if (v78 < 0)
  {
    goto LABEL_216;
  }

  v79 = *(v225 + 16);
  if (!*(v225 + 16) || *(*(v225 + 8) + 20) != 0x4000)
  {
    goto LABEL_216;
  }

  v196 = v78;
  v193 = v77;
  v194 = v76;
  v195 = v74;
  v209 = a4;
  v198 = v16;
  v226 = *(v225 + 8);
  LOWORD(v219) = v79;
  if (v79 == 1)
  {
    v80 = 0;
    goto LABEL_198;
  }

  v107 = 0;
  v108 = 0;
  v80 = 0;
  v109 = 1;
  v110 = 2;
  v111 = 168;
  while (1)
  {
    v112 = (v226 + (v109 << 6));
    if (v112[5] != 32 || v112[10] != 1)
    {
      goto LABEL_197;
    }

    if (v107)
    {
      v113 = v112[8];
      if (v108 == v113)
      {
        goto LABEL_196;
      }
    }

    else
    {
      v113 = v112[8];
    }

    v114 = v79;
    v115 = (v226 + v111);
    v116 = v110;
    do
    {
      if (v116 >= v114)
      {
        goto LABEL_154;
      }

      v117 = v116;
      if (*(v115 - 5) == 32)
      {
        break;
      }

      v118 = *v115;
      v115 += 16;
      ++v116;
    }

    while (!v118);
    v119 = v117;
    v120 = (v226 + (v117 << 6));
    if (v120[5] == 32)
    {
      break;
    }

LABEL_154:
    v107 = 1;
    v108 = v113;
LABEL_197:
    ++v109;
    v79 = v219;
    ++v110;
    v111 += 64;
    if (v109 >= v219)
    {
      goto LABEL_198;
    }
  }

  v108 = v113;
  if (v120[10] || v113 == v120[8])
  {
    goto LABEL_196;
  }

  v196 = bed_Goto(v195, v109);
  if (v196 < 0)
  {
    goto LABEL_198;
  }

  v124 = *(v226 + 32);
  v192 = *(v226 + (v109 << 6) + 32) - v124;
  v125 = (*(v226 + (v109 << 6) + 32) - v124);
  v126 = (*(v226 + (v119 << 6) + 32) - v124);
  if (v209 == 1)
  {
    log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (scan for multiword in dict between text positions %u and %u)", v121, v122, v123, (*(v226 + (v109 << 6) + 32) - v124));
  }

  LOWORD(__len) = a13;
  if ((v126 - v125) > a13)
  {
    goto LABEL_198;
  }

  LOWORD(__len) = v126 - v125;
  v127 = __src;
  if (__src)
  {
    v128 = (v126 - v125);
  }

  else
  {
    v127 = heap_Calloc(*(v75 + 8), a13 + 1, 1);
    __src = v127;
    if (!v127)
    {
      goto LABEL_308;
    }

    v128 = __len;
  }

  cstdlib_memmove(v127, (v222 + v125), v128);
  if (v216 || (v216 = heap_Calloc(*(v75 + 8), 1, a14 + a12 * a14 + 1)) != 0)
  {
    if (!v223)
    {
      v196 = bed_ObjOpen(v200, v201, v198, 1029, &v223, 213);
      if (v196 < 0)
      {
        goto LABEL_198;
      }
    }

    if (v209 == 1)
    {
      if (!v80)
      {
        v80 = heap_Calloc(*(v75 + 8), v193 + 1, 1);
        if (!v80)
        {
          goto LABEL_308;
        }
      }

      cstdlib_strncpy(v80, __src, __len);
      v80[__len] = 0;
      log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (lookup User Dict for %s)", v133, v134, v135, v80);
    }

    v196 = utoin_LookUpUdctWord(v202, v203, v205, &__src, 1, a13, a12, &v227);
    if (v196 < 0)
    {
      goto LABEL_198;
    }

    if ((HIDWORD(__len) - 2) >= 2 && HIDWORD(__len) != 43 && (HIDWORD(__len) != 16 || !LH_stricmp(a11, "jpj") && HIDWORD(__len) != 2))
    {
      if (v209 == 1)
      {
        log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (no (valid) User Dict entry found)", v136, v137, v138, v190);
      }

      goto LABEL_196;
    }

    if (v209 == 1)
    {
      cstdlib_strncpy(v80, v216, __n);
      v80[__n] = 0;
      log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (found User Dict entry %s)", v139, v140, v141, v80);
    }

    if (LH_stricmp(a11, &v227))
    {
      v142 = &v227;
    }

    else
    {
      v142 = 0;
    }

    v196 = utoin_ReplaceWord(v194, v195, v192, &__src, 0, v198, v142);
    if (v196 < 0)
    {
      goto LABEL_198;
    }

    v196 = bed_GetpElem(v194, 0, &v222);
    if (v196 < 0)
    {
      goto LABEL_198;
    }

    if (HIDWORD(__len) == 16)
    {
      v196 = bed_Goto(v195, v109);
      if (v196 < 0)
      {
        goto LABEL_198;
      }

      v146 = v226 + (v109 << 6);
      DWORD2(v233) = *(v146 + 24);
      HIDWORD(v233) = __len;
      LODWORD(v234) = *(v146 + 32);
      DWORD1(v234) = *(v226 + (v119 << 6) + 32) - v234;
      DWORD2(v234) = 16;
      v196 = bed_marker_InjectFixedRefMarker(v195, &__b);
      if (v196 < 0)
      {
        goto LABEL_198;
      }

      v196 = bed_GetpElem(v195, 0, &v226);
      if (v196 < 0)
      {
        goto LABEL_198;
      }

      v196 = bed_GetcElem(v195, &v219);
      if (v196 < 0)
      {
        goto LABEL_198;
      }

      v147 = v226 + (v109 << 6);
      DWORD2(v229) = *(v147 + 24);
      HIDWORD(v229) = __len;
      LODWORD(v230) = *(v147 + 32);
      DWORD1(v230) = *(v226 + (v119 << 6) + 32) - v230;
      v145 = 16;
LABEL_193:
      DWORD2(v230) = v145;
      if ((bed_marker_InjectFixedRefMarker(v195, &v228) & 0x80000000) != 0)
      {
        goto LABEL_216;
      }

      v196 = bed_GetpElem(v195, 0, &v226);
      if (v196 < 0)
      {
        goto LABEL_198;
      }

      v196 = bed_GetcElem(v195, &v219);
      if (v196 < 0)
      {
        goto LABEL_198;
      }

      goto LABEL_196;
    }

    if (HIDWORD(__len) == 43)
    {
      v196 = bed_Goto(v195, v109);
      if (v196 < 0)
      {
        goto LABEL_198;
      }

      v143 = v226 + (v109 << 6);
      DWORD2(v233) = *(v143 + 24);
      HIDWORD(v233) = __len;
      LODWORD(v234) = *(v143 + 32);
      DWORD1(v234) = __n;
      DWORD2(v234) = 43;
      v196 = bed_marker_InjectFixedRefMarker(v195, &__b);
      if (v196 < 0)
      {
        goto LABEL_198;
      }

      v144 = v226 + (v109 << 6);
      DWORD2(v229) = *(v144 + 24);
      HIDWORD(v229) = __len;
      LODWORD(v230) = *(v144 + 32);
      DWORD1(v230) = __n;
      v145 = 43;
      goto LABEL_193;
    }

LABEL_196:
    v107 = 1;
    goto LABEL_197;
  }

LABEL_308:
  log_OutPublic(*(v75 + 32), &modPP_5, 1923, 0, v129, v130, v131, v132, v190);
  v196 = -1924128758;
LABEL_198:
  if (__src)
  {
    heap_Free(*(v75 + 8), __src);
  }

  if (v216)
  {
    heap_Free(*(v75 + 8), v216);
  }

  if (v80)
  {
    heap_Free(*(v75 + 8), v80);
  }

  if (v223)
  {
    bed_ObjClose(v223);
  }

  v16 = v198;
  a4 = v209;
  if (v196 < 0)
  {
LABEL_216:
    LODWORD(v14) = 0;
    goto LABEL_217;
  }

LABEL_207:
  UTOITrace(a4, v211, v213, v212, "BEFORE utois_ScanUntaggedText");
  v149 = v212;
  v148 = v213;
  v227 = 7;
  if (!v213 || !v212)
  {
    goto LABEL_304;
  }

  IsCursorAtEnd = bed_Goto(v213, 0);
  if (IsCursorAtEnd < 0 || (IsCursorAtEnd = bed_Goto(v149, 0), IsCursorAtEnd < 0) || (v219 = 0, IsCursorAtEnd = bed_IsCursorAtEnd(v148, &v219), IsCursorAtEnd < 0))
  {
LABEL_303:
    LODWORD(v14) = IsCursorAtEnd;
    goto LABEL_304;
  }

  if (!v219)
  {
    while (1)
    {
      v218 = 0;
      v152 = bed_GoForward(v149, bed_marker_IsOfType, &v227);
      if (v152 < 0)
      {
        LODWORD(v14) = v152;
        if ((v152 & 0x1FFF) != 0x14)
        {
          goto LABEL_304;
        }
      }

      v225 = 0;
      v224 = 0;
      v222 = 0;
      v223 = 0;
      __src = 0;
      __len = 0;
      v216 = 0;
      v221 = 0;
      v230 = 0u;
      v231 = 0u;
      v228 = 0u;
      v229 = 0u;
      v220 = 0;
      cstdlib_memset(&v228, 0, 0x40uLL);
      v228 = MarkerSetTypeOfInput_0;
      v229 = unk_26ECDC488;
      v230 = xmmword_26ECDC498;
      v231 = unk_26ECDC4A8;
      cstdlib_memset(&__src, 0, 0x18uLL);
      __len = v200;
      v216 = v201;
      v153 = bed_GetpElem(v149, 0, &v223);
      if (v153 < 0)
      {
        LODWORD(v14) = v153;
        goto LABEL_298;
      }

      v154 = a4;
      v155 = *(v223 + 24);
      v156 = *(v223 + 32);
      v157 = datac_RequestBlock(v16, 1021, 1u, &v221);
      if (v157 < 0)
      {
        LODWORD(v14) = v157;
        a4 = v154;
        goto LABEL_298;
      }

      v158 = *(v221 + 8);
      v159 = *(v221 + 16);
      v160 = bed_GetpElem(v149, 0xFFFFu, &v222);
      if ((v160 & 0x1FFF) != 0xF)
      {
        break;
      }

      v161 = bed_GetcElem(v148, &v224);
      if (v161 < 0)
      {
        goto LABEL_296;
      }

      if (!v159)
      {
        goto LABEL_257;
      }

      v162 = 0;
      v163 = 0;
      v164 = (v158 + 20);
      do
      {
        v165 = *v164;
        v164 += 16;
        if (v165 == 7)
        {
          v163 = v162;
        }

        ++v162;
      }

      while (v159 != v162);
      if (!v163)
      {
LABEL_257:
        v170 = *(v158 + 24);
        goto LABEL_258;
      }

      v166 = (v158 + (v163 << 6));
      v167 = v166[10];
      if (v167 == 44 || v167 == 14)
      {
        goto LABEL_255;
      }

      v169 = v166[6];
      if (v169 != v155 || v166[8] != v156)
      {
        goto LABEL_256;
      }

      v170 = v166[7] + v155;
LABEL_258:
      v204 = v170;
      v161 = bed_GetiElem(v148, &v224 + 1);
      if (v161 < 0)
      {
        goto LABEL_296;
      }

      LOWORD(v224) = v224 - HIWORD(v224);
      v161 = bed_Goto(v148, HIWORD(v224) + v224);
      if (v161 < 0)
      {
        goto LABEL_296;
      }

      v161 = bed_Insert(v148, &v220, 1);
      if (v161 < 0)
      {
        goto LABEL_296;
      }

      v161 = bed_GetpElem(v148, HIWORD(v224), &v225);
      if (v161 < 0)
      {
        goto LABEL_296;
      }

      v176 = v224;
      if (v224)
      {
        v177 = 0;
        while (!*v199)
        {
LABEL_281:
          v177 += utf8_determineUTF8CharLength(*(v225 + v177));
LABEL_282:
          v176 = v224;
          if (v224 <= v177)
          {
            goto LABEL_283;
          }
        }

        v178 = 0;
        v179 = 0;
        while (1)
        {
          v180 = v225;
          v181 = v224;
          v226 = 0;
          if (!v225 || v224 <= v177 || (InitRsrcFunction(__len, v216, &v226) & 0x80000000) != 0)
          {
            LODWORD(v14) = -1924128761;
            goto LABEL_297;
          }

          v182 = nuance_pcre_exec(a9, a10, *(v199 + 2) + *(*(v199 + 1) + v178), 0, v180, v181, v177, 0x10u, &__b, 30);
          if ((v182 & 0x80000000) == 0)
          {
            if (v182)
            {
              LODWORD(__src) = *(*(v199 + 1) + v178 + 4);
              WORD2(__src) = __b;
              HIWORD(__src) = WORD2(__b) - __b;
            }

LABEL_276:
            LODWORD(v188) = *v199;
LABEL_277:
            if (v188 <= v179)
            {
              goto LABEL_281;
            }

            DWORD2(v229) = v204 + v177;
            HIDWORD(v229) = HIWORD(__src);
            LODWORD(v230) = v156 + WORD2(__src) + HIWORD(v224);
            DWORD1(v230) = HIWORD(__src);
            DWORD2(v230) = __src;
            v161 = bed_marker_InjectFixedRefMarker(v149, &v228);
            if ((v161 & 0x80000000) == 0)
            {
              v161 = datac_RequestBlock(v16, 1021, 1u, &v221);
              if ((v161 & 0x80000000) == 0)
              {
                v177 = HIWORD(__src) + WORD2(__src);
                goto LABEL_282;
              }
            }

            goto LABEL_296;
          }

          v183 = nuance_pcre_ErrorToLhError(v182);
          if (v183 >> 20 != 2213)
          {
            goto LABEL_276;
          }

          LODWORD(v14) = v183;
          if ((v183 & 0x1FFF) != 0x14)
          {
            break;
          }

          ++v179;
          v188 = *v199;
          v178 += 8;
          if (v179 >= v188)
          {
            goto LABEL_277;
          }
        }

        if ((v183 & 0x1FFF) == 0xA)
        {
          log_OutPublic(*(v226 + 32), &modPP_5, 11002, 0, v184, v185, v186, v187, v191);
          v176 = v224;
          goto LABEL_287;
        }

        log_OutPublic(*(v226 + 32), &modPP_5, 11027, "%s%x", v184, v185, v186, v187, "lhError");
        goto LABEL_297;
      }

LABEL_283:
      LODWORD(v14) = 0;
LABEL_287:
      v161 = bed_Remove(v148, (HIWORD(v224) + v176), 1u);
      if (v161 < 0)
      {
        goto LABEL_296;
      }

      if (v222)
      {
        v161 = bed_GetpElem(v149, 0xFFFFu, &v222);
        if (v161 < 0)
        {
          goto LABEL_296;
        }

        v189 = (v224 + HIWORD(v224) + *(v222 + 36));
      }

      else
      {
        v189 = v224 + HIWORD(v224);
      }

      v161 = bed_Goto(v148, v189);
      if ((v161 & 0x80000000) == 0)
      {
        if ((~v14 & 0xA) != 0)
        {
          LODWORD(v14) = 0;
        }

        goto LABEL_297;
      }

LABEL_296:
      LODWORD(v14) = v161;
LABEL_297:
      a4 = v154;
LABEL_298:
      if ((v14 & 0x80000000) != 0 && (v14 & 0x1FFF) != 0xA)
      {
        goto LABEL_304;
      }

      v218 = 1;
      bed_GoForward(v149, bed_marker_IsAt, &v218);
      IsCursorAtEnd = bed_IsCursorAtEnd(v148, &v219);
      if (IsCursorAtEnd < 0)
      {
        goto LABEL_303;
      }

      if (v219)
      {
        goto LABEL_214;
      }
    }

    LODWORD(v14) = v160;
    a4 = v154;
    if (v160 < 0)
    {
      goto LABEL_298;
    }

    v171 = *(v222 + 32);
    LOWORD(v224) = v171 - v156;
    if (!v159)
    {
      goto LABEL_257;
    }

    v172 = 0;
    v173 = 0;
    v174 = (v158 + 20);
    do
    {
      if (v174[3] >= v171)
      {
        break;
      }

      v175 = *v174;
      v174 += 16;
      if (v175 == 7)
      {
        v173 = v172;
      }

      ++v172;
    }

    while (v159 != v172);
    if (!v173)
    {
      goto LABEL_257;
    }

    v166 = (v158 + (v173 << 6));
LABEL_255:
    v169 = v166[6];
LABEL_256:
    v170 = v166[7] + v169;
    goto LABEL_258;
  }

  LODWORD(v14) = 0;
LABEL_214:
  if ((v14 & 0x1FFF) != 0xA)
  {
    LODWORD(v14) = 0;
  }

LABEL_304:
  if ((v14 & 0x80000000) == 0 || (v14 & 0x1FFF) == 0xA)
  {
    UTOITrace(a4, v211, v213, v212, "BEFORE utois_MarkUnknownRegions");
    if ((utois_MarkUnknownRegions(v213, v212) & 0x80000000) == 0)
    {
      UTOITrace(a4, v211, v213, v212, "BEFORE utois_AlignMarkers");
      utois_AlignMarkers(v16);
    }
  }

LABEL_217:
  if (v212)
  {
    bed_ObjClose(v212);
  }

  if (v213)
  {
    bed_ObjClose(v213);
  }

  if ((v14 & 0x1FFF) == 0xA)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t utois_MarkUnknownRegions(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21[0] = 7;
  v18 = 0;
  v19 = 0;
  v17 = 0u;
  memset(__b, 0, sizeof(__b));
  cstdlib_memset(__b, 0, 0x40uLL);
  __b[0] = MarkerSetTypeOfInput_0;
  __b[1] = unk_26ECDC488;
  __b[2] = xmmword_26ECDC498;
  v17 = unk_26ECDC4A8;
  result = 2370838535;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  result = bed_Goto(a2, 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a2, 0, &v20);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GoForward(a2, bed_marker_IsOfType, v21);
  if ((result & 0x1FFF) != 0x14)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = bed_GetpElem(a2, 0xFFFFu, &v19);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!v19)
    {
      goto LABEL_7;
    }

    v7 = v20[8];
    if (v19[8] > v7)
    {
      DWORD2(__b[1]) = v20[6];
      HIDWORD(__b[1]) = v19[6] - DWORD2(__b[1]);
      LODWORD(__b[2]) = v7;
      *(&__b[2] + 4) = (v19[8] - v20[8]);
    }

    v8 = v20[8];
    v5 = v20[9] + v8;
    v6 = v20[7] + v20[6];
    if (v19[8] > v8)
    {
      goto LABEL_8;
    }

    while (1)
    {
LABEL_19:
      v15 = 1;
      bed_GoForward(a2, bed_marker_IsAt, &v15);
      result = bed_GoForward(a2, bed_marker_IsOfType, v21);
      if ((result & 0x1FFF) == 0x14)
      {
        v9 = 0;
        v18 = 0;
      }

      else
      {
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_GetpElem(a2, 0xFFFFu, &v18);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v9 = v18;
        if (v18)
        {
          v10 = v18[8];
          v11 = v18[6];
          goto LABEL_26;
        }
      }

      v10 = v5;
      v11 = v6;
LABEL_26:
      v12 = v19[9];
      v13 = v12 + v19[8];
      if (v10 > v13)
      {
        v14 = v19[7];
        DWORD2(__b[1]) = v14 + v19[6];
        HIDWORD(__b[1]) = v11 - (v14 + v19[6]);
        LODWORD(__b[2]) = v13;
        *(&__b[2] + 4) = v10 - (v12 + v19[8]);
        result = bed_marker_InjectFixedRefMarker(a2, __b);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!v18)
        {
          return 0;
        }

        result = bed_GetpElem(a2, 0xFFFFu, &v18);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v9 = v18;
      }

      result = 0;
      v19 = v9;
      if (!v9)
      {
        return result;
      }
    }
  }

  v19 = 0;
LABEL_7:
  *(&__b[1] + 8) = *(v20 + 6);
  DWORD2(__b[2]) = 0;
  v5 = v20[9] + v20[8];
  v6 = v20[7] + v20[6];
LABEL_8:
  result = bed_marker_InjectFixedRefMarker(a2, __b);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v19)
  {
    result = bed_GetpElem(a2, 0xFFFFu, &v19);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v19)
    {
      goto LABEL_19;
    }
  }

  return 0;
}

uint64_t utois_AlignMarkers(uint64_t a1)
{
  memset(__dst, 0, sizeof(__dst));
  v20 = 0;
  result = datac_RequestBlock(a1, 1021, 1u, &v20);
  if ((result & 0x80000000) == 0)
  {
    v2 = *(v20 + 16);
    if (*(v20 + 16))
    {
      v3 = *(v20 + 8);
      if (*(v3 + 20) == 0x4000 && v2 != 1)
      {
        v5 = 1;
        do
        {
          v6 = (v3 + (v5 << 6));
          if (v6[5] == 7 && v6[10] == 43 && v5 + 1 < v2)
          {
            v8 = (v5 + 1);
            do
            {
              v9 = v3 + (v8 << 6);
              v12 = *(v9 + 32);
              v10 = (v9 + 32);
              v11 = v12;
              v13 = v6[8];
              if (v12 <= v13)
              {
                break;
              }

              if (v11 >= v6[9] + v13)
              {
                break;
              }

              *v10 = v13;
              ++v8;
            }

            while (v8 < v2);
          }

          ++v5;
        }

        while (v5 != v2);
        v14 = 1;
        do
        {
          v15 = v14 + 1;
          if (v15 >= v2 || (v16 = (v3 + (v15 << 6)), v17 = (v3 + (v14 << 6)), *(v16 + 8) >= *(v17 + 8)))
          {
            ++v14;
          }

          else
          {
            cstdlib_memcpy(__dst, (v3 + (v15 << 6)), 0x40uLL);
            v18 = v17[1];
            *v16 = *v17;
            v16[1] = v18;
            v19 = v17[3];
            v16[2] = v17[2];
            v16[3] = v19;
            result = cstdlib_memcpy(v17, __dst, 0x40uLL);
            v14 = 0;
          }
        }

        while (v14 < v2);
      }
    }
  }

  return result;
}

uint64_t sysdct_char_LookUp(void *a1, uint64_t a2, void *a3, unsigned __int16 *a4, int a5, int a6, const char *a7)
{
  LOBYTE(__c) = 0;
  v37 = 0;
  v36 = 0;
  v34 = (*(*a1 + 96))(a1[1], a1[2], "char", a2, &v37, &v36, &__c);
  if ((v34 & 0x80000000) != 0 || !v36)
  {
    return v34;
  }

  v9 = 0;
  while (1)
  {
    v10 = cstdlib_strchr(*(v37 + 8 * v9), __c);
    v11 = *(v37 + 8 * v9);
    v12 = cstdlib_strlen(v11);
    if (v10)
    {
      *v10 = 0;
    }

    v13 = cstdlib_strlen(v11) ? cstdlib_strlen(v11) + 1 : 1;
    if (v12 <= v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = (*(v37 + 8 * v9) + v13);
      v15 = cstdlib_strchr(v14, __c);
      if (v15)
      {
        *v15 = 0;
      }

      if (cstdlib_strlen(v14))
      {
        v13 += cstdlib_strlen(v14) + 1;
      }

      else
      {
        LOWORD(v13) = v13 + 1;
      }
    }

    if (v12 <= v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = (*(v37 + 8 * v9) + v13);
      v17 = cstdlib_strchr(v16, __c);
      if (v17)
      {
        *v17 = 0;
      }

      LOWORD(v13) = cstdlib_strlen(v16) ? v13 + cstdlib_strlen(v16) + 1 : v13 + 1;
    }

    if (v12 <= v13)
    {
      goto LABEL_38;
    }

    v18 = *(v37 + 8 * v9);
    v19 = (v18 + v13);
    v20 = cstdlib_strchr(v19, __c);
    if (v20)
    {
      *v20 = 0;
    }

    if (v18)
    {
      v21 = (v18 + v13);
      do
      {
        v22 = cstdlib_strchr(v21, 44);
        v23 = v22;
        if (v22)
        {
          *v22 = 0;
        }

        v24 = cstdlib_strcmp(v21, a7);
        if (v23)
        {
          v21 = v23 + 1;
        }

        else
        {
          v21 = 0;
        }
      }

      while (v23 && v24);
      v25 = v24 == 0;
      if (!v24)
      {
        v25 = 1;
        goto LABEL_42;
      }

      if (cstdlib_strlen(v19))
      {
        goto LABEL_49;
      }
    }

    else
    {
LABEL_38:
      v25 = 0;
    }

    if (cstdlib_strcmp("normal", a7))
    {
      goto LABEL_49;
    }

LABEL_42:
    if (!a5)
    {
      goto LABEL_55;
    }

    if (a6 == 1)
    {
      break;
    }

    if (!a6)
    {
      goto LABEL_52;
    }

LABEL_49:
    if (!v25 && ++v9 < v36)
    {
      continue;
    }

    return v34;
  }

  if (v16 && cstdlib_strlen(v16) && *v16 != 49)
  {
    goto LABEL_49;
  }

LABEL_52:
  if (v14 && cstdlib_strlen(v14))
  {
    v26 = cstdlib_strlen(v14);
    *a4 = v26;
    v27 = v26 + 1;
    v28 = a3;
    v29 = v14;
    goto LABEL_56;
  }

LABEL_55:
  v30 = cstdlib_strlen(v11);
  *a4 = v30;
  v27 = v30 + 1;
  v28 = a3;
  v29 = v11;
LABEL_56:
  cstdlib_memmove(v28, v29, v27);
  return v34;
}

uint64_t sysdct_wpcrf_LookUp_Chinese(void *a1, const void *a2, int a3, char *a4, char *a5, _BOOL4 *a6)
{
  __c = 0;
  v42 = 0;
  cstdlib_memcpy(__c_1, a2, (a3 + 1));
  __c_1[a3] = 0;
  v43 = 0;
  v11 = (*(*a1 + 96))(a1[1], a1[2], "wpcrf", __c_1, &v42, &v43, &__c);
  if ((v11 & 0x80000000) == 0)
  {
    if (v43)
    {
      v12 = 0;
      while (1)
      {
        v13 = cstdlib_strchr(*(v42 + 8 * v12), __c);
        if (v13)
        {
          break;
        }

        if (++v12 >= v43)
        {
          return v11;
        }
      }

      v18 = v13;
      v19 = *(v42 + 8 * v12);
      v20 = v13 - v19;
      if (v13 - v19 <= 0 && v13 == v19)
      {
        v23 = __c_1;
        v22 = a4;
      }

      else
      {
        if (v20 < 0)
        {
          LODWORD(v20) = v19 - v13;
        }

        cstdlib_strncat(a5, v19, v20);
        v22 = a4;
        v23 = a5;
      }

      cstdlib_strcat(v22, v23);
      v24 = v18 + 1;
      v25 = cstdlib_strchr(v18 + 1, __c);
      if (v25)
      {
        v26 = v25;
        v27 = 0;
        do
        {
          cstdlib_strcat(a4, " ");
          v28 = v26 - v24;
          if (v26 - v24 < 0)
          {
            v28 = v24 - v26;
          }

          v29 = v28;
          cstdlib_strncat(a4, v24, v28);
          if (!v27)
          {
            v30 = v29 == 1 && *v24 == 49;
            *a6 = v30;
          }

          v24 = v26 + 1;
          v26 = cstdlib_strchr(v26 + 1, __c);
          --v27;
        }

        while (v26);
      }
    }

    else
    {
      v14 = (*(*a1 + 96))(a1[1], a1[2], "wpcrf", "NULL", &v42, &v43, &__c);
      v11 = 2370838548;
      if ((v14 & 0x80000000) == 0 && v43)
      {
        v15 = v14;
        v16 = 0;
        while (1)
        {
          v17 = cstdlib_strchr(*(v42 + 8 * v16), __c);
          if (v17)
          {
            break;
          }

          if (++v16 >= v43)
          {
            return v15;
          }
        }

        v31 = v17;
        v32 = *(v42 + 8 * v16);
        v33 = v17 - v32;
        if (v17 - v32 <= 0 && v17 == v32)
        {
          v36 = __c_1;
          v35 = a4;
        }

        else
        {
          if (v33 < 0)
          {
            LODWORD(v33) = v32 - v17;
          }

          cstdlib_strncat(a5, v32, v33);
          v35 = a4;
          v36 = a5;
        }

        cstdlib_strcat(v35, v36);
        v37 = v31 + 1;
        v38 = cstdlib_strchr(v31 + 1, __c);
        if (v38)
        {
          v39 = v38;
          do
          {
            cstdlib_strcat(a4, " ");
            v40 = v39 - v37;
            if (v39 - v37 < 0)
            {
              v40 = v37 - v39;
            }

            cstdlib_strncat(a4, v37, v40);
            v37 = v39 + 1;
            v39 = cstdlib_strchr(v39 + 1, __c);
          }

          while (v39);
        }

        return v15;
      }
    }
  }

  return v11;
}

uint64_t sysdct_wpdummy_LookUp_Chinese(void *a1, const void *a2, int a3, char *a4, char *a5, _BOOL4 *a6)
{
  __c = 0;
  v42 = 0;
  cstdlib_memcpy(__c_1, a2, (a3 + 1));
  __c_1[a3] = 0;
  v43 = 0;
  v11 = (*(*a1 + 96))(a1[1], a1[2], "dummymap", __c_1, &v42, &v43, &__c);
  if ((v11 & 0x80000000) == 0)
  {
    if (v43)
    {
      v12 = 0;
      while (1)
      {
        v13 = cstdlib_strchr(*(v42 + 8 * v12), __c);
        if (v13)
        {
          break;
        }

        if (++v12 >= v43)
        {
          return v11;
        }
      }

      v18 = v13;
      v19 = *(v42 + 8 * v12);
      v20 = v13 - v19;
      if (v13 - v19 <= 0 && v13 == v19)
      {
        v23 = __c_1;
        v22 = a4;
      }

      else
      {
        if (v20 < 0)
        {
          LODWORD(v20) = v19 - v13;
        }

        cstdlib_strncat(a5, v19, v20);
        v22 = a4;
        v23 = a5;
      }

      cstdlib_strcat(v22, v23);
      v24 = v18 + 1;
      v25 = cstdlib_strchr(v18 + 1, __c);
      if (v25)
      {
        v26 = v25;
        v27 = 0;
        do
        {
          cstdlib_strcat(a4, " ");
          v28 = v26 - v24;
          if (v26 - v24 < 0)
          {
            v28 = v24 - v26;
          }

          v29 = v28;
          cstdlib_strncat(a4, v24, v28);
          if (!v27)
          {
            v30 = v29 == 1 && *v24 == 49;
            *a6 = v30;
          }

          v24 = v26 + 1;
          v26 = cstdlib_strchr(v26 + 1, __c);
          --v27;
        }

        while (v26);
      }
    }

    else
    {
      v14 = (*(*a1 + 96))(a1[1], a1[2], "dummymap", "NULL", &v42, &v43, &__c);
      v11 = 2370838548;
      if ((v14 & 0x80000000) == 0 && v43)
      {
        v15 = v14;
        v16 = 0;
        while (1)
        {
          v17 = cstdlib_strchr(*(v42 + 8 * v16), __c);
          if (v17)
          {
            break;
          }

          if (++v16 >= v43)
          {
            return v15;
          }
        }

        v31 = v17;
        v32 = *(v42 + 8 * v16);
        v33 = v17 - v32;
        if (v17 - v32 <= 0 && v17 == v32)
        {
          v36 = __c_1;
          v35 = a4;
        }

        else
        {
          if (v33 < 0)
          {
            LODWORD(v33) = v32 - v17;
          }

          cstdlib_strncat(a5, v32, v33);
          v35 = a4;
          v36 = a5;
        }

        cstdlib_strcat(v35, v36);
        v37 = v31 + 1;
        v38 = cstdlib_strchr(v31 + 1, __c);
        if (v38)
        {
          v39 = v38;
          do
          {
            cstdlib_strcat(a4, " ");
            v40 = v39 - v37;
            if (v39 - v37 < 0)
            {
              v40 = v37 - v39;
            }

            cstdlib_strncat(a4, v37, v40);
            v37 = v39 + 1;
            v39 = cstdlib_strchr(v39 + 1, __c);
          }

          while (v39);
        }

        return v15;
      }
    }
  }

  return v11;
}

uint64_t sysdct_char_LookUp_Chinese(void *a1, unsigned __int8 *a2, void *a3, unsigned __int16 *a4, int a5, int a6, const char *a7)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = utf8_determineUTF8CharLength(*a2);
  cstdlib_memcpy(__dst, a2, (v14 + 1));
  __dst[v14] = 0;
  *a4 = 0;
  return sysdct_char_LookUp(a1, __dst, a3, a4, a5, a6, a7);
}

uint64_t sysdct_char_LookUp_Thai(void *a1, const char *a2, int a3, void *a4, unsigned __int16 *a5, int a6, int a7, const char *a8)
{
  v17 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, a2);
  __dst[a3] = 0;
  *a5 = 0;
  if (!a7 && a6 == 1 && __dst[0] == 32)
  {
    __dst[0] = -80;
  }

  return sysdct_char_LookUp(a1, __dst, a4, a5, a6, a7, a8);
}

uint64_t getDictSolution(unsigned int a1, uint64_t a2, int __c, void *a4, unsigned __int16 *a5, const char *a6)
{
  v6 = a5;
  if (!a1)
  {
LABEL_25:
    *v6 = 0;
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = cstdlib_strchr(*(a2 + 8 * v14), __c);
    if (!v15)
    {
      v13 = 0;
      goto LABEL_27;
    }

    *v15 = 0;
    v16 = v15 + 1;
    if (cstdlib_strlen(v15 + 1))
    {
      v17 = 1;
    }

    else
    {
      v18 = cstdlib_strcmp("normal", a6);
      v17 = v18 != 0;
      if (!v18)
      {
        v13 = v14;
      }
    }

    if (cstdlib_strlen(v16) == 0 && v11 == 0)
    {
      v12 = v14;
      v11 = 1;
    }

    if (!v17)
    {
      goto LABEL_27;
    }

    do
    {
      v19 = cstdlib_strchr(v16, 44);
      v20 = v19;
      if (v19)
      {
        *v19 = 0;
      }

      v21 = cstdlib_strcmp(v16, a6);
      if (!v21)
      {
        v13 = v14;
      }

      if (v20)
      {
        v16 = v20 + 1;
      }

      else
      {
        v16 = 0;
      }
    }

    while (v20 && v21);
    ++v14;
  }

  while (a1 > v14 && v21);
  if (!v21)
  {
LABEL_27:
    v26 = cstdlib_strlen(*(a2 + 8 * v13));
    *a5 = v26;
    v23 = *(a2 + 8 * v13);
    v24 = v26 + 1;
    v25 = a4;
    goto LABEL_28;
  }

  v6 = a5;
  if (v11 != 1)
  {
    goto LABEL_25;
  }

  v22 = cstdlib_strlen(*(a2 + 8 * v12));
  *a5 = v22;
  v23 = *(a2 + 8 * v12);
  v24 = v22 + 1;
  v25 = a4;
LABEL_28:
  cstdlib_memmove(v25, v23, v24);
  return 0;
}

uint64_t getDictBackTransSolution(void *a1, const char *a2, unsigned int a3, uint64_t a4, int a5, char *a6, unsigned __int16 *a7, const char *a8)
{
  v61 = *MEMORY[0x277D85DE8];
  __c_1 = 0;
  __c = 0;
  v55 = 0;
  cstdlib_strcpy(__dst, "");
  cstdlib_strcpy(__s1, "");
  if (a3)
  {
    v46 = a7;
    v14 = 0;
    v50 = 0;
    v15 = 0;
    v54 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v52 = a3;
    v48 = a2;
    while (1)
    {
      v19 = *(a4 + 8 * v14);
      if (v19)
      {
        v20 = 0;
        do
        {
          v21 = cstdlib_strchr(v19, a5);
          if (!v21)
          {
            break;
          }

          *v21 = 0;
          v19 = v21 + 1;
          switch(v20)
          {
            case 1u:
              v17 = v19;
              break;
            case 3u:
              v16 = v19;
              break;
            case 7u:
              v38 = v19;
              goto LABEL_15;
          }
        }

        while (v20++ < 7);
      }

      v38 = v54;
LABEL_15:
      v54 = v38;
      if (v17)
      {
        if (!cstdlib_strcmp(v17, "") || cstdlib_strstr(v17, a8))
        {
          if (v16)
          {
            v23 = v38;
            v24 = cstdlib_strchr(v16, 33);
            if (v24)
            {
              v25 = v24;
              *v24 = 0;
              while (1)
              {
                v26 = cstdlib_strchr(v25 + 1, 92);
                v27 = v26;
                if (v26)
                {
                  *v26 = 0;
                }

                v28 = cstdlib_strchr(v25 + 1, 40);
                if (v28)
                {
                  *v28 = 0;
                }

                cstdlib_strcpy(a6, "");
                cstdlib_strcat(a6, "backtrans_");
                cstdlib_strcat(a6, v25 + 1);
                __c_1 = -1;
                __c = 0;
                v55 = 0;
                v18 = (*(*a1 + 96))(a1[1], a1[2], "fecfg", a6, &v55, &__c_1, &__c);
                if ((v18 & 0x80000000) != 0)
                {
                  break;
                }

                if (__c_1)
                {
                  v29 = cstdlib_strchr(*v55, __c);
                  if (v29)
                  {
                    *v29 = 0;
                  }

                  cstdlib_strcat(__dst, *v55);
                }

                v25 = v27;
                if (!v27)
                {
                  goto LABEL_31;
                }
              }

              *v46 = 0;
              return v18;
            }

LABEL_31:
            cstdlib_strcat(__s1, v16);
            v38 = v23;
            a2 = v48;
          }

          else
          {
            v16 = 0;
          }

          if (cstdlib_strcmp(v17, ""))
          {
            v15 = 1;
            if (!cstdlib_strstr(v17, a8) || !v38)
            {
              goto LABEL_51;
            }

LABEL_40:
            v49 = cstdlib_atoi(v38);
            v30 = cstdlib_strlen(a2);
            if (v30)
            {
              v47 = v16;
              v31 = a2;
              v32 = 0;
              v33 = 0;
              do
              {
                v34 = v33;
                v35 = utf8_determineUTF8CharLength(v31[v32]);
                v33 = v34 + 1;
                v32 = (v35 + v32);
              }

              while (v32 < v30);
              v36 = v49;
              v37 = v49 >> 1;
              if ((v49 & 0xFFFE) == 0)
              {
                v37 = 1;
              }

              if (!v34)
              {
                v36 = v37;
              }

              a2 = v31;
              v16 = v47;
            }

            else
            {
              v36 = v49;
            }

            v50 += v36;
          }

          else if (v38)
          {
            goto LABEL_40;
          }

          v15 = 1;
          goto LABEL_51;
        }

        v16 = 0;
        v17 = 0;
      }

      else
      {
        v16 = 0;
      }

LABEL_51:
      if (++v14 == v52)
      {
        if (v15 && v50)
        {
          v39 = cstdlib_strlen(a2);
          a7 = v46;
          if (v39 + cstdlib_strlen(__dst) + 5 < *v46)
          {
            __c_3[0] = 0;
            __sprintf_chk(__c_3, 0, 0x80uLL, "%d", v50);
            v40 = cstdlib_strlen(a2);
            *v46 = v40;
            cstdlib_memmove(a6, a2, v40 + 1);
            cstdlib_strcat(a6, "\");
            ++*v46;
            cstdlib_strcat(a6, __dst);
            *v46 += cstdlib_strlen(__dst);
            cstdlib_strcat(a6, "\");
            ++*v46;
            cstdlib_strcat(a6, __c_3);
            v41 = __c_3;
LABEL_63:
            *a7 += cstdlib_strlen(v41);
            return v18;
          }
        }

        else
        {
          a7 = v46;
          if (!v15)
          {
            goto LABEL_58;
          }
        }

        v43 = cstdlib_strlen(a2);
        v44 = cstdlib_strlen(__dst);
        if (v43 + v44 + cstdlib_strlen(__s1) + 3 >= *a7)
        {
          goto LABEL_58;
        }

        v45 = cstdlib_strlen(a2);
        *a7 = v45;
        cstdlib_memmove(a6, a2, v45 + 1);
        cstdlib_strcat(a6, "\");
        ++*a7;
        cstdlib_strcat(a6, __dst);
        *a7 += cstdlib_strlen(__dst);
        cstdlib_strcat(a6, "\");
        ++*a7;
        cstdlib_strcat(a6, __s1);
        v41 = __s1;
        goto LABEL_63;
      }
    }
  }

  v18 = 0;
LABEL_58:
  *a7 = 0;
  return v18;
}

uint64_t sysdct_word_LookUp(void *a1, const char *a2, _BYTE *a3, unsigned __int16 *a4, const char *a5)
{
  __c = 0;
  memset(v15, 0, sizeof(v15));
  *a3 = 0;
  if (!*(a1 + 8))
  {
    result = *(a1 + 12);
    if (!*(a1 + 12))
    {
      return result;
    }

    if (result == 1)
    {
      cstdlib_strcpy(__c_1, "word");
      v15[0] = 0;
      result = (*(*a1 + 96))(a1[1], a1[2], __c_1, a2, &v15[1], v15, &__c);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v11 = v15[0];
      if (!v15[0])
      {
        return result;
      }
    }

    else
    {
      v12 = 0;
      while (1)
      {
        cstdlib_strcpy(__c_1, "word");
        v13 = LH_itoa(v12, v14, 0xAu);
        cstdlib_strcat(__c_1, v13);
        v15[0] = 0;
        result = (*(*a1 + 96))(a1[1], a1[2], __c_1, a2, &v15[1], v15, &__c);
        if ((result & 0x80000000) == 0)
        {
          v11 = v15[0];
          if (v15[0])
          {
            break;
          }
        }

        if (++v12 >= *(a1 + 12))
        {
          return result;
        }
      }
    }

    getDictSolution(v11, *&v15[1], __c, a3, a4, a5);
    return 0;
  }

  result = (*(*a1 + 240))(a1[1], a1[2], "g2p", a2, &v15[1], v15, &__c, *(a1 + 24), 0);
  if ((result & 0x80000000) == 0)
  {
    if (v15[0])
    {
      return getDictBackTransSolution(a1, a2, v15[0], *&v15[1], __c, a3, a4, a5);
    }
  }

  return result;
}

uint64_t sysdct_word_LookUp_Chinese(void *a1, const void *a2, unsigned int a3, _BYTE *a4, unsigned __int16 *a5, const char *a6)
{
  v13 = *MEMORY[0x277D85DE8];
  cstdlib_memcpy(__dst, a2, a3 + 1);
  __dst[a3] = 0;
  return sysdct_word_LookUp(a1, __dst, a4, a5, a6);
}

uint64_t sysdct_word_LookUp_Thai(void *a1, const char *a2, int a3, _BYTE *a4, unsigned __int16 *a5, const char *a6)
{
  v13 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, a2);
  __dst[a3] = 0;
  return sysdct_word_LookUp(a1, __dst, a4, a5, a6);
}

uint64_t wordm_sysdct_CharLookup_Chinese(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, int a6, const char *a7)
{
  v27 = *MEMORY[0x277D85DE8];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    *a4 = 0;
    v14 = a4 + 4;
    cstdlib_memset((a4 + 4), 0, 0x41uLL);
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    cstdlib_memset((a4 + 76), 0, 0x101uLL);
    *(a4 + 334) = 0;
    if (a3 >= 0x40)
    {
      v15 = 64;
    }

    else
    {
      v15 = a3;
    }

    cstdlib_memmove(__dst, a2, v15);
    __dst[v15] = 0;
    if (a3)
    {
      if (v15 > a5)
      {
        __dst[a5] = 0;
      }

      v16 = cstdlib_strlen(__dst);
      if (utf8_ToLower(__dst, 0, &v26) || utf8_BelongsToSet(0, __dst, 0, v16) == 1 || utf8_BelongsToSet(6u, __dst, 0, v16) == 1 || utf8_BelongsToSet(7u, __dst, 0, v16) == 1 || utf8_BelongsToSet(0xAu, __dst, 0, v16) == 1)
      {
        v17 = 3;
      }

      else if (utf8_BelongsToSet(0xCu, __dst, 0, v16) == 1)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      *a4 = v17;
      v18 = utf8_determineUTF8CharLength(__dst[0]);
      cstdlib_memmove((a4 + 4), __dst, v18);
      __dst[v18] = 0;
      *(v14 + v18) = 0;
      *(a4 + 70) = v18;
      v26 = 256;
      if (sysdct_char_LookUp_Chinese(a1, __dst, (a4 + 76), &v26, 1, a6, a7) || (v19 = v26) == 0)
      {
        result = 0;
        *a4 = 0;
      }

      else
      {
        result = 0;
        *(a4 + 76 + v26) = 0;
        *(a4 + 334) = v19;
        if (*(a4 + 76) == 35)
        {
          v20 = cstdlib_atoi((a4 + 77));
          result = 0;
          *(a4 + 76) = v20;
          *(a4 + 77) = 0;
          *(a4 + 334) = 1;
        }
      }
    }

    else
    {
      v21 = 0;
      do
      {
        v22 = v21;
        v23 = a2[v21++];
      }

      while (v23 == 32);
      cstdlib_memmove((a4 + 4), a2, v22);
      return 0;
    }
  }

  return result;
}

uint64_t wordm_sysdct_CharLookup_Thai(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, int a6, const char *a7)
{
  v23 = *MEMORY[0x277D85DE8];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    *a4 = 0;
    cstdlib_memset((a4 + 4), 0, 0x41uLL);
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    cstdlib_memset((a4 + 76), 0, 0x101uLL);
    *(a4 + 334) = 0;
    if (a3 >= 0x40)
    {
      v15 = 64;
    }

    else
    {
      v15 = a3;
    }

    cstdlib_memmove(__dst, a2, v15);
    __dst[v15] = 0;
    if (a3)
    {
      if (v15 > a5)
      {
        __dst[a5] = 0;
      }

      if (__dst[0] < 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      *a4 = v16;
      cstdlib_memmove((a4 + 4), __dst, 1uLL);
      *(a4 + 5) = 0;
      *(a4 + 70) = 1;
      v21 = 256;
      if (sysdct_char_LookUp_Thai(a1, __dst, 1, (a4 + 76), &v21, 1, a6, a7) || (v17 = v21) == 0)
      {
        result = 0;
        *a4 = 0;
      }

      else
      {
        result = 0;
        *(a4 + 76 + v21) = 0;
        *(a4 + 334) = v17;
      }
    }

    else
    {
      v18 = 0;
      do
      {
        v19 = v18;
        v20 = a2[v18++];
      }

      while (v20 == 32);
      cstdlib_memmove((a4 + 4), a2, v19);
      return 0;
    }
  }

  return result;
}

uint64_t wordm_mapt2s(void *a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = (a2 + v6);
    v15 = 7549556;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v8 = utf8_determineUTF8CharLength(*v7);
    cstdlib_memmove(__dst, v7, v8);
    __dst[v8] = 0;
    v9 = (*(*a1 + 96))(a1[1], a1[2], &v15, __dst, &v13, &v12, &v14);
    if ((v9 & 0x80000000) == 0)
    {
      if (v12)
      {
        v10 = utf8_determineUTF8CharLength(**v13);
        if (v10 == v8)
        {
          cstdlib_memmove((a2 + v6), *v13, v10);
        }
      }
    }

    v6 += utf8_determineUTF8CharLength(*v7);
  }

  while (v6 < a3 && (v9 & 0x80000000) == 0);
  return v9;
}

uint64_t GetInDomainSegmentation(uint64_t a1, void *a2, uint64_t a3, __int16 a4, __int16 a5, __int16 a6, char *__s, uint64_t *a8, __int16 *a9, __int16 a10, int a11, unsigned __int8 a12)
{
  v36 = *MEMORY[0x277D85DE8];
  v18 = 2350915594;
  v19 = *a8;
  v20 = *(a1 + 8);
  v21 = cstdlib_strlen(__s);
  v22 = heap_Calloc(v20, 1, (v21 + 1));
  if (!v22)
  {
    return v18;
  }

  v23 = v22;
  cstdlib_strcpy(v22, __s);
  v24 = a5 - a4;
  v25 = a6 - a4;
  if (v24 >= (a6 - a4))
  {
    v26 = 0;
    goto LABEL_24;
  }

  v26 = 0;
  while (1)
  {
    v35 = 0u;
    memset(__b, 0, sizeof(__b));
    cstdlib_memset(__b, 0, 0x150uLL);
    if (a11 == 1)
    {
      v26 = wordm_sysdct_Lookup_Thai(a2, (a3 + v24), __b, 0x16u, v23);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      if (LODWORD(__b[0]) != 5 && LODWORD(__b[0]) != 2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (a11)
      {
        goto LABEL_18;
      }

      v26 = wordm_sysdct_Lookup_Chinese(a2, (a3 + v24), (a10 - v24), __b, a12, v23);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      if (LODWORD(__b[0]) > 5 || ((1 << SLOBYTE(__b[0])) & 0x34) == 0)
      {
        goto LABEL_18;
      }
    }

    if (*a9)
    {
      v27 = heap_Realloc(*(a1 + 8), v19, 340 * *a9 + 341);
      if (!v27)
      {
        break;
      }

      v19 = v27;
      goto LABEL_17;
    }

    v19 = heap_Calloc(*(a1 + 8), 1, 341);
    if (!v19)
    {
      break;
    }

LABEL_17:
    *(v19 + 340 * *a9) = v24;
    cstdlib_strcpy((v19 + 340 * *a9 + 8), __b + 4);
    *(v19 + 340 * *a9 + 74) = WORD3(__b[4]);
    cstdlib_strcpy((v19 + 340 * *a9 + 80), &__b[4] + 12);
    *(v19 + 340 * *a9 + 338) = HIWORD(v35);
    v28 = *a9;
    v29 = v19 + 340 * *a9;
    v30 = DWORD2(__b[4]);
    *(v29 + 4) = __b[0];
    *(v29 + 76) = v30;
    *a9 = v28 + 1;
LABEL_18:
    if (WORD3(__b[4]))
    {
      v24 += WORD3(__b[4]);
    }

    else
    {
      v24 = v25;
    }

    if (v24 >= v25)
    {
      goto LABEL_24;
    }
  }

  v26 = 2350915594;
LABEL_24:
  heap_Free(*(a1 + 8), v23);
  *a8 = v19;
  return v26;
}

uint64_t getDomainSegmentations(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, __int16 *a8, int a9, unsigned __int8 a10)
{
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  MarkerArgStr = marker_getMarkerArgStr(1u);
  v19 = bed_GetpElem(a5, 0, &v37);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v19 = bed_GetpElem(a5, 0xFFFFu, &v38);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v35 = a3;
  v36 = a8;
  v20 = *(v38 + 32);
  v21 = *(v37 + 32);
  v19 = bed_GetpElem(a5, 0, &v40);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v22 = bed_GetcElem(a5, &v39);
  if ((v22 & 0x80000000) == 0)
  {
    LOWORD(v20) = v20 - v21;
    v34 = a2;
    v33 = v20;
    if (v39)
    {
      v23 = 0;
      v24 = (v40 + 40);
      while (*(v24 - 2) <= *(v38 + 32))
      {
        if (*(v24 - 5) == 21)
        {
          MarkerArgStr = (*(a6 + 8) + *v24);
        }

        ++v23;
        v24 += 16;
        if (v39 == v23)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v23) = v23;
    }

    else
    {
      LODWORD(v23) = 0;
    }

    if (v23 >= v39)
    {
LABEL_24:
      v25 = a4 + v20;
    }

    else
    {
      v32 = a7;
      v25 = a4 + v20;
      v26 = v23 << 6;
      v27 = v23;
      do
      {
        if (v25 < (*(v40 + v26 + 32) - *(v37 + 32)))
        {
          break;
        }

        if (*(v40 + v26 + 20) == 21 && cstdlib_strcmp(MarkerArgStr, (*(a6 + 8) + *(v40 + v26 + 40))))
        {
          v28 = *(v40 + v26 + 40);
          v29 = marker_getMarkerArgStr(1u);
          if (cstdlib_strcmp(MarkerArgStr, v29))
          {
            v22 = GetInDomainSegmentation(a1, v34, v35, v33, v20, *(v40 + v26 + 32) - *(v37 + 32), MarkerArgStr, v32, v36, a4, a9, a10);
            if ((v22 & 0x80000000) != 0)
            {
              return v22;
            }
          }

          MarkerArgStr = (*(a6 + 8) + v28);
          v20 = *(v40 + v26 + 32) - *(v37 + 32);
        }

        ++v27;
        v26 += 64;
      }

      while (v27 < v39);
      a7 = v32;
    }

    if (v25 >= v20)
    {
      v30 = marker_getMarkerArgStr(1u);
      if (cstdlib_strcmp(MarkerArgStr, v30))
      {
        return GetInDomainSegmentation(a1, v34, v35, v33, v20, v25, MarkerArgStr, a7, v36, a4, a9, a10);
      }
    }
  }

  return v22;
}

uint64_t DoTHTLatin(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned int a4, char **a5)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  v7 = wordm_sysdct_CharLookup_Thai(a2, a3, a4, v12, 0x16u, 0, "normal");
  if (!v7)
  {
    v8 = *(a1 + 8);
    v9 = cstdlib_strlen(&v12[4] + 12);
    v10 = heap_Alloc(v8, (v9 + 3));
    *a5 = v10;
    if (v10)
    {
      cstdlib_strcpy(v10, &v12[4] + 12);
    }
  }

  return v7;
}

uint64_t DoMaxWords(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, int a15, unsigned __int8 a16)
{
  v20 = a1;
  v21 = a14;
  v111 = *MEMORY[0x277D85DE8];
  v108 = 0;
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v104 = 0;
  *(a14 + 8) = 0;
  *(v21 + 12) = 0x100000001;
  LODWORD(v22) = log_GetLogLevel(*(a1 + 32));
  v23 = v22 > 4;
  DomainSegmentations = bed_GetpElem(a7, 0xFFFFu, &v107);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    return DomainSegmentations;
  }

  v98 = a15;
  if (a5 && a5 != *(v107 + 36))
  {
    *(v21 + 16) = 0;
  }

  v28 = a16;
  log_OutText(*(v20 + 32), a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", v25, v26, v27, a5);
  UTOITrace(v23, v20, a6, a7, "START of normalization");
  if (v98 == 1)
  {
    DomainSegmentations = getDomainSegmentations(v20, a3, a4, a5, a7, a10, &v105, &v104, 0, v28);
    if ((DomainSegmentations & 0x80000000) != 0)
    {
      return DomainSegmentations;
    }
  }

  if (a5)
  {
    v88 = v22;
    v91 = v22 > 4;
    v89 = a6;
    v90 = a7;
    v29 = 0;
    LOWORD(v22) = 0;
    v96 = 0;
    v30 = 0;
    v99 = a12;
    v92 = a11;
    v97 = a13;
    v93 = v20;
    v94 = v21;
    v31 = v28;
    do
    {
      v110 = 0u;
      memset(__dst, 0, sizeof(__dst));
      if (v98 == 1 && v104 > v22)
      {
        v32 = 0;
        v22 = v22;
        v33 = (v105 + 340 * v22);
        while (1)
        {
          v34 = *v33;
          if (v34 > v30)
          {
            break;
          }

          v33 += 170;
          if (v34 == v30)
          {
            v32 = v22;
          }

          ++v22;
          if (v34 == v30 || v22 >= v104)
          {
            if (v34 != v30)
            {
              break;
            }

            cstdlib_memcpy(__dst, (v105 + 340 * v32 + 4), 0x150uLL);
            goto LABEL_23;
          }
        }
      }

      v39 = wordm_sysdct_Lookup_Chinese(a3, &a4[v30], (a5 - v30), __dst, v31, "normal");
      if ((v39 & 0x80000000) != 0)
      {
LABEL_79:
        v43 = 0;
LABEL_80:
        v83 = v39;
        goto LABEL_95;
      }

LABEL_23:
      if (LODWORD(__dst[0]) <= 5 && ((1 << SLOBYTE(__dst[0])) & 0x34) != 0)
      {
        if (v97)
        {
          v40 = cstdlib_strlen(szWORD_BEG_1);
          v39 = bed_Insert(a8, szWORD_BEG_1, v40);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_79;
          }

          *v99 += cstdlib_strlen(szWORD_BEG_1);
        }

        v41 = cstdlib_strlen(&__dst[4] + 12) + 1;
        v42 = heap_Alloc(*(v20 + 8), v41);
        if (!v42)
        {
          return 2350915594;
        }

        v43 = v42;
        cstdlib_memset(v42, 0, v41);
        cstdlib_strcpy(v43, &__dst[4] + 12);
        v44 = cstdlib_strlen(&__dst[4] + 12);
        v39 = bed_Insert(a8, v43, v44);
        if ((v39 & 0x80000000) != 0)
        {
          goto LABEL_80;
        }

        *v99 += cstdlib_strlen(&__dst[4] + 12);
        heap_Free(*(v20 + 8), v43);
        if (v97)
        {
          v45 = cstdlib_strlen(szWORD_END_1);
          v39 = bed_Insert(a8, szWORD_END_1, v45);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_79;
          }

          *v99 += cstdlib_strlen(szWORD_END_1);
        }

        v39 = bed_GetcElem(a8, &v108);
        if ((v39 & 0x80000000) != 0)
        {
          goto LABEL_79;
        }

        v46 = *(a3 + 32);
        v47 = a10;
        v48 = &__dst[4] + 6;
        if (v46)
        {
          v48 = &v110 + 14;
        }

        if (*(a10 + 18) < (*(a10 + 16) + 4 * *v48 + 5))
        {
          v39 = datac_RequestBlock(a9, v92, (*(a10 + 16) + 4 * *v48 + 5), &a10);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_79;
          }

          v47 = a10;
          v46 = *(a3 + 32);
        }

        v49 = *(v47 + 8);
        v50 = *(v47 + 16);
        v51 = *(v47 + 2);
        v52 = v49 + v51 * v50;
        v103 = 0;
        __src = 0;
        if (v46)
        {
          v53 = HIWORD(v110);
          v54 = (v49 + v51 * v50);
          if (HIWORD(v110))
          {
            NextUtf8Offset = 0;
            v54 = (v49 + v51 * v50);
            do
            {
              if (*(&__dst[4] + NextUtf8Offset + 12) == 92)
              {
                break;
              }

              WCharFromUtf8 = utf8_GetWCharFromUtf8(&__dst[4] + 12, NextUtf8Offset, v53);
              LH_itoa(WCharFromUtf8, &__src, 0x10u);
              cstdlib_memcpy(v54, &__src + 2, 2uLL);
              cstdlib_memcpy(v54 + 2, &__src, 2uLL);
              v54 += 4;
              NextUtf8Offset = utf8_GetNextUtf8Offset(&__dst[4] + 12, NextUtf8Offset);
              v53 = HIWORD(v110);
            }

            while (HIWORD(v110) > NextUtf8Offset);
          }
        }

        else
        {
          v54 = (v49 + v51 * v50);
          if (WORD3(__dst[4]))
          {
            v58 = 0;
            v54 = (v49 + v51 * v50);
            do
            {
              v59 = v58 + v29;
              if (v58 + v29 >= a5)
              {
                break;
              }

              v60 = utf8_GetWCharFromUtf8(a4, v58 + v29, a5);
              LH_itoa(v60, &__src, 0x10u);
              cstdlib_memcpy(v54, &__src + 2, 2uLL);
              cstdlib_memcpy(v54 + 2, &__src, 2uLL);
              v54 += 4;
              v58 = (utf8_GetNextUtf8Offset(a4, v59) - v29);
            }

            while (v58 < WORD3(__dst[4]));
          }
        }

        v57 = 0;
        *v54 = 0;
        *(a10 + 16) += v54 - v52 + 1;
        v20 = v93;
        v21 = v94;
        v31 = v28;
      }

      else
      {
        log_OutText(*(v20 + 32), a2, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v36, v37, v38, v29);
        v57 = 1;
      }

      if (*(v21 + 16) == 1)
      {
        v61 = *(v21 + 8);
        v62 = *v21;
        if (v61 >= *(v21 + 10))
        {
          v63 = heap_Realloc(*(v20 + 8), v62, 12 * *(v21 + 10) + 121);
          if (!v63)
          {
            v43 = 0;
            v83 = 2350915594;
            goto LABEL_95;
          }

          v62 = v63;
          *v21 = v63;
          *(v21 + 10) += 10;
          v61 = *(v21 + 8);
        }

        v64 = v61;
        v65 = v62 + 12 * v61;
        *v65 = v96;
        *(v65 + 2) = 0;
        v66 = WORD3(__dst[4]);
        if (v57)
        {
          *(v62 + 12 * v64 + 4) = 1;
        }

        v96 += v66;
        *(v21 + 8) = v64 + 1;
      }

      else
      {
        v66 = WORD3(__dst[4]);
      }

      if (v66)
      {
        v30 += v66;
      }

      else
      {
        v30 = a5;
      }

      v29 = v30;
    }

    while (v30 < a5);
    v67 = bed_GetcElem(a8, &v108);
    if ((v67 & 0x80000000) != 0)
    {
      goto LABEL_82;
    }

    if (v108)
    {
      v23 = v91;
      UTOISubTrace(v91, v20, a8, "replacement string");
      a6 = v89;
      a7 = v90;
      if (*(v21 + 16) != 1)
      {
        goto LABEL_92;
      }

      v67 = bed_GetpElem(a8, 0, &v106);
      if ((v67 & 0x80000000) == 0)
      {
        if (v108)
        {
          v74 = 0;
          v75 = 0;
          v76 = 1;
          v77 = v106;
          do
          {
            if (*(v77 + v74) == 16)
            {
              v78 = *(v21 + 8);
              if (v75 >= v78)
              {
LABEL_85:
                log_OutText(*(v20 + 32), a2, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v71, v72, v73, v76);
                v82 = 0;
                goto LABEL_86;
              }

              v79 = v75;
              v80 = (*v21 + 12 * v75 + 4);
              while (1)
              {
                v81 = *v80;
                v80 += 3;
                if (v81 != 1)
                {
                  break;
                }

                if (v78 == ++v79)
                {
                  goto LABEL_85;
                }
              }

              *(*v21 + 12 * v79 + 8) = v74;
              ++v76;
              v75 = v79 + 1;
            }

            ++v74;
          }

          while (v74 < v108);
        }

        v82 = 1;
LABEL_86:
        if (v88 >= 5 && *(v94 + 8))
        {
          v84 = 0;
          v85 = 0;
          do
          {
            log_OutText(*(v20 + 32), a2, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v71, v72, v73, v85++);
            v84 += 12;
          }

          while (v85 < *(v94 + 8));
        }

        v21 = v94;
        v23 = v91;
        if (v82)
        {
          *(v94 + 12) = 0;
        }

        goto LABEL_92;
      }

LABEL_82:
      v83 = v67;
      goto LABEL_94;
    }

    log_OutText(*(v20 + 32), a2, 5, 0, "[UTOI] deleting region, no replacement text found", v68, v69, v70, v87);
    a6 = v89;
    a7 = v90;
    v23 = v91;
  }

LABEL_92:
  v83 = utoin_IncrReplaceCurrentRegion(a6, a7, a8, a5, v21);
  if ((v83 & 0x80000000) == 0)
  {
    UTOITrace(v23, v20, a6, a7, "END of normalization");
  }

LABEL_94:
  v43 = 0;
LABEL_95:
  if (v104)
  {
    heap_Free(*(v20 + 8), v105);
    v105 = 0;
  }

  if (v43)
  {
    heap_Free(*(v20 + 8), v43);
  }

  return v83;
}

uint64_t DoSpell(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned __int8 a12)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    return 0;
  }

  v17 = 0;
  for (i = 0; i < a5; v17 = i)
  {
    memset(v29, 0, sizeof(v29));
    v22 = wordm_sysdct_CharLookup_Chinese(a3, (a4 + i), (a5 - i), v29, a12, a11, "normal");
    if ((v22 & 0x80000000) != 0)
    {
      break;
    }

    if ((LODWORD(v29[0]) - 2) > 3)
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (utoi position %d len %d not in dict", v19, v20, v21, v17);
    }

    else
    {
      v23 = cstdlib_strlen(&v29[4] + 12) + 3;
      v24 = heap_Alloc(*(a1 + 8), v23);
      if (!v24)
      {
        return 2350915594;
      }

      v25 = v24;
      cstdlib_memset(v24, 0, v23);
      if (i)
      {
        cstdlib_strcpy(v25, &v29[4] + 12);
      }

      else
      {
        cstdlib_strcpy(v25, " ");
        cstdlib_strcat(v25, &v29[4] + 12);
      }

      cstdlib_strcat(v25, " ");
      v26 = cstdlib_strlen(v25);
      v22 = bed_Insert(a6, v25, v26);
      if ((v22 & 0x80000000) != 0)
      {
        heap_Free(*(a1 + 8), v25);
        return v22;
      }

      heap_Free(*(a1 + 8), v25);
    }

    if (WORD3(v29[4]))
    {
      i += WORD3(v29[4]);
    }

    else
    {
      i = a5;
    }
  }

  return v22;
}

uint64_t DoLatin(uint64_t a1, void *a2, const char *a3, unsigned int a4, char **a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 256;
  cstdlib_memset(__b, 0, 0x101uLL);
  cstdlib_strncpy(__dst, a3, a4);
  __dst[a4] = 0;
  v10 = sysdct_char_LookUp_Chinese(a2, __dst, __b, &v15, 0, 0, "normal");
  if ((v10 & 0x80000000) == 0)
  {
    if (v15)
    {
      v11 = *(a1 + 8);
      v12 = cstdlib_strlen(__b);
      v13 = heap_Calloc(v11, 1, (v12 + 1));
      *a5 = v13;
      if (v13)
      {
        cstdlib_strcpy(v13, __b);
      }

      else
      {
        return 2350915594;
      }
    }

    else
    {
      *a5 = 0;
    }
  }

  return v10;
}

uint64_t wordm_sysdct_Lookup_Chinese(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, const char *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    v27 = 0;
    cstdlib_memset(__b, 0, 0x101uLL);
    *a4 = 0;
    cstdlib_memset((a4 + 4), 0, 0x41uLL);
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    v13 = (a4 + 76);
    cstdlib_memset((a4 + 76), 0, 0x101uLL);
    *(a4 + 334) = 0;
    if (a3 >= 0x40)
    {
      v14 = 64;
    }

    else
    {
      v14 = a3;
    }

    if (a3 && a5)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v16 += utf8_determineUTF8CharLength(a2[v16]);
        ++v15;
      }

      while (v14 > v16 && v15 < a5);
      cstdlib_memmove(__dst, a2, v16);
      __dst[v16] = 0;
      if (v16)
      {
        *a4 = 2;
        v26 = 256;
        v18 = v16;
        while (1)
        {
          result = sysdct_word_LookUp_Chinese(a1, __dst, v18, __b, &v26, a6);
          v19 = v26;
          if (result || v26 != 256)
          {
            break;
          }

          v27 = (v18 - 1);
          utf8_GetPreviousValidUtf8Offset(__dst, &v27);
          v18 = v27;
          v19 = 256;
          v26 = 256;
          if ((v27 - 1) >= v16)
          {
            goto LABEL_28;
          }
        }

        if ((result & 0x80000000) != 0)
        {
          return result;
        }

LABEL_28:
        if ((v18 - 1) < v16)
        {
          __b[v19] = 0;
          cstdlib_strcpy((a4 + 76), __b);
          *(a4 + 72) = 16;
          *(a4 + 334) = v26;
          __dst[v18] = 0;
          cstdlib_strcpy((a4 + 4), __dst);
          result = 0;
          *(a4 + 70) = v18;
          return result;
        }

        v23 = utf8_determineUTF8CharLength(*a2);
        cstdlib_memmove((a4 + 4), __dst, v23);
        *(a4 + 4 + v23) = 0;
        *(a4 + 70) = v23;
        v26 = 256;
        if (sysdct_char_LookUp_Chinese(a1, __dst, (a4 + 76), &v26, 0, 0, a6) || (v24 = v26, v13[v26] = 0, *(a4 + 334) = v24, !v24))
        {
          result = 0;
          *a4 = 0;
          return result;
        }

        if (*v13 == 35 && *(a4 + 77))
        {
          v25 = cstdlib_atoi((a4 + 77));
          result = 0;
          *(a4 + 76) = v25;
          *(a4 + 77) = 0;
          *(a4 + 334) = 1;
          return result;
        }

        return 0;
      }
    }

    else
    {
      cstdlib_memmove(__dst, a2, 0);
      __dst[0] = 0;
    }

    v20 = 0;
    do
    {
      v21 = v20;
      v22 = a2[v20++];
    }

    while (v22 == 32);
    cstdlib_memmove((a4 + 4), a2, v21);
    return 0;
  }

  return result;
}

uint64_t wparserDctMaxWords_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplMaxWords;
  return result;
}

uint64_t wparser_impl_maxwords_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  MaxWordLen = 2350915591;
  v19 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v19);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v19 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: Begin", v10, v11, v12, v18);
      v13 = heap_Calloc(*(v19 + 8), 1, 56);
      if (v13)
      {
        *v13 = a3;
        v13[1] = a4;
        v13[2] = v19;
        v13[3] = "WPARSER_IMPL";
        *a5 = v13;
        *(a5 + 8) = 87652;
        MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(v13);
        log_OutText(*(v19 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: End (%x)", v14, v15, v16, MaxWordLen);
      }

      else
      {
        return 2350915594;
      }
    }
  }

  return MaxWordLen;
}

uint64_t wparser_impl_maxwords_ObjClose(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 16);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : Begin", v3, v4, v5, v12);
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : End (%x)", v8, v9, v10, v6);
  }

  return v6;
}

uint64_t wparser_impl_maxwords_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjReopen : Begin", v4, v5, v6, v12);
  MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(a1);
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjReopen : End (%x)", v8, v9, v10, MaxWordLen);
  return MaxWordLen;
}

uint64_t wparser_impl_maxwords_Init(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = 7549556;
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*a3 + 72))(a3[1], a3[2], &v10, a1 + 44);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 32) = a3;
      *(a1 + 40) = a6;
    }
  }

  return result;
}

uint64_t wparser_impl_maxwords_Normalize(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, uint64_t a15)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    a3[a5] = 0;
    if (*(a1 + 44) != 1 || (result = wordm_mapt2s(*(a1 + 32), a3, a5), (result & 0x80000000) == 0))
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      v23 = *(a1 + 32);
      v28 = *(a1 + 48);
      v27 = *(a1 + 40);

      return DoMaxWords(v21, v22, v23, a3, a5, a6, a7, a8, a9, a10, a11, a12, a13, a15, v27, v28);
    }
  }

  return result;
}

uint64_t wparser_impl_maxwords_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 24), *(a1 + 32), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 48));
  }

  return result;
}

uint64_t wparser_impl_maxwords_Latin(uint64_t a1, int a2, const char *a3, unsigned int a4, char **a5)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 32);

    return DoLatin(v10, v11, a3, a4, a5);
  }

  return result;
}

uint64_t wparser_impl_maxwords_loc_GetMaxWordLen(uint64_t a1)
{
  v6 = 0;
  Str = paramc_ParamGetStr(*(*(a1 + 16) + 40), "maxdctwordlen", &v6);
  if ((Str & 0x80000000) != 0)
  {
    v3 = 0;
    LOBYTE(v4) = 7;
    goto LABEL_5;
  }

  v3 = Str;
  v4 = cstdlib_atoi(v6);
  if ((v4 - 1) <= 0xFE)
  {
LABEL_5:
    *(a1 + 48) = v4;
    return v3;
  }

  return 15;
}

uint64_t DoDag(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, int a15, unsigned __int8 a16)
{
  v21 = a1;
  v22 = a14;
  v223 = *MEMORY[0x277D85DE8];
  v203 = 0;
  v201 = 0;
  v202 = 0;
  v200 = 0;
  v199 = 0;
  *(a14 + 8) = 0;
  *(v22 + 12) = 0x100000001;
  LogLevel = log_GetLogLevel(a1[4]);
  DomainSegmentations = bed_GetpElem(a7, 0xFFFFu, &v202);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    return DomainSegmentations;
  }

  __dst = a16;
  v28 = a15;
  if (a5 && a5 != *(v202 + 36))
  {
    *(v22 + 16) = 0;
  }

  log_OutText(v21[4], a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", v25, v26, v27, a5);
  UTOITrace(LogLevel > 4, v21, a6, a7, "START of normalization");
  if (v28 == 1)
  {
    DomainSegmentations = getDomainSegmentations(v21, a3, a4, a5, a7, a10, &v200, &v199, 0, __dst);
    if ((DomainSegmentations & 0x80000000) != 0)
    {
      return DomainSegmentations;
    }
  }

  v186 = LogLevel;
  v187 = LogLevel > 4;
  v32 = 2583699466;
  log_OutText(v21[4], a2, 5, 0, "[DAG]: Entering", v29, v30, v31, v167);
  v33 = heap_Calloc(v21[1], 1, 16);
  if (v33)
  {
    v34 = v33;
    v198 = a2;
    if (a5)
    {
      v35 = 0;
      v36 = 0;
      do
      {
        ++v36;
        v35 = (utf8_determineUTF8CharLength(a4[v35]) + v35);
      }

      while (v35 < a5);
    }

    else
    {
      v36 = 0;
    }

    *(v34 + 8) = v36;
    *(v34 + 12) = 13285840;
    v37 = heap_Calloc(v21[1], v36 + 1, 24);
    *v34 = v37;
    if (!v37)
    {
      return 2583699466;
    }

    if (((v36 + 1) & 0xFFFE) != 0)
    {
      v38 = (v36 + 1);
    }

    else
    {
      v38 = 1;
    }

    bzero(v37, 24 * v38);
    v188 = a5;
    if (a5)
    {
      v181 = v22;
      *v183 = a8;
      v177 = a6;
      v179 = a7;
      v42 = 0;
      v43 = 0;
      v44 = __dst;
      v194 = v21;
      do
      {
        v45 = a5;
        LOWORD(a5) = 0;
        v46 = 0;
        v47 = &a4[v43];
        v189 = v43;
        v48 = v45 - v43;
        v49 = (v45 - v43);
        while (a5 < v49)
        {
          LODWORD(a5) = utf8_determineUTF8CharLength(v47[a5]) + a5;
          if (v44 == ++v46)
          {
            v46 = v44;
            if (a5)
            {
              goto LABEL_25;
            }

            break;
          }
        }

        LOWORD(a5) = v48;
LABEL_25:
        v205 = 0;
        v222 = 0;
        v220 = 0u;
        v221 = 0u;
        v218 = 0u;
        v219 = 0u;
        v216 = 0u;
        v217 = 0u;
        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
        v208 = 0u;
        v209 = 0u;
        *__s = 0u;
        v207 = 0u;
        v204 = 256;
        if (!a5 || v48 < a5)
        {
          goto LABEL_175;
        }

        v50 = 0;
        v51 = 1;
        v52 = a5;
        do
        {
          v53 = sysdct_word_LookUp_Chinese(a3, v47, v52, __s, &v204, "");
          if ((v53 & 0x80000000) != 0)
          {
            return v53;
          }

          if (v204 != 256)
          {
            v54 = cstdlib_strrchr(__s, 92);
            if (v54)
            {
              v51 = cstdlib_atoi(v54 + 1) + 1;
            }

            if (v46)
            {
              dag_insert_edge_0(v194, v198, v34, v42, v42 + v46, v51, 0);
              ++v50;
            }
          }

          v205 = (v52 - 1);
          utf8_GetPreviousValidUtf8Offset(v47, &v205);
          v204 = 256;
          if (v46)
          {
            --v46;
          }

          else
          {
            v46 = 0;
          }

          if (v48 < v205)
          {
            break;
          }

          v52 = v205;
        }

        while ((v205 - 1) < a5);
        v21 = v194;
        v44 = __dst;
        if (!v50)
        {
LABEL_175:
          v53 = sysdct_char_LookUp_Chinese(a3, v47, __s, &v204, 0, 0, "normal");
          if (!v53)
          {
            v55 = heap_Calloc(v21[1], 1, v204 + 1);
            if (!v55)
            {
              v53 = 2583699466;
              goto LABEL_149;
            }

            v56 = v55;
            v57 = v204;
            if (v204)
            {
              v58 = v204 - 1;
              if (v204 == 1)
              {
                v59 = 1;
              }

              else
              {
                while (__s[v58] == 92)
                {
                  v204 = --v57;
                  if (!--v58)
                  {
                    v57 = 1;
                    break;
                  }
                }

                v59 = v57;
              }
            }

            else
            {
              v59 = 0;
            }

            cstdlib_memcpy(v55, __s, v59);
            *(v56 + v204) = 0;
            dag_insert_edge_0(v21, v198, v34, v42, v42 + 1, 1, v56);
            v53 = 0;
          }
        }

        v60 = utf8_determineUTF8CharLength(*v47);
        LODWORD(a5) = v188;
        v43 = v189 + v60;
        ++v42;
      }

      while (v188 > (v189 + v60));
      a6 = v177;
      a7 = v179;
      v22 = v181;
      a8 = *v183;
      if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_149:
      heap_Free(v21[1], v34);
      return v53;
    }

LABEL_53:
    log_OutText(v21[4], v198, 5, 0, "[DAG]: searching the heaviest edge from all possible paths", v39, v40, v41, v168);
    v64 = *v34;
    if (!*v34)
    {
      dag_free(v21, v34);
      log_OutText(v21[4], v198, 5, 0, "[DAG]: Failed search the path, some error", v158, v159, v160, v169);
      return 2583699462;
    }

    v182 = v22;
    v184 = a8;
    v178 = a6;
    v180 = a7;
    v65 = *(v34 + 8);
    if ((v65 & 0x80000000) == 0)
    {
      v66 = v65 + 1;
      v67 = (v64 + 16);
      do
      {
        *v67 = -2147483647;
        v67 += 3;
        --v66;
      }

      while (v66);
    }

    *(v64 + 16) = 0xFFFFFFFF00000000;
    log_OutText(v21[4], v198, 5, 0, "[DAG]: All possible path, <vertex_from: vertex_to>: weight, accumulated weight", v61, v62, v63, v169);
    if (v65 >= 1)
    {
      v71 = 0;
      v72 = *v34;
      do
      {
        for (i = *(v72 + 24 * v71); i; i = *i)
        {
          v74 = *(i + 3);
          v75 = *(i + 4) + *(v72 + 24 * v71 + 16);
          log_OutText(v21[4], v198, 5, 0, "<%d: %d>: %d, %d", v68, v69, v70, v71);
          v72 = *v34;
          v76 = *v34 + 24 * v74;
          v78 = *(v76 + 16);
          v77 = (v76 + 16);
          if (v75 > v78)
          {
            *v77 = v75;
            v79 = v72 + 24 * v74;
            *(v79 + 20) = v71;
            *(v79 + 8) = i[3];
          }
        }

        ++v71;
      }

      while (v71 != v65);
    }

    v80 = heap_Calloc(v21[1], 1, 24);
    if (!v80)
    {
      return 2583699466;
    }

    v81 = v80;
    v82 = heap_Calloc(v21[1], (v65 + 2), 4);
    *v81 = v82;
    v32 = 2583699466;
    if (v82)
    {
      v83 = heap_Calloc(v21[1], (v65 + 2), 8);
      *(v81 + 8) = v83;
      v87 = *v81;
      if (v83)
      {
        *(v81 + 16) = 0;
        *v87 = v65;
        v88 = v188;
        v89 = v198;
        if ((v65 & 0x80000000) == 0)
        {
          v90 = 0;
          do
          {
            ++v90;
            v91 = *v34 + 24 * v65;
            v92 = *(v91 + 8);
            LODWORD(v65) = *(v91 + 20);
            v87[v90] = v65;
            *(*(v81 + 8) + 8 * v90) = v92;
          }

          while ((v65 & 0x80000000) == 0);
          *(v81 + 16) = v90;
        }

        log_OutText(v21[4], v198, 5, 0, "[DAG]: Leaving", v84, v85, v86, v170);
        v93 = (*(v81 + 16) - 1);
        v94 = a4;
        v190 = heap_Calloc(v21[1], v93, 336);
        v185 = v93;
        if (v190)
        {
          if (v93)
          {
            v95 = 0;
            v96 = 0;
            v195 = v21;
            v175 = v81;
            do
            {
              v97 = v190 + 336 * v95;
              *v97 = 2;
              __dsta = (v97 + 4);
              cstdlib_memset((v97 + 4), 0, 0x41uLL);
              *(v97 + 70) = 0;
              *(v97 + 72) = 16;
              cstdlib_memset((v97 + 76), 0, 0x101uLL);
              *(v97 + 334) = 0;
              v98 = *(*v81 + 4 * (v93 - v95 - 1)) - *(*v81 + 4 * (v93 - v95));
              v99 = &v94[v96];
              v100 = cstdlib_strlen(v99);
              v101 = 0;
              v102 = 0;
              while (1)
              {
                v103 = v102;
                if (v102 >= v100)
                {
                  break;
                }

                v104 = utf8_determineUTF8CharLength(v99[v102]);
                v102 = v104 + v103;
                if (v98 == ++v101)
                {
                  v105 = v104 + v103;
                  if (v104 + v103)
                  {
                    goto LABEL_79;
                  }

                  break;
                }
              }

              v105 = v100;
LABEL_79:
              *(v97 + 70) = v105;
              cstdlib_memcpy(__dsta, v99, v105);
              *(__dsta + *(v97 + 70) + 1) = 0;
              v81 = v175;
              LODWORD(v93) = v185;
              v106 = *(*(v175 + 8) + 8 * (v185 - v95));
              if (v106)
              {
                cstdlib_strcat((v97 + 76), v106);
                *(v97 + 334) = cstdlib_strlen((v97 + 76)) + 1;
                v21 = v195;
                heap_Free(v195[1], *(*(v175 + 8) + 8 * (v185 - v95)));
              }

              else
              {
                cstdlib_strcpy((v97 + 76), __dsta);
                *(v97 + 334) = *(v97 + 70) + 1;
                v21 = v195;
              }

              v88 = v188;
              v89 = v198;
              v94 = a4;
              v96 += v105;
              ++v95;
            }

            while (v95 != v185);
          }

          v32 = 0;
        }

        heap_Free(v21[1], *v81);
        heap_Free(v21[1], *(v81 + 8));
        heap_Free(v21[1], v81);
        dag_free(v21, v34);
        if (!v190)
        {
          return v32;
        }

        if (v93)
        {
          v110 = 0;
          v111 = 0;
          v173 = 0;
          v112 = 0;
          __dstb = a12;
          v172 = a11;
          v32 = 2350915594;
          v176 = a13;
          do
          {
            v113 = v190 + 336 * v110;
            if (*v113 > 5u || ((1 << *v113) & 0x34) == 0)
            {
              log_OutText(v21[4], v89, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v107, v108, v109, v111);
              v173 = 1;
            }

            else
            {
              if (v176)
              {
                v115 = cstdlib_strlen(szWORD_BEG_2);
                v116 = bed_Insert(v184, szWORD_BEG_2, v115);
                if ((v116 & 0x80000000) != 0)
                {
                  goto LABEL_152;
                }

                *__dstb += cstdlib_strlen(szWORD_BEG_2);
              }

              v117 = cstdlib_strlen((v113 + 76)) + 1;
              v118 = heap_Alloc(v21[1], v117);
              if (!v118)
              {
                return 2350915594;
              }

              v119 = v118;
              cstdlib_memset(v118, 0, v117);
              cstdlib_strcpy(v119, (v113 + 76));
              v120 = cstdlib_strlen((v113 + 76));
              v116 = bed_Insert(v184, v119, v120);
              if ((v116 & 0x80000000) != 0)
              {
                goto LABEL_153;
              }

              *__dstb += cstdlib_strlen((v113 + 76));
              heap_Free(v21[1], v119);
              v32 = 2350915594;
              if (v176)
              {
                v121 = cstdlib_strlen(szWORD_END_2);
                v116 = bed_Insert(v184, szWORD_END_2, v121);
                if ((v116 & 0x80000000) != 0)
                {
                  goto LABEL_152;
                }

                *__dstb += cstdlib_strlen(szWORD_END_2);
              }

              v116 = bed_GetcElem(v184, &v203);
              if ((v116 & 0x80000000) != 0)
              {
LABEL_152:
                v119 = 0;
LABEL_153:
                v32 = v116;
                goto LABEL_167;
              }

              v122 = *(a3 + 32);
              v123 = a10;
              v124 = 334;
              if (!v122)
              {
                v124 = 70;
              }

              v174 = v112;
              if (*(a10 + 18) < (*(a10 + 16) + 4 * *(v113 + v124) + 5))
              {
                v116 = datac_RequestBlock(a9, v172, (*(a10 + 16) + 4 * *(v113 + v124) + 5), &a10);
                if ((v116 & 0x80000000) != 0)
                {
                  goto LABEL_152;
                }

                v123 = a10;
                v122 = *(a3 + 32);
              }

              v125 = *(v123 + 8);
              v126 = *(v123 + 16);
              v127 = *(v123 + 2);
              v128 = v125 + v127 * v126;
              __s[4] = 0;
              *__s = 0;
              if (v122)
              {
                v129 = *(v113 + 334);
                v130 = (v125 + v127 * v126);
                if (*(v113 + 334))
                {
                  NextUtf8Offset = 0;
                  v130 = (v125 + v127 * v126);
                  do
                  {
                    if (!*(v113 + 76 + NextUtf8Offset))
                    {
                      break;
                    }

                    WCharFromUtf8 = utf8_GetWCharFromUtf8(v113 + 76, NextUtf8Offset, v129);
                    LH_itoa(WCharFromUtf8, __s, 0x10u);
                    cstdlib_memcpy(v130, &__s[2], 2uLL);
                    cstdlib_memcpy(v130 + 2, __s, 2uLL);
                    v130 += 4;
                    NextUtf8Offset = utf8_GetNextUtf8Offset((v113 + 76), NextUtf8Offset);
                    v129 = *(v113 + 334);
                  }

                  while (v129 > NextUtf8Offset);
                }
              }

              else
              {
                v130 = (v125 + v127 * v126);
                if (*(v113 + 70))
                {
                  v133 = 0;
                  v130 = (v125 + v127 * v126);
                  do
                  {
                    v134 = v133 + v111;
                    if (v133 + v111 >= v88)
                    {
                      break;
                    }

                    v135 = utf8_GetWCharFromUtf8(a4, v133 + v111, v88);
                    LH_itoa(v135, __s, 0x10u);
                    cstdlib_memcpy(v130, &__s[2], 2uLL);
                    cstdlib_memcpy(v130 + 2, __s, 2uLL);
                    v130 += 4;
                    v32 = 2350915594;
                    v133 = (utf8_GetNextUtf8Offset(a4, v134) - v111);
                  }

                  while (v133 < *(v113 + 70));
                }
              }

              *v130 = 0;
              *(a10 + 16) += v130 - v128 + 1;
              v89 = v198;
              v112 = v174;
            }

            if (*(v182 + 16) == 1)
            {
              v136 = *(v182 + 8);
              v137 = *v182;
              if (v136 >= *(v182 + 10))
              {
                v138 = heap_Realloc(v21[1], v137, 12 * *(v182 + 10) + 121);
                if (!v138)
                {
                  goto LABEL_166;
                }

                v137 = v138;
                *v182 = v138;
                *(v182 + 10) += 10;
                v136 = *(v182 + 8);
              }

              v139 = v136;
              v140 = v137 + 12 * v136;
              *v140 = v112;
              *(v140 + 2) = 0;
              v141 = *(v113 + 70);
              if (v173 == 1)
              {
                *(v137 + 12 * v139 + 4) = 1;
              }

              v112 += v141;
              *(v182 + 8) = v139 + 1;
            }

            v111 = ++v110;
          }

          while (v110 != v185);
        }

        if (!v88)
        {
          goto LABEL_164;
        }

        v142 = bed_GetcElem(v184, &v203);
        if ((v142 & 0x80000000) != 0)
        {
          goto LABEL_154;
        }

        if (v203)
        {
          UTOISubTrace(v187, v21, v184, "replacement string");
          if (*(v182 + 16) == 1)
          {
            v142 = bed_GetpElem(v184, 0, &v201);
            if ((v142 & 0x80000000) == 0)
            {
              if (v203)
              {
                v149 = 0;
                v150 = 0;
                v151 = 1;
                v152 = v201;
                do
                {
                  if (*(v152 + v149) == 16)
                  {
                    v153 = *(v182 + 8);
                    if (v150 >= v153)
                    {
LABEL_157:
                      log_OutText(v21[4], v89, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v146, v147, v148, v151);
                      v157 = 0;
                      goto LABEL_158;
                    }

                    v154 = v150;
                    v155 = (*v182 + 12 * v150 + 4);
                    while (1)
                    {
                      v156 = *v155;
                      v155 += 3;
                      if (v156 != 1)
                      {
                        break;
                      }

                      if (v153 == ++v154)
                      {
                        goto LABEL_157;
                      }
                    }

                    *(*v182 + 12 * v154 + 8) = v149;
                    ++v151;
                    v150 = v154 + 1;
                  }

                  ++v149;
                }

                while (v149 < v203);
              }

              v157 = 1;
LABEL_158:
              if (v186 >= 5 && *(v182 + 8))
              {
                v165 = 0;
                v166 = 0;
                do
                {
                  log_OutText(v21[4], v198, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v146, v147, v148, v166++);
                  v165 += 12;
                }

                while (v166 < *(v182 + 8));
              }

              if (v157)
              {
                *(v182 + 12) = 0;
              }

              goto LABEL_164;
            }

LABEL_154:
            v32 = v142;
            goto LABEL_166;
          }
        }

        else
        {
          log_OutText(v21[4], v89, 5, 0, "[UTOI] deleting region, no replacement text found", v143, v144, v145, v171);
        }

LABEL_164:
        v32 = utoin_IncrReplaceCurrentRegion(v178, v180, v184, v188, v182);
        if ((v32 & 0x80000000) == 0)
        {
          UTOITrace(v187, v21, v178, v180, "END of normalization");
        }

LABEL_166:
        v119 = 0;
LABEL_167:
        if (v199)
        {
          heap_Free(v21[1], v200);
          v200 = 0;
        }

        if (v119)
        {
          heap_Free(v21[1], v119);
        }

        v162 = v21[1];
        v163 = v190;
        goto LABEL_172;
      }

      if (v87)
      {
        heap_Free(v21[1], v87);
        *v81 = 0;
      }
    }

    v161 = *(v81 + 8);
    if (v161)
    {
      heap_Free(v21[1], v161);
      *(v81 + 8) = 0;
    }

    v162 = v21[1];
    v163 = v81;
LABEL_172:
    heap_Free(v162, v163);
  }

  return v32;
}

void *dag_free(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      v5 = *(a2 + 8);
      v6 = (v5 + 1);
      if (v5 != -1)
      {
        v7 = 0;
        do
        {
          v8 = *(v4 + 24 * v7);
          if (v8)
          {
            do
            {
              v9 = *v8;
              heap_Free(v3[1], v8);
              v8 = v9;
            }

            while (v9);
            v4 = *a2;
          }

          *(v4 + 24 * v7++) = 0;
        }

        while (v7 != v6);
      }
    }

    heap_Free(v3[1], v4);
    v10 = v3[1];

    return heap_Free(v10, a2);
  }

  return result;
}

uint64_t dag_insert_edge_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  result = heap_Calloc(*(a1 + 8), 1, 32);
  if (result)
  {
    v15 = result;
    *(result + 8) = a4;
    *(result + 12) = a5;
    *(result + 24) = a7;
    v16 = uint32_log2(a6);
    *(v15 + 16) = v16 - uint32_log2(*(a3 + 3));
    v17 = *a3;
    v18 = 24 * a4;
    *v15 = *(*a3 + v18);
    *(v17 + v18) = v15;
    return log_OutText(*(a1 + 32), a2, 5, 0, "[DAG]: insert edge (vertex, Chinese Character Positions and weight): %d %d %d %d", v19, v20, v21, a4);
  }

  return result;
}

uint64_t wparserDag_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplDag;
  return result;
}

uint64_t wparser_impl_dag_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  MaxWordLen = 2350915591;
  v20 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v20);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v20 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjOpen: Begin", v10, v11, v12, v19);
      v13 = heap_Calloc(*(v20 + 8), 1, 56);
      if (v13)
      {
        v14 = v13;
        *v13 = a3;
        v13[1] = a4;
        v13[2] = v20;
        v13[3] = "WPARSER_IMPL";
        MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(v13);
        *a5 = v14;
        *(a5 + 8) = 87652;
        log_OutText(*(v20 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjOpen: End (%x)", v15, v16, v17, MaxWordLen);
      }

      else
      {
        return 2350915594;
      }
    }
  }

  return MaxWordLen;
}

uint64_t wparser_impl_dag_ObjClose(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 16);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjClose : Begin", v3, v4, v5, v12);
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjClose : End (%x)", v8, v9, v10, v6);
  }

  return v6;
}

uint64_t wparser_impl_dag_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjReopen : Begin", v4, v5, v6, v12);
  MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(a1);
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjReopen : End (%x)", v8, v9, v10, MaxWordLen);
  return MaxWordLen;
}

uint64_t wparser_impl_dag_Init(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = 7549556;
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*a3 + 72))(a3[1], a3[2], &v10, a1 + 44);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 32) = a3;
      *(a1 + 40) = a6;
    }
  }

  return result;
}

uint64_t wparser_impl_dag_Normalize(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, uint64_t a15)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    a3[a5] = 0;
    if (*(a1 + 44) != 1 || (result = wordm_mapt2s(*(a1 + 32), a3, a5), (result & 0x80000000) == 0))
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      v23 = *(a1 + 32);
      v28 = *(a1 + 48);
      v27 = *(a1 + 40);

      return DoDag(v21, v22, v23, a3, a5, a6, a7, a8, a9, a10, a11, a12, a13, a15, v27, v28);
    }
  }

  return result;
}

uint64_t wparser_impl_dag_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 24), *(a1 + 32), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 48));
  }

  return result;
}

uint64_t wparser_impl_dag_Latin(uint64_t a1, int a2, const char *a3, unsigned int a4, char **a5)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 32);

    return DoLatin(v10, v11, a3, a4, a5);
  }

  return result;
}

uint64_t wparserDctPlusRules_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplDctPlusRules;
  return result;
}

uint64_t wparser_impl_plusrules_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  if (!a5)
  {
    return 2350915591;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v19);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v19 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: Begin", v8, v9, v10, v18);
    v12 = heap_Calloc(*(v19 + 8), 1, 88);
    if (v12)
    {
      *v12 = a3;
      v12[1] = a4;
      v16 = v19;
      v12[2] = v19;
      v12[3] = 0;
      v12[4] = "WPARSER_IMPL";
      *a5 = v12;
      *(a5 + 8) = 87652;
      log_OutText(*(v16 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: End (%x)", v13, v14, v15, inited);
    }

    else
    {
      return 2350915594;
    }
  }

  return inited;
}

uint64_t wparser_impl_plusrules_ObjClose(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 16);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : Begin", v3, v4, v5, v12);
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : End (%x)", v8, v9, v10, v6);
  }

  return v6;
}

uint64_t wparser_impl_plusrules_ObjReopen(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v6 & 0x80000000) == 0)
  {
    log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : Begin", v3, v4, v5, v11);
    log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : End (%x)", v7, v8, v9, v6);
  }

  return v6;
}

uint64_t wparser_impl_plusrules_Init(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, int a6, _BYTE *a7)
{
  v12 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  *(a1 + 40) = a3;
  if (cstdlib_strcmp(a5, "win874"))
  {
    log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 32), 1802, "%s%s", v13, v14, v15, v16, a5);
    return 2350915591;
  }

  else
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = xcode_Utf16leToWin874;
    *(a1 + 56) = 0;
    if (*a7 && (v18 = (*(**(a1 + 40) + 64))(*(*(a1 + 40) + 8), *(*(a1 + 40) + 16), a7, a1 + 64), (v18 & 0x80000000) != 0))
    {
      v17 = v18;
      log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 32), 1819, 0, v19, v20, v21, v22, v28);
    }

    else
    {
      *(a1 + 48) = 0;
      v17 = o2t_ObjOpen(*a1, *(a1 + 8), (a1 + 48));
      if ((v17 & 0x80000000) != 0)
      {
        log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 32), 52002, "%s%s", v23, v24, v25, v26, a5);
      }

      else
      {
        *(a1 + 80) = a6;
      }
    }
  }

  return v17;
}

uint64_t wparser_impl_plusrules_Normalize(uint64_t a1, int a2, const char *a3, unsigned int a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, uint64_t a15)
{
  v40[0] = a5;
  v39 = 0;
  v21 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v25 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", v22, v23, v24, a3);
  v26 = Utf8_Utf8NbrOfSymbols(a3);
  v27 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v26 + 1));
  if (v27)
  {
    v28 = v27;
    v29 = utf8_Utf8ToUtf16(a3, a4, 0, v27, 2 * v26, &v39, 0);
    if ((v29 & 0x80000000) != 0)
    {
      v34 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v30, v31, v32, v28);
      v33 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v39 + 1));
      if (!v33)
      {
        return v25;
      }

      v34 = v33;
      v29 = (*(a1 + 72))(*(a1 + 56), v28, v39, v33, v40, *(a1 + 64));
      if ((v29 & 0x80000000) == 0)
      {
        *(v34 + v40[0]) = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN874: %s", v35, v36, v37, v34);
        v29 = DoDctPlusRules(*(a1 + 16), *(a1 + 32), *(a1 + 40), *(a1 + 48), v34, v40[0], a6, a7, a8, a9, a10, a11, a12, a13, a15, *(a1 + 80), a3, v28);
      }
    }

    v25 = v29;
    heap_Free(*(*(a1 + 16) + 8), v28);
    if (v34)
    {
      heap_Free(*(*(a1 + 16) + 8), v34);
    }
  }

  return v25;
}

uint64_t wparser_impl_plusrules_Spell(uint64_t a1, int a2, const char *a3, unsigned int a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, int a11)
{
  v37 = a5;
  v36 = 0;
  v17 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v21 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", v18, v19, v20, a3);
  v22 = Utf8_Utf8NbrOfSymbols(a3);
  v23 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v22 + 1));
  if (v23)
  {
    v24 = v23;
    v25 = utf8_Utf8ToUtf16(a3, a4, 0, v23, 2 * v22, &v36, 0);
    if ((v25 & 0x80000000) != 0)
    {
      v30 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v26, v27, v28, v24);
      v29 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v36 + 1));
      if (!v29)
      {
        return v21;
      }

      v30 = v29;
      v25 = (*(a1 + 72))(*(a1 + 56), v24, v36, v29, &v37, *(a1 + 64));
      if ((v25 & 0x80000000) == 0)
      {
        *(v30 + v37) = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN874: %s", v31, v32, v33, v30);
        LOWORD(v35) = a9;
        v25 = DoDctPlusRulesSpell(*(a1 + 16), *(a1 + 32), *(a1 + 40), v30, v37, a6, a7, a8, v35, a10, a11);
      }
    }

    v21 = v25;
    heap_Free(*(*(a1 + 16) + 8), v24);
    if (v30)
    {
      heap_Free(*(*(a1 + 16) + 8), v30);
    }
  }

  return v21;
}

uint64_t wparser_impl_plusrules_Latin(uint64_t a1, int a2, char *a3, unsigned int a4, char **a5)
{
  v28 = a4;
  v27 = 0;
  v9 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v13 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", v10, v11, v12, a3);
  v14 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * a4 + 2);
  if (v14)
  {
    v15 = v14;
    v16 = utf8_Utf8ToUtf16(a3, a4, 0, v14, 2 * a4, &v27, 0);
    if ((v16 & 0x80000000) != 0)
    {
      v21 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v17, v18, v19, v15);
      v20 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v27 + 1));
      if (!v20)
      {
        return v13;
      }

      v21 = v20;
      v16 = (*(a1 + 72))(*(a1 + 56), v15, v27, v20, &v28, *(a1 + 64));
      if ((v16 & 0x80000000) == 0)
      {
        v21[v28] = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN874: %s", v22, v23, v24, v21);
        v13 = DoTHTLatin(*(a1 + 16), *(a1 + 40), v21, v28, a5);
        if (a5)
        {
          v25 = *a3;
          if ((v25 & 0x80000000) == 0)
          {
            **a5 = v25;
          }
        }

        goto LABEL_12;
      }
    }

    v13 = v16;
LABEL_12:
    heap_Free(*(*(a1 + 16) + 8), v15);
    if (v21)
    {
      heap_Free(*(*(a1 + 16) + 8), v21);
    }
  }

  return v13;
}

uint64_t wparser_impl_plusrules_End(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((result & 0x80000000) == 0)
  {
    v5 = *(a1 + 48);
    if (!v5 || (result = o2t_ObjClose(v5), (result & 0x80000000) == 0))
    {

      return safeh_HandleCheck(a1, a2, 87652, 88);
    }
  }

  return result;
}

uint64_t wordm_sysdct_Lookup_Thai(void *a1, const char *a2, uint64_t a3, unsigned int a4, const char *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = 0;
  result = 2370838535;
  if (a1 && a2 && a3)
  {
    *a3 = 0;
    cstdlib_memset((a3 + 4), 0, 0x41uLL);
    *(a3 + 70) = 0;
    *(a3 + 72) = 0;
    cstdlib_memset((a3 + 76), 0, 0x101uLL);
    *(a3 + 334) = 0;
    v11 = cstdlib_strlen(a2);
    v12 = v11;
    if ((v11 & 0xFFC0) != 0)
    {
      v13 = 64;
    }

    else
    {
      v13 = v11;
    }

    cstdlib_memmove(__dst, a2, v13);
    __dst[v13] = 0;
    if (v12)
    {
      *a3 = 2;
      if (v13 <= a4)
      {
        LOWORD(a4) = v13;
      }

      if (a4)
      {
        LOWORD(v14) = 0;
        v15 = a4;
        do
        {
          if ((__dst[v15] + 49) >= 0xCu)
          {
            v16 = 0;
            v17 = __dst[v15];
            if ((v17 - 231) >= 7 && v17 != 229)
            {
              v16 = 0;
              v20 = __dst[v15 - 1];
              if ((v20 - 224) >= 5 && v20 != 230)
              {
                v25 = 256;
                result = sysdct_word_LookUp_Thai(a1, __dst, v15, __src, &v25, a5);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                LOWORD(v14) = v25;
                v16 = v25 != 256;
              }
            }
          }

          else
          {
            v16 = 0;
          }

          v18 = v15 + v16;
          v15 = v15 + v16 - 1;
        }

        while ((v18 - 2) < a4 && !v16);
        v14 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      if ((v15 - 1) >= a4)
      {
        cstdlib_memmove((a3 + 4), __dst, 1uLL);
        result = 0;
        *(a3 + 5) = 0;
        *(a3 + 70) = 1;
        *a3 = 0;
      }

      else
      {
        __src[v14] = 0;
        cstdlib_strcpy((a3 + 76), __src);
        *(a3 + 72) = 16;
        *(a3 + 334) = v25;
        v24 = v15;
        if (__dst[v15] == 230)
        {
          cstdlib_strcat((a3 + 76), __src);
          *(a3 + 334) += v25;
          v24 = ++v15;
        }

        __dst[v24] = 0;
        cstdlib_strcpy((a3 + 4), __dst);
        result = 0;
        *(a3 + 70) = v15;
      }
    }

    else
    {
      v21 = 0;
      do
      {
        v22 = v21;
        v23 = a2[v21++];
      }

      while (v23 == 32);
      cstdlib_memmove((a3 + 4), a2, v22);
      return 0;
    }
  }

  return result;
}

uint64_t DoDctPlusRules(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int16 a12, _WORD *a13, int a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18)
{
  v133 = *MEMORY[0x277D85DE8];
  v83 = -1;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v126 = 0u;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  memset(__dst, 0, sizeof(__dst));
  memset(__b, 0, 512);
  v111 = 0u;
  v112 = 0u;
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
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  memset(v84, 0, sizeof(v84));
  v82 = 0;
  v81 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v77 = 0;
  cstdlib_memset(__b, 0, 0x40uLL);
  __b[32] = 0;
  cstdlib_memset(&__b[33], 0, 0x200uLL);
  __b[289] = 0;
  LOWORD(v85) = 0;
  BYTE2(v85) = 0;
  v113 = 0;
  *(a15 + 8) = 0;
  *(a15 + 12) = 0x100000001;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  v71 = LogLevel > 4;
  DomainSegmentations = bed_GetpElem(a8, 0xFFFFu, &v82);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    return DomainSegmentations;
  }

  if (!a6 && *(v82 + 36))
  {
    *(a15 + 16) = 0;
  }

  log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", v25, v26, v27, a6);
  UTOITrace(v71, a1, a7, a8, "START of normalization");
  if (a16 == 1)
  {
    DomainSegmentations = getDomainSegmentations(a1, a3, a5, a6, a8, a11, &v79, &v78 + 1, 1, 0);
    if ((DomainSegmentations & 0x80000000) != 0)
    {
      return DomainSegmentations;
    }
  }

  v75 = a2;
  v70 = a8;
  v83 = -1;
  v74 = a6;
  if (a6)
  {
    v28 = 0;
    LOWORD(v29) = 0;
    v30 = 0;
    v31 = 0;
    while (1)
    {
      if (a16 == 1 && HIWORD(v78) > v29)
      {
        v32 = 0;
        v29 = v29;
        v33 = (v79 + 340 * v29);
        while (1)
        {
          v34 = *v33;
          if (v34 > v31)
          {
            break;
          }

          v33 += 170;
          if (v34 == v31)
          {
            v32 = v29;
          }

          ++v29;
          if (v34 == v31 || v29 >= HIWORD(v78))
          {
            if (v34 != v31)
            {
              break;
            }

            cstdlib_memcpy(__dst, (v79 + 340 * v32 + 4), 0x150uLL);
            goto LABEL_23;
          }
        }
      }

      v39 = wordm_sysdct_Lookup_Thai(a3, (a5 + v31), __dst, 0x16u, "normal");
      if ((v39 & 0x80000000) != 0)
      {
        break;
      }

LABEL_23:
      if (__dst[0] == 5 || __dst[0] == 2)
      {
        v39 = handleWordMatch(a1, v75, a4, a5, v31, __dst, &v83, __b, v84, a9, a14, a13, a10, a11, a12, a17, a18, &v78, &v77);
        if ((v39 & 0x80000000) != 0)
        {
          break;
        }

        v39 = bed_GetcElem(a9, &v81);
        if ((v39 & 0x80000000) != 0)
        {
          break;
        }

        v41 = 0;
      }

      else
      {
        log_OutText(*(a1 + 32), v75, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v36, v37, v38, v28);
        if (v83 == -1)
        {
          v83 = v31;
        }

        v41 = 1;
      }

      if (*(a15 + 16) == 1)
      {
        v42 = *(a15 + 8);
        v43 = *a15;
        if (v42 >= *(a15 + 10))
        {
          v44 = heap_Realloc(*(a1 + 8), v43, 12 * *(a15 + 10) + 121);
          if (!v44)
          {
            v49 = 2350915594;
            goto LABEL_64;
          }

          v43 = v44;
          *a15 = v44;
          *(a15 + 10) += 10;
          v42 = *(a15 + 8);
        }

        v45 = v42;
        v46 = v43 + 12 * v42;
        *v46 = v30;
        *(v46 + 2) = 0;
        v47 = WORD3(v116);
        if (v41)
        {
          *(v43 + 12 * v45 + 4) = 1;
        }

        v30 += 3 * v47;
        *(a15 + 8) = v45 + 1;
      }

      else
      {
        v47 = WORD3(v116);
      }

      v31 += v47;
      v28 = v31;
      v48 = a11;
      if (v31 >= v74)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    v31 = 0;
    v48 = a11;
LABEL_46:
    LOBYTE(__dst[1]) = 0;
    WORD3(v116) = 0;
    BYTE12(v116) = 0;
    HIWORD(v132) = 0;
    v39 = handleWordMatch(a1, v75, a4, a5, v31, __dst, &v83, __b, v84, a9, a14, a13, a10, v48, a12, a17, a18, &v78, &v77);
    if ((v39 & 0x80000000) == 0)
    {
      if (!v74)
      {
        goto LABEL_77;
      }

      v39 = bed_GetcElem(a9, &v81);
      if ((v39 & 0x80000000) == 0)
      {
        if (!v81)
        {
          log_OutText(*(a1 + 32), v75, 5, 0, "[UTOI] deleting region, no replacement text found", v50, v51, v52, v69);
          goto LABEL_77;
        }

        UTOISubTrace(v71, a1, a9, "replacement string");
        if (*(a15 + 16) != 1)
        {
LABEL_77:
          v49 = utoin_IncrReplaceCurrentRegion(a7, v70, a9, v74, a15);
          if ((v49 & 0x80000000) == 0)
          {
            UTOITrace(v71, a1, a7, v70, "END of normalization");
          }

          goto LABEL_64;
        }

        v39 = bed_GetpElem(a9, 0, &v80);
        if ((v39 & 0x80000000) == 0)
        {
          if (!v81)
          {
            v65 = 1;
            v60 = LogLevel;
            goto LABEL_71;
          }

          v56 = 0;
          v57 = 0;
          v58 = 1;
          v59 = v80;
          v60 = LogLevel;
          while (1)
          {
            if (*(v59 + v56) == 16)
            {
              v61 = *(a15 + 8);
              if (v57 >= v61)
              {
LABEL_69:
                log_OutText(*(a1 + 32), v75, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v53, v54, v55, v58);
                v65 = 0;
LABEL_71:
                if (v60 >= 5 && *(a15 + 8))
                {
                  v67 = 0;
                  v68 = 0;
                  do
                  {
                    log_OutText(*(a1 + 32), v75, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v53, v54, v55, v68++);
                    v67 += 12;
                  }

                  while (v68 < *(a15 + 8));
                }

                if (v65)
                {
                  *(a15 + 12) = 0;
                }

                goto LABEL_77;
              }

              v62 = v57;
              v63 = (*a15 + 12 * v57 + 4);
              while (1)
              {
                v64 = *v63;
                v63 += 3;
                if (v64 != 1)
                {
                  break;
                }

                if (v61 == ++v62)
                {
                  goto LABEL_69;
                }
              }

              *(*a15 + 12 * v62 + 8) = v56;
              ++v58;
              v57 = v62 + 1;
            }

            if (++v56 >= v81)
            {
              v65 = 1;
              goto LABEL_71;
            }
          }
        }
      }
    }
  }

  v49 = v39;
LABEL_64:
  if (HIWORD(v78))
  {
    heap_Free(*(a1 + 8), v79);
  }

  return v49;
}

uint64_t handleWordMatch(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, __int16 a5, unsigned __int16 *a6, _WORD *a7, uint64_t a8, char *__dst, uint64_t a10, int a11, _WORD *a12, uint64_t a13, uint64_t a14, unsigned __int16 a15, uint64_t a16, uint64_t a17, _WORD *a18, _WORD *a19)
{
  v65 = *MEMORY[0x277D85DE8];
  HexArg = 2350915591;
  if (!a4 || !a6 || !a7 || !a8 || !__dst || !a10)
  {
    return HexArg;
  }

  v62 = 0;
  __n = 0;
  if (*a7 == -1)
  {
    v27 = 0;
    HexArg = 0;
  }

  else
  {
    cstdlib_memmove(__dst, a6 + 2, a6[35]);
    *(__dst + 32) = a6[35];
    cstdlib_memmove(__dst + 66, a6 + 38, a6[167]);
    *(__dst + 289) = a6[167];
    __n = 512;
    cstdlib_memset(__n_2, 0, 0x200uLL);
    HexArg = o2t_Transcribe(a3, (a4 + *a7), (a5 - *a7), a8, __dst, __n_2, &__n, &v62);
    if ((HexArg & 0x80000000) != 0)
    {
      return HexArg;
    }

    v27 = v62;
  }

  v29 = a18;
  v28 = a19;
  v30 = a16;
  v31 = a17;
  v32 = a15;
  v34 = a13;
  v33 = a14;
  v35 = a11;
  v36 = *(a8 + 578);
  if (v36 && (v27 & 1) == 0)
  {
    if (a11)
    {
      v37 = cstdlib_strlen(szWORD_BEG_3);
      v38 = bed_Insert(a10, szWORD_BEG_3, v37);
      if ((v38 & 0x80000000) != 0)
      {
        return v38;
      }

      *a12 += cstdlib_strlen(szWORD_BEG_3);
      v36 = *(a8 + 578);
    }

    v39 = v36 + 1;
    v40 = heap_Alloc(*(a1 + 8), (v36 + 1));
    if (!v40)
    {
      return 2350915594;
    }

    v41 = v40;
    cstdlib_memset(v40, 0, v39);
    cstdlib_strncpy(v41, (a8 + 66), *(a8 + 578));
    v41[*(a8 + 578)] = 0;
    v42 = bed_Insert(a10, v41, *(a8 + 578));
    if ((v42 & 0x80000000) != 0)
    {
LABEL_42:
      HexArg = v42;
      heap_Free(*(a1 + 8), v41);
      return HexArg;
    }

    *a12 += *(a8 + 578);
    heap_Free(*(a1 + 8), v41);
    if (a11)
    {
      v43 = cstdlib_strlen(szWORD_END_3);
      v38 = bed_Insert(a10, szWORD_END_3, v43);
      if ((v38 & 0x80000000) != 0)
      {
        return v38;
      }

      *a12 += cstdlib_strlen(szWORD_END_3);
    }

    v31 = a17;
    HexArg = getHexArg(a1, a2, *(a8 + 64), a13, a15, a14, a16, a17, a18, a19);
    if ((HexArg & 0x80000000) != 0)
    {
      return HexArg;
    }

    v27 = v62;
    v30 = a16;
    v32 = a15;
    v28 = a19;
    v33 = a14;
    v34 = a13;
    v29 = a18;
    v35 = a11;
  }

  v44 = __n;
  if (__n && ((v27 & 2) == 0 || !*(__dst + 32)))
  {
    v54 = v34;
    v55 = v29;
    v56 = v28;
    v57 = v33;
    v58 = v32;
    v59 = v30;
    v53 = v31;
    v60 = v35;
    if (v35)
    {
      v45 = cstdlib_strlen(szWORD_BEG_3);
      v38 = bed_Insert(a10, szWORD_BEG_3, v45);
      if ((v38 & 0x80000000) != 0)
      {
        return v38;
      }

      *a12 += cstdlib_strlen(szWORD_BEG_3);
      v44 = __n;
    }

    v46 = v44 + 1;
    v47 = heap_Alloc(*(a1 + 8), (v44 + 1));
    HexArg = 2350915594;
    if (!v47)
    {
      return HexArg;
    }

    v41 = v47;
    cstdlib_memset(v47, 0, v46);
    cstdlib_strncpy(v41, __n_2, __n);
    v41[__n] = 0;
    v42 = bed_Insert(a10, v41, __n);
    if ((v42 & 0x80000000) == 0)
    {
      *a12 += __n;
      heap_Free(*(a1 + 8), v41);
      if (!v60)
      {
LABEL_34:
        HexArg = getHexArg(a1, a2, (a5 - *a7), v54, v58, v57, v59, v53, v55, v56);
        if ((HexArg & 0x80000000) != 0)
        {
          return HexArg;
        }

        v27 = v62;
        goto LABEL_36;
      }

      v48 = cstdlib_strlen(szWORD_END_3);
      v38 = bed_Insert(a10, szWORD_END_3, v48);
      if ((v38 & 0x80000000) == 0)
      {
        *a12 += cstdlib_strlen(szWORD_END_3);
        goto LABEL_34;
      }

      return v38;
    }

    goto LABEL_42;
  }

LABEL_36:
  if ((v27 & 2) != 0)
  {
    v50 = *a7;
    v51 = a5 - v50;
    cstdlib_memmove(a8, (a4 + v50), v51);
    cstdlib_memmove((a8 + v51), a6 + 2, a6[35]);
    *(a8 + 64) = a6[35] + v51;
    cstdlib_memmove((a8 + 66), __n_2, __n);
    p_n = &__n;
  }

  else
  {
    cstdlib_memmove(a8, a6 + 2, a6[35]);
    *(a8 + 64) = a6[35];
    p_n = a6 + 167;
    cstdlib_memmove((a8 + 66), a6 + 38, a6[167]);
  }

  *(a8 + 578) = *p_n;
  *a7 = -1;
  return HexArg;
}

uint64_t DoDctPlusRulesSpell(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    return 0;
  }

  v16 = 0;
  for (i = 0; i < a5; v16 = i)
  {
    memset(v29, 0, sizeof(v29));
    v21 = wordm_sysdct_CharLookup_Thai(a3, (a4 + i), (a5 - i), v29, 0x16u, a11, "normal");
    if ((v21 & 0x80000000) != 0)
    {
      break;
    }

    if ((LODWORD(v29[0]) - 2) > 3)
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (utoi position %d len %d not in dict", v18, v19, v20, v16);
    }

    else
    {
      v22 = cstdlib_strlen(&v29[4] + 12) + 3;
      v23 = heap_Alloc(*(a1 + 8), v22);
      if (!v23)
      {
        return 2350915594;
      }

      v24 = v23;
      cstdlib_memset(v23, 0, v22);
      if (i)
      {
        cstdlib_strcpy(v24, &v29[4] + 12);
      }

      else
      {
        cstdlib_strcpy(v24, " ");
        cstdlib_strcat(v24, &v29[4] + 12);
      }

      cstdlib_strcat(v24, " ");
      v25 = cstdlib_strlen(v24);
      v21 = bed_Insert(a6, v24, v25);
      if ((v21 & 0x80000000) != 0)
      {
        heap_Free(*(a1 + 8), v24);
        return v21;
      }

      heap_Free(*(a1 + 8), v24);
    }

    v26 = cstdlib_strlen(v29 + 4);
    if (v26)
    {
      i += v26;
    }

    else
    {
      i = a5;
    }
  }

  return v21;
}

uint64_t getHexArg(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9, _WORD *a10)
{
  v47 = a6;
  if (a3)
  {
    v14 = a6;
    v18 = 2350915584;
    v19 = heap_Calloc(*(a1 + 8), 1, 2 * a3 + 2);
    if (v19)
    {
      v20 = v19;
      v44 = a4;
      v45 = a5;
      v21 = *a9 + a3;
      if (LH_wcslen(a8) >= v21)
      {
        v23 = (a8 + 2 * *a9);
        v22 = a3;
        LH_wcsncpy(v20, v23, a3);
      }

      else
      {
        v22 = 0;
      }

      *(v20 + 2 * v22) = 0;
      v24 = utf8_16BitNbrOfUtf8Chars(v20);
      v28 = v24 - 1;
      if (v24 == 1)
      {
        log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] converted utf8 word length is 0, cant get hex args", v25, v26, v27, v43);
        v37 = *(a1 + 8);
        v38 = v20;
LABEL_20:
        heap_Free(v37, v38);
        return v18;
      }

      v29 = (v24 - 1);
      v30 = heap_Calloc(*(a1 + 8), 1, v29 + 1);
      if (v30)
      {
        v31 = v30;
        cstdlib_strncpy(v30, (a7 + *a10), v28);
        v31[v29] = 0;
        log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] get hex args from UTF16Word(%s,pos=%d) UTF8Word(%s,pos=%d)", v32, v33, v34, v20);
        v35 = *(v14 + 16);
        v36 = v35 + 2 * v28 + 1;
        if (*(v14 + 18) >= v36)
        {
          v18 = 0;
        }

        else
        {
          v18 = datac_RequestBlock(v44, v45, (v35 + 2 * v28 + 1), &v47);
          if ((v18 & 0x80000000) != 0)
          {
LABEL_19:
            heap_Free(*(a1 + 8), v20);
            v37 = *(a1 + 8);
            v38 = v31;
            goto LABEL_20;
          }

          v14 = v47;
          v35 = *(v47 + 16);
        }

        v39 = 0;
        v40 = (*(v14 + 8) + *(v14 + 2) * v35);
        *(v14 + 16) = v36;
        do
        {
          v41 = v40;
          LH_itoa(v31[v39], v46, 0x10u);
          v46[2] = 0;
          *v41 = v46[0];
          v40 = v41 + 2;
          v41[1] = v46[1];
          ++v39;
        }

        while (v29 != v39);
        *v40 = 0;
        *a9 += a3;
        *a10 += v28;
        goto LABEL_19;
      }

      heap_Free(*(a1 + 8), v20);
      return 2350915594;
    }

    else
    {
      return 2350915594;
    }
  }

  else
  {
    v18 = 2350915584;
    log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] that parser : word length is 0, cant get hex args", a6, a7, a8, v43);
  }

  return v18;
}

uint64_t xcode_Utf16leToWin874(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4, _WORD *a5)
{
  v5 = 2370838535;
  if (a2 && a4 && a5)
  {
    if (a3)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3;
      while (v9 < *a5)
      {
        v11 = *v8++;
        v9 += local_xcode_char_Utf16leToWin874(v11, (a4 + v9));
        if (!--v10)
        {
          goto LABEL_10;
        }
      }

      return 2370838537;
    }

    else
    {
      LOWORD(v9) = 0;
LABEL_10:
      v5 = 0;
      *a5 = v9;
    }
  }

  return v5;
}

uint64_t local_xcode_char_Utf16leToWin874(int a1, char *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 <= 0xFF)
  {
    v2 = a1;
LABEL_4:
    *a2 = v2;
    return 1;
  }

  if (a1 <= 8219)
  {
    if (a1 > 8215)
    {
      if (a1 == 8216)
      {
        v2 = -111;
        goto LABEL_4;
      }

      if (a1 == 8217)
      {
        v2 = -110;
        goto LABEL_4;
      }
    }

    else
    {
      if (a1 == 8211)
      {
        v2 = -106;
        goto LABEL_4;
      }

      if (a1 == 8212)
      {
        v2 = -105;
        goto LABEL_4;
      }
    }
  }

  else if (a1 <= 8225)
  {
    if (a1 == 8220)
    {
      v2 = -109;
      goto LABEL_4;
    }

    if (a1 == 8221)
    {
      v2 = -108;
      goto LABEL_4;
    }
  }

  else
  {
    switch(a1)
    {
      case 8226:
        v2 = -107;
        goto LABEL_4;
      case 8364:
        v2 = 0x80;
        goto LABEL_4;
      case 8230:
        v2 = -123;
        goto LABEL_4;
    }
  }

  v3 = 0;
  if ((~a1 & 0xE00) == 0 && (a1 - 3585) <= 0x5A)
  {
    v2 = a1 - 96;
    goto LABEL_4;
  }

  return v3;
}

uint64_t mDictFind(char *__s2)
{
  v2 = &pMorp_Dct;
  v3 = 3677;
  while (cstdlib_strcmp(v2, __s2))
  {
    v2 += 11;
    if (!--v3)
    {
      return 82;
    }
  }

  return v2[10];
}

void *swapMRT(uint64_t a1, unsigned int a2, unsigned int a3)
{
  __dst = 0;
  v4 = a1 + 89;
  v5 = (a1 + 89 + 4 * a2);
  cstdlib_memcpy(&__dst, v5, 4uLL);
  v6 = (v4 + 4 * a3);
  cstdlib_memcpy(v5, v6, 4uLL);
  return cstdlib_memcpy(v6, &__dst, 4uLL);
}

void *swapMST(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v4 = a1 + 346;
  v5 = (a1 + 346 + 71 * a2);
  cstdlib_memcpy(v8, v5, 0x47uLL);
  v6 = (v4 + 71 * a3);
  cstdlib_memcpy(v5, v6, 0x47uLL);
  return cstdlib_memcpy(v6, v8, 0x47uLL);
}

uint64_t o2t_ObjOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v3 = 2370838535;
  v10 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v10) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(*(v10 + 8), 9440);
    if (v7)
    {
      v8 = v7;
      cstdlib_memset(v7, 0, 0x24E0uLL);
      v3 = 0;
      *v8 = a1;
      v8[1] = a2;
      v8[2] = v10;
      *a3 = v8;
    }

    else
    {
      return 2370838538;
    }
  }

  return v3;
}

uint64_t o2t_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t o2t_Transcribe(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3, _WORD *a4, _WORD *a5, char *__dst, unsigned __int16 *a7, char *a8)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = 2370838535;
  v36 = 0;
  if (!a1 || !a2 || (a3 - 64) < 0xFFC1u)
  {
    return v8;
  }

  v16 = *a7;
  v35 = 0;
  __dsta[0] = 0;
  if (a3 < 2)
  {
    ReadThaiChar(*a2, __dst);
    if (a4[32] || a5[32])
    {
      v32 = cstdlib_strlen(__dst);
      cstdlib_memcpy(__dsta, __dst, v32);
      __dsta[v32] = 0;
      goto LABEL_15;
    }

LABEL_49:
    v30 = cstdlib_strlen(__dst);
    v29 = 0;
    *a7 = v30;
    goto LABEL_51;
  }

  if (SParser(a1, a2, a3) != 255)
  {
    v17 = WParser(a1, __dst, a7, &v36, &v35);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    if (v35 != 255)
    {
      if (v36 && (a4[32] || a5[32]))
      {
        cstdlib_strcpy(__dsta, __dst);
        v32 = *a7;
LABEL_15:
        v18 = 0;
        v19 = a4[32] != 0;
        if (a4[32])
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        if (a5[32])
        {
          v19 = v20;
        }

        if (v19 == 3)
        {
          v21 = 7;
        }

        else
        {
          v21 = v19;
        }

        v33 = v16;
        while (1)
        {
          if (v21)
          {
            v22 = a4[32];
            if (v22 + a3 <= 0x3F)
            {
              break;
            }
          }

          if ((v21 & 2) != 0)
          {
            v25 = a5[32];
            if (v25 + a3 <= 0x3F)
            {
              if (*a2 == 224 && *a5 == 224)
              {
                cstdlib_memcpy(v38, a5, v25);
                v38[0] = -31;
                v18 = a5[32];
              }

              else
              {
                cstdlib_memcpy(v38, a2, a3);
                cstdlib_memcpy(&v38[a3], a5, a5[32]);
                v18 = a5[32] + a3;
              }

              v23 = -3;
              v24 = 2;
              goto LABEL_37;
            }
          }

          if ((v21 & 4) != 0)
          {
            v26 = a4[32];
            if (v26 + a3 + a5[32] <= 0x3F)
            {
              cstdlib_memcpy(v38, a4, v26);
              cstdlib_memcpy(&v38[a4[32]], a2, a3);
              v27 = a4[32] + a3;
              cstdlib_memcpy(&v38[v27], a5, a5[32]);
              v18 = a5[32] + v27;
              v23 = -5;
              v24 = 3;
              goto LABEL_37;
            }
          }

LABEL_38:
          if (SParser(a1, v38, v18) == 255)
          {
            return 2370838535;
          }

          *a7 = v16;
          v17 = WParser(a1, __dst, a7, &v36, &v35);
          if ((v17 & 0x80000000) != 0)
          {
            return v17;
          }

          if (v35 == 255)
          {
            return 2370838535;
          }

          if (!v21 || !v36)
          {
            if (!v36)
            {
              return 0;
            }

            if (a3 == 1 && *a2 - 224 <= 4)
            {
              cstdlib_strcpy(__dst, __dsta);
              cstdlib_memcpy(&__dst[v32], a5 + 33, a5[289]);
              v28 = a5[289] + v32;
              *a7 = v28;
              __dst[v28] = 0;
              v29 = 2;
            }

            else
            {
              cstdlib_strcpy(__dst, __dsta);
              v29 = 0;
              *a7 = v32;
            }

LABEL_51:
            v8 = 0;
            *a8 = v29;
            return v8;
          }
        }

        cstdlib_memcpy(v38, a4, v22);
        cstdlib_memcpy(&v38[a4[32]], a2, a3);
        v18 = a4[32] + a3;
        v23 = -2;
        v24 = 1;
LABEL_37:
        v38[v18] = 0;
        *a8 = v24;
        v21 &= v23;
        v16 = v33;
        goto LABEL_38;
      }

      goto LABEL_49;
    }
  }

  return v8;
}

uint64_t SParser(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  v287 = *MEMORY[0x277D85DE8];
  v6 = a1 + 89;
  cstdlib_memset(a1 + 89, 0, 0x100uLL);
  v7 = a1 + 346;
  cstdlib_memset(a1 + 346, 0, 0x2380uLL);
  v8 = a1 + 24;
  cstdlib_memcpy(a1 + 24, a2, a3);
  v9 = 0;
  v10 = 0;
  a1[a3 + 24] = 0;
  a1[9434] = 0;
  a1[345] = 0;
  v11 = 0xFFFFFFFFLL;
  a1[88] = 0;
  v272 = v6;
  v274 = a1 + 346;
  v266 = a3;
  do
  {
    if ((v11 & 0x80000000) != 0)
    {
      v11 = 0;
      v13 = a1[88];
    }

    else
    {
      v12 = &v7[71 * v11++];
      v13 = v12[1];
      a1[88] = v13;
    }

    if (v13 >= a3)
    {
      continue;
    }

    if (v10)
    {
      v14 = v10;
      v15 = 78;
      v16 = a1 + 92;
      do
      {
        if (*(v16 - 3) == v13)
        {
          if (*(v16 - 2) == 1 && v7[71 * *v16 + 3] == 69)
          {
            v7[71 * (v11 - 1) + 3] = 78;
          }

          v15 = 89;
        }

        v16 += 4;
        --v14;
      }

      while (v14);
      if (v15 != 78)
      {
        continue;
      }
    }

    v273 = v11;
    v17 = &v8[v13];
    if (*v17 - 161 >= 0x2E)
    {
      v18 = csrulesc;
    }

    else
    {
      v18 = 0;
    }

    if (*v17 - 161 >= 0x2E)
    {
      v19 = csrulesv;
    }

    else
    {
      v19 = csrulesc;
    }

    if (v18 >= v19)
    {
      goto LABEL_229;
    }

    v270 = 0;
    LODWORD(v20) = 0;
    HIDWORD(v20) = v13;
    v275 = v20;
    do
    {
      v21 = v17;
      v22 = &psrules + 61 * v18;
      v23 = v22 + 30;
      v24 = *v22;
      v25 = cstdlib_strchr(v22 + 30, 43);
      v27 = v13;
      v28 = v13;
      if (v24)
      {
        v29 = v24;
        *&v26 = v275;
        do
        {
          v30 = v8[BYTE4(v26)];
          switch(v29)
          {
            case 'A':
              if (v30 == -61)
              {
                goto LABEL_126;
              }

              goto LABEL_84;
            case 'B':
              if (v30 == -57)
              {
                goto LABEL_126;
              }

              goto LABEL_84;
            case 'C':
              v34 = v8[BYTE4(v26)] - 161 > 0x29;
              v35 = 1 << (v30 + 95);
              v36 = 0x2802C50040BLL;
              goto LABEL_89;
            case 'D':
              v37 = v8[BYTE4(v26)] - 164 > 0x13;
              v38 = 1 << (v30 + 92);
              v39 = 655425;
              goto LABEL_96;
            case 'E':
              if (v30 == -51)
              {
                goto LABEL_126;
              }

              goto LABEL_84;
            case 'F':
              v37 = v8[BYTE4(v26)] - 164 > 0x12;
              v38 = 1 << (v30 + 92);
              v39 = 425985;
              goto LABEL_96;
            case 'G':
              v34 = v8[BYTE4(v26)] - 170 > 0x23;
              v35 = 1 << (v30 + 86);
              v36 = 0x94840A001;
              goto LABEL_89;
            case 'H':
              if (v30 == -53)
              {
                goto LABEL_126;
              }

LABEL_84:
              if ((v30 + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'J':
              if ((v30 + 49) < 0xD2u || v30 == -57 || v8[BYTE4(v26)] == 205)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'K':
              v34 = v8[BYTE4(v26)] - 164 > 0x26;
              v35 = 1 << (v30 + 92);
              v36 = 0x4020000001;
              goto LABEL_89;
            case 'L':
              if (v30 != -59 && v8[BYTE4(v26)] != 195)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'M':
              v34 = v8[BYTE4(v26)] - 161 > 0x2A;
              v35 = 1 << (v30 + 95);
              v36 = 0x40681041401;
              goto LABEL_89;
            case 'N':
              v34 = v8[BYTE4(v26)] - 162 > 0x28;
              v35 = 1 << (v30 + 94);
              v36 = 0x1A8006F81C5;
LABEL_89:
              v43 = v35 & v36;
              if (!v34 && v43 != 0)
              {
                goto LABEL_117;
              }

              goto LABEL_126;
            case 'O':
              if ((v30 + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

              v33 = v8[BYTE4(v26)] - 194 > 5 || ((1 << (v30 + 62)) & 0x23) == 0;
              if (!v33)
              {
                goto LABEL_126;
              }

              goto LABEL_111;
            case 'P':
              v40 = v8[BYTE4(v26)] - 184 > 0x13;
              v41 = 1 << (v30 + 72);
              v42 = 796673;
              goto LABEL_103;
            case 'Q':
              v40 = v8[BYTE4(v26)] - 166 > 7;
              v41 = 1 << (v30 + 90);
              v42 = 145;
              goto LABEL_103;
            case 'R':
              v40 = v8[BYTE4(v26)] - 195 > 4;
              v41 = 1 << (v30 + 61);
              v42 = 21;
LABEL_103:
              v47 = v41 & v42;
              if (!v40 && v47 != 0)
              {
                goto LABEL_117;
              }

              goto LABEL_126;
            case 'S':
              v37 = v8[BYTE4(v26)] - 174 > 0x1B;
              v38 = 1 << (v30 + 82);
              v39 = 134217731;
LABEL_96:
              v45 = v38 & v39;
              if (!v37 && v45 != 0)
              {
                goto LABEL_111;
              }

              goto LABEL_126;
            case 'T':
              if ((v30 & 0xFFFFFFFC) == 0xFFFFFFE8)
              {
                goto LABEL_117;
              }

              if (v22[60] == 78)
              {
                v31 = -2;
              }

              else
              {
                v31 = -1;
              }

              v32 = v26;
              if (v22[60] == 78)
              {
                v32 = v26 + 1;
              }

              LODWORD(v26) = v32;
              break;
            case 'U':
              if ((v30 + 49) < 0xD2u || (v30 | 4) == 0xC7)
              {
                goto LABEL_126;
              }

              goto LABEL_111;
            case 'W':
              if (v30 == -62)
              {
                goto LABEL_126;
              }

              goto LABEL_110;
            case 'X':
              if ((v30 + 95) > 0x2D)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'Y':
              if ((v30 + 95) > 0x2D)
              {
                goto LABEL_126;
              }

              goto LABEL_111;
            case 'Z':
              if (v30 == -57)
              {
                goto LABEL_126;
              }

LABEL_110:
              if ((v30 + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

LABEL_111:
              *&v26 = vadd_s32(*&v26, 0x100000001);
              v280 = v26;
              contable(v30, 1, v284);
              v26 = v280;
              if (v284[0] == 45)
              {
                v31 = -1;
              }

              else
              {
                v31 = -2;
              }

              break;
            case 'a':
              if (v30 != -47)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'b':
              if (v30 != -44)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'c':
              if (v30 != -43)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'd':
              if (v30 != -42)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'e':
              if (v30 != -41)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'f':
              if (v30 != -40)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'g':
              if (v30 != -39)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'h':
              if (v30 != -45)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'i':
              if (v30 != -25)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'j':
              if (v30 != -20)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            default:
              if (v29 != v30)
              {
                goto LABEL_126;
              }

LABEL_117:
              *&v26 = vadd_s32(*&v26, 0x100000001);
              v31 = -2;
              break;
          }

          if (v31 != -2)
          {
            break;
          }

          v29 = v22[v26];
        }

        while (v29);
        if (v31 != -2)
        {
LABEL_126:
          v17 = v21;
          goto LABEL_131;
        }

        v28 = BYTE4(v26);
        v27 = BYTE4(v26);
      }

      v49 = v8[v27];
      if ((v49 & 0xFC) == 0xE8)
      {
        goto LABEL_126;
      }

      v50 = v49 - 208 > 9 || v49 == 211;
      v17 = v21;
      if (v50)
      {
        v51 = v28 - v13;
        if (v49 != 236 && v51 != -1)
        {
          v281 = v19;
          v53 = v51;
          cstdlib_strncpy(__dst, v21, v51);
          v262 = v53;
          __dst[v53] = 0;
          v19 = v281;
          if (!v25)
          {
            goto LABEL_194;
          }

          v54 = cstdlib_strchr(v25, 39);
          v55 = &v285;
          if (v54)
          {
            while (1)
            {
              v57 = *++v55;
              v56 = v57;
              if (v57 == 88)
              {
                break;
              }

              if (!v56)
              {
                if (patt_check(v55, "X\xE4\x58X\xE2\x58X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v58 = &v285;
            while (1)
            {
              v60 = *++v58;
              v59 = v60;
              if (v60 == 88)
              {
                break;
              }

              if (!v59)
              {
                if (patt_check(v58, "X\xE2\x58X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v61 = &v285;
            while (1)
            {
              v63 = *++v61;
              v62 = v63;
              if (v63 == 88)
              {
                break;
              }

              if (!v62)
              {
                if (patt_check(v61, "X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v64 = &v285;
            while (1)
            {
              v66 = *++v64;
              v65 = v66;
              if (v66 == 88)
              {
                break;
              }

              if (!v65)
              {
                if (patt_check(v64, "X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v67 = __dst;
            do
            {
              v69 = *v67++;
              v68 = v69;
            }

            while ((v69 - 207) < 0xFFFFFFD2);
            v70 = *v67;
            switch(v70)
            {
              case 199:
                if (v68 == 164)
                {
                  goto LABEL_131;
                }

                break;
              case 197:
                v86 = v68 - 161;
                v34 = v86 > 0x1D;
                v87 = (1 << v86) & 0x2C000001;
                if (!v34 && v87 != 0)
                {
                  goto LABEL_131;
                }

                break;
              case 195:
                v71 = v68 - 161;
                if (v71 <= 0x29 && ((1 << v71) & 0x2802C500403) != 0)
                {
                  goto LABEL_131;
                }

                break;
            }

LABEL_191:
            if (patt_check(__dst, "\xE0\x58\x52") == 1 || patt_check(__dst, "\xE1\x58\x52") == 1 || patt_check(__dst, "\xE2\x58\x52") == 1)
            {
              goto LABEL_131;
            }

LABEL_194:
            if (v24 == 33)
            {
              v89 = a1[88];
              if (!v89)
              {
                goto LABEL_131;
              }

              if (patt_check(__dst, "X\xEC\x58XX\xEC\xECPQS") != 1)
              {
                if (patt_check(__dst, "XX\xEC\xECPQS") == 1 && v89 != 1 && v8[(v89 - 1)] - 207 < 0xFFFFFFD2)
                {
                  goto LABEL_131;
                }

                goto LABEL_211;
              }

              if (v89 == 1)
              {
                v91 = -1;
              }

              else
              {
                if (v8[(v89 - 1)] - 205 <= 7 && ((1 << (v8[(v89 - 1)] + 51)) & 0xA1) != 0)
                {
                  goto LABEL_211;
                }

                v91 = v89 - 2;
                if (v89 == 2)
                {
                  goto LABEL_131;
                }
              }

              if (v8[v91] != 226)
              {
                goto LABEL_131;
              }
            }

LABEL_211:
            v92 = a1[345];
            if (v92 > 0x40)
            {
              return 255;
            }

            v93 = a1[9434];
            if (v93 > 0x80)
            {
              return 255;
            }

            v94 = &v272[4 * v92];
            if (v270)
            {
              v95 = v94[1] + 1;
              v96 = v94[2] + 1;
            }

            else
            {
              cstdlib_memset(v94, 0, 4uLL);
              v92 = a1[345];
              v97 = &v272[4 * v92];
              *v97 = a1[88];
              *(v97 + 1) = 0;
              v93 = a1[9434];
              v97[3] = v93;
              v96 = 1;
              v95 = 1;
            }

            v98 = &v272[4 * v92];
            v98[1] = v95;
            v98[2] = v96;
            cstdlib_memset(&v274[71 * v93], 0, 0x47uLL);
            v99 = &v274[71 * a1[9434]];
            *v99 = a1[88];
            v99[1] = v13 + v262;
            v99[2] = 32;
            v99[5] = v18;
            cstdlib_strcpy(v99 + 6, __dst);
            v274[71 * a1[9434] + 38] = 0;
            v100 = mDictFind(__dst);
            v101 = &v274[71 * a1[9434]];
            v101[4] = v100;
            if (v101[1] == v266)
            {
              v102 = 76;
            }

            else
            {
              v102 = 70;
            }

            v101[3] = v102;
            if (v100 == 82 && cstdlib_strchr(v23, 33))
            {
              v103 = a1[9434];
              v104 = &v274[71 * v103];
              v104[4] = 86;
              v104[70] = 0;
              v17 = v21;
            }

            else
            {
              v105 = cstdlib_strchr(v23, 39);
              v103 = a1[9434];
              v106 = &v274[71 * v103];
              v17 = v21;
              if (v105)
              {
                v106[70] = 2;
              }

              else
              {
                v106[70] = 1;
              }
            }

            ++v270;
            a1[9434] = v103 + 1;
            goto LABEL_131;
          }

          v72 = __dst;
          do
          {
            v74 = *v72++;
            v73 = v74;
          }

          while ((v74 - 207) < 0xFFFFFFD2);
          if (v73 != 187 || *v72 != 197)
          {
            v75 = &v285;
            do
            {
              v77 = *++v75;
              v76 = v77;
              if (v77 == 224)
              {
                goto LABEL_170;
              }
            }

            while (v76);
            if (patt_check(v75, "\xE0\x43\x52") != 1)
            {
LABEL_170:
              v78 = &v285;
              while (1)
              {
                v80 = *++v78;
                v79 = v80;
                if (v80 == 225)
                {
                  break;
                }

                if (!v79)
                {
                  if (patt_check(v78, "\xE1\x43\x52") == 1)
                  {
                    goto LABEL_178;
                  }

                  break;
                }
              }

              v81 = &v285;
              while (1)
              {
                v83 = *++v81;
                v82 = v83;
                if (v83 == 226)
                {
                  goto LABEL_194;
                }

                if (!v82)
                {
                  if (patt_check(v81, "\xE2\x43\x52") != 1)
                  {
                    goto LABEL_194;
                  }

                  break;
                }
              }
            }

LABEL_178:
            v84 = cstdlib_strlen(__dst);
            if (__dst[(v84 - 1)] - 195 > 4 || ((1 << (__dst[(v84 - 1)] + 61)) & 0x15) == 0)
            {
              goto LABEL_194;
            }
          }
        }
      }

LABEL_131:
      ++v18;
    }

    while (v18 != v19);
    v10 = a1[345];
    if (v270)
    {
      a1[345] = ++v10;
      v9 = a1[9434];
      v6 = v272;
      v11 = v273;
      v7 = a1 + 346;
      a3 = v266;
      continue;
    }

    LOBYTE(v9) = a1[9434];
    v7 = a1 + 346;
    a3 = v266;
LABEL_229:
    v6 = v272;
    v107 = &v272[4 * v10];
    *v107 = v13;
    *(v107 + 1) = 257;
    v107[3] = v9;
    LODWORD(v107) = v9;
    v108 = &v7[71 * v9];
    *v108 = v13;
    v108[1] = v13 + 1;
    *(v108 + 1) = 20000;
    v108[4] = 85;
    v108[6] = *v17;
    v108[7] = 0;
    v108[38] = 0;
    v108[70] = 1;
    a1[345] = ++v10;
    v9 = (v107 + 1);
    a1[9434] = v107 + 1;
    v109 = (v107 + 1);
    *&v7[71 * v109 - 68] = 21573;
    if ((v9 & 0x100) != 0)
    {
      v9 = 0;
      v11 = v273;
    }

    else
    {
      v110 = a1[88];
      v111 = a1 + 349;
      v11 = v273;
      do
      {
        if (*(v111 - 2) == v110 && *v111 != 69)
        {
          *v111 = 78;
        }

        v111 += 71;
        --v109;
      }

      while (v109);
    }
  }

  while (v11 < v9);
  if (v9)
  {
    v112 = 0;
    v113 = v9;
    v114 = v9;
    do
    {
      v115 = &v274[71 * v112];
      if (v115[4] == 86)
      {
        if (v112 >= v114)
        {
          v117 = v113;
        }

        else
        {
          v116 = 1;
          v117 = v113;
          v118 = v112;
LABEL_242:
          v119 = &a1[71 * v118 + 352];
          do
          {
            if (*(v119 - 5) == *v115)
            {
              cstdlib_strcpy(__dst, v119);
              cstdlib_strcat(__dst, v115 + 6);
              v120 = mDictFind(__dst);
              if (v120 != 82)
              {
                v121 = v120;
                cstdlib_strcat(v119, v115 + 6);
                v116 = 0;
                *(v119 - 5) = v115[1];
                *(v119 - 3) = v115[3];
                *(v119 - 2) = v121;
                ++v118;
                v113 = a1[9434];
                v117 = v113;
                v122 = v113;
                if (v118 < v113)
                {
                  goto LABEL_242;
                }

                goto LABEL_263;
              }

              v117 = a1[9434];
            }

            ++v118;
            v119 += 71;
          }

          while (v118 < v117);
          v114 = v117;
          v113 = v117;
          v122 = v117;
          if ((v116 & 1) == 0)
          {
            goto LABEL_263;
          }
        }

        v115[3] = 69;
        v123 = patt_check(v115 + 6, "X\xECPQS");
        v113 = v117;
        v122 = v114;
        if (v123 == 1)
        {
          cstdlib_strcpy(v115 + 38, "!");
          v113 = a1[9434];
          v122 = v113;
        }

        v115[4] = 84;
        if (v122)
        {
          v124 = *v115;
          v125 = v122;
          v126 = a1 + 349;
          do
          {
            if (*(v126 - 2) == v124 && *v126 != 69)
            {
              *v126 = 78;
            }

            v126 += 71;
            --v125;
          }

          while (v125);
        }

        else
        {
          v122 = 0;
        }
      }

      else
      {
        v122 = v114;
      }

LABEL_263:
      ++v112;
      v114 = v122;
    }

    while (v112 < v122);
    v10 = a1[345];
    v6 = v272;
    v7 = a1 + 346;
  }

  else
  {
    LOBYTE(v113) = 0;
  }

  if (v10 >= 2u)
  {
    v127 = 0;
    v128 = 1;
    v129 = 93;
    do
    {
      v130 = v127 + 1;
      if (v127 + 1 < v10)
      {
        v131 = v129;
        v132 = v128;
        do
        {
          if (v6[4 * v127] > a1[v131])
          {
            swapMRT(a1, v127, v132);
            v10 = a1[345];
          }

          ++v132;
          v131 += 4;
        }

        while (v132 < v10);
      }

      ++v128;
      v129 += 4;
      ++v127;
    }

    while (v10 - 1 > v130);
    LOBYTE(v113) = a1[9434];
    v7 = a1 + 346;
  }

  if (v113 >= 2u)
  {
    v133 = 0;
    v134 = a1 + 418;
    v135 = 1;
    v136 = v113;
    do
    {
      v137 = v133 + 1;
      if (v133 + 1 < v136)
      {
        v138 = &v274[71 * v133];
        v139 = v134;
        v140 = v135;
        do
        {
          v141 = *v138;
          v142 = *(v139 - 1);
          if (v141 > v142 || v141 == v142 && v138[1] < *v139)
          {
            swapMST(a1, v133, v140);
            LOBYTE(v113) = a1[9434];
          }

          ++v140;
          v139 += 71;
          v136 = v113;
        }

        while (v140 < v113);
      }

      ++v135;
      v134 += 71;
      ++v133;
    }

    while (v136 - 1 > v137);
    v10 = a1[345];
    v6 = v272;
    v7 = a1 + 346;
  }

  if (v10 >= 2u)
  {
    v143 = v10 - 1;
    v144 = a1 + 96;
    do
    {
      *v144 = *(v144 - 6) + *(v144 - 4);
      v144 += 4;
      --v143;
    }

    while (v143);
  }

  if (!v10)
  {
    return 1;
  }

  v145 = v10;
  v267 = a1 + 348;
  v268 = a1 + 350;
  while (2)
  {
    v146 = &v6[4 * --v145];
    v147 = v146[2];
    if (v147 < 2)
    {
      goto LABEL_523;
    }

    v269 = &v6[4 * v145];
    v271 = v145;
    v148 = v146[3];
    v149 = v146[1];
    v150 = v149 + v148;
    if (v148 >= (v149 + v148))
    {
      v157 = -1;
      v154 = 0xFFFF;
      v156 = 0xFFFF;
      v159 = -1;
    }

    else
    {
      v151 = (v149 + v148);
      v152 = 71 * v146[3];
      v153 = -1;
      v154 = 0xFFFF;
      v155 = v146[3];
      v156 = 0xFFFF;
      v157 = -1;
      v158 = &v268[v152];
      v159 = -1;
      do
      {
        if (*(v158 - 2) != 89)
        {
          v160 = *(v158 - 1);
          if (v160 == 76)
          {
            v161 = v155;
          }

          else
          {
            v161 = v157;
          }

          if (v160 == 78)
          {
            v161 = v157;
            v162 = v155;
          }

          else
          {
            v162 = v153;
          }

          if (v160 == 70)
          {
            v159 = v155;
          }

          else
          {
            v157 = v161;
            v153 = v162;
          }

          v163 = *v158;
          if (v163 == 88)
          {
            v164 = v155;
          }

          else
          {
            v164 = v156;
          }

          if (v163 == 89)
          {
            v154 = v155;
          }

          else
          {
            v156 = v164;
          }
        }

        v158 += 71;
        ++v155;
      }

      while (v151 != v155);
      if ((v153 & 0x80000000) == 0 && ((v157 & 0x80000000) == 0 || (v159 & 0x80000000) == 0))
      {
        v165 = &v267[v152];
        v166 = v151 - v148;
        do
        {
          if (v165[1] == 78 && *v165 != 89)
          {
            v6[4 * v145 + 2] = --v147;
            *v165 = 89;
          }

          v165 += 71;
          --v166;
        }

        while (v166);
      }
    }

    if (v157 < 0 && v159 < 0 && (v148 + 1) < v150)
    {
      v167 = v7[71 * v148 + 1];
      v168 = v148 + 1;
      v169 = &v267[71 * (v148 + 1)];
      v170 = v148;
      while (*(v169 - 1) > v167)
      {
        v171 = &v7[71 * v170];
        v173 = v171[2];
        v172 = v171 + 2;
        v170 = v168;
        if (v173 != 89)
        {
          v167 = *(v169 - 1);
LABEL_331:
          v6[4 * v145 + 2] = --v147;
          *v172 = 89;
          goto LABEL_332;
        }

        v167 = *(v169 - 1);
LABEL_332:
        ++v168;
        v169 += 71;
        if (v150 == v168)
        {
          goto LABEL_333;
        }
      }

      v172 = v169;
      if (*v169 == 89)
      {
        goto LABEL_332;
      }

      goto LABEL_331;
    }

LABEL_333:
    if (v147 < 2u)
    {
      goto LABEL_523;
    }

    if (v148 >= v150)
    {
      v190 = 0;
      v282 = 0;
      v189 = 0;
    }

    else
    {
      v174 = 71 * v148;
      v175 = -1;
      v176 = 0xFFFF;
      v177 = v148;
      v178 = 0xFFFF;
      v179 = 0xFFFF;
      v180 = &v268[v174];
      v181 = 0xFFFF;
      do
      {
        if (*(v180 - 2) != 89)
        {
          if (*(v180 - 1) == 76)
          {
            v175 = v177;
          }

          v182 = *v180;
          if (v182 == 88)
          {
            v183 = v177;
          }

          else
          {
            v183 = v156;
          }

          if (v182 == 89)
          {
            v183 = v156;
            v184 = v177;
          }

          else
          {
            v184 = v154;
          }

          if (v182 == 83)
          {
            v183 = v156;
            v184 = v154;
            v185 = v177;
          }

          else
          {
            v185 = v176;
          }

          if (v182 == 82)
          {
            v186 = v177;
          }

          else
          {
            v186 = v181;
          }

          if (v182 == 81)
          {
            v186 = v181;
            v187 = v177;
          }

          else
          {
            v187 = v178;
          }

          if (v182 == 80)
          {
            v186 = v181;
            v188 = v177;
          }

          else
          {
            v188 = v179;
          }

          if (v182 == 80)
          {
            v187 = v178;
          }

          if (*v180 <= 0x52u)
          {
            v181 = v186;
            v179 = v188;
          }

          else
          {
            v156 = v183;
            v154 = v184;
          }

          if (*v180 > 0x52u)
          {
            v176 = v185;
          }

          else
          {
            v178 = v187;
          }
        }

        v180 += 71;
        ++v177;
      }

      while (v150 != v177);
      v189 = v175 >= 0;
      v282 = (v181 & 0x8000u) == 0;
      v190 = (v179 & v178 & v181 & v176 & 0x8000u) == 0;
      if ((v175 & 0x80000000) == 0 && (v156 & 0x8000) != 0 && (v154 & 0x8000) != 0)
      {
        v191 = v150 - v148;
        v192 = &v267[v174];
        do
        {
          if (v192[1] != 76 && *v192 != 89)
          {
            v6[4 * v145 + 2] = --v147;
            *v192 = 89;
          }

          v192 += 71;
          --v191;
        }

        while (v191);
        v189 = 1;
      }
    }

    v279 = v145;
    if ((v156 & 0x8000) == 0 || (v154 & 0x8000) == 0)
    {
      if ((v156 & 0x8000) == 0)
      {
        if (v148 < v150)
        {
          v276 = v189;
          v193 = &v268[71 * v148];
          v194 = v148;
          do
          {
            if (v194 != v156 && (*v193 & 0xFE) == 0x58 && *(v193 - 2) != 89 && compareXX(a1, v279, v194, v156))
            {
              LOWORD(v156) = v194;
            }

            ++v194;
            v193 += 71;
          }

          while (v150 != v194);
          goto LABEL_397;
        }

        if (!v189 && v190)
        {
LABEL_442:
          keepLongest(a1, v145);
        }

        goto LABEL_443;
      }

      if (v148 < v150 && (v154 & 0x8000) == 0)
      {
        v276 = v189;
        v195 = &v268[71 * v148];
        v196 = v148;
        do
        {
          if (v196 != v154 && (*v195 & 0xFE) == 0x58 && *(v195 - 2) != 89 && compareXX(a1, v279, v196, v154))
          {
            LOWORD(v154) = v196;
          }

          ++v196;
          v195 += 71;
        }

        while (v150 != v196);
LABEL_397:
        v145 = v279;
        v189 = v276;
      }
    }

    if ((v156 & v154 & 0x8000u) == 0 && v190)
    {
      if (v148 >= v150)
      {
        if (!v189)
        {
          goto LABEL_442;
        }
      }

      else
      {
        v277 = v189;
        v197 = 0;
        v198 = &v6[4 * v271];
        v199 = &v267[71 * v148];
        v200 = v150 - v148;
        v201 = v148;
        do
        {
          v202 = &v274[71 * v201];
          if ((v202[4] & 0xFE) == 0x58 && v202[2] != 89)
          {
            if (v202[3] != 76 && findCfollow(a1, v201, 0x58u) == 255)
            {
              if (v282 && (findCfollow(a1, v201, 0x51u) != 255 || findCfollow(a1, v201, 0x53u) != 255 || findCfollow(a1, v201, 0x50u) != 255))
              {
                v205 = v150 - v148;
                v206 = &v267[71 * v148];
                do
                {
                  if (v206[2] == 82)
                  {
                    if (*v206 != 89)
                    {
                      --v198[2];
                      *v206 = 89;
                    }

                    v197 = 9;
                  }

                  v206 += 71;
                  --v205;
                }

                while (v205);
              }
            }

            else
            {
              v203 = &v267[71 * v148];
              v204 = v150 - v148;
              do
              {
                if ((v203[2] & 0xFE) != 0x58)
                {
                  if (*v203 != 89)
                  {
                    --v198[2];
                    *v203 = 89;
                  }

                  v197 = 9;
                }

                v203 += 71;
                --v204;
              }

              while (v204);
            }
          }

          ++v201;
        }

        while (v201 != v150);
        v7 = a1 + 346;
        if (v197 != 9 && v282)
        {
          v207 = &v267[71 * v148];
          do
          {
            if (v207[2] == 82 && (allCfollow(a1, v148, 0x52u) || allCfollow(a1, v148, 0x54u)) && *v207 != 89)
            {
              --v198[2];
              *v207 = 89;
            }

            LOBYTE(v148) = v148 + 1;
            v207 += 71;
          }

          while (v150 != v148);
        }

        v33 = v197 == 9;
        v145 = v279;
        if (!v33)
        {
          if (!v277)
          {
            goto LABEL_442;
          }

          do
          {
            if (v199[1] != 76 && *v199 != 89)
            {
              --v198[2];
              *v199 = 89;
            }

            v199 += 71;
            --v200;
          }

          while (v200);
        }
      }
    }

LABEL_443:
    v208 = v269[2];
    if (v208 < 2)
    {
      goto LABEL_523;
    }

    v209 = v269[3];
    v210 = v269[1];
    v211 = v210 + v209;
    v212 = (v210 + v209);
    if (v209 >= (v210 + v209))
    {
      v231 = 0;
      v261 = 1;
      v263 = 1;
      v264 = 1;
      v260 = 1;
    }

    else
    {
      v213 = &v268[71 * v269[3]];
      v214 = 0xFFFF;
      v215 = v269[3];
      v216 = 0xFFFF;
      v217 = 0xFFFF;
      v218 = 0xFFFF;
      v219 = 0xFFFF;
      v220 = 0xFFFF;
      v221 = 0xFFFF;
      do
      {
        if (*(v213 - 2) != 89)
        {
          v222 = *v213;
          if (v222 == 88)
          {
            v223 = v215;
          }

          else
          {
            v223 = v221;
          }

          if (v222 == 89)
          {
            v223 = v221;
            v224 = v215;
          }

          else
          {
            v224 = v220;
          }

          if (v222 == 84)
          {
            v225 = v215;
          }

          else
          {
            v225 = v214;
          }

          if (v222 == 83)
          {
            v226 = v215;
          }

          else
          {
            v226 = v216;
          }

          if (v222 == 83)
          {
            v225 = v214;
          }

          if (*v213 > 0x57u)
          {
            v226 = v216;
            v225 = v214;
          }

          else
          {
            v223 = v221;
            v224 = v220;
          }

          if (v222 == 82)
          {
            v227 = v215;
          }

          else
          {
            v227 = v219;
          }

          if (v222 == 81)
          {
            v227 = v219;
            v228 = v215;
          }

          else
          {
            v228 = v217;
          }

          if (v222 == 80)
          {
            v227 = v219;
            v229 = v215;
          }

          else
          {
            v229 = v218;
          }

          if (v222 == 80)
          {
            v228 = v217;
          }

          if (*v213 <= 0x52u)
          {
            v219 = v227;
            v218 = v229;
          }

          else
          {
            v221 = v223;
            v220 = v224;
          }

          if (*v213 > 0x52u)
          {
            v216 = v226;
          }

          else
          {
            v217 = v228;
          }

          if (*v213 > 0x52u)
          {
            v214 = v225;
          }
        }

        ++v215;
        v213 += 71;
      }

      while (v212 != v215);
      v230 = 0;
      v231 = (v214 & 0x8000u) == 0;
      v264 = (v218 & 0x8000u) != 0;
      v260 = (v219 & 0x8000u) != 0;
      v261 = (v217 & 0x8000u) != 0;
      v263 = (v216 & 0x8000u) != 0;
      if ((v221 & 0x8000) == 0 || (v220 & 0x8000) == 0)
      {
LABEL_513:
        if (v231)
        {
          goto LABEL_514;
        }

        goto LABEL_523;
      }
    }

    v265 = v231;
    v232 = 0;
    v283 = &v6[4 * v271];
    v278 = v211;
    do
    {
      if (v209 >= v211)
      {
        LOBYTE(v233) = v209;
      }

      else
      {
        v233 = v209;
        v234 = v209;
        v235 = 71 * v209 + 350;
        while (1)
        {
          if (a1[v235] != 82)
          {
            v236 = aX_5[v232 + 11];
            if (findCfollow(a1, v233, v236) != 255)
            {
              break;
            }
          }

          ++v233;
          v235 += 71;
          ++v234;
          if (v212 == v233)
          {
            v7 = a1 + 346;
            v211 = v278;
            LOBYTE(v233) = v278;
            goto LABEL_504;
          }
        }

        v237 = v234;
        v238 = &v267[71 * v209];
        v239 = v209;
        do
        {
          if (v237 != v239 && (findCfollow(a1, v239, v236) == 255 || v238[2] == 82) && *v238 != 89)
          {
            v283[2] = --v208;
            *v238 = 89;
          }

          ++v239;
          v238 += 71;
        }

        while (v212 != v239);
        v6 = v272;
        v7 = a1 + 346;
        v211 = v278;
LABEL_504:
        v145 = v279;
      }

      v240 = v232 + 1;
      if (v233 != v211)
      {
        break;
      }
    }

    while (v232++ < 3);
    v230 = 1;
    if (v233 != v211)
    {
      v231 = v265;
      goto LABEL_513;
    }

    v231 = v265;
    if (v240 != 4)
    {
      goto LABEL_513;
    }

    keepLongest(a1, v145);
    if (v265)
    {
      v208 = v269[2];
      v230 = 1;
LABEL_514:
      if (v208 >= 2u)
      {
        if (v230 & (v264 && v261) & (v260 && v263))
        {
          keepLongest(a1, v145);
        }

        else if (v209 < v211)
        {
          v242 = &v267[71 * v209];
          v243 = v212 - v209;
          do
          {
            if (v242[2] == 84 && *v242 != 89)
            {
              v6[4 * v271 + 2] = --v208;
              *v242 = 89;
            }

            v242 += 71;
            --v243;
          }

          while (v243);
        }
      }
    }

LABEL_523:
    if (v145)
    {
      continue;
    }

    break;
  }

  v244 = a1[345];
  result = 1;
  if (!a1[345])
  {
    return result;
  }

  v246 = 0;
  v247 = 0;
  v248 = 0;
  while (2)
  {
    v249 = &v6[4 * v246];
    if (v249[2] != 2)
    {
      goto LABEL_542;
    }

    v250 = v249[3];
    v251 = v249[1];
    v252 = v251 + v250;
    if (v250 >= (v251 + v250))
    {
      goto LABEL_542;
    }

    v253 = 0;
    v254 = &a1[71 * v249[3] + 347];
    while (2)
    {
      if (v254[1] == 89)
      {
LABEL_532:
        LOBYTE(v250) = v250 + 1;
        v254 += 71;
        if (v252 == v250)
        {
          goto LABEL_542;
        }

        continue;
      }

      break;
    }

    if (!v253)
    {
      v247 = v254[69];
      v248 = v250;
      v253 = *v254;
      goto LABEL_532;
    }

    if (v253 == *v254)
    {
      v255 = v254[69];
      if (v247 <= v255 || (v256 = &v7[71 * v248], v258 = v256[2], v257 = v256 + 2, v258 == 89))
      {
        v259 = 1;
      }

      else
      {
        v259 = 0;
        v249[2] = 1;
        *v257 = 89;
      }

      if (v247 < v255 && v254[1] != 89)
      {
        v249[2] = v259;
        v254[1] = 89;
      }
    }

LABEL_542:
    if (++v246 != v244)
    {
      continue;
    }

    return 1;
  }
}

uint64_t WParser(uint64_t a1, char *a2, _WORD *a3, _BYTE *a4, int *a5)
{
  *a4 = 0;
  *a2 = 0;
  v8 = *(a1 + 345);
  if (*(a1 + 345))
  {
    v9 = (v8 + 15) & 0x1F0;
    v10 = vdupq_n_s64(v8 - 1);
    v11 = xmmword_26ECE7570;
    v12 = xmmword_26ECE7580;
    v13 = xmmword_26ECE7590;
    v14 = xmmword_26ECE75A0;
    v15 = xmmword_26ECDB2A0;
    v16 = xmmword_26ECDB2B0;
    v17 = xmmword_26ECCE810;
    v18 = xmmword_26ECC7980;
    v19 = (a1 + 150);
    v20 = vdupq_n_s64(0x10uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v10, v18));
      if (vuzp1_s8(vuzp1_s16(v21, *v10.i8), *v10.i8).u8[0])
      {
        *(v19 - 60) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v21, *&v10), *&v10).i8[1])
      {
        *(v19 - 56) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v17))), *&v10).i8[2])
      {
        *(v19 - 52) = 0;
        *(v19 - 48) = 0;
      }

      v22 = vmovn_s64(vcgeq_u64(v10, v16));
      if (vuzp1_s8(*&v10, vuzp1_s16(v22, *&v10)).i32[1])
      {
        *(v19 - 44) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(v22, *&v10)).i8[5])
      {
        *(v19 - 40) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v15)))).i8[6])
      {
        *(v19 - 36) = 0;
        *(v19 - 32) = 0;
      }

      v23 = vmovn_s64(vcgeq_u64(v10, v14));
      if (vuzp1_s8(vuzp1_s16(v23, *v10.i8), *v10.i8).u8[0])
      {
        *(v19 - 28) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v23, *&v10), *&v10).i8[1])
      {
        *(v19 - 24) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v13))), *&v10).i8[2])
      {
        *(v19 - 20) = 0;
        *(v19 - 16) = 0;
      }

      v24 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s8(*&v10, vuzp1_s16(v24, *&v10)).i32[1])
      {
        *(v19 - 12) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(v24, *&v10)).i8[5])
      {
        *(v19 - 8) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11)))).i8[6])
      {
        *(v19 - 4) = 0;
        *v19 = 0;
      }

      v16 = vaddq_s64(v16, v20);
      v17 = vaddq_s64(v17, v20);
      v18 = vaddq_s64(v18, v20);
      v15 = vaddq_s64(v15, v20);
      v14 = vaddq_s64(v14, v20);
      v13 = vaddq_s64(v13, v20);
      v12 = vaddq_s64(v12, v20);
      v19 += 64;
      v11 = vaddq_s64(v11, v20);
      v9 -= 16;
    }

    while (v9);
  }

  v25 = *(a1 + 90);
  if (v25 < *(a1 + 91))
  {
    LOBYTE(v25) = v25 + 1;
    *(a1 + 90) = v25;
  }

  v26 = *(a1 + 92);
  v27 = *(a1 + 9434);
  if (v26 < v27)
  {
    v28 = (a1 + 71 * *(a1 + 92) + 348);
    v29 = 1;
    do
    {
      v30 = *v28;
      v28 += 71;
      if (v30 != 89)
      {
        if (v29 == v25)
        {
          goto LABEL_37;
        }

        ++v29;
      }

      LOBYTE(v26) = v26 + 1;
    }

    while (v27 != v26);
  }

  LOBYTE(v26) = -1;
LABEL_37:
  v31 = rule2phone(a1, v26);
  if (v31 < 0)
  {
    v56 = a5;
    v34 = 0;
  }

  else
  {
    v32 = v31;
    v33 = a1 + 71 * v26;
    v34 = cstdlib_strlen((v33 + 384));
    if (*a3 < v34)
    {
      result = 0;
      v36 = 255;
      goto LABEL_72;
    }

    v56 = a5;
    cstdlib_strcpy(a2, (v33 + 384));
    *a4 = v32;
  }

  if (*(a1 + 345) >= 2u)
  {
    v37 = a1 + 346;
    for (i = 1; i < *(a1 + 345); ++i)
    {
      v39 = (a1 + 89 + 4 * i);
      if (*v39 == *(v37 + 71 * v26 + 1))
      {
        v40 = v39[1];
        if (v40 < v39[2])
        {
          LOBYTE(v40) = v40 + 1;
          v39[1] = v40;
        }

        v26 = v39[3];
        v41 = *(a1 + 9434);
        if (v26 < v41)
        {
          v42 = (a1 + 348 + 71 * v26);
          v43 = 1;
          do
          {
            v44 = *v42;
            v42 += 71;
            if (v44 != 89)
            {
              if (v43 == v40)
              {
                goto LABEL_54;
              }

              ++v43;
            }

            LOBYTE(v26) = v26 + 1;
          }

          while (v41 != v26);
        }

        LOBYTE(v26) = -1;
LABEL_54:
        v45 = rule2phone(a1, v26);
        if ((v45 & 0x80000000) == 0)
        {
          v46 = v45;
          v47 = v37 + 71 * v26;
          v34 += cstdlib_strlen((v47 + 38));
          if (*a3 < v34)
          {
            result = 0;
LABEL_70:
            v36 = 255;
            goto LABEL_71;
          }

          cstdlib_strcat(a2, (v47 + 38));
          *a4 |= v46;
        }
      }
    }
  }

  v48 = *(*(a1 + 16) + 8);
  v49 = cstdlib_strlen(a2);
  v50 = heap_Calloc(v48, 1, (v49 + 1));
  if (!v50)
  {
    result = 2370838538;
    goto LABEL_70;
  }

  v51 = v50;
  cstdlib_strcpy(v50, a2);
  v52 = v51;
  if (cstdlib_strlen(a2))
  {
    v53 = 0;
    v52 = v51;
    do
    {
      v54 = a2[v53];
      if (v54 != 39)
      {
        *v52++ = v54;
      }

      ++v53;
    }

    while (v53 < cstdlib_strlen(a2));
  }

  *v52 = 0;
  cstdlib_strcpy(a2, v51);
  heap_Free(*(*(a1 + 16) + 8), v51);
  v55 = cstdlib_strlen(a2);
  result = 0;
  *a3 = v55;
  v36 = 1;
LABEL_71:
  a5 = v56;
LABEL_72:
  *a5 = v36;
  return result;
}

char *ReadThaiChar(char *result, char *__dst)
{
  v2 = cchar_dct;
  if (cchar_dct)
  {
    for (i = &unk_26ECDC615; *(i - 1) != result; i += 51)
    {
      if (!--v2)
      {
        return result;
      }
    }

    return cstdlib_strcpy(__dst, i);
  }

  return result;
}

char *contable(int a1, int a2, char *__dst)
{
  if ((a1 + 95) > 0x2D)
  {
    v4 = "";
  }

  else
  {
    v3 = off_279DADF48;
    if (!a2)
    {
      v3 = off_279DADDD8;
    }

    v4 = v3[(a1 + 95)];
  }

  return cstdlib_strcpy(__dst, v4);
}

uint64_t patt_check(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    while (1)
    {
      v3 = *a2;
      if (v3 <= 0x53)
      {
        break;
      }

      if (v3 != 84)
      {
        if (v3 == 88)
        {
          if ((v2 - 161) >= 0x2E)
          {
            return -1;
          }

          goto LABEL_18;
        }

LABEL_17:
        if (v3 != v2)
        {
          return -1;
        }

        goto LABEL_18;
      }

      v7 = (v2 & 0xFC) == 232;
LABEL_19:
      a1 += v7;
      ++a2;
      v2 = *a1;
      if (!*a1)
      {
        goto LABEL_20;
      }
    }

    if (v3 == 67)
    {
      v4 = -1;
      v6 = v2 - 161;
      if (v6 > 0x29 || ((1 << v6) & 0x2802C50040BLL) == 0)
      {
        return v4;
      }
    }

    else
    {
      if (v3 != 82)
      {
        if (!*a2)
        {
          return -1;
        }

        goto LABEL_17;
      }

      v4 = -1;
      v5 = v2 - 195;
      if (v5 > 4 || ((1 << v5) & 0x15) == 0)
      {
        return v4;
      }
    }

LABEL_18:
    v7 = 1;
    goto LABEL_19;
  }

LABEL_20:
  if (*a2)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t compareXX(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = allCfollow(a1, a3, 0x52u);
  result = allCfollow(a1, a4, 0x52u);
  if (!v8 && result)
  {
    goto LABEL_3;
  }

  if (v8)
  {
LABEL_6:
    v12 = a1 + 346;
    if (result)
    {
      if (*(v12 + 71 * a3 + 1) >= *(v12 + 71 * a4 + 1))
      {
        v17 = v12 + 71 * a4;
        v18 = *(v17 + 2);
        v11 = (v17 + 2);
        v14 = v18;
        result = 1;
LABEL_15:
        if (v14 == 89)
        {
          return result;
        }

        goto LABEL_16;
      }

      result = 0;
    }

    v13 = v12 + 71 * a3;
    v15 = *(v13 + 2);
    v11 = (v13 + 2);
    v14 = v15;
    goto LABEL_15;
  }

  v16 = allNfollow(a1, a3);
  result = allNfollow(a1, a4);
  if (v16 || !result)
  {
    if (!v16)
    {
      return 0;
    }

    goto LABEL_6;
  }

LABEL_3:
  v10 = a1 + 71 * a4;
  result = 1;
  if (*(v10 + 348) == 89)
  {
    return result;
  }

  v11 = (v10 + 348);
LABEL_16:
  --*(a1 + 4 * a2 + 91);
  *v11 = 89;
  return result;
}

uint64_t findCfollow(uint64_t a1, unsigned int a2, unsigned __int8 a3)
{
  v3 = a1 + 71 * a2;
  if (*(v3 + 348) != 89)
  {
    v4 = *(a1 + 345);
    if (*(a1 + 345))
    {
      v5 = 0;
      v6 = a1 + 89;
      v7 = *(v3 + 347);
      v8 = a1 + 350;
      do
      {
        v9 = (v6 + 4 * v5);
        if (*v9 == v7)
        {
          v10 = v9[3];
          v11 = v9[1];
          v12 = v11 + v10;
          if (v10 < (v11 + v10))
          {
            v13 = (v8 + 71 * v10);
            do
            {
              v14 = *v13;
              if (a3 == 88)
              {
                if ((v14 & 0xFE) == 0x58 && *(v13 - 1) != 78 && *(v13 - 2) != 89)
                {
                  return v10;
                }
              }

              else if (v14 == a3 && *(v13 - 2) != 89 && *(v13 - 1) != 78)
              {
                return v10;
              }

              LOBYTE(v10) = v10 + 1;
              v13 += 71;
            }

            while (v12 != v10);
          }
        }

        ++v5;
      }

      while (v5 != v4);
    }
  }

  LOBYTE(v10) = -1;
  return v10;
}

uint64_t allCfollow(uint64_t a1, unsigned int a2, unsigned __int8 a3)
{
  v3 = *(a1 + 345);
  if (!*(a1 + 345))
  {
    return 0;
  }

  for (i = (a1 + 92); *(i - 3) != *(a1 + 71 * a2 + 347); i += 4)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  v6 = *i;
  v7 = *(i - 2);
  v8 = v7 + v6;
  if (v6 < (v7 + v6))
  {
    v9 = (a1 + 71 * *i + 350);
    v10 = v6 + 1;
    while (*v9 == a3 || *(v9 - 2) == 89)
    {
      v9 += 71;
      if (v8 == v10++)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t keepLongest(uint64_t result, unsigned int a2)
{
  v2 = result + 89 + 4 * a2;
  v3 = *(v2 + 3);
  v4 = *(v2 + 1) + v3;
  v5 = v3;
  if (v3 < v4)
  {
    v6 = (result + 71 * v3 + 348);
    while (1)
    {
      v7 = *v6;
      v6 += 71;
      if (v7 != 89)
      {
        break;
      }

      LOBYTE(v3) = v3 + 1;
      if (v4 == v3)
      {
        v5 = v4;
        goto LABEL_7;
      }
    }

    v5 = v3;
  }

LABEL_7:
  if ((v5 + 1) < v4)
  {
    v8 = result + 346;
    v9 = *(result + 346 + 71 * v5 + 1);
    v10 = result + 89 + 4 * a2;
    v11 = (v5 + 1);
    v12 = (result + 71 * v11 + 347);
    do
    {
      if (v12[1] != 89)
      {
        result = *v12;
        if (result >= v9)
        {
          if (result == v9)
          {
            result = v12[69];
            if (result >= *(v8 + 71 * v5 + 70))
            {
              v13 = (v8 + 71 * v11 + 2);
            }

            else
            {
              v14 = v8 + 71 * v5;
              v15 = *(v14 + 2);
              v13 = (v14 + 2);
              if (v15 == 89)
              {
                v5 = v11;
                goto LABEL_13;
              }

              v5 = v11;
            }
          }

          else
          {
            v16 = v8 + 71 * v5;
            v17 = *(v16 + 2);
            v13 = (v16 + 2);
            if (v17 == 89)
            {
              v5 = v11;
              v9 = *v12;
              goto LABEL_13;
            }

            v5 = v11;
            v9 = *v12;
          }
        }

        else
        {
          v13 = v12 + 1;
        }

        result = (*(v10 + 2))-- - 1;
        *v13 = 89;
      }

LABEL_13:
      ++v11;
      v12 += 71;
    }

    while (v4 != v11);
  }

  return result;
}

uint64_t allNfollow(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 345);
  if (!*(a1 + 345))
  {
    return 0;
  }

  for (i = (a1 + 92); *(i - 3) != *(a1 + 71 * a2 + 347); i += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  v5 = *i;
  v6 = *(i - 2);
  v7 = v6 + v5;
  if (v5 < (v6 + v5))
  {
    v8 = (a1 + 71 * *i + 349);
    v9 = v5 + 1;
    while (*v8 == 78 || *(v8 - 1) == 89)
    {
      v8 += 71;
      if (v7 == v9++)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t rule2phone(uint64_t a1, unsigned int a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 71 * a2);
  if (v2[348] == 89)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v2 + 346;
  v6 = v2 + 384;
  v5 = v2[384];
  if (v5)
  {
    if (v5 == 33)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  v7 = v4 + 6;
  if (!v4[6])
  {
    return 4294967294;
  }

  v8 = v4[4];
  if (v8 != 84)
  {
    result = 0;
    if (v8 == 85 || v4[3] == 69)
    {
      return result;
    }

    cstdlib_strcpy(__dst, &psrules[61 * v4[5] + 30]);
    v11 = 0uLL;
    while (1)
    {
      switch(psrules[61 * v4[5] + v11])
      {
        case 'A':
          v12 = v7[BYTE4(v11)];
          if (v12 == -61 || (v12 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v12, 0, v63);
          v13 = 65;
          goto LABEL_125;
        case 'B':
          v30 = v7[BYTE4(v11)];
          if (v30 == -57 || (v30 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v30, 0, v63);
          v13 = 66;
          goto LABEL_125;
        case 'C':
          v33 = v7[BYTE4(v11)];
          if ((v33 - 161) > 0x29 || ((1 << (v33 + 95)) & 0x2802C50040BLL) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v33, 0, v63);
          v13 = 67;
          goto LABEL_125;
        case 'D':
          v38 = v7[BYTE4(v11)];
          if ((v38 - 164) > 0x13 || ((1 << (v38 + 92)) & 0xA0041) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v38, 1, v63);
          v13 = 68;
          goto LABEL_125;
        case 'E':
          v37 = v7[BYTE4(v11)];
          if (v37 == -51 || (v37 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v37, 0, v63);
          v13 = 69;
          goto LABEL_125;
        case 'F':
          v35 = v7[BYTE4(v11)];
          if ((v35 - 164) > 0x12 || ((1 << (v35 + 92)) & 0x68001) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v35, 1, v63);
          v13 = 70;
          goto LABEL_125;
        case 'G':
          v45 = v7[BYTE4(v11)];
          if ((v45 - 170) > 0x23 || ((1 << (v45 + 86)) & 0x94840A001) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v45, 0, v63);
          v13 = 71;
          goto LABEL_125;
        case 'H':
          v22 = v7[BYTE4(v11)];
          if (v22 == -53 || (v22 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v22, 0, v63);
          v13 = 72;
          goto LABEL_125;
        case 'I':
        case 'V':
        case '[':
        case '\\':
        case ']':
        case '^':
        case '_':
          goto LABEL_127;
        case 'J':
          v42 = v7[BYTE4(v11)];
          if ((v42 + 49) < 0xD2u || v42 == -57 || v42 == 205)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v42, 0, v63);
          v13 = 74;
          goto LABEL_125;
        case 'K':
          v19 = v7[BYTE4(v11)];
          if ((v19 - 164) > 0x26 || ((1 << (v19 + 92)) & 0x4020000001) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v19, 0, v63);
          v13 = 75;
          goto LABEL_125;
        case 'L':
          v31 = v7[BYTE4(v11)];
          if (v31 != 197 && v31 != 195)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v31, 0, v63);
          v13 = 76;
          goto LABEL_125;
        case 'M':
          v27 = v7[BYTE4(v11)] - 161 > 0x2A;
          v28 = 1 << (v7[BYTE4(v11)] + 95);
          v29 = 0x40681041401;
          goto LABEL_94;
        case 'N':
          v27 = v7[BYTE4(v11)] - 162 > 0x28;
          v28 = 1 << (v7[BYTE4(v11)] + 94);
          v29 = 0x1A8006F81C5;
LABEL_94:
          v40 = v28 & v29;
          if (!v27 && v40 != 0)
          {
            goto LABEL_98;
          }

          continue;
        case 'O':
          v47 = v7[BYTE4(v11)];
          if ((v47 + 49) < 0xD2u)
          {
            continue;
          }

          v48 = v47;
          v49 = v47 - 194;
          v27 = v49 > 5;
          v50 = (1 << v49) & 0x23;
          if (!v27 && v50 != 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v48, 1, v63);
          v13 = 79;
          goto LABEL_125;
        case 'P':
          if (v7[BYTE4(v11)] - 184 > 0x13 || ((1 << (v7[BYTE4(v11)] + 72)) & 0xC2801) == 0)
          {
            continue;
          }

          goto LABEL_98;
        case 'Q':
          v25 = v7[BYTE4(v11)];
          if ((v25 - 166) > 7 || ((1 << (v25 + 90)) & 0x91) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v25, 0, v63);
          v13 = 81;
          goto LABEL_125;
        case 'R':
          v23 = v7[BYTE4(v11)];
          if ((v23 - 195) > 4 || ((1 << (v23 + 61)) & 0x15) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v23, 0, v63);
          v13 = 82;
          goto LABEL_125;
        case 'S':
          v43 = v7[BYTE4(v11)];
          if ((v43 - 174) > 0x1B || ((1 << (v43 + 82)) & 0x8000003) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v43, 1, v63);
          v13 = 83;
          goto LABEL_125;
        case 'T':
          if ((v7[BYTE4(v11)] & 0xFC) == 0xE8)
          {
LABEL_98:
            v9.i32[1] = 1;
            *&v11 = vadd_s32(*&v11, 0x100000001);
          }

          else
          {
            if (psrules[61 * v4[5] + 60] == 78)
            {
              v21 = v11 + 1;
            }

            else
            {
              v21 = v11;
            }

            LODWORD(v11) = v21;
          }

          continue;
        case 'U':
          v16 = v7[BYTE4(v11)];
          if ((v16 + 49) < 0xD2u || (v16 | 4) == 0xC7)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v16, 1, v63);
          v13 = 85;
          goto LABEL_125;
        case 'W':
          v53 = v7[BYTE4(v11)];
          if (v53 == -62 || (v53 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v53, 1, v63);
          v13 = 87;
          goto LABEL_125;
        case 'X':
          v17 = v7[BYTE4(v11)];
          if ((v17 + 95) > 0x2D)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v17, 0, v63);
          v13 = 88;
          goto LABEL_125;
        case 'Y':
          v52 = v7[BYTE4(v11)];
          if ((v52 + 95) > 0x2D)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v52, 1, v63);
          v13 = 89;
          goto LABEL_125;
        case 'Z':
          v32 = v7[BYTE4(v11)];
          if (v32 == -57 || (v32 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v32, 1, v63);
          v13 = 90;
LABEL_125:
          replace(v13, v63, __dst);
          v11 = v61;
          continue;
        case 'a':
          v14 = &v7[BYTE4(v11)];
          v15 = 209;
          goto LABEL_65;
        case 'b':
          v14 = &v7[BYTE4(v11)];
          v15 = 212;
          goto LABEL_65;
        case 'c':
          v14 = &v7[BYTE4(v11)];
          v15 = 213;
          goto LABEL_65;
        case 'd':
          v14 = &v7[BYTE4(v11)];
          v15 = 214;
          goto LABEL_65;
        case 'e':
          v14 = &v7[BYTE4(v11)];
          v15 = 215;
          goto LABEL_65;
        case 'f':
          v14 = &v7[BYTE4(v11)];
          v15 = 216;
          goto LABEL_65;
        case 'g':
          v14 = &v7[BYTE4(v11)];
          v15 = 217;
          goto LABEL_65;
        case 'h':
          v14 = &v7[BYTE4(v11)];
          v15 = 211;
          goto LABEL_65;
        case 'i':
          v14 = &v7[BYTE4(v11)];
          v15 = 231;
          goto LABEL_65;
        case 'j':
          v14 = &v7[BYTE4(v11)];
          v15 = 236;
LABEL_65:
          v9.i32[0] = v15;
          v10.i8[0] = *v14;
          v9 = vdup_lane_s32(vceq_s32(vand_s8(v10, 0xFF000000FFLL), vand_s8(v9, 0xFF000000FFLL)), 0);
          *&v11 = vsub_s32(*&v11, v9);
          continue;
        default:
          if (!psrules[61 * v4[5] + v11])
          {
            v59 = tone(__dst, v4 + 6);
            if (v59 == 57)
            {
              v60 = 51;
            }

            else
            {
              v60 = v59;
            }

            __s2[0] = v60;
            __s2[1] = 0;
            cstdlib_strcat(__dst, __s2);
            if (!cstdlib_strcmp(__dst, "!0"))
            {
              __dst[0] = 0;
            }

            cstdlib_strcpy(v6, __dst);
            transform(v6, v4 + 6);
            return 0;
          }

LABEL_127:
          if (psrules[61 * v4[5] + v11] != v7[BYTE4(v11)])
          {
            return 0xFFFFFFFFLL;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          break;
      }
    }
  }

  if (cstdlib_strlen(v4 + 6) == 1)
  {
    ReadThaiChar(*v7, v6);
    return 1;
  }

  v54 = cstdlib_strlen(v4 + 6);
  *v6 = 0;
  if (!v54)
  {
    return 1;
  }

  v55 = v54;
  for (i = 0; i != v55; ++i)
  {
    if (cchar_dct)
    {
      v57 = &unk_26ECDC615;
      v58 = cchar_dct;
      while (*(v57 - 1) != v7[i])
      {
        v57 += 51;
        if (!--v58)
        {
          goto LABEL_137;
        }
      }

      cstdlib_strcat(v6, v57);
    }

LABEL_137:
    result = 1;
  }

  return result;
}

char *replace(char *result, const char *a2, char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    if (*a3 == result)
    {
      v5 = 0;
LABEL_7:
      v7 = &a3[v5];
      cstdlib_strcpy(__dst, &a3[v5 + 1]);
      cstdlib_strcpy(v7, a2);
      return cstdlib_strcat(a3, __dst);
    }

    else
    {
      v6 = 0;
      while (1)
      {
        v5 = ++v6;
        if (!a3[v6])
        {
          break;
        }

        if (a3[v6] == result)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t tone(char *a1, char *a2)
{
  v46 = 0;
  if (*a1 == 33)
  {
    return 48;
  }

  v4 = a1;
  if (cstdlib_strchr(a1, 39))
  {
    if (cstdlib_strchr(a2, 234) || cstdlib_strchr(a2, 235))
    {
      return 57;
    }

    do
    {
      v7 = *a2++;
      v6 = v7;
    }

    while ((v7 + 49) < 0xD2u);
    v8 = v6 + 95;
    if (v8 > 0x2Cu)
    {
      v10 = 76;
      v9 = "3";
    }

    else
    {
      v9 = off_279DAE0B8[v8];
      v10 = byte_26ECE75B0[v8];
    }

    replace(0x2B, v9, v4);
    do
    {
      v36 = *v4++;
    }

    while (v36 != 39);
  }

  else
  {
    v10 = 76;
  }

  v11 = 0;
  v12 = &v40;
  v13 = &v44;
  v14 = v45;
  for (i = v4; ; ++i)
  {
    v16 = *i;
    if ((v16 - 64) <= 0x38 && ((1 << (v16 - 64)) & 0x162822200000001) != 0)
    {
      v18 = v12++;
      v11 = 1;
      goto LABEL_18;
    }

    if (!*i || v16 == 43)
    {
      break;
    }

    if (v11)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    if (v11)
    {
      ++v13;
    }

    else
    {
      ++v14;
    }

    if (!v11)
    {
      v11 = 0;
    }

LABEL_18:
    *v18 = v16;
  }

  *v14 = 0;
  *v13 = 0;
  *v12 = 0;
  v19 = v44 - 106;
  v20 = v19 > 0xD;
  v21 = (1 << v19) & 0x2019;
  v22 = v20 || v21 == 0;
  if (!v22 || (v26 = 1, !v44) && v40 == v41)
  {
    if ((patt_check(a2, "\xE0\x58\x54X") == 1 || patt_check(a2, "\xE0\x58\x58TX") == 1) && (cstdlib_strchr(a2, 232) || cstdlib_strchr(a2, 233)) && (v23 = cstdlib_strchr(v4, 101)) != 0 || (patt_check(a2, "\xE0\x58\xD4\xE8\x58\xE0\x58\x58\xD4\xE8X") == 1 || patt_check(a2, "\xE0\x58\x58\xD4\xE8X") == 1) && (v23 = cstdlib_strchr(v4, 113)) != 0 || (patt_check(a2, "\xE1\x58\xE8X") == 1 || patt_check(a2, "\xE1\x58\x58\xE8\x58X\xE8\xCD\x58") == 1) && (v23 = cstdlib_strchr(v4, 120)) != 0 || (patt_check(a2, "X\xE8\xCD\x58") == 1 || patt_check(a2, "XX\xE8\xCD\x58") == 1) && (v23 = cstdlib_strchr(v4, 64)) != 0)
    {
      v24 = v23;
      v25 = cstdlib_strlen(v23 + 1);
      cstdlib_memmove(v24, v24 + 1, v25 + 1);
    }

    v26 = 0;
  }

  v46 = 32;
  v27 = *a2;
  if (*a2)
  {
    v28 = 0;
    v29 = (a2 + 1);
    v30 = v43;
    v31 = v42;
    while ((v27 - 161) > 0x2D)
    {
      if ((v27 & 0xFC) == 0xE8)
      {
        v32 = &v46;
LABEL_62:
        *v32 = v27;
      }

      v33 = *v29++;
      v27 = v33;
      if (!v33)
      {
        goto LABEL_66;
      }
    }

    if (v28)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    if (v28)
    {
      ++v31;
    }

    else
    {
      ++v30;
    }

    if (!v28)
    {
      v28 = 1;
    }

    goto LABEL_62;
  }

  v31 = v42;
  v30 = v43;
LABEL_66:
  *v31 = 0;
  *v30 = 0;
  if (v45[1] != 104)
  {
    if ((v35 = v45[0] - 98, v35 <= 0x12) && ((1 << v35) & 0x44207) != 0 || v45[0] == 35)
    {
      v34 = v46;
      if (v26)
      {
        v2 = 57;
        if (v46 > 0xE8u)
        {
          if (v46 == 235)
          {
            return v2;
          }

LABEL_86:
          if (v46 != 234)
          {
            goto LABEL_87;
          }

          return 51;
        }

        if (v46 != 32)
        {
          if (v46 == 232)
          {
            return v2;
          }

          return 48;
        }

        return 49;
      }

      if (v46 > 0xE8u)
      {
        if (v46 != 235)
        {
          goto LABEL_86;
        }

        return 52;
      }

      if (v46 == 32)
      {
        return 48;
      }

LABEL_104:
      if (v34 == 232)
      {
        return 49;
      }

      return 48;
    }
  }

  if (v43[0] - 162 <= 0x29 && ((1 << (v43[0] + 94)) & 0x3C00C104081) != 0)
  {
    v34 = v46;
    if (v26)
    {
      v2 = 57;
      if (v46 <= 0xE9u)
      {
        if (v46 == 32)
        {
          return 49;
        }

        if (v46 == 232)
        {
          return v2;
        }

        goto LABEL_87;
      }

LABEL_113:
      if ((v34 - 234) < 2)
      {
        return v2;
      }

      return 48;
    }

    if (v46 <= 0xE8u)
    {
      if (v46 == 32)
      {
        return 52;
      }

      goto LABEL_104;
    }

    if (v46 != 235 && v46 != 234)
    {
LABEL_87:
      if (v34 == 233)
      {
        return 50;
      }

      return 48;
    }

    return 57;
  }

  if (v26)
  {
    v34 = v46;
    if (v40 == v41)
    {
      v2 = 57;
      if (v46 > 0xE9u)
      {
        goto LABEL_113;
      }

      if (v46 != 32)
      {
        if (v46 == 232)
        {
          return v2;
        }

        if (v46 != 233)
        {
          return 48;
        }

        return 51;
      }

LABEL_126:
      v37 = v10 == 77 || v10 == 72;
LABEL_129:
      v2 = 49;
LABEL_130:
      if (!v37)
      {
        ++v2;
      }

      return v2;
    }

    if (v46 - 233 < 3)
    {
      return 57;
    }

    if (v46 != 32)
    {
      if (v46 != 232)
      {
        return 48;
      }

      v37 = v10 == 77;
      goto LABEL_129;
    }

    v38 = v10 == 77 || v10 == 72;
    v2 = 51;
    v39 = 49;
  }

  else
  {
    if (v46 > 0xE9u)
    {
      if (v46 - 234 >= 2)
      {
        return 48;
      }

      return 57;
    }

    if (v46 != 32)
    {
      if (v46 != 232)
      {
        if (v46 != 233)
        {
          return 48;
        }

        v37 = v10 == 72;
        v2 = 50;
        goto LABEL_130;
      }

      goto LABEL_126;
    }

    v38 = v10 == 72;
    v2 = 48;
    v39 = 52;
  }

  if (v38)
  {
    return v39;
  }

  return v2;
}