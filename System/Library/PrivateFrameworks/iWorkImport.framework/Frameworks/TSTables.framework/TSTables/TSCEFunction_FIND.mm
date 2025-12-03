@interface TSCEFunction_FIND
+ (id)evaluateFindWithOptions:(id)options functionSpec:(id)spec arguments:(const void *)arguments findOptions:(unint64_t)findOptions;
@end

@implementation TSCEFunction_FIND

+ (id)evaluateFindWithOptions:(id)options functionSpec:(id)spec arguments:(const void *)arguments findOptions:(unint64_t)findOptions
{
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v10 = **arguments;
  v14 = v10;
  if (v10)
  {
    objc_msgSend_formatWithContext_(v10, v11, options, v12, v13);
  }

  else
  {
    memset(&v120, 0, sizeof(v120));
  }

  sub_22114F414(&v121, &v120);
  v119 = 0;
  v16 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v14, v15, options, spec, 0, &v119);
  v17 = v119;
  if (v17)
  {
    v22 = v17;
    v23 = objc_msgSend_raiseErrorOrConvert_(options, v18, v17, v20, v21);
    goto LABEL_42;
  }

  isRegexString = objc_msgSend_isRegexString(v14, v18, v19, v20, v21);
  v24 = *(*arguments + 8);
  v28 = v24;
  if (v24)
  {
    objc_msgSend_formatWithContext_(v24, v25, options, v26, v27);
  }

  else
  {
    memset(&v120, 0, sizeof(v120));
  }

  sub_22114F414(&v121, &v120);
  v118 = 0;
  v30 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v28, v29, options, spec, 1, &v118);
  v31 = v118;
  if (!v31)
  {
    if (*(arguments + 1) - *arguments < 0x11uLL)
    {
      v44 = 0;
      goto LABEL_16;
    }

    v36 = *(*arguments + 16);
    if (objc_msgSend_isTokenOrEmptyArg(v36, v37, v38, v39, v40))
    {
      v44 = 0;
LABEL_14:

LABEL_16:
      if (v44 >= objc_msgSend_length(v30, v32, v33, v34, v35, v110) && (v44 || objc_msgSend_length(v30, v45, v46, v47, v48)))
      {
        v67 = objc_msgSend_functionName(spec, v45, v46, v47, v48);
        v71 = objc_msgSend_startNumberExceedsStringLengthErrorForFunctionName_(TSCEError, v68, v67, v69, v70);
        v75 = objc_msgSend_raiseErrorOrConvert_(options, v72, v71, v73, v74);
LABEL_37:
        v23 = v75;

LABEL_40:
        v22 = 0;
        goto LABEL_41;
      }

      if (objc_msgSend_length(v16, v45, v46, v47, v48))
      {
        v57 = objc_msgSend_length(v30, v49, v50, v51, v52) - v44;
        if (isRegexString)
        {
          v111 = objc_msgSend_asStringValue(v14, v53, v54, v55, v56);
          isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v111, v58, v59, v60, v61);
          v115 = 0;
          v112 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v63, v16, isCaseSensitiveRegex, &v115);
          v22 = v115;
          if (v22)
          {
            v23 = objc_msgSend_raiseErrorOrConvert_(options, v64, v22, v65, v66);

            goto LABEL_41;
          }

          MatchInString_options_range = objc_msgSend_rangeOfFirstMatchInString_options_range_(v112, v64, v30, findOptions, v44, v57);
        }

        else
        {
          MatchInString_options_range = objc_msgSend_rangeOfString_options_range_(v30, v53, v16, findOptions, v44, v57);
        }

        if (MatchInString_options_range == 0x7FFFFFFFFFFFFFFFLL)
        {
          v67 = objc_msgSend_functionName(spec, v79, v80, v81, v82);
          v71 = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v102, v16, isRegexString, v67);
          v75 = objc_msgSend_raiseErrorOrConvert_(options, v103, v71, v104, v105);
          goto LABEL_37;
        }

        sub_221580D44(v30, MatchInString_options_range);
        TSUDecimal::operator=();
        sub_221256020(&v121, &v120);
        v78 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v106, v116, &v120, v107);
      }

      else
      {
        TSUDecimal::operator=();
        v120._tskFormat = 0;
        v120._formatType = 0;
        v120._formatState = 0;
        *&v120._durationFormat = 1057;
        *(&v120._durationFormat + 2) = 1;
        *&v120._baseFormat.base = 0xFDFD01000ALL;
        v78 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v76, v116, &v120, v77);
      }

      v23 = v78;
      goto LABEL_40;
    }

    if (v36)
    {
      objc_msgSend_formatWithContext_(v36, v41, options, v42, v43);
    }

    else
    {
      memset(&v120, 0, sizeof(v120));
    }

    sub_22114F414(&v121, &v120);
    if (objc_msgSend_isEmptyArg(v36, v84, v85, v86, v87))
    {
      v92 = objc_msgSend_functionName(spec, v88, v89, v90, v91);
      v94 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v93, 3, v92, 1, 1.0);
      v23 = objc_msgSend_raiseErrorOrConvert_(options, v95, v94, v96, v97);

      v22 = 0;
    }

    else
    {
      v117 = 0;
      v92 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v36, v88, options, spec, 2, &v117);
      v22 = v117;
      v113 = v92;
      if (!v22)
      {
        v120._tskFormat = objc_msgSend_decimalRepresentation(v92, v98, v99, v100, v101);
        *&v120._formatType = v109;
        v110 = (TSUDecimal::truncateWithRounding(&v120) - 1);
        v44 = sub_22157EFF8(v30, v110);

        goto LABEL_14;
      }

      v23 = objc_msgSend_raiseErrorOrConvert_(options, v98, v22, v100, v101);
    }

    goto LABEL_41;
  }

  v22 = v31;
  v23 = objc_msgSend_raiseErrorOrConvert_(options, v32, v31, v34, v35);
LABEL_41:

LABEL_42:
  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }

  return v23;
}

@end