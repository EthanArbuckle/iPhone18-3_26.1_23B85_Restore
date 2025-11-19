unint64_t AccessibilityChecks(unint64_t a1)
{
  v2 = *(a1 + 744);
  ClearMemory((a1 + 4448), 0x148uLL);
  *(a1 + 4448) = v2;
  AccessibilityHelloMessage(a1, v3, v4, v5, v6, v7, v8, v9, v40);
  CheckScriptKeyboardAccessible(a1, a1, v10, v11, v12, v13, v14, v15);
  CheckForStyleAttribute(a1, a1);
  if ((*(a1 + 4448) & 0xFFFFFFFE) == 2)
  {
    DocType = FindDocType(a1);
    if (!DocType)
    {
      goto LABEL_12;
    }

    v22 = *(DocType + 76);
    if (v22)
    {
      v23 = a1 + 4584;
      v24 = *(DocType + 72);
      if (v24 >= v22)
      {
        v27 = 0;
      }

      else
      {
        v25 = 0;
        v26 = *(a1 + 104);
        do
        {
          *(v23 + v25) = *(*(v26 + 104) + v24 + v25);
          if (v25 == 127)
          {
            break;
          }

          ++v25;
        }

        while (v24 + v25 < *(DocType + 76));
        v27 = v25;
      }

      *(v23 + v27) = 0;
      if (!strstr((a1 + 4584), "HTML PUBLIC") && !strstr((a1 + 4584), "html PUBLIC"))
      {
LABEL_12:
        ReportAccessWarning(a1, a1, 1037, v17, v18, v19, v20, v21, v41);
      }
    }
  }

  if ((*(a1 + 4448) & 0xFFFFFFFE) == 2 && !CheckMissingStyleSheets(a1))
  {
    ReportAccessWarning(a1, a1, 1038, v28, v29, v30, v31, v32, v41);
  }

  CheckForListElements(a1, a1);

  return AccessibilityCheckNode(a1, a1, v33, v34, v35, v36, v37, v38);
}

uint64_t CheckScriptKeyboardAccessible(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(result + 4448) & 0xFFFFFFFE) == 2)
  {
    v9 = result;
    v10 = *(a2 + 40);
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0uLL;
      do
      {
        v14 = v10[1];
        if (v14)
        {
          v15 = *v14;
          if (v15 == 104)
          {
            ++v12;
          }

          if (v15 == 102)
          {
            ++v11;
          }

          v16 = vdupq_n_s32(v15);
          v13 = vsubq_s32(vsubq_s32(v13, vceqq_s32(v16, xmmword_299961B30)), vceqq_s32(v16, xmmword_299961B40));
        }

        v10 = *v10;
      }

      while (v10);
      v17.i64[0] = 0x100000001;
      v17.i64[1] = 0x100000001;
      v18 = vmovn_s32(vceqq_s32(v13, v17));
      v29 = v13;
      if (v18.i8[6])
      {
        result = ReportAccessWarning(result, a2, 1093, a4, a5, a6, a7, a8, v18.i8[0]);
        v18.i8[4] = v28;
        v13 = v29;
      }

      if (v18.i8[4])
      {
        v19.i64[0] = 0x100000001;
        v19.i64[1] = 0x100000001;
        result = ReportAccessWarning(v9, a2, 1094, a4, a5, a6, a7, a8, vmovn_s32(vceqq_s32(v13, v19)).i8[0]);
        v20.i8[2] = v27;
        v13 = v29;
      }

      else
      {
        v21.i64[0] = 0x100000001;
        v21.i64[1] = 0x100000001;
        v20 = vmovn_s32(vceqq_s32(v13, v21));
      }

      if (v20.i8[2])
      {
        v22.i64[0] = 0x100000001;
        v22.i64[1] = 0x100000001;
        v30 = vmovn_s32(vceqq_s32(v13, v22)).u8[0];
        result = ReportAccessWarning(v9, a2, 1095, a4, a5, a6, a7, a8, v26);
        v23 = v30;
      }

      else
      {
        v24.i64[0] = 0x100000001;
        v24.i64[1] = 0x100000001;
        v23 = vmovn_s32(vceqq_s32(v13, v24)).u8[0];
      }

      if (v23)
      {
        result = ReportAccessWarning(v9, a2, 1097, a4, a5, a6, a7, a8, v26);
      }

      if (v12 == 1)
      {
        result = ReportAccessWarning(v9, a2, 1096, a4, a5, a6, a7, a8, v26);
      }

      if (v11 == 1)
      {
        result = ReportAccessWarning(v9, a2, 1098, a4, a5, a6, a7, a8, v26);
      }
    }

    for (i = *(a2 + 24); i; i = *(i + 16))
    {
      result = CheckScriptKeyboardAccessible(v9, i);
    }
  }

  return result;
}

uint64_t CheckForStyleAttribute(uint64_t result, uint64_t a2)
{
  v3 = result;
  if ((*(result + 4448) - 4) >= 0xFFFFFFFD)
  {
    result = AttrGetById(a2, 135);
    if (result)
    {
      v4 = *(result + 48);
      if (v4)
      {
        while (1)
        {
          result = *v4;
          if (!*v4)
          {
            break;
          }

          ++v4;
          if (!IsWhite(result))
          {
            result = ReportAccessWarning(v3, a2, 1067, v5, v6, v7, v8, v9, v11);
            break;
          }
        }
      }
    }
  }

  for (i = *(a2 + 24); i; i = *(i + 16))
  {
    result = CheckForStyleAttribute(v3, i);
  }

  return result;
}

uint64_t CheckMissingStyleSheets(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    while (1)
    {
      v2 = v1[7];
      if (v2)
      {
        v3 = *v2;
        if (v3 > 35)
        {
          result = 1;
          if (v3 == 36 || v3 == 62 || v3 == 101)
          {
            return result;
          }
        }

        else if (v3 == 10)
        {
          v4 = 0;
          goto LABEL_24;
        }
      }

      v4 = 1;
      v6 = v1[5];
      if (v6)
      {
        while (1)
        {
          v7 = v6[1];
          if (v7)
          {
            v8 = *v7;
            v4 = 1;
            if (v8 > 134)
            {
              if (v8 == 135 || v8 == 139 || v8 == 148)
              {
                return 1;
              }
            }

            else if (v8 == 116)
            {
              v9 = v6[6];
              if (v9)
              {
                v4 = tmbstrcasecmp(v9, "stylesheet") != 0;
              }
            }

            else if (v8 == 8 || v8 == 70)
            {
              return 1;
            }
          }

          else
          {
            v4 = 1;
          }

          if (v4)
          {
            v6 = *v6;
            if (v6)
            {
              continue;
            }
          }

          break;
        }
      }

LABEL_24:
      if (!v4)
      {
        return 1;
      }

      result = CheckMissingStyleSheets(v1);
      if (!result)
      {
        v1 = v1[2];
        if (v1)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

uint64_t CheckForListElements(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    v3 = *(a2 + 56);
    if (v3)
    {
      v4 = *v3;
      if (v4 == 115 || v4 == 76)
      {
        ++*(result + 4728);
      }

      else if (v4 == 61)
      {
        ++*(result + 4724);
      }
    }
  }

  for (i = *(a2 + 24); i; i = *(i + 16))
  {
    result = CheckForListElements(v2, i);
  }

  return result;
}

unint64_t AccessibilityCheckNode(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v235 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    result = nodeIsHeader(0);
    if (!result)
    {
      goto LABEL_166;
    }

    goto LABEL_38;
  }

  v10 = a2[7];
  if (!v10)
  {
    goto LABEL_37;
  }

  v11 = *v10;
  if (v11 <= 51)
  {
    if (v11 > 37)
    {
      if (v11 > 45)
      {
        if (v11 == 46)
        {
          result = CheckMetaData(result, a2, 0, a4, a5, a6, a7, a8);
          if (result || (*(v9 + 4448) & 0xFFFFFFFE) != 2)
          {
            goto LABEL_166;
          }

          v141 = v9;
          v142 = a2;
          v143 = 1128;
          goto LABEL_129;
        }

        if (v11 == 50)
        {
          result = CheckIFrame(result, a2, a3, a4, a5, a6, a7, a8, v233[0]);
          goto LABEL_166;
        }
      }

      else
      {
        if (v11 == 38)
        {
          result = CheckFrame(result, a2, a3, a4, a5, a6, a7, a8, v233[0]);
          goto LABEL_166;
        }

        if (v11 == 39)
        {
          result = CheckFrameSet(result, a2, a3, a4, a5, a6, a7, a8, v233[0]);
          goto LABEL_166;
        }
      }

      goto LABEL_37;
    }

    if (v11 > 6)
    {
      if (v11 == 7)
      {
        result = CheckArea(result, a2, a3, a4, a5, a6, a7, a8, v233[0]);
        goto LABEL_166;
      }

      if (v11 == 16)
      {
        result = CheckColorContrast(result, a2);
        goto LABEL_166;
      }

      goto LABEL_37;
    }

    if (v11 != 1)
    {
      if (v11 == 6)
      {
        CheckDeprecated(result, a2, a3, a4, a5, a6, a7, a8, v233[0]);
        ProgrammaticObjects(v9, a2, v12, v13, v14, v15, v16, v17, v233[0]);
        DynamicContent(v9, a2, v18, v19, v20, v21, v22, v23, v233[0]);
        AccessibleCompatible(v9, a2, v24, v25, v26, v27, v28, v29, v233[0]);
        CheckFlicker(v9, a2, v30, v31, v32, v33, v34, v35);
        CheckColorAvailable(v9, a2, v36, v37, v38, v39, v40, v41, v233[0]);
        result = CheckApplet(v9, a2, v42, v43, v44, v45, v46, v47, v233[0]);
        goto LABEL_166;
      }

      goto LABEL_37;
    }

    v115 = a2[5];
    if (!v115)
    {
LABEL_130:
      if ((*(v9 + 4448) & 0xFFFFFFFE) == 2)
      {
        v144 = a2[3];
        if (!v144)
        {
          goto LABEL_134;
        }

        if (!*(v144 + 56))
        {
          v216 = v9 + 4584;
          v217 = *(v144 + 72);
          if (v217 >= *(v144 + 76))
          {
            v220 = 0;
          }

          else
          {
            v218 = 0;
            v219 = *(v9 + 104);
            do
            {
              *(v216 + v218) = *(*(v219 + 104) + v217 + v218);
              if (v218 == 127)
              {
                break;
              }

              ++v218;
            }

            while (v217 + v218 < *(v144 + 76));
            v220 = v218;
          }

          *(v216 + v220) = 0;
          v221 = 4584;
          while (1)
          {
            result = *(v9 + v221);
            if (!*(v9 + v221))
            {
              break;
            }

            ++v221;
            if (!IsWhite(result))
            {
              v222 = tmbstrcmp((v9 + 4584), "more");
              if (!tmbstrcmp((v9 + 4584), "click here"))
              {
                ReportAccessWarning(v9, a2, 1125, v223, v224, v225, v226, v227, v233[0]);
              }

              if (v222 && tmbstrlen((v9 + 4584)) <= 5)
              {
                ReportAccessWarning(v9, a2, 1122, v228, v229, v230, v231, v232, v233[0]);
              }

              result = tmbstrlen((v9 + 4584));
              if (result >= 0x3D)
              {
                result = ReportAccessWarning(v9, a2, 1124, a4, a5, a6, a7, a8, v233[0]);
              }

              break;
            }
          }
        }

        if (!a2[3])
        {
LABEL_134:
          v65 = v9;
          v66 = a2;
          v67 = 1123;
          goto LABEL_50;
        }
      }

      goto LABEL_166;
    }

    v116 = 0;
    v117 = result + 4584;
    while (1)
    {
      if ((*(v9 + 4448) - 4) >= 0xFFFFFFFD)
      {
        v118 = v115[1];
        if (v118)
        {
          if (*v118 == 58)
          {
            v119 = v115[6];
            if (v119)
            {
              while (1)
              {
                result = *v119;
                if (!*v119)
                {
                  break;
                }

                ++v119;
                if (!IsWhite(result))
                {
                  GetFileExtension(v115[6], v233);
                  if (IsValidMediaExtension(v115[6]))
                  {
                    ReportAccessWarning(v9, a2, 1026, v120, v121, v122, v123, v124, v233[0]);
                  }

                  result = tmbstrlen(v233);
                  if (result <= 5 && (result = tmbstrlen(v233)) != 0)
                  {
                    GetFileExtension(v115[6], v234);
                    v125 = 0;
                    while (1)
                    {
                      result = tmbstrcasecmp(v234, soundExtensions[v125]);
                      if (!result)
                      {
                        break;
                      }

                      if (++v125 == 6)
                      {
                        goto LABEL_95;
                      }
                    }

                    v129 = soundExtErrCodes[v125];
                    v130 = a2[2];
                    if (v130 && !*(v130 + 56))
                    {
                      v131 = *(v130 + 72);
                      if (v131 >= *(v130 + 76))
                      {
                        v134 = 0;
                      }

                      else
                      {
                        v132 = 0;
                        v133 = *(v9 + 104);
                        do
                        {
                          *(v117 + v132) = *(*(v133 + 104) + v131 + v132);
                          if (v132 == 127)
                          {
                            break;
                          }

                          ++v132;
                        }

                        while (v131 + v132 < *(v130 + 76));
                        v134 = v132;
                      }

                      *(v117 + v134) = 0;
                      v135 = (v9 + 4584);
                      while (1)
                      {
                        result = *v135;
                        if (!*v135)
                        {
                          break;
                        }

                        result = IsWhite(result);
                        ++v135;
                        v126 = 1;
                        if (!result)
                        {
                          goto LABEL_96;
                        }
                      }
                    }

                    if (v116)
                    {
                      v126 = 1;
                    }

                    else
                    {
                      result = ReportAccessWarning(v9, a2, v129, a4, a5, a6, a7, a8, v233[0]);
                      v126 = 0;
                    }
                  }

                  else
                  {
LABEL_95:
                    v126 = v116;
                  }

LABEL_96:
                  v116 = v126;
                  break;
                }
              }
            }
          }
        }
      }

      if ((*(v9 + 4448) & 0xFFFFFFFE) != 2)
      {
        goto LABEL_107;
      }

      v127 = v115[1];
      if (!v127)
      {
        goto LABEL_107;
      }

      if (*v127 != 138)
      {
        goto LABEL_107;
      }

      result = v115[6];
      if (!result)
      {
        goto LABEL_107;
      }

      if (tmbstrcasecmp(result, "_new"))
      {
        result = v115[6];
        if (!result)
        {
          goto LABEL_107;
        }

        result = tmbstrcasecmp(result, "_blank");
        if (result)
        {
          goto LABEL_107;
        }

        v128 = 1100;
      }

      else
      {
        v128 = 1099;
      }

      result = ReportAccessWarning(v9, a2, v128, a4, a5, a6, a7, a8, v233[0]);
LABEL_107:
      v115 = *v115;
      if (!v115)
      {
        goto LABEL_130;
      }
    }
  }

  if (v11 > 74)
  {
    if (v11 <= 91)
    {
      if (v11 == 75)
      {
        ProgrammaticObjects(result, a2, a3, a4, a5, a6, a7, a8, v233[0]);
        DynamicContent(v9, a2, v175, v176, v177, v178, v179, v180, v233[0]);
        AccessibleCompatible(v9, a2, v181, v182, v183, v184, v185, v186, v233[0]);
        CheckFlicker(v9, a2, v187, v188, v189, v190, v191, v192);
        CheckColorAvailable(v9, a2, v193, v194, v195, v196, v197, v198, v233[0]);
        result = CheckObject(v9, a2, v199, v200, v201, v202, v203, v204, v233[0]);
        goto LABEL_166;
      }

      if (v11 != 82)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v11 == 92)
      {
        DynamicContent(result, a2, a3, a4, a5, a6, a7, a8, v233[0]);
        ProgrammaticObjects(v9, a2, v145, v146, v147, v148, v149, v150, v233[0]);
        AccessibleCompatible(v9, a2, v151, v152, v153, v154, v155, v156, v233[0]);
        CheckFlicker(v9, a2, v157, v158, v159, v160, v161, v162);
        CheckColorAvailable(v9, a2, v163, v164, v165, v166, v167, v168, v233[0]);
        result = CheckScriptAcc(v9, a2, v169, v170, v171, v172, v173, v174, v233[0]);
        goto LABEL_166;
      }

      if (v11 == 104)
      {
        CheckColorContrast(result, a2);
        result = CheckTable(v9, a2, v109, v110, v111, v112, v113, v114, v233[0]);
        goto LABEL_166;
      }

      if (v11 != 118)
      {
        goto LABEL_37;
      }
    }

    result = CheckASCII(result, a2, a3, a4, a5, a6, a7, a8, v233[0]);
    goto LABEL_166;
  }

  if (v11 > 57)
  {
    if (v11 == 58)
    {
      result = CheckLabel(result, a2, a3, a4, a5, a6, a7, a8, v233[0]);
      goto LABEL_166;
    }

    if (v11 == 64)
    {
      result = CheckMapLinks(result, a2);
      goto LABEL_166;
    }
  }

  else
  {
    if (v11 == 52)
    {
      CheckFlicker(result, a2, a3, a4, a5, a6, a7, a8);
      CheckColorAvailable(v9, a2, v97, v98, v99, v100, v101, v102, v233[0]);
      result = CheckImage(v9, a2, v103, v104, v105, v106, v107, v108, v233[0]);
      goto LABEL_166;
    }

    if (v11 == 53)
    {
      CheckColorAvailable(result, a2, a3, a4, a5, a6, a7, a8, v233[0]);
      CheckInputLabel(v9, a2, v48, v49, v50, v51, v52, v53, v233[0]);
      result = CheckInputAttributes(v9, a2, v54, v55, v56, v57, v58, v59, v233[0]);
      goto LABEL_166;
    }
  }

LABEL_37:
  result = nodeIsHeader(a2);
  if (result)
  {
LABEL_38:
    if ((*(v9 + 4448) & 0xFFFFFFFE) == 2)
    {
      v61 = a2[3];
      if (!v61 || *(v61 + 56))
      {
        goto LABEL_41;
      }

      v88 = v9 + 4584;
      v89 = *(v61 + 72);
      if (v89 >= *(v61 + 76))
      {
        v92 = 0;
      }

      else
      {
        v90 = 0;
        v91 = *(v9 + 104);
        do
        {
          *(v88 + v90) = *(*(v91 + 104) + v89 + v90);
          if (v90 == 127)
          {
            break;
          }

          ++v90;
        }

        while (v89 + v90 < *(v61 + 76));
        v92 = v90;
      }

      *(v88 + v92) = 0;
      if (tmbstrlen((v9 + 4584)))
      {
        v93 = 0;
        v94 = 1;
        v95 = 1;
        do
        {
          if (*(v88 + v93) == 32)
          {
            ++v95;
          }

          v93 = v94;
        }

        while (tmbstrlen((v9 + 4584)) > v94++);
        v62 = v95 < 0x15;
      }

      else
      {
LABEL_41:
        v62 = 1;
      }

      if (nodeIsHeader(a2))
      {
        result = nodeHeaderLevel(a2);
        v63 = result;
        v64 = a2;
        while (1)
        {
          v64 = *(v64 + 16);
          if (!v64)
          {
            break;
          }

          result = nodeHeaderLevel(v64);
          if (result >= v63)
          {
            if (result <= v63 + 1)
            {
              break;
            }

            goto LABEL_47;
          }
        }
      }

      else
      {
LABEL_47:
        result = ReportAccessWarning(v9, a2, 1039, a4, a5, a6, a7, a8, v233[0]);
      }

      if (!v62)
      {
        v65 = v9;
        v66 = a2;
        v67 = 1043;
LABEL_50:
        result = ReportAccessWarning(v65, v66, v67, a4, a5, a6, a7, a8, v233[0]);
        goto LABEL_166;
      }
    }

    goto LABEL_166;
  }

  v68 = a2[7];
  if (!v68)
  {
    goto LABEL_166;
  }

  v69 = *v68;
  if (v69 <= 64)
  {
    if (v69 <= 35)
    {
      if (v69 <= 19)
      {
        if (v69 != 10)
        {
          if (v69 == 14)
          {
            result = CheckBlink(v9, a2, v60, a4, a5, a6, a7, a8, v233[0]);
          }

          goto LABEL_166;
        }
      }

      else if (v69 != 20 && v69 != 29)
      {
        if (v69 == 34)
        {
          CheckEmbed(v9, a2, v60, a4, a5, a6, a7, a8, v233[0]);
          ProgrammaticObjects(v9, a2, v70, v71, v72, v73, v74, v75, v233[0]);
          AccessibleCompatible(v9, a2, v76, v77, v78, v79, v80, v81, v233[0]);
          result = CheckFlicker(v9, a2, v82, v83, v84, v85, v86, v87);
        }

        goto LABEL_166;
      }

      goto LABEL_165;
    }

    if (v69 > 54)
    {
      if (v69 == 55)
      {
        goto LABEL_165;
      }

      if (v69 != 61)
      {
        if (v69 == 62)
        {
          result = CheckLink(v9, a2, v60, a4, a5, a6, a7, a8, v233[0]);
        }

        goto LABEL_166;
      }

      goto LABEL_146;
    }

    if (v69 == 36)
    {
      goto LABEL_165;
    }

    if (v69 != 48 || *(v9 + 4448) != 3)
    {
      goto LABEL_166;
    }

    v205 = AttrGetById(a2, 65);
    if (v205)
    {
      v206 = v205[6];
      if (v206)
      {
        while (*v206)
        {
          result = IsWhite(*v206++);
          if (!result)
          {
            goto LABEL_166;
          }
        }
      }

      v141 = v9;
      v142 = a2;
      v143 = 1049;
    }

    else
    {
      v141 = v9;
      v142 = a2;
      v143 = 1048;
    }

LABEL_129:
    result = ReportAccessWarning(v141, v142, v143, v136, v137, v138, v139, v140, v233[0]);
    goto LABEL_166;
  }

  if (v69 > 98)
  {
    if (v69 > 108)
    {
      if (v69 == 109)
      {
        result = CheckTH(v9, a2, v60, a4, a5, a6, a7, a8, v233[0]);
        goto LABEL_166;
      }

      if (v69 == 114)
      {
        goto LABEL_165;
      }

      if (v69 != 115)
      {
        goto LABEL_166;
      }

LABEL_146:
      result = CheckListUsage(v9, a2, v60, a4, a5, a6, a7, a8, v233[0]);
      goto LABEL_166;
    }

    if (v69 != 99)
    {
      if (v69 == 101)
      {
        result = CheckColorContrast(v9, a2);
        if ((*(v9 + 4448) - 4) >= 0xFFFFFFFD)
        {
          v65 = v9;
          v66 = a2;
          v67 = 1066;
          goto LABEL_50;
        }
      }

      goto LABEL_166;
    }

LABEL_165:
    result = CheckDeprecated(v9, a2, v60, a4, a5, a6, a7, a8, v233[0]);
    goto LABEL_166;
  }

  if (v69 > 75)
  {
    if (v69 == 76)
    {
      goto LABEL_146;
    }

    if (v69 == 79)
    {
      if ((*(v9 + 4448) & 0xFFFFFFFE) == 2)
      {
        v209 = a2[3];
        if (v209)
        {
          v210 = *(v209 + 56);
          if (v210)
          {
            v211 = a2[3];
            while (*(v211 + 56))
            {
              v211 = *(v211 + 16);
              if (!v211)
              {
                if (*v210 == 100)
                {
                  result = ReportAccessWarning(v9, a2, 1040, a4, a5, a6, a7, a8, v233[0]);
                  v209 = a2[3];
                }

                if (!v209)
                {
                  goto LABEL_166;
                }

                v212 = *(v209 + 56);
                if (!v212)
                {
                  goto LABEL_166;
                }

                v213 = *v212;
                if (v213 == 114)
                {
                  result = ReportAccessWarning(v9, a2, 1042, a4, a5, a6, a7, a8, v233[0]);
                  v214 = a2[3];
                  if (!v214)
                  {
                    goto LABEL_166;
                  }

                  v215 = *(v214 + 56);
                  if (!v215)
                  {
                    goto LABEL_166;
                  }

                  v213 = *v215;
                }

                if (v213 != 33)
                {
                  goto LABEL_166;
                }

                v65 = v9;
                v66 = a2;
                v67 = 1041;
                goto LABEL_50;
              }
            }
          }
        }
      }

      goto LABEL_166;
    }

    if (v69 != 90)
    {
      goto LABEL_166;
    }

    goto LABEL_165;
  }

  if (v69 == 65)
  {
    result = CheckMarquee(v9, a2, v60, a4, a5, a6, a7, a8, v233[0]);
    goto LABEL_166;
  }

  if (v69 == 66)
  {
    goto LABEL_165;
  }

LABEL_166:
  for (i = a2[3]; i; i = *(i + 16))
  {
    result = AccessibilityCheckNode(v9, i);
  }

  v208 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t textFromOneNode(uint64_t a1, uint64_t a2)
{
  result = a1 + 4584;
  if (a2 && (v4 = *(a2 + 72), v4 < *(a2 + 76)))
  {
    v5 = 0;
    v6 = *(a1 + 104);
    do
    {
      *(result + v5) = *(*(v6 + 104) + v4 + v5);
      if (v5 == 127)
      {
        break;
      }

      ++v5;
    }

    while (v4 + v5 < *(a2 + 76));
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  *(result + v7) = 0;
  return result;
}

uint64_t CheckColorContrast(uint64_t result, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v30 = 255;
  v29 = 0xFF000000FFLL;
  if (*(result + 4448) == 3)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      v4 = result;
      v5 = 1;
      do
      {
        v6 = v3[1];
        if (v6)
        {
          if (*v6 == 13)
          {
            v7 = v3[6];
            if (v7)
            {
              while (1)
              {
                result = *v7;
                if (!*v7)
                {
                  break;
                }

                v7 = (v7 + 1);
                if (!IsWhite(result))
                {
                  result = GetRgb(v3[6], &v29);
                  v5 = result;
                  break;
                }
              }
            }
          }
        }

        v3 = *v3;
      }

      while (v3);
      if (v5)
      {
        v8 = *(a2 + 40);
        if (v8)
        {
          v26 = v29;
          v9 = v30;
          v10 = 274877907 * (299 * v29 + 587 * HIDWORD(v29) + 114 * v30);
          v11 = (v10 >> 38) + (v10 >> 63);
          do
          {
            v12 = v8[1];
            if (v12)
            {
              v13 = *v12;
              if (v13 > 138)
              {
                if (v13 == 139)
                {
                  v14 = 1033;
LABEL_24:
                  v15 = v8[6];
                  if (v15)
                  {
                    while (1)
                    {
                      result = *v15;
                      if (!*v15)
                      {
                        break;
                      }

                      v15 = (v15 + 1);
                      if (!IsWhite(result))
                      {
                        v28 = 0;
                        v27 = 0;
                        result = GetRgb(v8[6], &v27);
                        if (result)
                        {
                          v21 = vmul_s32(v27, 0x24B0000012BLL);
                          v22 = -274877907 * (vadd_s32(vdup_lane_s32(v21, 1), v21).u32[0] + 114 * v28);
                          v23 = (v22 >> 38) + (v22 >> 63) + v11;
                          if (v23 < 0)
                          {
                            v23 = -v23;
                          }

                          v24 = v9 - v28;
                          if (v9 - v28 < 0)
                          {
                            v24 = v28 - v9;
                          }

                          if (v23 < 0xB5 || vaba_s32(vdup_lane_s32(vabd_s32(v26, v27), 1), v26, v27).u32[0] + v24 <= 0x1F4)
                          {
                            result = ReportAccessWarning(v4, a2, v14, v16, v17, v18, v19, v20, v26.i8[0]);
                          }
                        }

                        goto LABEL_35;
                      }
                    }
                  }

                  goto LABEL_35;
                }

                if (v13 == 148)
                {
                  v14 = 1036;
                  goto LABEL_24;
                }
              }

              else
              {
                if (v13 == 8)
                {
                  v14 = 1035;
                  goto LABEL_24;
                }

                if (v13 == 70)
                {
                  v14 = 1034;
                  goto LABEL_24;
                }
              }
            }

LABEL_35:
            v8 = *v8;
          }

          while (v8);
        }
      }
    }
  }

  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t CheckMetaData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 4448) & 0xFFFFFFFE) != 2)
  {
    return a3;
  }

  v11 = a2[7];
  if (!v11)
  {
    goto LABEL_29;
  }

  if (*v11 != 67)
  {
    goto LABEL_29;
  }

  v12 = a2[5];
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  do
  {
    v16 = *(v12 + 8);
    if (!v16)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    if (v17 != 61)
    {
      goto LABEL_17;
    }

    v18 = *(v12 + 48);
    if (v18)
    {
      while (1)
      {
        v19 = *v18;
        if (!*v18)
        {
          break;
        }

        ++v18;
        if (!IsWhite(v19))
        {
          v20 = *(v12 + 48);
          if (v20 && !tmbstrcasecmp(v20, "refresh"))
          {
            ReportAccessWarning(a1, a2, 1086, a4, a5, a6, a7, a8, v40);
            v15 = 1;
          }

          v13 = 1;
          break;
        }
      }
    }

    v21 = *(v12 + 8);
    if (v21)
    {
      v17 = *v21;
LABEL_17:
      if (v17 == 35)
      {
        v22 = *(v12 + 48);
        if (v22)
        {
          while (1)
          {
            v23 = *v22;
            if (!*v22)
            {
              break;
            }

            ++v22;
            if (!IsWhite(v23))
            {
              if (!tmbstrncmp(*(v12 + 48), "http:", 5))
              {
                ReportAccessWarning(a1, a2, 1087, a4, a5, a6, a7, a8, v40);
                v14 = 1;
              }

              v13 = 1;
              break;
            }
          }
        }
      }
    }

LABEL_24:
    v12 = *v12;
  }

  while (v12);
  if (v14 | v15)
  {
    ReportAccessWarning(a1, a2, 1130, a4, a5, a6, a7, a8, v40);
    goto LABEL_28;
  }

  if (v13)
  {
LABEL_28:
    a3 = 1;
    goto LABEL_44;
  }

