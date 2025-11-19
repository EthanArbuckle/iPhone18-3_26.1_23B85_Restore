void AdapterParamSet::setIntParameter(AdapterParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a3;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F70, 4, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v16 = **ParamByParamId;
      }

      IntParamSpec::validateValue(ParamByParamId, v9, 0, 0, v12, v13, v14, v15);
      if (*(this + 9))
      {
        v23 = "AdaptationBasisDevRelevance";
        goto LABEL_184;
      }

      *(this + 11) = v9;
      return;
    case 5:
      v78 = ParamSpecMgr::getParamByParamId(qword_281051F70, 5, a3, a4, a5, a6, a7, a8);
      if (v78)
      {
        v83 = **v78;
      }

      IntParamSpec::validateValue(v78, v9, 0, 0, v79, v80, v81, v82);
      if (*(this + 9))
      {
        v23 = "AdaptationBasisMeanRelevance";
        goto LABEL_184;
      }

      *(this + 12) = v9;
      return;
    case 6:
      v132 = ParamSpecMgr::getParamByParamId(qword_281051F70, 6, a3, a4, a5, a6, a7, a8);
      if (v132)
      {
        v137 = **v132;
      }

      IntParamSpec::validateValue(v132, v9, 0, 0, v133, v134, v135, v136);
      if (*(this + 9))
      {
        v23 = "AdaptationBaumWelchMaxUttSeconds";
        goto LABEL_184;
      }

      *(this + 13) = v9;
      return;
    case 7:
      throwWrongTypeForParamId(7, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_89;
    case 8:
LABEL_89:
      v114 = ParamSpecMgr::getParamByParamId(qword_281051F70, 8, a3, a4, a5, a6, a7, a8);
      if (v114)
      {
        v119 = **v114;
      }

      IntParamSpec::validateValue(v114, v9, 0, 0, v115, v116, v117, v118);
      if (*(this + 9))
      {
        v23 = "AdaptationBaumWelchThreshScore";
        goto LABEL_184;
      }

      *(this + 16) = v9;
      return;
    case 9:
      v162 = ParamSpecMgr::getParamByParamId(qword_281051F70, 9, a3, a4, a5, a6, a7, a8);
      if (v162)
      {
        v167 = **v162;
      }

      IntParamSpec::validateValue(v162, v9, 0, 0, v163, v164, v165, v166);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccSilenceToSpeechWeight";
        goto LABEL_184;
      }

      *(this + 17) = v9;
      return;
    case 10:
      throwWrongTypeForParamId(10, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_37;
    case 11:
LABEL_37:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_38;
    case 12:
LABEL_38:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_39;
    case 13:
LABEL_39:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_40;
    case 14:
LABEL_40:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_41;
    case 15:
LABEL_41:
      v60 = ParamSpecMgr::getParamByParamId(qword_281051F70, 15, a3, a4, a5, a6, a7, a8);
      if (v60)
      {
        v65 = **v60;
      }

      IntParamSpec::validateValue(v60, v9, 0, 0, v61, v62, v63, v64);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccGenoneClassMinFrameCount";
        goto LABEL_184;
      }

      *(this + 21) = v9;
      return;
    case 16:
      v102 = ParamSpecMgr::getParamByParamId(qword_281051F70, 16, a3, a4, a5, a6, a7, a8);
      if (v102)
      {
        v107 = **v102;
      }

      IntParamSpec::validateValue(v102, v9, 0, 0, v103, v104, v105, v106);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccGlobalSmoothingMinAccumFrames";
        goto LABEL_184;
      }

      *(this + 22) = v9;
      return;
    case 17:
      v48 = ParamSpecMgr::getParamByParamId(qword_281051F70, 17, a3, a4, a5, a6, a7, a8);
      if (v48)
      {
        v53 = **v48;
      }

      IntParamSpec::validateValue(v48, v9, 0, 0, v49, v50, v51, v52);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccGlobalSmoothingRelevance";
        goto LABEL_184;
      }

      *(this + 23) = v9;
      return;
    case 18:
      throwWrongTypeForParamId(18, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_124;
    case 19:
LABEL_124:
      v156 = ParamSpecMgr::getParamByParamId(qword_281051F70, 19, a3, a4, a5, a6, a7, a8);
      if (v156)
      {
        v161 = **v156;
      }

      IntParamSpec::validateValue(v156, v9, 0, 0, v157, v158, v159, v160);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccMaxNumTransforms";
        goto LABEL_184;
      }

      *(this + 25) = v9;
      return;
    case 20:
      throwWrongTypeForParamId(20, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_98;
    case 21:
LABEL_98:
      v126 = ParamSpecMgr::getParamByParamId(qword_281051F70, 21, a3, a4, a5, a6, a7, a8);
      if (v126)
      {
        v131 = **v126;
      }

      IntParamSpec::validateValue(v126, v9, 0, 0, v127, v128, v129, v130);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccMinAccumFrames";
        goto LABEL_184;
      }

      *(this + 28) = v9;
      return;
    case 22:
      v150 = ParamSpecMgr::getParamByParamId(qword_281051F70, 22, a3, a4, a5, a6, a7, a8);
      if (v150)
      {
        v155 = **v150;
      }

      IntParamSpec::validateValue(v150, v9, 0, 0, v151, v152, v153, v154);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccNumIterations";
        goto LABEL_184;
      }

      *(this + 29) = v9;
      return;
    case 23:
      v174 = ParamSpecMgr::getParamByParamId(qword_281051F70, 23, a3, a4, a5, a6, a7, a8);
      if (v174)
      {
        v179 = **v174;
      }

      IntParamSpec::validateValue(v174, v9, 0, 0, v175, v176, v177, v178);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccOnlineCommitIntervalSeconds";
        goto LABEL_184;
      }

      *(this + 30) = v9;
      return;
    case 24:
      v192 = ParamSpecMgr::getParamByParamId(qword_281051F70, 24, a3, a4, a5, a6, a7, a8);
      if (v192)
      {
        v197 = **v192;
      }

      IntParamSpec::validateValue(v192, v9, 0, 0, v193, v194, v195, v196);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccOnlineCommitIntervalUtts";
        goto LABEL_184;
      }

      *(this + 31) = v9;
      return;
    case 25:
      throwWrongTypeForParamId(25, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_76;
    case 26:
LABEL_76:
      v96 = ParamSpecMgr::getParamByParamId(qword_281051F70, 26, a3, a4, a5, a6, a7, a8);
      if (v96)
      {
        v101 = **v96;
      }

      IntParamSpec::validateValue(v96, v9, 0, 0, v97, v98, v99, v100);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccOnlineDecayInterval";
        goto LABEL_184;
      }

      *(this + 34) = v9;
      return;
    case 27:
      throwWrongTypeForParamId(27, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 28:
LABEL_23:
      v42 = ParamSpecMgr::getParamByParamId(qword_281051F70, 28, a3, a4, a5, a6, a7, a8);
      if (v42)
      {
        v47 = **v42;
      }

      IntParamSpec::validateValue(v42, v9, 0, 0, v43, v44, v45, v46);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccOnlineNumTransformsMin";
        goto LABEL_184;
      }

      *(this + 36) = v9;
      return;
    case 29:
      v198 = ParamSpecMgr::getParamByParamId(qword_281051F70, 29, a3, a4, a5, a6, a7, a8);
      if (v198)
      {
        v203 = **v198;
      }

      IntParamSpec::validateValue(v198, v9, 0, 0, v199, v200, v201, v202);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccOnlineNumTransformsRange";
        goto LABEL_184;
      }

      *(this + 37) = v9;
      return;
    case 30:
      v204 = ParamSpecMgr::getParamByParamId(qword_281051F70, 30, a3, a4, a5, a6, a7, a8);
      if (v204)
      {
        v209 = **v204;
      }

      IntParamSpec::validateValue(v204, v9, 0, 0, v205, v206, v207, v208);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccRelevance";
        goto LABEL_184;
      }

      *(this + 38) = v9;
      return;
    case 31:
      v168 = ParamSpecMgr::getParamByParamId(qword_281051F70, 31, a3, a4, a5, a6, a7, a8);
      if (v168)
      {
        v173 = **v168;
      }

      IntParamSpec::validateValue(v168, v9, 0, 0, v169, v170, v171, v172);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccRootGenoneClassMinFrameCount";
        goto LABEL_184;
      }

      *(this + 39) = v9;
      return;
    case 32:
      v120 = ParamSpecMgr::getParamByParamId(qword_281051F70, 32, a3, a4, a5, a6, a7, a8);
      if (v120)
      {
        v125 = **v120;
      }

      IntParamSpec::validateValue(v120, v9, 0, 0, v121, v122, v123, v124);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccDecomposedAccumCutoffPercent";
        goto LABEL_184;
      }

      *(this + 40) = v9;
      return;
    case 33:
      throwWrongTypeForParamId(33, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_47;
    case 34:
LABEL_47:
      v66 = ParamSpecMgr::getParamByParamId(qword_281051F70, 34, a3, a4, a5, a6, a7, a8);
      if (v66)
      {
        v71 = **v66;
      }

      IntParamSpec::validateValue(v66, v9, 0, 0, v67, v68, v69, v70);
      if (*(this + 9))
      {
        v23 = "AdaptationConTransAccRidgeRegularizationFactor";
        goto LABEL_184;
      }

      *(this + 42) = v9;
      return;
    case 35:
      throwWrongTypeForParamId(35, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_161;
    case 36:
LABEL_161:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_162;
    case 37:
LABEL_162:
      throwWrongTypeForParamId(v8, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_163;
    case 38:
LABEL_163:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_164;
    case 39:
LABEL_164:
      v210 = ParamSpecMgr::getParamByParamId(qword_281051F70, 39, a3, a4, a5, a6, a7, a8);
      if (v210)
      {
        v215 = **v210;
      }

      IntParamSpec::validateValue(v210, v9, 0, 0, v211, v212, v213, v214);
      if (*(this + 9))
      {
        v23 = "AdaptationDTMMIntruderMinMicroseconds";
        goto LABEL_184;
      }

      *(this + 52) = v9;
      return;
    case 40:
      v180 = ParamSpecMgr::getParamByParamId(qword_281051F70, 40, a3, a4, a5, a6, a7, a8);
      if (v180)
      {
        v185 = **v180;
      }

      IntParamSpec::validateValue(v180, v9, 0, 0, v181, v182, v183, v184);
      if (*(this + 9))
      {
        v23 = "AdaptationDTMMMaxIntruderCount";
        goto LABEL_184;
      }

      *(this + 53) = v9;
      return;
    case 41:
      v84 = ParamSpecMgr::getParamByParamId(qword_281051F70, 41, a3, a4, a5, a6, a7, a8);
      if (v84)
      {
        v89 = **v84;
      }

      IntParamSpec::validateValue(v84, v9, 0, 0, v85, v86, v87, v88);
      if (*(this + 9))
      {
        v23 = "AdaptationDTMMMaxIntrudersPerStartTimeSegment";
        goto LABEL_184;
      }

      *(this + 54) = v9;
      return;
    case 42:
      throwWrongTypeForParamId(42, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_52;
    case 43:
LABEL_52:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_53;
    case 44:
LABEL_53:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_54;
    case 45:
LABEL_54:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 46:
LABEL_55:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_56;
    case 47:
LABEL_56:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_57;
    case 48:
LABEL_57:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_58;
    case 49:
LABEL_58:
      v72 = ParamSpecMgr::getParamByParamId(qword_281051F70, 49, a3, a4, a5, a6, a7, a8);
      if (v72)
      {
        v77 = **v72;
      }

      IntParamSpec::validateValue(v72, v9, 0, 0, v73, v74, v75, v76);
      if (*(this + 9))
      {
        v23 = "AdaptationDTMMNumIterations";
        goto LABEL_184;
      }

      *(this + 70) = v9;
      return;
    case 50:
      throwWrongTypeForParamId(50, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_178;
    case 51:
LABEL_178:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_179;
    case 52:
LABEL_179:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_180;
    case 53:
LABEL_180:
      v228 = ParamSpecMgr::getParamByParamId(qword_281051F70, 53, a3, a4, a5, a6, a7, a8);
      if (v228)
      {
        v233 = **v228;
      }

      IntParamSpec::validateValue(v228, v9, 0, 0, v229, v230, v231, v232);
      if (*(this + 9))
      {
        v23 = "AdaptationDTMMSmoothRelevance";
        goto LABEL_184;
      }

      *(this + 77) = v9;
      return;
    case 54:
      v24 = ParamSpecMgr::getParamByParamId(qword_281051F70, 54, a3, a4, a5, a6, a7, a8);
      if (v24)
      {
        v29 = **v24;
      }

      IntParamSpec::validateValue(v24, v9, 0, 0, v25, v26, v27, v28);
      if (*(this + 9))
      {
        v23 = "AdaptationDTMMStartTimeSegmentMaxDeltaMicroseconds";
        goto LABEL_184;
      }

      *(this + 78) = v9;
      return;
    case 55:
      v216 = ParamSpecMgr::getParamByParamId(qword_281051F70, 55, a3, a4, a5, a6, a7, a8);
      if (v216)
      {
        v221 = **v216;
      }

      IntParamSpec::validateValue(v216, v9, 0, 0, v217, v218, v219, v220);
      if (*(this + 9))
      {
        v23 = "AdaptationDTMMUniqMaxDeltaMicroseconds";
        goto LABEL_184;
      }

      *(this + 79) = v9;
      return;
    case 56:
      v222 = ParamSpecMgr::getParamByParamId(qword_281051F70, 56, a3, a4, a5, a6, a7, a8);
      if (v222)
      {
        v227 = **v222;
      }

      IntParamSpec::validateValue(v222, v9, 0, 0, v223, v224, v225, v226);
      if (*(this + 9))
      {
        v23 = "AdaptationDurationRelevance";
        goto LABEL_184;
      }

      *(this + 80) = v9;
      return;
    case 57:
      v30 = ParamSpecMgr::getParamByParamId(qword_281051F70, 57, a3, a4, a5, a6, a7, a8);
      if (v30)
      {
        v35 = **v30;
      }

      IntParamSpec::validateValue(v30, v9, 0, 0, v31, v32, v33, v34);
      if (*(this + 9))
      {
        v23 = "AdaptationLogWeightRelevance";
        goto LABEL_184;
      }

      *(this + 81) = v9;
      return;
    case 58:
      v186 = ParamSpecMgr::getParamByParamId(qword_281051F70, 58, a3, a4, a5, a6, a7, a8);
      if (v186)
      {
        v191 = **v186;
      }

      IntParamSpec::validateValue(v186, v9, 0, 0, v187, v188, v189, v190);
      if (*(this + 9))
      {
        v23 = "AdaptationMaxLogWeight";
        goto LABEL_184;
      }

      *(this + 82) = v9;
      return;
    case 59:
      throwWrongTypeForParamId(59, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_111;
    case 60:
LABEL_111:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_112;
    case 61:
LABEL_112:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_113;
    case 62:
LABEL_113:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_114;
    case 63:
LABEL_114:
      v144 = ParamSpecMgr::getParamByParamId(qword_281051F70, 63, a3, a4, a5, a6, a7, a8);
      if (v144)
      {
        v149 = **v144;
      }

      IntParamSpec::validateValue(v144, v9, 0, 0, v145, v146, v147, v148);
      if (*(this + 9))
      {
        v23 = "AdaptationTransAccGenoneClassMinFrameCount";
        goto LABEL_184;
      }

      *(this + 90) = v9;
      return;
    case 64:
      v108 = ParamSpecMgr::getParamByParamId(qword_281051F70, 64, a3, a4, a5, a6, a7, a8);
      if (v108)
      {
        v113 = **v108;
      }

      IntParamSpec::validateValue(v108, v9, 0, 0, v109, v110, v111, v112);
      if (*(this + 9))
      {
        v23 = "AdaptationTransAccGlobalSmoothingMinAccumFrames";
        goto LABEL_184;
      }

      *(this + 91) = v9;
      return;
    case 65:
      v90 = ParamSpecMgr::getParamByParamId(qword_281051F70, 65, a3, a4, a5, a6, a7, a8);
      if (v90)
      {
        v95 = **v90;
      }

      IntParamSpec::validateValue(v90, v9, 0, 0, v91, v92, v93, v94);
      if (*(this + 9))
      {
        v23 = "AdaptationTransAccGlobalSmoothingRelevance";
        goto LABEL_184;
      }

      *(this + 92) = v9;
      return;
    case 66:
      v138 = ParamSpecMgr::getParamByParamId(qword_281051F70, 66, a3, a4, a5, a6, a7, a8);
      if (v138)
      {
        v143 = **v138;
      }

      IntParamSpec::validateValue(v138, v9, 0, 0, v139, v140, v141, v142);
      if (*(this + 9))
      {
        v23 = "AdaptationTransAccMaxNumTransforms";
        goto LABEL_184;
      }

      *(this + 93) = v9;
      return;
    case 67:
      throwWrongTypeForParamId(67, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_32;
    case 68:
LABEL_32:
      v54 = ParamSpecMgr::getParamByParamId(qword_281051F70, 68, a3, a4, a5, a6, a7, a8);
      if (v54)
      {
        v59 = **v54;
      }

      IntParamSpec::validateValue(v54, v9, 0, 0, v55, v56, v57, v58);
      if (*(this + 9))
      {
        v23 = "AdaptationTransAccMinAccumFrames";
        goto LABEL_184;
      }

      *(this + 96) = v9;
      return;
    case 69:
      v234 = ParamSpecMgr::getParamByParamId(qword_281051F70, 69, a3, a4, a5, a6, a7, a8);
      if (v234)
      {
        v239 = **v234;
      }

      IntParamSpec::validateValue(v234, v9, 0, 0, v235, v236, v237, v238);
      if (*(this + 9))
      {
        v23 = "AdaptationTransAccNumIterations";
        goto LABEL_184;
      }

      *(this + 97) = v9;
      break;
    case 70:
      v36 = ParamSpecMgr::getParamByParamId(qword_281051F70, 70, a3, a4, a5, a6, a7, a8);
      if (v36)
      {
        v41 = **v36;
      }

      IntParamSpec::validateValue(v36, v9, 0, 0, v37, v38, v39, v40);
      if (*(this + 9))
      {
        v23 = "AdaptationTransAccRelevance";
LABEL_184:

        throwParamSetSetFailed(v23, "int", v17, v18, v19, v20, v21, v22);
      }

      else
      {
        *(this + 98) = v9;
      }

      break;
    default:

      throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void AdapterParamSet::setDoubleParameter(AdapterParamSet *this, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_8;
    case 7:
LABEL_8:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F70, 7, a4, a5, a6, a7, a8, a9);
      if (ParamByParamId)
      {
        v18 = **ParamByParamId;
      }

      DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0, v13, v14, v15, v16, v17);
      if (*(this + 9))
      {
        v25 = "AdaptationBaumWelchScale";
        goto LABEL_138;
      }

      *(this + 7) = a3;
      return;
    case 8:
      throwWrongTypeForParamId(8, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_77;
    case 9:
LABEL_77:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_78;
    case 10:
LABEL_78:
      v96 = ParamSpecMgr::getParamByParamId(qword_281051F70, 10, a4, a5, a6, a7, a8, a9);
      if (v96)
      {
        v102 = **v96;
      }

      DoubleParamSpec::validateValue(v96, a3, 0, 0, v97, v98, v99, v100, v101);
      if (*(this + 9))
      {
        v25 = "AdaptationConTransAccComponentBackoffPercent";
        goto LABEL_138;
      }

      *(this + 9) = a3;
      return;
    case 11:
      throwWrongTypeForParamId(11, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_109;
    case 12:
LABEL_109:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_110;
    case 13:
LABEL_110:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_111;
    case 14:
LABEL_111:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_112;
    case 15:
LABEL_112:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_113;
    case 16:
LABEL_113:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_114;
    case 17:
LABEL_114:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_115;
    case 18:
LABEL_115:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_116;
    case 19:
LABEL_116:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_117;
    case 20:
LABEL_117:
      v131 = ParamSpecMgr::getParamByParamId(qword_281051F70, 20, a4, a5, a6, a7, a8, a9);
      if (v131)
      {
        v137 = **v131;
      }

      DoubleParamSpec::validateValue(v131, a3, 0, 0, v132, v133, v134, v135, v136);
      if (*(this + 9))
      {
        v25 = "AdaptationConTransAccMaxTotalComponentProbability";
        goto LABEL_138;
      }

      *(this + 13) = a3;
      return;
    case 21:
      throwWrongTypeForParamId(21, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_84;
    case 22:
LABEL_84:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_85;
    case 23:
LABEL_85:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_86;
    case 24:
LABEL_86:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_87;
    case 25:
LABEL_87:
      v103 = ParamSpecMgr::getParamByParamId(qword_281051F70, 25, a4, a5, a6, a7, a8, a9);
      if (v103)
      {
        v109 = **v103;
      }

      DoubleParamSpec::validateValue(v103, a3, 0, 0, v104, v105, v106, v107, v108);
      if (*(this + 9))
      {
        v25 = "AdaptationConTransAccOnlineDecayFactor";
        goto LABEL_138;
      }

      *(this + 16) = a3;
      return;
    case 26:
      throwWrongTypeForParamId(26, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_50;
    case 27:
LABEL_50:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_51;
    case 28:
LABEL_51:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_52;
    case 29:
LABEL_52:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_53;
    case 30:
LABEL_53:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_54;
    case 31:
LABEL_54:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_55;
    case 32:
LABEL_55:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_56;
    case 33:
LABEL_56:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_57;
    case 34:
LABEL_57:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_58;
    case 35:
LABEL_58:
      v68 = ParamSpecMgr::getParamByParamId(qword_281051F70, 35, a4, a5, a6, a7, a8, a9);
      if (v68)
      {
        v74 = **v68;
      }

      DoubleParamSpec::validateValue(v68, a3, 0, 0, v69, v70, v71, v72, v73);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMDevGradientWeight";
        goto LABEL_138;
      }

      *(this + 22) = a3;
      return;
    case 36:
      v61 = ParamSpecMgr::getParamByParamId(qword_281051F70, 36, a4, a5, a6, a7, a8, a9);
      if (v61)
      {
        v67 = **v61;
      }

      DoubleParamSpec::validateValue(v61, a3, 0, 0, v62, v63, v64, v65, v66);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMErrorBeta";
        goto LABEL_138;
      }

      *(this + 23) = a3;
      return;
    case 37:
      throwWrongTypeForParamId(37, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_31;
    case 38:
LABEL_31:
      v47 = ParamSpecMgr::getParamByParamId(qword_281051F70, 38, a4, a5, a6, a7, a8, a9);
      if (v47)
      {
        v53 = **v47;
      }

      DoubleParamSpec::validateValue(v47, a3, 0, 0, v48, v49, v50, v51, v52);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMErrorOffset";
        goto LABEL_138;
      }

      *(this + 25) = a3;
      return;
    case 39:
      throwWrongTypeForParamId(39, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_93;
    case 40:
LABEL_93:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_94;
    case 41:
LABEL_94:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_95;
    case 42:
LABEL_95:
      v110 = ParamSpecMgr::getParamByParamId(qword_281051F70, 42, a4, a5, a6, a7, a8, a9);
      if (v110)
      {
        v116 = **v110;
      }

      DoubleParamSpec::validateValue(v110, a3, 0, 0, v111, v112, v113, v114, v115);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMMeanGradientWeight";
        goto LABEL_138;
      }

      *(this + 28) = a3;
      return;
    case 43:
      v138 = ParamSpecMgr::getParamByParamId(qword_281051F70, 43, a4, a5, a6, a7, a8, a9);
      if (v138)
      {
        v144 = **v138;
      }

      DoubleParamSpec::validateValue(v138, a3, 0, 0, v139, v140, v141, v142, v143);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMMinNegativeCount";
        goto LABEL_138;
      }

      *(this + 29) = a3;
      return;
    case 44:
      v33 = ParamSpecMgr::getParamByParamId(qword_281051F70, 44, a4, a5, a6, a7, a8, a9);
      if (v33)
      {
        v39 = **v33;
      }

      DoubleParamSpec::validateValue(v33, a3, 0, 0, v34, v35, v36, v37, v38);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMMinPositiveCount";
        goto LABEL_138;
      }

      *(this + 30) = a3;
      return;
    case 45:
      v75 = ParamSpecMgr::getParamByParamId(qword_281051F70, 45, a4, a5, a6, a7, a8, a9);
      if (v75)
      {
        v81 = **v75;
      }

      DoubleParamSpec::validateValue(v75, a3, 0, 0, v76, v77, v78, v79, v80);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMMinTotalCount";
        goto LABEL_138;
      }

      *(this + 31) = a3;
      return;
    case 46:
      v124 = ParamSpecMgr::getParamByParamId(qword_281051F70, 46, a4, a5, a6, a7, a8, a9);
      if (v124)
      {
        v130 = **v124;
      }

      DoubleParamSpec::validateValue(v124, a3, 0, 0, v125, v126, v127, v128, v129);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMNegativeGradientWeight";
        goto LABEL_138;
      }

      *(this + 32) = a3;
      return;
    case 47:
      v152 = ParamSpecMgr::getParamByParamId(qword_281051F70, 47, a4, a5, a6, a7, a8, a9);
      if (v152)
      {
        v158 = **v152;
      }

      DoubleParamSpec::validateValue(v152, a3, 0, 0, v153, v154, v155, v156, v157);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMNormalizedDeltaMin";
        goto LABEL_138;
      }

      *(this + 33) = a3;
      return;
    case 48:
      v54 = ParamSpecMgr::getParamByParamId(qword_281051F70, 48, a4, a5, a6, a7, a8, a9);
      if (v54)
      {
        v60 = **v54;
      }

      DoubleParamSpec::validateValue(v54, a3, 0, 0, v55, v56, v57, v58, v59);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMNormalizedDeltaRange";
        goto LABEL_138;
      }

      *(this + 34) = a3;
      return;
    case 49:
      throwWrongTypeForParamId(49, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_68;
    case 50:
LABEL_68:
      v82 = ParamSpecMgr::getParamByParamId(qword_281051F70, 50, a4, a5, a6, a7, a8, a9);
      if (v82)
      {
        v88 = **v82;
      }

      DoubleParamSpec::validateValue(v82, a3, 0, 0, v83, v84, v85, v86, v87);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMPositiveGradientWeight";
        goto LABEL_138;
      }

      *(this + 36) = a3;
      return;
    case 51:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051F70, 51, a4, a5, a6, a7, a8, a9);
      if (v26)
      {
        v32 = **v26;
      }

      DoubleParamSpec::validateValue(v26, a3, 0, 0, v27, v28, v29, v30, v31);
      if (*(this + 9))
      {
        v25 = "AdaptationDTMMScoreScale";
        goto LABEL_138;
      }

      *(this + 37) = a3;
      return;
    case 52:
      throwWrongTypeForParamId(52, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_127;
    case 53:
LABEL_127:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_128;
    case 54:
LABEL_128:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_129;
    case 55:
LABEL_129:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_130;
    case 56:
LABEL_130:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_131;
    case 57:
LABEL_131:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_132;
    case 58:
LABEL_132:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_133;
    case 59:
LABEL_133:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_134;
    case 60:
LABEL_134:
      v145 = ParamSpecMgr::getParamByParamId(qword_281051F70, 60, a4, a5, a6, a7, a8, a9);
      if (v145)
      {
        v151 = **v145;
      }

      DoubleParamSpec::validateValue(v145, a3, 0, 0, v146, v147, v148, v149, v150);
      if (*(this + 9))
      {
        v25 = "AdaptationNonSilenceAccumulateFactor";
        goto LABEL_138;
      }

      *(this + 42) = a3;
      return;
    case 61:
      v89 = ParamSpecMgr::getParamByParamId(qword_281051F70, 61, a4, a5, a6, a7, a8, a9);
      if (v89)
      {
        v95 = **v89;
      }

      DoubleParamSpec::validateValue(v89, a3, 0, 0, v90, v91, v92, v93, v94);
      if (*(this + 9))
      {
        v25 = "AdaptationSilenceAccumulateFactor";
        goto LABEL_138;
      }

      *(this + 43) = a3;
      return;
    case 62:
      v117 = ParamSpecMgr::getParamByParamId(qword_281051F70, 62, a4, a5, a6, a7, a8, a9);
      if (v117)
      {
        v123 = **v117;
      }

      DoubleParamSpec::validateValue(v117, a3, 0, 0, v118, v119, v120, v121, v122);
      if (*(this + 9))
      {
        v25 = "AdaptationTransAccComponentBackoffPercent";
        goto LABEL_138;
      }

      *(this + 44) = a3;
      break;
    case 63:
      throwWrongTypeForParamId(63, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_22;
    case 64:
LABEL_22:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_23;
    case 65:
LABEL_23:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_24;
    case 66:
LABEL_24:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_25;
    case 67:
LABEL_25:
      v40 = ParamSpecMgr::getParamByParamId(qword_281051F70, 67, a4, a5, a6, a7, a8, a9);
      if (v40)
      {
        v46 = **v40;
      }

      DoubleParamSpec::validateValue(v40, a3, 0, 0, v41, v42, v43, v44, v45);
      if (*(this + 9))
      {
        v25 = "AdaptationTransAccMaxTotalComponentProbability";
LABEL_138:

        throwParamSetSetFailed(v25, "double", v19, v20, v21, v22, v23, v24);
      }

      else
      {
        *(this + 47) = a3;
      }

      break;
    case 68:
      throwWrongTypeForParamId(68, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_44;
    case 69:
LABEL_44:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_45;
    case 70:
LABEL_45:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_46;
    default:
LABEL_46:

      throwWrongParamIdValue(v9, "double", a4, a5, a6, a7, a8, a9);
      return;
  }
}

void AdapterParamSet::setStringParameter(AdapterParamSet *this, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 19:
LABEL_20:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 20:
LABEL_21:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 21:
LABEL_22:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 22:
LABEL_23:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 23:
LABEL_24:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_25;
    case 24:
LABEL_25:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_26;
    case 25:
LABEL_26:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_27;
    case 26:
LABEL_27:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_28;
    case 27:
LABEL_28:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_29;
    case 28:
LABEL_29:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_30;
    case 29:
LABEL_30:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_31;
    case 30:
LABEL_31:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_32;
    case 31:
LABEL_32:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_33;
    case 32:
LABEL_33:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_34;
    case 33:
LABEL_34:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_35;
    case 34:
LABEL_35:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_36;
    case 35:
LABEL_36:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_37;
    case 36:
LABEL_37:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_38;
    case 37:
LABEL_38:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_39;
    case 38:
LABEL_39:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_40;
    case 39:
LABEL_40:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_41;
    case 40:
LABEL_41:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_42;
    case 41:
LABEL_42:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_43;
    case 42:
LABEL_43:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_44;
    case 43:
LABEL_44:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_45;
    case 44:
LABEL_45:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_46;
    case 45:
LABEL_46:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_47;
    case 46:
LABEL_47:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_48;
    case 47:
LABEL_48:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_49;
    case 48:
LABEL_49:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 49:
LABEL_50:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_51;
    case 50:
LABEL_51:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_52;
    case 51:
LABEL_52:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_53;
    case 52:
LABEL_53:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_54;
    case 53:
LABEL_54:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 54:
LABEL_55:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_56;
    case 55:
LABEL_56:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_57;
    case 56:
LABEL_57:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_58;
    case 57:
LABEL_58:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_59;
    case 58:
LABEL_59:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_60;
    case 59:
LABEL_60:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_61;
    case 60:
LABEL_61:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_62;
    case 61:
LABEL_62:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_63;
    case 62:
LABEL_63:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_64;
    case 63:
LABEL_64:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_65;
    case 64:
LABEL_65:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_66;
    case 65:
LABEL_66:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_67;
    case 66:
LABEL_67:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_68;
    case 67:
LABEL_68:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_69;
    case 68:
LABEL_69:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_70;
    case 69:
LABEL_70:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_71;
    case 70:
LABEL_71:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      break;
    default:
      break;
  }

  throwWrongParamIdValue(v8, "string", a3, a4, a5, a6, a7, a8);
}

void AdapterParamSet::setEnumParameter(AdapterParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a3;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 19:
LABEL_20:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 20:
LABEL_21:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 21:
LABEL_22:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 22:
LABEL_23:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 23:
LABEL_24:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_25;
    case 24:
LABEL_25:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_26;
    case 25:
LABEL_26:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_27;
    case 26:
LABEL_27:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_28;
    case 27:
LABEL_28:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_29;
    case 28:
LABEL_29:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_30;
    case 29:
LABEL_30:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_31;
    case 30:
LABEL_31:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_32;
    case 31:
LABEL_32:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_33;
    case 32:
LABEL_33:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_34;
    case 33:
LABEL_34:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_35;
    case 34:
LABEL_35:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_36;
    case 35:
LABEL_36:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_37;
    case 36:
LABEL_37:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_38;
    case 37:
LABEL_38:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F70, 37, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v18 = **ParamByParamId;
      }

      EnumParamSpec::validateValue(ParamByParamId, v9, v12, v13, v14, v15, v16, v17);
      if (*(this + 9))
      {

        throwParamSetSetFailed("AdaptationDTMMErrorFunction", "enum", v19, v20, v21, v22, v23, v24);
      }

      else
      {
        *(this + 48) = v9;
      }

      return;
    case 38:
      throwWrongTypeForParamId(38, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_46;
    case 39:
LABEL_46:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_47;
    case 40:
LABEL_47:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_48;
    case 41:
LABEL_48:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_49;
    case 42:
LABEL_49:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 43:
LABEL_50:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_51;
    case 44:
LABEL_51:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_52;
    case 45:
LABEL_52:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_53;
    case 46:
LABEL_53:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_54;
    case 47:
LABEL_54:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 48:
LABEL_55:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_56;
    case 49:
LABEL_56:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_57;
    case 50:
LABEL_57:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_58;
    case 51:
LABEL_58:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_59;
    case 52:
LABEL_59:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_60;
    case 53:
LABEL_60:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_61;
    case 54:
LABEL_61:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_62;
    case 55:
LABEL_62:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_63;
    case 56:
LABEL_63:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_64;
    case 57:
LABEL_64:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_65;
    case 58:
LABEL_65:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_66;
    case 59:
LABEL_66:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_67;
    case 60:
LABEL_67:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_68;
    case 61:
LABEL_68:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_69;
    case 62:
LABEL_69:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_70;
    case 63:
LABEL_70:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_71;
    case 64:
LABEL_71:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_72;
    case 65:
LABEL_72:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_73;
    case 66:
LABEL_73:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_74;
    case 67:
LABEL_74:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_75;
    case 68:
LABEL_75:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_76;
    case 69:
LABEL_76:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_77;
    case 70:
LABEL_77:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      break;
    default:
      break;
  }

  throwWrongParamIdValue(v8, "enum", a3, a4, a5, a6, a7, a8);
}

