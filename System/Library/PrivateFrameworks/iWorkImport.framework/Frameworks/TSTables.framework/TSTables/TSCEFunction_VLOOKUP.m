@interface TSCEFunction_VLOOKUP
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_VLOOKUP

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v247 = 0;
  v248 = 0;
  v249 = 0;
  v8 = **a5;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    v238 = 0;
    *v239 = 0u;
  }

  sub_22114F414(&v247, &v238);
  v17 = objc_msgSend_copy(v12, v13, v14, v15, v16);
  v21 = objc_msgSend_deepType_(v17, v18, a3, v19, v20);
  v25 = v21;
  if (v21)
  {
    if (v21 == 9)
    {
      v26 = objc_msgSend_errorWithContext_(v17, v22, a3, v23, v24);
      a3 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v26, v28, v29);
      v30 = 0;
      goto LABEL_110;
    }
  }

  else
  {
    v246 = 0;
    v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v22, a3, a4, 0, &v246);
    v30 = v246;

    if (v30)
    {
      a3 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v30, v33, v34);
      goto LABEL_111;
    }

    v25 = 5;
    v17 = v31;
  }

  v26 = *(*a5 + 8);
  v245 = 0;
  v218 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v26, v35, a3, a4, 1, 1, &v245);
  v36 = v245;
  if (v36)
  {
    v30 = v36;
    a3 = objc_msgSend_raiseErrorOrConvert_(a3, v37, v36, v38, v39);
    goto LABEL_109;
  }

  if (v218)
  {
    objc_msgSend_formatWithContext_(v218, v37, a3, v38, v39);
  }

  else
  {
    v238 = 0;
    *v239 = 0u;
  }

  sub_22114F414(&v247, &v238);
  v244 = 0;
  v216 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v26, v40, a3, a4, 1, &v244);
  v41 = v244;
  if (v41)
  {
  }

  else
  {
    v50 = objc_msgSend_range(v216, v42, v43, v44, v45);
    v52 = v51;
    v56 = objc_msgSend_tableUID(v216, v51, v53, v54, v55);
    LOWORD(v238._decimal.w[0]) = 1;
    v238._decimal.w[1] = v50;
    *v239 = v52 & 0xFFFF0000FFFFFFFFLL | (WORD2(v50) << 32);
    *&v239[8] = v56;
    *&v239[16] = v57;
    v240.i8[0] = 0;
    v243 = 0;
    v240.i64[1] = 0;
    v241 = 0;
    LOWORD(v242) = 0;
    objc_msgSend_addCalculatedPrecedent_(a3, v57, &v238, v58, v59);
  }

  if (objc_msgSend_gridKind(v218, v46, v47, v48, v49) == 1 && objc_msgSend_count(v218, v60, v61, v62, v63) != 1)
  {
    v217 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v64, v65, v66, v67);
    a3 = objc_msgSend_raiseErrorOrConvert_(a3, v91, v217, v92, v93);
    v30 = 0;
    goto LABEL_108;
  }

  v68 = *(*a5 + 16);
  v217 = v68;
  if (v68)
  {
    objc_msgSend_formatWithContext_(v68, v69, a3, v70, v71);
  }

  else
  {
    v238 = 0;
    *v239 = 0u;
  }

  sub_22114F414(&v247, &v238);
  v237 = 0;
  v73 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v217, v72, a3, a4, 2, &v237);
  v30 = v237;
  v215 = v73;
  v238._decimal.w[0] = objc_msgSend_decimalRepresentation(v73, v74, v75, v76, v77);
  v238._decimal.w[1] = v78;
  v213 = TSUDecimal::truncateWithRounding(&v238);
  if (v30)
  {
    a3 = objc_msgSend_raiseErrorOrConvert_(a3, v79, v30, v81, v82);
    goto LABEL_107;
  }

  if (v213 <= 0)
  {
    v83 = objc_msgSend_functionName(a4, v79, v80, v81, v82);
    v95 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v94, 3, v83, 1, 1.0);
    a3 = objc_msgSend_raiseErrorOrConvert_(a3, v96, v95, v97, v98);
    v30 = 0;
    goto LABEL_105;
  }

  if (*(a5 + 1) - *a5 < 0x19uLL)
  {
    v209 = 1;
  }

  else
  {
    v83 = *(*a5 + 24);
    if (objc_msgSend_isTokenOrEmptyArg(v83, v84, v85, v86, v87))
    {
      v209 = 1;
    }

    else
    {
      if (v83)
      {
        objc_msgSend_formatWithContext_(v83, v88, a3, v89, v90);
      }

      else
      {
        v238 = 0;
        *v239 = 0u;
      }

      sub_22114F414(&v247, &v238);
      v236 = 0;
      v209 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v83, v99, a3, a4, 3, &v236);
      v100 = v236;
      if (v100)
      {
        v30 = v100;
        v104 = objc_msgSend_raiseErrorOrConvert_(a3, v101, v100, v102, v103);
        goto LABEL_50;
      }
    }
  }

  v109 = objc_msgSend_dimensions(v218, v79, v80, v81, v82);
  if (v213 > v109)
  {
    v83 = objc_msgSend_invalidReferenceError(TSCEError, v105, v106, v107, v108);
    a3 = objc_msgSend_raiseErrorOrConvert_(a3, v110, v83, v111, v112);
    v30 = 0;
    goto LABEL_106;
  }

  if (v25 == 7)
  {
    v113 = v209;
  }

  else
  {
    v113 = 1;
  }

  if ((v113 & 1) == 0)
  {
    isRegexString = objc_msgSend_isRegexString(v17, v105, v106, v107, v108);
    if (isRegexString)
    {
      v235 = 0;
      v205 = objc_msgSend_asString_outError_(v17, v114, a3, &v235, v115);
      v116 = v235;
      isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v17, v117, v118, v119, v120);
      v234 = v116;
      context = &v234;
      v123 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v122, v205, isCaseSensitiveRegexString, &v234);
    }

    else
    {
      v233 = 0;
      v124 = objc_msgSend_asString_outError_(v17, v114, a3, &v233, v115);
      v116 = v233;
      v232 = v116;
      context = &v232;
      v205 = v124;
      v123 = objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v125, v124, &v232, v126);
    }

    v83 = v123;
    v127 = v116;
    v30 = *context;

    if (!v30)
    {
      goto LABEL_51;
    }

    v104 = objc_msgSend_raiseErrorOrConvert_(a3, v105, v30, v107, v108);
