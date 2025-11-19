uint64_t sparser_CheckForcedSb(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v101 = 0;
  v7 = 2369789959;
  if (a2)
  {
    i = a5;
    if (a5)
    {
      v12 = a2;
      v102 = 0;
      if ((InitRsrcFunction(*a1, *(a1 + 8), &v102) & 0x80000000) == 0)
      {
        v99 = 0;
        sparser_getMaxCharsPerText(v102, &v99);
        v14 = *(v12 + 8);
        v7 = bed_Goto(i, a6);
        if ((v7 & 0x80000000) == 0)
        {
          v100 = 0;
          if (a4)
          {
            v92 = 0;
            v15 = 0;
            v87 = a4 + a3;
            v88 = a4;
            v16 = v99;
            v89 = i;
            v85 = v14;
            v86 = a1;
            while (1)
            {
              *&v95[0] = 0;
              v17 = bed_GetpBlock(i, v95);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v91 = a3;
              v90 = *(*&v95[0] + 8);
              LOWORD(v98) = v15 / *(v12 + 2);
              chars_ScanBlanks(*(v12 + 8), &v98, *(v12 + 16));
              v18 = v12;
              v19 = *(v12 + 2);
              v20 = v19 * v98;
              LOWORD(v98) = 0;
              v21 = *(*&v95[0] + 16);
              v22 = v20;
              if (v20)
              {
                if (!*(*&v95[0] + 16))
                {
                  goto LABEL_28;
                }

                v23 = *(v90 + 32);
                v24 = v23 + v22;
                if (!__CFADD__(v23, v22))
                {
                  break;
                }
              }

              v25 = 0;
LABEL_13:
              if (v25 >= v21)
              {
                goto LABEL_28;
              }

              v26 = *(v90 + 32);
              v27 = v21 - v25;
              v28 = v25 + 1;
              v29 = v90 + (v25 << 6);
              while (1)
              {
                v30 = *(v29 + 32);
                if (v30 != v26 && sparser_marker_IsSentenceBoundary(v29, (*(a7 + 8) + *(v29 + 40))))
                {
                  break;
                }

                LOWORD(v98) = v28++;
                v29 += 64;
                if (!--v27)
                {
                  goto LABEL_28;
                }
              }

              v34 = v91;
              if (v26 + v22 <= v91)
              {
                v35 = 0;
              }

              else
              {
                v35 = (v26 + v22 - v91);
              }

              v12 = v18;
              v39 = Utf8_LengthInUtf8chars((*(v18 + 8) + v35), v30 - (v35 + v91));
              if (v39 <= v16)
              {
                v40 = *(v90 + (v98 << 6) + 32);
LABEL_35:
                v46 = v88;
                v7 = 0;
                v100 = v40;
                i = v89;
                v48 = v92;
                goto LABEL_74;
              }

LABEL_29:
              v98 = 0;
              v95[0] = 0u;
              v95[1] = 0x200000000uLL;
              v96 = 0u;
              v97 = 0u;
              LODWORD(v95[0]) = 1;
              *&v96 = 0;
              DWORD2(v97) = 0;
              DWORD2(v96) = 1;
              log_OutText(*(*(v86 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] sentence character count %d is greater than max %d", v36, v37, v38, v39);
              v98 = (v16 + v15);
              utf8_GetPreviousValidUtf8Offset(*(v12 + 8), &v98);
              v41 = v98;
              v42 = Utf8_LengthInUtf8chars((v85 + v15), v98 - v15);
              v46 = v88;
              if (v41 >= v88)
              {
                i = v89;
              }

              else
              {
                v47 = v42;
                for (i = v89; v16 > v47; ++v47)
                {
                  v41 += utf8_determineUTF8CharLength(*(v85 + v41));
                  if (v88 <= v41)
                  {
                    break;
                  }
                }
              }

              v100 = v34 - v15 + v41;
              log_OutText(*(*(v86 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] after resetting to %d characters, position=%d", v43, v44, v45, v16);
              eos_BackScanPhraseBoundary(*(v86 + 152), v85, v15, v34, &v100);
              v52 = v100;
              if (v100 > v87)
              {
                v52 = v87;
                v100 = v87;
              }

              log_OutText(*(*(v86 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] after scanning back to phrase boundary, position=%d", v49, v50, v51, v52);
              *&v96 = v100;
              v7 = bed_GetpBlock(i, &v101);
              v48 = v92;
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              v56 = *(v101 + 8);
              if (*(v101 + 16))
              {
                v57 = 0;
                v58 = 0;
                v59 = (v56 + 40);
                do
                {
                  if (*(v59 - 2) > v96)
                  {
                    break;
                  }

                  if (*(v59 - 5) == 7)
                  {
                    v58 = !v58;
                    v48 = *v59 == 43 ? v57 : v48;
                    if (*v59 != 43)
                    {
                      v58 = 0;
                    }
                  }

                  ++v57;
                  v59 += 16;
                }

                while (*(v101 + 16) != v57);
                if (v58)
                {
                  v93 = v48;
                  v60 = v48 + 1;
                  log_OutText(*(*(v86 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] position=%d is in a phoneme region", v53, v54, v55, v100);
                  v64 = *(v101 + 16);
                  if (v64 <= v60)
                  {
                    goto LABEL_67;
                  }

                  v65 = v60;
                  v66 = v60 - 1;
                  v67 = (v56 + (v65 << 6) + 20);
                  do
                  {
                    v69 = *v67;
                    v67 += 16;
                    v68 = v69;
                    v70 = v66 + 2;
                    ++v66;
                  }

                  while (v70 < v64 && v68 != 7);
                  if (v68 == 7)
                  {
                    log_OutText(*(*(v86 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set forced EOS at end of phoneme region (marker %d)", v61, v62, v63, v66);
                    v100 = *(v56 + (v66 << 6) + 32);
                    LODWORD(v96) = v100;
                    v17 = bed_Goto(i, v66);
                    if ((v17 & 0x80000000) != 0)
                    {
                      return v17;
                    }

                    v17 = sparser_bed_InjectMarker(i, v95, 0, *(v86 + 188));
                    if ((v17 & 0x80000000) != 0)
                    {
                      return v17;
                    }

                    v7 = 0;
                  }

                  else
                  {
LABEL_67:
                    v17 = bed_Goto(i, v93);
                    if ((v17 & 0x80000000) != 0)
                    {
                      return v17;
                    }

                    v79 = v56 + (v93 << 6);
                    v80 = *(v79 + 24);
                    LODWORD(v96) = *(v79 + 32);
                    log_OutText(*(*(v86 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] didnt find end of phoneme region, hard reset at start of phoneme (marker %d)", v76, v77, v78, v93);
                    v17 = sparser_bed_InjectMarker(i, v95, 1, *(v86 + 188));
                    if ((v17 & 0x80000000) != 0)
                    {
                      return v17;
                    }

                    v7 = bed_GetpBlock(i, &v101);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    *(*(v101 + 8) + (v93 << 6) + 24) = v80;
                    v100 = v88;
                  }

                  v34 = v91;
LABEL_72:
                  v48 = v93;
                  goto LABEL_73;
                }
              }

              if (v96 != *(v56 + 32))
              {
                v93 = v48;
                v75 = *(v101 + 16);
                do
                {
                  --v75;
                }

                while (v75 && v96 < *(v56 + (v75 << 6) + 36) + *(v56 + (v75 << 6) + 32));
                log_OutText(*(*(v86 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] hard reset at position=%d", v53, v54, v55, v96);
                v17 = bed_Goto(i, v75);
                if ((v17 & 0x80000000) != 0)
                {
                  return v17;
                }

                v17 = sparser_bed_InjectMarker(i, v95, 0, *(v86 + 188));
                if ((v17 & 0x80000000) != 0)
                {
                  return v17;
                }

                v7 = 0;
                goto LABEL_72;
              }

              log_OutText(*(*(v86 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] no hard reset (at start of text)", v53, v54, v55, v83);
LABEL_73:
              log_OutPublic(*(v102 + 32), &modPP_1, 1816, 0, v71, v72, v73, v74, v84);
              v40 = v100;
LABEL_74:
              if (v40 - v34 + v15 <= 0xFFFE)
              {
                v92 = v48;
                v81 = (v40 - v34);
                if (v40 == v34)
                {
                  v81 = 1;
                }

                v15 += v81;
                a3 = v40;
                if (v15 < v46)
                {
                  continue;
                }
              }

              return v7;
            }

            v31 = 0;
            v32 = (v90 + 96);
            while (v21 - 1 != v31)
            {
              ++v31;
              v33 = *v32;
              v32 += 16;
              if (v33 > v24)
              {
                v25 = v31;
                LOWORD(v98) = v31;
                goto LABEL_13;
              }
            }

            LOWORD(v98) = *(*&v95[0] + 16);
LABEL_28:
            v12 = v18;
            v39 = Utf8_LengthInUtf8chars(*(v18 + 8), *(v18 + 16) * v19 - v22);
            v34 = v91;
            if (v39 <= v16)
            {
              v40 = v91 + *(v18 + 2) * *(v18 + 16);
              goto LABEL_35;
            }

            goto LABEL_29;
          }
        }
      }
    }
  }

  return v7;
}

uint64_t sparser_GetTextElement(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _WORD *a7, _DWORD *a8, _DWORD *a9, uint64_t a10, _WORD *a11, _WORD *a12)
{
  v169 = 0;
  v170 = 0;
  v167 = 0;
  v168 = 0;
  v12 = 2369789959;
  v165 = 0;
  v166 = 0;
  v163 = 0;
  v162 = 0;
  if (!a2)
  {
    return v12;
  }

  v164 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v170) & 0x80000000) != 0)
  {
    return v12;
  }

  *a12 = 0;
  *a11 = 0;
  *a8 = 0;
  if (!*(a1 + 96))
  {
    v26 = *(v170 + 32);
    v27 = 1805;
    goto LABEL_8;
  }

  v25 = datac_RequestBlock(a2, 1010, 1u, &v169);
  if ((v25 & 0x80000000) != 0)
  {
    return v25;
  }

  v159 = (datac_RequestBlock(a2, 1012, 1u, &v167) & 0x80000000) != 0 ? 0 : *(v167 + 8);
  v25 = datac_RequestBlock(a2, 1011, 1u, &v168);
  if ((v25 & 0x80000000) != 0)
  {
    return v25;
  }

  v156 = a4;
  v157 = *(v168 + 8);
  v28 = *(v168 + 16);
  v25 = chars_ScanBlankHead(v169, &v164, v168, &v164 + 1, &v162, 0);
  if ((v25 & 0x80000000) != 0)
  {
    return v25;
  }

  if (v162 == 1)
  {
    HIWORD(v164) = v28;
  }

  v32 = v168;
  v33 = *(v168 + 16);
  if (v33 >= 2)
  {
    v34 = *(v157 + 32) + v164;
    v35 = v33 - 1;
    v36 = (v157 + 104);
    do
    {
      if (*(v36 - 2) > v34)
      {
        break;
      }

      if (*(v36 - 5) == 20)
      {
        *a7 = *v36;
      }

      v36 += 16;
      --v35;
    }

    while (v35);
  }

  v155 = a8;
  if (*a7 - 2 > 2)
  {
    v37 = sparser_GetSentenceLength;
  }

  else
  {
    v37 = off_1F42D5918[(*a7 - 2)];
  }

  v38 = v169;
  v39 = v167;
  if (v32)
  {
    if (v169)
    {
      v40 = HIWORD(v164);
      if (HIWORD(v164))
      {
        v41 = 0;
        v42 = *(v32 + 8);
        v43 = v42;
        while ((v43[5] & 0xFFFFFFFE) != 2 || v43[10] != 1)
        {
          v43 += 16;
          if (-HIWORD(v164) == --v41)
          {
            goto LABEL_30;
          }
        }

        v53 = -v41;
        v44 = -v41;
        if (v41)
        {
          v54 = v42[16 * ~v41 + 5];
          v116 = v54 > 0x28;
          v55 = (1 << v54) & 0x10024000100;
          if (!v116 && v55 != 0)
          {
            v57 = v43[8] - v42[8] / *(v169 + 2);
LABEL_55:
            LOWORD(v164) = v57;
            HIWORD(v164) = v44;
            goto LABEL_32;
          }
        }

        if (HIWORD(v164) > v44)
        {
          while (1)
          {
            v78 = v43[5];
            v116 = v78 > 0x28;
            v79 = (1 << v78) & 0x10024000100;
            if (!v116 && v79 != 0)
            {
              break;
            }

            ++v53;
            v43 += 16;
            if (HIWORD(v164) == v53)
            {
              goto LABEL_30;
            }
          }

          if (HIWORD(v164) > v53)
          {
            v152 = *(v167 + 8);
            v154 = v169;
            v150 = v37;
            v151 = v167;
            v149 = *(v32 + 8);
            while (!sparser_marker_IsSentenceBoundary(v43, (v152 + v43[10])))
            {
              v43 += 16;
              ++v53;
              v37 = v150;
              v39 = v151;
              v38 = v154;
              if (v53 >= v40)
              {
                goto LABEL_30;
              }
            }

            v44 = v53;
            LOWORD(v57) = (*(v149 + (v53 << 6) + 32) - *(v149 + 32)) / *(v154 + 2);
            goto LABEL_55;
          }
        }
      }
    }
  }

LABEL_30:
  v25 = (v37)(v170, v38, v32, v39, &v164, &v164 + 2);
  if ((v25 & 0x80000000) != 0)
  {
    return v25;
  }

  v44 = HIWORD(v164);
LABEL_32:
  if (v44 < 2)
  {
    v47 = 0;
    v49 = 1;
LABEL_41:
    v51 = v157;
  }

  else
  {
    v45 = 0;
    v46 = v157 + 64;
    v47 = 1;
    while (1)
    {
      v48 = *(v46 + 20);
      v49 = v45 + 1;
      if (v48 == 22)
      {
        break;
      }

      if (v48 == 0x4000)
      {
        v50 = v45;
      }

      else
      {
        v50 = v45 + 1;
      }

      ++v47;
      v45 = v50 + 1;
      v46 += 64;
      if (v44 == v47)
      {
        v47 = 0;
        v49 = v44;
        goto LABEL_41;
      }
    }

    HIWORD(v164) = v47;
    *a5 = 1;
    if ((v45 + 1) == v47 && *(v46 + 32) == *(v157 + 32))
    {
      *a6 = 1;
      log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found immediate voice switch", v29, v30, v31, v141);
      v25 = sparser_SetArgAsParamStr(a1, a2, v46, "pipelineswitchvoice");
      if ((v25 & 0x80000000) != 0)
      {
        return v25;
      }

      HIWORD(v164) = v45 + 2;
    }

    else
    {
      *a6 = 0;
      v49 = v47;
    }

    v51 = v157;
    if (*(v168 + 16) <= v49)
    {
      v52 = *(v169 + 16);
    }

    else
    {
      v52 = (*(v46 + 32) - *(v157 + 32)) / *(v169 + 2);
    }

    if (v52 >= *(v169 + 16))
    {
      v58 = *(v169 + 16);
    }

    else
    {
      v58 = v52;
    }

    LOWORD(v164) = v58;
    v143 = *a6;
    v145 = *a5;
    log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found voice switch (marker %d); adjusted text length to %u, set iMEnd to %d, bImmediateVoiceSwitch=%d bEndOnVoiceSwitch=%d", v29, v30, v31, v47);
  }

  if (v164 <= 1u)
  {
    v59 = 1;
  }

  else
  {
    v59 = v164;
  }

  v25 = datac_RequestBlock(a2, 1020, v59, &v166);
  if ((v25 & 0x80000000) != 0)
  {
    return v25;
  }

  v25 = datac_RequestBlock(a2, 1021, (HIWORD(v164) + 1), &v165);
  if ((v25 & 0x80000000) != 0)
  {
    return v25;
  }

  memmove(*(v166 + 8), *(v169 + 8), *(v169 + 2) * v164);
  v60 = v164;
  *(v166 + 16) = v164;
  v61 = v169;
  v62 = *(v169 + 16) - v60;
  *(v169 + 16) = v62;
  memmove(*(v61 + 8), (*(v61 + 8) + v60), *(v61 + 2) * v62);
  v63 = v166;
  *a3 = *(v166 + 16);
  if (*a5 == 1 && !*a6)
  {
    v161 = 0;
    v160 = 0;
    v25 = chars_ScanBlankHead(v63, &v161, v165, &v160, &v162, 0);
    if ((v25 & 0x80000000) != 0)
    {
      return v25;
    }

    if (v161 == *(v166 + 16))
    {
      if (HIWORD(v164) < 2uLL)
      {
LABEL_97:
        *a6 = 1;
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found immediate voice switch, due to blank text", v81, v82, v83, v141);
        v25 = sparser_SetArgAsParamStr(a1, a2, v51 + (v47 << 6), "pipelineswitchvoice");
        if ((v25 & 0x80000000) != 0)
        {
          return v25;
        }

        HIWORD(v164) = v49 + 1;
      }

      else
      {
        v84 = (v51 + 84);
        v85 = 1;
        while (1)
        {
          v86 = *v84;
          v84 += 16;
          v87 = (1 << v86) & 0x1080200084;
          if (v86 > 0x24 || v87 == 0)
          {
            break;
          }

          if (++v85 >= HIWORD(v164))
          {
            goto LABEL_97;
          }
        }

        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] blank text, but non-eos marker found - continue with sentence", v81, v82, v83, v141);
        HIWORD(v164) = v49;
        *a5 = 0;
      }
    }
  }

  memmove(*(v165 + 8), *(v168 + 8), HIWORD(v164) << 6);
  v67 = v165;
  v68 = HIWORD(v164);
  if (!HIWORD(v164))
  {
    goto LABEL_76;
  }

  v69 = 0;
  v70 = (v51 + 48);
  v71 = (*(v165 + 8) + 48);
  do
  {
    if (*v70)
    {
      v72 = strlen(*v70);
      if (v72)
      {
        v73 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v72 + 1));
        *v71 = v73;
        if (!v73)
        {
          return 2369789962;
        }

        strcpy(v73, *v70);
        heap_Free(*(*(a1 + 16) + 8), *v70);
        *v70 = 0;
        v68 = HIWORD(v164);
      }
    }

    ++v69;
    v70 += 8;
    v71 += 8;
  }

  while (v69 < v68);
  v67 = v165;
LABEL_76:
  *(v67 + 16) = v68;
  v74 = v51 + (v68 << 6);
  v75 = v169;
  if (*(v169 + 20))
  {
    v76 = v168;
    if (*(v169 + 16))
    {
      v77 = 0;
    }

    else
    {
      v77 = *(v168 + 20);
      if (v77)
      {
        v77 = *(v168 + 16) == v68;
      }
    }
  }

  else
  {
    v77 = 0;
    v76 = v168;
  }

  v89 = *(v74 + 24);
  *(v166 + 20) = v77;
  *(v67 + 20) = v77;
  if (*(v76 + 16) <= v68)
  {
    v90 = *(v75 + 2) * v164;
    v91 = *(v51 + 32) + v90;
  }

  else
  {
    v90 = *(v75 + 2) * v164;
    v91 = v90 + *(v51 + 32);
    v92 = *(v74 + 32);
    if (v91 >= v92)
    {
      v153 = 0;
      *(v51 + 24) = v89;
      *(v51 + 32) = v92;
      goto LABEL_106;
    }
  }

  *(v51 + 24) += v90;
  *(v51 + 32) = v91;
  v153 = 1;
LABEL_106:
  v158 = v89;
  if (v68 < 2u)
  {
    v96 = 1;
    v95 = v68;
  }

  else
  {
    v93 = (v51 + 84);
    v94 = 1;
    v95 = v68;
    v96 = 1;
    do
    {
      if (*v93 != 2)
      {
        *v156 += v93[2];
        if (*v93 <= 0x24)
        {
          v97 = ((1 << *v93) & 0x1080200080) == 0;
          *v93;
        }

        else
        {
          v97 = 1;
        }

        if (!v97)
        {
          ArgOfLastOfType = marker_GetArgOfLastOfType(v51, v94, v95, 1);
          v99 = *v93;
          if (!sparser_marker_IsReadOutControlDefaultArg(*v93, ArgOfLastOfType, v159, *(a1 + 180)))
          {
            v100 = v51 + (v96 << 6);
            v101 = *(v51 + 24);
            *(v100 + 20) = v99;
            *(v100 + 24) = v101;
            v102 = *(v51 + 32);
            *(v100 + 28) = 0;
            *(v100 + 32) = v102;
            *(v100 + 40) = ArgOfLastOfType;
            *v100 = 1;
            ++v96;
          }
        }
      }

      ++v94;
      v95 = HIWORD(v164);
      v93 += 16;
    }

    while (v94 < HIWORD(v164));
  }

  if (v96 >= v95)
  {
    v105 = a12;
  }

  else
  {
    v103 = v168;
    v104 = *(v168 + 16) + v96 - v95;
    *(v168 + 16) = v104;
    v105 = a12;
    if (v104 >= 2u)
    {
      memmove((*(v103 + 8) + (v96 << 6)), (*(v103 + 8) + (v95 << 6)), (v104 - v96) << 6);
      v95 = HIWORD(v164);
    }
  }

  v106 = *(v165 + 8);
  v107 = v95 - 1;
  if ((v95 - 1) >= 2u)
  {
    v107 = v95 - 1;
    v108 = &v106[16 * (v95 - 1)];
    while (*v108 == 1 || !*v108 && v108[5] == 0x4000)
    {
      --v107;
      v108 -= 16;
      if ((v107 & 0xFFFE) == 0)
      {
        v107 = 1;
        break;
      }
    }
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] end marker is pMrk[%d] (iMEnd=%d)", v64, v65, v66, v107);
  v109 = HIWORD(v164);
  if (HIWORD(v164))
  {
    v110 = v106;
    do
    {
      v111 = *v110;
      v110 += 16;
      if (!v111)
      {
        ++*a11;
      }

      --v109;
    }

    while (v109);
  }

  v112 = v106[6];
  v113 = v158 - v112;
  v114 = *(v169 + 2) * v164;
  v115 = v106[8] - v112 + v106[16 * v107 + 6] + v106[16 * v107 + 7] + v114 - (v106[16 * v107 + 8] + v106[16 * v107 + 9]);
  if (((v158 - v112) & 0x80000000) == 0 || (v115 & 0x80000000) == 0)
  {
    v116 = v158 != v112 && v115 < 0;
    if (!v116)
    {
      v113 = v106[8] - v112 + v106[16 * v107 + 6] + v106[16 * v107 + 7] + v114 - (v106[16 * v107 + 8] + v106[16 * v107 + 9]);
    }

    v106[7] = v113;
    v106[9] = v114;
    LOWORD(v164) = 0;
    v117 = v165;
    v118 = *(v165 + 16);
    if (v118)
    {
      v119 = 0;
      v120 = v106 + 5;
      while (1)
      {
        v121 = v120 - 5;
        if (*v120 == 3)
        {
          if (!v120[5] || v120[3] - v106[8] < v106[9])
          {
LABEL_149:
            v122 = v164;
            v123 = &v106[16 * v164];
            v124 = *(v120 + 3);
            v125 = *(v120 + 7);
            v126 = *(v120 - 1);
            *v123 = *v121;
            *(v123 + 1) = v126;
            *(v123 + 2) = v124;
            *(v123 + 3) = v125;
            v127 = v123[5];
            if (v127 == 3 && !v123[10] || *v120 == 3 && v120[3] - v106[8] < v106[9])
            {
              v123[5] = 999;
              v123[10] = 0;
            }

            else if (v127 == 3)
            {
              v123[5] = 2;
            }

            LOWORD(v164) = v122 + 1;
          }
        }

        else if ((*v120 & 0xFFFFFFFE) != 2)
        {
          goto LABEL_149;
        }

        if (v120[3] <= v106[8] && *v120 != 0x4000 && !*v121)
        {
          *v155 += v120[2];
          v147 = v120[3];
          v148 = v120[4];
          v144 = v120[1];
          v146 = v120[2];
          v142 = *v120;
          log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] [2] add pMrk[%d].lenRef (tag=%d) to posRefOffset(%d) %d,%d %d,%d", v22, v23, v24, v119);
        }

        ++v119;
        v117 = v165;
        v120 += 16;
        if (v119 >= *(v165 + 16))
        {
          v118 = v164;
          v105 = a12;
          break;
        }
      }
    }

    *(v117 + 16) = v118;
    v25 = sparser_TrimBlankHead(a1, a2, v155, v105, &v163, a9, a10);
    if ((v25 & 0x80000000) == 0)
    {
      v25 = datac_RequestBlock(a2, 1021, 1u, &v165);
      if ((v25 & 0x80000000) == 0)
      {
        v128 = *(v165 + 8);
        v129 = *(v128 + 24);
        v130 = *(v128 + 28);
        v25 = datac_RequestBlock(a2, 1011, 1u, &v168);
        if ((v25 & 0x80000000) == 0)
        {
          if (!v153)
          {
            return 0;
          }

          v131 = v168;
          v132 = *(v168 + 8);
          v132[6] = v130 + v129;
          v133 = *(v131 + 16);
          if (v133 < 2)
          {
            return 0;
          }

          v134 = v132[8];
          v135 = v132 + 24;
          v136 = v133 - 1;
          do
          {
            if (*v135 == v134)
            {
              v137 = *(v135 - 3);
              v116 = v137 > 0x24;
              v138 = (1 << v137) & 0x1080200080;
              if (!v116 && v138 != 0)
              {
                *(v135 - 2) = v130 + v129;
              }
            }

            v12 = 0;
            v135 += 16;
            --v136;
          }

          while (v136);
          return v12;
        }
      }
    }

    return v25;
  }

  v26 = *(v170 + 32);
  v27 = 1902;
LABEL_8:
  log_OutPublic(v26, &modPP_1, v27, 0, v21, v22, v23, v24, v141);
  return v12;
}

uint64_t sparser_GetCharacterLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6)
{
  if (*a5 >= *(a2 + 16))
  {
    LOWORD(v12) = *(a3 + 16);
  }

  else
  {
    v10 = *(a3 + 8);
    v11 = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + *a5));
    *a5 = v11;
    v12 = *a6;
    v13 = *(a3 + 16);
    if (v12 < v13)
    {
      v14 = *(v10 + 32) + *(a2 + 2) * v11;
      v15 = (v10 + 32 + (v12 << 6));
      while (1)
      {
        v16 = *v15;
        v15 += 16;
        if (v16 >= v14)
        {
          break;
        }

        if (v13 == ++v12)
        {
          LOWORD(v12) = *(a3 + 16);
          break;
        }
      }
    }
  }

  *a6 = v12;
  return 0;
}

uint64_t sparser_GetWordLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  v11 = *(a3 + 8);
  v39 = 0;
  v12 = *a5;
  chars_ScanNonBlanks(*(a2 + 8), a5, *(a2 + 16));
  sparser_getMaxCharsPerText(a1, &v39);
  v13 = Utf8_LengthInUtf8chars(*(a2 + 8), *a5);
  v18 = v39;
  if (v39 >= v13)
  {
    v20 = *a5;
  }

  else
  {
    log_OutPublic(*(a1 + 32), &modPP_1, 1814, 0, v14, v15, v16, v17, v37);
    *a5 = v18;
    v38 = v18;
    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v38);
    if (v38)
    {
      --v38;
    }

    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v38);
    v19 = v38;
    *a5 = v38;
    v20 = utf8_determineUTF8CharLength(*(*(a2 + 8) + v19));
    *a5 = v20;
    if (*(a2 + 16) > v20 && v18 >= 2)
    {
      v22 = 1;
      do
      {
        v20 = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + v20));
        *a5 = v20;
        ++v22;
      }

      while (*(a2 + 16) > v20 && v22 < v18);
    }
  }

  v24 = *(a3 + 16);
  if (v12 == v20)
  {
LABEL_18:
    v25 = v24;
  }

  else
  {
    if (*(a3 + 16))
    {
      v26 = 0;
      v27 = 0;
      v25 = 0;
      v28 = (v11 + 40);
      do
      {
        if (v27 || *(v28 - 2) - *(v11 + 32) >= v20)
        {
          break;
        }

        if (*(v28 - 5) == 7)
        {
          v27 = *v28 == 43;
          if (*v28 == 43)
          {
            v25 = v26;
          }
        }

        else
        {
          v27 = 0;
        }

        ++v26;
        v28 += 16;
      }

      while (v24 != v26);
      if (v27)
      {
        v29 = v11 + (v25 << 6);
        v30 = *(v11 + 32);
        if (*(v29 + 32) != v30 || *(v29 + 20) != 7)
        {
          *a5 = *(v29 + 32) - v30;
          goto LABEL_42;
        }

        while (1)
        {
          v31 = v25++;
          if (v24 <= v25)
          {
            break;
          }

          v32 = v11 + (v25 << 6);
          if (*(v32 + 20) == 7)
          {
            *a5 = *(v32 + 32) - v30;
            *a6 = v31 + 2;
            LODWORD(v24) = *(a3 + 16);
            break;
          }
        }
      }
    }

    v33 = *a6;
    v25 = *a6;
    if (v33 < v24)
    {
      v34 = (v11 + 32 + (v33 << 6));
      while (1)
      {
        v35 = *v34;
        v34 += 16;
        if (v35 >= *(v11 + 32) + *(a2 + 2) * *a5)
        {
          break;
        }

        if (v24 == ++v33)
        {
          goto LABEL_18;
        }
      }

      v25 = v33;
    }
  }

LABEL_42:
  *a6 = v25;
  return 0;
}

uint64_t sparser_GetLineLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6)
{
  v11 = *(a3 + 8);
  v47 = 0;
  v12 = *a5;
  chars_ScanForLineEnd(*(a2 + 8), a5, *(a2 + 16));
  sparser_getMaxCharsPerText(a1, &v47);
  v13 = Utf8_LengthInUtf8chars(*(a2 + 8), *a5);
  v14 = v47;
  if (v47 < v13)
  {
    v15 = a6;
    *a5 = v47;
    v16 = v14;
    if (v14 == *(a2 + 16))
    {
      *a5 = v14 - 1;
      v16 = (v14 - 1);
    }

    v46 = v16;
    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v46);
    v17 = v46;
    *a5 = v46;
    v18 = Utf8_LengthInUtf8chars(*(a2 + 8), v17);
    v19 = *a5;
    if (v19 < *(a2 + 16))
    {
      for (i = v18; v14 > i; ++i)
      {
        LOWORD(v19) = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + v19));
        *a5 = v19;
        if (*(a2 + 16) <= v19)
        {
          break;
        }
      }
    }

    chars_BackScanToBlank(*(a2 + 8), a5);
    v25 = *a5;
    if (!*a5)
    {
      *a5 = v19;
      v25 = v19;
    }

    a6 = v15;
    if (*(a3 + 16))
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = (v11 + 40);
      do
      {
        if (*(v29 - 2) - *(v11 + 32) > v25)
        {
          break;
        }

        if (*(v29 - 5) == 7)
        {
          v27 = !v27;
          if (*v29 == 43)
          {
            v28 = v26;
          }

          else
          {
            v27 = 0;
          }
        }

        ++v26;
        v29 += 16;
      }

      while (*(a3 + 16) != v26);
      if (v27)
      {
        *a5 = *(v11 + (v28 << 6) + 32) - *(v11 + 32);
      }
    }

    log_OutPublic(*(a1 + 32), &modPP_1, 1815, 0, v21, v22, v23, v24, v42);
  }

  v30 = *a5;
  if (v12 == v30)
  {
    LOWORD(v31) = *(a3 + 16);
  }

  else
  {
    v31 = *a6;
    v32 = *(a3 + 16);
    if (v31 < v32)
    {
      v44 = a6;
      v33 = *(v11 + 32);
      v43 = *(a2 + 2);
      v34 = v43 * v30;
      v35 = v43 * v30 + v33;
      v36 = (v11 + (v31 << 6));
      while (1)
      {
        v37 = v36[8];
        if (v37 >= v35)
        {
          break;
        }

        if (v34 >= (v37 - v33))
        {
          v38 = v36[10];
          if (sparser_marker_IsSentenceBoundary(v36, (*(a4 + 8) + v38)))
          {
            v39 = v38 == 1 && (v36[5] & 0xFFFFFFFE) == 2;
            v40 = v39;
            if (v37 != v33 && !v40)
            {
              *a5 = (v37 - v33) / v43;
              break;
            }
          }
        }

        ++v31;
        v36 += 16;
        if (v32 == v31)
        {
          LOWORD(v31) = v32;
          break;
        }
      }

      a6 = v44;
    }
  }

  *a6 = v31;
  return 0;
}

