@interface TSCEFunction_LOOKUP
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LOOKUP

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v239 = 0;
  v240 = 0;
  v241 = 0;
  v8 = **arguments;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10, v11);
  }

  else
  {
    v232 = 0u;
    *v233 = 0u;
  }

  sub_22114F414(&v239, &v232);
  v17 = objc_msgSend_copy(v12, v13, v14, v15, v16);
  v21 = objc_msgSend_deepType_(v17, v18, context, v19, v20);
  v25 = v21;
  if (v21)
  {
    if (v21 == 10)
    {
      v26 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v22, v17, context, spec, 0);
      v30 = objc_msgSend_raiseErrorOrConvert_(context, v31, v26, v32, v33);
      goto LABEL_9;
    }

    if (v21 == 9)
    {
      v26 = objc_msgSend_errorWithContext_(v17, v22, context, v23, v24);
      v30 = objc_msgSend_raiseErrorOrConvert_(context, v27, v26, v28, v29);
LABEL_9:
      v34 = v30;
      v35 = 0;
      goto LABEL_112;
    }
  }

  else
  {
    v238 = 0;
    v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v22, context, spec, 0, &v238);
    v35 = v238;

    if (v35)
    {
      v34 = objc_msgSend_raiseErrorOrConvert_(context, v37, v35, v38, v39);
      goto LABEL_113;
    }

    v25 = 5;
    v17 = v36;
  }

  v26 = *(*arguments + 8);
  v237 = 0;
  specCopy = spec;
  v41 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v26, v40, context, spec, 1, 1, &v237);
  v35 = v237;
  if (v35)
  {
    v34 = objc_msgSend_raiseErrorOrConvert_(context, v42, v35, v43, v44);
    goto LABEL_111;
  }

  if (v26)
  {
    objc_msgSend_formatWithContext_(v26, v42, context, v43, v44);
  }

  else
  {
    v232 = 0u;
    *v233 = 0u;
  }

  sub_22114F414(&v239, &v232);
  if (objc_msgSend_gridKind(v41, v45, v46, v47, v48) == 1 && objc_msgSend_count(v41, v49, v50, v51, v52) != 1)
  {
    v223 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v53, v54, v55, v56);
    v34 = objc_msgSend_raiseErrorOrConvert_(context, v74, v223, v75, v76);
    v77 = 0;
    goto LABEL_110;
  }

  v57 = v41;
  v225 = v57;
  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    isTokenOrEmptyArg = 1;
    v223 = v57;
  }

  else
  {
    v221 = *(*arguments + 16);
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v221, v62, v63, v64, v65);
    v223 = v225;
    if ((isTokenOrEmptyArg & 1) == 0)
    {
      v236 = 0;
      v68 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v221, v66, context, spec, 0, 1, &v236);
      v72 = v236;
      if (v72)
      {
        v34 = objc_msgSend_raiseErrorOrConvert_(context, v69, v72, v70, v71);
        v223 = v225;
LABEL_24:
        v73 = v68;
        goto LABEL_108;
      }

      if (v68)
      {
        objc_msgSend_formatWithContext_(v68, v69, context, v70, v71);
      }

      else
      {
        v232 = 0u;
        *v233 = 0u;
      }

      sub_22114F414(&v239, &v232);
      v78 = v68;

      v223 = v78;
      if (objc_msgSend_gridKind(v78, v79, v80, v81, v82) == 1 && objc_msgSend_count(v78, v83, v84, v85, v86) != 1)
      {
        v205 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v87, v88, v89, v90);
        v34 = objc_msgSend_raiseErrorOrConvert_(context, v206, v205, v207, v208);

        goto LABEL_24;
      }
    }
  }

  if (v25 == 7 && objc_msgSend_isRegexString(v17, v58, v59, v60, v61))
  {
    v235 = 0;
    v222 = objc_msgSend_asString_outError_(v17, v58, context, &v235, v61);
    v91 = v235;
    isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v17, v92, v93, v94, v95);
    v234 = v91;
    v98 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v97, v222, isCaseSensitiveRegexString, &v234);
    v77 = v234;

    if (v77)
    {
      v34 = objc_msgSend_raiseErrorOrConvert_(context, v58, v77, v60, v61);
      goto LABEL_109;
    }

    v219 = 1;
    v221 = v98;
  }

  else
  {
    v219 = 0;
    v221 = 0;
  }

  v215 = v26;
  v99 = objc_msgSend_dimensions(v225, v58, v59, v60, v61);
  v104 = objc_msgSend_dimensions(v223, v100, v101, v102, v103);
  v109 = v104;
  v110 = HIDWORD(v104);
  if (isTokenOrEmptyArg)
  {
    if (SHIDWORD(v99) >= v99)
    {
      v220 = 0;
      v211 = v99 - 1;
      goto LABEL_48;
    }

    v211 = HIDWORD(v99) - 1;
    v111 = 1;
  }

  else
  {
    if (v110 != 1 && v104 != 1)
    {
      v73 = objc_msgSend_not1DArrayError(TSCEError, v105, v106, v107, v108);
      v34 = objc_msgSend_raiseErrorOrConvert_(context, v112, v73, v113, v114);
      v72 = 0;
      goto LABEL_108;
    }

    v211 = 0;
    v111 = SHIDWORD(v99) < v99;
  }

  v220 = v111;