LABEL_29:
  if (a3)
  {
LABEL_44:
    v30 = a2[7];
    if (v30 && *v30 == 62)
    {
      v31 = AttrGetById(a2, 116);
      if (v31)
      {
        v32 = v31[6];
        if (v32)
        {
          if (tmbsubstr(v32, "stylesheet"))
          {
            ReportAccessWarning(a1, a2, 1129, v33, v34, v35, v36, v37, v40);
          }
        }
      }

      a3 = 1;
    }
  }

  else
  {
    v24 = a2[7];
    if (v24)
    {
      v25 = *v24;
      if (v25 == 111)
      {
        if (nodeIsText(a2[3]))
        {
          v28 = textFromOneNode(a1, a2[3]);
          while (1)
          {
            v29 = *v28;
            if (!*v28)
            {
              break;
            }

            ++v28;
            a3 = 1;
            if (!IsWhite(v29))
            {
              goto LABEL_44;
            }
          }
        }
      }

      else if (v25 == 4)
      {
        v26 = a2[3];
        if (v26)
        {
          v27 = *(v26 + 56);
          if (v27)
          {
            if (*v27 == 1)
            {
              goto LABEL_28;
            }
          }
        }
      }

      a3 = 0;
      goto LABEL_44;
    }

    a3 = 0;
  }

  for (i = a2[3]; i; i = *(i + 16))
  {
    a3 = CheckMetaData(a1, i, a3);
  }

  return a3;
}

uint64_t CheckFlicker(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x29EDCA608];
  if ((*(result + 4448) - 4) < 0xFFFFFFFD)
  {
    goto LABEL_20;
  }

  v9 = *(a2 + 56);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = result;
  v11 = *v9;
  if (v11 <= 51)
  {
    if (v11 == 6)
    {
      v14 = 1083;
    }

    else
    {
      if (v11 != 34)
      {
        goto LABEL_20;
      }

      v14 = 1082;
    }

LABEL_19:
    result = ReportAccessWarning(v10, a2, v14, a4, a5, a6, a7, a8, v16);
    goto LABEL_20;
  }

  switch(v11)
  {
    case '\\':
      v14 = 1080;
      goto LABEL_19;
    case 'K':
      v14 = 1081;
      goto LABEL_19;
    case '4':
      result = AttrGetById(a2, 132);
      if (result)
      {
        v12 = result;
        v13 = *(result + 48);
        if (v13)
        {
          while (1)
          {
            result = *v13;
            if (!*v13)
            {
              break;
            }

            ++v13;
            if (!IsWhite(result))
            {
              GetFileExtension(*(v12 + 48), v17);
              result = tmbstrcasecmp(v17, ".gif");
              if (result)
              {
                goto LABEL_20;
              }

              v14 = 1084;
              goto LABEL_19;
            }
          }
        }
      }

      break;
  }

LABEL_20:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t CheckColorAvailable(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) >= 0xFFFFFFFD)
  {
    v9 = *(a2 + 56);
    if (v9)
    {
      v10 = *v9;
      if (v10 <= 52)
      {
        if (v10 == 6)
        {
          v11 = 1029;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        }

        if (v10 == 52)
        {
          v11 = 1028;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        }
      }

      else
      {
        switch(v10)
        {
          case '5':
            v11 = 1032;
            return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
          case 'K':
            v11 = 1030;
            return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
          case '\\':
            v11 = 1031;
            return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        }
      }
    }
  }

  return result;
}

unint64_t CheckImage(unint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) < 0xFFFFFFFD)
  {
    return result;
  }

  v10 = result;
  v11 = a2[5];
  if (!v11)
  {
    v17 = 0;
    v32 = 0;
    v34 = 0;
    v35 = 0;
    v31 = 1;
    goto LABEL_60;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = v11[1];
    if (!v18)
    {
      goto LABEL_51;
    }

    v19 = *v18;
    if (v19 > 70)
    {
      switch(v19)
      {
        case 71:
          v22 = v11[6];
          if (v22)
          {
            while (1)
            {
              result = *v22;
              if (!*v22)
              {
                break;
              }

              v22 = (v22 + 1);
              if (!IsWhite(result))
              {
                result = tmbstrlen(v11[6]);
                if (result > 1)
                {
                  v17 = 1;
                }

                goto LABEL_51;
              }
            }
          }

          break;
        case 143:
          v23 = v11[6];
          if (v23)
          {
            while (1)
            {
              result = *v23;
              if (!*v23)
              {
                break;
              }

              result = IsWhite(result);
              v23 = (v23 + 1);
              if (!result)
              {
                *(v10 + 4732) = 1;
                goto LABEL_51;
              }
            }
          }

          break;
        case 150:
          v20 = v11[6];
          if (v20)
          {
            while (1)
            {
              result = *v20;
              if (!*v20)
              {
                break;
              }

              v20 = (v20 + 1);
              if (!IsWhite(result))
              {
                result = atoi(v11[6]);
                if (result < 30)
                {
                  v15 = 1;
                }

                if (result > 150)
                {
                  v14 = 1;
                }

                goto LABEL_51;
              }
            }
          }

          break;
        default:
          goto LABEL_41;
      }

      goto LABEL_51;
    }

    if (v19 == 9)
    {
      result = v11[6];
      if (!result)
      {
        goto LABEL_51;
      }

      v24 = tmbstrlen(result);
      v25 = v11[6];
      if (v24 <= 0x95 && !IsPlaceholderAlt(v11[6]) && !strstr(v25, "object"))
      {
        v26 = EndsWithBytes(v25);
        v25 = v11[6];
        if (!v26)
        {
          result = IsImage(v11[6]);
          if (!result)
          {
LABEL_50:
            v12 = 1;
            goto LABEL_51;
          }

          v25 = v11[6];
        }
      }

      if (tmbstrlen(v25) < 0x97)
      {
        if (IsImage(v11[6]))
        {
          v27 = v10;
          v28 = a2;
          v29 = 1002;
        }

        else
        {
          v30 = v11[6];
          if (IsPlaceholderAlt(v30))
          {
            v27 = v10;
            v28 = a2;
            v29 = 1004;
          }

          else
          {
            result = EndsWithBytes(v30);
            if (!result)
            {
              goto LABEL_51;
            }

            v27 = v10;
            v28 = a2;
            v29 = 1003;
          }
        }
      }

      else
      {
        v27 = v10;
        v28 = a2;
        v29 = 1005;
      }

      result = ReportAccessWarning(v27, v28, v29, a4, a5, a6, a7, a8, v55);
      goto LABEL_50;
    }

    if (v19 != 57)
    {
LABEL_41:
      if (v19 == 63)
      {
        v13 = 1;
      }

      goto LABEL_51;
    }

    v21 = v11[6];
    if (v21)
    {
      while (1)
      {
        result = *v21;
        if (!*v21)
        {
          break;
        }

        v21 = (v21 + 1);
        if (!IsWhite(result))
        {
          result = atoi(v11[6]);
          if (result < 30)
          {
            v16 = 1;
          }

          break;
        }
      }
    }

LABEL_51:
    v11 = *v11;
  }

  while (v11);
  v31 = v12 == 0;
  v32 = v16 == 1;
  v34 = v14 == 1 || v15 == 1;
  v35 = v13 == 1;