uint64_t sparser_GetSentenceLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, unsigned __int16 *a6)
{
  v6 = a6;
  v11 = *(a3 + 8);
  v12 = *a6;
  v13 = *(a3 + 16);
  if (v12 < v13)
  {
    v14 = *(v11 + 32);
    v15 = *(a2 + 2) * *a5;
    v16 = v11 + (v12 << 6);
    while (1)
    {
      v17 = (*(v16 + 32) - v14);
      if (v15 < (*(v16 + 32) - v14) && sparser_marker_IsSentenceBoundary(v16, (*(a4 + 8) + *(v16 + 40))))
      {
        break;
      }

      LOWORD(v12) = v12 + 1;
      v16 += 64;
      if (v13 == v12)
      {
        LOWORD(v12) = v13;
        v6 = a6;
        goto LABEL_17;
      }
    }

    LODWORD(v12) = v12;
    v6 = a6;
  }

  if (v12 < v13)
  {
    v12 = v12;
    v18 = v11 + (v12 << 6);
    do
    {
      v19 = *(v18 + 32) - *(v11 + 32);
      if (*(a2 + 2) * *a5 < (*(v18 + 32) - *(v11 + 32)) && sparser_marker_IsSentenceBoundary(v18, (*(a4 + 8) + *(v18 + 40))))
      {
        IsSuppressedSentenceBoundary = sparser_IsSuppressedSentenceBoundary(a3, a2, v19);
        v13 = *(a3 + 16);
        if (!IsSuppressedSentenceBoundary)
        {
          break;
        }
      }

      ++v12;
      v18 += 64;
    }

    while (v12 < v13);
    LODWORD(v12) = v12;
  }

  if (v12 >= v13)
  {
LABEL_17:
    v21 = *(a2 + 16);
  }

  else
  {
    v21 = (*(v11 + (v12 << 6) + 32) - *(v11 + 32)) / *(a2 + 2);
  }

  *a5 = v21;
  *v6 = v12;
  return 0;
}

uint64_t sparser_SetArgAsParamStr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 2369789959;
  v15 = 0;
  v16 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v16) & 0x80000000) == 0 && (datac_RequestBlock(a2, 1012, 1u, &v15) & 0x80000000) == 0)
  {
    v8 = strlen((*(v15 + 8) + *(a3 + 40)));
    v9 = heap_Calloc(*(v16 + 8), 1, v8 + 1);
    if (v9)
    {
      v10 = v9;
      strncpy(v9, (*(v15 + 8) + *(a3 + 40)), v8)[v8] = 0;
      v7 = paramc_ParamSetStr(*(v16 + 40), a4, v10);
      if ((v7 & 0x80000000) == 0)
      {
        log_OutText(*(v16 + 32), &modPP_1, 4, 0, "[SPARSER] SET PARAM marker:%d param=%s val=%s", v11, v12, v13, *(a3 + 20));
      }

      heap_Free(*(v16 + 8), v10);
    }

    else
    {
      return 2369789962;
    }
  }

  return v7;
}

BOOL sparser_marker_IsReadOutControlDefaultArg(int a1, unsigned int a2, uint64_t a3, int a4)
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

      return a3 && strcmp((a3 + a2), "normal") == 0;
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

      return a3 && strcmp((a3 + a2), "normal") == 0;
    }

    return a2 == 15;
  }
}

uint64_t sparser_TrimBlankHead(uint64_t a1, uint64_t a2, _DWORD *a3, _WORD *a4, _WORD *a5, _DWORD *a6, uint64_t a7)
{
  v9 = a5;
  v126 = 0;
  v127 = 0;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0;
  v121 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *(a7 + 20) = 0;
  result = datac_RequestBlock(a2, 1020, 1u, &v127);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = datac_RequestBlock(a2, 1021, 1u, &v126);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = chars_ScanBlankHead(v127, &v121 + 1, v126, &v121, &v120, 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = datac_RequestBlock(a2, 1021, 1u, &v126);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v18 = *(v126 + 8);
  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] got %d (byte) blanks, but do they bisect markers?", v15, v16, v17, *(v127 + 2) * HIWORD(v121));
  if (v120)
  {
    v19 = 1;
  }

  else
  {
    v119 = a1;
    v20 = 0;
    v21 = v18 + 24;
    v22 = v18[8];
    v23 = (v18 + 8);
    v24 = (v18 + 21);
    v25 = v126;
    v26 = &modPP_1;
    LODWORD(v27) = 1;
    do
    {
      v28 = *(v25 + 16);
      if (v28 <= v20)
      {
        break;
      }

      v29 = v20 + 2;
      v30 = &v21[16 * v20];
      while (1)
      {
        v31 = v20;
        v32 = &v18[16 * v20];
        v33 = v32[5];
        v34 = v33 > 0x24 || ((1 << v33) & 0x1080300080) == 0;
        if (!v34 && !*v32)
        {
          v35 = v32[8];
          v36 = v18[8];
          v37 = *(v127 + 2);
          v38 = v37 * HIWORD(v121) + v36;
          if (v35 < v38)
          {
            break;
          }
        }

        ++v20;
        ++v29;
        v30 += 16;
        if (v28 <= v20)
        {
          goto LABEL_57;
        }
      }

      if (v28 <= (v20 + 1))
      {
        v118 = v20;
      }

      else
      {
        LOWORD(v31) = v20;
        do
        {
          v39 = *(v30 - 3);
          if (v39 <= 0x24 && ((1 << v39) & 0x1080300080) != 0)
          {
            v41 = v39 == v33 && *(v30 - 8) == 0;
            if (v41 && *v30 < v38)
            {
              LOWORD(v31) = v29 - 1;
            }
          }

          v34 = v28 == v29++;
          v30 += 16;
        }

        while (!v34);
        v118 = v31;
        v31 = v31;
        v35 = v18[16 * v31 + 8];
      }

      if (v35 < v36 || (v35 - v36) / v37 >= HIWORD(v121))
      {
        if (v32[6] - v18[6] == v37 * HIWORD(v121))
        {
          v117 = v21;
          v115 = v22;
          v111 = v24;
          v113 = v23;
          v62 = v26;
          log_OutText(*(*(v119 + 16) + 32), v26, 5, 0, "[SPARSER] reset to reference region at marker %d", v22, v23, v24, v20);
          v26 = v62;
          v24 = v111;
          v23 = v113;
          v22 = v115;
          v21 = v117;
          LODWORD(v27) = 0;
          v63 = *(v127 + 2) * HIWORD(v121);
          v64 = v18[7] - v63;
          v18[6] += v63;
          v18[7] = v64;
          LOWORD(v121) = v20;
          v25 = v126;
        }
      }

      else
      {
        v110 = v24;
        v112 = v23;
        v114 = v22;
        v109 = v9;
        v42 = &v18[16 * v31];
        LOWORD(v121) = v118;
        v116 = v21;
        v43 = *(v42 + 3);
        v45 = *v42;
        v44 = *(v42 + 1);
        *(a7 + 32) = *(v42 + 2);
        *(a7 + 48) = v43;
        *a7 = v45;
        *(a7 + 16) = v44;
        log_OutText(*(*(v119 + 16) + 32), v26, 5, 0, "[SPARSER] hard reference reset at marker %d", v22, v23, v24, v118);
        log_OutText(*(*(v119 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] reset to reference region at marker %d", v46, v47, v48, v118);
        v49 = (v42[6] - v18[6]);
        *a6 = v49;
        log_OutText(*(*(v119 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set refReset(%d) due to readout control marker %d", v50, v51, v52, v49);
        v53 = v42[6];
        v54 = v18[7] - v53 + v18[6];
        v18[6] = v53;
        v18[7] = v54;
        v55 = v42[7] + (HIWORD(v121) - (v42[8] - v18[8]) / *(v127 + 2)) * *(v127 + 2);
        *a3 = v55;
        log_OutText(*(*(v119 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set posRefOffset(%d) due to readout control marker %d", v56, v57, v58, v55);
        v25 = v126;
        if (*(v126 + 16) <= (v118 + 1))
        {
          v21 = v116;
          v22 = v114;
          v24 = v110;
          v23 = v112;
          v26 = &modPP_1;
        }

        else
        {
          v59 = (v118 + 1);
          v24 = v110;
          v23 = v112;
          v60 = (v112 + (v59 << 6));
          v21 = v116;
          v22 = v114;
          v26 = &modPP_1;
          do
          {
            if ((*(v60 - 3) == 999 || !*(v60 - 8)) && *v60 <= v22 + *(v127 + 2) * HIWORD(v121) && *(v60 - 2) >= v18[16 * v31 + 6])
            {
              v61 = (*a3 + *(v60 - 1));
              *a3 = v61;
              log_OutText(*(*(v119 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set posRefOffset(%d) due to marker %d", v22, v23, v24, v61);
              v26 = &modPP_1;
              v24 = v110;
              v23 = v112;
              v22 = v114;
              v21 = v116;
              v25 = v126;
            }

            ++v59;
            v60 += 16;
          }

          while (v59 < *(v25 + 16));
        }

        if (v118 < 2u)
        {
          LODWORD(v27) = 0;
          v9 = v109;
        }

        else
        {
          v27 = v31 - 1;
          v65 = v24;
          v9 = v109;
          do
          {
            if (*v65 == 999)
            {
              *v65 = 0x4000;
            }

            v65 += 16;
            --v27;
          }

          while (v27);
        }
      }

      v20 = *(v25 + 16) + 1;
    }

    while (!v120);
LABEL_57:
    v19 = v27 == 1;
    a1 = v119;
  }

  v66 = HIWORD(v121);
  if (!HIWORD(v121) && !*(a7 + 20))
  {
    return 0;
  }

  v67 = v127;
  v68 = *(v127 + 16) - HIWORD(v121);
  *(v127 + 16) = v68;
  memmove(*(v67 + 8), (*(v67 + 8) + v66), *(v67 + 2) * v68);
  result = datac_RequestBlock(a2, 1021, (*(v126 + 16) + 1), &v126);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v69 = a1;
  v70 = v126;
  v71 = *(v126 + 8);
  v72 = v121;
  if (v121 == 1)
  {
    v73 = v71[1];
    v122 = *v71;
    v123 = v73;
    v74 = v71[3];
    v124 = v71[2];
    v125 = v74;
    *(v71 + 7) = 0;
    *(v71 + 9) = 0;
  }

  v75 = *(v71 + 8);
  v76 = *(v71 + 6);
  v77 = v75 - v76 + *(&v71[4 * v72 - 2] - 2) + *(&v71[4 * v72 - 2] - 1) + *(v127 + 2) * HIWORD(v121) - (LODWORD(v71[4 * v72 - 2]) + *(&v71[4 * v72 - 1] - 3));
  if (v72 == 1)
  {
    v78 = v123;
    *v71 = v122;
    v71[1] = v78;
    v79 = v125;
    v71[2] = v124;
    v71[3] = v79;
  }

  v80 = *(v70 + 16);
  if (v80 < 2)
  {
    LOWORD(i) = 1;
  }

  else
  {
    v81 = v71 + 25;
    for (i = 1; i < v80; ++i)
    {
      if (v75 != *(v81 - 1))
      {
        break;
      }

      if (*v81)
      {
        break;
      }

      if (v76 != *(v81 - 3))
      {
        break;
      }

      if (v77 <= *(v81 - 2))
      {
        break;
      }

      v81 += 16;
    }
  }

  LOWORD(v121) = i;
  memmove(&v71[4 * i + 4], &v71[4 * i], (v80 - i) << 6);
  v86 = &v71[4 * v121];
  *(v86 + 1) = 0;
  *(v86 + 2) = 0x400000000000;
  *v86 = 0;
  *(v86 + 6) = v76;
  *(v86 + 7) = v77;
  *(v86 + 8) = v75;
  *(v86 + 36) = 0;
  *(v86 + 52) = 0;
  *(v86 + 44) = 0;
  *(v86 + 15) = 0;
  v87 = v126;
  v88 = v127;
  ++*(v126 + 16);
  v89 = HIWORD(v121);
  *a4 = *(v88 + 2) * HIWORD(v121);
  if (v19)
  {
    v105 = *a3;
    log_OutText(*(*(v69 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] add blanks (%d) to posRefOffset(%d)", v83, v84, v85, *(v88 + 2) * v89);
    v89 = HIWORD(v121);
    v88 = v127;
    *a3 += *(v127 + 2) * HIWORD(v121);
    v87 = v126;
  }

  if (*(a7 + 20))
  {
    v90 = *(v87 + 16);
  }

  else
  {
    LOWORD(v121) = 1;
    if (*(v87 + 16) < 2u)
    {
      goto LABEL_94;
    }

    v91 = 1;
    do
    {
      v92 = &v71[4 * v91];
      v93 = *(v92 + 8);
      v94 = *(v71 + 8);
      if (v93 > v94 && v93 <= v94 + *(v127 + 2) * HIWORD(v121) && *(v92 + 5) != 0x4000 && !*v92)
      {
        v108 = *(v92 + 9);
        v106 = *(v92 + 6);
        v107 = *(v92 + 7);
        log_OutText(*(*(v69 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] adjust posRefOffset(%d) by %d for leading esc sequences (marker tag=%d %d,%d,%d,%d)", v83, v84, v85, *a3);
        v91 = v121;
        v95 = &v71[4 * v121];
        *a3 += *(v95 + 7);
        *v9 += *(v95 + 14);
        v87 = v126;
      }

      LOWORD(v121) = ++v91;
      v90 = *(v87 + 16);
    }

    while (v90 > v91);
    v89 = HIWORD(v121);
    v88 = v127;
  }

  if (v90 > 1)
  {
    v96 = *(v88 + 2) * v89;
    v97 = v90;
    v98 = *(v71 + 8);
    v99 = v71 + 6;
    v100 = v97 - 1;
    do
    {
      if (*v99 >= v96 + v98)
      {
        v101 = *v99 - v96;
      }

      else
      {
        v101 = v98;
      }

      *v99 = v101;
      v99 += 16;
      --v100;
    }

    while (v100);
    goto LABEL_95;
  }

LABEL_94:
  v96 = *(v88 + 2) * v89;
LABEL_95:
  result = 0;
  v102 = *(v71 + 9);
  v103 = v102 >= v96;
  v104 = v102 - v96;
  if (!v103)
  {
    v104 = 0;
  }

  *(v71 + 9) = v104;
  return result;
}

uint64_t sparser_ProcessStart(uint64_t a1, int a2)
{
  v12 = 0;
  v11 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v12) & 0x80000000) != 0)
  {
    return 2369789959;
  }

  *(a1 + 168) = 0;
  *(a1 + 180) = a2;
  *(a1 + 184) = 200;
  UInt = paramc_ParamGetUInt(*(v12 + 40), "ppmaxmarkersinemptytext", &v11);
  result = 0;
  if ((UInt & 0x1FFF) != 0x14)
  {
    if ((UInt & 0x80000000) == 0)
    {
      if (v11 - 1 > 0xFFFD)
      {
        log_OutPublic(*(v12 + 32), &modPP_1, 1820, 0, v4, v5, v6, v7, v10);
      }

      else
      {
        *(a1 + 184) = v11;
      }
    }

    return UInt;
  }

  return result;
}

uint64_t sparser_bed_MapPosCur(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v15 = 0;
  if (!a3)
  {
    return 2369789959;
  }

  v14 = 0;
  *a3 = a2;
  LODWORD(result) = bed_GetpElem(a1, 0, &v15);
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
    result = bed_GetcElem(a1, &v14);
    if ((result & 0x80000000) == 0)
    {
      if (!v14)
      {
        return 0;
      }

      v7 = 0;
      v8 = 0;
      do
      {
        v9 = (v15 + (v7 << 6));
        v10 = v9[8];
        if (v10 > a2)
        {
          break;
        }

        v11 = *v9 == 1 && v7 == 0;
        if (v11 || *v9 == 0)
        {
          v13 = v9[9] + v10;
          if (v13 <= a2 && (!v8 || v8[9] + v8[8] <= v13))
          {
            v8 = (v15 + (v7 << 6));
          }
        }

        ++v7;
      }

      while (v7 < v14);
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

  return result;
}

BOOL sparser_marker_HasGreaterEqualPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) <= *(a2 + 32);
    }
  }

  return result;
}

BOOL sparser_marker_HasStrictlyGreaterPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) < *(a2 + 32);
    }
  }

  return result;
}

BOOL sparser_marker_IsSentenceBoundary(_BOOL8 result, char *__s1)
{
  if (result)
  {
    v2 = *(result + 20);
    if ((v2 & 0xFFFFFFFE) == 2 && *(result + 40) == 1)
    {
      return 1;
    }

    v3 = v2 == 12 || v2 == 20;
    return v3 || v2 == 36 && !strcmp(__s1, "vceunkn") || v2 == 200;
  }

  return result;
}

uint64_t sparser_IsSuppressedSentenceBoundary(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = 0;
  if (a1 && a2)
  {
    v6 = *(a1 + 8);
    v7 = *(a2 + 2);
    v13 = a3;
    chars_BackScanNChars(*(a2 + 8), &v13, 1);
    chars_BackScanBlanksX(*(a2 + 8), &v13, (*(a2 + 16) * v7));
    chars_ScanNChars(*(a2 + 8), (*(a2 + 16) * v7), &v13, 1);
    v12 = v13;
    chars_ScanBlanks(*(a2 + 8), &v12, (*(a2 + 16) * v7));
    v8 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v9 = (v6 + 40);
      do
      {
        v10 = (*(v9 - 2) - *(v6 + 32));
        if (v10 > (v12 * v7))
        {
          break;
        }

        if (*(v9 - 5) == 3 && !*v9 && v10 >= (v13 * v7))
        {
          return 1;
        }

        v9 += 16;
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  return result;
}

BOOL sparser_marker_IsOfSameType(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 20) == *(a2 + 20);
    }
  }

  return result;
}

uint64_t sparser_MatchSb(uint64_t a1, int a2, int a3, uint64_t a4, int a5, __int16 a6, __int16 a7, uint64_t a8, unsigned __int16 a9)
{
  v9 = a8;
  v100 = *MEMORY[0x1E69E9840];
  v92 = 0;
  v88[0] = 0u;
  v91 = 0u;
  LODWORD(v88[0]) = 1;
  v88[1] = 0x200000000uLL;
  v89 = 0;
  DWORD2(v91) = 0;
  v90 = 1;
  v13 = 136;
  if (!a2)
  {
    v13 = 120;
  }

  v14 = 144;
  if (!a2)
  {
    v14 = 128;
  }

  v15 = *(a1 + v14);
  v84 = *(a1 + v13);
  v87 = *(a4 + 8);
  v16 = *(a4 + 2);
  v79 = bed_GetpBlock(a8, &v92);
  if ((v79 & 0x80000000) == 0 && v15)
  {
    v17 = 0;
    v18 = v16 * a7;
    v82 = v15;
    v76 = v9;
    v75 = a6;
    do
    {
      v79 = bed_Goto(v9, a9);
      if ((v79 & 0x80000000) != 0)
      {
        break;
      }

      v86 = *(a1 + 112);
      v85 = *(*(a1 + 104) + 8 * *(v84 + 2 * v17));
      LOWORD(v19) = *(a4 + 2) * a6;
      v20 = a5;
      while (v19 < v18 && (nuance_pcre_exec(*(a1 + 24), *(a1 + 32), v86 + v85, 0, v87, v18, v19, 0, v97, 30) & 0x80000000) == 0)
      {
        v74 = *(*(a1 + 104) + 8 * *(v84 + 2 * v17) + 4);
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] regex %d matched at pos %u (iSb=%d) %s %d : (of %d)", v21, v22, v23, *(v84 + 2 * v17));
        v27 = *(*(a1 + 104) + 8 * *(v84 + 2 * v17) + 4);
        if (v27 > 0xFD)
        {
          v31 = 0;
          if (v27 == 255)
          {
            v32 = v97[1];
          }

          else
          {
            v32 = v97[0];
          }

          v29 = v32 + v20;
          LODWORD(v89) = v29;
          v30 = 1;
        }

        else
        {
          v28 = v97[2 * v27];
          LOWORD(v29) = v28 + v20;
          LODWORD(v89) = v28 + v20;
          v30 = (2 * v27) | 1u;
          v31 = v97[v30] - v28;
        }

        HIDWORD(v89) = v31;
        v19 = v97[v30];
        if (!v87)
        {
          goto LABEL_63;
        }

        v33 = v29 - v20;
        v34 = (v29 - v20);
        if (v34 >= v18)
        {
          goto LABEL_63;
        }

        v81 = v92;
        v95 = v29 - v20;
        if (!*(a1 + 40))
        {
          goto LABEL_29;
        }

        chars_BackScanNChars(v87, &v95, 1);
        chars_BackScanBlanksX(v87, &v95, v18);
        if (!v95)
        {
          goto LABEL_29;
        }

        v96 = 0;
        if (!utf8_Utf8CharTo16bit(&v87[v95], &v96) || v96 != 65294 && v96 != 46)
        {
          goto LABEL_29;
        }

        v94 = v95;
        v35 = *(a1 + 64);
        v36 = *(a1 + 72);
        if (*(a1 + 160) == 1)
        {
          chars_BackScanNonBlanks(v87, &v94, v35, v36);
        }

        else
        {
          chars_BackScan2NonBlanksNonChinese(v87, &v94, v35, v36);
        }

        v37 = v94;
        v38 = v95 - v94;
        if (v38 > 0x3E)
        {
          goto LABEL_29;
        }

        v56 = v38 + 1;
        v57 = v95;
        __memcpy_chk();
        v99[v56] = 0;
        LogLevel = log_GetLogLevel(*(*(a1 + 16) + 32));
        if (sparser_IsNonFinalAbbr(a1, v99, v37, (v57 + 1), LogLevel, v59, v60, v61))
        {
          v20 = a5;
          a6 = v75;
          v9 = v76;
          goto LABEL_63;
        }

        v78 = v56;
        v93 = v95 - v94 + 1;
        chars_BackScanNChars(v99, &v93, 1);
        v98[0] = 6105691;
        a6 = v75;
        v9 = v76;
        if (v93)
        {
          do
          {
            chars_BackScanNChars(v99, &v93, 1);
            v62 = v93;
            v63 = v78 - v93;
            __memcpy_chk();
            *(v98 + v63 + 3) = 0;
            v64 = v94;
            v65 = v95;
            v66 = log_GetLogLevel(*(*(a1 + 16) + 32));
            IsNonFinalAbbr = sparser_IsNonFinalAbbr(a1, v98, v64 + v62, (v65 + 1), v66, v67, v68, v69);
          }

          while (v93 && !IsNonFinalAbbr);
          v9 = v76;
          a6 = v75;
          v20 = a5;
          if (IsNonFinalAbbr)
          {
            goto LABEL_63;
          }
        }

        else
        {
LABEL_29:
          v20 = a5;
        }

        v39 = *(v81 + 8);
        v40 = *(v81 + 16);
        if (!*(v81 + 16))
        {
          LOWORD(v48) = 0;
          goto LABEL_47;
        }

        v41 = 0;
        v42 = 0;
        v43 = (v39 + 32);
        v44 = *(v39 + 32);
        v45 = (v39 + 40);
        v46 = *(v81 + 16);
        do
        {
          if (*(v45 - 2) - v44 > v34)
          {
            break;
          }

          v47 = *(v45 - 5);
          if (v47 == 32)
          {
            v41 = *v45 == 1;
          }

          else if (v47 == 7)
          {
            v42 = !v42;
            if (*v45 != 43)
            {
              v42 = 0;
            }
          }

          v45 += 16;
          --v46;
        }

        while (v46);
        if (!v42 && !v41)
        {
          v48 = 0;
          while (1)
          {
            v49 = *v43;
            v43 += 16;
            if (v49 - v44 >= v34)
            {
              break;
            }

            if (v40 == ++v48)
            {
              goto LABEL_59;
            }
          }

LABEL_47:
          if (v48 <= v40)
          {
            v50 = *(v81 + 16);
          }

          else
          {
            v50 = v48;
          }

          if (v48 < v40)
          {
            v51 = *(v39 + 32);
            v52 = (v39 + (v48 << 6) + 20);
            v53 = v50 - v48;
            while (v52[3] - v51 < (v33 + v31))
            {
              if (*v52 <= 0x28u)
              {
                v54 = ((1 << *v52) & 0x10004000080) == 0;
                *v52;
              }

              else
              {
                v54 = 1;
              }

              if (!v54)
              {
                goto LABEL_63;
              }

              v52 += 16;
              if (!--v53)
              {
                break;
              }
            }
          }

LABEL_59:
          v55 = sparser_bed_InjectMarker(v9, v88, 0, *(a1 + 188));
          v79 = 0;
          if ((v55 & 0x80000000) != 0)
          {
            v79 = v55;
            goto LABEL_72;
          }

          goto LABEL_64;
        }

LABEL_63:
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] EOS insertion blocked (may be in Phon/Multiword, or non-final abbreviation preceeds the boundary)", v24, v25, v26, v73);
LABEL_64:
        v15 = v82;
        if (!a3)
        {
          break;
        }
      }

      ++v17;
    }

    while (v17 != v15);
  }

LABEL_72:
  v71 = *MEMORY[0x1E69E9840];
  return v79;
}

BOOL sparser_marker_HasStrictlySmallerPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) > *(a2 + 32);
    }
  }

  return result;
}