void AdapterParamSet::~AdapterParamSet(AdapterParamSet *this)
{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));
}

{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));

  JUMPOUT(0x26672B1B0);
}

uint64_t minAddAllocWithExtra(uint64_t result, int a2)
{
  v2 = ((90 * a2) >> 10) + 32;
  if (v2 <= result)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

void buildRegExp(const TFileObject *a1, TLexicon *a2)
{
  v12 = &unk_26288E448;
  v13 = vdupq_n_s64(1uLL);
  v14 = -1;
  if (!TFileObject::verify(a1, &v12, 1, 1))
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, &byte_262899963);
  *__p = byte_287529580;
  if (SHIBYTE(v11) < 0)
  {
    std::string::__init_copy_ctor_external(&__p[8], v10, *(&v10 + 1));
  }

  else
  {
    *&__p[8] = v10;
    v9 = v11;
  }

  *__p = &unk_287528000;
  if (v9 >= 0)
  {
    v4 = &__p[8];
  }

  else
  {
    v4 = *&__p[8];
  }

  conditionalAssert(v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/decompounder.cpp", 70, v2, v3);
  *__p = byte_287529580;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(*&__p[8]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
  *exception = byte_287529580;
  v6 = (exception + 1);
  if ((__p[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v6, *__p, *&__p[8]);
  }

  else
  {
    v7 = *__p;
    exception[3] = *&__p[16];
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  *exception = &unk_287528000;
}

void sub_2627CAAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_2627CAB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_2627CAB78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 121) < 0)
  {
    v20 = *(v19 - 144);
    JUMPOUT(0x2627CABDCLL);
  }

  JUMPOUT(0x2627CAC00);
}

void sub_2627CABE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (LOBYTE(STACK[0x438]) == 1)
  {
    TWord::TWord(va, v5);
  }

  _Unwind_Resume(a1);
}

void TFsaBuilder::minimizeChildren(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    v9 = a4 + 8;
    do
    {
      v11 = v4[2];
      if (!*(v11 + 8))
      {
        TFsaBuilder::minimizeChildren(a1, a2);
        v10 = std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::find<TState *>(a4, &v11);
        if (v9 == v10)
        {
          *(v11 + 8) = 1;
          std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__emplace_unique_key_args<TState *,TState * const&>(a4, &v11);
        }

        else
        {
          TFsa::moveTrans(a2, v4, a3, *(v10 + 32));
          TFsa::deleteState(a2, v11);
        }
      }

      v4 = v4[5];
    }

    while (v4);
  }
}

void TFsaBuilder::addSuffix(int a1, TAllocator *this, void *a3, _DWORD *a4)
{
  v4 = a3;
  if (*a4)
  {
    v6 = a4 + 1;
    do
    {
      v7 = TFsa::newState(this, 0);
      TFsa::newTrans(this, v4, v7, *(v6 - 1));
      v8 = *v6++;
      v4 = v7;
    }

    while (v8);
  }

  else
  {
    v7 = a3;
  }

  TFsa::addExtremity(this, v7, 1u);
}

void TDecompounder::load(TLexicon **this, TInputStream *a2)
{
  v101 = *MEMORY[0x277D85DE8];
  if (TInputStream::verifyHeader(a2, "TknDecomp", &pTknDecompVersion, 3))
  {
    std::string::basic_string[abi:ne200100]<0>(v65, &byte_262899963);
    *v81 = byte_287529580;
    if (SHIBYTE(v66) < 0)
    {
      std::string::__init_copy_ctor_external(&v81[8], v65[0], v65[1]);
    }

    else
    {
      *&v81[8] = *v65;
      v82 = v66;
    }

    *v81 = &unk_287528000;
    if (v82 >= 0)
    {
      v56 = &v81[8];
    }

    else
    {
      v56 = *&v81[8];
    }

    conditionalAssert(v56, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/decompounder.cpp", 382, v52, v53);
    *v81 = byte_287529580;
    if (SHIBYTE(v82) < 0)
    {
      operator delete(*&v81[8]);
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v81, &byte_262899963);
    *exception = byte_287529580;
    v58 = (exception + 1);
    if ((v81[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v58, *v81, *&v81[8]);
    }

    else
    {
      v62 = *v81;
      exception[3] = *&v81[16];
      *&v58->__r_.__value_.__l.__data_ = v62;
    }

    *exception = &unk_287528000;
  }

  TFileObjectParser::TFileObjectParser(v65, a2);
  v4 = v65[0];
  *&v81[8] = xmmword_26286B6A0;
  *v81 = "L";
  v84 = xmmword_26286B6A0;
  v82 = -1;
  v83 = "B";
  v87 = xmmword_26286B6A0;
  v85 = -1;
  v86 = "B";
  v90 = xmmword_26286B6A0;
  v88 = -1;
  v89 = "B";
  v93 = xmmword_26286BF80;
  v91 = -1;
  v92 = "B";
  v94 = -1;
  v96 = xmmword_26286B6A0;
  v95 = "P";
  v99 = xmmword_26286B6A0;
  v97 = 1;
  v98 = "B";
  v100 = 1;
  if (TFileObject::verify(v65[0], v81, 7, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v76, &byte_262899963);
    *v78 = byte_287529580;
    if ((v76[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v78[8], *v76, *&v76[8]);
    }

    else
    {
      *&v78[8] = *v76;
      v79 = *&v76[16];
    }

    *v78 = &unk_287528000;
    if (v79 >= 0)
    {
      v59 = &v78[8];
    }

    else
    {
      v59 = *&v78[8];
    }

    conditionalAssert(v59, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/decompounder.cpp", 404, v54, v55);
    *v78 = byte_287529580;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(*&v78[8]);
    }

    if ((v76[23] & 0x80000000) != 0)
    {
      operator delete(*v76);
    }

    v60 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v78, &byte_262899963);
    *v60 = byte_287529580;
    v61 = (v60 + 1);
    if ((v78[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v61, *v78, *&v78[8]);
    }

    else
    {
      v63 = *v78;
      v60[3] = *&v78[16];
      *&v61->__r_.__value_.__l.__data_ = v63;
    }

    *v60 = &unk_287528000;
  }

  v5 = v4[3];
  if (v5)
  {
    v64 = 0;
    while (1)
    {
      v6 = *(v5 + 1);
      if (!wcscmp(v6, "L"))
      {
        break;
      }

      if (!wcscmp(v6, "B"))
      {
        buildRegExp(v5, *this);
      }

      if (!wcscmp(v6, "B"))
      {
        buildRegExp(v5, *this);
      }

      if (!wcscmp(v6, "B"))
      {
        buildRegExp(v5, *this);
      }

      if (!wcscmp(v6, "B"))
      {
        buildRegExp(v5, *this);
      }

      if (!wcscmp(v6, "P"))
      {
        v64 = 1;
      }

      else
      {
        v64 |= wcscmp(v6, "B") == 0;
      }

      v5 = *(v5 + 2);
      if (!v5)
      {
        if (v64)
        {
          tknPrintString("Warning: Decompounder model has been lobotomized on load.\n");
        }

        goto LABEL_100;
      }
    }

    v7 = *this;
    *&v78[8] = vdupq_n_s64(1uLL);
    *v78 = &unk_26288E448;
    v79 = -1;
    if (TFileObject::verify(v5, v78, 1, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(v74, &byte_262899963);
      *v76 = byte_287529580;
      if (SHIBYTE(v75) < 0)
      {
        std::string::__init_copy_ctor_external(&v76[8], v74[0], v74[1]);
      }

      else
      {
        *&v76[8] = *v74;
        v77 = v75;
      }

      *v76 = &unk_287528000;
      if (v77 >= 0)
      {
        v43 = &v76[8];
      }

      else
      {
        v43 = *&v76[8];
      }

      conditionalAssert(v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/decompounder.cpp", 304, v39, v40);
      *v76 = byte_287529580;
      if (SHIBYTE(v77) < 0)
      {
        operator delete(*&v76[8]);
      }

      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74[0]);
      }

      v44 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v76, &byte_262899963);
      *v44 = byte_287529580;
      v45 = (v44 + 1);
      if ((v76[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v45, *v76, *&v76[8]);
      }

      else
      {
        v49 = *v76;
        v44[3] = *&v76[16];
        *&v45->__r_.__value_.__l.__data_ = v49;
      }

      *v44 = &unk_287528000;
    }

    v71 = 0;
    v72 = 0;
    v73 = 0;
    v8 = *(v5 + 3);
    if (!v8)
    {
      v36 = 0;
      v35 = 0;
      goto LABEL_60;
    }

    v9 = 0;
    while (1)
    {
      if ((TFileObject::verify(v8, 0, 0) & 1) == 0)
      {
        if (!TLexicon::checkName(v7, *(v8 + 24), 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (*(getPropCheckTokenExistence() + 8) == 1 && !TLexicon::findHeadClone(v7, *(v8 + 24)))
          {
            loggableFileObject(v8);
            v18 = v67[23];
            v19 = *v67;
            loggableUnicode(*(v8 + 24), __p);
            if (v18 >= 0)
            {
              v24 = v67;
            }

            else
            {
              v24 = v19;
            }

            if (v70 >= 0)
            {
              v25 = __p;
            }

            else
            {
              v25 = __p[0];
            }

            tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v20, v21, v22, v23, v24, v25);
            if (SHIBYTE(v70) < 0)
            {
              operator delete(__p[0]);
            }

            if ((v67[23] & 0x80000000) != 0)
            {
              operator delete(*v67);
            }
          }

          v26 = *(v8 + 24);
          v27 = v72;
          if (v72 >= v73)
          {
            v29 = (v72 - v71) >> 3;
            if ((v29 + 1) >> 61)
            {
              std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
            }

            v30 = (v73 - v71) >> 2;
            if (v30 <= v29 + 1)
            {
              v30 = v29 + 1;
            }

            if (v73 - v71 >= 0x7FFFFFFFFFFFFFF8)
            {
              v31 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v30;
            }

            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(&v71, v31);
            }

            v32 = (8 * v29);
            *v32 = v26;
            v28 = 8 * v29 + 8;
            v33 = v32 - (v72 - v71);
            memcpy(v33, v71, v72 - v71);
            v34 = v71;
            v71 = v33;
            v72 = v28;
            v73 = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *v72 = v26;
            v28 = (v27 + 8);
          }

          v72 = v28;
          goto LABEL_28;
        }

        loggableFileObject(v8);
        v10 = v67[23];
        v11 = *v67;
        loggableUnicode(*(v8 + 24), __p);
        if (v10 >= 0)
        {
          v16 = v67;
        }

        else
        {
          v16 = v11;
        }

        if (v70 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        tknPrintf("Error: %s'%s' is an invalid token name.\n", v12, v13, v14, v15, v16, v17);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v67[23] & 0x80000000) != 0)
        {
          operator delete(*v67);
        }
      }

      v9 = 1;
LABEL_28:
      v8 = *(v8 + 16);
      if (!v8)
      {
        if (v9)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v67 = byte_287529580;
          if (SHIBYTE(v70) < 0)
          {
            std::string::__init_copy_ctor_external(&v67[8], __p[0], __p[1]);
          }

          else
          {
            *&v67[8] = *__p;
            v68 = v70;
          }

          *v67 = &unk_287528000;
          if (v68 >= 0)
          {
            v46 = &v67[8];
          }

          else
          {
            v46 = *&v67[8];
          }

          conditionalAssert(v46, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/decompounder.cpp", 337, v41, v42);
          *v67 = byte_287529580;
          if (SHIBYTE(v68) < 0)
          {
            operator delete(*&v67[8]);
          }

          if (SHIBYTE(v70) < 0)
          {
            operator delete(__p[0]);
          }

          v47 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v67, &byte_262899963);
          *v47 = byte_287529580;
          v48 = (v47 + 1);
          if ((v67[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v48, *v67, *&v67[8]);
          }

          else
          {
            v50 = *v67;
            v47[3] = *&v67[16];
            *&v48->__r_.__value_.__l.__data_ = v50;
          }

          *v47 = &unk_287528000;
        }

        v35 = v71;
        v36 = v72;
LABEL_60:
        v37 = 126 - 2 * __clz(v36 - v35);
        if (v36 == v35)
        {
          v38 = 0;
        }

        else
        {
          v38 = v37;
        }

        std::__introsort<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,false>(v35, v36, &v80, v38, 1);
        TFsaBuilder::operator()();
      }
    }
  }

LABEL_100:
  TFileObjectParser::~TFileObjectParser(v65);
  v51 = *MEMORY[0x277D85DE8];
}

void sub_2627CBF1C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2627CBF24);
  }

  __clang_call_terminate(a1);
}

void TDecompounder::TDecompounder(TDecompounder *this, TInputStream *a2, TLexicon *a3, TTokenizerParamManager *a4)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  TDecompounder::load(this, a2);
}

void TDecompounder::~TDecompounder(TDecompounder *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    TFsa::~TFsa(v2);
    MEMORY[0x26672B1B0]();
  }

  v3 = *(this + 3);
  if (v3)
  {
    TRegExp::~TRegExp(v3);
    MEMORY[0x26672B1B0]();
  }

  v4 = *(this + 4);
  if (v4)
  {
    TRegExp::~TRegExp(v4);
    MEMORY[0x26672B1B0]();
  }

  v5 = *(this + 5);
  if (v5)
  {
    TRegExp::~TRegExp(v5);
    MEMORY[0x26672B1B0]();
  }

  v6 = *(this + 6);
  if (v6)
  {
    TRegExp::~TRegExp(v6);
    MEMORY[0x26672B1B0]();
  }
}

uint64_t TDecompounder::isValidWord(TDecompounder *this, int **a2, __int32 **a3, int a4, int a5)
{
  if (a4 && (a5 & 1) != 0)
  {
    return 0;
  }

  v44 = v46;
  v45 = xmmword_26286B6F0;
  v47 = 1;
  TWord::getTokenName(a3, &v44);
  v11 = *(this + 1);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v11 + 5624));
  if (*(v11 + TParam::getValidConfig((v11 + 5624), ActiveConfigHandle) + 5776) != 1)
  {
    goto LABEL_43;
  }

  v13 = *(this + 1);
  v14 = TParam::getActiveConfigHandle((v13 + 5128));
  if ((*(v13 + TParam::getValidConfig((v13 + 5128), v14) + 5280) & 1) == 0)
  {
    v15 = *(this + 3);
    if (v15)
    {
      if (*(&v45 + 1) >= v45)
      {
        if (v47)
        {
          LODWORD(v40) = 0;
          TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), &v40, 1uLL);
          v16 = v44;
          --*(&v45 + 1);
        }

        else
        {
          v16 = v44;
          if (v45)
          {
            v44[v45 - 1] = 0;
          }
        }
      }

      else
      {
        v16 = v44;
        v44[*(&v45 + 1)] = 0;
      }

      if (TRegExp::match(v15, v16, 0))
      {
        goto LABEL_50;
      }
    }
  }

  if (a4)
  {
    v17 = *(this + 5);
    if (v17)
    {
      if (*(&v45 + 1) >= v45)
      {
        if (v47)
        {
          LODWORD(v40) = 0;
          TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), &v40, 1uLL);
          v18 = v44;
          --*(&v45 + 1);
        }

        else
        {
          v18 = v44;
          if (v45)
          {
            v44[v45 - 1] = 0;
          }
        }
      }

      else
      {
        v18 = v44;
        v44[*(&v45 + 1)] = 0;
      }

      if (TRegExp::match(v17, v18, 0))
      {
        goto LABEL_50;
      }
    }

    if (a5)
    {
LABEL_26:
      v19 = *(this + 4);
      if (v19)
      {
        if (*(&v45 + 1) < v45)
        {
          v20 = v44;
          v44[*(&v45 + 1)] = 0;
          goto LABEL_42;
        }

        if (v47)
        {
LABEL_36:
          LODWORD(v40) = 0;
          TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), &v40, 1uLL);
          v20 = v44;
          --*(&v45 + 1);
          goto LABEL_42;
        }

        v20 = v44;
        if (v45)
        {
          v44[v45 - 1] = 0;
        }

LABEL_42:
        if (TRegExp::match(v19, v20, 0))
        {
          goto LABEL_50;
        }

        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (a4)
    {
      goto LABEL_43;
    }
  }

  else if (a5)
  {
    goto LABEL_26;
  }

  v19 = *(this + 6);
  if (v19)
  {
    if (*(&v45 + 1) < v45)
    {
      v20 = v44;
      v44[*(&v45 + 1)] = 0;
      goto LABEL_42;
    }

    if (v47)
    {
      goto LABEL_36;
    }

    v20 = v44;
    if (v45)
    {
      v44[v45 - 1] = 0;
    }

    goto LABEL_42;
  }

LABEL_43:
  v21 = *(this + 1);
  v22 = TParam::getActiveConfigHandle((v21 + 5376));
  if (*(v21 + TParam::getValidConfig((v21 + 5376), v22) + 5528) != 1 || a5 == 0)
  {
    goto LABEL_51;
  }

  v24 = **a2;
  {
    operator new();
  }

  isUpper = TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v24);
  v26 = *v44;
  {
    operator new();
  }

  if (isUpper == TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v26))
  {
LABEL_51:
    v27 = *(this + 1);
    v28 = TParam::getActiveConfigHandle((v27 + 6120));
    v29 = *(v27 + TParam::getValidConfig((v27 + 6120), v28) + 6272);
    v10 = 1;
    if (v29 != 1 || a5 == 0)
    {
      goto LABEL_98;
    }

    v40 = v42;
    v41 = xmmword_26286B6F0;
    v43 = 1;
    TWord::getCategoryTag(a2, &v40);
    v36 = v38;
    v37 = xmmword_26286B6F0;
    v39 = 1;
    TWord::getCategoryTag(a3, &v36);
    if (*(&v37 + 1) >= v37)
    {
      if (v39)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v36, *(&v37 + 1), &v48, 1uLL);
        v31 = v36;
        --*(&v37 + 1);
      }

      else
      {
        v31 = v36;
        if (v37)
        {
          v36[v37 - 1] = 0;
        }
      }
    }

    else
    {
      v31 = v36;
      v36[*(&v37 + 1)] = 0;
    }

    if (!wcscmp(v31, "X"))
    {
      goto LABEL_92;
    }

    v32 = *(&v41 + 1);
    if (*(&v41 + 1) >= v41)
    {
      if (v43)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v40, *(&v41 + 1), &v48, 1uLL);
        v33 = v40;
        v32 = --*(&v41 + 1);
      }

      else
      {
        v33 = v40;
        if (v41)
        {
          v40[v41 - 1] = 0;
        }
      }
    }

    else
    {
      v33 = v40;
      v40[*(&v41 + 1)] = 0;
    }

    if (!wcscmp(v33, "X"))
    {
      goto LABEL_92;
    }

    if (v32 >= v41)
    {
      if (v43)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v40, v32, &v48, 1uLL);
        v33 = v40;
        --*(&v41 + 1);
      }

      else if (v41)
      {
        v33[v41 - 1] = 0;
      }
    }

    else
    {
      v33[v32] = 0;
    }

    if (*(&v37 + 1) >= v37)
    {
      if (v39)
      {
        v48 = 0;
        TBuffer<wchar_t>::insert(&v36, *(&v37 + 1), &v48, 1uLL);
        v34 = v36;
        --*(&v37 + 1);
      }

      else
      {
        v34 = v36;
        if (v37)
        {
          v36[v37 - 1] = 0;
        }
      }
    }

    else
    {
      v34 = v36;
      v36[*(&v37 + 1)] = 0;
    }

    if (!wcsncmp(v33, v34, 2uLL))
    {
LABEL_92:
      if (v39 == 1 && v36 != v38 && v36)
      {
        MEMORY[0x26672B1B0]();
      }

      if (v43 == 1 && v40 != v42 && v40)
      {
        MEMORY[0x26672B1B0]();
      }

      goto LABEL_98;
    }

    if (v39 == 1 && v34 != v38 && v34)
    {
      MEMORY[0x26672B1B0](v34, 0x1000C4052888210);
    }

    if (v43 == 1 && v40 != v42 && v40)
    {
      MEMORY[0x26672B1B0]();
    }
  }

