@interface TSCEFunction_SEARCH
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SEARCH

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v8 = **arguments;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10, v11);
  }

  else
  {
    memset(&v142, 0, sizeof(v142));
  }

  sub_22114F414(&v143, &v142);
  v141 = 0;
  v14 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 0, &v141);
  v15 = v141;
  if (v15)
  {
    v20 = v15;
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v18, v19);
    goto LABEL_44;
  }

  isRegexString = objc_msgSend_isRegexString(v12, v16, v17, v18, v19);
  v23 = *(*arguments + 8);
  v27 = v23;
  if (v23)
  {
    objc_msgSend_formatWithContext_(v23, v24, context, v25, v26);
  }

  else
  {
    memset(&v142, 0, sizeof(v142));
  }

  sub_22114F414(&v143, &v142);
  v140 = 0;
  v29 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v27, v28, context, spec, 1, &v140);
  v30 = v140;
  if (!v30)
  {
    if (*(arguments + 1) - *arguments < 0x11uLL)
    {
      v42 = 0;
      goto LABEL_16;
    }

    v34 = *(*arguments + 16);
    if (objc_msgSend_isTokenOrEmptyArg(v34, v35, v36, v37, v38))
    {
      v42 = 0;
LABEL_14:

LABEL_16:
      sub_221256020(&v143, &v142);
      if (objc_msgSend_length(v14, v43, v44, v45, v46) || objc_msgSend_length(v29, v47, v48, v49, v50))
      {
        if (v42 >= objc_msgSend_length(v29, v47, v48, v49, v50))
        {
          v73 = objc_msgSend_functionName(spec, v51, v52, v53, v54);
          v77 = objc_msgSend_startNumberExceedsStringLengthErrorForFunctionName_(TSCEError, v74, v73, v75, v76);
          v21 = objc_msgSend_raiseErrorOrConvert_(context, v78, v77, v79, v80);
        }

        else
        {
          if (objc_msgSend_length(v14, v51, v52, v53, v54))
          {
            v132 = objc_msgSend_length(v29, v55, v56, v57, v58);
            if (isRegexString)
            {
              v63 = objc_msgSend_asStringValue(v12, v59, v60, v61, v62);
              isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v63, v64, v65, v66, v67);
              v137 = 0;
              v134 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v69, v14, isCaseSensitiveRegex, &v137);
              v20 = v137;
            }

            else
            {
              v136 = 0;
              v94 = objc_msgSend_regexMatcherWithStringMatch_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v59, v14, 0, 0, &v136);
              v20 = v136;
              v134 = v94;
            }

            if (v20)
            {
              v95 = objc_msgSend_raiseErrorOrConvert_(context, v70, v20, v71, v72);
            }

            else
            {
              MatchInString_options_range = objc_msgSend_rangeOfFirstMatchInString_options_range_(v134, v70, v29, 0, v42, v132 - v42);
              if (MatchInString_options_range == 0x7FFFFFFFFFFFFFFFLL)
              {
                v117 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], 0x7FFFFFFFFFFFFFFFLL, @"%@", v115, v116, v14);
                v122 = objc_msgSend_functionName(spec, v118, v119, v120, v121);
                v124 = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v123, v117, isRegexString, v122);
                v21 = objc_msgSend_raiseErrorOrConvert_(context, v125, v124, v126, v127);

LABEL_42:
                goto LABEL_43;
              }

              sub_221580D44(v29, MatchInString_options_range);
              TSUDecimal::operator=();
              v95 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v129, v138, &v142, v130);
            }

            v21 = v95;
            goto LABEL_42;
          }

          TSUDecimal::operator=();
          v21 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v81, v138, &v142, v82);
        }
      }

      else
      {
        v83 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v47, @"%@", v49, v50, v14);
        v88 = objc_msgSend_functionName(spec, v84, v85, v86, v87);
        v90 = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v89, v83, 0, v88);
        v21 = objc_msgSend_raiseErrorOrConvert_(context, v91, v90, v92, v93);
      }

      v20 = 0;
      goto LABEL_43;
    }

    if (v34)
    {
      objc_msgSend_formatWithContext_(v34, v39, context, v40, v41);
    }

    else
    {
      memset(&v142, 0, sizeof(v142));
    }

    sub_22114F414(&v143, &v142);
    if (objc_msgSend_isEmptyArg(v34, v96, v97, v98, v99))
    {
      v104 = objc_msgSend_functionName(spec, v100, v101, v102, v103);
      v106 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v105, 3, v104, 1, 1.0);
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v107, v106, v108, v109);

      v20 = 0;
    }

    else
    {
      v139 = 0;
      v104 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v100, context, spec, 2, &v139);
      v20 = v139;
      v135 = v104;
      if (!v20)
      {
        v142._tskFormat = objc_msgSend_decimalRepresentation(v104, v110, v111, v112, v113);
        *&v142._formatType = v128;
        v133 = (TSUDecimal::truncateWithRounding(&v142) - 1);
        v42 = sub_22157EFF8(v29, v133);

        goto LABEL_14;
      }

      v21 = objc_msgSend_raiseErrorOrConvert_(context, v110, v20, v112, v113);
    }

    goto LABEL_43;
  }

  v20 = v30;
  v21 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32, v33);
LABEL_43:

LABEL_44:
  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  return v21;
}

@end