uint64_t sparser_IsNonFinalAbbr(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  strcpy(v19, "is not");
  v18 = 0;
  if (a5 >= 5)
  {
    log_OutText(*(a1[2] + 32), &modPP_1, 5, 0, "[SPARSER] checking if %s is a Non Final Abbr at pos %lu,%lu", a6, a7, a8, a2);
  }

  v16 = 0;
  v17 = -1;
  if (((*(a1[5] + 96))(a1[6], a1[7], "neosnbs", a2, &v18, &v17, &v16) & 0x80000000) != 0)
  {
    return 0;
  }

  if (v17 == 1)
  {
    strcpy(v19, "is");
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (a5 >= 5)
  {
    log_OutText(*(a1[2] + 32), &modPP_1, 5, 0, "[SPARSER] %s %s a Non Final Abbr at pos %lu,%lu", v11, v12, v13, a2);
  }

  return v14;
}

uint64_t sparser_getMaxCharsPerText(uint64_t a1, __int16 *a2)
{
  result = *(a1 + 40);
  if (!result || (v6 = 0, result = paramc_ParamGetInt(result, "maxinputlength", &v6), (result & 0x80000000) != 0))
  {
    v5 = 750;
  }

  else
  {
    if (v6 >= 0x2710)
    {
      v4 = 10000;
    }

    else
    {
      v4 = v6;
    }

    if (v6 >= 1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t chars_ScanBlankHead(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD *a4, _DWORD *a5, unsigned int a6)
{
  result = 2369789959;
  if (a2 && a1 && a5 && (a3 || !a4))
  {
    *a5 = 0;
    if (a6 <= 1)
    {
      v13 = *(a1 + 8);
      LODWORD(v14) = *(a1 + 16);
      if (*(a1 + 16))
      {
        for (i = *(a1 + 8); ; i = v13)
        {
          if (!utf8_BelongsToSet(2u, i, 0, v14))
          {
            LOWORD(v16) = v13;
            v13 = *(a1 + 8);
            goto LABEL_15;
          }

          v13 += utf8_determineUTF8CharLength(*v13);
          v14 = *(a1 + 16);
          if (&v13[-*(a1 + 8)] >= v14)
          {
            break;
          }
        }

        LOWORD(v16) = v13;
        v13 = *(a1 + 8);
      }

      else
      {
        v16 = *(a1 + 8);
      }

LABEL_15:
      v17 = v16 - v13;
      *a2 = v17;
      if (*(a1 + 16) == v17)
      {
        *a5 = 1;
      }
    }

    result = 0;
    if (a4 && (a6 & 0xFFFFFFFD) == 0)
    {
      *a4 = 0;
      if (*a2 && *(a3 + 16))
      {
        v18 = 0;
        v19 = *(a3 + 8);
        v22 = *(v19 + 32);
        v20 = (v19 + 32);
        v21 = v22;
        while (1)
        {
          v23 = *v20;
          v20 += 16;
          if (v23 >= v21 + *(a1 + 2) * *a2)
          {
            break;
          }

          result = 0;
          *a4 = ++v18;
          if (v18 >= *(a3 + 16))
          {
            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t chars_ScanBlanks(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v5 = *a2;
      if (v5 < a3)
      {
        v6 = result;
        do
        {
          result = utf8_BelongsToSet(2u, v6, v5, a3);
          if (!result)
          {
            break;
          }

          result = utf8_determineUTF8CharLength(*(v6 + *a2));
          LOWORD(v5) = *a2 + result;
          *a2 = v5;
        }

        while (a3 > v5);
      }
    }
  }

  return result;
}

uint64_t chars_ScanNonBlanks(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v5 = *a2;
      if (v5 < a3)
      {
        v6 = result;
        do
        {
          result = utf8_BelongsToSet(2u, v6, v5, a3);
          if (result)
          {
            break;
          }

          result = utf8_determineUTF8CharLength(*(v6 + *a2));
          LOWORD(v5) = *a2 + result;
          *a2 = v5;
        }

        while (a3 > v5);
      }
    }
  }

  return result;
}

uint64_t chars_ScanForLineEnd(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v3 = *a2;
      if (v3 < a3)
      {
        v4 = (result + v3);
        v5 = a3 - v3;
        v6 = v3 + 1;
        do
        {
          v7 = *v4++;
          if (v7 == 10)
          {
            break;
          }

          *a2 = v6++;
          --v5;
        }

        while (v5);
      }
    }
  }

  return result;
}

uint64_t chars_BackScanBlanks(uint64_t result, _WORD *a2)
{
  if (result && a2)
  {
    v3 = *a2;
    v6 = v3;
    if (v3)
    {
      v4 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2u, v4, v3, *a2);
        v5 = v6;
        if (!result)
        {
          break;
        }

        if (v6)
        {
          --v6;
        }

        result = utf8_GetPreviousValidUtf8Offset(v4, &v6);
        v3 = v6;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v5 = 0;
    }

    *a2 = v5;
  }

  return result;
}

uint64_t chars_BackScanBlanksX(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result && a2)
  {
    v5 = *a2;
    v8 = v5;
    if (v5)
    {
      v6 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2u, v6, v5, a3);
        v7 = v8;
        if (!result)
        {
          break;
        }

        --v8;
        result = utf8_GetPreviousValidUtf8Offset(v6, &v8);
        v5 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v7 = 0;
    }

    *a2 = v7;
  }

  return result;
}

uint64_t chars_BackScanToBlank(uint64_t result, _WORD *a2)
{
  if (result && a2)
  {
    v3 = *a2;
    v6 = v3;
    if (v3)
    {
      v4 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2u, v4, v3, *a2);
        v5 = v6;
        if (result)
        {
          break;
        }

        if (v6)
        {
          --v6;
        }

        result = utf8_GetPreviousValidUtf8Offset(v4, &v6);
        v3 = v6;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v5 = 0;
    }

    *a2 = v5;
  }

  return result;
}

uint64_t chars_ScanNChars(uint64_t result, uint64_t a2, _WORD *a3, int a4)
{
  if (result && a3)
  {
    v5 = a4;
    v7 = *a3;
    if (a4)
    {
      v8 = result;
      do
      {
        result = utf8_GetNextUtf8OffsetLimit(v8, v7, a2);
        v7 = result;
        --v5;
      }

      while (v5);
    }

    *a3 = v7;
  }

  return result;
}

uint64_t chars_BackScanNChars(uint64_t result, _WORD *a2, int a3)
{
  if (result && a2)
  {
    v4 = a3;
    v5 = *a2;
    if (a3 && *a2)
    {
      v6 = result;
      do
      {
        v7 = v5 - 1;
        result = utf8_GetPreviousValidUtf8Offset(v6, &v7);
        --v4;
        v5 = v7;
      }

      while (v4 && v7);
    }

    *a2 = v5;
  }

  return result;
}

