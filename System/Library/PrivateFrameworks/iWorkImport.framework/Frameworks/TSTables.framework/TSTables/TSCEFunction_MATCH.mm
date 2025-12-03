@interface TSCEFunction_MATCH
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (int64_t)compareValue:(id)value functionSpec:(id)spec left:(id)left right:(id)right outError:(id *)error;
@end

@implementation TSCEFunction_MATCH

+ (int64_t)compareValue:(id)value functionSpec:(id)spec left:(id)left right:(id)right outError:(id *)error
{
  valueCopy = value;
  leftCopy = left;
  rightCopy = right;
  v17 = objc_msgSend_deepType_(leftCopy, v14, valueCopy, v15, v16);
  v21 = objc_msgSend_deepType_(rightCopy, v18, valueCopy, v19, v20);
  if (v17 != v21)
  {
    if (v17 != 10 || v21 != 5)
    {
      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "+[TSCEFunction_MATCH compareValue:functionSpec:left:right:outError:]", v24, v25);
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v45, v46);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v48, v43, v47, 2023, 0, "In function MATCH, should not reach here.");
LABEL_33:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88, v89);
      v58 = 1;
      goto LABEL_38;
    }

    goto LABEL_9;
  }

  if (v17 <= 4u)
  {
    if (v17 == 2)
    {
      v98 = 0;
      v74 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(leftCopy, v22, valueCopy, spec, 1, &v98);
      v75 = v98;
      v97 = v75;
      v77 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(rightCopy, v76, valueCopy, spec, 0, &v97);
      v54 = v97;

      if (v74 == v77)
      {
        v58 = 0;
      }

      else
      {
        v96 = v54;
        v79 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(leftCopy, v78, valueCopy, spec, 1, &v96);
        v80 = v96;

        if (v79)
        {
          v58 = 1;
        }

        else
        {
          v58 = -1;
        }

        v54 = v80;
      }

      goto LABEL_35;
    }

    if (v17 != 3)
    {
LABEL_32:
      v81 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "+[TSCEFunction_MATCH compareValue:functionSpec:left:right:outError:]", v24, v25);
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v83, v84);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v85, v43, v47, 2019, 0, "In function MATCH, should not reach here.");
      goto LABEL_33;
    }

    v93 = 0;
    v49 = objc_msgSend_asDate_outError_(leftCopy, v22, valueCopy, &v93, v25);
    v50 = v93;
    v92 = v50;
    v53 = objc_msgSend_asDate_outError_(rightCopy, v51, valueCopy, &v92, v52);
    v54 = v92;

    v58 = objc_msgSend_compare_(v49, v55, v53, v56, v57);
LABEL_26:

LABEL_35:
    if (!v54)
    {
      goto LABEL_38;
    }

    v90 = v54;
    *error = v54;

    goto LABEL_37;
  }

  if (v17 == 9)
  {
    objc_msgSend_errorWithContext_(leftCopy, v22, valueCopy, v24, v25);
    *error = v58 = 0;
    goto LABEL_38;
  }

  if (v17 == 7)
  {
    v49 = objc_msgSend_locale(valueCopy, v22, v23, v24, v25);
    v95 = 0;
    v67 = objc_msgSend_asString_outError_(leftCopy, v65, valueCopy, &v95, v66);
    v68 = v95;
    v94 = v68;
    v71 = objc_msgSend_asString_outError_(rightCopy, v69, valueCopy, &v94, v70);
    v54 = v94;

    v58 = objc_msgSend_localizedCaseInsensitiveCompare_toString_(v49, v72, v67, v71, v73);
    goto LABEL_26;
  }

  if (v17 != 5)
  {
    goto LABEL_32;
  }