LABEL_50:
  v10 = 0;
LABEL_98:
  if (v47 == 1 && v44 != v46 && v44)
  {
    MEMORY[0x26672B1B0]();
  }

  return v10;
}

void sub_2627CC730(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0xC70]) == 1)
  {
    v4 = STACK[0x858];
    if (STACK[0x858] != v2)
    {
      if (v4)
      {
        MEMORY[0x26672B1B0](v4, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TDecompounder::decompound(TDecompounder *this, const TWord *a2, TFsa *a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v131 = *MEMORY[0x277D85DE8];
  v123 = v125;
  v124 = xmmword_26286B6F0;
  v126 = 1;
  TWord::getWrittenForm(v8, &v123);
  v122[0] = TWord::getWordSpec(v9);
  v122[1] = v11;
  v118 = v120;
  v119 = xmmword_26286B6F0;
  v121 = 1;
  v12 = TStringParam::get((*(v10 + 1) + 10744));
  TBuffer<wchar_t>::assign(&v118, v12);
  *(v118 + 70) = 48;
  v127 = 0;
  std::vector<TState *>::vector[abi:ne200100](&v116, *(&v124 + 1) + 1);
  v96 = v9;
  v13 = TFsa::newState(v7, 0);
  *v116 = v13;
  TFsa::addExtremity(v7, *v116, 0);
  v99 = v7;
  v14 = *(&v124 + 1);
  if (*(&v124 + 1))
  {
    v15 = 0;
    while (1)
    {
      v115 = *(v116 + v15);
      if (!v115)
      {
        goto LABEL_126;
      }

      v111 = v113;
      v112 = xmmword_26286B6F0;
      v114 = 1;
      if (v14 >= v124)
      {
        if (v126)
        {
          LODWORD(v127) = 0;
          TBuffer<wchar_t>::insert(&v123, v14, &v127, 1uLL);
          v16 = v123;
          --*(&v124 + 1);
        }

        else
        {
          v16 = v123;
          if (v124)
          {
            *&v123[4 * v124 - 4] = 0;
          }
        }
      }

      else
      {
        v16 = v123;
        *&v123[4 * v14] = 0;
      }

      TBuffer<wchar_t>::assign(&v111, &v16[4 * v15]);
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v17 = *(v10 + 1);
      ActiveConfigHandle = TParam::getActiveConfigHandle((v17 + 5128));
      if (*(v17 + TParam::getValidConfig((v17 + 5128), ActiveConfigHandle) + 5280) != 1 || (v19 = *(v10 + 2)) == 0 || !v19[25])
      {
        v27 = *v10;
        if (*(&v112 + 1) >= v112)
        {
          if (v114)
          {
            LODWORD(v127) = 0;
            TBuffer<wchar_t>::insert(&v111, *(&v112 + 1), &v127, 1uLL);
            v28 = v111;
            --*(&v112 + 1);
          }

          else
          {
            v28 = v111;
            if (v112)
            {
              v111[v112 - 1] = 0;
            }
          }
        }

        else
        {
          v28 = v111;
          v111[*(&v112 + 1)] = 0;
        }

        v29 = *(v10 + 1);
        v30 = TParam::getActiveConfigHandle((v29 + 16464));
        v31 = *(v29 + 4 * TParam::getValidConfig((v29 + 16464), v30) + 16624);
        v32 = *(v10 + 1);
        v33 = TParam::getActiveConfigHandle((v32 + 16112));
        v34 = *(v32 + 4 * TParam::getValidConfig((v32 + 16112), v33) + 16272);
        if (*(&v119 + 1) >= v119)
        {
          if (v121)
          {
            LODWORD(v127) = 0;
            TBuffer<wchar_t>::insert(&v118, *(&v119 + 1), &v127, 1uLL);
            v35 = v118;
            --*(&v119 + 1);
          }

          else
          {
            v35 = v118;
            if (v119)
            {
              *&v118[4 * v119 - 4] = 0;
            }
          }
        }

        else
        {
          v35 = v118;
          *&v118[4 * *(&v119 + 1)] = 0;
        }

        v127 = v129;
        v128 = xmmword_26286B6F0;
        v130 = 1;
        v36 = *v28;
        if (*v28)
        {
          v37 = v28 + 1;
          do
          {
            LODWORD(v105) = v36;
            TBuffer<wchar_t>::insert(&v127, *(&v128 + 1), &v105, 1uLL);
            if (*(&v128 + 1) >= v128)
            {
              if (v130)
              {
                LODWORD(v105) = 0;
                TBuffer<wchar_t>::insert(&v127, *(&v128 + 1), &v105, 1uLL);
                v38 = v127;
                --*(&v128 + 1);
              }

              else
              {
                v38 = v127;
                if (v128)
                {
                  *(v127 + v128 - 1) = 0;
                }
              }
            }

            else
            {
              v38 = v127;
              *(v127 + *(&v128 + 1)) = 0;
            }

            HeadClonesCollated = TLexicon::findHeadClonesCollated(v27, v38, v35, v31, v34, &v108);
            v40 = *v37++;
            v36 = v40;
          }

          while (((v40 != 0) & HeadClonesCollated) != 0);
          if ((v130 & 1) != 0 && v127 != v129 && v127)
          {
            MEMORY[0x26672B1B0]();
          }
        }

        goto LABEL_56;
      }

      v20 = v19[19];
      v21 = v19[20];
      if (v20 != v21)
      {
        while (!*v20)
        {
          if (++v20 == v21)
          {
            v20 = v21;
            break;
          }
        }
      }

      v22 = *v10;
      v23 = *v20;
      v24 = *(&v112 + 1);
      v25 = v112;
      if (*(&v112 + 1) >= v112)
      {
        if (v114)
        {
          LODWORD(v105) = 0;
          TBuffer<wchar_t>::insert(&v111, *(&v112 + 1), &v105, 1uLL);
          v25 = v112;
          v24 = --*(&v112 + 1);
          v26 = v111;
        }

        else
        {
          v26 = v111;
          if (!v112)
          {
            goto LABEL_54;
          }

          v111[v112 - 1] = 0;
        }
      }

      else
      {
        v26 = v111;
        v111[*(&v112 + 1)] = 0;
      }

      if (v24 < v25)
      {
        break;
      }

      if ((v114 & 1) == 0)
      {
        if (v25)
        {
          v26[v25 - 1] = 0;
        }

        goto LABEL_54;
      }

      LODWORD(v105) = 0;
      TBuffer<wchar_t>::insert(&v111, v24, &v105, 1uLL);
      v41 = v111;
      --*(&v112 + 1);
LABEL_55:
      v42 = *(v10 + 1);
      v43 = TParam::getActiveConfigHandle((v42 + 16464));
      v44 = *(v42 + 4 * TParam::getValidConfig((v42 + 16464), v43) + 16624);
      v45 = *(v10 + 1);
      v46 = TParam::getActiveConfigHandle((v45 + 16112));
      ValidConfig = TParam::getValidConfig((v45 + 16112), v46);
      fsaSearch(v22, v23, v26, v41, &v127, &v127, 0, v44, *(v45 + 4 * ValidConfig + 16272), &v108);
LABEL_56:
      v128 = 0uLL;
      v127 = 0;
      std::vector<TItnRule *>::push_back[abi:ne200100](&v127, &v115);
      v97 = v15;
      v48 = v108;
      if (v109 != v108)
      {
        for (i = 0; i < (v109 - v108) >> 5; ++i)
        {
          v50 = &v48[32 * i];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = *(v10 + 1);
          v54 = TParam::getActiveConfigHandle((v53 + 5376));
          if (*(v53 + TParam::getValidConfig((v53 + 5376), v54) + 5528) == 1)
          {
            *(v108 + 4 * i + 2) &= 0xFFFFFFFFFFFFFFBCLL;
          }

          v55 = v51 + v97;
          v56 = *TWord::getOptionalTagBits(v52);
          if ((v56 & 0x80) != 0)
          {
            if (v97 && *(&v124 + 1) != v55)
            {
              goto LABEL_72;
            }
          }

          else if (TDecompounder::isValidWord(v10, v96, v52, v97 == 0, *(&v124 + 1) == v55))
          {
            v57 = *(v10 + 1);
            v58 = TParam::getActiveConfigHandle((v57 + 5872));
            if (*(v57 + TParam::getValidConfig((v57 + 5872), v58) + 6024) != 1 || v122[0] == -1)
            {
              if (!*(v116 + v55))
              {
                v60 = TFsa::newState(v99, 0);
                *(v116 + v55) = v60;
              }

              operator new();
            }

LABEL_72:
            if (TWord::getWordSpec(v52) != -1 && v128 != v127)
            {
              v61 = 0;
              v62 = (v128 - v127) >> 3;
              if (v62 <= 1)
              {
                v62 = 1;
              }

              v98 = v62;
              while (1)
              {
                v63 = *(v127 + v61);
                v106 = 0;
                v107 = 0;
                v105 = 0;
                v64 = *(v63 + 16);
                if (!v64)
                {
                  goto LABEL_110;
                }

                do
                {
                  v104 = v64;
                  if ((v56 & 0x80) != 0 && (*TWord::getOptionalTagBits(*(*v64 + 8)) & 0x80) != 0)
                  {
                    std::vector<TItnRule *>::push_back[abi:ne200100](&v105, &v104);
                  }

                  else
                  {
                    v65 = *(v10 + 1);
                    v66 = TParam::getActiveConfigHandle((v65 + 5872));
                    if (*(v65 + TParam::getValidConfig((v65 + 5872), v66) + 6024) == 1 && v122[0] != -1)
                    {
                      __p = 0;
                      v102 = 0;
                      v103 = 0;
                      v68 = v104;
                      if (v104)
                      {
                        do
                        {
                          *&v100 = TWord::getWordSpec(*(*v68 + 8));
                          *(&v100 + 1) = v69;
                          std::vector<SDWordSpec>::push_back[abi:ne200100](&__p, &v100);
                          v68 = *(v68[3] + 16);
                        }

                        while (v68);
                        v70 = v102 - 16;
                        if (__p != v102 && v70 > __p)
                        {
                          v72 = __p + 16;
                          do
                          {
                            v73 = *(v72 - 1);
                            *(v72 - 1) = *v70;
                            *v70 = v73;
                            v70 -= 16;
                            v74 = v72 >= v70;
                            v72 += 16;
                          }

                          while (!v74);
                        }
                      }

                      *&v100 = TWord::getWordSpec(v52);
                      *(&v100 + 1) = v75;
                      std::vector<SDWordSpec>::push_back[abi:ne200100](&__p, &v100);
                      v76 = (v102 - __p) >> 4;
                      if (*(&v124 + 1) == v55)
                      {
                        HaveCommonPron = SDWord_WordsHaveCommonPron(__p, v76, v122, 1u);
                      }

                      else
                      {
                        HaveCommonPron = SDWord_WordsHavePrefixPron(__p, v76, v122, 1u);
                      }

                      if (!HaveCommonPron)
                      {
                        std::vector<TItnRule *>::push_back[abi:ne200100](&v105, &v104);
                      }

                      if (__p)
                      {
                        v102 = __p;
                        operator delete(__p);
                      }
                    }
                  }

                  v64 = v64[4];
                }

                while (v64);
                v78 = v105;
                v79 = v106;
                if (v105 == v106)
                {
                  goto LABEL_110;
                }

                if (TState::getTransCount(v63, 0) != (v79 - v78) >> 3)
                {
                  break;
                }

                if (v105)
                {
                  v106 = v105;
                  operator delete(v105);
                }

                if (++v61 == v98)
                {
                  goto LABEL_116;
                }
              }

              __p = TFsa::newState(v99, 0);
              std::vector<TItnRule *>::push_back[abi:ne200100](&v127, &__p);
              v80 = v105;
              if (v106 != v105)
              {
                v81 = 0;
                do
                {
                  TFsa::moveTrans(v99, v80[v81], v80[v81][3], *(v128 - 8));
                  ++v81;
                  v80 = v105;
                }

                while (v81 < (v106 - v105) >> 3);
              }

              if (*(v63 + 24))
              {
                operator new();
              }

LABEL_110:
              if (!*(v116 + v55))
              {
                v82 = TFsa::newState(v99, 0);
                *(v116 + v55) = v82;
              }

              operator new();
            }
          }

LABEL_116:
          v48 = v108;
        }
      }

      if (v127)
      {
        *&v128 = v127;
        operator delete(v127);
        v48 = v108;
      }

      if (v48)
      {
        v109 = v48;
        operator delete(v48);
      }

      v15 = v97;
      if (v114 == 1 && v111 != v113 && v111)
      {
        MEMORY[0x26672B1B0]();
      }

      v14 = *(&v124 + 1);
LABEL_126:
      if (++v15 >= v14)
      {
        goto LABEL_127;
      }
    }

    v26[v24] = 0;
LABEL_54:
    v41 = v26;
    goto LABEL_55;
  }

LABEL_127:
  v83 = *(v117 - 1);
  if (v83)
  {
    TFsa::addExtremity(v99, v83, 1u);
  }

  std::vector<unsigned long>::vector[abi:ne200100](&v127, (v99[7] - v99[6]) >> 3);
  v111 = 0;
  v112 = 0uLL;
  std::vector<TState *>::reserve(&v111, v99[5]);
  v85 = v99[6];
  v84 = v99[7];
  if (v85 != v84)
  {
    while (!*v85)
    {
      if (++v85 == v84)
      {
        goto LABEL_141;
      }
    }
  }

  if (v85 != v84)
  {
    do
    {
      v86 = *v85;
      v108 = v86;
      if (!v86[3] && v86[5] == -1)
      {
        std::vector<TItnRule *>::push_back[abi:ne200100](&v111, &v108);
        v86 = v108;
      }

      TransCount = TState::getTransCount(v86, 1u);
      *(v127 + *v108) = TransCount;
      v88 = v85 + 1;
      do
      {
        v85 = v88;
        if (v88 == v84)
        {
          break;
        }

        ++v88;
      }

      while (!*v85);
    }

    while (v85 != v99[7]);
  }

LABEL_141:
  v89 = v111;
  if (v112 != v111)
  {
    v90 = 0;
    do
    {
      v91 = *&v89[2 * v90];
      for (j = *(v91 + 16); j; j = j[4])
      {
        v93 = j[3];
        v94 = v127;
        --*(v127 + *v93);
        if (!v94[*v93])
        {
          v108 = v93;
          std::vector<TItnRule *>::push_back[abi:ne200100](&v111, &v108);
        }

        if (*j)
        {
          MEMORY[0x26672B1B0](*j, 0x1060C40A1FB9E56);
        }
      }

      TFsa::deleteState(v99, v91);
      ++v90;
      v89 = v111;
    }

    while (v90 < (v112 - v111) >> 3);
  }

  if (v89)
  {
    *&v112 = v89;
    operator delete(v89);
  }

  if (v127)
  {
    *&v128 = v127;
    operator delete(v127);
  }

  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  if (v121 == 1 && v118 != v120 && v118)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v126 == 1 && v123 != v125 && v123)
  {
    MEMORY[0x26672B1B0]();
  }

  v95 = *MEMORY[0x277D85DE8];
}

void sub_2627CD508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v34 = STACK[0xD68];
  if (STACK[0xD68])
  {
    STACK[0xD70] = v34;
    operator delete(v34);
  }

  v35 = STACK[0x4E8];
  if (STACK[0x4E8])
  {
    STACK[0x4F0] = v35;
    operator delete(v35);
  }

  if (LOBYTE(STACK[0x918]) == 1)
  {
    v36 = STACK[0x500];
    if (STACK[0x500] != a11)
    {
      if (v36)
      {
        MEMORY[0x26672B1B0](v36, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xD48]) == 1 && STACK[0x930] != a12 && STACK[0x930] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void fsaSearch(void *a1, uint64_t a2, int *a3, int *a4, __int32 *a5, _DWORD *a6, char a7, size_t a8, size_t a9, uint64_t a10)
{
  v15 = a2;
  if (*(a2 + 40) != -1)
  {
    *a6 = 0;
    HeadClone = TLexicon::findHeadClone(a1, a5);
    if (!HeadClone)
    {
      HeadClone = TLexicon::addTempWord(a1, a5, 0, 0, 0);
    }

    v48 = v50;
    v49 = xmmword_26286B6F0;
    v51 = 1;
    v44 = v46;
    v45 = xmmword_26286B6F0;
    v47 = 1;
    v42 = HeadClone;
    TWord::getWrittenForm(HeadClone, &v48);
    TBuffer<wchar_t>::resize(&v44, 0);
    TBuffer<wchar_t>::insert(&v44, 0, a3, a4 - a3);
    if (*(&v45 + 1) >= v45)
    {
      if (v47)
      {
        v52[0] = 0;
        TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), v52, 1uLL);
        v18 = v44;
        --*(&v45 + 1);
      }

      else
      {
        v18 = v44;
        if (v45)
        {
          v44[v45 - 1] = 0;
        }
      }
    }

    else
    {
      v18 = v44;
      v44[*(&v45 + 1)] = 0;
    }

    if (*(&v49 + 1) >= v49)
    {
      if (v51)
      {
        v52[0] = 0;
        TBuffer<wchar_t>::insert(&v48, *(&v49 + 1), v52, 1uLL);
        v19 = v48;
        --*(&v49 + 1);
      }

      else
      {
        v19 = v48;
        if (v49)
        {
          v48[v49 - 1] = 0;
        }
      }
    }

    else
    {
      v19 = v48;
      v48[*(&v49 + 1)] = 0;
    }

    Score = TLexicon::makeScore(a1, v18, v19, a8, a9);
    v41 = v15;
    v22 = *(&v45 + 1);
    v23 = *(a10 + 8);
    v24 = *(a10 + 16);
    if (v23 >= v24)
    {
      v40 = v21;
      v26 = (v23 - *a10) >> 5;
      v27 = v26 + 1;
      if ((v26 + 1) >> 59)
      {
        std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
      }

      v28 = v24 - *a10;
      if (v28 >> 4 > v27)
      {
        v27 = v28 >> 4;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFE0)
      {
        v29 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<TLexiconMatch>>(a10, v29);
      }

      v30 = 32 * v26;
      *v30 = v42;
      *(v30 + 8) = v22;
      *(v30 + 16) = Score;
      *(v30 + 24) = v40;
      v25 = 32 * v26 + 32;
      v31 = *(a10 + 8) - *a10;
      v32 = 32 * v26 - v31;
      memcpy((v30 - v31), *a10, v31);
      v33 = *a10;
      *a10 = v32;
      *(a10 + 8) = v25;
      *(a10 + 16) = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v23 = v42;
      *(v23 + 8) = v22;
      *(v23 + 16) = Score;
      v25 = v23 + 32;
      *(v23 + 24) = v21;
    }

    *(a10 + 8) = v25;
    if (v47 == 1 && v44 != v46 && v44)
    {
      MEMORY[0x26672B1B0]();
    }

    v15 = v41;
    if (v51 == 1 && v48 != v50 && v48)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  for (i = *(v15 + 24); i; i = i[5])
  {
    v35 = *i;
    if (*i == 92)
    {
      v36 = 1;
    }

    else
    {
      v36 = a7;
    }

    if (v36)
    {
      v37 = 0;
    }

    else
    {
      v38 = *a4;
      v39 = a1[34];
      if (!v39)
      {
        goto LABEL_47;
      }

      if (v38 < 0x10000)
      {
        v38 = *(v39 + 4 * v38);
      }

      if (v35 < 0x10000)
      {
        LODWORD(v39) = *(v39 + 4 * v35);
      }

      else
      {
LABEL_47:
        v39 = *i;
      }

      if (v38 != v39)
      {
        continue;
      }

      v37 = 1;
    }

    *a6 = v35;
    fsaSearch(a1, i[2], a3, &a4[v37], a5, a6 + 1);
  }
}

void sub_2627CDAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (LOBYTE(STACK[0x468]) == 1 && a19 != a14 && a19)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x888]) == 1)
  {
    v20 = STACK[0x470];
    if (STACK[0x470] != a15)
    {
      if (v20)
      {
        MEMORY[0x26672B1B0](v20, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void std::vector<SDWordSpec>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnRuleControl>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void TDecompounder::addWords(TDecompounder *this, char **a2, TGraph *a3, TSegmenter *a4)
{
  Segment = TSegmenter::getSegment(a4, a2[2]);
  if (Segment)
  {
    v9 = Segment;
    v10 = *(Segment + 24);
    v11 = v10 > 5;
    v12 = (1 << v10) & 0x2D;
    if (v11 || v12 == 0)
    {
      v74 = v76;
      v75 = xmmword_26286B6F0;
      v77 = 1;
      TBuffer<wchar_t>::assign(&v74, *Segment);
      v14 = *(v9 + 8);
      if (*(v9 + 24) == 1 && (v15 = *(this + 1), ActiveConfigHandle = TParam::getActiveConfigHandle((v15 + 13360)), *(v15 + TParam::getValidConfig((v15 + 13360), ActiveConfigHandle) + 13512) == 1) && *v14)
      {
        v17 = 0;
        do
        {
          v18 = TSegmenter::getSegment(a4, v14);
          v19 = v18;
          if (!v18)
          {
            break;
          }

          if (**v18 != 45)
          {
            break;
          }

          v20 = TSegmenter::getSegment(a4, *(v18 + 8));
          v21 = v20;
          if (!v20)
          {
            break;
          }

          if (*(v20 + 24) != 1)
          {
            break;
          }

          v22 = 0;
          v23 = *v19;
            ;
          }

          TBuffer<wchar_t>::insert(&v74, *(&v75 + 1), v23, v22 - 1);
          v25 = 0;
          v26 = *v21;
            ;
          }

          TBuffer<wchar_t>::insert(&v74, *(&v75 + 1), v26, v25 - 1);
          v14 = *(v21 + 8);
          v17 = 1;
        }

        while (*v14);
      }

      else
      {
        v17 = 0;
      }

      OutEdge = TVertex::getOutEdge(a2);
      if (!OutEdge)
      {
        goto LABEL_30;
      }

      v29 = 0;
LABEL_24:
      v29 |= (*(OutEdge + 64) & 0xC0) == 0;
      while (1)
      {
        OutEdge = *(OutEdge + 8);
        if (!OutEdge)
        {
          break;
        }

        if ((*(OutEdge + 32) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if (v17 & 1 | ((v29 & 1) == 0) || (v30 = *(this + 1), v31 = TParam::getActiveConfigHandle((v30 + 13112)), *(v30 + TParam::getValidConfig((v30 + 13112), v31) + 13264) == 1))
      {
LABEL_30:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v32 = *this;
        if (*(&v75 + 1) >= v75)
        {
          if (v77)
          {
            v61[0] = 0;
            TBuffer<wchar_t>::insert(&v74, *(&v75 + 1), v61, 1uLL);
            v33 = v74;
            --*(&v75 + 1);
          }

          else
          {
            v33 = v74;
            if (v75)
            {
              v74[v75 - 1] = 0;
            }
          }
        }

        else
        {
          v33 = v74;
          v74[*(&v75 + 1)] = 0;
        }

        v34 = TStringParam::get((*(this + 1) + 10744));
        v35 = *(this + 1);
        v36 = TParam::getActiveConfigHandle((v35 + 16464));
        v37 = *(v35 + 4 * TParam::getValidConfig((v35 + 16464), v36) + 16624);
        v38 = *(this + 1);
        v39 = TParam::getActiveConfigHandle((v38 + 16112));
        ValidConfig = TParam::getValidConfig((v38 + 16112), v39);
        TLexicon::findHeadClonesCollated(v32, v33, v34, v37, *(v38 + 4 * ValidConfig + 16272), &v71);
        if (v71 == v72)
        {
          goto LABEL_44;
        }

        v41 = (v72 - v71) >> 5;
        if (v41 <= 1)
        {
          v41 = 1;
        }

        v42 = v71 + 16;
        while ((*v42 & 0x35) != 0)
        {
          v42 += 32;
          if (!--v41)
          {
            goto LABEL_44;
          }
        }

        v43 = *(v42 - 2);
        if (!v43)
        {
LABEL_44:
          v44 = *this;
          if (*(&v75 + 1) >= v75)
          {
            if (v77)
            {
              v61[0] = 0;
              TBuffer<wchar_t>::insert(&v74, *(&v75 + 1), v61, 1uLL);
              v45 = v74;
              --*(&v75 + 1);
            }

            else
            {
              v45 = v74;
              if (v75)
              {
                v74[v75 - 1] = 0;
              }
            }
          }

          else
          {
            v45 = v74;
            v74[*(&v75 + 1)] = 0;
          }

          v43 = TLexicon::addTempWord(v44, v45, 0, 0, 0);
        }

        TFsa::TFsa(v61);
        TDecompounder::decompound(this, v43, v61, v46, v47);
        if (v62)
        {
          std::vector<TVertex *>::vector[abi:ne200100](__p, (v64 - v63) >> 3);
          v48 = v67;
          if (v67 != v68)
          {
            while (!*v48)
            {
              if (++v48 == v68)
              {
                v48 = v68;
                break;
              }
            }
          }

          *(__p[0] + **v48) = a2;
          v49 = TGraph::addVertex(a3, v14);
          v50 = v69;
          if (v69 != v70)
          {
            while (!*v50)
            {
              if (++v50 == v70)
              {
                v50 = v70;
                break;
              }
            }
          }

          *(__p[0] + **v50) = v49;
          v52 = v63;
          v51 = v64;
          if (v64 != v63)
          {
            v53 = 0;
            do
            {
              if (*(v52 + 8 * v53) && !*(__p[0] + v53))
              {
                v54 = TGraph::addVertex(a3, 0);
                *(__p[0] + v53) = v54;
                v52 = v63;
                v51 = v64;
              }

              ++v53;
            }

            while (v53 < (v51 - v52) >> 3);
          }

          v56 = v65;
          v55 = v66;
          if (v66 != v65)
          {
            v57 = 0;
            do
            {
              v58 = *(v56 + 8 * v57);
              if (v58)
              {
                v59 = *v58;
                TGraph::addEdge(a3, *(__p[0] + **(v58 + 24)), *(__p[0] + **(v58 + 16)), *v58);
                MEMORY[0x26672B1B0](v59, 0x1060C40A1FB9E56);
                v56 = v65;
                v55 = v66;
              }

              ++v57;
            }

            while (v57 < (v55 - v56) >> 3);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        TFsa::~TFsa(v61);
        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }
      }

      if (v77 == 1 && v74 != v76)
      {
        if (v74)
        {
          MEMORY[0x26672B1B0]();
        }
      }
    }
  }
}

void sub_2627CE17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  TFsa::~TFsa(&a15);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  if (LOBYTE(STACK[0x540]) == 1 && a46 != a10 && a46 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

const __int32 **std::__introsort<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,false>(const __int32 **result, const __int32 **a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a3;
  v7 = result;
LABEL_2:
  v8 = v7;
LABEL_3:
  v9 = 1 - a4;
  while (1)
  {
    v7 = v8;
    v10 = v9;
    v11 = a2 - v8;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v67 = *(a2 - 1);
        v68 = *v8;
        result = wcscmp(v67, *v8);
        if ((result & 0x80000000) != 0)
        {
          *v8 = v67;
          *(a2 - 1) = v68;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(v8, v8 + 1, v8 + 2, a2 - 1);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(v8, v8 + 1, v8 + 2, v8 + 3);
      v63 = *(a2 - 1);
      v64 = v8[3];
      result = wcscmp(v63, v64);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v8[3] = v63;
      *(a2 - 1) = v64;
      v65 = v8[2];
      v61 = v8[3];
      result = wcscmp(v61, v65);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v8[2] = v61;
      v8[3] = v65;
      v66 = v8[1];
      result = wcscmp(v61, v66);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v8[1] = v61;
      v8[2] = v66;
      goto LABEL_72;
    }

LABEL_11:
    if (v11 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v8, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v8, a2);
      }
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,wchar_t const**>(v8, a2, a2, v5);
      }

      return result;
    }

    v12 = &v8[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 >= 0x81)
    {
      v15 = *v12;
      v16 = *v8;
      v17 = wcscmp(*v12, *v7);
      v18 = wcscmp(v14, v15);
      if (v17 < 0)
      {
        if (v18 < 0)
        {
          *v7 = v14;
        }

        else
        {
          *v7 = v15;
          *v12 = v16;
          v27 = *(a2 - 1);
          if ((wcscmp(v27, v16) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          *v12 = v27;
        }

        *(a2 - 1) = v16;
      }

      else if (v18 < 0)
      {
        *v12 = v14;
        *(a2 - 1) = v15;
        v19 = *v12;
        v20 = *v7;
        if (wcscmp(*v12, *v7) < 0)
        {
          *v7 = v19;
          *v12 = v20;
        }
      }

LABEL_30:
      v29 = v12 - 1;
      v30 = *(v12 - 1);
      v31 = v7[1];
      v32 = wcscmp(v30, v31);
      v33 = *(a2 - 2);
      v34 = wcscmp(v33, v30);
      if (v32 < 0)
      {
        if (v34 < 0)
        {
          v7[1] = v33;
        }

        else
        {
          v7[1] = v30;
          *v29 = v31;
          v37 = *(a2 - 2);
          if ((wcscmp(v37, v31) & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          *v29 = v37;
        }

        *(a2 - 2) = v31;
      }

      else if (v34 < 0)
      {
        *v29 = v33;
        *(a2 - 2) = v30;
        v35 = *v29;
        v36 = v7[1];
        if (wcscmp(*v29, v36) < 0)
        {
          v7[1] = v35;
          *v29 = v36;
        }
      }

LABEL_41:
      v40 = v12[1];
      v39 = v12 + 1;
      v38 = v40;
      v41 = v7[2];
      v42 = wcscmp(v40, v41);
      v43 = *(a2 - 3);
      v44 = wcscmp(v43, v40);
      if (v42 < 0)
      {
        if (v44 < 0)
        {
          v7[2] = v43;
        }

        else
        {
          v7[2] = v38;
          *v39 = v41;
          v47 = *(a2 - 3);
          if ((wcscmp(v47, v41) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          *v39 = v47;
        }

        *(a2 - 3) = v41;
      }

      else if (v44 < 0)
      {
        *v39 = v43;
        *(a2 - 3) = v38;
        v45 = *v39;
        v46 = v7[2];
        if (wcscmp(*v39, v46) < 0)
        {
          v7[2] = v45;
          *v39 = v46;
        }
      }

LABEL_50:
      v48 = *v13;
      v49 = *v29;
      v50 = wcscmp(*v13, *v29);
      v51 = *v39;
      v52 = wcscmp(*v39, v48);
      if (v50 < 0)
      {
        if ((v52 & 0x80000000) == 0)
        {
          *v29 = v48;
          *v13 = v49;
          v29 = v13;
          v48 = v51;
          if ((wcscmp(v51, v49) & 0x80000000) == 0)
          {
            v48 = v49;
            goto LABEL_58;
          }
        }
      }

      else
      {
        if ((v52 & 0x80000000) == 0)
        {
LABEL_58:
          v53 = *v7;
          *v7 = v48;
          *v13 = v53;
          v5 = a3;
          goto LABEL_59;
        }

        *v13 = v51;
        *v39 = v48;
        v39 = v13;
        v48 = v49;
        if ((wcscmp(v51, v49) & 0x80000000) == 0)
        {
          v48 = v51;
          goto LABEL_58;
        }
      }

      *v29 = v51;
      *v39 = v49;
      goto LABEL_58;
    }

    v21 = *v8;
    v22 = *v12;
    v23 = wcscmp(*v7, *v12);
    v24 = wcscmp(v14, v21);
    if (v23 < 0)
    {
      if (v24 < 0)
      {
        *v12 = v14;
        goto LABEL_38;
      }

      *v12 = v21;
      *v7 = v22;
      v28 = *(a2 - 1);
      if (wcscmp(v28, v22) < 0)
      {
        *v7 = v28;
LABEL_38:
        *(a2 - 1) = v22;
      }
    }

    else if (v24 < 0)
    {
      *v7 = v14;
      *(a2 - 1) = v21;
      v25 = *v7;
      v26 = *v12;
      if (wcscmp(*v7, *v12) < 0)
      {
        *v12 = v25;
        *v7 = v26;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && (wcscmp(*(v7 - 1), *v7) & 0x80000000) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(v7, a2);
      v8 = result;
      goto LABEL_66;
    }

    v54 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(v7, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_64;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v7, v54);
    v8 = v54 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(v54 + 1, a2);
    if (result)
    {
      a4 = -v10;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v9 = v10 + 1;
    if (!v56)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,false>(v7, v54, v5, -v10, a5 & 1);
      v8 = v54 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v10;
      goto LABEL_3;
    }
  }

  v57 = *v8;
  v58 = v8[1];
  v59 = wcscmp(v58, *v8);
  v60 = *(a2 - 1);
  result = wcscmp(v60, v58);
  if ((v59 & 0x80000000) == 0)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v7[1] = v60;
    *(a2 - 1) = v58;
    v61 = v7[1];
LABEL_72:
    v62 = *v7;
    result = wcscmp(v61, *v7);
    if ((result & 0x80000000) != 0)
    {
      *v7 = v61;
      v7[1] = v62;
    }

    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    *v7 = v60;
  }

  else
  {
    *v7 = v58;
    v7[1] = v57;
    v69 = *(a2 - 1);
    result = wcscmp(v69, v57);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v7[1] = v69;
  }

  *(a2 - 1) = v57;
  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(const __int32 **a1, const __int32 **a2, const __int32 **a3, const __int32 **a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = wcscmp(*a2, *a1);
  v11 = *a3;
  v12 = wcscmp(*a3, v8);
  if (v10 < 0)
  {
    if (v12 < 0)
    {
      *a1 = v11;
    }

    else
    {
      *a1 = v8;
      *a2 = v9;
      v8 = *a3;
      if ((wcscmp(*a3, v9) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      *a2 = v8;
    }

    *a3 = v9;
    v8 = v9;
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    *a2 = v11;
    *a3 = v8;
    v13 = *a2;
    v14 = *a1;
    if (wcscmp(*a2, *a1) < 0)
    {
      *a1 = v13;
      *a2 = v14;
      v8 = *a3;
    }
  }

  else
  {
    v8 = v11;
  }

LABEL_11:
  v15 = *a4;
  result = wcscmp(*a4, v8);
  if ((result & 0x80000000) != 0)
  {
    *a3 = v15;
    *a4 = v8;
    v17 = *a3;
    v18 = *a2;
    result = wcscmp(*a3, *a2);
    if ((result & 0x80000000) != 0)
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *a1;
      result = wcscmp(*a2, *a1);
      if ((result & 0x80000000) != 0)
      {
        *a1 = v19;
        *a2 = v20;
      }
    }
  }

  return result;
}

const __int32 **std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **result, const __int32 **a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 1;
    if (result + 1 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = *v6;
        v7 = v6[1];
        v6 = v4;
        result = wcscmp(v7, v8);
        if ((result & 0x80000000) != 0)
        {
          v9 = v5;
          while (1)
          {
            *(v3 + v9 + 8) = v8;
            if (!v9)
            {
              break;
            }

            v8 = *(v3 + v9 - 8);
            result = wcscmp(v7, v8);
            v9 -= 8;
            if ((result & 0x80000000) == 0)
            {
              v10 = (v3 + v9 + 8);
              goto LABEL_10;
            }
          }

          v10 = v3;
LABEL_10:
          *v10 = v7;
        }

        v4 = v6 + 1;
        v5 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

const __int32 **std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **result, const __int32 **a2)
{
  if (result != a2)
  {
    v3 = result;
    while (v3 + 1 != a2)
    {
      v5 = *v3;
      v4 = v3[1];
      ++v3;
      result = wcscmp(v4, v5);
      if ((result & 0x80000000) != 0)
      {
        v6 = v3;
        do
        {
          *v6 = v5;
          v5 = *(v6 - 2);
          result = wcscmp(v4, v5);
          --v6;
        }

        while ((result & 0x80000000) != 0);
        *v6 = v4;
      }
    }
  }

  return result;
}

const __int32 **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(const __int32 **a1, const __int32 **a2)
{
  v2 = a2;
  v4 = *a1;
  if (wcscmp(*a1, *(a2 - 1)) < 0)
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while ((wcscmp(v4, v7) & 0x80000000) == 0);
  }

  else
  {
    v5 = a1 + 1;
    do
    {
      v6 = v5;
      if (v5 >= v2)
      {
        break;
      }

      ++v5;
    }

    while ((wcscmp(v4, *v6) & 0x80000000) == 0);
  }

  if (v6 < v2)
  {
    do
    {
      v8 = *--v2;
    }

    while (wcscmp(v4, v8) < 0);
  }

  if (v6 < v2)
  {
    v9 = *v6;
    v10 = *v2;
    do
    {
      *v6 = v10;
      *v2 = v9;
      do
      {
        v11 = v6[1];
        ++v6;
        v9 = v11;
      }

      while ((wcscmp(v4, v11) & 0x80000000) == 0);
      do
      {
        v12 = *--v2;
        v10 = v12;
      }

      while (wcscmp(v4, v12) < 0);
    }

    while (v6 < v2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v4;
  return v6;
}

const __int32 **std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t const**,TWideCharCompare &>(const __int32 **a1, const __int32 **a2)
{
  v4 = 0;
  v5 = *a1;
  do
  {
    v6 = a1[++v4];
  }

  while (wcscmp(v6, v5) < 0);
  v7 = &a1[v4];
  v8 = &a1[v4 - 1];
  if (v4 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *--a2;
    }

    while ((wcscmp(v10, v5) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v9 = *--a2;
    }

    while ((wcscmp(v9, v5) & 0x80000000) == 0);
  }

  if (v7 < a2)
  {
    v11 = *a2;
    v12 = &a1[v4];
    v13 = a2;
    do
    {
      *v12 = v11;
      *v13 = v6;
      do
      {
        v14 = v12[1];
        ++v12;
        v6 = v14;
      }

      while (wcscmp(v14, v5) < 0);
      do
      {
        v15 = *--v13;
        v11 = v15;
      }

      while ((wcscmp(v15, v5) & 0x80000000) == 0);
    }

    while (v12 < v13);
    v8 = v12 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v5;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **a1, const __int32 **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *a1;
        v13 = a1[1];
        v14 = wcscmp(v13, *a1);
        v15 = *(a2 - 1);
        v16 = wcscmp(v15, v13);
        if (v14 < 0)
        {
          if (v16 < 0)
          {
            *a1 = v15;
          }

          else
          {
            *a1 = v13;
            a1[1] = v12;
            v28 = *(a2 - 1);
            if ((wcscmp(v28, v12) & 0x80000000) == 0)
            {
              return 1;
            }

            a1[1] = v28;
          }

          *(a2 - 1) = v12;
          return 1;
        }

        if ((v16 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v15;
        *(a2 - 1) = v13;
        v9 = a1[1];
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v7 = *(a2 - 1);
        v8 = a1[3];
        if ((wcscmp(v7, v8) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[3] = v7;
        *(a2 - 1) = v8;
        v10 = a1[2];
        v9 = a1[3];
        if ((wcscmp(v9, v10) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[2] = v9;
        a1[3] = v10;
        v11 = a1[1];
        if ((wcscmp(v9, v11) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v9;
        a1[2] = v11;
        break;
      default:
        goto LABEL_18;
    }

    v17 = *a1;
    if (wcscmp(v9, *a1) < 0)
    {
      *a1 = v9;
      a1[1] = v17;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (wcscmp(v5, *a1) < 0)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_18:
  v19 = a1 + 1;
  v18 = a1[1];
  v20 = *a1;
  v21 = wcscmp(v18, *a1);
  v23 = a1 + 2;
  v22 = a1[2];
  v24 = wcscmp(v22, v18);
  if (v21 < 0)
  {
    v26 = a1;
    v27 = a1 + 2;
    if (v24 < 0)
    {
      goto LABEL_28;
    }

    *a1 = v18;
    a1[1] = v20;
    v29 = wcscmp(v22, v20);
    v26 = a1 + 1;
    v27 = a1 + 2;
    if (v29 < 0)
    {
      goto LABEL_28;
    }
  }

  else if (v24 < 0)
  {
    *v19 = v22;
    *v23 = v18;
    v25 = wcscmp(v22, v20);
    v26 = a1;
    v27 = a1 + 1;
    if (v25 < 0)
    {
LABEL_28:
      *v26 = v22;
      *v27 = v20;
    }
  }

  v30 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v31 = 0;
  for (i = 24; ; i += 8)
  {
    v33 = *v30;
    v34 = *v23;
    if (wcscmp(*v30, *v23) < 0)
    {
      v35 = i;
      while (1)
      {
        *(a1 + v35) = v34;
        v36 = v35 - 8;
        if (v35 == 8)
        {
          break;
        }

        v34 = *(a1 + v35 - 16);
        v37 = wcscmp(v33, v34);
        v35 = v36;
        if ((v37 & 0x80000000) == 0)
        {
          v38 = (a1 + v36);
          goto LABEL_37;
        }
      }

      v38 = a1;
LABEL_37:
      *v38 = v33;
      if (++v31 == 8)
      {
        break;
      }
    }

    v23 = v30++;
    if (v30 == a2)
    {
      return 1;
    }
  }

  return v30 + 1 == a2;
}

const __int32 **std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**,wchar_t const**>(const __int32 **a1, const __int32 **a2, const __int32 **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (wcscmp(*v12, *a1) < 0)
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v16 = *a1;
        v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, a4, v8);
        if (v15 == v17)
        {
          *v17 = v16;
        }

        else
        {
          *v17 = *v15;
          *v15 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(a1, (v17 + 1), a4, v17 + 1 - a1);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(uint64_t result, uint64_t a2, uint64_t a3, const __int32 **a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v8 = a3;
      v9 = (a4 - result) >> 2;
      v10 = v9 + 1;
      v11 = (result + 8 * (v9 + 1));
      v12 = v9 + 2;
      v13 = *v11;
      if (v9 + 2 < a3)
      {
        v14 = v11[1];
        if (wcscmp(*v11, v14) < 0)
        {
          v13 = v14;
          ++v11;
          v10 = v12;
        }
      }

      v15 = *v5;
      result = wcscmp(v13, *v5);
      if ((result & 0x80000000) == 0)
      {
        v21 = v8;
        do
        {
          v16 = v11;
          *v5 = v13;
          if (v7 < v10)
          {
            break;
          }

          v17 = (2 * v10) | 1;
          v11 = (v6 + 8 * v17);
          v18 = 2 * v10 + 2;
          v13 = *v11;
          if (v18 < v8)
          {
            v19 = v11[1];
            v20 = wcscmp(*v11, v19);
            if (v20 < 0)
            {
              v13 = v19;
              ++v11;
            }

            v8 = v21;
            if (v20 < 0)
            {
              v17 = v18;
            }
          }

          result = wcscmp(v13, v15);
          v5 = v16;
          v10 = v17;
        }

        while ((result & 0x80000000) == 0);
        *v16 = v15;
      }
    }
  }

  return result;
}

const __int32 **std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(const __int32 **a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[v5];
    v8 = v7 + 1;
    v9 = v7[1];
    v10 = (2 * v5) | 1;
    v11 = 2 * v5 + 2;
    if (v11 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v14 = v7[2];
      v13 = v7 + 2;
      v12 = v14;
      if (wcscmp(v9, v14) >= 0)
      {
        v5 = v10;
      }

      else
      {
        v9 = v12;
        v8 = v13;
        v5 = v11;
      }
    }

    *a1 = v9;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,TWideCharCompare &,wchar_t const**>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + 8 * (v4 >> 1));
    v8 = *v7;
    v10 = (a2 - 8);
    v9 = *(a2 - 8);
    result = wcscmp(*v7, v9);
    if ((result & 0x80000000) != 0)
    {
      do
      {
        v11 = v7;
        *v10 = v8;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 8 * v6);
        v8 = *v7;
        result = wcscmp(*v7, v9);
        v10 = v11;
      }

      while ((result & 0x80000000) != 0);
      *v11 = v9;
    }
  }

  return result;
}

uint64_t std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::find<TState *>(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = TFsaBuilder::TStateCompare::operator()(a1, *(v3 + 32), *a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || TFsaBuilder::TStateCompare::operator()(a1, *a2, *(v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t TFsaBuilder::TStateCompare::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  v4 = *(a3 + 40);
  if ((v3 != -1) == (v4 != -1))
  {
    return std::__lexicographical_compare[abi:ne200100]<TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,std::__identity,std::__identity,TFsaBuilder::TTransCompare>(*(a2 + 24), 1u, 0, 1, *(a3 + 24), 1u, 0, 1);
  }

  return v4 != -1 && v3 == -1;
}

uint64_t std::__lexicographical_compare[abi:ne200100]<TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,TTransConstIteratorDef,std::__identity,std::__identity,TFsaBuilder::TTransCompare>(unint64_t *a1, unsigned int a2, unint64_t *a3, int a4, unint64_t *a5, unsigned int a6, unint64_t *a7, int a8)
{
  if (a6 == a8 && a5 == a7)
  {
    return 0;
  }

  while (a2 != a4 || a1 != a3)
  {
    v9 = *a1;
    v10 = *a5;
    v11 = *a1 >= *a5;
    if (*a1 == *a5)
    {
      v9 = a1[2];
      v10 = a5[2];
      v11 = v9 >= v10;
    }

    if (!v11)
    {
      break;
    }

    if (v10 >= v9)
    {
      a1 = a1[a2 + 4];
      a5 = a5[a6 + 4];
      if (a6 != a8 || a5 != a7)
      {
        continue;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__emplace_unique_key_args<TState *,TState * const&>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__find_equal<TState *>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<TState *,TFsaBuilder::TStateCompare,std::allocator<TState *>>::__find_equal<TState *>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!TFsaBuilder::TStateCompare::operator()(a1, *a3, v4[4]))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!TFsaBuilder::TStateCompare::operator()(a1, v8[4], *a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_2627CF754(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<TVertex *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TState *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2627CF82C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL arabicToRoman(unint64_t a1, uint64_t a2)
{
  v2 = a1 - 3000;
  if (a1 - 3000 >= 0xFFFFFFFFFFFFF449)
  {
    v4 = a1;
    v5 = 0;
    v6 = 1000;
    do
    {
      if (v6 <= v4)
      {
        v7 = 0;
        v8 = (&arabicToRoman(unsigned long,TBuffer<wchar_t> &)::pppszRomanTable[9 * (3 - v5)])[v4 / v6 - 1];
          ;
        }

        TBuffer<wchar_t>::insert(a2, *(a2 + 16), v8, v7 - 1);
      }

      v4 %= v6;
      ++v5;
      v6 /= 0xAuLL;
    }

    while (v5 != 4);
  }

  return v2 < 0xFFFFFFFFFFFFF449;
}

BOOL romanToArabic(__int32 *a1, void *a2)
{
  *a2 = 0;
  v2 = *a1;
  if (*a1)
  {
    v4 = a1;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = wcschr(dword_26288E760, v2);
      if (!v7)
      {
        break;
      }

      v8 = v7 - dword_26288E760;
      if (v8 <= 6)
      {
        v9 = v7 - dword_26288E760;
      }

      else
      {
        v9 = v8 - 7;
      }

      v2 = v4[1];
      if (!v2)
      {
        goto LABEL_19;
      }

      v10 = wcschr(dword_26288E760, v4[1]);
      if (!v10)
      {
        return 1;
      }

      v11 = v10 - dword_26288E760;
      if (v11 > 6)
      {
        v11 -= 7;
      }

      if (v5 && v11 > v9)
      {
        return 1;
      }

      v5 = v9 == v11;
      if (v9)
      {
        if (v11 >= v9)
        {
          return 1;
        }
      }

      else if (v11 > v9 + 2)
      {
        return 1;
      }

      if (v11 > v9)
      {
        v5 = 0;
        v6 += romanToArabic(wchar_t const*,unsigned long &)::pNums[v11] - romanToArabic(wchar_t const*,unsigned long &)::pNums[v9];
        *a2 = v6;
        v12 = v4[2];
        v4 += 2;
        v2 = v12;
        if (!v12)
        {
          return v6 == 0;
        }
      }

      else
      {
LABEL_19:
        v6 += romanToArabic(wchar_t const*,unsigned long &)::pNums[v9];
        *a2 = v6;
        ++v4;
        if (!v2)
        {
          return v6 == 0;
        }
      }
    }
  }

  return 1;
}

char *getNextToken(char *a1, uint64_t a2, char *a3)
{
  TBuffer<char>::resize(a2, 0);
  if (!a1)
  {
    return 0;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = a1;
  while (strchr(a3, v6))
  {
    v8 = *++a1;
    v6 = v8;
    ++v7;
    if (!v8)
    {
      return 0;
    }
  }

  v9 = a1;
  do
  {
    if (strchr(a3, v6))
    {
      break;
    }

    v11 = *++v9;
    v6 = v11;
  }

  while (v11);
  TBuffer<char>::resize(a2, 0);
  TBuffer<char>::insert(a2, 0, a1, v9 - v7);
  return v9;
}

int *getNextToken(int *a1, uint64_t a2, __int32 *a3)
{
  TBuffer<wchar_t>::resize(a2, 0);
  if (!a1)
  {
    return 0;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = a1;
  while (wcschr(a3, v6))
  {
    v8 = a1[1];
    ++a1;
    v6 = v8;
    ++v7;
    if (!v8)
    {
      return 0;
    }
  }

  v9 = a1;
  do
  {
    if (wcschr(a3, v6))
    {
      break;
    }

    v11 = v9[1];
    ++v9;
    v6 = v11;
  }

  while (v11);
  TBuffer<wchar_t>::resize(a2, 0);
  TBuffer<wchar_t>::insert(a2, 0, a1, v9 - v7);
  return v9;
}

uint64_t slashEscape(uint64_t result, uint64_t a2)
{
  for (i = result; ; ++i)
  {
    v4 = *i;
    if (*i > 12)
    {
      switch(v4)
      {
        case 13:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = &unk_26288E7B4;
          goto LABEL_13;
        case 34:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = &unk_26288E7CC;
          goto LABEL_13;
        case 92:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = &unk_26288E7C0;
LABEL_13:
          v8 = 2;
          goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (v4 == 9)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = &unk_26288E79C;
      goto LABEL_13;
    }

    if (v4 == 10)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = &unk_26288E7A8;
      goto LABEL_13;
    }

    if (!v4)
    {
      break;
    }

LABEL_16:
    v9 = *i;
    v5 = *(a2 + 16);
    v7 = &v9;
    v6 = a2;
    v8 = 1;
LABEL_14:
    result = TBuffer<wchar_t>::insert(v6, v5, v7, v8);
  }

  return result;
}

{
  for (i = result; ; ++i)
  {
    v4 = *i;
    if (v4 > 0xC)
    {
      switch(v4)
      {
        case 0xDu:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = "\\r";
          goto LABEL_13;
        case 0x22u:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = "\\"";
          goto LABEL_13;
        case 0x5Cu:
          v5 = *(a2 + 16);
          v6 = a2;
          v7 = "\\\";
LABEL_13:
          v8 = 2;
          goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (v4 == 9)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = "\\t";
      goto LABEL_13;
    }

    if (v4 == 10)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = "\\n";
      goto LABEL_13;
    }

    if (!*i)
    {
      break;
    }

LABEL_16:
    v9 = v4;
    v5 = *(a2 + 16);
    v7 = &v9;
    v6 = a2;
    v8 = 1;
LABEL_14:
    result = TBuffer<char>::insert(v6, v5, v7, v8);
  }

  return result;
}

uint64_t tildeEscape(uint64_t result, uint64_t a2)
{
  for (i = result; ; ++i)
  {
    v4 = *i;
    if (*i <= 31)
    {
      break;
    }

    if (v4 != 32)
    {
      if (v4 == 95)
      {
        v5 = *(a2 + 16);
        v6 = a2;
        v7 = &unk_26288E808;
        goto LABEL_16;
      }

      if (v4 == 126)
      {
        v5 = *(a2 + 16);
        v6 = a2;
        v7 = &unk_26288E7FC;
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    v5 = *(a2 + 16);
    v6 = a2;
    v7 = &unk_26288E814;
LABEL_19:
    v8 = 1;
LABEL_20:
    result = TBuffer<wchar_t>::insert(v6, v5, v7, v8);
  }

  if (v4 > 9)
  {
    if (v4 == 10)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = &unk_26288E7E4;
      goto LABEL_16;
    }

    if (v4 == 13)
    {
      v5 = *(a2 + 16);
      v6 = a2;
      v7 = &unk_26288E7F0;
LABEL_16:
      v8 = 2;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v4 == 9)
  {
    v5 = *(a2 + 16);
    v6 = a2;
    v7 = &unk_26288E7D8;
    goto LABEL_16;
  }

  if (v4)
  {
LABEL_18:
    v9 = *i;
    v5 = *(a2 + 16);
    v7 = &v9;
    v6 = a2;
    goto LABEL_19;
  }

  return result;
}

uint64_t formatString(__int32 *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = wcschr(a1, 37);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = v7 + 1;
      v9 = (v7[1] - 49);
      if (v9 > 8 || v9 >= (a2[1] - *a2) >> 3)
      {
        v8 = v7;
      }

      else
      {
        TBuffer<wchar_t>::insert(a3, *(a3 + 16), v5, v7 - v5);
        v10 = 0;
        v11 = *(*a2 + 8 * v9);
          ;
        }

        TBuffer<wchar_t>::insert(a3, *(a3 + 16), v11, v10 - 1);
        v5 = v7 + 2;
      }

      v7 = wcschr(v8 + 1, 37);
    }

    while (v7);
  }

  v13 = 0;
  v14 = *(a3 + 16);
    ;
  }

  return TBuffer<wchar_t>::insert(a3, v14, v5, v13 - 1);
}

void MrecInitModule_recogctl_recogctl(void)
{
  if (!gParDebugShowPerFrameRecognitionTimes)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowPerFrameRecognitionTimes", &unk_26288E838, &unk_26288E838, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowPerFrameRecognitionTimes = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPerFrameRecognitionTimes);
  }

  if (!gParDebugShowRecogWorkTypeStateTransitions)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowRecogWorkTypeStateTransitions", &unk_26288E838, &unk_26288E838, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowRecogWorkTypeStateTransitions = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowRecogWorkTypeStateTransitions);
  }

  if (!gParDebugShowParamSetParametersOnLoad)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowParamSetParametersOnLoad", &unk_26288E838, &unk_26288E838, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowParamSetParametersOnLoad = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowParamSetParametersOnLoad);
  }

  if (!gParDebugResultProcessing)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugResultProcessing", &unk_26288E838, &unk_26288E838, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugResultProcessing = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDebugResultProcessing);
  }
}

void sub_2627D0678(_Unwind_Exception *a1)
{
  MrecInitModule_sdpres_sdapi();
  v3 = *(v1 - 96);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

uint64_t RecogSpecLayer::RecogSpecLayer(uint64_t a1, uint64_t a2)
{
  v4 = RecognizerOptions::RecognizerOptions();
  FstCoreOptions::FstCoreOptions(v4 + 216, a2 + 216);
  v5 = *(a2 + 296);
  *(a1 + 296) = v5;
  if (v5)
  {
    ++*(v5 + 36);
  }

  return a1;
}

void RecogSpecLayer::~RecogSpecLayer(RecogSpecLayer *this)
{
  v1 = *(this + 37);
  if (v1)
  {
    --*(v1 + 36);
    *(this + 37) = 0;
  }

  MrecInitModule_sdpres_sdapi();

  MrecInitModule_sdpres_sdapi();
}

void RecogSpec::RecogSpec(RecogSpec *this, char a2, char a3, __int16 a4, __int16 a5)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 6) = a3;
  *(this + 1) = a4;
  *(this + 2) = a5;
}

uint64_t RecogSpec::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 2) = *(a2 + 2);
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      DgnDelete<RecogSpecLayer>(*(*(a1 + 8) + 8 * v4));
      *(*(a1 + 8) + 8 * v4++) = 0;
    }

    while (v4 < *(a1 + 16));
  }

  DgnIOwnArray<RecogSpecLayer *>::copyArraySlice((a1 + 8), (a2 + 8), 0, *(a2 + 16));
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      v6 = MemChunkAlloc(0x130uLL, 0);
      *(*(a1 + 8) + 8 * v5) = RecogSpecLayer::RecogSpecLayer(v6, *(*(a1 + 8) + 8 * v5));
      ++v5;
    }

    while (v5 < *(a1 + 16));
  }

  return a1;
}

RecogSpecLayer *DgnDelete<RecogSpecLayer>(RecogSpecLayer *result)
{
  if (result)
  {
    RecogSpecLayer::~RecogSpecLayer(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void RecogSpec::RecogSpec(RecogSpec *this, const RecogSpec *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  RecogSpec::operator=(this, a2);
}

uint64_t sizeObject<RecogSpecLayer *>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v5 = *(a1 + 8);
    v14 = gShadowDiagnosticShowIdealizedObjectSizes;
    if (v5 >= 1)
    {
      v6 = v5 - 1;
      v7 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v7)
        {
          v8 = 4;
        }

        else
        {
          v8 = 8;
        }

        v9 = *(*a1 + 8 * v6);
        if (v9)
        {
          v10 = RecognizerOptions::sizeObject(*(*a1 + 8 * v6), a2);
          v8 += v10 + sizeObject(v9 + 216, a2);
          v7 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v8;
        v11 = v6-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v14 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

unint64_t RecogSpec::addLayer(unsigned __int8 *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, char a8, double a9, unsigned __int128 a10, unsigned __int128 a11, int a12, __int16 a13, char a14, unsigned __int128 a15, unsigned int a16, int a17)
{
  v20 = *a1;
  v21 = MemChunkAlloc(0x130uLL, 0);
  BYTE2(v25) = a14;
  LOWORD(v25) = a13;
  *&v24[20] = a12;
  *&v24[4] = a11;
  *v24 = HIDWORD(a10);
  result = RecogSpecLayer::RecogSpecLayer(v21, a2, v20, a3, a4, a5, a6, a7, a9, a8, a10 >> 32, *v24, a11 >> 32, *&v24[16], v25, a15 >> 32, __PAIR64__(a16, HIDWORD(a15)), a17);
  v23 = *(a1 + 4);
  if (v23 == *(a1 + 5))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts((a1 + 8), 1, 1);
    v23 = *(a1 + 4);
  }

  *(*(a1 + 1) + 8 * v23) = v21;
  *(a1 + 4) = v23 + 1;
  return result;
}

void RecogContext::RecogContext(RecogContext *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

void RecogContext::~RecogContext(RecogContext *this)
{
  DgnDelete<DgnArray<DgnPrimArray<unsigned int>>>(*this);
  DgnDelete<PelScoreCacheData>(*(this + 3));
  DgnDelete<PelScoreCacheData>(*(this + 4));
  DgnDelete<DgnPrimArray<unsigned int>>(*(this + 5));
  DgnDelete<DgnPrimArray<unsigned int>>(*(this + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

uint64_t DgnDelete<DgnArray<DgnPrimArray<unsigned int>>>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnArray<DgnPrimArray<unsigned char>>::releaseAll(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void RecogLayerPhaseStats::RecogLayerPhaseStats(RecogLayerPhaseStats *this)
{
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  PelStats::resetStats(this);
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  LMStats::resetStats((this + 176));
  SearchStats::resetStats(this + 328);
  NetStats::resetStats((this + 360));
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  FstStats::resetStats((this + 464));
  *(this + 45) = 0u;
  *(this + 46) = 0u;
}

void RecogLayerPhaseStats::printSize(RecogLayerPhaseStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 766, &v78);
  if (v79)
  {
    v16 = v78;
  }

  else
  {
    v16 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288E838, a3, &unk_26288E838, v16);
  DgnString::~DgnString(&v78);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288E838);
  v21 = SnapTime::sizeObject(this + 720, 0);
  v22 = SnapTime::sizeObject(this + 720, 1);
  v23 = SnapTime::sizeObject(this + 720, 3);
  v24 = (a3 + 1);
  v77 = a3;
  v25 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 768, &v78);
  if (v79)
  {
    v30 = v78;
  }

  else
  {
    v30 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, v24, &unk_26288E838, v25, v25, v30, v21, v22, v23);
  DgnString::~DgnString(&v78);
  *a4 += v21;
  *a5 += v22;
  *a6 += v23;
  v31 = PelStats::sizeObject(this, 0);
  v32 = PelStats::sizeObject(this, 1);
  v33 = PelStats::sizeObject(this, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 769, &v78);
  if (v79)
  {
    v38 = v78;
  }

  else
  {
    v38 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, v24, &unk_26288E838, v25, v25, v38, v31, v32, v33);
  DgnString::~DgnString(&v78);
  *a4 += v31;
  *a5 += v32;
  *a6 += v33;
  v39 = LMStats::sizeObject(this + 176, 0);
  v40 = LMStats::sizeObject(this + 176, 1);
  v41 = LMStats::sizeObject(this + 176, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 770, &v78);
  if (v79)
  {
    v46 = v78;
  }

  else
  {
    v46 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v24, &unk_26288E838, v25, v25, v46, v39, v40, v41);
  DgnString::~DgnString(&v78);
  *a4 += v39;
  *a5 += v40;
  *a6 += v41;
  v47 = sizeObject(this + 328, 0);
  v48 = sizeObject(this + 328, 1);
  v49 = sizeObject(this + 328, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 771, &v78);
  if (v79)
  {
    v54 = v78;
  }

  else
  {
    v54 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, v24, &unk_26288E838, v25, v25, v54, v47, v48, v49);
  DgnString::~DgnString(&v78);
  *a4 += v47;
  *a5 += v48;
  *a6 += v49;
  v55 = NetStats::sizeObject(this + 360, 0);
  v56 = NetStats::sizeObject(this + 360, 1);
  v57 = NetStats::sizeObject(this + 360, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 772, &v78);
  if (v79)
  {
    v62 = v78;
  }

  else
  {
    v62 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v24, &unk_26288E838, v25, v25, v62, v55, v56, v57);
  DgnString::~DgnString(&v78);
  *a4 += v55;
  *a5 += v56;
  *a6 += v57;
  v63 = FstStats::sizeObject(this + 464, 0);
  v64 = FstStats::sizeObject(this + 464, 1);
  v65 = FstStats::sizeObject(this + 464, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 773, &v78);
  if (v79)
  {
    v70 = v78;
  }

  else
  {
    v70 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v67, v68, v69, v24, &unk_26288E838, v25, v25, v70, v63, v64, v65);
  DgnString::~DgnString(&v78);
  *a4 += v63;
  *a5 += v64;
  *a6 += v65;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 775, &v78);
  if (v79)
  {
    v75 = v78;
  }

  else
  {
    v75 = &unk_26288E838;
  }

  v76 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, v77, &unk_26288E838, (35 - v77), (35 - v77), v75, *a4, *a5, *a6);
  DgnString::~DgnString(&v78);
}

void sub_2627D1194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

unint64_t PRStats::recordPartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a2 + 8);
  *(a1 + 16) = v8;
  v9 = a1 + 16;
  v10 = *(a1 + 72);
  if (v10 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = 0;
    while (*(*(a1 + 64) + 4 * v12) == *(*a2 + 4 * v12))
    {
      if (v11 == ++v12)
      {
        goto LABEL_10;
      }
    }

    LODWORD(v11) = v12;
  }

LABEL_10:
  v13 = v10 - v11;
  v14 = v8 - v11;
  if (v13 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v16 = v14 - v15;
  v17 = *(a1 + 20);
  v18.i32[0] = 1;
  v18.i32[1] = v8;
  *(a1 + 36) = vadd_s32(*(a1 + 36), v18);
  v19.i32[0] = v16 + v13;
  v19.i32[1] = v15;
  v19.i64[1] = __PAIR64__(v16, v13 - v15);
  *(a1 + 20) = vaddq_s32(v17, v19);
  if (v16 + v13)
  {
    *(a1 + 44) = vadd_s32(*(a1 + 44), v18);
    DgnPrimArray<int>::copyArraySlice(a1 + 64, a2, 0, v8);
  }

  v20 = vcvtq_f64_s64(*(a1 + 88));
  v21 = vsubq_f64(vcvtq_f64_s64(*(a4 + 1)), v20);
  __asm { FMOV            V3.2D, #0.5 }

  *(a1 + 112) = vaddq_f64(*(a1 + 112), vmulq_f64(v21, vsubq_f64(vaddq_f64(vmulq_f64(v21, _Q3), v20), vdupq_lane_s64(COERCE__INT64(*(a1 + 56)), 0))));
  v27 = *a4;
  CyclesPerSecond = ClockTimer::getCyclesPerSecond(&ClockTimer::smClockTimer);
  v29 = (1000000 * (v27 % CyclesPerSecond) / CyclesPerSecond + 1000000 * (v27 / CyclesPerSecond));
  v30 = *(a1 + 80);
  result = ClockTimer::getCyclesPerSecond(&ClockTimer::smClockTimer);
  v32 = (1000000 * (v30 % result) / result + 1000000 * (v30 / result));
  *(a1 + 128) = *(a1 + 128) + (v29 - v32) * ((v29 - v32) * 0.5 + v32 - *(a1 + 56));
  v33 = *(a4 + 1);
  *(a1 + 80) = *a4;
  *(a1 + 96) = v33;
  *(a1 + 56) = a3;
  for (i = *(a1 + 8); *(a2 + 8) > i; *(a1 + 8) = i)
  {
    if (i == *(a1 + 12))
    {
      DgnArray<RecogResultToken>::reallocElts(a1, 1, 1);
      i = *(a1 + 8);
    }

    v35 = *a1 + 96 * i;
    v36 = *v9;
    v37 = *(v9 + 32);
    *(v35 + 16) = *(v9 + 16);
    *(v35 + 32) = v37;
    *v35 = v36;
    *(v35 + 56) = 0;
    *(v35 + 48) = 0;
    result = DgnPrimArray<int>::copyArraySlice(v35 + 48, (v9 + 48), 0, *(a1 + 72));
    v38 = *(a1 + 96);
    *(v35 + 64) = *(a1 + 80);
    *(v35 + 80) = v38;
    i = *(a1 + 8) + 1;
  }

  return result;
}

void RecogLayerStats::RecogLayerStats(RecogLayerStats *this)
{
  RecogLayerPhaseStats::RecogLayerPhaseStats(this);
  RecogLayerPhaseStats::RecogLayerPhaseStats((v2 + 752));
  LatticeStats::LatticeStats((this + 1552));
  *(this + 502) = 0;
  *(this + 1976) = 0u;
  *(this + 1992) = 0u;
  *(this + 1960) = 0u;
  *(this + 143) = 0u;
  *(this + 144) = 0u;
  *(this + 145) = 0u;
  *(this + 146) = 0u;
  *(this + 147) = 0u;
  *(this + 94) = 0u;
  *(this + 95) = 0u;
  *(this + 96) = 0u;
  *(this + 126) = 0u;
  *(this + 127) = 0u;
  *(this + 128) = 0u;
  *(this + 129) = 0u;
  *(this + 130) = 0u;
  *(this + 131) = 0u;
  *(this + 132) = 0u;
  *(this + 133) = 0u;
  *(this + 536) = 0;
  *(this + 570) = 0;
  *(this + 2248) = 0u;
  *(this + 2264) = 0u;
  *(this + 2216) = 0u;
  *(this + 2232) = 0u;
  *(this + 2184) = 0u;
  *(this + 2200) = 0u;
  *(this + 2152) = 0u;
  *(this + 2168) = 0u;
}

void RecogLayerStats::printSize(RecogLayerStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1041, &v83);
  if (v84)
  {
    v16 = v83;
  }

  else
  {
    v16 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288E838, a3, &unk_26288E838, v16);
  DgnString::~DgnString(&v83);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288E838);
  if (this)
  {
    v82 = 0;
    v83 = 0;
    v21 = (a3 + 1);
    v81 = 0;
    RecogLayerPhaseStats::printSize(this, 0xFFFFFFFFLL, v21, &v83, &v82, &v81);
    *a4 += v83;
    *a5 += v82;
    *a6 += v81;
  }

  else
  {
    v21 = (a3 + 1);
  }

  v82 = 0;
  v83 = 0;
  v81 = 0;
  RecogLayerPhaseStats::printSize((this + 752), 0xFFFFFFFFLL, v21, &v83, &v82, &v81);
  *a4 += v83;
  *a5 += v82;
  *a6 += v81;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047, &v83);
  if (v84)
  {
    v26 = v83;
  }

  else
  {
    v26 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, v21, &unk_26288E838, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047, &v83);
  if (v84)
  {
    v31 = v83;
  }

  else
  {
    v31 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v28, v29, v30, v21, &unk_26288E838, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047, &v83);
  if (v84)
  {
    v36 = v83;
  }

  else
  {
    v36 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, v21, &unk_26288E838, (34 - a3), (34 - a3), v36, 8, 8, 0);
  DgnString::~DgnString(&v83);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047, &v83);
  if (v84)
  {
    v41 = v83;
  }

  else
  {
    v41 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, v21, &unk_26288E838, (34 - a3), (34 - a3), v41, 8, 8, 0);
  DgnString::~DgnString(&v83);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047, &v83);
  if (v84)
  {
    v46 = v83;
  }

  else
  {
    v46 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v21, &unk_26288E838, (34 - a3), (34 - a3), v46, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1047, &v83);
  if (v84)
  {
    v51 = v83;
  }

  else
  {
    v51 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, v21, &unk_26288E838, (34 - a3), (34 - a3), v51, 8, 8, 0);
  DgnString::~DgnString(&v83);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1049, &v83);
  if (v84)
  {
    v56 = v83;
  }

  else
  {
    v56 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v53, v54, v55, v21, &unk_26288E838, (34 - a3), (34 - a3), v56, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1051, &v83);
  if (v84)
  {
    v61 = v83;
  }

  else
  {
    v61 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, v21, &unk_26288E838, (34 - a3), (34 - a3), v61, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1053, &v83);
  if (v84)
  {
    v66 = v83;
  }

  else
  {
    v66 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v21, &unk_26288E838, (34 - a3), (34 - a3), v66, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  v67 = LatticeStats::sizeObject(this + 1552, 0);
  v68 = LatticeStats::sizeObject(this + 1552, 1);
  v69 = LatticeStats::sizeObject(this + 1552, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1055, &v83);
  if (v84)
  {
    v74 = v83;
  }

  else
  {
    v74 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v71, v72, v73, v21, &unk_26288E838, (34 - a3), (34 - a3), v74, v67, v68, v69);
  DgnString::~DgnString(&v83);
  *a4 += v67;
  *a5 += v68;
  *a6 += v69;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1056, &v83);
  if (v84)
  {
    v79 = v83;
  }

  else
  {
    v79 = &unk_26288E838;
  }

  v80 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v76, v77, v78, a3, &unk_26288E838, (35 - a3), (35 - a3), v79, *a4, *a5, *a6);
  DgnString::~DgnString(&v83);
}

void sub_2627D1B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void RecogPhaseStats::RecogPhaseStats(RecogPhaseStats *this)
{
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  PelStats::resetStats(this);
  PrefStats::resetStats((this + 176));
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  PelStats::resetStats((this + 288));
}

void RecogPhaseStats::printSize(RecogPhaseStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1072, &v62);
  if (v63)
  {
    v16 = v62;
  }

  else
  {
    v16 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288E838, a3, &unk_26288E838, v16);
  DgnString::~DgnString(&v62);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288E838);
  v21 = SnapTime::sizeObject(this + 256, 0);
  v22 = SnapTime::sizeObject(this + 256, 1);
  v23 = SnapTime::sizeObject(this + 256, 3);
  v24 = (a3 + 1);
  v61 = a3;
  v25 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1073, &v62);
  if (v63)
  {
    v30 = v62;
  }

  else
  {
    v30 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, v24, &unk_26288E838, v25, v25, v30, v21, v22, v23);
  DgnString::~DgnString(&v62);
  *a4 += v21;
  *a5 += v22;
  *a6 += v23;
  v31 = PelStats::sizeObject(this, 0);
  v32 = PelStats::sizeObject(this, 1);
  v33 = PelStats::sizeObject(this, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1075, &v62);
  if (v63)
  {
    v38 = v62;
  }

  else
  {
    v38 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, v24, &unk_26288E838, v25, v25, v38, v31, v32, v33);
  DgnString::~DgnString(&v62);
  *a4 += v31;
  *a5 += v32;
  *a6 += v33;
  v39 = PrefStats::sizeObject(this + 176, 0);
  v40 = PrefStats::sizeObject(this + 176, 1);
  v41 = PrefStats::sizeObject(this + 176, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1076, &v62);
  if (v63)
  {
    v46 = v62;
  }

  else
  {
    v46 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v24, &unk_26288E838, v25, v25, v46, v39, v40, v41);
  DgnString::~DgnString(&v62);
  *a4 += v39;
  *a5 += v40;
  *a6 += v41;
  v47 = PelStats::sizeObject(this + 288, 0);
  v48 = PelStats::sizeObject(this + 288, 1);
  v49 = PelStats::sizeObject(this + 288, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1078, &v62);
  if (v63)
  {
    v54 = v62;
  }

  else
  {
    v54 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, v24, &unk_26288E838, v25, v25, v54, v47, v48, v49);
  DgnString::~DgnString(&v62);
  *a4 += v47;
  *a5 += v48;
  *a6 += v49;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1079, &v62);
  if (v63)
  {
    v59 = v62;
  }

  else
  {
    v59 = &unk_26288E838;
  }

  v60 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, v61, &unk_26288E838, (35 - v61), (35 - v61), v59, *a4, *a5, *a6);
  DgnString::~DgnString(&v62);
}

void sub_2627D1F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void RecogStats::RecogStats(RecogStats *this)
{
  *this = 0;
  *(this + 1) = 0;
  RecogPhaseStats::RecogPhaseStats((this + 16));
  RecogPhaseStats::RecogPhaseStats((this + 480));
  *(this + 244) = 0;
  *(this + 980) = 0;
  *(this + 118) = 0;
  *(this + 120) = 0;
  *(this + 119) = 0;
  *(this + 965) = 0;
  bzero(this + 984, 0x298uLL);
}

void RecogStats::printSize(RecogStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1123, &v318);
  if (v319)
  {
    v16 = v318;
  }

  else
  {
    v16 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288E838, a3, &unk_26288E838, v16);
  DgnString::~DgnString(&v318);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288E838);
  v21 = (a3 + 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1125, &v318);
  if (v319)
  {
    v26 = v318;
  }

  else
  {
    v26 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v22, v23, v24, v25, (a3 + 1), &unk_26288E838, (a3 + 1), &unk_26288E838, v26);
  v315 = a3;
  DgnString::~DgnString(&v318);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v27, v28, v29, v30, (a3 + 1), &unk_26288E838);
  LODWORD(v31) = *(this + 2);
  if (v31)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = *this;
      v317 = 0;
      v318 = 0;
      v316 = 0;
      RecogLayerStats::printSize((v37 + v32), v33, (v315 + 2), &v318, &v317, &v316);
      v36 += v316;
      v35 += v317;
      v34 += v318;
      ++v33;
      v31 = *(this + 2);
      v32 += 2368;
    }

    while (v33 < v31);
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
  }

  v38 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 12;
  }

  v39 = v38 + v35;
  v40 = v38 + v34 + 2368 * (*(this + 3) - v31);
  v41 = (34 - v315);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1125, &v318);
  if (v319)
  {
    v46 = v318;
  }

  else
  {
    v46 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v21, &unk_26288E838, v41, v41, v46, v40, v39, v36);
  DgnString::~DgnString(&v318);
  *a4 += v40;
  *a5 += v39;
  *a6 += v36;
  v317 = 0;
  v318 = 0;
  v316 = 0;
  RecogPhaseStats::printSize((this + 16), 0xFFFFFFFFLL, v21, &v318, &v317, &v316);
  *a4 += v318;
  *a5 += v317;
  *a6 += v316;
  v317 = 0;
  v318 = 0;
  v316 = 0;
  RecogPhaseStats::printSize((this + 480), 0xFFFFFFFFLL, v21, &v318, &v317, &v316);
  *a4 += v318;
  *a5 += v317;
  *a6 += v316;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1131, &v318);
  if (v319)
  {
    v51 = v318;
  }

  else
  {
    v51 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, v21, &unk_26288E838, v41, v41, v51, 1, 1, 0);
  DgnString::~DgnString(&v318);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1133, &v318);
  if (v319)
  {
    v56 = v318;
  }

  else
  {
    v56 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v53, v54, v55, v21, &unk_26288E838, v41, v41, v56, 1, 1, 0);
  DgnString::~DgnString(&v318);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1135, &v318);
  if (v319)
  {
    v61 = v318;
  }

  else
  {
    v61 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, v21, &unk_26288E838, v41, v41, v61, 1, 1, 0);
  DgnString::~DgnString(&v318);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1137, &v318);
  if (v319)
  {
    v66 = v318;
  }

  else
  {
    v66 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v21, &unk_26288E838, v41, v41, v66, 1, 1, 0);
  DgnString::~DgnString(&v318);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1139, &v318);
  if (v319)
  {
    v71 = v318;
  }

  else
  {
    v71 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v21, &unk_26288E838, v41, v41, v71, 4, 4, 0);
  DgnString::~DgnString(&v318);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1141, &v318);
  if (v319)
  {
    v76 = v318;
  }

  else
  {
    v76 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v73, v74, v75, v21, &unk_26288E838, v41, v41, v76, 4, 4, 0);
  DgnString::~DgnString(&v318);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1143, &v318);
  if (v319)
  {
    v81 = v318;
  }

  else
  {
    v81 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v78, v79, v80, v21, &unk_26288E838, v41, v41, v81, 4, 4, 0);
  DgnString::~DgnString(&v318);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1145, &v318);
  if (v319)
  {
    v86 = v318;
  }

  else
  {
    v86 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v83, v84, v85, v21, &unk_26288E838, v41, v41, v86, 4, 4, 0);
  DgnString::~DgnString(&v318);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1147, &v318);
  if (v319)
  {
    v91 = v318;
  }

  else
  {
    v91 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v88, v89, v90, v21, &unk_26288E838, v41, v41, v91, 4, 4, 0);
  DgnString::~DgnString(&v318);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1149, &v318);
  if (v319)
  {
    v96 = v318;
  }

  else
  {
    v96 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v93, v94, v95, v21, &unk_26288E838, v41, v41, v96, 4, 4, 0);
  DgnString::~DgnString(&v318);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1151, &v318);
  if (v319)
  {
    v101 = v318;
  }

  else
  {
    v101 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v98, v99, v100, v21, &unk_26288E838, v41, v41, v101, 1, 1, 0);
  DgnString::~DgnString(&v318);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1153, &v318);
  if (v319)
  {
    v106 = v318;
  }

  else
  {
    v106 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v103, v104, v105, v21, &unk_26288E838, v41, v41, v106, 4, 4, 0);
  DgnString::~DgnString(&v318);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1155, &v318);
  if (v319)
  {
    v111 = v318;
  }

  else
  {
    v111 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v108, v109, v110, v21, &unk_26288E838, v41, v41, v111, 1, 1, 0);
  DgnString::~DgnString(&v318);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1157, &v318);
  if (v319)
  {
    v116 = v318;
  }

  else
  {
    v116 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v113, v114, v115, v21, &unk_26288E838, v41, v41, v116, 8, 8, 0);
  DgnString::~DgnString(&v318);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1159, &v318);
  if (v319)
  {
    v121 = v318;
  }

  else
  {
    v121 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v118, v119, v120, v21, &unk_26288E838, v41, v41, v121, 8, 8, 0);
  DgnString::~DgnString(&v318);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1161, &v318);
  if (v319)
  {
    v126 = v318;
  }

  else
  {
    v126 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v122, v123, v124, v125, v21, &unk_26288E838, v41, v41, v126, 8, 8, 0);
  DgnString::~DgnString(&v318);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1163, &v318);
  if (v319)
  {
    v131 = v318;
  }

  else
  {
    v131 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v128, v129, v130, v21, &unk_26288E838, v41, v41, v131, 4, 4, 0);
  DgnString::~DgnString(&v318);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1165, &v318);
  if (v319)
  {
    v136 = v318;
  }

  else
  {
    v136 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v132, v133, v134, v135, v21, &unk_26288E838, v41, v41, v136, 4, 4, 0);
  DgnString::~DgnString(&v318);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1167, &v318);
  if (v319)
  {
    v141 = v318;
  }

  else
  {
    v141 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v138, v139, v140, v21, &unk_26288E838, v41, v41, v141, 4, 4, 0);
  DgnString::~DgnString(&v318);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1169, &v318);
  if (v319)
  {
    v146 = v318;
  }

  else
  {
    v146 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v142, v143, v144, v145, v21, &unk_26288E838, v41, v41, v146, 4, 4, 0);
  DgnString::~DgnString(&v318);
  *a4 += 4;
  *a5 += 4;
  v147 = SnapTime::sizeObject(this + 1024, 0);
  v148 = SnapTime::sizeObject(this + 1024, 1);
  v149 = SnapTime::sizeObject(this + 1024, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1171, &v318);
  if (v319)
  {
    v154 = v318;
  }

  else
  {
    v154 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v150, v151, v152, v153, v21, &unk_26288E838, v41, v41, v154, v147, v148, v149);
  DgnString::~DgnString(&v318);
  *a4 += v147;
  *a5 += v148;
  *a6 += v149;
  v155 = SnapTime::sizeObject(this + 1056, 0);
  v156 = SnapTime::sizeObject(this + 1056, 1);
  v157 = SnapTime::sizeObject(this + 1056, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1173, &v318);
  if (v319)
  {
    v162 = v318;
  }

  else
  {
    v162 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v158, v159, v160, v161, v21, &unk_26288E838, v41, v41, v162, v155, v156, v157);
  DgnString::~DgnString(&v318);
  *a4 += v155;
  *a5 += v156;
  *a6 += v157;
  v163 = SnapTime::sizeObject(this + 1088, 0);
  v164 = SnapTime::sizeObject(this + 1088, 1);
  v165 = SnapTime::sizeObject(this + 1088, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1175, &v318);
  if (v319)
  {
    v170 = v318;
  }

  else
  {
    v170 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v166, v167, v168, v169, v21, &unk_26288E838, v41, v41, v170, v163, v164, v165);
  DgnString::~DgnString(&v318);
  *a4 += v163;
  *a5 += v164;
  *a6 += v165;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1177, &v318);
  if (v319)
  {
    v175 = v318;
  }

  else
  {
    v175 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, v172, v173, v174, v21, &unk_26288E838, v41, v41, v175, 8, 8, 0);
  DgnString::~DgnString(&v318);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1179, &v318);
  if (v319)
  {
    v180 = v318;
  }

  else
  {
    v180 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v176, v177, v178, v179, v21, &unk_26288E838, v41, v41, v180, 8, 8, 0);
  DgnString::~DgnString(&v318);
  *a4 += 8;
  *a5 += 8;
  v181 = SnapTime::sizeObject(this + 1136, 0);
  v182 = SnapTime::sizeObject(this + 1136, 1);
  v183 = SnapTime::sizeObject(this + 1136, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1181, &v318);
  if (v319)
  {
    v188 = v318;
  }

  else
  {
    v188 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v184, v185, v186, v187, v21, &unk_26288E838, v41, v41, v188, v181, v182, v183);
  DgnString::~DgnString(&v318);
  *a4 += v181;
  *a5 += v182;
  *a6 += v183;
  v189 = SnapTime::sizeObject(this + 1168, 0);
  v190 = SnapTime::sizeObject(this + 1168, 1);
  v191 = SnapTime::sizeObject(this + 1168, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1182, &v318);
  if (v319)
  {
    v196 = v318;
  }

  else
  {
    v196 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v192, v193, v194, v195, v21, &unk_26288E838, v41, v41, v196, v189, v190, v191);
  DgnString::~DgnString(&v318);
  *a4 += v189;
  *a5 += v190;
  *a6 += v191;
  v197 = SnapTime::sizeObject(this + 1200, 0);
  v198 = SnapTime::sizeObject(this + 1200, 1);
  v199 = SnapTime::sizeObject(this + 1200, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1184, &v318);
  if (v319)
  {
    v204 = v318;
  }

  else
  {
    v204 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v200, v201, v202, v203, v21, &unk_26288E838, v41, v41, v204, v197, v198, v199);
  DgnString::~DgnString(&v318);
  *a4 += v197;
  *a5 += v198;
  *a6 += v199;
  v205 = SnapTime::sizeObject(this + 1232, 0);
  v206 = SnapTime::sizeObject(this + 1232, 1);
  v207 = SnapTime::sizeObject(this + 1232, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1186, &v318);
  if (v319)
  {
    v212 = v318;
  }

  else
  {
    v212 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v208, v209, v210, v211, v21, &unk_26288E838, v41, v41, v212, v205, v206, v207);
  DgnString::~DgnString(&v318);
  *a4 += v205;
  *a5 += v206;
  *a6 += v207;
  v213 = SnapTime::sizeObject(this + 1264, 0);
  v214 = SnapTime::sizeObject(this + 1264, 1);
  v215 = SnapTime::sizeObject(this + 1264, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1188, &v318);
  if (v319)
  {
    v220 = v318;
  }

  else
  {
    v220 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v216, v217, v218, v219, v21, &unk_26288E838, v41, v41, v220, v213, v214, v215);
  DgnString::~DgnString(&v318);
  *a4 += v213;
  *a5 += v214;
  *a6 += v215;
  v221 = SnapTime::sizeObject(this + 1296, 0);
  v222 = SnapTime::sizeObject(this + 1296, 1);
  v223 = SnapTime::sizeObject(this + 1296, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1190, &v318);
  if (v319)
  {
    v228 = v318;
  }

  else
  {
    v228 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v224, v225, v226, v227, v21, &unk_26288E838, v41, v41, v228, v221, v222, v223);
  DgnString::~DgnString(&v318);
  *a4 += v221;
  *a5 += v222;
  *a6 += v223;
  v229 = SnapTime::sizeObject(this + 1328, 0);
  v230 = SnapTime::sizeObject(this + 1328, 1);
  v231 = SnapTime::sizeObject(this + 1328, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1192, &v318);
  if (v319)
  {
    v236 = v318;
  }

  else
  {
    v236 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v232, v233, v234, v235, v21, &unk_26288E838, v41, v41, v236, v229, v230, v231);
  DgnString::~DgnString(&v318);
  *a4 += v229;
  *a5 += v230;
  *a6 += v231;
  v237 = SnapTime::sizeObject(this + 1360, 0);
  v238 = SnapTime::sizeObject(this + 1360, 1);
  v239 = SnapTime::sizeObject(this + 1360, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1194, &v318);
  if (v319)
  {
    v244 = v318;
  }

  else
  {
    v244 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v240, v241, v242, v243, v21, &unk_26288E838, v41, v41, v244, v237, v238, v239);
  DgnString::~DgnString(&v318);
  *a4 += v237;
  *a5 += v238;
  *a6 += v239;
  v245 = SnapTime::sizeObject(this + 1392, 0);
  v246 = SnapTime::sizeObject(this + 1392, 1);
  v247 = SnapTime::sizeObject(this + 1392, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1196, &v318);
  if (v319)
  {
    v252 = v318;
  }

  else
  {
    v252 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v248, v249, v250, v251, v21, &unk_26288E838, v41, v41, v252, v245, v246, v247);
  DgnString::~DgnString(&v318);
  *a4 += v245;
  *a5 += v246;
  *a6 += v247;
  v253 = SnapTime::sizeObject(this + 1424, 0);
  v254 = SnapTime::sizeObject(this + 1424, 1);
  v255 = SnapTime::sizeObject(this + 1424, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1198, &v318);
  if (v319)
  {
    v260 = v318;
  }

  else
  {
    v260 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v256, v257, v258, v259, v21, &unk_26288E838, v41, v41, v260, v253, v254, v255);
  DgnString::~DgnString(&v318);
  *a4 += v253;
  *a5 += v254;
  *a6 += v255;
  v261 = SnapTime::sizeObject(this + 1456, 0);
  v262 = SnapTime::sizeObject(this + 1456, 1);
  v263 = SnapTime::sizeObject(this + 1456, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1200, &v318);
  if (v319)
  {
    v268 = v318;
  }

  else
  {
    v268 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v264, v265, v266, v267, v21, &unk_26288E838, v41, v41, v268, v261, v262, v263);
  DgnString::~DgnString(&v318);
  *a4 += v261;
  *a5 += v262;
  *a6 += v263;
  v269 = SnapTime::sizeObject(this + 1488, 0);
  v270 = SnapTime::sizeObject(this + 1488, 1);
  v271 = SnapTime::sizeObject(this + 1488, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1202, &v318);
  if (v319)
  {
    v276 = v318;
  }

  else
  {
    v276 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v272, v273, v274, v275, v21, &unk_26288E838, v41, v41, v276, v269, v270, v271);
  DgnString::~DgnString(&v318);
  *a4 += v269;
  *a5 += v270;
  *a6 += v271;
  v277 = SnapTime::sizeObject(this + 1520, 0);
  v278 = SnapTime::sizeObject(this + 1520, 1);
  v279 = SnapTime::sizeObject(this + 1520, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1204, &v318);
  if (v319)
  {
    v284 = v318;
  }

  else
  {
    v284 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v280, v281, v282, v283, v21, &unk_26288E838, v41, v41, v284, v277, v278, v279);
  DgnString::~DgnString(&v318);
  *a4 += v277;
  *a5 += v278;
  *a6 += v279;
  v285 = SnapTime::sizeObject(this + 1552, 0);
  v286 = SnapTime::sizeObject(this + 1552, 1);
  v287 = SnapTime::sizeObject(this + 1552, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1206, &v318);
  if (v319)
  {
    v292 = v318;
  }

  else
  {
    v292 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v288, v289, v290, v291, v21, &unk_26288E838, v41, v41, v292, v285, v286, v287);
  DgnString::~DgnString(&v318);
  *a4 += v285;
  *a5 += v286;
  *a6 += v287;
  v293 = SnapTime::sizeObject(this + 1584, 0);
  v294 = SnapTime::sizeObject(this + 1584, 1);
  v295 = SnapTime::sizeObject(this + 1584, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1208, &v318);
  if (v319)
  {
    v300 = v318;
  }

  else
  {
    v300 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v296, v297, v298, v299, v21, &unk_26288E838, v41, v41, v300, v293, v294, v295);
  DgnString::~DgnString(&v318);
  *a4 += v293;
  *a5 += v294;
  *a6 += v295;
  v301 = SnapTime::sizeObject(this + 1616, 0);
  v302 = SnapTime::sizeObject(this + 1616, 1);
  v303 = SnapTime::sizeObject(this + 1616, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1210, &v318);
  if (v319)
  {
    v308 = v318;
  }

  else
  {
    v308 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v304, v305, v306, v307, v21, &unk_26288E838, v41, v41, v308, v301, v302, v303);
  DgnString::~DgnString(&v318);
  *a4 += v301;
  *a5 += v302;
  *a6 += v303;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 1211, &v318);
  if (v319)
  {
    v313 = v318;
  }

  else
  {
    v313 = &unk_26288E838;
  }

  v314 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v309, v310, v311, v312, v315, &unk_26288E838, (35 - v315), (35 - v315), v313, *a4, *a5, *a6);
  DgnString::~DgnString(&v318);
}