uint64_t chars_BackScanNonBlanks(uint64_t result, unsigned int *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (result && a2)
  {
    v6 = *a2;
    v24 = v6;
    if (!v6)
    {
      goto LABEL_24;
    }

    v8 = result;
    v9 = a4;
    while (1)
    {
      result = utf8_BelongsToSet(2u, v8, v6, *a2);
      v6 = v24;
      if (result)
      {
LABEL_20:
        v10 = *a2;
        goto LABEL_21;
      }

      if (a4)
      {
        break;
      }

LABEL_19:
      --v24;
      result = utf8_GetPreviousValidUtf8Offset(v8, &v24);
      v6 = v24;
      if (!v24)
      {
        goto LABEL_20;
      }
    }

    v10 = *a2;
    v11 = a3;
    v12 = v9;
    while (1)
    {
      v14 = *v11++;
      v13 = v14;
      v15 = v24 == v10 && v13 == 46;
      v16 = v15;
      if (v13 == *(v8 + v24) && !v16)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    v18 = utf8_BelongsToSet(2u, v8, v6, v10);
    v6 = v24;
    result = *(v8 + v24);
    if (!v18)
    {
      if (!a4)
      {
        goto LABEL_24;
      }

      while (1)
      {
        v20 = *a3++;
        v19 = v20;
        v21 = v24 == *a2 && v19 == 46;
        v22 = v21;
        if (v19 == result && !v22)
        {
          break;
        }

        if (!--v9)
        {
          goto LABEL_24;
        }
      }
    }

    result = utf8_determineUTF8CharLength(result);
    v6 = v24 + result;
LABEL_24:
    *a2 = v6;
  }

  return result;
}

uint64_t chars_BackScan2NonBlanksNonChinese(uint64_t result, unsigned int *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (result && a2)
  {
    v7 = result;
    v8 = *a2;
    v25 = v8;
    if (v8)
    {
      v9 = v8;
      while (!a4)
      {
LABEL_18:
        result = utf8_BelongsToSet(2u, v7, v9, *a2);
        v9 = v25;
        if (!result)
        {
          result = utf8_BelongsToSet(0x20u, v7, v25, *a2);
          v9 = v25;
          if (!result)
          {
            --v25;
            result = utf8_GetPreviousValidUtf8Offset(v7, &v25);
            v9 = v25;
            if (v25)
            {
              continue;
            }
          }
        }

        goto LABEL_23;
      }

      v10 = a3;
      v11 = a4;
      while (1)
      {
        v13 = *v10++;
        v12 = v13;
        v14 = v9 == v8 && v12 == 46;
        v15 = v14;
        if (v12 == *(v7 + v9) && !v15)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_23:
    if (v9 >= *a2)
    {
      goto LABEL_40;
    }

    v17 = utf8_BelongsToSet(2u, v7, v9, *a2);
    v9 = v25;
    if (!v17)
    {
      v18 = *a2;
      if (a4)
      {
        v19 = a4;
        while (1)
        {
          v21 = *a3++;
          v20 = v21;
          v22 = v25 == v18 && v20 == 46;
          v23 = v22;
          if (v20 == *(v7 + v25) && !v23)
          {
            break;
          }

          if (!--v19)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
LABEL_38:
        result = utf8_BelongsToSet(0x20u, v7, v25, v18);
        v9 = v25;
        if (!result)
        {
LABEL_40:
          *a2 = v9;
          return result;
        }
      }
    }

    result = utf8_determineUTF8CharLength(*(v7 + v9));
    v9 = v25 + result;
    goto LABEL_40;
  }

  return result;
}

char *chars_BackScanPhraseBoundary(char *result, uint64_t a2, _WORD *a3)
{
  if (a2 && a3)
  {
    v5 = result;
    v6 = *a3;
    v15 = v6;
    if (!v6)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v7 = utf8_BelongsToSet(2u, a2, v6, *a3);
      v8 = v15;
      if (!v7)
      {
        break;
      }

      if (v15)
      {
        --v15;
      }

      utf8_GetPreviousValidUtf8Offset(a2, &v15);
      v6 = v15;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    if (v15)
    {
      while (1)
      {
        v9 = utf8_BelongsToSet(2u, a2, v8, *a3);
        LODWORD(v10) = v15;
        if (v9)
        {
          break;
        }

        v11 = utf8_strchr(v5, (a2 + v15));
        LODWORD(v10) = v15;
        if (v11)
        {
          break;
        }

        if (v15)
        {
          --v15;
        }

        utf8_GetPreviousValidUtf8Offset(a2, &v15);
        v8 = v15;
        if (!v15)
        {
          LODWORD(v10) = 0;
          break;
        }
      }

      v10 = v10;
    }

    else
    {
LABEL_17:
      v10 = 0;
    }

    result = utf8_strchr(v5, (a2 + v10));
    v12 = v15;
    if (!result)
    {
      if (v15)
      {
        v13 = v15;
        do
        {
          v14 = utf8_strchr(v5, (a2 + v13));
          LODWORD(v13) = v15;
          if (v14)
          {
            break;
          }

          if (v15)
          {
            --v15;
          }

          utf8_GetPreviousValidUtf8Offset(a2, &v15);
          v13 = v15;
        }

        while (v15);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      result = utf8_strchr(v5, (a2 + v13));
      if (result)
      {
        v12 = v15;
      }
    }

    *a3 = v12;
  }

  return result;
}

char *eos_BackScanPhraseBoundary(char *result, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  if (a2 && a5 && *a5 > a4)
  {
    v9 = *a5 - a4;
    v7 = a2 + a3;
    result = chars_BackScanPhraseBoundary(result, v7, &v9);
    if (v9)
    {
      v8 = v9 + a4;
      result = utf8_determineUTF8CharLength(*(v7 + v9));
      *a5 = v8 + result;
    }
  }

  return result;
}

uint64_t tolhp_ObjOpen(_WORD *a1, uint64_t a2, uint64_t **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = 2370838535;
  v15 = 0;
  v16 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v16) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(*(v16 + 8), 40);
    if (!v7)
    {
      v3 = 2370838538;
      goto LABEL_17;
    }

    v8 = v7;
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *v7 = a1;
    *(v7 + 8) = a2;
    if (v16)
    {
      v9 = paramc_ParamGet(*(v16 + 40), "langcode", &v15, 0);
      if ((v9 & 0x80000000) != 0)
      {
        v3 = v9;
      }

      else
      {
        strcpy(v19, "nts_");
        __strcat_chk();
        v10 = dct_ObjOpen(v19, a1, a2, v8 + 2);
        if ((v10 & 0x80000000) == 0 || (v3 = v10, (v10 & 0x1FFF) == 1))
        {
          strcpy(v18, "sxm_");
          __strcat_chk();
          v11 = dct_ObjOpen(v18, a1, a2, v8 + 3);
          if ((v11 & 0x80000000) == 0 || (v3 = v11, (v11 & 0x1FFF) == 1))
          {
            strcpy(v17, "ipa_");
            __strcat_chk();
            v12 = dct_ObjOpen(v17, a1, a2, v8 + 4);
            v3 = v12;
            if ((v12 & 0x80000000) == 0)
            {
LABEL_13:
              *a3 = v8;
              goto LABEL_17;
            }

            if ((v12 & 0x1FFF) == 1)
            {
              v3 = 0;
              goto LABEL_13;
            }
          }
        }
      }
    }

    tolhp_ObjClose(v8);
  }

LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t tolhp_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    dct_ObjClose(*(a1 + 32));
    dct_ObjClose(*(a1 + 24));
    dct_ObjClose(*(a1 + 16));
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t tolhp_ResetDcts(uint64_t a1)
{
  result = tolhp_ResetDct(a1, "nts_", (a1 + 16));
  if ((result & 0x80000000) == 0)
  {

    return tolhp_ResetDct(a1, "sxm_", (a1 + 24));
  }

  return result;
}

uint64_t tolhp_ResetDct(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = 2370838528;
  v9 = 0;
  v10 = 0;
  if (a1)
  {
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v9) & 0x80000000) != 0)
    {
      v3 = 2370838535;
    }

    else if (v9 && (paramc_ParamGet(*(v9 + 40), "langcode", &v10, 0) & 0x80000000) == 0)
    {
      __strcpy_chk();
      __strcat_chk();
      if (*a3)
      {
        v6 = dct_ObjReopen(*a3, v11);
      }

      else
      {
        v6 = dct_ObjOpen(v11, *a1, *(a1 + 8), a3);
      }

      if ((v6 & 0x80001FFF) == 0x80000001)
      {
        v3 = 0;
      }

      else
      {
        v3 = v6;
      }
    }
  }

  else
  {
    v3 = 2370838535;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t tolhp_RewritePhonTextInLhp(uint64_t *a1, uint64_t a2)
{
  v77[1] = *MEMORY[0x1E69E9840];
  v60 = 0;
  v61 = 0;
  v2 = 2370838535;
  v59 = 0;
  if (a1 && a2)
  {
    v5 = bed_ObjOpen(*a1, a1[1], a2, 1020, &v61, 213);
    if ((v5 & 0x80000000) != 0 || (v5 = bed_ObjOpen(*a1, a1[1], a2, 1021, &v60, 213), (v5 & 0x80000000) != 0) || (v5 = datac_RequestBlock(a2, 1012, 1u, &v59), (v5 & 0x80000000) != 0))
    {
      v2 = v5;
    }

    else
    {
      if (v59)
      {
        v6 = *(v59 + 8);
      }

      else
      {
        v6 = 0;
      }

      v8 = v60;
      v7 = v61;
      v72 = 0;
      v71 = 0x2400000007;
      v63 = 0;
      if (!v61 || !v60)
      {
        v11 = 2370838535;
        goto LABEL_110;
      }

      v9 = bed_Goto(v60, 0);
      if ((v9 & 0x80000000) != 0)
      {
LABEL_109:
        v11 = v9;
        goto LABEL_110;
      }

      v10 = bed_GoForward(v8, bed_marker_IsOfType, &v71);
      if ((v10 & 0x1FFF) == 0x14)
      {
LABEL_14:
        v11 = 0;
        goto LABEL_110;
      }

      v11 = v10;
      if ((v10 & 0x80000000) == 0)
      {
        v11 = bed_GetpElem(v8, 0xFFFFu, &v63);
        if ((v11 & 0x80000000) == 0)
        {
          v12 = v63;
          if (v63)
          {
            while (1)
            {
              v62 = 1;
              if (*(v12 + 20) == 7)
              {
                v74 = 0;
                v73 = 0x3E700000007;
                v76 = 0;
                v77[0] = 0;
                v68 = 0;
                v67 = 0;
                v66 = 1;
                v75 = 0;
                *__dst = 0;
                v64 = 0;
                v9 = bed_GetpElem(v8, 0, v77);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetpElem(v8, 0xFFFFu, &v76);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetiElem(v8, &v68);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetcElem(v8, &v67);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                if (v76 && *(v76 + 20) == 7)
                {
                  v13 = *(v76 + 40);
                  if (v13 == 43)
                  {
                    if (*(v76 + 48))
                    {
                      v14 = *(v76 + 56);
                      if ((v14 - 2) < 3)
                      {
                        v13 = v14 + 68;
LABEL_44:
                        v66 = 1;
                        bed_GoForward(v8, bed_marker_IsAt, &v66);
                        v20 = bed_GoForward(v8, bed_marker_IsOfType, &v73);
                        if ((v20 & 0x1FFF) == 0x14)
                        {
                          v75 = 0;
                        }

                        else
                        {
                          v11 = v20;
                          if ((v20 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v9 = bed_GetpElem(v8, 0xFFFFu, &v75);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        v9 = bed_GetpElem(v7, 0, __dst);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v9 = bed_GetcElem(v7, &v64);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v21 = *(v76 + 32);
                        v22 = v21 - *(v77[0] + 32);
                        if (v75)
                        {
                          v23 = *(v75 + 32) - v21;
                        }

                        else
                        {
                          LOWORD(v23) = v64 - v22;
                        }

                        v28 = *__dst;
                        __src = 0;
                        v69 = 0;
                        if (!*__dst || (InitRsrcFunction(*a1, a1[1], &__src) & 0x80000000) != 0)
                        {
                          goto LABEL_117;
                        }

                        v56 = v22;
                        v29 = v22;
                        v30 = v28 + v22;
                        v31 = v29;
                        v57 = off_1F42D5930[v13 - 70];
                        v32 = 0;
                        v33 = v23;
                        if (v23)
                        {
                          while (utf8_BelongsToSet(0, v30, v32, v23))
                          {
                            if (v23 == ++v32)
                            {
                              LOWORD(v32) = v23;
                              break;
                            }
                          }
                        }

                        v34 = (v30 + v32);
                        v55 = v23;
                        v35 = v23 - v32;
                        v36 = (v23 - v32);
                        if (v36)
                        {
                          v53 = v35;
                          v54 = v31;
                          v37 = 0;
                          while (utf8_BelongsToSet(0, v34, v36 - 1 + v37, v36))
                          {
                            if (-v36 == --v37)
                            {
                              v35 = v53;
                              LOWORD(v38) = v53;
                              v31 = v54;
                              goto LABEL_80;
                            }
                          }

                          v38 = -v37;
                          v31 = v54;
                          v35 = v53;
                        }

                        else
                        {
                          LOWORD(v38) = 0;
                        }

LABEL_80:
                        v39 = (v35 - v38);
                        v40 = heap_Alloc(*(__src + 1), v39 + 1);
                        if (!v40)
                        {
                          v2 = 2370838538;
LABEL_117:
                          v11 = v2;
                          break;
                        }

                        v41 = v40;
                        memcpy(v40, v34, v39);
                        *(v41 + v39) = 0;
                        v11 = (v57)(a1, v41, 0, &v69);
                        if ((v11 & 0x80000000) != 0 || !v69)
                        {
                          goto LABEL_86;
                        }

                        v42 = heap_Alloc(*(__src + 1), ++v69);
                        if (!v42)
                        {
                          LOWORD(v58) = 0;
                          v11 = 2370838538;
                          goto LABEL_87;
                        }

                        v11 = (v57)(a1, v41, v42, &v69);
                        if ((v11 & 0x80000000) != 0)
                        {
LABEL_86:
                          v42 = 0;
                          LOWORD(v58) = 0;
                        }

                        else
                        {
                          v58 = Utf8_Utf8NbrOfSymbols(v42) - 1;
                        }

LABEL_87:
                        heap_Free(*(__src + 1), v41);
                        if ((v11 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v9 = bed_Remove(v7, v56, v55);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        if (v58)
                        {
                          v9 = bed_Goto(v7, v31);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }

                          v9 = bed_Insert(v7, v42, v58);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        if (v42)
                        {
                          v9 = tolhp_lhp_ObjClose(a1, v42);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        v43 = v76;
                        *(v77[0] + 36) += v58 - v33;
                        *(v43 + 40) = 43;
                        v9 = bed_Goto(v8, v68);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v44 = v67;
                        v45 = v68 + 1;
                        if (v67 > (v68 + 1))
                        {
                          v46 = v77[0];
                          v47 = (v76 + 100);
                          do
                          {
                            v48 = *(v47 - 1);
                            v49 = *(v46 + 32);
                            if (v49 + v31 <= v48)
                            {
                              if (v49 + (v31 + v33) <= v48)
                              {
                                *(v47 - 1) = v48 + v58 - v33;
                              }

                              else
                              {
                                *(v47 - 1) = v49 + v31;
                                if (*(v47 - 4) == 1)
                                {
                                  *v47 = v58;
                                }
                              }
                            }

                            ++v45;
                            v47 += 16;
                          }

                          while (v44 > v45);
                        }
                      }
                    }
                  }

                  else if ((v13 - 73) >= 0xFFFFFFFD)
                  {
                    goto LABEL_44;
                  }
                }
              }

              else if (v6)
              {
                __dst[0] = 0;
                v15 = v6 + *(v12 + 40);
                MarkerArgStr = marker_getMarkerArgStr(1u);
                if (!strcmp(v15, MarkerArgStr))
                {
                  v73 = 0;
                  __src = 0;
                  if ((InitRsrcFunction(*a1, a1[1], &v73) & 0x80000000) == 0 && v73 && (paramc_ParamGet(*(v73 + 40), "langcode", &__src, 0) & 0x80000000) == 0)
                  {
                    strncpy(__dst, __src, 4uLL);
LABEL_41:
                    strcpy(v77, "nts_");
                    __strcat_chk();
                    v18 = a1[2];
                    v19 = v18 ? dct_ObjReopen(v18, v77) : dct_ObjOpen(v77, *a1, a1[1], a1 + 2);
                    v11 = v19;
                    if ((v19 & 0x80000000) != 0 && (v19 & 0x1FFF) != 1)
                    {
                      break;
                    }

                    strcpy(&v76, "sxm_");
                    __strcat_chk();
                    v24 = a1[3];
                    v25 = v24 ? dct_ObjReopen(v24, &v76) : dct_ObjOpen(&v76, *a1, a1[1], a1 + 3);
                    v11 = v25;
                    if ((v25 & 0x80000000) != 0 && (v25 & 0x1FFF) != 1)
                    {
                      break;
                    }

                    strcpy(&v75, "ipa_");
                    __strcat_chk();
                    v26 = a1[4];
                    v27 = v26 ? dct_ObjReopen(v26, &v75) : dct_ObjOpen(&v75, *a1, a1[1], a1 + 4);
                    v11 = v27;
                    if ((v27 & 0x80000000) != 0 && (v27 & 0x1FFF) != 1)
                    {
                      break;
                    }
                  }
                }

                else
                {
                  v17 = 0;
                  while (*(v15 + v17))
                  {
                    __dst[v17] = *(v15 + v17);
                    if (++v17 == 3)
                    {
                      if (*(v15 + 3))
                      {
                        break;
                      }

                      __dst[3] = 0;
                      goto LABEL_41;
                    }
                  }
                }
              }

              v62 = 1;
              bed_GoForward(v8, bed_marker_IsAt, &v62);
              v50 = bed_GoForward(v8, bed_marker_IsOfType, &v71);
              if ((v50 & 0x1FFF) == 0x14)
              {
                goto LABEL_14;
              }

              v11 = v50;
              if ((v50 & 0x80000000) == 0)
              {
                v11 = bed_GetpElem(v8, 0xFFFFu, &v63);
                if ((v11 & 0x80000000) == 0)
                {
                  v12 = v63;
                  if (v63)
                  {
                    continue;
                  }
                }
              }

              break;
            }
          }
        }
      }

LABEL_110:
      v2 = v11;
    }

    if (v60)
    {
      bed_ObjClose(v60);
    }

    if (v61)
    {
      bed_ObjClose(v61);
    }
  }

  v51 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t tolhp_lhp_ObjClose(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  heap_Free(*(v4 + 8), a2);
  return 0;
}

uint64_t tolhp_RewriteNts(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 16), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_RewriteSxms(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 24), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_RewriteIpa(uint64_t a1, char *a2, char *a3, _WORD *a4)
{
  if (a1)
  {
    return tolhp_Rewrite(*(a1 + 32), a2, a3, a4);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t tolhp_Rewrite(void *a1, char *__s, char *a3, _WORD *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  else
  {
    *a4 = 0;
  }

  v8 = strlen(__s);
  result = 0;
  if (a1)
  {
    v10 = v8;
    if (v8)
    {
      if (__s)
      {
        for (i = __s; ; ++i)
        {
          if (*i == 32)
          {
            *i = 17;
          }

          else if (!*i)
          {
            break;
          }
        }
      }

      v12 = 0;
      while (1)
      {
        __sa = 0;
        LongestMatch = dct_FindLongestMatch(a1, &__s[v12], &__sa);
        if (LongestMatch < 1)
        {
          result = 0;
          *a4 = 0;
          return result;
        }

        v14 = LongestMatch;
        v15 = strlen(__sa);
        if (a3)
        {
          if (v15 + strlen(a3) + 1 > *a4)
          {
            return 2370838537;
          }

          strcat(a3, __sa);
        }

        else
        {
          *a4 += v15;
        }

        v12 += v14;
        if (v12 >= v10)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t dct_ObjOpen(const char *a1, _WORD *a2, int a3, uint64_t *a4)
{
  v19 = 0;
  v4 = 2370838535;
  if (!a4)
  {
    return 2370838535;
  }

  v18 = 0;
  if ((InitRsrcFunction(a2, a3, &v19) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  *a4 = 0;
  v7 = heap_Alloc(*(v19 + 8), 40);
  v8 = 2370838538;
  if (v7)
  {
    v9 = v7;
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    v10 = v19;
    *v7 = v19;
    v11 = *(v10 + 8);
    v12 = strlen(a1);
    v13 = heap_Alloc(v11, (v12 + 1));
    *(v9 + 8) = v13;
    if (!v13)
    {
      goto LABEL_13;
    }

    strcpy(v13, a1);
    v20 = 0;
    if (*v9)
    {
      Object = objc_GetObject(*(*v9 + 48), "FE_DCTLKP", &v20);
      if ((Object & 0x80000000) == 0)
      {
        v15 = v20;
        v16 = *(v20 + 8);
        *(v9 + 16) = v16;
        *(v9 + 24) = *(v15 + 16);
        v8 = (*(v16 + 72))(*(v9 + 24), *(v9 + 32), a1, &v18);
        if ((v8 & 0x80000000) == 0)
        {
          if (v18)
          {
            *a4 = v9;
            return v8;
          }

          v8 = 2370838529;
        }

LABEL_13:
        dct_ObjClose(v9);
        return v8;
      }

      v4 = Object;
    }

    v8 = v4;
    goto LABEL_13;
  }

  return v8;
}

uint64_t dct_ObjClose(uint64_t a1)
{
  result = 2370838535;
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      if (*(a1 + 16))
      {
        objc_ReleaseObject(*(v3 + 48), "FE_DCTLKP");
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        v3 = *a1;
      }

      v4 = *(a1 + 8);
      if (v4)
      {
        heap_Free(*(v3 + 8), v4);
        v3 = *a1;
      }

      heap_Free(*(v3 + 8), a1);
      return 0;
    }
  }

  return result;
}

uint64_t dct_ObjReopen(void *a1, const char *a2)
{
  v2 = 2370838535;
  if (a1 && a2)
  {
    v5 = a1[1];
    v6 = strlen(v5);
    v7 = strlen(a2);
    if (v6 < v7)
    {
      v8 = heap_Realloc(*(*a1 + 8), v5, (v7 + 1));
      if (!v8)
      {
        return 2370838538;
      }

      v5 = v8;
      a1[1] = v8;
    }

    strcpy(v5, a2);
    return 0;
  }

  return v2;
}

uint64_t dct_FindLongestMatch(void *a1, char *__s, void *a3)
{
  result = 0;
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  if (a1 && __s && a3)
  {
    *a3 = 0;
    v6 = strlen(__s);
    if (v6)
    {
      if (v6 <= 0xAu)
      {
        v7 = v6;
      }

      else
      {
        v7 = 10;
      }

      v8 = v7;
      v9 = v7;
      __memmove_chk();
      if (v8)
      {
        v10 = v9;
        while (1)
        {
          v17[v10] = 0;
          v14 = 1;
          if (((*(a1[2] + 96))(a1[3], a1[4], a1[1], v17, &v15, &v14, &v16) & 0x80000000) != 0)
          {
            break;
          }

          v11 = v10 - 1;
          if (v10 != 1)
          {
            --v10;
            if (!v14)
            {
              continue;
            }
          }

          if (!v14)
          {
            break;
          }

LABEL_20:
          *a3 = *v15;
          result = (v11 + 1);
          goto LABEL_22;
        }
      }

      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v13) & 0x80000000) == 0)
      {
        __memmove_chk();
        if (v9)
        {
          while (1)
          {
            v17[v9] = 0;
            v14 = 0;
            if (((*(a1[2] + 96))(a1[3], a1[4], a1[1], v17, &v15, &v14, &v16) & 0x80000000) != 0)
            {
              break;
            }

            v11 = v9 - 1;
            if (v9 >= 2)
            {
              --v9;
              if (!v14)
              {
                continue;
              }
            }

            if (!v14)
            {
              break;
            }

            goto LABEL_20;
          }
        }
      }
    }

    result = 0;
  }

LABEL_22:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t textpar_AllTextProcessed(uint64_t a1)
{
  v3 = 0;
  if (!a1)
  {
    return 1;
  }

  v1 = 1;
  if ((datac_RequestBlock(*(a1 + 16), 1010, 1u, &v3) & 0x80000000) == 0)
  {
    return *(v3 + 20);
  }

  return v1;
}

uint64_t textpar_ClearOutputDataContainers(uint64_t *a1)
{
  v7 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  v2 = datac_RequestBlock(a1[2], 1011, 1u, &v7);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v7;
    if (*(v7 + 16) >= 2u)
    {
      v4 = (*(v7 + 8) + 112);
      v5 = 1;
      do
      {
        if (*v4)
        {
          heap_Free(*(*a1 + 8), *v4);
          *v4 = 0;
          v3 = v7;
        }

        ++v5;
        v4 += 8;
      }

      while (v5 < *(v3 + 16));
    }

    *(v3 + 16) = 0;
  }

  return v2;
}

uint64_t textpar_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v5 = 2368741376;
  if (!a1)
  {
    return 2368741383;
  }

  v32 = 0;
  v11 = (*(*(a1 + 24) + 136))(a2, a3, &v32);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, "start textpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, "start textpar_WriteTextAndMarkers()");
  v11 = datac_RequestBlock(*(a1 + 16), 1010, 1u, &v31);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v12 = *(v31 + 16);
  if (*(v31 + 16))
  {
    v11 = (*(*(a1 + 24) + 104))(a2, a3, *(v31 + 8), *(v31 + 2) * v12);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    *(v31 + 16) = 0;
  }

  if ((datac_RequestBlock(*(a1 + 16), 1012, 1u, &v31) & 0x80000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v31 + 8);
  }

  v11 = datac_RequestBlock(*(a1 + 16), 1011, 1u, &v30);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v14 = *(v30 + 16);
  if (*(v30 + 16))
  {
    v15 = *(v30 + 8);
    if (*(v15 + 20) == 0x4000)
    {
      if (v12)
      {
        v16 = 0;
        v32 = *(v15 + 32) - v32;
      }

      else
      {
        v17 = marker_CheckForEmptyMarkers(v13, *(a1 + 76), v15, v14, 0, 0, 0);
        v16 = v17 == 1;
        v14 = *(v30 + 16);
        v32 = *(v15 + 32) - v32;
        if (!v14)
        {
          if (v17 == 1)
          {
            goto LABEL_31;
          }

          LODWORD(v25) = 0;
LABEL_30:
          marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, "at end()", 1, v15, v25);
          v11 = (*(*(a1 + 24) + 104))(a4, a5, v15, (v25 << 6));
          if ((v11 & 0x80000000) == 0)
          {
LABEL_31:
            v26 = textpar_ClearOutputDataContainers(a1);
            return v26 & (v26 >> 31);
          }

          return v11;
        }
      }

      v29 = v16;
      v18 = v14;
      v19 = (v15 + 32);
      do
      {
        *v19 -= v32;
        v19 += 16;
        --v18;
      }

      while (v18);
      v20 = 0;
      v21 = (v15 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v21 - 5)))
        {
          v22 = *v21;
          if (v13)
          {
            v23 = v22 == 0xFFFFFFFFLL;
          }

          else
          {
            v23 = 1;
          }

          v24 = v13 + v22;
          if (v23)
          {
            v24 = 0;
          }

          *v21 = v24;
        }

        ++v20;
        v25 = *(v30 + 16);
        v21 += 8;
      }

      while (v20 < v25);
      if (!v12)
      {
        if (v25 == 1)
        {
          v28 = v29;
          if (*(v15 + 20) == 0x4000)
          {
            v28 = 1;
          }

          if (v28)
          {
            goto LABEL_31;
          }

          LODWORD(v25) = 1;
        }

        else if (v29)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }
  }

  return v5;
}

uint64_t textpar_CheckForEOF(void *a1, _DWORD *a2, _DWORD *a3)
{
  v9 = 0;
  result = (*(a1[3] + 144))(a1[4], a1[5], &v9 + 4, &v9);
  if ((result & 0x80000000) == 0)
  {
    v6 = v9;
    v7 = HIDWORD(v9);
    if (a2 && a3)
    {
      *a2 = HIDWORD(v9);
      *a3 = v6;
    }

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    if (v8)
    {
      return result;
    }

    else
    {
      return 2368741399;
    }
  }

  return result;
}

uint64_t textpar_ClassOpen(_WORD *a1, uint64_t a2, uint64_t **a3)
{
  v9 = 0;
  if ((InitRsrcFunction(a1, a2, &v9) & 0x80000000) != 0)
  {
    return 2368741383;
  }

  v6 = heap_Calloc(*(v9 + 8), 1, 16);
  if (!v6)
  {
    return 10;
  }

  *v6 = v9;
  *a3 = v6;
  v7 = escseqs_ClassOpen(a1, a2, v6 + 1);
  if ((v7 & 0x80000000) != 0)
  {
    textpar_ClassClose(*a3);
  }

  return v7;
}

uint64_t textpar_ClassClose(uint64_t *a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *a1;
  v3 = escseqs_ClassClose(a1[1]);
  if ((v3 & 0x80000000) == 0)
  {
    heap_Free(*(v2 + 8), a1);
  }

  return v3;
}

uint64_t textpar_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t **a5, int a6)
{
  v26 = 0;
  v24 = 0;
  v6 = 2368741383;
  if (a1)
  {
    if (a5)
    {
      v25 = 0uLL;
      if ((InitRsrcFunction(a2, a3, &v26) & 0x80000000) == 0)
      {
        *a5 = 0;
        v13 = heap_Alloc(*(v26 + 8), 120);
        if (v13)
        {
          v14 = v13;
          *v13 = 0u;
          *(v13 + 16) = 0u;
          *(v13 + 64) = 0u;
          *(v13 + 80) = 0u;
          *(v13 + 112) = 0;
          *(v13 + 96) = 0u;
          *(v13 + 32) = 0u;
          *(v13 + 48) = 0u;
          v15 = v26;
          *v13 = v26;
          *(v13 + 8) = a1;
          *(v13 + 24) = a4;
          *(v13 + 88) = 0;
          v16 = (v13 + 88);
          *(v13 + 76) = 0;
          *(v13 + 116) = a6;
          if (paramc_ParamGetUInt(*(v15 + 40), "ppmaxpcreframeblocks", &v24) < 0)
          {
            v17 = 30;
          }

          else
          {
            v17 = v24;
          }

          if (paramc_ParamGetUInt(*(v26 + 40), "ppnumframesinblock", &v24) < 0)
          {
            v18 = 50;
          }

          else
          {
            v18 = v24;
          }

          v19 = extdata_ObjOpen(a2, a3, v16, 211);
          if ((v19 & 0x80000000) != 0 || (v14[12] = 0, *(v14 + 26) = 0, v19 = nuance_pcre_ObjOpen(a2, a3, &v25), (v19 & 0x80000000) != 0) || (v19 = nuance_pcre_Init(v25, SDWORD2(v25), v17, v18), (v19 & 0x80000000) != 0) || (*(v14 + 6) = v25, v19 = escseqs_ObjOpen(*(v14[1] + 8), a2, a3, v14[12], v14[13], v14 + 10), (v19 & 0x80000000) != 0) || (v19 = datac_ObjOpen(a2, a3, v14 + 2, 211), (v19 & 0x80000000) != 0))
          {
            v6 = v19;
          }

          else
          {
            v20 = &word_1C37BEA3A;
            v21 = 4;
            while (1)
            {
              datac_RegisterBlock(v14[2], *(v20 - 2), *(v20 - 1), *v20);
              v6 = v22;
              if ((v22 & 0x80000000) != 0)
              {
                break;
              }

              v20 += 3;
              if (!--v21)
              {
                *a5 = v14;
                return v6;
              }
            }
          }

          textpar_ObjClose(v14);
        }

        else
        {
          return 2368741386;
        }
      }
    }
  }

  return v6;
}

uint64_t textpar_ObjClose(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  if (v3)
  {
    datac_ObjClose(v3);
    a1[2] = 0;
  }

  v4 = a1[11];
  if (v4)
  {
    extdata_ObjClose(v4);
    a1[11] = 0;
  }

  v5 = a1[10];
  if (v5)
  {
    escseqs_ObjClose(v5);
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(a1[12], a1[13], NullHandle, v7))
  {
    nuance_pcre_DeInit(a1[12], a1[13]);
    nuance_pcre_ObjClose(a1[12], a1[13]);
    a1[12] = 0;
    *(a1 + 26) = 0;
  }

  ppParam_ClearAllPPParameters(v2);
  heap_Free(*(v2 + 8), a1);
  return 0;
}

uint64_t textpar_ObjReopen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2368741383;
  v12 = 0;
  __s1 = 0;
  if (a3)
  {
    v11 = 0;
    if ((InitRsrcFunction(a1, a2, &v12) & 0x80000000) == 0)
    {
      v7 = v12;
      *a3 = v12;
      if ((paramc_ParamGetStr(*(v7 + 40), "component_stop_not_reset", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
      {
        escseqs_SetPosInOut(a3[10], 0, 0);
        paramc_ParamSetStr(*(v12 + 40), "component_stop_not_reset", "");
      }

      v8 = extdata_FreeData(a3[11]);
      if ((v8 & 0x80000000) != 0 || (escseqs_GetPosInOut(a3[10], &v11 + 1, &v11), a3[10]) && (v8 = escseqs_ObjClose(a3[10]), (v8 & 0x80000000) != 0))
      {
        v3 = v8;
      }

      else
      {
        v3 = escseqs_ObjOpen(*(a3[1] + 8), a1, a2, a3[12], a3[13], a3 + 10);
        if ((v3 & 0x80000000) == 0)
        {
          escseqs_SetPosInOut(a3[10], SHIDWORD(v11), v11);
          return v3;
        }
      }

      textpar_ObjClose(a3);
    }
  }

  return v3;
}

uint64_t textpar_ProcessStart(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 112) = log_GetLogLevel(*(*a1 + 32)) > 4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  result = escseqs_ProcessStart(*(a1 + 80), (a1 + 76));
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamSetUInt(*(*a1 + 40), "ppspellpausevalue", *(a1 + 76));
    if ((result & 0x80000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        result = datac_RequestBlock(*(a1 + 16), aMETA[v5], 1u, &v7);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v5 += 3;
        v6 = v7;
        *(v7 + 16) = 0;
        *(v6 + 20) = 0;
        if (v5 == 12)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t textpar_Process(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 116) || (*(a1 + 56) = 0, *(a1 + 64) = 0, *(a1 + 72) = 0, v2 = escseqs_ProcessStart(*(a1 + 80), (a1 + 76)), (v2 & 0x80000000) == 0))
    {
      v63 = 0;
      if (*(a1 + 56))
      {
        for (i = 0; i != 3; ++i)
        {
          v4 = datac_RequestBlock(*(a1 + 16), aTAG[i], 1u, &v63);
          if (i != 2 && (v4 & 0x80000000) == 0)
          {
            *(v63 + 16) = 0;
          }
        }

        goto LABEL_23;
      }

      v2 = datac_RequestBlock(*(a1 + 16), 1011, 1u, &v63);
      if ((v2 & 0x80000000) == 0)
      {
        v6 = v63;
        if (*(v63 + 16) >= 2u)
        {
          v7 = (*(v63 + 8) + 112);
          v8 = 1;
          do
          {
            if (*v7)
            {
              heap_Free(*(*a1 + 8), *v7);
              *v7 = 0;
              v6 = v63;
            }

            ++v8;
            v7 += 8;
          }

          while (v8 < *(v6 + 16));
        }

        for (j = 0; j != 4; ++j)
        {
          v10 = datac_RequestBlock(*(a1 + 16), aAllTAG[j], 1u, &v63);
          if (j != 3 && (v10 & 0x80000000) == 0)
          {
            *(v63 + 16) = 0;
          }
        }

LABEL_23:
        v2 = textpar_CheckForEOF(a1, 0, 0);
        if ((v2 & 0x80000000) == 0)
        {
          v14 = "entering textpar_loc_GetTextBlock(bBlockHasBeenRead=%d,bBlockMoreTextRequest=%d,bMoreTextRequest=%d)";
          v15 = "AFTER textpar_loc_GetTextBlock";
          v16 = "BEFORE escseqs_Process TEXTPAR_OUT_MRK_BLOCK";
          v17 = "BEFORE escseqs_Process TEXTPAR_OUT_TXT_BLOCK";
          v18 = "AFTER escseqs_Process TEXTPAR_OUT_MRK_BLOCK";
          while (1)
          {
            v63 = 0;
            v59 = *(a1 + 72);
            v61 = *(a1 + 68);
            log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, v14, v11, v12, v13, *(a1 + 56));
            if (!*(a1 + 56) || !*(a1 + 72) && *(a1 + 68) == 1)
            {
              __n = 0;
              v19 = *(a1 + 60);
              v2 = (*(*(a1 + 24) + 88))(*(a1 + 32), *(a1 + 40), a1 + 48, a1 + 60);
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }

              *(a1 + 56) = 1;
              log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "pfReadDirectStart returns cTextBytesInStream %u bytes", v20, v21, v22, *(a1 + 60));
              UInt = paramc_ParamGetUInt(*(*a1 + 40), "ppresetlen", &__n);
              if ((UInt & 0x1FFF) == 0x14)
              {
                v27 = 0;
                LODWORD(__n) = 0;
              }

              else
              {
                v5 = UInt;
                if ((UInt & 0x80000000) != 0)
                {
                  return v5;
                }

                v27 = __n;
              }

              log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "SSFT_PARAMC_PP_RESETLEN len is %u bytes", v24, v25, v26, v27);
              if (__n)
              {
                v2 = (*(*(a1 + 24) + 136))(*(a1 + 32), *(a1 + 40), &__n + 4);
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }

                log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "pfGetPosition is %u bytes - sync marker position", v28, v29, v30, HIDWORD(__n));
                if (!*(a1 + 68))
                {
                  v2 = escseqs_SetMarkerSyncPos(*(a1 + 80), SHIDWORD(__n));
                  if ((v2 & 0x80000000) != 0)
                  {
                    return v2;
                  }
                }
              }

              else
              {
                v2 = escseqs_SetReset(*(a1 + 80));
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }
              }

              if (*(a1 + 68) == 1 && v19 && v19 == *(a1 + 60))
              {
                *(a1 + 72) = 1;
              }

              else
              {
                *(a1 + 68) = 0;
              }
            }

            v2 = datac_RequestBlock(*(a1 + 16), 1000, 1u, &v63);
            if ((v2 & 0x80000000) != 0)
            {
              return v2;
            }

            v31 = *(a1 + 60);
            if (*(v63 + 20))
            {
              break;
            }

            v32 = *(a1 + 64);
            v33 = v31 - v32;
            if (v31 == v32)
            {
              if (!*(a1 + 72) && !*(a1 + 68))
              {
                *(a1 + 68) = 1;
                if (!v31)
                {
                  return 2368743424;
                }

                if (!*(a1 + 116))
                {
                  return 2368743424;
                }

                v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40));
                if ((v2 & 0x80000000) == 0)
                {
                  return 2368743424;
                }

                return v2;
              }

              *(v63 + 20) = 1;
            }

            else
            {
              v34 = v14;
              v35 = v18;
              v36 = v17;
              v37 = v16;
              v38 = v15;
              if (*(a1 + 116))
              {
                v39 = v31 - v32;
              }

              else
              {
                v39 = 128;
              }

              v2 = datac_RequestBlock(*(a1 + 16), 1000, v39, &v63);
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }

              v40 = v63;
              if (*(v63 + 16))
              {
                v2 = datac_RequestBlock(*(a1 + 16), 1000, (*(v63 + 16) + v39), &v63);
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }

                v40 = v63;
              }

              v41 = *(v40 + 8);
              if (v33 <= v39)
              {
                HIDWORD(__n) = v33;
              }

              else
              {
                HIDWORD(__n) = v39;
                utf8_GetPreviousValidUtf8Offset(*(a1 + 48) + *(a1 + 64), &__n + 1);
                log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "adjust bytes read to align with character boundary (IN=%d, OUT=%d)", v42, v43, v44, v39);
                v40 = v63;
                v33 = HIDWORD(__n);
              }

              v15 = v38;
              memcpy((v41 + *(v40 + 16)), (*(a1 + 48) + *(a1 + 64)), v33);
              if (!utf8_CheckValid(v41 + *(v63 + 16), v33))
              {
                v60 = v41 + *(v63 + 16);
                log_OutPublic(*(*a1 + 32), "PP_TEXT_PARSER", 1933, "%s%s", v45, v46, v47, v48, "Invalid UTF-8 character sequence discovered");
                return 2368741637;
              }

              v16 = v37;
              v49 = WORD2(__n);
              *(a1 + 64) += HIDWORD(__n);
              *(v63 + 16) += v49;
              v17 = v36;
              v18 = v35;
              v14 = v34;
            }

            if (log_HasTraceTuningDataSubscriber(*(*a1 + 32)) && !*(a1 + 68))
            {
              log_OutTraceTuningDataBinary(*(*a1 + 32), 32, "", "text/plain;charset=utf-8", *(a1 + 48), *(a1 + 60));
            }

            if (*(a1 + 116) == 1)
            {
              *(*(a1 + 48) + *(a1 + 64)) = 0;
              v2 = paramc_ParamSetStr(*(*a1 + 40), "rettt_rewritten_text", *(a1 + 48));
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }
            }

            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1000, v15);
            marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, v16, 0, 0, 0);
            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, v17);
            v5 = escseqs_Process(*(a1 + 80), *(a1 + 16));
            marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, v18, 0, 0, 0);
            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, "AFTER escseqs_Process TEXTPAR_OUT_TXT_BLOCK");
            if ((v5 & 0x1FFF) != 9)
            {
              if ((v5 & 0x80000000) != 0)
              {
                return v5;
              }

              v63 = 0;
              v2 = datac_RequestBlock(*(a1 + 16), 1010, 1u, &v63);
              if ((v2 & 0x80000000) == 0)
              {
                if (*(v63 + 16) && *(a1 + 112) == 1)
                {
                  if (*(v63 + 16) >= 0x400u)
                  {
                    v50 = 1024;
                  }

                  else
                  {
                    v50 = *(v63 + 16);
                  }

                  v51 = heap_Calloc(*(*a1 + 8), 1, (v50 + 1));
                  if (!v51)
                  {
                    return 2368741386;
                  }

                  v52 = v51;
                  strncpy(v51, *(v63 + 8), v50)[v50] = 0;
                  *(v63 + 16);
                  log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "(Txt) (text processed) (tag=%d) len=%d (UTF8 *) %s", v53, v54, v55, 1010);
                  heap_Free(*(*a1 + 8), v52);
                }

                v56 = *(a1 + 16);
                v63 = 0;
                v2 = datac_RequestBlock(v56, 1011, 1u, &v63);
                if ((v2 & 0x80000000) == 0)
                {
                  v2 = marker_loc_FilterSyncMarkers(v63);
                  if ((v2 & 0x80000000) == 0)
                  {
                    if (!*(a1 + 116))
                    {
                      return 0;
                    }

                    v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40), *(a1 + 60));
                    if ((v2 & 0x80000000) == 0)
                    {
                      return 0;
                    }
                  }
                }
              }

              return v2;
            }
          }

          if (!v31 || (v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40)), (v2 & 0x80000000) == 0))
          {
            v57 = ppParam_ClearAllPPParameters(*a1);
            if (v57 < 0)
            {
              return v57;
            }

            else
            {
              return 2368741399;
            }
          }
        }
      }
    }

    return v2;
  }

  return 2368741383;
}

