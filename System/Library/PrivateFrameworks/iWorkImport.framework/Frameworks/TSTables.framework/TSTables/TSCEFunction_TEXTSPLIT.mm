@interface TSCEFunction_TEXTSPLIT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_TEXTSPLIT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v9 = **a5;
  v330[0] = 0;
  v306 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, a2, a3, a4, 0, v330);
  v10 = v330[0];
  if (v10)
  {
    v14 = v10;
    v5 = objc_msgSend_raiseErrorOrConvert_(v8, v11, v10, v12, v13);
    goto LABEL_12;
  }

  v305 = objc_opt_new();
  memset(v329, 0, sizeof(v329));
  v19 = objc_msgSend_nativeType(**v6, v15, v16, v17, v18);
  if (v19 == 1 || v19 == 16)
  {
    v25 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v20, v21, v22, v23);
    v5 = objc_msgSend_raiseErrorOrConvert_(v8, v26, v25, v27, v28);
    v14 = 0;
    goto LABEL_9;
  }

  if ((v6[1] - *v6) < 9)
  {
    v301 = 0;
    v36 = 0;
    goto LABEL_20;
  }

  if (objc_msgSend_nativeType((*v6)[1], v20, v21, v22, v23) == 7)
  {
    v31 = (*v6)[1];
    v328 = 0;
    v25 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v31, v30, v8, v7, 1, &v328);
    v14 = v328;
    if (v14)
    {
      v35 = objc_msgSend_raiseErrorOrConvert_(v8, v32, v14, v33, v34);
LABEL_131:
      v5 = v35;
      goto LABEL_9;
    }

    if (objc_msgSend_isEqualToString_(v25, v32, &stru_2834BADA0, v33, v34))
    {
      v44 = objc_msgSend_functionName(v7, v40, v41, v42, v43);
      v48 = objc_msgSend_delimiterValueNotProvided_(TSCEError, v45, v44, v46, v47);
      v52 = objc_msgSend_raiseErrorOrConvert_(v8, v49, v48, v50, v51);
LABEL_25:
      v5 = v52;

LABEL_75:
      goto LABEL_9;
    }
  }

  v25 = (*v6)[1];
  if (objc_msgSend_isTokenOrEmptyArg(v25, v53, v54, v55, v56))
  {
    v301 = 0;
    v36 = 0;
    goto LABEL_29;
  }

  v64 = (*v6)[1];
  v327 = 0;
  v303 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v64, v57, v8, v7, 1, 0, &v327);
  v65 = v327;
  if (v65)
  {
    v14 = v65;
    v70 = objc_msgSend_raiseErrorOrConvert_(v8, v66, v65, v68, v69);
LABEL_35:
    v5 = v70;

    goto LABEL_9;
  }

  v291 = v6;
  v325 = 0;
  v326 = objc_msgSend_dimensions(v303, v66, v67, v68, v69);
  v73 = v8;
  v301 = 0;
  __p = v73;
  v319 = v7;
  v74 = v7;
  v320 = 0;
  v321[0] = 1;
  *(v321 + 7) = 0;
  v322 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v323 = 0;
  v324 = 0;
  while (1)
  {
    v75 = objc_msgSend_valueAtGridCoord_accessContext_(v303, v71, *&v325, &__p, v72);
    v317 = 0;
    v77 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v75, v76, v73, v74, 1, &v317);
    v78 = v317;
    if (v78)
    {
      v36 = v78;
      v5 = objc_msgSend_raiseErrorOrConvert_(v73, v79, v78, v81, v82);
      goto LABEL_158;
    }

    if (objc_msgSend_length(v77, v79, v80, v81, v82))
    {
      break;
    }

LABEL_44:
    v325 = TSCEGridDimensions::nextCoordRowMajorOrder(&v326, &v325);

    v36 = 0;
    v97 = 1;
    if (v325.column == 0x7FFFFFFF || v325.row == 0x7FFFFFFF)
    {
      goto LABEL_159;
    }
  }

  if (!objc_msgSend_isRegexString(v75, v83, v84, v85, v86))
  {
    objc_msgSend_addObject_(v305, v87, v77, v89, v90);
    v315 = 0;
    sub_2213F4AD0(v329, &v315);
    goto LABEL_43;
  }

  isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v75, v87, v88, v89, v90);
  v316 = 0;
  v93 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v92, v77, isCaseSensitiveRegexString, &v316);
  v36 = v316;
  if (!v36)
  {
    objc_msgSend_addObject_(v305, v94, v93, v95, v96);
    v315 = 1;
    sub_2213F4AD0(v329, &v315);

LABEL_43:
    ++v301;
    goto LABEL_44;
  }

  v5 = objc_msgSend_raiseErrorOrConvert_(v73, v94, v36, v95, v96);