LABEL_60:
  v36 = a2[2];
  if (v36 && (v37 = v36[7]) != 0 && *v37 == 1)
  {
    v38 = v36[3];
    if (!v38 || *(v38 + 56))
    {
      goto LABEL_65;
    }

    v50 = v10 + 4584;
    v51 = *(v38 + 72);
    if (v51 >= *(v38 + 76))
    {
      v54 = 0;
    }

    else
    {
      v52 = 0;
      v53 = *(v10 + 104);
      do
      {
        *(v50 + v52) = *(*(v53 + 104) + v51 + v52);
        if (v52 == 127)
        {
          break;
        }

        ++v52;
      }

      while (v51 + v52 < *(v38 + 76));
      v54 = v52;
    }

    *(v50 + v54) = 0;
    result = tmbstrcmp((v10 + 4584), "d");
    if (result && (result = tmbstrcmp((v10 + 4584), "D"), result))
    {
LABEL_65:
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }
  }

  else
  {
    v39 = 0;
    v36 = a2;
  }

  v40 = v36[2];
  if (v40 && !v40[7])
  {
    v36 = v40[2];
    if (v36 && (v41 = v36[7]) != 0 && *v41 == 1)
    {
      v42 = v36[3];
      if (v42)
      {
        if (!*(v42 + 56))
        {
          v43 = textFromOneNode(v10, v42);
          result = tmbstrcmp(v43, "d");
          if (!result || (result = tmbstrcmp(v43, "D"), !result))
          {
            v39 = 1;
          }
        }
      }
    }

    else
    {
      v36 = v40;
    }
  }

  if (v31)
  {
    result = ReportAccessWarning(v10, v36, 1001, a4, a5, a6, a7, a8, v55);
  }

  if (v17 == 0 && v32 && v34)
  {
    goto LABEL_89;
  }

  if (!v17 && v39 == 1)
  {
    v44 = 1010;
    goto LABEL_87;
  }

  if (v17 == 1 && !v39)
  {
    v44 = 1009;
LABEL_87:
    result = ReportAccessWarning(v10, v36, v44, a4, a5, a6, a7, a8, v55);
  }

  if (v39 | v17)
  {
LABEL_89:
    if (v35)
    {
      goto LABEL_90;
    }
  }

  else
  {
    result = ReportAccessWarning(v10, v36, 1008, a4, a5, a6, a7, a8, v55);
    if (v35)
    {
LABEL_90:
      ReportAccessWarning(v10, v36, 1092, a4, a5, a6, a7, a8, v55);

      return ReportAccessWarning(v10, v36, 1025, v45, v46, v47, v48, v49, a9);
    }
  }

  return result;
}

uint64_t CheckMapLinks(uint64_t result, uint64_t a2)
{
  if (*(result + 4448) == 3)
  {
    v14 = v2;
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = result;
      do
      {
        v6 = *(v4 + 56);
        if (v6)
        {
          if (*v6 == 7)
          {
            result = AttrGetById(v4, 58);
            if (result)
            {
              v7 = result;
              v8 = *(result + 48);
              if (v8)
              {
                while (1)
                {
                  result = *v8;
                  if (!*v8)
                  {
                    break;
                  }

                  ++v8;
                  if (!IsWhite(result))
                  {
                    result = FindLinkA(v5, *(v7 + 48));
                    if (!result)
                    {
                      result = ReportAccessWarning(v5, a2, 1027, v9, v10, v11, v12, v13, v14);
                    }

                    break;
                  }
                }
              }
            }
          }
        }

        v4 = *(v4 + 16);
      }

      while (v4);
    }
  }

  return result;
}

char *CheckArea(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = result;
  v11 = *(a2 + 40);
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(v10 + 4448);
      if ((v13 - 4) >= 0xFFFFFFFD)
      {
        v14 = v11[1];
        if (v14)
        {
          if (*v14 == 9 && v11[6])
          {
            v12 = 1;
          }
        }
      }

      if ((v13 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_18;
      }

      v15 = v11[1];
      if (!v15)
      {
        goto LABEL_18;
      }

      if (*v15 != 138)
      {
        goto LABEL_18;
      }

      result = v11[6];
      if (!result)
      {
        goto LABEL_18;
      }

      if (tmbstrcasecmp(result, "_new"))
      {
        result = v11[6];
        if (!result)
        {
          goto LABEL_18;
        }

        result = tmbstrcasecmp(result, "_blank");
        if (result)
        {
          goto LABEL_18;
        }

        v16 = 1100;
      }

      else
      {
        v16 = 1099;
      }

      result = ReportAccessWarning(v10, a2, v16, a4, a5, a6, a7, a8, v19);
LABEL_18:
      v11 = *v11;
      if (!v11)
      {
        v17 = v12 == 0;
        goto LABEL_21;
      }
    }
  }

  v17 = 1;
LABEL_21:
  if ((*(v10 + 4448) - 1) <= 2 && v17)
  {

    return ReportAccessWarning(v10, a2, 1022, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t CheckDeprecated(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a2)
  {
    if ((*(result + 4448) & 0xFFFFFFFE) == 2)
    {
      v9 = *(a2 + 56);
      if (v9)
      {
        v10 = *v9;
        if (v10 > 54)
        {
          if (v10 <= 89)
          {
            if (v10 == 55)
            {
              v11 = 1111;
              return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
            }

            if (v10 == 66)
            {
              v11 = 1112;
              return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
            }
          }

          else
          {
            switch(v10)
            {
              case 'Z':
                v11 = 1113;
                return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
              case 'c':
                v11 = 1114;
                return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
              case 'r':
                v11 = 1115;
                return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
            }
          }
        }

        else if (v10 <= 19)
        {
          if (v10 == 6)
          {
            v11 = 1106;
            return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
          }

          if (v10 == 10)
          {
            v11 = 1107;
            return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
          }
        }

        else
        {
          switch(v10)
          {
            case 20:
              v11 = 1108;
              return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
            case 29:
              v11 = 1109;
              return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
            case 36:
              v11 = 1110;
              return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
          }
        }
      }
    }
  }

  return result;
}

uint64_t ProgrammaticObjects(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) >= 0xFFFFFFFD)
  {
    v9 = *(a2 + 56);
    if (v9)
    {
      v10 = *v9;
      if (v10 > 74)
      {
        if (v10 == 92)
        {
          v11 = 1072;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        }

        if (v10 == 75)
        {
          v11 = 1073;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        }
      }

      else
      {
        if (v10 == 6)
        {
          v11 = 1075;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        }

        if (v10 == 34)
        {
          v11 = 1074;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        }
      }
    }
  }

  return result;
}

uint64_t DynamicContent(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) >= 0xFFFFFFFD)
  {
    v9 = *(a2 + 56);
    if (v9)
    {
      v10 = *v9;
      switch(v10)
      {
        case 6:
          v11 = 1069;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        case 75:
          v11 = 1071;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        case 92:
          v11 = 1070;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
      }
    }
  }

  return result;
}

uint64_t AccessibleCompatible(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) >= 0xFFFFFFFD)
  {
    v9 = *(a2 + 56);
    if (v9)
    {
      v10 = *v9;
      if (v10 > 74)
      {
        if (v10 == 92)
        {
          v11 = 1088;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        }

        if (v10 == 75)
        {
          v11 = 1089;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        }
      }

      else
      {
        if (v10 == 6)
        {
          v11 = 1090;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        }

        if (v10 == 34)
        {
          v11 = 1091;
          return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
        }
      }
    }
  }

  return result;
}

uint64_t CheckApplet(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) >= 0xFFFFFFFD)
  {
    v10 = result;
    v11 = *(a2 + 40);
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = 0;
    do
    {
      v13 = v11[1];
      if (v13 && *v13 == 9 && v11[6])
      {
        v12 = 1;
      }

      v11 = *v11;
    }

    while (v11);
    if (!v12)
    {
LABEL_10:
      v14 = *(a2 + 24);
      if (v14)
      {
        if (*(v14 + 56))
        {
          v15 = 0;
        }

        else
        {
          v15 = (result + 4584);
          v16 = *(v14 + 72);
          if (v16 >= *(v14 + 76))
          {
            v19 = 0;
          }

          else
          {
            v17 = 0;
            v18 = *(result + 104);
            do
            {
              v15[v17] = *(*(v18 + 104) + v16 + v17);
              if (v17 == 127)
              {
                break;
              }

              ++v17;
            }

            while (v16 + v17 < *(v14 + 76));
            v19 = v17;
          }

          v15[v19] = 0;
          v14 = *(a2 + 24);
        }

        v20 = *(v14 + 24);
        if (v20 && !*(v20 + 56))
        {
          v15 = (result + 4584);
          v21 = *(v20 + 72);
          if (v21 >= *(v20 + 76))
          {
            v24 = 0;
          }

          else
          {
            v22 = 0;
            v23 = *(result + 104);
            do
            {
              v15[v22] = *(*(v23 + 104) + v21 + v22);
              if (v22 == 127)
              {
                break;
              }

              ++v22;
            }

            while (v21 + v22 < *(v20 + 76));
            v24 = v22;
          }

          v15[v24] = 0;
LABEL_33:
          while (*v15)
          {
            result = IsWhite(*v15++);
            if (!result)
            {
              return result;
            }
          }
        }

        else if (v15)
        {
          goto LABEL_33;
        }
      }

      return ReportAccessWarning(v10, a2, 1013, a4, a5, a6, a7, a8, a9);
    }
  }

  return result;
}

uint64_t CheckObject(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) < 0xFFFFFFFD)
  {
    return result;
  }

  v10 = result;
  result = *(a2 + 24);
  if (!result)
  {
    goto LABEL_16;
  }

  if (*(result + 80) == 4 || (v11 = *(result + 40)) == 0)
  {
LABEL_9:
    IsText = nodeIsText(result);
    v14 = *(a2 + 24);
    if (!IsText)
    {
      if (!nodeIsText(*(v14 + 24)))
      {
LABEL_16:

        return ReportAccessWarning(v10, a2, 1014, a4, a5, a6, a7, a8, a9);
      }

      v14 = *(*(a2 + 24) + 24);
    }

    v15 = textFromOneNode(v10, v14);
    while (*v15)
    {
      result = IsWhite(*v15++);
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_16;
  }

  while (1)
  {
    v12 = v11[1];
    if (v12)
    {
      if (*v12 == 9)
      {
        return result;
      }
    }

    v11 = *v11;
    if (!v11)
    {
      goto LABEL_9;
    }
  }
}

unint64_t CheckFrame(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ++*(result + 4712);
  if ((*(result + 4448) - 4) < 0xFFFFFFFD)
  {
    return result;
  }

  v10 = result;
  v11 = *(a2 + 40);
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = 0;
  do
  {
    v13 = v11[1];
    if (!v13)
    {
      goto LABEL_36;
    }

    v14 = *v13;
    switch(v14)
    {
      case 140:
        v17 = v11[6];
        if (v17)
        {
          while (1)
          {
            result = *v17;
            if (!*v17)
            {
              break;
            }

            result = IsWhite(result);
            ++v17;
            if (!result)
            {
              goto LABEL_35;
            }
          }
        }

        if (!v12)
        {
          v18 = v11[6];
          if (v18 && tmbstrlen(v18))
          {
            v19 = v11[6];
            if (v19)
            {
              while (*v19)
              {
                result = IsWhite(*v19);
                v12 = 0;
                ++v19;
                if (!result)
                {
                  goto LABEL_36;
                }
              }

              v23 = v11[6];
            }

            else
            {
              v23 = 0;
            }

            result = tmbstrlen(v23);
            if (!result)
            {
              v12 = 0;
              break;
            }

            v20 = v10;
            v21 = a2;
            v22 = 1118;
          }

          else
          {
            v20 = v10;
            v21 = a2;
            v22 = 1117;
          }

          result = ReportAccessWarning(v20, v21, v22, a4, a5, a6, a7, a8, v24);
LABEL_35:
          v12 = 1;
        }

        break;
      case 132:
        v16 = v11[6];
        if (v16)
        {
          while (1)
          {
            result = *v16;
            if (!*v16)
            {
              break;
            }

            ++v16;
            if (!IsWhite(result))
            {
              result = IsValidSrcExtension(v11[6]);
              if (!result)
              {
                result = ReportAccessWarning(v10, a2, 1068, a4, a5, a6, a7, a8, v24);
              }

              goto LABEL_36;
            }
          }
        }

        break;
      case 71:
        v15 = v11[6];
        if (v15)
        {
          while (1)
          {
            result = *v15;
            if (!*v15)
            {
              break;
            }

            ++v15;
            if (!IsWhite(result))
            {
              result = tmbstrlen(v11[6]);
              if (result >= 2)
              {
                ++*(v10 + 4716);
              }

              goto LABEL_36;
            }
          }
        }

        break;
    }

LABEL_36:
    v11 = *v11;
  }

  while (v11);
  if (!v12)
  {
LABEL_40:
    result = ReportAccessWarning(v10, a2, 1116, a4, a5, a6, a7, a8, v24);
  }

  if (*(v10 + 4712) == 3 && *(v10 + 4716) <= 2)
  {
    *(v10 + 4712) = 0;

    return ReportAccessWarning(v10, a2, 1021, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t CheckIFrame(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) >= 0xFFFFFFFD)
  {
    v10 = result;
    result = AttrGetById(a2, 132);
    if (result)
    {
      v11 = result;
      v12 = *(result + 48);
      if (v12)
      {
        while (1)
        {
          result = *v12;
          if (!*v12)
          {
            break;
          }

          ++v12;
          if (!IsWhite(result))
          {
            result = IsValidSrcExtension(*(v11 + 48));
            if (!result)
            {

              return ReportAccessWarning(v10, a2, 1068, v13, v14, v15, v16, v17, a9);
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CheckScriptAcc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) >= 0xFFFFFFFD)
  {
    v9 = *(a2 + 16);
    if (!v9)
    {
      return ReportAccessWarning(result, a2, 1023, a4, a5, a6, a7, a8, a9);
    }

    v10 = *(v9 + 56);
    if (!v10 || *v10 != 74)
    {
      return ReportAccessWarning(result, a2, 1023, a4, a5, a6, a7, a8, a9);
    }
  }

  return result;
}

uint64_t CheckTable(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = result;
  v11 = *(result + 4448);
  if (v11 == 3)
  {
    v12 = *(a2 + 40);
    if (v12)
    {
      v13 = 0;
      while (1)
      {
        v14 = v12[1];
        if (v14 && *v14 == 136)
        {
          v15 = v12[6];
          if (!v15)
          {
            goto LABEL_21;
          }

          while (1)
          {
            v16 = *v15;
            if (!*v15)
            {
              break;
            }

            ++v15;
            if (!IsWhite(v16))
            {
              v17 = v12[6];
              if (!v17)
              {
                goto LABEL_21;
              }

              if (tmbsubstr(v17, "summary"))
              {
                v18 = v12[6];
                if (!v18)
                {
                  goto LABEL_21;
                }

                if (tmbsubstr(v18, "table"))
                {
                  ReportAccessWarning(v10, a2, 1060, a4, a5, a6, a7, a8, v68);
                }
              }

              v13 = 1;
              break;
            }
          }

          v19 = v12[6];
          if (v19 && tmbstrlen(v19))
          {
            v20 = v12[6];
            if (v20)
            {
              while (*v20)
              {
                result = IsWhite(*v20++);
                if (!result)
                {
                  goto LABEL_23;
                }
              }

              v22 = v12[6];
            }

            else
            {
              v22 = 0;
            }

            result = tmbstrlen(v22);
            if (!result)
            {
              goto LABEL_23;
            }

            v21 = 1059;
          }

          else
          {
LABEL_21:
            v21 = 1058;
          }

          result = ReportAccessWarning(v10, a2, v21, a4, a5, a6, a7, a8, v68);
          v13 = 1;
        }

LABEL_23:
        v12 = *v12;
        if (!v12)
        {
          v23 = v13 == 0;
          goto LABEL_31;
        }
      }
    }

    v23 = 1;
LABEL_31:
    if (!*(a2 + 24))
    {
      v50 = v10;
      v51 = a2;
      v52 = 1050;
LABEL_112:

      return ReportAccessWarning(v50, v51, v52, a4, a5, a6, a7, a8, a9);
    }

    v11 = v10[1112];
  }

  else
  {
    v23 = 1;
  }

  if ((v11 - 4) >= 0xFFFFFFFD)
  {
    v24 = *(a2 + 24);
    if (v24)
    {
      v25 = 0;
      v26 = 1;
      v27 = 1;
      do
      {
        v28 = v24[7];
        if (v28)
        {
          if (*v28 == 112)
          {
            v29 = v24[3];
            if (v29)
            {
              v30 = v29[7];
              if (v30)
              {
                if (*v30 == 109)
                {
                  for (i = v29[5]; i; i = *i)
                  {
                    v32 = i[1];
                    if (v32)
                    {
                      if (*v32 == 120)
                      {
                        result = atoi(i[6]);
                        if (result > 1)
                        {
                          v27 = 0;
                        }
                      }
                    }
                  }
                }
              }

              if (!v25)
              {
                do
                {
                  v33 = v29[7];
                  if (v33)
                  {
                    if (*v33 == 109)
                    {
                      for (j = v29[5]; j; j = *j)
                      {
                        v35 = j[1];
                        if (v35)
                        {
                          if (*v35 == 33)
                          {
                            result = atoi(j[6]);
                            if (result > 1)
                            {
                              v26 = 0;
                            }
                          }
                        }
                      }
                    }
                  }

                  v29 = v29[2];
                }

                while (v29);
              }

              v25 = 1;
            }
          }
        }

        v24 = v24[2];
      }

      while (v24);
      if (v27)
      {
        if (v26)
        {
          goto LABEL_61;
        }
      }

      else
      {
        ReportAccessWarning(v10, a2, 1054, a4, a5, a6, a7, a8, v68);
        result = DisplayHTMLTableAlgorithm(v10, v53, v54, v55, v56, v57, v58, v59, v69);
        if (v26)
        {
          goto LABEL_61;
        }
      }

      ReportAccessWarning(v10, a2, 1053, a4, a5, a6, a7, a8, v68);
      result = DisplayHTMLTableAlgorithm(v10, v60, v61, v62, v63, v64, v65, v66, v70);
    }
  }

LABEL_61:
  if ((v10[1112] & 0xFFFFFFFE) == 2)
  {
    v36 = *(a2 + 24);
    if (v36)
    {
      v37 = *(v36 + 56);
      if (v37)
      {
        if (*v37 == 19 && !*(*(v36 + 24) + 56))
        {
          v67 = v10 + 1114;
          ClearMemory(v10 + 1114, 0x80uLL);
          v10[1113] = 0;
          getTextNode(v10, *(v36 + 24));
          while (*v67)
          {
            result = IsWhite(*v67++);
            if (!result)
            {
              goto LABEL_67;
            }
          }
        }
      }
    }

    result = ReportAccessWarning(v10, a2, 1061, a4, a5, a6, a7, a8, v68);
  }

LABEL_67:
  v38 = *(a2 + 24);
  if (v38)
  {
    v39 = *(v38 + 56);
    if (v39)
    {
      v40 = *v39;
      if (v40 == 112 || v40 == 19 && (v38 = *(v38 + 16)) != 0 && (v41 = *(v38 + 56)) != 0 && *v41 == 112)
      {
        result = CheckColumns(v10, v38);
      }
    }
  }

  if (!v10[1190])
  {
    v46 = *(a2 + 24);
    if (v46)
    {
      v47 = v46[7];
      if (v47)
      {
        v48 = *v47;
        if (v48 == 112 || v48 == 19 && (v46 = v46[2]) != 0 && (v49 = v46[7]) != 0 && *v49 == 112)
        {
          result = CheckRows(v10, v46);
        }
      }
    }
  }

  v42 = v10[1112];
  if (v42 == 3 && v23)
  {
    result = ReportAccessWarning(v10, a2, 1057, a4, a5, a6, a7, a8, v68);
    v42 = v10[1112];
  }

  if ((v42 & 0xFFFFFFFE) == 2)
  {
    v43 = *(a2 + 24);
    if (v43)
    {
      v44 = 0;
      do
      {
        v45 = *(v43 + 56);
        if (v45 && *v45 == 112)
        {
          ++v44;
        }

        v43 = *(v43 + 16);
      }

      while (v43);
      if (v44 == 1)
      {
        result = ReportAccessWarning(v10, a2, 1055, a4, a5, a6, a7, a8, v68);
      }
    }

    if (v10[1186])
    {
      result = ReportAccessWarning(v10, a2, 1056, a4, a5, a6, a7, a8, v68);
    }
  }

  if ((v10[1112] - 4) >= 0xFFFFFFFD && v10[1180] == 2)
  {
    if (!v10[1189])
    {
      if (v10[1190] || v10[1191] || v10[1192] || (result = ReportAccessWarning(v10, a2, 1050, a4, a5, a6, a7, a8, v68), !v10[1189]))
      {
        if (v10[1191])
        {
          result = ReportAccessWarning(v10, a2, 1052, a4, a5, a6, a7, a8, v68);
        }
      }
    }

    if (!v10[1190] && v10[1192])
    {
      v50 = v10;
      v51 = a2;
      v52 = 1051;
      goto LABEL_112;
    }
  }

  return result;
}

uint64_t CheckASCII(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = result;
  v11 = *(result + 4448);
  if ((v11 - 4) < 0xFFFFFFFD)
  {
    goto LABEL_31;
  }

  v12 = a2[3];
  if (!v12)
  {
    goto LABEL_31;
  }

  v14 = *(v12 + 72);
  v13 = *(v12 + 76);
  v15 = (v14 + 1);
  if (v15 >= v13)
  {
    goto LABEL_31;
  }

  v16 = *(*(result + 104) + 104);
  v17 = v16 + v15;
  v18 = -1;
  while (1)
  {
    v19 = *(v16 + v15);
    if (v19 == 10)
    {
      ++v18;
    }

    if (v15 < (v14 + 6))
    {
      break;
    }

    LODWORD(v20) = 0;
LABEL_14:
    v14 = v15;
    ++v17;
    if (v13 == ++v15)
    {
      goto LABEL_15;
    }
  }

  v20 = 0;
  while (*(v17 + v20) == v19)
  {
    if (++v20 == 5)
    {
      goto LABEL_19;
    }
  }

  if (v20 <= 4)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v18 <= 5 && v20 < 5)
  {
LABEL_31:
    v26 = 0;
    v29 = 0;
    v25 = 0;
    goto LABEL_32;
  }

LABEL_19:
  v22 = a2[1];
  if (v22 && (v23 = *(v22 + 8)) != 0 && (v24 = *(v23 + 40)) != 0)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = v24[1];
      if (v27)
      {
        if (*v27 == 58)
        {
          v28 = v24[6];
          if (v28)
          {
            while (1)
            {
              result = *v28;
              if (!*v28)
              {
                break;
              }

              result = IsWhite(result);
              ++v28;
              if (!result)
              {
                v26 = v24[6];
                ++v25;
                break;
              }
            }
          }
        }
      }

      v24 = *v24;
    }

    while (v24);
    v11 = *(v10 + 4448);
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v29 = 1;
LABEL_32:
  if ((v11 & 0xFFFFFFFE) != 2)
  {
    return result;
  }

  if (v25 != 1)
  {
    goto LABEL_47;
  }

  v30 = a2[2];
  if (!v30 || (v31 = *(v30 + 56)) == 0 || *v31 != 1 || (v32 = *(v30 + 40)) == 0)
  {
    v25 = 1;
    if (!v29)
    {
      return result;
    }

    goto LABEL_50;
  }

  v25 = 1;
  do
  {
    v33 = v32[1];
    if (v33)
    {
      if (*v33 == 79)
      {
        v34 = v32[6];
        if (v34)
        {
          while (1)
          {
            result = *v34;
            if (!*v34)
            {
              break;
            }

            v34 = (v34 + 1);
            if (!IsWhite(result))
            {
              result = strstr(v26, v32[6]);
              if (result)
              {
                ++v25;
              }

              break;
            }
          }
        }
      }
    }

    v32 = *v32;
  }

  while (v32);
LABEL_47:
  if (v29)
  {
LABEL_50:
    result = ReportAccessWarning(v10, a2, 1024, a4, a5, a6, a7, a8, v40);
    if (*(v10 + 4448) == 3 && v25 <= 1)
    {

      return ReportAccessWarning(v10, a2, 1131, v35, v36, v37, v38, v39, a9);
    }
  }

  return result;
}

uint64_t CheckLabel(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) & 0xFFFFFFFE) == 2)
  {
    v10 = result;
    result = AttrGetById(a2, 50);
    if (result)
    {
      v17 = *(result + 48);
      if (v17)
      {
        while (1)
        {
          result = *v17;
          if (!*v17)
          {
            break;
          }

          result = IsWhite(result);
          ++v17;
          if (!result)
          {
            *(v10 + 4748) = 1;
            break;
          }
        }
      }
    }

    v18 = *(v10 + 4772) + 1;
    *(v10 + 4772) = v18;
    if (v18 == 2)
    {
      *(v10 + 4772) = 0;

      return CheckFormControls(v10, a2, v11, v12, v13, v14, v15, v16, a9);
    }
  }

  return result;
}