void sub_2627D37D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t RecogStats::initRecognitionPhaseTimes(uint64_t a1, int64x2_t *a2, int64x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int64x2_t *a10)
{
  v17 = *(a4 + 8);
  v89[0] = 0;
  v89[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v89, a4, 0, v17);
  v88[0] = 0;
  v88[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v88, a5, 0, *(a5 + 8));
  v87[0] = 0;
  v87[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v87, a6, 0, *(a6 + 8));
  v86[0] = 0;
  v86[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v86, a7, 0, *(a7 + 8));
  v85[0] = 0;
  v85[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v85, a8, 0, *(a8 + 8));
  v84[0] = 0;
  v84[1] = 0;
  DgnArray<SnapTime>::copyArraySlice(v84, a9, 0, *(a9 + 8));
  v18 = v89[0];
  v19 = (v17 - 1);
  if (v17 - 1 >= 0)
  {
    v20 = 0;
    v21 = v89[0] + 32 * v19;
    v22 = v84[0] + 32 * v19;
    v23 = v19 + 1;
    v24 = v85[0] + 32 * v19;
    v25 = v86[0] + 32 * v19;
    v26 = v87[0] + 32 * v19;
    v27 = v88[0] + 32 * v19;
    do
    {
      v28 = *(v22 + v20);
      if (!v28)
      {
        v29 = v22 + v20;
        if (*(v22 + v20 + 8) || *(v29 + 16) || *(v22 + v20 + 24))
        {
          v28 = 0;
        }

        else
        {
          if (v20)
          {
            v41 = (v21 + v20 + 56);
          }

          else
          {
            v41 = &a10[1].i64[1];
          }

          if (v20)
          {
            v42 = (v21 + v20 + 32);
          }

          else
          {
            v42 = a10;
          }

          if (v20)
          {
            v43 = (v21 + v20 + 40);
          }

          else
          {
            v43 = &a10->i64[1];
          }

          if (v20)
          {
            v44 = (v21 + v20 + 48);
          }

          else
          {
            v44 = a10 + 1;
          }

          v28 = *v42;
          v45 = v44->i64[0];
          v46 = *v43;
          v47 = *v41;
          *(v22 + v20) = v28;
          *(v29 + 8) = v46;
          *(v29 + 16) = v45;
          *(v22 + v20 + 24) = v47;
        }
      }

      v30 = *(v24 + v20);
      if (!v30)
      {
        v31 = v24 + v20;
        if (*(v24 + v20 + 8) || *(v31 + 16) || *(v24 + v20 + 24))
        {
          v30 = 0;
        }

        else
        {
          v48 = *(v22 + v20 + 24);
          *(v24 + v20) = v28;
          *(v31 + 8) = *(v22 + v20 + 8);
          *(v24 + v20 + 24) = v48;
          v30 = v28;
        }
      }

      v32 = *(v25 + v20);
      if (!v32)
      {
        v33 = v25 + v20;
        if (*(v25 + v20 + 8) || *(v33 + 16) || *(v25 + v20 + 24))
        {
          v32 = 0;
        }

        else
        {
          v49 = *(v24 + v20 + 24);
          *(v25 + v20) = v30;
          *(v33 + 8) = *(v24 + v20 + 8);
          *(v25 + v20 + 24) = v49;
          v32 = v30;
        }
      }

      v34 = *(v26 + v20);
      if (!v34)
      {
        v35 = v26 + v20;
        if (*(v26 + v20 + 8) || *(v35 + 16) || *(v26 + v20 + 24))
        {
          v34 = 0;
        }

        else
        {
          v50 = *(v25 + v20 + 24);
          *(v26 + v20) = v32;
          *(v35 + 8) = *(v25 + v20 + 8);
          *(v26 + v20 + 24) = v50;
          v34 = v32;
        }
      }

      v36 = *(v27 + v20);
      if (!v36)
      {
        v37 = v27 + v20;
        if (*(v27 + v20 + 8) || *(v37 + 16) || *(v27 + v20 + 24))
        {
          v36 = 0;
        }

        else
        {
          v51 = *(v26 + v20 + 24);
          *(v27 + v20) = v34;
          *(v37 + 8) = *(v26 + v20 + 8);
          *(v27 + v20 + 24) = v51;
          v36 = v34;
        }
      }

      if (!*(v21 + v20))
      {
        v38 = v21 + v20;
        if (!*(v21 + v20 + 8) && !*(v38 + 16) && !*(v21 + v20 + 24))
        {
          v39 = *(v27 + v20 + 24);
          *(v21 + v20) = v36;
          *(v38 + 8) = *(v27 + v20 + 8);
          *(v21 + v20 + 24) = v39;
        }
      }

      v20 -= 32;
    }

    while (v23-- > 1);
    v18 = v89[0];
  }

  if (a3->i64[0] | a3->i64[1] | a3[1].i64[0] | a3[1].i64[1])
  {
    v52 = a3;
  }

  else
  {
    v52 = v18;
  }

  v53 = vsubq_s64(a2[1], *(a1 + 1104));
  v54 = *v52;
  v55 = v52[1];
  *(a1 + 1328) = vsubq_s64(*a2, *(a1 + 1088));
  *(a1 + 1344) = v53;
  v56 = vsubq_s64(v55, a2[1]);
  *(a1 + 1360) = vsubq_s64(v54, *a2);
  *(a1 + 1376) = v56;
  v57 = vsubq_s64(v18[1], v55);
  *(a1 + 1392) = vsubq_s64(*v18, v54);
  *(a1 + 1408) = v57;
  v58 = 0uLL;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0u;
  if (v17)
  {
    v59 = 0;
    v60 = v88[0];
    v61 = v87[0];
    v62 = v86[0];
    v63 = 0uLL;
    v64 = v85[0];
    v65 = 0uLL;
    v66 = 0uLL;
    v67 = v84[0];
    do
    {
      v68 = (v60 + 32 * v59);
      v69 = &v18[2 * v59];
      v70 = vsubq_s64(v68[1], v69[1]);
      *(a1 + 1424) = vaddq_s64(vsubq_s64(*v68, *v69), *(a1 + 1424));
      *(a1 + 1440) = vaddq_s64(v70, *(a1 + 1440));
      v71 = (v61 + 32 * v59);
      v58 = vaddq_s64(vsubq_s64(*v71, *v68), v58);
      v72 = vsubq_s64(v71[1], v68[1]);
      *(a1 + 1456) = v58;
      v63 = vaddq_s64(v72, v63);
      *(a1 + 1472) = v63;
      v73 = (v62 + 32 * v59);
      v65 = vaddq_s64(vsubq_s64(*v73, *v71), v65);
      v74 = vsubq_s64(v73[1], v71[1]);
      *(a1 + 1488) = v65;
      v66 = vaddq_s64(v74, v66);
      *(a1 + 1504) = v66;
      v75 = (v64 + 32 * v59);
      v76 = vsubq_s64(v75[1], v73[1]);
      *(a1 + 1520) = vaddq_s64(vsubq_s64(*v75, *v73), *(a1 + 1520));
      *(a1 + 1536) = vaddq_s64(v76, *(a1 + 1536));
      v77 = (v67 + 32 * v59);
      v78 = vsubq_s64(v77[1], v75[1]);
      *(a1 + 1552) = vaddq_s64(vsubq_s64(*v77, *v75), *(a1 + 1552));
      *(a1 + 1568) = vaddq_s64(v78, *(a1 + 1568));
      if (v59 == v19)
      {
        v79 = vsubq_s64(a10[1], v77[1]);
        *(a1 + 1584) = vaddq_s64(vsubq_s64(*a10, *v77), *(a1 + 1584));
        *(a1 + 1600) = vaddq_s64(v79, *(a1 + 1600));
        ++v59;
      }

      else
      {
        ++v59;
        v80 = &v18[2 * v59];
        v81 = vsubq_s64(v80[1], v77[1]);
        *(a1 + 1584) = vaddq_s64(vsubq_s64(*v80, *v77), *(a1 + 1584));
        *(a1 + 1600) = vaddq_s64(v81, *(a1 + 1600));
      }
    }

    while (v59 != v17);
  }

  v82 = a10[1];
  *(a1 + 1616) = *a10;
  *(a1 + 1632) = v82;
  DgnIArray<Utterance *>::~DgnIArray(v84);
  DgnIArray<Utterance *>::~DgnIArray(v85);
  DgnIArray<Utterance *>::~DgnIArray(v86);
  DgnIArray<Utterance *>::~DgnIArray(v87);
  DgnIArray<Utterance *>::~DgnIArray(v88);
  return DgnIArray<Utterance *>::~DgnIArray(v89);
}