LABEL_50:
    a3 = v104;
    goto LABEL_106;
  }

  isRegexString = 0;
  v83 = 0;
LABEL_51:
  v206 = v83;
  v201 = objc_msgSend_nilValue(TSCENilValue, v105, v106, v107, v108);
  v210 = a3;
  v238._decimal.w[0] = v210;
  v238._decimal.w[1] = 0;
  *v239 = 0;
  *&v239[8] = 0xFFFFFFFFLL;
  *&v239[15] = 0;
  v240 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v241 = 0;
  v242 = 0;
  v208 = objc_msgSend_abstractBackingGrid(v218, v128, v129, v130, v131);
  v136 = HIDWORD(v109);
  v30 = 0;
  LODWORD(v109) = HIDWORD(v109) - 1;
  if (SHIDWORD(v109) < 1)
  {
LABEL_99:
    v186 = objc_msgSend_functionName(a4, v132, v133, v134, v135);
    v95 = v201;
    v190 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v187, v186, v188, v189);
    a3 = objc_msgSend_raiseErrorOrConvert_(v210, v191, v190, v192, v193);

    goto LABEL_104;
  }

  v137 = 0;
  v198 = v136;
  v207 = -v136;
  v199 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v209)
    {
      v138 = v109;
    }

    else
    {
      v138 = v137;
    }

    LODWORD(v222[0]) = 0;
    HIDWORD(v222[0]) = v138;
    contexta = objc_autoreleasePoolPush();
    v214 = objc_msgSend_valueAtGridCoord_accessContext_(v208, v139, v222, &v238, v140);
    v147 = objc_msgSend_deepType_(v214, v141, v210, v142, v143);
    if (v147 == 9 || (objc_msgSend_valueIsEmptyWithContext_(v214, v144, v210, v145, v146) & 1) != 0)
    {
      goto LABEL_58;
    }

    if (!v209)
    {
      if (((v147 != v25) & ~isRegexString) != 0)
      {
        goto LABEL_58;
      }

      if (v25 == 7)
      {
        v229 = v30;
        v161 = objc_msgSend_asString_outError_(v214, v148, v210, &v229, v149);
        v203 = v229;

        v165 = objc_msgSend_containsMatchInString_(v206, v162, v161, v163, v164);
        if ((v165 & 1) == 0)
        {
          v30 = v203;
          goto LABEL_89;
        }
      }

      else
      {
        v228 = v30;
        v155 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v148, v17, v214, v210, &v228);
        v203 = v228;

        if (v155)
        {
          if (!v203)
          {
            goto LABEL_88;
          }

          a3 = objc_msgSend_raiseErrorOrConvert_(v210, v156, v203, v157, v158);
          v150 = 1;
          goto LABEL_79;
        }
      }

      v150 = 2;
      v199 = v137;