LABEL_158:
  v97 = 0;
LABEL_159:

  v7 = v74;
  v6 = v291;
  if ((v97 & 1) == 0)
  {
LABEL_22:
    v14 = v36;
    goto LABEL_9;
  }

LABEL_29:

  if ((v6[1] - *v6) < 0x11)
  {
LABEL_20:
    if (v301)
    {
      goto LABEL_55;
    }

    v25 = objc_msgSend_delimiterValueNotProvided_(TSCEError, v20, @"TEXTSPLIT", v22, v23);
    v5 = objc_msgSend_raiseErrorOrConvert_(v8, v37, v25, v38, v39);
    goto LABEL_22;
  }

  if (objc_msgSend_nativeType((*v6)[2], v20, v58, v22, v23) == 7)
  {
    v60 = (*v6)[2];
    v314 = v36;
    v25 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v60, v59, v8, v7, 2, &v314);
    v14 = v314;

    if (v14)
    {
      v35 = objc_msgSend_raiseErrorOrConvert_(v8, v61, v14, v62, v63);
      goto LABEL_131;
    }

    if (objc_msgSend_isEqualToString_(v25, v61, &stru_2834BADA0, v62, v63))
    {
      v44 = objc_msgSend_functionName(v7, v98, v99, v100, v101);
      v48 = objc_msgSend_delimiterValueNotProvided_(TSCEError, v102, v44, v103, v104);
      v52 = objc_msgSend_raiseErrorOrConvert_(v8, v105, v48, v106, v107);
      goto LABEL_25;
    }

    v36 = 0;
  }

  v25 = (*v6)[2];
  if (objc_msgSend_isTokenOrEmptyArg(v25, v108, v109, v110, v111))
  {
    v113 = v8;
    v295 = v25;
    v114 = 0;
    goto LABEL_54;
  }

  v214 = (*v6)[2];
  v313 = v36;
  v303 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v214, v112, v8, v7, 2, 0, &v313);
  v14 = v313;

  if (v14)
  {
    v70 = objc_msgSend_raiseErrorOrConvert_(v8, v215, v14, v217, v218);
    goto LABEL_35;
  }

  v293 = v6;
  v295 = v25;
  v240 = objc_msgSend_dimensions(v303, v215, v216, v217, v218);
  v325 = 0;
  v326 = v240;
  v113 = v8;
  v243 = v8;
  v114 = 0;
  __p = v243;
  v319 = v7;
  v244 = v7;
  v320 = 0;
  v321[0] = 2;
  *(v321 + 7) = 0;
  v322 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v323 = 0;
  v324 = 0;
  while (2)
  {
    v245 = objc_msgSend_valueAtGridCoord_accessContext_(v303, v241, *&v325, &__p, v242);
    v312 = 0;
    v247 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v245, v246, v243, v244, 2, &v312);
    v248 = v312;
    if (v248)
    {
      v36 = v248;
      v5 = objc_msgSend_raiseErrorOrConvert_(v243, v249, v248, v251, v252);
      goto LABEL_163;
    }

    if (!objc_msgSend_length(v247, v249, v250, v251, v252))
    {
      goto LABEL_149;
    }

    if (!objc_msgSend_isRegexString(v245, v253, v254, v255, v256))
    {
      objc_msgSend_addObject_(v305, v257, v247, v259, v260);
      v315 = 0;
      sub_2213F4AD0(v329, &v315);
LABEL_148:
      ++v114;
LABEL_149:
      v325 = TSCEGridDimensions::nextCoordRowMajorOrder(&v326, &v325);

      v267 = 1;
      if (v325.column == 0x7FFFFFFF || v325.row == 0x7FFFFFFF)
      {
        v36 = 0;
        goto LABEL_164;
      }

      continue;
    }

    break;
  }

  v261 = objc_msgSend_isCaseSensitiveRegexString(v245, v257, v258, v259, v260);
  v311 = 0;
  v263 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v262, v247, v261, &v311);
  v36 = v311;
  if (!v36)
  {
    objc_msgSend_addObject_(v305, v264, v263, v265, v266);
    v315 = 1;
    sub_2213F4AD0(v329, &v315);

    goto LABEL_148;
  }

  v5 = objc_msgSend_raiseErrorOrConvert_(v243, v264, v36, v265, v266);

LABEL_163:
  v267 = 0;
LABEL_164:

  v7 = v244;
  v6 = v293;
  if ((v267 & 1) == 0)
  {
    v14 = v36;
    goto LABEL_9;
  }

LABEL_54:

  v115 = v114 == 0;
  v8 = v113;
  if (v115)
  {
    goto LABEL_20;
  }

