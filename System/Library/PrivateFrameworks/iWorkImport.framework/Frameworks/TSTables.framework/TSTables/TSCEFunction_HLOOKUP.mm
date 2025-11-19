@interface TSCEFunction_HLOOKUP
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_HLOOKUP

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v243 = 0;
  v244 = 0;
  v245 = 0;
  v8 = **a5;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    v234 = 0;
    *v235 = 0u;
  }

  sub_22114F414(&v243, &v234);
  v17 = objc_msgSend_copy(v12, v13, v14, v15, v16);
  v21 = objc_msgSend_deepType_(v17, v18, a3, v19, v20);
  v25 = v21;
  if (v21)
  {
    if (v21 == 9)
    {
      v26 = objc_msgSend_errorWithContext_(v17, v22, a3, v23, v24);
      v30 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v26, v28, v29);
      v31 = 0;
      goto LABEL_105;
    }
  }

  else
  {
    v242 = 0;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v22, a3, a4, 0, &v242);
    v31 = v242;

    if (v31)
    {
      v30 = objc_msgSend_raiseErrorOrConvert_(a3, v33, v31, v34, v35);
      goto LABEL_106;
    }

    v25 = 5;
    v17 = v32;
  }

  v36 = *(*a5 + 8);
  v26 = v36;
  if (v36)
  {
    objc_msgSend_formatWithContext_(v36, v37, a3, v38, v39);
  }

  else
  {
    v234 = 0;
    *v235 = 0u;
  }

  sub_22114F414(&v243, &v234);
  v241 = 0;
  v220 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v26, v40, a3, a4, 1, 1, &v241);
  v41 = v241;
  if (v41)
  {
    v31 = v41;
    v30 = objc_msgSend_raiseErrorOrConvert_(a3, v42, v41, v43, v44);
    goto LABEL_104;
  }

  v240 = 0;
  v45 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v26, v42, a3, a4, 1, &v240);
  v46 = v240;
  if (v46)
  {
  }

  else
  {
    v55 = objc_msgSend_range(v45, v47, v48, v49, v50);
    v57 = v56;
    v61 = objc_msgSend_tableUID(v45, v56, v58, v59, v60);
    LOWORD(v234._decimal.w[0]) = 1;
    v234._decimal.w[1] = v55;
    *v235 = v57 & 0xFFFFFFFF00000000 | v55;
    *&v235[8] = v61;
    *&v235[16] = v62;
    v236.i8[0] = 0;
    v239 = 0;
    v236.i64[1] = 0;
    v237 = 0;
    LOWORD(v238) = 0;
    objc_msgSend_addCalculatedPrecedent_(a3, v62, &v234, v63, v64);
  }

  if (objc_msgSend_gridKind(v220, v51, v52, v53, v54) == 1 && objc_msgSend_count(v220, v65, v66, v67, v68) != 1)
  {
    v219 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v69, v70, v71, v72);
    v30 = objc_msgSend_raiseErrorOrConvert_(a3, v98, v219, v99, v100);
    v31 = 0;
    goto LABEL_103;
  }

  v73 = *(*a5 + 16);
  v219 = v73;
  if (v73)
  {
    objc_msgSend_formatWithContext_(v73, v74, a3, v75, v76);
  }

  else
  {
    v234 = 0;
    *v235 = 0u;
  }

  sub_22114F414(&v243, &v234);
  v233 = 0;
  v78 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v219, v77, a3, a4, 2, &v233);
  v31 = v233;
  v217 = v78;
  v234._decimal.w[0] = objc_msgSend_decimalRepresentation(v78, v79, v80, v81, v82);
  v234._decimal.w[1] = v83;
  v84 = TSUDecimal::truncateWithRounding(&v234);
  if (v31)
  {
    v30 = objc_msgSend_raiseErrorOrConvert_(a3, v85, v31, v87, v88);
    goto LABEL_102;
  }

  v89 = v84;
  if (v84 <= 0)
  {
    v101 = objc_msgSend_functionName(a4, v85, v86, v87, v88);
    v103 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v102, 3, v101, 1, 1.0);
    v30 = objc_msgSend_raiseErrorOrConvert_(a3, v104, v103, v105, v106);
    v31 = 0;
    goto LABEL_100;
  }

  if (*(a5 + 1) - *a5 < 0x19uLL)
  {
    v216 = 1;
  }

  else
  {
    v90 = *(*a5 + 24);
    if (objc_msgSend_isTokenOrEmptyArg(v90, v91, v92, v93, v94))
    {
      v216 = 1;
    }

    else
    {
      if (v90)
      {
        objc_msgSend_formatWithContext_(v90, v95, a3, v96, v97);
      }

      else
      {
        v234 = 0;
        *v235 = 0u;
      }

      sub_22114F414(&v243, &v234);
      v232 = 0;
      v216 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v90, v107, a3, a4, 3, &v232);
      v108 = v232;
      if (v108)
      {
        v31 = v108;
        v112 = objc_msgSend_raiseErrorOrConvert_(a3, v109, v108, v110, v111);
        goto LABEL_50;
      }
    }
  }

  v213 = objc_msgSend_dimensions(v220, v85, v86, v87, v88);
  if (v89 > SHIDWORD(v213))
  {
    v90 = objc_msgSend_invalidReferenceError(TSCEError, v113, v114, v115, v116);
    v30 = objc_msgSend_raiseErrorOrConvert_(a3, v117, v90, v118, v119);
    v31 = 0;
    goto LABEL_101;
  }

  if (v25 == 7)
  {
    v120 = v216;
  }

  else
  {
    v120 = 1;
  }

  HIDWORD(v202) = v89;
  if ((v120 & 1) == 0)
  {
    isRegexString = objc_msgSend_isRegexString(v17, v113, v114, v115, v116);
    if (isRegexString)
    {
      v231 = 0;
      v123 = objc_msgSend_asString_outError_(v17, v121, a3, &v231, v122);
      v124 = v231;
      v203 = v123;
      isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v17, v125, v126, v127, v128);
      v230 = v124;
      v211 = &v230;
      v131 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v130, v123, isCaseSensitiveRegexString, &v230);
    }

    else
    {
      v229 = 0;
      v132 = objc_msgSend_asString_outError_(v17, v121, a3, &v229, v122);
      v124 = v229;
      v228 = v124;
      v211 = &v228;
      v203 = v132;
      v131 = objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v133, v132, &v228, v134);
    }

    v90 = v131;
    v135 = v45;
    v136 = v124;
    v31 = *v211;

    if (!v31)
    {
      v45 = v135;
      goto LABEL_52;
    }

    v45 = v135;
    v112 = objc_msgSend_raiseErrorOrConvert_(a3, v113, v31, v115, v116);