LABEL_9:
  v101 = 0;
  v26 = objc_msgSend_asNumber_outError_(leftCopy, v22, valueCopy, &v101, v25);
  v27 = v101;
  v100 = v27;
  v30 = objc_msgSend_asNumber_outError_(rightCopy, v28, valueCopy, &v100, v29);
  v31 = v100;

  if (v31)
  {
    v36 = v31;
    v37 = objc_msgSend_errorType(v31, v32, v33, v34, v35);
LABEL_17:
    if (v37 == 68)
    {
      if (objc_msgSend_hasUnits(v30, v38, v39, v40, v41))
      {
        v58 = -1;
      }

      else
      {
        v58 = 1;
      }

      goto LABEL_22;
    }

    v64 = v36;
    *error = v36;

LABEL_37:
    v58 = 0;
    goto LABEL_38;
  }

  v99 = 0;
  v58 = objc_msgSend_compare_outError_(v26, v32, v30, &v99, v35);
  v59 = v99;
  if (v59)
  {
    v36 = v59;
    v37 = objc_msgSend_errorType(v59, v60, v61, v62, v63);
    goto LABEL_17;
  }

LABEL_22:

LABEL_38:
  return v58;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  argumentsCopy = arguments;
  v220 = 0;
  v221 = 0;
  v222 = 0;
  v8 = **arguments;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10, v11);
  }

  else
  {
    v216 = 0u;
    *v217 = 0u;
  }

  sub_22114F414(&v220, &v216);
  v13 = v12;
  v21 = objc_msgSend_deepType_(v13, v14, context, v15, v16);
  v22 = v13;
  if (v21 == 10)
  {
    v22 = objc_msgSend_zero(TSCENumberValue, v17, v18, v19, v20);

    v21 = 5;
  }

  v23 = *(*argumentsCopy + 8);
  v219 = 0;
  v204 = v23;
  specCopy = spec;
  v25 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v23, v24, context, spec, 1, 1, &v219);
  v26 = v219;
  if (v26)
  {
    v30 = v26;
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(context, v27, v26, v28, v29);
    goto LABEL_18;
  }

  if (v25)
  {
    objc_msgSend_formatWithContext_(v25, v27, context, v28, v29);
  }

  else
  {
    v216 = 0u;
    *v217 = 0u;
  }

  sub_22114F414(&v220, &v216);
  v203 = objc_msgSend_count(v25, v31, v32, v33, v34);
  if (objc_msgSend_gridKind(v25, v35, v36, v37, v38) == 1 && v203 >= 2)
  {
    v43 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v39, v40, v41, v42);
    v47 = objc_msgSend_raiseErrorOrConvert_(context, v44, v43, v45, v46);