void sub_2627D3E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  va_copy(va4, va3);
  v13 = va_arg(va4, void);
  v15 = va_arg(va4, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnIArray<Utterance *>::~DgnIArray(va3);
  DgnIArray<Utterance *>::~DgnIArray(va4);
  _Unwind_Resume(a1);
}

void PrefiltererThreadInsurance::~PrefiltererThreadInsurance(PrefiltererThreadInsurance *this)
{
  v2 = *this;
  if (v2)
  {
    if ((**(this + 1) & 1) == 0)
    {
      v3 = **(this + 2);
      (*(*v2 + 136))(v2, 0);
      v4 = (*(**this + 96))();
      **(this + 2) = v4;
      if (v3 != v4)
      {
        v5 = *(this + 4);
        v13 = 0u;
        v14 = 0u;
        SnapTime::recordTime(&v13, 1, 0, 0, 0);
        v6 = v5[1];
        v7 = vsubq_s64(v13, *v5);
        *v5 = v13;
        v8 = vsubq_s64(v14, v6);
        v5[1] = v14;
        v9 = *(this + 5);
        v10 = vaddq_s64(*v9, v7);
        v11 = vaddq_s64(v9[1], v8);
        *v9 = v10;
        v9[1] = v11;
        if (*(*(this + 1) + 4) == -16)
        {
          v12 = *(this + 3);
          *v12 = v10;
          v12[1] = v11;
        }
      }
    }
  }
}