uint64_t pp_text_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2368741377;
  }

  result = 0;
  *a2 = &IPPTextParser;
  return result;
}

uint64_t pp_text_parser_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 2368741383;
  v11 = 0;
  if (a3)
  {
    inited = InitRsrcFunction(a1, a2, &v11);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      v8 = heap_Calloc(*(v11 + 8), 1, 16);
      if (v8)
      {
        v9 = v8;
        *v8 = v11;
        v3 = textpar_ClassOpen(a1, a2, (v8 + 8));
        if ((v3 & 0x80000000) != 0)
        {
          pp_text_parser_ClassClose(*a3, *(a3 + 8));
        }

        else
        {
          *a3 = v9;
          *(a3 + 8) = 29953;
        }
      }

      else
      {
        return 2368741386;
      }
    }
  }

  return v3;
}

uint64_t pp_text_parser_ClassClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 29953, 16);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v4 = *a1;
  v5 = textpar_ClassClose(*(a1 + 8));
  if ((v5 & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    safeh_GetNullHandle();
  }

  return v5;
}

uint64_t pp_text_parser_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v5 = 2368741383;
  v21 = 0;
  if (a5 && a1)
  {
    v10 = safeh_HandleCheck(a1, a2, 29953, 16);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    else if ((InitRsrcFunction(a3, a4, &v23) & 0x80000000) == 0)
    {
      v14 = v23;
      v15 = v23[4];
      if (v15)
      {
        log_OutText(v15, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ObjOpen", v11, v12, v13, v20);
        v14 = v23;
      }

      *a5 = 0;
      *(a5 + 8) = 0;
      v16 = heap_Alloc(v14[1], 96);
      if (v16)
      {
        v17 = v16;
        *v16 = 0u;
        *(v16 + 16) = 0u;
        *(v16 + 64) = 0u;
        *(v16 + 80) = 0u;
        *(v16 + 32) = 0u;
        *(v16 + 48) = 0u;
        *v16 = a3;
        *(v16 + 8) = a4;
        *(v16 + 88) = 0;
        *(v16 + 16) = a1;
        Object = objc_GetObject(v23[6], "SYNTHSTREAM", &v22);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        *(v17 + 24) = *(v22 + 8);
        *(v17 + 88) = 0;
        if ((paramc_ParamGetStr(v23[5], "clcpppipelinemode", &v21) & 0x80000000) == 0 && v21 && *v21)
        {
          *(v17 + 88) = 1;
        }

        Object = textpar_ObjOpen(*(a1 + 8), a3, a4, *(v17 + 24), (v17 + 80), *(v17 + 88));
        if ((Object & 0x80000000) != 0)
        {
LABEL_16:
          v5 = Object;
          pp_text_parser_ObjClose(v17, 24357);
        }

        else
        {
          v5 = 0;
          *a5 = v17;
          *(a5 + 8) = 24357;
        }
      }

      else
      {
        return 2368741386;
      }
    }
  }

  return v5;
}

uint64_t pp_text_parser_ObjClose(uint64_t a1, int a2)
{
  v3 = 2368741383;
  v12 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v12) & 0x80000000) == 0)
  {
    v7 = *(v12 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ObjClose", v4, v5, v6, v11);
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      textpar_ObjClose(v8);
    }

    v9 = v12;
    if (*(a1 + 24))
    {
      objc_ReleaseObject(*(v12 + 48), "SYNTHSTREAM");
      v9 = v12;
    }

    heap_Free(*(v9 + 8), a1);
    return 0;
  }

  return v3;
}

uint64_t pp_text_parser_ObjReopen(uint64_t a1, int a2)
{
  v3 = 2368741383;
  v13 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1)
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v13);
    if ((inited & 0x80000000) == 0)
    {
      v8 = inited;
      v9 = *(v13 + 32);
      if (v9)
      {
        log_OutText(v9, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ObjReopen", v5, v6, v7, v12);
      }

      v10 = *(a1 + 80);
      if (v10)
      {
        v3 = textpar_ObjReopen(*a1, *(a1 + 8), v10);
        if ((v3 & 0x80000000) != 0)
        {
          *(a1 + 80) = 0;
        }
      }

      else
      {
        return v8;
      }
    }
  }

  return v3;
}

uint64_t pp_text_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v35 = 0;
  v7 = 2368741383;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v35) & 0x80000000) == 0)
  {
    v11 = *(v35 + 32);
    if (v11)
    {
      log_OutText(v11, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ProcessStart", v8, v9, v10, v33);
    }

    v12 = (*(*(a1 + 24) + 64))(a3, a4, 211, "text/plain;charset=utf-8", 0, 0, a1 + 32);
    if ((v12 & 0x80000000) != 0)
    {
      v28 = v12;
      v34 = 0;
      if ((paramc_ParamGetStr(*(v35 + 40), "inputmimetype", &v34) & 0x80000000) == 0 && v34 && *v34)
      {
        log_OutPublic(*(v35 + 32), "PP_TEXT_PARSER", 1903, "%s%s", v29, v30, v31, v32, "mimeContentType");
        return 2368741643;
      }

      else
      {
        log_OutPublic(*(v35 + 32), "PP_TEXT_PARSER", 1900, 0, v29, v30, v31, v32, v33);
        return v28;
      }
    }

    else
    {
      v13 = (*(*(a1 + 24) + 64))(a3, a4, 211, "text/plain;charset=utf-8", 0, 2, a1 + 48);
      if ((v13 & 0x80000000) != 0)
      {
        v7 = v13;
        log_OutPublic(*(v35 + 32), "PP_TEXT_PARSER", 1901, "%s%s", v14, v15, v16, v17, "mimeType");
      }

      else
      {
        v18 = *(a1 + 24);
        v19 = *(v18 + 64);
        v20 = (*(v18 + 168))();
        v21 = v19(a3, a4, 211, "application/x-realspeak-int-markers-pp;version=4.0", v20, 1, a1 + 64);
        if ((v21 & 0x80000000) != 0)
        {
          v7 = v21;
          log_OutPublic(*(v35 + 32), "PP_TEXT_PARSER", 1902, 0, v22, v23, v24, v25, v33);
        }

        else
        {
          v26 = textpar_ProcessStart(*(a1 + 80), *(a1 + 32), *(a1 + 40));
          return v26 & (v26 >> 31);
        }
      }
    }
  }

  return v7;
}

uint64_t pp_text_parser_Process(_WORD **a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2368741383;
  v24 = 0;
  v23 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1)
  {
    if (!a1[4])
    {
      return 2368741393;
    }

    v22 = 0;
    if ((InitRsrcFunction(*a1, a1[1], &v24) & 0x80000000) == 0)
    {
      v11 = *(v24 + 32);
      if (v11)
      {
        log_OutText(v11, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_Process", v8, v9, v10, v21);
      }

      *a5 = 2;
      v12 = textpar_Process(a1[10]);
      v7 = v12;
      if ((v12 & 0x80000000) == 0)
      {
        v16 = a1[6];
        if (!v16 || (v7 = textpar_WriteTextAndMarkers(a1[10], v16, a1[7], a1[8], a1[9]), (v7 & 0x80000000) == 0))
        {
          if (*(a1 + 22) || textpar_AllTextProcessed(a1[10]))
          {
            *a5 = 1;
            if (!*(a1 + 22))
            {
              v17 = pp_text_parser_loc_CloseOutStreams(a1);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v7 = 0;
            }
          }
        }

        goto LABEL_30;
      }

      if ((v12 & 0x1FFF) != 0x800)
      {
        if ((v12 & 0x1FFF) != 0x17)
        {
          if (!*(a1 + 22))
          {
            pp_text_parser_loc_CloseOutStreams(a1);
          }

          *a5 = 1;
          goto LABEL_30;
        }

        *a5 = 1;
        v18 = pp_text_parser_loc_CloseOutStreams(a1);
        goto LABEL_20;
      }

      *a5 = 0;
      textpar_CheckForEOF(a1[10], &v22, &v23);
      if (v23)
      {
        *a5 = 1;
        v18 = pp_text_parser_loc_CloseOutStreams(a1);
        if ((v18 & 0x80000000) != 0)
        {
LABEL_20:
          v7 = v18;
          goto LABEL_30;
        }

        LODWORD(v7) = 0;
      }

      if (*(a1 + 22))
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }

LABEL_30:
      v19 = *(v24 + 32);
      if (v19)
      {
        log_OutText(v19, "PP_TEXT_PARSER", 4, 0, "Leaving pp_text_parser_Process peResults=%d fRet=%d", v13, v14, v15, *a5);
      }
    }
  }

  return v7;
}

uint64_t pp_text_parser_ProcessStop(_WORD **a1, int a2)
{
  v3 = 2368741383;
  v12 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v12) & 0x80000000) == 0)
  {
    v7 = *(v12 + 32);
    if (v7)
    {
      v7 = log_OutText(v7, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ProcessStop", v4, v5, v6, v11);
    }

    IsUpdatable = kaldi::nnet1::Component::IsUpdatable(v7);
    if ((IsUpdatable & 0x80000000) != 0)
    {
      return IsUpdatable;
    }

    IsUpdatable = pp_text_parser_loc_CloseOutStreams(a1);
    if ((IsUpdatable & 0x80000000) != 0)
    {
      return IsUpdatable;
    }

    v9 = a1[4];
    if (!v9)
    {
      return 0;
    }

    IsUpdatable = (*(a1[3] + 9))(v9, a1[5]);
    if ((IsUpdatable & 0x80000000) != 0)
    {
      return IsUpdatable;
    }

    else
    {
      v3 = 0;
      a1[4] = 0;
      *(a1 + 10) = 0;
    }
  }

  return v3;
}

uint64_t pp_text_parser_loc_CloseOutStreams(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    result = (*(a1[3] + 72))(v2, a1[9]);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    a1[8] = 0;
    *(a1 + 18) = 0;
  }

  result = a1[6];
  if (result)
  {
    result = (*(a1[3] + 72))(result, a1[7]);
    if ((result & 0x80000000) == 0)
    {
      result = 0;
      a1[6] = 0;
      *(a1 + 14) = 0;
    }
  }

  return result;
}

uint64_t sentpar_clearReadOutParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), *(&aSENTPARTAG2PARAM + v2 + 8));
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

uint64_t sentpar_clearPersistentParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), off_1E81A52B0[v2]);
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    if (++v2 == 5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sentpar_clearAllParameters(uint64_t a1)
{
  result = sentpar_clearReadOutParameters(a1);
  if ((result & 0x80000000) == 0)
  {

    return sentpar_clearPersistentParameters(a1);
  }

  return result;
}

uint64_t sentpar_loc_SetReadoutMarkersAsParameters(uint64_t *a1)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35[0] = 0;
  v35[1] = 0;
  if ((datac_RequestBlock(a1[1], 1012, 1u, &v34) & 0x80000000) != 0)
  {
    v2 = 2369789959;
  }

  else
  {
    v33 = *(v34 + 8);
    v2 = datac_RequestBlock(a1[1], 1021, 1u, &v34);
    if ((v2 & 0x80000000) == 0)
    {
      v3 = v34;
      LODWORD(v4) = *(v34 + 16);
      if (v4 >= 2)
      {
        v5 = *(v34 + 8);
        for (i = 1; i < v4; ++i)
        {
          v7 = v5 + (i << 6);
          v10 = *(v7 + 20);
          v9 = (v7 + 20);
          v8 = v10;
          v11 = (1 << v10) & 0x1080200080;
          if (v10 > 0x24 || v11 == 0)
          {
            goto LABEL_30;
          }

          v13 = 0;
          v14 = &off_1E81A52E0;
          while (*(v14 - 2) != v8)
          {
            v13 += 4;
            v14 += 2;
            if (v13 == 16)
            {
              goto LABEL_30;
            }
          }

          if (*(v35 + v13))
          {
            goto LABEL_30;
          }

          ArgOfLastOfType = marker_GetArgOfLastOfType(v5, i, v4, 0);
          if (marker_IsReadoutControlDefaultArg(*v9, ArgOfLastOfType, v33, *(a1 + 47)))
          {
            v16 = paramc_ParamRemove(*(*a1 + 40), *v14);
            v2 = 0;
            if ((v16 & 0x80000000) != 0 && (v16 & 0x1FFF) != 0x14)
            {
              goto LABEL_38;
            }

            goto LABEL_29;
          }

          v17 = *v9;
          if (*v9 > 30)
          {
            if (v17 == 36)
            {
LABEL_26:
              v21 = (v33 + ArgOfLastOfType);
              v22 = strlen(v21);
              v23 = heap_Calloc(*(*a1 + 8), 1, v22 + 1);
              if (!v23)
              {
                v2 = 2369789962;
                goto LABEL_39;
              }

              v24 = v23;
              strncpy(v23, v21, v22)[v22] = 0;
              v2 = paramc_ParamSetStr(*(*a1 + 40), *v14, v24);
              v28 = *a1;
              if ((v2 & 0x80000000) != 0)
              {
                heap_Free(*(v28 + 8), v24);
                goto LABEL_39;
              }

              log_OutText(*(v28 + 32), "PP_SENT_PARSER", 4, 0, "SET PARAM marker:%d param=%s val=%s", v25, v26, v27, v8);
              heap_Free(*(*a1 + 8), v24);
              goto LABEL_29;
            }

            if (v17 == 31)
            {
LABEL_24:
              v2 = paramc_ParamSetUInt(*(*a1 + 40), *v14, ArgOfLastOfType);
              if ((v2 & 0x80000000) != 0)
              {
                goto LABEL_39;
              }

              log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 4, 0, "SET PARAM marker:%d param=%s val=%u", v18, v19, v20, v8);
            }
          }

          else
          {
            if (v17 == 7)
            {
              goto LABEL_24;
            }

            if (v17 == 21)
            {
              goto LABEL_26;
            }
          }

LABEL_29:
          *(v35 + v13) = 1;
          v3 = v34;
LABEL_30:
          v4 = *(v3 + 16);
        }
      }

      v29 = 0;
      v30 = &off_1E81A52E0;
      while (1)
      {
        if (!*(v35 + v29))
        {
          v16 = paramc_ParamRemove(*(*a1 + 40), *v30);
          v2 = 0;
          if ((v16 & 0x80000000) != 0 && (v16 & 0x1FFF) != 0x14)
          {
            break;
          }
        }

        v29 += 4;
        v30 += 2;
        if (v29 == 16)
        {
          goto LABEL_39;
        }
      }

LABEL_38:
      v2 = v16;
    }
  }

LABEL_39:
  v31 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sentpar_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v22 = 0;
  v21 = 0;
  v5 = 2369789959;
  if (a4 && (InitRsrcFunction(a1, a2, &v22) & 0x80000000) == 0)
  {
    *a4 = 0;
    v11 = heap_Alloc(*(v22 + 8), 248);
    if (v11)
    {
      v12 = v11;
      *(v11 + 240) = 0;
      *(v11 + 192) = 0u;
      *(v11 + 208) = 0u;
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
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 224) = 0u;
      v13 = (v11 + 224);
      v14 = v22;
      *v11 = v22;
      *(v11 + 16) = a3;
      *(v11 + 224) = 0;
      *(v11 + 192) = 0;
      *(v11 + 196) = 0;
      *(v11 + 240) = a5;
      *(v11 + 136) = 0u;
      *(v11 + 120) = 0u;
      *(v11 + 152) = 0u;
      *(v11 + 168) = 0u;
      *(v11 + 140) = 0;
      if (paramc_ParamGetUInt(*(v14 + 40), "ppmaxpcreframeblocks", &v21) < 0)
      {
        v15 = 30;
      }

      else
      {
        v15 = v21;
      }

      if (paramc_ParamGetUInt(*(v22 + 40), "ppnumframesinblock", &v21) < 0)
      {
        v16 = 50;
      }

      else
      {
        v16 = v21;
      }

      v17 = extdata_ObjOpen(a1, a2, v13, 212);
      if ((v17 & 0x80000000) == 0)
      {
        *(v12 + 208) = 0;
        *(v12 + 216) = 0;
        v17 = nuance_pcre_ObjOpen(a1, a2, v12 + 208);
        if ((v17 & 0x80000000) == 0)
        {
          v17 = nuance_pcre_Init(*(v12 + 208), *(v12 + 216), v15, v16);
          if ((v17 & 0x80000000) == 0)
          {
            v17 = sentpar_loc_OpenParts(a1, a2, v12);
            if ((v17 & 0x80000000) == 0)
            {
              v17 = datac_ObjOpen(a1, a2, (v12 + 8), 212);
              if ((v17 & 0x80000000) == 0)
              {
                v18 = &word_1C37BEAE4;
                v19 = 6;
                while (1)
                {
                  datac_RegisterBlock(*(v12 + 8), *(v18 - 2), *(v18 - 1), *v18);
                  if ((v17 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v18 += 3;
                  if (!--v19)
                  {
                    *a4 = v12;
                    return sentpar_clearAllParameters(v22);
                  }
                }
              }
            }
          }
        }
      }

      v5 = v17;
      sentpar_ObjClose(a1, a2, v12);
    }

    else
    {
      return 2369789962;
    }
  }

  return v5;
}

uint64_t sentpar_ObjClose(_WORD *a1, int a2, void *a3)
{
  v3 = 2369789959;
  v11 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v11) & 0x80000000) == 0)
  {
    v5 = a3[1];
    if (v5)
    {
      datac_ObjClose(v5);
    }

    v6 = a3[28];
    if (v6)
    {
      extdata_ObjClose(v6);
      a3[28] = 0;
    }

    v7 = a3[25];
    if (v7)
    {
      sparser_ObjClose(v7);
    }

    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a3[26], a3[27], NullHandle, v9))
    {
      nuance_pcre_DeInit(a3[26], a3[27]);
      nuance_pcre_ObjClose(a3[26], a3[27]);
    }

    sentpar_clearAllParameters(v11);
    heap_Free(*(v11 + 8), a3);
    return 0;
  }

  return v3;
}

uint64_t sentpar_loc_OpenParts(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  result = extdata_LoadSpecificData(a3[28], "PPSE", "BRKD");
  if ((result & 0x80000000) == 0)
  {
    result = sparser_ObjOpen(a1, a2, a3[26], a3[27], a3 + 25, a3[28]);
    if ((result & 0x80000000) == 0)
    {
      v7 = a3[28];

      return extdata_LoadData(v7, "PPSE");
    }
  }

  return result;
}

uint64_t sentpar_ObjReopen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2369789959;
  __s1 = 0;
  v13 = 0;
  if (a3)
  {
    inited = InitRsrcFunction(a1, a2, &v13);
    if ((inited & 0x80000000) == 0)
    {
      v8 = inited;
      if ((paramc_ParamGetStr(*(v13 + 40), "pipelineswitchcomponent", &__s1) & 0x80000000) != 0 || !__s1 || (v3 = v8, !strcmp(__s1, "pp/sent_parser")))
      {
        v9 = extdata_FreeData(a3[28]);
        if ((v9 & 0x80000000) != 0 || (v10 = a3[25]) != 0 && (v9 = sparser_ObjClose(v10), (v9 & 0x80000000) != 0))
        {
          v3 = v9;
LABEL_12:
          sentpar_ObjClose(a1, a2, a3);
          return v3;
        }

        v3 = sentpar_loc_OpenParts(a1, a2, a3);
        if ((v3 & 0x80000000) != 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return v3;
}

uint64_t sentpar_ProcessStart(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  if (!a2)
  {
    return 2369789959;
  }

  *(a2 + 24) = a3;
  *(a2 + 32) = a4;
  *(a2 + 40) = a5;
  *(a2 + 48) = a6;
  paramc_ParamSetUInt(*(*a2 + 40), "finalsentencefound", 0);
  v9 = paramc_ParamGetInt(*(a1 + 40), "eosdetection", &v16 + 1) < 0 || HIDWORD(v16) != 0;
  *(a2 + 232) = v9;
  if ((paramc_ParamGet(*(a1 + 40), "readmode", &v14, 0) & 0x80000000) == 0)
  {
    *(a2 + 196) = *v14 - 48;
  }

  *(a2 + 236) = log_GetLogLevel(*(a1 + 32)) > 4;
  *(a2 + 184) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 192) = 1024;
  if ((paramc_ParamGetUInt(*(a1 + 40), "ppreaddirectsize", &v16) & 0x80000000) == 0 && v16 >= 0x100)
  {
    *(a2 + 192) = v16;
  }

  if ((paramc_ParamGetUInt(*(a1 + 40), "ppspellpausevalue", (a2 + 188)) & 0x80000000) != 0)
  {
    *(a2 + 188) = 0;
  }

  v10 = 0;
  while (1)
  {
    result = datac_RequestBlock(*(a2 + 8), aMETA_0[v10], 1u, &v15);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v10 += 3;
    v12 = v15;
    *(v15 + 16) = 0;
    *(v12 + 20) = 0;
    if (v10 == 18)
    {
      v13 = sparser_ProcessStart(*(a2 + 200), *(a2 + 188));
      return v13 & (v13 >> 31);
    }
  }

  return result;
}

uint64_t sentpar_ProcessEnd(uint64_t a1, _WORD *a2, int a3)
{
  __s1 = 0;
  v8 = 0;
  v6 = 0;
  if ((InitRsrcFunction(a2, a3, &v8) & 0x80000000) != 0)
  {
    return 2369789959;
  }

  if ((paramc_ParamGetStr(*(v8 + 40), "pipelineswitchcomponent", &__s1) & 0x80000000) == 0 && __s1 && strcmp(__s1, "pp/sent_parser"))
  {
    *(a1 + 136) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 140) = 0;
  }

  if ((paramc_ParamGetStr(*(v8 + 40), "component_stop", &v6) & 0x80000000) == 0 && v6)
  {
    *(a1 + 136) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 140) = 0;
    paramc_ParamSetStr(*(v8 + 40), "component_stop", "");
  }

  if (!__s1)
  {
    *(a1 + 136) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 140) = 0;
  }

  v4 = sentpar_loc_PrepareDataContainers(a1, 0);
  return v4 & (v4 >> 31);
}