LABEL_50:
    v30 = v112;
    goto LABEL_101;
  }

  isRegexString = 0;
  v90 = 0;
LABEL_52:
  v204 = v90;
  v205 = objc_msgSend_nilValue(TSCENilValue, v113, v114, v115, v116);
  v218 = a3;
  v234._decimal.w[0] = v218;
  v234._decimal.w[1] = 0;
  *v235 = 0;
  *&v235[8] = 0xFFFFFFFFLL;
  *&v235[15] = 0;
  v236 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v237 = 0;
  v238 = 0;
  v31 = 0;
  v141 = v213 - 1;
  if (v213 < 1)
  {
LABEL_95:
    v103 = v205;
    v184 = objc_msgSend_functionName(a4, v137, v138, v139, v140, v202);
    v101 = v204;
    v178 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v190, v184, v191, v192);
    v189 = objc_msgSend_raiseErrorOrConvert_(v218, v193, v178, v194, v195);
LABEL_96:
    v30 = v189;

    v201 = v184;
    goto LABEL_99;
  }

  v142 = 0;
  v214 = -v213;
  LODWORD(v202) = -1;
  v215 = v45;
  while (1)
  {
    if (v216)
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(v220, v137, v141, &v234, v140, v202);
    }

    else
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(v220, v137, v142, &v234, v140, v202);
    }
    v143 = ;
    if (objc_msgSend_deepType_(v143, v144, v218, v145, v146) == 9 || (objc_msgSend_valueIsEmptyWithContext_(v143, v147, v218, v148, v149) & 1) != 0)
    {
      goto LABEL_76;
    }

    v212 = v143;
    v153 = objc_msgSend_deepType_(v143, v150, v218, v151, v152);
    v156 = v153;
    if (!v216)
    {
      if (((v153 != v25) & ~isRegexString) == 0)
      {
        if (v25 != 7)
        {
          v224 = v31;
          v208 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v154, v17, v212, v218, &v224);
          v162 = v224;

          if (!v208)
          {
            v31 = v162;
LABEL_112:

            v45 = v215;
            goto LABEL_92;
          }

          v31 = v162;
          if (v162)
          {
            v200 = v162;
            v201 = v212;
            v30 = objc_msgSend_raiseErrorOrConvert_(v218, v163, v200, v164, v165);
LABEL_89:
            v101 = v204;
            v103 = v205;
            goto LABEL_99;
          }

          goto LABEL_75;
        }

        v225 = v31;
        v167 = objc_msgSend_asString_outError_(v212, v154, v218, &v225, v155);
        v210 = v225;

        v171 = objc_msgSend_containsMatchInString_(v204, v168, v167, v169, v170);
        v31 = v210;
        if (v171)
        {
          goto LABEL_112;
        }

LABEL_74:
        v45 = v215;
      }