uint64_t CheckInputLabel(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) & 0xFFFFFFFE) == 2)
  {
    v10 = result;
    for (i = *(a2 + 40); i; i = *i)
    {
      v12 = i[1];
      if (v12)
      {
        if (*v12 == 62)
        {
          v13 = i[6];
          if (v13)
          {
            while (1)
            {
              result = *v13;
              if (!*v13)
              {
                break;
              }

              result = IsWhite(result);
              ++v13;
              if (!result)
              {
                *(v10 + 4752) = 1;
                break;
              }
            }
          }
        }
      }
    }

    v14 = *(v10 + 4772) + 1;
    *(v10 + 4772) = v14;
    if (v14 == 2)
    {
      *(v10 + 4772) = 0;

      return CheckFormControls(v10, a2, a3, a4, a5, a6, a7, a8, a9);
    }
  }

  return result;
}

uint64_t CheckInputAttributes(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a2 + 40);
  if (!v9)
  {
    return result;
  }

  v11 = result;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v9[1];
    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = *v14;
    if (v15 != 142)
    {
      goto LABEL_14;
    }

    v16 = v9[6];
    if (v16)
    {
      while (1)
      {
        result = *v16;
        if (!*v16)
        {
          break;
        }

        result = IsWhite(result);
        ++v16;
        if (!result)
        {
          if ((*(v11 + 4448) - 4) >= 0xFFFFFFFD)
          {
            result = v9[6];
            if (result)
            {
              result = tmbstrcasecmp(result, "image");
              if (!result)
              {
                v12 = 1;
              }
            }
          }

          break;
        }
      }
    }

    v17 = v9[1];
    if (v17)
    {
      v15 = *v17;
LABEL_14:
      if (v15 == 9)
      {
        v18 = v9[6];
        if (v18)
        {
          while (1)
          {
            result = *v18;
            if (!*v18)
            {
              break;
            }

            result = IsWhite(result);
            ++v18;
            if (!result)
            {
              v13 = 1;
              break;
            }
          }
        }
      }
    }

LABEL_19:
    v9 = *v9;
  }

  while (v9);
  if (v12 && !v13)
  {

    return ReportAccessWarning(v11, a2, 1012, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t CheckFrameSet(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) < 0xFFFFFFFD)
  {
    return result;
  }

  v10 = result;
  v11 = *(a2 + 24);
  if (!v11)
  {
    goto LABEL_31;
  }

  v12 = 0;
  v13 = result + 4584;
  do
  {
    v14 = v11[7];
    if (!v14)
    {
      goto LABEL_28;
    }

    v15 = *v14;
    if (v15 == 71)
    {
      v16 = v11[3];
      if (v16)
      {
        v17 = *(v16 + 24);
        if (v17)
        {
          v18 = *(v17 + 56);
          if (v18)
          {
            if (*v18 == 79)
            {
              result = nodeIsText(*(v17 + 24));
              if (!result)
              {
                goto LABEL_27;
              }

              v19 = textFromOneNode(v10, *(v17 + 24));
              result = strstr(v19, "browser");
              if (!result)
              {
                goto LABEL_27;
              }

              v20 = v10;
              v21 = v17;
              v22 = 1078;
LABEL_26:
              result = ReportAccessWarning(v20, v21, v22, a4, a5, a6, a7, a8, v28);
LABEL_27:
              v12 = 1;
              goto LABEL_28;
            }
          }
        }

        v23 = *(v16 + 72);
        if (v23 >= *(v16 + 76))
        {
          v26 = 0;
        }

        else
        {
          v24 = 0;
          v25 = *(v10 + 104);
          do
          {
            *(v13 + v24) = *(*(v25 + 104) + v23 + v24);
            if (v24 == 127)
            {
              break;
            }

            ++v24;
          }

          while (v23 + v24 < *(v16 + 76));
          v26 = v24;
        }

        *(v13 + v26) = 0;
        v27 = 4584;
        while (*(v10 + v27))
        {
          result = IsWhite(*(v10 + v27++));
          if (!result)
          {
            goto LABEL_27;
          }
        }
      }

      v20 = v10;
      v21 = v11;
      v22 = 1077;
      goto LABEL_26;
    }

    if (v15 == 1)
    {
      result = ReportAccessWarning(v10, v11, 1079, a4, a5, a6, a7, a8, v28);
    }

LABEL_28:
    v11 = v11[2];
  }

  while (v11);
  if (v12)
  {
    return result;
  }

LABEL_31:

  return ReportAccessWarning(v10, a2, 1076, a4, a5, a6, a7, a8, a9);
}

uint64_t CheckBlink(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) & 0xFFFFFFFE) == 2)
  {
    v10 = result;
    result = nodeIsText(*(a2 + 24));
    if (result)
    {
      for (i = textFromOneNode(v10, *(a2 + 24)); ; ++i)
      {
        result = *i;
        if (!*i)
        {
          break;
        }

        if (!IsWhite(result))
        {

          return ReportAccessWarning(v10, a2, 1085, v12, v13, v14, v15, v16, a9);
        }
      }
    }
  }

  return result;
}

uint64_t CheckMarquee(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) & 0xFFFFFFFE) == 2)
  {
    v10 = result;
    result = nodeIsText(a2);
    if (result)
    {
      for (i = textFromOneNode(v10, *(a2 + 24)); ; ++i)
      {
        result = *i;
        if (!*i)
        {
          break;
        }

        if (!IsWhite(result))
        {

          return ReportAccessWarning(v10, a2, 1085, v12, v13, v14, v15, v16, a9);
        }
      }
    }
  }

  return result;
}

uint64_t CheckLink(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) < 0xFFFFFFFD)
  {
    return result;
  }

  v10 = *(a2 + 40);
  if (!v10)
  {
    return result;
  }

  v11 = result;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v10[1];
    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = *v14;
    if (v15 != 116)
    {
      goto LABEL_14;
    }

    v16 = v10[6];
    if (v16)
    {
      while (1)
      {
        result = *v16;
        if (!*v16)
        {
          break;
        }

        ++v16;
        if (!IsWhite(result))
        {
          result = v10[6];
          if (result)
          {
            result = tmbsubstr(result, "stylesheet");
            if (result)
            {
              v13 = 1;
            }
          }

          break;
        }
      }
    }

    v17 = v10[1];
    if (v17)
    {
      v15 = *v17;
LABEL_14:
      if (v15 == 142)
      {
        v18 = v10[6];
        if (v18)
        {
          while (1)
          {
            result = *v18;
            if (!*v18)
            {
              break;
            }

            result = IsWhite(result);
            ++v18;
            if (!result)
            {
              v12 = 1;
              break;
            }
          }
        }
      }
    }