LABEL_48:
  v214 = isTokenOrEmptyArg;
  v216 = v17;
  v217 = objc_msgSend_nilValue(TSCENilValue, v105, v106, v107, v108);
  contextCopy = context;
  v232 = contextCopy;
  v233[0] = 0;
  v233[1] = 0xFFFFFFFFLL;
  *(&v233[1] + 7) = 0;
  *&v233[3] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v233[5] = 0;
  v233[6] = 0;
  if (SHIDWORD(v99) <= v99)
  {
    v120 = v99;
  }

  else
  {
    v120 = HIDWORD(v99);
  }

  v121 = (v120 - 1);
  if (v120 < 1)
  {
    v122 = 0;
    v73 = v217;
LABEL_82:
    v17 = v216;
    v126 = objc_msgSend_functionName(specCopy, v115, v116, v117, v118);
    v164 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v161, v126, v162, v163);
    v168 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v165, v164, v166, v167);
LABEL_83:
    v34 = v168;

    v147 = v122;
    goto LABEL_107;
  }

  v209 = v110;
  v210 = v109;
  v212 = v12;
  v122 = 0;
  v123 = v120 + 1;
  v124 = (v120 << 32) - 0x100000000;
  v213 = 0xFFFFFFFFLL;
  v125 = v220;
  v218 = v41;
  while (1)
  {
    if (v125)
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(v225, v115, v123 - 2, &v232, v118, v209);
    }

    else
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(v225, v115, v124, &v232, v118, v209);
    }
    v126 = ;
    if (objc_msgSend_deepType_(v126, v127, contextCopy, v128, v129) == 9 || (objc_msgSend_valueIsEmptyWithContext_(v126, v130, contextCopy, v131, v132) & 1) != 0)
    {
      goto LABEL_78;
    }

    v136 = objc_msgSend_deepType_(v126, v133, contextCopy, v134, v135);
    if (v219)
    {
      break;
    }

    v145 = v136;
    v230 = v122;
    v146 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v137, v216, v126, contextCopy, &v230);
    v147 = v230;

    if (v147)
    {
      v34 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v148, v147, v150, v151);
      v12 = v212;
      v26 = v215;
      v17 = v216;
      v73 = v217;
      v41 = v218;
      goto LABEL_107;
    }

    if (v146 == 1)
    {
      v125 = v220;
      if (v25 == 3 && v145 == 5 || (v145 == 3 ? (v154 = v25 == 5) : (v154 = 0), v154 || v25 == v145))
      {
        v41 = v218;
        if (objc_msgSend_isNil(v217, v148, v149, v150, v151))
        {
          v153 = v126;

          v122 = 0;
          v213 = v121;
          v217 = v153;
        }

        else
        {
          v229 = 0;
          v155 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v152, v217, v126, contextCopy, &v229);
          v122 = v229;
          if (v155 == -1)
          {
            v159 = v126;

            v217 = v159;
            v213 = v121;
          }

          if (v122)
          {
            v34 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v156, v122, v157, v158);
            v147 = v122;
            v12 = v212;
            v26 = v215;
            v17 = v216;
            v73 = v217;
            goto LABEL_107;
          }
        }

        goto LABEL_78;
      }

      v122 = 0;
    }

    else
    {
      v122 = 0;
      v125 = v220;
      if (!v146)
      {
        goto LABEL_87;
      }
    }

    v41 = v218;