void ChannelThreadInsurance::~ChannelThreadInsurance(ChannelThreadInsurance *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*this)
  {
    v9 = *(this + 1);
    if ((*v9 & 1) == 0)
    {
      v10 = *(v9 + 16);
      ChannelMgr::maybeStopCollectingDataForUtt(ChannelMgr::smpChannelMgr, *this, a3, a4, a5, a6, a7, a8, v21);
      v11 = *(this + 3);
      v12 = v11[1];
      *v11 = vaddq_s64(*v11, v21[0]);
      v11[1] = vaddq_s64(v12, v21[1]);
      UttFeatureArraySynchronizedArray::update(*(this + 1), *this);
      v13 = *(*(this + 1) + 16);
      **(this + 2) = v13;
      if (v10 != v13)
      {
        v14 = *(this + 4);
        v22 = 0u;
        v23 = 0u;
        SnapTime::recordTime(&v22, 1, 0, 0, 0);
        v15 = v14[1];
        v16 = vsubq_s64(v22, *v14);
        *v14 = v22;
        v17 = vsubq_s64(v23, v15);
        v14[1] = v23;
        v18 = *(this + 5);
        v19 = vaddq_s64(v16, *v18);
        v20 = vaddq_s64(v17, v18[1]);
        *v18 = v19;
        v18[1] = v20;
      }
    }
  }
}

void LookaheadThreadInsurance::~LookaheadThreadInsurance(LookaheadThreadInsurance *this)
{
  v2 = *(this + 1);
  if (v2 && (**(this + 2) & 1) == 0)
  {
    v3 = **(this + 3);
    (*(*v2 + 56))(v2, 0);
    v4 = (*(**(this + 1) + 32))(*(this + 1));
    **(this + 3) = v4;
    if (v3 != v4)
    {
      v5 = *(this + 4);
      v12 = 0u;
      v13 = 0u;
      SnapTime::recordTime(&v12, 1, 0, 0, 0);
      v6 = v5[1];
      v7 = vsubq_s64(v12, *v5);
      *v5 = v12;
      v8 = vsubq_s64(v13, v6);
      v5[1] = v13;
      v9 = *(this + 5);
      v10 = vaddq_s64(v7, *v9);
      v11 = vaddq_s64(v8, v9[1]);
      *v9 = v10;
      v9[1] = v11;
    }
  }
}

void FrameTransformThreadInsurance::~FrameTransformThreadInsurance(FrameTransformThreadInsurance *this)
{
  v2 = *(this + 1);
  if (v2 && (**(this + 2) & 1) == 0)
  {
    v3 = **(this + 3);
    (*(*v2 + 104))(v2, 0);
    v4 = (*(**(this + 1) + 32))(*(this + 1));
    **(this + 3) = v4;
    if (v3 != v4)
    {
      v5 = *(this + 4);
      v12 = 0u;
      v13 = 0u;
      SnapTime::recordTime(&v12, 1, 0, 0, 0);
      v6 = v5[1];
      v7 = vsubq_s64(v12, *v5);
      *v5 = v12;
      v8 = vsubq_s64(v13, v6);
      v5[1] = v13;
      v9 = *(this + 5);
      v10 = vaddq_s64(v7, *v9);
      v11 = vaddq_s64(v8, v9[1]);
      *v9 = v10;
      v9[1] = v11;
    }
  }
}

void *ProcessPrefilterer::ProcessPrefilterer(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6, char a7, _BYTE *a8, _DWORD *a9, int64x2_t *a10, int64x2_t *a11, int64x2_t *a12)
{
  v12 = a5;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a8;
  *(a1 + 8) = a5;
  *(a1 + 9) = *a9;
  *(a1 + 40) = a6;
  *(a1 + 41) = a7;
  *(a1 + 44) = 0xFFFFFFF000000000;
  if (!a2 || *a8 == 1)
  {
    *(a1 + 9) = a5;
    return a1;
  }

  v17 = (*(*a2 + 120))(a2);
  v18 = v17;
  if (v17)
  {
    *(a1 + 11) = (*(**a1 + 136))(*a1, (a1[5] & 1) == 0, a1[3]);
  }

  if (*(a1 + 41) == 1)
  {
    if ((*a3 & 1) == 0 && (!a4 || *a4 != 1))
    {
      return a1;
    }

    v12 = *(a3 + 16);
  }

  if (*(a1 + 40) == 1 && !*(a1 + 11) && v12 >= ReturnListQueue::getNextFrameTime(a1[3]) && (*a1[3] & 1) == 0)
  {
    *(a1 + 11) = (*(**a1 + 112))(*a1, v12, a3, a4);
  }

  if (((*(**a1 + 120))() & 1) == 0)
  {
    v19 = (*(**a1 + 96))();
    *a9 = v19;
    if ((v18 & 1) != 0 || *(a1 + 9) < v19)
    {
      v25 = 0u;
      v26 = 0u;
      SnapTime::recordTime(&v25, 1, 0, 0, 0);
      v20 = v26;
      v21 = vsubq_s64(v25, *a11);
      v22 = vsubq_s64(v26, a11[1]);
      *a11 = v25;
      a11[1] = v20;
      v23 = vaddq_s64(v22, a12[1]);
      *a12 = vaddq_s64(v21, *a12);
      a12[1] = v23;
    }
  }

  *(a1 + 9) = *a9;
  if (*(a1[3] + 4) == -16)
  {
    v24 = a12[1];
    *a10 = *a12;
    a10[1] = v24;
  }

  return a1;
}

void ProcessPrefilterer::~ProcessPrefilterer(ProcessPrefilterer *this)
{
  if (*this)
  {
    if ((*(this + 41) & 1) == 0)
    {
      v2 = *(this + 3);
      if ((*v2 & 1) == 0 && (*(this + 40) != 1 || ReturnListQueue::getNextFrameTime(v2) > *(this + 8)))
      {
        v3 = *(this + 11);
        if (v3 < 2)
        {
          goto LABEL_12;
        }

        if (v3 == 2)
        {
          v4 = *(this + 1);
        }

        else
        {
          if (v3 != 3)
          {
            return;
          }

          v4 = *(this + 2);
        }

        if (*(v4 + 16) > *(this + 9))
        {
LABEL_12:
          (*(**this + 128))(*this, *(this + 1), *(this + 2));
        }
      }
    }
  }
}

_DWORD *ProcessLookahead::ProcessLookahead(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, _BYTE *a8, _DWORD *a9, int64x2_t *a10, int64x2_t *a11)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  a1[4] = a4;
  a1[5] = *a9;
  *(a1 + 24) = a5;
  *(a1 + 25) = a7;
  *(a1 + 4) = a8;
  if (a2 && *a8 != 1)
  {
    (*(*a2 + 56))(a2, (a5 | a7 | a6) ^ 1u, a8);
    if (*(a1 + 25) == 1)
    {
      if (*a3 != 1)
      {
        return a1;
      }

      a1[4] = *(a3 + 16);
      if (**(a1 + 4) != 1)
      {
        goto LABEL_11;
      }
    }

    if (a6 && *(a1 + 24) == 1 && *(*(a1 + 4) + 16) <= a1[4])
    {
LABEL_11:
      (*(**a1 + 40))();
    }

    v15 = (*(**a1 + 32))();
    a1[5] = v15;
    if (*a9 != v15)
    {
      v20 = 0u;
      v21 = 0u;
      SnapTime::recordTime(&v20, 1, 0, 0, 0);
      v16 = v21;
      v17 = vsubq_s64(v20, *a10);
      v18 = vsubq_s64(v21, a10[1]);
      *a10 = v20;
      a10[1] = v16;
      v19 = vaddq_s64(v18, a11[1]);
      *a11 = vaddq_s64(v17, *a11);
      a11[1] = v19;
      *a9 = a1[5];
    }
  }

  else
  {
    a1[5] = a4;
  }

  return a1;
}