LABEL_79:
      v30 = v203;
      goto LABEL_59;
    }

    v202 = v109;
    v231 = v30;
    v200 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v148, v17, v214, v210, &v231);
    v109 = v231;

    if (v109)
    {
      a3 = objc_msgSend_raiseErrorOrConvert_(v210, v151, v109, v153, v154);
      v150 = 1;
      v30 = v109;
      LODWORD(v109) = v202;
      goto LABEL_59;
    }

    LODWORD(v109) = v202;
    if (!v200)
    {
      v30 = 0;
      v199 = (~v137 + v198);
      v150 = 2;
      goto LABEL_59;
    }

    if (v200 == 1)
    {
      if (v25 == 3 && v147 == 5 || (v147 == 3 ? (v166 = v25 == 5) : (v166 = 0), v166 || v25 == v147))
      {
        if (objc_msgSend_isNil(v201, v151, v152, v153, v154))
        {
          v160 = v214;

          v30 = 0;
          v201 = v160;
          v199 = v202;
        }

        else
        {
          v230 = 0;
          v167 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v159, v201, v214, v210, &v230);
          v30 = v230;
          if (v167 == -1)
          {
            v171 = v214;

            v201 = v171;
            v199 = v202;
          }

          if (v30)
          {
            a3 = objc_msgSend_raiseErrorOrConvert_(v210, v168, v30, v169, v170);
            v150 = 1;
            goto LABEL_59;
          }
        }
      }

      else
      {
LABEL_88:
        v30 = 0;
      }

LABEL_89:
      v150 = 0;
      goto LABEL_59;
    }

    v30 = 0;
LABEL_58:
    v150 = 4;
LABEL_59:

    objc_autoreleasePoolPop(contexta);
    if (v150)
    {
      if (v150 != 4)
      {
        break;
      }
    }

    v137 = (v137 + 1);
    LODWORD(v109) = v109 - 1;
    if (!(v207 + v137))
    {
      goto LABEL_95;
    }
  }

  if (v150 != 2)
  {
    v95 = v201;
    goto LABEL_104;
  }

LABEL_95:
  if (v199 == -1)
  {
    goto LABEL_99;
  }

  v172 = v210;
  v222[0] = v172;
  v222[1] = 0;
  v223 = 0;
  v224[0] = 0xFFFFFFFFLL;
  *(v224 + 7) = 0;
  v225 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v226 = 0;
  v227 = 0;
  v175 = objc_msgSend_valueAtGridCoord_accessContext_(v218, v173, (v213 - 1) | (v199 << 32), v222, v174);
  v95 = v201;
  if (objc_msgSend_isReferenceValue(v175, v176, v177, v178, v179))
  {
    v221 = v30;
    v181 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v175, v180, v172, a4, 1, &v221);
    v182 = v221;

    if (v182)
    {
      a3 = objc_msgSend_raiseErrorOrConvert_(v172, v183, v182, v184, v185);

      v30 = v182;
      goto LABEL_103;
    }

    objc_msgSend_setIsOutputOfAFunction_(v181, v183, 1, v184, v185);

    v30 = 0;
    v175 = v181;
  }

  sub_221256020(&v247, &v219);
  TSCEFormat::TSCEFormat(&v220, &v219);
  objc_msgSend_setFormat_(v175, v194, &v220, v195, v196);
  v175 = v175;
  a3 = v175;
LABEL_103:

LABEL_104:
  v83 = v206;
LABEL_105:

LABEL_106:
LABEL_107:

LABEL_108:
LABEL_109:

LABEL_110:
  v31 = v17;
LABEL_111:

  if (v247)
  {
    v248 = v247;
    operator delete(v247);
  }

  return a3;
}

@end