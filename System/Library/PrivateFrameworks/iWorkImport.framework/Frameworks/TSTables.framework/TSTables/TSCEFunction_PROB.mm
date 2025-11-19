@interface TSCEFunction_PROB
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_PROB

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v8 = *(*a5 + 16);
  v222[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 2, v222);
  v11 = v222[0];
  v222[3] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
  v222[4] = v16;
  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v17, v18);
    goto LABEL_63;
  }

  if (*(a5 + 1) - *a5 >= 0x19uLL)
  {
    v20 = *(*a5 + 24);
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v20, v21, v22, v23, v24);
    if (isTokenOrEmptyArg)
    {
LABEL_5:
      v27 = isTokenOrEmptyArg ^ 1u;

      goto LABEL_7;
    }

    v221 = 0;
    v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v25, a3, a4, 3, &v221);
    v11 = v221;
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v43, v11, v44, v45);
    }

    else
    {
      if (objc_msgSend_dimensionsMatchModuloCurrency_(v42, v43, v10, v44, v45))
      {
        v222[1] = objc_msgSend_decimalRepresentation(v42, v117, v118, v119, v120);
        v222[2] = v121;

        goto LABEL_5;
      }

      v130 = sub_2212F6DF8();
      v132 = objc_msgSend_localizedStringForKey_value_table_(v130, v131, @"1, 3, and 4", &stru_2834BADA0, @"TSCalculationEngine");

      v137 = objc_msgSend_functionName(a4, v133, v134, v135, v136);
      v140 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v138, v137, v132, v139);
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v141, v140, v142, v143);
    }

    goto LABEL_63;
  }

  v27 = 0;
LABEL_7:
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v28 = **a5;
  v218 = 0;
  v198 = v28;
  v199 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v28, v29, a3, a4, 0, 0, &v218);
  v30 = v218;
  if (!v30)
  {
    v34 = *(*a5 + 8);
    v217 = 0;
    v197 = v34;
    v36 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v34, v35, a3, a4, 1, 0, &v217);
    v37 = v217;
    if (v37)
    {
      v11 = v37;
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v38, v37, v40, v41);
LABEL_61:

      goto LABEL_62;
    }

    v46 = objc_msgSend_count(v199, v38, v39, v40, v41);
    if (v46 != objc_msgSend_count(v36, v47, v48, v49, v50))
    {
      v122 = objc_msgSend_functionName(a4, v51, v52, v53, v54);
      v126 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v123, v122, v124, v125);
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v127, v126, v128, v129);

      v11 = 0;
      goto LABEL_61;
    }

    v211[0] = a3;
    v211[1] = a4;
    v212 = 0;
    v213[0] = 0;
    *(v213 + 7) = 0;
    v214 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v215 = 0;
    v216 = 0;
    v195 = v211[0];
    v205[0] = v195;
    v205[1] = a4;
    v206 = 0;
    v207[0] = 1;
    *(v207 + 7) = 0;
    v208 = v214;
    v209 = 0;
    v210 = 0;
    if (!v46)
    {
LABEL_43:
      v144 = objc_msgSend_divideByZeroError(TSCEError, v55, v56, v57, v58);
      v19 = objc_msgSend_raiseErrorOrConvert_(v195, v145, v144, v146, v147);
LABEL_44:

LABEL_45:
      v11 = 0;
LABEL_60:

      goto LABEL_61;
    }

    v59 = 0;
    v192 = 0;
    v196 = v36;
    while (1)
    {
      v60 = objc_msgSend_valueAtIndex_accessContext_(v199, v55, v59, v211, v58);
      v63 = objc_msgSend_valueAtIndex_accessContext_(v36, v61, v59, v205, v62);
      if (objc_msgSend_isNil(v60, v64, v65, v66, v67) && (objc_msgSend_isNil(v63, v68, v69, v70, v71) & 1) == 0)
      {
        v194 = objc_msgSend_functionName(a4, v68, v69, v70, v71);
        v151 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v148, v194, v149, v150);
        v19 = objc_msgSend_raiseErrorOrConvert_(v195, v152, v151, v153, v154);
LABEL_58:

        v11 = 0;
        goto LABEL_59;
      }

      if ((objc_msgSend_isNil(v60, v68, v69, v70, v71) & 1) == 0 && (objc_msgSend_isNil(v63, v72, v73, v74, v75) & 1) == 0)
      {
        break;
      }