LABEL_55:
  if ((v6[1] - *v6) < 0x19)
  {
    v300 = 0;
    goto LABEL_65;
  }

  v25 = (*v6)[3];
  if (objc_msgSend_isTokenOrEmptyArg(v25, v116, v117, v118, v119))
  {
    v300 = 0;
    goto LABEL_62;
  }

  v310 = v36;
  v300 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v25, v120, v8, v7, 3, &v310);
  v14 = v310;

  if (v14)
  {
    v35 = objc_msgSend_raiseErrorOrConvert_(v8, v121, v14, v122, v123);
    goto LABEL_131;
  }

  v36 = 0;
LABEL_62:

  if ((v6[1] - *v6) < 0x21)
  {
LABEL_65:
    v129 = 2;
    v14 = v36;
  }

  else
  {
    v25 = (*v6)[4];
    if (objc_msgSend_isTokenOrEmptyArg(v25, v124, v125, v126, v127))
    {

      goto LABEL_65;
    }

    v309 = v36;
    v210 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v25, v128, v8, v7, 4, &v309);
    v14 = v309;

    if (v14)
    {
      v35 = objc_msgSend_raiseErrorOrConvert_(v8, v211, v14, v212, v213);
      goto LABEL_131;
    }

    if (v210)
    {
      v129 = 3;
    }

    else
    {
      v129 = 2;
    }
  }

  v25 = objc_msgSend_stringValue_(TSCEStringValue, v20, &stru_2834BADA0, v22, v23);
  if ((v6[1] - *v6) < 0x29)
  {
    v294 = 0;
  }

  else
  {
    v134 = v6;
    v135 = (*v6)[5];
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v135, v136, v137, v138, v139);
    if ((isTokenOrEmptyArg & 1) == 0 && objc_msgSend_deepType_(v135, v140, v8, v141, v142) != 9)
    {
      v144 = v7;
      v145 = v135;

      v25 = v145;
      v7 = v144;
    }

    v294 = isTokenOrEmptyArg ^ 1;

    v6 = v134;
  }

  v146 = objc_msgSend_length(v306, v130, v131, v132, v133);
  v151 = v146;
  if (v146 == 1)
  {
    goto LABEL_76;
  }

  if (!v146)
  {
    v44 = objc_msgSend_emptyArrayError(TSCEError, v147, v148, v149, v150);
    v5 = objc_msgSend_raiseErrorOrConvert_(v8, v152, v44, v153, v154);
    goto LABEL_75;
  }

  v155 = objc_msgSend_count(v305, v147, v148, v149, v150);
  if (!v155)
  {
LABEL_76:
    v35 = objc_msgSend_stringValue_(TSCEStringValue, v147, v306, v149, v150);
    goto LABEL_131;
  }

  v296 = v25;
  v326 = 0;
  v297 = objc_opt_new();
  v290 = v7;
  v292 = v6;
  __p = 0;
  v319 = 0;
  v320 = 0;
  sub_22129CFF4(&__p, v155);
  v304 = 0;
  v298 = 0;
  v159 = v151;
  v299 = v151;
  while (2)
  {
    v160 = 0;
    v161 = 0;
    v162 = v159;
    v163 = v304;
    do
    {
      if ((*(v329[0] + ((v161 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v161))
      {
        v164 = objc_msgSend_objectAtIndexedSubscript_(v305, v156, v161, v157, v158);
        MatchInString_options_range = objc_msgSend_rangeOfFirstMatchInString_options_range_(v164, v165, v306, 2, v304, v162);
      }

      else
      {
        v164 = objc_msgSend_objectAtIndexedSubscript_(v305, v156, v161, v157, v158);
        MatchInString_options_range = objc_msgSend_rangeOfString_options_range_(v306, v168, v164, v129, v304, v162);
      }

      v169 = (__p + v160);
      *v169 = MatchInString_options_range;
      v169[1] = v167;

      ++v161;
      v160 += 16;
    }

    while (v155 != v161);
    v171 = 0;
    v172 = 0;
    v173 = __p + 8;
    v174 = 0x7FFFFFFFFFFFFFFFLL;
    v175 = v299;
    while (2)
    {
      v176 = v174;
      v177 = v172;
      v172 = *(v173 - 1);
      if (v172 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_86:
        v174 = v176;
        goto LABEL_87;
      }

      v174 = v171;
      if (v176 != 0x7FFFFFFFFFFFFFFFLL && v172 >= v177)
      {
        if (v172 != v177)
        {
          goto LABEL_86;
        }

        if (*v173 <= *(__p + 2 * v176 + 1))
        {
          v174 = v176;
        }

        else
        {
          v174 = v171;
        }

LABEL_87:
        v172 = v177;
      }

      v173 += 2;
      if (v155 != ++v171)
      {
        continue;
      }

      break;
    }

    v178 = v162;
    v304 = v299;
    if (v174 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v178 = v172 - v163;
      v304 = *(__p + 2 * v174 + 1) + v172;
    }

    if (v178)
    {
      v179 = objc_msgSend_substringWithRange_(v306, v156, v163, v178, v158);
    }

    else
    {
      v179 = 0;
    }

    v302 = v179;
    if (((objc_msgSend_length(v179, v156, v170, v178, v158) == 0) & v300) == 0)
    {
      v184 = objc_msgSend_stringValue_(TSCEStringValue, v180, v302, v182, v183);
      if (!objc_msgSend_length(v302, v185, v186, v187, v188))
      {
        v192 = objc_msgSend_stringValue_(TSCEStringValue, v189, &stru_2834BADA0, v190, v191);

        v184 = v192;
      }

      objc_msgSend_setValue_atCoord_(v297, v189, v184, &v326, v191);
      v194 = v174 == 0x7FFFFFFFFFFFFFFFLL || v174 < v301;
      v298 = v194;
      if (v194)
      {
        v195 = v326.width + 1;
      }

      else
      {
        v195 = 0;
        ++v326.height;
      }

      v326.width = v195;

      v175 = v299;
LABEL_118:
      v159 = v175 - v304;
      if (v174 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_119;
      }

      goto LABEL_121;
    }

    if (v174 == 0x7FFFFFFFFFFFFFFFLL || v174 < v301 || !v298)
    {
      goto LABEL_118;
    }

    v298 = 0;
    v326.width = 0;
    ++v326.height;
    v159 = v299 - v304;
LABEL_119:
    if (v304 != v163 || v159 != v162)
    {
LABEL_121:
      if (!((v159 != 0) | v300 & 1) && v172 == objc_msgSend_length(v306, v180, v181, v182, v183) - 1)
      {
        v199 = objc_msgSend_stringValue_(TSCEStringValue, v196, &stru_2834BADA0, v197, v198);
        objc_msgSend_setValue_atCoord_(v297, v200, v199, &v326, v201);
      }

      if (v174 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (objc_msgSend_count(v297, v156, v202, v157, v158))
        {
          if (v294)
          {
            v25 = v296;
            v207 = v297;
            v325 = objc_msgSend_dimensions(v297, v203, v204, v205, v206);
            objc_msgSend_padUnsetWithValue_forDimensions_(v297, v208, v296, &v325, v209);
          }

          else
          {
            v268 = objc_msgSend_functionName(v290, v203, v204, v205, v206);
            v272 = objc_msgSend_padWithValuesNotProvided_(TSCEError, v269, v268, v270, v271);
            v207 = v297;
            v276 = objc_msgSend_errorValue_(TSCEErrorValue, v273, v272, v274, v275);
            v25 = v296;
            v325 = objc_msgSend_dimensions(v297, v277, v278, v279, v280);
            objc_msgSend_padUnsetWithValue_forDimensions_(v297, v281, v276, &v325, v282);
          }

          v283 = [TSCEDenseGrid alloc];
          v236 = objc_msgSend_initWithValueGrid_(v283, v284, v207, v285, v286);
          v5 = objc_msgSend_gridValue_(TSCEGridValue, v287, v236, v288, v289);
        }

        else
        {
          v236 = objc_msgSend_emptyArrayError(TSCEError, v203, v204, v205, v206);
          v5 = objc_msgSend_raiseErrorOrConvert_(v8, v237, v236, v238, v239);
          v25 = v296;
          v207 = v297;
        }

        goto LABEL_154;
      }

      continue;
    }

    break;
  }

  v219 = (*v292)[1];
  v308 = 0;
  v220 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v219, v180, v8, v290, 1, &v308);
  v221 = v308;
  v25 = v296;
  v207 = v297;
  if (!objc_msgSend_length(v220, v222, v223, v224, v225))
  {
    v229 = (*v292)[2];
    v307 = v221;
    v230 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v229, v226, v8, v290, 2, &v307);
    v231 = v307;

    v221 = v231;
    v220 = v230;
  }

  v232 = objc_msgSend_invalidRegexError_(TSCEError, v226, v220, v227, v228);
  v5 = objc_msgSend_raiseErrorOrConvert_(v8, v233, v232, v234, v235);

  v236 = v302;
LABEL_154:

  if (__p)
  {
    v319 = __p;
    operator delete(__p);
  }

LABEL_9:
  if (v329[0])
  {
    operator delete(v329[0]);
  }

LABEL_12:

  return v5;
}

@end