LABEL_17:
    argumentsCopy = v47;

    v30 = 0;
    goto LABEL_18;
  }

  v48 = objc_msgSend_dimensions(v25, v39, v40, v41, v42);
  if (v48 != 1 && (v48 & 0xFFFFFFFF00000000) != 0x100000000)
  {
    v43 = objc_msgSend_not1DArrayError(TSCEError, v49, v50, v51, v52);
    v47 = objc_msgSend_raiseErrorOrConvert_(context, v53, v43, v54, v55);
    goto LABEL_17;
  }

  v200 = v22;
  if (argumentsCopy[1] - *argumentsCopy < 0x11uLL)
  {
    v66 = 0;
    v65 = 1.0;
  }

  else
  {
    v57 = *(*argumentsCopy + 16);
    v65 = 1.0;
    if ((objc_msgSend_isTokenOrEmptyArg(v57, v58, v59, v60, v61) & 1) == 0)
    {
      if (v57)
      {
        objc_msgSend_formatWithContext_(v57, v62, context, v63, v64);
      }

      else
      {
        v216 = 0u;
        *v217 = 0u;
      }

      sub_22114F414(&v220, &v216);
      v218 = 0;
      argumentsCopy = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v57, v178, context, spec, 2, &v218);
      v30 = v218;
      v183 = objc_msgSend_trunc(argumentsCopy, v179, v180, v181, v182);

      if (v30)
      {
        argumentsCopy = objc_msgSend_raiseErrorOrConvert_(context, v184, v30, v186, v187);

        v22 = v200;
        goto LABEL_18;
      }

      objc_msgSend_doubleRepresentation(v183, v184, v185, v186, v187);
      v65 = v188;
    }

    v66 = v65 != 1.0;
    if (v65 == 1.0)
    {
      v22 = v200;
    }

    else
    {
      v22 = v200;
      if (v65 != -1.0 && v65 != 0.0)
      {
        v43 = objc_msgSend_invalidMatchModeError(TSCEError, v189, v190, v191, v192);
        v47 = objc_msgSend_raiseErrorOrConvert_(context, v193, v43, v194, v195);
        goto LABEL_17;
      }
    }
  }

  contextCopy = context;
  v201 = contextCopy;
  v216 = __PAIR128__(specCopy, contextCopy);
  v217[0] = 0;
  v217[1] = 1;
  *(&v217[1] + 7) = 0;
  *&v217[3] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v217[5] = 0;
  v217[6] = 0;
  isRegexString = objc_msgSend_isRegexString(v22, v68, v69, v70, v71);
  if (v65 != 0.0 || v21 != 7)
  {
    v198 = objc_msgSend_nilValue(TSCENilValue, v72, v73, v74, v75);
    if (!v203)
    {
LABEL_87:
      v197 = 0;
      v86 = 0;
      goto LABEL_88;
    }

    v196 = v66;
    v86 = 0;
    v87 = 0;
    v197 = 0;
    while (1)
    {
      v88 = objc_autoreleasePoolPush();
      v91 = objc_msgSend_valueAtIndex_accessContext_(v25, v89, v87, &v216, v90);
      if (objc_msgSend_isError(v91, v92, v93, v94, v95))
      {
        v100 = objc_msgSend_errorWithContext_(v91, v96, v201, v98, v99);
        if (objc_msgSend_isInvalidReferenceError(v100, v101, v102, v103, v104))
        {
          argumentsCopy = objc_msgSend_raiseErrorOrConvert_(v201, v105, v100, v106, v107);
          v108 = 1;
        }

        else
        {
          v108 = 7;
        }

        goto LABEL_44;
      }

      if ((objc_msgSend_isNil(v91, v96, v97, v98, v99) & 1) != 0 || v21 != objc_msgSend_deepType_(v91, v109, v201, v110, v111))
      {
        v108 = 0;
        goto LABEL_45;
      }

      v210 = v86;
      v113 = v86;
      v114 = objc_msgSend_compareValue_functionSpec_left_right_outError_(TSCEFunction_MATCH, v112, v201, specCopy, v91, v200, &v210);
      v86 = v210;

      if (v86)
      {
        break;
      }

      if (!v114)
      {
        v197 = v87 + 1;
        if (v196)
        {
          v86 = 0;
          v108 = 5;
          goto LABEL_45;
        }

        goto LABEL_64;
      }

      if (v65 == 1.0 && v114 == -1)
      {
        if (objc_msgSend_isNil(v198, v115, v116, v117, v118))
        {
          goto LABEL_63;
        }

        v209 = 0;
        v121 = objc_msgSend_compareValue_functionSpec_left_right_outError_(TSCEFunction_MATCH, v120, v201, specCopy, v91, v198, &v209);
        v122 = v209;
        if (!v122)
        {
          if (v121 == -1)
          {
            goto LABEL_66;
          }

          goto LABEL_63;
        }

        goto LABEL_54;
      }

      v86 = 0;
      v108 = 0;
      if (v65 == -1.0 && v114 == 1)
      {
        if (objc_msgSend_isNil(v198, v115, v116, v117, v118))
        {
          goto LABEL_63;
        }

        v208 = 0;
        v127 = objc_msgSend_compareValue_functionSpec_left_right_outError_(TSCEFunction_MATCH, v126, v201, specCopy, v91, v198, &v208);
        v122 = v208;
        if (!v122)
        {
          if (v127 == 1)
          {
LABEL_66:
            v108 = 0;
            v86 = 0;
            goto LABEL_45;
          }

LABEL_63:
          v197 = v87 + 1;
LABEL_64:
          v108 = 0;
          v86 = 0;
          v100 = v198;
          v198 = v91;
LABEL_44:

          goto LABEL_45;
        }

LABEL_54:
        v86 = v122;
        v119 = objc_msgSend_raiseErrorOrConvert_(v201, v123, v122, v124, v125);
LABEL_41:
        argumentsCopy = v119;
        v108 = 1;
      }

LABEL_45:

      objc_autoreleasePoolPop(v88);
      if (v108 != 7 && v108)
      {

        v22 = v200;
        if (v108 != 5)
        {
          goto LABEL_92;
        }

        goto LABEL_89;
      }

      if (v203 == ++v87)
      {
        goto LABEL_88;
      }
    }

    v119 = objc_msgSend_raiseErrorOrConvert_(v201, v115, v86, v117, v118);
    goto LABEL_41;
  }

  if (isRegexString)
  {
    v215 = 0;
    v76 = objc_msgSend_asString_outError_(v22, v72, v201, &v215, v75);
    v77 = v215;
    isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v22, v78, v79, v80, v81);
    v214 = v77;
    v83 = &v214;
    v85 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v84, v76, isCaseSensitiveRegexString, &v214);
  }

  else
  {
    v213 = 0;
    v76 = objc_msgSend_asString_outError_(v22, v72, v201, &v213, v75);
    v77 = v213;
    v212 = v77;
    v83 = &v212;
    v85 = objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v128, v76, &v212, v129);
  }

  v130 = v85;
  v131 = v77;
  v86 = *v83;

  if (v86)
  {
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(v201, v132, v86, v133, v134);

    goto LABEL_92;
  }

  v198 = v130;
  if (!v203)
  {
    goto LABEL_87;
  }

  v86 = 0;
  v135 = 0;
  v197 = 0;
  do
  {
    v136 = objc_autoreleasePoolPush();
    v139 = objc_msgSend_valueAtIndex_accessContext_(v25, v137, v135, &v216, v138);
    if (objc_msgSend_isNil(v139, v140, v141, v142, v143))
    {
      v147 = 0;
    }

    else
    {
      v150 = objc_msgSend_deepType_(v139, v144, v201, v145, v146);
      if (v150 == 7)
      {
        v151 = 1;
      }

      else
      {
        v151 = isRegexString;
      }

      v147 = 4;
      if (v150 == 9 || (v151 & 1) == 0)
      {
        v153 = v86;
      }

      else
      {
        v211 = v86;
        v152 = objc_msgSend_asString_outError_(v139, v148, v201, &v211, v149);
        v153 = v211;

        v157 = objc_msgSend_containsMatchInString_(v198, v154, v152, v155, v156);
        if (v157)
        {
          v197 = v135 + 1;
          v147 = 2;
        }

        else
        {
          v147 = 0;
        }
      }

      v86 = v153;
    }

    objc_autoreleasePoolPop(v136);
    if ((v147 | 4) != 4)
    {
      break;
    }

    ++v135;
  }

  while (v203 != v135);
LABEL_88:

  v22 = v200;
LABEL_89:
  if (v197)
  {
    TSUDecimal::operator=();
    sub_221256020(&v220, v205);
    argumentsCopy = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v159, v206, v205, v160);
  }

  else
  {
    v161 = MEMORY[0x277CCACA8];
    v207 = v86;
    v162 = objc_msgSend_asString_outError_(v22, 0, v201, &v207, v158);
    v163 = v207;

    v167 = objc_msgSend_stringWithFormat_(v161, v164, @"%@", v165, v166, v162);

    v172 = objc_msgSend_functionName(specCopy, v168, v169, v170, v171);
    v174 = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v173, v167, isRegexString, v172);
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(v201, v175, v174, v176, v177);

    v86 = v163;
  }

LABEL_92:

  v30 = v86;
LABEL_18:

  if (v220)
  {
    v221 = v220;
    operator delete(v220);
  }

  return argumentsCopy;
}

@end