LABEL_78:

    --v123;
    v121 = (v121 - 1);
    v124 -= 0x100000000;
    if (v123 <= 1)
    {
      v12 = v212;
      v160 = v213;
      v26 = v215;
      v73 = v217;
      if (v213 == -1)
      {
        goto LABEL_82;
      }

      goto LABEL_88;
    }
  }

  v231 = v122;
  v139 = objc_msgSend_asString_outError_(v126, v137, contextCopy, &v231, v138);
  v140 = v231;

  v144 = objc_msgSend_containsMatchInString_(v221, v141, v139, v142, v143);
  v122 = v140;
  if ((v144 & 1) == 0)
  {
    v41 = v218;
    v125 = v220;
    goto LABEL_78;
  }

  v125 = v220;
LABEL_87:

  v160 = v121;
  v12 = v212;
  v73 = v217;
  v41 = v218;
LABEL_88:
  v17 = v216;
  if (!v214)
  {
    if (v210 == 1)
    {
      if (v160 < v209)
      {
        v169 = 0;
        v171 = 2;
        goto LABEL_96;
      }
    }

    else
    {
      if (v209 != 1)
      {
        v194 = MEMORY[0x277D81150];
        v195 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "+[TSCEFunction_LOOKUP evaluateForArgsWithContext:functionSpec:arguments:]", v117, v118);
        v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v196, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v197, v198);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v194, v200, v195, v199, 1920, 0, "In function LOOKUP, Should not reach here, user result table should be 1-D.");

        v41 = v218;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v201, v202, v203, v204);
        v169 = 0;
        v160 = 0;
        v171 = 2;
        v12 = v212;
        goto LABEL_96;
      }

      if (v160 < v210)
      {
        v171 = 2;
        v169 = v160;
        v160 = 0;
        goto LABEL_96;
      }
    }

    v126 = objc_msgSend_functionName(specCopy, v115, v116, v117, v118);
    v164 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v188, v126, v189, v190);
    v12 = v212;
    v26 = v215;
    v168 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v191, v164, v192, v193);
    goto LABEL_83;
  }

  if (v125)
  {
    v169 = v160;
  }

  else
  {
    v169 = v211;
  }

  if (v125)
  {
    v170 = v211;
  }

  else
  {
    v170 = v160;
  }

  v171 = 1;
  v160 = v170;
LABEL_96:
  LODWORD(v233[1]) = v171;
  v172 = v233[0];
  v233[0] = 0;

  v126 = objc_msgSend_valueAtGridCoord_accessContext_(v223, v173, v169 | (v160 << 32), &v232, v174);
  v26 = v215;
  if (objc_msgSend_isReferenceValue(v126, v175, v176, v177, v178))
  {
    v228 = v122;
    v180 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v126, v179, contextCopy, specCopy, v171, &v228);
    v147 = v228;

    if (v147)
    {
      v34 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v181, v147, v182, v183);

      goto LABEL_107;
    }

    objc_msgSend_setIsOutputOfAFunction_(v180, v181, 1, v182, v183);

    v122 = 0;
    v126 = v180;
  }

  sub_221256020(&v239, &v226);
  TSCEFormat::TSCEFormat(&v227, &v226);
  objc_msgSend_setFormat_(v126, v184, &v227, v185, v186);
  v126 = v126;
  v147 = v122;
  v34 = v126;
LABEL_107:

  v72 = v147;
LABEL_108:

  v98 = v221;
  v77 = v72;
LABEL_109:

LABEL_110:
  v35 = v77;
LABEL_111:

LABEL_112:
  v36 = v17;
LABEL_113:

  if (v239)
  {
    v240 = v239;
    operator delete(v239);
  }

  return v34;
}

@end