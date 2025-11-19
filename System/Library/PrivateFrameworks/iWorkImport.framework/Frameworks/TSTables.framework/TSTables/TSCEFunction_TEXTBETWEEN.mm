@interface TSCEFunction_TEXTBETWEEN
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_TEXTBETWEEN

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v128 = **a5;
  v8 = *(*a5 + 8);
  v9 = *(*a5 + 16);
  isRegexString = objc_msgSend_isRegexString(v8, v10, v11, v12, v13);
  v126 = objc_msgSend_isRegexString(v9, v15, v16, v17, v18);
  v136[0] = 0;
  v20 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v128, v19, a3, a4, 0, v136);
  v21 = v136[0];
  v135 = v21;
  v23 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v22, a3, a4, 1, &v135);
  v24 = v135;

  v134 = v24;
  v127 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, v25, a3, a4, 2, &v134);
  v26 = v134;

  if (v26)
  {
    v31 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v26, v29, v30);

    goto LABEL_30;
  }

  v125 = v23;
  if (*(a5 + 1) - *a5 < 0x19uLL)
  {
    v41 = 1;
    goto LABEL_13;
  }

  v32 = *(*a5 + 24);
  if ((objc_msgSend_isTokenOrEmptyArg(v32, v33, v34, v35, v36) & 1) != 0 || objc_msgSend_deepType_(v32, v37, a3, v38, v39) == 10)
  {
    v41 = 1;
    goto LABEL_7;
  }

  v133 = 0;
  v124 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v32, v40, a3, a4, 3, &v133);
  v91 = v133;
  if (v91)
  {
    v31 = objc_msgSend_raiseErrorOrConvert_(a3, v87, v91, v89, v90);
LABEL_22:

    goto LABEL_29;
  }

  v98 = objc_msgSend_integer(v124, v87, v88, v89, v90);
  if (!v98)
  {
    v108 = objc_msgSend_functionName(a4, v99, v100, v101, v102);
    v111 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v109, v108, 4, v110);
    v31 = objc_msgSend_raiseErrorOrConvert_(a3, v112, v111, v113, v114);

    goto LABEL_22;
  }

  v41 = v98;

LABEL_7:
  if (*(a5 + 1) - *a5 >= 0x21uLL)
  {
    v42 = *(*a5 + 32);
    if ((objc_msgSend_isTokenOrEmptyArg(v42, v43, v44, v45, v46) & 1) != 0 || objc_msgSend_deepType_(v42, v47, a3, v48, v49) == 10)
    {
      v51 = 1;
LABEL_11:

      goto LABEL_14;
    }

    v132 = 0;
    v92 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v50, a3, a4, 4, &v132);
    v91 = v132;
    if (v91)
    {
      v31 = objc_msgSend_raiseErrorOrConvert_(a3, v93, v91, v95, v96);
    }

    else
    {
      v103 = objc_msgSend_integer(v92, v93, v94, v95, v96);
      if (v103)
      {
        v51 = v103;

        goto LABEL_11;
      }

      v115 = objc_msgSend_functionName(a4, v104, v105, v106, v107);
      v118 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v116, v115, 5, v117);
      v31 = objc_msgSend_raiseErrorOrConvert_(a3, v119, v118, v120, v121);
    }

LABEL_29:
    v23 = v125;
    goto LABEL_30;
  }

LABEL_13:
  v51 = 1;
LABEL_14:
  v131 = 0;
  isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v8, v27, v28, v29, v30);
  isCaseSensitiveRegex_outMatchesFound = objc_msgSend_rangeOfSearchString_inSourceString_withOccurrence_isRegexSearch_isCaseSensitiveRegex_outMatchesFound_(TSCEFunction_TEXTAFTER, v53, v125, v20, v41, isRegexString, isCaseSensitiveRegexString, &v131);
  if (isCaseSensitiveRegex_outMatchesFound == 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = v131;
    v60 = objc_msgSend_functionName(a4, v55, v56, v57, v58);
    v122 = v59;
    v23 = v125;
    v62 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v61, v125, isRegexString, 0, 0, 0, v41, v122, v60);
    v31 = objc_msgSend_raiseErrorOrConvert_(a3, v63, v62, v64, v65);
  }

  else
  {
    v66 = objc_msgSend_substringFromIndex_(v20, v55, &v55[isCaseSensitiveRegex_outMatchesFound], v57, v58);

    v130 = 0;
    v71 = objc_msgSend_isCaseSensitiveRegexString(v9, v67, v68, v69, v70);
    v74 = objc_msgSend_rangeOfSearchString_inSourceString_withOccurrence_isRegexSearch_isCaseSensitiveRegex_outMatchesFound_(TSCEFunction_TEXTAFTER, v72, v127, v66, v51, v126, v71, &v130);
    if (v74 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v77 = v130;
      v78 = objc_msgSend_functionName(a4, v73, 0x7FFFFFFFFFFFFFFFLL, v75, v76);
      v123 = v77;
      v23 = v125;
      v80 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v79, v127, v126, 1, v125, isRegexString, v51, v123, v78);
      v31 = objc_msgSend_raiseErrorOrConvert_(a3, v81, v80, v82, v83);
    }

    else
    {
      v78 = objc_msgSend_substringToIndex_(v66, v73, v74, v75, v76);
      v23 = v125;
      if (v128)
      {
        objc_msgSend_formatWithContext_(v128, v84, a3, v85, v86);
      }

      else
      {
        memset(v129, 0, sizeof(v129));
      }

      v31 = objc_msgSend_stringValue_format_(TSCEStringValue, v84, v78, v129, v86);
    }

    v20 = v66;
  }

LABEL_30:

  return v31;
}

@end