void ProcessLookahead::~ProcessLookahead(ProcessLookahead *this)
{
  v2 = *this;
  if (v2)
  {
    if ((*(this + 25) & 1) == 0)
    {
      v3 = *(this + 4);
      if ((*v3 & 1) == 0 && (*(this + 24) != 1 || *(v3 + 16) > *(this + 4)) && *(*(this + 1) + 16) > *(this + 5))
      {
        (*(*v2 + 48))(v2);
      }
    }
  }
}

_DWORD *ProcessFrameTransform::ProcessFrameTransform(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, char a8, uint64_t a9, _DWORD *a10, int64x2_t *a11, int64x2_t *a12)
{
  *a1 = a3;
  *(a1 + 1) = a4;
  a1[4] = a5;
  a1[5] = -16;
  a1[6] = *a10;
  *(a1 + 28) = a6;
  *(a1 + 29) = a8;
  *(a1 + 4) = a9;
  if (!a3)
  {
    a1[5] = a5;
LABEL_8:
    a1[6] = a5;
    return a1;
  }

  LODWORD(a5) = (*(*a3 + 40))(a3, a5);
  v14 = *a1;
  a1[5] = a5;
  if (!v14 || **(a1 + 4) == 1)
  {
    goto LABEL_8;
  }

  if (a7 & 1) != 0 || (a1[7])
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a1 + 29) ^ 1;
  }

  (*(*v14 + 104))(v14, v15 & 1);
  if (*(a1 + 29) == 1)
  {
    v17 = *(a1 + 1);
    if (*v17 != 1)
    {
      return a1;
    }

    v18 = *(v17 + 16);
    a1[5] = v18;
    if (**(a1 + 4) != 1)
    {
      goto LABEL_17;
    }
  }

  if (a7 && *(*(a1 + 4) + 16) <= a1[4])
  {
    v18 = a1[5];
    v17 = *(a1 + 1);
LABEL_17:
    (*(**a1 + 80))(*a1, v18, v17);
  }

  v19 = (*(**a1 + 32))();
  a1[6] = v19;
  if (*a10 != v19)
  {
    v24 = 0u;
    v25 = 0u;
    SnapTime::recordTime(&v24, 1, 0, 0, 0);
    v20 = v25;
    v21 = vsubq_s64(v24, *a11);
    v22 = vsubq_s64(v25, a11[1]);
    *a11 = v24;
    a11[1] = v20;
    v23 = vaddq_s64(v22, a12[1]);
    *a12 = vaddq_s64(v21, *a12);
    a12[1] = v23;
    *a10 = a1[6];
  }

  return a1;
}

void ProcessFrameTransform::~ProcessFrameTransform(ProcessFrameTransform *this)
{
  v2 = *this;
  if (v2)
  {
    if ((*(this + 29) & 1) == 0)
    {
      v3 = *(this + 4);
      if ((*v3 & 1) == 0 && (*(this + 28) != 1 || *(v3 + 16) > *(this + 4)) && *(*(this + 1) + 16) > *(this + 6))
      {
        (*(*v2 + 96))(v2);
      }
    }
  }
}

void ProcessChannel::ProcessChannel(ProcessChannel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Utterance *a6, UttFeatureArraySynchronizedArray *a7, int *a8, int64x2_t *a9, int64x2_t *a10, int64x2_t *a11)
{
  *this = a6;
  *(this + 1) = a7;
  if (a6)
  {
    v12 = a5;
    v13 = a4;
    if ((a3 | a4 | a5) == 1 && (*a7 & 1) == 0)
    {
      v16 = ChannelMgr::smpChannelMgr;
      ChannelMgr::maybeStopCollectingDataForUtt(ChannelMgr::smpChannelMgr, a6, a3, a4, a5, a6, a7, a8, &v44);
      if (v13)
      {
        ChannelMgr::collectThroughUttFrame(v16, *this, a2, v18, v19, v20, v21, v22, &v46);
        v44 = vaddq_s64(v44, v46);
        v45 = vaddq_s64(v45, v47);
      }

      v23 = *this;
      if (v12 && *(v23 + 416) == 1)
      {
        v24 = 0uLL;
        v25 = 0uLL;
        while ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v24), vceqzq_s64(v25))))) & 1) != 0)
        {
          v40 = v24;
          v42 = v25;
          ClockTimer::useFreeTime(&v46);
          v41 = vaddq_s64(v46, v40);
          v43 = vaddq_s64(v47, v42);
          ChannelMgr::collectAvailableDataForUtt(v16, *this, v26, v27, v28, v29, v30, v31);
          v24 = v41;
          if (!v41.i64[0])
          {
            if (!v41.i64[1])
            {
              v25 = v43;
              if (v43.i64[0])
              {
                v24 = 0uLL;
                goto LABEL_16;
              }

              if (v43.i64[1])
              {
                v24 = 0uLL;
                v32.i64[0] = 0;
                v32.i64[1] = v43.i64[1];
                v25 = v32;
                goto LABEL_16;
              }

              goto LABEL_15;
            }

            v24.i64[0] = 0;
          }

          v25 = v43;
LABEL_16:
          v23 = *this;
          if ((*(*this + 416) & 1) == 0)
          {
            v44 = vaddq_s64(v44, v24);
            v45 = vaddq_s64(v45, v25);
            goto LABEL_22;
          }
        }

        ChannelMgr::collectAvailableDataForUtt(v16, v23, v17, v18, v19, v20, v21, v22);
LABEL_15:
        ClockTimer::useFreeTime(&v46);
        v24 = v46;
        v25 = v47;
        goto LABEL_16;
      }

LABEL_22:
      UttFeatureArraySynchronizedArray::update(*(this + 1), v23);
      v33 = *(this + 1);
      v34 = *(v33 + 16);
      if (*v33 == 1)
      {
        *(v33 + 4) = v34;
      }

      v46 = 0u;
      v47 = 0u;
      SnapTime::recordTime(&v46, 1, 0, 0, 0);
      v35 = v47;
      v36 = vsubq_s64(v46, *a10);
      v37 = vsubq_s64(v47, a10[1]);
      *a10 = v46;
      a10[1] = v35;
      v38 = vaddq_s64(v37, a11[1]);
      *a11 = vaddq_s64(v36, *a11);
      a11[1] = v38;
      v39 = vaddq_s64(a9[1], v45);
      *a9 = vaddq_s64(*a9, v44);
      a9[1] = v39;
      *a8 = v34;
    }
  }
}

void ProcessChannel::~ProcessChannel(Utterance **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*this)
  {
    if ((*this[1] & 1) == 0)
    {
      ChannelMgr::maybeStartCollectingDataForUtt(ChannelMgr::smpChannelMgr, *this, a3, a4, a5, a6, a7, a8);
    }
  }
}

void RecogController::RecogController(RecogController *this, const RecogSpec *a2, int a3, PrefiltererSearchParamSet *a4, SearchCrossLayerParamSet *a5)
{
  *this = &unk_2875278E0;
  RecogSpec::RecogSpec((this + 8), a2);
  *(this + 136) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 72) = 0u;
  v9 = (this + 72);
  *(this + 88) = 0u;
  v10 = (this + 88);
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *&v11 = 0xF0000000FLL;
  *(&v11 + 1) = 0xF0000000FLL;
  *(this + 292) = v11;
  *(this + 77) = -16;
  *(this + 39) = 0xF0000000FLL;
  *(this + 98) = 0;
  *(this + 25) = 0u;
  *(this + 552) = 0u;
  *(this + 340) = 0;
  *(this + 332) = 0;
  *(this + 89) = 0;
  *(this + 348) = 0;
  *(this + 54) = 0u;
  *(this + 53) = 0u;
  *(this + 52) = 0u;
  *(this + 51) = 0u;
  *(this + 50) = 0u;
  *(this + 49) = 0u;
  *(this + 48) = 0u;
  *(this + 47) = 0u;
  *(this + 46) = 0u;
  *(this + 45) = 0u;
  *(this + 44) = 0u;
  *(this + 43) = 0u;
  *(this + 42) = 0u;
  *(this + 41) = 0u;
  *(this + 40) = 0u;
  *(this + 39) = 0u;
  *(this + 38) = 0u;
  *(this + 37) = 0u;
  *(this + 36) = 0u;
  *(this + 114) = a4;
  *(this + 115) = a5;
  *(this + 232) = -1;
  Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::Hash(this + 936, 0, 16);
  *(this + 224) = 0;
  *(this + 38) = 0;
  *(this + 156) = 0;
  *(this + 144) = 0;
  *(this + 290) = 0;
  *(this + 104) = 0;
  *(this + 48) = 0;
  *(this + 137) = 0;
  *(this + 568) = 0;
  *(this + 111) = 0;
  *(this + 113) = 0;
  *(this + 40) = 0;
  *(this + 82) = 0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 529) = 0u;
  v12 = *(a2 + 4);
  v13 = *(this + 114);
  if (v13)
  {
    ++*(v13 + 36);
  }

  v14 = *(this + 115);
  if (v14)
  {
    ++*(v14 + 36);
  }

  *(this + 448) = 0;
  if (*(this + 71) < v12)
  {
    v45 = 0;
    *(this + 71) = realloc_array(*(this + 34), &v45, v12, *(this + 70), *(this + 70), 1);
    *(this + 34) = v45;
    *(this + 70) = v12;
LABEL_8:
    bzero(*(this + 34), v12);
    v15 = 0;
    goto LABEL_9;
  }

  *(this + 70) = v12;
  if (v12)
  {
    goto LABEL_8;
  }

  v15 = 1;
LABEL_9:
  *(this + 898) = 0;
  v16 = *(this + 21);
  if (v12 > v16)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 72, v12 - v16, 0);
  }

  v17 = *(this + 20);
  if (v17 <= v12)
  {
    if (v17 < v12)
    {
      v20 = v12 - v17;
      v21 = 16 * v17;
      do
      {
        v22 = (*v9 + v21);
        *v22 = 0;
        v22[1] = 0;
        v21 += 16;
        --v20;
      }

      while (v20);
    }
  }

  else if (v17 > v12)
  {
    v18 = v17;
    v19 = 16 * v17 - 16;
    do
    {
      --v18;
      DgnIArray<Utterance *>::~DgnIArray(*v9 + v19);
      v19 -= 16;
    }

    while (v18 > v12);
  }

  *(this + 20) = v12;
  v23 = *(this + 25);
  if (v12 > v23)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 88, v12 - v23, 0);
  }

  v24 = *(this + 24);
  if (v24 <= v12)
  {
    if (v24 < v12)
    {
      v27 = v12 - v24;
      v28 = 16 * v24;
      do
      {
        v29 = (*v10 + v28);
        *v29 = 0;
        v29[1] = 0;
        v28 += 16;
        --v27;
      }

      while (v27);
    }
  }

  else if (v24 > v12)
  {
    v25 = v24;
    v26 = 16 * v24 - 16;
    do
    {
      --v25;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*v10 + v26);
      v26 -= 16;
    }

    while (v25 > v12);
  }

  *(this + 24) = v12;
  if ((v15 & 1) == 0)
  {
    v30 = 0;
    v31 = v12;
    do
    {
      v32 = *v9 + v30;
      v33 = *(v32 + 12);
      if (v33 <= 0x63)
      {
        DgnArray<RecogResultToken>::reallocElts(v32, 100 - v33, 0);
      }

      v34 = *v10 + v30;
      v35 = *(v34 + 12);
      if (v35 <= 0x63)
      {
        DgnPrimArray<unsigned int>::reallocElts(v34, 100 - v35, 0);
      }

      v30 += 16;
      --v31;
    }

    while (v31);
  }

  v36 = *(this + 29);
  if (v12 > v36)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 104, v12 - v36, 0);
  }

  *(this + 28) = v12;
  v37 = *(this + 33);
  if (v37 <= 0x63)
  {
    DgnArray<WordLatticeLC>::reallocElts(this + 120, 100 - v37, 0);
  }

  v38 = *(this + 37);
  if (v38 <= 0x63)
  {
    DgnArray<PrefilterResultFrame>::reallocElts(this + 136, 100 - v38, 0);
  }

  if (a3)
  {
    v39 = MemChunkAlloc(0x670uLL, 0);
    RecogStats::RecogStats(v39);
    *(this + 113) = v39;
    v40 = *(v39 + 3);
    if (v12 > v40)
    {
      DgnArray<RecogLayerStats>::reallocElts(v39, v12 - v40, 0);
    }

    v41 = *(v39 + 2);
    if (v41 <= v12)
    {
      if (v41 < v12)
      {
        v42 = v12 - v41;
        v43 = 2368 * v41;
        do
        {
          RecogLayerStats::RecogLayerStats((*v39 + v43));
          v43 += 2368;
          --v42;
        }

        while (v42);
      }
    }

    else
    {
      DgnArray<RecogLayerStats>::destructAt(v39, v12, v41 - v12);
    }

    *(v39 + 2) = v12;
  }

  *(this + 880) = 0;
}

void sub_2627D5218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::~Hash(v19 + 800);
  DgnIArray<Utterance *>::~DgnIArray(a12);
  DgnIArray<Utterance *>::~DgnIArray(a13);
  DgnIArray<Utterance *>::~DgnIArray(a14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19 + 416);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19 + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19 + 136);
  DgnIArray<Utterance *>::~DgnIArray(v19);
  DgnArray<WordLatticeLC>::releaseAll(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a16);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v18);
  DgnArray<DgnArray<ParseToken>>::releaseAll(v17);
  DgnIOwnArray<FstCore *>::releaseAll(a11);
  DgnIOwnArray<Recognizer *>::releaseAll(a10);
  DgnIOwnArray<RecogSpecLayer *>::releaseAll(v16 + 16);
  _Unwind_Resume(a1);
}

void RecogController::~RecogController(RecogController *this)
{
  *this = &unk_2875278E0;
  v2 = *(this + 114);
  if (v2)
  {
    --*(v2 + 36);
    *(this + 114) = 0;
  }

  v3 = *(this + 115);
  if (v3)
  {
    --*(v3 + 36);
    *(this + 115) = 0;
  }

  if (*(this + 10))
  {
    v4 = 0;
    do
    {
      DgnDelete<Recognizer>(*(*(this + 4) + 8 * v4));
      *(*(this + 4) + 8 * v4) = 0;
      DgnDelete<FstCore>(*(*(this + 6) + 8 * v4));
      *(*(this + 6) + 8 * v4++) = 0;
    }

    while (v4 < *(this + 10));
  }

  DgnDelete<PelScorer>(*(this + 31));
  *(this + 31) = 0;
  DgnDelete<PelScoreCacheData>(*(this + 32));
  *(this + 32) = 0;
  DgnDelete<PelScoreCacheData>(*(this + 33));
  *(this + 33) = 0;
  DgnDelete<ReproMgr>(*(this + 111));
  *(this + 111) = 0;
  DgnDelete<RecogStats>(*(this + 113));
  *(this + 113) = 0;
  DgnDelete<ReturnListQueue>(*(this + 65));
  *(this + 65) = 0;
  DgnDelete<PrefilterResult>(*(this + 66));
  *(this + 66) = 0;
  DgnDelete<PrefilterResult>(*(this + 67));
  *(this + 67) = 0;
  Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::~Hash(this + 936);
  DgnIArray<Utterance *>::~DgnIArray(this + 864);
  DgnIArray<Utterance *>::~DgnIArray(this + 816);
  DgnIArray<Utterance *>::~DgnIArray(this + 576);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 552);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 400);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 136);
  DgnArray<WordLatticeLC>::releaseAll(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 88);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 72);
  DgnIOwnArray<FstCore *>::releaseAll(this + 48);
  DgnIOwnArray<Recognizer *>::releaseAll(this + 32);
  DgnIOwnArray<RecogSpecLayer *>::releaseAll(this + 16);
}

{
  RecogController::~RecogController(this);

  JUMPOUT(0x26672B1B0);
}