LABEL_19:
    v10 = *v10;
  }

  while (v10);
  if (v13 && v12)
  {

    return ReportAccessWarning(v11, a2, 1065, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t CheckEmbed(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result + 4448) - 4) >= 0xFFFFFFFD)
  {
    v10 = result;
    result = AttrGetById(a2, 132);
    if (result)
    {
      v11 = result;
      v12 = *(result + 48);
      if (v12)
      {
        while (1)
        {
          result = *v12;
          if (!*v12)
          {
            break;
          }

          ++v12;
          if (!IsWhite(result))
          {
            result = IsValidMediaExtension(*(v11 + 48));
            if (result)
            {

              return ReportAccessWarning(v10, a2, 1026, v13, v14, v15, v16, v17, a9);
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

unint64_t CheckTH(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(result + 4448) != 3)
  {
    return result;
  }

  v10 = result;
  v11 = *(a2 + 40);
  if (!v11)
  {
    v23 = 1;
    goto LABEL_26;
  }

  v12 = 0;
  do
  {
    v13 = v11[1];
    if (!v13 || *v13 != 1)
    {
      goto LABEL_23;
    }

    v14 = v11[6];
    if (!v14)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v15 = *v14;
      if (!*v14)
      {
        break;
      }

      ++v14;
      if (!IsWhite(v15))
      {
        v12 = 1;
        break;
      }
    }

    v16 = v11[6];
    if (!v16 || !tmbstrlen(v16))
    {
LABEL_12:
      ReportAccessWarning(v10, a2, 1063, a4, a5, a6, a7, a8, v31);
      v12 = 1;
    }

    v17 = v11[6];
    if (!v17)
    {
      v22 = 0;
LABEL_21:
      if (tmbstrlen(v22))
      {
        ReportAccessWarning(v10, a2, 1064, a4, a5, a6, a7, a8, v31);
        v12 = 1;
      }

      goto LABEL_23;
    }

    v18 = *v17;
    if (!*v17)
    {
LABEL_19:
      v22 = v11[6];
      goto LABEL_21;
    }

    v19 = v17 + 1;
    while (1)
    {
      v20 = IsWhite(v18);
      if (!v20)
      {
        break;
      }

      v21 = *v19++;
      v18 = v21;
      if (!v21)
      {
        if (v20 != 1)
        {
          break;
        }

        goto LABEL_19;
      }
    }

LABEL_23:
    v11 = *v11;
  }

  while (v11);
  v23 = v12 == 0;
LABEL_26:
  v24 = textFromOneNode(v10, *(a2 + 24));
  for (i = v24; ; ++i)
  {
    result = *i;
    if (!*i)
    {
      break;
    }

    if (!IsWhite(result))
    {
      result = tmbstrlen(v24);
      if (result > 0xF && v23)
      {

        return ReportAccessWarning(v10, a2, 1062, v26, v27, v28, v29, v30, a9);
      }

      return result;
    }
  }

  return result;
}

uint64_t CheckListUsage(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a2)
  {
    if ((*(result + 4448) & 0xFFFFFFFE) == 2)
    {
      v9 = *(a2 + 56);
      if (v9)
      {
        v10 = *v9;
        switch(v10)
        {
          case '=':
            if (!*a2)
            {
              goto LABEL_24;
            }

            v14 = *(*a2 + 56);
            if (!v14)
            {
              goto LABEL_24;
            }

            v15 = *v14;
            if (v15 != 115 && v15 != 76)
            {
              goto LABEL_24;
            }

            if (*(a2 + 96))
            {
              if (v15 == 115)
              {
                v11 = 1044;
              }

              else
              {
                v11 = 1045;
              }

              return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
            }

            break;
          case 'L':
            v11 = 1045;
LABEL_9:
            v12 = *(a2 + 24);
            if (!v12)
            {
              return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
            }

            v13 = *(v12 + 56);
            if (!v13 || *v13 != 61)
            {
              return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
            }

            if (!*(a2 + 96))
            {
              return result;
            }

LABEL_24:
            v11 = 1046;
            return ReportAccessWarning(result, a2, v11, a4, a5, a6, a7, a8, a9);
          case 's':
            v11 = 1044;
            goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t GetRgb(char *__s2, uint64_t a2)
{
  v4 = 0;
  v5 = &dword_299961B60;
  do
  {
    if (strstr(colorNames[v4], __s2))
    {
      *a2 = *(v5 - 1);
      v8 = *v5;
LABEL_10:
      *(a2 + 8) = v8;
      return 1;
    }

    v5 += 3;
    ++v4;
  }

  while (v4 != 16);
  if (tmbstrlen(__s2) == 7 && *__s2 == 35)
  {
    v6 = __s2[1];
    v7 = v6 - 48;
    if ((v6 - 48) > 9)
    {
      if ((v6 - 97) > 5)
      {
        v10 = v6 - 65;
        v11 = v6 - 55;
        if (v10 >= 6)
        {
          v7 = -1;
        }

        else
        {
          v7 = v11;
        }
      }

      else
      {
        v7 = v6 - 87;
      }
    }

    v12 = 16 * v7;
    v13 = __s2[2];
    v14 = v13 - 48;
    if ((v13 - 48) > 9)
    {
      if ((v13 - 97) > 5)
      {
        v15 = v13 - 65;
        v16 = v13 - 55;
        if (v15 >= 6)
        {
          v14 = -1;
        }

        else
        {
          v14 = v16;
        }
      }

      else
      {
        v14 = v13 - 87;
      }
    }

    *a2 = v14 + v12;
    v17 = __s2[3];
    v18 = v17 - 48;
    if ((v17 - 48) > 9)
    {
      if ((v17 - 97) > 5)
      {
        v19 = v17 - 65;
        v20 = v17 - 55;
        if (v19 >= 6)
        {
          v18 = -1;
        }

        else
        {
          v18 = v20;
        }
      }

      else
      {
        v18 = v17 - 87;
      }
    }

    v21 = 16 * v18;
    v22 = __s2[4];
    v23 = v22 - 48;
    if ((v22 - 48) > 9)
    {
      if ((v22 - 97) > 5)
      {
        v24 = v22 - 65;
        v25 = v22 - 55;
        if (v24 >= 6)
        {
          v23 = -1;
        }

        else
        {
          v23 = v25;
        }
      }

      else
      {
        v23 = v22 - 87;
      }
    }

    *(a2 + 4) = v23 + v21;
    v26 = __s2[5];
    v27 = v26 - 48;
    if ((v26 - 48) > 9)
    {
      if ((v26 - 97) > 5)
      {
        v28 = v26 - 65;
        v29 = v26 - 55;
        if (v28 >= 6)
        {
          v27 = -1;
        }

        else
        {
          v27 = v29;
        }
      }

      else
      {
        v27 = v26 - 87;
      }
    }

    v30 = 16 * v27;
    v31 = __s2[6];
    v32 = v31 - 48;
    if ((v31 - 48) > 9)
    {
      if ((v31 - 97) > 5)
      {
        v33 = v31 - 65;
        v34 = v31 - 55;
        if (v33 >= 6)
        {
          v32 = -1;
        }

        else
        {
          v32 = v34;
        }
      }

      else
      {
        v32 = v31 - 87;
      }
    }

    v8 = v32 + v30;
    goto LABEL_10;
  }

  return 0;
}

_BYTE *GetFileExtension(_BYTE *a1, _BYTE *a2)
{
  result = tmbstrlen(a1);
  *a2 = 0;
  if (result)
  {
    v5 = result - 1;
    v6 = &result[a1 - 1];
    do
    {
      v7 = *v6;
      if (v7 == 92 || v7 == 47)
      {
        break;
      }

      if (v7 == 46)
      {

        return tmbstrncpy(a2, v6, 20);
      }

      --v6;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t IsValidMediaExtension(_BYTE *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  GetFileExtension(a1, v4);
  v1 = 0;
  while (tmbstrcasecmp(v4, mediaExtensions[v1]))
  {
    if (++v1 == 18)
    {
      result = 0;
      goto LABEL_6;
    }
  }

  result = 1;
LABEL_6:
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IsImage(_BYTE *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  GetFileExtension(a1, v4);
  v1 = 0;
  while (tmbstrcasecmp(v4, imageExtensions[v1]))
  {
    if (++v1 == 13)
    {
      result = 0;
      goto LABEL_6;
    }
  }

  result = 1;
LABEL_6:
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t FindLinkA(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    while (1)
    {
      v4 = *(v2 + 56);
      if (!v4 || *v4 != 1)
      {
        break;
      }

      result = AttrGetById(v2, 58);
      if (!result)
      {
        goto LABEL_11;
      }

      v6 = result;
      v7 = *(result + 48);
      if (v7)
      {
        while (1)
        {
          result = *v7;
          if (!*v7)
          {
            break;
          }

          ++v7;
          if (!IsWhite(result))
          {
            result = tmbstrcmp(a2, *(v6 + 48)) == 0;
            if (!result)
            {
              goto LABEL_12;
            }

            return result;
          }
        }

LABEL_11:
        if (result)
        {
          return result;
        }

        goto LABEL_12;
      }

      result = 0;
LABEL_12:
      v2 = *(v2 + 16);
      if (!v2)
      {
        return result;
      }
    }

    result = FindLinkA(v2, a2);
    goto LABEL_11;
  }

  return 0;
}

uint64_t IsValidSrcExtension(_BYTE *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  GetFileExtension(a1, v4);
  v1 = 0;
  while (tmbstrcasecmp(v4, frameExtensions[v1]))
  {
    if (++v1 == 10)
    {
      result = 0;
      goto LABEL_6;
    }
  }

  result = 1;
LABEL_6:
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t CheckColumns(uint64_t result, uint64_t a2)
{
  ++*(result + 4720);
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = v2[7];
    if (v3)
    {
      if (*v3 == 109)
      {
        v4 = result;
        v5 = 0;
        v6 = 0;
        *(result + 4744) = 1;
        do
        {
          v7 = v2[7];
          if (v7 && *v7 == 109)
          {
            result = nodeIsText(v2[3]);
            if (result)
            {
              v8 = textFromOneNode(v4, v2[3]);
              while (1)
              {
                result = *v8;
                if (!*v8)
                {
                  break;
                }

                result = IsWhite(result);
                ++v8;
                if (!result)
                {
                  ++v6;
                  break;
                }
              }
            }
          }

          else
          {
            v5 = 1;
          }

          v2 = v2[2];
        }

        while (v2);
        if (!v5 && v6 > 0)
        {
          v9 = 4760;
LABEL_20:
          *(v4 + v9) = 1;
          return result;
        }

        if (v5 && v6 >= 2)
        {
          v9 = 4768;
          goto LABEL_20;
        }
      }
    }
  }

  return result;
}

uint64_t CheckRows(uint64_t result, void *a2)
{
  v2 = result;
  ++*(result + 4720);
  if (!a2)
  {
    v4 = 0;
    v5 = 0;
LABEL_15:
    v2[1189] = 1;
    goto LABEL_16;
  }

  v3 = a2;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v3[7];
    if (v6)
    {
      if (*v6 == 109)
      {
        v2[1186] = 1;
        v7 = v3[3];
        if (v7)
        {
          result = nodeIsText(*(v7 + 24));
          if (result)
          {
            v8 = textFromOneNode(v2, *(v3[3] + 24));
            while (1)
            {
              result = *v8;
              if (!*v8)
              {
                break;
              }

              result = IsWhite(result);
              ++v8;
              if (!result)
              {
                ++v4;
                break;
              }
            }
          }
        }
      }
    }

    ++v5;
    v3 = v3[2];
  }

  while (v3);
  if (v5 == v4)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v5 >= 2 && v5 > v4 && v4 >= 2 && v2[1186] == 1)
  {
    v2[1191] = 1;
  }

  return result;
}

uint64_t getTextNode(uint64_t a1, uint64_t a2)
{
  result = nodeIsText(a2);
  if (result)
  {
    v5 = *(a2 + 72);
    if (v5 >= *(a2 + 76))
    {
LABEL_5:
      for (i = *(a2 + 24); i; i = *(i + 16))
      {
        result = getTextNode(a1, i);
      }
    }

    else
    {
      while (1)
      {
        v6 = *(a1 + 4452);
        if (v6 > 126)
        {
          break;
        }

        v7 = *(*(*(a1 + 104) + 104) + v5);
        *(a1 + 4452) = v6 + 1;
        *(a1 + 4456 + v6) = v7;
        if (++v5 >= *(a2 + 76))
        {
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

uint64_t CheckFormControls(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = result;
  if (!*(result + 4748) && *(result + 4752))
  {
    result = ReportAccessWarning(result, a2, 1120, a4, a5, a6, a7, a8, v11);
  }

  if (!*(v10 + 4752))
  {
    if (!*(v10 + 4748) || (result = ReportAccessWarning(v10, a2, 1121, a4, a5, a6, a7, a8, v11), !*(v10 + 4752)) && !*(v10 + 4748))
    {

      return ReportAccessWarning(v10, a2, 1119, a4, a5, a6, a7, a8, a9);
    }
  }

  return result;
}

Bool tidySetMallocCall(TidyMalloc fmalloc)
{
  if (linkedOnOrAfter2024EReleases_once != -1)
  {
    tidySetMallocCall_cold_1();
  }

  if (linkedOnOrAfter2024EReleases_result)
  {
    return 0;
  }

  g_malloc = fmalloc;
  return 1;
}

uint64_t linkedOnOrAfter2024EReleases()
{
  if (linkedOnOrAfter2024EReleases_once != -1)
  {
    tidySetMallocCall_cold_1();
  }

  return linkedOnOrAfter2024EReleases_result;
}

Bool tidySetReallocCall(TidyRealloc frealloc)
{
  if (linkedOnOrAfter2024EReleases_once != -1)
  {
    tidySetMallocCall_cold_1();
  }

  if (linkedOnOrAfter2024EReleases_result)
  {
    return 0;
  }

  g_realloc = frealloc;
  return 1;
}

Bool tidySetFreeCall(TidyFree ffree)
{
  if (linkedOnOrAfter2024EReleases_once != -1)
  {
    tidySetMallocCall_cold_1();
  }

  if (linkedOnOrAfter2024EReleases_result)
  {
    return 0;
  }

  g_free = ffree;
  return 1;
}

uint64_t FatalError(const char *a1)
{
  v2 = g_panic;
  if (!g_panic)
  {
    fprintf(*MEMORY[0x29EDCA610], "Fatal error: %s\n", a1);
    exit(2);
  }

  return v2();
}

void *_MemAlloc(size_t a1)
{
  if (g_malloc)
  {
    v1 = g_malloc();
  }

  else
  {
    v1 = malloc_type_malloc(a1, 0x4D0EA72AuLL);
  }

  v2 = v1;
  if (!v1)
  {
    FatalError("Out of memory!");
  }

  return v2;
}

void *_MemRealloc(void *a1, size_t ptr)
{
  if (a1)
  {
    if (g_realloc)
    {
      result = g_realloc();
      if (result)
      {
        return result;
      }

      goto LABEL_4;
    }

    result = malloc_type_realloc(a1, ptr, 0x1466A35CuLL);
    if (!result)
    {
LABEL_4:
      FatalError("Out of memory!");
      return 0;
    }
  }

  else
  {

    return _MemAlloc(ptr);
  }

  return result;
}

void _MemFree(void *a1)
{
  if (a1)
  {
    if (g_free)
    {
      g_free();
    }

    else
    {
      free(a1);
    }
  }
}

uint64_t __linkedOnOrAfter2024EReleases_block_invoke()
{
  result = dyld_program_minos_at_least();
  linkedOnOrAfter2024EReleases_result = result;
  return result;
}

Bool tidyAttrIsHREF(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 58;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsSRC(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 132;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsID(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 62;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsNAME(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 79;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsSUMMARY(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 136;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsALT(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 9;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsLONGDESC(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 71;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsUSEMAP(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 143;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsISMAP(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 63;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsLANGUAGE(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 66;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsTYPE(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 142;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsVALUE(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 145;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsCONTENT(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 35;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsTITLE(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 140;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsXMLNS(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 154;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsDATAFLD(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 38;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsWIDTH(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 150;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsHEIGHT(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 57;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsFOR(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 50;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsSELECTED(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 125;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsCHECKED(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 23;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsLANG(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 65;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsTARGET(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 138;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsHTTP_EQUIV(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 61;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsREL(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 116;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsOnMOUSEMOVE(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 102;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsOnMOUSEDOWN(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 101;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsOnMOUSEUP(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 105;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsOnCLICK(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 90;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsOnMOUSEOVER(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 104;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsOnMOUSEOUT(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 103;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsOnKEYDOWN(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 97;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsOnKEYUP(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 99;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsOnKEYPRESS(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 98;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsOnFOCUS(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 96;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsOnBLUR(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 88;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsBGCOLOR(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 13;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsLINK(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 70;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsALINK(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 8;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsVLINK(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 148;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsTEXT(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 139;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsSTYLE(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 135;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsABBR(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 1;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsCOLSPAN(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 33;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

Bool tidyAttrIsROWSPAN(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1 == 120;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

uint64_t NodeAttributeVersions(uint64_t result, int a2)
{
  if (!result)
  {
    return result;
  }

  v2 = *(result + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  if (!v3 || !*v3)
  {
    return 0;
  }

  if (*v3 != a2)
  {
    v5 = 1;
    while (1)
    {
      v6 = v3[2 * v5];
      if (!v6)
      {
        break;
      }

      v4 = v5++;
      if (v6 == a2)
      {
        return v3[2 * v4 + 1];
      }
    }

    return 0;
  }

  v4 = 0;
  return v3[2 * v4 + 1];
}

void *AttrGetById(uint64_t a1, int a2)
{
  for (result = *(a1 + 40); result; result = *result)
  {
    v3 = result[1];
    if (v3 && *v3 == a2)
    {
      break;
    }
  }

  return result;
}

char *FindAttribute(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return lookup(a1, a1 + 3008, *(a2 + 40));
  }

  else
  {
    return 0;
  }
}

char *lookup(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a3)
  {
    v5 = a2 + 16;
    v6 = *a3;
    if (*a3)
    {
      v7 = 0;
      v8 = a3 + 1;
      do
      {
        v7 = 31 * v7 + v6;
        v9 = *v8++;
        v6 = v9;
      }

      while (v9);
      v10 = v7 % 0xB2;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v5 + 8 * v10);
    if (v11)
    {
      while (*v11)
      {
        if (!tmbstrcmp(a3, *(*v11 + 8)))
        {
          return *v11;
        }

        v11 = v11[1];
        if (!v11)
        {
          break;
        }
      }
    }

    v12 = &attribute_defs;
    v13 = "unknown!";
    do
    {
      if (!tmbstrcmp(a3, v13))
      {
        if (linkedOnOrAfter2024EReleases())
        {
          v14 = malloc_type_malloc(0x10uLL, 0x600405C6656D0uLL);
          if (!v14)
          {
            FatalError("Out of memory!");
            v14 = 0;
          }
        }

        else
        {
          v14 = _MemAlloc(0x10uLL);
        }

        *v14 = v12;
        v15 = *v13;
        if (*v13)
        {
          v16 = 0;
          v17 = v13 + 1;
          do
          {
            v16 = 31 * v16 + v15;
            v18 = *v17++;
            v15 = v18;
          }

          while (v18);
          v19 = v16 % 0xB2;
        }

        else
        {
          v19 = 0;
        }

        v14[1] = *(v5 + 8 * v19);
        *(v5 + 8 * v19) = v14;
        return v12;
      }

      v13 = *(v12 + 6);
      v12 += 40;
    }

    while (v13);
    if (!qword_2A14C1B88)
    {
      qword_2A14C1B88 = "onunknowneventhandler";
      dword_2A14C1B90 = 0x1FFF;
      qword_2A14C1B98 = CheckScript;
    }

    if (*(a1 + 816) && !tmbstrncasecmp(a3, "on", 2))
    {
      return &lookup_unknownEventHandler;
    }
  }

  return 0;
}

void *GetAttrByName(uint64_t a1, unsigned __int8 *a2)
{
  for (i = *(a1 + 40); i; i = *i)
  {
    v4 = i[5];
    if (v4 && !tmbstrcmp(v4, a2))
    {
      break;
    }
  }

  return i;
}

_DWORD *AddAttribute(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _BYTE *a4)
{
  v8 = NewAttribute();
  v8[8] = 34;
  *(v8 + 5) = tmbstrdup(a3);
  if (a4)
  {
    v9 = tmbstrdup(a4);
  }

  else
  {
    v9 = 0;
  }

  *(v8 + 6) = v9;
  *(v8 + 1) = lookup(a1, a1 + 3008, a3);
  InsertAttributeAtEnd(a2, v8);
  return v8;
}

_DWORD *RepairAttrValue(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _BYTE *a4)
{
  AttrByName = GetAttrByName(a2, a3);
  if (AttrByName)
  {
    v9 = AttrByName;
    if (AttrByName[6])
    {
      v10 = linkedOnOrAfter2024EReleases();
      v11 = v9[6];
      if (!v10)
      {
        _MemFree(v11);
        if (a4)
        {
          goto LABEL_6;
        }

        goto LABEL_11;
      }

      free(v11);
      v9[6] = 0;
    }

    if (a4)
    {
LABEL_6:
      v12 = tmbstrdup(a4);
LABEL_12:
      v9[6] = v12;
      return v9;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  return AddAttribute(a1, a2, a3, a4);
}

char *IsUrl(uint64_t a1, unsigned __int8 *a2)
{
  result = lookup(a1, a1 + 3008, a2);
  if (result)
  {
    return (*(result + 3) == CheckUrl);
  }

  return result;
}

void CheckUrl(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = *(a3 + 48);
    if (v6)
    {
      v7 = *v6;
      v8 = 168;
      if (v7 == 47)
      {
        v8 = 170;
      }

      v9 = *&a1[v8 + 28];
      if (v9 && *v9)
      {
        v10 = 1;
        v11 = *v6;
        if (*v6)
        {
          do
          {
            if (v11 == 47)
            {
              break;
            }

            if (v11 == 58)
            {
              goto LABEL_17;
            }

            v11 = v6[v10++];
          }

          while (v11);
        }

        v12 = tmbstrlen(v9);
        v13 = &tmbstrlen(v6)[v12];
        if (linkedOnOrAfter2024EReleases())
        {
          v14 = malloc_type_malloc((v13 + 2), 0xB5E80D92uLL);
          if (!v14)
          {
            FatalError("Out of memory!");
          }
        }

        else
        {
          v14 = _MemAlloc((v13 + 2));
        }

        v15 = v12[v9 - 1];
        if (v7 == 47 && v15 == 47 || v7 == 47 || v15 == 47)
        {
          sprintf(v14, "%s%s");
        }

        else
        {
          sprintf(v14, "%s/%s");
        }

        v16 = linkedOnOrAfter2024EReleases();
        v17 = *(a3 + 48);
        if (v16)
        {
          free(v17);
        }

        else
        {
          _MemFree(v17);
        }

        *(a3 + 48) = v14;
      }

      else
      {
LABEL_17:
        v14 = *(a3 + 48);
      }

      if (a1[204] && (*v14 & 0xDF) != 0x48 && (!tmbstrncasecmp(v14, "javascript:", 11) || !tmbstrncasecmp(v14, "script:", 7) || !tmbstrncasecmp(v14, "vbscript:", 9) || !tmbstrncasecmp(v14, "file:", 5)))
      {
        *(a3 + 8) = &MarkedForRemoval;
        return;
      }

      v18 = 0;
      v19 = 0;
      for (i = v14; ; ++i)
      {
        v21 = *i;
        if (v21 == 92)
        {
          ++v19;
          if (a1[122])
          {
            *i = 47;
          }
        }

        else
        {
          if (!*i)
          {
            if (a1[148])
            {
              v22 = v18 == 0;
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              v23 = &tmbstrlen(v14)[2 * v18];
              if (linkedOnOrAfter2024EReleases())
              {
                v24 = malloc_type_malloc((v23 + 1), 0xBEDB7E53uLL);
                if (!v24)
                {
                  FatalError("Out of memory!");
                }
              }

              else
              {
                v24 = _MemAlloc((v23 + 1));
              }

              v25 = *v14;
              if (*v14)
              {
                v26 = 0;
                v27 = (v14 + 1);
                do
                {
                  if ((v25 - 127) < 0xFFFFFFA2 || (v25 | 2) == 0x3E)
                  {
                    v28 = sprintf(&v24[v26], "%%%02X", v25);
                  }

                  else
                  {
                    v24[v26] = v25;
                    v28 = 1;
                  }

                  v26 += v28;
                  v29 = *v27++;
                  v25 = v29;
                }

                while (v29);
              }

              else
              {
                v26 = 0;
              }

              v24[v26] = 0;
              v30 = linkedOnOrAfter2024EReleases();
              v31 = *(a3 + 48);
              if (v30)
              {
                free(v31);
              }

              else
              {
                _MemFree(v31);
              }

              *(a3 + 48) = v24;
            }

            if (v19)
            {
              if (a1[122])
              {
                v32 = 62;
              }

              else
              {
                v32 = 61;
              }

              ReportAttrError(a1, a2, a3, v32);
            }

            if (v18)
            {
              if (a1[148])
              {
                v33 = 64;
              }

              else
              {
                v33 = 63;
              }

              ReportAttrError(a1, a2, a3, v33);
              a1[1227] |= 0x20u;
            }

            return;
          }

          if ((v21 - 127) < 0xFFFFFFA2 || (v21 | 2) == 0x3E)
          {
            ++v18;
          }
        }
      }
    }
  }

  ReportAttrError(a1, a2, a3, 50);
}

char *IsScript(uint64_t a1, unsigned __int8 *a2)
{
  result = lookup(a1, a1 + 3008, a2);
  if (result)
  {
    return (*(result + 3) == CheckScript);
  }

  return result;
}

uint64_t CheckScript(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 816))
  {
    *(a3 + 8) = &MarkedForRemoval;
  }

  return result;
}

BOOL IsAnchorElement(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2)
  {
    v2 = *(a2 + 56);
    if (v2)
    {
      v3 = *v2 - 1;
      v4 = v3 > 0x3F;
      v5 = (1 << v3) & 0x800A003000000021;
      if (!v4 && v5 != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t IsCSS1Selector(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = MEMORY[0x29EDCA600];
  while (1)
  {
    v5 = *(a1 + v2);
    result = 1;
    if (v5 == 92)
    {
      goto LABEL_16;
    }

    if (!*(a1 + v2))
    {
      return result;
    }

    if ((v5 - 48) <= 9)
    {
      break;
    }

    if (v3 > 0 || v2 && v5 == 45)
    {
      LODWORD(result) = 0;
    }

    else
    {
      if ((v5 & 0x80) != 0)
      {
        v7 = __maskrune(*(a1 + v2), 0x100uLL);
      }

      else
      {
        v7 = *(v4 + 4 * v5 + 60) & 0x100;
      }

      result = 0;
      if (!v7 && v5 <= 0xA0)
      {
        return result;
      }
    }

LABEL_16:
    ++v2;
    v3 = result;
  }

  if (v3 <= 4)
  {
    LODWORD(result) = v3 <= 0 ? v3 : v3 + 1;
    if (v2 || result >= 1)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

void RemoveAnchorByNode(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = (a1 + 3008);
  v4 = (a1 + 3008);
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = v2;
    v2 = v4;
    if (v4[1] == a2)
    {
      if (v5)
      {
        v3 = v5;
      }

      *v3 = *v4;
      break;
    }
  }

  FreeAnchor(v4);
}

void FreeAnchor(void *a1)
{
  if (a1)
  {
    v2 = linkedOnOrAfter2024EReleases();
    v3 = a1[2];
    if (v2)
    {
      free(v3);
      a1[2] = 0;
    }

    else
    {
      _MemFree(v3);
    }
  }

  if (linkedOnOrAfter2024EReleases())
  {

    free(a1);
  }

  else
  {

    _MemFree(a1);
  }
}

void *FreeAnchors(uint64_t a1)
{
  for (result = *(a1 + 3008); result; result = *(a1 + 3008))
  {
    *(a1 + 3008) = *result;
    FreeAnchor(result);
  }

  return result;
}

void FreeAttrTable(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 3024;
  do
  {
    v4 = *(v3 + 8 * v2);
    if (v4)
    {
      do
      {
        v5 = v4[1];
        if (linkedOnOrAfter2024EReleases())
        {
          free(v4);
        }

        else
        {
          _MemFree(v4);
        }

        v4 = v5;
      }

      while (v5);
    }

    *(v3 + 8 * v2++) = 0;
  }

  while (v2 != 178);
  while (1)
  {
    v6 = *(a1 + 3008);
    if (!v6)
    {
      break;
    }

    *(a1 + 3008) = *v6;
    FreeAnchor(v6);
  }

  for (i = *(a1 + 3016); i; i = *(a1 + 3016))
  {
    *(a1 + 3016) = i[4];
    v8 = i[1];
    v9 = *v8;
    if (*v8)
    {
      v10 = 0;
      v11 = v8 + 1;
      do
      {
        v10 = 31 * v10 + v9;
        v12 = *v11++;
        v9 = v12;
      }

      while (v12);
      v13 = v10 % 0xB2;
    }

    else
    {
      v13 = 0;
    }

    v14 = (v3 + 8 * v13);
    v15 = *v14;
    if (*v14)
    {
      v16 = 0;
      do
      {
        v17 = v15;
        v18 = *v15;
        if (!v18)
        {
          break;
        }

        v19 = tmbstrcmp(v8, *(v18 + 8));
        v15 = v17[1];
        if (!v19)
        {
          v20 = v16 + 1;
          if (!v16)
          {
            v20 = v14;
          }

          *v20 = v15;
          if (linkedOnOrAfter2024EReleases())
          {
            free(v17);
          }

          else
          {
            _MemFree(v17);
          }

          break;
        }

        v16 = v17;
      }

      while (v15);
    }

    v21 = linkedOnOrAfter2024EReleases();
    v22 = i[1];
    if (v21)
    {
      free(v22);
      i[1] = 0;
    }

    else
    {
      _MemFree(v22);
    }

    if (linkedOnOrAfter2024EReleases())
    {
      free(i);
    }

    else
    {
      _MemFree(i);
    }
  }
}

void AppendToClassAttr(uint64_t a1, unsigned __int8 *a2)
{
  v4 = tmbstrlen(*(a1 + 48));
  v5 = &tmbstrlen(a2)[v4];
  if (linkedOnOrAfter2024EReleases())
  {
    v6 = malloc_type_malloc((v5 + 2), 0x8F02619EuLL);
    if (!v6)
    {
      AppendToClassAttr_cold_1();
    }
  }

  else
  {
    v6 = _MemAlloc((v5 + 2));
  }

  *v6 = 0;
  v7 = *(a1 + 48);
  if (v7)
  {
    tmbstrcpy(v6, v7);
    tmbstrcat(v6, " ");
  }

  tmbstrcat(v6, a2);
  if (*(a1 + 48))
  {
    v8 = linkedOnOrAfter2024EReleases();
    v9 = *(a1 + 48);
    if (v8)
    {
      free(v9);
    }

    else
    {
      _MemFree(v9);
    }
  }

  *(a1 + 48) = v6;
}

void RepairDuplicateAttributes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    do
    {
      if (*(v2 + 16))
      {
        goto LABEL_3;
      }

      v6 = *v2;
      if (*(v2 + 24))
      {
        v5 = *v2;
        goto LABEL_6;
      }

      if (!v6)
      {
LABEL_3:
        v5 = *v2;
        goto LABEL_6;
      }

      v7 = 1;
      do
      {
        while (1)
        {
          while (1)
          {
            if (!v6[2] && !v6[3] && v2 != 0)
            {
              v9 = *(v2 + 8);
              if (v9)
              {
                v10 = v6[1];
                if (v10)
                {
                  v11 = *v9;
                  if (v11)
                  {
                    if (v11 == *v10)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v6 = *v6;
            if (!v6)
            {
              goto LABEL_59;
            }
          }

          if (v11 != 135)
          {
            break;
          }

          if (*(a1 + 656))
          {
            v13 = *(v2 + 48);
            if (v13)
            {
              v14 = v6[6];
              if (v14)
              {
                v15 = tmbstrlen(v13);
                v16 = v15;
                if (!v15)
                {
                  goto LABEL_40;
                }

                v17 = v15[*(v2 + 48) - 1];
                if (v17 == 125)
                {
                  v31 = linkedOnOrAfter2024EReleases();
                  v32 = *(v2 + 48);
                  v33 = &tmbstrlen(v14)[v16 + 6];
                  if (v31)
                  {
                    v34 = malloc_type_realloc(v32, v33, 0x83D7E9BuLL);
                    if (!v34)
                    {
                      FatalError("Out of memory!");
                      v34 = 0;
                    }
                  }

                  else
                  {
                    v34 = _MemRealloc(v32, v33);
                  }

                  *(v2 + 48) = v34;
                  tmbstrcat(v34, " { ");
                  tmbstrcat(*(v2 + 48), v14);
                  v21 = *(v2 + 48);
                  v35 = " }";
                }

                else
                {
                  if (v17 == 59)
                  {
                    v18 = linkedOnOrAfter2024EReleases();
                    v19 = *(v2 + 48);
                    v20 = &tmbstrlen(v14)[v16 + 2];
                    if (v18)
                    {
                      v21 = malloc_type_realloc(v19, v20, 0xAC442FCEuLL);
                      if (!v21)
                      {
                        FatalError("Out of memory!");
                        v21 = 0;
                      }
                    }

                    else
                    {
                      v21 = _MemRealloc(v19, v20);
                    }

                    *(v2 + 48) = v21;
                    v30 = " ";
                    goto LABEL_53;
                  }

LABEL_40:
                  v27 = linkedOnOrAfter2024EReleases();
                  v28 = *(v2 + 48);
                  v29 = &tmbstrlen(v14)[v16 + 3];
                  if (v27)
                  {
                    v21 = malloc_type_realloc(v28, v29, 0xC1E63FD5uLL);
                    if (!v21)
                    {
                      FatalError("Out of memory!");
                      v21 = 0;
                    }
                  }

                  else
                  {
                    v21 = _MemRealloc(v28, v29);
                  }

                  *(v2 + 48) = v21;
                  v30 = "; ";
                  if (v16)
                  {
LABEL_53:
                    tmbstrcat(v21, v30);
                    v21 = *(v2 + 48);
                  }

                  v35 = v14;
                }

                tmbstrcat(v21, v35);
                goto LABEL_58;
              }
            }
          }

LABEL_36:
          if (*(a1 + 192) != 1)
          {
            v22 = *v6;
            v23 = a1;
            v24 = a2;
            v25 = v6;
            v26 = 55;
            goto LABEL_38;
          }

          v5 = *v2;
          ReportAttrError(a1, a2, v2, 55);
          RemoveAttribute(a1, a2, v2);
          v7 = 0;
          v6 = *v6;
          v2 = v5;
          if (!v6)
          {
            goto LABEL_6;
          }
        }

        if (v11 != 25)
        {
          goto LABEL_36;
        }

        if (!*(a1 + 648))
        {
          goto LABEL_36;
        }

        if (!*(v2 + 48))
        {
          goto LABEL_36;
        }

        v12 = v6[6];
        if (!v12)
        {
          goto LABEL_36;
        }

        AppendToClassAttr(v2, v12);
LABEL_58:
        v22 = *v6;
        v23 = a1;
        v24 = a2;
        v25 = v6;
        v26 = 68;
LABEL_38:
        ReportAttrError(v23, v24, v25, v26);
        RemoveAttribute(a1, a2, v6);
        v6 = v22;
      }

      while (v22);
LABEL_59:
      v5 = v2;
      if (v7)
      {
        goto LABEL_3;
      }

LABEL_6:
      v2 = v5;
    }

    while (v5);
  }
}

uint64_t CheckAttribute(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = a3[1];
  if (v6)
  {
    if (*(v6 + 18))
    {
      *(*(a1 + 104) + 28) = 1;
      if (!*(a1 + 304))
      {
        SetOptionBool(a1, 0x17u, 1u);
        SetOptionBool(a1, 0x16u, 1u);
      }
    }

    v7 = AttributeVersions(a2, a3);
    ConstrainVersion(a1, v7);
    v8 = *(v6 + 24);
    if (v8)
    {
      v8(a1, a2, a3);
    }

    if (a3[1] == &MarkedForRemoval)
    {
      goto LABEL_13;
    }
  }

  if (a2)
  {
    v9 = *(a2 + 56);
    if (v9)
    {
      if ((*(v9 + 16) & 0x1FFF) != 0 && (AttributeVersions(a2, a3) & 0x1FFF) == 0)
      {
        ReportAttrError(a1, a2, a3, 53);
        if (*(a1 + 360))
        {
LABEL_13:
          RemoveAttribute(a1, a2, a3);
        }
      }
    }
  }

  return v6;
}

uint64_t AttributeVersions(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (!v2)
  {
    return 0;
  }

  if (!a1)
  {
    return v2[4];
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    return v2[4];
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return v2[4];
  }

  if (!*v4)
  {
    goto LABEL_15;
  }

  if (*v4 != *v2)
  {
    v7 = 1;
    while (1)
    {
      v8 = v4[2 * v7];
      if (!v8)
      {
        break;
      }

      v5 = v7++;
      if (v8 == *v2)
      {
        return v4[2 * v5 + 1];
      }
    }

LABEL_15:
    v9 = v2[4];
    if ((v9 & 0x1FFF) != 0)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  v5 = 0;
  return v4[2 * v5 + 1];
}

BOOL IsBoolAttribute(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      if (*(v1 + 24) == CheckBool)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t CheckBool(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 48))
    {
      return CheckLowerCaseAttrValue(result, a2, a3);
    }
  }

  return result;
}

BOOL attrIsEvent(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 8);
    return v1 && (*v1 - 85) < 0x1B;
  }

  return result;
}

uint64_t IsValidHTMLID(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = IsLetter(*result);
    if (result)
    {
      v2 = (v1 + 1);
      while (1)
      {
        v4 = *v2++;
        v3 = v4;
        if (!v4)
        {
          break;
        }

        result = IsNamechar(v3);
        if (!result)
        {
          return result;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t IsValidXMLID(uint64_t result, double a2, int32x2_t a3)
{
  if (result)
  {
    v4 = (result + 1);
    v3 = *result;
    v8 = v3;
    if ((v3 & 0x80000000) != 0)
    {
      v4 += GetUTF8(v4, &v8);
      v3 = v8;
    }

    if (IsXMLLetter(v3, a2, a3) || v8 == 95 || v8 == 58)
    {
      while (1)
      {
        v7 = *v4;
        if (!*v4)
        {
          break;
        }

        v8 = *v4;
        if ((v7 & 0x80) != 0)
        {
          v4 += GetUTF8(v4, &v8);
          v7 = v8;
        }

        ++v4;
        result = IsXMLNamechar(v7, v5, v6);
        if (!result)
        {
          return result;
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

void CheckAction(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 48))
    {
      CheckUrl(a1, a2, a3);
    }
  }
}

uint64_t CheckAlign(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a2 + 56);
  if (v6 && (*(v6 + 34) & 1) != 0)
  {

    return CheckValign(a1, a2, a3);
  }

  else
  {
    if (!a3 || !*(a3 + 48))
    {
      v9 = 50;
LABEL_10:

      return ReportAttrError(a1, a2, a3, v9);
    }

    result = CheckLowerCaseAttrValue(a1, a2, a3);
    v8 = *(v4 + 56);
    if (!v8 || *v8 != 19)
    {
      result = AttrValueIsAmong(v3, off_29F2777B0);
      if (!result)
      {
        v10 = *(v3 + 48);
        if (!v10 || tmbstrcasecmp(v10, "char") || (result = nodeHasCM(v4, 640), !result))
        {
          a1 = v5;
          a2 = v4;
          a3 = v3;
          v9 = 51;
          goto LABEL_10;
        }
      }
    }
  }

  return result;
}

_BYTE *CheckColor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  if (a3)
  {
    v6 = *(a3 + 48);
    if (v6)
    {
      if (*v6 != 35)
      {
        if (IsValidColorCode(*(a3 + 48)))
        {
          v9 = linkedOnOrAfter2024EReleases();
          v10 = tmbstrlen(v6) + 2;
          if (v9)
          {
            v11 = malloc_type_malloc(v10, 0x9BA41263uLL);
            if (!v11)
            {
              FatalError("Out of memory!");
            }
          }

          else
          {
            v11 = _MemAlloc(v10);
          }

          *v11 = 35;
          v16 = 1;
          do
          {
            v17 = *v6++;
            v11[v16++] = v17;
          }

          while (v17);
          ReportAttrError(v5, v4, v3, 73);
          v18 = linkedOnOrAfter2024EReleases();
          v19 = *(v3 + 48);
          if (v18)
          {
            free(v19);
          }

          else
          {
            _MemFree(v19);
          }

          *(v3 + 48) = v11;
          v6 = v11;
          goto LABEL_27;
        }

        if (*v6 != 35)
        {
LABEL_15:
          if (tmbstrcasecmp(v6, "black"))
          {
            v12 = colors;
            v13 = 16;
            while (--v13)
            {
              v14 = v12 + 2;
              v15 = tmbstrcasecmp(v6, v12[2]);
              v12 = v14;
              if (!v15)
              {
                goto LABEL_37;
              }
            }

LABEL_38:
            a1 = v5;
            a2 = v4;
            a3 = v3;
            v7 = 51;
            goto LABEL_7;
          }

          v14 = colors;
LABEL_37:
          if (!v14[1])
          {
            goto LABEL_38;
          }

          goto LABEL_44;
        }
      }

      if (!IsValidColorCode(v6 + 1))
      {
        goto LABEL_15;
      }

LABEL_27:
      if (*v6 != 35)
      {
        v24 = *(v3 + 48);
        goto LABEL_46;
      }

      if (*(v5 + 696))
      {
        if (tmbstrcasecmp(v6, "#000000"))
        {
          v20 = off_29F2777F0;
          v21 = 16;
          do
          {
            v22 = v20;
            if (!--v21)
            {
              break;
            }

            v20 += 2;
          }

          while (tmbstrcasecmp(v6, *v22));
          v23 = *(v22 - 1);
          if (!v23)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v23 = "black";
        }

        v25 = linkedOnOrAfter2024EReleases();
        v26 = *(v3 + 48);
        if (v25)
        {
          free(v26);
          *(v3 + 48) = 0;
        }

        else
        {
          _MemFree(v26);
        }

        v6 = tmbstrdup(v23);
        *(v3 + 48) = v6;
      }

LABEL_44:
      v24 = *(v3 + 48);
      if (*v6 == 35)
      {
        result = tmbstrtoupper(v24);
LABEL_47:
        *(v3 + 48) = result;
        return result;
      }

LABEL_46:
      result = tmbstrtolower(v24);
      goto LABEL_47;
    }
  }

  v7 = 50;
LABEL_7:

  return ReportAttrError(a1, a2, a3, v7);
}

uint64_t CheckNumber(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = result;
  if (a3)
  {
    v6 = *(a3 + 48);
    if (v6)
    {
      if (a2)
      {
        v7 = *(a2 + 56);
        if (v7)
        {
          v8 = *v7;
          if (*v7 == 39)
          {
            v9 = *(a3 + 8);
            if (v9)
            {
              v10 = *v9;
              if (v10 == 32 || v10 == 119)
              {
                return result;
              }
            }

            v8 = *v7;
          }

          if (v8 == 36)
          {
            v11 = *v6;
            if (v11 != 45 && v11 != 43)
            {
              goto LABEL_15;
            }

            ++v6;
          }
        }
      }

      v11 = *v6;
LABEL_15:
      if (!v11)
      {
        return result;
      }

      v12 = v6 + 1;
      while (1)
      {
        result = IsDigit(v11);
        if (!result)
        {
          break;
        }

        v13 = *v12++;
        LOBYTE(v11) = v13;
        if (!v13)
        {
          return result;
        }
      }

      result = v5;
      a2 = v4;
      a3 = v3;
      v14 = 51;
      goto LABEL_21;
    }
  }

  v14 = 50;
LABEL_21:

  return ReportAttrError(result, a2, a3, v14);
}

uint64_t CheckLength(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = result;
  if (a3 && (v6 = *(a3 + 48)) != 0)
  {
    v7 = *(a3 + 8);
    if (v7)
    {
      if (a2)
      {
        if (*v7 == 150)
        {
          v8 = *(a2 + 56);
          if (v8)
          {
            if ((*v8 - 23) < 2)
            {
              return result;
            }
          }
        }
      }
    }

    result = IsDigit(*v6);
    if (result)
    {
      v9 = v6[1];
      if (!v9)
      {
        return result;
      }

      v10 = (v6 + 2);
      while (1)
      {
        result = IsDigit(v9);
        if (!result && *(v10 - 1) != 37)
        {
          break;
        }

        v11 = *v10++;
        v9 = v11;
        if (!v11)
        {
          return result;
        }
      }
    }

    result = v5;
    a2 = v4;
    a3 = v3;
    v12 = 51;
  }

  else
  {
    v12 = 50;
  }

  return ReportAttrError(result, a2, a3, v12);
}

unint64_t CheckClass(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 800);
  if (v3)
  {
    v5 = *(a3 + 48);
    if (v5)
    {
      v6 = tmbstrlen(*(result + 800));
      result = tmbstrlen(v5);
      if (result >= v6)
      {
        result = tmbstrncasecmp(v3, v5, v6);
        if (!result)
        {
          *(a3 + 8) = &MarkedForRemoval;
        }
      }
    }
  }

  return result;
}

uint64_t CheckClear(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a3 + 48))
  {
    CheckLowerCaseAttrValue(a1, a2, a3);
    result = AttrValueIsAmong(a3, off_29F2778E8);
    if (!result)
    {

      return ReportAttrError(a1, a2, a3, 51);
    }
  }

  else
  {
    result = ReportAttrError(a1, a2, a3, 50);
    if (!*(a3 + 48))
    {
      result = tmbstrdup("none");
      *(a3 + 48) = result;
    }
  }

  return result;
}

uint64_t CheckLang(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((!a3 || !*(a3 + 48) && ((v3 = *(a3 + 8)) == 0 || *v3 != 152)) && !*(result + 744))
  {
    return ReportAttrError(result, a2, a3, 50);
  }

  return result;
}

_BYTE *CheckId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 104);
  v7 = *(a1 + 808);
  if (v7)
  {
    v8 = *(a3 + 48);
    if (v8)
    {
      v9 = tmbstrlen(*(a1 + 808));
      if (tmbstrlen(v8) >= v9)
      {
        result = tmbstrncasecmp(v7, v8, v9);
        if (!result)
        {
          *(a3 + 8) = &MarkedForRemoval;
          return result;
        }
      }
    }
  }

  else if (!a3)
  {
LABEL_12:
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = 50;
LABEL_18:

    return ReportAttrError(v15, v16, v17, v18);
  }

  v11 = *(a3 + 48);
  if (!v11)
  {
    goto LABEL_12;
  }

  if (!IsValidHTMLID(v11))
  {
    if (*(v6 + 28) && IsValidXMLID(*(a3 + 48), v12, v13))
    {
      v14 = 71;
    }

    else
    {
      v14 = 51;
    }

    ReportAttrError(a1, a2, a3, v14);
  }

  NodeByAnchor = GetNodeByAnchor(a1, *(a3 + 48));
  if (NodeByAnchor && NodeByAnchor != a2)
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = 66;
    goto LABEL_18;
  }

  v20 = *(a3 + 48);

  return AddAnchor(a1, v20, a2);
}

_BYTE *CheckName(_BYTE *result, uint64_t a2, uint64_t a3, double a4, int32x2_t a5)
{
  v7 = result;
  if (a3 && (v8 = *(a3 + 48)) != 0)
  {
    if (a2)
    {
      v9 = *(a2 + 56);
      if (v9)
      {
        v10 = *v9 - 1;
        v11 = v10 > 0x3F;
        v12 = (1 << v10) & 0x800A003000000021;
        if (!v11 && v12 != 0)
        {
          if (*(result + 72))
          {
            v17 = 0;
            while (1)
            {
              v14 = *v8;
              if (!*v8)
              {
                break;
              }

              v17 = *v8;
              if ((v14 & 0x80) != 0)
              {
                v8 += GetUTF8(v8, &v17);
                v14 = v17;
              }

              ++v8;
              if (!IsXMLNamechar(v14, a4, a5))
              {
                ReportAttrError(v7, a2, a3, 51);
                break;
              }
            }
          }

          NodeByAnchor = GetNodeByAnchor(v7, *(a3 + 48));
          if (NodeByAnchor)
          {
            v16 = NodeByAnchor == a2;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            return AddAnchor(v7, *(a3 + 48), a2);
          }

          else
          {
            return ReportAttrError(v7, a2, a3, 66);
          }
        }
      }
    }
  }

  else
  {

    return ReportAttrError(result, a2, a3, 50);
  }

  return result;
}

uint64_t CheckStyleAttr(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 816))
  {
    *(a3 + 8) = &MarkedForRemoval;
  }

  return result;
}

uint64_t CheckTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  if (a3 && (v6 = *(a3 + 48)) != 0)
  {
    result = IsLetter(*v6);
    if (result)
    {
      return result;
    }

    result = AttrValueIsAmong(v3, off_29F2779B0);
    if (result)
    {
      return result;
    }

    a1 = v5;
    a2 = v4;
    a3 = v3;
    v8 = 51;
  }

  else
  {
    v8 = 50;
  }

  return ReportAttrError(a1, a2, a3, v8);
}

uint64_t CheckType(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return result;
  }

  v3 = a2;
  v4 = *(a2 + 56);
  if (!v4)
  {
    return result;
  }

  v5 = a3;
  v6 = result;
  v7 = *v4;
  if (v7 <= 60)
  {
    if (v7 == 18)
    {
      v8 = off_29F277A30;
    }

    else
    {
      if (v7 != 53)
      {
        return result;
      }

      v8 = off_29F2779D8;
    }

    goto LABEL_26;
  }

  if (v7 != 61)
  {
    if (v7 != 76)
    {
      if (v7 != 115)
      {
        return result;
      }

      v8 = off_29F277A50;
LABEL_26:

      return CheckAttrValidity(result, a2, a3, v8);
    }

    if (a3 && *(a3 + 48))
    {
      goto LABEL_19;
    }

LABEL_21:
    v9 = 50;
LABEL_22:

    return ReportAttrError(result, a2, a3, v9);
  }

  if (!a3 || !*(a3 + 48))
  {
    goto LABEL_21;
  }

  if (!AttrValueIsAmong(a3, off_29F277A50))
  {
LABEL_19:
    result = AttrValueIsAmong(v5, off_29F277A70);
    if (result)
    {
      return result;
    }

    result = v6;
    a2 = v3;
    a3 = v5;
    v9 = 51;
    goto LABEL_22;
  }

  return CheckLowerCaseAttrValue(v6, v3, v5);
}

uint64_t CheckValign(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  if (a3 && *(a3 + 48))
  {
    CheckLowerCaseAttrValue(a1, a2, a3);
    result = AttrValueIsAmong(v3, off_29F277A90);
    if (result)
    {
      return result;
    }

    result = AttrValueIsAmong(v3, off_29F277AB8);
    if (result)
    {
      v8 = *(v4 + 56);
      if (v8 && (*(v8 + 34) & 1) != 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (!AttrValueIsAmong(v3, off_29F277AD0))
    {
LABEL_15:
      a1 = v5;
      a2 = v4;
      a3 = v3;
      v7 = 51;
      goto LABEL_6;
    }

    ConstrainVersion(v5, 57344);
    a1 = v5;
    a2 = v4;
    a3 = v3;
    v7 = 54;
  }

  else
  {
    v7 = 50;
  }

LABEL_6:

  return ReportAttrError(a1, a2, a3, v7);
}

uint64_t CheckLowerCaseAttrValue(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v7 = result;
      v8 = v3 + 1;
      while (1)
      {
        result = IsUpper(v4);
        if (result)
        {
          break;
        }

        v9 = *v8++;
        v4 = v9;
        if (!v9)
        {
          return result;
        }
      }

      v10 = *(v7 + 104);
      if (*(v10 + 28) && (result = ReportAttrError(v7, a2, a3, 70), *(v10 + 28)) || *(v7 + 600))
      {
        result = tmbstrtolower(*(a3 + 48));
        *(a3 + 48) = result;
      }
    }
  }

  return result;
}

uint64_t AttrValueIsAmong(uint64_t a1, char **a2)
{
  v3 = *a2;
  if (!v3)
  {
    return 0;
  }

  for (i = a2 + 1; ; ++i)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      if (!tmbstrcasecmp(v6, v3))
      {
        break;
      }
    }

    v7 = *i;
    v3 = v7;
    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IsValidColorCode(_BYTE *a1)
{
  if (tmbstrlen(a1) != 6)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    if (!IsDigit(a1[v2]))
    {
      v3 = ToLower(a1[v2]);
      result = memchr("abcdef", v3, 7uLL);
      if (!result)
      {
        break;
      }
    }

    if (++v2 == 6)
    {
      return 1;
    }
  }

  return result;
}

uint64_t CheckAttrValidity(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  if (a3 && *(a3 + 48))
  {
    CheckLowerCaseAttrValue(a1, a2, a3);
    result = AttrValueIsAmong(v4, a4);
    if (result)
    {
      return result;
    }

    a1 = v6;
    a2 = v5;
    a3 = v4;
    v9 = 51;
  }

  else
  {
    v9 = 50;
  }

  return ReportAttrError(a1, a2, a3, v9);
}

uint64_t *GetNodeByAnchor(uint64_t a1, _BYTE *a2)
{
  v2 = (a1 + 3008);
  v3 = tmbstrdup(a2);
  v4 = tmbstrtolower(v3);
  do
  {
    v2 = *v2;
  }

  while (v2 && tmbstrcmp(v2[2], v4));
  if (linkedOnOrAfter2024EReleases())
  {
    free(v4);
    if (v2)
    {
      return v2[1];
    }
  }

  else
  {
    _MemFree(v4);
    if (v2)
    {
      return v2[1];
    }
  }

  return 0;
}

_BYTE *AddAnchor(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = (a1 + 3008);
  if (linkedOnOrAfter2024EReleases())
  {
    v6 = malloc_type_malloc(0x18uLL, 0x3004039D06D92uLL);
    if (!v6)
    {
      FatalError("Out of memory!");
    }
  }

  else
  {
    v6 = _MemAlloc(0x18uLL);
  }

  v7 = tmbstrdup(a2);
  v6[2] = v7;
  result = tmbstrtolower(v7);
  v6[1] = a3;
  v6[2] = result;
  *v6 = 0;
  for (i = *v5; i; i = *i)
  {
    v5 = i;
  }

  *v5 = v6;
  return result;
}

void tidyInitInputBuffer(TidyInputSource *inp, TidyBuffer *buf)
{
  inp->sourceData = buf;
  inp->getByte = insrc_getByte;
  inp->eof = insrc_eof;
  inp->ungetByte = insrc_ungetByte;
}

uint64_t insrc_getByte(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1 >= *(a1 + 2))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  *(a1 + 4) = v1 + 1;
  return *(v2 + v1);
}

uint64_t insrc_ungetByte(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    *(result + 16) = v1 - 1;
  }

  return result;
}

void outsink_putByte(TidyBuffer *a1, byte a2)
{
  tidyBufCheckAlloc(a1, a1->size + 1, 0);
  bp = a1->bp;
  size = a1->size;
  a1->size = size + 1;
  bp[size] = a2;
}

void tidyBufAlloc(TidyBuffer *buf, uint allocSize)
{
  ClearMemory(buf, 0x18uLL);
  tidyBufCheckAlloc(buf, allocSize, 0);
  buf->next = 0;
}

void tidyBufCheckAlloc(TidyBuffer *buf, uint allocSize, uint chunkSize)
{
  allocated = buf->allocated;
  if (allocSize + 1 <= allocated)
  {
    return;
  }

  if (chunkSize)
  {
    v5 = chunkSize;
  }

  else
  {
    v5 = 256;
  }

  if (!allocated)
  {
    allocated = v5;
  }

  do
  {
    v6 = allocated;
    allocated *= 2;
  }

  while (v6 < allocSize + 1);
  v7 = linkedOnOrAfter2024EReleases();
  bp = buf->bp;
  if (!v7)
  {
    v9 = _MemRealloc(bp, v6);
    if (!v9)
    {
      return;
    }

    goto LABEL_14;
  }

  v9 = malloc_type_realloc(bp, v6, 0x22F3A7DDuLL);
  if (v9)
  {
LABEL_14:
    v10 = v9;
    ClearMemory(&v9[buf->allocated], v6 - buf->allocated);
    buf->bp = v10;
    buf->allocated = v6;
    return;
  }

  FatalError("Out of memory!");
}

void tidyBufFree(TidyBuffer *buf)
{
  v2 = linkedOnOrAfter2024EReleases();
  bp = buf->bp;
  if (v2)
  {
    free(bp);
    buf->bp = 0;
  }

  else
  {
    _MemFree(bp);
  }

  ClearMemory(buf, 0x18uLL);
}

void tidyBufClear(TidyBuffer *buf)
{
  bp = buf->bp;
  if (bp)
  {
    ClearMemory(bp, buf->allocated);
    buf->size = 0;
  }

  buf->next = 0;
}

void tidyBufAttach(TidyBuffer *buf, byte *bp, uint size)
{
  buf->bp = bp;
  buf->size = size;
  buf->allocated = size;
  buf->next = 0;
}

void tidyBufAppend(TidyBuffer *buf, void *vp, uint size)
{
  if (vp)
  {
    if (size)
    {
      tidyBufCheckAlloc(buf, buf->size + size, 0);
      memcpy(&buf->bp[buf->size], vp, size);
      buf->size += size;
    }
  }
}

void tidyBufPutByte(TidyBuffer *buf, byte bv)
{
  tidyBufCheckAlloc(buf, buf->size + 1, 0);
  bp = buf->bp;
  size = buf->size;
  buf->size = size + 1;
  bp[size] = bv;
}

int tidyBufPopByte(TidyBuffer *buf)
{
  size = buf->size;
  if (!size)
  {
    return -1;
  }

  bp = buf->bp;
  v3 = size - 1;
  buf->size = v3;
  return bp[v3];
}

int tidyBufGetByte(TidyBuffer *buf)
{
  next = buf->next;
  if (next >= buf->size)
  {
    return -1;
  }

  bp = buf->bp;
  buf->next = next + 1;
  return bp[next];
}

void tidyBufUngetByte(TidyBuffer *buf, byte bv)
{
  next = buf->next;
  if (next)
  {
    buf->next = next - 1;
  }
}

void FreeStyles(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    v2 = *(v1 + 160);
    if (v2)
    {
      do
      {
        v3 = v2[3];
        v4 = linkedOnOrAfter2024EReleases();
        v5 = *v2;
        if (v4)
        {
          free(v5);
          *v2 = 0;
        }

        else
        {
          _MemFree(v5);
        }

        v6 = linkedOnOrAfter2024EReleases();
        v7 = v2[1];
        if (v6)
        {
          free(v7);
          v2[1] = 0;
        }

        else
        {
          _MemFree(v7);
        }

        v8 = linkedOnOrAfter2024EReleases();
        v9 = v2[2];
        if (v8)
        {
          free(v9);
          v2[2] = 0;
        }

        else
        {
          _MemFree(v9);
        }

        if (linkedOnOrAfter2024EReleases())
        {
          free(v2);
        }

        else
        {
          _MemFree(v2);
        }

        v2 = v3;
      }

      while (v3);
    }
  }
}

void AddStyleAsClass(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  Style = FindStyle(a1, *(a2 + 64), a3);
  v6 = AttrGetById(a2, 25);
  if (v6)
  {

    AppendToClassAttr(v6, Style);
  }

  else
  {

    AddAttribute(a1, a2, "class", Style);
  }
}

uint64_t FindStyle(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 104);
  v7 = *(v6 + 160);
  if (v7)
  {
    while (tmbstrcmp(*v7, a2) || tmbstrcmp(*(v7 + 16), a3))
    {
      v7 = *(v7 + 24);
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v15 = (v7 + 8);
  }

  else
  {
LABEL_5:
    if (linkedOnOrAfter2024EReleases())
    {
      v8 = malloc_type_malloc(0x20uLL, 0x30040C0311380uLL);
      if (!v8)
      {
        FatalError("Out of memory!");
      }
    }

    else
    {
      v8 = _MemAlloc(0x20uLL);
    }

    *v8 = tmbstrdup(a2);
    v14 = *(a1 + 704);
    if (!v14 || !*v14)
    {
      v14 = "c";
    }

    ++*(a1 + 4928);
    tmbsnprintf(v20, 512, "%s%u", v9, v10, v11, v12, v13, v14);
    v8[1] = tmbstrdup(v20);
    v15 = v8 + 1;
    v16 = tmbstrdup(a3);
    v17 = *(v6 + 160);
    v8[2] = v16;
    v8[3] = v17;
    *(v6 + 160) = v8;
  }

  result = *v15;
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void *FixNodeLinks(void *result)
{
  v1 = result[1];
  if (v1)
  {
    v2 = (v1 + 16);
  }

  else
  {
    v2 = (*result + 24);
  }

  *v2 = result;
  v3 = result[2];
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = (*result + 32);
  }

  *v4 = result;
  for (i = result[3]; i; i = i[2])
  {
    *i = result;
  }

  return result;
}

void AddStyleProperty(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = AttrGetById(a2, 135);
  if (v6)
  {
    v7 = v6;
    v8 = v6[6];
    if (v8)
    {
      v9 = MergeProperties(v8, a3);
      v10 = linkedOnOrAfter2024EReleases();
      v11 = v7[6];
      if (v10)
      {
        free(v11);
      }

      else
      {
        _MemFree(v11);
      }

      v7[6] = v9;
    }

    else
    {
      v7[6] = tmbstrdup(a3);
    }
  }

  else
  {
    v12 = NewAttributeEx(a1, "style", a3, 34);

    InsertAttributeAtStart(a2, v12);
  }
}

_BYTE *MergeProperties(_BYTE *a1, _BYTE *a2)
{
  Props = CreateProps(0, a1);
  v4 = CreateProps(Props, a2);
  PropString = CreatePropString(v4);
  FreeStyleProps(v4);
  return PropString;
}

uint64_t CleanDocument(uint64_t a1)
{
  result = CleanTree(a1, a1);
  if (!*(a1 + 344))
  {
    return result;
  }

  DefineStyleRules(a1, a1);
  v3 = *(a1 + 104);
  if (!*(v3 + 160))
  {
    result = FindBody(a1);
    if (!result)
    {
      return result;
    }

    v4 = result;
    if (!AttrGetById(result, 12) && !AttrGetById(v4, 13) && !AttrGetById(v4, 139) && !AttrGetById(v4, 70) && !AttrGetById(v4, 148))
    {
      result = AttrGetById(v4, 8);
      if (!result)
      {
        return result;
      }
    }

    *(a1 + 4904) |= 0x10u;
  }

  v5 = NewNode(v3);
  *(v5 + 20) = 5;
  *(v5 + 24) = 1;
  *(v5 + 8) = tmbstrdup("style");
  FindTag(a1, v5);
  v6 = NewAttributeEx(a1, "type", "text/css", 34);
  InsertAttributeAtStart(v5, v6);
  Body = FindBody(a1);
  *(v3 + 48) = *(v3 + 116);
  if (Body)
  {
    v8 = Body;
    v9 = *(a1 + 104);
    v10 = AttrGetById(Body, 12);
    if (v10)
    {
      v11 = v10[6];
      v10[6] = 0;
      RemoveAttribute(a1, v8, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = AttrGetById(v8, 13);
    if (v12)
    {
      v13 = v12[6];
      v12[6] = 0;
      RemoveAttribute(a1, v8, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = AttrGetById(v8, 139);
    if (v14)
    {
      v15 = v14[6];
      v14[6] = 0;
      RemoveAttribute(a1, v8, v14);
      if (v11)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = 0;
      if (v11)
      {
        goto LABEL_24;
      }
    }

    if (!v13 && !v15)
    {
LABEL_37:
      v16 = AttrGetById(v8, 70);
      if (v16)
      {
        v17 = v16;
        AddColorRule(v9, " :link", v16[6]);
        RemoveAttribute(a1, v8, v17);
      }

      v18 = AttrGetById(v8, 148);
      if (v18)
      {
        v19 = v18;
        AddColorRule(v9, " :visited", v18[6]);
        RemoveAttribute(a1, v8, v19);
      }

      v20 = AttrGetById(v8, 8);
      if (v20)
      {
        v21 = v20;
        AddColorRule(v9, " :active", v20[6]);
        RemoveAttribute(a1, v8, v21);
      }

      goto LABEL_43;
    }

LABEL_24:
    AddStringLiteral(v9, " body {\n");
    if (v11)
    {
      AddStringLiteral(v9, "  background-image: url(");
      AddStringLiteral(v9, v11);
      AddStringLiteral(v9, ");\n");
      if (linkedOnOrAfter2024EReleases())
      {
        free(v11);
      }

      else
      {
        _MemFree(v11);
      }
    }

    if (v13)
    {
      AddStringLiteral(v9, "  background-color: ");
      AddStringLiteral(v9, v13);
      AddStringLiteral(v9, ";\n");
      if (linkedOnOrAfter2024EReleases())
      {
        free(v13);
      }

      else
      {
        _MemFree(v13);
      }
    }

    if (v15)
    {
      AddStringLiteral(v9, "  color: ");
      AddStringLiteral(v9, v15);
      AddStringLiteral(v9, ";\n");
      if (linkedOnOrAfter2024EReleases())
      {
        free(v15);
      }

      else
      {
        _MemFree(v15);
      }
    }

    AddStringLiteral(v9, " }\n");
    goto LABEL_37;
  }

LABEL_43:
  for (i = *(v3 + 160); i; i = *(i + 24))
  {
    AddCharToLexer(v3, 0x20u);
    AddStringLiteral(v3, *i);
    AddCharToLexer(v3, 0x2Eu);
    AddStringLiteral(v3, *(i + 8));
    AddCharToLexer(v3, 0x20u);
    AddCharToLexer(v3, 0x7Bu);
    AddStringLiteral(v3, *(i + 16));
    AddCharToLexer(v3, 0x7Du);
    AddCharToLexer(v3, 0xAu);
  }

  *(v3 + 52) = *(v3 + 116);
  TextToken(v3);
  InsertNodeAtEnd(v5, v23);
  result = FindHEAD(a1);
  if (result)
  {

    return InsertNodeAtEnd(result, v5);
  }

  return result;
}

uint64_t CleanTree(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    do
    {
      v4 = CleanTree(a1);
    }

    while (v4 && *(v4 + 16));
  }

  return CleanNode(a1, a2);
}

void DefineStyleRules(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 24); i; i = *(i + 16))
  {
    DefineStyleRules(a1, i);
  }

  v5 = AttrGetById(a2, 135);
  if (v5)
  {
    v6 = v5;
    v7 = v5[6];
    if (!v7)
    {
LABEL_7:

      RemoveAttribute(a1, a2, v6);
      return;
    }

    Style = FindStyle(a1, *(a2 + 64), v7);
    v9 = AttrGetById(a2, 25);
    if (v9)
    {
      AppendToClassAttr(v9, Style);
      goto LABEL_7;
    }

    v10 = linkedOnOrAfter2024EReleases();
    v11 = v6[5];
    if (v10)
    {
      free(v11);
      v6[5] = 0;
    }

    else
    {
      _MemFree(v11);
    }

    v12 = linkedOnOrAfter2024EReleases();
    v13 = v6[6];
    if (v12)
    {
      free(v13);
      v6[6] = 0;
    }

    else
    {
      _MemFree(v13);
    }

    v6[5] = tmbstrdup("class");
    v6[6] = tmbstrdup(Style);
  }
}

void NestedEmphasis(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    do
    {
      v3 = a2[2];
      v6 = v3;
      v4 = a2[7];
      if (v4 && (*v4 != 49 ? (v5 = *v4 == 8) : (v5 = 1), v5 && *a2 && *(*a2 + 56) == v4))
      {
        DiscardContainer(a1, a2, &v6);
        v3 = v6;
      }

      else if (a2[3])
      {
        NestedEmphasis(a1);
      }

      a2 = v3;
    }

    while (v3);
  }
}

void DiscardContainer(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a2[2];
    v6 = a2[4];
    *(v6 + 16) = v5;
    if (v5)
    {
      v7 = (v5 + 8);
    }

    else
    {
      v7 = (v4 + 32);
    }

    *v7 = v6;
    v8 = a2[1];
    if (v8)
    {
      *(v3 + 8) = v8;
      v9 = (a2[1] + 16);
    }

    else
    {
      v9 = (v4 + 24);
    }

    *v9 = v3;
    v10 = a2[3];
    if (v10)
    {
      do
      {
        *v10 = v4;
        v10 = v10[2];
      }

      while (v10);
      v11 = a2[3];
    }

    else
    {
      v11 = 0;
    }

    *a3 = v11;
    a2[2] = 0;
    a2[3] = 0;

    FreeNode(a1, a2);
  }

  else
  {
    *a3 = DiscardElement(a1, a2);
  }
}

_BYTE *EmFromI(_BYTE *result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2[7];
      if (v4)
      {
        v5 = *v4;
        if (v5 == 49)
        {
          v6 = 33;
          goto LABEL_8;
        }

        if (v5 == 8)
        {
          v6 = 100;
LABEL_8:
          result = RenameElem(v2, v6);
        }
      }

      if (v2[3])
      {
        result = EmFromI(v3);
      }

      v2 = v2[2];
    }

    while (v2);
  }

  return result;
}

_BYTE *RenameElem(uint64_t a1, int a2)
{
  v3 = LookupTagDef(a2);
  v4 = linkedOnOrAfter2024EReleases();
  v5 = *(a1 + 64);
  if (v4)
  {
    free(v5);
    *(a1 + 64) = 0;
  }

  else
  {
    _MemFree(v5);
  }

  result = tmbstrdup(*(v3 + 1));
  *(a1 + 56) = v3;
  *(a1 + 64) = result;
  return result;
}

_BYTE *List2BQ(_BYTE *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      if (*(v2 + 24))
      {
        result = List2BQ(v3);
      }

      v4 = *(v2 + 56);
      if (v4)
      {
        if (*(v4 + 40) == ParseList)
        {
          v5 = *(v2 + 24);
          if (v5)
          {
            if (!*(v5 + 16))
            {
              if (*(v5 + 96))
              {
                StripOnlyChild(v3, v2);
                result = RenameElem(v2, 15);
                *(v2 + 96) = 1;
              }
            }
          }
        }
      }

      v2 = *(v2 + 16);
    }

    while (v2);
  }

  return result;
}

void StripOnlyChild(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a2 + 24) = *(v3 + 24);
  *(v3 + 24) = 0;
  FreeNode(a1, v3);
  for (i = *(a2 + 24); i; i = i[2])
  {
    *i = a2;
  }
}

void BQ2Div(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v8 = a2;
    do
    {
      v10 = *(v8 + 56);
      if (v10 && *v10 == 15 && *(v8 + 96))
      {
        v11 = *(v8 + 24);
        if (v11)
        {
          v12 = 1;
          while (!*(v11 + 16))
          {
            v13 = *(v11 + 56);
            if (!v13 || *v13 != 15 || !*(v8 + 96))
            {
              break;
            }

            ++v12;
            StripOnlyChild(a1, v8);
            v11 = *(v8 + 24);
            if (!v11)
            {
              goto LABEL_18;
            }
          }

          BQ2Div(a1);
        }

        else
        {
          v12 = 1;
        }

LABEL_18:
        tmbsnprintf(v15, 32, "margin-left: %dem", a4, a5, a6, a7, a8, 2 * v12);
        RenameElem(v8, 30);
        AddStyleProperty(a1, v8, v15);
      }

      else if (*(v8 + 24))
      {
        BQ2Div(a1);
      }

      v8 = *(v8 + 16);
    }

    while (v8);
  }

  v14 = *MEMORY[0x29EDCA608];
}

uint64_t DropSections(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 104);
    do
    {
      while (*(v2 + 80) == 9)
      {
        if (tmbstrncmp((*(v4 + 104) + *(v2 + 72)), "if", 2) || !tmbstrncmp((*(v4 + 104) + *(v2 + 72)), "if !vml", 7))
        {
          result = DiscardElement(v3, v2);
        }

        else
        {
          result = PruneSection(v3, v2);
        }

        v2 = result;
        if (!result)
        {
          return result;
        }
      }

      if (*(v2 + 24))
      {
        result = DropSections(v3);
      }

      v2 = *(v2 + 16);
    }

    while (v2);
  }

  return result;
}

uint64_t PruneSection(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  while (1)
  {
    if (!tmbstrncmp((*(v4 + 104) + *(a2 + 72)), "if !supportEmptyParas", 21))
    {
      v5 = a2;
      while (1)
      {
        v6 = v5[7];
        if (v6)
        {
          if (*v6 == 106)
          {
            break;
          }
        }

        v5 = *v5;
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      v7 = NewLiteralTextNode(v4, "\xA0");
      InsertNodeBeforeElement(a2, v7);
    }

LABEL_9:
    result = DiscardElement(a1, a2);
    if (!result)
    {
      return result;
    }

    a2 = result;
    if (*(result + 80) == 9)
    {
      if (tmbstrncmp((*(v4 + 104) + *(result + 72)), "if", 2))
      {
        if (!tmbstrncmp((*(v4 + 104) + *(a2 + 72)), "endif", 5))
        {

          return DiscardElement(a1, a2);
        }
      }

      else
      {
        a2 = PruneSection(a1, a2);
      }
    }
  }
}

unint64_t NormalizeSpaces(unint64_t result, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_32;
  }

  v2 = a2;
  v3 = result;
  do
  {
    if (*(v2 + 24))
    {
      NormalizeSpaces(v3);
    }

    result = nodeIsText(v2);
    if (!result)
    {
      goto LABEL_31;
    }

    v19 = 0;
    v4 = *(v3 + 104);
    v6 = *(v2 + 72);
    v5 = *(v2 + 76);
    v7 = v4 + v6;
    if (v6 >= v5)
    {
      goto LABEL_23;
    }

    do
    {
      v21 = 0;
      __src = 0;
      v8 = (*(v3 + 104) + v6);
      v9 = *v8;
      v10 = *v8;
      v19 = v10;
      if (v9 < 0)
      {
        v11 = GetUTF8(v8, &v19) + 1;
        v10 = v19;
      }

      else
      {
        v11 = 1;
      }

      if (v10 == 160)
      {
        v10 = 32;
        v19 = 32;
      }

      result = PutUTF8(&__src, v10);
      v12 = result - &__src;
      if (result <= &__src || v12 == 0)
      {
        *(*(v3 + 104) + v6) = v19;
LABEL_19:
        v14 = 1;
        goto LABEL_21;
      }

      if (v11 < v12)
      {
        goto LABEL_19;
      }

      v14 = v12;
      result = memmove((*(v3 + 104) + v6), &__src, v12);
      LODWORD(v6) = v6 + v11 - 1;
LABEL_21:
      v7 += v14;
      LODWORD(v6) = v6 + 1;
      v5 = *(v2 + 76);
    }

    while (v6 < v5);
    v4 = *(v3 + 104);
    v6 = *(v2 + 72);
LABEL_23:
    v15 = v7 >= v4;
    v16 = v7 - v4;
    if (v16 == 0 || !v15)
    {
      v16 = 0;
    }

    if (v16 <= v5 && v16 >= v6)
    {
      v5 = v16;
    }

    *(v2 + 76) = v5;
LABEL_31:
    v2 = *(v2 + 16);
  }

  while (v2);
LABEL_32:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void CleanWord2000(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = 0;
    v5 = *(a1 + 104);
    do
    {
      v6 = *(v2 + 56);
      if (!v6)
      {
        goto LABEL_20;
      }

      v7 = *v6;
      if (v7 == 48)
      {
        if (!GetAttrByName(v2, "xmlns:o") && !*(a1 + 336))
        {
          return;
        }

        FreeAttrs(a1, v2);
        v8 = *(v2 + 56);
        if (!v8)
        {
          goto LABEL_20;
        }

        v7 = *v8;
      }

      if (v7 == 79 && NoMargins(v2))
      {
        CoerceNode(a1, v2, 82, 0, 1);
        PurgeWord2000Attributes(a1, v2);
        v9 = *(v2 + 24);
        if (v9)
        {
          CleanWord2000(a1, v9);
        }

        v10 = *(v2 + 16);
        if (!v10)
        {
          return;
        }

        while (1)
        {
          v11 = v10[7];
          if (!v11 || *v11 != 79 || !NoMargins(v10))
          {
            break;
          }

          v12 = v10[2];
          RemoveNode(v10);
          v13 = NewLineNode(v5);
          InsertNodeAtEnd(v2, v13);
          InsertNodeAtEnd(v2, v10);
          StripSpan(a1, v10);
          v10 = v12;
          if (!v12)
          {
            return;
          }
        }

        v2 = v10;
      }

LABEL_20:
      v14 = *(v2 + 56);
      if (!v14)
      {
        goto LABEL_33;
      }

      if ((v14[8] & 8) != 0)
      {
        v15 = *(v2 + 24);
        if (v15)
        {
          if (!*(v15 + 16) && *(v15 + 80) == 4)
          {
            v17 = v15 + 72;
            v16 = *(v15 + 72);
            v18 = *(v17 + 4) - v16;
            if (v18 == 2)
            {
              v40 = 0;
              GetUTF8((*(v5 + 104) + v16), &v40);
              if (v40 == 160)
              {
                goto LABEL_42;
              }

              v14 = *(v2 + 56);
              if (!v14)
              {
                goto LABEL_33;
              }
            }

            else if (v18 == 1 && *(*(v5 + 104) + v16) == 32)
            {
LABEL_42:
              v19 = StripSpan(a1, v2);
              goto LABEL_35;
            }
          }
        }
      }

      if (*v14 == 67 || *v14 == 101)
      {
LABEL_34:
        v19 = DiscardElement(a1, v2);
        goto LABEL_35;
      }

LABEL_33:
      if (*(v2 + 80) == 2)
      {
        goto LABEL_34;
      }

      if (v14)
      {
        v20 = *v14;
        switch(v20)
        {
          case 'b':
            goto LABEL_42;
          case '>':
            v21 = AttrGetById(v2, 116);
            if (v21)
            {
              v22 = v21[6];
              if (v22)
              {
                if (!tmbstrcasecmp(v22, "File-List"))
                {
                  goto LABEL_34;
                }
              }
            }

            break;
          case '$':
            goto LABEL_42;
        }
      }

      v23 = *(v2 + 56);
      if (v23 && !tmbstrcmp(*(v23 + 8), "o:p"))
      {
        v39 = 0;
        DiscardContainer(a1, v2, &v39);
        v2 = v39;
        continue;
      }

      v24 = *(v2 + 56);
      if (*(v2 + 24))
      {
        if (!v24 || *v24 != 79)
        {
          goto LABEL_71;
        }

        v25 = AttrGetById(v2, 25);
        v26 = AttrGetById(v2, 135);
        if (v25 && (v27 = v25[6]) != 0 && (!tmbstrcasecmp(v27, "MsoListBullet") || (v28 = v25[6]) != 0 && !tmbstrcasecmp(v28, "MsoListNumber")))
        {
LABEL_64:
          v30 = v25[6];
          if (!v30)
          {
            goto LABEL_77;
          }

          if (tmbstrcasecmp(v30, "MsoListNumber"))
          {
            v31 = 115;
          }

          else
          {
            v31 = 76;
          }

LABEL_78:
          CoerceNode(a1, v2, 61, 0, 1);
          if (!v4 || (v34 = *(v4 + 7)) == 0 || *v34 != v31)
          {
            v35 = LookupTagDef(v31);
            v4 = InferredTag(a1, *v35);
            InsertNodeBeforeElement(v2, v4);
          }

          PurgeWord2000Attributes(a1, v2);
          v36 = *(v2 + 24);
          if (v36)
          {
            CleanWord2000(a1, v36);
          }

          RemoveNode(v2);
          InsertNodeAtEnd(v4, v2);
          v2 = v4;
          if (!v4)
          {
            return;
          }
        }

        else
        {
          if (v26)
          {
            v29 = v26[6];
            if (v29)
            {
              if (tmbsubstr(v29, "mso-list:"))
              {
                if (v25)
                {
                  goto LABEL_64;
                }

LABEL_77:
                v31 = 115;
                goto LABEL_78;
              }
            }
          }

          if (v25 && (v32 = v25[6]) != 0 && !tmbstrcasecmp(v32, "Code"))
          {
            v37 = NewLineNode(v5);
            NormalizeSpaces(v5, *(v2 + 24));
            if (!v4 || (v38 = *(v4 + 7)) == 0 || *v38 != 82)
            {
              v4 = InferredTag(a1, 82);
              InsertNodeBeforeElement(v2, v4);
            }

            RemoveNode(v2);
            InsertNodeAtEnd(v4, v2);
            StripSpan(a1, v2);
            InsertNodeAtEnd(v4, v37);
            v2 = *(v4 + 2);
            if (!v2)
            {
              return;
            }
          }

          else
          {
LABEL_71:
            v4 = 0;
          }
        }

        if (nodeIsElement(v2))
        {
          PurgeWord2000Attributes(a1, v2);
        }

        v33 = *(v2 + 24);
        if (v33)
        {
          CleanWord2000(a1, v33);
        }

        v2 = *(v2 + 16);
        continue;
      }

      if (!v24 || *v24 != 79)
      {
        goto LABEL_71;
      }

      v19 = TrimEmptyElement(a1, v2);
LABEL_35:
      v2 = v19;
    }

    while (v2);
  }
}

void *NoMargins(uint64_t a1)
{
  result = AttrGetById(a1, 135);
  if (result)
  {
    v2 = result;
    result = result[6];
    if (result)
    {
      result = tmbsubstr(result, "margin-top: 0");
      if (result)
      {
        return (tmbsubstr(v2[6], "margin-bottom: 0") != 0);
      }
    }
  }

  return result;
}

void PurgeWord2000Attributes(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 40);
  v3 = *(a2 + 40);
  if (v3)
  {
    v6 = 0;
    do
    {
      while (1)
      {
        v7 = v3;
        v3 = *v3;
        v8 = v7[1];
        if (!v8)
        {
          goto LABEL_23;
        }

        v9 = *v8;
        if (v9 == 25)
        {
          break;
        }

LABEL_11:
        if (v9 > 134)
        {
          if (v9 == 135)
          {
            goto LABEL_27;
          }

          if (v9 != 150)
          {
            goto LABEL_23;
          }
        }

        else if (v9 != 57)
        {
          if (v9 == 65)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }

        v12 = *(a2 + 56);
        if (v12)
        {
          v13 = *v12 - 106;
          v14 = v13 > 6;
          v15 = (1 << v13) & 0x49;
          if (!v14 && v15 != 0)
          {
            goto LABEL_27;
          }
        }

LABEL_23:
        v17 = v7[5];
        if (!v17 || tmbstrncmp(v17, "x:", 2))
        {
          goto LABEL_25;
        }

LABEL_27:
        if (v6)
        {
          v18 = v6;
        }

        else
        {
          v18 = v2;
        }

        *v18 = v3;
        FreeAttribute(a1, v7);
        if (!v3)
        {
          return;
        }
      }

      v10 = v7[6];
      if (v10)
      {
        if (!tmbstrcasecmp(v10, "Code"))
        {
          goto LABEL_25;
        }

        v10 = v7[6];
      }

      if (!tmbstrncmp(v10, "Mso", 3))
      {
        v11 = v7[1];
        if (!v11)
        {
          goto LABEL_23;
        }

        v9 = *v11;
        if (v9 == 25)
        {
          goto LABEL_27;
        }

        goto LABEL_11;
      }

LABEL_25:
      v6 = v7;
    }

    while (v3);
  }
}