LABEL_33:

      ++v59;
      v36 = v196;
      if (v46 == v59)
      {
        if (!v192)
        {
          goto LABEL_43;
        }

        TSUDecimal::operator=();
        v110 = objc_msgSend_locale(v195, v106, v107, v108, v109);
        v112 = TSUDecimal::floatingPointEqual(&v219, &v202, v110, v111);

        if ((v112 & 1) == 0)
        {
          v144 = objc_msgSend_functionName(a4, v113, v114, v115, v116);
          v166 = objc_msgSend_rangeDoesNotSumToOneForFunctionName_argumentNumber_(TSCEError, v164, v144, 2, v165);
          v19 = objc_msgSend_raiseErrorOrConvert_(v195, v167, v166, v168, v169);

          goto LABEL_44;
        }

        if (v198)
        {
          objc_msgSend_formatWithContext_(v198, v113, v195, v115, v116);
        }

        else
        {
          memset(&v201, 0, sizeof(v201));
        }

        if (v197)
        {
          objc_msgSend_formatWithContext_(v197, v113, v195, v115, v116);
        }

        else
        {
          memset(&v200, 0, sizeof(v200));
        }

        TSCEFormat::formatByMergingWithFormat(&v201, &v200, v114, v115, v116, &v202);
        v19 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v189, v220, &v202, v190);
        goto LABEL_45;
      }
    }

    v204 = 0;
    v191 = v63;
    v194 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v60, v76, v195, a4, 0, &v204);
    v77 = v204;
    if (v77)
    {
      v11 = v77;
      v19 = objc_msgSend_raiseErrorOrConvert_(v195, v78, v77, v80, v81);
      goto LABEL_59;
    }

    v202._decimal.w[0] = objc_msgSend_decimalRepresentation(v194, v78, v79, v80, v81);
    v202._decimal.w[1] = v82;
    if ((objc_msgSend_dimensionsMatchModuloCurrency_(v194, v82, v10, v83, v84) & 1) == 0)
    {
      v171 = sub_2212F6DF8();
      if (v27)
      {
        objc_msgSend_localizedStringForKey_value_table_(v171, v170, @"1, 3, and 4", &stru_2834BADA0, @"TSCalculationEngine");
      }

      else
      {
        objc_msgSend_localizedStringForKey_value_table_(v171, v170, @"1 and 3", &stru_2834BADA0, @"TSCalculationEngine");
      }
      v151 = ;

      v181 = objc_msgSend_functionName(a4, v177, v178, v179, v180);
      v184 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v182, v181, v151, v183);
      v19 = objc_msgSend_raiseErrorOrConvert_(v195, v185, v184, v186, v187);

      goto LABEL_58;
    }

    v86 = v63;
    v87 = v27;
    v88 = v46;
    v203 = 0;
    v89 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v86, v85, v195, a4, 1, &v203);
    v11 = v203;
    v193 = v89;
    v201._tskFormat = objc_msgSend_decimalRepresentation(v89, v90, v91, v92, v93);
    *&v201._formatType = v94;
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(v195, v94, v11, v96, v97);
      v63 = v191;
      goto LABEL_55;
    }

    v46 = v88;
    v27 = v87;
    if (objc_msgSend_hasUnits(v193, v94, v95, v96, v97))
    {
      v155 = objc_msgSend_functionName(a4, v98, v99, v100, v101);
      v63 = v191;
      v159 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v172, v155, 2, v173);
      v163 = objc_msgSend_raiseErrorOrConvert_(v195, v174, v159, v175, v176);
LABEL_54:
      v19 = v163;

LABEL_55:
LABEL_59:

      v36 = v196;
      goto LABEL_60;
    }

    TSUDecimal::operator=();
    if ((TSUDecimal::operator<() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
    {
      v155 = objc_msgSend_functionName(a4, v102, v103, v104, v105);
      v159 = objc_msgSend_invalidProbabilityErrorForFunctionName_(TSCEError, v156, v155, v157, v158);
      v63 = v191;
      v163 = objc_msgSend_raiseErrorOrConvert_(v195, v160, v159, v161, v162);
      goto LABEL_54;
    }

    if (v87)
    {
      if (!sub_2212AD924() || (TSUDecimal::operator<=() & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (!TSUDecimal::operator==())
    {
LABEL_32:
      TSUDecimal::operator+=();
      ++v192;

      v63 = v191;
      goto LABEL_33;
    }

    TSUDecimal::operator+=();
    goto LABEL_32;
  }

  v11 = v30;
  v19 = objc_msgSend_raiseErrorOrConvert_(a3, v31, v30, v32, v33);
LABEL_62:

LABEL_63:

  return v19;
}

@end