uint64_t sentpar_loc_PrepareDataContainers(uint64_t *a1, int a2)
{
  v14 = 0;
  if (a2)
  {
    for (i = 0; i != 3; ++i)
    {
      v4 = datac_RequestBlock(a1[1], aTAG_0[i], 1u, &v14);
      if (i != 2 && (v4 & 0x80000000) == 0)
      {
        *(v14 + 16) = 0;
      }
    }

    return 0;
  }

  result = datac_RequestBlock(a1[1], 1011, 1u, &v14);
  if ((result & 0x80000000) == 0)
  {
    v6 = v14;
    if (*(v14 + 16) >= 2u)
    {
      v7 = (*(v14 + 8) + 112);
      v8 = 1;
      do
      {
        if (*v7)
        {
          heap_Free(*(*a1 + 8), *v7);
          *v7 = 0;
          v6 = v14;
        }

        ++v8;
        v7 += 8;
      }

      while (v8 < *(v6 + 16));
    }

    result = datac_RequestBlock(a1[1], 1021, 1u, &v14);
    if ((result & 0x80000000) == 0)
    {
      v9 = v14;
      if (*(v14 + 16) >= 2u)
      {
        v10 = (*(v14 + 8) + 112);
        v11 = 1;
        do
        {
          if (*v10)
          {
            heap_Free(*(*a1 + 8), *v10);
            *v10 = 0;
            v9 = v14;
          }

          ++v11;
          v10 += 8;
        }

        while (v11 < *(v9 + 16));
      }

      for (j = 0; j != 5; ++j)
      {
        v13 = datac_RequestBlock(a1[1], aAllTAG_0[j], 1u, &v14);
        if (j != 2 && (v13 & 0x80000000) == 0)
        {
          *(v14 + 16) = 0;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sentpar_Process(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v163 = *MEMORY[0x1E69E9840];
  v154 = 1;
  v153 = 0;
  v151 = 0;
  v152 = 0;
  v145 = 0;
  v146 = 0;
  v144 = 0;
  v143 = 0;
  if (!a1)
  {
    v13 = 2369789959;
    goto LABEL_132;
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_Process()", a6, a7, a8, v126);
  DWORD1(v148) = 0;
  if (*(a1 + 240))
  {
    v12 = 0;
    *(a1 + 64) = 0;
    *(a1 + 112) = 0;
    *(a1 + 184) = 0;
    *(a1 + 84) = 0;
    *(a1 + 76) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
  }

  else
  {
    v12 = *(a1 + 64);
  }

  InputStreams = sentpar_loc_PrepareDataContainers(a1, v12);
  if ((InputStreams & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

  v132 = *(a1 + 88);
  v134 = *(a1 + 84);
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_GetTextBlockAndMarkers(bHaveReadInputStreams=%d,bBlockMoreInputRequest=%d,bMoreInputRequest=%d)", v15, v16, v17, *(a1 + 64));
  if (!*(a1 + 64) || !*(a1 + 88) && *(a1 + 84) == 1)
  {
    InputStreams = sentpar_loc_ReadInputStreams(a1);
    if ((InputStreams & 0x80000000) != 0)
    {
      goto LABEL_131;
    }

    *(a1 + 64) = 1;
    goto LABEL_12;
  }

  *&v159 = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1010, 1u, &v159);
  if ((InputStreams & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

  if (*(v159 + 20))
  {
    if (*(a1 + 68))
    {
      InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32));
      if ((InputStreams & 0x80000000) != 0)
      {
        goto LABEL_131;
      }
    }

    if (*(a1 + 104))
    {
      InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48));
      if ((InputStreams & 0x80000000) != 0)
      {
        goto LABEL_131;
      }
    }

    InputStreams = sentpar_clearAllParameters(*a1);
    if ((InputStreams & 0x80000000) != 0)
    {
      goto LABEL_131;
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_CheckIfAllDataProcessed(return TTSEG_PROCESSING_COMP_RESULTS_FULL)", v73, v74, v75, v127);
    v13 = 2369789975;
    goto LABEL_132;
  }

  v76 = *(a1 + 68);
  if (v76 == *(a1 + 76))
  {
    v77 = *(a1 + 104);
    if (v77 == *(a1 + 108))
    {
      if (*(a1 + 88) || *(a1 + 84))
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "FINISHED PROCESSING INPUT STREAM", v33, v34, v35, v127);
        v32 = sentpar_loc_FlushStreamsAndReturn(a1, a3, a4);
        goto LABEL_14;
      }

      *(a1 + 84) = 1;
      if (*(a1 + 240))
      {
        if (!v76)
        {
LABEL_100:
          if (v77)
          {
            InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48));
            if ((InputStreams & 0x80000000) != 0)
            {
              goto LABEL_131;
            }
          }

          goto LABEL_102;
        }

        InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32), v76);
        if ((InputStreams & 0x80000000) != 0)
        {
          goto LABEL_131;
        }

        if (*(a1 + 240))
        {
          v77 = *(a1 + 104);
          goto LABEL_100;
        }
      }

LABEL_102:
      v79 = *(*a1 + 32);
      v80 = "issue more text request (cTextBytesAvailable==0)- TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
      goto LABEL_124;
    }
  }

  InputStreams = sentpar_loc_ReadInputStreams(a1);
  if ((InputStreams & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_12:
  InputStreams = sentpar_loc_SetUpTextBlock(a1, v18, v19, v20, v21, v22, v23, v24);
  if ((InputStreams & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

  v32 = sentpar_loc_SetUpMarkerBlocks(a1, v25, v26, v27, v28, v29, v30, v31);
LABEL_14:
  v13 = v32;
  if ((v32 & 0x80000000) != 0)
  {
    goto LABEL_132;
  }

  if (!*(a1 + 240) && !*(a1 + 88))
  {
    v78 = *(a1 + 68);
    if (v78 <= 0x1FF && v78 > *(a1 + 72))
    {
      *(a1 + 64) = 0;
      *(a1 + 84) = 1;
      *(a1 + 72) = v78;
      v79 = *(*a1 + 32);
      v80 = "issue more text request as text block received is less than SENTPAR_BLOCK_SIZE  - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
LABEL_124:
      log_OutText(v79, "PP_SENT_PARSER", 5, 0, v80, v33, v34, v35, v127);
      v13 = 2369792000;
      goto LABEL_132;
    }
  }

  *(a1 + 72) = *(a1 + 68);
  v158 = 0;
  v159 = 0uLL;
  v157 = 0;
  v155 = 0;
  v156 = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1011, 1u, &v156);
  if ((InputStreams & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

  v36 = *(v156 + 8);
  v13 = datac_RequestBlock(*(a1 + 8), 1012, 1u, &v155);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_132;
  }

  if (!*(a1 + 240))
  {
    v139 = v36;
    v135 = a3;
    v136 = a4;
    v137 = a2;
    v142 = 0;
    v141 = 0;
    v138 = 0;
    v140 = 0;
    v37 = 0;
    v38 = 0;
    v39 = *(v155 + 16);
    v40 = &off_1E81A52E0;
    v41 = 4;
    while (1)
    {
      v42 = *(v40 - 2);
      if (v42 > 30)
      {
        if (v42 != 36)
        {
          if (v42 != 31)
          {
            goto LABEL_51;
          }

LABEL_27:
          UInt = paramc_ParamGetUInt(*(*a1 + 40), *v40, &v158);
          if ((UInt & 0x1FFF) == 0x14)
          {
            v13 = 0;
            goto LABEL_51;
          }

          v13 = UInt;
          if ((UInt & 0x80000000) != 0)
          {
            goto LABEL_52;
          }

          log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 4, 0, "GET PARAM marker:%d param=%s val=%d", v44, v45, v46, v42);
          v52 = *(v156 + 16);
          if (v52)
          {
            v53 = *(v139 + 32);
            HIDWORD(v141) = *(v139 + 32);
            v142 = *(v139 + 24);
          }

          else
          {
            HIDWORD(v141) = 0;
            v142 = 0;
          }

          LODWORD(v141) = 1;
          v138 = v158;
          goto LABEL_44;
        }
      }

      else
      {
        if (v42 == 7)
        {
          goto LABEL_27;
        }

        if (v42 != 21)
        {
          goto LABEL_51;
        }
      }

      Str = paramc_ParamGetStr(*(*a1 + 40), *v40, &v157);
      v51 = Str & 0x1FFF;
      if (v51 == 20)
      {
        v13 = 0;
      }

      else
      {
        v13 = Str;
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_52;
        }

        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 4, 0, "GET PARAM marker:%d param=%s val=%s", v48, v49, v50, v42);
        v54 = strlen(v157);
        v55 = heap_Calloc(*(*a1 + 8), 1, v54 + 1);
        if (!v55)
        {
          v13 = 2369789962;
          goto LABEL_132;
        }

        v56 = strncpy(v55, v157, v54);
        v56[v54] = 0;
        if (*(v156 + 16))
        {
          v57 = *(v139 + 32);
          HIDWORD(v141) = *(v139 + 32);
          v142 = *(v139 + 24);
        }

        else
        {
          HIDWORD(v141) = 0;
          v142 = 0;
        }

        v140 = v42;
        LODWORD(v141) = 1;
        v38 = v56;
      }

      paramc_ParamRelease(*(*a1 + 40));
      v157 = 0;
      if (v51 == 20)
      {
        goto LABEL_51;
      }

      v52 = *(v156 + 16);
      LODWORD(v42) = v140;
LABEL_44:
      v13 = datac_RequestBlock(*(a1 + 8), 1011, (v52 + 1), &v156);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_52;
      }

      ++v37;
      v58 = *(v156 + 8);
      v59 = *(v156 + 16);
      v139 = v58;
      v60 = v58 + (v37 << 6);
      if (v59 > v37)
      {
        memmove((v60 + 64), (v58 + (v37 << 6)), (v59 - v37) << 6);
      }

      *v60 = v141;
      *(v60 + 4) = v159;
      *(v60 + 20) = v42;
      *(v60 + 24) = v142;
      *(v60 + 28) = 0;
      *(v60 + 32) = HIDWORD(v141);
      *(v60 + 36) = 0;
      *(v60 + 40) = v138;
      *(v60 + 44) = 0;
      *(v60 + 48) = 0;
      *(v60 + 56) = 0;
      ++*(v156 + 16);
      if (v38)
      {
        v61 = strlen(v38);
        v13 = datac_RequestBlock(*(a1 + 8), 1012, (v61 + *(v155 + 16) + 1), &v155);
        if ((v13 & 0x80000000) != 0)
        {
          a4 = v136;
          a2 = v137;
          a3 = v135;
LABEL_53:
          heap_Free(*(*a1 + 8), v38);
          break;
        }

        v62 = *(v155 + 8);
        *(v60 + 40) = v39;
        v63 = strlen(v38);
        memcpy((v62 + v39), v38, v63);
        *(v62 + strlen(v38) + v39) = 0;
        v39 += strlen(v38) + 1;
        *(v155 + 16) = v39;
        heap_Free(*(*a1 + 8), v38);
        v38 = 0;
      }

      v140 = v42;
LABEL_51:
      v40 += 2;
      if (!--v41)
      {
LABEL_52:
        a4 = v136;
        a2 = v137;
        a3 = v135;
        if (!v38)
        {
          break;
        }

        goto LABEL_53;
      }
    }
  }

  if (v157)
  {
    paramc_ParamRelease(*(*a1 + 40));
  }

  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_132;
  }

  *&v159 = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1039, 1u, &v159);
  if ((InputStreams & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

  v67 = *(v159 + 16);
  if (*(v159 + 16))
  {
    v68 = *(v159 + 8);
    LODWORD(v69) = *(v68 + ((v67 - 1) << 6) + 32);
    v70 = (a1 + 184);
    if (*(a1 + 184) > v69)
    {
      LODWORD(v69) = *(a1 + 184);
    }

    v71 = (v68 + 36);
    do
    {
      v72 = *(v71 - 1);
      if (*v71 + v72 <= v69)
      {
        v69 = v69;
      }

      else
      {
        v69 = v72;
      }

      v71 += 16;
      --v67;
    }

    while (v67);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_GetStartScanPos -> %d", v64, v65, v66, v69);
  }

  else
  {
    v70 = (a1 + 184);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_GetStartScanPos -> %d", v64, v65, v66, *(a1 + 184));
  }

  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1010, "BEFORE sparser_ScanTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "BEFORE sparser_ScanTextElement", 0, 0, 0);
  if (*(a1 + 64) != 1 || *(a1 + 88) != 1 || *(a1 + 84) != 1)
  {
    InputStreams = sparser_PreScanTextElement(*(a1 + 200), *(a1 + 8), &v143);
    if ((InputStreams & 0x80000000) != 0)
    {
      goto LABEL_131;
    }

    if (v143 == 1 && !*(a1 + 240))
    {
      *(a1 + 64) = 0;
      *(a1 + 84) = 1;
      v79 = *(*a1 + 32);
      v80 = "issue more text request - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
      goto LABEL_124;
    }
  }

  InputStreams = sparser_ScanTextElement(*(a1 + 200), *(a1 + 8), *(a1 + 232), *(a1 + 196), v81, v33, v34, v35);
  if ((InputStreams & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

  *(a1 + 184) = sparser_GetScanPosition(*(a1 + 200));
  if (*(a1 + 240))
  {
    v85 = 1;
    v154 = 1;
  }

  else
  {
    InputStreams = sparser_HasTextElementLeft(*(a1 + 200), *(a1 + 8), &v154, (a1 + 196));
    if ((InputStreams & 0x80000000) != 0)
    {
      goto LABEL_131;
    }

    v85 = v154;
    v86 = *v70;
  }

  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "AFTER sparser_HasTextElementLeft bTextRemaining=%d pSentPar->startScanPos=%d", v82, v83, v84, v85);
  if (!v154)
  {
    v13 = sentpar_loc_Check2IssueMoreInputRequest(a1, &v145, v87, v88, v89, v90, v91, v92);
    if (v145 == 1)
    {
      LODWORD(v159) = 0;
      if ((paramc_ParamGetUInt(*(*a1 + 40), "disablefinalsentencesilence", &v159) & 0x80000000) == 0 && v159 == 1)
      {
        paramc_ParamSetUInt(*(*a1 + 40), "finalsentencefound", 1u);
      }
    }

    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_132;
    }
  }

  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1010, "BEFORE sparser_GetTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "BEFORE sparser_GetTextElement", 0, 0, 0);
  InputStreams = sparser_GetTextElement(*(a1 + 200), *(a1 + 8), &v153, &v152 + 1, &v152, a2, (a1 + 196), &v151 + 1, &v151, &v147, &v146 + 1, &v146);
  if ((InputStreams & 0x80000000) != 0)
  {
LABEL_131:
    v13 = InputStreams;
    goto LABEL_132;
  }

  if (*(a1 + 236) == 1)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "AFTER sparser_GetTextElement", v93, v94, v95, v128);
    v133 = *a2;
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "currentReadMode = %d, *bImmediateVoiceSwitch=%d, bEndOnVoiceSwitch=%d", v96, v97, v98, *(a1 + 196));
    v99 = *(*a1 + 32);
    v100 = HIDWORD(v151);
    marker_getString(SDWORD1(v148));
    log_OutText(v99, "PP_SENT_PARSER", 5, 0, "posRefOffset=%d, refReset=%d, pRefResetMrk.tag=%s, numBlanksTrimmed=%d u32AdjustedEscLen=%d", v101, v102, v103, v100);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "inputMarkersConsumed=%d", v104, v105, v106, HIWORD(v146));
  }

  if (log_HasTraceTuningDataSubscriber(*(*a1 + 32)))
  {
    log_OutTraceTuningData(*(*a1 + 32), 33, 0, v107, v108, v109, v110, v111, v128);
  }

  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "In Blocks", v109, v110, v111, v128);
  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1010, "AFTER sparser_GetTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "AFTER sparser_GetTextElement", 0, 0, 0);
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Out Blocks", v112, v113, v114, v129);
  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1020, "AFTER sparser_GetTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "AFTER sparser_GetTextElement (out marker)", 0, 0, 0);
  v115 = v152;
  if (*a2 != 1 && v152 != 1)
  {
    InputStreams = sentpar_loc_CheckForEmptyOutput(a1, &v144 + 1, &v144);
    if ((InputStreams & 0x80000000) == 0)
    {
      if (v145 == 1 && v144 == 0x100000001)
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bThereIsNoMoreInput && bEmptyText && bEmptyMarkers - flush and return", v116, v117, v118, v130);
        InputStreams = sentpar_loc_FlushStreamsAndReturn(a1, a3, a4);
        goto LABEL_131;
      }

      v115 = v152;
      goto LABEL_127;
    }

    goto LABEL_131;
  }

LABEL_127:
  v119 = *(a1 + 236);
  v159 = v147;
  v160 = v148;
  v161 = v149;
  v162 = v150;
  InputStreams = sentpar_loc_UpdateTextAndMrkReadPosition(a1, SHIDWORD(v152), v119, v115, HIWORD(v146), v146, HIDWORD(v151), v151, &v159);
  if ((InputStreams & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

  v159 = v147;
  v160 = v148;
  v161 = v149;
  v162 = v150;
  v13 = sentpar_loc_SavePersistentData(a1, HIDWORD(v151), v151, &v159);
  if ((v13 & 0x80000000) == 0)
  {
    if (*a2 == 1)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bImmediateVoiceSwitch - immediate return", v120, v121, v122, v131);
    }

    else
    {
      if (v152 == 1)
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bEndOnVoiceSwitch - continue processing", v120, v121, v122, v131);
      }

      v125 = sentpar_loc_FilterSyncMarkers(*(a1 + 8));
      v13 = v125 & (v125 >> 31);
    }
  }

LABEL_132:
  v123 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t sentpar_loc_Check2IssueMoreInputRequest(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  *a2 = 0;
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_Check2IssueMoreInputRequest()", a6, a7, a8, v22);
  v10 = datac_RequestBlock(*(a1 + 8), 1010, 1u, &v29);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = datac_RequestBlock(*(a1 + 8), 1011, 1u, &v28);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(*(a1 + 16) + 136))(*(a1 + 24), *(a1 + 32), &v27 + 4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(*(a1 + 16) + 144))(*(a1 + 24), *(a1 + 32), &v26 + 4, &v25 + 4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(*(a1 + 16) + 136))(*(a1 + 40), *(a1 + 48), &v27);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v14 = (*(*(a1 + 16) + 144))(*(a1 + 40), *(a1 + 48), &v26, &v25);
  if ((v14 & 0x80000000) == 0)
  {
    if (HIDWORD(v25) == 1 && !HIDWORD(v26) && v25 == 1 && !v26)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "no text and markers : return TTSEG_PROCESSING_COMP_RESULTS_FULL", v11, v12, v13, v23);
      v14 = 2369789975;
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "have bytes in input stream, issue more text request?", v11, v12, v13, v23);
    if (HIDWORD(v26))
    {
      v18 = (a1 + 84);
      if (*(a1 + 84) == 1)
      {
        v19 = "already issued more text request - there is no more input";
LABEL_20:
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, v19, v15, v16, v17, v24);
        v21 = "leaving sentpar_loc_Check2IssueMoreInputRequest() - continue processing";
LABEL_25:
        *v8 = 1;
        goto LABEL_26;
      }

      v14 = 2369792000;
      *(a1 + 64) = 0;
      v21 = "[1]issue more text request - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
    }

    else
    {
      if (!v26)
      {
        v21 = "leaving sentpar_loc_Check2IssueMoreInputRequest() - continue processing";
LABEL_26:
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, v21, v15, v16, v17, v24);
        return v14;
      }

      v18 = (a1 + 84);
      if (*(a1 + 84) == 1)
      {
        v19 = "already issued more text request - still have some markers - return there is no more input";
        goto LABEL_20;
      }

      v14 = 2369792000;
      *(a1 + 64) = 0;
      v21 = "[2]issue more text request - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
    }

    v8 = v18;
    goto LABEL_25;
  }

  return v14;
}

uint64_t sentpar_loc_CheckForEmptyOutput(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v7 = 0;
  *a2 = 0;
  *a3 = 0;
  result = datac_RequestBlock(*(a1 + 8), 1020, 1u, &v7);
  if ((result & 0x80000000) == 0)
  {
    if (!*(v7 + 16))
    {
      *a2 = 1;
    }

    result = datac_RequestBlock(*(a1 + 8), 1021, 1u, &v7);
    if ((result & 0x80000000) == 0 && !*(v7 + 16))
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t sentpar_loc_FlushStreamsAndReturn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 68);
  v7 = *(a1 + 76);
  if (v6 != v7)
  {
    v8 = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32), (v6 - v7));
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    *(a1 + 68) = 0;
    *(a1 + 76) = 0;
  }

  v9 = 2369789975;
  if (*(a1 + 104) == *(a1 + 108))
  {
    return v9;
  }

  v41 = 0;
  v8 = datac_RequestBlock(*(a1 + 8), 1021, 1u, &v41);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v10 = *(v41 + 16);
  if (!*(v41 + 16))
  {
    v13 = 0;
    goto LABEL_44;
  }

  v11 = *(v41 + 8);
  v40 = 0;
  v12 = heap_Calloc(*(*a1 + 8), 1, (v10 << 6) | 1);
  if (!v12)
  {
    return 2369789962;
  }

  v13 = v12;
  v14 = datac_RequestBlock(*(a1 + 8), 1012, 1u, &v40);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  v15 = v41;
  if (!*(v41 + 16))
  {
    goto LABEL_42;
  }

  v16 = 0;
  v17 = *(v40 + 8);
  v18 = (v11 + 40);
  do
  {
    if (marker_hasNonConstCharPtrArg(*(v18 - 5)))
    {
      v19 = *v18;
      if (v19 == -1)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 + v19;
      }

      *v18 = v20;
    }

    ++v16;
    v15 = v41;
    v18 += 8;
  }

  while (v16 < *(v41 + 16));
  if (!*(v41 + 16))
  {
LABEL_42:
    v25 = (v15 + 16);
LABEL_43:
    *v25 = 0;
    goto LABEL_44;
  }

  v21 = 0;
  v22 = 0;
  do
  {
    v23 = &v13[v21 / 4];
    *(v23 + 5) = *(v11 + v21 + 20);
    v23[9] = *(v11 + v21 + 36);
    *(v23 + 5) = *(v11 + v21 + 40);
    ++v22;
    v24 = *(v41 + 16);
    v21 += 64;
  }

  while (v22 < v24);
  v25 = (v41 + 16);
  if (!*(v41 + 16))
  {
    goto LABEL_43;
  }

  v26 = 0;
  v27 = 0;
  v28 = v13;
  do
  {
    if (v26)
    {
      v29 = v28[5];
      if (v29 == 0x4000)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v29 = v13[5];
    }

    if (v29 != 3)
    {
      v24 = &v13[16 * v27];
      v30 = *v28;
      v31 = *(v28 + 1);
      v32 = *(v28 + 3);
      v24[2] = *(v28 + 2);
      v24[3] = v32;
      *v24 = v30;
      v24[1] = v31;
      ++v27;
      LOWORD(v24) = *v25;
    }

LABEL_28:
    ++v26;
    v28 += 16;
  }

  while (v26 < v24);
  *v25 = v27;
  if (v27 >= 2u)
  {
    v33 = 0;
    v34 = v13[9];
    v35 = v13 + 24;
    v36 = v27 - 1;
    do
    {
      v37 = *(v35 - 3);
      if (v37 != 999 && v37 != 0x4000 && *(v35 - 8) != 1)
      {
        v33 = 1;
      }

      *v35 = v34 + v13[8];
      v35 += 16;
      --v36;
    }

    while (v36);
    if (v33 == 1)
    {
      v14 = (*(*(a1 + 16) + 104))(a2, a3, v13, v27 << 6);
      if ((v14 & 0x80000000) != 0)
      {
LABEL_38:
        v9 = v14;
        goto LABEL_46;
      }
    }
  }

LABEL_44:
  v38 = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48), (*(a1 + 104) - *(a1 + 108)));
  if ((v38 & 0x80000000) != 0)
  {
    v9 = v38;
    if (v13)
    {
LABEL_46:
      heap_Free(*(*a1 + 8), v13);
    }
  }

  else
  {
    *(a1 + 104) = 0;
    if (v13)
    {
      goto LABEL_46;
    }
  }

  return v9;
}