LABEL_75:
      v143 = v212;
      goto LABEL_76;
    }

    v227 = v31;
    v157 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v154, v17, v212, v218, &v227);
    v207 = v227;

    v31 = v207;
    if (v207)
    {
      v201 = v212;
      v30 = objc_msgSend_raiseErrorOrConvert_(v218, v158, v207, v160, v161);
      v45 = v215;
      goto LABEL_89;
    }

    if (v157 != 1)
    {
      break;
    }

    if (v25 != 3 || v156 != 5)
    {
      v172 = v156 == 3 && v25 == 5;
      if (!v172 && v25 != v156)
      {
        goto LABEL_63;
      }
    }

    v45 = v215;
    if ((objc_msgSend_isNil(v205, v158, v159, v160, v161) & 1) == 0)
    {
      v226 = 0;
      v173 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v166, v205, v212, v218, &v226);
      v31 = v226;
      if (v173 == -1)
      {
        v177 = v212;

        v205 = v177;
        LODWORD(v202) = v141;
      }

      if (v31)
      {
        v30 = objc_msgSend_raiseErrorOrConvert_(v218, v174, v31, v175, v176);
        v101 = v204;
        v103 = v205;
        v201 = v212;
        goto LABEL_99;
      }

      goto LABEL_75;
    }

    v143 = v212;
    v209 = v212;

    v31 = 0;
    LODWORD(v202) = v141;
    v205 = v209;
LABEL_76:

    ++v142;
    --v141;
    if (!(v214 + v142))
    {
      goto LABEL_91;
    }
  }

  if (v157)
  {
LABEL_63:
    v31 = 0;
    goto LABEL_74;
  }

  v31 = 0;
  LODWORD(v202) = v141;
  v45 = v215;
LABEL_91:
  v142 = v202;
  if (v202 == -1)
  {
    goto LABEL_95;
  }

LABEL_92:
  v103 = v205;
  v178 = objc_msgSend_valueAtGridCoord_accessContext_(v220, v137, v142 | ((HIDWORD(v202) - 1) << 32), &v234, v140, v202);
  v101 = v204;
  if (objc_msgSend_isReferenceValue(v178, v179, v180, v181, v182))
  {
    v223 = v31;
    v184 = v178;
    v178 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v178, v183, v218, a4, 1, &v223);
    v185 = v223;

    v31 = v185;
    if (v185)
    {
      v189 = objc_msgSend_raiseErrorOrConvert_(v218, v186, v185, v187, v188);
      goto LABEL_96;
    }

    objc_msgSend_setIsOutputOfAFunction_(v178, v186, 1, v187, v188);

    v31 = 0;
  }

  sub_221256020(&v243, &v221);
  TSCEFormat::TSCEFormat(&v222, &v221);
  objc_msgSend_setFormat_(v178, v196, &v222, v197, v198);
  v201 = v178;
  v30 = v201;
LABEL_99:

LABEL_100:
  v90 = v101;
LABEL_101:

LABEL_102:
LABEL_103:

LABEL_104:
LABEL_105:

  v32 = v17;
LABEL_106:

  if (v243)
  {
    v244 = v243;
    operator delete(v243);
  }

  return v30;
}

@end