ReproMgr *DgnDelete<ReproMgr>(ReproMgr *result)
{
  if (result)
  {
    ReproMgr::~ReproMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnDelete<RecogStats>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnArray<RecogLayerStats>::releaseAll(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

ReturnListQueue *DgnDelete<ReturnListQueue>(ReturnListQueue *result)
{
  if (result)
  {
    ReturnListQueue::~ReturnListQueue(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void RecogController::printSize(RecogController *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3050, v616);
  if (LODWORD(v616[1]))
  {
    v16 = v616[0];
  }

  else
  {
    v16 = &unk_26288E838;
  }

  v613 = a3;
  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288E838, a3, &unk_26288E838, v16);
  v612 = a6;
  DgnString::~DgnString(v616);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288E838);
  v21 = sizeObject<RecogSpecLayer *>(this + 16, 0) + 6;
  v22 = sizeObject<RecogSpecLayer *>(this + 16, 1) + 6;
  v23 = (a3 + 1);
  v24 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3051, v616);
  if (LODWORD(v616[1]))
  {
    v29 = v616[0];
  }

  else
  {
    v29 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, v23, &unk_26288E838, v24, v24, v29, v21, v22, 0);
  DgnString::~DgnString(v616);
  *a4 += v21;
  *a5 += v22;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3052, v616);
  if (LODWORD(v616[1]))
  {
    v34 = v616[0];
  }

  else
  {
    v34 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v30, v31, v32, v33, v23, &unk_26288E838, v23, &unk_26288E838, v34);
  DgnString::~DgnString(v616);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v35, v36, v37, v38, v23, &unk_26288E838);
  v39 = *(this + 10);
  if (v39)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = *(this + 4);
      if (*(v44 + 8 * v40))
      {
        v615 = 0;
        v616[0] = 0;
        v614 = 0;
        Recognizer::printSize(*(v44 + 8 * v40), v40, (v613 + 2), v616, &v615, &v614);
        v41 += v616[0];
        v42 += v615;
        v43 += v614;
        v39 = *(this + 10);
      }

      ++v40;
    }

    while (v40 < v39);
  }

  else
  {
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v39 = 0;
  }

  v45 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 12;
  }

  v46 = v45 + v41;
  v47 = v45 + v42;
  v48 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v48 = 3;
  }

  v49 = v46 + (*(this + 11) << v48);
  v50 = v47 + (v39 << v48);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3052, v616);
  if (LODWORD(v616[1]))
  {
    v55 = v616[0];
  }

  else
  {
    v55 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v52, v53, v54, v23, &unk_26288E838, v24, v24, v55, v49, v50, v43);
  DgnString::~DgnString(v616);
  *a4 += v49;
  *a5 += v50;
  *v612 += v43;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3053, v616);
  if (LODWORD(v616[1]))
  {
    v60 = v616[0];
  }

  else
  {
    v60 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v56, v57, v58, v59, v23, &unk_26288E838, v23, &unk_26288E838, v60);
  DgnString::~DgnString(v616);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v61, v62, v63, v64, v23, &unk_26288E838);
  v65 = *(this + 14);
  if (v65)
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    do
    {
      v70 = *(this + 6);
      if (*(v70 + 8 * v66))
      {
        v615 = 0;
        v616[0] = 0;
        v614 = 0;
        FstCore::printSize(*(v70 + 8 * v66), v66, (v613 + 2), v616, &v615, &v614);
        v67 += v616[0];
        v68 += v615;
        v69 += v614;
        v65 = *(this + 14);
      }

      ++v66;
    }

    while (v66 < v65);
  }

  else
  {
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v65 = 0;
  }

  v71 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v71 = 12;
  }

  v72 = v71 + v67;
  v73 = v71 + v68;
  v74 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v74 = 3;
  }

  v75 = v72 + (*(this + 15) << v74);
  v76 = v73 + (v65 << v74);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3053, v616);
  if (LODWORD(v616[1]))
  {
    v81 = v616[0];
  }

  else
  {
    v81 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v78, v79, v80, v23, &unk_26288E838, v24, v24, v81, v75, v76, v69);
  DgnString::~DgnString(v616);
  *a4 += v75;
  *a5 += v76;
  *v612 += v69;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3055, v616);
  if (LODWORD(v616[1]))
  {
    v86 = v616[0];
  }

  else
  {
    v86 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v83, v84, v85, v23, &unk_26288E838, v24, v24, v86, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  v87 = sizeObject<DgnArray<RecogResultToken>>(this + 72, 0);
  v88 = sizeObject<DgnArray<RecogResultToken>>(this + 72, 1);
  v89 = sizeObject<DgnArray<RecogResultToken>>(this + 72, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3057, v616);
  if (LODWORD(v616[1]))
  {
    v94 = v616[0];
  }

  else
  {
    v94 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v91, v92, v93, v23, &unk_26288E838, v24, v24, v94, v87, v88, v89);
  DgnString::~DgnString(v616);
  *a4 += v87;
  *a5 += v88;
  *v612 += v89;
  v95 = sizeObject<DgnPrimArray<unsigned int>>(this + 88, 0);
  v96 = sizeObject<DgnPrimArray<unsigned int>>(this + 88, 1);
  v616[0] = 0;
  v616[1] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v616);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3059, v616);
  if (LODWORD(v616[1]))
  {
    v101 = v616[0];
  }

  else
  {
    v101 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v98, v99, v100, v23, &unk_26288E838, v24, v24, v101, v95, v96, 0);
  DgnString::~DgnString(v616);
  *a4 += v95;
  *a5 += v96;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v102 = 12;
  }

  else
  {
    v102 = 16;
  }

  v103 = *(this + 28);
  v104 = *(this + 29);
  if (v104 >= v103)
  {
    v105 = 0;
    if (v103 > 0)
    {
      v102 += 4 * (v103 - 1) + 4;
    }

    v106 = v102 + 4 * (v104 - v103);
  }

  else
  {
    v105 = 4 * v103;
    v106 = v102;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3061, v616);
  if (LODWORD(v616[1]))
  {
    v111 = v616[0];
  }

  else
  {
    v111 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v108, v109, v110, v23, &unk_26288E838, v24, v24, v111, v106, v102, v105);
  DgnString::~DgnString(v616);
  *a4 += v106;
  *a5 += v102;
  *v612 += v105;
  v112 = sizeObject<WordLatticeLC>(this + 120, 0);
  v113 = sizeObject<WordLatticeLC>(this + 120, 1);
  v114 = sizeObject<WordLatticeLC>(this + 120, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3063, v616);
  if (LODWORD(v616[1]))
  {
    v119 = v616[0];
  }

  else
  {
    v119 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v116, v117, v118, v23, &unk_26288E838, v24, v24, v119, v112, v113, v114);
  DgnString::~DgnString(v616);
  *a4 += v112;
  *a5 += v113;
  *v612 += v114;
  v120 = sizeObject<HistContents>(this + 136, 0);
  v121 = sizeObject<HistContents>(this + 136, 1);
  v616[0] = 0x3FFFFAFFFFFFLL;
  *&v616[1] = xmmword_26286CC40;
  v616[3] = 0x1F0000001FLL;
  sizeObject(v616, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3065, v616);
  if (LODWORD(v616[1]))
  {
    v126 = v616[0];
  }

  else
  {
    v126 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v122, v123, v124, v125, v23, &unk_26288E838, v24, v24, v126, v120, v121, 0);
  DgnString::~DgnString(v616);
  *a4 += v120;
  *a5 += v121;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3067, v616);
  if (LODWORD(v616[1]))
  {
    v131 = v616[0];
  }

  else
  {
    v131 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v128, v129, v130, v23, &unk_26288E838, v24, v24, v131, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3069, v616);
  if (LODWORD(v616[1]))
  {
    v136 = v616[0];
  }

  else
  {
    v136 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v132, v133, v134, v135, v23, &unk_26288E838, v24, v24, v136, 1, 1, 0);
  DgnString::~DgnString(v616);
  ++*a4;
  ++*a5;
  v137 = SnapTime::sizeObject(this + 160, 0);
  v138 = SnapTime::sizeObject(this + 160, 1);
  v139 = SnapTime::sizeObject(this + 160, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3071, v616);
  if (LODWORD(v616[1]))
  {
    v144 = v616[0];
  }

  else
  {
    v144 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v140, v141, v142, v143, v23, &unk_26288E838, v24, v24, v144, v137, v138, v139);
  DgnString::~DgnString(v616);
  *a4 += v137;
  *a5 += v138;
  *v612 += v139;
  v145 = SnapTime::sizeObject(this + 192, 0);
  v146 = SnapTime::sizeObject(this + 192, 1);
  v147 = SnapTime::sizeObject(this + 192, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3073, v616);
  if (LODWORD(v616[1]))
  {
    v152 = v616[0];
  }

  else
  {
    v152 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v148, v149, v150, v151, v23, &unk_26288E838, v24, v24, v152, v145, v146, v147);
  DgnString::~DgnString(v616);
  *a4 += v145;
  *a5 += v146;
  *v612 += v147;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3075, v616);
  if (LODWORD(v616[1]))
  {
    v157 = v616[0];
  }

  else
  {
    v157 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v153, v154, v155, v156, v23, &unk_26288E838, v24, v24, v157, 1, 1, 0);
  DgnString::~DgnString(v616);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v158 = 4;
  }

  else
  {
    v158 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3076, v616);
  if (LODWORD(v616[1]))
  {
    v163 = v616[0];
  }

  else
  {
    v163 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v159, v160, v161, v162, v23, &unk_26288E838, v24, v24, v163, v158, v158, 0);
  DgnString::~DgnString(v616);
  *a4 += v158;
  *a5 += v158;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v164 = 4;
  }

  else
  {
    v164 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3077, v616);
  if (LODWORD(v616[1]))
  {
    v169 = v616[0];
  }

  else
  {
    v169 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v165, v166, v167, v168, v23, &unk_26288E838, v24, v24, v169, v164, v164, 0);
  DgnString::~DgnString(v616);
  *a4 += v164;
  *a5 += v164;
  v170 = *(this + 31);
  if (v170)
  {
    v615 = 0;
    v616[0] = 0;
    v614 = 0;
    (*(*v170 + 32))(v170, 0xFFFFFFFFLL, v23, v616, &v615, &v614);
    *a4 += v616[0];
    *a5 += v615;
    *v612 += v614;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v171 = 4;
  }

  else
  {
    v171 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3079, v616);
  if (LODWORD(v616[1]))
  {
    v176 = v616[0];
  }

  else
  {
    v176 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v172, v173, v174, v175, v23, &unk_26288E838, v24, v24, v176, v171, v171, 0);
  DgnString::~DgnString(v616);
  *a4 += v171;
  *a5 += v171;
  v177 = *(this + 32);
  if (v177)
  {
    v615 = 0;
    v616[0] = 0;
    v614 = 0;
    PelScoreCacheData::printSize(v177, 0xFFFFFFFFLL, v23, v616, &v615, &v614);
    *a4 += v616[0];
    *a5 += v615;
    *v612 += v614;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v178 = 4;
  }

  else
  {
    v178 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3081, v616);
  if (LODWORD(v616[1]))
  {
    v183 = v616[0];
  }

  else
  {
    v183 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v179, v180, v181, v182, v23, &unk_26288E838, v24, v24, v183, v178, v178, 0);
  DgnString::~DgnString(v616);
  *a4 += v178;
  *a5 += v178;
  v184 = *(this + 33);
  if (v184)
  {
    v615 = 0;
    v616[0] = 0;
    v614 = 0;
    PelScoreCacheData::printSize(v184, 0xFFFFFFFFLL, v23, v616, &v615, &v614);
    *a4 += v616[0];
    *a5 += v615;
    *v612 += v614;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v185 = 4;
  }

  else
  {
    v185 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3083, v616);
  if (LODWORD(v616[1]))
  {
    v190 = v616[0];
  }

  else
  {
    v190 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v186, v187, v188, v189, v23, &unk_26288E838, v24, v24, v190, v185, v185, 0);
  DgnString::~DgnString(v616);
  *a4 += v185;
  *a5 += v185;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v191 = 12;
  }

  else
  {
    v191 = 16;
  }

  v192 = *(this + 70);
  v193 = *(this + 71);
  v194 = v193 >= v192;
  v195 = v193 - v192;
  if (v194)
  {
    if (v192 > 0)
    {
      v196 = (v192 - 1) + v191 + 1;
    }

    else
    {
      v196 = v191;
    }

    v191 = v196 + v195;
    v192 = 0;
  }

  else
  {
    v196 = v191;
  }

  v197 = v192;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3085, v616);
  if (LODWORD(v616[1]))
  {
    v202 = v616[0];
  }

  else
  {
    v202 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v198, v199, v200, v201, v23, &unk_26288E838, v24, v24, v202, v191, v196, v197);
  DgnString::~DgnString(v616);
  *a4 += v191;
  *a5 += v196;
  *v612 += v197;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3087, v616);
  if (LODWORD(v616[1]))
  {
    v207 = v616[0];
  }

  else
  {
    v207 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v203, v204, v205, v206, v23, &unk_26288E838, v24, v24, v207, 1, 1, 0);
  DgnString::~DgnString(v616);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3089, v616);
  if (LODWORD(v616[1]))
  {
    v212 = v616[0];
  }

  else
  {
    v212 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v208, v209, v210, v211, v23, &unk_26288E838, v24, v24, v212, 1, 1, 0);
  DgnString::~DgnString(v616);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3091, v616);
  if (LODWORD(v616[1]))
  {
    v217 = v616[0];
  }

  else
  {
    v217 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v213, v214, v215, v216, v23, &unk_26288E838, v24, v24, v217, 1, 1, 0);
  DgnString::~DgnString(v616);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3093, v616);
  if (LODWORD(v616[1]))
  {
    v222 = v616[0];
  }

  else
  {
    v222 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v218, v219, v220, v221, v23, &unk_26288E838, v24, v24, v222, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3095, v616);
  if (LODWORD(v616[1]))
  {
    v227 = v616[0];
  }

  else
  {
    v227 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v223, v224, v225, v226, v23, &unk_26288E838, v24, v24, v227, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3097, v616);
  if (LODWORD(v616[1]))
  {
    v232 = v616[0];
  }

  else
  {
    v232 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v228, v229, v230, v231, v23, &unk_26288E838, v24, v24, v232, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3099, v616);
  if (LODWORD(v616[1]))
  {
    v237 = v616[0];
  }

  else
  {
    v237 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v233, v234, v235, v236, v23, &unk_26288E838, v24, v24, v237, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3101, v616);
  if (LODWORD(v616[1]))
  {
    v242 = v616[0];
  }

  else
  {
    v242 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v238, v239, v240, v241, v23, &unk_26288E838, v24, v24, v242, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3103, v616);
  if (LODWORD(v616[1]))
  {
    v247 = v616[0];
  }

  else
  {
    v247 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v243, v244, v245, v246, v23, &unk_26288E838, v24, v24, v247, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3105, v616);
  if (LODWORD(v616[1]))
  {
    v252 = v616[0];
  }

  else
  {
    v252 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v248, v249, v250, v251, v23, &unk_26288E838, v24, v24, v252, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3107, v616);
  if (LODWORD(v616[1]))
  {
    v257 = v616[0];
  }

  else
  {
    v257 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v253, v254, v255, v256, v23, &unk_26288E838, v24, v24, v257, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3109, v616);
  if (LODWORD(v616[1]))
  {
    v262 = v616[0];
  }

  else
  {
    v262 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v258, v259, v260, v261, v23, &unk_26288E838, v24, v24, v262, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3111, v616);
  if (LODWORD(v616[1]))
  {
    v267 = v616[0];
  }

  else
  {
    v267 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v263, v264, v265, v266, v23, &unk_26288E838, v24, v24, v267, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3113, v616);
  if (LODWORD(v616[1]))
  {
    v272 = v616[0];
  }

  else
  {
    v272 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v268, v269, v270, v271, v23, &unk_26288E838, v24, v24, v272, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3115, v616);
  if (LODWORD(v616[1]))
  {
    v277 = v616[0];
  }

  else
  {
    v277 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v273, v274, v275, v276, v23, &unk_26288E838, v24, v24, v277, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3117, v616);
  if (LODWORD(v616[1]))
  {
    v282 = v616[0];
  }

  else
  {
    v282 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v278, v279, v280, v281, v23, &unk_26288E838, v24, v24, v282, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v283 = 12;
  }

  else
  {
    v283 = 16;
  }

  v284 = *(this + 88);
  v285 = *(this + 89);
  if (v285 >= v284)
  {
    v286 = 0;
    if (v284 > 0)
    {
      v283 += 8 * (v284 - 1) + 8;
    }

    v287 = v283 + 8 * (v285 - v284);
  }

  else
  {
    v286 = 8 * v284;
    v287 = v283;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3119, v616);
  if (LODWORD(v616[1]))
  {
    v292 = v616[0];
  }

  else
  {
    v292 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v288, v289, v290, v291, v23, &unk_26288E838, v24, v24, v292, v287, v283, v286);
  DgnString::~DgnString(v616);
  *a4 += v287;
  *a5 += v283;
  *v612 += v286;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3121, v616);
  if (LODWORD(v616[1]))
  {
    v297 = v616[0];
  }

  else
  {
    v297 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v293, v294, v295, v296, v23, &unk_26288E838, v24, v24, v297, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3123, v616);
  if (LODWORD(v616[1]))
  {
    v302 = v616[0];
  }

  else
  {
    v302 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v298, v299, v300, v301, v23, &unk_26288E838, v24, v24, v302, 8, 8, 0);
  DgnString::~DgnString(v616);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3125, v616);
  if (LODWORD(v616[1]))
  {
    v307 = v616[0];
  }

  else
  {
    v307 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v303, v304, v305, v306, v23, &unk_26288E838, v24, v24, v307, 8, 8, 0);
  DgnString::~DgnString(v616);
  *a4 += 8;
  *a5 += 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v308 = 4;
  }

  else
  {
    v308 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3127, v616);
  if (LODWORD(v616[1]))
  {
    v313 = v616[0];
  }

  else
  {
    v313 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v309, v310, v311, v312, v23, &unk_26288E838, v24, v24, v313, v308, v308, 0);
  DgnString::~DgnString(v616);
  *a4 += v308;
  *a5 += v308;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3129, v616);
  if (LODWORD(v616[1]))
  {
    v318 = v616[0];
  }

  else
  {
    v318 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v314, v315, v316, v317, v23, &unk_26288E838, v24, v24, v318, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v319 = 12;
  }

  else
  {
    v319 = 16;
  }

  v320 = *(this + 102);
  v321 = *(this + 103);
  v194 = v321 >= v320;
  v322 = v321 - v320;
  if (v194)
  {
    if (v320 > 0)
    {
      v323 = (v320 - 1) + v319 + 1;
    }

    else
    {
      v323 = v319;
    }

    v319 = v323 + v322;
    v320 = 0;
  }

  else
  {
    v323 = v319;
  }

  v324 = v320;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3131, v616);
  if (LODWORD(v616[1]))
  {
    v329 = v616[0];
  }

  else
  {
    v329 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v325, v326, v327, v328, v23, &unk_26288E838, v24, v24, v329, v319, v323, v324);
  DgnString::~DgnString(v616);
  *a4 += v319;
  *a5 += v323;
  *v612 += v324;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3133, v616);
  if (LODWORD(v616[1]))
  {
    v334 = v616[0];
  }

  else
  {
    v334 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v330, v331, v332, v333, v23, &unk_26288E838, v24, v24, v334, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v335 = 4;
  }

  else
  {
    v335 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3134, v616);
  if (LODWORD(v616[1]))
  {
    v340 = v616[0];
  }

  else
  {
    v340 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v336, v337, v338, v339, v23, &unk_26288E838, v24, v24, v340, v335, v335, 0);
  DgnString::~DgnString(v616);
  *a4 += v335;
  *a5 += v335;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v341 = 4;
  }

  else
  {
    v341 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3135, v616);
  if (LODWORD(v616[1]))
  {
    v346 = v616[0];
  }

  else
  {
    v346 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v342, v343, v344, v345, v23, &unk_26288E838, v24, v24, v346, v341, v341, 0);
  DgnString::~DgnString(v616);
  *a4 += v341;
  *a5 += v341;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v347 = 4;
  }

  else
  {
    v347 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3137, v616);
  if (LODWORD(v616[1]))
  {
    v352 = v616[0];
  }

  else
  {
    v352 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v348, v349, v350, v351, v23, &unk_26288E838, v24, v24, v352, v347, v347, 0);
  DgnString::~DgnString(v616);
  *a4 += v347;
  *a5 += v347;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v353 = 4;
  }

  else
  {
    v353 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3139, v616);
  if (LODWORD(v616[1]))
  {
    v358 = v616[0];
  }

  else
  {
    v358 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v354, v355, v356, v357, v23, &unk_26288E838, v24, v24, v358, v353, v353, 0);
  DgnString::~DgnString(v616);
  *a4 += v353;
  *a5 += v353;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v359 = 4;
  }

  else
  {
    v359 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3141, v616);
  if (LODWORD(v616[1]))
  {
    v364 = v616[0];
  }

  else
  {
    v364 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v360, v361, v362, v363, v23, &unk_26288E838, v24, v24, v364, v359, v359, 0);
  DgnString::~DgnString(v616);
  *a4 += v359;
  *a5 += v359;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v365 = 4;
  }

  else
  {
    v365 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3143, v616);
  if (LODWORD(v616[1]))
  {
    v370 = v616[0];
  }

  else
  {
    v370 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v366, v367, v368, v369, v23, &unk_26288E838, v24, v24, v370, v365, v365, 0);
  DgnString::~DgnString(v616);
  *a4 += v365;
  *a5 += v365;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v371 = 4;
  }

  else
  {
    v371 = 8;
  }

  v372 = *(this + 59);
  if (v372)
  {
    v373 = v371 + sizeObject<DgnPrimArray<unsigned char>>(v372 + 8, 0) + 5;
    v374 = *(this + 59);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v371 = 4;
    }

    else
    {
      v371 = 8;
    }

    if (v374)
    {
      v371 += sizeObject<DgnPrimArray<unsigned char>>(v374 + 8, 1) + 5;
      if (*(this + 59))
      {
        v616[0] = 0;
        v616[1] = 0;
        DgnPrimArray<unsigned int>::~DgnPrimArray(v616);
      }
    }
  }

  else
  {
    v373 = v371;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3145, v616);
  if (LODWORD(v616[1]))
  {
    v379 = v616[0];
  }

  else
  {
    v379 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v375, v376, v377, v378, v23, &unk_26288E838, v24, v24, v379, v373, v371, 0);
  DgnString::~DgnString(v616);
  *a4 += v373;
  *a5 += v371;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v380 = 4;
  }

  else
  {
    v380 = 8;
  }

  v381 = *(this + 60);
  if (v381)
  {
    v382 = v380 + sizeObject<DgnPrimArray<unsigned char>>(v381 + 8, 0) + 5;
    v383 = *(this + 60);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v380 = 4;
    }

    else
    {
      v380 = 8;
    }

    if (v383)
    {
      v380 += sizeObject<DgnPrimArray<unsigned char>>(v383 + 8, 1) + 5;
      if (*(this + 60))
      {
        v616[0] = 0;
        v616[1] = 0;
        DgnPrimArray<unsigned int>::~DgnPrimArray(v616);
      }
    }
  }

  else
  {
    v382 = v380;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3147, v616);
  if (LODWORD(v616[1]))
  {
    v388 = v616[0];
  }

  else
  {
    v388 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v384, v385, v386, v387, v23, &unk_26288E838, v24, v24, v388, v382, v380, 0);
  DgnString::~DgnString(v616);
  *a4 += v382;
  *a5 += v380;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3149, v616);
  if (LODWORD(v616[1]))
  {
    v393 = v616[0];
  }

  else
  {
    v393 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v389, v390, v391, v392, v23, &unk_26288E838, v24, v24, v393, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3151, v616);
  if (LODWORD(v616[1]))
  {
    v398 = v616[0];
  }

  else
  {
    v398 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v394, v395, v396, v397, v23, &unk_26288E838, v24, v24, v398, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v399 = 4;
  }

  else
  {
    v399 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3152, v616);
  if (LODWORD(v616[1]))
  {
    v404 = v616[0];
  }

  else
  {
    v404 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v400, v401, v402, v403, v23, &unk_26288E838, v24, v24, v404, v399, v399, 0);
  DgnString::~DgnString(v616);
  *a4 += v399;
  *a5 += v399;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v405 = 4;
  }

  else
  {
    v405 = 8;
  }

  v406 = *(this + 63);
  if (v406)
  {
    v407 = v405 + sizeObject<ScoreFixArray>(v406 + 8, 0) + 5;
    v408 = *(this + 63);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v405 = 4;
    }

    else
    {
      v405 = 8;
    }

    if (v408)
    {
      v405 += sizeObject<ScoreFixArray>(v408 + 8, 1) + 5;
      if (*(this + 63))
      {
        v616[0] = 0;
        LODWORD(v616[1]) = 0;
        DgnPrimFixArray<double>::~DgnPrimFixArray(v616);
      }
    }
  }

  else
  {
    v407 = v405;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3154, v616);
  if (LODWORD(v616[1]))
  {
    v413 = v616[0];
  }

  else
  {
    v413 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v409, v410, v411, v412, v23, &unk_26288E838, v24, v24, v413, v407, v405, 0);
  DgnString::~DgnString(v616);
  *a4 += v407;
  *a5 += v405;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v414 = 4;
  }

  else
  {
    v414 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3156, v616);
  if (LODWORD(v616[1]))
  {
    v419 = v616[0];
  }

  else
  {
    v419 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v415, v416, v417, v418, v23, &unk_26288E838, v24, v24, v419, v414, v414, 0);
  DgnString::~DgnString(v616);
  *a4 += v414;
  *a5 += v414;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v420 = 4;
  }

  else
  {
    v420 = 8;
  }

  v421 = *(this + 65);
  if (v421)
  {
    v422 = sizeObject(v421, 0) + v420;
    v423 = *(this + 65);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v420 = 4;
    }

    else
    {
      v420 = 8;
    }

    v424 = v612;
    if (v423 && (v420 += sizeObject(v423, 1), (v425 = *(this + 65)) != 0))
    {
      v426 = sizeObject(v425, 3);
    }

    else
    {
      v426 = 0;
    }
  }

  else
  {
    v426 = 0;
    v422 = v420;
    v424 = v612;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3158, v616);
  if (LODWORD(v616[1]))
  {
    v431 = v616[0];
  }

  else
  {
    v431 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v427, v428, v429, v430, v23, &unk_26288E838, v24, v24, v431, v422, v420, v426);
  DgnString::~DgnString(v616);
  *a4 += v422;
  *a5 += v420;
  *v424 += v426;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v432 = 4;
  }

  else
  {
    v432 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3159, v616);
  if (LODWORD(v616[1]))
  {
    v437 = v616[0];
  }

  else
  {
    v437 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v433, v434, v435, v436, v23, &unk_26288E838, v24, v24, v437, v432, v432, 0);
  DgnString::~DgnString(v616);
  *a4 += v432;
  *a5 += v432;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v438 = 4;
  }

  else
  {
    v438 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3161, v616);
  if (LODWORD(v616[1]))
  {
    v443 = v616[0];
  }

  else
  {
    v443 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v439, v440, v441, v442, v23, &unk_26288E838, v24, v24, v443, v438, v438, 0);
  DgnString::~DgnString(v616);
  *a4 += v438;
  *a5 += v438;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3163, v616);
  if (LODWORD(v616[1]))
  {
    v448 = v616[0];
  }

  else
  {
    v448 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v444, v445, v446, v447, v23, &unk_26288E838, v24, v24, v448, 1, 1, 0);
  DgnString::~DgnString(v616);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3166, v616);
  if (LODWORD(v616[1]))
  {
    v453 = v616[0];
  }

  else
  {
    v453 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v449, v450, v451, v452, v23, &unk_26288E838, v24, v24, v453, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v454 = 12;
  }

  else
  {
    v454 = 16;
  }

  v455 = *(this + 140);
  v456 = *(this + 141);
  v194 = v456 >= v455;
  v457 = v456 - v455;
  if (v194)
  {
    if (v455 > 0)
    {
      v458 = (v455 - 1) + v454 + 1;
    }

    else
    {
      v458 = v454;
    }

    v454 = v458 + v457;
    v455 = 0;
  }

  else
  {
    v458 = v454;
  }

  v459 = v455;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3168, v616);
  if (LODWORD(v616[1]))
  {
    v464 = v616[0];
  }

  else
  {
    v464 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v460, v461, v462, v463, v23, &unk_26288E838, v24, v24, v464, v454, v458, v459);
  DgnString::~DgnString(v616);
  *a4 += v454;
  *a5 += v458;
  *v612 += v459;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3170, v616);
  if (LODWORD(v616[1]))
  {
    v469 = v616[0];
  }

  else
  {
    v469 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v465, v466, v467, v468, v23, &unk_26288E838, v24, v24, v469, 1, 1, 0);
  DgnString::~DgnString(v616);
  ++*a4;
  ++*a5;
  v470 = sizeObject<Germ>(this + 576, 0);
  v471 = sizeObject<Germ>(this + 576, 1);
  v616[0] = 4211081215;
  sizeObject(v616, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3172, v616);
  if (LODWORD(v616[1]))
  {
    v476 = v616[0];
  }

  else
  {
    v476 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v472, v473, v474, v475, v23, &unk_26288E838, v24, v24, v476, v470, v471, 0);
  DgnString::~DgnString(v616);
  *a4 += v470;
  *a5 += v471;
  v477 = SnapTime::sizeObject(this + 592, 0);
  v478 = SnapTime::sizeObject(this + 592, 1);
  v479 = SnapTime::sizeObject(this + 592, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3174, v616);
  if (LODWORD(v616[1]))
  {
    v484 = v616[0];
  }

  else
  {
    v484 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v480, v481, v482, v483, v23, &unk_26288E838, v24, v24, v484, v477, v478, v479);
  DgnString::~DgnString(v616);
  *a4 += v477;
  *a5 += v478;
  *v612 += v479;
  v485 = SnapTime::sizeObject(this + 624, 0);
  v486 = SnapTime::sizeObject(this + 624, 1);
  v487 = SnapTime::sizeObject(this + 624, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3176, v616);
  if (LODWORD(v616[1]))
  {
    v492 = v616[0];
  }

  else
  {
    v492 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v488, v489, v490, v491, v23, &unk_26288E838, v24, v24, v492, v485, v486, v487);
  DgnString::~DgnString(v616);
  *a4 += v485;
  *a5 += v486;
  *v612 += v487;
  v493 = SnapTime::sizeObject(this + 656, 0);
  v494 = SnapTime::sizeObject(this + 656, 1);
  v495 = SnapTime::sizeObject(this + 656, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3178, v616);
  if (LODWORD(v616[1]))
  {
    v500 = v616[0];
  }

  else
  {
    v500 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v496, v497, v498, v499, v23, &unk_26288E838, v24, v24, v500, v493, v494, v495);
  DgnString::~DgnString(v616);
  *a4 += v493;
  *a5 += v494;
  *v612 += v495;
  v501 = SnapTime::sizeObject(this + 688, 0);
  v502 = SnapTime::sizeObject(this + 688, 1);
  v503 = SnapTime::sizeObject(this + 688, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3180, v616);
  if (LODWORD(v616[1]))
  {
    v508 = v616[0];
  }

  else
  {
    v508 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v504, v505, v506, v507, v23, &unk_26288E838, v24, v24, v508, v501, v502, v503);
  DgnString::~DgnString(v616);
  *a4 += v501;
  *a5 += v502;
  *v612 += v503;
  v509 = SnapTime::sizeObject(this + 720, 0);
  v510 = SnapTime::sizeObject(this + 720, 1);
  v511 = SnapTime::sizeObject(this + 720, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3182, v616);
  if (LODWORD(v616[1]))
  {
    v516 = v616[0];
  }

  else
  {
    v516 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v512, v513, v514, v515, v23, &unk_26288E838, v24, v24, v516, v509, v510, v511);
  DgnString::~DgnString(v616);
  *a4 += v509;
  *a5 += v510;
  *v612 += v511;
  v517 = SnapTime::sizeObject(this + 752, 0);
  v518 = SnapTime::sizeObject(this + 752, 1);
  v519 = SnapTime::sizeObject(this + 752, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3184, v616);
  if (LODWORD(v616[1]))
  {
    v524 = v616[0];
  }

  else
  {
    v524 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v520, v521, v522, v523, v23, &unk_26288E838, v24, v24, v524, v517, v518, v519);
  DgnString::~DgnString(v616);
  *a4 += v517;
  *a5 += v518;
  *v612 += v519;
  v525 = SnapTime::sizeObject(this + 784, 0);
  v526 = SnapTime::sizeObject(this + 784, 1);
  v527 = SnapTime::sizeObject(this + 784, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3186, v616);
  if (LODWORD(v616[1]))
  {
    v532 = v616[0];
  }

  else
  {
    v532 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v528, v529, v530, v531, v23, &unk_26288E838, v24, v24, v532, v525, v526, v527);
  DgnString::~DgnString(v616);
  *a4 += v525;
  *a5 += v526;
  *v612 += v527;
  v533 = sizeObject<SnapTime>(this + 816, 0);
  v534 = sizeObject<SnapTime>(this + 816, 1);
  memset(v616, 0, sizeof(v616));
  SnapTime::sizeObject(v616, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3188, v616);
  if (LODWORD(v616[1]))
  {
    v539 = v616[0];
  }

  else
  {
    v539 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v535, v536, v537, v538, v23, &unk_26288E838, v24, v24, v539, v533, v534, 0);
  DgnString::~DgnString(v616);
  *a4 += v533;
  *a5 += v534;
  v540 = SnapTime::sizeObject(this + 832, 0);
  v541 = SnapTime::sizeObject(this + 832, 1);
  v542 = SnapTime::sizeObject(this + 832, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3190, v616);
  if (LODWORD(v616[1]))
  {
    v547 = v616[0];
  }

  else
  {
    v547 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v543, v544, v545, v546, v23, &unk_26288E838, v24, v24, v547, v540, v541, v542);
  DgnString::~DgnString(v616);
  *a4 += v540;
  *a5 += v541;
  *v612 += v542;
  v548 = sizeObject<SnapTime>(this + 864, 0);
  v549 = sizeObject<SnapTime>(this + 864, 1);
  memset(v616, 0, sizeof(v616));
  SnapTime::sizeObject(v616, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3192, v616);
  if (LODWORD(v616[1]))
  {
    v554 = v616[0];
  }

  else
  {
    v554 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v550, v551, v552, v553, v23, &unk_26288E838, v24, v24, v554, v548, v549, 0);
  DgnString::~DgnString(v616);
  *a4 += v548;
  *a5 += v549;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3194, v616);
  if (LODWORD(v616[1]))
  {
    v559 = v616[0];
  }

  else
  {
    v559 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v555, v556, v557, v558, v23, &unk_26288E838, v24, v24, v559, 1, 1, 0);
  DgnString::~DgnString(v616);
  ++*a4;
  ++*a5;
  v560 = *(this + 111);
  if (v560)
  {
    v615 = 0;
    v616[0] = 0;
    v614 = 0;
    ReproMgr::printSize(v560, 0xFFFFFFFFLL, v23, v616, &v615, &v614);
    *a4 += v616[0];
    *a5 += v615;
    *v612 += v614;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v561 = 4;
  }

  else
  {
    v561 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3196, v616);
  if (LODWORD(v616[1]))
  {
    v566 = v616[0];
  }

  else
  {
    v566 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v562, v563, v564, v565, v23, &unk_26288E838, v24, v24, v566, v561, v561, 0);
  DgnString::~DgnString(v616);
  *a4 += v561;
  *a5 += v561;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3198, v616);
  if (LODWORD(v616[1]))
  {
    v571 = v616[0];
  }

  else
  {
    v571 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v567, v568, v569, v570, v23, &unk_26288E838, v24, v24, v571, 1, 1, 0);
  DgnString::~DgnString(v616);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3200, v616);
  if (LODWORD(v616[1]))
  {
    v576 = v616[0];
  }

  else
  {
    v576 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v572, v573, v574, v575, v23, &unk_26288E838, v24, v24, v576, 1, 1, 0);
  DgnString::~DgnString(v616);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3202, v616);
  if (LODWORD(v616[1]))
  {
    v581 = v616[0];
  }

  else
  {
    v581 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v577, v578, v579, v580, v23, &unk_26288E838, v24, v24, v581, 1, 1, 0);
  DgnString::~DgnString(v616);
  ++*a4;
  ++*a5;
  v582 = *(this + 113);
  if (v582)
  {
    v615 = 0;
    v616[0] = 0;
    v614 = 0;
    RecogStats::printSize(v582, 0xFFFFFFFFLL, v23, v616, &v615, &v614);
    *a4 += v616[0];
    *a5 += v615;
    *v612 += v614;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v583 = 4;
  }

  else
  {
    v583 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3204, v616);
  if (LODWORD(v616[1]))
  {
    v588 = v616[0];
  }

  else
  {
    v588 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v584, v585, v586, v587, v23, &unk_26288E838, v24, v24, v588, v583, v583, 0);
  DgnString::~DgnString(v616);
  *a4 += v583;
  *a5 += v583;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v589 = 4;
  }

  else
  {
    v589 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3206, v616);
  if (LODWORD(v616[1]))
  {
    v594 = v616[0];
  }

  else
  {
    v594 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v590, v591, v592, v593, v23, &unk_26288E838, v24, v24, v594, v589, v589, 0);
  DgnString::~DgnString(v616);
  *a4 += v589;
  *a5 += v589;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v595 = 4;
  }

  else
  {
    v595 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3208, v616);
  if (LODWORD(v616[1]))
  {
    v600 = v616[0];
  }

  else
  {
    v600 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v596, v597, v598, v599, v23, &unk_26288E838, v24, v24, v600, v595, v595, 0);
  DgnString::~DgnString(v616);
  *a4 += v595;
  *a5 += v595;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3210, v616);
  if (LODWORD(v616[1]))
  {
    v605 = v616[0];
  }

  else
  {
    v605 = &unk_26288E838;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v601, v602, v603, v604, v23, &unk_26288E838, v24, v24, v605, 4, 4, 0);
  DgnString::~DgnString(v616);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3212, v616);
  if (LODWORD(v616[1]))
  {
    v610 = v616[0];
  }

  else
  {
    v610 = &unk_26288E838;
  }

  v611 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v606, v607, v608, v609, v613, &unk_26288E838, (35 - v613), (35 - v613), v610, *a4, *a5, *v612);
  DgnString::~DgnString(v616);
}