uint64_t sentpar_loc_UpdateTextAndMrkReadPosition(uint64_t *a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_UpdateTextAndMrkReadPosition", a6, a7, a8, v67);
  v17 = datac_RequestBlock(a1[1], 1020, 1u, &v89);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v18 = *(v89 + 16);
  v17 = datac_RequestBlock(a1[1], 1020, 1u, &v90);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  __src = *(v90 + 8);
  v85 = *(v90 + 16);
  v17 = datac_RequestBlock(a1[1], 1011, 1u, &v88);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v22 = datac_RequestBlock(a1[1], 1039, 1u, &v87);
  if ((v22 & 0x80000000) == 0)
  {
    v80 = v9;
    v81 = a3;
    v77 = v18;
    v78 = v11;
    v75 = a2;
    v76 = a4;
    v82 = a5;
    v79 = v10;
    if (*(v88 + 16))
    {
      v23 = 0;
      v83 = 0;
      v24 = *(v88 + 8);
      v25 = v87;
      v26 = *(v87 + 8);
      do
      {
        v27 = (v24 + (v23 << 6));
        if (*v27 == 1 && *(v27 + 5) == 2)
        {
          v28 = *(v25 + 16);
          v29 = v28 + 1;
          v30 = v26;
          while (--v29)
          {
            v31 = v30 + 64;
            v32 = memcmp((v24 + (v23 << 6)), v30, 0x40uLL);
            v30 = v31;
            if (!v32)
            {
              goto LABEL_23;
            }
          }

          v22 = datac_RequestBlock(a1[1], 1039, (v28 + 1), &v87);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          v26 = *(v87 + 8);
          v33 = *(v87 + 16);
          if (*(v87 + 16))
          {
            v34 = 0;
            v35 = v33 << 6;
            v36 = v26 + 64;
            while (*(v36 - 8) < *(v27 + 8))
            {
              ++v34;
              v36 += 16;
              v35 -= 64;
              if (!v35)
              {
                v34 = *(v87 + 16);
                v83 = *(v87 + 16);
                goto LABEL_22;
              }
            }

            v83 = v34;
            if (v33 != v34)
            {
              memcpy(v36, v36 - 16, v35);
            }
          }

          else
          {
            v34 = v83;
          }

LABEL_22:
          v37 = &v26[64 * v34];
          v38 = *v27;
          v39 = v27[1];
          v40 = v27[3];
          *(v37 + 2) = v27[2];
          *(v37 + 3) = v40;
          *v37 = v38;
          *(v37 + 1) = v39;
          v25 = v87;
          ++*(v87 + 16);
        }

LABEL_23:
        ++v23;
      }

      while (v23 < *(v88 + 16));
    }

    if (v81 == 1 && v85)
    {
      if (v85 >= 0x400)
      {
        v41 = 1024;
      }

      else
      {
        v41 = v85;
      }

      v42 = heap_Calloc(*(*a1 + 8), 1, (v41 + 1));
      if (!v42)
      {
        return 2369789962;
      }

      v43 = v42;
      strncpy(v42, __src, v41)[v41] = 0;
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "(Txt) (text processed) (tag=%d) len=%d (UTF8 *) %s", v44, v45, v46, 1011);
      heap_Free(*(*a1 + 8), v43);
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "(Mrk) (%d markers processed)", v47, v48, v49, v82);
    }

    v50 = *(v90 + 2);
    v51 = (v78 + v50 * v77);
    if (v51)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "consume TXT Stream cTextBytesRead=%d", v19, v20, v21, (v78 + v50 * v77));
      v22 = (*(a1[2] + 96))(a1[3], a1[4], v51);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v52 = v78 + (v77 + v75) * v50 + *(a1 + 20);
      *(a1 + 19) += v51;
      *(a1 + 20) = v52;
    }

    if (!v82)
    {
      goto LABEL_40;
    }

    v53 = (v82 << 6);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "MRK Stream cMarkerBytesProcessed=%d", v19, v20, v21, v53);
    if (*(a1 + 27) >= 0x40u)
    {
      v57 = 0;
      v58 = 0;
      do
      {
        v59 = (a1[12] + (v58 << 6));
        v73 = v59[8];
        v74 = v59[9];
        v71 = v59[6];
        v72 = v59[7];
        v69 = v59[5];
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "CONSUMED pInMrk[%d].tag %d %d,%d %d,%d", v54, v55, v56, v57);
        v57 = ++v58;
      }

      while (v58 < *(a1 + 27) >> 6);
    }

    v22 = (*(a1[2] + 96))(a1[5], a1[6], v53);
    if ((v22 & 0x80000000) == 0)
    {
      *(a1 + 108) = vadd_s32(*(a1 + 108), vdup_n_s32(v53));
LABEL_40:
      if (v76 == 1 || *(a1 + 20) > *(a1 + 48))
      {
        v60 = a9[1];
        v86[0] = *a9;
        v86[1] = v60;
        v61 = a9[3];
        v86[2] = a9[2];
        v86[3] = v61;
        v22 = sentpar_loc_SavePersistentData(a1, v79, v80, v86);
        if ((v22 & 0x80000000) == 0)
        {
          if (v76 == 1)
          {
            v65 = "!! bEndOnVoiceSwitch - RESET";
          }

          else
          {
            v65 = "!! cSTREAMTextBytesProcessed %d > pSentPar->cReadDirectSize %d - RESET";
            v68 = *(a1 + 20);
            v70 = *(a1 + 48);
          }

          log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, v65, v62, v63, v64, v68);
          *(a1 + 46) = 0;
          a1[7] = 0;
          a1[8] = 0;
          *(a1 + 84) = 0;
          *(a1 + 76) = 0;
          a1[12] = 0;
          a1[13] = 0;
          *(a1 + 28) = 0;
        }
      }
    }
  }

  return v22;
}

uint64_t sentpar_loc_SavePersistentData(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  v24 = 0;
  v8 = sentpar_loc_SetReadoutMarkersAsParameters(a1);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_posrefoffset", a2);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_refreset", a3);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = *(*a1 + 40);
  if (a3)
  {
    v8 = paramc_ParamSetUInt(v9, "pp_sentpar_refreset_mrk_tag", a4[5]);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_refreset_mrk_posref", a4[6]);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v10 = *(*a1 + 40);
    v11 = a4[7];
  }

  else
  {
    v8 = paramc_ParamSetUInt(v9, "pp_sentpar_refreset_mrk_tag", 0);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_refreset_mrk_posref", 0);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v10 = *(*a1 + 40);
    v11 = 0;
  }

  v8 = paramc_ParamSetUInt(v10, "pp_sentpar_refreset_mrk_lenref", v11);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v15 = datac_RequestBlock(*(a1 + 8), 1011, 1u, &v24);
  if ((v15 & 0x80000000) == 0 && *(v24 + 16))
  {
    v16 = *(v24 + 8);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    *(a1 + 168) = v16[3];
    *(a1 + 152) = v19;
    *(a1 + 136) = v18;
    *(a1 + 120) = v17;
    v22 = *(a1 + 152);
    v23 = *(a1 + 156);
    v21 = *(a1 + 148);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "STORE lastOutSyncMrk %d,%d %d,%d", v12, v13, v14, *(a1 + 144));
  }

  return v15;
}

uint64_t sentpar_loc_FilterSyncMarkers(uint64_t a1)
{
  v2 = 0;
  result = datac_RequestBlock(a1, 1021, 1u, &v2);
  if ((result & 0x80000000) == 0)
  {
    return marker_loc_FilterSyncMarkers(v2);
  }

  return result;
}

uint64_t sentpar_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = 0;
  v32 = 0;
  v5 = 2369789952;
  if (!a1)
  {
    return 2369789959;
  }

  v33 = 0;
  Object = (*(*(a1 + 16) + 136))(a2, a3, &v33);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "start sentpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1020, "start sentpar_WriteTextAndMarkers()");
  Object = datac_RequestBlock(*(a1 + 8), 1020, 1u, &v32);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  v12 = *(v32 + 16);
  if (*(v32 + 16))
  {
    Object = (*(*(a1 + 16) + 104))(a2, a3, *(v32 + 8), *(v32 + 2) * v12);
    if ((Object & 0x80000000) != 0)
    {
      return Object;
    }

    if (!*(a1 + 240))
    {
      v30 = 0;
      Object = objc_GetObject(*(*a1 + 48), "CHARCOUNT", &v30);
      if ((Object & 0x80000000) != 0)
      {
        return Object;
      }

      (*(v30[1] + 56))(v30[2], v30[3], *(v32 + 8), *(v32 + 2) * *(v32 + 16));
      objc_ReleaseObject(*(*a1 + 48), "CHARCOUNT");
    }

    *(v32 + 16) = 0;
  }

  if ((datac_RequestBlock(*(a1 + 8), 1012, 1u, &v32) & 0x80000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v32 + 8);
  }

  Object = datac_RequestBlock(*(a1 + 8), 1021, 1u, &v31);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  v14 = *(v31 + 16);
  if (*(v31 + 16))
  {
    v15 = *(v31 + 8);
    if (*(v15 + 20) == 0x4000)
    {
      if (v12)
      {
        v16 = 0;
        v33 = *(v15 + 32) - v33;
      }

      else
      {
        v16 = marker_CheckForEmptyMarkers(v13, *(a1 + 188), v15, v14, *(a1 + 96), (*(a1 + 104) >> 6), (*(a1 + 108) >> 6));
        v14 = *(v31 + 16);
        v33 = *(v15 + 32) - v33;
        if (!v14)
        {
LABEL_32:
          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "at end(internal only)", 0, 0, 0);
          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "at end()", 1, 0, 0);
          v24 = v31;
          log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_writeMarkersToOutputStream(bNoSignificantMarkers=%d bTextOut=%d)", v25, v26, v27, v16);
          v28 = *(v24 + 16);
          if (!v12)
          {
            if (v28 == 1)
            {
              if (v16 == 1 || *(v15 + 20) == 0x4000)
              {
                return 0;
              }

              LOWORD(v28) = 1;
            }

            else if (v16 == 1)
            {
              return 0;
            }
          }

          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "markers output()", 1, v15, v28);
          Object = (*(*(a1 + 16) + 104))(a4, a5, v15, *(v24 + 16) << 6);
          if ((Object & 0x80000000) == 0)
          {
            return 0;
          }

          return Object;
        }
      }

      v17 = v14;
      v18 = (v15 + 32);
      do
      {
        *v18 -= v33;
        v18 += 16;
        --v17;
      }

      while (v17);
      v19 = 0;
      v20 = (v15 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v20 - 5)))
        {
          v21 = *v20;
          if (v13)
          {
            v22 = v21 == 0xFFFFFFFFLL;
          }

          else
          {
            v22 = 1;
          }

          v23 = v13 + v21;
          if (v22)
          {
            v23 = 0;
          }

          *v20 = v23;
        }

        ++v19;
        v20 += 8;
      }

      while (v19 < *(v31 + 16));
      goto LABEL_32;
    }
  }

  return v5;
}

uint64_t sentpar_IsTextElementAtEos(uint64_t a1)
{
  v3 = 0;
  if (!a1)
  {
    return 1;
  }

  v1 = 1;
  if ((datac_RequestBlock(*(a1 + 8), 1020, 1u, &v3) & 0x80000000) == 0)
  {
    return *(v3 + 20);
  }

  return v1;
}

uint64_t sentpar_ResetMarkerBlocks(uint64_t *a1)
{
  v11 = 0;
  if (!a1)
  {
    return 2369789959;
  }

  v2 = datac_RequestBlock(a1[1], 1021, 1u, &v11);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = v11;
  if (*(v11 + 16) >= 2u)
  {
    v4 = (*(v11 + 8) + 112);
    v5 = 1;
    do
    {
      if (*v4)
      {
        heap_Free(*(*a1 + 8), *v4);
        *v4 = 0;
        v3 = v11;
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < *(v3 + 16));
  }

  *(v3 + 16) = 0;
  v6 = datac_RequestBlock(a1[1], 1011, 1u, &v11);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v11;
    if (*(v11 + 16) >= 2u)
    {
      v8 = (*(v11 + 8) + 112);
      v9 = 1;
      do
      {
        if (*v8)
        {
          heap_Free(*(*a1 + 8), *v8);
          *v8 = 0;
          v7 = v11;
        }

        ++v9;
        v8 += 8;
      }

      while (v9 < *(v7 + 16));
    }

    *(v7 + 16) = 0;
  }

  return v6;
}

uint64_t sentpar_loc_ReadInputStreams(uint64_t a1)
{
  v2 = (a1 + 104);
  v3 = *(a1 + 104);
  v4 = (a1 + 68);
  v5 = *(a1 + 68);
  v6 = *(a1 + 76);
  v33 = 0;
  v34 = 0;
  v7 = (*(*(a1 + 16) + 144))(*(a1 + 24), *(a1 + 32), &v34 + 4, &v33 + 4);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v7 = (*(*(a1 + 16) + 144))(*(a1 + 40), *(a1 + 48), &v34, &v33);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (*(a1 + 236) == 1)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_ReadInputStreams()", v8, v9, v10, v32);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "TXT State fTxtEos=%d cTxtBytesRemaining=%d", v11, v12, v13, HIDWORD(v33));
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "MRK State fMrkEos=%d cMrkBytesRemaining=%d", v14, v15, v16, v33);
  }

  v7 = (*(*(a1 + 16) + 88))(*(a1 + 24), *(a1 + 32), a1 + 56, v4);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v17 = *(a1 + 68);
  *(a1 + 76) = 0;
  v21 = (*(*(a1 + 16) + 88))(*(a1 + 40), *(a1 + 48), a1 + 96, v2);
  if ((v21 & 0x80000000) == 0)
  {
    v22 = *(a1 + 104);
    *(a1 + 108) = 0;
    if (*(a1 + 236) == 1)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "After stream reads", v18, v19, v20, v32);
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "TXT cTextBytesInStream=%d  (%u characters)", v23, v24, v25, *(a1 + 68));
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "TXT cMarkerBytesInStream=%d (%u markers)", v26, v27, v28, *(a1 + 104));
    }

    if (*(a1 + 84) == 1)
    {
      if (v33 == 0x100000001)
      {
        v29 = *(*a1 + 32);
        v30 = "!![1](fTxtEos==1) && (fMrkEos==1) && (bBlockMoreInputRequest) - NO MORE TEXT SO BLOCK REQUESTS";
      }

      else
      {
        if (v5 == v6 || v5 - v6 != *v4 || v3 && v3 != *v2)
        {
          *(a1 + 84) = 0;
          return v21;
        }

        v29 = *(*a1 + 32);
        v30 = "!![2](bBlockMoreInputRequest) - NO MORE TEXT & MARKERS SO BLOCK REQUESTS";
      }

      log_OutText(v29, "PP_SENT_PARSER", 5, 0, v30, v18, v19, v20, v32);
      *(a1 + 88) = 1;
    }
  }

  return v21;
}

uint64_t sentpar_loc_SetUpTextBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v9 = *(a1 + 68) - *(a1 + 76);
  if (*(a1 + 236) == 1)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_SetUpTextBlock()", a6, a7, a8, v32);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input Stream State :", v10, v11, v12, v33);
    v13 = v9;
    v34 = *(a1 + 68);
    v35 = *(a1 + 76);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "cTextBytesAvailable=%d cTextBytesInStream=%d cTextBytesRead=%d", v14, v15, v16, v9);
  }

  else
  {
    v13 = (*(a1 + 68) - *(a1 + 76));
  }

  v17 = *(a1 + 8);
  if (v13)
  {
    v18 = datac_RequestBlock(v17, 1010, v9, &v36);
    if ((v18 & 0x80000000) == 0)
    {
      memcpy(*(v36 + 8), (*(a1 + 56) + *(a1 + 76)), v13);
      *(v36 + 16) = v9;
      if (*(a1 + 68) < 0x400u)
      {
        v29 = *(a1 + 56);
        __strncpy_chk();
        v37[*(a1 + 68)] = 0;
        v22 = *(*a1 + 32);
        v23 = "Input TXT Stream -%s-";
        v32 = v37;
      }

      else
      {
        v22 = *(*a1 + 32);
        v23 = "Input TXT Stream > PP_MAX_LOG_MESSAGE, skip trace";
      }

      log_OutText(v22, "PP_SENT_PARSER", 5, 0, v23, v19, v20, v21, v32);
      if (*(v36 + 16) < 0x400uLL)
      {
        __strncpy_chk();
        v37[*(v36 + 16)] = 0;
        v27 = *(*a1 + 32);
        v28 = "Input TXT        -%s-";
        v32 = v37;
      }

      else
      {
        v27 = *(*a1 + 32);
        v28 = "Input TXT > PP_MAX_LOG_MESSAGE, skip trace";
      }

      goto LABEL_14;
    }
  }

  else
  {
    v18 = datac_RequestBlock(v17, 1010, 1u, &v36);
    if ((v18 & 0x80000000) == 0)
    {
      *(v36 + 16) = 0;
      v27 = *(*a1 + 32);
      v28 = "Empty text block";
LABEL_14:
      log_OutText(v27, "PP_SENT_PARSER", 5, 0, v28, v24, v25, v26, v32);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t sentpar_loc_SetUpMarkerBlocks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v131 = *MEMORY[0x1E69E9840];
  v128 = 0;
  v129 = 0;
  v9 = *(a1 + 104);
  v10 = *(a1 + 108);
  v127 = 0;
  v11 = v9 - v10;
  v12 = (v9 - v10) >> 6;
  if (*(a1 + 236) == 1)
  {
    v125 = v9 - v10;
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_SetUpMarkerBlocks()", a6, a7, a8, v112);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input Stream State :", v13, v14, v15, v113);
    v16 = (v9 >> 6);
    v126 = v12;
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "numMarkersAvailable=%d numMarkersInStream=%d numMarkersInStreamRead=%d", v17, v18, v19, v12);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Markers in Input Stream", v20, v21, v22, v114);
    if (v16)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *(a1 + 96);
        if (*(v28 + v27 + 48))
        {
          v29 = strlen(*(v28 + v27 + 48));
          if ((v29 & 0xFFE0) != 0)
          {
            v30 = 31;
          }

          else
          {
            v30 = v29;
          }

          __strncpy_chk();
          v130[v30] = 0;
          v28 = *(a1 + 96);
        }

        else
        {
          v130[0] = 0;
        }

        v31 = "";
        if ((v10 >> 6) > v26)
        {
          v31 = "(CONSUMED)";
        }

        v32 = (v28 + v27);
        v124 = v32[14];
        v122 = v32[9];
        v123 = *v32;
        v120 = v32[7];
        v121 = v32[8];
        v116 = v32[5];
        v118 = v32[6];
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "%spInMrk[%d] %d %d,%d %d,%d INT=%d Ext=%d %s", v23, v24, v25, v31);
        v27 += 64;
        ++v26;
      }

      while (v16 << 6 != v27);
    }

    v117 = *(a1 + 152);
    v119 = *(a1 + 156);
    v115 = *(a1 + 148);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "lastOutSyncMrk %d,%d %d,%d", v23, v24, v25, *(a1 + 144));
    LODWORD(v12) = v126;
    v11 = v125;
  }

  if (v11 <= 0x3Fu)
  {
    if (!*(a1 + 140))
    {
      v71 = 2369792000;
      if (!*(a1 + 240))
      {
        log_OutPublic(*(*a1 + 32), "PP_SENT_PARSER", 1931, 0, a5, a6, a7, a8, v112);
      }

      goto LABEL_94;
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "no markers - use lastOutSyncMrk", a6, a7, a8, v112);
    v33 = datac_RequestBlock(*(a1 + 8), 1011, 0x40u, &v129);
    if ((v33 & 0x80000000) == 0)
    {
      v34 = v129;
      v35 = *(v129 + 8);
      v36 = *(a1 + 136);
      v37 = *(a1 + 168);
      v38 = *(a1 + 120);
      v35[2] = *(a1 + 152);
      v35[3] = v37;
      *v35 = v38;
      v35[1] = v36;
      v39 = 1;
      *v35 = 1;
LABEL_54:
      *(v34 + 16) = v39;
      goto LABEL_55;
    }

LABEL_46:
    v71 = v33;
    goto LABEL_94;
  }

  v33 = datac_RequestBlock(*(a1 + 8), 1011, v11 & 0xFFC0, &v129);
  if ((v33 & 0x80000000) != 0)
  {
    goto LABEL_46;
  }

  v40 = 0;
  v41 = 0;
  v35 = *(v129 + 8);
  v42 = (v10 >> 6);
  if (v12 <= 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = v12;
  }

  v44 = v42 << 6;
  do
  {
    v45 = &v35[v40 / 0x10];
    v46 = (*(a1 + 96) + v44 + v40);
    v47 = v46[2];
    v48 = v46[3];
    v49 = v46[1];
    *v45 = *v46;
    v45[1] = v49;
    v45[2] = v47;
    v45[3] = v48;
    *v45 = 0;
    hasNonConstCharPtrArg = marker_hasNonConstCharPtrArg(DWORD1(v35[v40 / 0x10 + 1]));
    v55 = *(a1 + 96) + v44 + v40;
    if (hasNonConstCharPtrArg)
    {
      v56 = *(v55 + 40);
      if (v56)
      {
        v57 = strlen(v56);
        LODWORD(v56) = 0;
        v41 += v57 + 1;
      }
    }

    else
    {
      LODWORD(v56) = *(v55 + 40);
    }

    DWORD2(v35[v40 / 0x10 + 2]) = v56;
    v58 = *(*(a1 + 96) + v44 + v40 + 48);
    if (v58)
    {
      v59 = strlen(v58);
      if (v59)
      {
        v60 = heap_Calloc(*(*a1 + 8), 1, (v59 + 1));
        *&v35[v40 / 0x10 + 3] = v60;
        if (!v60)
        {
          v71 = 2369789962;
          goto LABEL_94;
        }

        strcpy(v60, *(*(a1 + 96) + v44 + v40 + 48));
      }
    }

    v40 += 64;
  }

  while (v43 << 6 != v40);
  *(v129 + 16) = v12;
  if (v41)
  {
    v33 = datac_RequestBlock(*(a1 + 8), 1012, v41, &v128);
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

    v61 = 0;
    v62 = *(v128 + 8);
    v63 = v35 + 5;
    v64 = (v42 << 6) | 0x28;
    v65 = v35 + 5;
    do
    {
      v66 = *v65;
      v65 += 16;
      if (marker_hasNonConstCharPtrArg(v66) && *(*(a1 + 96) + v64))
      {
        v63[5] = v61;
        v67 = strlen(*(*(a1 + 96) + v64));
        memcpy((v62 + v61), *(*(a1 + 96) + v64), v67);
        *(v62 + strlen(*(*(a1 + 96) + v64)) + v61) = 0;
        v61 += strlen(*(*(a1 + 96) + v64)) + 1;
      }

      v64 += 64;
      v63 = v65;
      --v43;
    }

    while (v43);
    *(v128 + 16) = v61;
  }

  if (*(v35 + 5) != 0x4000)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "First Input Stream is not a SYNC marker, so clone it an make it a SYNC marker", v52, v53, v54, v112);
    memmove(v35 + 4, v35, *(v129 + 16) << 6);
    if (*(a1 + 140))
    {
      v72 = (a1 + 120);
    }

    else
    {
      v72 = v35 + 4;
    }

    v74 = v72[2];
    v73 = v72[3];
    v75 = v72[1];
    *v35 = *v72;
    v35[1] = v75;
    v35[2] = v74;
    v35[3] = v73;
    *(v35 + 5) = 0x4000;
    *v35 = 1;
    *(v35 + 7) = 0;
    *(v35 + 9) = 0;
    *(v35 + 5) = 0;
    v34 = v129;
    v39 = *(v129 + 16) + 1;
    goto LABEL_54;
  }

  if (*(a1 + 140))
  {
    if (*(v129 + 16) >= 2u && *(v35 + 24) < *(a1 + 152))
    {
      log_OutPublic(*(*a1 + 32), "PP_SENT_PARSER", 1932, "%s%d%s%d", v51, v52, v53, v54, "pMrk[1].posCur");
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "First Input Stream is a SYNC marker, but update using lastOutSyncMrk", v52, v53, v54, v112);
    v68 = *(a1 + 168);
    v69 = *(a1 + 152);
    v70 = *(a1 + 136);
    *v35 = *(a1 + 120);
    v35[1] = v70;
    v35[2] = v69;
    v35[3] = v68;
    *v35 = 0;
    *(v35 + 7) = 0;
    *(v35 + 9) = 0;
    *(v35 + 5) = 0;
  }

LABEL_55:
  v71 = datac_RequestBlock(*(a1 + 8), 1039, 1u, &v127);
  if ((v71 & 0x80000000) == 0)
  {
    v79 = *(v127 + 8);
    v80 = *(v127 + 16);
    if (*(v127 + 16))
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 32;
      do
      {
        if (*(v79 + v84) < *(v35 + 8))
        {
          v83 = v81;
          v82 = 1;
        }

        ++v81;
        v84 += 64;
      }

      while (v80 != v81);
      if (v82 == 1)
      {
        v85 = v83 + 1;
        LODWORD(v80) = v80 - v85;
        if (v80)
        {
          memmove(*(v127 + 8), (v79 + (v85 << 6)), v80 << 6);
          LOWORD(v80) = *(v127 + 16) - v85;
          *(v127 + 16) = v80;
        }

        else
        {
          *(v127 + 16) = 0;
        }
      }
    }

    if (*(a1 + 236) == 1)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Persistent Markers", v76, v77, v78, v112);
      if (!*(v127 + 16))
      {
        goto LABEL_94;
      }

      v89 = 0;
      v90 = (v79 + 36);
      do
      {
        v91 = *(v90 - 4);
        v92 = *(v90 - 3);
        v93 = *(v90 - 2);
        v94 = *(v90 - 1);
        v95 = *v90;
        v90 += 16;
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "pPersistMrk[%d] %d %d,%d %d,%d", v86, v87, v88, v89++);
        v80 = *(v127 + 16);
      }

      while (v89 < v80);
    }

    if (v80)
    {
      v71 = datac_RequestBlock(*(a1 + 8), 1011, ((*(v129 + 16) + v80) & 0x3FF) << 6, &v129);
      if ((v71 & 0x80000000) == 0)
      {
        if (*(v127 + 16))
        {
          v96 = 0;
          v97 = v129;
          v98 = *(v129 + 8);
          do
          {
            v99 = *(v97 + 16);
            v100 = (v79 + (v96 << 6));
            if (v99)
            {
              v101 = 0;
              v102 = 0;
              v103 = 0;
              v104 = (v98 + 40);
              while (*(v100 + 8) >= *(v104 - 2))
              {
                if (*(v104 - 5) == 7)
                {
                  v103 = !v103;
                  if (*v104 == 43)
                  {
                    v102 = v101;
                  }

                  else
                  {
                    v103 = 0;
                  }
                }

                ++v101;
                v104 += 16;
                if (v99 == v101)
                {
                  LOWORD(v101) = v99;
                  break;
                }
              }

              if (v103)
              {
                v105 = *(v98 + (v102 << 6) + 32);
                if (v99 - 1 != v102)
                {
                  v102 = v99;
                }

                if (*(v100 + 8) != v105)
                {
                  v102 = v101;
                }

                if (v99 == v101)
                {
                  LOWORD(v101) = v102;
                }
              }
            }

            else
            {
              LOWORD(v101) = 0;
            }

            if (v99 == v101)
            {
              v106 = (v98 + (v99 << 6));
            }

            else
            {
              v106 = (v98 + (v101 << 6));
              memmove(v106 + 4, v106, (v99 - v101) << 6);
            }

            v107 = *v100;
            v108 = v100[1];
            v109 = v100[3];
            v106[2] = v100[2];
            v106[3] = v109;
            *v106 = v107;
            v106[1] = v108;
            v97 = v129;
            ++*(v129 + 16);
            ++v96;
          }

          while (v96 < *(v127 + 16));
        }
      }
    }
  }

LABEL_94:
  v110 = *MEMORY[0x1E69E9840];
  return v71;
}

uint64_t pp_sent_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2369789953;
  }

  result = 0;
  *a2 = &IPPSentPar;
  return result;
}

uint64_t pp_sent_parser_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v20 = 0;
  v21 = 0;
  v5 = 2369789959;
  v19 = 0;
  if (a5 && (InitRsrcFunction(a3, a4, &v21) & 0x80000000) == 0)
  {
    v12 = v21;
    v13 = v21[4];
    if (v13)
    {
      log_OutText(v13, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ObjOpen", v9, v10, v11, v18);
      v12 = v21;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    v14 = heap_Alloc(v12[1], 104);
    if (v14)
    {
      v15 = v14;
      *(v14 + 96) = 0;
      *(v14 + 64) = 0u;
      *(v14 + 80) = 0u;
      *(v14 + 32) = 0u;
      *(v14 + 48) = 0u;
      *v14 = 0u;
      *(v14 + 16) = 0u;
      *v14 = a3;
      *(v14 + 8) = a4;
      Object = objc_GetObject(v21[6], "SYNTHSTREAM", &v20);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_13;
      }

      *(v15 + 16) = *(v20 + 8);
      *(v15 + 96) = 0;
      if ((paramc_ParamGetStr(v21[5], "clcpppipelinemode", &v19) & 0x80000000) == 0 && v19 && *v19)
      {
        *(v15 + 96) = 1;
      }

      Object = sentpar_ObjOpen(a3, a4, *(v15 + 16), (v15 + 88), *(v15 + 96));
      if ((Object & 0x80000000) != 0)
      {
LABEL_13:
        v5 = Object;
        pp_sent_parser_ObjClose(v15, 17557);
      }

      else
      {
        v5 = 0;
        *a5 = v15;
        *(a5 + 8) = 17557;
      }
    }

    else
    {
      return 2369789962;
    }
  }

  return v5;
}

uint64_t pp_sent_parser_ObjClose(_WORD **a1, int a2)
{
  v3 = 2369789959;
  v12 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v12) & 0x80000000) == 0)
  {
    v7 = *(v12 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ObjClose", v4, v5, v6, v11);
    }

    v8 = a1[11];
    if (v8)
    {
      sentpar_ObjClose(*a1, a1[1], v8);
    }

    v9 = v12;
    if (a1[2])
    {
      objc_ReleaseObject(*(v12 + 48), "SYNTHSTREAM");
      v9 = v12;
    }

    heap_Free(*(v9 + 8), a1);
    return 0;
  }

  return v3;
}

uint64_t pp_sent_parser_ObjReopen(_WORD **a1, int a2)
{
  v3 = 2369789959;
  v11 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v11) & 0x80000000) == 0)
  {
    v7 = *(v11 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ObjReopen", v4, v5, v6, v10);
    }

    v8 = a1[11];
    if (v8)
    {
      sentpar_ObjReopen(*a1, a1[1], v8);
    }

    return 0;
  }

  return v3;
}

uint64_t pp_sent_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v32 = 0;
  v7 = 2369789959;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v32) & 0x80000000) == 0)
  {
    v11 = *(v32 + 32);
    if (v11)
    {
      log_OutText(v11, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ProcessStart", v8, v9, v10, v31);
    }

    v12 = 0;
    v13 = a1 + 24;
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = (*(*(a1 + 16) + 64))(a3, a4, 212, szOUTPUT_STREAMS[v12], 0, 0, v13 + 16 * v12);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      v14 = 0;
      v12 = 1;
    }

    while ((v15 & 1) != 0);
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = *(a1 + 16);
      v20 = *(v19 + 64);
      if (v17)
      {
        break;
      }

      v17 = 1;
      v16 = v20(a3, a4, 212, szOUTPUT_STREAMS[v18], 0, 1, a1 + 56 + 16 * v18);
      v18 = 1;
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    v21 = (*(v19 + 168))();
    v16 = v20(a3, a4, 212, "application/x-realspeak-int-markers-pp;version=4.0", v21, 1, a1 + 72);
    if ((v16 & 0x80000000) != 0)
    {
LABEL_17:
      v7 = v16;
      goto LABEL_18;
    }

    v7 = sentpar_ProcessStart(v32, *(a1 + 88), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
    if ((v7 & 0x80000000) == 0)
    {
      return v7;
    }

LABEL_18:
    v22 = 0;
    v23 = 1;
    do
    {
      v24 = v23;
      v25 = (v13 + 16 * v22);
      if (*v25)
      {
        (*(*(a1 + 16) + 72))(*v25, v25[1]);
        *v25 = 0;
        *(v25 + 2) = 0;
      }

      v23 = 0;
      v22 = 1;
    }

    while ((v24 & 1) != 0);
    v26 = 0;
    v27 = 1;
    do
    {
      v28 = v27;
      v29 = (a1 + 56 + 16 * v26);
      if (*v29)
      {
        (*(*(a1 + 16) + 72))(*v29, v29[1]);
        *v29 = 0;
        *(v29 + 2) = 0;
      }

      v27 = 0;
      v26 = 1;
    }

    while ((v28 & 1) != 0);
  }

  return v7;
}

uint64_t pp_sent_parser_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2369789959;
  v38 = 0;
  v37 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1)
  {
    if (!*(a1 + 24))
    {
      return 2369789969;
    }

    if ((InitRsrcFunction(*a1, *(a1 + 8), &v38) & 0x80000000) == 0)
    {
      v12 = *(v38 + 32);
      if (v12)
      {
        log_OutText(v12, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_Process", v9, v10, v11, v36);
      }

      *a5 = 2;
      v13 = a1 + 56;
      v14 = sentpar_Process(*(a1 + 88), &v37, *(a1 + 72), *(a1 + 80), v8, v9, v10, v11);
      if ((v14 & 0x80000000) == 0)
      {
        if (v37 == 1)
        {
          v7 = paramc_ParamSetStr(*(v38 + 40), "ppmarkersetlang", "normal");
          *a5 = 3;
          v18 = *(v38 + 32);
          if (v18)
          {
            log_OutText(v18, "PP_SENT_PARSER", 4, 0, "Immediate Voice Switch!", v15, v16, v17, v36);
          }
        }

        else
        {
          v24 = sentpar_WriteTextAndMarkers(*(a1 + 88), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
          if ((v24 & 0x80000000) != 0)
          {
            v7 = v24;
          }

          else
          {
            v7 = sentpar_ResetMarkerBlocks(*(a1 + 88));
            if ((v7 & 0x80000000) == 0 && (*(a1 + 96) || sentpar_IsTextElementAtEos(*(a1 + 88))))
            {
              *a5 = 1;
              if (!*(a1 + 96))
              {
                v25 = 0;
                v26 = 1;
                do
                {
                  while (1)
                  {
                    v27 = v26;
                    v28 = (v13 + 16 * v25);
                    if (!*v28)
                    {
                      break;
                    }

                    v23 = (*(*(a1 + 16) + 72))(*v28, v28[1]);
                    v26 = 0;
                    *v28 = 0;
                    *(v28 + 2) = 0;
                    v25 = 1;
                    if ((v27 & (v23 >= 0)) == 0)
                    {
                      goto LABEL_41;
                    }
                  }

                  v26 = 0;
                  v25 = 1;
                }

                while ((v27 & 1) != 0);
LABEL_31:
                v7 = 0;
              }
            }
          }
        }

        goto LABEL_47;
      }

      v7 = v14;
      if ((v14 & 0x1FFF) == 0x800)
      {
        if (!*(a1 + 96))
        {
          *a5 = 0;
          if (*(a1 + 96))
          {
            v7 = v14;
          }

          else
          {
            v7 = 0;
          }

LABEL_47:
          v34 = *(v38 + 32);
          if (v34)
          {
            log_OutText(v34, "PP_SENT_PARSER", 4, 0, "Leaving pp_sent_parser_Process peResults=%d fRet=%d", v15, v16, v17, *a5);
          }

          return v7;
        }

        v7 = 0;
      }

      else
      {
        if ((v14 & 0x1FFF) == 0x17)
        {
          v19 = 0;
          v20 = 1;
          *a5 = 1;
          do
          {
            while (1)
            {
              v21 = v20;
              v22 = (v13 + 16 * v19);
              if (*v22)
              {
                break;
              }

              v20 = 0;
              v19 = 1;
              if ((v21 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            v23 = (*(*(a1 + 16) + 72))(*v22, v22[1]);
            v20 = 0;
            *v22 = 0;
            *(v22 + 2) = 0;
            v19 = 1;
          }

          while ((v21 & (v23 >= 0)) != 0);
LABEL_41:
          if (v23 < 0)
          {
            v7 = v23;
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_47;
        }

        v29 = 0;
        v30 = 1;
        do
        {
          while (1)
          {
            v31 = v30;
            v32 = (v13 + 16 * v29);
            if (!*v32)
            {
              break;
            }

            v33 = (*(*(a1 + 16) + 72))(*v32, v32[1]);
            v30 = 0;
            *v32 = 0;
            *(v32 + 2) = 0;
            v29 = 1;
            if ((v31 & (v33 >= 0)) == 0)
            {
              goto LABEL_39;
            }
          }

          v30 = 0;
          v29 = 1;
        }

        while ((v31 & 1) != 0);
      }

LABEL_39:
      *a5 = 1;
      goto LABEL_47;
    }
  }

  return v7;
}

uint64_t pp_sent_parser_ProcessStop(_WORD **a1, int a2)
{
  v3 = 2369789959;
  v20 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v20) & 0x80000000) == 0)
  {
    v7 = *(v20 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ProcessStop", v4, v5, v6, v19);
    }

    v8 = sentpar_ProcessEnd(a1[11], *a1, a1[1]);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = 0;
      v10 = 1;
      while (1)
      {
        v11 = v10;
        v12 = &a1[2 * v9 + 7];
        if (*v12)
        {
          v8 = (*(a1[2] + 9))(*v12, v12[1]);
          *v12 = 0;
          *(v12 + 2) = 0;
          if ((v8 & 0x80000000) != 0)
          {
            break;
          }
        }

        v10 = 0;
        v9 = 1;
        if ((v11 & 1) == 0)
        {
          v13 = 0;
          v14 = 1;
          do
          {
            while (1)
            {
              v15 = v14;
              v16 = &a1[2 * v13 + 3];
              if (*v16)
              {
                break;
              }

              v14 = 0;
              v13 = 1;
              if ((v15 & 1) == 0)
              {
                return 0;
              }
            }

            v17 = (*(a1[2] + 9))(*v16, v16[1]);
            v14 = 0;
            *v16 = 0;
            *(v16 + 2) = 0;
            v13 = 1;
          }

          while ((v15 & (v17 >= 0)) != 0);
          if (v17 < 0)
          {
            return v17;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return v8;
  }

  return v3;
}

uint64_t pp_word_parser_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  v5 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (!a1)
  {
    return v5;
  }

  v6 = *(a1 + 88);

  return wordpar_ResourceTypes(v6, a3);
}

uint64_t pp_word_parser_ResourceUnload(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (!a1)
  {
    return v7;
  }

  v8 = *(a1 + 88);

  return wordpar_ResourceUnload(v8, a3, a4);
}

uint64_t pp_word_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2370838529;
  }

  result = 0;
  *a2 = &IPPWordParser;
  return result;
}

uint64_t pp_word_parser_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  v22 = 0;
  v5 = 2370838535;
  v20 = 0;
  if (a5 && (InitRsrcFunction(a3, a4, &v22) & 0x80000000) == 0)
  {
    v12 = v22;
    v13 = v22[4];
    if (v13)
    {
      log_OutText(v13, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ObjOpen", v9, v10, v11, v19);
      v12 = v22;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    v14 = heap_Alloc(v12[1], 104);
    if (v14)
    {
      v15 = v14;
      *(v14 + 96) = 0;
      *(v14 + 64) = 0u;
      *(v14 + 80) = 0u;
      *(v14 + 32) = 0u;
      *(v14 + 48) = 0u;
      *v14 = 0u;
      *(v14 + 16) = 0u;
      *v14 = a3;
      *(v14 + 8) = a4;
      *(v14 + 96) = 0;
      if ((paramc_ParamGetStr(v22[5], "clcpppipelinemode", &v20) & 0x80000000) == 0 && v20 && *v20)
      {
        *(v15 + 96) = 1;
      }

      Object = objc_GetObject(v22[6], "SYNTHSTREAM", &v21);
      if ((Object & 0x80000000) != 0 || (v17 = *(v21 + 8), *(v15 + 16) = v17, Object = wordpar_ObjOpen(a3, a4, v17, (v15 + 88), *(v15 + 96)), (Object & 0x80000000) != 0))
      {
        v5 = Object;
        pp_word_parser_ObjClose(v15, 87327);
      }

      else
      {
        v5 = 0;
        *a5 = v15;
        *(a5 + 8) = 87327;
      }
    }

    else
    {
      return 2370838538;
    }
  }

  return v5;
}

uint64_t pp_word_parser_ObjClose(uint64_t a1, int a2)
{
  v3 = 2370838535;
  v12 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v12) & 0x80000000) == 0)
  {
    v7 = *(v12 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ObjClose", v4, v5, v6, v11);
    }

    v8 = *(a1 + 88);
    if (v8)
    {
      wordpar_ObjClose(v8);
    }

    v9 = v12;
    if (*(a1 + 16))
    {
      objc_ReleaseObject(*(v12 + 48), "SYNTHSTREAM");
      v9 = v12;
    }

    heap_Free(*(v9 + 8), a1);
    return 0;
  }

  return v3;
}

uint64_t pp_word_parser_ObjReopen(uint64_t a1, int a2)
{
  v3 = 2370838535;
  v12 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v12) & 0x80000000) == 0)
  {
    v7 = *(v12 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ObjReopen", v4, v5, v6, v11);
    }

    v8 = *(a1 + 88);
    if (v8 && (v9 = wordpar_ObjReopen(v8), (v9 & 0x80001FFF) == 0x8000000A))
    {
      v3 = v9;
      *(a1 + 88) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t pp_word_parser_ResourceLoad(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = 0;
  v13 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v20) & 0x80000000) == 0)
  {
    if (a3 && a7)
    {
      if (a4)
      {
        if (a5 || !a6)
        {
          return wordpar_ResourceLoad(*(a1 + 88), a3, a4, a5, a6, a7);
        }
      }

      else if (a5 && a6)
      {
        return wordpar_ResourceLoad(*(a1 + 88), a3, a4, a5, a6, a7);
      }
    }

    log_OutPublic(*(v20 + 32), "PP_WORD_PARSER", 1923, 0, v14, v15, v16, v17, v19);
  }

  return v13;
}

uint64_t pp_word_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v7 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1)
  {
    HIDWORD(v29) = 0;
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v30) & 0x80000000) == 0)
    {
      v11 = *(v30 + 32);
      if (v11)
      {
        log_OutText(v11, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ProcessStart", v8, v9, v10, v29);
      }

      WParserType = wordpar_GetWParserType(*(a1 + 88), &v29 + 1);
      if ((WParserType & 0x80000000) != 0)
      {
        return WParserType;
      }

      else
      {
        v13 = 0;
        v14 = a1 + 24;
        v15 = 1;
        do
        {
          v16 = v15;
          if (((*(*(a1 + 16) + 64))(a3, a4, 213, szINPUT_STREAMS[v13], 0, 0, v14 + 16 * v13) & 0x80000000) != 0)
          {
            goto LABEL_15;
          }

          v15 = 0;
          v13 = 1;
        }

        while ((v16 & 1) != 0);
        if (((*(*(a1 + 16) + 64))(a3, a4, 213, "text/plain;charset=utf-8", 0, 1, a1 + 56) & 0x80000000) != 0 || (v17 = *(a1 + 16), v18 = *(v17 + 64), v19 = (*(v17 + 152))(), (v18(a3, a4, 213, "application/x-realspeak-markers-pp;version=4.0", v19, 1, a1 + 72) & 0x80000000) != 0))
        {
LABEL_15:
          v20 = 0;
          v21 = 1;
          do
          {
            v22 = v21;
            v23 = (v14 + 16 * v20);
            if (*v23)
            {
              (*(*(a1 + 16) + 72))(*v23, v23[1]);
              *v23 = 0;
              *(v23 + 2) = 0;
            }

            v21 = 0;
            v20 = 1;
          }

          while ((v22 & 1) != 0);
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = (a1 + 56 + 16 * v24);
            if (*v27)
            {
              (*(*(a1 + 16) + 72))(*v27, v27[1]);
              *v27 = 0;
              *(v27 + 2) = 0;
            }

            v25 = 0;
            v24 = 1;
          }

          while ((v26 & 1) != 0);
          return 0;
        }

        WParserType = wordpar_ProcessStart(*(a1 + 88));
        if ((WParserType & 0x80000000) != 0)
        {
          return WParserType;
        }

        return 0;
      }
    }
  }

  return v7;
}

uint64_t pp_word_parser_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2370838535;
  v49 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v49) & 0x80000000) == 0)
  {
    v11 = v49;
    v12 = *(v49 + 32);
    if (v12)
    {
      log_OutText(v12, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_Process", v8, v9, v10, v46);
      v11 = v49;
    }

    *a5 = 1;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v48 = 0;
    v13 = (*(*(a1 + 16) + 88))(*(a1 + 24), *(a1 + 32), &v53, &v52 + 4);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v14 = HIDWORD(v52);
    v7 = (*(*(a1 + 16) + 144))(*(a1 + 40), *(a1 + 48), &v52, &v51);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    if (v52)
    {
      if (v52)
      {
        v13 = (*(*(a1 + 16) + 88))(*(a1 + 40), *(a1 + 48), &v48, &v51 + 4);
        if ((v13 & 0x80000000) != 0)
        {
          return v13;
        }

        v22 = HIDWORD(v51);
        v7 = wordpar_LoadFromStreamData(*(a1 + 88), v53, HIDWORD(v52), v48, HIDWORD(v51));
        LODWORD(v18) = 0;
LABEL_19:
        if ((v7 & 0x80000000) != 0)
        {
          return v7;
        }

        v23 = v49;
        v53 = 0;
        if ((v22 & 0x3FFFC0) != 0)
        {
          v47 = v22;
          v7 = 0;
          v24 = (v22 >> 6);
          v25 = (v48 + 40);
          while (1)
          {
            if (*(v25 - 5) == 200)
            {
              v26 = *v25;
              if (*v25 && *v26 && LH_stricmp(v26, "unset"))
              {
                if (LH_stricmp(*v25, "reset"))
                {
                  v27 = *v25;
                }

                else
                {
                  Str = paramc_ParamGetStr(*(v23 + 40), "shortfragmentforceclm_value_pipeline", &v53);
                  if (v53)
                  {
                    v31 = Str < 0;
                  }

                  else
                  {
                    v31 = 1;
                  }

                  if (v31)
                  {
                    v27 = "";
                  }

                  else
                  {
                    v27 = v53;
                  }
                }
              }

              else
              {
                v27 = "";
              }

              v28 = paramc_ParamSetStr(*(v23 + 40), "shortfragmentforceclm", v27);
              v7 = v28;
              if ((v28 & 0x80000000) == 0)
              {
                v29 = "Parameter markup \\!\\%s=%s\\ => set %s=%s";
LABEL_33:
                *v25;
                log_OutText(*(v23 + 32), "PP_WORD_PARSER", 4, 0, v29, v15, v16, v17, "shortfragmentforceclm");
                goto LABEL_34;
              }

              if ((v28 & 0x1FFF) == 0xF)
              {
                v7 = 0;
                v29 = "Parameter markup \\!\\%s=%s\\ => set %s=%s : failed, invalid parameter value";
                goto LABEL_33;
              }
            }

LABEL_34:
            v25 += 8;
            if (!--v24)
            {
              v22 = v47;
              v14 = v14;
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

LABEL_52:
              if (v18 == 1)
              {
                LODWORD(v7) = 0;
                v32 = 0;
                goto LABEL_54;
              }

              v34 = wordpar_Process(*(a1 + 88));
              if ((v34 & 0x1FFF) == 0xA)
              {
                v7 = v7;
              }

              else
              {
                v7 = v34;
              }

              if ((v7 & 0x80000000) != 0)
              {
                if ((v7 & 0x1FFF) == 0x800)
                {
                  *a5 = 0;
                  if (*(a1 + 96))
                  {
                    return v7;
                  }

                  else
                  {
                    return 0;
                  }
                }

                else if ((v7 & 0x1FFF) == 0x17)
                {
                  v36 = 0;
                  v37 = 1;
                  *a5 = 1;
                  do
                  {
                    while (1)
                    {
                      v38 = v37;
                      v39 = (a1 + 56 + 16 * v36);
                      if (*v39)
                      {
                        break;
                      }

                      v37 = 0;
                      v7 = 0;
                      v36 = 1;
                      if ((v38 & 1) == 0)
                      {
                        return v7;
                      }
                    }

                    v40 = (*(*(a1 + 16) + 72))(*v39, v39[1]);
                    v37 = 0;
                    *v39 = 0;
                    *(v39 + 2) = 0;
                    v36 = 1;
                  }

                  while ((v38 & (v40 >= 0)) != 0);
                  if (v40 < 0)
                  {
                    return v40;
                  }

                  else
                  {
                    return 0;
                  }
                }

                else
                {
                  v41 = 0;
                  v42 = 1;
                  do
                  {
                    while (1)
                    {
                      v43 = v42;
                      v44 = (a1 + 56 + 16 * v41);
                      if (!*v44)
                      {
                        break;
                      }

                      v45 = (*(*(a1 + 16) + 72))(*v44, v44[1]);
                      v42 = 0;
                      *v44 = 0;
                      *(v44 + 2) = 0;
                      v41 = 1;
                      if ((v43 & (v45 >= 0)) == 0)
                      {
                        goto LABEL_87;
                      }
                    }

                    v42 = 0;
                    v41 = 1;
                  }

                  while ((v43 & 1) != 0);
LABEL_87:
                  *a5 = 1;
                }

                return v7;
              }

              v32 = v34;
              if ((v34 & 0x1FFF) == 0xA || (v13 = wordpar_WriteTextAndMarkers(*(a1 + 88), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)), (v13 & 0x80000000) == 0))
              {
                v13 = wordpar_ResetData(*(a1 + 88));
                if ((v13 & 0x80000000) == 0)
                {
                  v13 = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32), v14);
                  if ((v13 & 0x80000000) == 0)
                  {
                    v7 = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48), v22);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

LABEL_54:
                    v33 = *(v49 + 32);
                    if (v33)
                    {
                      log_OutText(v33, "PP_WORD_PARSER", 4, 0, "Leaving pp_word_parser_Process", v15, v16, v17, v46);
                    }

                    if ((v32 & 0x1FFF) == 0xA)
                    {
                      return v32;
                    }

                    else
                    {
                      return v7;
                    }
                  }
                }
              }

              return v13;
            }
          }
        }

LABEL_51:
        LODWORD(v7) = 0;
        goto LABEL_52;
      }

      LODWORD(v18) = 0;
    }

    else
    {
      if (v51)
      {
        v18 = 0;
        v19 = 1;
        do
        {
          v20 = v19;
          v21 = (a1 + 56 + 16 * v18);
          if (*v21)
          {
            v7 = (*(*(a1 + 16) + 72))(*v21, v21[1]);
            *v21 = 0;
            *(v21 + 2) = 0;
          }

          v19 = 0;
          v18 = 1;
        }

        while ((v20 & 1) != 0);
        v22 = 0;
        goto LABEL_19;
      }

      v50 = 0;
      if ((paramc_ParamGetStr(*(v11 + 40), "clcpppipelinemode", &v50) & 0x80000000) != 0 || !v50 || !*v50)
      {
        *a5 = 0;
      }

      LODWORD(v18) = 1;
    }

    v22 = 0;
    goto LABEL_51;
  }

  return v7;
}

uint64_t pp_word_parser_ProcessStop(uint64_t a1, int a2)
{
  v3 = 2370838535;
  v20 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v20) & 0x80000000) == 0)
  {
    v7 = *(v20 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ProcessStop", v4, v5, v6, v19);
    }

    v8 = wordpar_ProcessEnd(*(a1 + 88));
    if ((v8 & 0x80000000) == 0)
    {
      v9 = 0;
      v10 = 1;
      while (1)
      {
        v11 = v10;
        v12 = (a1 + 56 + 16 * v9);
        if (*v12)
        {
          v8 = (*(*(a1 + 16) + 72))(*v12, v12[1]);
          *v12 = 0;
          *(v12 + 2) = 0;
          if ((v8 & 0x80000000) != 0)
          {
            break;
          }
        }

        v10 = 0;
        v9 = 1;
        if ((v11 & 1) == 0)
        {
          v13 = 0;
          v14 = 1;
          do
          {
            while (1)
            {
              v15 = v14;
              v16 = (a1 + 24 + 16 * v13);
              if (*v16)
              {
                break;
              }

              v14 = 0;
              v13 = 1;
              if ((v15 & 1) == 0)
              {
                return 0;
              }
            }

            v17 = (*(*(a1 + 16) + 72))(*v16, v16[1]);
            v14 = 0;
            *v16 = 0;
            *(v16 + 2) = 0;
            v13 = 1;
          }

          while ((v15 & (v17 >= 0)) != 0);
          if (v17 < 0)
          {
            return v17;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return v8;
  }

  return v3;
}